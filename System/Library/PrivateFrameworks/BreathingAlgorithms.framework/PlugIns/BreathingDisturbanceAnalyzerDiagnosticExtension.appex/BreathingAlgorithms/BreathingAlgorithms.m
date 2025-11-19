void sub_100001D04(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = sub_100002E38();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10000C220(v9, v10);
    }
  }

  if ([v8 count])
  {
    v11 = [[NSDateInterval alloc] initWithStartDate:*(a1 + 32) endDate:*(a1 + 40)];
    v12 = sub_100002E38();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v8 count];
      v14 = [v11 description];
      v16 = 134349314;
      v17 = v13;
      v18 = 2114;
      v19 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Attempting to write %{public}lu breathing disturbance samples for interval of %{public}@ to a file", &v16, 0x16u);
    }

    v15 = [BABreathingDisturbanceAnalyzerFileHandler filePath:*(a1 + 48) withPrefixFilename:@"queried-samples"];
    [BABreathingDisturbanceAnalyzerFileHandler writeSamplesToJsonFile:v8 withDateInterval:v11 withOutputFilePath:v15];
  }

  else
  {
    v11 = sub_100002E38();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No breathing disturbance samples returned", &v16, 2u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 56));
}

void sub_100002958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, id *a11, void *a12, void *a13, uint64_t a14, void *a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_100002C9C(a11);

  _Unwind_Resume(a1);
}

void *sub_100002BDC(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      sub_100002D78(result, a2);
    }

    sub_100002CD0();
  }

  return result;
}

void sub_100002CE8(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100002D44(exception, a1);
}

std::logic_error *sub_100002D44(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_100002D78(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100002DD0();
}

void sub_100002DD0()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_100002E04(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, a5, 0xCu);
}

uint64_t sub_100002E20(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

id sub_100002E38()
{
  if (qword_100018488 != -1)
  {
    sub_10000C498();
  }

  v1 = qword_100018490;

  return v1;
}

void sub_100002E7C(id a1)
{
  qword_100018490 = os_log_create("com.apple.BreathingAlgorithms", "breathing_disturbance_analyzer_diagnostic");

  _objc_release_x1();
}

void sub_100003634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, unsigned __int8 a47)
{
  sub_100003AEC(&a47);

  _Unwind_Resume(a1);
}

uint64_t sub_100003934(uint64_t a1, char *__s)
{
  if (!*a1)
  {
    *a1 = 1;
    operator new();
  }

  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v7 = sub_100008BD8(a1);
    sub_10000738C(&v8, v7);
    sub_10000714C("cannot use operator[] with a string argument with ", &v8, &__p);
    sub_100007008(305, &__p, exception);
  }

  v3 = *(a1 + 8);
  sub_10000738C(&__p, __s);
  v8.__r_.__value_.__r.__words[0] = &__p;
  v4 = sub_100008C00(v3, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v4 + 56;
}

void sub_100003A74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *sub_100003AEC(unsigned __int8 *a1)
{
  sub_1000081DC(a1);
  sub_100008294(a1 + 1, *a1);
  return a1;
}

uint64_t sub_100003B20(uint64_t a1, unsigned __int8 *a2)
{
  if (!*a1)
  {
    *a1 = 2;
    operator new();
  }

  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v7 = sub_100008BD8(a1);
    sub_10000738C(&v8, v7);
    sub_10000714C("cannot use push_back() with ", &v8, &v9);
    sub_100007008(308, &v9, exception);
  }

  v3 = *(a1 + 8);
  v4 = *(v3 + 8);
  if (v4 >= *(v3 + 16))
  {
    result = sub_10000A488(v3, a2);
  }

  else
  {
    sub_100009848(*(v3 + 8), a2);
    result = v4 + 16;
    *(v3 + 8) = v4 + 16;
  }

  *(v3 + 8) = result;
  return result;
}

void sub_100003CB4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sub_100002E38();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "writing to %{public}@", buf, 0xCu);
  }

  v4 = v2;
  [v2 UTF8String];
  sub_1000048F4(buf);
  *&buf[*(*buf - 24) + 24] = 4;
  sub_100004AB4(buf);
}

void sub_1000047CC(_Unwind_Exception *a1)
{
  sub_100003AEC((v3 - 80));

  sub_100002C9C(v1);
  _Unwind_Resume(a1);
}

void (__cdecl ***sub_1000048F4(void (__cdecl ***a1)(std::ofstream *__hidden this)))(std::ofstream *__hidden this)
{
  a1[58] = 0;
  *a1 = v3;
  *(*(v3 - 3) + a1) = v2;
  v4 = (*(*a1 - 3) + a1);
  std::ios_base::init(v4, a1 + 1);
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  if (!std::filebuf::open())
  {
    std::ios_base::clear((*(*a1 - 3) + a1), *(*(*a1 - 3) + a1 + 32) | 4);
  }

  return a1;
}

void sub_100004A7C(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_100004AB4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  v2 = *(v1 + 3);
  *(v1 + 3) = 0;
  operator new();
}

void sub_100004C88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::locale a11, char a12)
{
  std::locale::~locale(&a11);
  sub_10000621C(v12);
  sub_10000621C(v12);
  _Unwind_Resume(a1);
}

void *sub_100004CCC(void *a1, uint64_t a2, uint64_t a3)
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

    if (!sub_100004E74(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry();
  return a1;
}

void sub_100004E0C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry();
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x100004DECLL);
}

uint64_t sub_100004E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
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
      sub_100005010(__p, v12, __c);
      v13 = v18 >= 0 ? __p : __p[0];
      v14 = (*(*v6 + 96))(v6, v13, v12);
      if (v18 < 0)
      {
        operator delete(__p[0]);
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

void sub_100004FE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_100005010(_BYTE *__b, size_t __len, int __c)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000050C0();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __b[23] = __len;
  if (__len)
  {
    memset(__b, __c, __len);
  }

  __b[__len] = 0;
  return __b;
}

uint64_t sub_1000050D8(void (****a1)(void), uint64_t **a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a2;
  if (v10 <= 4)
  {
    if (*a2 > 1u)
    {
      if (v10 != 2)
      {
        if (v10 != 3)
        {
          if (v10 == 4)
          {
            v12 = *a1;
            v13 = (**a1)[1];
            *(a2 + 8);
            goto LABEL_71;
          }

LABEL_148:
          sub_10000C5B4();
        }

        v25 = *a1;
        (***a1)();
        sub_1000063E0(a1, a2[1], a4);
        v13 = ***a1;
LABEL_134:

        return v13();
      }

      v33 = *a1;
      v34 = **a1;
      if (*a2[1] != a2[1][1])
      {
        if (!a3)
        {
          (*v34)();
          v56 = a2[1];
          v58 = *v56;
          v57 = v56[1];
          if (v58 != v57 - 16)
          {
            do
            {
              sub_1000050D8(a1, v58, 0, a4, a5, a6);
              (***a1)();
              v58 += 16;
              v59 = a2[1];
              v57 = v59[1];
            }

            while (v58 != v57 - 16);
            v58 = *v59;
          }

          if (v58 == v57)
          {
            sub_10000C4AC();
          }

          sub_1000050D8(a1, v57 - 16, 0, a4, a5, a6);
          goto LABEL_117;
        }

        v34[1]();
        v35 = a6 + a5;
        v36 = a1 + 76;
        v37 = *(a1 + 631);
        if ((v37 & 0x80000000) != 0)
        {
          v38 = a1[77];
          if (v38 < v35)
          {
            goto LABEL_144;
          }
        }

        else if (v35 > v37)
        {
          v38 = *(a1 + 631);
LABEL_144:
          std::string::resize((a1 + 76), 2 * v38, 32);
        }

        v78 = a2[1];
        v80 = *v78;
        v79 = v78[1];
        if (v80 != v79 - 16)
        {
          do
          {
            v81 = a1 + 76;
            if (*(a1 + 631) < 0)
            {
              v81 = *v36;
            }

            ((**a1)[1])(*a1, v81, (a6 + a5));
            sub_1000050D8(a1, v80, 1, a4, a5, (a6 + a5));
            ((**a1)[1])(*a1, ",\n", 2);
            v80 += 16;
            v82 = a2[1];
            v79 = v82[1];
          }

          while (v80 != v79 - 16);
          v80 = *v82;
        }

        if (v80 == v79)
        {
          sub_10000C4D8();
        }

        v83 = a1 + 76;
        if (*(a1 + 631) < 0)
        {
          v83 = *v36;
        }

        ((**a1)[1])(*a1, v83, (a6 + a5));
        sub_1000050D8(a1, a2[1][1] - 16, 1, a4, a5, (a6 + a5));
        (***a1)();
        if (*(a1 + 631) < 0)
        {
          v36 = *v36;
        }

        ((**a1)[1])(*a1, v36, a6);
LABEL_117:
        v13 = ***a1;
        goto LABEL_134;
      }

      v44 = v34[1];
      goto LABEL_45;
    }

    if (*a2)
    {
      v15 = *a1;
      v16 = **a1;
      if (!a2[1][2])
      {
        v44 = v16[1];
LABEL_45:

        return v44();
      }

      if (!a3)
      {
        (*v16)();
        v47 = a2[1];
        v48 = *v47;
        if (v47[2] != 1)
        {
          v49 = 0;
          do
          {
            (***a1)(*a1, 34);
            sub_1000063E0(a1, v48 + 4, a4);
            ((**a1)[1])(*a1, ":", 2);
            sub_1000050D8(a1, v48 + 7, 0, a4, a5, a6);
            (***a1)();
            v50 = v48[1];
            v51 = v48;
            if (v50)
            {
              do
              {
                v48 = v50;
                v50 = *v50;
              }

              while (v50);
            }

            else
            {
              do
              {
                v48 = v51[2];
                v52 = *v48 == v51;
                v51 = v48;
              }

              while (!v52);
            }

            ++v49;
            v47 = a2[1];
          }

          while (v49 < v47[2] - 1);
        }

        v53 = v47 + 1;
        if (v48 == v53)
        {
          sub_10000C530();
        }

        v54 = v48[1];
        if (v54)
        {
          do
          {
            v55 = v54;
            v54 = *v54;
          }

          while (v54);
        }

        else
        {
          v84 = v48;
          do
          {
            v55 = v84[2];
            v52 = *v55 == v84;
            v84 = v55;
          }

          while (!v52);
        }

        if (v55 != v53)
        {
          sub_10000C504();
        }

        (***a1)(*a1, 34);
        sub_1000063E0(a1, v48 + 4, a4);
        ((**a1)[1])(*a1, ":", 2);
        sub_1000050D8(a1, v48 + 7, 0, a4, a5, a6);
        goto LABEL_133;
      }

      v16[1]();
      v17 = a6 + a5;
      v18 = a1 + 76;
      v19 = *(a1 + 631);
      if ((v19 & 0x80000000) != 0)
      {
        v20 = a1[77];
        if (v20 < v17)
        {
          goto LABEL_142;
        }
      }

      else if (v17 > v19)
      {
        v20 = *(a1 + 631);
LABEL_142:
        std::string::resize((a1 + 76), 2 * v20, 32);
      }

      v69 = a2[1];
      v70 = *v69;
      if (v69[2] == 1)
      {
        v71 = *v69;
      }

      else
      {
        v72 = 0;
        do
        {
          v73 = a1 + 76;
          if (*(a1 + 631) < 0)
          {
            v73 = *v18;
          }

          ((**a1)[1])(*a1, v73, (a6 + a5));
          (***a1)();
          sub_1000063E0(a1, v70 + 4, a4);
          ((**a1)[1])(*a1, ": ", 3);
          sub_1000050D8(a1, v70 + 7, 1, a4, a5, (a6 + a5));
          ((**a1)[1])(*a1, ",\n", 2);
          v74 = v70[1];
          if (v74)
          {
            do
            {
              v71 = v74;
              v74 = *v74;
            }

            while (v74);
          }

          else
          {
            do
            {
              v71 = v70[2];
              v52 = *v71 == v70;
              v70 = v71;
            }

            while (!v52);
          }

          ++v72;
          v69 = a2[1];
          v70 = v71;
        }

        while (v72 < v69[2] - 1);
      }

      v75 = v69 + 1;
      if (v71 == v75)
      {
        sub_10000C588();
      }

      v76 = v71[1];
      if (v76)
      {
        do
        {
          v77 = v76;
          v76 = *v76;
        }

        while (v76);
      }

      else
      {
        v85 = v71;
        do
        {
          v77 = v85[2];
          v52 = *v77 == v85;
          v85 = v77;
        }

        while (!v52);
      }

      if (v77 != v75)
      {
        sub_10000C55C();
      }

      v86 = a1 + 76;
      if (*(a1 + 631) < 0)
      {
        v86 = *v18;
      }

      ((**a1)[1])(*a1, v86, (a6 + a5));
      (***a1)();
      sub_1000063E0(a1, v71 + 4, a4);
      ((**a1)[1])(*a1, ": ", 3);
      sub_1000050D8(a1, v71 + 7, 1, a4, a5, (a6 + a5));
      (***a1)();
      if (*(a1 + 631) < 0)
      {
        v87 = *v18;
      }

      v68 = (**a1)[1];
LABEL_132:
      v68();
LABEL_133:
      v13 = ***a1;
      goto LABEL_134;
    }

    v23 = *a1;
    v13 = (**a1)[1];
LABEL_71:

    return v13();
  }

  if (*a2 <= 6u)
  {
    if (v10 == 5)
    {
      v24 = a2[1];

      return sub_100006B10(a1, v24);
    }

    else
    {
      if (v10 != 6)
      {
        goto LABEL_148;
      }

      v21 = a2[1];

      return sub_100006D38(a1, v21);
    }
  }

  else
  {
    switch(v10)
    {
      case 7u:
        v39 = *(a2 + 1);

        return sub_100006EC8(a1, v39);
      case 8u:
        v26 = *a1;
        v27 = (**a1)[1];
        if (a3)
        {
          v27();
          v28 = (a6 + a5);
          v29 = a1 + 76;
          v30 = *(a1 + 631);
          if ((v30 & 0x80000000) != 0)
          {
            v60 = a1[77];
            if (v60 >= v28)
            {
              v31 = *a1;
LABEL_76:
              v32 = *v29;
              goto LABEL_77;
            }
          }

          else
          {
            if (v28 <= v30)
            {
              v31 = *a1;
              v32 = a1 + 76;
LABEL_77:
              ((*v31)[1])(v31, v32, v28);
              ((**a1)[1])(*a1, "bytes: [", 10);
              v61 = *a2[1];
              v62 = a2[1][1];
              v63 = *a2[1];
              if (v63 != v62)
              {
                for (; v63 != v62 - 1; v62 = a2[1][1])
                {
                  v64 = *v63++;
                  sub_100006A38(a1, v64);
                  ((**a1)[1])(*a1, ", ", 2);
                }

                sub_100006A38(a1, *(v62 - 1));
              }

              ((**a1)[1])(*a1, "],\n", 3);
              v65 = a1 + 76;
              if (*(a1 + 631) < 0)
              {
                v65 = *v29;
              }

              ((**a1)[1])(*a1, v65, v28);
              ((**a1)[1])(*a1, "subtype: ", 11);
              v66 = a2[1];
              if (*(v66 + 25) == 1)
              {
                sub_100006A38(a1, *(v66 + 24));
              }

              else
              {
                ((**a1)[1])(*a1, "null", 4);
              }

              (***a1)(*a1, 10);
              if (*(a1 + 631) < 0)
              {
                v67 = *v29;
              }

              v68 = (**a1)[1];
              goto LABEL_132;
            }

            v60 = *(a1 + 631);
          }

          std::string::resize((a1 + 76), 2 * v60, 32);
          v31 = *a1;
          v32 = a1 + 76;
          if ((*(a1 + 631) & 0x80000000) == 0)
          {
            goto LABEL_77;
          }

          goto LABEL_76;
        }

        v27();
        v40 = *a2[1];
        v41 = a2[1][1];
        v42 = *a2[1];
        if (v42 != v41)
        {
          while (v42 != v41 - 1)
          {
            v43 = *v42++;
            sub_100006A38(a1, v43);
            (***a1)(*a1, 44);
            v41 = a2[1][1];
          }

          sub_100006A38(a1, *(v41 - 1));
        }

        ((**a1)[1])(*a1, "],subtype:", 12);
        v45 = a2[1];
        if (*(v45 + 25) != 1)
        {
          v13 = (**a1)[1];
          goto LABEL_71;
        }

        sub_100006A38(a1, *(v45 + 24));
        v46 = ***a1;

        return v46();
      case 9u:
        v14 = *a1;
        v13 = (**a1)[1];
        goto LABEL_71;
      default:
        goto LABEL_148;
    }
  }
}

void sub_100006178(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100014528;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10000621C(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_100006288(uint64_t a1, uint64_t a2, char a3)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v5 = localeconv();
  *(a1 + 80) = v5;
  thousands_sep = v5->thousands_sep;
  if (thousands_sep)
  {
    LOBYTE(thousands_sep) = *thousands_sep;
  }

  *(a1 + 88) = thousands_sep;
  decimal_point = v5->decimal_point;
  if (v5->decimal_point)
  {
    LOBYTE(decimal_point) = *decimal_point;
  }

  *(a1 + 90) = 0u;
  *(a1 + 89) = decimal_point;
  *(a1 + 106) = 0u;
  *(a1 + 122) = 0u;
  *(a1 + 138) = 0u;
  *(a1 + 154) = 0u;
  *(a1 + 170) = 0u;
  *(a1 + 186) = 0u;
  *(a1 + 202) = 0u;
  *(a1 + 218) = 0u;
  *(a1 + 234) = 0u;
  *(a1 + 250) = 0u;
  *(a1 + 266) = 0u;
  *(a1 + 282) = 0u;
  *(a1 + 298) = 0u;
  *(a1 + 314) = 0u;
  *(a1 + 330) = 0u;
  *(a1 + 346) = 0u;
  *(a1 + 362) = 0u;
  *(a1 + 378) = 0u;
  *(a1 + 394) = 0u;
  *(a1 + 410) = 0u;
  *(a1 + 426) = 0u;
  *(a1 + 442) = 0u;
  *(a1 + 458) = 0u;
  *(a1 + 474) = 0u;
  *(a1 + 490) = 0u;
  *(a1 + 506) = 0u;
  *(a1 + 522) = 0u;
  *(a1 + 538) = 0u;
  *(a1 + 554) = 0u;
  *(a1 + 570) = 0u;
  *(a1 + 586) = 0u;
  *(a1 + 602) = a3;
  operator new();
}

void sub_1000063C8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_10000621C(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000063E0(uint64_t result, uint64_t *a2, int a3)
{
  v44 = 0;
  v3 = *(a2 + 23);
  v4 = a2[1];
  if ((v3 & 0x80000000) == 0)
  {
    v4 = *(a2 + 23);
  }

  if (!v4)
  {
    return result;
  }

  v7 = result;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = v3 >> 63;
  v45[0] = 0;
  v13 = result + 90;
  do
  {
    v14 = *a2;
    if ((v12 & 1) == 0)
    {
      v14 = a2;
    }

    v15 = *(v14 + v9);
    result = sub_100006F78(&v44, v45, v15);
    if (result == 1)
    {
      v17 = *(v7 + 158);
      if ((v17 - 1) >= 2)
      {
        if (!v17)
        {
          v43 = 3;
          *__str = 0;
          snprintf(__str, 3uLL, "%.2X", v15);
          exception = __cxa_allocate_exception(0x20uLL);
          std::to_string(&v36, v9);
          sub_10000714C("invalid UTF-8 byte at index ", &v36, &v37);
          v28 = std::string::append(&v37, ": 0x", 4uLL);
          v29 = *&v28->__r_.__value_.__l.__data_;
          v38.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
          *&v38.__r_.__value_.__l.__data_ = v29;
          v28->__r_.__value_.__l.__size_ = 0;
          v28->__r_.__value_.__r.__words[2] = 0;
          v28->__r_.__value_.__r.__words[0] = 0;
          if (v43 >= 0)
          {
            v30 = __str;
          }

          else
          {
            v30 = *__str;
          }

          if (v43 >= 0)
          {
            v31 = v43;
          }

          else
          {
            v31 = v42;
          }

          v32 = std::string::append(&v38, v30, v31);
          v33 = *&v32->__r_.__value_.__l.__data_;
          v40 = v32->__r_.__value_.__r.__words[2];
          v39 = v33;
          v32->__r_.__value_.__l.__size_ = 0;
          v32->__r_.__value_.__r.__words[2] = 0;
          v32->__r_.__value_.__r.__words[0] = 0;
          sub_100007008(316, &v39, exception);
        }

        sub_10000C5E0();
      }

      v18 = v10 != 0;
      if (v17 == 1)
      {
        v19 = v13 + v11;
        if (a3)
        {
          *v19 = 1717990748;
          *(v19 + 4) = 25702;
          v11 += 6;
        }

        else
        {
          v11 += 3;
          *v19 = -16401;
          *(v19 + 2) = -67;
        }

        if ((v11 - 500) <= 0xC)
        {
          result = (*(**v7 + 8))(*v7, v13, v11);
          v11 = 0;
        }
      }

      v10 = 0;
      v9 -= v18;
      v44 = 0;
LABEL_52:
      v8 = v11;
      goto LABEL_53;
    }

    if (!result)
    {
      if (v45[0] <= 11)
      {
        switch(v45[0])
        {
          case 8u:
            v16 = 25180;
            goto LABEL_48;
          case 9u:
            v16 = 29788;
            goto LABEL_48;
          case 0xAu:
            v16 = 28252;
            goto LABEL_48;
        }
      }

      else if (v45[0] > 33)
      {
        if (v45[0] == 34)
        {
          v16 = 8796;
          goto LABEL_48;
        }

        if (v45[0] == 92)
        {
          v16 = 23644;
          goto LABEL_48;
        }
      }

      else
      {
        if (v45[0] == 12)
        {
          v16 = 26204;
          goto LABEL_48;
        }

        if (v45[0] == 13)
        {
          v16 = 29276;
LABEL_48:
          *(v13 + v8) = v16;
          v11 = v8 + 2;
LABEL_49:
          if ((v11 - 500) <= 0xC)
          {
            result = (*(**v7 + 8))(*v7, v13, v11);
            v11 = 0;
            v10 = 0;
            v8 = 0;
            goto LABEL_53;
          }

          v10 = 0;
          goto LABEL_52;
        }
      }

      if (v45[0] > 0x7E)
      {
        v21 = a3;
      }

      else
      {
        v21 = 0;
      }

      if (v45[0] < 0x20 || v21)
      {
        if (HIWORD(v45[0]))
        {
          result = snprintf((v13 + v8), 0xDuLL, "\\u%04x\\u%04x", ((v45[0] >> 10) - 10304), v45[0] & 0x3FF | 0xDC00);
          v11 = v8 + 12;
        }

        else
        {
          result = snprintf((v13 + v8), 7uLL, "\\u%04x", v45[0]);
          v11 = v8 + 6;
        }
      }

      else
      {
        if (*(a2 + 23) >= 0)
        {
          v22 = a2;
        }

        else
        {
          v22 = *a2;
        }

        v11 = v8 + 1;
        *(v13 + v8) = *(v22 + v9);
      }

      goto LABEL_49;
    }

    if ((a3 & 1) == 0)
    {
      if (*(a2 + 23) >= 0)
      {
        v20 = a2;
      }

      else
      {
        v20 = *a2;
      }

      *(v13 + v8++) = *(v20 + v9);
    }

    ++v10;
LABEL_53:
    ++v9;
    v23 = *(a2 + 23);
    v12 = v23 >> 63;
    v24 = a2[1];
    if ((v23 & 0x80000000) == 0)
    {
      v24 = *(a2 + 23);
    }
  }

  while (v9 < v24);
  if (v44)
  {
    v26 = *(v7 + 158);
    switch(v26)
    {
      case 1:
        (*(**v7 + 8))(*v7, v13, v11);
        v25 = *(**v7 + 8);
        break;
      case 2:
        v25 = *(**v7 + 8);
        break;
      case 0:
        v43 = 3;
        *__str = 0;
        if ((v23 & 0x80000000) == 0)
        {
          v34 = a2;
        }

        else
        {
          v34 = *a2;
        }

        snprintf(__str, 3uLL, "%.2X", *(v34 + v24 - 1));
        v35 = __cxa_allocate_exception(0x20uLL);
        std::operator+<char>();
        sub_100007008(316, &v39, v35);
      default:
        sub_10000C60C();
    }

    return v25();
  }

  else if (v8)
  {
    v25 = *(**v7 + 8);
    return v25();
  }

  return result;
}

void sub_100006978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
    if ((v38 & 1) == 0)
    {
LABEL_6:
      if (*(v39 - 97) < 0)
      {
        operator delete(*(v39 - 120));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v38)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v37);
  goto LABEL_6;
}

uint64_t sub_100006A38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return (***a1)(*a1, 48);
  }

  LOBYTE(v2) = a2;
  if (a2 >= 0xA)
  {
    if (a2 >= 0x64)
    {
      *(a1 + 17) = word_10000E268[(a2 - 100 * ((41 * a2) >> 12))];
      v5 = a1 + 17;
      v2 = (41 * a2) >> 12;
      goto LABEL_10;
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v5 = a1 + 16 + v3;
  if (a2 < 0xA)
  {
LABEL_10:
    *(v5 - 1) = v2 | 0x30;
    return (*(**a1 + 8))();
  }

  *(v5 - 2) = word_10000E268[a2];
  return (*(**a1 + 8))();
}

uint64_t sub_100006B10(uint64_t (****a1)(void), unint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = a1 + 2;
    if ((v2 & 0x8000000000000000) != 0)
    {
      *v3 = 45;
      v2 = -v2;
      if (v2 >= 0xA)
      {
        v7 = 4;
        v11 = v2;
        while (1)
        {
          if (v11 <= 0x63)
          {
            v7 -= 2;
            goto LABEL_26;
          }

          if (v11 <= 0x3E7)
          {
            break;
          }

          if (v11 >> 4 < 0x271)
          {
            goto LABEL_26;
          }

          v7 += 4;
          v10 = v11 >= 0x186A0;
          v11 /= 0x2710uLL;
          if (!v10)
          {
            v7 -= 3;
            goto LABEL_26;
          }
        }

        --v7;
      }

      else
      {
        v7 = 1;
      }

LABEL_26:
      v8 = v7 + 1;
    }

    else
    {
      if (v2 < 0xA)
      {
        v4 = a1 + 17;
        goto LABEL_35;
      }

      v8 = 4;
      v9 = v2;
      while (1)
      {
        if (v9 <= 0x63)
        {
          v8 -= 2;
          goto LABEL_27;
        }

        if (v9 <= 0x3E7)
        {
          break;
        }

        if (v9 >> 4 < 0x271)
        {
          goto LABEL_27;
        }

        v8 += 4;
        v10 = v9 >= 0x186A0;
        v9 /= 0x2710uLL;
        if (!v10)
        {
          v8 -= 3;
          goto LABEL_27;
        }
      }

      --v8;
    }

LABEL_27:
    if (v8 >= 0x3F)
    {
      sub_10000C638();
    }

    v4 = &v3[v8];
    if (v2 < 0x64)
    {
      v12 = v2;
    }

    else
    {
      do
      {
        v12 = v2 / 0x64;
        *(v4 - 1) = word_10000E330[v2 % 0x64];
        v4 -= 2;
        v13 = v2 >> 4;
        v2 /= 0x64uLL;
      }

      while (v13 > 0x270);
    }

    if (v12 >= 0xA)
    {
      *(v4 - 1) = word_10000E330[v12];
LABEL_36:
      v14 = (**a1)[1];

      return v14();
    }

    LOBYTE(v2) = v12;
LABEL_35:
    *(v4 - 1) = v2 | 0x30;
    goto LABEL_36;
  }

  v5 = ***a1;

  return v5();
}

uint64_t sub_100006D38(uint64_t (****a1)(void), unint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    if (a2 >= 0xA)
    {
      v6 = 4;
      v7 = a2;
      while (1)
      {
        if (v7 <= 0x63)
        {
          v6 -= 2;
          goto LABEL_15;
        }

        if (v7 <= 0x3E7)
        {
          break;
        }

        if (v7 >> 4 < 0x271)
        {
          goto LABEL_15;
        }

        v8 = v7 >> 5;
        v7 /= 0x2710uLL;
        v6 += 4;
        if (v8 <= 0xC34)
        {
          v6 -= 3;
          goto LABEL_15;
        }
      }

      --v6;
LABEL_15:
      if (v6 >= 0x3F)
      {
        sub_10000C638();
      }

      v3 = a1 + v6 + 16;
      if (a2 < 0x64)
      {
        v9 = a2;
      }

      else
      {
        do
        {
          v9 = v2 / 0x64;
          *(v3 - 2) = word_10000E3F8[v2 % 0x64];
          v3 -= 2;
          v10 = v2 >> 4;
          v2 /= 0x64uLL;
        }

        while (v10 > 0x270);
      }

      if (v9 >= 0xA)
      {
        *(v3 - 2) = word_10000E3F8[v9];
LABEL_24:
        v11 = (**a1)[1];

        return v11();
      }

      LOBYTE(v2) = v9;
    }

    else
    {
      v3 = a1 + 17;
    }

    *(v3 - 1) = v2 | 0x30;
    goto LABEL_24;
  }

  v4 = ***a1;

  return v4();
}

uint64_t sub_100006EC8(char *a1, double a2)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    sub_1000075D4(a1 + 16, (a1 + 80), a2);
  }

  else
  {
    v3 = *a1;
  }

  v4 = *(**a1 + 8);

  return v4();
}

uint64_t sub_100006F78(_BYTE *a1, unsigned int *a2, int a3)
{
  v3 = byte_10000E0D8[a3];
  if (*a1)
  {
    v4 = a3 & 0x3F | (*a2 << 6);
  }

  else
  {
    v4 = (0xFFu >> v3) & a3;
  }

  *a2 = v4;
  v5 = 16 * *a1 + v3 + 256;
  if (v5 >= 0x190)
  {
    __assert_rtn("decode", "serializer.hpp", 892, "index < 400");
  }

  v6 = byte_10000E0D8[v5];
  *a1 = v6;
  return v6;
}

void sub_100007008(int a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_10000738C(&__p, "type_error");
  sub_100007200(a1, &v14);
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  v9 = std::string::append(&v14, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v16 = v9->__r_.__value_.__r.__words[2];
  *v15 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (v13 < 0)
  {
    operator delete(__p);
  }

  if (v16 >= 0)
  {
    v11 = v15;
  }

  else
  {
    v11 = v15[0];
  }

  sub_100007444(a3, a1, v11);
  *a3 = off_100014600;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_100007104(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_10000714C@<Q0>(const char *a1@<X0>, std::string *a2@<X1>, std::string *a3@<X8>)
{
  v6 = strlen(a1);
  v7 = std::string::insert(a2, 0, a1, v6);
  result = *v7;
  *a3 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

void sub_1000071AC(std::runtime_error *a1)
{
  a1->__vftable = off_100014628;
  std::runtime_error::~runtime_error(a1 + 1);

  std::exception::~exception(a1);
}

void sub_100007200(int a1@<W1>, std::string *a2@<X8>)
{
  std::operator+<char>();
  v4 = std::string::append(&v12, ".", 1uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, a1);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v8 = std::string::append(&v13, p_p, size);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v14, "] ", 2uLL);
  *a2 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_100007328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 - 41) < 0)
  {
    operator delete(*(v26 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_10000738C(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000050C0();
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

uint64_t sub_100007444(uint64_t a1, int a2, char *a3)
{
  *a1 = off_100014628;
  *(a1 + 8) = a2;
  std::runtime_error::runtime_error((a1 + 16), a3);
  return a1;
}

void sub_1000074A8(std::runtime_error *a1)
{
  a1->__vftable = off_100014628;
  std::runtime_error::~runtime_error(a1 + 1);
  std::exception::~exception(a1);

  operator delete();
}

void sub_100007518(std::runtime_error *a1)
{
  a1->__vftable = off_100014628;
  std::runtime_error::~runtime_error(a1 + 1);

  std::exception::~exception(a1);
}

void sub_10000756C(std::runtime_error *a1)
{
  a1->__vftable = off_100014628;
  std::runtime_error::~runtime_error(a1 + 1);
  std::exception::~exception(a1);

  operator delete();
}

char *sub_1000075D4(char *a1, uint64_t a2, double a3)
{
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    sub_10000C714();
  }

  v3 = a1;
  if ((*&a3 & 0x8000000000000000) != 0)
  {
    a3 = -a3;
    *a1 = 45;
    v3 = a1 + 1;
  }

  if (a3 == 0.0)
  {
    *v3 = 11824;
    result = v3 + 3;
    v3[2] = 48;
  }

  else
  {
    v5 = a2 - v3;
    if (a2 - v3 <= 16)
    {
      sub_10000C6E8();
    }

    v6 = 0;
    sub_1000076A8(v3, &v6 + 1, &v6, a3);
    if (SHIDWORD(v6) >= 18)
    {
      sub_10000C6BC();
    }

    if (v5 <= 0x15)
    {
      sub_10000C690();
    }

    if (v5 == 22)
    {
      sub_10000C664();
    }

    return sub_10000772C(v3, SHIDWORD(v6), v6, -4, 15);
  }

  return result;
}

uint64_t sub_1000076A8(uint64_t a1, int *a2, _DWORD *a3, double a4)
{
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    sub_10000C76C();
  }

  if (a4 <= 0.0)
  {
    sub_10000C740();
  }

  sub_100007938(v9, a4);
  return sub_100007A54(a1, a2, a3, v9[2], v9[3], v9[0], v9[1], v7, v9[4], v9[5]);
}

char *sub_10000772C(char *__src, int a2, int a3, int a4, int a5)
{
  if ((a4 & 0x80000000) == 0)
  {
    sub_10000C848();
  }

  if (a5 <= 0)
  {
    sub_10000C81C();
  }

  v5 = __src;
  v6 = a2;
  v7 = a3 + a2;
  if ((a3 & 0x80000000) == 0 && v7 <= a5)
  {
    memset(&__src[a2], 48, a3);
    *&v5[v7] = 12334;
    return &v5[v7 + 2];
  }

  if (v7 < 1 || v7 > a5)
  {
    if (v7 > a4 && v7 <= 0)
    {
      v10 = -v7;
      memmove(&__src[v10 + 2], __src, a2);
      *v5 = 11824;
      memset(v5 + 2, 48, v10);
      return &v5[v10 + 2 + v6];
    }

    if (a2 != 1)
    {
      memmove(__src + 2, __src + 1, a2 - 1);
      v5[1] = 46;
      v5 += v6;
    }

    v5[1] = 101;
    if (v7 <= -999)
    {
      sub_10000C7F0();
    }

    if (v7 >= 1001)
    {
      sub_10000C7C4();
    }

    if (v7 >= 1)
    {
      v11 = 43;
    }

    else
    {
      v11 = 45;
    }

    if (v7 - 1 >= 0)
    {
      v12 = v7 - 1;
    }

    else
    {
      v12 = 1 - v7;
    }

    v5[2] = v11;
    if (v12 > 9)
    {
      if (v12 > 0x63)
      {
        v5[3] = v12 / 0x64u + 48;
        v15 = v12 % 0x64u;
        v13 = v5 + 5;
        v5[4] = (v15 / 0xAu) | 0x30;
        LOBYTE(v12) = v15 % 0xAu;
        v14 = 4;
        goto LABEL_29;
      }

      v13 = v5 + 4;
      v5[3] = (v12 / 0xAu) | 0x30;
      LOBYTE(v12) = v12 % 0xAu;
    }

    else
    {
      v13 = v5 + 4;
      v5[3] = 48;
    }

    v14 = 3;
LABEL_29:
    result = &v5[v14 + 2];
    *v13 = v12 | 0x30;
    return result;
  }

  if ((a3 & 0x80000000) == 0)
  {
    sub_10000C798();
  }

  v9 = &__src[v7];
  memmove(v9 + 1, v9, a2 - v7);
  *v9 = 46;
  return &v5[v6 + 1];
}

uint64_t sub_100007938@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    sub_10000C8A0();
  }

  if (a2 <= 0.0)
  {
    sub_10000C874();
  }

  v3 = 4294966221;
  v4 = *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!(*&a2 >> 52))
  {
    v5 = 2 * *&a2;
    v6 = (2 * (*&a2 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
    v7 = 4294966222;
    v8 = -1075;
LABEL_9:
    v9 = v5 - 1;
    goto LABEL_10;
  }

  v7 = (*&a2 >> 52) - 1075;
  v5 = 2 * (v4 | 0x10000000000000);
  v6 = (2 * (*&a2 & 0xFFFFFFFFFFFFFLL | 0x10000000000000)) | 1;
  v3 = (*&a2 >> 52) - 1076;
  v8 = (*&a2 >> 52) - 1076;
  if (!(*&a2 >> 53) || v4)
  {
    v4 |= 0x10000000000000uLL;
    goto LABEL_9;
  }

  v8 = (*&a2 >> 52) - 1077;
  v4 = 0x10000000000000;
  v9 = 0x3FFFFFFFFFFFFFLL;
LABEL_10:
  v18 = v9;
  v19 = v8;
  v10 = sub_100007B40(v6, v3);
  v12 = v11;
  v13 = sub_100007B98(&v18, v11);
  v15 = v14;
  result = sub_100007B40(v4, v7);
  *a1 = result;
  *(a1 + 8) = v17;
  *(a1 + 16) = v13;
  *(a1 + 24) = v15;
  *(a1 + 32) = v10;
  *(a1 + 40) = v12;
  return result;
}

uint64_t sub_100007A54(uint64_t a1, int *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v31[0] = a4;
  v31[1] = a5;
  v30[0] = a6;
  v30[1] = a7;
  v29[0] = a9;
  v29[1] = a10;
  if (a10 != a5)
  {
    sub_10000C8CC();
  }

  if (a10 != a7)
  {
    sub_10000C8F8();
  }

  v13 = sub_100007C08(a10);
  v15 = v14;
  v27 = v13;
  v28 = v16;
  v17 = sub_100007CC0(v30, &v27);
  v19 = v18;
  v20 = sub_100007CC0(v31, &v27);
  v22 = v21;
  v23 = sub_100007CC0(v29, &v27);
  *a3 = -v15;
  return sub_100007D20(a1, a2, a3, v20 + 1, v22, v17, v19, v25, v23 - 1, v24);
}

uint64_t sub_100007B40(uint64_t result, unint64_t a2)
{
  if (!result)
  {
    __assert_rtn("normalize", "to_chars.hpp", 143, "x.f != 0");
  }

  for (; (result & 0x8000000000000000) == 0; a2 = (a2 - 1) | a2 & 0xFFFFFFFF00000000)
  {
    result *= 2;
  }

  return result;
}

unint64_t sub_100007B98(uint64_t *a1, int a2)
{
  v2 = *(a1 + 2) - a2;
  if (v2 < 0)
  {
    v5 = "delta >= 0";
    v6 = 162;
    goto LABEL_6;
  }

  v3 = *a1;
  result = *a1 << v2;
  if (result >> v2 != v3)
  {
    v5 = "((x.f << delta) >> delta) == x.f";
    v6 = 163;
LABEL_6:
    __assert_rtn("normalize_to", "to_chars.hpp", v6, v5);
  }

  return result;
}

uint64_t sub_100007C08(int a1)
{
  if (a1 <= -1501)
  {
    sub_10000CA00();
  }

  if (a1 >= 1501)
  {
    sub_10000C9D4();
  }

  v1 = 78913 * (-61 - a1) / 0x40000;
  if (a1 < -61)
  {
    ++v1;
  }

  if (v1 <= -315)
  {
    sub_10000C9A8();
  }

  v2 = ((v1 + 307 + (((v1 + 307) >> 28) & 7)) << 16) >> 19;
  if (v2 >= 0x4F)
  {
    sub_10000C924();
  }

  v3 = (&unk_10000E4C0 + 16 * v2);
  v4 = v3[1] + a1;
  if (v4 <= -125)
  {
    sub_10000C97C();
  }

  if (v4 >= -95)
  {
    sub_10000C950();
  }

  return *v3;
}

unint64_t sub_100007CC0(uint64_t a1, uint64_t a2)
{
  v2 = HIDWORD(*a1);
  v3 = HIDWORD(*a2);
  v4 = v3 * *a1;
  v5 = *a2 * v2;
  v6 = ((*a2 * *a1) >> 32) + v4 + v5;
  v7 = (*(a1 + 8) + *(a2 + 8) + 64);
  return HIDWORD(v5) + v3 * v2 + HIDWORD(v4) + ((v6 + 0x80000000) >> 32);
}

uint64_t sub_100007D20(uint64_t a1, int *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10)
{
  v47[0] = a4;
  v47[1] = a5;
  v46[0] = a6;
  v46[1] = a7;
  v44 = a9;
  v45 = a10;
  if (a10 <= -61)
  {
    sub_10000CB34();
  }

  if (a10 >= -31)
  {
    sub_10000CB08();
  }

  v13 = sub_100007FB8(&v44, v47);
  v14 = sub_100007FB8(&v44, v46);
  v15 = -v45;
  v16 = v44 >> -v45;
  if (!v16)
  {
    sub_10000CADC();
  }

  v17 = v14;
  v18 = 1 << v15;
  v19 = (1 << v15) - 1;
  v20 = v19 & v44;
  if (v16 <= 0x3B9AC9FF)
  {
    if (v16 <= 0x5F5E0FF)
    {
      if (v16 <= 0x98967F)
      {
        if (v16 <= 0xF423F)
        {
          v23 = v16 >> 5;
          v24 = v16 >> 4;
          if (v16 <= 9)
          {
            v25 = 1;
          }

          else
          {
            v25 = 10;
          }

          if (v16 <= 9)
          {
            v26 = 1;
          }

          else
          {
            v26 = 2;
          }

          if (v16 <= 0x63)
          {
            v27 = v26;
          }

          else
          {
            v27 = 3;
          }

          if (v16 <= 0x63)
          {
            v28 = v25;
          }

          else
          {
            v28 = 100;
          }

          if (v16 <= 0x3E7)
          {
            v29 = v27;
          }

          else
          {
            v29 = 4;
          }

          if (v16 <= 0x3E7)
          {
            v30 = v28;
          }

          else
          {
            v30 = 1000;
          }

          if (v24 <= 0x270)
          {
            v31 = v29;
          }

          else
          {
            v31 = 5;
          }

          if (v24 <= 0x270)
          {
            v32 = v30;
          }

          else
          {
            v32 = 10000;
          }

          if (v23 <= 0xC34)
          {
            v22 = v31;
          }

          else
          {
            v22 = 6;
          }

          if (v23 > 0xC34)
          {
            v21 = 100000;
          }

          else
          {
            v21 = v32;
          }
        }

        else
        {
          v21 = 1000000;
          v22 = 7;
        }
      }

      else
      {
        v21 = 10000000;
        v22 = 8;
      }
    }

    else
    {
      v21 = 100000000;
      v22 = 9;
    }
  }

  else
  {
    v21 = 1000000000;
    v22 = 10;
  }

  v33 = v22 + 1;
  do
  {
    v34 = v16 / v21;
    if (v16 / v21 >= 0xA)
    {
      sub_10000CAB0();
    }

    v16 = v16 % v21;
    v35 = *a2;
    *a2 = v35 + 1;
    *(a1 + v35) = v34 | 0x30;
    if ((v16 << v15) + v20 <= v13)
    {
      *a3 = *a3 + v33 - 2;
      v18 = v21 << v15;
      v40 = *a2;
      v41 = a1;
      v42 = v13;
      v20 += v16 << v15;
      return sub_100008028(v41, v40, v17, v42, v20, v18);
    }

    v21 /= 0xAu;
    --v33;
  }

  while (v33 > 1);
  if (v20 <= v13)
  {
    sub_10000CA2C();
  }

  v36 = 0;
  do
  {
    if (v20 >= 0x199999999999999ALL)
    {
      sub_10000CA84();
    }

    v37 = (10 * v20) >> v15;
    if (v37 >= 0xA)
    {
      sub_10000CA58();
    }

    v38 = *a2;
    *a2 = v38 + 1;
    *(a1 + v38) = v37 | 0x30;
    v39 = 5 * v13;
    v20 = (10 * v20) & v19;
    v13 *= 10;
    v17 *= 10;
    --v36;
  }

  while (v20 > 2 * v39);
  *a3 += v36;
  v40 = *a2;
  v41 = a1;
  v42 = v13;
  return sub_100008028(v41, v40, v17, v42, v20, v18);
}

uint64_t sub_100007FB8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    v4 = "x.e == y.e";
    v5 = 66;
LABEL_6:
    __assert_rtn("sub", "to_chars.hpp", v5, v4);
  }

  v2 = *a1 >= *a2;
  result = *a1 - *a2;
  if (!v2)
  {
    v4 = "x.f >= y.f";
    v5 = 67;
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100008028(uint64_t result, int a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  if (a2 <= 0)
  {
    sub_10000CC10();
  }

  if (a3 > a4)
  {
    sub_10000CBE4();
  }

  if (a4 < a5)
  {
    sub_10000CBB8();
  }

  if (!a6)
  {
    sub_10000CB8C();
  }

  v6 = a3 - a5;
  if (a3 > a5 && a4 - a5 >= a6)
  {
    v7 = result - 1;
    v8 = a6 + a5;
    v9 = a4 - (a6 + a5);
    do
    {
      if (v8 >= a3 && v6 <= v8 - a3)
      {
        break;
      }

      v10 = *(v7 + a2);
      if (v10 == 48)
      {
        sub_10000CB60();
      }

      *(v7 + a2) = v10 - 1;
      if (v8 >= a3)
      {
        break;
      }

      v6 -= a6;
      v8 += a6;
      v11 = v9 >= a6;
      v9 -= a6;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_1000080D4(uint64_t a1)
{
  if (*(a1 + 631) < 0)
  {
    operator delete(*(a1 + 608));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    sub_10000621C(v2);
  }

  return a1;
}

uint64_t sub_100008114(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  std::filebuf::~filebuf();

  return std::ostream::~ostream();
}

unsigned __int8 *sub_1000081DC(unsigned __int8 *result)
{
  v1 = *result;
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      if (*(result + 1))
      {
        return result;
      }

      v2 = "m_type != value_t::string or m_value.string != nullptr";
      v3 = 1222;
    }

    else
    {
      if (v1 != 8 || *(result + 1))
      {
        return result;
      }

      v2 = "m_type != value_t::binary or m_value.binary != nullptr";
      v3 = 1223;
    }

LABEL_15:
    __assert_rtn("assert_invariant", "json.hpp", v3, v2);
  }

  if (v1 == 1)
  {
    if (*(result + 1))
    {
      return result;
    }

    v2 = "m_type != value_t::object or m_value.object != nullptr";
    v3 = 1220;
    goto LABEL_15;
  }

  if (v1 == 2 && !*(result + 1))
  {
    v2 = "m_type != value_t::array or m_value.array != nullptr";
    v3 = 1221;
    goto LABEL_15;
  }

  return result;
}

void sub_100008294(uint64_t *a1, int a2)
{
  v33 = 0;
  v34 = 0;
  v35 = 0;
  if (a2 == 1)
  {
    sub_10000862C(&v33, *(*a1 + 16));
    v6 = *a1 + 8;
    v7 = **a1;
    if (v7 != v6)
    {
      v8 = v34;
      do
      {
        if (v8 >= v35)
        {
          v8 = sub_100008994(&v33, (v7 + 7));
        }

        else
        {
          *v8 = *(v7 + 56);
          *(v8 + 8) = v7[8];
          sub_1000081DC(v7 + 56);
          *(v7 + 56) = 0;
          v7[8] = 0;
          sub_1000081DC(v8);
          v8 += 16;
        }

        v34 = v8;
        v9 = v7[1];
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = v7[2];
            v11 = *v10 == v7;
            v7 = v10;
          }

          while (!v11);
        }

        v7 = v10;
      }

      while (v10 != v6);
    }
  }

  else if (a2 == 2)
  {
    sub_10000862C(&v33, (*(*a1 + 8) - **a1) >> 4);
    v4 = **a1;
    v5 = *(*a1 + 8);
    while (v4 != v5)
    {
      sub_1000086E8(&v33, v4);
      v4 += 16;
    }
  }

  for (i = v34; v33 != v34; i = v34)
  {
    v14 = *(i - 16);
    v13 = i - 16;
    LOBYTE(v31) = v14;
    v32 = *(v13 + 8);
    sub_1000081DC(v13);
    *v13 = 0;
    *(v13 + 8) = 0;
    sub_1000081DC(&v31);
    v15 = v34;
    v16 = v34 - 16;
    sub_1000081DC((v34 - 16));
    sub_100008294(v15 - 8, *(v15 - 16));
    v34 = v16;
    if (v31 == 1)
    {
      v23 = v32;
      v24 = v32 + 1;
      v25 = *v32;
      if (*v32 != v32 + 1)
      {
        do
        {
          if (v16 >= v35)
          {
            v16 = sub_100008994(&v33, (v25 + 7));
          }

          else
          {
            *v16 = *(v25 + 56);
            *(v16 + 8) = v25[8];
            sub_1000081DC(v25 + 56);
            *(v25 + 56) = 0;
            v25[8] = 0;
            sub_1000081DC(v16);
            v16 += 16;
          }

          v34 = v16;
          v26 = v25[1];
          if (v26)
          {
            do
            {
              v27 = v26;
              v26 = *v26;
            }

            while (v26);
          }

          else
          {
            do
            {
              v27 = v25[2];
              v11 = *v27 == v25;
              v25 = v27;
            }

            while (!v11);
          }

          v25 = v27;
        }

        while (v27 != v24);
        v23 = v32;
      }

      sub_100008ABC(v23, *(v23 + 8));
      *v23 = v23 + 8;
      *(v23 + 16) = 0;
      *(v23 + 8) = 0;
    }

    else if (v31 == 2)
    {
      v17 = v32;
      v18 = *v32;
      v19 = v32[1];
      if (*v32 != v19)
      {
        do
        {
          sub_1000086E8(&v33, v18);
          v18 += 16;
        }

        while (v18 != v19);
        v17 = v32;
        v18 = *v32;
        v19 = v32[1];
      }

      if (v19 != v18)
      {
        v20 = (v19 - 16);
        v21 = v20;
        do
        {
          sub_1000081DC(v20);
          v22 = *v21;
          v21 -= 16;
          sub_100008294(v20 + 8, v22);
          v11 = v20 == v18;
          v20 = v21;
        }

        while (!v11);
      }

      v17[1] = v18;
    }

    sub_1000081DC(&v31);
    sub_100008294(&v32, v31);
  }

  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v28 = *a1;
      if (*(*a1 + 23) < 0)
      {
        v30 = *v28;
        goto LABEL_52;
      }
    }

    else
    {
      if (a2 != 8)
      {
        goto LABEL_55;
      }

      v28 = *a1;
      v29 = **a1;
      if (v29)
      {
        v28[1] = v29;
        v30 = v29;
LABEL_52:
        operator delete(v30);
        goto LABEL_53;
      }
    }

LABEL_54:
    operator delete(v28);
    goto LABEL_55;
  }

  if (a2 == 1)
  {
    sub_100008ABC(*a1, *(*a1 + 8));
    goto LABEL_53;
  }

  if (a2 == 2)
  {
    v31 = *a1;
    sub_100008B34(&v31);
LABEL_53:
    v28 = *a1;
    goto LABEL_54;
  }

LABEL_55:
  v31 = &v33;
  sub_100008B34(&v31);
}

void *sub_10000862C(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_100008760(result, a2);
    }

    sub_100002CD0();
  }

  return result;
}

void sub_1000086D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100008930(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000086E8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 16))
  {
    result = sub_100008994(a1, a2);
  }

  else
  {
    *v4 = *a2;
    *(v4 + 8) = *(a2 + 8);
    sub_1000081DC(a2);
    *a2 = 0;
    *(a2 + 8) = 0;
    sub_1000081DC(v4);
    result = v4 + 16;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_100008760(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_100002DD0();
}

uint64_t sub_1000087A8(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v7 = a2;
    do
    {
      *v4 = *v7;
      *(v4 + 8) = *(v7 + 1);
      sub_1000081DC(v7);
      *v7 = 0;
      *(v7 + 1) = 0;
      sub_1000081DC(v4);
      v7 += 16;
      v4 = v14 + 16;
      v14 += 16;
    }

    while (v7 != a3);
    v12 = 1;
    if (v6 != a3)
    {
      v8 = v6;
      do
      {
        sub_1000081DC(v6);
        v9 = *v8;
        v8 += 16;
        sub_100008294(v6 + 8, v9);
        v6 = v8;
      }

      while (v8 != a3);
    }
  }

  return sub_100008888(v11);
}

uint64_t sub_100008888(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000088D4(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_1000088D4(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, unsigned __int8 *a5)
{
  if (a3 != a5)
  {
    v6 = a3 - 16;
    v7 = a3 - 16;
    do
    {
      sub_1000081DC(v6);
      v8 = *v7;
      v7 -= 16;
      sub_100008294(v6 + 1, v8);
      v9 = v6 == a5;
      v6 = v7;
    }

    while (!v9);
  }
}

uint64_t sub_100008930(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
    sub_1000081DC((i - 16));
    sub_100008294(i - 8, *(i - 16));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100008994(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_100002CD0();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    sub_100008760(a1, v7);
  }

  v8 = 16 * v2;
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = *a2;
  *(v8 + 8) = *(a2 + 8);
  sub_1000081DC(a2);
  *a2 = 0;
  *(a2 + 8) = 0;
  sub_1000081DC(v8);
  *&v17 = v8 + 16;
  v9 = *(a1 + 8);
  v10 = v8 + *a1 - v9;
  sub_1000087A8(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_100008930(&v15);
  return v14;
}

void sub_100008AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100008930(va);
  _Unwind_Resume(a1);
}

void sub_100008ABC(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_100008ABC(a1, *a2);
    sub_100008ABC(a1, *(a2 + 1));
    sub_1000081DC(a2 + 56);
    sub_100008294(a2 + 64, a2[56]);
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void sub_100008B34(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 16;
      v7 = v4 - 16;
      do
      {
        sub_1000081DC(v6);
        v8 = *v7;
        v7 -= 16;
        sub_100008294(v6 + 8, v8);
        v9 = v6 == v2;
        v6 = v7;
      }

      while (!v9);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

const char *sub_100008BD8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 9)
  {
    return "number";
  }

  else
  {
    return (&off_100014640)[v1];
  }
}

uint64_t sub_100008C00(uint64_t a1, void **a2)
{
  result = *sub_100008C98(a1, &v3, a2);
  if (!result)
  {
    sub_100008D20();
  }

  return result;
}

void *sub_100008C98(uint64_t a1, void *a2, void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((sub_100008E08(a3, (v4 + 32)) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((sub_100008E08(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t *sub_100008DB0(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_100008EA0(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t sub_100008E08(void *a1, void **a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  return sub_100008E40(a1, v2, v5, v6);
}

uint64_t sub_100008E40(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

uint64_t *sub_100008EA0(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void sub_10000903C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_1000081DC((a2 + 56));
    sub_100008294((a2 + 64), *(a2 + 56));
    if (*(a2 + 55) < 0)
    {
      operator delete(*(a2 + 32));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void sub_1000090B4(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  sub_100009100();
}

void sub_10000915C(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  sub_1000091A8();
}

void sub_100009204(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  sub_100009250();
}

void sub_1000092AC(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  sub_1000092F8();
}

void sub_100009354(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  sub_1000093A0();
}

void sub_1000093FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a3)
  {
    v9 = 32 * a3;
    v10 = (a2 + 16);
    while (1)
    {
      v11 = *v10;
      if (**v10 != 2 || *(*(v11 + 1) + 8) - **(v11 + 1) != 32 || *sub_1000096A8(v11, 0) != 3)
      {
        break;
      }

      v10 += 4;
      v9 -= 32;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    v12 = 0;
    if ((a4 & 1) == 0)
    {
LABEL_11:
      if (a5 == 2)
      {
        v13 = 0;
      }

      else
      {
        v13 = v12;
      }

      if (a5 != 1)
      {
        LOBYTE(v12) = 1;
      }

      if ((v12 & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        sub_10000738C(&v15, "cannot create object from initializer list");
        sub_100007008(301, &v15, exception);
      }

      if (!v13)
      {
LABEL_18:
        *a1 = 2;
        v15 = a2;
        sub_10000962C();
      }

LABEL_9:
      *a1 = 1;
      operator new();
    }
  }

  else
  {
LABEL_7:
    v12 = 1;
    if ((a4 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (!v12)
  {
    goto LABEL_18;
  }

  goto LABEL_9;
}

uint64_t sub_1000096A8(uint64_t a1, uint64_t a2)
{
  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v5 = sub_100008BD8(a1);
    sub_10000738C(&v6, v5);
    sub_10000714C("cannot use operator[] with a numeric argument with ", &v6, &v7);
    sub_100007008(305, &v7, exception);
  }

  return **(a1 + 8) + 16 * a2;
}

void sub_100009760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  goto LABEL_8;
}

unsigned __int8 *sub_1000097C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (*(a1 + 24) == 1)
  {
    *a2 = *v3;
    *(a2 + 8) = *(v3 + 8);
    sub_1000081DC(v3);
    *v3 = 0;
    *(v3 + 8) = 0;

    return sub_1000081DC(a2);
  }

  else
  {

    return sub_100009848(a2, v3);
  }
}

unsigned __int8 *sub_100009848(unsigned __int8 *a1, unsigned __int8 *a2)
{
  *a1 = *a2;
  *(a1 + 1) = 0;
  sub_1000081DC(a2);
  v4 = *a1;
  if (v4 > 4)
  {
    if (*a1 > 6u)
    {
      if (v4 != 7)
      {
        if (v4 == 8)
        {
          v7 = *(a2 + 1);
          sub_10000A080();
        }

        goto LABEL_20;
      }
    }

    else if (v4 != 5 && v4 != 6)
    {
      goto LABEL_20;
    }

    v6 = *(a2 + 1);
    goto LABEL_19;
  }

  if (*a1 <= 2u)
  {
    if (v4 == 1)
    {
      v8 = *(a2 + 1);
      sub_10000992C();
    }

    if (v4 == 2)
    {
      v5 = *(a2 + 1);
      sub_100009E30();
    }

    goto LABEL_20;
  }

  if (v4 == 3)
  {
    v9 = *(a2 + 1);
    sub_10000A004();
  }

  if (v4 == 4)
  {
    v6 = a2[8];
LABEL_19:
    *(a1 + 1) = v6;
  }

LABEL_20:
  sub_1000081DC(a1);
  return a1;
}

void *sub_100009988(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1000099E0(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_1000099E0(void *result, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_100009A68(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *sub_100009A68(void *a1, uint64_t a2, void **a3)
{
  result = *sub_100009AEC(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_100009C80();
  }

  return result;
}

void **sub_100009AEC(void *a1, uint64_t a2, void ***a3, uint64_t *a4, void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 == a2 || (sub_100008E08(a5, (a2 + 32)) & 0x80) != 0)
  {
    if (*a1 == a2)
    {
      v12 = a2;
    }

    else
    {
      v11 = *a2;
      if (*a2)
      {
        do
        {
          v12 = v11;
          v11 = v11[1];
        }

        while (v11);
      }

      else
      {
        v16 = a2;
        do
        {
          v12 = v16[2];
          v17 = *v12 == v16;
          v16 = v12;
        }

        while (v17);
      }

      if ((sub_100008E08(v12 + 4, a5) & 0x80) == 0)
      {
        goto LABEL_17;
      }
    }

    if (*a2)
    {
      *a3 = v12;
      return (v12 + 1);
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  if ((sub_100008E08((a2 + 32), a5) & 0x80) == 0)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  a4 = (a2 + 8);
  v13 = *(a2 + 8);
  if (v13)
  {
    v14 = *(a2 + 8);
    do
    {
      v15 = v14;
      v14 = *v14;
    }

    while (v14);
  }

  else
  {
    v19 = a2;
    do
    {
      v15 = v19[2];
      v17 = *v15 == v19;
      v19 = v15;
    }

    while (!v17);
  }

  if (v15 == v9)
  {
LABEL_29:
    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if ((sub_100008E08(a5, v15 + 4) & 0x80) != 0)
  {
    v13 = *a4;
    goto LABEL_29;
  }

LABEL_17:

  return sub_100008C98(a1, a3, a5);
}

void sub_100009CF8(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10000903C(v3, v2);
  _Unwind_Resume(a1);
}

char *sub_100009D14(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100009D8C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  sub_100009848(__dst + 24, a2 + 24);
  return __dst;
}

void sub_100009D70(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100009D8C(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_1000050C0();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

uint64_t sub_100009E9C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100009F24(result, a4);
  }

  return result;
}

void sub_100009F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100008B34(&a9);
  _Unwind_Resume(a1);
}

void sub_100009F24(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_100008760(a1, a2);
  }

  sub_100002CD0();
}

uint64_t sub_100009F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_100009848(v4, v6);
      v6 += 16;
      v4 = v11 + 16;
      v11 += 16;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_100008888(v8);
  return v4;
}

uint64_t sub_10000A0F0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_10000A16C(result, a4);
  }

  return result;
}

void sub_10000A150(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000A16C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_100002CD0();
}

uint64_t sub_10000A1BC(uint64_t a1, void **a2)
{
  result = *sub_100008C98(a1, &v3, a2);
  if (!result)
  {
    sub_10000A244();
  }

  return result;
}

uint64_t sub_10000A2E4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100009F24(result, a4);
  }

  return result;
}

void sub_10000A34C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100008B34(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10000A36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_10000A410(v4, v6);
      v6 += 32;
      v4 = v11 + 16;
      v11 += 16;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_100008888(v8);
  return v4;
}

uint64_t sub_10000A410(uint64_t a1, uint64_t a2)
{
  sub_1000097C0(a2, v4);
  *a1 = v4[0];
  *(a1 + 8) = v5;
  sub_1000081DC(v4);
  v4[0] = 0;
  v5 = 0;
  sub_1000081DC(a1);
  sub_1000081DC(v4);
  sub_100008294(&v5, v4[0]);
  return a1;
}

uint64_t sub_10000A488(uint64_t a1, unsigned __int8 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_100002CD0();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    sub_100008760(a1, v7);
  }

  v14 = 0;
  v15 = 16 * v2;
  sub_100009848((16 * v2), a2);
  v16 = (16 * v2 + 16);
  v8 = *(a1 + 8);
  v9 = 16 * v2 + *a1 - v8;
  sub_1000087A8(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_100008930(&v14);
  return v13;
}

void sub_10000A584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100008930(va);
  _Unwind_Resume(a1);
}

void sub_10000A600(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

void NebulaNotification::Processor::~Processor(NebulaNotification::Processor *this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    operator delete();
  }
}

{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    operator delete();
  }
}

void NebulaNotification::Processor::Impl::process(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  memset(v21, 0, 44);
  NebulaNotification::Processor::Impl::get_coreanalytics(a1, v21);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  log = NebulaNotification::algs_get_log(v5);
  v7 = os_log_type_enabled(log, OS_LOG_TYPE_DEBUG);
  if (v4 > 9)
  {
    if (v7)
    {
      sub_10000CCC0((a1 + 8), a1);
    }

    __p = 0;
    v19 = 0;
    v20 = 0;
    v10 = *a1;
    v9 = *(a1 + 8);
    p_p = &__p;
    if (v10 == v9)
    {
      v13 = 0;
      v12 = 0;
    }

    else
    {
      do
      {
        if (*v10 < 11.0)
        {
          v11 = 0.0;
        }

        else
        {
          v11 = 1.0;
        }

        v22 = v11;
        sub_10000AB40(&p_p, &v22);
        v10 += 6;
      }

      while (v10 != v9);
      v12 = __p;
      v13 = v19;
    }

    v14 = NebulaNotification::mean<float>(v12, (v13 - v12) >> 2);
    LOBYTE(v21[0]) = v14 < 0.5;
    v16 = NebulaNotification::algs_get_log(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_10000CD30(v14 >= 0.5, v16, v14);
    }

    *a2 = v14 >= 0.5;
    v17 = v21[1];
    *(a2 + 4) = v21[0];
    *(a2 + 20) = v17;
    *(a2 + 32) = *(&v21[1] + 12);
    if (__p)
    {
      v19 = __p;
      operator delete(__p);
    }
  }

  else
  {
    if (v7)
    {
      sub_10000CDD0((a1 + 8), a1);
    }

    LOBYTE(v21[0]) = 2;
    *a2 = 0;
    v8 = v21[0];
    *(a2 + 20) = v21[1];
    *(a2 + 32) = *(&v21[1] + 12);
    *(a2 + 4) = v8;
  }
}

void sub_10000A874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void NebulaNotification::Processor::Impl::get_coreanalytics(int **a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 28) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *a2 = 2;
  v4 = *a1;
  v3 = a1[1];
  if (v3 == *a1)
  {
    return;
  }

  v37 = 0;
  v38 = 0;
  v39 = 0;
  v41 = &v37;
  do
  {
    v40 = *v4;
    sub_10000AB40(&v41, &v40);
    v4 += 6;
  }

  while (v4 != v3);
  v5 = v37;
  v6 = v38;
  if (v37 == v38)
  {
    v10 = v38 - v37;
    v11 = v10;
    *(a2 + 4) = (0.0 / v10) * 100.0;
  }

  else
  {
    v7 = 0;
    v8 = v37;
    do
    {
      v9 = *v8++;
      if (v9 >= 10.0)
      {
        ++v7;
      }
    }

    while (v8 != v38);
    v10 = v38 - v37;
    v11 = v10;
    *(a2 + 4) = (v7 / v10) * 100.0;
    if (v6 != v5)
    {
      v12 = 0;
      v13 = v5;
      do
      {
        v14 = *v13++;
        if (v14 >= 11.0)
        {
          ++v12;
        }
      }

      while (v13 != v6);
      v15 = 0;
      *(a2 + 8) = (v12 / v11) * 100.0;
      v16 = v5;
      do
      {
        v17 = *v16++;
        if (v17 >= 12.0)
        {
          ++v15;
        }
      }

      while (v16 != v6);
      v18 = 0;
      *(a2 + 12) = (v15 / v11) * 100.0;
      v19 = v5;
      do
      {
        v20 = *v19++;
        if (v20 >= 13.0)
        {
          ++v18;
        }
      }

      while (v19 != v6);
      v21 = v18;
      goto LABEL_25;
    }
  }

  v21 = 0.0;
  v22 = (0.0 / v11) * 100.0;
  *(a2 + 8) = v22;
  *(a2 + 12) = v22;
LABEL_25:
  *(a2 + 16) = (v21 / v11) * 100.0;
  *(a2 + 20) = v10;
  *(a2 + 24) = NebulaNotification::median<float>(v5, v10);
  *(a2 + 28) = NebulaNotification::mean<float>(v37, v38 - v37);
  *(a2 + 32) = NebulaNotification::standard_deviation<float>(v37, v38 - v37, 1);
  v23 = v37;
  v24 = v38;
  v25 = v37 + 1;
  v26 = *v37;
  if (v37 == v38 || v25 == v38)
  {
    *(a2 + 36) = v26;
  }

  else
  {
    v27 = *v37;
    v28 = v37 + 1;
    v29 = v37;
    v30 = v37 + 1;
    do
    {
      v31 = *v30++;
      v32 = v31;
      if (v27 < v31)
      {
        v27 = v32;
        v29 = v28;
      }

      v28 = v30;
    }

    while (v30 != v38);
    *(a2 + 36) = *v29;
    v33 = v23;
    v34 = v25;
    do
    {
      v35 = *v34++;
      v36 = v35;
      if (v35 < v26)
      {
        v26 = v36;
        v33 = v25;
      }

      v25 = v34;
    }

    while (v34 != v24);
    v26 = *v33;
  }

  *(a2 + 40) = v26;
  v38 = v23;
  operator delete(v23);
}

void sub_10000AB20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10000AB40(uint64_t *a1, _DWORD *a2)
{
  v4 = *a1;
  v6 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  if (v6 >= v5)
  {
    v8 = *v4;
    v9 = v6 - *v4;
    v10 = (v9 >> 2) + 1;
    if (v10 >> 62)
    {
      sub_100002CD0();
    }

    v11 = v5 - v8;
    if (v11 >> 1 > v10)
    {
      v10 = v11 >> 1;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFFCLL;
    v13 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      sub_10000AC30(*a1, v13);
    }

    v14 = (4 * (v9 >> 2));
    *v14 = *a2;
    v7 = v14 + 1;
    memcpy(0, v8, v9);
    v15 = *v4;
    *v4 = 0;
    *(v4 + 8) = v7;
    *(v4 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v6 = *a2;
    v7 = v6 + 1;
  }

  *(v4 + 8) = v7;
  return a1;
}

void sub_10000AC30(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_100002DD0();
}

void *sub_10000AC78@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 8) = a3;
  v4 = *result - *a2;
  return result;
}

void sub_10000AC90(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

uint64_t NebulaNotification::algs_get_log(NebulaNotification *this)
{
  if (qword_100018498 != -1)
  {
    sub_10000CE40();
  }

  return qword_1000184A0;
}

float NebulaNotification::mean<float>(const float *a1, vDSP_Length __N)
{
  if (!__N)
  {
    sub_10000CE80();
  }

  if (!a1)
  {
    sub_10000CE54();
  }

  __C = 0.0;
  vDSP_meanv(a1, 1, &__C, __N);
  return __C;
}

{
  return NebulaNotification::mean<float>(a1, __N);
}

double NebulaNotification::mean<double>(const double *a1, vDSP_Length __N)
{
  if (!__N)
  {
    sub_10000CE80();
  }

  if (!a1)
  {
    sub_10000CE54();
  }

  __C = 0.0;
  vDSP_meanvD(a1, 1, &__C, __N);
  return __C;
}

float NebulaNotification::auc<float>(const float *a1, vDSP_Length __N, float a3)
{
  __C = 0.0;
  vDSP_sve(a1, 1, &__C, __N);
  return __C * a3;
}

double NebulaNotification::auc<double>(const double *a1, vDSP_Length __N, double a3)
{
  __C = 0.0;
  vDSP_sveD(a1, 1, &__C, __N);
  return __C * a3;
}

float NebulaNotification::variance<float>(const float *a1, unint64_t a2, int a3)
{
  if (!a2)
  {
    sub_10000CED8();
  }

  if (!a1)
  {
    sub_10000CEAC();
  }

  __C = 0;
  sub_10000B6F4(__B, a2);
  vDSP_meanv(a1, 1, &__C + 1, a2);
  vDSP_vsub(a1, 1, &__C + 1, 0, __B[0], 1, a2);
  vDSP_dotpr(__B[0], 1, __B[0], 1, &__C, a2);
  v6 = *&__C / (a2 - (a3 ^ 1));
  *&__C = v6;
  if (__B[0])
  {
    __B[1] = __B[0];
    operator delete(__B[0]);
  }

  return v6;
}

{
  return NebulaNotification::variance<float>(a1, a2, a3);
}

void sub_10000AF00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double NebulaNotification::variance<double>(const double *a1, unint64_t a2, int a3)
{
  if (!a2)
  {
    sub_10000CED8();
  }

  if (!a1)
  {
    sub_10000CEAC();
  }

  v9 = 0.0;
  __C = 0.0;
  sub_10000B7A8(__B, a2);
  vDSP_meanvD(a1, 1, &__C, a2);
  vDSP_vsubD(a1, 1, &__C, 0, __B[0], 1, a2);
  vDSP_dotprD(__B[0], 1, __B[0], 1, &v9, a2);
  v6 = v9 / (a2 - (a3 ^ 1u));
  v9 = v6;
  if (__B[0])
  {
    __B[1] = __B[0];
    operator delete(__B[0]);
  }

  return v6;
}

{
  return NebulaNotification::variance<double>(a1, a2, a3);
}

void sub_10000AFF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float NebulaNotification::standard_deviation<float>(const float *a1, unint64_t a2, int a3)
{
  if (!a2)
  {
    sub_10000CF30();
  }

  if (!a1)
  {
    sub_10000CF04();
  }

  return sqrtf(NebulaNotification::variance<float>(a1, a2, a3));
}

{
  return NebulaNotification::standard_deviation<float>(a1, a2, a3);
}

double NebulaNotification::standard_deviation<double>(const double *a1, unint64_t a2, int a3)
{
  if (!a2)
  {
    sub_10000CF30();
  }

  if (!a1)
  {
    sub_10000CF04();
  }

  return sqrt(NebulaNotification::variance<double>(a1, a2, a3));
}

float NebulaNotification::range<float>(const float *__A, vDSP_Length __N)
{
  if (!__N)
  {
    sub_10000CF88();
  }

  if (!__A)
  {
    sub_10000CF5C();
  }

  __C = 0;
  vDSP_maxv(__A, 1, &__C + 1, __N);
  vDSP_minv(__A, 1, &__C, __N);
  return *(&__C + 1) - *&__C;
}

double NebulaNotification::range<double>(const double *__A, vDSP_Length __N)
{
  if (!__N)
  {
    sub_10000CF88();
  }

  if (!__A)
  {
    sub_10000CF5C();
  }

  v5 = 0.0;
  __C = 0.0;
  vDSP_maxvD(__A, 1, &__C, __N);
  vDSP_minvD(__A, 1, &v5, __N);
  return __C - v5;
}

float NebulaNotification::median<float>(_DWORD *a1, unint64_t a2)
{
  if (!a2)
  {
    sub_10000CFE0();
  }

  if (!a1)
  {
    sub_10000CFB4();
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  sub_10000B280(&__p, a2);
  sub_10000B8A4(&v19, a1, &a1[a2], &__p);
  v5 = __p;
  v6 = v17;
  v7 = (v17 - __p) >> 1;
  if (a2)
  {
    v13 = (v7 - 2) & 0xFFFFFFFFFFFFFFFCLL;
    v14 = (__p + v13);
    if (__p + v13 != v17)
    {
      sub_10000B9BC(__p, (__p + v13), v17, v4);
    }

    v12 = *v14;
  }

  else
  {
    v8 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = (__p + v8 - 4);
    if (v9 != v17)
    {
      sub_10000B9BC(__p, (__p + v8 - 4), v17, v4);
      v5 = __p;
      v6 = v17;
      v8 = ((v17 - __p) >> 1) & 0xFFFFFFFFFFFFFFFCLL;
    }

    v10 = *v9;
    v11 = (v5 + v8);
    if ((v5 + v8) != v6)
    {
      sub_10000B9BC(v5, (v5 + v8), v6, v4);
    }

    v12 = (v10 + *v11) * 0.5;
  }

  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  return v12;
}

{
  return NebulaNotification::median<float>(a1, a2);
}

void sub_10000B258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10000B280(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    if (!(a2 >> 62))
    {
      v2 = result[1] - *result;
      sub_10000AC30(result, a2);
    }

    sub_100002CD0();
  }

  return result;
}

double NebulaNotification::median<double>(void *a1, unint64_t a2)
{
  if (!a2)
  {
    sub_10000CFE0();
  }

  if (!a1)
  {
    sub_10000CFB4();
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  sub_10000B458(&__p, a2);
  sub_10000BCFC(&v19, a1, &a1[a2], &__p);
  v5 = __p;
  v6 = v17;
  v7 = (v17 - __p) >> 1;
  if (a2)
  {
    v13 = (v7 - 4) & 0xFFFFFFFFFFFFFFF8;
    v14 = (__p + v13);
    if (__p + v13 != v17)
    {
      sub_10000BE14(__p, (__p + v13), v17, v4);
    }

    v12 = *v14;
  }

  else
  {
    v8 = v7 & 0xFFFFFFFFFFFFFFF8;
    v9 = (__p + v8 - 8);
    if (v9 != v17)
    {
      sub_10000BE14(__p, (__p + v8 - 8), v17, v4);
      v5 = __p;
      v6 = v17;
      v8 = ((v17 - __p) >> 1) & 0xFFFFFFFFFFFFFFF8;
    }

    v10 = *v9;
    v11 = (v5 + v8);
    if ((v5 + v8) != v6)
    {
      sub_10000BE14(v5, (v5 + v8), v6, v4);
    }

    v12 = (v10 + *v11) * 0.5;
  }

  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_10000B430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10000B458(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      sub_10000B85C(result, a2);
    }

    sub_100002CD0();
  }

  return result;
}

float NebulaNotification::percentile<float>(uint64_t a1, unint64_t a2, float a3)
{
  if (!a2)
  {
    return NAN;
  }

  if (!a1)
  {
    sub_10000D00C();
  }

  if (a2 == 1)
  {
    return *a1;
  }

  v4 = a3 / 100.0 * (a2 + -1.0);
  v5 = vcvtmd_s64_f64(v4);
  return *(a1 + 4 * v5) + ((*(a1 + 4 * v5 + 4) - *(a1 + 4 * v5)) * (v4 - v5));
}

double NebulaNotification::percentile<double>(uint64_t a1, unint64_t a2, double a3)
{
  if (!a2)
  {
    return NAN;
  }

  if (!a1)
  {
    sub_10000D00C();
  }

  if (a2 == 1)
  {
    return *a1;
  }

  v4 = a3 / 100.0 * (a2 + -1.0);
  v5 = vcvtmd_s64_f64(v4);
  return *(a1 + 8 * v5) + (*(a1 + 8 * v5 + 8) - *(a1 + 8 * v5)) * (v4 - v5);
}

float NebulaNotification::percentile<float>(uint64_t *a1, float a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
    return NAN;
  }

  v4 = v3 - v2;
  if (v4 == 4)
  {
    return *v2;
  }

  v6 = a2 / 100.0 * ((v4 >> 2) + -1.0);
  v7 = floor(v6);
  v8 = *(v2 + 4 * vcvtmd_u64_f64(v6));
  return v8 + (*(v2 + 4 * (v7 + 1.0)) - v8) * (v6 - v7);
}

double NebulaNotification::percentile<double>(uint64_t *a1, double a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
    return NAN;
  }

  v4 = v3 - v2;
  if (v4 == 8)
  {
    return *v2;
  }

  v6 = a2 / 100.0 * ((v4 >> 3) + -1.0);
  v7 = floor(v6);
  v8 = vcvtmd_u64_f64(v6);
  return *(v2 + 8 * v8) + (*(v2 + 8 * (v7 + 1.0)) - *(v2 + 8 * v8)) * (v6 - v7);
}

void *sub_10000B6F4(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_10000B76C(result, a2);
  }

  return result;
}

void sub_10000B750(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000B76C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_10000AC30(a1, a2);
  }

  sub_100002CD0();
}

void *sub_10000B7A8(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_10000B820(result, a2);
  }

  return result;
}

void sub_10000B804(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000B820(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_10000B85C(a1, a2);
  }

  sub_100002CD0();
}

void sub_10000B85C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100002DD0();
}

_DWORD *sub_10000B8A4(uint64_t a1, _DWORD *a2, _DWORD *a3, const void **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = a4[1];
    do
    {
      v8 = a4[2];
      if (v7 >= v8)
      {
        v9 = *a4;
        v10 = v7 - *a4;
        v11 = v10 >> 2;
        v12 = (v10 >> 2) + 1;
        if (v12 >> 62)
        {
          sub_100002CD0();
        }

        v13 = v8 - v9;
        if (v13 >> 1 > v12)
        {
          v12 = v13 >> 1;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v14 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          sub_10000AC30(a4, v14);
        }

        *(4 * v11) = *v5;
        v7 = (4 * v11 + 4);
        memcpy(0, v9, v10);
        v15 = *a4;
        *a4 = 0;
        a4[1] = v7;
        a4[2] = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v7 = *v5;
        v7 += 4;
      }

      a4[1] = v7;
      ++v5;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_10000B9BC(float *a1, float *a2, float *a3, float a4)
{
  while (a3 != a2)
  {
    v4 = a3 - a1;
    if (v4 < 2)
    {
      break;
    }

    if (v4 == 3)
    {
      v37 = a1[1];
      v38 = *(a3 - 1);
      if (v37 < v38)
      {
        v39 = *(a1 + 1);
      }

      else
      {
        v39 = *(a3 - 1);
      }

      if (v37 < v38)
      {
        v37 = *(a3 - 1);
      }

      *(a3 - 1) = v37;
      *(a1 + 1) = v39;
      v40 = *(a3 - 1);
      if (v40 < *a1)
      {
        v41 = *(a3 - 1);
      }

      else
      {
        v41 = *a1;
      }

      if (v40 < *a1)
      {
        v40 = *a1;
      }

      *(a3 - 1) = v40;
      v42 = a1[1];
      if (v41 < v42)
      {
        v41 = a1[1];
      }

      else
      {
        *a1 = v42;
      }

      a1[1] = v41;
      return;
    }

    if (v4 == 2)
    {
      v43 = *(a3 - 1);
      v44 = *a1;
      if (v43 < *a1)
      {
        *a1 = v43;
        *(a3 - 1) = v44;
      }

      return;
    }

    if (v4 <= 7)
    {
      sub_10000BC88(a1, a3, a4);
      return;
    }

    v5 = &a1[(a3 - a1) >> 3];
    v6 = a3 - 1;
    v7 = *(a3 - 1);
    v8 = *v5;
    if (*v5 < v7)
    {
      v9 = *v5;
    }

    else
    {
      v9 = *(a3 - 1);
    }

    if (*v5 < v7)
    {
      v10 = *(a3 - 1);
    }

    else
    {
      v10 = *v5;
    }

    *v6 = v10;
    *v5 = v9;
    v11 = *v6;
    v12 = *a1;
    if (*v6 < *a1)
    {
      v13 = *v6;
    }

    else
    {
      v13 = *a1;
    }

    if (*v6 < *a1)
    {
      v14 = *a1;
    }

    else
    {
      v14 = *v6;
    }

    *v6 = v14;
    v15 = *v5;
    v16 = *v5;
    if (v13 >= *v5)
    {
      *a1 = v15;
      v16 = v13;
    }

    v17 = v11 >= v12;
    if (v13 >= v15)
    {
      v17 = 1;
    }

    *v5 = v16;
    if (v8 >= v7)
    {
      v17 = 1;
    }

    a4 = *a1;
    if (*a1 >= v16)
    {
      v18 = a3 - 1;
      while (--v18 != a1)
      {
        if (*v18 < v16)
        {
          *a1 = *v18;
          *v18 = a4;
          if (v17)
          {
            v17 = 2;
          }

          else
          {
            v17 = 1;
          }

          goto LABEL_33;
        }
      }

      v28 = a1 + 1;
      if (a4 >= *v6)
      {
        while (v28 != v6)
        {
          v29 = *v28;
          if (a4 < *v28)
          {
            *v28++ = *v6;
            *v6 = v29;
            goto LABEL_65;
          }

          ++v28;
        }

        return;
      }

LABEL_65:
      if (v28 == v6)
      {
        return;
      }

      while (1)
      {
        v32 = *a1;
        do
        {
          v33 = *v28++;
          a4 = v33;
        }

        while (v32 >= v33);
        v34 = v28 - 1;
        do
        {
          v35 = *--v6;
          v36 = v35;
        }

        while (v32 < v35);
        if (v34 >= v6)
        {
          break;
        }

        *v34 = v36;
        *v6 = a4;
      }

      a1 = v28 - 1;
      if (v34 > a2)
      {
        return;
      }
    }

    else
    {
      v18 = a3 - 1;
LABEL_33:
      v19 = a1 + 1;
      if (a1 + 1 >= v18)
      {
        v23 = a1 + 1;
      }

      else
      {
        v20 = a1 + 1;
        while (1)
        {
          v21 = *v5;
          do
          {
            v22 = *v20++;
            a4 = v22;
          }

          while (v22 < v21);
          v23 = v20 - 1;
          do
          {
            v24 = *--v18;
            v25 = v24;
          }

          while (v24 >= v21);
          if (v23 >= v18)
          {
            break;
          }

          *v23 = v25;
          *v18 = a4;
          ++v17;
          if (v23 == v5)
          {
            v5 = v18;
          }
        }
      }

      if (v23 != v5)
      {
        a4 = *v5;
        v26 = *v23;
        if (*v5 < *v23)
        {
          *v23 = a4;
          *v5 = v26;
          ++v17;
        }
      }

      if (v23 == a2)
      {
        return;
      }

      if (!v17)
      {
        if (v23 <= a2)
        {
          v30 = v23 + 1;
          while (v30 != a3)
          {
            v31 = *(v30 - 1);
            a4 = *v30++;
            if (a4 < v31)
            {
              goto LABEL_49;
            }
          }
        }

        else
        {
          while (v19 != v23)
          {
            v27 = *(v19 - 1);
            a4 = *v19++;
            if (a4 < v27)
            {
              goto LABEL_49;
            }
          }
        }

        return;
      }

LABEL_49:
      if (v23 <= a2)
      {
        a1 = v23 + 1;
      }

      else
      {
        a3 = v23;
      }
    }
  }
}

float sub_10000BC88(float *a1, float *a2, float result)
{
  while (a1 != a2 - 1)
  {
    v3 = a1++;
    if (v3 != a2 && a1 != a2)
    {
      result = *v3;
      v4 = a1;
      v5 = v3;
      v6 = a1;
      do
      {
        v7 = *v6++;
        v8 = v7;
        if (v7 < result)
        {
          result = v8;
          v5 = v4;
        }

        v4 = v6;
      }

      while (v6 != a2);
      if (v5 != v3)
      {
        result = *v3;
        *v3 = *v5;
        *v5 = result;
      }
    }
  }

  return result;
}

void *sub_10000BCFC(uint64_t a1, void *a2, void *a3, const void **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = a4[1];
    do
    {
      v8 = a4[2];
      if (v7 >= v8)
      {
        v9 = *a4;
        v10 = v7 - *a4;
        v11 = v10 >> 3;
        v12 = (v10 >> 3) + 1;
        if (v12 >> 61)
        {
          sub_100002CD0();
        }

        v13 = v8 - v9;
        if (v13 >> 2 > v12)
        {
          v12 = v13 >> 2;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFF8)
        {
          v14 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          sub_10000B85C(a4, v14);
        }

        *(8 * v11) = *v5;
        v7 = (8 * v11 + 8);
        memcpy(0, v9, v10);
        v15 = *a4;
        *a4 = 0;
        a4[1] = v7;
        a4[2] = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v7 = *v5;
        v7 += 8;
      }

      a4[1] = v7;
      ++v5;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_10000BE14(double *a1, double *a2, double *a3, double a4)
{
  while (a3 != a2)
  {
    v4 = a3 - a1;
    if (v4 < 2)
    {
      break;
    }

    if (v4 == 3)
    {
      v37 = a1[1];
      v38 = *(a3 - 1);
      if (v37 < v38)
      {
        v39 = *(a1 + 1);
      }

      else
      {
        v39 = *(a3 - 1);
      }

      if (v37 < v38)
      {
        v37 = *(a3 - 1);
      }

      *(a3 - 1) = v37;
      *(a1 + 1) = v39;
      v40 = *(a3 - 1);
      if (v40 < *a1)
      {
        v41 = *(a3 - 1);
      }

      else
      {
        v41 = *a1;
      }

      if (v40 < *a1)
      {
        v40 = *a1;
      }

      *(a3 - 1) = v40;
      v42 = a1[1];
      if (v41 < v42)
      {
        v41 = a1[1];
      }

      else
      {
        *a1 = v42;
      }

      a1[1] = v41;
      return;
    }

    if (v4 == 2)
    {
      v43 = *(a3 - 1);
      v44 = *a1;
      if (v43 < *a1)
      {
        *a1 = v43;
        *(a3 - 1) = v44;
      }

      return;
    }

    if (v4 <= 7)
    {
      sub_10000C0E0(a1, a3, a4);
      return;
    }

    v5 = &a1[(a3 - a1) >> 4];
    v6 = a3 - 1;
    v7 = *(a3 - 1);
    v8 = *v5;
    if (*v5 < v7)
    {
      v9 = *v5;
    }

    else
    {
      v9 = *(a3 - 1);
    }

    if (*v5 < v7)
    {
      v10 = *(a3 - 1);
    }

    else
    {
      v10 = *v5;
    }

    *v6 = v10;
    *v5 = v9;
    v11 = *v6;
    v12 = *a1;
    if (*v6 < *a1)
    {
      v13 = *v6;
    }

    else
    {
      v13 = *a1;
    }

    if (*v6 < *a1)
    {
      v14 = *a1;
    }

    else
    {
      v14 = *v6;
    }

    *v6 = v14;
    v15 = *v5;
    v16 = *v5;
    if (v13 >= *v5)
    {
      *a1 = v15;
      v16 = v13;
    }

    v17 = v11 >= v12;
    if (v13 >= v15)
    {
      v17 = 1;
    }

    *v5 = v16;
    if (v8 >= v7)
    {
      v17 = 1;
    }

    a4 = *a1;
    if (*a1 >= v16)
    {
      v18 = a3 - 1;
      while (--v18 != a1)
      {
        if (*v18 < v16)
        {
          *a1 = *v18;
          *v18 = a4;
          if (v17)
          {
            v17 = 2;
          }

          else
          {
            v17 = 1;
          }

          goto LABEL_33;
        }
      }

      v28 = a1 + 1;
      if (a4 >= *v6)
      {
        while (v28 != v6)
        {
          v29 = *v28;
          if (a4 < *v28)
          {
            *v28++ = *v6;
            *v6 = v29;
            goto LABEL_65;
          }

          ++v28;
        }

        return;
      }

LABEL_65:
      if (v28 == v6)
      {
        return;
      }

      while (1)
      {
        v32 = *a1;
        do
        {
          v33 = *v28++;
          a4 = v33;
        }

        while (v32 >= v33);
        v34 = v28 - 1;
        do
        {
          v35 = *--v6;
          v36 = v35;
        }

        while (v32 < v35);
        if (v34 >= v6)
        {
          break;
        }

        *v34 = v36;
        *v6 = a4;
      }

      a1 = v28 - 1;
      if (v34 > a2)
      {
        return;
      }
    }

    else
    {
      v18 = a3 - 1;
LABEL_33:
      v19 = a1 + 1;
      if (a1 + 1 >= v18)
      {
        v23 = a1 + 1;
      }

      else
      {
        v20 = a1 + 1;
        while (1)
        {
          v21 = *v5;
          do
          {
            v22 = *v20++;
            a4 = v22;
          }

          while (v22 < v21);
          v23 = v20 - 1;
          do
          {
            v24 = *--v18;
            v25 = v24;
          }

          while (v24 >= v21);
          if (v23 >= v18)
          {
            break;
          }

          *v23 = v25;
          *v18 = a4;
          ++v17;
          if (v23 == v5)
          {
            v5 = v18;
          }
        }
      }

      if (v23 != v5)
      {
        a4 = *v5;
        v26 = *v23;
        if (*v5 < *v23)
        {
          *v23 = a4;
          *v5 = v26;
          ++v17;
        }
      }

      if (v23 == a2)
      {
        return;
      }

      if (!v17)
      {
        if (v23 <= a2)
        {
          v30 = v23 + 1;
          while (v30 != a3)
          {
            v31 = *(v30 - 1);
            a4 = *v30++;
            if (a4 < v31)
            {
              goto LABEL_49;
            }
          }
        }

        else
        {
          while (v19 != v23)
          {
            v27 = *(v19 - 1);
            a4 = *v19++;
            if (a4 < v27)
            {
              goto LABEL_49;
            }
          }
        }

        return;
      }

LABEL_49:
      if (v23 <= a2)
      {
        a1 = v23 + 1;
      }

      else
      {
        a3 = v23;
      }
    }
  }
}

double sub_10000C0E0(double *a1, double *a2, double result)
{
  while (a1 != a2 - 1)
  {
    v3 = a1++;
    if (v3 != a2 && a1 != a2)
    {
      result = *v3;
      v4 = a1;
      v5 = v3;
      v6 = a1;
      do
      {
        v7 = *v6++;
        v8 = v7;
        if (v7 < result)
        {
          result = v8;
          v5 = v4;
        }

        v4 = v6;
      }

      while (v6 != a2);
      if (v5 != v3)
      {
        result = *v3;
        *v3 = *v5;
        *v5 = result;
      }
    }
  }

  return result;
}

void sub_10000C154(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Failed to create directory at path: %{public}@ error: %{public}@ No logging will be written to files", &v3, 0x16u);
}

void sub_10000C220(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error fetching samples: %{public}@", &v2, 0xCu);
}

void sub_10000C298()
{
  sub_100002E2C();
  sub_100002E20(v1, v2, 5.8381e-34);
  sub_100002E04(&_mh_execute_header, v3, v4, "Invalid BD sample %{public}@ with end date prior to or equal to start of query interval.", v5);
}

void sub_10000C2DC()
{
  sub_100002E2C();
  sub_100002E20(v1, v2, 5.8381e-34);
  sub_100002E04(&_mh_execute_header, v3, v4, "Invalid BD sample %{public}@ with end date after end of query interval.", v5);
}

void sub_10000C320()
{
  sub_100002E2C();
  sub_100002E20(v1, v2, 5.8381e-34);
  sub_100002E04(&_mh_execute_header, v3, v4, "Invalid BD sample %{public}@, greater than limit.", v5);
}

void sub_10000C364()
{
  sub_100002E2C();
  sub_100002E20(v1, v2, 5.8381e-34);
  sub_100002E04(&_mh_execute_header, v3, v4, "Invalid BD sample %{public}@, less than minimum.", v5);
}

void sub_10000C3A8()
{
  sub_100002E2C();
  sub_100002E20(v1, v2, 5.8381e-34);
  sub_100002E04(&_mh_execute_header, v3, v4, "Invalid BD sample %{public}@ has NAN.", v5);
}

void sub_10000C3EC(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Invalid query interval (%{public}@ - %{public}@) with a duration of zero.", buf, 0x16u);
}

void sub_10000C45C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *a1 = 134349056;
  *(a1 + 4) = a2;
  sub_100002E04(&_mh_execute_header, a2, a3, "Invalid number (%{public}lu) of BD samples, more than expected.", a1);
}

void sub_10000CC3C(os_log_t log)
{
  v1 = 136315138;
  v2 = "1.0.3";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Nebula Notification Algs Version: %s", &v1, 0xCu);
}

void sub_10000CCC0(void *a1, void *a2)
{
  sub_10000AC78(a1, a2, __stack_chk_guard);
  LODWORD(v6) = 134217984;
  *(&v6 + 4) = v2 / v3;
  sub_10000AC90(&_mh_execute_header, v4, v5, "Nebula Notification BD length: %zu", v6);
}

void sub_10000CD30(char a1, NSObject *a2, float a3)
{
  v3 = "false";
  v4 = a3;
  if (a1)
  {
    v3 = "true";
  }

  v5 = 134218242;
  v6 = v4;
  v7 = 2080;
  v8 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Nebula Notification BD Portion: %f, Result: %s", &v5, 0x16u);
}

void sub_10000CDD0(void *a1, void *a2)
{
  sub_10000AC78(a1, a2, __stack_chk_guard);
  LODWORD(v6) = 134217984;
  *(&v6 + 4) = v2 / v3;
  sub_10000AC90(&_mh_execute_header, v4, v5, "Nebula Notification BD length lower than 10: %zu", v6);
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