void sub_24BC94BF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39)
{
  v41 = *(v39 - 168);
  if (v41)
  {
    *(v39 - 160) = v41;
    operator delete(v41);
  }

  v42 = *(v39 - 112);
  if (v42)
  {
    *(v39 - 104) = v42;
    operator delete(v42);
  }

  v43 = *(v39 - 240);
  if (v43)
  {
    *(v39 - 232) = v43;
    operator delete(v43);
  }

  v44 = *(v39 - 216);
  if (v44)
  {
    *(v39 - 208) = v44;
    operator delete(v44);
  }

  v45 = *(v39 - 192);
  if (v45)
  {
    *(v39 - 184) = v45;
    operator delete(v45);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BC94D00(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BC94D78(result, a2);
  }

  return result;
}

void sub_24BC94D5C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BC94D78(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_24BC94DB4(a1, a2);
  }

  sub_24BC8E01C();
}

void sub_24BC94DB4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_24BC8DFE8();
}

uint64_t sub_24BC94DFC(int a1, int a2, uint64_t *a3, int *a4, unint64_t *a5, unint64_t a6, _WORD **a7, unint64_t a8, unint64_t a9)
{
  if (a1 == a2)
  {
    v9 = *a4;
    v10 = *a4 - 8;
    if (*a4 >= 8)
    {
      v14 = *a3;
LABEL_9:
      *a4 = v10;
      v17 = v14 >> v10;
      v18 = *a7;
      if (&(*a7)[v17] > a9 || (v18 - 1) < a8)
      {
        return 0;
      }

      if (v17)
      {
        v19 = *(v18 - 1);
        do
        {
          LODWORD(v17) = v17 - 1;
          *v18++ = v19;
        }

        while (v17);
        *a7 = v18;
      }

      return 1;
    }

    v11 = *a5;
    v12 = *a5 + 1;
    if (v12 < a6)
    {
      v13 = *a3;
      *a5 = v12;
      v14 = *v11 | (v13 << 8);
      *a3 = v14;
      v10 = v9;
      goto LABEL_9;
    }
  }

  else
  {
    v15 = *a7;
    if (*a7 < a9)
    {
      *v15 = a1;
      *a7 = v15 + 1;
      return 1;
    }
  }

  return 0;
}

void *sub_24BC94EB0(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BC94F24(result, a2);
  }

  return result;
}

void sub_24BC94F08(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BC94F24(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_24BC8E01C();
}

void *sub_24BC94F74(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BC94FEC(result, a2);
  }

  return result;
}

void sub_24BC94FD0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BC94FEC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_24BC92E0C(a1, a2);
  }

  sub_24BC8E01C();
}

void *sub_24BC95028(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BC91F24(result, a2);
  }

  return result;
}

void sub_24BC95084(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BC950A0(uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C254700](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_24BC9515C(a1);
  return a1;
}

void sub_24BC95134(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_24BC9515C(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *sub_24BC95264(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x24C254360](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
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

    if (!sub_24BC9540C(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x24C254370](v13);
  return a1;
}

void sub_24BC953A4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x24C254370](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x24BC95384);
}

uint64_t sub_24BC9540C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
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
        sub_24BC8DF40();
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

void sub_24BC955D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BC955F4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_24BC8DC58(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_24BC95648(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_24BC8E120(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_24BC9569C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_24BC8E718(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_24BC956F0(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BC94F24(result, a2);
  }

  return result;
}

void sub_24BC95748(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BC95764(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BC94FEC(result, a2);
  }

  return result;
}

void sub_24BC957C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BC957DC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_24BC95830(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_24BC95830(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; sub_24BC95884(a1, i))
  {
    i -= 184;
  }

  *(a1 + 8) = a2;
}

void sub_24BC95884(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 183) < 0)
  {
    operator delete(*(a2 + 160));
  }

  if (*(a2 + 159) < 0)
  {
    operator delete(*(a2 + 136));
  }

  v3 = *(a2 + 24);
  if (v3)
  {
    *(a2 + 32) = v3;
    operator delete(v3);
  }

  v4 = a2;
  sub_24BC9569C(&v4);
}

uint64_t sub_24BC958E8(uint64_t *a1, uint64_t a2)
{
  v2 = 0xD37A6F4DE9BD37A7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1642C8590B21642)
  {
    sub_24BC8E01C();
  }

  if (0xA6F4DE9BD37A6F4ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xA6F4DE9BD37A6F4ELL * ((a1[2] - *a1) >> 3);
  }

  if (0xD37A6F4DE9BD37A7 * ((a1[2] - *a1) >> 3) >= 0xB21642C8590B21)
  {
    v6 = 0x1642C8590B21642;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_24BC95DE8(a1, v6);
  }

  v13 = 0;
  v14 = 184 * v2;
  sub_24BC95A30(184 * v2, a2);
  v15 = 184 * v2 + 184;
  v7 = a1[1];
  v8 = 184 * v2 + *a1 - v7;
  sub_24BC95E44(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_24BC96014(&v13);
  return v12;
}

void sub_24BC95A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_24BC96014(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BC95A30(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_24BC95B7C(a1, *a2, *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 8) - *a2) >> 3));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_24BC95D1C(a1 + 24, *(a2 + 24), *(a2 + 32), 0xF83E0F83E0F83E1 * ((*(a2 + 32) - *(a2 + 24)) >> 4));
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = v5;
  if (*(a2 + 159) < 0)
  {
    sub_24BC8DE9C((a1 + 136), *(a2 + 136), *(a2 + 144));
  }

  else
  {
    v8 = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 136) = v8;
  }

  if (*(a2 + 183) < 0)
  {
    sub_24BC8DE9C((a1 + 160), *(a2 + 160), *(a2 + 168));
  }

  else
  {
    v9 = *(a2 + 160);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 160) = v9;
  }

  return a1;
}

void sub_24BC95B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  if (*(v10 + 159) < 0)
  {
    operator delete(*(v10 + 136));
  }

  v13 = *v11;
  if (*v11)
  {
    *(v10 + 32) = v13;
    operator delete(v13);
  }

  a10 = v10;
  sub_24BC9569C(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_24BC95B7C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BC95C04(result, a4);
  }

  return result;
}

void sub_24BC95BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_24BC9569C(&a9);
  _Unwind_Resume(a1);
}

void sub_24BC95C04(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    sub_24BC8F760(a1, a2);
  }

  sub_24BC8E01C();
}

char *sub_24BC95C50(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v12 = __dst;
  v13 = __dst;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_24BC8DE9C(v4, *v6, *(v6 + 1));
        v8 = v13;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
        v8 = v4;
      }

      *(v4 + 24) = *(v6 + 24);
      v6 = (v6 + 40);
      v4 = v8 + 40;
      v13 = v8 + 40;
    }

    while (v6 != a3);
  }

  v11 = 1;
  sub_24BC8F874(v10);
  return v4;
}

uint64_t sub_24BC95D1C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BC95D98(result, a4);
  }

  return result;
}

void sub_24BC95D7C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BC95D98(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x7C1F07C1F07C20)
  {
    sub_24BC8E984(a1, a2);
  }

  sub_24BC8E01C();
}

void sub_24BC95DE8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1642C8590B21643)
  {
    operator new();
  }

  sub_24BC8DFE8();
}

uint64_t sub_24BC95E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a4;
  v18 = a4;
  v15[0] = a1;
  v15[1] = &v17;
  v15[2] = &v18;
  if (a2 == a3)
  {
    v16 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      v9 = *(v7 + 96);
      v8 = *(v7 + 112);
      v10 = *(v7 + 80);
      *(a4 + 128) = *(v7 + 128);
      *(a4 + 96) = v9;
      *(a4 + 112) = v8;
      *(a4 + 80) = v10;
      v11 = *(v7 + 64);
      *(a4 + 48) = *(v7 + 48);
      *(a4 + 64) = v11;
      v12 = *(v7 + 136);
      *(a4 + 152) = *(v7 + 152);
      *(a4 + 136) = v12;
      *(v7 + 144) = 0;
      *(v7 + 152) = 0;
      *(v7 + 136) = 0;
      v13 = *(v7 + 160);
      *(a4 + 176) = *(v7 + 176);
      *(a4 + 160) = v13;
      *(v7 + 160) = 0;
      *(v7 + 168) = 0;
      *(v7 + 176) = 0;
      v7 += 184;
      a4 += 184;
    }

    while (v7 != a3);
    v18 = a4;
    v16 = 1;
    while (v5 != a3)
    {
      sub_24BC95884(a1, v5);
      v5 += 184;
    }
  }

  return sub_24BC95F88(v15);
}

uint64_t sub_24BC95F88(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_24BC95FC0(a1);
  }

  return a1;
}

void sub_24BC95FC0(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 184;
      sub_24BC95884(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_24BC96014(uint64_t a1)
{
  sub_24BC9604C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_24BC9604C(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 184;
    sub_24BC95884(v5, v4 - 184);
  }
}

uint64_t sub_24BC96094(uint64_t a1, void **a2, void **a3, void *a4)
{
  v11 = a4;
  v10 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  if (a2 == a3)
  {
    v9 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v6;
      a4[2] = v6[2];
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      a4[3] = v6[3];
      v6 += 4;
      a4 += 4;
    }

    while (v6 != a3);
    v11 = a4;
    v9 = 1;
    while (v5 != a3)
    {
      v12 = v5;
      sub_24BC8EE10(&v12);
      v5 += 4;
    }
  }

  return sub_24BC96154(v8);
}

uint64_t sub_24BC96154(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_24BC9618C(a1);
  }

  return a1;
}

void sub_24BC9618C(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 4;
    v3 = v1;
    sub_24BC8EE10(&v3);
  }
}

void **sub_24BC961D8(void **a1)
{
  sub_24BC9620C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_24BC9620C(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 32);
    *(a1 + 16) = v4;
    v5 = v4;
    sub_24BC8EE10(&v5);
  }
}

void sub_24BC96260(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 5)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 32 * a2);
      v5 += 32 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 5);
    if (v7 >> 59)
    {
      sub_24BC8E01C();
    }

    v8 = v6 >> 5;
    v9 = v4 - *a1;
    if (v9 >> 4 > v7)
    {
      v7 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v18 = a1;
    if (v10)
    {
      sub_24BC8F31C(a1, v10);
    }

    v15 = 0;
    v16 = 32 * v8;
    bzero((32 * v8), 32 * a2);
    v17 = 32 * v8 + 32 * a2;
    v11 = *(a1 + 8);
    v12 = (32 * v8 + *a1 - v11);
    sub_24BC96094(a1, *a1, v11, v12);
    v13 = *a1;
    *a1 = v12;
    v14 = *(a1 + 16);
    *(a1 + 8) = v17;
    *&v17 = v13;
    *(&v17 + 1) = v14;
    v15 = v13;
    v16 = v13;
    sub_24BC961D8(&v15);
  }
}

void sub_24BC96374(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC961D8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BC96388(uint64_t a1, unsigned int *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  v10 = sub_24BCB9038(a1 + 104, a2);
  v11 = sub_24BCB9024(a1 + 104, v10);
  *a3 = *(sub_24BCB9024(a1 + 104, v11) + 12);
  v12 = sub_24BCB9038(a1 + 104, a2);
  v13 = sub_24BCB9024(a1 + 104, v12);
  v14 = sub_24BCB9024(a1 + 104, (v13 + 8));
  *a4 = *(sub_24BCB9024(a1 + 104, v14) + 12);
  v15 = sub_24BCB9038(a1 + 104, a2);
  result = sub_24BCB9024(a1 + 104, v15);
  *a5 = *(result + 12);
  return result;
}

_DWORD *sub_24BC9644C(uint64_t a1, unsigned int *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  v10 = sub_24BCB9038(a1 + 104, a2);
  *a3 = *(sub_24BCB9024(a1 + 104, v10) + 8);
  v11 = sub_24BCB9038(a1 + 104, a2);
  *a4 = *(sub_24BCB9024(a1 + 104, v11) + 4);
  result = sub_24BCB9038(a1 + 104, a2);
  *a5 = *result;
  return result;
}

void sub_24BC964DC(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = (*(a1 + 8) + 16 * *(a1 + 176));
  v4 = *v2;
  v3 = v2[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v3);
  }

  v5 = ((*(a1 + 112) - *(a1 + 104)) >> 2);
  operator new();
}

void sub_24BC965C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9EF8C(va);
  _Unwind_Resume(a1);
}

void sub_24BC965D8(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = (*(a1 + 8) + 16 * *(a1 + 176));
  v4 = *v2;
  v3 = v2[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v3);
  }

  v5 = ((*(a1 + 112) - *(a1 + 104)) >> 2);
  operator new();
}

void sub_24BC966C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9EF8C(va);
  _Unwind_Resume(a1);
}

void sub_24BC966D4(uint64_t a1)
{
  v2 = *MEMORY[0x277D85DE8];
  v1 = ((*(a1 + 160) - *(a1 + 152)) >> 2);
  operator new();
}

void sub_24BC96798(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9EF8C(va);
  _Unwind_Resume(a1);
}

double sub_24BC967AC(uint64_t a1, void *a2)
{
  v4 = -858993459 * ((*(a1 + 136) - *(a1 + 128)) >> 2);
  LOBYTE(v20) = 0;
  sub_24BC9FEFC(&__p, v4);
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0.0;
  do
  {
    v20 = v5;
    v8 = sub_24BC9ECE4(a1, *(a1 + 180), v5);
    if ((*v8 & v9) == 0)
    {
      v10 = sub_24BCB9024(a1 + 104, &v20);
      v11 = sub_24BC9ECE4(a1, *(a1 + 180), *v10);
      if ((*v11 & v12) == 0)
      {
        v13 = *(__p + (v5 >> 6));
        if ((v13 & (1 << v5)) == 0)
        {
          *(__p + (v5 >> 6)) = v13 | (1 << v5);
          v19 = *sub_24BCB9024(a1 + 104, &v20);
          *(__p + ((v19 >> 3) & 0x1FFFFFF8)) |= 1 << v19;
          v14 = *(sub_24BCB9024(a1 + 104, &v20) + 16);
          v15 = vsubq_f32(*(*a2 + 16 * v14), *(*a2 + 16 * *(sub_24BCB9024(a1 + 104, &v19) + 16)));
          v16 = vmulq_f32(v15, v15);
          v16.i32[3] = 0;
          v7 = v7 + sqrtf(vaddv_f32(*&vpaddq_f32(v16, v16)));
          ++v6;
        }
      }
    }

    ++v5;
  }

  while (v4 != v5);
  if (v6 > 0)
  {
    v17 = v7 / v6;
  }

  else
  {
LABEL_10:
    v17 = 0.0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v17;
}

void sub_24BC96954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BC96978(uint64_t a1)
{
  v2 = *MEMORY[0x277D85DE8];
  v1 = ((*(a1 + 160) - *(a1 + 152)) >> 2);
  operator new();
}

void sub_24BC96A40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9EF8C(va);
  _Unwind_Resume(a1);
}

void sub_24BC96A54(uint64_t a1, double **a2)
{
  v2 = *(a1 + 160) - *(a1 + 152);
  v3 = v2 >> 2;
  if ((v2 >> 2))
  {
    v6 = 0;
    v7 = (v2 >> 2);
    v8 = 0.0;
    do
    {
      v11 = v6;
      v9 = sub_24BC96B00(a1, &v11);
      (*a2)[v6] = v9;
      v8 = v8 + v9;
      ++v6;
    }

    while (v7 != v6);
    v10 = *a2;
    do
    {
      *v10 = *v10 / (v8 / v3);
      ++v10;
      --v7;
    }

    while (v7);
  }
}

float sub_24BC96B00(uint64_t a1, unsigned int *a2)
{
  v4 = sub_24BCB9038(a1 + 104, a2);
  v5 = sub_24BCB9024(a1 + 104, v4);
  v6 = sub_24BCB9024(a1 + 104, (v5 + 8));
  v7 = *(sub_24BCB9024(a1 + 104, v6) + 12);
  v8 = (*(a1 + 8) + 16 * *(a1 + 176));
  v10 = *v8;
  v9 = v8[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v9);
  }

  v35 = *(*(v10 + 40) + 16 * v7);
  v11 = sub_24BCB9038(a1 + 104, a2);
  v12 = sub_24BCB9024(a1 + 104, v11);
  v13 = *(sub_24BCB9024(a1 + 104, v12) + 12);
  v14 = (*(a1 + 8) + 16 * *(a1 + 176));
  v16 = *v14;
  v15 = v14[1];
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v15);
  }

  v34 = *(*(v16 + 40) + 16 * v13);
  v17 = sub_24BCB9038(a1 + 104, a2);
  v18 = *(sub_24BCB9024(a1 + 104, v17) + 12);
  v19 = (*(a1 + 8) + 16 * *(a1 + 176));
  v21 = *v19;
  v20 = v19[1];
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v20);
  }

  v33 = *(*(v21 + 40) + 16 * v18);
  v22 = sub_24BCB9038(a1 + 104, a2);
  v23 = sub_24BCB9024(a1 + 104, v22);
  v24 = *(sub_24BCB9024(a1 + 104, v23) + 12);
  v25 = (*(a1 + 8) + 16 * *(a1 + 176));
  v27 = *v25;
  v26 = v25[1];
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v26);
  }

  v28 = vsubq_f32(v35, v34);
  v29 = vsubq_f32(v33, *(*(v27 + 40) + 16 * v24));
  v30 = vmlsq_f32(vmulq_f32(vzip2q_s32(vzip1q_s32(v28, vextq_s8(v28, v28, 0xCuLL)), v28), vuzp2q_s32(vextq_s8(v29, v29, 4uLL), v29)), vzip2q_s32(vzip1q_s32(v29, vextq_s8(v29, v29, 0xCuLL)), v29), vuzp2q_s32(vextq_s8(v28, v28, 4uLL), v28));
  v31 = vmulq_f32(v30, v30);
  v31.i32[3] = 0;
  return sqrtf(vaddv_f32(*&vpaddq_f32(v31, v31))) * 0.5;
}

void sub_24BC96CEC(void *a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 8) * 3.0;
  v2 = a1[20] - a1[19];
  v6 = (a1[14] - a1[13]) >> 2;
  v7 = v2 >> 2;
  v3 = v7;
  sub_24BCA0430(v5, v7);
  sub_24BCA0430(v4, v3);
  v9 = 0;
  operator new();
}

void sub_24BC97074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char **a12, char **a13, uint64_t a14, char *a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  sub_24BC9EF8C(&a23);
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    a13 = a12;
    operator delete(a12);
  }

  a12 = &a15;
  sub_24BC8EE84(&a12);
  a15 = &a18;
  sub_24BC8EE84(&a15);
  _Unwind_Resume(a1);
}

double sub_24BC97110(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8) - *a1;
  if (!v2)
  {
    return 0.0;
  }

  v3 = v2 >> 3;
  result = 0.0;
  v5 = 1;
  do
  {
    v6 = *v1++;
    result = result + v6;
  }

  while (v3 > v5++);
  return result;
}

void sub_24BC97148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  sub_24BCA1524(v16, a4);
  v7 = ((*(a1 + 160) - *(a1 + 152)) >> 2);
  LOBYTE(v11) = 0;
  sub_24BC9FEFC(v14, v7);
  if (*(a2 + 32) == 1)
  {
    v15[0] = &unk_285F92A20;
    v15[1] = a1;
    v15[2] = v14;
    v15[3] = v15;
    sub_24BD4BB84(v7, v15, 4uLL);
    sub_24BC9EF8C(v15);
  }

  v8 = *(a3 + 8);
  v9 = *(a3 + 16);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  sub_24BCA17B8(&v11, v8, v9, (v9 - v8) >> 4);
  memset(&v10[3], 0, 24);
  sub_24BCA18B0(v10, (v12 - v11) >> 4);
  v14[14] = 0;
  operator new();
}

void sub_24BC975FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  sub_24BC9EF8C(v40 - 176);
  if (__p)
  {
    operator delete(__p);
  }

  sub_24BC9F00C(v40 - 144);
  _Unwind_Resume(a1);
}

uint64_t sub_24BC976F4(uint64_t a1, uint64_t a2, float a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_24BCA1F3C();
  }

  return (*(*v3 + 48))(v3, &v5, a2);
}

void sub_24BC9774C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = *(a3 + 36);
  sub_24BC96978(a2);
}

void sub_24BC97C40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, char ***a21, char ***a22, uint64_t a23, char **a24, uint64_t a25, uint64_t a26, char *a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34)
{
  sub_24BC9EF8C(v34 - 160);
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    a22 = a21;
    operator delete(a21);
  }

  a21 = &a24;
  sub_24BC8EE84(&a21);
  a24 = &a27;
  sub_24BC8EE84(&a24);
  a27 = &a30;
  sub_24BC8EE84(&a27);
  if (a33)
  {
    a34 = a33;
    operator delete(a33);
  }

  v36 = *(v34 - 184);
  if (v36)
  {
    *(v34 - 176) = v36;
    operator delete(v36);
  }

  _Unwind_Resume(a1);
}

void sub_24BC97D30(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    sub_24BCA1F88(a1, a2 - v2);
  }
}

void sub_24BC97D60(const void **a1, _DWORD *a2)
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
      sub_24BC8E01C();
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
      sub_24BC92E0C(a1, v12);
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

void sub_24BC97E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *MEMORY[0x277D85DE8];
  sub_24BCA1524(v11, a5);
  sub_24BCA2D38(v10, a5 + 32);
  sub_24BCA2DD0(v9, a5 + 64);
  memset(v8, 0, sizeof(v8));
  sub_24BC9774C(v8, a1, a2);
}

void sub_24BC984EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a25)
  {
    operator delete(a25);
  }

  if (a31)
  {
    operator delete(a31);
  }

  if (a37)
  {
    operator delete(a37);
  }

  sub_24BC9F10C(v44 - 184);
  sub_24BC9F08C(v44 - 152);
  sub_24BC9F00C(v44 - 120);
  _Unwind_Resume(a1);
}

uint64_t sub_24BC98654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a2;
  v6[1] = a3;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_24BCA1F3C();
  }

  return (*(*v4 + 48))(v4, v6, a4);
}

void sub_24BC986AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26[4] = *MEMORY[0x277D85DE8];
  sub_24BCA1524(v24, a4);
  sub_24BCA2DD0(v23, a4 + 64);
  sub_24BCA2D38(v22, a4 + 32);
  v8 = *(a2 + 48);
  v12[2] = *(a2 + 32);
  v12[3] = v8;
  v13 = *(a2 + 64);
  v9 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v9;
  v10 = ((*(a1 + 160) - *(a1 + 152)) >> 2);
  v11 = 0x3FF0000000000000;
  sub_24BC97D30((a3 + 8), v10);
  sub_24BC92930((a3 + 32), v10);
  sub_24BCA1524(v18, a4);
  sub_24BCA2D38(v19, a4 + 32);
  sub_24BCA2DD0(v20, a4 + 64);
  sub_24BC9ED7C(v21, a4 + 96);
  if (v25)
  {
    v26[0] = &unk_285F92C78;
    v26[1] = v24;
    v26[3] = v26;
    sub_24BCA3290(v26, v18);
    sub_24BC9F00C(v26);
  }

  sub_24BCA1524(v14, v18);
  sub_24BCA2D38(&v15, v19);
  sub_24BCA2DD0(&v16, v20);
  sub_24BC9ED7C(&v17, v21);
  sub_24BC97E40(a1, v12, &v11, a3, v14);
}

void sub_24BC98A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  if (*(v52 - 81) < 0)
  {
    operator delete(*(v52 - 104));
  }

  sub_24BC98BA0(&a52);
  sub_24BC9F08C(v52 - 200);
  sub_24BC9F10C(v52 - 168);
  sub_24BC9F00C(v52 - 136);
  _Unwind_Resume(a1);
}

uint64_t sub_24BC98BA0(uint64_t a1)
{
  sub_24BC9EE14(a1 + 96);
  sub_24BC9F10C(a1 + 64);
  sub_24BC9F08C(a1 + 32);

  return sub_24BC9F00C(a1);
}

void sub_24BC98BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = *MEMORY[0x277D85DE8];
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  v23 = 1;
  sub_24BCA1524(v28, a6);
  sub_24BCA2D38(v27, a6 + 32);
  sub_24BCA2DD0(v26, a6 + 64);
  std::chrono::system_clock::now();
  v8 = (*(a1 + 160) - *(a1 + 152)) >> 2;
  v9 = (*(a1 + 112) - *(a1 + 104)) >> 2;
  v22 = *(a2 + 40) * v8 / v9;
  v21 = v8;
  v20 = v9;
  v11 = *(a1 + 128);
  v10 = *(a1 + 136);
  sub_24BCA35BC(&v19, v8);
  LOBYTE(__p[0]) = 0;
  sub_24BC9FEFC(&v18, v21);
  LOBYTE(__p[0]) = 0;
  sub_24BC9FEFC(v17, v20);
  if (*(a2 + 32) == 1)
  {
    v25[0] = &unk_285F92D08;
    v25[1] = a1;
    v25[2] = v17;
    v25[3] = v25;
    sub_24BD4BB84(-858993459 * ((v10 - v11) >> 2), v25, 4uLL);
    sub_24BC9EF8C(v25);
  }

  v12 = (*(a1 + 8) + 16 * *(a1 + 176));
  v14 = *v12;
  v13 = v12[1];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v13);
  }

  sub_24BCA1A48(__p, v20);
  sub_24BCA3844(v16, 3uLL);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  __p[17] = 0;
  operator new();
}

void sub_24BC99C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  if (a30)
  {
    operator delete(a30);
  }

  STACK[0x240] = &a33;
  sub_24BC8EE84(&STACK[0x240]);
  STACK[0x240] = &a36;
  sub_24BC8EE84(&STACK[0x240]);
  sub_24BDCBFAC(&STACK[0x318]);
  sub_24BC9EE94(&a39);
  if (a50)
  {
    a51 = a50;
    operator delete(a50);
  }

  sub_24BCA3B84(&a53);
  STACK[0x318] = &a60;
  sub_24BC8EE84(&STACK[0x318]);
  if (a63)
  {
    operator delete(a63);
  }

  if (a66)
  {
    operator delete(a66);
  }

  if (a69)
  {
    a70 = a69;
    operator delete(a69);
  }

  sub_24BC9F10C(v70 - 232);
  sub_24BC9F08C(v70 - 200);
  sub_24BC9F00C(v70 - 168);
  _Unwind_Resume(a1);
}

void sub_24BC99E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  sub_24BCA1524(v22, a4);
  sub_24BCA2DD0(v21, a4 + 64);
  sub_24BCA2D38(v20, a4 + 32);
  std::chrono::system_clock::now();
  memset(v18, 0, sizeof(v18));
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  *__p = 0u;
  v9 = 0u;
  v6 = *(a1 + 160) - *(a1 + 152);
  sub_24BC9A554(v18, 3 * (v6 >> 2));
  v19[0] = &unk_285F92E70;
  v19[1] = a1;
  v7 = (v6 >> 2);
  v19[2] = &v8;
  v19[3] = v19;
  sub_24BD4BB84(v7, v19, 4uLL);
  sub_24BC9EF8C(v19);
  sub_24BC97D30(&v18[1] + 1, v7);
  sub_24BC966D4(a1);
}

void sub_24BC9A3F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  if (*(v11 - 113) < 0)
  {
    operator delete(*(v11 - 136));
  }

  sub_24BC98BA0(&STACK[0x238]);
  sub_24BC9EEE8(va);
  sub_24BC9F08C(v11 - 232);
  sub_24BC9F10C(v11 - 200);
  sub_24BC9F00C(v11 - 168);
  _Unwind_Resume(a1);
}

void sub_24BC9A554(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 2;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    sub_24BCA4828(a1, a2 - v2);
  }
}

double sub_24BC9A584(uint64_t a1, float32x4_t *a2, double *a3, double a4, double a5, float32x4_t a6)
{
  v9 = (*(a1 + 8) + 16 * *(a1 + 176));
  v11 = *v9;
  v10 = v9[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v10);
  }

  v12 = *(a1 + 112) - *(a1 + 104);
  v13 = v12 >> 2;
  if ((v12 >> 2))
  {
    v14 = 0;
    v15 = *(v11 + 40);
    v16 = 16 * (v12 >> 2);
    v17 = 0uLL;
    a6 = 0uLL;
    v18 = 0uLL;
    do
    {
      v19 = v15[v14 / 0x10];
      if (v14)
      {
        a6 = vmaxq_f32(a6, v19);
        v18 = vminq_f32(v18, v19);
      }

      else
      {
        v18 = *v15;
        a6 = *v15;
      }

      v17 = vaddq_f32(v17, v19);
      v14 += 16;
    }

    while (v16 != v14);
    v20 = vsubq_f32(a6, v18);
  }

  else
  {
    v17 = 0uLL;
    v20 = 0uLL;
  }

  a6.f32[0] = v13;
  v21 = vmulq_f32(v20, v20);
  v21.i32[3] = 0;
  *a2 = vdivq_f32(v17, vdupq_lane_s32(*a6.f32, 0));
  result = sqrtf(vaddv_f32(*&vpaddq_f32(v21, v21)));
  *a3 = result;
  return result;
}

uint64_t sub_24BC9A66C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  sub_24BD6B968(v24, a3);
  LODWORD(v19) = 0;
  v20 = std::system_category();
  v21 = 0u;
  v22 = 0u;
  v23 = 0;
  v8 = (*(a1 + 160) - *(a1 + 152)) >> 2;
  if (v8 == 1)
  {
    v13 = 1;
  }

  else
  {
    if (v8)
    {
      v18 = 0uLL;
      v17 = 0;
      sub_24BC9A584(a1, &v18, &v17, 0.0, v6, v7);
      sub_24BC964DC(a1);
    }

    v19 = sub_24BD6A604(9u);
    v20 = v9;
    if (*(a3 + 56))
    {
      v10 = sub_24BD6A604(9u);
      v12 = v11;
      sub_24BC836D4(v25, "Input mesh is empty");
      sub_24BC98654(a3 + 32, v10, v12, v25);
      if (v26 < 0)
      {
        operator delete(v25[0]);
      }
    }

    v13 = 0;
  }

  *&v21 = (std::chrono::system_clock::now().__d_.__rep_ - v5.__d_.__rep_) / 1000000.0;
  v14 = *(a3 + 120);
  if (v14)
  {
    (*(*v14 + 48))(v14, &v19);
  }

  sub_24BD6B9D8(v24);
  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

void sub_24BC9A9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (*(v12 - 193) < 0)
  {
    operator delete(*(v12 - 216));
  }

  sub_24BD6B9D8(va);
  _Unwind_Resume(a1);
}

void *sub_24BC9AAC4(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  sub_24BCA2D38(v5, a2);
  sub_24BCA4ECC(v5, a1);
  sub_24BC9F08C(v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t sub_24BC9AB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  sub_24BD6B968(v24, a3);
  LODWORD(v19) = 0;
  v20 = std::system_category();
  v21 = 0u;
  v22 = 0u;
  v23 = 0;
  v8 = (*(a1 + 160) - *(a1 + 152)) >> 2;
  if (v8 == 1)
  {
    v13 = 1;
  }

  else
  {
    if (v8)
    {
      v18 = 0uLL;
      v17 = 0;
      sub_24BC9A584(a1, &v18, &v17, 0.0, v6, v7);
      sub_24BC964DC(a1);
    }

    v19 = sub_24BD6A604(9u);
    v20 = v9;
    if (*(a3 + 56))
    {
      v10 = sub_24BD6A604(9u);
      v12 = v11;
      sub_24BC836D4(__p, "Input mesh is empty");
      sub_24BC98654(a3 + 32, v10, v12, __p);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v13 = 0;
  }

  *&v21 = (std::chrono::system_clock::now().__d_.__rep_ - v5.__d_.__rep_) / 1000000.0;
  v14 = *(a3 + 120);
  if (v14)
  {
    (*(*v14 + 48))(v14, &v19);
  }

  sub_24BD6B9D8(v24);
  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

void sub_24BC9AFC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *__p, uint64_t a61, int a62, __int16 a63)
{
  if (a65 < 0)
  {
    operator delete(__p);
  }

  sub_24BD6B9D8(&a39);
  _Unwind_Resume(a1);
}

void *sub_24BC9B08C(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  sub_24BCA1524(v5, a2);
  sub_24BCA3290(v5, a1);
  sub_24BC9F00C(v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

void *sub_24BC9B100(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  sub_24BCA2DD0(v5, a2);
  sub_24BCA5130(v5, a1);
  sub_24BC9F10C(v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_24BC9B174()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = 0;
  v1 = 0;
  v2 = 3;
  sub_24BCA5970();
}

void sub_24BC9B764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_24BC9F18C((v70 + 8), a10);
  v73 = &STACK[0x310];
  v74 = -256;
  do
  {
    sub_24BC9F18C(v73, *(v73 - 8));
    v73 -= 4;
    v74 += 32;
  }

  while (v74);
  v75 = &a19;
  v76 = -64;
  do
  {
    sub_24BC9F18C(v75, *(v75 - 8));
    v75 -= 4;
    v76 += 32;
  }

  while (v76);
  v77 = &a27;
  v78 = -64;
  do
  {
    sub_24BC9F18C(v77, *(v77 - 8));
    v77 -= 4;
    v78 += 32;
  }

  while (v78);
  v79 = &a35;
  v80 = -64;
  do
  {
    sub_24BC9F18C(v79, *(v79 - 8));
    v79 -= 4;
    v80 += 32;
  }

  while (v80);
  v81 = &a43;
  v82 = -64;
  do
  {
    sub_24BC9F18C(v81, *(v81 - 8));
    v81 -= 4;
    v82 += 32;
  }

  while (v82);
  v83 = &a51;
  v84 = -64;
  do
  {
    sub_24BC9F18C(v83, *(v83 - 8));
    v83 -= 4;
    v84 += 32;
  }

  while (v84);
  v85 = &a59;
  v86 = -64;
  do
  {
    sub_24BC9F18C(v85, *(v85 - 8));
    v85 -= 4;
    v86 += 32;
  }

  while (v86);
  v87 = &a67;
  v88 = -64;
  do
  {
    sub_24BC9F18C(v87, *(v87 - 8));
    v87 -= 4;
    v88 += 32;
  }

  while (v88);
  for (i = 0; i != -64; i -= 32)
  {
    sub_24BC9F18C((&a70 + i + 40), *(&a70 + i + 32));
  }

  sub_24BC9F18C((v71 + 8), a12);
  _Unwind_Resume(a1);
}

BOOL sub_24BC9B9A0(uint64_t a1, unint64_t a2)
{
  if (!*a1)
  {
    *a1 = 1;
    operator new();
  }

  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v12 = sub_24BCA6188(a1);
    sub_24BC836D4(&v21, v12);
    v13 = std::string::insert(&v21, 0, "cannot use update() with ");
    v14 = *&v13->__r_.__value_.__l.__data_;
    *&v24 = *(&v13->__r_.__value_.__l + 2);
    v23 = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    sub_24BCA5E44(312, &v23, exception);
    __cxa_throw(exception, &unk_285F930E0, sub_24BCA5F88);
  }

  if (*a2 != 1)
  {
    v15 = __cxa_allocate_exception(0x20uLL);
    v16 = sub_24BCA6188(a2);
    sub_24BC836D4(&v21, v16);
    v17 = std::string::insert(&v21, 0, "cannot use update() with ");
    v18 = *&v17->__r_.__value_.__l.__data_;
    *&v24 = *(&v17->__r_.__value_.__l + 2);
    v23 = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    sub_24BCA5E44(312, &v23, v15);
    __cxa_throw(v15, &unk_285F930E0, sub_24BCA5F88);
  }

  *&v23 = a2;
  v24 = xmmword_24BFBD220;
  *(&v23 + 1) = **(a2 + 8);
  for (i = 1; ; i = *a2)
  {
    v21.__r_.__value_.__r.__words[2] = 0;
    *&v21.__r_.__value_.__l.__data_ = a2;
    v22 = 0x8000000000000000;
    if (i == 2)
    {
      v21.__r_.__value_.__r.__words[2] = *(*(a2 + 8) + 8);
    }

    else if (i == 1)
    {
      v21.__r_.__value_.__l.__size_ = *(a2 + 8) + 8;
    }

    else
    {
      v22 = 1;
    }

    result = sub_24BCA6F80(&v23, &v21);
    if (result)
    {
      break;
    }

    v6 = sub_24BCA7288(&v23);
    sub_24BCA6218(v19, v6);
    v7 = *(a1 + 8);
    v21.__r_.__value_.__r.__words[0] = sub_24BCA6E3C(&v23);
    v8 = sub_24BCA73D4(v7, v21.__r_.__value_.__l.__data_);
    v9 = *(v8 + 56);
    *(v8 + 56) = v19[0];
    v19[0] = v9;
    v10 = *(v8 + 64);
    *(v8 + 64) = v20;
    v20 = v10;
    sub_24BC9F18C(&v20, v9);
    sub_24BCA6F10(&v23);
  }

  return result;
}

void sub_24BC9BD14(void *a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = a1 + *(*a1 - 24);
  v2 = *(v1 + 3);
  *(v1 + 3) = 0;
  operator new();
}

void sub_24BC9BEE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::locale a11, char a12)
{
  std::locale::~locale(&a11);
  sub_24BC9EC78(v12);
  sub_24BC9EC78(v12);
  _Unwind_Resume(a1);
}

void sub_24BC9BF2C(uint64_t a1, void *a2)
{
  v43[0] = 0;
  v44 = 0;
  sub_24BC9C7E0(a2, v43);
  if (v43[0] == 1)
  {
    v3 = sub_24BCB0080(v44, "lambda_weight");
    if (v44 + 8 != v3)
    {
      v4 = sub_24BC9C8EC(v43, "lambda_weight");
      LOBYTE(__p) = 0;
      v41 = 0;
      v5 = sub_24BCB01B0(v4, &__p);
      sub_24BC9F18C(&v41, __p);
      if ((v5 & 1) == 0)
      {
        v6 = sub_24BC9C8EC(v43, "lambda_weight");
        LODWORD(__p) = 0;
        sub_24BCB0594(v6, &__p, v7);
        *a1 = __p;
        sub_24BC836D4(&__p, "lambda_weight");
        sub_24BC9CAB4(v43, &__p);
        if (SHIBYTE(v42) < 0)
        {
          operator delete(__p);
        }
      }
    }

    if (v43[0] == 1)
    {
      v8 = sub_24BCB0080(v44, "eta");
      if (v44 + 8 != v8)
      {
        v9 = sub_24BC9C8EC(v43, "eta");
        LOBYTE(__p) = 0;
        v41 = 0;
        v10 = sub_24BCB01B0(v9, &__p);
        sub_24BC9F18C(&v41, __p);
        if ((v10 & 1) == 0)
        {
          v11 = sub_24BC9C8EC(v43, "eta");
          LODWORD(__p) = 0;
          sub_24BCB0594(v11, &__p, v12);
          *(a1 + 4) = __p;
          sub_24BC836D4(&__p, "eta");
          sub_24BC9CAB4(v43, &__p);
          if (SHIBYTE(v42) < 0)
          {
            operator delete(__p);
          }
        }
      }

      if (v43[0] == 1)
      {
        v13 = sub_24BCB0080(v44, "mu");
        if (v44 + 8 != v13)
        {
          v14 = sub_24BC9C8EC(v43, "mu");
          LOBYTE(__p) = 0;
          v41 = 0;
          v15 = sub_24BCB01B0(v14, &__p);
          sub_24BC9F18C(&v41, __p);
          if ((v15 & 1) == 0)
          {
            v16 = sub_24BC9C8EC(v43, "mu");
            LODWORD(__p) = 0;
            sub_24BCB0594(v16, &__p, v17);
            *(a1 + 8) = __p;
            sub_24BC836D4(&__p, "mu");
            sub_24BC9CAB4(v43, &__p);
            if (SHIBYTE(v42) < 0)
            {
              operator delete(__p);
            }
          }
        }

        if (v43[0] == 1)
        {
          v18 = sub_24BCB0080(v44, "nu");
          if (v44 + 8 != v18)
          {
            v19 = sub_24BC9C8EC(v43, "nu");
            LOBYTE(__p) = 0;
            v41 = 0;
            v20 = sub_24BCB01B0(v19, &__p);
            sub_24BC9F18C(&v41, __p);
            if ((v20 & 1) == 0)
            {
              v21 = sub_24BC9C8EC(v43, "nu");
              LODWORD(__p) = 0;
              sub_24BCB0594(v21, &__p, v22);
              *(a1 + 12) = __p;
              sub_24BC836D4(&__p, "nu");
              sub_24BC9CAB4(v43, &__p);
              if (SHIBYTE(v42) < 0)
              {
                operator delete(__p);
              }
            }
          }

          if (v43[0] == 1)
          {
            v23 = sub_24BCB0080(v44, "closeness_weight");
            if (v44 + 8 != v23)
            {
              v24 = sub_24BC9C8EC(v43, "closeness_weight");
              LOBYTE(__p) = 0;
              v41 = 0;
              v25 = sub_24BCB01B0(v24, &__p);
              sub_24BC9F18C(&v41, __p);
              if ((v25 & 1) == 0)
              {
                v26 = sub_24BC9C8EC(v43, "closeness_weight");
                LODWORD(__p) = 0;
                sub_24BCB0594(v26, &__p, v27);
                *(a1 + 16) = __p;
                sub_24BC836D4(&__p, "closeness_weight");
                sub_24BC9CAB4(v43, &__p);
                if (SHIBYTE(v42) < 0)
                {
                  operator delete(__p);
                }
              }
            }

            if (v43[0] == 1)
            {
              v28 = sub_24BCB0080(v44, "normal_smooth_max_iterations");
              if (v44 + 8 != v28)
              {
                v29 = sub_24BC9C8EC(v43, "normal_smooth_max_iterations");
                LOBYTE(__p) = 0;
                v41 = 0;
                v30 = sub_24BCB01B0(v29, &__p);
                sub_24BC9F18C(&v41, __p);
                if ((v30 & 1) == 0)
                {
                  v31 = sub_24BC9C8EC(v43, "normal_smooth_max_iterations");
                  LODWORD(__p) = 0;
                  sub_24BCB07E0(v31, &__p);
                  *(a1 + 20) = __p;
                  sub_24BC836D4(&__p, "normal_smooth_max_iterations");
                  sub_24BC9CAB4(v43, &__p);
                  if (SHIBYTE(v42) < 0)
                  {
                    operator delete(__p);
                  }
                }
              }

              if (v43[0] == 1)
              {
                v32 = sub_24BCB0080(v44, "mesh_update_iterations");
                if (v44 + 8 != v32)
                {
                  v33 = sub_24BC9C8EC(v43, "mesh_update_iterations");
                  LOBYTE(__p) = 0;
                  v41 = 0;
                  v34 = sub_24BCB01B0(v33, &__p);
                  sub_24BC9F18C(&v41, __p);
                  if ((v34 & 1) == 0)
                  {
                    v35 = sub_24BC9C8EC(v43, "mesh_update_iterations");
                    LODWORD(__p) = 0;
                    sub_24BCB07E0(v35, &__p);
                    *(a1 + 24) = __p;
                    sub_24BC836D4(&__p, "mesh_update_iterations");
                    sub_24BC9CAB4(v43, &__p);
                    if (SHIBYTE(v42) < 0)
                    {
                      operator delete(__p);
                    }
                  }
                }

                if (v43[0] == 1)
                {
                  v36 = sub_24BCB0080(v44, "fix_boundary");
                  if (v44 + 8 != v36)
                  {
                    v37 = sub_24BC9C8EC(v43, "fix_boundary");
                    LOBYTE(__p) = 0;
                    v41 = 0;
                    v38 = sub_24BCB01B0(v37, &__p);
                    sub_24BC9F18C(&v41, __p);
                    if ((v38 & 1) == 0)
                    {
                      v39 = sub_24BC9C8EC(v43, "fix_boundary");
                      LOBYTE(__p) = 0;
                      sub_24BCB0940(v39, &__p);
                      *(a1 + 28) = __p;
                      sub_24BC836D4(&__p, "fix_boundary");
                      sub_24BC9CAB4(v43, &__p);
                      if (SHIBYTE(v42) < 0)
                      {
                        operator delete(__p);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  sub_24BC848F0(&__p);
  *(v43 + 8 * *(v42 - 24) + 272) = 2;
  sub_24BC9BD14(&v42);
}

void sub_24BC9C724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F18C((v14 + 8), *(v15 - 72));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BC9C708);
  }

  _Unwind_Resume(a1);
}

void *sub_24BC9C7E0(void *a1, unsigned __int8 *a2)
{
  v10[19] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = *(a1 + *(*a1 - 24) + 40);
  v8 = 0;
  sub_24BCA9984(v6, v7, 1, 0, v9);
  sub_24BCA9A28(v9, 0, a2);
  sub_24BCAACC8(v10);
  sub_24BCAFFAC(v9);
  sub_24BCAFFAC(v7);
  sub_24BCB002C(v6);
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_24BC9C8B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  sub_24BCAACC8(v2 + 40);
  sub_24BCAFFAC(va2);
  sub_24BCAFFAC(va1);
  sub_24BCB002C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BC9C8EC(uint64_t a1, char *__s)
{
  if (!*a1)
  {
    *a1 = 1;
    operator new();
  }

  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v7 = sub_24BCA6188(a1);
    sub_24BC836D4(&v10, v7);
    v8 = std::string::insert(&v10, 0, "cannot use operator[] with a string argument with ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v12 = v8->__r_.__value_.__r.__words[2];
    *__p = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    sub_24BCA5E44(305, __p, exception);
    __cxa_throw(exception, &unk_285F930E0, sub_24BCA5F88);
  }

  v3 = *(a1 + 8);
  sub_24BC836D4(__p, __s);
  v10.__r_.__value_.__r.__words[0] = __p;
  v4 = sub_24BCB0100(v3, __p);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  return v4 + 56;
}

void sub_24BC9CA3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BC9CAB4(uint64_t a1, const void **a2)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = sub_24BCA6188(a1);
    sub_24BC836D4(&v9, v6);
    v7 = std::string::insert(&v9, 0, "cannot use erase() with ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v11 = v7->__r_.__value_.__r.__words[2];
    v10 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    sub_24BCA5E44(307, &v10, exception);
    __cxa_throw(exception, &unk_285F930E0, sub_24BCA5F88);
  }

  v3 = *(a1 + 8);

  return sub_24BCB0708(v3, a2);
}

void sub_24BC9CB8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_24BC9CBEC()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = 0;
  v1 = 0;
  sub_24BC848F0(&v2);
  sub_24BC9B174();
}

void sub_24BC9CF38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned __int8 a9, uint64_t a10, unsigned __int8 a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, uint64_t a16, std::locale a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_24BC9F18C((v22 + 8), a9);
  sub_24BC9F18C(&a14, a13);
  v25 = &a22;
  v26 = -64;
  do
  {
    sub_24BC9F18C(v25, *(v25 - 8));
    v25 -= 4;
    v26 += 32;
  }

  while (v26);
  sub_24BC9F18C((v23 + 8), a11);
  _Unwind_Resume(a1);
}

void sub_24BC9CFD0(uint64_t a1, void *a2)
{
  v10[0] = 0;
  v11 = 0;
  sub_24BC9C7E0(a2, v10);
  if (v10[0] == 1)
  {
    v3 = sub_24BCB0080(v11, "iterations");
    if (v11 + 8 != v3)
    {
      v4 = sub_24BC9C8EC(v10, "iterations");
      LOBYTE(__p) = 0;
      v8 = 0;
      v5 = sub_24BCB01B0(v4, &__p);
      sub_24BC9F18C(&v8, __p);
      if ((v5 & 1) == 0)
      {
        v6 = sub_24BC9C8EC(v10, "iterations");
        LODWORD(__p) = 0;
        sub_24BCB07E0(v6, &__p);
        *(a1 + 32) = __p;
        sub_24BC836D4(&__p, "iterations");
        sub_24BC9CAB4(v10, &__p);
        if (SHIBYTE(v9) < 0)
        {
          operator delete(__p);
        }
      }
    }
  }

  sub_24BC848F0(&__p);
  *(v10 + 8 * *(v9 - 24) + 272) = 2;
  sub_24BC9BD14(&v9);
}

void sub_24BC9D2DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F18C((v14 + 8), *(v15 - 72));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BC9D2C0);
  }

  _Unwind_Resume(a1);
}

void sub_24BC9D360(const std::error_code *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = 0;
  v3 = 0;
  sub_24BC848F0(&v4);
  sub_24BD6A950(a1);
}

void sub_24BC9D900(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned __int8 a9, uint64_t a10, unsigned __int8 a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, std::locale a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_24BC9F18C((v70 + 8), a9);
  v73 = &a70;
  v74 = -160;
  do
  {
    sub_24BC9F18C(v73, *(v73 - 8));
    v73 -= 4;
    v74 += 32;
  }

  while (v74);
  v75 = &a18;
  v76 = -64;
  do
  {
    sub_24BC9F18C(v75, *(v75 - 8));
    v75 -= 4;
    v76 += 32;
  }

  while (v76);
  v77 = &a26;
  v78 = -64;
  do
  {
    sub_24BC9F18C(v77, *(v77 - 8));
    v77 -= 4;
    v78 += 32;
  }

  while (v78);
  v79 = &a34;
  v80 = -64;
  do
  {
    sub_24BC9F18C(v79, *(v79 - 8));
    v79 -= 4;
    v80 += 32;
  }

  while (v80);
  v81 = &a42;
  v82 = -64;
  do
  {
    sub_24BC9F18C(v81, *(v81 - 8));
    v81 -= 4;
    v82 += 32;
  }

  while (v82);
  for (i = 0; i != -64; i -= 32)
  {
    sub_24BC9F18C((&a50 + i), *(&a49 + i));
  }

  sub_24BC9F18C((v71 + 8), a11);
  _Unwind_Resume(a1);
}

void sub_24BC9DAB4(uint64_t a1, void *a2)
{
  v26[0] = 0;
  v27 = 0;
  sub_24BC9C7E0(a2, v26);
  if (v26[0] == 1)
  {
    v3 = sub_24BCB0080(v27, "time_total");
    if (v27 + 8 != v3)
    {
      v4 = sub_24BC9C8EC(v26, "time_total");
      LOBYTE(__p) = 0;
      v24 = 0;
      v5 = sub_24BCB01B0(v4, &__p);
      sub_24BC9F18C(&v24, __p);
      if ((v5 & 1) == 0)
      {
        v6 = sub_24BC9C8EC(v26, "time_total");
        __p = 0;
        sub_24BCB0BDC(v6, &__p);
        *(a1 + 16) = __p;
        sub_24BC836D4(&__p, "time_total");
        sub_24BC9CAB4(v26, &__p);
        if (SHIBYTE(v25) < 0)
        {
          operator delete(__p);
        }
      }
    }

    if (v26[0] == 1)
    {
      v7 = sub_24BCB0080(v27, "time_smooth_normal");
      if (v27 + 8 != v7)
      {
        v8 = sub_24BC9C8EC(v26, "time_smooth_normal");
        LOBYTE(__p) = 0;
        v24 = 0;
        v9 = sub_24BCB01B0(v8, &__p);
        sub_24BC9F18C(&v24, __p);
        if ((v9 & 1) == 0)
        {
          v10 = sub_24BC9C8EC(v26, "time_smooth_normal");
          __p = 0;
          sub_24BCB0BDC(v10, &__p);
          *(a1 + 24) = __p;
          sub_24BC836D4(&__p, "time_smooth_normal");
          sub_24BC9CAB4(v26, &__p);
          if (SHIBYTE(v25) < 0)
          {
            operator delete(__p);
          }
        }
      }

      if (v26[0] == 1)
      {
        v11 = sub_24BCB0080(v27, "time_prepare_matrix");
        if (v27 + 8 != v11)
        {
          v12 = sub_24BC9C8EC(v26, "time_prepare_matrix");
          LOBYTE(__p) = 0;
          v24 = 0;
          v13 = sub_24BCB01B0(v12, &__p);
          sub_24BC9F18C(&v24, __p);
          if ((v13 & 1) == 0)
          {
            v14 = sub_24BC9C8EC(v26, "time_prepare_matrix");
            __p = 0;
            sub_24BCB0BDC(v14, &__p);
            *(a1 + 32) = __p;
            sub_24BC836D4(&__p, "time_prepare_matrix");
            sub_24BC9CAB4(v26, &__p);
            if (SHIBYTE(v25) < 0)
            {
              operator delete(__p);
            }
          }
        }

        if (v26[0] == 1)
        {
          v15 = sub_24BCB0080(v27, "time_solve_linear_system");
          if (v27 + 8 != v15)
          {
            v16 = sub_24BC9C8EC(v26, "time_solve_linear_system");
            LOBYTE(__p) = 0;
            v24 = 0;
            v17 = sub_24BCB01B0(v16, &__p);
            sub_24BC9F18C(&v24, __p);
            if ((v17 & 1) == 0)
            {
              v18 = sub_24BC9C8EC(v26, "time_solve_linear_system");
              __p = 0;
              sub_24BCB0BDC(v18, &__p);
              *(a1 + 40) = __p;
              sub_24BC836D4(&__p, "time_solve_linear_system");
              sub_24BC9CAB4(v26, &__p);
              if (SHIBYTE(v25) < 0)
              {
                operator delete(__p);
              }
            }
          }

          if (v26[0] == 1)
          {
            v19 = sub_24BCB0080(v27, "num_of_non_zeros");
            if (v27 + 8 != v19)
            {
              v20 = sub_24BC9C8EC(v26, "num_of_non_zeros");
              LOBYTE(__p) = 0;
              v24 = 0;
              v21 = sub_24BCB01B0(v20, &__p);
              sub_24BC9F18C(&v24, __p);
              if ((v21 & 1) == 0)
              {
                v22 = sub_24BC9C8EC(v26, "num_of_non_zeros");
                LODWORD(__p) = 0;
                sub_24BCB07E0(v22, &__p);
                *(a1 + 48) = __p;
                sub_24BC836D4(&__p, "num_of_non_zeros");
                sub_24BC9CAB4(v26, &__p);
                if (SHIBYTE(v25) < 0)
                {
                  operator delete(__p);
                }
              }
            }
          }
        }
      }
    }
  }

  sub_24BC848F0(&__p);
  *(v26 + 8 * *(v25 - 24) + 272) = 2;
  sub_24BC9BD14(&v25);
}

void sub_24BC9E090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F18C((v14 + 8), *(v15 - 72));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BC9E074);
  }

  _Unwind_Resume(a1);
}

void sub_24BC9E134(uint64_t a1, uint64_t *a2)
{
  v3[71] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v2 = *a2;
  }

  sub_24BCB0D30(v3);
  sub_24BC9B174();
}

void *sub_24BC9E284(void *a1)
{
  v2 = MEMORY[0x277D82810];
  v3 = *MEMORY[0x277D82810];
  *a1 = *MEMORY[0x277D82810];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x24C2542E0](a1 + 1);
  std::ostream::~ostream();
  MEMORY[0x24C2547D0](a1 + 52);
  return a1;
}

uint64_t sub_24BC9E350(uint64_t a1, uint64_t *a2)
{
  v8[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0EF0(v6);
  if ((v7[*(v6[0] - 24) + 16] & 5) == 0)
  {
    sub_24BC9BF2C(a1, v6);
  }

  v6[0] = *MEMORY[0x277D82808];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C2542E0](v7);
  std::istream::~istream();
  MEMORY[0x24C2547D0](v8);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BC9E4BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9E4D8(va);
  _Unwind_Resume(a1);
}

void *sub_24BC9E4D8(void *a1)
{
  v2 = MEMORY[0x277D82808];
  v3 = *MEMORY[0x277D82808];
  *a1 = *MEMORY[0x277D82808];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x24C2542E0](a1 + 2);
  std::istream::~istream();
  MEMORY[0x24C2547D0](a1 + 53);
  return a1;
}

void sub_24BC9E5A4(uint64_t a1, uint64_t *a2)
{
  v3[71] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v2 = *a2;
  }

  sub_24BCB0D30(v3);
  sub_24BC9CBEC();
}

uint64_t sub_24BC9E6F4(uint64_t a1, uint64_t *a2)
{
  v8[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0EF0(v6);
  if ((v7[*(v6[0] - 24) + 16] & 5) == 0)
  {
    sub_24BC9CFD0(a1, v6);
  }

  v6[0] = *MEMORY[0x277D82808];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C2542E0](v7);
  std::istream::~istream();
  MEMORY[0x24C2547D0](v8);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BC9E860(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9E4D8(va);
  _Unwind_Resume(a1);
}

void sub_24BC9E87C(const std::error_code *a1, uint64_t *a2)
{
  v4[71] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0D30(v4);
  sub_24BC9D360(a1);
}

uint64_t sub_24BC9E9D0(uint64_t a1, uint64_t *a2)
{
  v8[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0EF0(v6);
  if ((v7[*(v6[0] - 24) + 16] & 5) == 0)
  {
    sub_24BC9DAB4(a1, v6);
  }

  v6[0] = *MEMORY[0x277D82808];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C2542E0](v7);
  std::istream::~istream();
  MEMORY[0x24C2547D0](v8);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BC9EB3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9E4D8(va);
  _Unwind_Resume(a1);
}

void sub_24BC9EC78(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t sub_24BC9ECE4(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v4 = (*(a1 + 32) + 16 * a2);
  v6 = *v4;
  v5 = v4[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v5);
  }

  return *(v6 + 40) + 8 * (a3 >> 6);
}

uint64_t sub_24BC9ED38(uint64_t a1)
{
  sub_24BC9F10C(a1 + 64);
  sub_24BC9F08C(a1 + 32);

  return sub_24BC9F00C(a1);
}

uint64_t sub_24BC9ED7C(uint64_t a1, uint64_t a2)
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

uint64_t sub_24BC9EE14(uint64_t a1)
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

void *sub_24BC9EE94(void *a1)
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

  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;
    operator delete(v4);
  }

  return a1;
}

void *sub_24BC9EEE8(void *a1)
{
  v2 = a1[22];
  if (v2)
  {
    a1[23] = v2;
    operator delete(v2);
  }

  v3 = a1[19];
  if (v3)
  {
    a1[20] = v3;
    operator delete(v3);
  }

  v4 = a1[16];
  if (v4)
  {
    a1[17] = v4;
    operator delete(v4);
  }

  v5 = a1[13];
  if (v5)
  {
    a1[14] = v5;
    operator delete(v5);
  }

  v6 = a1[10];
  if (v6)
  {
    a1[11] = v6;
    operator delete(v6);
  }

  v7 = a1[7];
  if (v7)
  {
    a1[8] = v7;
    operator delete(v7);
  }

  v8 = a1[4];
  if (v8)
  {
    a1[5] = v8;
    operator delete(v8);
  }

  v9 = a1[1];
  if (v9)
  {
    a1[2] = v9;
    operator delete(v9);
  }

  return a1;
}

uint64_t sub_24BC9EF8C(uint64_t a1)
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

uint64_t sub_24BC9F00C(uint64_t a1)
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

uint64_t sub_24BC9F08C(uint64_t a1)
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

uint64_t sub_24BC9F10C(uint64_t a1)
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

void sub_24BC9F18C(uint64_t *a1, int a2)
{
  v29 = 0;
  v30 = 0;
  v31 = 0;
  if (a2 == 1)
  {
    sub_24BC9F4D4(&v29, *(*a1 + 16));
    v6 = *a1 + 8;
    v7 = **a1;
    if (v7 != v6)
    {
      v8 = v30;
      do
      {
        if (v8 >= v31)
        {
          v8 = sub_24BC9F850(&v29, (v7 + 7));
        }

        else
        {
          *v8 = *(v7 + 56);
          *(v8 + 8) = v7[8];
          *(v7 + 56) = 0;
          v7[8] = 0;
          v8 += 16;
        }

        v30 = v8;
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
    sub_24BC9F4D4(&v29, (*(*a1 + 8) - **a1) >> 4);
    v4 = **a1;
    v5 = *(*a1 + 8);
    while (v4 != v5)
    {
      sub_24BC9F590(&v29, v4);
      v4 += 16;
    }
  }

  for (i = v30; v29 != v30; i = v30)
  {
    LOBYTE(v27) = *(i - 16);
    v28 = *(i - 8);
    *(i - 16) = 0;
    *(i - 8) = 0;
    v13 = v30 - 16;
    sub_24BC9F18C(v30 - 8, *(v30 - 16));
    v30 = v13;
    if (v27 == 1)
    {
      v19 = v28;
      v20 = v28 + 1;
      v21 = *v28;
      if (*v28 != v28 + 1)
      {
        do
        {
          if (v13 >= v31)
          {
            v13 = sub_24BC9F850(&v29, (v21 + 7));
          }

          else
          {
            *v13 = *(v21 + 56);
            *(v13 + 8) = v21[8];
            *(v21 + 56) = 0;
            v21[8] = 0;
            v13 += 16;
          }

          v30 = v13;
          v22 = v21[1];
          if (v22)
          {
            do
            {
              v23 = v22;
              v22 = *v22;
            }

            while (v22);
          }

          else
          {
            do
            {
              v23 = v21[2];
              v11 = *v23 == v21;
              v21 = v23;
            }

            while (!v11);
          }

          v21 = v23;
        }

        while (v23 != v20);
        v19 = v28;
      }

      sub_24BC9F968(v19, *(v19 + 8));
      *v19 = v19 + 8;
      *(v19 + 16) = 0;
      *(v19 + 8) = 0;
    }

    else if (v27 == 2)
    {
      v14 = v28;
      v15 = *v28;
      v16 = v28[1];
      if (*v28 != v16)
      {
        do
        {
          sub_24BC9F590(&v29, v15);
          v15 += 16;
        }

        while (v15 != v16);
        v14 = v28;
        v15 = *v28;
        v16 = v28[1];
      }

      if (v16 != v15)
      {
        v17 = v16 - 8;
        do
        {
          v18 = v17 - 8;
          sub_24BC9F18C(v17, *(v17 - 8));
          v17 -= 16;
        }

        while (v18 != v15);
      }

      v14[1] = v15;
    }

    sub_24BC9F18C(&v28, v27);
  }

  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v24 = *a1;
      if (*(*a1 + 23) < 0)
      {
        v26 = *v24;
        goto LABEL_51;
      }
    }

    else
    {
      if (a2 != 8)
      {
        goto LABEL_54;
      }

      v24 = *a1;
      v25 = **a1;
      if (v25)
      {
        v24[1] = v25;
        v26 = v25;
LABEL_51:
        operator delete(v26);
        goto LABEL_52;
      }
    }

LABEL_53:
    operator delete(v24);
    goto LABEL_54;
  }

  if (a2 == 1)
  {
    sub_24BC9F968(*a1, *(*a1 + 8));
    goto LABEL_52;
  }

  if (a2 == 2)
  {
    v27 = *a1;
    sub_24BC9FA2C(&v27);
LABEL_52:
    v24 = *a1;
    goto LABEL_53;
  }

LABEL_54:
  v27 = &v29;
  sub_24BC9FA2C(&v27);
}

void *sub_24BC9F4D4(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_24BC9F6D4(result, a2);
    }

    sub_24BC8E01C();
  }

  return result;
}

void sub_24BC9F57C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9F7FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BC9F590(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v7 = (v4 - *result) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_24BC8E01C();
    }

    v9 = v5 - *result;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v20 = result;
    if (v10)
    {
      sub_24BC9F6D4(result, v10);
    }

    v11 = 16 * v7;
    v17 = 0;
    v18 = v11;
    *(&v19 + 1) = 0;
    *v11 = *a2;
    *(v11 + 8) = *(a2 + 8);
    *a2 = 0;
    *(a2 + 8) = 0;
    *&v19 = 16 * v7 + 16;
    v12 = *(result + 8);
    v13 = 16 * v7 + *result - v12;
    sub_24BC9F71C(result, *result, v12, v13);
    v14 = *v3;
    *v3 = v13;
    v15 = *(v3 + 16);
    v16 = v19;
    *(v3 + 8) = v19;
    *&v19 = v14;
    *(&v19 + 1) = v15;
    v17 = v14;
    v18 = v14;
    result = sub_24BC9F7FC(&v17);
    v6 = v16;
  }

  else
  {
    *v4 = *a2;
    *(v4 + 8) = *(a2 + 8);
    *a2 = 0;
    *(a2 + 8) = 0;
    v6 = v4 + 16;
  }

  *(v3 + 8) = v6;
  return result;
}

void sub_24BC9F6C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_24BC9F7FC(va);
  _Unwind_Resume(a1);
}

void sub_24BC9F6D4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_24BC8DFE8();
}

uint64_t sub_24BC9F71C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = *v5;
      *(a4 + 8) = *(v5 + 1);
      *v5 = 0;
      *(v5 + 1) = 0;
      v5 += 16;
      a4 += 16;
    }

    while (v5 != a3);
    v6 = a2;
    do
    {
      v7 = *v6;
      v6 += 16;
      result = sub_24BC9F18C(a2 + 8, v7);
      a2 = v6;
    }

    while (v6 != a3);
  }

  return result;
}

uint64_t sub_24BC9F794(uint64_t a1)
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
        sub_24BC9F18C(v4, *(v4 - 8));
        v4 -= 2;
      }

      while (v5 != v3);
    }
  }

  return a1;
}

uint64_t sub_24BC9F7FC(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v5 = *(i - 16);
    v4 = i - 16;
    *(a1 + 16) = v4;
    sub_24BC9F18C(v4 + 8, v5);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_24BC9F850(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_24BC8E01C();
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
    sub_24BC9F6D4(a1, v7);
  }

  v8 = 16 * v2;
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = *a2;
  *(v8 + 8) = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  *&v17 = 16 * v2 + 16;
  v9 = *(a1 + 8);
  v10 = 16 * v2 + *a1 - v9;
  sub_24BC9F71C(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_24BC9F7FC(&v15);
  return v14;
}

void sub_24BC9F954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_24BC9F7FC(va);
  _Unwind_Resume(a1);
}

void sub_24BC9F968(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_24BC9F968(a1, *a2);
    sub_24BC9F968(a1, *(a2 + 1));
    sub_24BC9F18C(a2 + 64, a2[56]);
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void sub_24BC9F9D8(uint64_t a1, uint64_t a2)
{
  sub_24BC9F18C((a2 + 32), *(a2 + 24));
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void sub_24BC9FA2C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 8;
      do
      {
        v7 = (v6 - 8);
        sub_24BC9F18C(v6, *(v6 - 8));
        v6 -= 16;
      }

      while (v7 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

__n128 sub_24BC9FB44(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F92828;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

float32x4_t sub_24BC9FB7C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  if (*a2 < *a3)
  {
    v3 = v3;
    do
    {
      v5 = *(*(a1 + 8) + 40);
      v6 = **(a1 + 24);
      *&v6 = v6;
      result = vdivq_f32(vsubq_f32(*(v5 + 16 * v3), **(a1 + 16)), vdupq_lane_s32(*&v6, 0));
      *(v5 + 16 * v3++) = result;
    }

    while (v4 != v3);
  }

  return result;
}

__n128 sub_24BC9FC4C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F92870;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

float32x4_t sub_24BC9FC84(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  if (*a2 < *a3)
  {
    v3 = v3;
    do
    {
      v5 = *(*(a1 + 8) + 40);
      v6 = **(a1 + 16);
      result = vaddq_f32(**(a1 + 24), vmulq_n_f32(*(v5 + 16 * v3), v6));
      *(v5 + 16 * v3++) = result;
    }

    while (v4 != v3);
  }

  return result;
}

__n128 sub_24BC9FD50(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F928B8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

float32x4_t sub_24BC9FD88(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v3 = *a2;
  v4 = *a3 - *a2;
  if (*a3 > *a2)
  {
    v6 = 16 * v3;
    v7 = 3 * v3;
    __asm { FMOV            V0.4S, #3.0 }

    v31 = _Q0;
    do
    {
      v13 = **(a1 + 16);
      v14 = *(v13 + 4 * v7);
      v15 = (*(*(a1 + 8) + 8) + 16 * *(*(a1 + 8) + 176));
      v17 = *v15;
      v16 = v15[1];
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v16);
        v13 = **(a1 + 16);
        v18 = (*(*(a1 + 8) + 8) + 16 * *(*(a1 + 8) + 176));
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v17 + 40) + 16 * v14);
        v22 = *(v13 + 4 * (v7 + 1));
        if (v19)
        {
          v30 = v21;
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v19);
          v23 = (*(*(a1 + 8) + 8) + 16 * *(*(a1 + 8) + 176));
          v17 = *v23;
          v24 = v23[1];
          v25 = *(*(v20 + 40) + 16 * v22);
          v26 = *(**(a1 + 16) + 4 * (v7 + 2));
          if (v24)
          {
            atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
            v29 = v25;
            sub_24BC9EC78(v24);
            v25 = v29;
          }

          v21 = v30;
          goto LABEL_11;
        }

        v27 = *(v20 + 40);
        v17 = v20;
      }

      else
      {
        v27 = *(v17 + 40);
        v21 = *(v27 + 16 * v14);
        v22 = *(v13 + 4 * (v7 + 1));
      }

      v25 = *(v27 + 16 * v22);
      v26 = *(v13 + 4 * (v7 + 2));
LABEL_11:
      result = vdivq_f32(vaddq_f32(vaddq_f32(v25, v21), *(*(v17 + 40) + 16 * v26)), v31);
      *(**(a1 + 24) + v6) = result;
      v6 += 16;
      v7 += 3;
      --v4;
    }

    while (v4);
  }

  return result;
}

void *sub_24BC9FEFC(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BC9FFD0(result, a2);
  }

  return result;
}

void sub_24BC9FFD0(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    sub_24BC91F60(a1, v2);
  }

  sub_24BC8E01C();
}

void *sub_24BCA0014(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void sub_24BCA00C8(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

__n128 sub_24BCA01F4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F92900;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_24BCA022C(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v3 = *a2;
  v4 = *a3 - *a2;
  if (*a3 > *a2)
  {
    v6 = 16 * v3;
    for (i = 3 * v3; ; i += 3)
    {
      v8 = **(a1 + 8);
      v9 = *(v8 + 4 * i);
      v10 = *(v8 + 4 * (i + 1));
      v11 = *(v8 + 4 * (i + 2));
      v12 = (*(*(a1 + 16) + 8) + 16 * *(*(a1 + 16) + 176));
      v14 = *v12;
      v13 = v12[1];
      if (!v13)
      {
        break;
      }

      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v13);
      v15 = (*(*(a1 + 16) + 8) + 16 * *(*(a1 + 16) + 176));
      v17 = *v15;
      v16 = v15[1];
      v18 = *(*(v14 + 40) + 16 * v10);
      if (!v16)
      {
        v26 = *(v17 + 40);
        v14 = v17;
        goto LABEL_11;
      }

      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      v33 = v18;
      sub_24BC9EC78(v16);
      v19 = (*(*(a1 + 16) + 8) + 16 * *(*(a1 + 16) + 176));
      v14 = *v19;
      v20 = v19[1];
      v21 = vsubq_f32(v33, *(*(v17 + 40) + 16 * v9));
      if (v20)
      {
        v34 = v21;
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v20);
        v22 = (*(*(a1 + 16) + 8) + 16 * *(*(a1 + 16) + 176));
        v24 = *v22;
        v23 = v22[1];
        v25 = *(*(v14 + 40) + 16 * v11);
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          v32 = v25;
          sub_24BC9EC78(v23);
          v25 = v32;
        }

        v21 = v34;
        goto LABEL_13;
      }

      v26 = *(v14 + 40);
LABEL_12:
      v25 = *(v26 + 16 * v11);
      v24 = v14;
LABEL_13:
      v27 = vsubq_f32(v25, *(*(v24 + 40) + 16 * v9));
      v30 = vuzp2q_s32(vextq_s8(v27, v27, 4uLL), v27);
      v28 = vmlsq_f32(vmulq_f32(vzip2q_s32(vzip1q_s32(v21, vextq_s8(v21, v21, 0xCuLL)), v21), v30), vzip2q_s32(vzip1q_s32(v27, vextq_s8(v27, v27, 0xCuLL)), v27), vuzp2q_s32(vextq_s8(v21, v21, 4uLL), v21));
      v29 = vmulq_f32(v28, v28);
      v29.i32[3] = 0;
      v30.f32[0] = sqrtf(vaddv_f32(*&vpaddq_f32(v29, v29)));
      v31 = xmmword_24BFBD1C0;
      if (v30.f32[0] > 0.0)
      {
        v31 = vdivq_f32(v28, vdupq_lane_s32(*v30.f32, 0));
      }

      *(**(a1 + 24) + v6) = v31;
      v6 += 16;
      if (!--v4)
      {
        return;
      }
    }

    v26 = *(v14 + 40);
    v18 = *(v26 + 16 * v10);
LABEL_11:
    v21 = vsubq_f32(v18, *(v26 + 16 * v9));
    goto LABEL_12;
  }
}

void *sub_24BCA0430(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BCA04D4(result, a2);
  }

  return result;
}

void sub_24BCA04D4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_24BC91DBC(a1, a2);
  }

  sub_24BC8E01C();
}

__n128 sub_24BCA05AC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F92948;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_24BCA05F4(uint64_t result, unsigned int *a2, unsigned int *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = *a3;
  v39 = *a2;
  if (v39 < v3)
  {
    v4 = result;
    do
    {
      v38 = 0u;
      memset(v37, 0, sizeof(v37));
      v5 = **(v4 + 8);
      LOBYTE(__p) = 0;
      sub_24BC9FEFC(&v36, v5);
      v6 = **(v4 + 16);
      LOBYTE(v34[0]) = 0;
      sub_24BC9FEFC(&__p, v6);
      *(v36 + ((v39 >> 3) & 0x1FFFFFF8)) |= 1 << v39;
      sub_24BCA09A8(v37, &v39);
      v7 = v39;
      v31 = *(**(v4 + 24) + 16 * v39);
      v41 = -1;
      v40 = -1;
      v8 = *(&v38 + 1);
      if (*(&v38 + 1))
      {
        do
        {
          v9 = *(*(*(&v37[0] + 1) + ((v38 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v38 & 0x3FF));
          *&v38 = v38 + 1;
          *(&v38 + 1) = v8 - 1;
          if (v38 >= 0x800)
          {
            operator delete(**(&v37[0] + 1));
            *(&v37[0] + 1) += 8;
            *&v38 = v38 - 1024;
          }

          v10 = 0;
          v11 = *(v4 + 32);
          LODWORD(v40) = *(*v11 + 4 * (3 * v9));
          HIDWORD(v40) = *(*v11 + 4 * (3 * v9 + 1));
          v41 = *(*v11 + 4 * (3 * v9 + 2));
          do
          {
            v12 = &v40 + v10;
            v13 = *v12;
            v14 = v13 >> 6;
            v15 = 1 << v13;
            v16 = *(__p + v14);
            if ((v15 & v16) == 0)
            {
              *(__p + v14) = v15 | v16;
              sub_24BCB9454(v34, (*(v4 + 40) + 104), v12);
              for (i = sub_24BCB947C(v34); ; i = sub_24BCB947C(v34))
              {
                v33 = i;
                if (i == -1)
                {
                  break;
                }

                v18 = *(sub_24BCB9024(*(v4 + 40) + 104, &v33) + 16);
                if (v18 != -1)
                {
                  v19 = *(v36 + (v18 >> 6));
                  if ((v19 & (1 << v18)) == 0)
                  {
                    *(v36 + (v18 >> 6)) = v19 | (1 << v18);
                    v20 = vsubq_f32(*(**(v4 + 24) + 16 * v18), v31);
                    v21 = vmulq_f32(v20, v20);
                    v21.i32[3] = 0;
                    if (**(v4 + 48) > sqrtf(vaddv_f32(*&vpaddq_f32(v21, v21))))
                    {
                      v32 = v18;
                      sub_24BCA09A8(v37, &v32);
                      if (v18 >= v39)
                      {
                        if (v18 > v39)
                        {
                          v23 = (**(v4 + 64) + 24 * v39);
                          v32 = v18;
                          sub_24BC97D60(v23, &v32);
                        }
                      }

                      else
                      {
                        v22 = (**(v4 + 56) + 24 * v39);
                        v32 = v18;
                        sub_24BC97D60(v22, &v32);
                      }
                    }
                  }
                }
              }
            }

            ++v10;
          }

          while (v10 != 3);
          v8 = *(&v38 + 1);
        }

        while (*(&v38 + 1));
        v7 = v39;
      }

      v24 = (**(v4 + 64) + 24 * v7);
      v25 = *v24;
      v26 = v24[1];
      std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
      v27 = (**(v4 + 56) + 24 * v39);
      v28 = *v27;
      v29 = v27[1];
      std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
      if (__p)
      {
        operator delete(__p);
      }

      if (v36)
      {
        operator delete(v36);
      }

      result = sub_24BCA102C(v37);
      ++v39;
    }

    while (v39 < v3);
  }

  v30 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BCA094C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  sub_24BCA102C(&a21);
  _Unwind_Resume(a1);
}

void *sub_24BCA09A8(void *result, _DWORD *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 7) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = sub_24BCA0A30(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v9 & 0x3FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *sub_24BCA0A30(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_24BC925A0(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_24BCA0C04(a1, &v10);
}

void sub_24BCA0BB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_24BCA0C04(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_24BC925A0(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_24BCA0D0C(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_24BC925A0(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *sub_24BCA0E18(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_24BC925A0(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_24BCA0F20(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_24BC925A0(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

uint64_t sub_24BCA102C(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 1024;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_24BCA10D8(a1);
}

uint64_t sub_24BCA10D8(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void *sub_24BCA1128(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BC94FEC(result, a2);
  }

  return result;
}

void sub_24BCA1220(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BCA123C(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BC94FEC(result, a2);
  }

  return result;
}

void sub_24BCA1298(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_24BCA1330(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F92990;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_24BCA1368(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  if (*a2 < *a3)
  {
    v3 = v3;
    v5 = *(result + 16);
    v6 = **(result + 8);
    v7 = *(result + 24);
    do
    {
      v8 = (v6 + 24 * v3);
      v9 = *v8;
      v10 = v8[1];
      if (v9 != v10)
      {
        v11 = *(*v5 + 4 * v3);
        v12 = v11 + ((v10 - v9) >> 2);
        if (v11 < v12)
        {
          v13 = *v7;
          v14 = v12 - v11;
          v15 = 2 * v11;
          do
          {
            *(v13 + 4 * v15) = v3;
            v16 = *v9;
            v9 += 4;
            result = v16;
            *(v13 + 4 * (v15 + 1)) = v16;
            v15 += 2;
            --v14;
          }

          while (v14);
        }
      }

      ++v3;
    }

    while (v3 != v4);
  }

  return result;
}

__n128 sub_24BCA1470(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F929D8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

double sub_24BCA14A8(void **a1, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (*a2 < *a3)
  {
    v4 = *a1[1];
    v5 = *a1[3];
    v6 = *a3 - v3;
    v7 = (*a1[2] + 8 * v3);
    v8 = 2 * v3;
    do
    {
      v9 = vsubq_f32(*(v5 + 16 * *(v4 + 4 * v8)), *(v5 + 16 * *(v4 + 4 * (v8 + 1))));
      v10 = vmulq_f32(v9, v9);
      v10.i32[3] = 0;
      result = sqrtf(vaddv_f32(*&vpaddq_f32(v10, v10)));
      *v7++ = result;
      v8 += 2;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_24BCA1524(uint64_t a1, uint64_t a2)
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

__n128 sub_24BCA1630(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F92A20;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void *sub_24BCA1660(void *result, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*a2 < *a3)
  {
    v3 = result;
    v4 = *a2;
    v5 = *a3;
    do
    {
      v17 = v4;
      v19 = -1;
      v18 = -1;
      sub_24BC9644C(v3[1], &v17, &v18, &v18 + 1, &v19);
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = v3[1];
        result = sub_24BC9ECE4(v8, *(v8 + 180), *(&v18 + v6));
        if ((v9 & *result) != 0 || (v10 = sub_24BCB9024(v8 + 104, (&v18 + v6)), result = sub_24BC9ECE4(v8, *(v8 + 180), *v10), (v11 & *result) != 0))
        {
          ++v7;
        }

        v6 += 4;
      }

      while (v6 != 12);
      v12 = *v3[2];
      v13 = v4 >> 6;
      v14 = 1 << v4;
      if (v7 < 2)
      {
        v15 = *(v12 + 8 * v13) & ~v14;
      }

      else
      {
        v15 = *(v12 + 8 * v13) | v14;
      }

      *(v12 + 8 * v13) = v15;
      ++v4;
    }

    while (v4 != v5);
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24BCA17B8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BCA182C(result, a4);
  }

  return result;
}

void sub_24BCA1810(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BCA182C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_24BCA1868(a1, a2);
  }

  sub_24BC8E01C();
}

void sub_24BCA1868(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_24BC8DFE8();
}

void *sub_24BCA18B0(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BCA182C(result, a2);
  }

  return result;
}

void sub_24BCA190C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_24BCA19A4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F92A68;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

float32x4_t sub_24BCA19DC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  if (*a2 < *a3)
  {
    v3 = v3;
    do
    {
      v5 = *(**(a1 + 24) + 8 * v3);
      v6 = *(*(a1 + 32) + 24) * (*(*(a1 + 32) + 24) + *(*(a1 + 32) + 24)) / **(a1 + 32);
      result = vmulq_n_f32(vmulq_n_f32(*(**(a1 + 16) + 16 * v3), v5), v6);
      *(**(a1 + 8) + 16 * v3++) = result;
    }

    while (v4 != v3);
  }

  return result;
}

void *sub_24BCA1A48(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BC91F24(result, a2);
  }

  return result;
}

void sub_24BCA1AA4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *sub_24BCA1AC0(char **a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_24BCA182C(a1, v10);
    }

    sub_24BC8E01C();
  }

  v11 = a1[1];
  v12 = v11 - result;
  if (a4 <= (v11 - result) >> 4)
  {
    while (v5 != a3)
    {
      v18 = *v5++;
      *result = v18;
      result += 16;
    }

    a1[1] = result;
  }

  else
  {
    v13 = (a2 + v12);
    if (v11 != result)
    {
      do
      {
        v14 = *v5++;
        *result = v14;
        result += 16;
        v12 -= 16;
      }

      while (v12);
      v11 = a1[1];
    }

    v15 = v11;
    if (v13 != a3)
    {
      v15 = v11;
      v16 = v11;
      do
      {
        v17 = *v13++;
        *v16 = v17;
        v16 += 16;
        v15 += 16;
      }

      while (v13 != a3);
    }

    a1[1] = v15;
  }

  return result;
}

__n128 sub_24BCA1C6C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F92AB0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void sub_24BCA1CAC(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (*a2 < *a3)
  {
    v4 = **(a1 + 8);
    v5 = *(a1 + 32);
    v6 = **(a1 + 40);
    v7 = *a3 - v3;
    v8 = (**(a1 + 16) + 8 * v3);
    v9 = (**(a1 + 24) + 8 * v3);
    v10 = 2 * v3;
    do
    {
      v11 = *v9++;
      v12 = vsubq_f32(*(v6 + 16 * *(v4 + 4 * v10)), *(v6 + 16 * *(v4 + 4 * (v10 + 1))));
      v13 = vmulq_f32(v12, v12);
      v13.i32[3] = 0;
      *v8++ = v11 * exp(*v5 * vaddv_f32(*&vpaddq_f32(v13, v13)));
      v10 += 2;
      --v7;
    }

    while (v7);
  }
}

__n128 sub_24BCA1E04(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F92AF8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void **sub_24BCA1E44(void **result, unint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  if (*a2 < *a3)
  {
    v3 = v3;
    do
    {
      if ((*(*result[1] + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3))
      {
        ++v3;
      }

      else
      {
        v5 = *result[2];
        v6 = *(v5 + 4 * v3);
        v7 = *(v5 + 4 * (v3 + 1));
        if (v6 < v7)
        {
          v8 = v7 - v6;
          v9 = 2 * v6;
          do
          {
            v10 = *result[3];
            v11 = *(*result[6] + 8 * *(v10 + 4 * (v9 + 1)));
            *(*result[4] + 16 * v3) = vaddq_f32(*(*result[4] + 16 * v3), vmulq_n_f32(*(*result[5] + 16 * *(v10 + 4 * v9)), v11));
            v9 += 2;
            --v8;
          }

          while (v8);
        }

        v12 = *result[4];
        v13 = *(v12 + 16 * v3);
        v14 = vmulq_f32(v13, v13);
        v14.i32[3] = 0;
        v15 = vpaddq_f32(v14, v14);
        v16 = vpaddq_f32(v15, v15);
        v17 = xmmword_24BFBD1C0;
        if (v16.f32[0] > 0.0)
        {
          v17 = vdivq_f32(v13, vsqrtq_f32(v16));
        }

        *(v12 + 16 * v3++) = v17;
      }
    }

    while (v3 != v4);
  }

  return result;
}

void sub_24BCA1F3C()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, &unk_285F92B30, MEMORY[0x277D82660]);
}

void sub_24BCA1F88(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      sub_24BC8E01C();
    }

    v8 = v6 >> 4;
    v9 = v4 - *a1;
    if (v9 >> 3 > v7)
    {
      v7 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v15 = a1;
    if (v10)
    {
      sub_24BCA1868(a1, v10);
    }

    __p = 0;
    v12 = 16 * v8;
    v14 = 0;
    bzero((16 * v8), 16 * a2);
    v13 = 16 * v8 + 16 * a2;
    sub_24BCA20D0(a1, &__p);
    if (v13 != v12)
    {
      v13 += (v12 - v13 + 15) & 0xFFFFFFFFFFFFFFF0;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_24BCA2098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__int128 **sub_24BCA20D0(__int128 **result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = (a2[1] + *result - v3);
  if (v3 != *result)
  {
    v5 = (a2[1] + *result - v3);
    do
    {
      v6 = *v2++;
      *v5++ = v6;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v7 = result[1];
  result[1] = a2[2];
  a2[2] = v7;
  v8 = result[2];
  result[2] = a2[3];
  a2[3] = v8;
  *a2 = a2[1];
  return result;
}

void *sub_24BCA2138(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BC91F24(result, a2);
  }

  return result;
}

void sub_24BCA21F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_24BCA22A4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F92B58;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

void sub_24BCA22F4(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (*a2 < *a3)
  {
    v5 = v3;
    v6 = *a3;
    v7 = 3 * v3;
    do
    {
      __src = 0;
      __dst = 0;
      v64 = 0;
      v59 = 0;
      v60 = 0;
      v8 = v7;
      v9 = 3;
      v61 = 0;
      do
      {
        v10 = *(**(a1 + 8) + 4 * v8);
        v11 = (**(a1 + 16) + 24 * v10);
        sub_24BCA2788(&__src, __dst, *v11, v11[1], (v11[1] - *v11) >> 2);
        v12 = (**(a1 + 24) + 24 * v10);
        sub_24BCA2788(&v59, v60, *v12, v12[1], (v12[1] - *v12) >> 2);
        ++v8;
        --v9;
      }

      while (v9);
      std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
      v13 = sub_24BCA29B4(__src, __dst);
      v14 = __dst;
      if (v13 != __dst)
      {
        v14 = v13;
        __dst = v13;
      }

      v15 = (**(a1 + 32) + 24 * v5);
      if (v15 != &__src)
      {
        sub_24BCA2A30(v15, __src, v14, (v14 - __src) >> 2);
      }

      std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
      v16 = sub_24BCA29B4(v59, v60);
      if (v16 != v60)
      {
        v60 = v16;
      }

      v17 = v16 - v59;
      v18 = (__dst - __src) >> 2;
      v19 = v18;
      sub_24BCA18B0(v58, v18);
      sub_24BCA1A48(v57, v18);
      v20 = (v17 >> 2);
      sub_24BCA1A48(__p, v20);
      if ((v17 & 0x3FFFFFFFCLL) != 0)
      {
        v21 = 0;
        v22 = v59;
        v23 = **(a1 + 40);
        v24 = __p[0];
        do
        {
          v24[v21] = *(v23 + 8 * v22[v21]);
          ++v21;
        }

        while (v20 != v21);
        v25 = *v24;
        v26 = 0.0;
        do
        {
          v27 = *v24++;
          v28 = v27;
          if (v25 < v27)
          {
            v25 = v28;
          }

          v26 = v26 + v28;
          --v20;
        }

        while (v20);
        *(**(a1 + 48) + 8 * v5) = v25 / (v26 + **(a1 + 56));
      }

      if (v18)
      {
        v29 = 0;
        do
        {
          v30 = *(__src + v29);
          *(v58[0] + v29) = *(**(a1 + 64) + 16 * v30);
          v31 = *(**(a1 + 72) + 8 * v30);
          v32 = v57[0];
          *(v57[0] + v29++) = v31;
        }

        while (v18 != v29);
        v33 = v18 - 1;
        if (v18 == 1)
        {
          *(**(a1 + 48) + 8 * v5) = *(**(a1 + 48) + 8 * v5) * 0.0;
          goto LABEL_36;
        }
      }

      else
      {
        v33 = -1;
      }

      v34 = 0;
      v35 = v33;
      v36 = (v58[0] + 16);
      v37 = 0.0;
      do
      {
        v38 = v34 + 1;
        v39 = 0.0;
        if (v34 + 1 < v18)
        {
          v40 = *(v58[0] + v34);
          v41 = v36;
          v42 = v33;
          do
          {
            v43 = *v41++;
            v44 = vsubq_f32(v43, v40);
            v45 = vmulq_f32(v44, v44);
            v45.i32[3] = 0;
            v46 = sqrtf(vaddv_f32(*&vpaddq_f32(v45, v45)));
            if (v39 < v46)
            {
              v39 = v46;
            }

            --v42;
          }

          while (v42);
        }

        if (v37 < v39)
        {
          v37 = v39;
        }

        --v33;
        ++v36;
        v34 = v38;
      }

      while (v38 != v35);
      *(**(a1 + 48) + 8 * v5) = v37 * *(**(a1 + 48) + 8 * v5);
      if (v18)
      {
        v32 = v57[0];
LABEL_36:
        v47 = 0uLL;
        v48 = v58[0];
        do
        {
          v49 = *v32++;
          v50 = v49;
          v51 = *v48++;
          v47 = vaddq_f32(v47, vmulq_n_f32(v51, v50));
          --v19;
        }

        while (v19);
        goto LABEL_40;
      }

      v47 = 0uLL;
LABEL_40:
      v52 = vmulq_f32(v47, v47);
      v52.i32[3] = 0;
      v53 = vpaddq_f32(v52, v52);
      v54 = vpaddq_f32(v53, v53);
      v55 = xmmword_24BFBD1C0;
      if (v54.f32[0] > 0.0)
      {
        v55 = vdivq_f32(v47, vsqrtq_f32(v54));
      }

      *(**(a1 + 80) + 16 * v5) = v55;
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v57[0])
      {
        v57[1] = v57[0];
        operator delete(v57[0]);
      }

      if (v58[0])
      {
        v58[1] = v58[0];
        operator delete(v58[0]);
      }

      if (v59)
      {
        v60 = v59;
        operator delete(v59);
      }

      if (__src)
      {
        __dst = __src;
        operator delete(__src);
      }

      ++v5;
      v7 += 3;
    }

    while (v5 != v6);
  }
}

void sub_24BCA2718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a20)
  {
    operator delete(a20);
  }

  if (a23)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

char *sub_24BCA2788(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 2);
    if (v12 >> 62)
    {
      sub_24BC8E01C();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      sub_24BC92E0C(a1, v15);
    }

    v33 = 4 * v16;
    v34 = 4 * a5;
    v35 = (4 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 4;
    }

    while (v34);
    memcpy((v33 + 4 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 4 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (4 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 2;
  if (v18 >= a5)
  {
    v29 = &__dst[4 * a5];
    v30 = (v10 - 4 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v29);
    }

    v28 = 4 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[4 * a5];
    v23 = v10 + v20;
    if (&v21[-4 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -4 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 4;
        v24 += 4;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[4 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

int *sub_24BCA29B4(int *a1, int *a2)
{
  result = a2;
  if (a1 != a2)
  {
    v4 = a1 + 1;
    while (v4 != a2)
    {
      v5 = *(v4 - 1);
      v6 = *v4++;
      if (v5 == v6)
      {
        v7 = v4 - 2;
        goto LABEL_7;
      }
    }

    v7 = a2;
LABEL_7:
    result = a2;
    if (v7 != a2)
    {
      v8 = v7 + 2;
      if (v7 + 2 != a2)
      {
        v9 = *v7;
        do
        {
          v10 = v9;
          v9 = *v8;
          if (v10 != *v8)
          {
            v7[1] = v9;
            ++v7;
          }

          ++v8;
        }

        while (v8 != a2);
      }

      return v7 + 1;
    }
  }

  return result;
}

void *sub_24BCA2A30(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_24BC94FEC(v6, v10);
    }

    sub_24BC8E01C();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

__n128 sub_24BCA2BD8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F92BA0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_24BCA2C10(void **a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a2;
  v6 = *a3;
  if (*a2 < *a3)
  {
    __p[9] = v3;
    __p[10] = v4;
    v8 = v5;
    v9 = v6;
    do
    {
      v10 = (*a1[1] + 24 * v8);
      v11 = v10[1];
      if (*v10 != v11)
      {
        sub_24BCA1A48(__p, (v11 - *v10) >> 2);
        v12 = *v10;
        v13 = v10[1] - *v10;
        v14 = v13 >> 2;
        if (!(v13 >> 2))
        {
          goto LABEL_8;
        }

        v15 = 0;
        v16 = __p[0];
        v17 = *a1[2];
        v18 = (v13 >> 2);
        do
        {
          v16[v15] = *(v17 + 8 * *(v12 + 4 * v15));
          ++v15;
        }

        while (v18 != v15);
        if (v14 != 1)
        {
          LODWORD(v19) = 0;
          v20 = *v16;
          v21 = 1;
          do
          {
            v22 = v16[v21];
            if (v22 >= v20)
            {
              v19 = v19;
            }

            else
            {
              v19 = v21;
            }

            if (v22 < v20)
            {
              v20 = v16[v21];
            }

            ++v21;
          }

          while (v18 != v21);
        }

        else
        {
LABEL_8:
          v19 = 0;
        }

        *(*a1[3] + 16 * v8) = *(*a1[4] + 16 * *(v12 + 4 * v19));
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }

      ++v8;
    }

    while (v8 != v9);
  }
}

uint64_t sub_24BCA2D38(uint64_t a1, uint64_t a2)
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

uint64_t sub_24BCA2DD0(uint64_t a1, uint64_t a2)
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

__n128 sub_24BCA2EF4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F92BE8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void sub_24BCA2F3C(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (*a2 < *a3)
  {
    v20 = **(a1 + 8);
    v4 = **(a1 + 32);
    v19 = *(a1 + 56);
    v5 = *(a1 + 40);
    v6 = (**(a1 + 48) + 8 * v3);
    v7 = **(a1 + 64);
    v8 = *a3 - v3;
    v9 = (**(a1 + 24) + 8 * v3);
    v10 = (**(a1 + 16) + 8 * v3);
    v11 = 2 * v3;
    do
    {
      v12 = *(v20 + 4 * v11);
      v13 = *(v20 + 4 * (v11 + 1));
      v14 = *v10++;
      v15 = *(v4 + 8 * v12) + *(v4 + 8 * v13);
      *v9++ = v15 * exp(v14 * (v14 * *v5));
      v16 = vsubq_f32(*(v7 + 16 * v12), *(v7 + 16 * v13));
      v17 = vmulq_f32(v16, v16);
      v17.i32[3] = 0;
      v18 = *(v4 + 8 * v12) + *(v4 + 8 * v13);
      *v6++ = v18 * exp(v14 * (v14 * *v5) + *v19 * vaddv_f32(*&vpaddq_f32(v17, v17)));
      v11 += 2;
      --v8;
    }

    while (v8);
  }
}

__n128 sub_24BCA30F8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F92C30;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_24BCA3130(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  if (*a2 < *a3)
  {
    v3 = v3;
    v5 = *(result + 16);
    v6 = **(result + 8);
    v7 = *(result + 24);
    do
    {
      v8 = (v6 + 24 * v3);
      v9 = *v8;
      v10 = v8[1];
      if (v9 != v10)
      {
        v11 = *(*v5 + 4 * v3);
        v12 = v11 + ((v10 - v9) >> 3);
        if (v11 < v12)
        {
          v13 = *v7;
          v14 = v12 - v11;
          v15 = 2 * v11;
          LODWORD(result) = 1;
          do
          {
            *(v13 + 4 * v15) = *(v9 + 4 * (result - 1));
            *(v13 + 4 * (v15 + 1)) = *(v9 + 4 * result);
            v15 += 2;
            result = (result + 2);
            --v14;
          }

          while (v14);
        }
      }

      ++v3;
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t sub_24BCA323C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F92C78;
  a2[1] = v2;
  return result;
}

void *sub_24BCA3290(void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
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

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BCA34E8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_24BC8DCE8(a1);
}

uint64_t sub_24BCA3564(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F92CC0;
  a2[1] = v2;
  return result;
}

void *sub_24BCA35BC(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BCA3634(result, a2);
  }

  return result;
}

void sub_24BCA3618(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BCA3634(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_24BCA3670(a1, a2);
  }

  sub_24BC8E01C();
}

void sub_24BCA3670(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_24BC8DFE8();
}

__n128 sub_24BCA372C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F92D08;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_24BCA375C(uint64_t result, void *a2, int *a3)
{
  v3 = *a3;
  if (*a2 < *a3)
  {
    v4 = result;
    v5 = *a2;
    do
    {
      v12 = v5;
      result = sub_24BC9ECE4(*(v4 + 8), *(*(v4 + 8) + 180), v5);
      if ((v6 & *result) != 0)
      {
        v7 = *(sub_24BCB9024(*(v4 + 8) + 104, &v12) + 12);
        v8 = *(v4 + 8);
        v9 = sub_24BCB9024(v8 + 104, &v12);
        result = sub_24BCB9024(v8 + 104, v9);
        v10 = *(result + 12);
        v11 = **(v4 + 16);
        *(v11 + ((v7 >> 3) & 0x1FFFFFF8)) |= 1 << v7;
        *(v11 + ((v10 >> 3) & 0x1FFFFFF8)) |= 1 << v10;
      }

      ++v5;
    }

    while (v3 != v5);
  }

  return result;
}

void *sub_24BCA3844(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BCA3900(result, a2);
  }

  return result;
}

void sub_24BCA3900(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_24BCA394C(a1, a2);
  }

  sub_24BC8E01C();
}

void sub_24BCA394C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_24BC8DFE8();
}

uint64_t sub_24BCA39A4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BC91F24(result, a4);
  }

  return result;
}

void sub_24BCA3A04(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_24BCA3AA4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F92D50;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

double sub_24BCA3AE4(uint64_t a1, unint64_t *a2, uint64_t *a3, double result)
{
  v4 = *a2;
  v5 = *a3;
  if (*a2 < *a3)
  {
    v4 = v4;
    v6 = *(a1 + 8);
    v7 = **(a1 + 16);
    v8 = *(a1 + 24);
    v9 = **(a1 + 32);
    v10 = *v9;
    v11 = v9[3];
    v12 = v9[6];
    v13 = (*(*(a1 + 40) + 40) + 16 * v4 + 8);
    do
    {
      v14 = *v6;
      if ((*(v7 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v4))
      {
        v14 = v14 + *v8;
      }

      v15 = *(v13 - 1);
      *(v10 + 8 * v4) = v14 * *(v13 - 2);
      *(v11 + 8 * v4) = v14 * v15;
      v16 = *v13;
      v13 += 4;
      result = v14 * v16;
      *(v12 + 8 * v4++) = result;
    }

    while (v5 != v4);
  }

  return result;
}

uint64_t sub_24BCA3B84(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
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

void *sub_24BCA3BD0(void *a1, unint64_t *a2)
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
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
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

      result = *result;
    }

    while (result);
  }

  return result;
}

void *sub_24BCA3C84(void *a1, unint64_t *a2)
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
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
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

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_24BCA3EB4(uint64_t a1, size_t __n)
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

      sub_24BCA3FA4(a1, prime);
    }
  }
}

void sub_24BCA3FA4(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_24BC8DFE8();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *sub_24BCA4108(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BCA182C(result, a2);
  }

  return result;
}

void sub_24BCA4164(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BCA4180(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BCA421C(result, a2);
  }

  return result;
}

void sub_24BCA4200(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BCA421C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    sub_24BCA4268(a1, a2);
  }

  sub_24BC8E01C();
}

void sub_24BCA4268(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_24BC8DFE8();
}

__n128 sub_24BCA4344(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F92D98;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void sub_24BCA4384(uint64_t a1, void *a2, void *a3)
{
  if (*a2 < *a3)
  {
    v3 = *a2;
    v4 = *a3;
    v5 = *(a1 + 16);
    v6 = **(a1 + 8);
    v25 = *(a1 + 32);
    v7 = **(a1 + 24);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    do
    {
      if (v6)
      {
        bzero(*(*v5 + 24 * v3), 8 * v6);
      }

      if (v7)
      {
        v10 = 0;
        v11 = *v25;
        v12 = *(*v5 + 24 * v3);
        v13 = *v8 + 16;
        do
        {
          v14 = *(v11 + 4 * v10);
          v15 = *(v11 + 4 * (v10 + 1));
          v16 = *(v11 + 4 * (v10 + 2));
          v17 = (v13 + 4 * (v3 & 3));
          v18 = *(v17 - 4);
          v19 = *v17;
          v20 = v17[4];
          *(v12 + 8 * v14) = *(v12 + 8 * v14) + v19 * -0.333333333 + v18 * 0.666666667 + v20 * -0.333333333;
          *(v12 + 8 * v15) = *(v12 + 8 * v15) + v19 * 0.666666667 + v18 * -0.333333333 + v20 * -0.333333333;
          *(v12 + 8 * v16) = v19 * -0.333333333 + v18 * -0.333333333 + v20 * 0.666666667 + *(v12 + 8 * v16);
          v10 += 3;
          v13 += 48;
        }

        while (3 * v7 != v10);
      }

      if (v6)
      {
        v21 = *(*v9 + 24 * v3);
        v22 = *(*v5 + 24 * v3);
        v23 = v6;
        do
        {
          v24 = *v21++;
          *v22 = v24 + *v22;
          ++v22;
          --v23;
        }

        while (v23);
      }

      ++v3;
    }

    while (v3 != v4);
  }
}

__n128 sub_24BCA45AC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F92DE0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_24BCA45EC(uint64_t result, void *a2, void *a3)
{
  if (*a2 < *a3)
  {
    v3 = result;
    v4 = *a2;
    v5 = *a3;
    v6 = **(result + 32);
    do
    {
      result = sub_24BDCC2E0(*(v3 + 8), *(**(v3 + 16) + 24 * v4), **(v3 + 24), *(v6 + 24 * v4), **(v3 + 24));
      v6 = **(v3 + 32);
      v7 = *(v6 + 24 * v4);
      v8 = *(v6 + 24 * v4 + 8) - v7;
      if (v8)
      {
        v9 = 0;
        v10 = v8 >> 3;
        v11 = 1;
        do
        {
          v12 = *(v7 + 8 * v9);
          v9 = v11;
        }

        while (v10 > v11++);
      }

      v14 = *(v3 + 48);
      if (*v14 == 1)
      {
        v15 = **(v3 + 40) ^ 1;
      }

      else
      {
        v15 = 0;
      }

      *v14 = v15 & 1;
      ++v4;
    }

    while (v4 != v5);
  }

  return result;
}

__n128 sub_24BCA4768(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F92E28;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_24BCA47A0(uint64_t result, unint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  if (*a2 < *a3)
  {
    v3 = v3;
    v5 = *(result + 16);
    v6 = **(result + 8);
    v7 = *(result + 24);
    v8 = 16 * v3;
    do
    {
      if (((*(v6 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3) & 1) == 0)
      {
        v9 = *v7;
        v10 = *(**v7 + 8 * v3);
        v11 = (*(v5 + 40) + v8);
        v12 = *(*(*v7 + 24) + 8 * v3);
        *v11 = v10;
        v11[1] = v12;
        v13 = *(v9[6] + 8 * v3);
        v11[2] = v13;
      }

      ++v3;
      v8 += 16;
    }

    while (v4 != v3);
  }

  return result;
}

void sub_24BCA4828(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      memset(*(a1 + 8), 255, 4 * a2);
      v5 += 4 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      sub_24BC8E01C();
    }

    v9 = v4 - v6;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_24BC92E0C(a1, v10);
    }

    v11 = (4 * (v7 >> 2));
    memset(v11, 255, 4 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[4 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

__n128 sub_24BCA49D0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F92E70;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_24BCA4A00(uint64_t result, unsigned int *a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = *a3;
  if (*a2 < *a3)
  {
    v5 = result;
    v6 = 3 * v3;
    do
    {
      v10 = -1;
      v11 = v3;
      v8 = -1;
      v9 = -1;
      result = sub_24BC96388(*(v5 + 8), &v11, &v10, &v9, &v8);
      v7 = v9;
      *(*(*(v5 + 16) + 152) + 4 * v6) = v10;
      *(*(*(v5 + 16) + 152) + 4 * (v6 + 1)) = v7;
      *(*(*(v5 + 16) + 152) + 4 * (v6 + 2)) = v8;
      ++v3;
      v6 += 3;
    }

    while (v4 != v3);
  }

  return result;
}

uint64_t sub_24BCA4B24(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F92EB8;
  a2[1] = v2;
  return result;
}

uint64_t sub_24BCA4BE4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F92F00;
  a2[1] = v2;
  return result;
}

uint64_t sub_24BCA4C10(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  if (*a2 < *a3)
  {
    v3 = v3;
    do
    {
      v5 = **(result + 8);
      v6 = *(v5 + 16 * v3);
      v7 = vmulq_f32(v6, v6);
      v7.i32[3] = 0;
      v8 = vpaddq_f32(v7, v7);
      v9 = vpaddq_f32(v8, v8);
      v10 = xmmword_24BFBD1C0;
      if (v9.f32[0] > 0.0)
      {
        v10 = vdivq_f32(v6, vsqrtq_f32(v9));
      }

      *(v5 + 16 * v3++) = v10;
    }

    while (v4 != v3);
  }

  return result;
}

uint64_t sub_24BCA4CE4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F92F48;
  a2[1] = v2;
  return result;
}

uint64_t sub_24BCA4DA0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F92F90;
  a2[1] = v2;
  return result;
}

__n128 sub_24BCA4E6C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F92FD8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_24BCA4E9C(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *(result + 8);
  *v7 = v5;
  v7[1] = v6;
  v8 = *(result + 16);
  if (*(v8 + 56))
  {
    return sub_24BC98654(v8 + 32, v5, v6, a3);
  }

  return result;
}

void *sub_24BCA4ECC(void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
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

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BCA5124(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_24BC8DCE8(a1);
}

void *sub_24BCA5130(void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
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

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BCA5388(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_24BC8DCE8(a1);
}

__n128 sub_24BCA5408(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F93020;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_24BCA5438(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *(result + 8);
  *v7 = v5;
  v7[1] = v6;
  v8 = *(result + 16);
  if (*(v8 + 56))
  {
    return sub_24BC98654(v8 + 32, v5, v6, a3);
  }

  return result;
}

__n128 sub_24BCA54E4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F93068;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void *sub_24BCA5554(void *result, int a2)
{
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 != 2)
      {
        sub_24BCA5668();
      }

      operator new();
    }

    if (a2 == 1)
    {
      operator new();
    }

    goto LABEL_11;
  }

  if (a2 > 5)
  {
    if (a2 == 8)
    {
      operator new();
    }

    goto LABEL_11;
  }

  if (a2 != 4)
  {
LABEL_11:
    *result = 0;
    return result;
  }

  *result = 0;
  return result;
}

void sub_24BCA56C4(int a1@<W1>, std::string *a2@<X8>)
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

void sub_24BCA57E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

uint64_t sub_24BCA5848(uint64_t a1, int a2, char *a3)
{
  *a1 = &unk_285F930C8;
  *(a1 + 8) = a2;
  std::runtime_error::runtime_error((a1 + 16), a3);
  return a1;
}

void sub_24BCA58B4(std::runtime_error *a1)
{
  a1->__vftable = &unk_285F930C8;
  std::runtime_error::~runtime_error(a1 + 1);

  std::exception::~exception(a1);
}

void sub_24BCA5908(std::runtime_error *a1)
{
  a1->__vftable = &unk_285F930C8;
  std::runtime_error::~runtime_error(a1 + 1);
  std::exception::~exception(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BCA5BF4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5)
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
      if (**v10 != 2 || *(*(v11 + 1) + 8) - **(v11 + 1) != 32 || *sub_24BCA6058(v11, 0) != 3)
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
        sub_24BC836D4(&v15, "cannot create object from initializer list");
        sub_24BCA5E44(301, &v15, exception);
        __cxa_throw(exception, &unk_285F930E0, sub_24BCA5F88);
      }

      if (!v13)
      {
LABEL_18:
        *a1 = 2;
        v15 = a2;
        sub_24BCA5FDC();
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

void sub_24BCA5E44(int a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_24BC836D4(&__p, "type_error");
  sub_24BCA56C4(a1, &v14);
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

  sub_24BCA5848(a3, a1, v11);
  *a3 = &unk_285F93108;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_24BCA5F40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BCA5F88(std::runtime_error *a1)
{
  a1->__vftable = &unk_285F930C8;
  std::runtime_error::~runtime_error(a1 + 1);

  std::exception::~exception(a1);
}

uint64_t sub_24BCA6058(uint64_t a1, uint64_t a2)
{
  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v5 = sub_24BCA6188(a1);
    sub_24BC836D4(&v8, v5);
    v6 = std::string::insert(&v8, 0, "cannot use operator[] with a numeric argument with ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v10 = v6->__r_.__value_.__r.__words[2];
    v9 = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    sub_24BCA5E44(305, &v9, exception);
    __cxa_throw(exception, &unk_285F930E0, sub_24BCA5F88);
  }

  return **(a1 + 8) + 16 * a2;
}

void sub_24BCA6128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

const char *sub_24BCA6188(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 9)
  {
    return "number";
  }

  else
  {
    return off_27916C340[v1];
  }
}

void sub_24BCA61B0(std::runtime_error *a1)
{
  a1->__vftable = &unk_285F930C8;
  std::runtime_error::~runtime_error(a1 + 1);
  std::exception::~exception(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BCA6218(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  *a1 = v3;
  *(a1 + 8) = 0;
  if (v3 <= 4)
  {
    if (v3 <= 2)
    {
      if (v3 == 1)
      {
        v7 = *(a2 + 1);
        sub_24BCA62E4();
      }

      if (v3 == 2)
      {
        v4 = *(a2 + 1);
        sub_24BCA68BC();
      }

      return a1;
    }

    if (v3 == 3)
    {
      v8 = *(a2 + 1);
      sub_24BCA6A78();
    }

    v6 = a2[8];
LABEL_14:
    *(a1 + 8) = v6;
    return a1;
  }

  if (v3 < 8)
  {
    v6 = *(a2 + 1);
    goto LABEL_14;
  }

  if (v3 == 8)
  {
    v5 = *(a2 + 1);
    sub_24BCA6AF4();
  }

  return a1;
}

void *sub_24BCA6340(void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_24BCA6398(a1, *a2, a2 + 1);
  return a1;
}

uint64_t sub_24BCA6398(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_24BCA6420(v5, (v5 + 1), v4 + 4);
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

uint64_t sub_24BCA6420(void *a1, uint64_t a2, const void **a3)
{
  result = *sub_24BCA64A4(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_24BCA6648();
  }

  return result;
}

uint64_t sub_24BCA64A4(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, const void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 != a2 && !sub_24BCA66DC(a1, a5, (a2 + 32)))
  {
    if (!sub_24BCA66DC(a1, (a2 + 32), a5))
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
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!sub_24BCA66DC(a1, a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

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

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 8;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = *(v11 + 8);
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = *(v16 + 16);
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (sub_24BCA66DC(a1, (v12 + 32), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_24BCA6748(a1, a3, a5);
}

void sub_24BCA66C0(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_24BCA685C(v3, v2);
  _Unwind_Resume(a1);
}

BOOL sub_24BCA66DC(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

uint64_t sub_24BCA6748(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_24BCA66DC(a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!sub_24BCA66DC(a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

char *sub_24BCA67E4(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_24BC8DE9C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  sub_24BCA6218(__dst + 24, a2 + 24);
  return __dst;
}

void sub_24BCA6840(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BCA685C(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    sub_24BC9F9D8(*a1, __p + 32);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

uint64_t sub_24BCA6928(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BCA69B0(result, a4);
  }

  return result;
}

void sub_24BCA6990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_24BC9FA2C(&a9);
  _Unwind_Resume(a1);
}

void sub_24BCA69B0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_24BC9F6D4(a1, a2);
  }

  sub_24BC8E01C();
}

uint64_t sub_24BCA69EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a4;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      sub_24BCA6218(a4, v5);
      v5 += 16;
      a4 = v7 + 16;
      v7 += 16;
    }

    while (v5 != a3);
  }

  return a4;
}

uint64_t sub_24BCA6B64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_24BC94F24(result, a4);
  }

  return result;
}

void sub_24BCA6BC4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BCA6BE0(uint64_t a1, const void **a2)
{
  v2 = *sub_24BCA6748(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_24BCA6CA8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BCA69B0(result, a4);
  }

  return result;
}

void sub_24BCA6D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_24BC9FA2C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_24BCA6D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a4;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      sub_24BCA6DBC(a4, v5);
      v5 += 32;
      a4 = v7 + 16;
      v7 += 16;
    }

    while (v5 != a3);
  }

  return a4;
}

uint64_t sub_24BCA6DBC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = *(a2 + 16);
  if (v3 == 1)
  {
    v5 = *v4;
    v6 = *(v4 + 8);
    *v4 = 0;
    *(v4 + 8) = 0;
  }

  else
  {
    sub_24BCA6218(v8, v4);
    v5 = v8[0];
    v6 = v9;
  }

  *a1 = v5;
  *(a1 + 8) = v6;
  v8[0] = 0;
  v9 = 0;
  sub_24BC9F18C(&v9, 0);
  return a1;
}

uint64_t sub_24BCA6E3C(uint64_t a1)
{
  if (**a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_24BC836D4(v3, "cannot use key() for non-object iterators");
    sub_24BCA7088(207, v3, exception);
    __cxa_throw(exception, &unk_285F93120, sub_24BCA71CC);
  }

  return *(a1 + 8) + 32;
}

void sub_24BCA6ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

unsigned __int8 **sub_24BCA6F10(unsigned __int8 **result)
{
  v1 = **result;
  if (v1 == 2)
  {
    result[2] += 16;
  }

  else if (v1 == 1)
  {
    v2 = result[1];
    v3 = *(v2 + 1);
    if (v3)
    {
      do
      {
        v4 = v3;
        v3 = *v3;
      }

      while (v3);
    }

    else
    {
      do
      {
        v4 = *(v2 + 2);
        v5 = *v4 == v2;
        v2 = v4;
      }

      while (!v5);
    }

    result[1] = v4;
  }

  else
  {
    ++result[3];
  }

  return result;
}

BOOL sub_24BCA6F80(unsigned __int8 **a1, unsigned __int8 **a2)
{
  if (*a1 != *a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_24BC836D4(v7, "cannot compare iterators of different containers");
    sub_24BCA7088(212, v7, exception);
    __cxa_throw(exception, &unk_285F93120, sub_24BCA71CC);
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

void sub_24BCA7050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void sub_24BCA7088(int a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_24BC836D4(&__p, "invalid_iterator");
  sub_24BCA56C4(a1, &v14);
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

  sub_24BCA5848(a3, a1, v11);
  *a3 = &unk_285F93148;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_24BCA7184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BCA71CC(std::runtime_error *a1)
{
  a1->__vftable = &unk_285F930C8;
  std::runtime_error::~runtime_error(a1 + 1);

  std::exception::~exception(a1);
}

void sub_24BCA7220(std::runtime_error *a1)
{
  a1->__vftable = &unk_285F930C8;
  std::runtime_error::~runtime_error(a1 + 1);
  std::exception::~exception(a1);

  JUMPOUT(0x24C2548B0);
}

_BYTE *sub_24BCA7288(uint64_t a1)
{
  result = *a1;
  v3 = *result;
  if (v3 == 1)
  {
    return (*(a1 + 8) + 56);
  }

  if (v3 == 2)
  {
    return *(a1 + 16);
  }

  if (!*result)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_24BC836D4(v6, "cannot get value");
    sub_24BCA7088(214, v6, exception);
    __cxa_throw(exception, &unk_285F93120, sub_24BCA71CC);
  }

  if (*(a1 + 24))
  {
    v4 = __cxa_allocate_exception(0x20uLL);
    sub_24BC836D4(v6, "cannot get value");
    sub_24BCA7088(214, v6, v4);
    __cxa_throw(v4, &unk_285F93120, sub_24BCA71CC);
  }

  return result;
}

void sub_24BCA739C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    __cxa_free_exception(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BCA73D4(uint64_t a1, const void **a2)
{
  result = *sub_24BCA6748(a1, &v3, a2);
  if (!result)
  {
    sub_24BCA746C();
  }

  return result;
}

void sub_24BCA750C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_24BCA685C(v3, v2);
  _Unwind_Resume(a1);
}

void (****sub_24BCA7528(void (****result)(void), unsigned __int8 *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6))(void)
{
  v9 = result;
  v10 = *a2;
  if (v10 > 4)
  {
    if (*a2 <= 6u)
    {
      if (v10 == 5)
      {
        v23 = *(a2 + 1);

        return sub_24BCA8E48(result, v23);
      }

      else if (v10 == 6)
      {
        v21 = *(a2 + 1);

        return sub_24BCA9030(result, v21);
      }

      return result;
    }

    if (v10 == 7)
    {
      v30 = *(a2 + 1);

      return sub_24BCA9180(result, v30);
    }

    if (v10 != 8)
    {
      if (v10 != 9)
      {
        return result;
      }

      v14 = *result;
      v13 = (**v9)[1];
      goto LABEL_61;
    }

    v32 = *result;
    v33 = (**v9)[1];
    if (!a3)
    {
      v33();
      v39 = **(a2 + 1);
      v40 = *(*(a2 + 1) + 8);
      v41 = **(a2 + 1);
      if (v41 != v40)
      {
        while (v41 != v40 - 1)
        {
          v42 = *v41++;
          sub_24BCA8D70(v9, v42);
          (***v9)(*v9, 44);
          v40 = *(*(a2 + 1) + 8);
        }

        sub_24BCA8D70(v9, *(v40 - 1));
      }

      ((**v9)[1])(*v9, "],subtype:", 12);
      v50 = *(a2 + 1);
      if (*(v50 + 25) == 1)
      {
        sub_24BCA8D70(v9, *(v50 + 24));
        v51 = ***v9;

        return v51();
      }

      v13 = (**v9)[1];
      goto LABEL_61;
    }

    v33();
    v34 = (a6 + a5);
    v35 = v9 + 76;
    v36 = *(v9 + 631);
    if ((v36 & 0x80000000) != 0)
    {
      v52 = v9[77];
      if (v52 >= v34)
      {
        v37 = *v9;
LABEL_66:
        v38 = *v35;
        goto LABEL_67;
      }
    }

    else
    {
      if (v34 <= v36)
      {
        v37 = *v9;
        v38 = v9 + 76;
LABEL_67:
        ((*v37)[1])(v37, v38, v34);
        ((**v9)[1])(*v9, "bytes: [", 10);
        v53 = **(a2 + 1);
        v54 = *(*(a2 + 1) + 8);
        v55 = **(a2 + 1);
        if (v55 != v54)
        {
          for (; v55 != v54 - 1; v54 = *(*(a2 + 1) + 8))
          {
            v56 = *v55++;
            sub_24BCA8D70(v9, v56);
            ((**v9)[1])(*v9, ", ", 2);
          }

          sub_24BCA8D70(v9, *(v54 - 1));
        }

        ((**v9)[1])(*v9, "],\n", 3);
        v57 = v9 + 76;
        if (*(v9 + 631) < 0)
        {
          v57 = *v35;
        }

        ((**v9)[1])(*v9, v57, v34);
        ((**v9)[1])(*v9, "subtype: ", 11);
        v58 = *(a2 + 1);
        if (*(v58 + 25) == 1)
        {
          sub_24BCA8D70(v9, *(v58 + 24));
        }

        else
        {
          ((**v9)[1])(*v9, "null", 4);
        }

        (***v9)(*v9, 10);
        if (*(v9 + 631) < 0)
        {
          v59 = *v35;
        }

        v60 = (**v9)[1];
        goto LABEL_104;
      }

      v52 = *(v9 + 631);
    }

    std::string::resize((v9 + 76), 2 * v52, 32);
    v37 = *v9;
    v38 = v9 + 76;
    if ((*(v9 + 631) & 0x80000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

  if (*a2 <= 1u)
  {
    if (*a2)
    {
      v15 = *result;
      v16 = **v9;
      if (!*(*(a2 + 1) + 16))
      {
        v43 = v16[1];
        goto LABEL_46;
      }

      if (!a3)
      {
        (*v16)();
        v44 = *(a2 + 1);
        v45 = *v44;
        if (v44[2] == 1)
        {
          v46 = *v44;
        }

        else
        {
          v61 = 0;
          do
          {
            (***v9)(*v9, 34);
            sub_24BCA8724(v9, v45 + 4, a4);
            ((**v9)[1])(*v9, ":", 2);
            sub_24BCA7528(v9, v45 + 7, 0, a4, a5, a6);
            (***v9)();
            v62 = v45[1];
            if (v62)
            {
              do
              {
                v46 = v62;
                v62 = *v62;
              }

              while (v62);
            }

            else
            {
              do
              {
                v46 = v45[2];
                v63 = *v46 == v45;
                v45 = v46;
              }

              while (!v63);
            }

            ++v61;
            v45 = v46;
          }

          while (v61 < *(*(a2 + 1) + 16) - 1);
        }

        (***v9)(*v9, 34);
        sub_24BCA8724(v9, v46 + 4, a4);
        ((**v9)[1])(*v9, ":", 2);
        sub_24BCA7528(v9, v46 + 7, 0, a4, a5, a6);
        goto LABEL_105;
      }

      v16[1]();
      v17 = a6 + a5;
      v18 = v9 + 76;
      v19 = *(v9 + 631);
      if ((v19 & 0x80000000) != 0)
      {
        v20 = v9[77];
        if (v20 < v17)
        {
          goto LABEL_120;
        }
      }

      else if (v17 > v19)
      {
        v20 = *(v9 + 631);
LABEL_120:
        std::string::resize((v9 + 76), 2 * v20, 32);
      }

      v64 = *(a2 + 1);
      v65 = *v64;
      if (v64[2] == 1)
      {
        v66 = *v64;
      }

      else
      {
        v67 = 0;
        do
        {
          v68 = v9 + 76;
          if (*(v9 + 631) < 0)
          {
            v68 = *v18;
          }

          ((**v9)[1])(*v9, v68, (a6 + a5));
          (***v9)();
          sub_24BCA8724(v9, v65 + 4, a4);
          ((**v9)[1])(*v9, ": ", 3);
          sub_24BCA7528(v9, v65 + 7, 1, a4, a5, (a6 + a5));
          ((**v9)[1])(*v9, ",\n", 2);
          v69 = v65[1];
          if (v69)
          {
            do
            {
              v66 = v69;
              v69 = *v69;
            }

            while (v69);
          }

          else
          {
            do
            {
              v66 = v65[2];
              v63 = *v66 == v65;
              v65 = v66;
            }

            while (!v63);
          }

          ++v67;
          v65 = v66;
        }

        while (v67 < *(*(a2 + 1) + 16) - 1);
      }

      v70 = v9 + 76;
      if (*(v9 + 631) < 0)
      {
        v70 = *v18;
      }

      ((**v9)[1])(*v9, v70, (a6 + a5));
      (***v9)();
      sub_24BCA8724(v9, v66 + 4, a4);
      ((**v9)[1])(*v9, ": ", 3);
      sub_24BCA7528(v9, v66 + 7, 1, a4, a5, (a6 + a5));
      (***v9)();
      if (*(v9 + 631) < 0)
      {
        v71 = *v18;
      }

      v60 = (**v9)[1];
LABEL_104:
      v60();
LABEL_105:
      v13 = ***v9;
      goto LABEL_117;
    }

    v22 = *result;
    v13 = (**v9)[1];
LABEL_61:

    return v13();
  }

  switch(v10)
  {
    case 2u:
      v24 = *result;
      v25 = **v9;
      if (**(a2 + 1) != *(*(a2 + 1) + 8))
      {
        if (!a3)
        {
          (*v25)();
          v47 = *(a2 + 1);
          for (i = *v47; ; i += 16)
          {
            v49 = v47[1];
            if (i == v49 - 16)
            {
              break;
            }

            sub_24BCA7528(v9, i, 0, a4, a5, a6);
            (***v9)();
            v47 = *(a2 + 1);
          }

          sub_24BCA7528(v9, v49 - 16, 0, a4, a5, a6);
LABEL_116:
          v13 = ***v9;
LABEL_117:

          return v13();
        }

        v25[1]();
        v26 = a6 + a5;
        v27 = v9 + 76;
        v28 = *(v9 + 631);
        if ((v28 & 0x80000000) != 0)
        {
          v29 = v9[77];
          if (v29 < v26)
          {
            goto LABEL_121;
          }
        }

        else if (v26 > v28)
        {
          v29 = *(v9 + 631);
LABEL_121:
          std::string::resize((v9 + 76), 2 * v29, 32);
        }

        v72 = *(a2 + 1);
        v73 = *v72;
        if (*v72 != v72[1] - 16)
        {
          do
          {
            v74 = v9 + 76;
            if (*(v9 + 631) < 0)
            {
              v74 = *v27;
            }

            ((**v9)[1])(*v9, v74, (a6 + a5));
            sub_24BCA7528(v9, v73, 1, a4, a5, (a6 + a5));
            ((**v9)[1])(*v9, ",\n", 2);
            v73 += 16;
          }

          while (v73 != *(*(a2 + 1) + 8) - 16);
        }

        v75 = v9 + 76;
        if (*(v9 + 631) < 0)
        {
          v75 = *v27;
        }

        ((**v9)[1])(*v9, v75, (a6 + a5));
        sub_24BCA7528(v9, *(*(a2 + 1) + 8) - 16, 1, a4, a5, (a6 + a5));
        (***v9)();
        if (*(v9 + 631) < 0)
        {
          v27 = *v27;
        }

        ((**v9)[1])(*v9, v27, a6);
        goto LABEL_116;
      }

      v43 = v25[1];
LABEL_46:

      return v43();
    case 3u:
      v31 = *result;
      (***v9)();
      sub_24BCA8724(v9, *(a2 + 1), a4);
      v13 = ***v9;
      goto LABEL_117;
    case 4u:
      v12 = *result;
      v13 = (**v9)[1];
      a2[8];
      goto LABEL_61;
  }

  return result;
}

void sub_24BCA8528(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F93170;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BCA85CC(uint64_t a1, uint64_t a2, char a3)
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

void sub_24BCA870C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_24BC9EC78(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BCA8724(uint64_t result, uint64_t *a2, int a3)
{
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
  v12 = 0;
  v13 = 0;
  v14 = v3 >> 63;
  v15 = result + 90;
  do
  {
    v16 = *a2;
    if ((v14 & 1) == 0)
    {
      v16 = a2;
    }

    v17 = *(v16 + v9);
    if (v12)
    {
      v13 = *(v16 + v9) & 0x3F | (v13 << 6);
    }

    else
    {
      v13 = (0xFFu >> byte_24BFEE124[v17]) & v17;
    }

    v12 = byte_24BFEE124[16 * v12 + 256 + byte_24BFEE124[v17]];
    if (v12 == 1)
    {
      v19 = *(v7 + 158);
      if ((v19 - 1) < 2)
      {
        v9 -= v10 != 0;
        if (v19 != 1)
        {
LABEL_50:
          v12 = 0;
          v10 = 0;
          v8 = v11;
          goto LABEL_51;
        }

        v20 = v15 + v11;
        if (a3)
        {
          *v20 = 1717990748;
          *(v20 + 4) = 25702;
          v11 += 6;
        }

        else
        {
          v11 += 3;
          *v20 = -16401;
          *(v20 + 2) = -67;
        }

        goto LABEL_48;
      }

      if (!v19)
      {
        v45 = 3;
        *__str = 0;
        snprintf(__str, 3uLL, "%.2X", v17);
        exception = __cxa_allocate_exception(0x20uLL);
        std::to_string(&v38, v9);
        v28 = std::string::insert(&v38, 0, "invalid UTF-8 byte at index ");
        v29 = *&v28->__r_.__value_.__l.__data_;
        v39.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
        *&v39.__r_.__value_.__l.__data_ = v29;
        v28->__r_.__value_.__l.__size_ = 0;
        v28->__r_.__value_.__r.__words[2] = 0;
        v28->__r_.__value_.__r.__words[0] = 0;
        v30 = std::string::append(&v39, ": 0x");
        v31 = *&v30->__r_.__value_.__l.__data_;
        v40.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
        *&v40.__r_.__value_.__l.__data_ = v31;
        v30->__r_.__value_.__l.__size_ = 0;
        v30->__r_.__value_.__r.__words[2] = 0;
        v30->__r_.__value_.__r.__words[0] = 0;
        if (v45 >= 0)
        {
          v32 = __str;
        }

        else
        {
          v32 = *__str;
        }

        if (v45 >= 0)
        {
          v33 = v45;
        }

        else
        {
          v33 = v44;
        }

        v34 = std::string::append(&v40, v32, v33);
        v35 = *&v34->__r_.__value_.__l.__data_;
        v42 = v34->__r_.__value_.__r.__words[2];
        v41 = v35;
        v34->__r_.__value_.__l.__size_ = 0;
        v34->__r_.__value_.__r.__words[2] = 0;
        v34->__r_.__value_.__r.__words[0] = 0;
        sub_24BCA5E44(316, &v41, exception);
        __cxa_throw(exception, &unk_285F930E0, sub_24BCA5F88);
      }

      v12 = 1;
    }

    else
    {
      if (!v12)
      {
        if (v13 <= 11)
        {
          switch(v13)
          {
            case 8:
              v18 = 25180;
              goto LABEL_47;
            case 9:
              v18 = 29788;
              goto LABEL_47;
            case 10:
              v18 = 28252;
              goto LABEL_47;
          }
        }

        else if (v13 > 33)
        {
          if (v13 == 34)
          {
            v18 = 8796;
            goto LABEL_47;
          }

          if (v13 == 92)
          {
            v18 = 23644;
            goto LABEL_47;
          }
        }

        else
        {
          if (v13 == 12)
          {
            v18 = 26204;
            goto LABEL_47;
          }

          if (v13 == 13)
          {
            v18 = 29276;
LABEL_47:
            *(v15 + v8) = v18;
            v11 = v8 + 2;
            goto LABEL_48;
          }
        }

        if (v13 > 0x7E)
        {
          v21 = a3;
        }

        else
        {
          v21 = 0;
        }

        if (v13 >= 0x20 && v21 == 0)
        {
          v11 = v8 + 1;
          *(v15 + v8) = *(v16 + v9);
        }

        else if (HIWORD(v13))
        {
          result = snprintf((v15 + v8), 0xDuLL, "\\u%04x\\u%04x", ((v13 >> 10) - 10304), v13 & 0x3FF | 0xDC00);
          v11 = v8 + 12;
        }

        else
        {
          result = snprintf((v15 + v8), 7uLL, "\\u%04x", v13);
          v11 = v8 + 6;
        }

LABEL_48:
        if ((v11 - 500) <= 0xC)
        {
          result = (*(**v7 + 8))(*v7, v15);
          v12 = 0;
          v11 = 0;
          v10 = 0;
          v8 = 0;
          goto LABEL_51;
        }

        goto LABEL_50;
      }

      if ((a3 & 1) == 0)
      {
        *(v15 + v8++) = *(v16 + v9);
      }

      ++v10;
    }

LABEL_51:
    ++v9;
    v23 = *(a2 + 23);
    v14 = v23 >> 63;
    v24 = a2[1];
    if ((v23 & 0x80000000) == 0)
    {
      v24 = *(a2 + 23);
    }
  }

  while (v9 < v24);
  if (v12)
  {
    v26 = *(v7 + 158);
    switch(v26)
    {
      case 1:
        (*(**v7 + 8))(*v7, v15, v11);
        v25 = *(**v7 + 8);
        break;
      case 2:
        v25 = *(**v7 + 8);
        break;
      case 0:
        v45 = 3;
        *__str = 0;
        v36 = *a2;
        if ((v23 & 0x80000000) == 0)
        {
          v36 = a2;
        }

        snprintf(__str, 3uLL, "%.2X", *(v36 + v24 - 1));
        v37 = __cxa_allocate_exception(0x20uLL);
        std::operator+<char>();
        sub_24BCA5E44(316, &v41, v37);
        __cxa_throw(v37, &unk_285F930E0, sub_24BCA5F88);
      default:
        return result;
    }

LABEL_60:

    return v25();
  }

  if (v8)
  {
    v25 = *(**v7 + 8);
    goto LABEL_60;
  }

  return result;
}

void sub_24BCA8CB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a39 < 0)
  {
    operator delete(__p);
    if ((v40 & 1) == 0)
    {
LABEL_6:
      if (*(v41 - 89) < 0)
      {
        operator delete(*(v41 - 112));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v40)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v39);
  goto LABEL_6;
}

uint64_t sub_24BCA8D70(uint64_t a1, unsigned int a2)
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
      *(a1 + 17) = *&a00010203040506_0[2 * (a2 - 100 * ((41 * a2) >> 12))];
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

  *(v5 - 2) = *&a00010203040506_0[2 * a2];
  return (*(**a1 + 8))();
}

uint64_t sub_24BCA8E48(void *a1, unint64_t a2)
{
  if (!a2)
  {
    return (***a1)(*a1, 48);
  }

  v2 = a2;
  v3 = a1 + 2;
  if ((v2 & 0x8000000000000000) != 0)
  {
    *v3 = 45;
    v2 = -v2;
    if (v2 >= 0xA)
    {
      v6 = 4;
      v10 = v2;
      while (1)
      {
        if (v10 <= 0x63)
        {
          v6 -= 2;
          goto LABEL_24;
        }

        if (v10 <= 0x3E7)
        {
          break;
        }

        if (v10 >> 4 < 0x271)
        {
          goto LABEL_24;
        }

        v6 += 4;
        v9 = v10 >= 0x186A0;
        v10 /= 0x2710uLL;
        if (!v9)
        {
          v6 -= 3;
          goto LABEL_24;
        }
      }

      --v6;
    }

    else
    {
      v6 = 1;
    }

LABEL_24:
    v7 = v6 + 1;
  }

  else
  {
    if (v2 < 0xA)
    {
      v4 = a1 + 17;
LABEL_32:
      *(v4 - 1) = v2 | 0x30;
      return (*(**a1 + 8))();
    }

    v7 = 4;
    v8 = v2;
    while (1)
    {
      if (v8 <= 0x63)
      {
        v7 -= 2;
        goto LABEL_25;
      }

      if (v8 <= 0x3E7)
      {
        break;
      }

      if (v8 >> 4 < 0x271)
      {
        goto LABEL_25;
      }

      v7 += 4;
      v9 = v8 >= 0x186A0;
      v8 /= 0x2710uLL;
      if (!v9)
      {
        v7 -= 3;
        goto LABEL_25;
      }
    }

    --v7;
  }

LABEL_25:
  v4 = &v3[v7];
  if (v2 < 0x64)
  {
    v11 = v2;
  }

  else
  {
    do
    {
      v11 = v2 / 0x64;
      *(v4 - 1) = *&a00010203040506_0[2 * (v2 % 0x64) + 200];
      v4 -= 2;
      v12 = v2 >> 4;
      v2 /= 0x64uLL;
    }

    while (v12 > 0x270);
  }

  if (v11 < 0xA)
  {
    LOBYTE(v2) = v11;
    goto LABEL_32;
  }

  *(v4 - 1) = *&a00010203040506_0[2 * v11 + 200];
  return (*(**a1 + 8))();
}

uint64_t sub_24BCA9030(void *a1, unint64_t a2)
{
  if (!a2)
  {
    return (***a1)(*a1, 48);
  }

  v2 = a2;
  if (a2 < 0xA)
  {
    v3 = a1 + 17;
LABEL_20:
    *(v3 - 1) = v2 | 0x30;
    return (*(**a1 + 8))();
  }

  v5 = 4;
  v6 = a2;
  while (1)
  {
    if (v6 <= 0x63)
    {
      v5 -= 2;
      goto LABEL_13;
    }

    if (v6 <= 0x3E7)
    {
      break;
    }

    if (v6 >> 4 < 0x271)
    {
      goto LABEL_13;
    }

    v7 = v6 >> 5;
    v6 /= 0x2710uLL;
    v5 += 4;
    if (v7 <= 0xC34)
    {
      v5 -= 3;
      goto LABEL_13;
    }
  }

  --v5;
LABEL_13:
  v3 = a1 + v5 + 16;
  if (a2 < 0x64)
  {
    v8 = a2;
  }

  else
  {
    do
    {
      v8 = v2 / 0x64;
      *(v3 - 2) = *&a00010203040506_0[2 * (v2 % 0x64) + 400];
      v3 -= 2;
      v9 = v2 >> 4;
      v2 /= 0x64uLL;
    }

    while (v9 > 0x270);
  }

  if (v8 < 0xA)
  {
    LOBYTE(v2) = v8;
    goto LABEL_20;
  }

  *(v3 - 2) = *&a00010203040506_0[2 * v8 + 400];
  return (*(**a1 + 8))();
}

uint64_t sub_24BCA9180(_BYTE *a1, double a2)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    sub_24BCA9230(a1 + 16, a2);
  }

  else
  {
    v3 = *a1;
  }

  v4 = *(**a1 + 8);

  return v4();
}

uint64_t sub_24BCA9230(_BYTE *a1, double a2)
{
  v2 = a1;
  if ((*&a2 & 0x8000000000000000) != 0)
  {
    a2 = -a2;
    *a1 = 45;
    v2 = a1 + 1;
  }

  if (a2 == 0.0)
  {
    *v2 = 11824;
    result = (v2 + 3);
    v2[2] = 48;
    return result;
  }

  v12 = 0;
  sub_24BCA9450(v2, &v12 + 1, &v12, a2);
  v4 = SHIDWORD(v12);
  v5 = v12 + SHIDWORD(v12);
  if ((v12 & 0x80000000) == 0 && v5 <= 15)
  {
    memset(&v2[SHIDWORD(v12)], 48, v12);
    *&v2[v5] = 12334;
    return &v2[v5 + 2];
  }

  if ((v5 - 16) >= 0xFFFFFFF1)
  {
    v7 = &v2[v5];
    memmove(v7 + 1, v7, SHIDWORD(v12) - v5);
    *v7 = 46;
    return &v2[v4 + 1];
  }

  if (v5 == 0 || v5 >= 0xFFFFFFFD)
  {
    v6 = -v5;
    memmove(&v2[v6 + 2], v2, SHIDWORD(v12));
    *v2 = 11824;
    memset(v2 + 2, 48, v6);
    return &v2[v6 + 2 + v4];
  }

  if (HIDWORD(v12) != 1)
  {
    memmove(v2 + 2, v2 + 1, SHIDWORD(v12) - 1);
    v2[1] = 46;
    v2 += v4;
  }

  v8 = v5 - 1;
  if (v5 >= 1)
  {
    v9 = 43;
  }

  else
  {
    v9 = 45;
  }

  v2[2] = v9;
  v2[1] = 101;
  if (v5 - 1 < 0)
  {
    v8 = 1 - v5;
  }

  if (v8 > 9)
  {
    if (v8 > 0x63)
    {
      v2[3] = v8 / 0x64 + 48;
      v8 %= 0x64u;
      v10 = v2 + 5;
      v2[4] = (v8 / 0xAu) | 0x30;
      LOBYTE(v8) = v8 % 0xAu;
      v11 = 4;
      goto LABEL_25;
    }

    v10 = v2 + 4;
    v2[3] = (v8 / 0xAu) | 0x30;
    LOBYTE(v8) = v8 % 0xAu;
  }

  else
  {
    v10 = v2 + 4;
    v2[3] = 48;
  }

  v11 = 3;
LABEL_25:
  result = &v2[v11 + 2];
  *v10 = v8 | 0x30;
  return result;
}

uint64_t sub_24BCA9450(uint64_t a1, int *a2, _DWORD *a3, double a4)
{
  sub_24BCA9578(v20, a4);
  v27 = v20[1];
  v26 = v20[0];
  v25[0] = v21;
  v25[1] = v22;
  if (-61 - v22 <= 0)
  {
    v7 = 78913 * (-61 - v22) / 0x40000;
  }

  else
  {
    v7 = 78913 * (-61 - v22) / 0x40000 + 1;
  }

  v8 = (&unk_24BFBD298 + 16 * (((v7 + 307 + (((v7 + 307) >> 28) & 7)) << 16) >> 19));
  v9 = v8[1];
  v23 = *v8;
  v24 = v9;
  v10 = sub_24BCA9620(&v26, &v23);
  v12 = v11;
  v13 = sub_24BCA9620(&v27, &v23);
  v15 = v14;
  v16 = sub_24BCA9620(v25, &v23);
  *a3 = -HIDWORD(v9);
  return sub_24BCA9680(a1, a2, a3, v13 + 1, v15, v10, v12, v18, v16 - 1, v17);
}

void sub_24BCA9578(uint64_t a1@<X8>, double a2@<D0>)
{
  v2 = *&a2 & 0xFFFFFFFFFFFFFLL;
  if (*&a2 >> 52)
  {
    v5 = (*&a2 >> 52) + 4294966221;
    v3 = 2 * (v2 | 0x10000000000000);
    v4 = (2 * (*&a2 & 0xFFFFFFFFFFFFFLL | 0x10000000000000)) | 1;
    v6 = (*&a2 >> 52) - 1076;
    if (*&a2 >> 53 && !v2)
    {
      v7 = (*&a2 >> 52) - 53;
      v8 = 0x3FFFFFFFFFFFFFLL;
      v2 = 0x10000000000000;
      goto LABEL_8;
    }

    v2 |= 0x10000000000000uLL;
  }

  else
  {
    v3 = 2 * *&a2;
    v4 = (2 * (*&a2 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
    LODWORD(v5) = -1074;
    v6 = -1075;
  }

  v8 = v3 - 1;
  v7 = v6;
  do
  {
LABEL_8:
    v4 *= 2;
    --v6;
  }

  while ((v4 & 0x8000000000000000) == 0);
  do
  {
    v2 *= 2;
    LODWORD(v5) = v5 - 1;
  }

  while ((v2 & 0x8000000000000000) == 0);
  *a1 = v2;
  *(a1 + 8) = v5;
  *(a1 + 16) = v8 << (v7 - v6);
  *(a1 + 24) = v6;
  *(a1 + 32) = v4;
  *(a1 + 40) = v6;
}