uint64_t agxps_gpu_create(int a1, int a2, unsigned int a3)
{
  if (qword_27F099840 != -1)
  {
    sub_24D85D494();
  }

  if (*(&off_27F099848 + 42 * a1 + 6 * a2 + a3 - 427))
  {
    operator new();
  }

  return 0;
}

_DWORD *sub_24D7657B0()
{
  v0 = 10;
  v1 = &off_27F099848;
  do
  {
    v2 = v1;
    for (i = 1; i != 8; ++i)
    {
      for (j = 0; j != 6; ++j)
      {
        result = *(&off_27F099848 + 42 * v0 + 6 * i - 421 - j);
        if (result)
        {
          for (k = 0; k != 6; ++k)
          {
            if (j + k != 5 && ((*result >> k) & 1) != 0)
            {
              v2[k] = result;
            }
          }
        }
      }

      v2 += 6;
    }

    ++v0;
    v1 += 42;
  }

  while (v0 != 21);
  return result;
}

void *sub_24D765848(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    sub_24D7658B0(result, (v2 - *a2) >> 3);
  }

  return result;
}

void sub_24D7658B0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_24D7658EC(a1, a2);
  }

  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
}

void sub_24D7658EC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
}

void sub_24D765934(const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_24D765A14(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void sub_24D765A14(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
}

void sub_24D765A5C(const void **a1, _WORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v11;
    }

    if (v13)
    {
      sub_24D765B38(a1, v13);
    }

    v14 = (2 * v9);
    v15 = *a2;
    v16 = &v14[-(v8 >> 1)];
    *v14 = v15;
    v6 = v14 + 1;
    memcpy(v16, v7, v8);
    v17 = *a1;
    *a1 = v16;
    a1[1] = v6;
    a1[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void sub_24D765B38(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
}

uint64_t sub_24D765B7C(void *a1, unint64_t a2)
{
  v2 = a1[11];
  if (v2 <= a2)
  {
    return 0;
  }

  v3 = a1[10];
  v4 = a1[7];
  v5 = *(*(v4 + (((v3 + a2) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v3 + a2) & 0x3FF));
  if (a2 + 1 >= v2)
  {
    v6 = a1[5];
  }

  else
  {
    v6 = *(*(v4 + (((v3 + a2 + 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v3 + a2 + 1) & 0x3FF));
  }

  return v6 - v5;
}

uint64_t sub_24D765BE4(uint64_t a1)
{
  sub_24D768310(a1 + 232);
  sub_24D768310(a1 + 192);
  sub_24D7683E8(a1 + 152);
  sub_24D768574(a1 + 112);
  sub_24D7685FC(a1 + 72);
  sub_24D768704(a1 + 32);
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    if (v3 != v2)
    {
      do
      {
        v3 -= 80;
        sub_24D7687EC(v3);
      }

      while (v3 != v2);
      v4 = *(a1 + 8);
    }

    *(a1 + 16) = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_24D765C78(uint64_t (**a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  if (*a1)
  {
    return v6(a2, a3, a4, a5, a6);
  }

  v6 = a1[1];
  if (v6)
  {
    return v6(a2, a3, a4, a5, a6);
  }

  else
  {
    return agxps_gpu_invalid_handle();
  }
}

uint64_t sub_24D765CA4(uint64_t result, char *__s1, const char *a3, int a4)
{
  *(result + 24) = 0u;
  *(result + 16) = a4;
  *(result + 40) = 0u;
  *(result + 56) = 1065353216;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  if ((a4 & 4) != 0)
  {
    a4 |= 2u;
    *(result + 16) = a4;
  }

  if (a4)
  {
    if (__s1)
    {
      strnlen(__s1, 0x4000uLL);
      operator new[]();
    }

    *result = 0;
    if (a3)
    {
      strnlen(a3, 0x4000uLL);
      operator new[]();
    }
  }

  else
  {
    *result = __s1;
  }

  *(result + 8) = a3;
  return result;
}

void sub_24D765DB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](va);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v2);
  _Unwind_Resume(a1);
}

void **sub_24D765DD4(void **a1)
{
  v3 = a1;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v3);
  return a1;
}

uint64_t *sub_24D765E10(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = *a1;
    if (*a1)
    {
      MEMORY[0x2530332A0]();
    }

    v3 = a1[1];
    if (v3)
    {
      MEMORY[0x2530332A0](v3, 0x1000C8077774924);
    }
  }

  v5 = (a1 + 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v5);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table((a1 + 3));
  return a1;
}

uint64_t sub_24D765E90(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v8 = a3 | (a2 << 16);
  v9 = &v8;
  v6 = sub_24D76B588((a1 + 24), &v8);
  v6[3] = a4;
  v6[4] = 0;
  return a1;
}

uint64_t sub_24D765EF0(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a2 <= 20)
  {
    for (i = a2; i != 21; ++i)
    {
      if (a3 <= 7)
      {
        do
        {
          v10 = a3 | (i << 16);
          v11 = &v10;
          v8 = sub_24D76B588((a1 + 24), &v10);
          v8[3] = a4;
          v8[4] = 0;
          ++a3;
        }

        while (a3 != 8);
      }

      a3 = 1;
    }
  }

  return a1;
}

uint64_t sub_24D765FA4(uint64_t a1, int a2, int a3, int a4, int a5, uint64_t a6)
{
  if (a2 <= a4)
  {
    v11 = a2;
    do
    {
      if (v11 >= a4)
      {
        v12 = a5;
      }

      else
      {
        v12 = 7;
      }

      for (; a3 <= v12; ++a3)
      {
        v15 = a3 | (v11 << 16);
        v16 = &v15;
        v13 = sub_24D76B588((a1 + 24), &v15);
        v13[3] = a6;
        v13[4] = 0;
      }

      ++v11;
      a3 = 1;
    }

    while (v11 <= a4);
  }

  return a1;
}

void *sub_24D766074(void *a1, char *a2)
{
  std::string::basic_string[abi:nn200100]<0>(__p, a2);
  v4 = a1[9];
  v3 = a1[10];
  if (v4 >= v3)
  {
    v6 = a1[8];
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v6) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v6) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v23[4] = a1 + 8;
    if (v10)
    {
      sub_24D768878((a1 + 8), v10);
    }

    v11 = 24 * v7;
    v12 = *__p;
    *(v11 + 16) = v22;
    *v11 = v12;
    __p[1] = 0;
    v22 = 0;
    __p[0] = 0;
    v13 = 24 * v7 + 24;
    v14 = a1[8];
    v15 = a1[9] - v14;
    v16 = 24 * v7 - v15;
    memcpy((v11 - v15), v14, v15);
    v17 = a1[8];
    a1[8] = v16;
    a1[9] = v13;
    v18 = a1[10];
    a1[10] = 0;
    v23[2] = v17;
    v23[3] = v18;
    v23[0] = v17;
    v23[1] = v17;
    sub_24D7688D0(v23);
    v19 = SHIBYTE(v22);
    a1[9] = v13;
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v5 = *__p;
    *(v4 + 16) = v22;
    *v4 = v5;
    a1[9] = v4 + 24;
  }

  return a1;
}

void sub_24D7661BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_24D7661D8(uint64_t a1, int a2, int a3)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 1065353216;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 1065353216;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 1065353216;
  return result;
}

uint64_t sub_24D766214(uint64_t a1, void *a2)
{
  v3 = (a2 + 6);
  *a1 = *a2;
  v4 = a1 + 48;
  sub_24D76B7C0(a1 + 8, (a2 + 1));
  sub_24D76BEDC(v4, v3);
  *(a1 + 88) = 257;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 1065353216;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 1065353216;
  sub_24D7662D8(a1);
  return a1;
}

void sub_24D7662A0(_Unwind_Exception *a1)
{
  v5 = v4;
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v5);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v3);
  sub_24D76867C(v2);
  sub_24D768310(v1 + 8);
  _Unwind_Resume(a1);
}

_BYTE *sub_24D7662D8(_BYTE *result)
{
  v1 = result;
  if (result[88] == 1)
  {
    result[88] = 0;
    result = sub_24D76C944(result + 12);
    v2 = *(v1 + 3);
    if (v2)
    {
      v3 = (v2 + 40);
      if (*(v2 + 63) < 0)
      {
        v3 = *v3;
      }

      v4 = (v2 + 16);
      v5 = *(v2 + 39);
      if ((v5 & 0x80u) != 0)
      {
        v4 = *(v2 + 16);
        v5 = *(v2 + 24);
      }

      v9 = v4;
      v10 = v5;
      *&v11 = v3;
      sub_24D76C9B0();
    }
  }

  if (v1[89] == 1)
  {
    v1[89] = 0;
    result = sub_24D76C944(v1 + 17);
    for (i = *(v1 + 8); i; i = *i)
    {
      v7 = *(i + 39);
      if ((v7 & 0x80u) == 0)
      {
        v8 = i + 2;
      }

      else
      {
        v8 = i[2];
      }

      if ((v7 & 0x80u) != 0)
      {
        v7 = i[3];
      }

      v9 = v8;
      v10 = v7;
      v11 = *(i + 5);
      result = sub_24D76CF40(v1 + 17, &v9);
    }
  }

  return result;
}

uint64_t sub_24D7663DC(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_24D768964(&v8, a2, a3);
  memset(v6, 0, sizeof(v6));
  sub_24D7689FC(v6, &v8, &v11, 1uLL);
  sub_24D7664C8(a1, v6);
  v7 = v6;
  sub_24D768BAC(&v7);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_24D766498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  sub_24D768BAC(va);
  sub_24D766570(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_24D7664C8(uint64_t result, __int128 **a2)
{
  *(result + 88) = 1;
  v3 = *a2;
  if (v3 != a2[1])
  {
    sub_24D768C30(&v4, v3, (v3 + 24));
    sub_24D76C290();
  }

  return result;
}

uint64_t sub_24D766570(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_24D7665B4(uint64_t a1, uint64_t a2, double a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *a2, *(a2 + 8));
  }

  else
  {
    v9 = *a2;
  }

  v10 = a3;
  memset(v7, 0, sizeof(v7));
  sub_24D768CC8(v7, &v9, v11, 1uLL);
  sub_24D7666CC(a1, v7);
  v8 = v7;
  sub_24D768E28(&v8);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  v5 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t sub_24D7666CC(uint64_t a1, __int128 **a2)
{
  *(a1 + 89) = 1;
  v3 = *a2;
  v4 = a2[1];
  while (v3 != v4)
  {
    v5 = *(v3 + 3);
    if (*(v3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v3, *(v3 + 1));
    }

    else
    {
      v6 = *v3;
      __p.__r_.__value_.__r.__words[2] = *(v3 + 2);
      *&__p.__r_.__value_.__l.__data_ = v6;
    }

    v9 = 0;
    v10 = v5;
    sub_24D76C3D8((a1 + 48), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v3 += 2;
  }

  return a1;
}

void sub_24D766778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24D7667BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 64);
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

      v12 = *(v4 + 5);
      v5 = sub_24D76C714((a1 + 48), &__p);
      if (v5)
      {
        v6 = sub_24D76D440(v5[5], v5[6], v12, *(&v12 + 1));
      }

      else
      {
        v6 = 3;
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v6 != 3 && v6)
      {
        return 0;
      }

      v4 = *v4;
      if (!v4)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    v7 = *(a2 + 24);
    if (v7)
    {
      sub_24D768ECC(&__p, (v7 + 16));
      *(a1 + 88) = 1;
      sub_24D76C834();
    }

    v8 = *(a2 + 64);
    v9 = 1;
    if (v8)
    {
      do
      {
        if (*(v8 + 39) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v8[2], v8[3]);
        }

        else
        {
          __p = *(v8 + 2);
        }

        v12 = *(v8 + 5);
        *(a1 + 89) = 1;
        sub_24D76BF54((a1 + 48), &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v8 = *v8;
      }

      while (v8);
      return 1;
    }
  }

  return v9;
}

void sub_24D766950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_24D766980(unsigned int *a1)
{
  if (!agxps_gpu_is_valid(a1))
  {
    return 0;
  }

  gen = agxps_gpu_get_gen(a1);
  v5 = agxps_gpu_get_variant(a1) | (gen << 16);
  if ((byte_27F09BB00 & 1) == 0)
  {
    return 0;
  }

  v3 = sub_24D768F60(&qword_27F09BB20, &v5);
  if (v3)
  {
    return v3 + 3;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_24D7669FC(unint64_t a1)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((qword_27F09BB10 - qword_27F09BB08) >> 4) > a1 && (v1 = *(qword_27F09BB08 + 80 * a1 + 72)) != 0)
  {
    return (v1 + 8);
  }

  else
  {
    return &qword_27F09CF50;
  }
}

uint64_t agxps_initialize(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v53 = 1;
  os_unfair_lock_lock(&unk_27F09BC10);
  v6 = atomic_load(&byte_27F09BB00);
  if (v6)
  {
    v7 = atomic_load(&byte_27F09BB00);
    if (v7)
    {
      v8 = qword_27F09BB08;
      for (i = qword_27F09BB10; i != v8; sub_24D7687EC(i))
      {
        i -= 80;
      }

      qword_27F09BB10 = v8;
      sub_24D769014(&qword_27F09BB20);
      sub_24D769070(qword_27F09BB48);
      sub_24D7690CC(&xmmword_27F09BB70);
      atomic_store(0, &byte_27F09BB00);
    }
  }

  v34 = a3;
  v35 = a1;
  v10 = 0;
  v51 = &v53;
  v52 = &v53;
  do
  {
    v11 = &unk_279313098 + v10;
    sub_24D766F48(*(&unk_279313098 + v10), v49);
    v12 = v50;
    if (v50)
    {
      v13 = *(v11 + 1);
      do
      {
        v14 = *(v12 + 4);
        std::string::basic_string[abi:nn200100]<0>(v40, v13);
        std::string::basic_string[abi:nn200100]<0>(v38, *(v11 + 2));
        std::string::basic_string[abi:nn200100]<0>(v36, *(v11 + 3));
        *v42 = *v40;
        v45 = v39;
        v47 = v37;
        v15 = v41;
        v40[1] = 0;
        v41 = 0;
        v39 = 0;
        v40[0] = 0;
        v44 = *v38;
        v38[0] = 0;
        v38[1] = 0;
        __p = *v36;
        v36[1] = 0;
        v37 = 0;
        v36[0] = 0;
        v43 = v15;
        v48 = 0;
        v16 = sub_24D767208(v14, v42);
        v17 = v48;
        v48 = 0;
        if (v17)
        {
          v54[0] = (v17 + 24);
          std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v54);
          MEMORY[0x2530332C0](v17, 0x10A0C402FDA1AB7);
        }

        if (SHIBYTE(v47) < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v45) < 0)
        {
          operator delete(v44);
        }

        if (SHIBYTE(v43) < 0)
        {
          operator delete(v42[0]);
        }

        if (SHIBYTE(v37) < 0)
        {
          operator delete(v36[0]);
        }

        if (SHIBYTE(v39) < 0)
        {
          operator delete(v38[0]);
        }

        if (SHIBYTE(v41) < 0)
        {
          operator delete(v40[0]);
        }

        v18 = v53 == 1 && 0xCCCCCCCCCCCCCCCDLL * ((qword_27F09BB10 - qword_27F09BB08) >> 4) > v16;
        v53 = v18;
        v12 = *v12;
      }

      while (v12);
    }

    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v49);
    v10 += 32;
  }

  while (v10 != 3410528);
  sub_24D8022C4();
  v54[0] = &v53;
  v20 = v42[0];
  v19 = v42[1];
  while (v20 != v19)
  {
    sub_24D7678C4(v54, v20);
    v20 += 176;
  }

  v49[0] = v42;
  sub_24D76AB6C(v49);
  sub_24D7ED094();
  v54[0] = &v53;
  v22 = v42[0];
  v21 = v42[1];
  v24 = v34;
  for (j = a1; v22 != v21; v22 += 88)
  {
    sub_24D767624(v54, v22);
  }

  v49[0] = v42;
  sub_24D76AC28(v49);
  sub_24D7E383C();
  v54[0] = &v53;
  v26 = v42[0];
  v25 = v42[1];
  while (v26 != v25)
  {
    sub_24D767624(v54, v26);
    v26 += 88;
  }

  v49[0] = v42;
  sub_24D76AC28(v49);
  v27 = a4;
  if (v34 && a4)
  {
    do
    {
      v28 = *v24++;
      sub_24D767624(&v51, v28);
      --v27;
    }

    while (v27);
  }

  v29 = a2;
  if (v35 && a2)
  {
    do
    {
      v30 = *j++;
      sub_24D7678C4(&v52, v30);
      --v29;
    }

    while (v29);
  }

  atomic_store(1u, &byte_27F09BB00);
  os_unfair_lock_unlock(&unk_27F09BC10);
  return v53;
}

void sub_24D766E60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50)
{
  *(v50 - 160) = &a32;
  sub_24D76AC28((v50 - 160));
  _Unwind_Resume(a1);
}

uint64_t sub_24D766F48@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  switch(result)
  {
    case 1:
      v4 = 0xB0004000B0003;
      goto LABEL_33;
    case 2:
      v2 = 786435;
      goto LABEL_30;
    case 3:
      v2 = 851972;
      goto LABEL_30;
    case 4:
      v2 = 851971;
      goto LABEL_30;
    case 5:
      v10 = 0xD0006000D0005;
      v3 = 851972;
      goto LABEL_24;
    case 6:
      v5 = 917507;
      goto LABEL_20;
    case 7:
      v2 = 917507;
      goto LABEL_30;
    case 8:
      v10 = 0xE0006000E0005;
      v6 = 917511;
      goto LABEL_25;
    case 9:
    case 10:
      v2 = 983044;
      goto LABEL_30;
    case 11:
      v2 = 983041;
      goto LABEL_30;
    case 12:
      v2 = 983043;
      goto LABEL_30;
    case 13:
    case 14:
      v10 = 0xF0006000F0005;
      v3 = 983044;
      goto LABEL_24;
    case 15:
      v5 = 1048579;
LABEL_20:
      v2 = v5 + 1;
      goto LABEL_30;
    case 16:
    case 17:
      v2 = 1048579;
      goto LABEL_30;
    case 18:
      v4 = 0x10000600100005;
      goto LABEL_33;
    case 19:
      v2 = 1114116;
      goto LABEL_30;
    case 20:
      v4 = 0x11000300110002;
      goto LABEL_33;
    case 21:
      v10 = 0x11000600110005;
      v3 = 1114116;
      goto LABEL_24;
    case 22:
      v2 = 1179652;
      goto LABEL_30;
    case 23:
      v2 = 1179649;
      goto LABEL_30;
    case 24:
      v4 = 0x12000300120002;
      goto LABEL_33;
    case 25:
      v2 = 1245188;
      goto LABEL_30;
    case 26:
      v4 = 0x13000300130002;
      goto LABEL_33;
    case 27:
      v10 = 0x13000600130005;
      v3 = 1245188;
LABEL_24:
      v6 = v3 | 3;
LABEL_25:
      v11 = v6;
      v7 = a2;
      v8 = 3;
      goto LABEL_34;
    case 28:
      v4 = 0x14000300140002;
LABEL_33:
      v10 = v4;
      v7 = a2;
      v8 = 2;
      goto LABEL_34;
    case 29:
    case 30:
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 1065353216;
      goto LABEL_35;
    default:
      v2 = 655363;
LABEL_30:
      LODWORD(v10) = v2;
      v7 = a2;
      v8 = 1;
LABEL_34:
      result = sub_24D769128(v7, &v10, v8);
LABEL_35:
      v9 = *MEMORY[0x277D85DE8];
      return result;
  }
}

uint64_t sub_24D767208(unsigned int a1, uint64_t a2)
{
  v34 = a1;
  if (byte_27F09BB00)
  {
    return -1;
  }

  v2 = 0xCCCCCCCCCCCCCCCDLL * ((qword_27F09BB10 - qword_27F09BB08) >> 4);
  v35 = &v34;
  v4 = sub_24D769704(qword_27F09BB48, &v34);
  v35 = a2;
  sub_24D7699C4(v4 + 3, a2)[5] = v2;
  if (*(a2 + 72))
  {
    v35 = &v34;
    v5 = sub_24D76A260(&xmmword_27F09BB70, &v34);
    v35 = v2;
    sub_24D769624(v5 + 3, &v35);
    v35 = &v34;
    v6 = sub_24D76A51C(qword_27F09BB98, &v34);
    v7 = sub_24D7680E4(a2);
    v8 = *v7;
    v9 = v7[1];
    if (*v7 != v9)
    {
      do
      {
        v35 = v8;
        v10 = sub_24D76A7DC(v6 + 3, v8);
        v35 = v2;
        sub_24D769624(v10 + 5, &v35);
        v8 += 24;
      }

      while (v8 != v9);
    }
  }

  v11 = qword_27F09BB10;
  if (qword_27F09BB10 >= qword_27F09BB18)
  {
    v17 = 0xCCCCCCCCCCCCCCCDLL * ((qword_27F09BB10 - qword_27F09BB08) >> 4) + 1;
    if (v17 > 0x333333333333333)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    if (0x999999999999999ALL * ((qword_27F09BB18 - qword_27F09BB08) >> 4) > v17)
    {
      v17 = 0x999999999999999ALL * ((qword_27F09BB18 - qword_27F09BB08) >> 4);
    }

    if (0xCCCCCCCCCCCCCCCDLL * ((qword_27F09BB18 - qword_27F09BB08) >> 4) >= 0x199999999999999)
    {
      v18 = 0x333333333333333;
    }

    else
    {
      v18 = v17;
    }

    if (v18)
    {
      if (v18 <= 0x333333333333333)
      {
        operator new();
      }

      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v19 = 16 * ((qword_27F09BB10 - qword_27F09BB08) >> 4);
    *v19 = *a2;
    *(v19 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    v20 = *(a2 + 24);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(v19 + 24) = v20;
    *(v19 + 40) = *(a2 + 40);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    v21 = *(a2 + 48);
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    v22 = *(a2 + 64);
    v23 = *(a2 + 72);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(v19 + 64) = v22;
    *(v19 + 72) = v23;
    v24 = qword_27F09BB08;
    v25 = qword_27F09BB10;
    v26 = v19 + qword_27F09BB08 - qword_27F09BB10;
    *(v19 + 48) = v21;
    if (v25 != v24)
    {
      v27 = v24;
      v28 = v26;
      do
      {
        v29 = *v27;
        *(v28 + 16) = *(v27 + 2);
        *v28 = v29;
        *(v27 + 1) = 0;
        *(v27 + 2) = 0;
        *v27 = 0;
        v30 = *(v27 + 24);
        *(v28 + 40) = *(v27 + 5);
        *(v28 + 24) = v30;
        *(v27 + 4) = 0;
        *(v27 + 5) = 0;
        *(v27 + 3) = 0;
        v31 = *(v27 + 3);
        *(v28 + 64) = *(v27 + 8);
        *(v28 + 48) = v31;
        *(v27 + 6) = 0;
        *(v27 + 7) = 0;
        v32 = *(v27 + 9);
        *(v27 + 8) = 0;
        *(v27 + 9) = 0;
        *(v28 + 72) = v32;
        v27 += 80;
        v28 += 80;
      }

      while (v27 != v25);
      do
      {
        sub_24D7687EC(v24);
        v24 += 80;
      }

      while (v24 != v25);
      v24 = qword_27F09BB08;
    }

    v16 = v19 + 80;
    qword_27F09BB08 = v26;
    qword_27F09BB10 = v19 + 80;
    qword_27F09BB18 = 0;
    if (v24)
    {
      operator delete(v24);
    }
  }

  else
  {
    v12 = *a2;
    *(qword_27F09BB10 + 16) = *(a2 + 16);
    *v11 = v12;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v13 = *(a2 + 24);
    *(v11 + 40) = *(a2 + 40);
    *(v11 + 24) = v13;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 24) = 0;
    v14 = *(a2 + 48);
    *(v11 + 64) = *(a2 + 64);
    *(v11 + 48) = v14;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    v15 = *(a2 + 72);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(v11 + 72) = v15;
    v16 = v11 + 80;
  }

  qword_27F09BB10 = v16;
  return v2;
}

uint64_t sub_24D767594(uint64_t a1)
{
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    v4 = (v2 + 24);
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v4);
    MEMORY[0x2530332C0](v2, 0x10A0C402FDA1AB7);
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

_BYTE **sub_24D767624(_BYTE **result, uint64_t a2)
{
  if (**result == 1)
  {
    if (*(a2 + 48))
    {
      v3 = *(a2 + 40);
      if (v3)
      {
        v4 = *(v3 + 16);
        std::string::basic_string[abi:nn200100]<0>(v11, *a2);
        std::string::basic_string[abi:nn200100]<0>(v9, *(a2 + 8));
        v5 = *(a2 + 16);
        v8 = 0;
        v7 = 0uLL;
        sub_24D76ACAC(&v7, *(a2 + 64), *(a2 + 72), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 72) - *(a2 + 64)) >> 3));
        *v13 = *v11;
        v14 = v12;
        v11[1] = 0;
        v12 = 0;
        v15 = *v9;
        v6 = v10;
        v9[0] = 0;
        v9[1] = 0;
        v10 = 0;
        v11[0] = 0;
        v16 = v6;
        __p = 0;
        v18 = 0;
        v19 = 0;
        operator new();
      }
    }

    else
    {
      **result = 0;
    }
  }

  return result;
}

void sub_24D767838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

_BYTE **sub_24D7678C4(_BYTE **result, uint64_t a2)
{
  if (**result == 1 && (byte_27F09BB00 & 1) == 0)
  {
    v10 = *(a2 + 4) | (*a2 << 16);
    v3 = sub_24D768F60(&qword_27F09BB20, &v10);
    if (v3)
    {
      return sub_24D7667BC((v3 + 3), a2);
    }

    else
    {
      v4 = v10;
      sub_24D766214(&v5, a2);
      sub_24D76ADCC(&qword_27F09BB20, &v4);
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&v9);
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&v8);
      sub_24D76867C(&v7);
      return sub_24D768310(&v6);
    }
  }

  return result;
}

uint64_t agxps_load_counter_obfuscation_map(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:a1];
  }

  else
  {
    v2 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.gpusw.AGXProfilingSupport"];
    v1 = [v2 pathForResource:@"RawCountersMapping" ofType:@"csv"];
  }

  v32 = v1;
  if (v1 && (v31 = [objc_alloc(MEMORY[0x277CCACA8]) initWithContentsOfFile:v1 encoding:4 error:0]) != 0)
  {
    v3 = [MEMORY[0x277CCA900] newlineCharacterSet];
    v4 = [v31 componentsSeparatedByCharactersInSet:v3];

    sub_24D76B110(&xmmword_27F09BBC0);
    v5 = [v4 count];
    sub_24D7693D0(&xmmword_27F09BBC0, vcvtps_u32_f32(v5 / *&dword_27F09BBE0));
    sub_24D76B110(qword_27F09BBE8);
    v6 = [v4 count];
    sub_24D7693D0(qword_27F09BBE8, vcvtps_u32_f32(v6 / *&dword_27F09BC08));
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v33 objects:v43 count:16];
    if (v8)
    {
      v9 = 0;
      v10 = *v34;
      for (i = *v34; ; i = *v34)
      {
        if (i != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v33 + 1) + 8 * v9);
        v13 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
        v14 = [v12 stringByTrimmingCharactersInSet:v13];
        v15 = [v14 componentsSeparatedByString:{@", "}];

        if ([v15 count] == 2)
        {
          v16 = [v15 firstObject];
          v17 = [v15 lastObject];
          v18 = v16;
          v19 = [v16 UTF8String];
          v20 = v17;
          std::string::basic_string[abi:nn200100]<0>(__p, [v17 UTF8String]);
          v37 = __p;
          v21 = sub_24D76B16C(&xmmword_27F09BBC0, __p);
          std::string::__assign_external((v21 + 5), v19);
          if (SBYTE3(v42) < 0)
          {
            operator delete(*__p);
          }

          v22 = v17;
          v23 = [v17 UTF8String];
          v24 = v16;
          std::string::basic_string[abi:nn200100]<0>(__p, -[NSObject UTF8String](v16, "UTF8String"));
          v37 = __p;
          v25 = sub_24D76B16C(qword_27F09BBE8, __p);
          std::string::__assign_external((v25 + 5), v23);
          if (SBYTE3(v42) < 0)
          {
            operator delete(*__p);
          }
        }

        else
        {
          v16 = sub_24D809C04();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v26 = v12;
            v27 = [v12 UTF8String];
            *__p = 136315650;
            *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/Dependencies/AGXProfilingSupport/AGXProfilingSupport/AGXPSCounters.mm";
            v39 = 1024;
            v40 = 474;
            v41 = 2080;
            v42 = v27;
            _os_log_error_impl(&dword_24D764000, v16, OS_LOG_TYPE_ERROR, "%s:%u: WARNING: Skipping invalid raw counter mapping: '%s'", __p, 0x1Cu);
          }
        }

        if (++v9 >= v8)
        {
          v8 = [v7 countByEnumeratingWithState:&v33 objects:v43 count:16];
          if (!v8)
          {
            break;
          }

          v9 = 0;
        }
      }
    }

    v28 = 1;
  }

  else
  {
    v28 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

char *agxps_counter_deobfuscate_name(char *__s)
{
  v1 = __s;
  if (__s)
  {
    std::string::basic_string[abi:nn200100]<0>(__p, __s);
    v2 = sub_24D76B468(&xmmword_27F09BBC0, __p);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }

    if (v2)
    {
      v1 = (v2 + 5);
      if (*(v2 + 63) < 0)
      {
        return *v1;
      }
    }
  }

  return v1;
}

void sub_24D767F24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t agxps_counter_get_ident(unsigned int *a1, char *a2)
{
  if (!agxps_gpu_is_valid(a1))
  {
    return -1;
  }

  gen = agxps_gpu_get_gen(a1);
  v5 = agxps_gpu_get_variant(a1) | (gen << 16);
  std::string::basic_string[abi:nn200100]<0>(__p, a2);
  v12 = v5;
  v6 = sub_24D768F60(qword_27F09BB48, &v12);
  if (v6 && (v7 = sub_24D76B468(v6 + 3, __p)) != 0)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((qword_27F09BB10 - qword_27F09BB08) >> 4) <= v7[5])
    {
      v8 = -1;
    }

    else
    {
      v8 = v7[5];
    }
  }

  else
  {
    v8 = -1;
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

void sub_24D768018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *agxps_counter_get_name(unint64_t a1)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((qword_27F09BB10 - qword_27F09BB08) >> 4) <= a1)
  {
    return 0;
  }

  result = (qword_27F09BB08 + 80 * a1);
  if (result[23] < 0)
  {
    return *result;
  }

  return result;
}

uint64_t agxps_counter_get_grc_enable_str(unint64_t a1)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((qword_27F09BB10 - qword_27F09BB08) >> 4) <= a1)
  {
    return 0;
  }

  v1 = qword_27F09BB08 + 80 * a1;
  if (*(v1 + 72))
  {
    return 0;
  }

  result = v1 + 48;
  if (*(v1 + 71) < 0)
  {
    return *result;
  }

  return result;
}

void *sub_24D7680E4(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27F09BC28, memory_order_acquire) & 1) == 0)
  {
    v3 = a1;
    sub_24D85D53C();
    a1 = v3;
  }

  v1 = *(a1 + 72);
  if (v1)
  {
    return (v1 + 24);
  }

  else
  {
    return &unk_27F09BC58;
  }
}

uint64_t agxps_counter_group_get_derived_counters(unsigned int *a1, char *a2, void *a3, void *a4)
{
  is_valid = agxps_gpu_is_valid(a1);
  result = 0;
  if (a4 && a3 && a2 && is_valid)
  {
    std::string::basic_string[abi:nn200100]<0>(__p, a2);
    if ((atomic_load_explicit(qword_27F09BC38, memory_order_acquire) & 1) == 0)
    {
      sub_24D85D5AC();
    }

    if ((byte_27F09BB00 & 1) != 0 && (gen = agxps_gpu_get_gen(a1), v27 = agxps_gpu_get_variant(a1) | (gen << 16), (v11 = sub_24D768F60(qword_27F09BB98, &v27)) != 0) && (v12 = sub_24D76B468(v11 + 3, __p)) != 0)
    {
      v13 = (v12 + 5);
    }

    else
    {
      v13 = qword_27F09BC30;
    }

    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    v14 = *v13;
    v15 = *(v13 + 8);
    if (*v13 == v15)
    {
      return 0;
    }

    v16 = 0;
    do
    {
      v17 = *(qword_27F09BB08 + 80 * *v14 + 72);
      if (v17)
      {
        v18 = (*v17 & 0x10) == 0;
      }

      else
      {
        v18 = 1;
      }

      v16 += v18;
      ++v14;
    }

    while (v14 != v15);
    if (!v16)
    {
      return 0;
    }

    else
    {
      v19 = malloc_type_malloc(8 * v16, 0x100004000313F17uLL);
      v20 = *v13;
      v21 = *(v13 + 8);
      if (*v13 != v21)
      {
        v22 = qword_27F09BB08;
        v23 = v19;
        do
        {
          v24 = *(v22 + 80 * *v20 + 72);
          if (!v24 || (*v24 & 0x10) == 0)
          {
            *v23++ = *v20;
          }

          ++v20;
        }

        while (v20 != v21);
      }

      *a4 = v16;
      *a3 = v19;
      return 1;
    }
  }

  return result;
}

void sub_24D7682F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24D768310(uint64_t a1)
{
  sub_24D76834C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_24D76834C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_24D768390((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_24D768390(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_24D7683E8(uint64_t a1)
{
  sub_24D768424(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_24D768424(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_24D768468((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_24D768468(uint64_t a1)
{
  sub_24D7684A4(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_24D7684A4(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_24D7684E8((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_24D7684E8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t sub_24D768540(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_24D768574(uint64_t a1)
{
  sub_24D7685B0(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_24D7685B0(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_24D7685FC(uint64_t a1)
{
  sub_24D768638(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_24D768638(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_24D76867C((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_24D76867C(uint64_t a1)
{
  sub_24D7686B8(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_24D7686B8(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
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
}

uint64_t sub_24D768704(uint64_t a1)
{
  sub_24D768740(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_24D768740(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table((v2 + 20));
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table((v2 + 15));
      sub_24D76867C((v2 + 9));
      sub_24D768310((v2 + 4));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_24D7687A8(uint64_t a1)
{
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 144);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 104);
  sub_24D76867C(a1 + 56);
  sub_24D768310(a1 + 16);
  return a1;
}

void sub_24D7687EC(uint64_t a1)
{
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    v3 = (v2 + 24);
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v3);
    MEMORY[0x2530332C0](v2, 0x10A0C402FDA1AB7);
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_24D768878(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
}

uint64_t sub_24D7688D0(uint64_t a1)
{
  sub_24D768908(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_24D768908(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
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

    while (v5 != a2);
  }
}

std::string *sub_24D768964(std::string *this, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v6;
  }

  return this;
}

void sub_24D7689E0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24D7689FC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24D768A74(result, a4);
  }

  return result;
}

void sub_24D768A74(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    sub_24D768AC0(a1, a2);
  }

  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
}

void sub_24D768AC0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
}

std::string *sub_24D768B18(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  return this;
}

void sub_24D768B90(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_24D768BAC(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 48;
        sub_24D768390(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

std::string *sub_24D768C30(std::string *this, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v6;
  }

  return this;
}

void sub_24D768CAC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24D768CC8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24D768D28(result, a4);
  }

  return result;
}

void sub_24D768D28(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_24D768D64(a1, a2);
  }

  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
}

void sub_24D768D64(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
}

std::string *sub_24D768DAC(int a1, __int128 *a2, __int128 *a3, std::string *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(this, *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        this->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&this->__r_.__value_.__l.__data_ = v7;
      }

      this[1].__r_.__value_.__r.__words[0] = *(v6 + 3);
      v6 += 2;
      this = (this + 32);
    }

    while (v6 != a3);
  }

  return this;
}

void sub_24D768E28(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_24D768E7C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_24D768E7C(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 9);
    v3 -= 4;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

std::string *sub_24D768ECC(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  return this;
}

void sub_24D768F44(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_24D768F60(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_24D769014(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_24D768740(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void sub_24D769070(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_24D768638(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void sub_24D7690CC(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_24D7685B0(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t sub_24D769128(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 4 * a3;
    do
    {
      sub_24D7691A0(a1, a2++);
      v5 -= 4;
    }

    while (v5);
  }

  return a1;
}

uint64_t *sub_24D7691A0(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_24D7693D0(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_24D7694C0(a1, prime);
    }
  }
}

void sub_24D7694C0(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_24D769624(const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_24D7658EC(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t *sub_24D769704(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_24D769964(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24D769978(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24D769978(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_24D76867C(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

const void **sub_24D7699C4(void *a1, uint64_t a2)
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

  v6 = sub_24D769D18(v16, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_21;
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
LABEL_21:
    sub_24D769C58();
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
      goto LABEL_21;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_21;
    }
  }

  if (!sub_24D76A184(a1, v13 + 2, v2))
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_24D769C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_24D76A1FC(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24D769CFC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_24D76A1FC(v3, v2);
  _Unwind_Resume(a1);
}

unint64_t sub_24D769D18(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return sub_24D76A0C4(a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return sub_24D76A018(a2, a3);
  }

  else
  {
    return sub_24D769F20(a2, a3);
  }
}

unint64_t sub_24D769F20(_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t sub_24D76A018(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t sub_24D76A0C4(void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

BOOL sub_24D76A184(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void sub_24D76A1FC(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *sub_24D76A260(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_24D76A4B8(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *sub_24D76A51C(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_24D76A77C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24D76A790(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24D76A790(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_24D768468(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

const void **sub_24D76A7DC(void *a1, uint64_t a2)
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

  v6 = sub_24D769D18(v16, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_21;
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
LABEL_21:
    sub_24D76AA6C();
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
      goto LABEL_21;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_21;
    }
  }

  if (!sub_24D76A184(a1, v13 + 2, v2))
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_24D76AA58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24D76AB20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24D76AB20(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_24D7684E8(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_24D76AB6C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_24D76ABC0(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_24D76ABC0(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  if (v3 != *result)
  {
    do
    {
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v3 - 40);
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v3 - 80);
      sub_24D76867C(v3 - 128);
      result = sub_24D768310(v3 - 168);
      v3 -= 176;
    }

    while (v3 != v2);
  }

  v1[1] = v2;
  return result;
}

void sub_24D76AC28(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_24D765E10(v4 - 11);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_24D76ACAC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24D76AD0C(result, a4);
  }

  return result;
}

void sub_24D76AD0C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_24D768878(a1, a2);
  }

  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
}

std::string *sub_24D76AD58(int a1, __int128 *a2, __int128 *a3, std::string *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(this, *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        this->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&this->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      ++this;
    }

    while (v6 != a3);
  }

  return this;
}

uint64_t *sub_24D76ADCC(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    v9 = *a2;
    sub_24D76AFFC();
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (*(result + 4) != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_24D76AFD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    sub_24D76B0A0(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24D76B084(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_24D76B0A0(v3, v2);
  _Unwind_Resume(a1);
}

void sub_24D76B0A0(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(__p + 160);
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(__p + 120);
    sub_24D76867C(__p + 72);
    sub_24D768310(__p + 32);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

void sub_24D76B110(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_24D76834C(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

const void **sub_24D76B16C(void *a1, uint64_t a2)
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

  v6 = sub_24D769D18(&v16, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_21;
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
LABEL_21:
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
      goto LABEL_21;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_21;
    }
  }

  if (!sub_24D76A184(a1, v13 + 2, v2))
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_24D76B408(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24D76B41C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24D76B41C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_24D768390(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

const void **sub_24D76B468(void *a1, uint64_t a2)
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

  v6 = sub_24D769D18(&v16, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v7)
    {
      v11 = v6 % *&v7;
    }
  }

  else
  {
    v11 = (*&v7 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  for (i = *v12; i; i = *i)
  {
    v14 = i[1];
    if (v8 == v14)
    {
      if (sub_24D76A184(a1, i + 2, v2))
      {
        return i;
      }
    }

    else
    {
      if (v10 > 1)
      {
        if (v14 >= *&v7)
        {
          v14 %= *&v7;
        }
      }

      else
      {
        v14 &= *&v7 - 1;
      }

      if (v14 != v11)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t *sub_24D76B588(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t sub_24D76B7C0(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_24D76B834(a1, *(a2 + 8));
  if (*(a2 + 16))
  {
    sub_24D76BAE8();
  }

  return a1;
}

void sub_24D76B834(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_24D76B924(a1, prime);
    }
  }
}

void sub_24D76B924(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_24D76BB38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24D76B41C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24D76BBF8(void *a1, uint64_t a2)
{
  v4 = *(a2 + 39);
  v5 = (a2 + 16);
  v6 = *(a2 + 24);
  if ((v4 & 0x80u) == 0)
  {
    v7 = (a2 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  if ((v4 & 0x80u) == 0)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  v9 = sub_24D769D18(&v12, v7, v8);
  *(a2 + 8) = v9;
  v10 = sub_24D76BC7C(a1, v9, v5);
  sub_24D76BDF4(a1, a2, v10);
  return a2;
}

const void **sub_24D76BC7C(uint64_t a1, unint64_t a2, const void **a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    sub_24D76B834(a1, v12);
    v6 = *(a1 + 8);
  }

  v13 = vcnt_s8(v6);
  v13.i16[0] = vaddlv_u8(v13);
  v14 = v13.u32[0];
  if (v13.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (v16)
  {
    v17 = *v16;
    if (*v16)
    {
      v18 = 0;
      do
      {
        v19 = v17[1];
        if (v14 > 1)
        {
          v20 = v17[1];
          if (v19 >= v6)
          {
            v20 = v19 % v6;
          }
        }

        else
        {
          v20 = v19 & (v6 - 1);
        }

        if (v20 != v15)
        {
          break;
        }

        v21 = v19 == a2 && sub_24D76A184(a1, v17 + 2, a3);
        if ((v18 & (v21 != (v18 & 1))) != 0)
        {
          break;
        }

        v18 |= v21 != (v18 & 1);
        v16 = *v16;
        v17 = *v16;
      }

      while (*v16);
    }
  }

  return v16;
}

void *sub_24D76BDF4(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

uint64_t sub_24D76BEDC(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_24D7693D0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_24D76BF54(a1, (i + 2));
  }

  return a1;
}

const void **sub_24D76BF54(void *a1, uint64_t a2)
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

  v6 = sub_24D769D18(v16, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_21;
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
LABEL_21:
    sub_24D76C1D0();
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
      goto LABEL_21;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_21;
    }
  }

  if (!sub_24D76A184(a1, v13 + 2, v2))
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_24D76C1AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_24D76A1FC(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24D76C274(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_24D76A1FC(v3, v2);
  _Unwind_Resume(a1);
}

void sub_24D76C2E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24D76B41C(va);
  _Unwind_Resume(a1);
}

const void **sub_24D76C3D8(void *a1, uint64_t a2)
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

  v6 = sub_24D769D18(v16, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_21;
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
LABEL_21:
    sub_24D76C654();
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
      goto LABEL_21;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_21;
    }
  }

  if (!sub_24D76A184(a1, v13 + 2, v2))
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_24D76C630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_24D76A1FC(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24D76C6F8(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_24D76A1FC(v3, v2);
  _Unwind_Resume(a1);
}

const void **sub_24D76C714(void *a1, uint64_t a2)
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

  v6 = sub_24D769D18(&v16, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v7)
    {
      v11 = v6 % *&v7;
    }
  }

  else
  {
    v11 = (*&v7 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  for (i = *v12; i; i = *i)
  {
    v14 = i[1];
    if (v14 == v8)
    {
      if (sub_24D76A184(a1, i + 2, v2))
      {
        return i;
      }
    }

    else
    {
      if (v10 > 1)
      {
        if (v14 >= *&v7)
        {
          v14 %= *&v7;
        }
      }

      else
      {
        v14 &= *&v7 - 1;
      }

      if (v14 != v11)
      {
        return 0;
      }
    }
  }

  return i;
}

void sub_24D76C884(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24D76B41C(va);
  _Unwind_Resume(a1);
}

void *sub_24D76C944(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

void sub_24D76C9EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24D76CA90(void *a1, uint64_t a2)
{
  v4 = a2 + 16;
  v5 = sub_24D769D18(&v8, *(a2 + 16), *(a2 + 24));
  *(a2 + 8) = v5;
  v6 = sub_24D76CB00(a1, v5, v4);
  sub_24D76BDF4(a1, a2, v6);
  return a2;
}

uint64_t *sub_24D76CB00(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    sub_24D76CC94(a1, v12);
    v6 = *(a1 + 8);
  }

  v13 = vcnt_s8(v6);
  v13.i16[0] = vaddlv_u8(v13);
  v14 = v13.u32[0];
  if (v13.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  v19 = *a3;
  v18 = *(a3 + 8);
  do
  {
    v20 = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v21 = v16[1];
    if (v14 > 1)
    {
      v22 = v16[1];
      if (v21 >= v6)
      {
        v22 = v21 % v6;
      }
    }

    else
    {
      v22 = v21 & (v6 - 1);
    }

    if (v22 != v15)
    {
      break;
    }

    v23 = v21 == a2 && v16[3] == v18 && memcmp(v16[2], v19, v18) == 0;
    v24 = v23 != (v17 & 1);
    v25 = v17 & v24;
    v17 |= v24;
  }

  while (v25 != 1);
  return v20;
}

void sub_24D76CC94(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_24D76CD84(a1, prime);
    }
  }
}

void sub_24D76CD84(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t **sub_24D76CF40(void *a1, uint64_t a2)
{
  v4 = sub_24D769D18(&v17, *a2, *(a2 + 8));
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_20;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_20:
    operator new();
  }

  v14 = a2;
  v12 = *a2;
  v13 = *(v14 + 8);
  while (1)
  {
    v15 = v11[1];
    if (v15 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v15 >= *&v6)
      {
        v15 %= *&v6;
      }
    }

    else
    {
      v15 &= *&v6 - 1;
    }

    if (v15 != v9)
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

  if (v11[3] != v13 || memcmp(v11[2], v12, v13))
  {
    goto LABEL_19;
  }

  return v11;
}

uint64_t sub_24D76D1B0(uint64_t a1, uint64_t a2, void *a3)
{

  return __cxa_atexit(sub_24D768540, v3, a3);
}

uint64_t sub_24D76D22C(uint64_t a1, int a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  v4 = (a1 + 16);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v5 = -1;
  if (!a2)
  {
    v5 = 7;
  }

  if (a2 == 1)
  {
    v5 = 7;
  }

  v6 = 1 << -__clz(v5);
  v7 = a2 == 2;
  if (a2 == 2)
  {
    v8 = 8;
  }

  else
  {
    v8 = v6;
  }

  memptr = 0;
  v9 = 3;
  if (v7)
  {
    v9 = 0;
  }

  malloc_type_posix_memalign(&memptr, v8, a3 << v9, 0xD9D1CFA3uLL);
  v10 = *v4;
  *v4 = memptr;
  if (v10)
  {
    v11 = *(a1 + 24);
    if (v11)
    {
      v11();
    }

    else
    {
      MEMORY[0x2530332A0]();
    }
  }

  *(a1 + 24) = MEMORY[0x277D86138];
  return a1;
}

uint64_t agxps_timeseries_copy(uint64_t a1)
{
  if (a1)
  {
    operator new();
  }

  return 0;
}

uint64_t agxps_timeseries_destroy(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 16);
    *(v1 + 16) = 0;
    if (v2)
    {
      v3 = *(v1 + 24);
      if (v3)
      {
        v3();
      }

      else
      {
        MEMORY[0x2530332A0]();
      }
    }

    JUMPOUT(0x2530332C0);
  }

  return result;
}

uint64_t agxps_timeseries_get_data(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t agxps_timeseries_get_length(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

unsigned int *agxps_timeseries_get_datatype(unsigned int *result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

BOOL sub_24D76D440(int a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a1 != a3)
  {
    return 0;
  }

  v4 = a2 == a4;
  v5 = v4;
  if (a1)
  {
    v5 = 0;
  }

  if (a1 != 1)
  {
    v4 = v5;
  }

  if (a1 == 2)
  {
    return a2 == a4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_24D76D490(unsigned int a1, uint64_t a2, unsigned int a3)
{
  v3 = a3 - 3;
  if (a1 - 3 > 0xFFFFFFFD)
  {
    v4 = a3;
    if (v3 < 0xFFFFFFFE)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = a1;
    if (v3 >= 0xFFFFFFFE)
    {
      if (!a1)
      {
        goto LABEL_21;
      }

LABEL_13:
      if (a1 == 2)
      {
        if (a3 == 2)
        {
          if (v4 == 2)
          {
            return 2;
          }

          if (v4 != 1)
          {
            return v4;
          }
        }

        else
        {
          if (a3 != 1)
          {
            if (a3)
            {
              return v4;
            }

            if (v4 != 2)
            {
              if (v4 != 1)
              {
                return v4;
              }

              return 1;
            }

            return 2;
          }

          if (v4 == 2)
          {
            return 2;
          }

          if (v4 != 1)
          {
            return v4;
          }
        }
      }

      else
      {
        if (a1 != 1)
        {
          return v4;
        }

        if (a3 == 2)
        {
          if (v4 == 2)
          {
            return 2;
          }

          if (v4 != 1)
          {
            return v4;
          }
        }

        else if (a3 == 1)
        {
          if (v4 == 2)
          {
            return 2;
          }

          if (v4 != 1)
          {
            return v4;
          }
        }

        else
        {
          if (a3)
          {
            return v4;
          }

          if (v4 == 2)
          {
            return 2;
          }

          if (v4 != 1)
          {
            return v4;
          }
        }
      }

      return 1;
    }
  }

  if (a3 != 2 || a1 == 2)
  {
    v4 = a3;
  }

  else
  {
    v4 = a1;
  }

  if (a1)
  {
    goto LABEL_13;
  }

LABEL_21:
  if (a3 == 2)
  {
    if (v4 == 2)
    {
      return 2;
    }

    if (v4 != 1)
    {
      return v4;
    }

    return 1;
  }

  if (a3 == 1)
  {
    if (v4 != 2)
    {
      if (v4 != 1)
      {
        return v4;
      }

      return 1;
    }

    return 2;
  }

  if (a3)
  {
    return v4;
  }

  if (v4 == 2)
  {
    return 2;
  }

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  if (v4 == 1)
  {
    return 1;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_24D76D708(unsigned int a1, uint64_t a2, unsigned int a3)
{
  v3 = a3 - 3;
  if (a1 - 3 > 0xFFFFFFFD)
  {
    v4 = a3;
    if (v3 < 0xFFFFFFFE)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = a1;
    if (v3 >= 0xFFFFFFFE)
    {
      if (!a1)
      {
        goto LABEL_21;
      }

LABEL_13:
      if (a1 == 2)
      {
        if (a3 == 2)
        {
          if (v4 != 2)
          {
            if (v4 != 1)
            {
              return v4;
            }

            return 1;
          }
        }

        else if (a3 == 1)
        {
          if (v4 != 2)
          {
            if (v4 != 1)
            {
              return v4;
            }

            return 1;
          }
        }

        else
        {
          if (a3)
          {
            return v4;
          }

          if (v4 != 2)
          {
            if (v4 != 1)
            {
              return v4;
            }

            return 1;
          }
        }
      }

      else
      {
        if (a1 != 1)
        {
          return v4;
        }

        if (a3 == 2)
        {
          if (v4 != 2)
          {
            if (v4 != 1)
            {
              return v4;
            }

            return 1;
          }
        }

        else if (a3 == 1)
        {
          if (v4 != 2)
          {
            if (v4 != 1)
            {
              return v4;
            }

            return 1;
          }
        }

        else
        {
          if (a3)
          {
            return v4;
          }

          if (v4 != 2)
          {
            if (v4 != 1)
            {
              return v4;
            }

            return 1;
          }
        }
      }

      return 2;
    }
  }

  if (a3 != 2 || a1 == 2)
  {
    v4 = a3;
  }

  else
  {
    v4 = a1;
  }

  if (a1)
  {
    goto LABEL_13;
  }

LABEL_21:
  if (a3 == 2)
  {
    if (v4 != 2)
    {
      if (v4 != 1)
      {
        return v4;
      }

      return 1;
    }

    return 2;
  }

  if (a3 == 1)
  {
    if (v4 != 2)
    {
      if (v4 != 1)
      {
        return v4;
      }

      return 1;
    }

    return 2;
  }

  if (a3)
  {
    return v4;
  }

  switch(v4)
  {
    case 2u:
      return 2;
    case 1u:
      return 1;
    case 0u:
      return 0;
  }

  return v4;
}

uint64_t sub_24D76D970(unsigned int a1, uint64_t a2, unsigned int a3)
{
  v3 = a3 - 3;
  if (a1 - 3 > 0xFFFFFFFD)
  {
    v4 = a3;
    if (v3 < 0xFFFFFFFE)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = a1;
    if (v3 >= 0xFFFFFFFE)
    {
      if (!a1)
      {
        goto LABEL_21;
      }

LABEL_13:
      if (a1 == 2)
      {
        if (a3 == 2)
        {
          if (v4 != 2)
          {
            if (v4 != 1)
            {
              return v4;
            }

            return 1;
          }
        }

        else if (a3 == 1)
        {
          if (v4 != 2)
          {
            if (v4 != 1)
            {
              return v4;
            }

            return 1;
          }
        }

        else
        {
          if (a3)
          {
            return v4;
          }

          if (v4 != 2)
          {
            if (v4 != 1)
            {
              return v4;
            }

            return 1;
          }
        }
      }

      else
      {
        if (a1 != 1)
        {
          return v4;
        }

        if (a3 == 2)
        {
          if (v4 != 2)
          {
            if (v4 != 1)
            {
              return v4;
            }

            return 1;
          }
        }

        else if (a3 == 1)
        {
          if (v4 != 2)
          {
            if (v4 != 1)
            {
              return v4;
            }

            return 1;
          }
        }

        else
        {
          if (a3)
          {
            return v4;
          }

          if (v4 != 2)
          {
            if (v4 != 1)
            {
              return v4;
            }

            return 1;
          }
        }
      }

      return 2;
    }
  }

  if (a3 != 2 || a1 == 2)
  {
    v4 = a3;
  }

  else
  {
    v4 = a1;
  }

  if (a1)
  {
    goto LABEL_13;
  }

LABEL_21:
  if (a3 == 2)
  {
    if (v4 != 2)
    {
      if (v4 != 1)
      {
        return v4;
      }

      return 1;
    }

    return 2;
  }

  if (a3 == 1)
  {
    if (v4 != 2)
    {
      if (v4 != 1)
      {
        return v4;
      }

      return 1;
    }

    return 2;
  }

  if (a3)
  {
    return v4;
  }

  switch(v4)
  {
    case 2u:
      return 2;
    case 1u:
      return 1;
    case 0u:
      return 0;
  }

  return v4;
}

uint64_t sub_24D76DBF0(unsigned int a1, uint64_t a2, unsigned int a3)
{
  v3 = a3 - 3;
  if (a1 - 3 > 0xFFFFFFFD)
  {
    v4 = a3;
    if (v3 < 0xFFFFFFFE)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = a1;
    if (v3 >= 0xFFFFFFFE)
    {
      if (!a1)
      {
        goto LABEL_21;
      }

LABEL_13:
      if (a1 == 2)
      {
        if (a3 == 2)
        {
          if (v4 == 2)
          {
            return 2;
          }

          if (v4 != 1)
          {
            return v4;
          }
        }

        else if (a3 == 1)
        {
          if (v4 == 2)
          {
            return 2;
          }

          if (v4 != 1)
          {
            return v4;
          }
        }

        else
        {
          if (a3)
          {
            return v4;
          }

          if (v4 == 2)
          {
            return 2;
          }

          if (v4 != 1)
          {
            return v4;
          }
        }
      }

      else
      {
        if (a1 != 1)
        {
          return v4;
        }

        if (a3 == 2)
        {
          if (v4 == 2)
          {
            return 2;
          }

          if (v4 != 1)
          {
            return v4;
          }
        }

        else
        {
          if (a3 != 1)
          {
            if (a3)
            {
              return v4;
            }

            if (v4 != 2)
            {
              if (v4 != 1)
              {
                return v4;
              }

              return 1;
            }

            return 2;
          }

          if (v4 == 2)
          {
            return 2;
          }

          if (v4 != 1)
          {
            return v4;
          }
        }
      }

      return 1;
    }
  }

  if (a3 != 2 || a1 == 2)
  {
    v4 = a3;
  }

  else
  {
    v4 = a1;
  }

  if (a1)
  {
    goto LABEL_13;
  }

LABEL_21:
  if (a3 == 2)
  {
    if (v4 == 2)
    {
      return 2;
    }

    if (v4 != 1)
    {
      return v4;
    }

    return 1;
  }

  if (a3 == 1)
  {
    if (v4 == 2)
    {
      return 2;
    }

    if (v4 != 1)
    {
      return v4;
    }

    return 1;
  }

  if (a3)
  {
    return v4;
  }

  if (v4 != 2)
  {
    if (v4 != 1)
    {
      return v4;
    }

    return 1;
  }

  return 2;
}

void *sub_24D76DEA4(uint64_t a1)
{
  v3 = a1;
  if (!*off_281C13BC8())
  {
    sub_24D85D604();
  }

  v1 = off_281C13BB0();
  return sub_24D78F684(v1, &v3);
}

uint64_t sub_24D76DEFC()
{
  if (!*off_281C13BC8())
  {
    sub_24D85D604();
  }

  return off_281C13BB0();
}

uint64_t sub_24D76DFE8()
{
  if (!*off_281C13BC8())
  {
    sub_24D85D604();
  }

  v0 = off_281C13BB0();
  --v0[5];

  return sub_24D78FCF0(v0, 1);
}

void sub_24D76E04C(uint64_t a1)
{
  if (!*off_281C13BC8())
  {
    sub_24D85D604();
  }

  v2 = off_281C13BB0();
  v3 = v2[5] + v2[4] - 1;
  v4 = *(*(v2[1] + ((v3 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v3 & 0x1FF));
  if (a1)
  {
    v5 = *(a1 + 8);
  }

  sub_24D809F40();
}

int *agxps_timeseries_div_tt(int *a1, int *a2, int *a3, int a4)
{
  v4 = 0;
  if (a1 && a2 && a3)
  {
    if ((a3[8] & 1) == 0 && (v5 = *(a1 + 1), v5 == *(a2 + 1)) && v5 == *(a3 + 1))
    {
      v6 = *a1;
      v7 = *a2;
      v8 = *a3;
      if (*a1 == 2)
      {
        switch(v7)
        {
          case 2:
            switch(v8)
            {
              case 2:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v265 = *(a1 + 2);
                    v266 = *(a2 + 2);
                    v267 = *(a3 + 2);
                    do
                    {
                      v269 = *v266++;
                      v268 = v269;
                      if (v269)
                      {
                        v268 = *v265 / v268;
                      }

                      *v267++ = v268;
                      ++v265;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v142 = *(a1 + 2);
                  v143 = *(a2 + 2);
                  v144 = *(a3 + 2);
                  do
                  {
                    v146 = *v143++;
                    v145 = v146;
                    if (v146)
                    {
                      v147 = *v142 / v145;
                    }

                    else
                    {
                      LOBYTE(v147) = -1;
                    }

                    *v144++ = v147;
                    ++v142;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 1:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v210 = *(a1 + 2);
                    v211 = *(a2 + 2);
                    v212 = *(a3 + 2);
                    do
                    {
                      v214 = *v211++;
                      v213 = v214;
                      if (v214)
                      {
                        v215 = *v210 / v213;
                      }

                      else
                      {
                        v215 = 0;
                      }

                      *v212++ = v215;
                      ++v210;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v109 = *(a1 + 2);
                  v110 = *(a2 + 2);
                  v111 = *(a3 + 2);
                  do
                  {
                    v113 = *v110++;
                    v112 = v113;
                    if (v113)
                    {
                      v114 = *v109 / v112;
                    }

                    else
                    {
                      v114 = -1;
                    }

                    *v111++ = v114;
                    ++v109;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 0:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v270 = *(a1 + 2);
                    v271 = *(a2 + 2);
                    v272 = *(a3 + 2);
                    do
                    {
                      v273 = *v270++;
                      v274 = v273;
                      v275 = *v271++;
                      v276 = v274 / v275;
                      if (!v275)
                      {
                        v276 = 0.0;
                      }

                      *v272++ = v276;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v51 = *(a1 + 2);
                  v52 = *(a2 + 2);
                  v53 = *(a3 + 2);
                  do
                  {
                    v54 = *v51++;
                    v55 = v54;
                    v56 = *v52++;
                    *v53++ = v55 / v56;
                    --v5;
                  }

                  while (v5);
                }

                break;
            }

            break;
          case 1:
            switch(v8)
            {
              case 2:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v205 = *(a1 + 2);
                    v206 = *(a2 + 2);
                    v207 = *(a3 + 2);
                    do
                    {
                      v209 = *v206;
                      v206 += 8;
                      v208 = v209;
                      if (v209)
                      {
                        v208 = *v205 / v208;
                      }

                      *v207++ = v208;
                      ++v205;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v103 = *(a1 + 2);
                  v104 = *(a2 + 2);
                  v105 = *(a3 + 2);
                  do
                  {
                    v107 = *v104;
                    v104 += 8;
                    v106 = v107;
                    if (v107)
                    {
                      v108 = *v103 / v106;
                    }

                    else
                    {
                      LOBYTE(v108) = -1;
                    }

                    *v105++ = v108;
                    ++v103;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 1:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v179 = *(a1 + 2);
                    v180 = *(a2 + 2);
                    v181 = *(a3 + 2);
                    do
                    {
                      v183 = *v180++;
                      v182 = v183;
                      if (v183)
                      {
                        v182 = *v179 / v182;
                      }

                      *v181++ = v182;
                      ++v179;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v80 = *(a1 + 2);
                  v81 = *(a2 + 2);
                  v82 = *(a3 + 2);
                  do
                  {
                    v84 = *v81++;
                    v83 = v84;
                    if (v84)
                    {
                      v85 = *v80 / v83;
                    }

                    else
                    {
                      v85 = -1;
                    }

                    *v82++ = v85;
                    ++v80;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 0:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v222 = *(a1 + 2);
                    v223 = *(a2 + 2);
                    v224 = *(a3 + 2);
                    do
                    {
                      v225 = *v222++;
                      v226 = v225;
                      v227 = *v223++;
                      v228 = v226 / v227;
                      if (!v227)
                      {
                        v228 = 0.0;
                      }

                      *v224++ = v228;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v39 = *(a1 + 2);
                  v40 = *(a2 + 2);
                  v41 = *(a3 + 2);
                  do
                  {
                    v42 = *v39++;
                    v43 = v42;
                    v44 = *v40++;
                    *v41++ = v43 / v44;
                    --v5;
                  }

                  while (v5);
                }

                break;
            }

            break;
          case 0:
            switch(v8)
            {
              case 2:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v277 = *(a1 + 2);
                    v278 = *(a2 + 2);
                    v279 = *(a3 + 2);
                    do
                    {
                      v280 = *v278;
                      if (v280)
                      {
                        v280 = *v277 / v280;
                      }

                      *v279++ = v280;
                      ++v277;
                      ++v278;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v148 = *(a1 + 2);
                  v149 = *(a2 + 2);
                  v150 = *(a3 + 2);
                  do
                  {
                    v151 = *v149;
                    if (v151)
                    {
                      v152 = *v148 / v151;
                    }

                    else
                    {
                      LOBYTE(v152) = -1;
                    }

                    *v150++ = v152;
                    ++v148;
                    ++v149;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 1:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v233 = *(a1 + 2);
                    v234 = *(a2 + 2);
                    v235 = *(a3 + 2);
                    do
                    {
                      v236 = *v234;
                      if (v236)
                      {
                        v236 = *v233 / v236;
                      }

                      *v235++ = v236;
                      ++v233;
                      ++v234;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v120 = *(a1 + 2);
                  v121 = *(a2 + 2);
                  v122 = *(a3 + 2);
                  do
                  {
                    v123 = *v121;
                    if (v123)
                    {
                      v124 = *v120 / v123;
                    }

                    else
                    {
                      v124 = -1;
                    }

                    *v122++ = v124;
                    ++v120;
                    ++v121;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 0:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v286 = *(a1 + 2);
                    v287 = *(a2 + 2);
                    v288 = *(a3 + 2);
                    do
                    {
                      v289 = *v286++;
                      v290 = v289;
                      v291 = *v287++;
                      v292 = v290 / v291;
                      if (v291 == 0.0)
                      {
                        v292 = 0.0;
                      }

                      *v288++ = v292;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v22 = *(a1 + 2);
                  v23 = *(a2 + 2);
                  v24 = *(a3 + 2);
                  do
                  {
                    v25 = *v22++;
                    v26 = v25;
                    v27 = *v23++;
                    *v24++ = v26 / v27;
                    --v5;
                  }

                  while (v5);
                }

                break;
            }

            break;
        }
      }

      else if (v6 == 1)
      {
        switch(v7)
        {
          case 2:
            switch(v8)
            {
              case 2:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v200 = *(a1 + 2);
                    v201 = *(a2 + 2);
                    v202 = *(a3 + 2);
                    do
                    {
                      v204 = *v201++;
                      v203 = v204;
                      if (v204)
                      {
                        v203 = *v200 / v203;
                      }

                      *v202++ = v203;
                      v200 += 8;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v97 = *(a1 + 2);
                  v98 = *(a2 + 2);
                  v99 = *(a3 + 2);
                  do
                  {
                    v101 = *v98++;
                    v100 = v101;
                    if (v101)
                    {
                      v102 = *v97 / v100;
                    }

                    else
                    {
                      LOBYTE(v102) = -1;
                    }

                    *v99++ = v102;
                    v97 += 8;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 1:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v174 = *(a1 + 2);
                    v175 = *(a2 + 2);
                    v176 = *(a3 + 2);
                    do
                    {
                      v178 = *v175++;
                      v177 = v178;
                      if (v178)
                      {
                        v177 = *v174 / v177;
                      }

                      *v176++ = v177;
                      ++v174;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v74 = *(a1 + 2);
                  v75 = *(a2 + 2);
                  v76 = *(a3 + 2);
                  do
                  {
                    v78 = *v75++;
                    v77 = v78;
                    if (v78)
                    {
                      v79 = *v74 / v77;
                    }

                    else
                    {
                      v79 = -1;
                    }

                    *v76++ = v79;
                    ++v74;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 0:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v216 = *(a1 + 2);
                    v217 = *(a2 + 2);
                    v218 = *(a3 + 2);
                    do
                    {
                      v219 = *v216++;
                      v220 = v219;
                      LODWORD(v219) = *v217++;
                      v221 = v220 / v219;
                      if (!v219)
                      {
                        v221 = 0.0;
                      }

                      *v218++ = v221;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v34 = *(a1 + 2);
                  v35 = *(a2 + 2);
                  v36 = *(a3 + 2);
                  do
                  {
                    v37 = *v34++;
                    v38 = v37;
                    LODWORD(v37) = *v35++;
                    *v36++ = v38 / v37;
                    --v5;
                  }

                  while (v5);
                }

                break;
            }

            break;
          case 1:
            switch(v8)
            {
              case 2:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v169 = *(a1 + 2);
                    v170 = *(a2 + 2);
                    v171 = *(a3 + 2);
                    do
                    {
                      v173 = *v170;
                      v170 += 8;
                      v172 = v173;
                      if (v173)
                      {
                        v172 = *v169 / v172;
                      }

                      *v171++ = v172;
                      v169 += 8;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v68 = *(a1 + 2);
                  v69 = *(a2 + 2);
                  v70 = *(a3 + 2);
                  do
                  {
                    v72 = *v69;
                    v69 += 8;
                    v71 = v72;
                    if (v72)
                    {
                      v73 = *v68 / v71;
                    }

                    else
                    {
                      LOBYTE(v73) = -1;
                    }

                    *v70++ = v73;
                    v68 += 8;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 1:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v164 = *(a1 + 2);
                    v165 = *(a2 + 2);
                    v166 = *(a3 + 2);
                    do
                    {
                      v168 = *v165++;
                      v167 = v168;
                      if (v168)
                      {
                        v167 = *v164 / v167;
                      }

                      *v166++ = v167;
                      ++v164;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v62 = *(a1 + 2);
                  v63 = *(a2 + 2);
                  v64 = *(a3 + 2);
                  do
                  {
                    v66 = *v63++;
                    v65 = v66;
                    if (v66)
                    {
                      v67 = *v62 / v65;
                    }

                    else
                    {
                      v67 = -1;
                    }

                    *v64++ = v67;
                    ++v62;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 0:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v184 = *(a1 + 2);
                    v185 = *(a2 + 2);
                    v186 = *(a3 + 2);
                    do
                    {
                      v187 = *v184++;
                      v188 = v187;
                      v189 = *v185++;
                      v190 = v188 / v189;
                      if (!v189)
                      {
                        v190 = 0.0;
                      }

                      *v186++ = v190;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v28 = *(a1 + 2);
                  v29 = *(a2 + 2);
                  v30 = *(a3 + 2);
                  do
                  {
                    v31 = *v28++;
                    v32 = v31;
                    v33 = *v29++;
                    *v30++ = v32 / v33;
                    --v5;
                  }

                  while (v5);
                }

                break;
            }

            break;
          case 0:
            switch(v8)
            {
              case 2:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v229 = *(a1 + 2);
                    v230 = *(a2 + 2);
                    v231 = *(a3 + 2);
                    do
                    {
                      v232 = *v230;
                      if (v232)
                      {
                        v232 = *v229 / v232;
                      }

                      *v231++ = v232;
                      v229 += 8;
                      ++v230;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v115 = *(a1 + 2);
                  v116 = *(a2 + 2);
                  v117 = *(a3 + 2);
                  do
                  {
                    v118 = *v116;
                    if (v118)
                    {
                      v119 = *v115 / v118;
                    }

                    else
                    {
                      LOBYTE(v119) = -1;
                    }

                    *v117++ = v119;
                    v115 += 8;
                    ++v116;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 1:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v191 = *(a1 + 2);
                    v192 = *(a2 + 2);
                    v193 = *(a3 + 2);
                    do
                    {
                      v194 = *v192;
                      if (v194)
                      {
                        v194 = *v191 / v194;
                      }

                      *v193++ = v194;
                      ++v191;
                      ++v192;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v86 = *(a1 + 2);
                  v87 = *(a2 + 2);
                  v88 = *(a3 + 2);
                  do
                  {
                    v89 = *v87;
                    if (v89)
                    {
                      v90 = *v86 / v89;
                    }

                    else
                    {
                      v90 = -1;
                    }

                    *v88++ = v90;
                    ++v86;
                    ++v87;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 0:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v247 = *(a1 + 2);
                    v248 = *(a2 + 2);
                    v249 = *(a3 + 2);
                    do
                    {
                      v250 = *v247++;
                      v251 = v250;
                      v252 = *v248++;
                      v253 = v251 / v252;
                      if (v252 == 0.0)
                      {
                        v253 = 0.0;
                      }

                      *v249++ = v253;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v16 = *(a1 + 2);
                  v17 = *(a2 + 2);
                  v18 = *(a3 + 2);
                  do
                  {
                    v19 = *v16++;
                    v20 = v19;
                    v21 = *v17++;
                    *v18++ = v20 / v21;
                    --v5;
                  }

                  while (v5);
                }

                break;
            }

            break;
        }
      }

      else if (!v6)
      {
        switch(v7)
        {
          case 2:
            switch(v8)
            {
              case 2:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v281 = *(a1 + 2);
                    v282 = *(a2 + 2);
                    v283 = *(a3 + 2);
                    do
                    {
                      v285 = *v282++;
                      v284 = v285;
                      if (v285)
                      {
                        v284 = *v281 / v284;
                      }

                      *v283++ = v284;
                      ++v281;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v153 = *(a1 + 2);
                  v154 = *(a2 + 2);
                  v155 = *(a3 + 2);
                  do
                  {
                    v157 = *v154++;
                    v156 = v157;
                    if (v157)
                    {
                      v158 = *v153 / v156;
                    }

                    else
                    {
                      LOBYTE(v158) = -1;
                    }

                    *v155++ = v158;
                    ++v153;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 1:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v242 = *(a1 + 2);
                    v243 = *(a2 + 2);
                    v244 = *(a3 + 2);
                    do
                    {
                      v246 = *v243++;
                      v245 = v246;
                      if (v246)
                      {
                        v245 = *v242 / v245;
                      }

                      *v244++ = v245;
                      ++v242;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v131 = *(a1 + 2);
                  v132 = *(a2 + 2);
                  v133 = *(a3 + 2);
                  do
                  {
                    v135 = *v132++;
                    v134 = v135;
                    if (v135)
                    {
                      v136 = *v131 / v134;
                    }

                    else
                    {
                      v136 = -1;
                    }

                    *v133++ = v136;
                    ++v131;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 0:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v293 = *(a1 + 2);
                    v294 = *(a2 + 2);
                    v295 = *(a3 + 2);
                    do
                    {
                      v296 = *v293++;
                      v297 = v296;
                      LODWORD(v296) = *v294++;
                      v298 = v297 / LODWORD(v296);
                      if (!LODWORD(v296))
                      {
                        v298 = 0.0;
                      }

                      *v295++ = v298;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v57 = *(a1 + 2);
                  v58 = *(a2 + 2);
                  v59 = *(a3 + 2);
                  do
                  {
                    v60 = *v57++;
                    v61 = v60;
                    LODWORD(v60) = *v58++;
                    *v59++ = v61 / LODWORD(v60);
                    --v5;
                  }

                  while (v5);
                }

                break;
            }

            break;
          case 1:
            switch(v8)
            {
              case 2:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v237 = *(a1 + 2);
                    v238 = *(a2 + 2);
                    v239 = *(a3 + 2);
                    do
                    {
                      v241 = *v238;
                      v238 += 8;
                      v240 = v241;
                      if (v241)
                      {
                        v240 = *v237 / v240;
                      }

                      *v239++ = v240;
                      ++v237;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v125 = *(a1 + 2);
                  v126 = *(a2 + 2);
                  v127 = *(a3 + 2);
                  do
                  {
                    v129 = *v126;
                    v126 += 8;
                    v128 = v129;
                    if (v129)
                    {
                      v130 = *v125 / v128;
                    }

                    else
                    {
                      LOBYTE(v130) = -1;
                    }

                    *v127++ = v130;
                    ++v125;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 1:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v195 = *(a1 + 2);
                    v196 = *(a2 + 2);
                    v197 = *(a3 + 2);
                    do
                    {
                      v199 = *v196++;
                      v198 = v199;
                      if (v199)
                      {
                        v198 = *v195 / v198;
                      }

                      *v197++ = v198;
                      ++v195;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v91 = *(a1 + 2);
                  v92 = *(a2 + 2);
                  v93 = *(a3 + 2);
                  do
                  {
                    v95 = *v92++;
                    v94 = v95;
                    if (v95)
                    {
                      v96 = *v91 / v94;
                    }

                    else
                    {
                      v96 = -1;
                    }

                    *v93++ = v96;
                    ++v91;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 0:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v254 = *(a1 + 2);
                    v255 = *(a2 + 2);
                    v256 = *(a3 + 2);
                    do
                    {
                      v257 = *v254++;
                      v258 = v257;
                      v259 = *v255++;
                      v260 = v258 / v259;
                      if (!v259)
                      {
                        v260 = 0.0;
                      }

                      *v256++ = v260;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v45 = *(a1 + 2);
                  v46 = *(a2 + 2);
                  v47 = *(a3 + 2);
                  do
                  {
                    v48 = *v45++;
                    v49 = v48;
                    v50 = *v46++;
                    *v47++ = v49 / v50;
                    --v5;
                  }

                  while (v5);
                }

                break;
            }

            break;
          case 0:
            switch(v8)
            {
              case 2:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v299 = *(a1 + 2);
                    v300 = *(a2 + 2);
                    v301 = *(a3 + 2);
                    do
                    {
                      v302 = *v300;
                      if (v302)
                      {
                        v302 = *v299 / v302;
                      }

                      *v301++ = v302;
                      ++v299;
                      ++v300;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v159 = *(a1 + 2);
                  v160 = *(a2 + 2);
                  v161 = *(a3 + 2);
                  do
                  {
                    v162 = *v160;
                    if (v162)
                    {
                      v163 = *v159 / v162;
                    }

                    else
                    {
                      LOBYTE(v163) = -1;
                    }

                    *v161++ = v163;
                    ++v159;
                    ++v160;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 1:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v261 = *(a1 + 2);
                    v262 = *(a2 + 2);
                    v263 = *(a3 + 2);
                    do
                    {
                      v264 = *v262;
                      if (v264)
                      {
                        v264 = *v261 / v264;
                      }

                      *v263++ = v264;
                      ++v261;
                      ++v262;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v137 = *(a1 + 2);
                  v138 = *(a2 + 2);
                  v139 = *(a3 + 2);
                  do
                  {
                    v140 = *v138;
                    if (v140)
                    {
                      v141 = *v137 / v140;
                    }

                    else
                    {
                      v141 = -1;
                    }

                    *v139++ = v141;
                    ++v137;
                    ++v138;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 0:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v303 = *(a1 + 2);
                    v304 = *(a2 + 2);
                    v305 = *(a3 + 2);
                    do
                    {
                      v306 = *v303++;
                      v307 = v306;
                      v308 = *v304++;
                      v309 = v307 / v308;
                      if (v308 == 0.0)
                      {
                        v309 = 0.0;
                      }

                      *v305++ = v309;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v9 = *(a1 + 2);
                  v10 = *(a2 + 2);
                  v11 = *(a3 + 2);
                  do
                  {
                    v12 = *v9++;
                    v13 = v12;
                    v14 = *v10++;
                    *v11++ = v13 / v14;
                    --v5;
                  }

                  while (v5);
                }

                break;
            }

            break;
        }
      }

      return a3;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_24D76EFF0(unsigned int *a1, unsigned int a2, unsigned int a3)
{
  result = 0;
  if (a1 && a2 <= 0x3F && a2 >= a3)
  {
    v5 = *a1;
    v6 = *(a1 + 1);
    if (!*off_281C13BC8())
    {
      sub_24D85D604();
    }

    v7 = off_281C13BB0();
    v8 = v7[5] + v7[4] - 1;
    v9 = *(*(v7[1] + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF));
    sub_24D809F40();
  }

  return result;
}

int *agxps_timeseries_add_tt(int *a1, int *a2, int *a3, int a4)
{
  v4 = 0;
  if (a1 && a2 && a3)
  {
    if ((a3[8] & 1) == 0 && (v5 = *(a1 + 1), v5 == *(a2 + 1)) && v5 == *(a3 + 1))
    {
      v6 = *a1;
      v7 = *a2;
      v8 = *a3;
      if (*a1 == 2)
      {
        switch(v7)
        {
          case 2:
            switch(v8)
            {
              case 2:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v276 = *(a1 + 2);
                    v277 = *(a2 + 2);
                    v278 = *(a3 + 2);
                    do
                    {
                      v280 = *v276++;
                      v279 = v280;
                      v281 = *v277++;
                      *v278++ = v281 + v279;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v143 = *(a1 + 2);
                  v144 = *(a2 + 2);
                  v145 = *(a3 + 2);
                  do
                  {
                    v147 = *v143++;
                    v146 = v147;
                    v148 = *v144++;
                    *v145++ = v148 + v146;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 1:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v219 = *(a1 + 2);
                    v220 = *(a2 + 2);
                    v221 = *(a3 + 2);
                    do
                    {
                      v223 = *v219++;
                      v222 = v223;
                      v224 = *v220++;
                      *v221++ = v224 + v222;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v109 = *(a1 + 2);
                  v110 = *(a2 + 2);
                  v111 = *(a3 + 2);
                  do
                  {
                    v113 = *v109++;
                    v112 = v113;
                    v114 = *v110++;
                    *v111++ = v114 + v112;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 0:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v282 = *(a1 + 2);
                    v283 = *(a2 + 2);
                    v284 = *(a3 + 2);
                    do
                    {
                      v285 = *v282++;
                      v286 = v285;
                      v287 = *v283++;
                      *v284++ = v286 + v287;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v51 = *(a1 + 2);
                  v52 = *(a2 + 2);
                  v53 = *(a3 + 2);
                  do
                  {
                    v54 = *v51++;
                    v55 = v54;
                    v56 = *v52++;
                    *v53++ = v55 + v56;
                    --v5;
                  }

                  while (v5);
                }

                break;
            }

            break;
          case 1:
            switch(v8)
            {
              case 2:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v213 = *(a1 + 2);
                    v214 = *(a2 + 2);
                    v215 = *(a3 + 2);
                    do
                    {
                      v217 = *v213++;
                      v216 = v217;
                      v218 = *v214;
                      v214 += 8;
                      *v215++ = v216 + v218;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v103 = *(a1 + 2);
                  v104 = *(a2 + 2);
                  v105 = *(a3 + 2);
                  do
                  {
                    v107 = *v103++;
                    v106 = v107;
                    v108 = *v104;
                    v104 += 8;
                    *v105++ = v106 + v108;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 1:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v183 = *(a1 + 2);
                    v184 = *(a2 + 2);
                    v185 = *(a3 + 2);
                    do
                    {
                      v187 = *v183++;
                      v186 = v187;
                      v188 = *v184++;
                      *v185++ = v188 + v186;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v79 = *(a1 + 2);
                  v80 = *(a2 + 2);
                  v81 = *(a3 + 2);
                  do
                  {
                    v83 = *v79++;
                    v82 = v83;
                    v84 = *v80++;
                    *v81++ = v84 + v82;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 0:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v230 = *(a1 + 2);
                    v231 = *(a2 + 2);
                    v232 = *(a3 + 2);
                    do
                    {
                      v233 = *v230++;
                      v234 = v233;
                      v235 = *v231++;
                      *v232++ = v234 + v235;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v39 = *(a1 + 2);
                  v40 = *(a2 + 2);
                  v41 = *(a3 + 2);
                  do
                  {
                    v42 = *v39++;
                    v43 = v42;
                    v44 = *v40++;
                    *v41++ = v43 + v44;
                    --v5;
                  }

                  while (v5);
                }

                break;
            }

            break;
          case 0:
            switch(v8)
            {
              case 2:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v288 = *(a1 + 2);
                    v289 = *(a2 + 2);
                    v290 = *(a3 + 2);
                    do
                    {
                      v292 = *v288++;
                      v291 = v292;
                      v293 = *v289++;
                      *v290++ = v291 + v293;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v149 = *(a1 + 2);
                  v150 = *(a2 + 2);
                  v151 = *(a3 + 2);
                  do
                  {
                    v153 = *v149++;
                    v152 = v153;
                    v154 = *v150++;
                    *v151++ = v152 + v154;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 1:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v242 = *(a1 + 2);
                    v243 = *(a2 + 2);
                    v244 = *(a3 + 2);
                    do
                    {
                      v246 = *v242++;
                      v245 = v246;
                      v247 = *v243++;
                      *v244++ = v247 + v245;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v121 = *(a1 + 2);
                  v122 = *(a2 + 2);
                  v123 = *(a3 + 2);
                  do
                  {
                    v125 = *v121++;
                    v124 = v125;
                    v126 = *v122++;
                    *v123++ = v126 + v124;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 0:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v299 = *(a1 + 2);
                    v300 = *(a2 + 2);
                    v301 = *(a3 + 2);
                    do
                    {
                      v302 = *v299++;
                      v303 = v302;
                      v304 = *v300++;
                      *v301++ = v304 + v303;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v22 = *(a1 + 2);
                  v23 = *(a2 + 2);
                  v24 = *(a3 + 2);
                  do
                  {
                    v25 = *v22++;
                    v26 = v25;
                    v27 = *v23++;
                    *v24++ = v27 + v26;
                    --v5;
                  }

                  while (v5);
                }

                break;
            }

            break;
        }
      }

      else if (v6 == 1)
      {
        switch(v7)
        {
          case 2:
            switch(v8)
            {
              case 2:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v207 = *(a1 + 2);
                    v208 = *(a2 + 2);
                    v209 = *(a3 + 2);
                    do
                    {
                      v211 = *v207;
                      v207 += 8;
                      v210 = v211;
                      v212 = *v208++;
                      *v209++ = v212 + v210;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v97 = *(a1 + 2);
                  v98 = *(a2 + 2);
                  v99 = *(a3 + 2);
                  do
                  {
                    v101 = *v97;
                    v97 += 8;
                    v100 = v101;
                    v102 = *v98++;
                    *v99++ = v102 + v100;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 1:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v178 = *(a1 + 2);
                    v179 = *(a2 + 2);
                    v180 = *(a3 + 2);
                    do
                    {
                      v182 = *v178++;
                      v181 = v182;
                      LODWORD(v182) = *v179++;
                      *v180++ = v181 + v182;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v74 = *(a1 + 2);
                  v75 = *(a2 + 2);
                  v76 = *(a3 + 2);
                  do
                  {
                    v78 = *v74++;
                    v77 = v78;
                    LODWORD(v78) = *v75++;
                    *v76++ = v77 + v78;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 0:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v225 = *(a1 + 2);
                    v226 = *(a2 + 2);
                    v227 = *(a3 + 2);
                    do
                    {
                      v228 = *v225++;
                      v229 = v228;
                      LODWORD(v228) = *v226++;
                      *v227++ = v229 + v228;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v34 = *(a1 + 2);
                  v35 = *(a2 + 2);
                  v36 = *(a3 + 2);
                  do
                  {
                    v37 = *v34++;
                    v38 = v37;
                    LODWORD(v37) = *v35++;
                    *v36++ = v38 + v37;
                    --v5;
                  }

                  while (v5);
                }

                break;
            }

            break;
          case 1:
            switch(v8)
            {
              case 2:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v172 = *(a1 + 2);
                    v173 = *(a2 + 2);
                    v174 = *(a3 + 2);
                    do
                    {
                      v176 = *v172;
                      v172 += 8;
                      v175 = v176;
                      v177 = *v173;
                      v173 += 8;
                      *v174++ = v177 + v175;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v68 = *(a1 + 2);
                  v69 = *(a2 + 2);
                  v70 = *(a3 + 2);
                  do
                  {
                    v72 = *v68;
                    v68 += 8;
                    v71 = v72;
                    v73 = *v69;
                    v69 += 8;
                    *v70++ = v73 + v71;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 1:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v166 = *(a1 + 2);
                    v167 = *(a2 + 2);
                    v168 = *(a3 + 2);
                    do
                    {
                      v170 = *v166++;
                      v169 = v170;
                      v171 = *v167++;
                      *v168++ = v171 + v169;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v62 = *(a1 + 2);
                  v63 = *(a2 + 2);
                  v64 = *(a3 + 2);
                  do
                  {
                    v66 = *v62++;
                    v65 = v66;
                    v67 = *v63++;
                    *v64++ = v67 + v65;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 0:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v189 = *(a1 + 2);
                    v190 = *(a2 + 2);
                    v191 = *(a3 + 2);
                    do
                    {
                      v192 = *v189++;
                      v193 = v192;
                      v194 = *v190++;
                      *v191++ = v193 + v194;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v28 = *(a1 + 2);
                  v29 = *(a2 + 2);
                  v30 = *(a3 + 2);
                  do
                  {
                    v31 = *v28++;
                    v32 = v31;
                    v33 = *v29++;
                    *v30++ = v32 + v33;
                    --v5;
                  }

                  while (v5);
                }

                break;
            }

            break;
          case 0:
            switch(v8)
            {
              case 2:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v236 = *(a1 + 2);
                    v237 = *(a2 + 2);
                    v238 = *(a3 + 2);
                    do
                    {
                      v240 = *v236;
                      v236 += 8;
                      v239 = v240;
                      v241 = *v237++;
                      *v238++ = v241 + v239;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v115 = *(a1 + 2);
                  v116 = *(a2 + 2);
                  v117 = *(a3 + 2);
                  do
                  {
                    v119 = *v115;
                    v115 += 8;
                    v118 = v119;
                    v120 = *v116++;
                    *v117++ = v120 + v118;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 1:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v195 = *(a1 + 2);
                    v196 = *(a2 + 2);
                    v197 = *(a3 + 2);
                    do
                    {
                      v199 = *v195++;
                      v198 = v199;
                      v200 = *v196++;
                      *v197++ = v198 + v200;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v85 = *(a1 + 2);
                  v86 = *(a2 + 2);
                  v87 = *(a3 + 2);
                  do
                  {
                    v89 = *v85++;
                    v88 = v89;
                    v90 = *v86++;
                    *v87++ = v88 + v90;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 0:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v258 = *(a1 + 2);
                    v259 = *(a2 + 2);
                    v260 = *(a3 + 2);
                    do
                    {
                      v261 = *v258++;
                      v262 = v261;
                      v263 = *v259++;
                      *v260++ = v263 + v262;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v16 = *(a1 + 2);
                  v17 = *(a2 + 2);
                  v18 = *(a3 + 2);
                  do
                  {
                    v19 = *v16++;
                    v20 = v19;
                    v21 = *v17++;
                    *v18++ = v21 + v20;
                    --v5;
                  }

                  while (v5);
                }

                break;
            }

            break;
        }
      }

      else if (!v6)
      {
        switch(v7)
        {
          case 2:
            switch(v8)
            {
              case 2:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v294 = *(a1 + 2);
                    v295 = *(a2 + 2);
                    v296 = *(a3 + 2);
                    do
                    {
                      v297 = *v294++;
                      v298 = v297;
                      LOBYTE(v297) = *v295++;
                      *v296++ = LOBYTE(v297) + v298;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v155 = *(a1 + 2);
                  v156 = *(a2 + 2);
                  v157 = *(a3 + 2);
                  do
                  {
                    v158 = *v155++;
                    v159 = v158;
                    LOBYTE(v158) = *v156++;
                    *v157++ = LOBYTE(v158) + v159;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 1:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v253 = *(a1 + 2);
                    v254 = *(a2 + 2);
                    v255 = *(a3 + 2);
                    do
                    {
                      v256 = *v253++;
                      v257 = v256;
                      LODWORD(v256) = *v254++;
                      *v255++ = LODWORD(v256) + v257;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v132 = *(a1 + 2);
                  v133 = *(a2 + 2);
                  v134 = *(a3 + 2);
                  do
                  {
                    v135 = *v132++;
                    v136 = v135;
                    LODWORD(v135) = *v133++;
                    *v134++ = LODWORD(v135) + v136;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 0:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v305 = *(a1 + 2);
                    v306 = *(a2 + 2);
                    v307 = *(a3 + 2);
                    do
                    {
                      v308 = *v305++;
                      v309 = v308;
                      LODWORD(v308) = *v306++;
                      *v307++ = v309 + LODWORD(v308);
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v57 = *(a1 + 2);
                  v58 = *(a2 + 2);
                  v59 = *(a3 + 2);
                  do
                  {
                    v60 = *v57++;
                    v61 = v60;
                    LODWORD(v60) = *v58++;
                    *v59++ = v61 + LODWORD(v60);
                    --v5;
                  }

                  while (v5);
                }

                break;
            }

            break;
          case 1:
            switch(v8)
            {
              case 2:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v248 = *(a1 + 2);
                    v249 = *(a2 + 2);
                    v250 = *(a3 + 2);
                    do
                    {
                      v251 = *v248++;
                      v252 = v251;
                      LOBYTE(v251) = *v249;
                      v249 += 8;
                      *v250++ = LOBYTE(v251) + v252;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v127 = *(a1 + 2);
                  v128 = *(a2 + 2);
                  v129 = *(a3 + 2);
                  do
                  {
                    v130 = *v127++;
                    v131 = v130;
                    LOBYTE(v130) = *v128;
                    v128 += 8;
                    *v129++ = LOBYTE(v130) + v131;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 1:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v201 = *(a1 + 2);
                    v202 = *(a2 + 2);
                    v203 = *(a3 + 2);
                    do
                    {
                      v204 = *v201++;
                      v205 = v204;
                      v206 = *v202++;
                      *v203++ = v206 + v205;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v91 = *(a1 + 2);
                  v92 = *(a2 + 2);
                  v93 = *(a3 + 2);
                  do
                  {
                    v94 = *v91++;
                    v95 = v94;
                    v96 = *v92++;
                    *v93++ = v96 + v95;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 0:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v264 = *(a1 + 2);
                    v265 = *(a2 + 2);
                    v266 = *(a3 + 2);
                    do
                    {
                      v267 = *v264++;
                      v268 = v267;
                      v269 = *v265++;
                      *v266++ = v268 + v269;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v45 = *(a1 + 2);
                  v46 = *(a2 + 2);
                  v47 = *(a3 + 2);
                  do
                  {
                    v48 = *v45++;
                    v49 = v48;
                    v50 = *v46++;
                    *v47++ = v49 + v50;
                    --v5;
                  }

                  while (v5);
                }

                break;
            }

            break;
          case 0:
            switch(v8)
            {
              case 2:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v310 = *(a1 + 2);
                    v311 = *(a2 + 2);
                    v312 = *(a3 + 2);
                    do
                    {
                      v313 = *v310++;
                      v314 = v313;
                      v315 = *v311++;
                      *v312++ = v315 + v314;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v160 = *(a1 + 2);
                  v161 = *(a2 + 2);
                  v162 = *(a3 + 2);
                  do
                  {
                    v163 = *v160++;
                    v164 = v163;
                    v165 = *v161++;
                    *v162++ = v165 + v164;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 1:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v270 = *(a1 + 2);
                    v271 = *(a2 + 2);
                    v272 = *(a3 + 2);
                    do
                    {
                      v273 = *v270++;
                      v274 = v273;
                      v275 = *v271++;
                      *v272++ = v275 + v274;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v137 = *(a1 + 2);
                  v138 = *(a2 + 2);
                  v139 = *(a3 + 2);
                  do
                  {
                    v140 = *v137++;
                    v141 = v140;
                    v142 = *v138++;
                    *v139++ = v142 + v141;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 0:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v316 = *(a1 + 2);
                    v317 = *(a2 + 2);
                    v318 = *(a3 + 2);
                    do
                    {
                      v319 = *v316++;
                      v320 = v319;
                      v321 = *v317++;
                      *v318++ = v320 + v321;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v9 = *(a1 + 2);
                  v10 = *(a2 + 2);
                  v11 = *(a3 + 2);
                  do
                  {
                    v12 = *v9++;
                    v13 = v12;
                    v14 = *v10++;
                    *v11++ = v13 + v14;
                    --v5;
                  }

                  while (v5);
                }

                break;
            }

            break;
        }
      }

      return a3;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

void sub_24D770030(int *a1, int *a2)
{
  if (a1)
  {
    v3 = *a1;
  }

  if (a2)
  {
    v4 = *a2;
  }

  if (a1)
  {
    v5 = *(a1 + 1);
  }

  if (!*off_281C13BC8())
  {
    sub_24D85D604();
  }

  v6 = off_281C13BB0();
  v7 = v6[5] + v6[4] - 1;
  v8 = *(*(v6[1] + ((v7 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v7 & 0x1FF));

  sub_24D809F40();
}

void sub_24D77011C(uint64_t a1, int a2)
{
  if (!a1)
  {
LABEL_9:
    if (!*off_281C13BC8())
    {
      sub_24D85D604();
    }

    v4 = off_281C13BB0();
    v5 = v4[5] + v4[4] - 1;
    v6 = *(*(v4[1] + ((v5 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v5 & 0x1FF));

    sub_24D809F40();
  }

  v2 = a2 - 3;
  if ((*a1 - 3) > 0xFFFFFFFD)
  {
    if (v2 < 0xFFFFFFFE)
    {
LABEL_8:
      v3 = *(a1 + 8);
      goto LABEL_9;
    }
  }

  else if (v2 >= 0xFFFFFFFE)
  {
    goto LABEL_8;
  }

  *a1;
  goto LABEL_8;
}

int *agxps_timeseries_add_ts(int *a1, int a2, unint64_t a3, int *a4, int a5)
{
  v5 = 0;
  if (a1 && a4)
  {
    if (a4[8])
    {
      return 0;
    }

    v6 = *(a1 + 1);
    if (v6 != *(a4 + 1))
    {
      return 0;
    }

    else
    {
      v7 = *a1;
      v8 = *a4;
      if (*a1 == 2)
      {
        switch(a2)
        {
          case 2:
            switch(v8)
            {
              case 2:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v147 = *(a1 + 2);
                    v148 = *(a4 + 2);
                    do
                    {
                      v149 = *v147++;
                      *v148++ = v149 + a3;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v78 = *(a1 + 2);
                  v79 = *(a4 + 2);
                  do
                  {
                    v80 = *v78++;
                    *v79++ = v80 + a3;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 1:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v117 = *(a1 + 2);
                    v118 = *(a4 + 2);
                    do
                    {
                      v119 = *v117++;
                      *v118++ = a3 + v119;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v60 = *(a1 + 2);
                  v61 = *(a4 + 2);
                  do
                  {
                    v62 = *v60++;
                    *v61++ = a3 + v62;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 0:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v150 = *(a1 + 2);
                    v151 = *(a4 + 2);
                    do
                    {
                      v152 = *v150++;
                      *v151++ = a3 + v152;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v30 = *(a1 + 2);
                  v31 = *(a4 + 2);
                  do
                  {
                    v32 = *v30++;
                    *v31++ = a3 + v32;
                    --v6;
                  }

                  while (v6);
                }

                break;
            }

            break;
          case 1:
            switch(v8)
            {
              case 2:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v114 = *(a1 + 2);
                    v115 = *(a4 + 2);
                    do
                    {
                      v116 = *v114++;
                      *v115++ = v116 + a3;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v57 = *(a1 + 2);
                  v58 = *(a4 + 2);
                  do
                  {
                    v59 = *v57++;
                    *v58++ = v59 + a3;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 1:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v99 = *(a1 + 2);
                    v100 = *(a4 + 2);
                    do
                    {
                      v101 = *v99++;
                      *v100++ = a3 + v101;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v45 = *(a1 + 2);
                  v46 = *(a4 + 2);
                  do
                  {
                    v47 = *v45++;
                    *v46++ = a3 + v47;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 0:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v123 = *(a1 + 2);
                    v124 = *(a4 + 2);
                    do
                    {
                      v125 = *v123++;
                      *v124++ = a3 + v125;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v24 = *(a1 + 2);
                  v25 = *(a4 + 2);
                  do
                  {
                    v26 = *v24++;
                    *v25++ = a3 + v26;
                    --v6;
                  }

                  while (v6);
                }

                break;
            }

            break;
          case 0:
            switch(v8)
            {
              case 2:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v153 = *(a1 + 2);
                    v154 = *(a4 + 2);
                    do
                    {
                      v155 = *v153++;
                      *v154++ = v155 + *&a3;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v81 = *(a1 + 2);
                  v82 = *(a4 + 2);
                  do
                  {
                    v83 = *v81++;
                    *v82++ = v83 + *&a3;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 1:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v129 = *(a1 + 2);
                    v130 = *(a4 + 2);
                    do
                    {
                      v131 = *v129++;
                      *v130++ = v131 + *&a3;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v66 = *(a1 + 2);
                  v67 = *(a4 + 2);
                  do
                  {
                    v68 = *v66++;
                    *v67++ = v68 + *&a3;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 0:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v159 = *(a1 + 2);
                    v160 = *(a4 + 2);
                    do
                    {
                      v161 = *v159++;
                      *v160++ = *&a3 + v161;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v15 = *(a1 + 2);
                  v16 = *(a4 + 2);
                  do
                  {
                    v17 = *v15++;
                    *v16++ = *&a3 + v17;
                    --v6;
                  }

                  while (v6);
                }

                break;
            }

            break;
        }
      }

      else if (v7 == 1)
      {
        switch(a2)
        {
          case 2:
            switch(v8)
            {
              case 2:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v111 = *(a1 + 2);
                    v112 = *(a4 + 2);
                    do
                    {
                      v113 = *v111;
                      v111 += 8;
                      *v112++ = v113 + a3;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v54 = *(a1 + 2);
                  v55 = *(a4 + 2);
                  do
                  {
                    v56 = *v54;
                    v54 += 8;
                    *v55++ = v56 + a3;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 1:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v96 = *(a1 + 2);
                    v97 = *(a4 + 2);
                    do
                    {
                      v98 = *v96++;
                      *v97++ = v98 + a3;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v42 = *(a1 + 2);
                  v43 = *(a4 + 2);
                  do
                  {
                    v44 = *v42++;
                    *v43++ = v44 + a3;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 0:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v120 = *(a1 + 2);
                    v121 = *(a4 + 2);
                    do
                    {
                      v122 = *v120++;
                      *v121++ = a3 + v122;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v21 = *(a1 + 2);
                  v22 = *(a4 + 2);
                  do
                  {
                    v23 = *v21++;
                    *v22++ = a3 + v23;
                    --v6;
                  }

                  while (v6);
                }

                break;
            }

            break;
          case 1:
            switch(v8)
            {
              case 2:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v93 = *(a1 + 2);
                    v94 = *(a4 + 2);
                    do
                    {
                      v95 = *v93;
                      v93 += 8;
                      *v94++ = v95 + a3;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v39 = *(a1 + 2);
                  v40 = *(a4 + 2);
                  do
                  {
                    v41 = *v39;
                    v39 += 8;
                    *v40++ = v41 + a3;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 1:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v90 = *(a1 + 2);
                    v91 = *(a4 + 2);
                    do
                    {
                      v92 = *v90++;
                      *v91++ = v92 + a3;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v36 = *(a1 + 2);
                  v37 = *(a4 + 2);
                  do
                  {
                    v38 = *v36++;
                    *v37++ = v38 + a3;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 0:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v102 = *(a1 + 2);
                    v103 = *(a4 + 2);
                    do
                    {
                      v104 = *v102++;
                      *v103++ = a3 + v104;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v18 = *(a1 + 2);
                  v19 = *(a4 + 2);
                  do
                  {
                    v20 = *v18++;
                    *v19++ = a3 + v20;
                    --v6;
                  }

                  while (v6);
                }

                break;
            }

            break;
          case 0:
            switch(v8)
            {
              case 2:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v126 = *(a1 + 2);
                    v127 = *(a4 + 2);
                    do
                    {
                      v128 = *v126;
                      v126 += 8;
                      *v127++ = v128 + *&a3;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v63 = *(a1 + 2);
                  v64 = *(a4 + 2);
                  do
                  {
                    v65 = *v63;
                    v63 += 8;
                    *v64++ = v65 + *&a3;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 1:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v105 = *(a1 + 2);
                    v106 = *(a4 + 2);
                    do
                    {
                      v107 = *v105++;
                      *v106++ = v107 + *&a3;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v48 = *(a1 + 2);
                  v49 = *(a4 + 2);
                  do
                  {
                    v50 = *v48++;
                    *v49++ = v50 + *&a3;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 0:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v138 = *(a1 + 2);
                    v139 = *(a4 + 2);
                    do
                    {
                      v140 = *v138++;
                      *v139++ = *&a3 + v140;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v12 = *(a1 + 2);
                  v13 = *(a4 + 2);
                  do
                  {
                    v14 = *v12++;
                    *v13++ = *&a3 + v14;
                    --v6;
                  }

                  while (v6);
                }

                break;
            }

            break;
        }
      }

      else if (!v7)
      {
        switch(a2)
        {
          case 2:
            switch(v8)
            {
              case 2:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v156 = *(a1 + 2);
                    v157 = *(a4 + 2);
                    do
                    {
                      v158 = *v156++;
                      *v157++ = v158 + a3;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v84 = *(a1 + 2);
                  v85 = *(a4 + 2);
                  do
                  {
                    v86 = *v84++;
                    *v85++ = v86 + a3;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 1:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v135 = *(a1 + 2);
                    v136 = *(a4 + 2);
                    do
                    {
                      v137 = *v135++;
                      *v136++ = a3 + v137;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v72 = *(a1 + 2);
                  v73 = *(a4 + 2);
                  do
                  {
                    v74 = *v72++;
                    *v73++ = a3 + v74;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 0:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v162 = *(a1 + 2);
                    v163 = *(a4 + 2);
                    do
                    {
                      v164 = *v162++;
                      *v163++ = v164 + a3;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v33 = *(a1 + 2);
                  v34 = *(a4 + 2);
                  do
                  {
                    v35 = *v33++;
                    *v34++ = v35 + a3;
                    --v6;
                  }

                  while (v6);
                }

                break;
            }

            break;
          case 1:
            switch(v8)
            {
              case 2:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v132 = *(a1 + 2);
                    v133 = *(a4 + 2);
                    do
                    {
                      v134 = *v132++;
                      *v133++ = v134 + a3;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v69 = *(a1 + 2);
                  v70 = *(a4 + 2);
                  do
                  {
                    v71 = *v69++;
                    *v70++ = v71 + a3;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 1:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v108 = *(a1 + 2);
                    v109 = *(a4 + 2);
                    do
                    {
                      v110 = *v108++;
                      *v109++ = a3 + v110;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v51 = *(a1 + 2);
                  v52 = *(a4 + 2);
                  do
                  {
                    v53 = *v51++;
                    *v52++ = a3 + v53;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 0:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v141 = *(a1 + 2);
                    v142 = *(a4 + 2);
                    do
                    {
                      v143 = *v141++;
                      *v142++ = v143 + a3;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v27 = *(a1 + 2);
                  v28 = *(a4 + 2);
                  do
                  {
                    v29 = *v27++;
                    *v28++ = v29 + a3;
                    --v6;
                  }

                  while (v6);
                }

                break;
            }

            break;
          case 0:
            switch(v8)
            {
              case 2:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v165 = *(a1 + 2);
                    v166 = *(a4 + 2);
                    do
                    {
                      v167 = *v165++;
                      *v166++ = v167 + *&a3;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v87 = *(a1 + 2);
                  v88 = *(a4 + 2);
                  do
                  {
                    v89 = *v87++;
                    *v88++ = v89 + *&a3;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 1:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v144 = *(a1 + 2);
                    v145 = *(a4 + 2);
                    do
                    {
                      v146 = *v144++;
                      *v145++ = v146 + *&a3;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v75 = *(a1 + 2);
                  v76 = *(a4 + 2);
                  do
                  {
                    v77 = *v75++;
                    *v76++ = v77 + *&a3;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 0:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v168 = *(a1 + 2);
                    v169 = *(a4 + 2);
                    do
                    {
                      v170 = *v168++;
                      *v169++ = v170 + *&a3;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v9 = *(a1 + 2);
                  v10 = *(a4 + 2);
                  do
                  {
                    v11 = *v9++;
                    *v10++ = v11 + *&a3;
                    --v6;
                  }

                  while (v6);
                }

                break;
            }

            break;
        }
      }

      return a4;
    }
  }

  return v5;
}