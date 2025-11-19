void sub_1D9D585EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (*(v23 - 89) < 0)
  {
    operator delete(*(v23 - 112));
    sub_1D9D58FD4(&a23);
    _Unwind_Resume(a1);
  }

  sub_1D9D58FD4(&a23);
  _Unwind_Resume(a1);
}

void sub_1D9D586C8(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1 != v2)
  {
    JUMPOUT(0x1D9D586D8);
  }

  JUMPOUT(0x1D9D586E8);
}

void sub_1D9D586F0(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1 != v2)
  {
    JUMPOUT(0x1D9D58704);
  }

  JUMPOUT(0x1D9D58714);
}

void sub_1D9D5871C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  __cxa_end_catch();
  if (a12)
  {
    operator delete(a12);
    sub_1D9D58FD4(va);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1D9D586B8);
}

char *sub_1D9D58758(int64x2_t *a1, char *__dst, char *__src, char *a4)
{
  v6 = __dst;
  v8 = a1[2].i64[1];
  if (v8)
  {
    v9 = __dst == __src;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = a1->i64[1];
    v11 = a1[2].u64[0];
    v12 = __dst + 1;
    v13 = xmmword_1D9DDDC10;
    do
    {
      while (1)
      {
        *(v12 - 1) = (*(v10 + ((v11 >> 9) & 0x7FFFFFFFFFFFF8)))[v11 & 0xFFF];
        v10 = a1->i64[1];
        v15 = vaddq_s64(a1[2], v13);
        a1[2] = v15;
        v11 = v15.i64[0];
        if (v15.i64[0] >= 0x2000uLL)
        {
          break;
        }

        v8 = v15.i64[1];
        ++v6;
        if (v15.i64[1])
        {
          v16 = v12 == __src;
        }

        else
        {
          v16 = 1;
        }

        ++v12;
        if (v16)
        {
          goto LABEL_16;
        }
      }

      operator delete(*v10);
      v13 = xmmword_1D9DDDC10;
      v10 = (a1->i64[1] + 8);
      a1->i64[1] = v10;
      v8 = a1[2].i64[1];
      v11 = a1[2].i64[0] - 4096;
      a1[2].i64[0] = v11;
      ++v6;
      if (v8)
      {
        v14 = v12 == __src;
      }

      else
      {
        v14 = 1;
      }

      ++v12;
    }

    while (!v14);
  }

LABEL_16:
  if (v8)
  {
    if (v6 != a4)
    {
      v17 = a1->i64[1];
      v18 = a1[2].u64[0];
      do
      {
        v19 = a1[1].i64[0];
        if (v19 == v17)
        {
          v20 = 0;
        }

        else
        {
          v20 = ((v19 - v17) << 9) - 1;
        }

        v21 = a1[2].i64[1] + v18;
        if (v20 == v21)
        {
          v22 = v18 >= 0x1000;
          v23 = v18 - 4096;
          if (!v22)
          {
            v24 = a1[1].i64[1];
            v25 = v24 - a1->i64[0];
            if (v19 - v17 < v25)
            {
              if (v24 != v19)
              {
                operator new();
              }

              operator new();
            }

            v26 = v25 >> 2;
            if (v24 == a1->i64[0])
            {
              v27 = 1;
            }

            else
            {
              v27 = v26;
            }

            if (!(v27 >> 61))
            {
              operator new();
            }

            sub_1D9D10E9C();
          }

          a1[2].i64[0] = v23;
          v31 = *v17;
          a1->i64[1] = (v17 + 1);
          sub_1D9D58CB0(a1, &v31);
          v17 = a1->i64[1];
          v21 = a1[2].i64[1] + a1[2].i64[0];
        }

        (*(v17 + ((v21 >> 9) & 0x7FFFFFFFFFFFF8)))[v21 & 0xFFF] = *v6;
        v28 = a1[2].u64[0];
        ++a1[2].i64[1];
        *v6 = *(*(a1->i64[1] + ((v28 >> 9) & 0x7FFFFFFFFFFFF8)) + (v28 & 0xFFF));
        v17 = a1->i64[1];
        v29 = vaddq_s64(a1[2], xmmword_1D9DDDC10);
        a1[2] = v29;
        v18 = v29.i64[0];
        if (v29.i64[0] >= 0x2000uLL)
        {
          operator delete(*v17);
          v17 = (a1->i64[1] + 8);
          a1->i64[1] = v17;
          v18 = a1[2].i64[0] - 4096;
          a1[2].i64[0] = v18;
        }

        ++v6;
      }

      while (v6 != a4);
    }
  }

  else if (v6 != __src)
  {
    if (a4 != __src)
    {
      memmove(v6, __src, a4 - __src);
    }

    return &v6[a4 - __src];
  }

  return a4;
}

void sub_1D9D58C54(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void *sub_1D9D58CB0(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      v11 = &v4[-*result] >> 2;
      if (v4 == *result)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_1D9D10E9C();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v8];
  }

  *v4 = *a2;
  v3[2] = v4 + 8;
  return result;
}

const void **sub_1D9D58E3C(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      v9 = (v7 - v4) >> 2;
      if (v7 == v4)
      {
        v9 = 1;
      }

      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_1D9D10E9C();
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v5 - 8;
  return result;
}

uint64_t sub_1D9D58FD4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 2048;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 4096;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1D9D59398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  sub_1D9D71934(&a17);
  sub_1D9D692AC(&a13);
  sub_1D9D5DA90(&a11);
  sub_1D9D5DA90(&a9);
  _Unwind_Resume(a1);
}

BOOL sub_1D9D593CC(char a1, uint64_t a2, uint64_t a3)
{
  if (a1 != 1)
  {
    return 0;
  }

  v3 = a2 + 8;
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_41;
  }

  v5 = *(a3 + 23);
  v6 = v5 >= 0 ? *(a3 + 23) : *(a3 + 8);
  v7 = v5 >= 0 ? a3 : *a3;
  v8 = a2 + 8;
  do
  {
    v9 = *(v4 + 55);
    if (v9 >= 0)
    {
      v10 = *(v4 + 55);
    }

    else
    {
      v10 = *(v4 + 40);
    }

    if (v9 >= 0)
    {
      v11 = (v4 + 32);
    }

    else
    {
      v11 = *(v4 + 32);
    }

    if (v6 >= v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v6;
    }

    v13 = memcmp(v11, v7, v12);
    v14 = v10 < v6;
    if (v13)
    {
      v14 = v13 < 0;
    }

    v15 = !v14;
    if (v14)
    {
      v16 = 8;
    }

    else
    {
      v16 = 0;
    }

    if (v15)
    {
      v8 = v4;
    }

    v4 = *(v4 + v16);
  }

  while (v4);
  if (v8 == v3)
  {
    goto LABEL_41;
  }

  v17 = *(v8 + 55);
  v18 = v17 >= 0 ? *(v8 + 55) : *(v8 + 40);
  v19 = v17 >= 0 ? (v8 + 32) : *(v8 + 32);
  v20 = v18 >= v6 ? v6 : v18;
  v21 = memcmp(v7, v19, v20);
  v22 = v6 < v18;
  if (v21)
  {
    v22 = v21 < 0;
  }

  if (v22)
  {
LABEL_41:
    v8 = v3;
  }

  return v8 != v3;
}

std::runtime_error *sub_1D9D594FC(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);
  if (*(v2 + 39) < 0)
  {
    operator delete(a1[1].__vftable);
  }

  return a1;
}

void *sub_1D9D59544(uint64_t a1, char *__s)
{
  if (!*a1)
  {
    *a1 = 1;
    operator new();
  }

  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v11 = sub_1D9D6EFFC(a1);
    sub_1D9D94D70(&v14, v11);
    v12 = std::string::insert(&v14, 0, "cannot use operator[] with a string argument with ");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v16 = v12->__r_.__value_.__r.__words[2];
    __dst = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    sub_1D9D6EE60(305, &__dst, exception);
    __cxa_throw(exception, &unk_1F554E790, sub_1D9D6F024);
  }

  v4 = *(a1 + 8);
  v5 = strlen(__s);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1D9D12168();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v16) = v5;
  if (v5)
  {
    memcpy(&__dst, __s, v5);
  }

  *(&__dst + v6) = 0;
  v14.__r_.__value_.__r.__words[0] = &__dst;
  v7 = sub_1D9D71C98(v4, &__dst);
  if (SHIBYTE(v16) < 0)
  {
    v8 = v7;
    operator delete(__dst);
    v7 = v8;
  }

  return v7 + 7;
}

void sub_1D9D59718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D9D59794(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
    if ((*(a1 + 71) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 71) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 48));
  return a1;
}

uint64_t sub_1D9D597F0(uint64_t a1)
{
  *(a1 + 24) = &unk_1F554E3C8;
  v2 = *(a1 + 72);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    *(a1 + 48) = v3;
    operator delete(v3);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1D9D59BF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1D9D59C48(&a12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_1D9D59C48(void *a1)
{
  *a1 = &unk_1F554E3C8;
  v2 = a1[6];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_1D9D59CE0(int *a1, unsigned int a2)
{
  if (a1[4] != 1 || (*((*(**(a1 + 6) + 24))(*(a1 + 6)) + 4 * *a1) = a2, a1[18] != 1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Incorrect data type requested.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  result = (*(**(a1 + 13) + 24))(*(a1 + 13));
  v4 = *a1;
  *(result + 4 * v4) = 1065353216;
  *a1 = v4 + 1;
  return result;
}

void sub_1D9D59E0C(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 232) = 1;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0;
  *(a1 + 224) = &unk_1F554E3F8;
  *(a1 + 296) = 1;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 288) = &unk_1F554E3F8;
  *(a1 + 352) = 1;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 336) = 0;
  *(a1 + 344) = &unk_1F554E3F8;
  *(a1 + 408) = 1;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 392) = 0;
  *(a1 + 400) = &unk_1F554E3F8;
  *(a1 + 464) = 1;
  *(a1 + 504) = 0;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 448) = 0;
  *(a1 + 456) = &unk_1F554E3F8;
  *(a1 + 512) = 0;
  *(a1 + 536) = 0;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  strcpy(&__p, "bridge_model_spec.json");
  *(&__p.__r_.__value_.__s + 23) = 22;
  sub_1D9D5D790(a2, &__p, v5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v6.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SHIBYTE(v6.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_3:
    __dst = v6;
    goto LABEL_6;
  }

  sub_1D9D12B94(&__dst, v6.__r_.__value_.__l.__data_, v6.__r_.__value_.__l.__size_);
LABEL_6:
  if (qword_1ECB72028 != -1)
  {
    dispatch_once(&qword_1ECB72028, &unk_1F554E288);
  }

  v2 = qword_1ECB72020;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    p_dst = &__dst;
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
    *(__p.__r_.__value_.__r.__words + 4) = p_dst;
    _os_log_impl(&dword_1D9D0A000, v2, OS_LOG_TYPE_DEBUG, "Attempting to parse ModelSpec from JSON path: %s", &__p, 0xCu);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_1D9D12B94(&__src, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    __src = __dst;
  }

  if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_1D9D12B94(&__p, __src.__r_.__value_.__l.__data_, __src.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = __src;
  }

  sub_1D9D67F54(buf, &__p);
}

void sub_1D9D5CDA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x227]) < 0)
  {
    operator delete(STACK[0x210]);
  }

  if (a32 < 0)
  {
    operator delete(a27);
    if ((a44 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((a44 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a51 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  operator delete(a39);
  if ((a51 & 0x80000000) == 0)
  {
LABEL_7:
    sub_1D9D6467C(&a52);
    if (a72 < 0)
    {
      operator delete(a70);
    }

    sub_1D9D5DA90(a23 + 576);
    sub_1D9D5DA90(a23 + 560);
    v73 = *(a23 + 552);
    *(a23 + 552) = 0;
    if (v73)
    {
      (*(*v73 + 8))(v73);
    }

    v74 = *a17;
    *a17 = 0;
    if (v74)
    {
      (*(*v74 + 8))(v74);
    }

    sub_1D9D64740(a15);
    sub_1D9D64478(a24);
    sub_1D9D5D944(a18);
    sub_1D9D643D4(a19);
    sub_1D9D64360(a23);
    _Unwind_Resume(a1);
  }

LABEL_6:
  operator delete(a46);
  goto LABEL_7;
}

void sub_1D9D5D790(uint64_t a1@<X0>, std::string *a2@<X1>, uint64_t a3@<X8>)
{
  memset(&v10, 0, sizeof(v10));
  v5 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  size = a2->__r_.__value_.__l.__size_;
  if (v5 < 0)
  {
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  if (v5 < 0)
  {
    v5 = size;
  }

  sub_1D9D2B214(&v10.__pn_, a2, (a2 + v5));
  if (*(a1 + 31) < 0)
  {
    sub_1D9D12B94(&__dst, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    __dst = *(a1 + 8);
  }

  if (std::__fs::filesystem::path::__root_directory(&v10).__size_)
  {
    std::string::operator=(&__dst, &v10.__pn_);
  }

  else
  {
    if (std::__fs::filesystem::path::__filename(&__dst).__size_)
    {
      std::string::push_back(&__dst, 47);
    }

    if ((v10.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v10;
    }

    else
    {
      v7 = v10.__pn_.__r_.__value_.__r.__words[0];
    }

    if ((v10.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = HIBYTE(v10.__pn_.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v8 = v10.__pn_.__r_.__value_.__l.__size_;
    }

    std::string::append(&__dst, v7, v8);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_1D9D12B94((a3 + 8), __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    v9 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
    *a3 = &unk_1F554E230;
    if (v9 < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v10.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }
    }

    else if ((SHIBYTE(v10.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_26:
    operator delete(v10.__pn_.__r_.__value_.__l.__data_);
    return;
  }

  *(a3 + 8) = __dst;
  *a3 = &unk_1F554E230;
  if (SHIBYTE(v10.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_26;
  }
}

void sub_1D9D5D908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void *sub_1D9D5D944(void *a1)
{
  *a1 = &unk_1F554E3C8;
  v2 = a1[6];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_1D9D5D9DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

std::exception *sub_1D9D5DA48(std::exception *a1)
{
  std::exception::~exception(a1);
  if (*(v2 + 31) < 0)
  {
    operator delete(a1[1].__vftable);
  }

  return a1;
}

uint64_t sub_1D9D5DA90(uint64_t result)
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

void sub_1D9D5DC30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12)
{
  if (__p)
  {
    operator delete(__p);
    sub_1D9D616E8(&a12);
    _Unwind_Resume(a1);
  }

  sub_1D9D616E8(&a12);
  _Unwind_Resume(a1);
}

void sub_1D9D5DC68(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  *(a1 + 232) = *(a2 + 8);
  if (a1 + 224 != a2)
  {
    sub_1D9D64204((a1 + 240), *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 3);
  }

  v5 = *(a2 + 40);
  v4 = *(a2 + 48);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 272);
  *(a1 + 264) = v5;
  *(a1 + 272) = v4;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(a1 + 544);
  v16 = 13;
  strcpy(buf, "encoder_embed");
  v17 = &unk_1F554E3C8;
  v18 = *(a1 + 232);
  v21 = 0;
  __p = 0;
  v20 = 0;
  v9 = *(a1 + 240);
  v8 = *(a1 + 248);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  v10 = *(a1 + 272);
  v22 = *(a1 + 264);
  v23 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
  }

  memset(v13, 0, sizeof(v13));
  v14 = 1065353216;
  sub_1D9D66FD4(v13, buf);
  v17 = &unk_1F554E3C8;
  v11 = v23;
  if (v23 && !atomic_fetch_add(v23 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  if (v16 < 0)
  {
    operator delete(*buf);
  }

  sub_1D9D63028(&v12, v7, v13, a1 + 48);
  sub_1D9D63270(v13);
  sub_1D9D598AC(a1 + 280);
}

void sub_1D9D61098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  sub_1D9D55298(&STACK[0x3B0]);
  if (SLOBYTE(STACK[0x297]) < 0)
  {
    operator delete(STACK[0x280]);
  }

  sub_1D9D66C9C(&STACK[0x2B0]);
  sub_1D9D616E8(a10);
  if (a12)
  {
    operator delete(a12);
  }

  sub_1D9D59C48(&a54);
  _Unwind_Resume(a1);
}

void **sub_1D9D616E8(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v7 = *(v5 - 3);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 2) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_1D9D62E3C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1D9D3FB90(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1D9D63028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(a4 + 23) < 0)
  {
    sub_1D9D12B94(__dst, *a4, *(a4 + 8));
  }

  else
  {
    *__dst = *a4;
    v22 = *(a4 + 16);
  }

  sub_1D9D564DC(&__p, __dst, 1uLL);
  sub_1D9D647C0(a2, a3, &__p, v20);
  v8 = sub_1D9D66750(v20, a4);
  if (!v8)
  {
    sub_1D9D28A1C("unordered_map::at: key not found");
  }

  *a1 = &unk_1F554E3C8;
  v9 = *(v8 + 12);
  *(a1 + 16) = 0;
  *(a1 + 8) = v9;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v11 = v8[7];
  v10 = v8[8];
  if (v10 != v11)
  {
    if (((v10 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  v12 = v8[11];
  *(a1 + 40) = v8[10];
  *(a1 + 48) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_1F554E3F8;
  sub_1D9D63270(v20);
  v13 = __p;
  if (__p)
  {
    v14 = v19;
    v15 = __p;
    if (v19 != __p)
    {
      do
      {
        v16 = *(v14 - 1);
        v14 -= 3;
        if (v16 < 0)
        {
          operator delete(*v14);
        }
      }

      while (v14 != v13);
      v15 = __p;
    }

    v19 = v13;
    operator delete(v15);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(__dst[0]);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_1D9D6321C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  sub_1D9D54C6C(&a9);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D9D63270(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    while (1)
    {
      v3 = *v2;
      v2[5] = &unk_1F554E3C8;
      v4 = v2[11];
      if (v4)
      {
        if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          break;
        }
      }

      v5 = v2[7];
      if (v5)
      {
        goto LABEL_7;
      }

LABEL_8:
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
      if (!v3)
      {
        goto LABEL_12;
      }
    }

    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    v5 = v2[7];
    if (!v5)
    {
      goto LABEL_8;
    }

LABEL_7:
    v2[8] = v5;
    operator delete(v5);
    goto LABEL_8;
  }

LABEL_12:
  v6 = *a1;
  *a1 = 0;
  if (v6)
  {
    operator delete(v6);
  }

  return a1;
}

void *sub_1D9D6336C(void *a1)
{
  *a1 = &unk_1F554E3C8;
  v2 = a1[6];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_1D9D63404(void *a1)
{
  *a1 = &unk_1F554E3C8;
  v2 = a1[6];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x1DA741280);
}

void sub_1D9D634BC(void *a1)
{
  *a1 = &unk_1F554E3C8;
  v2 = a1[6];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x1DA741280);
}

void sub_1D9D63724(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_1D9D59C48(v1);
  _Unwind_Resume(a1);
}

void sub_1D9D6391C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_1D9D63934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  v14 = *v12;
  if (*v12)
  {
    *(v11 + 24) = v14;
    operator delete(v14);
  }

  sub_1D9D5DA90(&a11);
  sub_1D9D5DA90(&a9);
  _Unwind_Resume(a1);
}

void sub_1D9D63980(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F554E430;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA741280);
}

void sub_1D9D639D4(uint64_t a1)
{
  if (*(a1 + 201) == 1)
  {
    free(*(a1 + 32));
  }
}

uint64_t sub_1D9D639F0(uint64_t a1, _DWORD *a2, int32x4_t **a3)
{
  v28 = 0u;
  v6 = a3[1] - *a3;
  espresso_buffer_pack_tensor_shape();
  if (*a2)
  {
    if (*a2 != 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Unknown data type");
      goto LABEL_22;
    }

    v7 = 4;
    v9 = *a3;
    v8 = a3[1];
    if (*a3 == v8)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = 1;
    v9 = *a3;
    v8 = a3[1];
    if (*a3 == v8)
    {
LABEL_4:
      v10 = 0;
      goto LABEL_13;
    }
  }

  v11 = v8 - v9 - 8;
  if (v11 >= 0x38)
  {
    v14 = (v11 >> 3) + 1;
    v13 = (v9 + 8 * (v14 & 0x3FFFFFFFFFFFFFF8));
    v15 = v9 + 2;
    v16.i64[0] = 0x100000001;
    v16.i64[1] = 0x100000001;
    v17 = v14 & 0x3FFFFFFFFFFFFFF8;
    v18.i64[0] = 0x100000001;
    v18.i64[1] = 0x100000001;
    do
    {
      v20 = v15[-2];
      v19 = v15[-1];
      v22 = *v15;
      v21 = v15[1];
      v15 += 4;
      v16 = vmulq_s32(v16, vuzp1q_s32(v20, v19));
      v18 = vmulq_s32(v18, vuzp1q_s32(v22, v21));
      v17 -= 8;
    }

    while (v17);
    v23 = vmulq_s32(v18, v16);
    *v23.i8 = vmul_s32(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
    v12 = v23.i32[0] * v23.i32[1];
    if (v14 == (v14 & 0x3FFFFFFFFFFFFFF8))
    {
      goto LABEL_12;
    }
  }

  else
  {
    v12 = 1;
    v13 = v9;
  }

  do
  {
    v24 = v13->i32[0];
    v13 = (v13 + 8);
    v12 *= v24;
  }

  while (v13 != v8);
LABEL_12:
  v10 = v12;
LABEL_13:
  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 0x1000uLL, (v10 * v7 + 4095) & 0xFFFFFFFFFFFFF000, 0xB02D0DB9uLL))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to allocate aligned memory.");
    goto LABEL_22;
  }

  *&v28 = memptr;
  if (!*a2)
  {
    v25 = 262152;
    goto LABEL_18;
  }

  if (*a2 != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unknown data type.");
LABEL_22:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v25 = 65568;
LABEL_18:
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 8) = v28;
  *(a1 + 24) = 0u;
  *a1 = &unk_1F554E480;
  *(a1 + 40) = 0u;
  *(a1 + 168) = v25;
  *(a1 + 176) = 257;
  return a1;
}

uint64_t sub_1D9D63C90(uint64_t result)
{
  if (*(result + 177) == 1)
  {
    v1 = result;
    free(*(result + 8));
    return v1;
  }

  return result;
}

void sub_1D9D63CD0(uint64_t a1)
{
  if (*(a1 + 177) == 1)
  {
    free(*(a1 + 8));
  }

  JUMPOUT(0x1DA741280);
}

int8x16_t sub_1D9D63D78@<Q0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  rank = espresso_buffer_get_rank();
  if (rank >= 6)
  {
    v8 = rank;
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v15, v8);
    v10 = std::string::insert(&v15, 0, "Unsupported tensor rank: ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v13.i64[0] = v10->__r_.__value_.__r.__words[2];
    v12 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v12);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v5 = vshlq_n_s64(*(a1 + 152), 2uLL);
  result = vextq_s8(v5, v5, 8uLL);
  v7 = vshlq_n_s64(*(a1 + 136), 2uLL);
  v12 = result;
  v13 = vextq_s8(v7, v7, 8uLL);
  v14 = 4 * *(a1 + 128);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (rank)
  {
    if (((8 * rank) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  return result;
}

void sub_1D9D63EC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v23 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v22);
  goto LABEL_8;
}

void sub_1D9D63F20(uint64_t a1)
{
  (*(*a1 + 24))(a1);
  (*(*a1 + 32))(&__p, a1);
  sub_1D9D63FEC();
}

void sub_1D9D63FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D64114(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  sub_1D9D5DA90(v1);
  _Unwind_Resume(a1);
}

void sub_1D9D6413C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA741280);
}

uint64_t sub_1D9D64174(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x1DA741250);
  }

  return result;
}

uint64_t sub_1D9D64194(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001D9DDDE17)
  {
    if (((v2 & 0x80000001D9DDDE17 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001D9DDDE17))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001D9DDDE17 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

char *sub_1D9D64204(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v6 >> 2;
      if (v6 >> 2 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF8;
      v11 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }
    }

    sub_1D9D84AB0();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 3)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

uint64_t sub_1D9D64360(uint64_t a1)
{
  if ((*(a1 + 71) & 0x80000000) == 0)
  {
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 48));
  if (*(a1 + 47) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_7:
  operator delete(*a1);
  return a1;
}

uint64_t sub_1D9D643D4(uint64_t a1)
{
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
    if ((*(a1 + 95) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 71) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 95) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 72));
  if ((*(a1 + 71) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_11;
  }

LABEL_9:
  operator delete(*(a1 + 48));
  if (*(a1 + 47) < 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_11:
  operator delete(*a1);
  return a1;
}

void *sub_1D9D64478(void *a1)
{
  a1[22] = &unk_1F554E3C8;
  v2 = a1[28];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[24];
  if (v3)
  {
    a1[25] = v3;
    operator delete(v3);
  }

  a1[15] = &unk_1F554E3C8;
  v4 = a1[21];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[17];
  if (v5)
  {
    a1[18] = v5;
    operator delete(v5);
  }

  a1[8] = &unk_1F554E3C8;
  v6 = a1[14];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = a1[10];
  if (v7)
  {
    a1[11] = v7;
    operator delete(v7);
  }

  a1[1] = &unk_1F554E3C8;
  v8 = a1[7];
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = a1[3];
  if (v9)
  {
    a1[4] = v9;
    operator delete(v9);
  }

  return a1;
}

uint64_t sub_1D9D6467C(uint64_t a1)
{
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  v2 = *(a1 + 88);
  if (v2)
  {
    do
    {
      v7 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v7;
    }

    while (v7);
  }

  v3 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = *(a1 + 8);
    v6 = *a1;
    if (v5 != v4)
    {
      do
      {
        v8 = *(v5 - 1);
        v5 -= 3;
        if (v8 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = *a1;
    }

    *(a1 + 8) = v4;
    operator delete(v6);
  }

  return a1;
}

uint64_t sub_1D9D64740(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = *(a1 + 8);
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

      *(a1 + 8) = v2;
      operator delete(v4);
    }
  }

  return a1;
}

void sub_1D9D647C0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 8);
  for (i = *(a2 + 16); i; i = *i)
  {
    *v26 = &unk_1F554E538;
    if (*(i + 39) < 0)
    {
      sub_1D9D12B94(&v26[8], i[2], i[3]);
    }

    else
    {
      v8 = *(i + 1);
      v27 = i[4];
      *&v26[8] = v8;
    }

    v28 = *v6;
    (*(*i[10] + 16))(i[10], v26);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(*&v26[8]);
    }
  }

  v9 = *a3;
  v10 = a3[1];
  if (*a3 != v10)
  {
    do
    {
      if (!sub_1D9D653DC(v6 + 24, v9))
      {
        v15 = *v6;
        v16 = *(v6 + 1);
        if (*(v9 + 23) < 0)
        {
          v17 = *v9;
        }

        v25 = espresso_network_bind_buffer();
        HIBYTE(v24[2]) = 21;
        strcpy(v24, "Binding output buffer");
        sub_1D9D64D08(&v25, v24);
        if (SHIBYTE(v24[2]) < 0)
        {
          operator delete(v24[0]);
        }

        LOWORD(v24[0]) = 0;
        sub_1D9D65594();
      }

      v11 = sub_1D9D66750(v6 + 24, v9);
      if (!v11)
      {
        sub_1D9D28A1C("unordered_map::at: key not found");
      }

      v21 = *(v11 + 12);
      v13 = v11[7];
      v12 = v11[8];
      if (v12 != v13)
      {
        if (((v12 - v13) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1D9D84AB0();
      }

      v14 = v11[11];
      v22 = v11[10];
      v23 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(v14 + 1, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(v14 + 1, 0xFFFFFFFFFFFFFFFFLL))
        {
          (*(*v14 + 16))(v14);
          std::__shared_weak_count::__release_weak(v23);
        }
      }

      v9 += 24;
    }

    while (v9 != v10);
  }

  v18 = *(v6 + 3);
  LODWORD(v24[0]) = espresso_plan_execute_sync();
  v26[23] = 14;
  strcpy(v26, "Executing plan");
  sub_1D9D64D08(v24, v26);
  if ((v26[23] & 0x80000000) != 0)
  {
    operator delete(*v26);
  }

  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = *(v6 + 56);
  prime = *(v6 + 25);
  if (prime == 1)
  {
    prime = 2;
LABEL_34:
    sub_1D9D65F1C(a4, prime);
    goto LABEL_35;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(v6 + 25));
  }

  if (prime)
  {
    goto LABEL_34;
  }

LABEL_35:
  for (j = *(v6 + 26); j; j = *j)
  {
    sub_1D9D661D4(a4, (j + 2));
  }
}

void sub_1D9D64C30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D9D64CC8(uint64_t result)
{
  if (*(result + 31) < 0)
  {
    v1 = result;
    operator delete(*(result + 8));
    return v1;
  }

  return result;
}

uint64_t sub_1D9D64D08(int *a1, uint64_t *a2)
{
  result = *a1;
  if (result)
  {
    v4 = a1;
    sub_1D9D660B0(result, a2);
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v6 = std::string::append(&v15, " [espresso error: ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v16.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v16.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v14, *v4);
    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v14;
    }

    else
    {
      v8 = v14.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v14.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v16, v8, size);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v17, "]");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v18.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v18);
    exception->__vftable = &unk_1F554E5B0;
    __cxa_throw(exception, &unk_1F554E588, std::runtime_error::~runtime_error);
  }

  return result;
}

void sub_1D9D64E58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v35 - 41) < 0)
  {
    operator delete(*(v35 - 64));
    if ((a33 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a14 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a28);
  if ((a14 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a9);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_5:
    if (a20 < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a21);
  if (a20 < 0)
  {
LABEL_6:
    operator delete(__p);
    if ((v34 & 1) == 0)
    {
LABEL_14:
      _Unwind_Resume(a1);
    }

LABEL_13:
    __cxa_free_exception(v33);
    goto LABEL_14;
  }

LABEL_12:
  if (!v34)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

void sub_1D9D64F44(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1DA741280);
}

void sub_1D9D64FBC(uint64_t a1, _OWORD *a2, int *a3)
{
  v3 = *a3;
  if (*a3 > 1)
  {
    if (v3 == 2)
    {
      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      if (*(a1 + 31) < 0)
      {
        v18 = *(a1 + 8);
      }

      v19 = a2[1];
      *__p = *a2;
      *&__p[2] = v19;
      v22 = espresso_network_bind_input_vimagebuffer_argb8();
      HIBYTE(__p[2]) = 21;
      strcpy(__p, "Binding vImage_Buffer");
      sub_1D9D64D08(&v22, __p);
    }

    else
    {
      if (v3 != 3)
      {
        goto LABEL_20;
      }

      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      if (*(a1 + 31) < 0)
      {
        v10 = *(a1 + 8);
      }

      v11 = a2[1];
      *__p = *a2;
      *&__p[2] = v11;
      v22 = espresso_network_bind_input_vimagebuffer_planar8();
      HIBYTE(__p[2]) = 21;
      strcpy(__p, "Binding vImage_Buffer");
      sub_1D9D64D08(&v22, __p);
    }
  }

  else
  {
    if (v3)
    {
      if (v3 == 1)
      {
        v4 = *(a1 + 32);
        v5 = *(a1 + 40);
        if (*(a1 + 31) < 0)
        {
          v6 = *(a1 + 8);
        }

        v7 = a2[1];
        *__p = *a2;
        *&__p[2] = v7;
        v22 = espresso_network_bind_input_vimagebuffer_rgba8();
        HIBYTE(__p[2]) = 21;
        strcpy(__p, "Binding vImage_Buffer");
        sub_1D9D64D08(&v22, __p);
        goto LABEL_18;
      }

LABEL_20:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Unsupported image buffer type");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    if (*(a1 + 31) < 0)
    {
      v14 = *(a1 + 8);
    }

    v15 = a2[1];
    *__p = *a2;
    *&__p[2] = v15;
    v22 = espresso_network_bind_input_vimagebuffer_bgra8();
    HIBYTE(__p[2]) = 21;
    strcpy(__p, "Binding vImage_Buffer");
    sub_1D9D64D08(&v22, __p);
  }

LABEL_18:
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1D9D65214(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D6523C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (*(a1 + 31) < 0)
  {
    v4 = *(a1 + 8);
  }

  v7 = espresso_network_bind_cvpixelbuffer();
  v6 = 21;
  strcpy(__p, "Binding CVPixelBuffer");
  sub_1D9D64D08(&v7, __p);
  if (v6 < 0)
  {
    operator delete(*__p);
  }
}

void sub_1D9D652DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D652F8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (*(a1 + 31) < 0)
  {
    v4 = *(a1 + 8);
  }

  v5 = espresso_network_bind_buffer();
  operator new();
}

void sub_1D9D653C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_1D9D653DC(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_1D9D115A0(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = v2[23];
    if (v13 >= 0)
    {
      v14 = v2[23];
    }

    else
    {
      v14 = *(v2 + 1);
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v8 == v20)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v8 == v16)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

void sub_1D9D6594C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1D9D5DA90(&a11);
  sub_1D9D5DA90(&a9);
  _Unwind_Resume(a1);
}

uint64_t **sub_1D9D659E8(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_1D9D115A0(&v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    operator new();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_1D9D65E1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D65E48(va);
  _Unwind_Resume(a1);
}

void sub_1D9D65E30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D65E48(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1D9D65E48(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      *(v2 + 40) = &unk_1F554E3C8;
      v3 = *(v2 + 88);
      if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
      }

      v4 = *(v2 + 56);
      if (v4)
      {
        *(v2 + 64) = v4;
        operator delete(v4);
      }

      if (*(v2 + 39) < 0)
      {
        operator delete(*(v2 + 16));
      }
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1D9D65F1C(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_1D9D10E9C();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_1D9D660B0(uint64_t a1, uint64_t *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = *(a2 + 23);
    v5 = *a2;
    status_string = espresso_get_status_string();
    if (v4 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = v5;
    }

    v9 = 136315394;
    v10 = v7;
    v11 = 2080;
    v12 = status_string;
    _os_log_error_impl(&dword_1D9D0A000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Encountered an error during: %s\n -> Espresso Error: %s", &v9, 0x16u);
    v8 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v3 = *MEMORY[0x1E69E9840];
  }
}

void sub_1D9D6619C(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x1DA741280);
}

uint64_t **sub_1D9D661D4(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_1D9D115A0(v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    sub_1D9D665A0();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_1D9D66588(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D65E48(va);
  _Unwind_Resume(a1);
}

void sub_1D9D66704(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 64) = v5;
    operator delete(v5);
    if ((*(v2 + 39) & 0x80000000) == 0)
    {
LABEL_3:
      sub_1D9D65E48(v1);
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v2 + 39) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v2 + 16));
  sub_1D9D65E48(v1);
  _Unwind_Resume(a1);
}

uint64_t **sub_1D9D66750(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_1D9D115A0(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = v2[23];
    if (v13 >= 0)
    {
      v14 = v2[23];
    }

    else
    {
      v14 = *(v2 + 1);
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v20 == v8)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v16 == v8)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

void *sub_1D9D66908(void *result, void *a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v3 = result[1];
      v4 = result + 1;
      if (*result == result + 1)
      {
        goto LABEL_10;
      }

      v5 = result[1];
      v6 = result + 1;
      if (v3)
      {
        do
        {
          v4 = v5;
          v5 = v5[1];
        }

        while (v5);
      }

      else
      {
        do
        {
          v4 = v6[2];
          v7 = *v4 == v6;
          v6 = v4;
        }

        while (v7);
      }

      v8 = *(v2 + 7);
      if (*(v4 + 7) < v8)
      {
LABEL_10:
        if (v3)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = result + 1;
        }

        if (!*v9)
        {
LABEL_21:
          operator new();
        }
      }

      else
      {
        if (!v3)
        {
          goto LABEL_21;
        }

        while (1)
        {
          while (1)
          {
            v10 = v3;
            v11 = *(v3 + 28);
            if (v11 <= v8)
            {
              break;
            }

            v3 = *v10;
            if (!*v10)
            {
              goto LABEL_21;
            }
          }

          if (v11 >= v8)
          {
            break;
          }

          v3 = v10[1];
          if (!v3)
          {
            goto LABEL_21;
          }
        }
      }

      v12 = v2[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v2[2];
          v7 = *v13 == v2;
          v2 = v13;
        }

        while (!v7);
      }

      v2 = v13;
    }

    while (v13 != a2 + 1);
  }

  return result;
}

uint64_t sub_1D9D66AB8(uint64_t a1)
{
  *a1 = &unk_1F554E5D8;
  sub_1D9D66C4C(*(a1 + 16));
  return a1;
}

uint64_t sub_1D9D66B00(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      v3 = *(a1 + 24);
      v4 = *(a1 + 16);
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
        v4 = *(a1 + 16);
      }

      *(a1 + 24) = v2;
      operator delete(v4);
    }
  }

  return a1;
}

uint64_t sub_1D9D66B80(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  if (v2 != (result + 16))
  {
    v3 = *a2;
    do
    {
      *(v3 + 4 * *(v2 + 7)) = -8388609;
      v4 = v2[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v2[2];
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != (result + 16));
  }

  return result;
}

void sub_1D9D66BE4(uint64_t a1)
{
  *a1 = &unk_1F554E5D8;
  sub_1D9D66C4C(*(a1 + 16));

  JUMPOUT(0x1DA741280);
}

void sub_1D9D66C4C(void *a1)
{
  if (a1)
  {
    sub_1D9D66C4C(*a1);
    sub_1D9D66C4C(a1[1]);

    operator delete(a1);
  }
}

uint64_t sub_1D9D66C9C(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  *(a1 + 48) = &unk_1F554E5D8;
  sub_1D9D66C4C(*(a1 + 64));
  if (*(a1 + 40) == 1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      v4 = *(a1 + 24);
      v5 = *(a1 + 16);
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 1);
          v4 -= 3;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v3);
        v5 = *(a1 + 16);
      }

      *(a1 + 24) = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t sub_1D9D66D8C(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  *(a1 + 64) = &unk_1F554E5D8;
  sub_1D9D66C4C(*(a1 + 80));
  if (*(a1 + 40) == 1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      v4 = *(a1 + 24);
      v5 = *(a1 + 16);
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 1);
          v4 -= 3;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v3);
        v5 = *(a1 + 16);
      }

      *(a1 + 24) = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t sub_1D9D66E7C(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    v3 = *(a1 + 128);
    v4 = *(a1 + 120);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 24);
        if (v5)
        {
          *(v3 - 16) = v5;
          operator delete(v5);
        }

        v3 -= 32;
      }

      while (v3 != v2);
      v4 = *(a1 + 120);
    }

    *(a1 + 128) = v2;
    operator delete(v4);
  }

  return sub_1D9D66D8C(a1);
}

void **sub_1D9D66F00(void **a1)
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
        v5 = *(v3 - 3);
        if (v5)
        {
          *(v3 - 2) = v5;
          operator delete(v5);
        }

        v3 -= 32;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1D9D66F74(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

uint64_t **sub_1D9D66FD4(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_1D9D115A0(v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    sub_1D9D673A0();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_1D9D67388(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D65E48(va);
  _Unwind_Resume(a1);
}

void sub_1D9D674E0(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 64) = v5;
    operator delete(v5);
    if ((*(v2 + 39) & 0x80000000) == 0)
    {
LABEL_3:
      sub_1D9D65E48(v1);
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v2 + 39) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v2 + 16));
  sub_1D9D65E48(v1);
  _Unwind_Resume(a1);
}

void sub_1D9D6752C(uint64_t *a1, int a2)
{
  v2 = a1;
  __p = 0;
  v67 = 0;
  v68 = 0;
  if (a2 == 1)
  {
    v6 = *(*a1 + 16);
    if (v6)
    {
      if (!(v6 >> 60))
      {
        operator new();
      }

LABEL_110:
      sub_1D9D67CB0();
    }

    v3 = 0;
    v9 = *v2 + 8;
    v10 = **v2;
    if (v10 != v9)
    {
      do
      {
        if (v3 >= v68)
        {
          v3 = sub_1D9D67D88(&__p, (v10 + 7));
        }

        else
        {
          *v3 = *(v10 + 56);
          *(v3 + 1) = v10[8];
          *(v10 + 56) = 0;
          v10[8] = 0;
          v3 += 16;
        }

        v67 = v3;
        v12 = v10[1];
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = v10[2];
            v14 = *v13 == v10;
            v10 = v13;
          }

          while (!v14);
        }

        v10 = v13;
      }

      while (v13 != v9);
    }
  }

  else
  {
    v3 = 0;
    if (a2 == 2)
    {
      v4 = **v2;
      v5 = *(*v2 + 8);
      if (v5 != v4)
      {
        if (((v5 - v4) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_110;
      }

      v3 = 0;
      v8 = **v2;
      v7 = *(*v2 + 8);
      while (v8 != v7)
      {
        if (v3 < v68)
        {
          *v3 = *v8;
          *(v3 + 1) = *(v8 + 8);
          *v8 = 0;
          *(v8 + 8) = 0;
          v3 += 16;
        }

        else
        {
          v3 = sub_1D9D67D88(&__p, v8);
        }

        v67 = v3;
        v8 += 16;
      }
    }
  }

  v11 = __p;
  if (__p != v3)
  {
    v62 = v2;
    do
    {
      v64 = *(v3 - 16);
      v65 = *(v3 - 1);
      *(v3 - 16) = 0;
      *(v3 - 1) = 0;
      v16 = v67 - 16;
      sub_1D9D6752C(v67 - 8, *(v67 - 16));
      v67 = v16;
      if (v64 == 1)
      {
        v15 = v65;
        v32 = v65 + 1;
        v33 = *v65;
        if (*v65 != v65 + 1)
        {
          do
          {
            if (v16 >= v68)
            {
              v34 = __p;
              v35 = (v16 - __p) >> 4;
              v36 = v35 + 1;
              if ((v35 + 1) >> 60)
              {
                goto LABEL_110;
              }

              v37 = v68 - __p;
              if ((v68 - __p) >> 3 > v36)
              {
                v36 = v37 >> 3;
              }

              if (v37 >= 0x7FFFFFFFFFFFFFF0)
              {
                v38 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v38 = v36;
              }

              if (v38)
              {
                if (!(v38 >> 60))
                {
                  operator new();
                }

LABEL_111:
                sub_1D9D10E9C();
              }

              v39 = (v16 - __p) >> 4;
              v40 = 16 * v35;
              *v40 = *(v33 + 56);
              *(v40 + 8) = v33[8];
              *(v33 + 56) = 0;
              v33[8] = 0;
              v41 = (v40 - 16 * v39);
              if (v34 != v16)
              {
                v42 = v34;
                v43 = v41;
                do
                {
                  *v43 = *v42;
                  v43[1] = *(v42 + 1);
                  *v42 = 0;
                  *(v42 + 1) = 0;
                  v42 += 16;
                  v43 += 2;
                }

                while (v42 != v16);
                v44 = v34;
                do
                {
                  v45 = *v44;
                  v44 += 16;
                  sub_1D9D6752C(v34 + 8, v45);
                  v34 = v44;
                }

                while (v44 != v16);
                v34 = __p;
              }

              v16 = (v40 + 16);
              __p = v41;
              v67 = (v40 + 16);
              v68 = 0;
              if (v34)
              {
                operator delete(v34);
              }
            }

            else
            {
              *v16 = *(v33 + 56);
              *(v16 + 1) = v33[8];
              *(v33 + 56) = 0;
              v33[8] = 0;
              v16 += 16;
            }

            v67 = v16;
            v46 = v33[1];
            if (v46)
            {
              do
              {
                v47 = v46;
                v46 = *v46;
              }

              while (v46);
            }

            else
            {
              do
              {
                v47 = v33[2];
                v14 = *v47 == v33;
                v33 = v47;
              }

              while (!v14);
            }

            v33 = v47;
          }

          while (v47 != v32);
          v15 = v65;
        }

        sub_1D9D67EC4(v15, *(v15 + 8));
        *v15 = v15 + 8;
        *(v15 + 16) = 0;
        *(v15 + 8) = 0;
      }

      else if (v64 == 2)
      {
        v17 = v65;
        v18 = *v65;
        v19 = v65[1];
        if (*v65 != v19)
        {
          do
          {
            if (v16 < v68)
            {
              *v16 = *v18;
              *(v16 + 1) = *(v18 + 8);
              *v18 = 0;
              *(v18 + 8) = 0;
              v16 += 16;
            }

            else
            {
              v20 = __p;
              v21 = (v16 - __p) >> 4;
              v22 = v21 + 1;
              if ((v21 + 1) >> 60)
              {
                goto LABEL_110;
              }

              v23 = v68 - __p;
              if ((v68 - __p) >> 3 > v22)
              {
                v22 = v23 >> 3;
              }

              if (v23 >= 0x7FFFFFFFFFFFFFF0)
              {
                v24 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v24 = v22;
              }

              if (v24)
              {
                if (!(v24 >> 60))
                {
                  operator new();
                }

                goto LABEL_111;
              }

              v25 = 16 * v21;
              *v25 = *v18;
              *(v25 + 8) = *(v18 + 8);
              *v18 = 0;
              *(v18 + 8) = 0;
              v26 = v67;
              v27 = (16 * v21 + v20 - v67);
              if (v20 != v67)
              {
                v28 = v20;
                v29 = v25 + v20 - v67;
                do
                {
                  *v29 = *v28;
                  *(v29 + 8) = *(v28 + 1);
                  *v28 = 0;
                  *(v28 + 1) = 0;
                  v28 += 16;
                  v29 += 16;
                }

                while (v28 != v26);
                v30 = v20;
                do
                {
                  v31 = *v30;
                  v30 += 16;
                  sub_1D9D6752C(v20 + 8, v31);
                  v20 = v30;
                }

                while (v30 != v26);
                v20 = __p;
              }

              v16 = (v25 + 16);
              __p = v27;
              v67 = v16;
              v68 = 0;
              if (v20)
              {
                operator delete(v20);
              }
            }

            v67 = v16;
            v18 += 16;
          }

          while (v18 != v19);
          v17 = v65;
          v18 = *v65;
          v48 = v65[1];
          if (v48 != *v65)
          {
            v49 = v48 - 8;
            do
            {
              v50 = v49 - 8;
              sub_1D9D6752C(v49, *(v49 - 8));
              v49 -= 16;
            }

            while (v50 != v18);
          }
        }

        v17[1] = v18;
      }

      sub_1D9D6752C(&v65, v64);
      v11 = __p;
      v3 = v67;
    }

    while (__p != v67);
    v2 = v62;
  }

  switch(a2)
  {
    case 3:
      v51 = *v2;
      if (*(*v2 + 23) < 0)
      {
        v58 = *v51;
LABEL_100:
        operator delete(v58);
LABEL_101:
        v51 = *v2;
      }

      break;
    case 2:
      v51 = *v2;
      v52 = **v2;
      if (v52)
      {
        v53 = v51[1];
        v54 = **v2;
        if (v53 != v52)
        {
          v55 = *v2;
          v56 = v53 - 8;
          do
          {
            v57 = (v56 - 8);
            sub_1D9D6752C(v56, *(v56 - 8));
            v56 -= 16;
          }

          while (v57 != v52);
          v51 = v55;
          v54 = *v55;
        }

        v51[1] = v52;
        v58 = v54;
        goto LABEL_100;
      }

      break;
    case 1:
      sub_1D9D67EC4(*v2, *(*v2 + 8));
      goto LABEL_101;
    default:
      goto LABEL_103;
  }

  operator delete(v51);
  v11 = __p;
LABEL_103:
  if (v11)
  {
    v59 = v11;
    if (v67 != v11)
    {
      v60 = (v67 - 8);
      do
      {
        v61 = v60 - 8;
        sub_1D9D6752C(v60, *(v60 - 8));
        v60 -= 16;
      }

      while (v61 != v11);
      v59 = __p;
    }

    v67 = v11;
    operator delete(v59);
  }
}

uint64_t sub_1D9D67CC8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v5 = *(i - 16);
    v4 = i - 16;
    *(a1 + 16) = v4;
    sub_1D9D6752C((v4 + 8), v5);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1D9D67D20(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = v2 - 1;
      do
      {
        v5 = v4 - 1;
        sub_1D9D6752C(v4, *(v4 - 8));
        v4 -= 2;
      }

      while (v5 != v3);
    }
  }

  return a1;
}

uint64_t sub_1D9D67D88(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_1D9D67CB0();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 3 > v3)
  {
    v3 = v5 >> 3;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 60))
    {
      operator new();
    }

    sub_1D9D10E9C();
  }

  v7 = 16 * v2;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  v8 = *a1;
  v9 = a1[1];
  v10 = 16 * v2 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = 16 * v2 + *a1 - v9;
    do
    {
      *v12 = *v11;
      *(v12 + 8) = *(v11 + 1);
      *v11 = 0;
      *(v11 + 1) = 0;
      v11 += 16;
      v12 += 16;
    }

    while (v11 != v9);
    v13 = v8;
    do
    {
      v14 = *v13;
      v13 += 16;
      sub_1D9D6752C(v8 + 8, v14);
      v8 = v13;
    }

    while (v13 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = 16 * v2 + 16;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return 16 * v2 + 16;
}

void sub_1D9D67EC4(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1D9D67EC4(a1, *a2);
    sub_1D9D67EC4(a1, *(a2 + 1));
    sub_1D9D6752C(a2 + 64, a2[56]);
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
      v4 = a2;
    }

    else
    {
      v4 = a2;
    }

    operator delete(v4);
  }
}

void sub_1D9D67F54(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_1D9D12B94(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v9 = *(a2 + 16);
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v4 = SHIBYTE(v9);
  if (v9 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if (v9 < 0)
  {
    v4 = __p[1];
  }

  sub_1D9D2B214((a1 + 8), v5, (v4 + v5));
  *a1 = &unk_1F554E230;
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
    *a1 = &unk_1F554E158;
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    *a1 = &unk_1F554E158;
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
LABEL_11:
      *v6 = *a2;
      v7 = *(a2 + 16);
      goto LABEL_14;
    }
  }

  sub_1D9D12B94(v6, *a2, *(a2 + 8));
LABEL_14:
  operator new();
}

void sub_1D9D680D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 + 31) < 0)
  {
    operator delete(*v22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D9D6814C(uint64_t a1, uint64_t *a2)
{
  *(a1 + 480) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = &unk_1F554F0F8;
  *a1 = &unk_1F554F210;
  *(a1 + 432) = &unk_1F554F238;
  std::ios_base::init((a1 + 432), (a1 + 24));
  *(a1 + 568) = 0;
  *(a1 + 576) = -1;
  *a1 = &unk_1F554F0D0;
  *(a1 + 432) = &unk_1F554F120;
  *(a1 + 16) = &unk_1F554F0F8;
  MEMORY[0x1DA740F80](a1 + 24);
  if (*(a2 + 23) < 0)
  {
    v4 = *a2;
  }

  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_1D9D68290(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x1DA7411E0](v1);
  _Unwind_Resume(a1);
}

void *sub_1D9D682DC(void *a1)
{
  *a1 = &unk_1F554F0D0;
  v2 = a1 + 54;
  a1[54] = &unk_1F554F120;
  a1[2] = &unk_1F554F0F8;
  MEMORY[0x1DA740F90](a1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x1DA7411E0](v2);
  return a1;
}

void sub_1D9D68380(void *a1)
{
  *a1 = &unk_1F554F0D0;
  v1 = a1 + 54;
  a1[54] = &unk_1F554F120;
  a1[2] = &unk_1F554F0F8;
  MEMORY[0x1DA740F90](a1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x1DA7411E0](v1);

  JUMPOUT(0x1DA741280);
}

void sub_1D9D68444(void *a1)
{
  *(a1 - 2) = &unk_1F554F0D0;
  a1[52] = &unk_1F554F120;
  *a1 = &unk_1F554F0F8;
  MEMORY[0x1DA740F90](a1 + 1);
  std::iostream::~basic_iostream();

  JUMPOUT(0x1DA7411E0);
}

void sub_1D9D684E8(void *a1)
{
  *(a1 - 2) = &unk_1F554F0D0;
  v1 = a1 + 52;
  a1[52] = &unk_1F554F120;
  *a1 = &unk_1F554F0F8;
  MEMORY[0x1DA740F90](a1 + 1);
  std::iostream::~basic_iostream();
  MEMORY[0x1DA7411E0](v1);

  JUMPOUT(0x1DA741280);
}

void sub_1D9D685A4(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = &unk_1F554F0D0;
  v1[54] = &unk_1F554F120;
  v1[2] = &unk_1F554F0F8;
  MEMORY[0x1DA740F90](v1 + 3);
  std::iostream::~basic_iostream();

  JUMPOUT(0x1DA7411E0);
}

void sub_1D9D68664(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = &unk_1F554F0D0;
  v1[54] = &unk_1F554F120;
  v1[2] = &unk_1F554F0F8;
  MEMORY[0x1DA740F90](v1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x1DA7411E0](v1 + 54);

  JUMPOUT(0x1DA741280);
}

void *sub_1D9D6873C(void *result, int a2)
{
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 != 2)
      {
        operator new();
      }

      operator new();
    }

    if (a2 == 1)
    {
      operator new();
    }

    goto LABEL_10;
  }

  if (a2 > 5)
  {
LABEL_10:
    *result = 0;
    return result;
  }

  if (a2 == 4)
  {
    *result = 0;
  }

  else
  {
    *result = 0;
  }

  return result;
}

void sub_1D9D68884(std::runtime_error *a1)
{
  a1->__vftable = &unk_1F554E680;
  std::runtime_error::~runtime_error(a1 + 1);

  std::exception::~exception(a1);
}

void sub_1D9D688D8(int a1@<W1>, std::string *a2@<X8>)
{
  std::operator+<char>();
  v4 = std::string::append(&v12, ".");
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
  v10 = std::string::append(&v14, "] ");
  *a2 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_9:
      if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_15:
    operator delete(v12.__r_.__value_.__l.__data_);
    return;
  }

LABEL_14:
  operator delete(v13.__r_.__value_.__l.__data_);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_15;
  }
}

void sub_1D9D68A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 - 41) < 0)
  {
    operator delete(*(v26 - 64));
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void sub_1D9D68AC0(std::runtime_error *a1)
{
  a1->__vftable = &unk_1F554E680;
  std::runtime_error::~runtime_error(a1 + 1);
  std::exception::~exception(a1);

  JUMPOUT(0x1DA741280);
}

void sub_1D9D68B30(std::runtime_error *a1)
{
  a1->__vftable = &unk_1F554E680;
  std::runtime_error::~runtime_error(a1 + 1);

  std::exception::~exception(a1);
}

void sub_1D9D68B84(std::runtime_error *a1)
{
  a1->__vftable = &unk_1F554E680;
  std::runtime_error::~runtime_error(a1 + 1);
  std::exception::~exception(a1);

  JUMPOUT(0x1DA741280);
}

void sub_1D9D68BEC(uint64_t a1, int a2, unsigned __int8 *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 24);
  if (v6)
  {
    if (v6 == a1)
    {
      v41 = v40;
      (*(*v6 + 24))(v6, v40);
    }

    else
    {
      v41 = (*(*v6 + 16))(v6);
    }

    sub_1D9D6D260(&v42, a3, v40, *(a1 + 176));
    if (v41 == v40)
    {
      (*(*v41 + 32))(v41);
    }

    else if (v41)
    {
      (*(*v41 + 40))();
    }

    sub_1D9D6ACF4(a1, &v42);
    if (a2)
    {
      v13 = sub_1D9D696AC(a1 + 40);
      *(a1 + 32) = v13;
      if (v13 != 15)
      {
        v14 = *(a1 + 64);
        memset(&v36, 0, sizeof(v36));
        v15 = *(a1 + 88);
        for (i = *(a1 + 96); v15 != i; ++v15)
        {
          v17 = *v15;
          if (v17 > 0x1F)
          {
            std::string::push_back(&v36, v17);
          }

          else
          {
            v38 = 0;
            *__str = 0;
            snprintf(__str, 9uLL, "<U+%.4X>", v17);
            std::string::append(&v36, __str);
          }
        }

        v34 = *(a1 + 64);
        v35 = *(a1 + 80);
        v31 = 5;
        strcpy(v30, "value");
        sub_1D9D6BDFC(a1, 0xFu, v30, __p);
        sub_1D9D6BA94(101, &v34, __p, __str);
        sub_1D9D6B824(&v42, v14, &v36, __str);
        *__str = &unk_1F554E680;
        std::runtime_error::~runtime_error(&v39);
        std::exception::~exception(__str);
        if (v33 < 0)
        {
          operator delete(__p[0]);
          if ((v31 & 0x80000000) == 0)
          {
LABEL_27:
            if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_28;
            }

LABEL_39:
            operator delete(v36.__r_.__value_.__l.__data_);
            if (v47 == 1)
            {
              goto LABEL_29;
            }

            goto LABEL_40;
          }
        }

        else if ((v31 & 0x80000000) == 0)
        {
          goto LABEL_27;
        }

        operator delete(v30[0]);
        if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_39;
        }
      }
    }

LABEL_28:
    if (v47 == 1)
    {
LABEL_29:
      v18 = *a3;
      *a3 = 8;
      v28 = v18;
      v19 = *(a3 + 1);
      *(a3 + 1) = 0;
      v29 = v19;
      v20 = &v29;
      goto LABEL_42;
    }

LABEL_40:
    if (*a3 != 8)
    {
LABEL_43:
      sub_1D9D704E0(&v42);
      goto LABEL_44;
    }

    *a3 = 0;
    v26 = 8;
    v23 = *(a3 + 1);
    *(a3 + 1) = 0;
    v27 = v23;
    v20 = &v27;
    v18 = 8;
LABEL_42:
    sub_1D9D6752C(v20, v18);
    goto LABEL_43;
  }

  v7 = *(a1 + 176);
  v42 = a3;
  v43 = 0u;
  v44 = 0u;
  v45 = 0;
  v46 = v7;
  sub_1D9D6C56C(a1, &v42);
  if (!a2)
  {
    goto LABEL_33;
  }

  v8 = sub_1D9D696AC(a1 + 40);
  *(a1 + 32) = v8;
  if (v8 == 15)
  {
    goto LABEL_33;
  }

  v9 = *(a1 + 64);
  memset(&v36, 0, sizeof(v36));
  v10 = *(a1 + 88);
  for (j = *(a1 + 96); v10 != j; ++v10)
  {
    v12 = *v10;
    if (v12 > 0x1F)
    {
      std::string::push_back(&v36, v12);
    }

    else
    {
      v38 = 0;
      *__str = 0;
      snprintf(__str, 9uLL, "<U+%.4X>", v12);
      std::string::append(&v36, __str);
    }
  }

  v34 = *(a1 + 64);
  v35 = *(a1 + 80);
  v31 = 5;
  strcpy(v30, "value");
  sub_1D9D6BDFC(a1, 0xFu, v30, __p);
  sub_1D9D6BA94(101, &v34, __p, __str);
  sub_1D9D6D0D8(&v42, v9, &v36, __str);
  *__str = &unk_1F554E680;
  std::runtime_error::~runtime_error(&v39);
  std::exception::~exception(__str);
  if ((v33 & 0x80000000) == 0)
  {
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_46;
  }

  operator delete(__p[0]);
  if (v31 < 0)
  {
LABEL_46:
    operator delete(v30[0]);
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_47;
    }

LABEL_33:
    if (v45 != 1)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_32:
  if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

LABEL_47:
  operator delete(v36.__r_.__value_.__l.__data_);
  if (v45 == 1)
  {
LABEL_34:
    v21 = *a3;
    *a3 = 8;
    v22 = *(a3 + 1);
    *(a3 + 1) = 0;
    v25 = v22;
    sub_1D9D6752C(&v25, v21);
  }

LABEL_35:
  if (v43)
  {
    *(&v43 + 1) = v43;
    operator delete(v43);
  }

LABEL_44:
  v24 = *MEMORY[0x1E69E9840];
}

void sub_1D9D69120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, std::runtime_error a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  sub_1D9D6C518(&a39);
  if (a28 < 0)
  {
    operator delete(__p);
    if ((a22 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a38 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((a22 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a17);
  if ((a38 & 0x80000000) == 0)
  {
LABEL_4:
    v45 = *(v43 - 216);
    if (!v45)
    {
LABEL_11:
      _Unwind_Resume(a1);
    }

LABEL_9:
    *(v43 - 208) = v45;
    operator delete(v45);
    _Unwind_Resume(a1);
  }

LABEL_10:
  operator delete(a33);
  v45 = *(v43 - 216);
  if (!v45)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

void sub_1D9D69278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(a27);
    sub_1D9D704E0(v32 - 224);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1D9D691B8);
}

void sub_1D9D69288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    JUMPOUT(0x1D9D69294);
  }

  JUMPOUT(0x1D9D691B8);
}

uint64_t sub_1D9D692AC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void sub_1D9D69358(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F554E6A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA741280);
}

uint64_t sub_1D9D693D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = v2[3];
  if (v3 == v2[4])
  {
    v5 = a1;
    result = (*(*v2 + 80))(v2);
    if (result == -1)
    {
      v6 = (*(v5 + 8) + *(**(v5 + 8) - 24));
      std::ios_base::clear(v6, v6->__rdstate_ | 2);
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v2[3] = v3 + 1;
    return *v3;
  }

  return result;
}

void *sub_1D9D69478(void *a1)
{
  *a1 = &unk_1F554E6F8;
  v2 = (a1[1] + *(*a1[1] - 24));
  std::ios_base::clear(v2, v2->__rdstate_ & 2);
  return a1;
}

void sub_1D9D694E4(void *a1)
{
  *a1 = &unk_1F554E6F8;
  v1 = (a1[1] + *(*a1[1] - 24));
  std::ios_base::clear(v1, v1->__rdstate_ & 2);

  JUMPOUT(0x1DA741280);
}

uint64_t sub_1D9D69570(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *(a3 + 24);
  if (v7)
  {
    if (v7 == a3)
    {
      *(a1 + 24) = a1;
      (*(**(a3 + 24) + 24))(*(a3 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v7 + 16))(v7);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  *(a1 + 40) = *a2;
  *(a1 + 32) = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 56) = -1;
  *(a1 + 60) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 136) = "";
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = 0;
  v8 = localeconv();
  if (v8->decimal_point)
  {
    v9 = *v8->decimal_point;
  }

  else
  {
    v9 = 46;
  }

  *(a1 + 168) = v9;
  *(a1 + 176) = a4;
  *(a1 + 32) = sub_1D9D696AC(a1 + 40);
  return a1;
}

void sub_1D9D6968C(_Unwind_Exception *a1)
{
  sub_1D9D6AC58(v2);
  sub_1D9D692AC(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D696AC(uint64_t a1)
{
  if (!*(a1 + 24))
  {
    if (sub_1D9D69934(a1) == 239)
    {
      if (sub_1D9D69934(a1) != 187 || sub_1D9D69934(a1) != 191)
      {
        *(a1 + 96) = "invalid BOM; must be 0xEF 0xBB 0xBF if given";
        return 14;
      }
    }

    else
    {
      v3 = (a1 + 32);
      v4 = *(a1 + 32);
      *(a1 + 20) = 1;
      --*(a1 + 24);
      if (v4 || (v3 = (a1 + 40), (v4 = *(a1 + 40)) != 0))
      {
        *v3 = v4 - 1;
      }

      if (*(a1 + 16) != -1)
      {
        --*(a1 + 56);
      }
    }
  }

  while (2)
  {
    sub_1D9D69934(a1);
    switch(*(a1 + 16))
    {
      case 0xFFFFFFFF:
      case 0:
        return 15;
      case 9:
      case 0xA:
      case 0xD:
      case 0x20:
        continue;
      case 0x22:

        return sub_1D9D69AAC(a1);
      case 0x2C:
        return 13;
      case 0x2D:
      case 0x30:
      case 0x31:
      case 0x32:
      case 0x33:
      case 0x34:
      case 0x35:
      case 0x36:
      case 0x37:
      case 0x38:
      case 0x39:

        return sub_1D9D6A55C(a1);
      case 0x3A:
        return 12;
      case 0x5B:
        return 8;
      case 0x5D:
        return 10;
      case 0x66:
        if (sub_1D9D69934(a1) != 97 || sub_1D9D69934(a1) != 108 || sub_1D9D69934(a1) != 115 || sub_1D9D69934(a1) != 101)
        {
          goto LABEL_37;
        }

        result = 2;
        break;
      case 0x6E:
        if (sub_1D9D69934(a1) != 117 || sub_1D9D69934(a1) != 108 || sub_1D9D69934(a1) != 108)
        {
          goto LABEL_37;
        }

        result = 3;
        break;
      case 0x74:
        if (sub_1D9D69934(a1) != 114 || sub_1D9D69934(a1) != 117 || sub_1D9D69934(a1) != 101)
        {
          goto LABEL_37;
        }

        result = 1;
        break;
      case 0x7B:
        return 9;
      case 0x7D:
        return 11;
      default:
LABEL_37:
        *(a1 + 96) = "invalid literal";
        result = 14;
        break;
    }

    return result;
  }
}

uint64_t sub_1D9D69934(uint64_t a1)
{
  *(a1 + 24) = vaddq_s64(*(a1 + 24), vdupq_n_s64(1uLL));
  if (*(a1 + 20) == 1)
  {
    *(a1 + 20) = 0;
    v2 = *(a1 + 16);
  }

  else
  {
    v3 = *a1;
    v2 = (***a1)();
    *(a1 + 16) = v2;
  }

  if (v2 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a1 + 56);
  v4 = *(a1 + 64);
  if (v5 >= v4)
  {
    v7 = *(a1 + 48);
    v8 = (v5 - v7);
    v9 = v5 - v7 + 1;
    if (v9 < 0)
    {
      sub_1D9D67CB0();
    }

    v10 = v4 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = v5 - v7;
    *v8 = v2;
    v6 = v8 + 1;
    memcpy(0, v7, v12);
    *(a1 + 48) = 0;
    *(a1 + 56) = v8 + 1;
    *(a1 + 64) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = v2;
    v6 = v5 + 1;
  }

  *(a1 + 56) = v6;
  result = *(a1 + 16);
  if (result == 10)
  {
    v14 = *(a1 + 40) + 1;
    *(a1 + 32) = 0;
    *(a1 + 40) = v14;
  }

  return result;
}

uint64_t sub_1D9D69AAC(uint64_t a1)
{
  if ((*(a1 + 95) & 0x80000000) == 0)
  {
    *(a1 + 72) = 0;
    *(a1 + 95) = 0;
    v2 = *(a1 + 48);
    *(a1 + 56) = v2;
    v3 = *(a1 + 16);
    v4 = *(a1 + 64);
    if (v2 < v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    operator new();
  }

  **(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v2 = *(a1 + 48);
  *(a1 + 56) = v2;
  v3 = *(a1 + 16);
  v5 = *(a1 + 64);
  if (v2 >= v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  *v2 = v3;
  *(a1 + 56) = v2 + 1;
  v57 = vdupq_n_s64(1uLL);
  while (2)
  {
    *(a1 + 24) = vaddq_s64(*(a1 + 24), v57);
    if (*(a1 + 20) == 1)
    {
      *(a1 + 20) = 0;
      v8 = *(a1 + 16);
    }

    else
    {
      v8 = (***a1)();
      *(a1 + 16) = v8;
    }

    if (v8 == -1)
    {
      v18 = "invalid string: missing closing quote";
      goto LABEL_130;
    }

    v10 = *(a1 + 56);
    v9 = *(a1 + 64);
    if (v10 >= v9)
    {
      v12 = *(a1 + 48);
      v13 = (v10 - v12);
      v14 = v10 - v12 + 1;
      if (v14 < 0)
      {
        goto LABEL_165;
      }

      v15 = v9 - v12;
      if (2 * v15 > v14)
      {
        v14 = 2 * v15;
      }

      if (v15 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v16 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        operator new();
      }

      v17 = v10 - v12;
      *v13 = v8;
      v11 = v13 + 1;
      memcpy(0, v12, v17);
      *(a1 + 48) = 0;
      *(a1 + 56) = v13 + 1;
      *(a1 + 64) = 0;
      if (v12)
      {
        operator delete(v12);
      }
    }

    else
    {
      *v10 = v8;
      v11 = v10 + 1;
    }

    *(a1 + 56) = v11;
    v7 = *(a1 + 16);
    if (v7 == 10)
    {
      v54 = *(a1 + 40) + 1;
      *(a1 + 32) = 0;
      *(a1 + 40) = v54;
      v18 = "invalid string: control character U+000A (LF) must be escaped to \\u000A or \\n";
      goto LABEL_130;
    }

    v18 = "invalid string: missing closing quote";
    switch(v7)
    {
      case -1:
        goto LABEL_130;
      case 0:
        v18 = "invalid string: control character U+0000 (NUL) must be escaped to \\u0000";
        goto LABEL_130;
      case 1:
        v18 = "invalid string: control character U+0001 (SOH) must be escaped to \\u0001";
        goto LABEL_130;
      case 2:
        v18 = "invalid string: control character U+0002 (STX) must be escaped to \\u0002";
        goto LABEL_130;
      case 3:
        v18 = "invalid string: control character U+0003 (ETX) must be escaped to \\u0003";
        goto LABEL_130;
      case 4:
        v18 = "invalid string: control character U+0004 (EOT) must be escaped to \\u0004";
        goto LABEL_130;
      case 5:
        v18 = "invalid string: control character U+0005 (ENQ) must be escaped to \\u0005";
        goto LABEL_130;
      case 6:
        v18 = "invalid string: control character U+0006 (ACK) must be escaped to \\u0006";
        goto LABEL_130;
      case 7:
        v18 = "invalid string: control character U+0007 (BEL) must be escaped to \\u0007";
        goto LABEL_130;
      case 8:
        v18 = "invalid string: control character U+0008 (BS) must be escaped to \\u0008 or \\b";
        goto LABEL_130;
      case 9:
        v18 = "invalid string: control character U+0009 (HT) must be escaped to \\u0009 or \\t";
        goto LABEL_130;
      case 11:
        v18 = "invalid string: control character U+000B (VT) must be escaped to \\u000B";
        goto LABEL_130;
      case 12:
        v18 = "invalid string: control character U+000C (FF) must be escaped to \\u000C or \\f";
        goto LABEL_130;
      case 13:
        v18 = "invalid string: control character U+000D (CR) must be escaped to \\u000D or \\r";
        goto LABEL_130;
      case 14:
        v18 = "invalid string: control character U+000E (SO) must be escaped to \\u000E";
        goto LABEL_130;
      case 15:
        v18 = "invalid string: control character U+000F (SI) must be escaped to \\u000F";
        goto LABEL_130;
      case 16:
        v18 = "invalid string: control character U+0010 (DLE) must be escaped to \\u0010";
        goto LABEL_130;
      case 17:
        v18 = "invalid string: control character U+0011 (DC1) must be escaped to \\u0011";
        goto LABEL_130;
      case 18:
        v18 = "invalid string: control character U+0012 (DC2) must be escaped to \\u0012";
        goto LABEL_130;
      case 19:
        v18 = "invalid string: control character U+0013 (DC3) must be escaped to \\u0013";
        goto LABEL_130;
      case 20:
        v18 = "invalid string: control character U+0014 (DC4) must be escaped to \\u0014";
        goto LABEL_130;
      case 21:
        v18 = "invalid string: control character U+0015 (NAK) must be escaped to \\u0015";
        goto LABEL_130;
      case 22:
        v18 = "invalid string: control character U+0016 (SYN) must be escaped to \\u0016";
        goto LABEL_130;
      case 23:
        v18 = "invalid string: control character U+0017 (ETB) must be escaped to \\u0017";
        goto LABEL_130;
      case 24:
        v18 = "invalid string: control character U+0018 (CAN) must be escaped to \\u0018";
        goto LABEL_130;
      case 25:
        v18 = "invalid string: control character U+0019 (EM) must be escaped to \\u0019";
        goto LABEL_130;
      case 26:
        v18 = "invalid string: control character U+001A (SUB) must be escaped to \\u001A";
        goto LABEL_130;
      case 27:
        v18 = "invalid string: control character U+001B (ESC) must be escaped to \\u001B";
        goto LABEL_130;
      case 28:
        v18 = "invalid string: control character U+001C (FS) must be escaped to \\u001C";
        goto LABEL_130;
      case 29:
        v18 = "invalid string: control character U+001D (GS) must be escaped to \\u001D";
        goto LABEL_130;
      case 30:
        v18 = "invalid string: control character U+001E (RS) must be escaped to \\u001E";
        goto LABEL_130;
      case 31:
        v18 = "invalid string: control character U+001F (US) must be escaped to \\u001F";
        goto LABEL_130;
      case 32:
      case 33:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
      case 46:
      case 47:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
      case 58:
      case 59:
      case 60:
      case 61:
      case 62:
      case 63:
      case 64:
      case 65:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 79:
      case 80:
      case 81:
      case 82:
      case 83:
      case 84:
      case 85:
      case 86:
      case 87:
      case 88:
      case 89:
      case 90:
      case 91:
      case 93:
      case 94:
      case 95:
      case 96:
      case 97:
      case 98:
      case 99:
      case 100:
      case 101:
      case 102:
      case 103:
      case 104:
      case 105:
      case 106:
      case 107:
      case 108:
      case 109:
      case 110:
      case 111:
      case 112:
      case 113:
      case 114:
      case 115:
      case 116:
      case 117:
      case 118:
      case 119:
      case 120:
      case 121:
      case 122:
      case 123:
      case 124:
      case 125:
      case 126:
      case 127:
        goto LABEL_9;
      case 34:
        return 4;
      case 92:
        v50 = sub_1D9D69934(a1);
        v18 = "invalid string: forbidden character after backslash";
        if (v50 <= 101)
        {
          if (v50 > 91)
          {
            if (v50 == 92)
            {
              LOBYTE(v7) = 92;
            }

            else
            {
              if (v50 != 98)
              {
                goto LABEL_130;
              }

              LOBYTE(v7) = 8;
            }
          }

          else if (v50 == 34)
          {
            LOBYTE(v7) = 34;
          }

          else
          {
            if (v50 != 47)
            {
              goto LABEL_130;
            }

            LOBYTE(v7) = 47;
          }
        }

        else if (v50 <= 113)
        {
          if (v50 == 102)
          {
            LOBYTE(v7) = 12;
          }

          else
          {
            if (v50 != 110)
            {
              goto LABEL_130;
            }

            LOBYTE(v7) = 10;
          }
        }

        else
        {
          switch(v50)
          {
            case 'r':
              LOBYTE(v7) = 13;
              break;
            case 't':
              LOBYTE(v7) = 9;
              break;
            case 'u':
              v51 = sub_1D9D6AAA8(a1);
              if (v51 == -1)
              {
LABEL_166:
                v18 = "invalid string: '\\u' must be followed by 4 hex digits";
                goto LABEL_130;
              }

              v52 = v51;
              if ((v51 & 0xFFFFFC00) == 0xD800)
              {
                if (sub_1D9D69934(a1) != 92 || sub_1D9D69934(a1) != 117)
                {
                  goto LABEL_167;
                }

                v53 = sub_1D9D6AAA8(a1);
                if (v53 == -1)
                {
                  goto LABEL_166;
                }

                if (v53 >> 10 != 55)
                {
LABEL_167:
                  v18 = "invalid string: surrogate U+DC00..U+DFFF must be followed by U+DC00..U+DFFF";
                  goto LABEL_130;
                }

                v52 = v53 + (v52 << 10) - 56613888;
LABEL_99:
                std::string::push_back((a1 + 72), (v52 >> 18) | 0xF0);
                std::string::push_back((a1 + 72), (v52 >> 12) & 0x3F | 0x80);
                goto LABEL_100;
              }

              if ((v51 & 0xFFFFFC00) == 0xDC00)
              {
                v18 = "invalid string: surrogate U+DC00..U+DFFF must follow U+D800..U+DBFF";
                goto LABEL_130;
              }

              if (v51 > 127)
              {
                if (v51 > 0x7FF)
                {
                  if (HIWORD(v51))
                  {
                    goto LABEL_99;
                  }

                  std::string::push_back((a1 + 72), (v51 >> 12) | 0xE0);
LABEL_100:
                  std::string::push_back((a1 + 72), (v52 >> 6) & 0x3F | 0x80);
                  LOBYTE(v7) = v52 & 0x3F | 0x80;
                  goto LABEL_9;
                }

                std::string::push_back((a1 + 72), (v51 >> 6) | 0xC0);
                LOBYTE(v7) = v52 & 0x3F | 0x80;
              }

              else
              {
                LOBYTE(v7) = v51;
              }

              break;
            default:
              goto LABEL_130;
          }
        }

        goto LABEL_9;
      case 194:
      case 195:
      case 196:
      case 197:
      case 198:
      case 199:
      case 200:
      case 201:
      case 202:
      case 203:
      case 204:
      case 205:
      case 206:
      case 207:
      case 208:
      case 209:
      case 210:
      case 211:
      case 212:
      case 213:
      case 214:
      case 215:
      case 216:
      case 217:
      case 218:
      case 219:
      case 220:
      case 221:
      case 222:
      case 223:
        std::string::push_back((a1 + 72), v7);
        *(a1 + 24) = vaddq_s64(*(a1 + 24), vdupq_n_s64(1uLL));
        if (*(a1 + 20) == 1)
        {
          *(a1 + 20) = 0;
          v19 = *(a1 + 16);
        }

        else
        {
          v19 = (***a1)();
          *(a1 + 16) = v19;
        }

        if (v19 == -1)
        {
          goto LABEL_129;
        }

        v21 = *(a1 + 56);
        v20 = *(a1 + 64);
        if (v21 < v20)
        {
          *v21 = v19;
          v6 = v21 + 1;
        }

        else
        {
          v22 = *(a1 + 48);
          v23 = (v21 - v22);
          v24 = v21 - v22 + 1;
          if (v24 < 0)
          {
            goto LABEL_165;
          }

          v25 = v20 - v22;
          if (2 * v25 > v24)
          {
            v24 = 2 * v25;
          }

          if (v25 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v26 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v26 = v24;
          }

          if (v26)
          {
            operator new();
          }

          v36 = v21 - v22;
          *v23 = v19;
          v6 = v23 + 1;
          memcpy(0, v22, v36);
          *(a1 + 48) = 0;
          *(a1 + 56) = v23 + 1;
          *(a1 + 64) = 0;
          if (v22)
          {
            operator delete(v22);
          }
        }

        *(a1 + 56) = v6;
        v7 = *(a1 + 16);
        if (v7 == 10)
        {
          goto LABEL_128;
        }

        goto LABEL_8;
      case 224:
        std::string::push_back((a1 + 72), -32);
        sub_1D9D69934(a1);
        v49 = *(a1 + 16);
        if ((v49 - 192) < 0xFFFFFFE0)
        {
          goto LABEL_129;
        }

        goto LABEL_85;
      case 225:
      case 226:
      case 227:
      case 228:
      case 229:
      case 230:
      case 231:
      case 232:
      case 233:
      case 234:
      case 235:
      case 236:
      case 238:
      case 239:
        std::string::push_back((a1 + 72), v7);
        *(a1 + 24) = vaddq_s64(*(a1 + 24), vdupq_n_s64(1uLL));
        if (*(a1 + 20) == 1)
        {
          *(a1 + 20) = 0;
          v27 = *(a1 + 16);
        }

        else
        {
          v27 = (***a1)();
          *(a1 + 16) = v27;
        }

        if (v27 == -1)
        {
          goto LABEL_129;
        }

        v29 = *(a1 + 56);
        v28 = *(a1 + 64);
        if (v29 >= v28)
        {
          v31 = *(a1 + 48);
          v32 = (v29 - v31);
          v33 = v29 - v31 + 1;
          if (v33 < 0)
          {
            goto LABEL_165;
          }

          v34 = v28 - v31;
          if (2 * v34 > v33)
          {
            v33 = 2 * v34;
          }

          if (v34 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v35 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v35 = v33;
          }

          if (v35)
          {
            operator new();
          }

          v38 = v29 - v31;
          *v32 = v27;
          v30 = v32 + 1;
          memcpy(0, v31, v38);
          *(a1 + 48) = 0;
          *(a1 + 56) = v32 + 1;
          *(a1 + 64) = 0;
          if (v31)
          {
            operator delete(v31);
          }
        }

        else
        {
          *v29 = v27;
          v30 = v29 + 1;
        }

        *(a1 + 56) = v30;
        v39 = *(a1 + 16);
        if (v39 == 10)
        {
          goto LABEL_128;
        }

        if ((v39 - 192) < 0xFFFFFFC0)
        {
          goto LABEL_129;
        }

        std::string::push_back((a1 + 72), v39);
        *(a1 + 24) = vaddq_s64(*(a1 + 24), vdupq_n_s64(1uLL));
        if (*(a1 + 20))
        {
          *(a1 + 20) = 0;
          v40 = *(a1 + 16);
        }

        else
        {
          v40 = (***a1)();
          *(a1 + 16) = v40;
        }

        if (v40 == -1)
        {
          goto LABEL_129;
        }

        v41 = *(a1 + 56);
        v42 = *(a1 + 64);
        if (v41 >= v42)
        {
          v44 = *(a1 + 48);
          v45 = (v41 - v44);
          v46 = v41 - v44 + 1;
          if (v46 < 0)
          {
LABEL_165:
            sub_1D9D67CB0();
          }

          v47 = v42 - v44;
          if (2 * v47 > v46)
          {
            v46 = 2 * v47;
          }

          if (v47 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v48 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v48 = v46;
          }

          if (v48)
          {
            operator new();
          }

          *v45 = v40;
          v43 = v45 + 1;
          memcpy(0, v44, v41 - v44);
          *(a1 + 48) = 0;
          *(a1 + 56) = v43;
          *(a1 + 64) = 0;
          if (v44)
          {
            operator delete(v44);
          }
        }

        else
        {
          *v41 = v40;
          v43 = v41 + 1;
        }

        *(a1 + 56) = v43;
        v7 = *(a1 + 16);
        if (v7 != 10)
        {
LABEL_8:
          if ((v7 - 192) < 0xFFFFFFC0)
          {
            goto LABEL_129;
          }

LABEL_9:
          std::string::push_back((a1 + 72), v7);
          continue;
        }

LABEL_128:
        v55 = *(a1 + 40) + 1;
        *(a1 + 32) = 0;
        *(a1 + 40) = v55;
LABEL_129:
        v18 = "invalid string: ill-formed UTF-8 byte";
LABEL_130:
        *(a1 + 96) = v18;
        return 14;
      case 237:
        std::string::push_back((a1 + 72), -19);
        sub_1D9D69934(a1);
        v49 = *(a1 + 16);
        if ((v49 - 160) < 0xFFFFFFE0)
        {
          goto LABEL_129;
        }

        goto LABEL_85;
      case 240:
        std::string::push_back((a1 + 72), -16);
        sub_1D9D69934(a1);
        v37 = *(a1 + 16);
        if ((v37 - 192) < 0xFFFFFFD0)
        {
          goto LABEL_129;
        }

        goto LABEL_84;
      case 241:
      case 242:
      case 243:
        std::string::push_back((a1 + 72), v7);
        sub_1D9D69934(a1);
        v37 = *(a1 + 16);
        if ((v37 - 192) < 0xFFFFFFC0)
        {
          goto LABEL_129;
        }

        goto LABEL_84;
      case 244:
        std::string::push_back((a1 + 72), -12);
        sub_1D9D69934(a1);
        v37 = *(a1 + 16);
        if ((v37 - 144) < 0xFFFFFFF0)
        {
          goto LABEL_129;
        }

LABEL_84:
        std::string::push_back((a1 + 72), v37);
        sub_1D9D69934(a1);
        v49 = *(a1 + 16);
        if ((v49 - 192) < 0xFFFFFFC0)
        {
          goto LABEL_129;
        }

LABEL_85:
        std::string::push_back((a1 + 72), v49);
        sub_1D9D69934(a1);
        v7 = *(a1 + 16);
        if ((v7 - 192) < 0xFFFFFFC0)
        {
          goto LABEL_129;
        }

        goto LABEL_9;
      default:
        goto LABEL_129;
    }
  }
}

uint64_t sub_1D9D6A55C(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    **(a1 + 72) = 0;
    *(a1 + 80) = 0;
    v2 = *(a1 + 48);
    *(a1 + 56) = v2;
    v3 = *(a1 + 16);
    v5 = *(a1 + 64);
    if (v2 < v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    operator new();
  }

  *(a1 + 72) = 0;
  *(a1 + 95) = 0;
  v2 = *(a1 + 48);
  *(a1 + 56) = v2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 64);
  if (v2 >= v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  *v2 = v3;
  v6 = (a1 + 72);
  *(a1 + 56) = v2 + 1;
  v7 = *(a1 + 16);
  v8 = 5;
  if ((v7 - 49) >= 9)
  {
    if (v7 != 48)
    {
      if (v7 == 45)
      {
        std::string::push_back((a1 + 72), 45);
      }

      v22 = sub_1D9D69934(a1);
      if ((v22 - 49) < 9)
      {
        v7 = *(a1 + 16);
        v9 = 6;
        goto LABEL_8;
      }

      if (v22 != 48)
      {
        v24 = "invalid number; expected digit after '-'";
        goto LABEL_79;
      }

      v7 = *(a1 + 16);
      v8 = 6;
    }

    std::string::push_back((a1 + 72), v7);
    v25 = sub_1D9D69934(a1);
    if (v25 != 46)
    {
      if (v25 != 69 && v25 != 101)
      {
        goto LABEL_54;
      }

LABEL_50:
      v20 = *(a1 + 16);
      goto LABEL_51;
    }

LABEL_30:
    std::string::push_back((a1 + 72), *(a1 + 128));
    if (sub_1D9D69934(a1) - 48 > 9)
    {
      v24 = "invalid number; expected digit after '.'";
LABEL_79:
      *(a1 + 96) = v24;
      return 14;
    }

    do
    {
      std::string::push_back((a1 + 72), *(a1 + 16));
      v21 = sub_1D9D69934(a1);
    }

    while ((v21 - 48) < 0xA);
    if (v21 != 101 && v21 != 69)
    {
      goto LABEL_53;
    }

    goto LABEL_50;
  }

  v9 = 5;
LABEL_8:
  v34 = v9;
  std::string::push_back((a1 + 72), v7);
  v35 = vdupq_n_s64(1uLL);
  while (1)
  {
    *(a1 + 24) = vaddq_s64(*(a1 + 24), v35);
    if (*(a1 + 20) == 1)
    {
      *(a1 + 20) = 0;
      v10 = *(a1 + 16);
    }

    else
    {
      v10 = (***a1)();
      *(a1 + 16) = v10;
    }

    if (v10 == -1)
    {
      v8 = v34;
      goto LABEL_54;
    }

    v12 = *(a1 + 56);
    v11 = *(a1 + 64);
    if (v12 >= v11)
    {
      v14 = *(a1 + 48);
      v15 = (v12 - v14);
      v16 = v12 - v14 + 1;
      if (v16 < 0)
      {
        sub_1D9D67CB0();
      }

      v17 = v11 - v14;
      if (2 * v17 > v16)
      {
        v16 = 2 * v17;
      }

      if (v17 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v18 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        operator new();
      }

      v19 = v12 - v14;
      *v15 = v10;
      v13 = v15 + 1;
      memcpy(0, v14, v19);
      *(a1 + 48) = 0;
      *(a1 + 56) = v15 + 1;
      *(a1 + 64) = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      *v12 = v10;
      v13 = v12 + 1;
    }

    *(a1 + 56) = v13;
    v20 = *(a1 + 16);
    if ((v20 - 48) >= 0xA)
    {
      break;
    }

    std::string::push_back((a1 + 72), v20);
  }

  if (v20 <= 68)
  {
    v8 = v34;
    if (v20 == 10)
    {
      v23 = *(a1 + 40) + 1;
      *(a1 + 32) = 0;
      *(a1 + 40) = v23;
      goto LABEL_54;
    }

    if (v20 != 46)
    {
      goto LABEL_54;
    }

    goto LABEL_30;
  }

  v8 = v34;
  if (v20 != 69 && v20 != 101)
  {
    goto LABEL_54;
  }

LABEL_51:
  std::string::push_back((a1 + 72), v20);
  v26 = sub_1D9D69934(a1);
  if ((v26 - 48) < 0xA)
  {
    goto LABEL_52;
  }

  if (v26 != 43 && v26 != 45)
  {
    v24 = "invalid number; expected '+', '-', or digit after exponent";
    goto LABEL_79;
  }

  std::string::push_back((a1 + 72), *(a1 + 16));
  if (sub_1D9D69934(a1) - 48 >= 0xA)
  {
    v24 = "invalid number; expected digit after exponent sign";
    goto LABEL_79;
  }

  do
  {
LABEL_52:
    std::string::push_back((a1 + 72), *(a1 + 16));
  }

  while (sub_1D9D69934(a1) - 48 < 0xA);
LABEL_53:
  v8 = 7;
LABEL_54:
  v27 = (a1 + 32);
  v28 = *(a1 + 32);
  *(a1 + 20) = 1;
  --*(a1 + 24);
  if (v28 || (v27 = (a1 + 40), (v28 = *(a1 + 40)) != 0))
  {
    *v27 = v28 - 1;
  }

  if (*(a1 + 16) != -1)
  {
    --*(a1 + 56);
  }

  __endptr = 0;
  *__error() = 0;
  if (v8 == 6)
  {
    v32 = (a1 + 72);
    if (*(a1 + 95) < 0)
    {
      v32 = *v6;
    }

    v33 = strtoll(v32, &__endptr, 10);
    if (!*__error())
    {
      *(a1 + 104) = v33;
      return 6;
    }
  }

  else if (v8 == 5)
  {
    v29 = (a1 + 72);
    if (*(a1 + 95) < 0)
    {
      v29 = *v6;
    }

    v30 = strtoull(v29, &__endptr, 10);
    if (!*__error())
    {
      *(a1 + 112) = v30;
      return 5;
    }
  }

  if (*(a1 + 95) < 0)
  {
    v6 = *v6;
  }

  *(a1 + 120) = strtod(v6, &__endptr);
  return 7;
}

uint64_t sub_1D9D6AAA8(uint64_t a1)
{
  sub_1D9D69934(a1);
  v2 = *(a1 + 16);
  v3 = v2 - 48;
  if ((v2 - 48) < 0xA)
  {
LABEL_4:
    sub_1D9D69934(a1);
    v4 = *(a1 + 16);
    v5 = v4 - 48;
    if ((v4 - 48) < 0xA)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  if ((v2 - 65) <= 5)
  {
    v3 = v2 - 55;
    goto LABEL_4;
  }

  if ((v2 - 97) > 5)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = v2 - 87;
  sub_1D9D69934(a1);
  v4 = *(a1 + 16);
  v5 = v4 - 48;
  if ((v4 - 48) < 0xA)
  {
LABEL_5:
    sub_1D9D69934(a1);
    v6 = *(a1 + 16);
    v7 = v6 - 48;
    if ((v6 - 48) < 0xA)
    {
      goto LABEL_6;
    }

LABEL_12:
    if ((v6 - 65) < 6)
    {
      v7 = v6 - 55;
      sub_1D9D69934(a1);
      v8 = *(a1 + 16);
      v9 = v8 - 48;
      if ((v8 - 48) < 0xA)
      {
        return ((v3 << 12) + (v5 << 8) + 16 * v7 + v9);
      }

      goto LABEL_20;
    }

    if ((v6 - 97) > 5)
    {
      return 0xFFFFFFFFLL;
    }

    v7 = v6 - 87;
    sub_1D9D69934(a1);
    v8 = *(a1 + 16);
    v9 = v8 - 48;
    if ((v8 - 48) >= 0xA)
    {
      goto LABEL_20;
    }

    return ((v3 << 12) + (v5 << 8) + 16 * v7 + v9);
  }

LABEL_10:
  if ((v4 - 65) >= 6)
  {
    if ((v4 - 97) > 5)
    {
      return 0xFFFFFFFFLL;
    }

    v5 = v4 - 87;
    sub_1D9D69934(a1);
    v6 = *(a1 + 16);
    v7 = v6 - 48;
    if ((v6 - 48) >= 0xA)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = v4 - 55;
    sub_1D9D69934(a1);
    v6 = *(a1 + 16);
    v7 = v6 - 48;
    if ((v6 - 48) >= 0xA)
    {
      goto LABEL_12;
    }
  }

LABEL_6:
  sub_1D9D69934(a1);
  v8 = *(a1 + 16);
  v9 = v8 - 48;
  if ((v8 - 48) < 0xA)
  {
    return ((v3 << 12) + (v5 << 8) + 16 * v7 + v9);
  }

LABEL_20:
  if ((v8 - 65) < 6)
  {
    v9 = v8 - 55;
    return ((v3 << 12) + (v5 << 8) + 16 * v7 + v9);
  }

  if ((v8 - 97) <= 5)
  {
    v9 = v8 - 87;
    return ((v3 << 12) + (v5 << 8) + 16 * v7 + v9);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1D9D6AC58(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 8);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

uint64_t sub_1D9D6ACF4(uint64_t a1, unsigned __int8 **a2)
{
  v43 = *MEMORY[0x1E69E9840];
  __p = 0;
  v39 = 0;
  v40 = 0;
  while (1)
  {
LABEL_2:
    v4 = *(a1 + 32);
    if (v4 <= 5)
    {
      if (v4 > 2)
      {
        if (v4 == 3)
        {
          __str.__vftable = 0;
          sub_1D9D6F7A0(a2, &__str, 0);
        }

        else if (v4 == 4)
        {
          sub_1D9D6FBCC(a2);
        }

        else
        {
          __str.__vftable = *(a1 + 152);
          sub_1D9D6FE44(a2, &__str, 0);
        }

        goto LABEL_27;
      }

      if (v4 == 1)
      {
        LOBYTE(__str.__vftable) = 1;
        sub_1D9D6F584(a2, &__str, 0);
        goto LABEL_27;
      }

      if (v4 == 2)
      {
        LOBYTE(__str.__vftable) = 0;
        sub_1D9D6F584(a2, &__str, 0);
        goto LABEL_27;
      }

      goto LABEL_63;
    }

    if (v4 <= 7)
    {
      if (v4 == 6)
      {
        __str.__vftable = *(a1 + 144);
        sub_1D9D6F9B4(a2, &__str, 0);
      }

      else
      {
        __str.__vftable = *(a1 + 160);
        sub_1D9D6F368(a2, &__str, 0);
      }

      goto LABEL_27;
    }

    if (v4 != 8)
    {
      break;
    }

    if (!sub_1D9D6DC4C(a2, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_78;
    }

    v7 = sub_1D9D696AC(a1 + 40);
    *(a1 + 32) = v7;
    if (v7 == 10)
    {
      v6 = sub_1D9D6DEA4(a2);
      goto LABEL_23;
    }

    v12 = v39;
    if (v39 == v40 << 6)
    {
      if ((v39 + 1) < 0)
      {
        sub_1D9D84AB0();
      }

      v13 = v40 << 7;
      if (v40 << 7 <= (v39 & 0x3FFFFFFFFFFFFFC0) + 64)
      {
        v13 = (v39 & 0x3FFFFFFFFFFFFFC0) + 64;
      }

      if (v39 <= 0x3FFFFFFFFFFFFFFELL)
      {
        v14 = v13;
      }

      else
      {
        v14 = 0x7FFFFFFFFFFFFFFFLL;
      }

      sub_1D9D6D41C(&__p, v14);
      v12 = v39;
    }

    v39 = v12 + 1;
    *(__p + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
  }

  if (v4 != 9)
  {
    if (v4 == 14)
    {
      v18 = *(a1 + 64);
      memset(&v37, 0, sizeof(v37));
      v19 = *(a1 + 88);
      for (i = *(a1 + 96); v19 != i; ++v19)
      {
        v21 = *v19;
        if (v21 > 0x1F)
        {
          std::string::push_back(&v37, v21);
        }

        else
        {
          LOBYTE(__str.__imp_.__imp_) = 0;
          __str.__vftable = 0;
          snprintf(&__str, 9uLL, "<U+%.4X>", v21);
          std::string::append(&v37, &__str);
        }
      }

      v35 = *(a1 + 64);
      v36 = *(a1 + 80);
      v32 = 5;
      strcpy(v31, "value");
      sub_1D9D6BDFC(a1, 0, v31, v33);
      sub_1D9D6BA94(101, &v35, v33, &__str);
      v26 = sub_1D9D6B824(a2, v18, &v37, &__str);
LABEL_71:
      v15 = v26;
      __str.__vftable = &unk_1F554E680;
      std::runtime_error::~runtime_error(&v42);
      std::exception::~exception(&__str);
      if (v34 < 0)
      {
        goto LABEL_72;
      }

      goto LABEL_73;
    }

LABEL_63:
    v22 = *(a1 + 64);
    memset(&v37, 0, sizeof(v37));
    v23 = *(a1 + 88);
    for (j = *(a1 + 96); v23 != j; ++v23)
    {
      v25 = *v23;
      if (v25 > 0x1F)
      {
        std::string::push_back(&v37, v25);
      }

      else
      {
        LOBYTE(__str.__imp_.__imp_) = 0;
        __str.__vftable = 0;
        snprintf(&__str, 9uLL, "<U+%.4X>", v25);
        std::string::append(&v37, &__str);
      }
    }

    v35 = *(a1 + 64);
    v36 = *(a1 + 80);
    v32 = 5;
    strcpy(v31, "value");
    sub_1D9D6BDFC(a1, 0x10u, v31, v33);
    sub_1D9D6BA94(101, &v35, v33, &__str);
    v26 = sub_1D9D6B824(a2, v22, &v37, &__str);
    goto LABEL_71;
  }

  if ((sub_1D9D6D548(a2, 0xFFFFFFFFFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_78;
  }

  v5 = sub_1D9D696AC(a1 + 40);
  *(a1 + 32) = v5;
  if (v5 != 11)
  {
    if (v5 == 4)
    {
      sub_1D9D6DA10();
    }

    goto LABEL_81;
  }

  v6 = sub_1D9D6D79C(a2);
LABEL_23:
  if ((v6 & 1) == 0)
  {
LABEL_78:
    v15 = 0;
    goto LABEL_53;
  }

LABEL_27:
  v8 = v39;
  if (!v39)
  {
LABEL_52:
    v15 = 1;
    goto LABEL_53;
  }

  while (2)
  {
    if ((*(__p + (((v8 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v8 - 1)))
    {
      v9 = sub_1D9D696AC(a1 + 40);
      *(a1 + 32) = v9;
      if (v9 == 13)
      {
        *(a1 + 32) = sub_1D9D696AC(a1 + 40);
        goto LABEL_2;
      }

      if (v9 != 10)
      {
        v27 = *(a1 + 64);
        sub_1D9D6B9AC(a1 + 40, &v37);
        v35 = *(a1 + 64);
        v36 = *(a1 + 80);
        sub_1D9D94D70(v31, "array");
        sub_1D9D6BDFC(a1, 0xAu, v31, v33);
        sub_1D9D6BA94(101, &v35, v33, &__str);
        v28 = sub_1D9D6B824(a2, v27, &v37, &__str);
        goto LABEL_82;
      }

      if ((sub_1D9D6DEA4(a2) & 1) == 0)
      {
        goto LABEL_78;
      }

LABEL_36:
      v8 = --v39;
      if (!v39)
      {
        goto LABEL_52;
      }

      continue;
    }

    break;
  }

  v10 = sub_1D9D696AC(a1 + 40);
  *(a1 + 32) = v10;
  if (v10 != 13)
  {
    if (v10 != 11)
    {
      v29 = *(a1 + 64);
      sub_1D9D6B9AC(a1 + 40, &v37);
      v35 = *(a1 + 64);
      v36 = *(a1 + 80);
      sub_1D9D94D70(v31, "object");
      sub_1D9D6BDFC(a1, 0xBu, v31, v33);
      sub_1D9D6BA94(101, &v35, v33, &__str);
      v28 = sub_1D9D6B824(a2, v29, &v37, &__str);
      goto LABEL_82;
    }

    if ((sub_1D9D6D79C(a2) & 1) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_36;
  }

  v11 = sub_1D9D696AC(a1 + 40);
  *(a1 + 32) = v11;
  if (v11 == 4)
  {
    sub_1D9D6DA10();
  }

LABEL_81:
  v30 = *(a1 + 64);
  sub_1D9D6B9AC(a1 + 40, &v37);
  v35 = *(a1 + 64);
  v36 = *(a1 + 80);
  sub_1D9D94D70(v31, "object key");
  sub_1D9D6BDFC(a1, 4u, v31, v33);
  sub_1D9D6BA94(101, &v35, v33, &__str);
  v28 = sub_1D9D6B824(a2, v30, &v37, &__str);
LABEL_82:
  v15 = v28;
  sub_1D9D6C518(&__str);
  if (v34 < 0)
  {
LABEL_72:
    operator delete(v33[0]);
  }

LABEL_73:
  if (v32 < 0)
  {
    operator delete(v31[0]);
    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_77;
    }
  }

  else if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_77:
    operator delete(v37.__r_.__value_.__l.__data_);
  }

LABEL_53:
  if (__p)
  {
    operator delete(__p);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

void sub_1D9D6B614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33)
{
  sub_1D9D6C518((v33 - 112));
  if (a22 < 0)
  {
    operator delete(__p);
    if ((a16 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a16 & 0x80000000) == 0)
  {
LABEL_3:
    if (a32 < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  operator delete(a11);
  if (a32 < 0)
  {
LABEL_4:
    operator delete(a27);
    v35 = a33;
    if (a33)
    {
LABEL_10:
      operator delete(v35);
      _Unwind_Resume(a1);
    }

LABEL_9:
    _Unwind_Resume(a1);
  }

LABEL_8:
  v35 = a33;
  if (a33)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

uint64_t sub_1D9D6B824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 88) = 1;
  if (*(a1 + 128) == 1)
  {
    v4 = *(a4 + 8) / 100 % 100;
    if (v4 <= 2)
    {
      if (v4 == 1)
      {
        exception = __cxa_allocate_exception(0x28uLL);
        v14 = sub_1D9D70060(exception, a4);
        __cxa_throw(v14, &unk_1F554E7F8, sub_1D9D6C518);
      }

      if (v4 == 2)
      {
        v19 = __cxa_allocate_exception(0x20uLL);
        v20 = sub_1D9D7014C(v19, a4);
        __cxa_throw(v20, &unk_1F554E750, sub_1D9D6EDA4);
      }
    }

    else
    {
      switch(v4)
      {
        case 3:
          v10 = __cxa_allocate_exception(0x20uLL);
          v11 = sub_1D9D701BC(v10, a4);
          __cxa_throw(v11, &unk_1F554E790, sub_1D9D6F024);
        case 4:
          v16 = __cxa_allocate_exception(0x20uLL);
          v17 = sub_1D9D700DC(v16, a4);
          __cxa_throw(v17, &unk_1F554E738, sub_1D9D6E194);
        case 5:
          v6 = __cxa_allocate_exception(0x20uLL);
          v7 = sub_1D9D7022C(v6, a4);
          __cxa_throw(v7, &unk_1F554E630, sub_1D9D68884);
      }
    }
  }

  return 0;
}

void sub_1D9D6B9AC(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v3 = *(a1 + 48);
  for (i = *(a1 + 56); v3 != i; ++v3)
  {
    v5 = *v3;
    if (v5 > 0x1F)
    {
      std::string::push_back(a2, v5);
    }

    else
    {
      v8 = 0;
      *__str = 0;
      snprintf(__str, 9uLL, "<U+%.4X>", v5);
      std::string::append(a2, __str);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1D9D6BA74(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D6BA94(int a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = 11;
  strcpy(v24, "parse_error");
  sub_1D9D688D8(a1, &v26);
  v8 = std::string::append(&v26, "parse error");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  sub_1D9D70304(a2, &__p);
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

  v12 = std::string::append(&v27, p_p, size);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v28, ": ");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = *(a3 + 23);
  if (v16 >= 0)
  {
    v17 = a3;
  }

  else
  {
    v17 = *a3;
  }

  if (v16 >= 0)
  {
    v18 = *(a3 + 23);
  }

  else
  {
    v18 = *(a3 + 8);
  }

  v19 = std::string::append(&v29, v17, v18);
  v20 = *&v19->__r_.__value_.__l.__data_;
  v31 = v19->__r_.__value_.__r.__words[2];
  v30 = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_26;
    }
  }

  else if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(v28.__r_.__value_.__l.__data_);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_27;
  }

LABEL_26:
  operator delete(__p.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_28:
    operator delete(v26.__r_.__value_.__l.__data_);
    if ((v25 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_29;
  }

LABEL_27:
  operator delete(v27.__r_.__value_.__l.__data_);
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_28;
  }

LABEL_18:
  if ((v25 & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

LABEL_29:
  operator delete(v24[0]);
LABEL_19:
  v21 = *a2;
  if (v31 >= 0)
  {
    v22 = &v30;
  }

  else
  {
    v22 = v30;
  }

  *a4 = &unk_1F554E680;
  *(a4 + 8) = a1;
  std::runtime_error::runtime_error((a4 + 16), v22);
  *a4 = &unk_1F554E820;
  *(a4 + 32) = v21;
  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30);
  }
}

void sub_1D9D6BCF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  std::exception::~exception(v40);
  if (*(v41 - 57) < 0)
  {
    operator delete(*(v41 - 80));
  }

  _Unwind_Resume(a1);
}

void sub_1D9D6BDFC(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v57 = *MEMORY[0x1E69E9840];
  *(a4 + 23) = 13;
  strcpy(a4, "syntax error ");
  v7 = *(a3 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a3 + 8);
  }

  if (v7)
  {
    std::operator+<char>();
    v8 = std::string::append(&v52, " ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v54 = v8->__r_.__value_.__r.__words[2];
    *__p = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v54 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    if (v54 >= 0)
    {
      v11 = HIBYTE(v54);
    }

    else
    {
      v11 = __p[1];
    }

    std::string::append(a4, v10, v11);
    if (SHIBYTE(v54) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_12;
      }
    }

    else if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    operator delete(v52.__r_.__value_.__l.__data_);
  }

LABEL_12:
  std::string::append(a4, "- ");
  v12 = *(a1 + 32);
  if (v12 != 14)
  {
    if (v12 > 0x10)
    {
      v16 = "unknown token";
    }

    else
    {
      v16 = off_1E858DE88[v12];
    }

    v17 = strlen(v16);
    if (v17 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_1D9D12168();
    }

    v18 = v17;
    if (v17 >= 0x17)
    {
      operator new();
    }

    *(&v52.__r_.__value_.__s + 23) = v17;
    if (v17)
    {
      memcpy(&v52, v16, v17);
    }

    v52.__r_.__value_.__s.__data_[v18] = 0;
    v27 = std::string::insert(&v52, 0, "unexpected ");
    v28 = *&v27->__r_.__value_.__l.__data_;
    v54 = v27->__r_.__value_.__r.__words[2];
    *__p = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    if (v54 >= 0)
    {
      v29 = __p;
    }

    else
    {
      v29 = __p[0];
    }

    if (v54 >= 0)
    {
      v30 = HIBYTE(v54);
    }

    else
    {
      v30 = __p[1];
    }

    std::string::append(a4, v29, v30);
    if (SHIBYTE(v54) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_73;
      }
    }

    else if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_73;
    }

    v39 = v52.__r_.__value_.__r.__words[0];
    goto LABEL_72;
  }

  v13 = *(a1 + 136);
  v14 = strlen(v13);
  if (v14 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1D9D12168();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v14;
  if (v14)
  {
    memmove(&__dst, v13, v14);
  }

  __dst.__r_.__value_.__s.__data_[v15] = 0;
  v19 = std::string::append(&__dst, "; last read: '");
  v20 = *&v19->__r_.__value_.__l.__data_;
  v51.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
  *&v51.__r_.__value_.__l.__data_ = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  memset(&v49, 0, sizeof(v49));
  v21 = *(a1 + 88);
  v22 = *(a1 + 96);
  if (v21 == v22)
  {
    size = 0;
    v26 = 0;
    v24 = 0;
  }

  else
  {
    do
    {
      v23 = *v21;
      if (v23 > 0x1F)
      {
        std::string::push_back(&v49, v23);
      }

      else
      {
        v56 = 0;
        *__str = 0;
        snprintf(__str, 9uLL, "<U+%.4X>", v23);
        std::string::append(&v49, __str);
      }

      ++v21;
    }

    while (v21 != v22);
    v24 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
    size = v49.__r_.__value_.__l.__size_;
    v26 = v49.__r_.__value_.__r.__words[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v31 = &v49;
  }

  else
  {
    v31 = v26;
  }

  if ((v24 & 0x80u) == 0)
  {
    v32 = v24;
  }

  else
  {
    v32 = size;
  }

  v33 = std::string::append(&v51, v31, v32);
  v34 = *&v33->__r_.__value_.__l.__data_;
  v52.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
  *&v52.__r_.__value_.__l.__data_ = v34;
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  v35 = std::string::append(&v52, "'");
  v36 = *&v35->__r_.__value_.__l.__data_;
  v54 = v35->__r_.__value_.__r.__words[2];
  *__p = v36;
  v35->__r_.__value_.__l.__size_ = 0;
  v35->__r_.__value_.__r.__words[2] = 0;
  v35->__r_.__value_.__r.__words[0] = 0;
  if (v54 >= 0)
  {
    v37 = __p;
  }

  else
  {
    v37 = __p[0];
  }

  if (v54 >= 0)
  {
    v38 = HIBYTE(v54);
  }

  else
  {
    v38 = __p[1];
  }

  std::string::append(a4, v37, v38);
  if (SHIBYTE(v54) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_61:
      if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_69;
    }
  }

  else if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_61;
  }

  operator delete(v52.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_62:
    if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_63;
    }

LABEL_70:
    operator delete(v51.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_71;
  }

LABEL_69:
  operator delete(v49.__r_.__value_.__l.__data_);
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_70;
  }

LABEL_63:
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_73;
  }

LABEL_71:
  v39 = __dst.__r_.__value_.__r.__words[0];
LABEL_72:
  operator delete(v39);
LABEL_73:
  if (!a2)
  {
LABEL_91:
    v47 = *MEMORY[0x1E69E9840];
    return;
  }

  if (a2 > 0x10)
  {
    v40 = "unknown token";
  }

  else
  {
    v40 = off_1E858DF10[a2 - 1];
  }

  v41 = strlen(v40);
  if (v41 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1D9D12168();
  }

  v42 = v41;
  if (v41 >= 0x17)
  {
    operator new();
  }

  *(&v52.__r_.__value_.__s + 23) = v41;
  if (v41)
  {
    memcpy(&v52, v40, v41);
  }

  v52.__r_.__value_.__s.__data_[v42] = 0;
  v43 = std::string::insert(&v52, 0, "; expected ");
  v44 = *&v43->__r_.__value_.__l.__data_;
  v54 = v43->__r_.__value_.__r.__words[2];
  *__p = v44;
  v43->__r_.__value_.__l.__size_ = 0;
  v43->__r_.__value_.__r.__words[2] = 0;
  v43->__r_.__value_.__r.__words[0] = 0;
  if (v54 >= 0)
  {
    v45 = __p;
  }

  else
  {
    v45 = __p[0];
  }

  if (v54 >= 0)
  {
    v46 = HIBYTE(v54);
  }

  else
  {
    v46 = __p[1];
  }

  std::string::append(a4, v45, v46);
  if (SHIBYTE(v54) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_91;
    }
  }

  else if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_91;
  }

  operator delete(v52.__r_.__value_.__l.__data_);
  v48 = *MEMORY[0x1E69E9840];
}

void sub_1D9D6C3E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a42 < 0)
  {
    operator delete(__p);
    if (a35 < 0)
    {
LABEL_5:
      operator delete(a30);
      if (a16 < 0)
      {
LABEL_8:
        operator delete(a11);
        if ((a28 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_12;
      }

LABEL_11:
      if ((a28 & 0x80000000) == 0)
      {
LABEL_9:
        if ((a22 & 0x80000000) == 0)
        {
LABEL_14:
          if (*(v42 + 23) < 0)
          {
            operator delete(*v42);
          }

          _Unwind_Resume(a1);
        }

LABEL_13:
        operator delete(a17);
        goto LABEL_14;
      }

LABEL_12:
      operator delete(a23);
      if ((a22 & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if (a35 < 0)
  {
    goto LABEL_5;
  }

  if (a16 < 0)
  {
    goto LABEL_8;
  }

  goto LABEL_11;
}

void sub_1D9D6C518(std::runtime_error *a1)
{
  a1->__vftable = &unk_1F554E680;
  std::runtime_error::~runtime_error(a1 + 1);

  std::exception::~exception(a1);
}

uint64_t sub_1D9D6C56C(uint64_t a1, uint64_t a2)
{
  v50 = *MEMORY[0x1E69E9840];
  __p = 0;
  v46 = 0;
  v47 = 0;
  v4 = (a1 + 112);
  while (2)
  {
    while (1)
    {
      v5 = *(a1 + 32);
      if (v5 <= 5)
      {
        break;
      }

      if (v5 <= 7)
      {
        if (v5 == 6)
        {
          __str.__vftable = *(a1 + 144);
          sub_1D9D7106C(a2, &__str);
        }

        else
        {
          __str.__vftable = *(a1 + 160);
          sub_1D9D70980(a2, &__str);
        }

        goto LABEL_31;
      }

      switch(v5)
      {
        case 8:
          v44.__r_.__value_.__s.__data_[0] = 2;
          __str.__vftable = sub_1D9D705A0(a2, &v44);
          sub_1D9D6E51C(a2 + 8, &__str);
          v11 = sub_1D9D696AC(a1 + 40);
          *(a1 + 32) = v11;
          if (v11 == 10)
          {
LABEL_27:
            *(a2 + 16) -= 8;
            v12 = v46;
            if (v46)
            {
              goto LABEL_32;
            }

            goto LABEL_56;
          }

          v18 = v46;
          if (v46 == v47 << 6)
          {
            if ((v46 + 1) < 0)
            {
              sub_1D9D84AB0();
            }

            v19 = v47 << 7;
            if (v47 << 7 <= (v46 & 0x3FFFFFFFFFFFFFC0) + 64)
            {
              v19 = (v46 & 0x3FFFFFFFFFFFFFC0) + 64;
            }

            if (v46 <= 0x3FFFFFFFFFFFFFFELL)
            {
              v20 = v19;
            }

            else
            {
              v20 = 0x7FFFFFFFFFFFFFFFLL;
            }

            sub_1D9D6D41C(&__p, v20);
            v18 = v46;
          }

          v46 = v18 + 1;
          *(__p + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
          break;
        case 9:
          v44.__r_.__value_.__s.__data_[0] = 1;
          __str.__vftable = sub_1D9D705A0(a2, &v44);
          sub_1D9D6E51C(a2 + 8, &__str);
          v6 = sub_1D9D696AC(a1 + 40);
          *(a1 + 32) = v6;
          if (v6 == 11)
          {
            goto LABEL_27;
          }

          if (v6 != 4)
          {
LABEL_83:
            v36 = *(a1 + 64);
            sub_1D9D6B9AC(a1 + 40, &v44);
            v42 = *(a1 + 64);
            v43 = *(a1 + 80);
            sub_1D9D94D70(v38, "object key");
            sub_1D9D6BDFC(a1, 4u, v38, v40);
            sub_1D9D6BA94(101, &v42, v40, &__str);
            v34 = sub_1D9D6D0D8(a2, v36, &v44, &__str);
            goto LABEL_85;
          }

          v7 = *(*(*(a2 + 16) - 8) + 8);
          __str.__vftable = v4;
          *(a2 + 32) = sub_1D9D6F0E0(v7, &v4->~runtime_error) + 7;
          v8 = sub_1D9D696AC(a1 + 40);
          *(a1 + 32) = v8;
          if (v8 != 12)
          {
            goto LABEL_84;
          }

          v9 = v46;
          if (v46 == v47 << 6)
          {
            if ((v46 + 1) < 0)
            {
              sub_1D9D84AB0();
            }

            if (v46 > 0x3FFFFFFFFFFFFFFELL)
            {
              v10 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else if (v47 << 7 <= (v46 & 0x3FFFFFFFFFFFFFC0) + 64)
            {
              v10 = (v46 & 0x3FFFFFFFFFFFFFC0) + 64;
            }

            else
            {
              v10 = v47 << 7;
            }

            sub_1D9D6D41C(&__p, v10);
            v9 = v46;
          }

          v46 = v9 + 1;
          *(__p + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v9);
          *(a1 + 32) = sub_1D9D696AC(a1 + 40);
          break;
        case 14:
          v24 = *(a1 + 64);
          memset(&v44, 0, sizeof(v44));
          v25 = *(a1 + 88);
          for (i = *(a1 + 96); v25 != i; ++v25)
          {
            v27 = *v25;
            if (v27 > 0x1F)
            {
              std::string::push_back(&v44, v27);
            }

            else
            {
              LOBYTE(__str.__imp_.__imp_) = 0;
              __str.__vftable = 0;
              snprintf(&__str, 9uLL, "<U+%.4X>", v27);
              std::string::append(&v44, &__str);
            }
          }

          v42 = *(a1 + 64);
          v43 = *(a1 + 80);
          v39 = 5;
          strcpy(v38, "value");
          sub_1D9D6BDFC(a1, 0, v38, v40);
          sub_1D9D6BA94(101, &v42, v40, &__str);
          v32 = sub_1D9D6D0D8(a2, v24, &v44, &__str);
LABEL_75:
          v21 = v32;
          __str.__vftable = &unk_1F554E680;
          std::runtime_error::~runtime_error(&v49);
          std::exception::~exception(&__str);
          if (v41 < 0)
          {
            goto LABEL_76;
          }

          goto LABEL_77;
        default:
LABEL_67:
          v28 = *(a1 + 64);
          memset(&v44, 0, sizeof(v44));
          v29 = *(a1 + 88);
          for (j = *(a1 + 96); v29 != j; ++v29)
          {
            v31 = *v29;
            if (v31 > 0x1F)
            {
              std::string::push_back(&v44, v31);
            }

            else
            {
              LOBYTE(__str.__imp_.__imp_) = 0;
              __str.__vftable = 0;
              snprintf(&__str, 9uLL, "<U+%.4X>", v31);
              std::string::append(&v44, &__str);
            }
          }

          v42 = *(a1 + 64);
          v43 = *(a1 + 80);
          v39 = 5;
          strcpy(v38, "value");
          sub_1D9D6BDFC(a1, 0x10u, v38, v40);
          sub_1D9D6BA94(101, &v42, v40, &__str);
          v32 = sub_1D9D6D0D8(a2, v28, &v44, &__str);
          goto LABEL_75;
      }
    }

    if (v5 <= 2)
    {
      if (v5 == 1)
      {
        LOBYTE(__str.__vftable) = 1;
        sub_1D9D70BDC(a2, &__str);
      }

      else
      {
        if (v5 != 2)
        {
          goto LABEL_67;
        }

        LOBYTE(__str.__vftable) = 0;
        sub_1D9D70BDC(a2, &__str);
      }
    }

    else if (v5 == 3)
    {
      __str.__vftable = 0;
      sub_1D9D70E38(a2);
    }

    else
    {
      if (v5 == 4)
      {
        sub_1D9D712C8(a2);
      }

      __str.__vftable = *(a1 + 152);
      sub_1D9D716D8(a2, &__str);
    }

LABEL_31:
    v12 = v46;
    if (!v46)
    {
LABEL_56:
      v21 = 1;
      goto LABEL_57;
    }

    while (1)
    {
LABEL_32:
      if ((*(__p + (((v12 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v12 - 1)))
      {
        v13 = sub_1D9D696AC(a1 + 40);
        *(a1 + 32) = v13;
        if (v13 == 13)
        {
          goto LABEL_43;
        }

        if (v13 != 10)
        {
          v33 = *(a1 + 64);
          sub_1D9D6B9AC(a1 + 40, &v44);
          v42 = *(a1 + 64);
          v43 = *(a1 + 80);
          sub_1D9D94D70(v38, "array");
          sub_1D9D6BDFC(a1, 0xAu, v38, v40);
          sub_1D9D6BA94(101, &v42, v40, &__str);
          v34 = sub_1D9D6D0D8(a2, v33, &v44, &__str);
          goto LABEL_85;
        }

        goto LABEL_38;
      }

      v14 = sub_1D9D696AC(a1 + 40);
      *(a1 + 32) = v14;
      if (v14 == 13)
      {
        break;
      }

      if (v14 != 11)
      {
        v35 = *(a1 + 64);
        sub_1D9D6B9AC(a1 + 40, &v44);
        v42 = *(a1 + 64);
        v43 = *(a1 + 80);
        sub_1D9D94D70(v38, "object");
        sub_1D9D6BDFC(a1, 0xBu, v38, v40);
        sub_1D9D6BA94(101, &v42, v40, &__str);
        v34 = sub_1D9D6D0D8(a2, v35, &v44, &__str);
        goto LABEL_85;
      }

LABEL_38:
      *(a2 + 16) -= 8;
      v12 = --v46;
      if (!v46)
      {
        goto LABEL_56;
      }
    }

    v15 = sub_1D9D696AC(a1 + 40);
    *(a1 + 32) = v15;
    if (v15 != 4)
    {
      goto LABEL_83;
    }

    v16 = *(*(*(a2 + 16) - 8) + 8);
    __str.__vftable = v4;
    *(a2 + 32) = sub_1D9D6F0E0(v16, &v4->~runtime_error) + 7;
    v17 = sub_1D9D696AC(a1 + 40);
    *(a1 + 32) = v17;
    if (v17 == 12)
    {
LABEL_43:
      *(a1 + 32) = sub_1D9D696AC(a1 + 40);
      continue;
    }

    break;
  }

LABEL_84:
  v37 = *(a1 + 64);
  sub_1D9D6B9AC(a1 + 40, &v44);
  v42 = *(a1 + 64);
  v43 = *(a1 + 80);
  sub_1D9D94D70(v38, "object separator");
  sub_1D9D6BDFC(a1, 0xCu, v38, v40);
  sub_1D9D6BA94(101, &v42, v40, &__str);
  v34 = sub_1D9D6D0D8(a2, v37, &v44, &__str);
LABEL_85:
  v21 = v34;
  sub_1D9D6C518(&__str);
  if (v41 < 0)
  {
LABEL_76:
    operator delete(v40[0]);
  }

LABEL_77:
  if (v39 < 0)
  {
    operator delete(v38[0]);
    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_81;
    }
  }

  else if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_81:
    operator delete(v44.__r_.__value_.__l.__data_);
  }

LABEL_57:
  if (__p)
  {
    operator delete(__p);
  }

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

void sub_1D9D6CEC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33)
{
  sub_1D9D6C518((v33 - 128));
  if (a22 < 0)
  {
    operator delete(__p);
    if ((a16 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a16 & 0x80000000) == 0)
  {
LABEL_3:
    if (a32 < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  operator delete(a11);
  if (a32 < 0)
  {
LABEL_4:
    operator delete(a27);
    v35 = a33;
    if (a33)
    {
LABEL_10:
      operator delete(v35);
      _Unwind_Resume(a1);
    }

LABEL_9:
    _Unwind_Resume(a1);
  }

LABEL_8:
  v35 = a33;
  if (a33)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

uint64_t sub_1D9D6D0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 40) = 1;
  if (*(a1 + 41) == 1)
  {
    v4 = *(a4 + 8) / 100 % 100;
    if (v4 <= 2)
    {
      if (v4 == 1)
      {
        exception = __cxa_allocate_exception(0x28uLL);
        v14 = sub_1D9D70060(exception, a4);
        __cxa_throw(v14, &unk_1F554E7F8, sub_1D9D6C518);
      }

      if (v4 == 2)
      {
        v19 = __cxa_allocate_exception(0x20uLL);
        v20 = sub_1D9D7014C(v19, a4);
        __cxa_throw(v20, &unk_1F554E750, sub_1D9D6EDA4);
      }
    }

    else
    {
      switch(v4)
      {
        case 3:
          v10 = __cxa_allocate_exception(0x20uLL);
          v11 = sub_1D9D701BC(v10, a4);
          __cxa_throw(v11, &unk_1F554E790, sub_1D9D6F024);
        case 4:
          v16 = __cxa_allocate_exception(0x20uLL);
          v17 = sub_1D9D700DC(v16, a4);
          __cxa_throw(v17, &unk_1F554E738, sub_1D9D6E194);
        case 5:
          v6 = __cxa_allocate_exception(0x20uLL);
          v7 = sub_1D9D7022C(v6, a4);
          __cxa_throw(v7, &unk_1F554E630, sub_1D9D68884);
      }
    }
  }

  return 0;
}

uint64_t sub_1D9D6D260(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  v6 = a1 + 96;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  v7 = *(a3 + 24);
  if (!v7)
  {
    goto LABEL_4;
  }

  if (v7 != a3)
  {
    v7 = (*(*v7 + 16))(v7);
LABEL_4:
    *(a1 + 120) = v7;
    goto LABEL_6;
  }

  *(a1 + 120) = v6;
  (*(**(a3 + 24) + 24))(*(a3 + 24), v6);
LABEL_6:
  *(a1 + 144) = 0;
  *(a1 + 128) = a4;
  *(a1 + 136) = 8;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  if (v8 == v9 << 6)
  {
    if ((v8 + 1) < 0)
    {
      sub_1D9D84AB0();
    }

    v10 = v9 << 7;
    if (v10 <= (v8 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v10 = (v8 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v8 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    sub_1D9D6D41C(a1 + 32, v11);
    v8 = *(a1 + 40);
  }

  *(a1 + 40) = v8 + 1;
  *(*(a1 + 32) + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
  return a1;
}

void sub_1D9D6D3B4(_Unwind_Exception *exception_object)
{
  v4 = v1[7];
  if (v4)
  {
    operator delete(v4);
    v5 = v1[4];
    if (!v5)
    {
LABEL_3:
      v6 = *v2;
      if (!*v2)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v5 = v1[4];
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  operator delete(v5);
  v6 = *v2;
  if (!*v2)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  v1[2] = v6;
  operator delete(v6);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1D9D6D41C(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  return result;
}

uint64_t sub_1D9D6D548(uint64_t a1, unint64_t a2)
{
  v3 = a1 + 8;
  LODWORD(v24) = (*(a1 + 16) - *(a1 + 8)) >> 3;
  v23.__r_.__value_.__s.__data_[0] = 0;
  v4 = *(a1 + 120);
  if (!v4)
  {
    sub_1D9D3EC54();
  }

  v6 = (*(*v4 + 48))(v4, &v24, &v23, a1 + 136);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  if (v7 == v8 << 6)
  {
    if ((v7 + 1) < 0)
    {
      sub_1D9D84AB0();
    }

    v9 = v8 << 7;
    if (v9 <= (v7 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v9 = (v7 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v7 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    sub_1D9D6D41C(a1 + 32, v10);
    v7 = *(a1 + 40);
  }

  *(a1 + 40) = v7 + 1;
  v11 = *(a1 + 32);
  v12 = v7 >> 6;
  v13 = 1 << v7;
  if (v6)
  {
    v14 = *(v11 + 8 * v12) | v13;
  }

  else
  {
    v14 = *(v11 + 8 * v12) & ~v13;
  }

  *(v11 + 8 * v12) = v14;
  LOBYTE(v24) = 1;
  v26 = sub_1D9D6E1E8(a1, &v24, 1);
  v27 = v15;
  sub_1D9D6E51C(v3, &v27);
  if (a2 != -1)
  {
    v16 = *(*(a1 + 16) - 8);
    if (v16)
    {
      v17 = *v16;
      if (v17 > 2)
      {
        v18 = 1;
      }

      else
      {
        v18 = qword_1D9DDE640[v17];
      }

      if (v18 < a2)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        std::to_string(&v23, a2);
        v21 = std::string::insert(&v23, 0, "excessive object size: ");
        v22 = *&v21->__r_.__value_.__l.__data_;
        v25 = v21->__r_.__value_.__r.__words[2];
        v24 = v22;
        v21->__r_.__value_.__l.__size_ = 0;
        v21->__r_.__value_.__r.__words[2] = 0;
        v21->__r_.__value_.__r.__words[0] = 0;
        sub_1D9D6DFF4(408, &v24, exception);
        __cxa_throw(exception, &unk_1F554E738, sub_1D9D6E194);
      }
    }
  }

  return 1;
}

void sub_1D9D6D73C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_1D9D6D79C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (*(v2 - 8))
  {
    LODWORD(v24) = ((v2 - *(a1 + 8)) >> 3) - 1;
    LOBYTE(v21) = 1;
    v3 = *(a1 + 120);
    if (!v3)
    {
      sub_1D9D3EC54();
    }

    if (((*(*v3 + 48))(v3, &v24, &v21) & 1) == 0)
    {
      sub_1D9D71E24(v26, (a1 + 136));
      v4 = *(*(a1 + 16) - 8);
      v5 = *v4;
      *v4 = v26[0];
      v26[0] = v5;
      v6 = *(v4 + 1);
      *(v4 + 1) = v27;
      v27 = v6;
      sub_1D9D6752C(&v27, v5);
    }
  }

  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  v9 = v7 - 8;
  *(a1 + 16) = v7 - 8;
  --*(a1 + 40);
  if (v8 != v7 - 8)
  {
    v10 = *(v7 - 16);
    if (v10)
    {
      if (*v10 == 1)
      {
        v24 = v10;
        *&v25[8] = xmmword_1D9DDDC60;
        *v25 = **(v10 + 8);
        while (1)
        {
          v11 = *(v9 - 8);
          v22 = 0uLL;
          v21 = v11;
          v23 = 0x8000000000000000;
          v12 = *v11;
          if (v12 == 2)
          {
            *(&v22 + 1) = *(*(v11 + 1) + 8);
            if (sub_1D9D6EB04(&v24, &v21))
            {
              return 1;
            }
          }

          else if (v12 == 1)
          {
            *&v22 = *(v11 + 1) + 8;
            if (sub_1D9D6EB04(&v24, &v21))
            {
              return 1;
            }
          }

          else
          {
            v23 = 1;
            if (sub_1D9D6EB04(&v24, &v21))
            {
              return 1;
            }
          }

          if (*sub_1D9D6E634(&v24) == 8)
          {
            break;
          }

          v13 = *v24;
          if (v13 == 2)
          {
            *&v25[8] += 16;
            v9 = *(a1 + 16);
          }

          else if (v13 == 1)
          {
            v14 = *v25;
            v15 = *(*v25 + 8);
            if (v15)
            {
              do
              {
                v16 = v15;
                v15 = *v15;
              }

              while (v15);
            }

            else
            {
              do
              {
                v16 = v14[2];
                v17 = *v16 == v14;
                v14 = v16;
              }

              while (!v17);
            }

            *v25 = v16;
            v9 = *(a1 + 16);
          }

          else
          {
            ++*&v25[16];
            v9 = *(a1 + 16);
          }
        }

        v18 = *(*(a1 + 16) - 8);
        v21 = v24;
        v22 = *v25;
        v23 = *&v25[16];
        sub_1D9D6E738(v18, &v21, &v20);
      }
    }
  }

  return 1;
}

void sub_1D9D6DBF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, unsigned __int8 a11)
{
  sub_1D9D6752C(&a10, a9);
  sub_1D9D6752C((v11 + 8), a11);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D6DC4C(uint64_t a1, unint64_t a2)
{
  v3 = a1 + 8;
  LODWORD(v24) = (*(a1 + 16) - *(a1 + 8)) >> 3;
  v23.__r_.__value_.__s.__data_[0] = 2;
  v4 = *(a1 + 120);
  if (!v4)
  {
    sub_1D9D3EC54();
  }

  v6 = (*(*v4 + 48))(v4, &v24, &v23, a1 + 136);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  if (v7 == v8 << 6)
  {
    if ((v7 + 1) < 0)
    {
      sub_1D9D84AB0();
    }

    v9 = v8 << 7;
    if (v9 <= (v7 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v9 = (v7 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v7 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    sub_1D9D6D41C(a1 + 32, v10);
    v7 = *(a1 + 40);
  }

  *(a1 + 40) = v7 + 1;
  v11 = *(a1 + 32);
  v12 = v7 >> 6;
  v13 = 1 << v7;
  if (v6)
  {
    v14 = *(v11 + 8 * v12) | v13;
  }

  else
  {
    v14 = *(v11 + 8 * v12) & ~v13;
  }

  *(v11 + 8 * v12) = v14;
  LOBYTE(v24) = 2;
  v26 = sub_1D9D6E1E8(a1, &v24, 1);
  v27 = v15;
  sub_1D9D6E51C(v3, &v27);
  if (a2 != -1)
  {
    v16 = *(*(a1 + 16) - 8);
    if (v16)
    {
      v17 = *v16;
      if (v17 > 2)
      {
        v18 = 1;
      }

      else
      {
        v18 = qword_1D9DDE640[v17];
      }

      if (v18 < a2)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        std::to_string(&v23, a2);
        v21 = std::string::insert(&v23, 0, "excessive array size: ");
        v22 = *&v21->__r_.__value_.__l.__data_;
        v25 = v21->__r_.__value_.__r.__words[2];
        v24 = v22;
        v21->__r_.__value_.__l.__size_ = 0;
        v21->__r_.__value_.__r.__words[2] = 0;
        v21->__r_.__value_.__r.__words[0] = 0;
        sub_1D9D6DFF4(408, &v24, exception);
        __cxa_throw(exception, &unk_1F554E738, sub_1D9D6E194);
      }
    }
  }

  return 1;
}

void sub_1D9D6DE44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_1D9D6DEA4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v4 = *(v2 - 8);
  v3 = v2 - 8;
  if (!v4)
  {
    *(a1 + 16) = v3;
    goto LABEL_6;
  }

  v19 = ((*(a1 + 16) - *(a1 + 8)) >> 3) - 1;
  v18 = 3;
  v5 = *(a1 + 120);
  if (!v5)
  {
    sub_1D9D3EC54();
  }

  if ((*(*v5 + 48))(v5, &v19, &v18))
  {
    *(a1 + 16) -= 8;
LABEL_6:
    --*(a1 + 40);
    return 1;
  }

  sub_1D9D71E24(v16, (a1 + 136));
  v7 = *(*(a1 + 16) - 8);
  v8 = *v7;
  *v7 = v16[0];
  v16[0] = v8;
  v9 = *(v7 + 1);
  *(v7 + 1) = v17;
  v17 = v9;
  sub_1D9D6752C(&v17, v8);
  v11 = *(a1 + 8);
  v10 = *(a1 + 16);
  *(a1 + 16) = v10 - 8;
  --*(a1 + 40);
  if (v11 == v10 - 8)
  {
    return 1;
  }

  v12 = *(v10 - 16);
  if (*v12 != 2)
  {
    return 1;
  }

  v13 = *(v12 + 8);
  v14 = *(v13 + 8);
  v15 = *(v14 - 16);
  v14 -= 16;
  sub_1D9D6752C((v14 + 8), v15);
  *(v13 + 8) = v14;
  return 1;
}

void sub_1D9D6DFF4(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = 12;
  strcpy(__p, "out_of_range");
  sub_1D9D688D8(a1, &v14);
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
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((v13 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(__p[0]);
LABEL_9:
  if (v16 >= 0)
  {
    v11 = v15;
  }

  else
  {
    v11 = v15[0];
  }

  *a3 = &unk_1F554E680;
  *(a3 + 8) = a1;
  std::runtime_error::runtime_error((a3 + 16), v11);
  *a3 = &unk_1F554E7E0;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_1D9D6E144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  std::exception::~exception(v26);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1D9D6E194(std::runtime_error *a1)
{
  a1->__vftable = &unk_1F554E680;
  std::runtime_error::~runtime_error(a1 + 1);

  std::exception::~exception(a1);
}

uint64_t sub_1D9D6E1E8(unsigned __int8 **a1, unsigned __int8 *a2, char a3)
{
  if ((*&a1[4][((a1[5] - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (*(a1 + 40) - 1)))
  {
    v30[0] = *a2;
    if (v30[0] > 3u)
    {
      if (v30[0] <= 5u)
      {
        if (v30[0] == 4)
        {
          LOBYTE(v31) = 0;
          if (a3)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v31 = 0;
          if (a3)
          {
LABEL_21:
            v6 = a1[2];
            if (a1[1] == v6)
            {
              v11 = v30[0];
              v12 = v31;
              v30[0] = 0;
              v31 = 0;
              v13 = *a1;
              v14 = **a1;
              *v13 = v11;
              v28 = v14;
              v15 = *(v13 + 8);
              *(v13 + 8) = v12;
              v29 = v15;
              sub_1D9D6752C(&v29, v14);
              v16 = *a1;
LABEL_32:
              v4 = 1;
              goto LABEL_33;
            }

            v7 = *(v6 - 1);
            if (v7)
            {
              if (*v7 == 2)
              {
                v8 = *(v7 + 8);
                v9 = v8[1];
                if (v9 >= v8[2])
                {
                  v10 = sub_1D9D67D88(v8, v30);
                }

                else
                {
                  *v9 = v30[0];
                  *(v9 + 8) = v31;
                  v30[0] = 0;
                  v31 = 0;
                  v10 = v9 + 16;
                }

                v8[1] = v10;
                v25 = *(*(*(a1[2] - 1) + 8) + 8) - 16;
                goto LABEL_32;
              }

              v17 = (a1[8] - 1);
              v18 = *&a1[7][(v17 >> 3) & 0x1FFFFFFFFFFFFFF8];
              a1[8] = v17;
              if ((v18 >> v17))
              {
                v19 = v30[0];
                v20 = v31;
                v30[0] = 0;
                v31 = 0;
                v21 = a1[10];
                v22 = *v21;
                *v21 = v19;
                v23 = *(v21 + 1);
                *(v21 + 1) = v20;
                v27 = v23;
                sub_1D9D6752C(&v27, v22);
                v24 = a1[10];
                goto LABEL_32;
              }
            }

LABEL_29:
            v4 = 0;
LABEL_33:
            sub_1D9D6752C(&v31, v30[0]);
            return v4;
          }
        }

LABEL_19:
        v33 = (a1[2] - a1[1]) >> 3;
        v32 = 5;
        v5 = a1[15];
        if (!v5)
        {
          sub_1D9D3EC54();
        }

        if (((*(*v5 + 48))(v5, &v33, &v32, v30) & 1) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_21;
      }
    }

    else if (v30[0] > 1u)
    {
      if (v30[0] == 2)
      {
        operator new();
      }

      if (v30[0] == 3)
      {
        operator new();
      }
    }

    else if (v30[0])
    {
      operator new();
    }

    v31 = 0;
    if (a3)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  return 0;
}

void sub_1D9D6E51C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    sub_1D9D67CB0();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    sub_1D9D10E9C();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

unsigned __int8 *sub_1D9D6E634(unsigned __int8 **a1)
{
  result = *a1;
  v3 = *result;
  if (v3 == 2)
  {
    return a1[2];
  }

  if (v3 == 1)
  {
    return a1[1] + 56;
  }

  if (a1[3])
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_1D9D94D70(v5, "cannot get value");
    sub_1D9D6EC10(214, v5, exception);
    __cxa_throw(exception, &unk_1F554E750, sub_1D9D6EDA4);
  }

  return result;
}

void sub_1D9D6E6FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if (v16)
    {
LABEL_6:
      __cxa_free_exception(v15);
      _Unwind_Resume(a1);
    }
  }

  else if (v16)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(a1);
}

void sub_1D9D6E738(unsigned __int8 *a1@<X0>, unsigned __int8 **a2@<X1>, unsigned __int8 **a3@<X8>)
{
  if (*a2 != a1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_1D9D94D70(&v35, "iterator does not fit current value");
    sub_1D9D6EC10(202, &v35, exception);
    __cxa_throw(exception, &unk_1F554E750, sub_1D9D6EDA4);
  }

  a3[1] = 0;
  v3 = a3 + 1;
  *a3 = a1;
  a3[2] = 0;
  a3[3] = 0x8000000000000000;
  v4 = *a1;
  if (v4 == 2)
  {
    v9 = *(a1 + 1);
    v10 = *(v9 + 8);
    a3[2] = v10;
    v12 = a2[2];
    if (v12 + 16 == v10)
    {
      v13 = a2[2];
      if (v10 == v12)
      {
LABEL_28:
        *(v9 + 8) = v13;
        a3[2] = v12;
        return;
      }
    }

    else
    {
      v13 = a2[2];
      do
      {
        v14 = v13;
        v15 = v13[16];
        v13 += 16;
        v16 = *(v14 + 3);
        *v13 = 0;
        *(v14 + 3) = 0;
        v17 = *v14;
        *v14 = v15;
        LOBYTE(v35) = v17;
        v18 = *(v14 + 1);
        *(v14 + 1) = v16;
        *(&v35 + 1) = v18;
        sub_1D9D6752C(&v35 + 1, v17);
      }

      while (v14 + 32 != v10);
      v10 = *(v9 + 8);
      if (v10 == v13)
      {
        goto LABEL_28;
      }
    }

    v24 = (v10 - 8);
    do
    {
      v25 = v24 - 1;
      sub_1D9D6752C(v24, *(v24 - 8));
      v24 -= 2;
    }

    while (v25 != v13);
    goto LABEL_28;
  }

  if (v4 == 1)
  {
    v5 = *(a1 + 1);
    v6 = a2[1];
    v7 = *(v6 + 1);
    if (v7)
    {
      do
      {
        v8 = v7;
        v7 = *v7;
      }

      while (v7);
    }

    else
    {
      v21 = a2[1];
      do
      {
        v8 = *(v21 + 2);
        v22 = *v8 == v21;
        v21 = v8;
      }

      while (!v22);
    }

    if (*v5 == v6)
    {
      *v5 = v8;
    }

    v23 = v5[1];
    --v5[2];
    sub_1D9D4C580(v23, v6);
    sub_1D9D6752C(v6 + 8, v6[56]);
    if (v6[55] < 0)
    {
      operator delete(*(v6 + 4));
    }

    operator delete(v6);
    *v3 = v8;
  }

  else
  {
    a3[3] = 1;
    if ((v4 - 3) > 4)
    {
      v29 = a1;
      v30 = __cxa_allocate_exception(0x20uLL);
      v31 = sub_1D9D6EFFC(v29);
      sub_1D9D94D70(&v34, v31);
      v32 = std::string::insert(&v34, 0, "cannot use erase() with ");
      v33 = *&v32->__r_.__value_.__l.__data_;
      v36 = v32->__r_.__value_.__r.__words[2];
      v35 = v33;
      v32->__r_.__value_.__l.__size_ = 0;
      v32->__r_.__value_.__r.__words[2] = 0;
      v32->__r_.__value_.__r.__words[0] = 0;
      sub_1D9D6EE60(307, &v35, v30);
      __cxa_throw(v30, &unk_1F554E790, sub_1D9D6F024);
    }

    if (a2[3])
    {
      v28 = __cxa_allocate_exception(0x20uLL);
      sub_1D9D94D70(&v35, "iterator out of range");
      sub_1D9D6EC10(205, &v35, v28);
      __cxa_throw(v28, &unk_1F554E750, sub_1D9D6EDA4);
    }

    if (v4 == 3)
    {
      v19 = *(a1 + 1);
      if (*(v19 + 23) < 0)
      {
        v26 = a1;
        operator delete(*v19);
        v20 = v26;
        v19 = *(v26 + 1);
      }

      else
      {
        v20 = a1;
      }

      operator delete(v19);
      a1 = v20;
      *(v20 + 1) = 0;
    }

    *a1 = 0;
  }
}

void sub_1D9D6EA80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (v22)
  {
    __cxa_free_exception(v21);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1D9D6EB04(unsigned __int8 **a1, unsigned __int8 **a2)
{
  if (*a1 != *a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_1D9D94D70(v7, "cannot compare iterators of different containers");
    sub_1D9D6EC10(212, v7, exception);
    __cxa_throw(exception, &unk_1F554E750, sub_1D9D6EDA4);
  }

  v2 = **a1;
  if (v2 == 2)
  {
    v3 = a1[2];
    v4 = a2[2];
  }

  else if (v2 == 1)
  {
    v3 = a1[1];
    v4 = a2[1];
  }

  else
  {
    v3 = a1[3];
    v4 = a2[3];
  }

  return v3 == v4;
}

void sub_1D9D6EBD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if (v16)
    {
LABEL_6:
      __cxa_free_exception(v15);
      _Unwind_Resume(a1);
    }
  }

  else if (v16)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(a1);
}

void sub_1D9D6EC10(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = 16;
  strcpy(__p, "invalid_iterator");
  sub_1D9D688D8(a1, &v14);
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
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((v13 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(*__p);
LABEL_9:
  if (v16 >= 0)
  {
    v11 = v15;
  }

  else
  {
    v11 = v15[0];
  }

  *a3 = &unk_1F554E680;
  *(a3 + 8) = a1;
  std::runtime_error::runtime_error((a3 + 16), v11);
  *a3 = &unk_1F554E778;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_1D9D6ED54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  std::exception::~exception(v26);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1D9D6EDA4(std::runtime_error *a1)
{
  a1->__vftable = &unk_1F554E680;
  std::runtime_error::~runtime_error(a1 + 1);

  std::exception::~exception(a1);
}

void sub_1D9D6EDF8(std::runtime_error *a1)
{
  a1->__vftable = &unk_1F554E680;
  std::runtime_error::~runtime_error(a1 + 1);
  std::exception::~exception(a1);

  JUMPOUT(0x1DA741280);
}

void sub_1D9D6EE60(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = 10;
  strcpy(__p, "type_error");
  sub_1D9D688D8(a1, &v14);
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
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((v13 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(__p[0]);
LABEL_9:
  if (v16 >= 0)
  {
    v11 = v15;
  }

  else
  {
    v11 = v15[0];
  }

  *a3 = &unk_1F554E680;
  *(a3 + 8) = a1;
  std::runtime_error::runtime_error((a3 + 16), v11);
  *a3 = &unk_1F554E7B8;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_1D9D6EFAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  std::exception::~exception(v26);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const char *sub_1D9D6EFFC(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 8)
  {
    return "number";
  }

  else
  {
    return off_1E858DF90[v1];
  }
}

void sub_1D9D6F024(std::runtime_error *a1)
{
  a1->__vftable = &unk_1F554E680;
  std::runtime_error::~runtime_error(a1 + 1);

  std::exception::~exception(a1);
}

void sub_1D9D6F078(std::runtime_error *a1)
{
  a1->__vftable = &unk_1F554E680;
  std::runtime_error::~runtime_error(a1 + 1);
  std::exception::~exception(a1);

  JUMPOUT(0x1DA741280);
}

void *sub_1D9D6F0E0(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_25:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      if (v10 >= 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v7[1];
      }

      if (v10 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = v8;
      }

      if (v11 >= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v11;
      }

      v14 = memcmp(v5, v12, v13);
      v15 = v4 < v11;
      if (v14)
      {
        v15 = v14 < 0;
      }

      if (!v15)
      {
        break;
      }

      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_25;
      }
    }

    v16 = memcmp(v12, v5, v13);
    v17 = v11 < v4;
    if (v16)
    {
      v17 = v16 < 0;
    }

    if (!v17)
    {
      return v6;
    }

    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_25;
    }
  }
}