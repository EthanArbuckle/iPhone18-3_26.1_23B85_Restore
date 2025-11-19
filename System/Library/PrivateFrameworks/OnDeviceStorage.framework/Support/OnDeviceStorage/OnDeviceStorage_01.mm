void sub_10000D014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_10000D34C(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = a1[4];
    if (a1[3] >= (v3 - 1))
    {
      v4 = v3 + 8;
      v5 = malloc_type_realloc(v2, 8 * (v3 + 8), 0x648D5F5CuLL);
      a1[5] = v5;
      if (v5)
      {
        v6 = &v5[8 * a1[4]];
        result = 0.0;
        *(v6 + 2) = 0u;
        *(v6 + 3) = 0u;
        *v6 = 0u;
        *(v6 + 1) = 0u;
        a1[4] = v4;
        return result;
      }

LABEL_8:
      sub_10000D544("out of dynamic memory in yyensure_buffer_stack()");
    }
  }

  else
  {
    v8 = malloc_type_malloc(8uLL, 0xD5CA275uLL);
    a1[5] = v8;
    if (!v8)
    {
      goto LABEL_8;
    }

    *v8 = 0;
    result = 0.0;
    *(a1 + 3) = xmmword_1001220C0;
  }

  return result;
}

uint64_t sub_10000D3F0(uint64_t a1, int a2, uint64_t a3)
{
  v6 = malloc_type_malloc(0x48uLL, 0xD5CA275uLL);
  if (!v6 || (v7 = v6, v6[6] = a2, v8 = malloc_type_malloc(a2 + 2, 0xD5CA275uLL), (*(v7 + 8) = v8) == 0))
  {
    sub_10000D544("out of dynamic memory in yy_create_buffer()");
  }

  *(v7 + 40) = 1;
  sub_10000D62C(v7, a1, a3);
  return v7;
}

uint64_t sub_10000D480(uint64_t a1)
{
  v1 = *(a1 + 84);
  v2 = *(a1 + 136);
  v3 = *(a1 + 72);
  if (v2 < v3)
  {
    do
    {
      if (*v2)
      {
        v4 = byte_1001220D8[*v2];
      }

      else
      {
        v4 = &_mh_execute_header.magic + 1;
      }

      if (word_1001221D8[v1])
      {
        *(a1 + 112) = v1;
        *(a1 + 120) = v2;
      }

      v5 = v1;
      v6 = word_100127542[v1] + v4;
      if (v1 != word_100122CB0[v6])
      {
        do
        {
          v5 = word_100128030[v5];
          if (v5 >= 1388)
          {
            v4 = *(&unk_100128B1E + v4);
          }

          v6 = word_100127542[v5] + v4;
        }

        while (word_100122CB0[v6] != v5);
      }

      v1 = word_100128B6C[v6];
      ++v2;
    }

    while (v2 != v3);
  }

  return v1;
}

int *sub_10000D57C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4 && (v5 = *(a2 + 24), *(v4 + 8 * v5)) || (sub_10000D34C(a2), v6 = sub_10000D3F0(*(a2 + 8), 0x4000, a2), v5 = *(a2 + 24), *(*(a2 + 40) + 8 * v5) = v6, (v4 = *(a2 + 40)) != 0))
  {
    v7 = *(v4 + 8 * v5);
  }

  else
  {
    v7 = 0;
  }

  result = sub_10000D62C(v7, a1, a2);
  v9 = *(a2 + 40);
  v10 = *(a2 + 24);
  v11 = *(v9 + 8 * v10);
  *(a2 + 56) = *(v11 + 32);
  v12 = *(v11 + 16);
  *(a2 + 72) = v12;
  *(a2 + 136) = v12;
  *(a2 + 8) = **(v9 + 8 * v10);
  *(a2 + 48) = *v12;
  return result;
}

int *sub_10000D62C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *__error();
  sub_10000D7D0(a1, a3);
  *a1 = a2;
  *(a1 + 60) = 1;
  v7 = *(a3 + 40);
  if (v7)
  {
    v7 = *(v7 + 8 * *(a3 + 24));
  }

  if (v7 != a1)
  {
    *(a1 + 52) = 1;
  }

  *(a1 + 44) = 0;
  result = __error();
  *result = v6;
  return result;
}

void sub_10000D6AC(uint64_t a1, uint64_t a2)
{
  sub_10000D34C(a2);
  v4 = *(a2 + 40);
  if (v4)
  {
    v5 = *(a2 + 24);
    v6 = *(v4 + 8 * v5);
    if (v6 != a1)
    {
      if (v6)
      {
        **(a2 + 72) = *(a2 + 48);
        v4 = *(a2 + 40);
        v5 = *(a2 + 24);
        *(*(v4 + 8 * v5) + 16) = *(a2 + 72);
        *(*(v4 + 8 * v5) + 32) = *(a2 + 56);
      }

      *(v4 + 8 * v5) = a1;
      v7 = *(a2 + 40);
      v8 = *(v7 + 8 * v5);
      *(a2 + 56) = *(v8 + 32);
      v9 = *(v8 + 16);
      *(a2 + 72) = v9;
      *(a2 + 136) = v9;
      *(a2 + 8) = **(v7 + 8 * v5);
      *(a2 + 48) = *v9;
      *(a2 + 88) = 1;
    }
  }
}

void sub_10000D75C(void **a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *(a2 + 40);
    if (v3)
    {
      v4 = *(v3 + 8 * *(a2 + 24));
    }

    else
    {
      v4 = 0;
    }

    if (v4 == a1)
    {
      *(v3 + 8 * *(a2 + 24)) = 0;
    }

    if (*(a1 + 10))
    {
      free(a1[1]);
    }

    free(a1);
  }
}

uint64_t sub_10000D7D0(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 32) = 0;
    **(result + 8) = 0;
    *(*(result + 8) + 1) = 0;
    *(result + 16) = *(result + 8);
    *(result + 48) = 1;
    *(result + 64) = 0;
    v2 = *(a2 + 40);
    if (v2)
    {
      v3 = *(v2 + 8 * *(a2 + 24));
    }

    else
    {
      v3 = 0;
    }

    if (v3 == result)
    {
      v4 = *(a2 + 24);
      v5 = *(v2 + 8 * v4);
      *(a2 + 56) = *(v5 + 32);
      v6 = *(v5 + 16);
      *(a2 + 72) = v6;
      *(a2 + 136) = v6;
      *(a2 + 8) = **(v2 + 8 * v4);
      *(a2 + 48) = *v6;
    }
  }

  return result;
}

void sub_10000D854(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(v1 + 8 * *(a1 + 24));
    if (v3)
    {
      sub_10000D75C(v3, a1);
      v4 = *(a1 + 24);
      *(*(a1 + 40) + 8 * v4) = 0;
      if (v4)
      {
        *(a1 + 24) = --v4;
      }

      v5 = *(a1 + 40);
      if (v5)
      {
        v6 = *(v5 + 8 * v4);
        if (v6)
        {
          *(a1 + 56) = *(v6 + 32);
          v7 = *(v6 + 16);
          *(a1 + 72) = v7;
          *(a1 + 136) = v7;
          *(a1 + 8) = **(v5 + 8 * v4);
          *(a1 + 48) = *v7;
          *(a1 + 88) = 1;
        }
      }
    }
  }
}

char *sub_10000D8EC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 - 2;
  if (a2 < 2 || *(a1 + v3) || *(a1 + a2 - 1))
  {
    return 0;
  }

  v8 = malloc_type_malloc(0x48uLL, 0xD5CA275uLL);
  if (!v8)
  {
    sub_10000D544("out of dynamic memory in yy_scan_buffer()");
  }

  v5 = v8;
  *(v8 + 6) = v3;
  *(v8 + 1) = a1;
  *(v8 + 2) = a1;
  *v8 = 0;
  *(v8 + 4) = v3;
  *(v8 + 5) = 0;
  *(v8 + 12) = 1;
  *(v8 + 60) = 0;
  sub_10000D6AC(v8, a3);
  return v5;
}

char *sub_10000D994(char *a1, uint64_t a2)
{
  v4 = strlen(a1);

  return sub_10000D9D8(a1, v4, a2);
}

char *sub_10000D9D8(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = malloc_type_malloc(a2 + 2, 0xD5CA275uLL);
  if (!v6)
  {
    sub_10000D544("out of dynamic memory in yy_scan_bytes()");
  }

  if (a2)
  {
    v7 = v6;
    v8 = a2;
    do
    {
      v9 = *a1++;
      *v7++ = v9;
      --v8;
    }

    while (v8);
  }

  *&v6[a2] = 0;
  result = sub_10000D8EC(v6, a2 + 2, a3);
  if (!result)
  {
    sub_10000D544("bad buffer in yy_scan_bytes()");
  }

  *(result + 10) = 1;
  return result;
}

uint64_t sub_10000DA6C(uint64_t *a1)
{
  if (a1)
  {
    v2 = malloc_type_malloc(0xA8uLL, 0xD5CA275uLL);
    *a1 = v2;
    if (v2)
    {
      v3 = v2;
      result = 0;
      v3[20] = 0;
      *(v3 + 8) = 0u;
      *(v3 + 9) = 0u;
      *(v3 + 6) = 0u;
      *(v3 + 7) = 0u;
      *(v3 + 4) = 0u;
      *(v3 + 5) = 0u;
      *(v3 + 2) = 0u;
      *(v3 + 3) = 0u;
      *v3 = 0u;
      *(v3 + 1) = 0u;
      v5 = *a1;
      *(v5 + 92) = 0;
      *(v5 + 96) = 0;
      *(v5 + 104) = 0;
      *(v5 + 8) = 0u;
      *(v5 + 24) = 0u;
      *(v5 + 40) = 0;
      *(v5 + 72) = 0;
      *(v5 + 80) = 0;
      return result;
    }

    v6 = __error();
    v7 = 12;
  }

  else
  {
    v6 = __error();
    v7 = 22;
  }

  *v6 = v7;
  return 1;
}

uint64_t sub_10000DB08(uint64_t a1)
{
  for (i = *(a1 + 40); i; i = *(a1 + 40))
  {
    if (!i[*(a1 + 24)])
    {
      break;
    }

    sub_10000D75C(i[*(a1 + 24)], a1);
    *(*(a1 + 40) + 8 * *(a1 + 24)) = 0;
    sub_10000D854(a1);
  }

  free(i);
  *(a1 + 40) = 0;
  free(*(a1 + 104));
  free(a1);
  return 0;
}

uint64_t sub_10000DBAC(uint64_t a1, int a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_10000DC68(a1);
  return a1;
}

void sub_10000DC40(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_10000DC68(uint64_t a1)
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

void sub_10000DD70(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v4 = *a2;
  *(a1 + 80) = *(a2 + 2);
  *(a1 + 64) = v4;
  *(a2 + 23) = 0;
  *a2 = 0;

  sub_10000DC68(a1);
}

void *sub_10000DDD0(void *a1, uint64_t a2, uint64_t a3)
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

    if (!sub_10000DF78(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry();
  return a1;
}

void sub_10000DF10(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry();
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x10000DEF0);
}

uint64_t sub_10000DF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
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
        sub_10000DB80();
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

void sub_10000E144(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_10000E160@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5[0] = sub_10000E1A0(a1);
  v5[1] = v3;
  return sub_10000E1EC(a2, v5);
}

uint64_t sub_10000E1A0(uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    v2 = *(a1 + 16);
    v4 = *(a1 + 32);
  }

  else
  {
    return 0;
  }

  return v2;
}

_BYTE *sub_10000E1EC(_BYTE *__dst, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000DB80();
  }

  v4 = *a2;
  if (v2 >= 0x17)
  {
    operator new();
  }

  __dst[23] = v2;
  if (v2)
  {
    memmove(__dst, v4, v2);
  }

  __dst[v2] = 0;
  return __dst;
}

void sub_10000E29C()
{
  off_10016DA38();
  v1 = v0;
  sub_100006FE4(v0);

  _tlv_atexit(sub_100007288, v1);
}

double sub_10000E2FC(uint64_t a1, int a2)
{
  v3 = sub_100023A60(a1, 6);
  *v3 = off_100163AE8;
  *(v3 + 28) = a2;
  *(v3 + 32) = 0;
  result = 0.0;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0u;
  *(v3 + 104) = 0;
  return result;
}

void *sub_10000E360(uint64_t a1)
{
  *a1 = off_100163AE8;
  free(*(a1 + 40));
  free(*(a1 + 48));
  free(*(a1 + 56));
  free(*(a1 + 64));
  v2 = *(a1 + 104);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *v3;
    v5 = *(v3 + 8);
    if (*v3 == v5)
    {
      goto LABEL_9;
    }

    do
    {
      if (*v4)
      {
        (*(**v4 + 8))(*v4);
      }

      ++v4;
    }

    while (v4 != v5);
    v3 = *(a1 + 80);
    if (v3)
    {
LABEL_9:
      v6 = *v3;
      if (*v3)
      {
        *(v3 + 8) = v6;
        operator delete(v6);
      }

      operator delete();
    }
  }

  v7 = *(a1 + 88);
  if (v7)
  {
    v8 = *v7;
    v9 = *(v7 + 8);
    if (*v7 == v9)
    {
      goto LABEL_18;
    }

    do
    {
      if (*v8)
      {
        (*(**v8 + 8))(*v8);
      }

      ++v8;
    }

    while (v8 != v9);
    v7 = *(a1 + 88);
    if (v7)
    {
LABEL_18:
      v10 = *v7;
      if (*v7)
      {
        *(v7 + 8) = v10;
        operator delete(v10);
      }

      operator delete();
    }
  }

  v11 = *(a1 + 72);
  if (v11)
  {
    v12 = *v11;
    v13 = v11[1];
    if (*v11 == v13)
    {
      goto LABEL_25;
    }

    do
    {
      v14 = *v12++;
      free(v14);
    }

    while (v12 != v13);
    v11 = *(a1 + 72);
    if (v11)
    {
LABEL_25:
      v15 = *v11;
      if (*v11)
      {
        v11[1] = v15;
        operator delete(v15);
      }

      operator delete();
    }
  }

  v16 = *(a1 + 96);
  if (v16)
  {
    v17 = *v16;
    v18 = v16[1];
    if (*v16 == v18)
    {
      goto LABEL_32;
    }

    do
    {
      v19 = *v17++;
      free(v19);
    }

    while (v17 != v18);
    v16 = *(a1 + 96);
    if (v16)
    {
LABEL_32:
      v20 = *v16;
      if (*v16)
      {
        v16[1] = v20;
        operator delete(v20);
      }

      operator delete();
    }
  }

  return sub_100023A88(a1);
}

void sub_10000E590(uint64_t a1)
{
  sub_10000E360(a1);

  operator delete();
}

uint64_t sub_10000E7E4(uint64_t result, uint64_t a2, int a3, char a4)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 12) = a4;
  return result;
}

uint64_t sub_10000E7F4(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  *result = off_100163B30;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = a4;
  return result;
}

void *sub_10000E81C(void *result)
{
  *result = off_100163B30;
  if (result[2])
  {
    operator delete();
  }

  if (result[3])
  {
    operator delete();
  }

  return result;
}

void sub_10000E890(void *a1)
{
  sub_10000E81C(a1);

  operator delete();
}

void *sub_10000E8C8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = off_100163B50;
  result[1] = a2;
  result[2] = a3;
  result[3] = a4;
  return result;
}

void *sub_10000E8EC(void *a1)
{
  *a1 = off_100163B50;
  v2 = a1[1];
  if (v2)
  {
    v3 = *v2;
    v4 = *(v2 + 8);
    if (*v2 == v4)
    {
      goto LABEL_7;
    }

    do
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    while (v3 != v4);
    v2 = a1[1];
    if (v2)
    {
LABEL_7:
      v5 = *v2;
      if (*v2)
      {
        *(v2 + 8) = v5;
        operator delete(v5);
      }

      operator delete();
    }
  }

  v6 = a1[2];
  if (v6)
  {
    v7 = *v6;
    v8 = *(v6 + 8);
    if (*v6 == v8)
    {
      goto LABEL_16;
    }

    do
    {
      if (*v7)
      {
        (*(**v7 + 8))(*v7);
      }

      ++v7;
    }

    while (v7 != v8);
    v6 = a1[2];
    if (v6)
    {
LABEL_16:
      v9 = *v6;
      if (*v6)
      {
        *(v6 + 8) = v9;
        operator delete(v9);
      }

      operator delete();
    }
  }

  v10 = a1[3];
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  return a1;
}

void sub_10000EA5C(void *a1)
{
  sub_10000E8EC(a1);

  operator delete();
}

uint64_t sub_10000EA94(uint64_t a1)
{
  *a1 = off_100163B70;
  v2 = *(a1 + 16);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 152);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  free(*(a1 + 48));
  free(*(a1 + 56));
  free(*(a1 + 64));
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *v6;
    v8 = *(v6 + 8);
    if (*v6 == v8)
    {
      goto LABEL_15;
    }

    do
    {
      if (*v7)
      {
        (*(**v7 + 8))(*v7);
      }

      ++v7;
    }

    while (v7 != v8);
    v6 = *(a1 + 32);
    if (v6)
    {
LABEL_15:
      v9 = *v6;
      if (*v6)
      {
        *(v6 + 8) = v9;
        operator delete(v9);
      }

      operator delete();
    }
  }

  return a1;
}

void sub_10000EC24(uint64_t a1)
{
  sub_10000EA94(a1);

  operator delete();
}

void sub_10000EEC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  operator new();
}

uint64_t sub_10000F198(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  sub_100005310(*(a1 + 32), &v4);
  return a1;
}

char *sub_1000103D4(uint64_t a1, int a2, int a3)
{
  v5 = a3 - a2;
  v6 = malloc_type_malloc(v5 + 1, 0x100004077774924uLL);
  result = strncpy(v6, (a1 + a2), v5);
  result[v5] = 0;
  return result;
}

void *sub_100010434(uint64_t a1)
{
  result = sub_100023A60(a1, 8);
  *result = off_100163BC0;
  result[4] = 0;
  result[5] = 0;
  return result;
}

void *sub_100010470(uint64_t a1)
{
  *a1 = off_100163BC0;
  free(*(a1 + 32));
  free(*(a1 + 40));

  return sub_100023A88(a1);
}

void sub_1000104D4(uint64_t a1)
{
  sub_100010470(a1);

  operator delete();
}

double sub_10001050C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 44) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  return result;
}

uint64_t sub_100010538(uint64_t a1)
{
  sub_1000105A8(a1);
  v4 = (a1 + 96);
  sub_10001182C(&v4);
  v4 = (a1 + 72);
  sub_100011908(&v4);
  v4 = (a1 + 48);
  sub_1000119E8(&v4);
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1000105A8(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 24);
  if (v1 != v2)
  {
    do
    {
      v3 = *v1;
      if (*v1)
      {
        v4 = *(v3 + 8);
        if (v4)
        {
          *(v3 + 16) = v4;
          operator delete(v4);
        }

        operator delete();
      }

      ++v1;
    }

    while (v1 != v2);
    v1 = *(result + 16);
  }

  *(result + 24) = v1;
  return result;
}

void sub_100010630(void *a1, uint64_t a2)
{
  v5 = a1[3];
  v4 = a1[4];
  if (v5 >= v4)
  {
    v7 = a1[2];
    v8 = (v5 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_100006504();
    }

    v9 = v4 - v7;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      sub_100006754((a1 + 2), v11);
    }

    v12 = (8 * v8);
    *v12 = a2;
    v6 = 8 * v8 + 8;
    v13 = a1[2];
    v14 = a1[3] - v13;
    v15 = v12 - v14;
    memcpy(v12 - v14, v13, v14);
    v16 = a1[2];
    a1[2] = v15;
    a1[3] = v6;
    a1[4] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = a2;
    v6 = (v5 + 1);
  }

  a1[3] = v6;
}

uint64_t sub_1000106FC(uint64_t result)
{
  v1 = *(result + 24);
  if (*(result + 16) != v1)
  {
    v2 = *(v1 - 8);
    if (v2)
    {
      v3 = *(v2 + 8);
      if (v3)
      {
        *(v2 + 16) = v3;
        operator delete(v3);
      }

      operator delete();
    }

    *(result + 24) = v1 - 8;
  }

  return result;
}

char *sub_100010768(uint64_t a1, char *__s1)
{
  v2 = __s1;
  v3 = *(a1 + 24);
  if (*(a1 + 16) != v3)
  {
    v4 = *(v3 - 8);
    if (*v4 == 1 && !strcmp(__s1, "excluded"))
    {
      v5 = *(v4 + 8);
      if (v5 == *(v4 + 16))
      {
        return 0;
      }

      else
      {
        return *(v5 + 8);
      }
    }
  }

  return v2;
}

void sub_1000107D4(uint64_t a1@<X0>, void **a2@<X8>)
{
  v3 = *(a1 + 24);
  if (*(a1 + 16) == v3)
  {
    __p = 0;
    v8 = 0;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    sub_100011AB8(a2, &__p, &v9, 1uLL);
  }

  else
  {
    v4 = *(v3 - 8);
    __p = 0;
    v8 = 0;
    v9 = 0;
    sub_100011BB0(&__p, *(v4 + 8), *(v4 + 16), (*(v4 + 16) - *(v4 + 8)) >> 4);
    v5 = v8;
    if (__p == v8)
    {
      v6[0] = 0;
      v6[1] = 0;
      a2[1] = 0;
      a2[2] = 0;
      *a2 = 0;
      sub_100011AB8(a2, v6, &__p, 1uLL);
      if (__p)
      {
        v8 = __p;
        operator delete(__p);
      }
    }

    else
    {
      *a2 = __p;
      a2[1] = v5;
      a2[2] = v9;
    }
  }
}

void sub_1000108CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000108F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 24);
  if (*(a1 + 16) != v5)
  {
    v6 = *(v5 - 8);
    if (!*v6)
    {
      v8 = v3;
      v9 = v4;
      *&v7 = a2;
      *(&v7 + 1) = a3;
      sub_100011C2C((v6 + 2), &v7);
    }
  }
}

uint64_t sub_10001093C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  sub_100025A04(v23);
  sub_100025944(a2, v23);
  if (sub_100025C50(v23))
  {
    if (sub_100025C40(v23))
    {
      v8 = sub_100025C34(v23, 0);
      v9 = sub_100023B88(v8);
      *v26 = v9;
      v26[4] = 0;
      memset(&v26[8], 0, 48);
      v27 = 0u;
      v28 = 0;
      v29 = 88;
      *(a1 + 40) = v9;
      v10 = (a1 + 40);
      *(a1 + 44) = 0;
      sub_100011D04(a1 + 48);
      *(a1 + 48) = *&v26[8];
      *(a1 + 64) = *&v26[24];
      memset(&v26[8], 0, 24);
      sub_100011D44(a1 + 72);
      *(a1 + 72) = *&v26[32];
      *(a1 + 88) = *&v26[48];
      memset(&v26[32], 0, 24);
      sub_100011D84((a1 + 96));
      *(a1 + 96) = v27;
      v11 = v28;
      v12 = v29;
      v28 = 0;
      v27 = 0uLL;
      *(a1 + 112) = v11;
      *(a1 + 120) = v12;
      v25[0] = &v27;
      sub_10001182C(v25);
      v25[0] = &v26[32];
      sub_100011908(v25);
      v25[0] = &v26[8];
      sub_1000119E8(v25);
      *(a1 + 24) = *(a1 + 16);
      if (v9 > 3)
      {
        if (v9 == 4)
        {
          sub_10001110C(a1, v8);
        }

        else
        {
          if (v9 != 5)
          {
            goto LABEL_15;
          }

          sub_1000111BC(a1, v8);
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v9 == 3)
          {
            sub_100010F64(a1, v8);
            goto LABEL_24;
          }

LABEL_15:
          std::to_string(&v20, v9);
          size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
          if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v16 = &v20;
          }

          else
          {
            size = v20.__r_.__value_.__l.__size_;
            v16 = v20.__r_.__value_.__r.__words[0];
          }

          v25[1] = size;
          v25[2] = 13;
          v24[2] = 13;
          v25[0] = &v16->__r_.__value_.__l.__data_;
          *v26 = &v26[40];
          *&v26[8] = xmmword_10012D490;
          *&v26[24] = sub_100012BCC;
          *&v26[32] = 0;
          __src = &v26[40];
          v24[0] = 1;
          v24[1] = v25;
          sub_100012C7C(v26, "Unsupported statement type: {}", 30, v24);
          v17 = *&v26[16];
          if (*&v26[16] >= 0x7FFFFFFFFFFFFFF8uLL)
          {
            sub_10000DB80();
          }

          if (*&v26[16] >= 0x17uLL)
          {
            operator new();
          }

          HIBYTE(v22) = v26[16];
          if (*&v26[16])
          {
            memmove(&__dst, __src, *&v26[16]);
          }

          *(&__dst + v17) = 0;
          if (__src != &v26[40])
          {
            operator delete(__src);
          }

          if (*(a4 + 23) < 0)
          {
            operator delete(*a4);
          }

          *a4 = __dst;
          *(a4 + 16) = v22;
          if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v20.__r_.__value_.__l.__data_);
          }

          goto LABEL_36;
        }

        sub_100010E80(a1, v8);
      }

LABEL_24:
      sub_1000105A8(a1);
      if (sub_10001BC70((a1 + 40), a4))
      {
        v18 = *v10;
        *(a3 + 4) = *(a1 + 44);
        *a3 = v18;
        if (v10 != a3)
        {
          sub_100011DEC(a3 + 8, *(a1 + 48), *(a1 + 56), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 56) - *(a1 + 48)) >> 4));
          sub_100012310(a3 + 32, *(a1 + 72), *(a1 + 80), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 80) - *(a1 + 72)) >> 5));
          sub_100012814(a3 + 56, *(a1 + 96), *(a1 + 104), (*(a1 + 104) - *(a1 + 96)) >> 6);
        }

        *(a3 + 80) = *(a1 + 120);
        v14 = 1;
        goto LABEL_37;
      }

LABEL_36:
      v14 = 0;
      goto LABEL_37;
    }

    sub_100010DC8(v26, "Empty parser result");
  }

  else
  {
    v13 = sub_100025C58(v23);
    sub_100010DC8(v26, v13);
  }

  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  v14 = 0;
  *a4 = *v26;
  *(a4 + 16) = *&v26[16];
LABEL_37:
  sub_100025BF8(v23);
  return v14;
}

void sub_100010D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p != v72)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  sub_100025BF8(&a19);
  _Unwind_Resume(a1);
}

_BYTE *sub_100010DC8(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000DB80();
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

void sub_100010E80(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator new();
  }
}

void sub_100010F64(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 40);
    v5 = *(a2 + 48);
    v14 = 1;
    sub_10001AFA8((a1 + 40), v4, v5, 0, &v14);
    v6 = *(a2 + 56);
    if (v6)
    {
      v7 = *v6;
      v8 = v6[1];
      while (v7 != v8)
      {
        v9 = *v7++;
        sub_10001B584((a1 + 40), *(a2 + 48), v9, 0);
      }
    }

    v10 = *(a2 + 64);
    if (v10)
    {
      v11 = *v10;
      v12 = v10[1];
      while (v11 != v12)
      {
        v13 = *v11++;
        sub_100011534(a1, v13);
      }
    }

    sub_100010E80(a1, *(a2 + 72));
    if (*(a2 + 80))
    {
      *(a1 + 44) = 1;
      operator new();
    }
  }
}

void sub_10001110C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2[4];
    if (v3)
    {
      if (!*(v3 + 8))
      {
        v5 = *(v3 + 16);
        v6 = *(v3 + 24);
        v11 = 1;
        sub_10001AFA8((a1 + 40), v5, v6, 0, &v11);
        v7 = a2[5];
        if (v7)
        {
          v8 = *v7;
          v9 = v7[1];
          while (v8 != v9)
          {
            v10 = a2[4];
            if (v10)
            {
              sub_10001B584((a1 + 40), *(v10 + 24), **v8, 0);
            }

            ++v8;
          }
        }

        sub_100011534(a1, a2[6]);
      }
    }
  }
}

void sub_1000111BC(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = a2[4];
    v5 = a2[5];
    v6 = 1;
    sub_10001AFA8((a1 + 40), v4, v5, 0, &v6);
    sub_100011534(a1, a2[6]);
  }
}

void sub_10001121C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 48);
    if (v4)
    {
      v5 = *v4;
      v6 = v4[1];
      while (v5 != v6)
      {
        v7 = *v5++;
        sub_10001121C(a1, v7);
      }
    }

    v8 = *(a2 + 8);
    if ((v8 - 2) < 2)
    {
      v13 = *(a2 + 56);
      if (v13)
      {
        sub_10001121C(a1, *(v13 + 8));
        sub_10001121C(a1, *(*(a2 + 56) + 16));
        v14 = *(*(a2 + 56) + 24);

        sub_100011534(a1, v14);
      }
    }

    else if (v8 == 1)
    {
      v15 = *(a2 + 40);

      sub_100010E80(a1, v15);
    }

    else if (!v8)
    {
      v9 = *(a2 + 16);
      v10 = *(a2 + 24);
      v11 = *(a2 + 32);
      if (v11)
      {
        v12 = *v11;
      }

      else
      {
        v12 = 0;
      }

      v16 = 0;
      sub_10001AFA8((a1 + 40), v9, v10, v12, &v16);
      sub_1000108F0(a1, *(a2 + 16), *(a2 + 24));
    }
  }
}

void sub_100011348(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    sub_100010E80(a1, a2[5]);
    sub_100011534(a1, a2[2]);
    v4 = a2[3];

    sub_100011534(a1, v4);
  }
}

void sub_1000113A0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 8);
    if (v4)
    {
      v5 = *v4;
      v6 = v4[1];
      while (v5 != v6)
      {
        v7 = *v5++;
        sub_100011534(a1, v7);
      }
    }

    v8 = *(a2 + 16);

    sub_100011534(a1, v8);
  }
}

void sub_100011410(uint64_t a1, uint64_t **a2)
{
  if (a2)
  {
    v2 = *a2;
    v3 = a2[1];
    if (*a2 != v3)
    {
      do
      {
        sub_100010E80(a1, *(*v2 + 16));
        sub_1000114D8(a1, *(*v2 + 24));
        v5 = *v2++;
        sub_1000117E0(a1, *(v5 + 32));
      }

      while (v2 != v3);
    }
  }
}

uint64_t sub_100011484(uint64_t result, uint64_t **a2)
{
  if (a2)
  {
    v2 = *a2;
    v3 = a2[1];
    if (*a2 != v3)
    {
      v4 = result;
      do
      {
        v5 = *v2++;
        result = sub_100010E80(v4, *(v5 + 8));
      }

      while (v2 != v3);
    }
  }

  return result;
}

void sub_1000114D8(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    v2 = *a2;
    v3 = a2[1];
    if (*a2 != v3)
    {
      do
      {
        if (*v2)
        {
          sub_100011534(a1, *(*v2 + 16));
        }

        v2 += 8;
      }

      while (v2 != v3);
    }
  }
}

void sub_100011534(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 8);
    if (v4 <= 8)
    {
      if (v4 == 6)
      {
        v17 = *(a2 + 56);
        if (v17)
        {
          v18 = sub_100010768(a1, v17);
          sub_10001B584((a1 + 40), v18, "*", 0);
          if (*(a1 + 8) == 1 && *(a1 + 16) != *(a1 + 24))
          {
            v19 = *(a2 + 56);
            v20 = *(a2 + 80);
            v21 = *(a2 + 88);

            sub_10001B8E8((a1 + 40), v20, v21, 0, v19);
          }
        }

        else
        {
          sub_1000107D4(a1, &v26);
          v22 = v26;
          v23 = v27;
          if (v26 != v27)
          {
            do
            {
              v24 = *v22;
              v25 = v22[1];
              sub_10001B584((a1 + 40), v25, "*", 0);
              if (*(a1 + 8) == 1 && *(a1 + 16) != *(a1 + 24))
              {
                sub_10001B8E8((a1 + 40), *(a2 + 80), *(a2 + 88), v24, v25);
              }

              v22 += 2;
            }

            while (v22 != v23);
            v22 = v26;
          }

          if (v22)
          {
            v27 = v22;
            operator delete(v22);
          }
        }
      }

      else if (v4 == 8)
      {
        v6 = sub_100010768(a1, *(a2 + 56));
        v7 = *(a2 + 48);
        v8 = *(a2 + 64);

        sub_10001B584((a1 + 40), v6, v7, v8);
      }
    }

    else
    {
      switch(v4)
      {
        case 9:
          *(a1 + 8) = 0;
          *a1 = a2;
          sub_100011534(a1, *(a2 + 16));
          sub_100011534(a1, *(a2 + 24));
          v9 = *(a2 + 32);
          if (v9)
          {
            v10 = *v9;
            v11 = v9[1];
            while (v10 != v11)
            {
              v12 = *v10++;
              sub_100011534(a1, v12);
            }
          }

          if (*a1 == a2)
          {
            *(a1 + 8) = 1;
          }

          break;
        case 10:
          sub_100011534(a1, *(a2 + 16));
          sub_100011534(a1, *(a2 + 24));
          v13 = *(a2 + 32);
          if (v13)
          {
            v14 = *v13;
            v15 = v13[1];
            while (v14 != v15)
            {
              v16 = *v14++;
              sub_100011534(a1, v16);
            }
          }

          break;
        case 11:
          v5 = *(a2 + 40);

          sub_100010E80(a1, v5);
          break;
      }
    }
  }
}

void sub_1000117C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000117E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100011534(a1, *(a2 + 8));
    v4 = *(a2 + 16);

    sub_100011534(a1, v4);
  }
}

void sub_10001182C(void ***a1)
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
        v4 -= 64;
        sub_1000118B0(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1000118B0(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    v2 = *(a1 + 16);

    operator delete(v2);
  }
}

void sub_100011908(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10001195C(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10001195C(uint64_t a1, void **a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    do
    {
      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 3));
      }

      if (*(v4 - 25) < 0)
      {
        operator delete(*(v4 - 6));
      }

      if (*(v4 - 49) < 0)
      {
        operator delete(*(v4 - 9));
      }

      v5 = v4 - 12;
      if (*(v4 - 73) < 0)
      {
        operator delete(*v5);
      }

      v4 -= 12;
    }

    while (v5 != a2);
  }

  *(a1 + 8) = a2;
}

void sub_1000119E8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100011A3C(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100011A3C(uint64_t a1, void **a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    do
    {
      if (*(v4 - 9) < 0)
      {
        operator delete(*(v4 - 4));
      }

      if (*(v4 - 33) < 0)
      {
        operator delete(*(v4 - 7));
      }

      v5 = v4 - 10;
      if (*(v4 - 57) < 0)
      {
        operator delete(*v5);
      }

      v4 -= 10;
    }

    while (v5 != a2);
  }

  *(a1 + 8) = a2;
}

uint64_t sub_100011AB8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100011B2C(result, a4);
  }

  return result;
}

void sub_100011B10(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100011B2C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_100011B68(a1, a2);
  }

  sub_100006504();
}

void sub_100011B68(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1000065F4();
}

uint64_t sub_100011BB0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100011B2C(result, a4);
  }

  return result;
}

void sub_100011C10(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100011C2C(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_100006504();
    }

    v9 = v4 - *a1;
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

    if (v10)
    {
      sub_100011B68(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_100011D04(uint64_t a1)
{
  if (*a1)
  {
    sub_100011A3C(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void sub_100011D44(uint64_t a1)
{
  if (*a1)
  {
    sub_10001195C(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void sub_100011D84(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 64;
        sub_1000118B0(v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_100011DEC(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    sub_100011D04(a1);
    if (a4 <= 0x333333333333333)
    {
      v9 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) >= 0x199999999999999)
      {
        v10 = 0x333333333333333;
      }

      else
      {
        v10 = v9;
      }

      sub_100011F38(a1, v10);
    }

    sub_100006504();
  }

  v11 = *(a1 + 8) - v8;
  if (0xCCCCCCCCCCCCCCCDLL * (v11 >> 4) >= a4)
  {
    sub_100012234(&v14, __str, a3, v8);
    sub_100011A3C(a1, v12);
  }

  else
  {
    sub_100012234(&v13, __str, (__str + v11), v8);
    *(a1 + 8) = sub_100011F84(a1, (__str + v11), a3, *(a1 + 8));
  }
}

void sub_100011F38(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    sub_1000122B8(a1, a2);
  }

  sub_100006504();
}

char *sub_100011F84(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v13 = __dst;
  v14 = __dst;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_1000120CC(v4, *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      if (*(v6 + 47) < 0)
      {
        sub_1000120CC(v4 + 24, *(v6 + 3), *(v6 + 4));
      }

      else
      {
        v8 = *(v6 + 24);
        *(v4 + 5) = *(v6 + 5);
        *(v4 + 24) = v8;
      }

      if (*(v6 + 71) < 0)
      {
        sub_1000120CC(v4 + 48, *(v6 + 6), *(v6 + 7));
      }

      else
      {
        v9 = v6[3];
        *(v4 + 8) = *(v6 + 8);
        *(v4 + 3) = v9;
      }

      v4[72] = *(v6 + 72);
      v6 += 5;
      v4 = v14 + 80;
      v14 += 80;
    }

    while (v6 != a3);
  }

  v12 = 1;
  sub_100012170(v11);
  return v4;
}

void sub_100012088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  sub_100012170(&a9);
  _Unwind_Resume(a1);
}

void *sub_1000120CC(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_10000DB80();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

uint64_t sub_100012170(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000121BC(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_1000121BC(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, void **a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      if (*(v6 - 9) < 0)
      {
        operator delete(*(v6 - 4));
      }

      if (*(v6 - 33) < 0)
      {
        operator delete(*(v6 - 7));
      }

      v7 = v6 - 10;
      if (*(v6 - 57) < 0)
      {
        operator delete(*v7);
      }

      v6 -= 10;
    }

    while (v7 != a5);
  }
}

std::string *sub_100012234(int a1, std::string *__str, std::string *a3, std::string *this)
{
  v5 = __str;
  if (__str == a3)
  {
    return __str;
  }

  v6 = a3;
  do
  {
    std::string::operator=(this, v5);
    std::string::operator=(this + 1, v5 + 1);
    std::string::operator=(this + 2, v5 + 2);
    this[3].__r_.__value_.__s.__data_[0] = v5[3].__r_.__value_.__s.__data_[0];
    this = (this + 80);
    v5 = (v5 + 80);
  }

  while (v5 != v6);
  return v6;
}

void sub_1000122B8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  sub_1000065F4();
}

void sub_100012310(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) < a4)
  {
    sub_100011D44(a1);
    if (a4 <= 0x2AAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
      {
        v10 = 0x2AAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_10001245C(a1, v10);
    }

    sub_100006504();
  }

  v11 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 5) >= a4)
  {
    sub_100012734(&v14, __str, a3, v8);
    sub_10001195C(a1, v12);
  }

  else
  {
    sub_100012734(&v13, __str, (__str + v11), v8);
    *(a1 + 8) = sub_1000124A8(a1, (__str + v11), a3, *(a1 + 8));
  }
}

void sub_10001245C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    sub_1000127BC(a1, a2);
  }

  sub_100006504();
}

char *sub_1000124A8(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v10 = __dst;
  v11 = __dst;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_10001254C(v4, v6);
      v6 += 6;
      v4 = v11 + 96;
      v11 += 96;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_100012660(v8);
  return v4;
}

char *sub_10001254C(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000120CC(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_1000120CC(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  if (*(a2 + 71) < 0)
  {
    sub_1000120CC(__dst + 48, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(__dst + 8) = *(a2 + 8);
    *(__dst + 3) = v6;
  }

  if (*(a2 + 95) < 0)
  {
    sub_1000120CC(__dst + 72, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    *(__dst + 11) = *(a2 + 11);
    *(__dst + 72) = v7;
  }

  return __dst;
}

void sub_100012614(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100012660(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000126AC(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_1000126AC(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, void **a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      if (*(v6 - 1) < 0)
      {
        operator delete(*(v6 - 3));
      }

      if (*(v6 - 25) < 0)
      {
        operator delete(*(v6 - 6));
      }

      if (*(v6 - 49) < 0)
      {
        operator delete(*(v6 - 9));
      }

      v7 = v6 - 12;
      if (*(v6 - 73) < 0)
      {
        operator delete(*v7);
      }

      v6 -= 12;
    }

    while (v7 != a5);
  }
}

std::string *sub_100012734(int a1, std::string *__str, std::string *a3, std::string *this)
{
  v5 = __str;
  if (__str == a3)
  {
    return __str;
  }

  v6 = a3;
  do
  {
    std::string::operator=(this, v5);
    std::string::operator=(this + 1, v5 + 1);
    std::string::operator=(this + 2, v5 + 2);
    std::string::operator=(this + 3, v5 + 3);
    this += 4;
    v5 += 4;
  }

  while (v5 != v6);
  return v6;
}

void sub_1000127BC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1000065F4();
}

void sub_100012814(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 6)
  {
    sub_100011D84(a1);
    if (!(a4 >> 58))
    {
      v9 = *(a1 + 16) - *a1;
      v10 = v9 >> 5;
      if (v9 >> 5 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFC0)
      {
        v11 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_100012950(a1, v11);
    }

    sub_100006504();
  }

  v12 = *(a1 + 8) - v8;
  if (a4 <= v12 >> 6)
  {
    sub_100012A9C(&v17, a2, a3, v8);
    v14 = v13;
    v15 = *(a1 + 8);
    if (v15 != v13)
    {
      do
      {
        v15 -= 64;
        sub_1000118B0(v15);
      }

      while (v15 != v14);
    }

    *(a1 + 8) = v14;
  }

  else
  {
    sub_100012A9C(&v16, a2, a2 + v12, v8);
    *(a1 + 8) = sub_10001298C(a1, a2 + v12, a3, *(a1 + 8));
  }
}

void sub_100012950(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    sub_100012B14(a1, a2);
  }

  sub_100006504();
}

uint64_t sub_10001298C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a2 + v7;
      v9 = a4 + v7;
      *(a4 + v7) = *(a2 + v7);
      if (*(a2 + v7 + 39) < 0)
      {
        sub_1000120CC((v9 + 16), *(v8 + 16), *(v8 + 24));
      }

      else
      {
        v10 = *(v8 + 16);
        *(v9 + 32) = *(v8 + 32);
        *(v9 + 16) = v10;
      }

      v11 = a4 + v7;
      v12 = a2 + v7;
      if (*(v8 + 63) < 0)
      {
        sub_1000120CC((v11 + 40), *(v12 + 40), *(v12 + 48));
      }

      else
      {
        v13 = *(v12 + 40);
        *(v11 + 56) = *(v12 + 56);
        *(v11 + 40) = v13;
      }

      v7 += 64;
    }

    while (v8 + 64 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_100012A50(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 64;
    v5 = -v2;
    do
    {
      sub_1000118B0(v4);
      v4 -= 64;
      v5 += 64;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100012A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    *a4 = *v5;
    std::string::operator=((a4 + 16), (v5 + 16));
    std::string::operator=((a4 + 40), (v5 + 40));
    a4 += 64;
    v5 += 64;
  }

  while (v5 != v6);
  return v6;
}

void sub_100012B14(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  sub_1000065F4();
}

uint64_t sub_100012B5C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *&v6 = a3;
  *(&v6 + 1) = a4;
  sub_100011C2C(a1 + 8, &v6);
  return a1;
}

void sub_100012BB0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_100012BCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = v2 * 1.6;
  if (v2 + a2 <= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2 + a2;
  }

  sub_100012BF4(a1, v4);
}

void sub_100012BF4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x100)
  {
    operator new();
  }
}

uint64_t sub_100012C7C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  v14[0] = a2;
  v14[1] = &a2[a3];
  v15 = 0;
  v16 = 0;
  v17 = v4;
  v10 = *a4;
  v11 = a4[2];
  LOBYTE(v7.__locale_) = 0;
  v8 = 0;
  v9 = a1;
  LOBYTE(v12.__locale_) = 0;
  v13 = 0;
  v5 = sub_100012D44(v14, &v9);
  if (v13 == 1)
  {
    std::locale::~locale(&v12);
  }

  return v5;
}

void sub_100012D14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a17 == 1)
  {
    std::locale::~locale(v17 + 4);
    if (a11)
    {
      std::locale::~locale(&a10);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100012D44(unsigned __int8 **a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  if (*a1 != v2)
  {
    while (1)
    {
      v7 = *v3;
      if (v7 == 125)
      {
        break;
      }

      if (v7 != 123)
      {
        goto LABEL_10;
      }

      if (++v3 == v2)
      {
        sub_100012E2C("The format string terminates at a '{'");
      }

      if (*v3 == 123)
      {
LABEL_10:
        ++v3;
        sub_10001911C(v4, v7);
        if (v3 == v2)
        {
          return v4;
        }
      }

      else
      {
        *a2 = v4;
        v3 = sub_100012E88(v3, v2, a1, a2);
        v4 = *a2;
        if (v3 == v2)
        {
          return v4;
        }
      }
    }

    if (++v3 == v2 || *v3 != 125)
    {
      sub_100012E2C("The format string contains an invalid escape sequence");
    }

    goto LABEL_10;
  }

  return v4;
}

void sub_100012E2C(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100012FC8(exception, a1);
}

unsigned __int8 *sub_100012E88(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 **a3, void *a4)
{
  v7 = sub_100013038(a1, a2, a3);
  if (v7 == a2)
  {
    goto LABEL_14;
  }

  v9 = *v7;
  v20 = v9 == 58;
  if (v9 == 125)
  {
    goto LABEL_5;
  }

  if (v9 != 58)
  {
LABEL_14:
    sub_100012E2C("The argument index should end with a ':' or a '}'");
  }

  ++v7;
LABEL_5:
  *a3 = v7;
  v19[0] = a3;
  v19[1] = a4;
  v19[2] = &v20;
  v10 = a4[1];
  if (v10 <= v8)
  {
    LOBYTE(v22) = 0;
  }

  else if (v10 > 0xC)
  {
    v15 = (a4[2] + 32 * v8);
    v16 = v15[1];
    v21 = *v15;
    v22 = v16;
  }

  else
  {
    v11 = (a4[2] + 16 * v8);
    v13 = *v11;
    v12 = v11[1];
    v14 = (a4[3] >> (5 * v8)) & 0x1FLL;
    *&v21 = v13;
    *(&v21 + 1) = v12;
    LOBYTE(v22) = v14;
  }

  sub_1000130E8(v19, &v21);
  v17 = *a3;
  if (*a3 == a2 || *v17 != 125)
  {
    sub_100012E2C("The replacement field misses a terminating '}'");
  }

  return v17 + 1;
}

std::runtime_error *sub_100012FC8(std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = &off_100163C10;
  return result;
}

void sub_100013000(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  operator delete();
}

unsigned __int8 *sub_100013038(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *a1;
  if (v4 == 125 || v4 == 58)
  {
    sub_10001394C(a3);
    return v3;
  }

  if (v4 == 48)
  {
    v5 = *(a3 + 16);
    if (v5)
    {
      if (v5 == 2)
      {
        sub_100012E2C("Using manual argument numbering in automatic argument numbering mode");
      }
    }

    else
    {
      *(a3 + 16) = 1;
    }

    return a1 + 1;
  }

  if ((v4 - 58) <= 0xFFFFFFF5)
  {
    sub_100012E2C("The argument index starts with an invalid character");
  }

  return sub_100013904(a1, a2, a3);
}

void *sub_1000130E8(uint64_t a1, unsigned __int8 *a2)
{
  switch(a2[16])
  {
    case 1u:
      v3 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v4 = *a1;
        v5 = sub_100013AEC(v60, *a1, 311);
        sub_100013D10(v60, "a BOOL");
        *v4 = v5;
      }

      v6 = *(a1 + 8);
      result = sub_100013A60(v60, v3, v6);
      goto LABEL_65;
    case 2u:
      v26 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v27 = *a1;
        v28 = sub_100013AEC(v60, *a1, 311);
        sub_1000164D0(v60, "a character");
        *v27 = v28;
      }

      v6 = *(a1 + 8);
      result = sub_100016420(v60, v26, v6);
      goto LABEL_65;
    case 3u:
      v29 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v30 = *a1;
        v31 = sub_100013AEC(v60, *a1, 311);
        sub_1000165D0(v60, "an integer");
        *v30 = v31;
      }

      v6 = *(a1 + 8);
      result = sub_10001654C(v60, v29, v6);
      goto LABEL_65;
    case 4u:
      v16 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v17 = *a1;
        v18 = sub_100013AEC(v60, *a1, 311);
        sub_1000165D0(v60, "an integer");
        *v17 = v18;
      }

      v6 = *(a1 + 8);
      result = sub_10001668C(v60, v16, v6);
      goto LABEL_65;
    case 5u:
      v36 = *a2;
      v35 = *(a2 + 1);
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v37 = *a1;
        v38 = sub_100013AEC(v60, *a1, 311);
        sub_1000165D0(v60, "an integer");
        *v37 = v38;
      }

      v6 = *(a1 + 8);
      result = sub_1000170F0(v60, v36, v35, v6);
      goto LABEL_65;
    case 6u:
      v32 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v33 = *a1;
        v34 = sub_100013AEC(v60, *a1, 311);
        sub_1000165D0(v60, "an integer");
        *v33 = v34;
      }

      v6 = *(a1 + 8);
      result = sub_100017F44(v60, v32, v6);
      goto LABEL_65;
    case 7u:
      v42 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v43 = *a1;
        v44 = sub_100013AEC(v60, *a1, 311);
        sub_1000165D0(v60, "an integer");
        *v43 = v44;
      }

      v6 = *(a1 + 8);
      result = sub_100018014(v60, v42, v6);
      goto LABEL_65;
    case 8u:
      v23 = *a2;
      v22 = *(a2 + 1);
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v24 = *a1;
        v25 = sub_100013AEC(v60, *a1, 311);
        sub_1000165D0(v60, "an integer");
        *v24 = v25;
      }

      v6 = *(a1 + 8);
      result = sub_1000180E4(v60, v23, v22, v6);
      goto LABEL_65;
    case 9u:
      v19 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_56;
      }

      v20 = *a1;
      v21 = sub_100013AEC(v60, *a1, 319);
      if (v60[1] - 13 < 6)
      {
        if ((*&v60[2] & 0x80000000) == 0 && *&v60[8] == -1)
        {
          *&v60[8] = 6;
        }

LABEL_55:
        *v20 = v21;
LABEL_56:
        v6 = *(a1 + 8);
        v54 = sub_1000146D8(v60, v6);
        result = sub_1000181C4(v6, v54, v55, v19);
        goto LABEL_65;
      }

      if (v60[1] <= 0xCu && ((1 << v60[1]) & 0x1801) != 0)
      {
        goto LABEL_55;
      }

      goto LABEL_67;
    case 0xAu:
      v45 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_64;
      }

      v46 = *a1;
      v47 = sub_100013AEC(v60, *a1, 319);
      if (v60[1] - 13 < 6)
      {
        if ((*&v60[2] & 0x80000000) == 0 && *&v60[8] == -1)
        {
          *&v60[8] = 6;
        }

LABEL_63:
        *v46 = v47;
LABEL_64:
        v6 = *(a1 + 8);
        v58 = sub_1000146D8(v60, v6);
        result = sub_100019168(v6, v58, v59, v45);
        goto LABEL_65;
      }

      if (v60[1] <= 0xCu && ((1 << v60[1]) & 0x1801) != 0)
      {
        goto LABEL_63;
      }

      goto LABEL_67;
    case 0xBu:
      v39 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_60;
      }

      v40 = *a1;
      v41 = sub_100013AEC(v60, *a1, 319);
      if (v60[1] - 13 >= 6)
      {
        if (v60[1] > 0xCu || ((1 << v60[1]) & 0x1801) == 0)
        {
LABEL_67:
          sub_1000141F8("a floating-point");
        }
      }

      else if ((*&v60[2] & 0x80000000) == 0 && *&v60[8] == -1)
      {
        *&v60[8] = 6;
      }

      *v40 = v41;
LABEL_60:
      v6 = *(a1 + 8);
      v56 = sub_1000146D8(v60, v6);
      result = sub_100019ED8(v6, v56, v57, v39);
LABEL_65:
      *v6 = result;
      return result;
    case 0xCu:
      v48 = *a2;
      *v60 = 1;
      *&v60[4] = 0xFFFFFFFF00000000;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v49 = *a1;
        *v49 = sub_10001A7DC(v60, *a1);
      }

      v6 = *(a1 + 8);
      result = sub_10001A820(v60, v48, v6);
      goto LABEL_65;
    case 0xDu:
      v10 = *a2;
      v11 = *(a2 + 1);
      *v60 = 1;
      *&v60[4] = 0xFFFFFFFF00000000;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v12 = *a1;
        *v12 = sub_10001A7DC(v60, *a1);
      }

      v6 = *(a1 + 8);
      v13 = *v6;
      v14 = sub_1000146D8(v60, v6);
      result = sub_10001A898(v10, v11, v13, v14, v15);
      goto LABEL_65;
    case 0xEu:
      v8 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v9 = *a1;
        *v9 = sub_10001A938(v60, *a1);
      }

      v6 = *(a1 + 8);
      result = sub_10001A980(v60, v8, v6);
      goto LABEL_65;
    case 0xFu:
      v50 = *a1;
      v51 = *a2;
      v52 = *(a2 + 1);
      v53 = *(a1 + 8);

      return v52(v50, v53, v51);
    default:
      sub_100012E2C("The argument index value is too large for the number of arguments supplied");
  }
}

unsigned __int8 *sub_100013904(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  result = sub_100013990(a1, a2);
  v5 = *(a3 + 16);
  if (v5)
  {
    if (v5 == 2)
    {
      sub_100012E2C("Using manual argument numbering in automatic argument numbering mode");
    }
  }

  else
  {
    *(a3 + 16) = 1;
  }

  return result;
}

uint64_t sub_10001394C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (v1 == 1)
    {
      sub_100012E2C("Using automatic argument numbering in manual argument numbering mode");
    }
  }

  else
  {
    *(a1 + 16) = 2;
  }

  v2 = *(a1 + 24);
  *(a1 + 24) = v2 + 1;
  return v2;
}

unsigned __int8 *sub_100013990(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1;
  v3 = a1 + 9;
  if (a2 - a1 <= 9)
  {
    v3 = a2;
  }

  v5 = *a1;
  result = a1 + 1;
  v6 = v5 - 48;
  if (result == v3)
  {
    v3 = result;
LABEL_9:
    if (v3 == a2)
    {
      return a2;
    }

    else
    {
      v8 = *v3;
      if ((v8 - 48) > 9)
      {
        return v3;
      }

      else if ((v8 + 10 * v6 - 48) >> 31 || (result = v2 + 2, v2 + 2 != a2) && *result - 48 <= 9)
      {
        sub_100012E2C("The numeric value of the format specifier is too large");
      }
    }
  }

  else
  {
    v2 = v3 - 1;
    while (1)
    {
      v7 = *result;
      if ((v7 - 58) < 0xFFFFFFF6)
      {
        break;
      }

      v6 = v7 + 10 * v6 - 48;
      if (++result == v3)
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

void *sub_100013A60(uint64_t a1, unsigned int a2, void *a3)
{
  if (*(a1 + 1) > 1u)
  {
    v9 = sub_1000146D8(a1, a3);

    return sub_100014744(a2, a3, v9, v8, 0);
  }

  else
  {
    v6 = sub_1000146D8(a1, a3);

    return sub_100014540(a2, a3, v6, v5);
  }
}

unsigned __int8 *sub_100013AEC(_BYTE *a1, unsigned __int8 **a2, __int16 a3)
{
  result = *a2;
  v5 = a2[1];
  v14 = result;
  if (result == v5)
  {
    return result;
  }

  v6 = *result;
  if (v6 == 125 || (a3 & 0x40) != 0 && v6 == 58)
  {
    return result;
  }

  v9 = sub_100013D78(a1, &v14, v5);
  result = v14;
  if (v9)
  {
    if (v14 == v5)
    {
      return result;
    }
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_15;
  }

  v10 = *v14;
  switch(v10)
  {
    case ' ':
      v11 = *a1 | 0x18;
LABEL_14:
      *a1 = v11;
      v14 = ++result;
      if (result == v5)
      {
        return result;
      }

      break;
    case '+':
      v11 = *a1 & 0xE7 | 0x10;
      goto LABEL_14;
    case '-':
      v11 = *a1 & 0xE7 | 8;
      goto LABEL_14;
  }

LABEL_15:
  if ((a3 & 2) == 0 || *result != 35 || (*a1 |= 0x20u, ++result, v14 = result, result != v5))
  {
    if ((a3 & 4) == 0 || *result != 48)
    {
      goto LABEL_23;
    }

    if ((*a1 & 7) == 0)
    {
      *a1 |= 4u;
    }

    v14 = ++result;
    if (result != v5)
    {
LABEL_23:
      v12 = sub_100013EC0(a1, &v14, v5, a2);
      result = v14;
      if (!v12 || v14 != v5)
      {
        if ((a3 & 8) == 0 || (v13 = sub_100013F54(a1, &v14, v5, a2), result = v14, !v13) || v14 != v5)
        {
          if ((a3 & 0x10) == 0 || *result != 76 || (*a1 |= 0x40u, ++result, v14 = result, result != v5))
          {
            if ((a3 & 0x80) == 0 || *result != 110 || (*a1 |= 0x80u, ++result, v14 = result, result != v5))
            {
              if ((a3 & 0x20) != 0)
              {
                sub_10001401C(a1, &v14);
              }

              result = v14;
              if ((a3 & 0x100) != 0 && v14 != v5 && *v14 != 125)
              {
                sub_100012E2C("The format specifier should consume the input or end with a '}'");
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100013D10(uint64_t result, const char *a2)
{
  v2 = *(result + 1);
  if (v2 - 2 >= 6)
  {
    if (v2 > 1)
    {
      sub_1000141F8(a2);
    }

    v3 = result;
    result = sub_1000142E4(result, 48, a2, -1);
    if ((*v3 & 7) == 0)
    {
      *v3 |= 1u;
    }
  }

  return result;
}

uint64_t sub_100013D78(_BYTE *a1, unsigned __int8 **a2, unsigned __int8 *a3)
{
  v15[0] = *a2;
  v15[1] = a3;
  if ((sub_10011C0C4(v15) & 0x80000000) != 0)
  {
    sub_100012E2C("The format specifier contains malformed Unicode characters");
  }

  v6 = v15[0];
  if (v15[0] >= a3)
  {
    goto LABEL_7;
  }

  v7 = *v15[0];
  switch(v7)
  {
    case '<':
      v8 = 1;
LABEL_17:
      *a1 = *a1 & 0xF8 | v8;
      v13 = *a2;
      v14 = v6 - *a2;
      if (v14 == 1)
      {
        if (*v13 == 123)
        {
          sub_100012E2C("The fill option contains an invalid value");
        }
      }

      else if (v6 == v13)
      {
LABEL_22:
        v11 = &v13[v14];
        goto LABEL_23;
      }

      memmove(a1 + 12, v13, v14);
      v13 = *a2;
      goto LABEL_22;
    case '>':
      v8 = 3;
      goto LABEL_17;
    case '^':
      v8 = 2;
      goto LABEL_17;
  }

LABEL_7:
  v9 = **a2;
  switch(v9)
  {
    case '<':
      v10 = 1;
      break;
    case '>':
      v10 = 3;
      break;
    case '^':
      v10 = 2;
      break;
    default:
      return 0;
  }

  *a1 = *a1 & 0xF8 | v10;
  v11 = *a2;
LABEL_23:
  *a2 = v11 + 1;
  return 1;
}

uint64_t sub_100013EC0(uint64_t a1, unsigned __int8 **a2, unsigned __int8 *a3, uint64_t a4)
{
  v6 = *a2;
  v7 = **a2;
  if (v7 == 123)
  {
    v9 = v6 + 1;
    *a2 = v9;
    v10 = sub_10001419C(v9, a3, a4);
    *(a1 + 2) |= 0x4000u;
  }

  else
  {
    if (v7 == 48)
    {
      sub_100012E2C("The width option should not have a leading zero");
    }

    if ((v7 - 58) < 0xFFFFFFF6)
    {
      return 0;
    }

    v10 = sub_100013990(v6, a3);
  }

  *(a1 + 4) = v11;
  *a2 = v10;
  return 1;
}

BOOL sub_100013F54(uint64_t a1, unsigned __int8 **a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = *a2;
  v5 = **a2;
  if (v5 == 46)
  {
    v8 = v4 + 1;
    *a2 = v4 + 1;
    if (v4 + 1 == a3)
    {
      sub_100012E2C("End of input while parsing format specifier precision");
    }

    v9 = *v8;
    if (v9 == 123)
    {
      *a2 = v4 + 2;
      v10 = sub_10001419C(v4 + 2, a3, a4);
      *(a1 + 2) |= 0x8000u;
      *(a1 + 8) = v11;
    }

    else
    {
      if ((v9 - 58) <= 0xFFFFFFF5)
      {
        sub_100012E2C("The precision option does not contain a value or an argument index");
      }

      v10 = sub_100013990(v8, a3);
      *(a1 + 8) = v12;
      *(a1 + 2) &= ~0x8000u;
    }

    *a2 = v10;
  }

  return v5 == 46;
}

uint64_t sub_10001401C(uint64_t result, unsigned __int8 **a2)
{
  v2 = *a2;
  v3 = **a2;
  if (v3 > 0x62)
  {
    if (**a2 <= 0x66u)
    {
      if (**a2 > 0x64u)
      {
        if (v3 == 101)
        {
          v4 = 13;
        }

        else
        {
          v4 = 15;
        }
      }

      else if (v3 == 99)
      {
        v4 = 10;
      }

      else
      {
        if (v3 != 100)
        {
          return result;
        }

        v4 = 5;
      }
    }

    else if (**a2 <= 0x6Fu)
    {
      if (v3 == 103)
      {
        v4 = 17;
      }

      else
      {
        if (v3 != 111)
        {
          return result;
        }

        v4 = 4;
      }
    }

    else
    {
      switch(v3)
      {
        case 'p':
          v4 = 8;
          break;
        case 's':
          v4 = 1;
          break;
        case 'x':
          v4 = 6;
          break;
        default:
          return result;
      }
    }
  }

  else if (**a2 <= 0x46u)
  {
    if (**a2 > 0x44u)
    {
      if (v3 == 69)
      {
        v4 = 14;
      }

      else
      {
        v4 = 16;
      }
    }

    else if (v3 == 65)
    {
      v4 = 12;
    }

    else
    {
      if (v3 != 66)
      {
        return result;
      }

      v4 = 3;
    }
  }

  else if (**a2 <= 0x57u)
  {
    if (v3 == 71)
    {
      v4 = 18;
    }

    else
    {
      if (v3 != 80)
      {
        return result;
      }

      v4 = 9;
    }
  }

  else
  {
    switch(v3)
    {
      case 'X':
        v4 = 7;
        break;
      case 'a':
        v4 = 11;
        break;
      case 'b':
        v4 = 2;
        break;
      default:
        return result;
    }
  }

  *(result + 1) = v4;
  *a2 = (v2 + 1);
  return result;
}

unsigned __int8 *sub_10001419C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    sub_100012E2C("End of input while parsing an argument index");
  }

  v4 = sub_100013038(a1, a2, a3);
  if (v4 == a2 || *v4 != 125)
  {
    sub_100012E2C("The argument index is invalid");
  }

  return v4 + 1;
}

void sub_1000141F8(const char *a1)
{
  sub_100010DC8(&v8, "The type option contains an invalid value for ");
  v2 = strlen(a1);
  v3 = std::string::append(&v8, a1, v2);
  v4 = *&v3->__r_.__value_.__l.__data_;
  v9.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v9.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  v5 = std::string::append(&v9, " formatting argument", 0x14uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v11 = v5->__r_.__value_.__r.__words[2];
  v10 = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (v11 >= 0)
  {
    v7 = &v10;
  }

  else
  {
    v7 = v10;
  }

  sub_100012E2C(v7);
}

void sub_100014298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 25) < 0)
  {
    operator delete(*(v21 - 48));
  }

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

uint64_t sub_1000142E4(uint64_t result, char a2, const char *a3, int a4)
{
  if ((a2 & 1) == 0 && (*result & 0x18) != 0)
  {
    v6 = "sign";
    goto LABEL_23;
  }

  if ((a2 & 2) == 0 && (*result & 0x20) != 0)
  {
    v6 = "alternate form";
    goto LABEL_23;
  }

  if ((a2 & 4) == 0 && (*result & 7) == 4)
  {
    v6 = "zero-padding";
    goto LABEL_23;
  }

  if ((a2 & 8) == 0 && *(result + 8) != -1)
  {
    v6 = "precision";
    goto LABEL_23;
  }

  if ((a2 & 0x10) == 0 && (*result & 0x40) != 0)
  {
    v6 = "locale-specific form";
LABEL_23:
    sub_1000143C4(a3, v6);
  }

  v4 = *(result + 1);
  if (*(result + 1))
  {
    if (v4 >= 0x20)
    {
      sub_100012E2C("The type does not fit in the mask");
    }

    v5 = 1 << v4;
  }

  else
  {
    v5 = 1;
  }

  if ((v5 & a4) == 0)
  {
    sub_1000141F8(a3);
  }

  return result;
}

void sub_1000143C4(const char *a1, const char *a2)
{
  sub_100010DC8(&v15, "The format specifier for ");
  v4 = strlen(a1);
  v5 = std::string::append(&v15, a1, v4);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v16, " does not allow the ", 0x14uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = strlen(a2);
  v10 = std::string::append(&v17, a2, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v18, " option", 7uLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v20 = v12->__r_.__value_.__r.__words[2];
  v19 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (v20 >= 0)
  {
    v14 = &v19;
  }

  else
  {
    v14 = v19;
  }

  sub_100012E2C(v14);
}

void sub_1000144C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 25) < 0)
  {
    operator delete(*(v28 - 48));
  }

  if (*(v28 - 57) < 0)
  {
    operator delete(*(v28 - 80));
  }

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

  _Unwind_Resume(exception_object);
}

void *sub_100014540(int a1, void **a2, uint64_t a3, unint64_t a4)
{
  if ((a3 & 0x40) != 0)
  {
    sub_100014898(a2, &v17);
    v12 = std::locale::use_facet(&v17, &std::numpunct<char>::id);
    std::locale::~locale(&v17);
    v13 = v12->__vftable;
    if (a1)
    {
      (v13[2].~facet)(&v17, v12);
    }

    else
    {
      (v13[2].~facet_0)(&v17, v12);
    }

    if ((v19 & 0x80u) == 0)
    {
      locale = &v17;
    }

    else
    {
      locale = v17.__locale_;
    }

    if ((v19 & 0x80u) == 0)
    {
      v15 = v19;
    }

    else
    {
      v15 = v18;
    }

    v16 = sub_100014908(locale, v15, *a2, a3, a4);
    if (v19 < 0)
    {
      operator delete(v17.__locale_);
    }

    return v16;
  }

  else
  {
    if (a1)
    {
      v8 = 4;
    }

    else
    {
      v8 = 5;
    }

    v9 = *a2;
    if (a1)
    {
      v10 = "true";
    }

    else
    {
      v10 = "false";
    }

    return sub_100014ABC(v10, v8, v9, a3, a4, v8);
  }
}

void sub_1000146AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_1000146D8(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = sub_1000152A0(a1, a2);
  *(a1 + 12);
  sub_10001537C(a1, a2);
  return (v5 << 8) | (v6 << 32) | v4 & 0x7F;
}

void *sub_100014744(unsigned int a1, void **a2, unint64_t a3, unint64_t a4, char a5)
{
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      return sub_100015570(a1, a2, a3, a4, a5, v11, v12, 0, 0xAu);
    }

    v10 = 2;
    if (BYTE1(a3) == 2)
    {
      v7 = "0b";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v7 = "0B";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = &v14;
    return sub_100015570(a1, a2, v8, a4, a5, v11, v9, v7, v10);
  }

  if (BYTE1(a3) > 5u)
  {
    v10 = 16;
    if (BYTE1(a3) == 6)
    {
      v7 = "0x";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v7 = "0X";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = v12;
    return sub_100015570(a1, a2, v8, a4, a5, v11, v9, v7, v10);
  }

  if (BYTE1(a3) != 4)
  {
    return sub_100015570(a1, a2, a3, a4, a5, v11, v12, 0, 0xAu);
  }

  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  return sub_100015570(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, v11, v13, v5, 8u);
}

std::locale *sub_100014898@<X0>(uint64_t a1@<X0>, std::locale *a2@<X8>)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    std::locale::locale(&v5);
    sub_1000149B4(a1 + 32, &v5);
    std::locale::~locale(&v5);
  }

  return std::locale::locale(a2, (a1 + 32));
}

void *sub_100014908(char *__src, size_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if (a4 <= 0)
  {
    sub_100014B98(a3, __src, a2);
    return a3;
  }

  else
  {
    v10 = sub_1000149F8(__src, a2, HIDWORD(a4), 1);

    return sub_100014ABC(__src, a2, a3, a4, a5, v10);
  }
}

uint64_t sub_1000149B4(uint64_t a1, const std::locale *a2)
{
  if (*(a1 + 8) == 1)
  {
    std::locale::operator=(a1, a2);
  }

  else
  {
    std::locale::locale(a1, a2);
    *(a1 + 8) = 1;
  }

  return a1;
}

uint64_t sub_1000149F8(unsigned __int8 *a1, uint64_t a2, unint64_t a3, int a4)
{
  result = 0;
  if (a2 && a3)
  {
    if (*a1 < 0)
    {
      v8 = a1;
    }

    else
    {
      v7 = 0;
      v8 = &a1[a3 - 1];
      while (1)
      {
        if (a2 - 1 == v7)
        {
          return a2;
        }

        if (a3 - 1 == v7)
        {
          break;
        }

        v9 = a1[++v7];
        if (v9 < 0)
        {
          a3 = a3 - v7 + 1;
          v8 = &a1[v7 - 1];
          return v8 - a1 + sub_10011C2B4(v8, &a1[a2], a3, a4);
        }
      }

      if ((a1[a3] & 0x80000000) == 0)
      {
        return a3;
      }

      a3 = 1;
    }

    return v8 - a1 + sub_10011C2B4(v8, &a1[a2], a3, a4);
  }

  return result;
}

void *sub_100014ABC(char *__src, size_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v9 = (a4 >> 32) - a6;
  if (a4 >> 32 <= a6)
  {
    sub_100014B98(a3, __src, a2);
    return a3;
  }

  v10 = HIDWORD(a5);
  if ((a4 & 7u) > 1)
  {
    if ((a4 & 7) != 3)
    {
      v11 = v9 >> 1;
      v9 -= v9 >> 1;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if ((a4 & 7) == 0)
  {
LABEL_7:
    v11 = (a4 >> 32) - a6;
    v9 = 0;
    goto LABEL_9;
  }

  v11 = 0;
LABEL_9:
  v13 = sub_100015150(a3, v11, SHIDWORD(a5));
  sub_100014B98(v13, __src, a2);

  return sub_100015150(v13, v9, v10);
}

void *sub_100014B98(void *result, char *__src, size_t a3)
{
  v4 = result;
  v5 = result[4];
  if (v5)
  {
    v7 = *v5;
    v6 = v5[1];
    if (*v5 - v6 >= a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = *v5 - v6;
    }

    v5[1] = v6 + a3;
    if (v7 <= v6 || v8 == 0)
    {
      return result;
    }
  }

  else
  {
    v8 = a3;
  }

  v10 = result[2];
  do
  {
    v11 = *(v4 + 8) - v10;
    if (v11 < v8 + 1)
    {
      result = (*(v4 + 24))(v4, v8 + 2);
      v10 = *(v4 + 16);
      v11 = *(v4 + 8) - v10;
    }

    if (v11 >= v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      result = memmove((*v4 + v10), __src, v12);
      v10 = *(v4 + 16);
    }

    v10 += v12;
    *(v4 + 16) = v10;
    __src += v12;
    v13 = v8 > v11;
    v8 -= v12;
  }

  while (v13);
  return result;
}

uint64_t sub_100014C70(uint64_t a1)
{
  v3 = a1 + 16;
  v2 = *(a1 + 16);
    ;
  }

  return v2;
}

uint64_t sub_100014CC8(unsigned int a1)
{
  if (a1 - 262142 < 0xFFFC1102)
  {
    return 1;
  }

  v2 = 107;
  v3 = &unk_10012EF4C;
  do
  {
    v4 = v2 >> 1;
    v5 = &v3[v2 >> 1];
    v7 = *v5;
    v6 = v5 + 1;
    v2 += ~(v2 >> 1);
    if (((a1 << 14) | 0x3FFF) >= v7)
    {
      v3 = v6;
    }

    else
    {
      v2 = v4;
    }
  }

  while (v2);
  v1 = 1;
  if (v3 != &unk_10012EF4C)
  {
    if ((*(v3 - 1) & 0x3FFF) + (*(v3 - 1) >> 14) < a1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return v1;
}

uint64_t sub_100014D54(uint64_t a1, unsigned int a2)
{
  *a1 = a2;
  v4 = sub_100014DC8(a2);
  *(a1 + 4) = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (v4 == 3)
  {
    v5 = 2;
    goto LABEL_7;
  }

  if (v4 == 9)
  {
    v5 = 3;
LABEL_7:
    *(a1 + 8) = v5;
    return a1;
  }

  if (!sub_100014E34(a2))
  {
    v5 = 1;
    goto LABEL_7;
  }

  return a1;
}

uint64_t sub_100014DC8(unsigned int a1)
{
  v1 = 1496;
  v2 = &unk_10012D4C8;
  do
  {
    v3 = v1 >> 1;
    v4 = &v2[v1 >> 1];
    v6 = *v4;
    v5 = v4 + 1;
    v1 += ~(v1 >> 1);
    if (((a1 << 11) | 0x7FF) >= v6)
    {
      v2 = v5;
    }

    else
    {
      v1 = v3;
    }
  }

  while (v1);
  v7 = 16;
  if (v2 != &unk_10012D4C8)
  {
    v8 = *(v2 - 1);
    v9 = ((v8 >> 4) & 0x7F) + (v8 >> 11);
    v10 = v8 & 0xF;
    if (v9 >= a1)
    {
      return v10;
    }

    else
    {
      return 16;
    }
  }

  return v7;
}

uint64_t sub_100014E34(unsigned int a1)
{
  v1 = 201;
  v2 = &unk_10012EC28;
  do
  {
    v3 = v1 >> 1;
    v4 = &v2[v1 >> 1];
    v6 = *v4;
    v5 = v4 + 1;
    v1 += ~(v1 >> 1);
    if (((a1 << 11) | 0x7FF) >= v6)
    {
      v2 = v5;
    }

    else
    {
      v1 = v3;
    }
  }

  while (v1);
  v7 = 3;
  if (v2 != &unk_10012EC28)
  {
    v8 = *(v2 - 1);
    v9 = ((v8 >> 2) & 0x1FF) + (v8 >> 11);
    v10 = v8 & 3;
    if (v9 >= a1)
    {
      return v10;
    }

    else
    {
      return 3;
    }
  }

  return v7;
}

uint64_t sub_100014EA0(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 8);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      return sub_1000150E8(a1, a2, a3);
    }

    *(a1 + 8) = 0;
    if (a3 == 9)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return sub_10001503C(a1, a2, a3);
  }

  return sub_100014ED8(a1, a2, a3);
}

uint64_t sub_100014ED8(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v5 = *(a1 + 4);
  if (a3 == 5 && !*(a1 + 4))
  {
    return 0;
  }

  result = 1;
  v7 = v5 > 5 || ((1 << v5) & 0x23) == 0;
  if (v7 && (a3 > 5 || ((1 << a3) & 0x23) == 0))
  {
    if (v5 > 6)
    {
      if (v5 != 7)
      {
        if (v5 != 12)
        {
          goto LABEL_21;
        }

        goto LABEL_17;
      }

      v8 = a3 - 2;
      if (a3 - 2 >= 0xC)
      {
        goto LABEL_30;
      }

      v9 = 2817;
    }

    else
    {
      if (v5 != 4)
      {
        if (v5 != 6)
        {
          goto LABEL_21;
        }

LABEL_17:
        if ((a3 - 11) >= 2u)
        {
LABEL_21:
          if (a3 == 11 && v5 == 11 || a3 <= 0xD && ((1 << a3) & 0x2404) != 0 || v5 == 8)
          {
            return 0;
          }

LABEL_30:
          if (sub_100014E34(a2))
          {
            if (a3 == 9)
            {
              v12 = 3;
              v11 = 8;
              goto LABEL_37;
            }

            if (a3 != 3)
            {
              return 1;
            }

            v10 = 2;
            v11 = 12;
          }

          else
          {
            v10 = 1;
            v11 = 16;
          }

          v12 = 0;
          *(a1 + 8) = v10;
LABEL_37:
          *(a1 + v11) = v12;
          return 1;
        }

        return 0;
      }

      v8 = a3 - 2;
      if (a3 - 2 >= 0xC)
      {
        goto LABEL_30;
      }

      v9 = 3381;
    }

    if (((v9 >> v8) & 1) == 0)
    {
      goto LABEL_30;
    }

    return 0;
  }

  return result;
}

uint64_t sub_10001503C(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = sub_100014E34(a2);
  if (v6 != 3)
  {
    if (*(a1 + 16))
    {
      if ((v6 - 1) >= 2)
      {
        if (v6)
        {
          goto LABEL_2;
        }

        *(a1 + 16) = 0;
      }
    }

    else if (v6 != 1)
    {
      if (v6 != 2)
      {
        goto LABEL_2;
      }

      *(a1 + 16) = 1;
    }

    return 0;
  }

LABEL_2:
  *(a1 + 8) = 0;

  return sub_100014ED8(a1, a2, a3);
}

uint64_t sub_1000150E8(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 12);
  if (v3 == 2)
  {
    if (a3 == 3)
    {
      *(a1 + 12) = 0;
      return 0;
    }

LABEL_11:
    *(a1 + 8) = 0;
    return sub_100014ED8(a1, a2, a3);
  }

  if (v3 != 1)
  {
    if (a3 == 13)
    {
LABEL_12:
      v4 = 2;
      goto LABEL_13;
    }

    if (a3 == 2)
    {
      v4 = 1;
LABEL_13:
      *(a1 + 12) = v4;
      return 0;
    }

    goto LABEL_11;
  }

  if (a3 != 2)
  {
    if (a3 != 13)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  return 0;
}

void *sub_100015150(void *a1, size_t a2, int a3)
{
  v3 = a2;
  __src = a3;
  v5 = __clz(~a3);
  v6 = v5 - 24;
  if (v5 == 24)
  {
    sub_1000151D0(a1, a2, a3);
  }

  else if (a2)
  {
    do
    {
      sub_100014B98(a1, &__src, v6);
      --v3;
    }

    while (v3);
  }

  return a1;
}

void *sub_1000151D0(void *result, size_t a2, int __c)
{
  v4 = a2;
  v5 = result;
  v6 = result[4];
  if (!v6)
  {
    goto LABEL_8;
  }

  v8 = *v6;
  v7 = v6[1];
  if (*v6 - v7 < a2)
  {
    v4 = *v6 - v7;
  }

  v6[1] = v7 + a2;
  if (v8 > v7 && v4 != 0)
  {
LABEL_8:
    v10 = result[2];
    do
    {
      v11 = *(v5 + 8) - v10;
      if (v11 < v4 + 1)
      {
        result = (*(v5 + 24))(v5, v4 + 2);
        v10 = *(v5 + 16);
        v11 = *(v5 + 8) - v10;
      }

      if (v11 >= v4)
      {
        v12 = v4;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        result = memset((*v5 + v10), __c, v12);
        v10 = *(v5 + 16);
      }

      v10 += v12;
      *(v5 + 16) = v10;
      v13 = v4 > v11;
      v4 -= v12;
    }

    while (v13);
  }

  return result;
}

unint64_t sub_1000152A0(uint64_t a1, void *a2)
{
  if ((*(a1 + 2) & 0x4000) == 0)
  {
    return *(a1 + 4);
  }

  v4 = *(a1 + 4);
  v5 = a2[1];
  if (v5 <= v4)
  {
    LOBYTE(v6) = 0;
  }

  else if (v5 > 0xC)
  {
    v8 = a2[2] + 32 * v4;
    v4 = *v8;
    v2 = *(v8 + 8);
    LOBYTE(v6) = *(v8 + 16);
    v10[0] = *(v8 + 17);
    *(v10 + 7) = *(v8 + 24);
  }

  else
  {
    v6 = (a2[3] >> (5 * v4)) & 0x1FLL;
    v7 = (a2[2] + 16 * v4);
    v4 = *v7;
    v2 = v7[1];
  }

  v11[0] = v4;
  v11[1] = v2;
  v12 = v6;
  v13[0] = v10[0];
  *(v13 + 7) = *(v10 + 7);
  return sub_100015458(&v9, v11);
}

unint64_t sub_10001537C(uint64_t a1, void *a2)
{
  if ((*(a1 + 2) & 0x80000000) == 0)
  {
    return *(a1 + 8);
  }

  v4 = *(a1 + 8);
  v5 = a2[1];
  if (v5 <= v4)
  {
    LOBYTE(v6) = 0;
  }

  else if (v5 > 0xC)
  {
    v8 = a2[2] + 32 * v4;
    v4 = *v8;
    v2 = *(v8 + 8);
    LOBYTE(v6) = *(v8 + 16);
    v10[0] = *(v8 + 17);
    *(v10 + 7) = *(v8 + 24);
  }

  else
  {
    v6 = (a2[3] >> (5 * v4)) & 0x1FLL;
    v7 = (a2[2] + 16 * v4);
    v4 = *v7;
    v2 = v7[1];
  }

  v11[0] = v4;
  v11[1] = v2;
  v12 = v6;
  v13[0] = v10[0];
  *(v13 + 7) = *(v10 + 7);
  return sub_100015458(&v9, v11);
}

unint64_t sub_100015458(uint64_t a1, unint64_t *a2)
{
  switch(*(a2 + 16))
  {
    case 1:
    case 2:
    case 5:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
      sub_100012E2C("Replacement argument isn't a standard signed or unsigned integer type");
    case 3:
      result = *a2;
      if ((result & 0x80000000) != 0)
      {
        sub_100012E2C("An argument index may not have a negative value");
      }

      return result;
    case 4:

      return sub_100015534(a1, a2);
    case 6:
      result = *a2;
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_7;
      }

      return result;
    case 7:
      result = *a2;
      if (*a2 >> 31)
      {
LABEL_7:
        sub_100012E2C("The value of the argument index exceeds its maximum value");
      }

      return result;
    default:
      sub_100012E2C("The argument index value is too large for the number of arguments supplied");
  }
}

unint64_t sub_100015534(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    sub_100012E2C("An argument index may not have a negative value");
  }

  if (result >> 31)
  {
    sub_100012E2C("The value of the argument index exceeds its maximum value");
  }

  return result;
}

void *sub_100015570(unsigned int a1, void **a2, unint64_t a3, unint64_t a4, char a5, char *a6, uint64_t a7, _BYTE *a8, unsigned int a9)
{
  v9 = a6;
  v13 = a3;
  if (a5)
  {
    v14 = 45;
LABEL_7:
    *a6 = v14;
    v16 = a6 + 1;
    goto LABEL_8;
  }

  v15 = (a3 >> 3) & 3;
  if (v15 == 2)
  {
    v14 = 43;
    goto LABEL_7;
  }

  v16 = a6;
  if (v15 == 3)
  {
    v14 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v17 = *a8;
      if (*a8)
      {
        v18 = a8 + 1;
        do
        {
          *v16 = v17;
          v16 = (v16 + 1);
          v19 = *v18++;
          v17 = v19;
        }

        while (v19);
      }
    }
  }

  v20 = sub_100015BC8(v16, a7, a1, a9);
  if ((v13 & 0x40) == 0)
  {
    goto LABEL_41;
  }

  sub_100014898(a2, &v43);
  v21 = std::locale::use_facet(&v43, &std::numpunct<char>::id);
  std::locale::~locale(&v43);
  (v21->__vftable[1].__on_zero_shared)(&v43, v21);
  if ((v45 & 0x8000000000000000) != 0)
  {
    locale = v43.__locale_;
    if (!v44)
    {
LABEL_40:
      operator delete(locale);
      goto LABEL_41;
    }
  }

  else
  {
    if (!v45)
    {
      goto LABEL_41;
    }

    locale = &v43;
  }

  if (v20 - v16 <= *locale)
  {
    if (v45 < 0)
    {
      locale = v43.__locale_;
      goto LABEL_40;
    }

LABEL_41:
    v35 = HIDWORD(a3);
    if ((v13 & 7) == 4)
    {
      sub_100014B98(*a2, v9, v16 - v9);
      v36 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v16 - v9)
      {
        LODWORD(v37) = v16 - v9;
      }

      else
      {
        LODWORD(v37) = HIDWORD(a3);
      }

      v35 = (HIDWORD(a3) - v37);
      LOBYTE(v37) = 48;
      v9 = v16;
    }

    else
    {
      v37 = HIDWORD(a4);
      v36 = a3;
    }

    v38 = *a2;
    v39 = v35 << 32;
    if ((a3 & 0xFF00) == 0x700)
    {
      return sub_100015AC4(v9, v20, v38, v39 | a3 & 0xFFFF0000 | v36 | 0x700, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), sub_100015BB0);
    }

    else
    {
      return sub_100014ABC(v9, v20 - v9, v38, v39 | a3 & 0xFFFFFF00 | v36, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), v20 - v9);
    }
  }

  v23 = *a2;
  memset(&__p, 0, sizeof(__p));
  v24 = v43.__locale_ + v44;
  if (v45 < 0)
  {
    v25 = v43.__locale_;
  }

  else
  {
    v24 = &v43 + v45;
    v25 = &v43;
  }

  v26 = *v25;
  v27 = v20 - v16 - *v25;
  if (v27 >= 1)
  {
    v28 = v24 - 1;
    do
    {
      std::string::push_back(&__p, v26);
      if (v25 == v28)
      {
        v26 = *v25;
      }

      else
      {
        v29 = v25 + 1;
        v30 = v25 + 1;
        do
        {
          v31 = *v30++;
          v26 = v31;
          if (v31)
          {
            v32 = 1;
          }

          else
          {
            v32 = v29 == v28;
          }

          v29 = v30;
        }

        while (!v32);
        v25 = v30 - 1;
      }

      v27 -= v26;
    }

    while (v27 > 0);
  }

  std::string::push_back(&__p, v26 + v27);
  v33 = (v21->__vftable[1].~facet_0)(v21);
  v34 = sub_1000158E8(v23, v9, v16, v20, &__p, v33, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v45 < 0)
  {
    operator delete(v43.__locale_);
  }

  return v34;
}

void sub_1000158A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15.__locale_);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000158E8(void *a1, char *__src, char *a3, int a4, uint64_t *a5, char a6, uint64_t a7, unint64_t a8)
{
  v8 = a7;
  v11 = a3;
  v13 = a1;
  v14 = HIDWORD(a7);
  v15 = HIDWORD(a8);
  v16 = a3 - __src;
  LODWORD(v17) = *(a5 + 23);
  if ((v17 & 0x80u) != 0)
  {
    v17 = a5[1];
  }

  v18 = a4 - __src - 1 + v17;
  if ((a7 & 7) != 4)
  {
    if (SHIDWORD(a7) <= v18)
    {
      v19 = 0;
LABEL_16:
      sub_100014B98(v13, __src, v16);
      goto LABEL_17;
    }

    v19 = (a7 >> 32) - v18;
    if ((a7 & 7u) > 1)
    {
      if ((a7 & 7) != 3)
      {
        v20 = v19 >> 1;
        v19 -= v19 >> 1;
        goto LABEL_15;
      }
    }

    else if ((a7 & 7) != 0)
    {
      v20 = 0;
LABEL_15:
      v13 = sub_100015150(a1, v20, SHIDWORD(a8));
      goto LABEL_16;
    }

    v20 = (a7 >> 32) - v18;
    v19 = 0;
    goto LABEL_15;
  }

  sub_100014B98(a1, __src, a3 - __src);
  if (v14 > v18)
  {
    sub_1000151D0(v13, v14 - v18, 48);
  }

  v19 = 0;
LABEL_17:
  v21 = *(a5 + 23);
  v22 = v21;
  v23 = a5 + v21;
  if (v22 >= 0)
  {
    v24 = v23;
  }

  else
  {
    v24 = (*a5 + a5[1]);
  }

  if (v22 >= 0)
  {
    v25 = a5;
  }

  else
  {
    v25 = *a5;
  }

  v26 = v25 + 1;
  v27 = v8 & 0xFF00;
  for (i = v24; ; v24 = i)
  {
    v30 = *--i;
    v29 = v30;
    if (v27 == 1792)
    {
      v31 = &v11[v29];
      sub_100016320(v13, v11, &v11[v29], sub_100015BB0);
      v11 = v31;
    }

    else
    {
      sub_100014B98(v13, v11, v29);
      v11 += *i;
    }

    if (v24 == v26)
    {
      break;
    }

    sub_10001911C(v13, a6);
  }

  return sub_100015150(v13, v19, v15);
}

void *sub_100015AC4(char *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(void))
{
  v10 = (a4 >> 32) - (a2 - a1);
  if (a4 >> 32 <= a2 - a1)
  {
    sub_100016320(a3, a1, a2, a6);
    return a3;
  }

  v11 = HIDWORD(a5);
  if ((a4 & 7u) > 1)
  {
    if ((a4 & 7) != 3)
    {
      v12 = v10 >> 1;
      v10 -= v10 >> 1;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if ((a4 & 7) == 0)
  {
LABEL_7:
    v12 = (a4 >> 32) - (a2 - a1);
    v10 = 0;
    goto LABEL_9;
  }

  v12 = 0;
LABEL_9:
  v14 = sub_100015150(a3, v12, SHIDWORD(a5));
  sub_100016320(v14, a1, a2, a6);

  return sub_100015150(v14, v10, v11);
}

uint64_t sub_100015BB0(int a1)
{
  if ((a1 - 97) >= 6)
  {
    return a1;
  }

  else
  {
    return (a1 - 32);
  }
}

char *sub_100015BC8(_WORD *a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v4 = a2;
  HIDWORD(v6) = a4 - 2;
  LODWORD(v6) = a4 - 2;
  v5 = v6 >> 1;
  if (v5 != 4)
  {
    if (!v5)
    {
      return sub_10001613C(a1, a2, a3);
    }

    if (v5 == 3)
    {
      return sub_1000161D8(a1, a2, a3);
    }

    if (v5 != 7)
    {
      v10 = a2 - a1;
      v11 = sub_100015D28(a3, a4);
      if (v10 < v11)
      {
        return a2;
      }

      v4 = a1 + v11;
      v12 = v4 - 1;
      v13 = a3;
      do
      {
        *v12-- = a0123456789abcd[v13 % a4];
        v14 = v13 >= a4;
        v13 /= a4;
      }

      while (v14);
      return v4;
    }

    return sub_100016280(a1, a2, a3);
  }

  if (a2 - a1 > 9)
  {
    return sub_100015D8C(a1, a3);
  }

  v7 = (1233 * (32 - __clz(a3 | 1))) >> 12;
  if (a2 - a1 >= (((__PAIR64__(v7, a3) - dword_10012F0F8[v7]) >> 32) + 1))
  {
    return sub_100015D8C(a1, a3);
  }

  return v4;
}

uint64_t sub_100015D28(unsigned int a1, unsigned int a2)
{
  if (a1 < a2)
  {
    return 1;
  }

  v3 = a1;
  v4 = a2 * a2;
  v5 = v4 * v4;
  result = 4;
  while (1)
  {
    if (v3 < v4)
    {
      return (result - 2);
    }

    if (v3 < a2 * a2 * a2)
    {
      break;
    }

    if (v3 < v5)
    {
      return result;
    }

    v3 /= v5;
    result = (result + 4);
    if (v3 < a2)
    {
      return (result - 3);
    }
  }

  return (result - 1);
}

char *sub_100015D8C(_WORD *a1, unsigned int a2)
{
  if (a2 >= 0xF4240)
  {
    if (a2 >= 0x5F5E100)
    {
      v7 = a2 / 0x5F5E100;
      if (a2 > 0x3B9AC9FF)
      {
        *a1 = *&a00010203040506[2 * v7];
        a1[1] = *&a00010203040506[2 * (a2 % 0x5F5E100 / 0xF4240uLL)];
        a1[2] = *&a00010203040506[2 * (a2 % 0x5F5E100 % 0xF4240 / 0x2710uLL)];
        v13 = a2 % 0x5F5E100 % 0xF4240 % 0x2710;
        a1[3] = *&a00010203040506[2 * (v13 / 0x64u)];
        a1[4] = *&a00010203040506[2 * (v13 % 0x64u)];
        v2 = 10;
      }

      else
      {
        *a1 = v7 | 0x30;
        v8 = (140737489 * (a2 % 0x5F5E100)) >> 47;
        *(a1 + 1) = *&a00010203040506[2 * v8];
        v9 = a2 % 0x5F5E100 - 1000000 * v8;
        *(a1 + 3) = *&a00010203040506[2 * (v9 / 0x2710uLL)];
        v9 %= 0x2710u;
        *(a1 + 5) = *&a00010203040506[2 * (v9 / 0x64u)];
        *(a1 + 7) = *&a00010203040506[2 * (v9 % 0x64u)];
        v2 = 9;
      }
    }

    else
    {
      v3 = a2 / 0xF4240;
      if (a2 > 0x98967F)
      {
        *a1 = *&a00010203040506[2 * v3];
        a1[1] = *&a00010203040506[2 * (a2 % 0xF4240 / 0x2710uLL)];
        v11 = a2 % 0xF4240 % 0x2710;
        a1[2] = *&a00010203040506[2 * (v11 / 0x64u)];
        a1[3] = *&a00010203040506[2 * (v11 % 0x64u)];
        v2 = 8;
      }

      else
      {
        *a1 = v3 + 48;
        v4 = (429497 * (a2 % 0xF4240)) >> 32;
        *(a1 + 1) = *&a00010203040506[2 * v4];
        v5 = a2 % 0xF4240 - 10000 * v4;
        *(a1 + 3) = *&a00010203040506[2 * (v5 / 0x64u)];
        *(a1 + 5) = *&a00010203040506[2 * (v5 % 0x64u)];
        v2 = 7;
      }
    }
  }

  else if (a2 >> 4 > 0x270)
  {
    v6 = a2 / 0x2710;
    if (a2 >> 5 > 0xC34)
    {
      *a1 = *&a00010203040506[2 * v6];
      v12 = a2 % 0x2710;
      a1[1] = *&a00010203040506[2 * (v12 / 0x64u)];
      a1[2] = *&a00010203040506[2 * (v12 % 0x64u)];
      v2 = 6;
    }

    else
    {
      *a1 = v6 | 0x30;
      *(a1 + 1) = *&a00010203040506[2 * ((5243 * (a2 % 0x2710)) >> 19)];
      *(a1 + 3) = *&a00010203040506[2 * (a2 % 0x2710 - 100 * (((5243 * (a2 % 0x2710)) >> 16) >> 3))];
      v2 = 5;
    }
  }

  else if (a2 > 0x63)
  {
    v10 = a2 / 0x64u;
    if (a2 > 0x3E7)
    {
      *a1 = *&a00010203040506[2 * v10];
      a1[1] = *&a00010203040506[2 * (a2 % 0x64u)];
      v2 = 4;
    }

    else
    {
      *a1 = v10 | 0x30;
      *(a1 + 1) = *&a00010203040506[2 * (a2 % 0x64u)];
      v2 = 3;
    }
  }

  else if (a2 > 9)
  {
    *a1 = *&a00010203040506[2 * a2];
    v2 = 2;
  }

  else
  {
    *a1 = a2 | 0x30;
    v2 = 1;
  }

  return a1 + v2;
}

uint64_t sub_10001613C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = 32 - __clz(a3 | 1);
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x11)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 4;
      *(v5 - 4) = *&a00010203040506[4 * (a3 & 0xF) + 200];
      v5 -= 4;
      v7 = a3 > 0x10F;
      a3 >>= 4;
    }

    while (v7);
  }

  v8 = (v5 - 1);
  do
  {
    *v8-- = a01[v6 & 1];
    v7 = v6 > 1;
    v6 >>= 1;
  }

  while (v7);
  return v4;
}

uint64_t sub_1000161D8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = (86 * (34 - __clz(a3 | 1))) >> 8;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x41)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 6;
      *(v5 - 2) = *&a00010203040506[2 * (a3 & 0x3F) + 264];
      v5 -= 2;
      a3 = v6;
    }

    while (v6 > 0x40);
  }

  v7 = (v5 - 1);
  do
  {
    *v7-- = a01234567[v6 & 7];
    v8 = v6 > 7;
    v6 >>= 3;
  }

  while (v8);
  return v4;
}

uint64_t sub_100016280(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = (35 - __clz(a3 | 1)) >> 2;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x101)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 8;
      *(v5 - 2) = *&a00010203040506[2 * a3 + 392];
      v5 -= 2;
      a3 = v6;
    }

    while (v6 > 0x100);
  }

  v7 = (v5 - 1);
  do
  {
    *v7-- = a0123456789abcd_0[v6 & 0xF];
    v8 = v6 > 0xF;
    v6 >>= 4;
  }

  while (v8);
  return v4;
}

uint64_t sub_100016320(uint64_t result, char *a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a2;
  v6 = result;
  v7 = a3 - a2;
  v8 = *(result + 32);
  if (v8)
  {
    v10 = *v8;
    v9 = v8[1];
    if (*v8 - v9 >= v7)
    {
      v11 = a3 - a2;
    }

    else
    {
      v11 = *v8 - v9;
    }

    v8[1] = v9 + v7;
    if (v10 <= v9 || v11 == 0)
    {
      return result;
    }
  }

  else
  {
    v11 = a3 - a2;
  }

  v13 = *(result + 16);
  do
  {
    v14 = *(v6 + 8) - v13;
    if (v14 < v11 + 1)
    {
      result = (*(v6 + 24))(v6, v11 + 2);
      v13 = *(v6 + 16);
      v14 = *(v6 + 8) - v13;
    }

    if (v14 >= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v14;
    }

    if (v15)
    {
      v16 = (*v6 + v13);
      v17 = v15;
      v18 = v5;
      do
      {
        v19 = *v18++;
        result = a4(v19);
        *v16++ = result;
        --v17;
      }

      while (v17);
      v13 = *(v6 + 16);
    }

    v5 += v15;
    v13 += v15;
    *(v6 + 16) = v13;
    v20 = v11 > v14;
    v11 -= v15;
  }

  while (v20);
  return result;
}

void *sub_100016420(uint64_t a1, unsigned __int8 a2, void *a3)
{
  v5 = *(a1 + 1);
  if (v5 == 10 || v5 == 0)
  {
    v7 = *a3;
    v8 = sub_1000146D8(a1, a3);
    __src = a2;
    return sub_100014ABC(&__src, 1uLL, v7, v8, v9, 1);
  }

  else
  {
    v11 = sub_1000146D8(a1, a3);

    return sub_100014744(a2, a3, v11, v12, 0);
  }
}

uint64_t sub_1000164D0(uint64_t result, const char *a2)
{
  v2 = *(result + 1);
  if (v2 - 2 >= 6)
  {
    v3 = v2 > 0x13;
    v4 = (1 << v2) & 0x80401;
    if (v3 || v4 == 0)
    {
      sub_1000141F8(a2);
    }

    v6 = result;
    result = sub_1000142E4(result, 48, a2, -1);
    if ((*v6 & 7) == 0)
    {
      *v6 |= 1u;
    }
  }

  return result;
}

void *sub_10001654C(uint64_t a1, int a2, void *a3)
{
  v6 = sub_1000146D8(a1, a3);
  v7 = v5;
  if ((v6 & 0xFF00) == 0xA00)
  {
    v8 = *a3;

    return sub_10001663C(a2, v8, v6, v7);
  }

  else
  {
    if (a2 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = -a2;
    }

    return sub_100014744(v10, a3, v6, v5, a2 < 0);
  }
}

uint64_t sub_1000165D0(uint64_t result, const char *a2)
{
  v2 = *(result + 1);
  if ((v2 - 2) >= 6 && v2 != 0)
  {
    if (v2 != 10)
    {
      sub_1000141F8(a2);
    }

    v4 = result;
    result = sub_1000142E4(result, 48, a2, -1);
    if ((*v4 & 7) == 0)
    {
      *v4 |= 1u;
    }
  }

  return result;
}

void *sub_10001663C(int a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (a1 != a1)
  {
    sub_100012E2C("Integral value outside the range of the char type");
  }

  __src = a1;
  return sub_100014ABC(&__src, 1uLL, a2, a3, a4, 1);
}

void *sub_10001668C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1000146D8(a1, a3);
  v7 = v5;
  if ((v6 & 0xFF00) == 0xA00)
  {
    v8 = *a3;

    return sub_100016710(a2, v8, v6, v7);
  }

  else
  {
    if (a2 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = -a2;
    }

    return sub_100016760(v10, a3, v6, v5, a2 < 0);
  }
}

void *sub_100016710(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (a1 != a1)
  {
    sub_100012E2C("Integral value outside the range of the char type");
  }

  __src = a1;
  return sub_100014ABC(&__src, 1uLL, a2, a3, a4, 1);
}

void *sub_100016760(unint64_t a1, void **a2, unint64_t a3, unint64_t a4, char a5)
{
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      return sub_1000168B4(a1, a2, a3, a4, a5, v11, &v12 + 2, 0, 10);
    }

    v10 = 2;
    if (BYTE1(a3) == 2)
    {
      v7 = "0b";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v7 = "0B";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = &v13;
    return sub_1000168B4(a1, a2, v8, a4, a5, v11, v9, v7, v10);
  }

  if (BYTE1(a3) > 5u)
  {
    v10 = 16;
    if (BYTE1(a3) == 6)
    {
      v7 = "0x";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v7 = "0X";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = &v12;
    return sub_1000168B4(a1, a2, v8, a4, a5, v11, v9, v7, v10);
  }

  if (BYTE1(a3) != 4)
  {
    return sub_1000168B4(a1, a2, a3, a4, a5, v11, &v12 + 2, 0, 10);
  }

  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  return sub_1000168B4(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, v11, &v12 + 5, v5, 8);
}

void *sub_1000168B4(unint64_t a1, void **a2, unint64_t a3, unint64_t a4, char a5, char *a6, uint64_t a7, _BYTE *a8, signed int a9)
{
  v9 = a6;
  v13 = a3;
  if (a5)
  {
    v14 = 45;
LABEL_7:
    *a6 = v14;
    v16 = a6 + 1;
    goto LABEL_8;
  }

  v15 = (a3 >> 3) & 3;
  if (v15 == 2)
  {
    v14 = 43;
    goto LABEL_7;
  }

  v16 = a6;
  if (v15 == 3)
  {
    v14 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v17 = *a8;
      if (*a8)
      {
        v18 = a8 + 1;
        do
        {
          *v16++ = v17;
          v19 = *v18++;
          v17 = v19;
        }

        while (v19);
      }
    }
  }

  v20 = sub_100016C2C(v16, a7, a1, a9);
  if ((v13 & 0x40) == 0)
  {
    goto LABEL_41;
  }

  sub_100014898(a2, &v43);
  v21 = std::locale::use_facet(&v43, &std::numpunct<char>::id);
  std::locale::~locale(&v43);
  (v21->__vftable[1].__on_zero_shared)(&v43, v21);
  if ((v45 & 0x8000000000000000) != 0)
  {
    locale = v43.__locale_;
    if (!v44)
    {
LABEL_40:
      operator delete(locale);
      goto LABEL_41;
    }
  }

  else
  {
    if (!v45)
    {
      goto LABEL_41;
    }

    locale = &v43;
  }

  if (v20 - v16 <= *locale)
  {
    if (v45 < 0)
    {
      locale = v43.__locale_;
      goto LABEL_40;
    }

LABEL_41:
    v35 = HIDWORD(a3);
    if ((v13 & 7) == 4)
    {
      sub_100014B98(*a2, v9, v16 - v9);
      v36 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v16 - v9)
      {
        LODWORD(v37) = v16 - v9;
      }

      else
      {
        LODWORD(v37) = HIDWORD(a3);
      }

      v35 = (HIDWORD(a3) - v37);
      LOBYTE(v37) = 48;
      v9 = v16;
    }

    else
    {
      v37 = HIDWORD(a4);
      v36 = a3;
    }

    v38 = *a2;
    v39 = v35 << 32;
    if ((a3 & 0xFF00) == 0x700)
    {
      return sub_100015AC4(v9, v20, v38, v39 | a3 & 0xFFFF0000 | v36 | 0x700, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), sub_100015BB0);
    }

    else
    {
      return sub_100014ABC(v9, v20 - v9, v38, v39 | a3 & 0xFFFFFF00 | v36, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), v20 - v9);
    }
  }

  v23 = *a2;
  memset(&__p, 0, sizeof(__p));
  v24 = v43.__locale_ + v44;
  if (v45 < 0)
  {
    v25 = v43.__locale_;
  }

  else
  {
    v24 = &v43 + v45;
    v25 = &v43;
  }

  v26 = *v25;
  v27 = v20 - v16 - *v25;
  if (v27 >= 1)
  {
    v28 = v24 - 1;
    do
    {
      std::string::push_back(&__p, v26);
      if (v25 == v28)
      {
        v26 = *v25;
      }

      else
      {
        v29 = v25 + 1;
        v30 = v25 + 1;
        do
        {
          v31 = *v30++;
          v26 = v31;
          if (v31)
          {
            v32 = 1;
          }

          else
          {
            v32 = v29 == v28;
          }

          v29 = v30;
        }

        while (!v32);
        v25 = v30 - 1;
      }

      v27 -= v26;
    }

    while (v27 > 0);
  }

  std::string::push_back(&__p, v26 + v27);
  v33 = (v21->__vftable[1].~facet_0)(v21);
  v34 = sub_1000158E8(v23, v9, v16, v20, &__p, v33, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v45 < 0)
  {
    operator delete(v43.__locale_);
  }

  return v34;
}

void sub_100016BE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15.__locale_);
  }

  _Unwind_Resume(exception_object);
}

char *sub_100016C2C(char *a1, uint64_t a2, unint64_t a3, signed int a4)
{
  v4 = a3;
  v5 = a2;
  HIDWORD(v7) = a4 - 2;
  LODWORD(v7) = a4 - 2;
  v6 = v7 >> 1;
  if (v6 != 4)
  {
    if (!v6)
    {
      return sub_100016F0C(a1, a2, a3);
    }

    if (v6 == 3)
    {
      return sub_100016FA8(a1, a2, a3);
    }

    if (v6 != 7)
    {
      v12 = a1;
      v13 = a2 - a1;
      v15 = sub_100016DF0(a3, a4);
      if (v13 < v15)
      {
        return a2;
      }

      v5 = &v12[v15];
      v16 = (v5 - 1);
      do
      {
        *v16-- = a0123456789abcd[(v4 % a4)];
        v17 = v4 >= a4;
        v4 /= a4;
      }

      while (v17);
      return v5;
    }

    return sub_100017050(a1, a2, a3);
  }

  if (a2 - a1 > 19 || (v8 = (1233 * (64 - __clz(a3 | 1))) >> 12, a2 - a1 >= v8 - (*&a00010203040506[8 * v8 + 904] > a3) + 1))
  {
    if (!HIDWORD(a3))
    {
      return sub_100015D8C(a1, a3);
    }

    if (a3 > 0x2540BE3FFLL)
    {
      a1 = sub_100015D8C(a1, a3 / 0x2540BE400);
      v4 %= 0x2540BE400uLL;
    }

    return sub_100016E58(a1, v4);
  }

  return v5;
}

uint64_t sub_100016DF0(unint64_t a1, unsigned int a2)
{
  if (a2 > a1)
  {
    return 1;
  }

  v3 = a1;
  v4 = a2 * a2;
  v5 = (v4 * v4);
  result = 4;
  while (1)
  {
    if (v3 < v4)
    {
      return (result - 2);
    }

    if (v3 < v4 * a2)
    {
      break;
    }

    if (v3 < v5)
    {
      return result;
    }

    v3 /= v5;
    result = (result + 4);
    if (v3 < a2)
    {
      return (result - 3);
    }
  }

  return (result - 1);
}

_WORD *sub_100016E58(_WORD *a1, unint64_t a2)
{
  *a1 = *&a00010203040506[(a2 / 0x2FAF080) & 0xFFFFFFFE];
  v2 = a2 % 0x5F5E100;
  a1[1] = *&a00010203040506[2 * (v2 / 0xF4240uLL)];
  v2 %= 0xF4240u;
  a1[2] = *&a00010203040506[2 * (v2 / 0x2710uLL)];
  v2 %= 0x2710u;
  a1[3] = *&a00010203040506[2 * (v2 / 0x64u)];
  a1[4] = *&a00010203040506[2 * (v2 % 0x64u)];
  return a1 + 5;
}

uint64_t sub_100016F0C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 64 - __clz(a3 | 1);
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x11)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 4;
      *(v5 - 4) = *&a00010203040506[4 * (a3 & 0xF) + 200];
      v5 -= 4;
      v7 = a3 > 0x10F;
      a3 >>= 4;
    }

    while (v7);
  }

  v8 = (v5 - 1);
  do
  {
    *v8-- = a01[v6 & 1];
    v7 = v6 > 1;
    v6 >>= 1;
  }

  while (v7);
  return v4;
}

uint64_t sub_100016FA8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (86 * (66 - __clz(a3 | 1))) >> 8;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x41)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 6;
      *(v5 - 2) = *&a00010203040506[2 * (a3 & 0x3F) + 264];
      v5 -= 2;
      a3 = v6;
    }

    while (v6 > 0x40);
  }

  v7 = (v5 - 1);
  do
  {
    *v7-- = a01234567[v6 & 7];
    v8 = v6 > 7;
    v6 >>= 3;
  }

  while (v8);
  return v4;
}

uint64_t sub_100017050(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 67 - __clz(a3 | 1);
  if (a2 - a1 < (v3 >> 2))
  {
    return a2;
  }

  v4 = a1 + (v3 >> 2);
  if (a3 < 0x101)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + (v3 >> 2);
    do
    {
      v6 = a3 >> 8;
      *(v5 - 2) = *&a00010203040506[2 * a3 + 392];
      v5 -= 2;
      a3 = v6;
    }

    while (v6 > 0x100);
  }

  v7 = (v5 - 1);
  do
  {
    *v7-- = a0123456789abcd_0[v6 & 0xF];
    v8 = v6 > 0xF;
    v6 >>= 4;
  }

  while (v8);
  return v4;
}

void *sub_1000170F0(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1000146D8(a1, a4);
  if ((v8 & 0xFF00) == 0xA00)
  {
    v9 = *a4;

    return sub_100017194(a2, a3, v9, v8, v7);
  }

  else
  {

    v11 = __PAIR128__(a3 ^ (a3 >> 63), a2 ^ (a3 >> 63)) - __PAIR128__(a3 >> 63, a3 >> 63);
    return sub_1000171EC(v11, *(&v11 + 1), a4, v8, v7, a3 < 0);
  }
}

void *sub_100017194(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if (__PAIR128__(-1, -257) >= __PAIR128__((a1 >= 0x80) + a2 - 1, a1 - 128))
  {
    sub_100012E2C("Integral value outside the range of the char type");
  }

  __src = a1;
  return sub_100014ABC(&__src, 1uLL, a3, a4, a5, 1);
}

void *sub_1000171EC(unint64_t a1, unint64_t a2, void **a3, unint64_t a4, unint64_t a5, char a6)
{
  if (BYTE1(a4) <= 3u)
  {
    if (!BYTE1(a4))
    {
      return sub_100017358(a1, a2, a3, a4, a5, a6, v12, &v13 + 5, 0, 10);
    }

    v11 = 2;
    if (BYTE1(a4) == 2)
    {
      v10 = "0b";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v10 = "0B";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = &v15;
    return sub_100017358(a1, a2, a3, v8, a5, a6, v12, v9, v10, v11);
  }

  if (BYTE1(a4) > 5u)
  {
    v11 = 16;
    if (BYTE1(a4) == 6)
    {
      v10 = "0x";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v10 = "0X";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = &v13;
    return sub_100017358(a1, a2, a3, v8, a5, a6, v12, v9, v10, v11);
  }

  if (BYTE1(a4) != 4)
  {
    return sub_100017358(a1, a2, a3, a4, a5, a6, v12, &v13 + 5, 0, 10);
  }

  if (a1 | a2)
  {
    v6 = "0";
  }

  else
  {
    v6 = 0;
  }

  return sub_100017358(a1, a2, a3, a4 & 0xFFFFFFFFFFFF00FFLL | 0x400, a5, a6, v12, v14, v6, 8);
}

void *sub_100017358(unint64_t a1, unint64_t a2, void **a3, unint64_t a4, unint64_t a5, char a6, char *a7, uint64_t a8, _BYTE *a9, signed int a10)
{
  v10 = a7;
  v14 = a4;
  if (a6)
  {
    v15 = 45;
LABEL_7:
    *a7 = v15;
    v17 = a7 + 1;
    goto LABEL_8;
  }

  v16 = (a4 >> 3) & 3;
  if (v16 == 2)
  {
    v15 = 43;
    goto LABEL_7;
  }

  v17 = a7;
  if (v16 == 3)
  {
    v15 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a4 & 0x20) != 0)
  {
    if (a9)
    {
      v18 = *a9;
      if (*a9)
      {
        v19 = a9 + 1;
        do
        {
          *v17++ = v18;
          v20 = *v19++;
          v18 = v20;
        }

        while (v20);
      }
    }
  }

  v21 = sub_1000176D8(v17, a8, a1, a2, a10);
  if ((v14 & 0x40) == 0)
  {
    goto LABEL_41;
  }

  sub_100014898(a3, &v44);
  v22 = std::locale::use_facet(&v44, &std::numpunct<char>::id);
  std::locale::~locale(&v44);
  (v22->__vftable[1].__on_zero_shared)(&v44, v22);
  if ((v46 & 0x8000000000000000) != 0)
  {
    locale = v44.__locale_;
    if (!v45)
    {
LABEL_40:
      operator delete(locale);
      goto LABEL_41;
    }
  }

  else
  {
    if (!v46)
    {
      goto LABEL_41;
    }

    locale = &v44;
  }

  if (v21 - v17 <= *locale)
  {
    if (v46 < 0)
    {
      locale = v44.__locale_;
      goto LABEL_40;
    }

LABEL_41:
    v36 = HIDWORD(a4);
    if ((v14 & 7) == 4)
    {
      sub_100014B98(*a3, v10, v17 - v10);
      v37 = a4 & 0xF8 | 3;
      if (SHIDWORD(a4) >= v17 - v10)
      {
        LODWORD(v38) = v17 - v10;
      }

      else
      {
        LODWORD(v38) = HIDWORD(a4);
      }

      v36 = (HIDWORD(a4) - v38);
      LOBYTE(v38) = 48;
      v10 = v17;
    }

    else
    {
      v38 = HIDWORD(a5);
      v37 = a4;
    }

    v39 = *a3;
    v40 = v36 << 32;
    if ((a4 & 0xFF00) == 0x700)
    {
      return sub_100015AC4(v10, v21, v39, v40 | a4 & 0xFFFF0000 | v37 | 0x700, a5 & 0xFFFFFF00FFFFFFFFLL | (v38 << 32), sub_100015BB0);
    }

    else
    {
      return sub_100014ABC(v10, v21 - v10, v39, v40 | a4 & 0xFFFFFF00 | v37, a5 & 0xFFFFFF00FFFFFFFFLL | (v38 << 32), v21 - v10);
    }
  }

  v24 = *a3;
  memset(&__p, 0, sizeof(__p));
  v25 = v44.__locale_ + v45;
  if (v46 < 0)
  {
    v26 = v44.__locale_;
  }

  else
  {
    v25 = &v44 + v46;
    v26 = &v44;
  }

  v27 = *v26;
  v28 = v21 - v17 - *v26;
  if (v28 >= 1)
  {
    v29 = v25 - 1;
    do
    {
      std::string::push_back(&__p, v27);
      if (v26 == v29)
      {
        v27 = *v26;
      }

      else
      {
        v30 = v26 + 1;
        v31 = v26 + 1;
        do
        {
          v32 = *v31++;
          v27 = v32;
          if (v32)
          {
            v33 = 1;
          }

          else
          {
            v33 = v30 == v29;
          }

          v30 = v31;
        }

        while (!v33);
        v26 = v31 - 1;
      }

      v28 -= v27;
    }

    while (v28 > 0);
  }

  std::string::push_back(&__p, v27 + v28);
  v34 = (v22->__vftable[1].~facet_0)(v22);
  v35 = sub_1000158E8(v24, v10, v17, v21, &__p, v34, a4, a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v46 < 0)
  {
    operator delete(v44.__locale_);
  }

  return v35;
}

void sub_100017694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15.__locale_);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1000176D8(char *a1, uint64_t a2, unint64_t a3, unint64_t a4, signed int a5)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  HIDWORD(v9) = a5 - 2;
  LODWORD(v9) = a5 - 2;
  v8 = v9 >> 1;
  if (v8 != 4)
  {
    if (!v8)
    {
      return sub_100017CDC(a1, a2, a3, a4);
    }

    if (v8 == 3)
    {
      return sub_100017DA8(a1, a2, a3, a4);
    }

    if (v8 != 7)
    {
      v17 = a1;
      v18 = a2 - a1;
      v19 = sub_10001792C(a3, a4, a5);
      if (v18 >= v19)
      {
        v7 = &v17[v19];
        v20 = (v7 - 1);
        do
        {
          v21 = __udivti3();
          v22 = __PAIR128__(v5, v6) >= a5;
          *v20-- = a0123456789abcd[(v6 - v21 * a5)];
          v6 = v21;
          v5 = v23;
        }

        while (v22);
      }

      return v7;
    }

    return sub_100017E7C(a1, a2, a3, a4);
  }

  v10 = a2 - a1;
  if (a4)
  {
    if (v10 <= 38)
    {
      v11 = (1233 * (128 - __clz(a4))) >> 12;
      if (v10 < v11 - (__PAIR128__(a4, a3) < xmmword_10012F550[v11]) + 1)
      {
        return v7;
      }
    }

    return sub_1000179D8(a1, a3, a4);
  }

  if (v10 > 19 || (v12 = (1233 * (64 - __clz(a3 | 1))) >> 12, v10 >= v12 - (*&a00010203040506[8 * v12 + 904] > a3) + 1))
  {
    if (!HIDWORD(a3))
    {
      return sub_100015D8C(a1, a3);
    }

    if (a3 > 0x2540BE3FFLL)
    {
      a1 = sub_100015D8C(a1, a3 / 0x2540BE400);
      v6 %= 0x2540BE400uLL;
    }

    return sub_100016E58(a1, v6);
  }

  return v7;
}

uint64_t sub_10001792C(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (__PAIR128__(a2, a1) < a3)
  {
    return 1;
  }

  v5 = a3 * a3;
  v6 = a3 * a3 * a3;
  v3 = 4;
  while (1)
  {
    if (__PAIR128__(a2, a1) < v5)
    {
      return (v3 - 2);
    }

    if (__PAIR128__(a2, a1) < v6)
    {
      break;
    }

    if (__PAIR128__(a2, a1) < v5 * v5)
    {
      return v3;
    }

    a1 = __udivti3();
    v3 = (v3 + 4);
    if (__PAIR128__(a2, a1) < a3)
    {
      return (v3 - 3);
    }
  }

  return (v3 - 1);
}

_WORD *sub_1000179D8(char *a1, unint64_t a2, unint64_t a3)
{
  v3 = a1;
  if (__PAIR128__(a3, a2) >= __PAIR128__(0x4B3B4CA85A86C47ALL, 0x98A224000000000))
  {
    *a1 = __udivti3() | 0x30;
    v7 = __udivti3();
    v3[1] = ((1441151881 * v7) >> 57) + 48;
    *(v3 + 1) = *&a00010203040506[2 * (v7 % 0x5F5E100 / 0xF4240uLL)];
    v8 = v7 % 0x5F5E100 % 0xF4240;
    *(v3 + 2) = *&a00010203040506[2 * (v8 / 0x2710uLL)];
    v8 %= 0x2710u;
    *(v3 + 3) = *&a00010203040506[2 * (v8 / 0x64u)];
    *(v3 + 4) = *&a00010203040506[2 * (v8 % 0x64u)];
    v9 = __udivti3();
    v10 = v3 + 10;
  }

  else
  {
    v4 = __udivti3();
    v5 = v4;
    if (!HIDWORD(v4))
    {
      v6 = sub_100015D8C(v3, v4);
      goto LABEL_9;
    }

    if (v4 > 0x2540BE3FFLL)
    {
      v11 = v4 / 0x2540BE400;
      v3 = sub_100015D8C(v3, v4 / 0x2540BE400);
      v5 -= 10000000000 * v11;
    }

    v10 = v3;
    v9 = v5;
  }

  v6 = sub_100016E58(v10, v9);
LABEL_9:
  v12 = v6;
  v13 = __umodti3();
  *v12 = v13 / 0x2540BE400 / 0x5F5E100 + 48;
  v14 = v13 / 0x2540BE400 % 0x5F5E100;
  *(v12 + 1) = *&a00010203040506[2 * (v14 / 0xF4240uLL)];
  v14 %= 0xF4240u;
  *(v12 + 3) = *&a00010203040506[2 * (v14 / 0x2710uLL)];
  v14 %= 0x2710u;
  *(v12 + 5) = *&a00010203040506[2 * (v14 / 0x64u)];
  *(v12 + 7) = *&a00010203040506[2 * (v14 % 0x64u)];

  return sub_100016E58(v12 + 9, v13 % 0x2540BE400);
}

uint64_t sub_100017CDC(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = 128 - v5;
  if (a2 - a1 < v6)
  {
    return a2;
  }

  v7 = a1 + v6;
  if (__PAIR128__(a4, a3) < 0x11)
  {
    v9 = a3;
    v11 = a4;
    v8 = v7;
  }

  else
  {
    v8 = a1 + v6;
    do
    {
      *(&v10 + 1) = a4;
      *&v10 = a3;
      v9 = v10 >> 4;
      v11 = a4 >> 4;
      *(v8 - 4) = *&a00010203040506[4 * (a3 & 0xF) + 200];
      v8 -= 4;
      v12 = a3 <= 0x10F;
      a3 = v9;
      a4 >>= 4;
    }

    while (!v12);
  }

  v13 = (v8 - 1);
  do
  {
    v14 = v9 & 1;
    v12 = v9 <= 1;
    *(&v15 + 1) = v11;
    *&v15 = v9;
    v9 = v15 >> 1;
    v11 >>= 1;
    *v13-- = a01[v14];
  }

  while (!v12);
  return v7;
}

uint64_t sub_100017DA8(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = (-126 - v5) / 3u;
  if (a2 - a1 < v6)
  {
    return a2;
  }

  v7 = a1 + v6;
  if (__PAIR128__(a4, a3) < 0x41)
  {
    v9 = a3;
    v8 = v7;
  }

  else
  {
    v8 = a1 + v6;
    do
    {
      *(&v10 + 1) = a4;
      *&v10 = a3;
      v9 = v10 >> 6;
      a4 >>= 6;
      *(v8 - 2) = *&a00010203040506[2 * (a3 & 0x3F) + 264];
      v8 -= 2;
      a3 = v9;
    }

    while (v9 > 0x40);
  }

  v11 = (v8 - 1);
  do
  {
    v12 = v9 & 7;
    v13 = v9 <= 7;
    *(&v14 + 1) = a4;
    *&v14 = v9;
    v9 = v14 >> 3;
    a4 >>= 3;
    *v11-- = a01234567[v12];
  }

  while (!v13);
  return v7;
}

uint64_t sub_100017E7C(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = 131 - v5;
  if (a2 - a1 < (v6 >> 2))
  {
    return a2;
  }

  v7 = a1 + (v6 >> 2);
  if (__PAIR128__(a4, a3) < 0x101)
  {
    v9 = a3;
    v8 = v7;
  }

  else
  {
    v8 = a1 + (v6 >> 2);
    do
    {
      *(&v10 + 1) = a4;
      *&v10 = a3;
      v9 = v10 >> 8;
      a4 >>= 8;
      *(v8 - 2) = *&a00010203040506[2 * a3 + 392];
      v8 -= 2;
      a3 = v9;
    }

    while (v9 > 0x100);
  }

  v11 = (v8 - 1);
  do
  {
    v12 = v9 & 0xF;
    v13 = v9 <= 0xF;
    *(&v14 + 1) = a4;
    *&v14 = v9;
    v9 = v14 >> 4;
    a4 >>= 4;
    *v11-- = a0123456789abcd_0[v12];
  }

  while (!v13);
  return v7;
}

void *sub_100017F44(uint64_t a1, unsigned int a2, void *a3)
{
  v6 = sub_1000146D8(a1, a3);
  v7 = v5;
  if ((v6 & 0xFF00) == 0xA00)
  {
    v8 = *a3;

    return sub_100017FC4(a2, v8, v6, v7);
  }

  else
  {

    return sub_100014744(a2, a3, v6, v5, 0);
  }
}

void *sub_100017FC4(unsigned int a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (a1 >= 0x80)
  {
    sub_100012E2C("Integral value outside the range of the char type");
  }

  __src = a1;
  return sub_100014ABC(&__src, 1uLL, a2, a3, a4, 1);
}

void *sub_100018014(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_1000146D8(a1, a3);
  v7 = v5;
  if ((v6 & 0xFF00) == 0xA00)
  {
    v8 = *a3;

    return sub_100018094(a2, v8, v6, v7);
  }

  else
  {

    return sub_100016760(a2, a3, v6, v5, 0);
  }
}

void *sub_100018094(unint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (a1 >= 0x80)
  {
    sub_100012E2C("Integral value outside the range of the char type");
  }

  __src = a1;
  return sub_100014ABC(&__src, 1uLL, a2, a3, a4, 1);
}

void *sub_1000180E4(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v8 = sub_1000146D8(a1, a4);
  if ((v8 & 0xFF00) == 0xA00)
  {
    v9 = *a4;

    return sub_10001817C(a2, a3, v9, v8, v7);
  }

  else
  {

    return sub_1000171EC(a2, a3, a4, v8, v7, 0);
  }
}

void *sub_10001817C(unint64_t a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if (__PAIR128__(a2, a1) >= 0x80)
  {
    sub_100012E2C("Integral value outside the range of the char type");
  }

  __src = a1;
  return sub_100014ABC(&__src, 1uLL, a3, a4, a5, 1);
}

void *sub_1000181C4(void **a1, uint64_t a2, unint64_t a3, float a4)
{
  if ((LODWORD(a4) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    v33 = *a1;

    return sub_1000185E0(v33, a2, a3, a4 < 0.0, 0);
  }

  else
  {
    v7 = fabsf(a4);
    if (a3 == -1)
    {
      v8 = 149;
    }

    else
    {
      v8 = a3;
    }

    v39 = v8;
    v40 = 0;
    if (v8 < 150)
    {
      v41 = v8 + 45;
      if ((v8 + 45) >= 0x101)
      {
        operator new();
      }
    }

    else
    {
      v39 = 149;
      v40 = v8 - 149;
      v41 = 194;
    }

    __p = &v43;
    sub_1000186E8(&v39, a4 < 0.0, (a3 & 0x80000000) == 0, (a2 >> 3) & 3, BYTE1(a2), &v35, v7);
    if ((a2 & 0x20) != 0)
    {
      v9 = v36;
      v10 = *v38;
      if (v36 == *v38)
      {
        ++*v38;
        *v10 = 46;
        v11 = v37;
        v12 = (*v38 - 1);
        if (v37 != (*v38 - 1))
        {
          if (v37 + 1 == v12)
          {
            v14 = *v37;
            *v37 = v37[1];
            v11[1] = v14;
          }

          else
          {
            v13 = *(*v38 - 1);
            memmove(v37 + 1, v37, v12 - v37);
            *v11 = v13;
          }
        }

        v9 = v37;
        v36 = v37++;
      }

      if ((BYTE1(a2) - 17) <= 1u)
      {
        if (a3 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = a3;
        }

        if ((a3 & 0x80000000) != 0)
        {
          v15 = 6;
        }

        if (v37 == *v38)
        {
          v16 = v35 - v9;
        }

        else
        {
          v16 = -1;
        }

        v17 = v16 + v15;
        v18 = &v37[~v9];
        if (v18 < v17)
        {
          v40 += v17 - v18;
        }
      }
    }

    if ((a2 & 0x40) != 0)
    {
      v26 = *a1;
      sub_100014898(a1, &v34);
      v27 = sub_1000188A8(v26, &v39, &v35, &v34, a2, a3);
      std::locale::~locale(&v34);
    }

    else
    {
      v19 = *v38;
      v20 = __p;
      v21 = *v38 - __p;
      v22 = v40;
      if (*v38 - __p + v40 >= a2 >> 32)
      {
        if (!v40 || (v28 = v37, v37 == *v38))
        {
          v27 = *a1;
          sub_100014B98(*a1, __p, *v38 - __p);
          sub_1000151D0(v27, v22, 48);
        }

        else
        {
          v27 = *a1;
          sub_100014B98(*a1, __p, v37 - __p);
          sub_1000151D0(v27, v22, 48);
          sub_100014B98(v27, v28, v19 - v28);
        }
      }

      else
      {
        v23 = *a1;
        if ((a2 & 7) == 4)
        {
          if (__p != v35)
          {
            sub_10001911C(v23, *__p);
            ++v20;
          }

          v24 = a2 & 0xB8 | 3;
          v25 = 48;
        }

        else
        {
          v25 = BYTE4(a3);
          v24 = a2;
        }

        v29 = a2 & 0xFFFFFFFFFFFFFF00 | v24;
        v30 = a3 & 0xFFFFFF00FFFFFFFFLL | (v25 << 32);
        if (v22)
        {
          v31 = sub_100018D14(v20, *v38, v23, v29, v30, v21, v37, v22);
        }

        else
        {
          v31 = sub_100014ABC(v20, *v38 - v20, v23, v29, v30, v21);
        }

        v27 = v31;
      }
    }

    if (v41 >= 0x101)
    {
      operator delete(__p);
    }

    return v27;
  }
}

void sub_1000185A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, void *__p)
{
  if (a16 >= 0x101)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000185E0(void *a1, uint64_t a2, unint64_t a3, char a4, int a5)
{
  if (a4)
  {
    v5 = 45;
  }

  else
  {
    v6 = (a2 >> 3) & 3;
    if (v6 == 2)
    {
      v5 = 43;
    }

    else
    {
      if (v6 != 3)
      {
        p_src = &__src;
        goto LABEL_8;
      }

      v5 = 32;
    }
  }

  p_src = v14;
  __src = v5;
LABEL_8:
  if (BYTE1(a2) <= 0x10u && ((1 << SBYTE1(a2)) & 0x15000) != 0)
  {
    v8 = 6;
  }

  else
  {
    v8 = 6;
    if (BYTE1(a2) != 18)
    {
      v8 = 0;
    }
  }

  v9 = 3;
  if (!a5)
  {
    v9 = 0;
  }

  v10 = &aInfnaninfnan[v8 + v9];
  *p_src = *v10;
  p_src[2] = v10[2];
  if ((a2 & 7) == 4)
  {
    v11 = a2 & 0xF8 | 3;
  }

  else
  {
    v11 = a2;
  }

  return sub_100014ABC(&__src, p_src - &__src + 3, a1, a2 & 0xFFFFFFFFFFFFFF00 | v11, a3, p_src - &__src + 3);
}

char *sub_1000186E8@<X0>(unsigned int *a1@<X0>, char a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, char **a6@<X8>, float a7@<S0>)
{
  v9 = *(a1 + 2);
  if (a2)
  {
    v10 = 45;
  }

  else if (a4 == 2)
  {
    v10 = 43;
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_8;
    }

    v10 = 32;
  }

  *v9 = v10;
  v9 = (v9 + 1);
LABEL_8:
  if (a5 > 14)
  {
    if ((a5 - 15) < 2)
    {
      v13 = *a1;
      *a6 = v9;
      v15 = *(a1 + 1);
      v14 = *(a1 + 2);
      result = std::to_chars();
      a6[2] = result;
      a6[3] = result;
      if (v13)
      {
        v16 = v13 + 1;
      }

      else
      {
        v16 = 0;
      }

      a6[1] = &result[-v16];
      return result;
    }

    if (a5 != 17)
    {
      v17 = *a1;
      result = sub_100018DF4(a1, v9, a6);
      v18 = a6[2];
      if (v18 == a6[3])
      {
        return result;
      }

      goto LABEL_35;
    }

    goto LABEL_25;
  }

  if (a5 <= 11)
  {
    if (a5)
    {
      if (a3)
      {
        v22 = *a1;
      }

      else
      {
        v22 = -1;
      }

      return sub_100018F7C(a1, v22, v9, a6);
    }

    if (!a3)
    {

      return sub_100018ECC(v9, a1, v9, a6, a7);
    }

LABEL_25:
    v19 = *a1;

    return sub_100018DF4(a1, v9, a6);
  }

  if (a5 != 12)
  {
    if (a5 == 13)
    {
      v11 = *a1;

      return sub_100019074(a1, v9, a6);
    }

    v21 = *a1;
    result = sub_100019074(a1, v9, a6);
    v18 = a6[2];
LABEL_35:
    *v18 = 69;
    return result;
  }

  if (a3)
  {
    v20 = *a1;
  }

  else
  {
    v20 = -1;
  }

  return sub_100019018(a1, v20, v9, a6);
}

void *sub_1000188A8(void *a1, uint64_t a2, char **a3, std::locale *this, uint64_t a5, unint64_t a6)
{
  v11 = std::locale::use_facet(this, &std::numpunct<char>::id);
  (v11->__vftable[1].__on_zero_shared)(&__p);
  v12 = a3[2];
  v13 = *a3;
  if (v12 >= a3[1])
  {
    v12 = a3[1];
  }

  v50 = v12 - v13;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
    if (!__p.__r_.__value_.__l.__size_)
    {
      goto LABEL_29;
    }

    p_p = __p.__r_.__value_.__r.__words[0];
    if (v50 <= *__p.__r_.__value_.__l.__data_)
    {
      *__p.__r_.__value_.__l.__data_ = 0;
      __p.__r_.__value_.__l.__size_ = 0;
      goto LABEL_29;
    }

    v16 = __p.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_29;
    }

    if (v50 <= __p.__r_.__value_.__s.__data_[0])
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_29;
    }

    p_p = &__p;
    size = __p.__r_.__value_.__l.__size_;
    v16 = __p.__r_.__value_.__r.__words[0];
  }

  memset(&v51, 0, sizeof(v51));
  v17 = (v16 + size);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &__p + SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  v18 = p_p->__r_.__value_.__s.__data_[0];
  v19 = v50 - p_p->__r_.__value_.__s.__data_[0];
  if (v19 >= 1)
  {
    v20 = (v17 - 1);
    do
    {
      std::string::push_back(&v51, v18);
      if (p_p == v20)
      {
        v18 = p_p->__r_.__value_.__s.__data_[0];
      }

      else
      {
        v21 = (&p_p->__r_.__value_.__l.__data_ + 1);
        v22 = &p_p->__r_.__value_.__s.__data_[1];
        do
        {
          v23 = *v22++;
          v18 = v23;
          if (v23)
          {
            v24 = 1;
          }

          else
          {
            v24 = v21 == v20;
          }

          v21 = v22;
        }

        while (!v24);
        p_p = (v22 - 1);
      }

      v19 -= v18;
    }

    while (v19 > 0);
  }

  std::string::push_back(&v51, v18 + v19);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v51;
LABEL_29:
  v25 = HIDWORD(a6);
  v26 = *(a2 + 16);
  v27 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v27 = __p.__r_.__value_.__l.__size_;
  }

  v28 = a3[3] - v26 + *(a2 + 4) + v27 - (v27 != 0);
  v29 = a5 & 7;
  v30 = (a5 >> 32) - v28;
  if (a5 >> 32 <= v28)
  {
    *v49 = 0;
    v30 = 0;
    v31 = v25;
    goto LABEL_45;
  }

  if (v29 == 4)
  {
    v31 = 48;
  }

  else
  {
    v31 = v25;
  }

  if (v29 == 4)
  {
    v32 = 3;
  }

  else
  {
    v32 = a5 & 7;
  }

  if (v32 > 1)
  {
    if (v32 != 3)
    {
      *v49 = v30 - (v30 >> 1);
      v30 >>= 1;
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (!v32)
  {
LABEL_43:
    *v49 = 0;
    goto LABEL_45;
  }

  *v49 = (a5 >> 32) - v28;
  v30 = 0;
LABEL_45:
  if (v29 == 4 && v13 != v26)
  {
    sub_10001911C(a1, *v26);
  }

  v33 = v25 & 0xFFFFFF00 | v31;
  v34 = sub_100015150(a1, v30, v33);
  v35 = v34;
  if (v29 != 4)
  {
    v36 = *(a2 + 16);
    if (v13 != v36)
    {
      sub_10001911C(v34, *v36);
    }
  }

  v37 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (*(&__p.__r_.__value_.__s + 23))
    {
      v38 = &__p;
      goto LABEL_56;
    }

LABEL_59:
    sub_100014B98(v35, v13, v50);
    goto LABEL_60;
  }

  v37 = __p.__r_.__value_.__l.__size_;
  if (!__p.__r_.__value_.__l.__size_)
  {
    goto LABEL_59;
  }

  v38 = __p.__r_.__value_.__r.__words[0];
LABEL_56:
  v39 = v38 + v37;
  v40 = (v11->__vftable[1].~facet_0)(v11);
  v41 = &v38->__r_.__value_.__s.__data_[1];
  for (i = v39; ; v39 = i)
  {
    v43 = *--i;
    sub_100014B98(v35, v13, v43);
    if (v39 == v41)
    {
      break;
    }

    v13 += *i;
    sub_10001911C(v35, v40);
  }

LABEL_60:
  v44 = a3[1];
  if (v44 != a3[3])
  {
    v45 = (v11->__vftable[1].~facet)(v11);
    sub_10001911C(v35, v45);
    sub_100014B98(v35, a3[1] + 1, a3[2] - (a3[1] + 1));
    sub_1000151D0(v35, *(a2 + 4), 48);
    v44 = a3[3];
  }

  v46 = a3[2];
  if (v46 != v44)
  {
    sub_100014B98(v35, v46, v44 - v46);
  }

  v47 = sub_100015150(v35, *v49, v33);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v47;
}

void sub_100018CAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100018D14(char *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, char *a7, size_t a8)
{
  v12 = (a4 >> 32) - (a6 + a8);
  if ((a4 & 7u) <= 1)
  {
    if ((a4 & 7) != 0)
    {
      v13 = 0;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if ((a4 & 7) == 3)
  {
LABEL_5:
    v13 = (a4 >> 32) - (a6 + a8);
    v12 = 0;
    goto LABEL_7;
  }

  v13 = v12 >> 1;
  v12 -= v12 >> 1;
LABEL_7:
  v14 = HIDWORD(a5);
  v15 = sub_100015150(a3, v13, SHIDWORD(a5));
  sub_100014B98(v15, a1, a7 - a1);
  sub_1000151D0(v15, a8, 48);
  sub_100014B98(v15, a7, a2 - a7);

  return sub_100015150(v15, v12, v14);
}

_BYTE *sub_100018DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  *(a1 + 4) = 0;
  *a3 = a2;
  v5 = *(a1 + 16) + *(a1 + 8);
  v6 = std::to_chars();
  a3[3] = v6;
  result = (a2 + 1);
  if (a2 + 1 == v6)
  {
    a3[1] = v6;
    v11 = 2;
    goto LABEL_13;
  }

  v8 = v6 - result;
  if (v6 - result < 4)
  {
LABEL_8:
    a3[2] = v6;
  }

  else
  {
    v9 = 6;
    if (v8 < 6)
    {
      v9 = v6 - result;
    }

    v10 = -v9;
    while (*(v6 + v10) != 101)
    {
      if (++v10 == -3)
      {
        goto LABEL_8;
      }
    }

    a3[2] = v6 + v10;
    if (v10)
    {
      if (*result == 46)
      {
        v6 = a2 + 1;
      }

      goto LABEL_11;
    }
  }

  result = memchr(result, 46, v8);
  if (result)
  {
    v6 = result;
  }

LABEL_11:
  v11 = 1;
LABEL_13:
  a3[v11] = v6;
  return result;
}

_BYTE *sub_100018ECC@<X0>(std::__1 *this@<X1>, uint64_t a2@<X0>, char *a3@<X2>, void *a4@<X8>, float a5@<S0>)
{
  *a4 = this;
  v7 = std::to_chars(this, (*(a2 + 16) + *(a2 + 8)), a3, a5);
  v8 = v7;
  a4[3] = v7;
  v9 = v7 - this;
  if (v7 - this < 4)
  {
LABEL_7:
    v11 = v7;
  }

  else
  {
    if (v9 >= 6)
    {
      v9 = 6;
    }

    v10 = -v9;
    while (*(v7 + v10) != 101)
    {
      if (++v10 == -3)
      {
        goto LABEL_7;
      }
    }

    v11 = (v7 + v10);
  }

  a4[2] = v11;
  result = memchr(this + 1, 46, v11 - (this + 1));
  if (result)
  {
    v13 = result;
  }

  else
  {
    v13 = v11;
  }

  if (v13 == v11)
  {
    v13 = v8;
  }

  a4[1] = v13;
  return result;
}

uint64_t sub_100018F7C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 == -1)
  {
    result = std::to_chars();
  }

  else
  {
    result = std::to_chars();
  }

  a4[3] = result;
  v10 = *(a3 + 1);
  v9 = a3 + 1;
  if (v10 == 46)
  {
    v11 = result - 2;
    v12 = memchr((result - 5), 112, 3uLL);
    result = v9;
    if (v12)
    {
      v9 = v12;
    }

    else
    {
      v9 = v11;
    }
  }

  a4[1] = result;
  a4[2] = v9;
  return result;
}

uint64_t sub_100019018@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = sub_100018F7C(a1, a2, a3, a4);
  v6 = *a4;
  v7 = a4[2];
  if (*a4 != v7)
  {
    do
    {
      result = sub_100015BB0(*v6);
      *v6++ = result;
    }

    while (v6 != v7);
    v7 = a4[2];
  }

  *v7 = 80;
  return result;
}

uint64_t sub_100019074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  *a3 = a2;
  v5 = *(a1 + 16) + *(a1 + 8);
  result = std::to_chars();
  a3[3] = result;
  v7 = a2 + 1;
  if (*(a2 + 1) == 46)
  {
    a3[1] = v7;
    v8 = result - a2 - 2;
    if (v8 < 4)
    {
LABEL_8:
      v7 = result;
    }

    else
    {
      if (v8 >= 6)
      {
        v8 = 6;
      }

      v9 = -v8;
      while (*(result + v9) != 101)
      {
        if (++v9 == -3)
        {
          goto LABEL_8;
        }
      }

      v7 = result + v9;
    }
  }

  else
  {
    a3[1] = result;
  }

  a3[2] = v7;
  return result;
}

uint64_t sub_10001911C(uint64_t result, char a2)
{
  v2 = *(result + 32);
  if (!v2 || (v4 = *v2, v3 = v2[1], v2[1] = v3 + 1, v3 < v4))
  {
    v5 = *result;
    v6 = *(result + 16);
    *(result + 16) = v6 + 1;
    *(v5 + v6) = a2;
    if (*(result + 16) == *(result + 8))
    {
      return (*(result + 24))(result, 2);
    }
  }

  return result;
}

void *sub_100019168(void **a1, uint64_t a2, unint64_t a3, double a4)
{
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v33 = *a1;

    return sub_1000185E0(v33, a2, a3, a4 < 0.0, 0);
  }

  else
  {
    v7 = fabs(a4);
    if (a3 == -1)
    {
      v8 = 1074;
    }

    else
    {
      v8 = a3;
    }

    v39 = v8;
    v40 = 0;
    if (v8 >= 1075)
    {
      v39 = 1074;
      v40 = v8 - 1074;
      v41 = 1390;
      goto LABEL_8;
    }

    v41 = v8 + 316;
    if ((v8 + 316) >= 0x401)
    {
LABEL_8:
      operator new();
    }

    __p = &v43;
    sub_100019584(&v39, a4 < 0.0, (a3 & 0x80000000) == 0, (a2 >> 3) & 3, BYTE1(a2), &v35, v7);
    if ((a2 & 0x20) != 0)
    {
      v9 = v36;
      v10 = *v38;
      if (v36 == *v38)
      {
        ++*v38;
        *v10 = 46;
        v11 = v37;
        v12 = (*v38 - 1);
        if (v37 != (*v38 - 1))
        {
          if (v37 + 1 == v12)
          {
            v14 = *v37;
            *v37 = v37[1];
            v11[1] = v14;
          }

          else
          {
            v13 = *(*v38 - 1);
            memmove(v37 + 1, v37, v12 - v37);
            *v11 = v13;
          }
        }

        v9 = v37;
        v36 = v37++;
      }

      if ((BYTE1(a2) - 17) <= 1u)
      {
        if (a3 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = a3;
        }

        if ((a3 & 0x80000000) != 0)
        {
          v15 = 6;
        }

        if (v37 == *v38)
        {
          v16 = v35 - v9;
        }

        else
        {
          v16 = -1;
        }

        v17 = v16 + v15;
        v18 = &v37[~v9];
        if (v18 < v17)
        {
          v40 += v17 - v18;
        }
      }
    }

    if ((a2 & 0x40) != 0)
    {
      v26 = *a1;
      sub_100014898(a1, &v34);
      v27 = sub_100019744(v26, &v39, &v35, &v34, a2, a3);
      std::locale::~locale(&v34);
    }

    else
    {
      v19 = *v38;
      v20 = __p;
      v21 = *v38 - __p;
      v22 = v40;
      if (*v38 - __p + v40 >= a2 >> 32)
      {
        if (!v40 || (v28 = v37, v37 == *v38))
        {
          v27 = *a1;
          sub_100014B98(*a1, __p, *v38 - __p);
          sub_1000151D0(v27, v22, 48);
        }

        else
        {
          v27 = *a1;
          sub_100014B98(*a1, __p, v37 - __p);
          sub_1000151D0(v27, v22, 48);
          sub_100014B98(v27, v28, v19 - v28);
        }
      }

      else
      {
        v23 = *a1;
        if ((a2 & 7) == 4)
        {
          if (__p != v35)
          {
            sub_10001911C(v23, *__p);
            ++v20;
          }

          v24 = a2 & 0xB8 | 3;
          v25 = 48;
        }

        else
        {
          v25 = BYTE4(a3);
          v24 = a2;
        }

        v29 = a2 & 0xFFFFFFFFFFFFFF00 | v24;
        v30 = a3 & 0xFFFFFF00FFFFFFFFLL | (v25 << 32);
        if (v22)
        {
          v31 = sub_100018D14(v20, *v38, v23, v29, v30, v21, v37, v22);
        }

        else
        {
          v31 = sub_100014ABC(v20, *v38 - v20, v23, v29, v30, v21);
        }

        v27 = v31;
      }
    }

    if (v41 >= 0x401)
    {
      operator delete(__p);
    }

    return v27;
  }
}

void sub_100019548(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, void *__p)
{
  if (a16 >= 0x401)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_100019584@<X0>(unsigned int *a1@<X0>, char a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, char **a6@<X8>, double a7@<D0>)
{
  v9 = *(a1 + 2);
  if (a2)
  {
    v10 = 45;
  }

  else if (a4 == 2)
  {
    v10 = 43;
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_8;
    }

    v10 = 32;
  }

  *v9 = v10;
  v9 = (v9 + 1);
LABEL_8:
  if (a5 > 14)
  {
    if ((a5 - 15) < 2)
    {
      v13 = *a1;
      *a6 = v9;
      v15 = *(a1 + 1);
      v14 = *(a1 + 2);
      result = std::to_chars();
      a6[2] = result;
      a6[3] = result;
      if (v13)
      {
        v16 = v13 + 1;
      }

      else
      {
        v16 = 0;
      }

      a6[1] = &result[-v16];
      return result;
    }

    if (a5 != 17)
    {
      v17 = *a1;
      result = sub_100019BB0(a1, v9, a6);
      v18 = a6[2];
      if (v18 == a6[3])
      {
        return result;
      }

      goto LABEL_35;
    }

    goto LABEL_25;
  }

  if (a5 <= 11)
  {
    if (a5)
    {
      if (a3)
      {
        v22 = *a1;
      }

      else
      {
        v22 = -1;
      }

      return sub_100019D38(a1, v22, v9, a6);
    }

    if (!a3)
    {

      return sub_100019C88(v9, a1, v9, a6, a7);
    }

LABEL_25:
    v19 = *a1;

    return sub_100019BB0(a1, v9, a6);
  }

  if (a5 != 12)
  {
    if (a5 == 13)
    {
      v11 = *a1;

      return sub_100019E30(a1, v9, a6);
    }

    v21 = *a1;
    result = sub_100019E30(a1, v9, a6);
    v18 = a6[2];
LABEL_35:
    *v18 = 69;
    return result;
  }

  if (a3)
  {
    v20 = *a1;
  }

  else
  {
    v20 = -1;
  }

  return sub_100019DD4(a1, v20, v9, a6);
}

void *sub_100019744(void *a1, uint64_t a2, char **a3, std::locale *this, uint64_t a5, unint64_t a6)
{
  v11 = std::locale::use_facet(this, &std::numpunct<char>::id);
  (v11->__vftable[1].__on_zero_shared)(&__p);
  v12 = a3[2];
  v13 = *a3;
  if (v12 >= a3[1])
  {
    v12 = a3[1];
  }

  v50 = v12 - v13;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
    if (!__p.__r_.__value_.__l.__size_)
    {
      goto LABEL_29;
    }

    p_p = __p.__r_.__value_.__r.__words[0];
    if (v50 <= *__p.__r_.__value_.__l.__data_)
    {
      *__p.__r_.__value_.__l.__data_ = 0;
      __p.__r_.__value_.__l.__size_ = 0;
      goto LABEL_29;
    }

    v16 = __p.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_29;
    }

    if (v50 <= __p.__r_.__value_.__s.__data_[0])
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_29;
    }

    p_p = &__p;
    size = __p.__r_.__value_.__l.__size_;
    v16 = __p.__r_.__value_.__r.__words[0];
  }

  memset(&v51, 0, sizeof(v51));
  v17 = (v16 + size);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &__p + SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  v18 = p_p->__r_.__value_.__s.__data_[0];
  v19 = v50 - p_p->__r_.__value_.__s.__data_[0];
  if (v19 >= 1)
  {
    v20 = (v17 - 1);
    do
    {
      std::string::push_back(&v51, v18);
      if (p_p == v20)
      {
        v18 = p_p->__r_.__value_.__s.__data_[0];
      }

      else
      {
        v21 = (&p_p->__r_.__value_.__l.__data_ + 1);
        v22 = &p_p->__r_.__value_.__s.__data_[1];
        do
        {
          v23 = *v22++;
          v18 = v23;
          if (v23)
          {
            v24 = 1;
          }

          else
          {
            v24 = v21 == v20;
          }

          v21 = v22;
        }

        while (!v24);
        p_p = (v22 - 1);
      }

      v19 -= v18;
    }

    while (v19 > 0);
  }

  std::string::push_back(&v51, v18 + v19);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v51;
LABEL_29:
  v25 = HIDWORD(a6);
  v26 = *(a2 + 16);
  v27 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v27 = __p.__r_.__value_.__l.__size_;
  }

  v28 = a3[3] - v26 + *(a2 + 4) + v27 - (v27 != 0);
  v29 = a5 & 7;
  v30 = (a5 >> 32) - v28;
  if (a5 >> 32 <= v28)
  {
    *v49 = 0;
    v30 = 0;
    v31 = v25;
    goto LABEL_45;
  }

  if (v29 == 4)
  {
    v31 = 48;
  }

  else
  {
    v31 = v25;
  }

  if (v29 == 4)
  {
    v32 = 3;
  }

  else
  {
    v32 = a5 & 7;
  }

  if (v32 > 1)
  {
    if (v32 != 3)
    {
      *v49 = v30 - (v30 >> 1);
      v30 >>= 1;
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (!v32)
  {
LABEL_43:
    *v49 = 0;
    goto LABEL_45;
  }

  *v49 = (a5 >> 32) - v28;
  v30 = 0;
LABEL_45:
  if (v29 == 4 && v13 != v26)
  {
    sub_10001911C(a1, *v26);
  }

  v33 = v25 & 0xFFFFFF00 | v31;
  v34 = sub_100015150(a1, v30, v33);
  v35 = v34;
  if (v29 != 4)
  {
    v36 = *(a2 + 16);
    if (v13 != v36)
    {
      sub_10001911C(v34, *v36);
    }
  }

  v37 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (*(&__p.__r_.__value_.__s + 23))
    {
      v38 = &__p;
      goto LABEL_56;
    }

LABEL_59:
    sub_100014B98(v35, v13, v50);
    goto LABEL_60;
  }

  v37 = __p.__r_.__value_.__l.__size_;
  if (!__p.__r_.__value_.__l.__size_)
  {
    goto LABEL_59;
  }

  v38 = __p.__r_.__value_.__r.__words[0];
LABEL_56:
  v39 = v38 + v37;
  v40 = (v11->__vftable[1].~facet_0)(v11);
  v41 = &v38->__r_.__value_.__s.__data_[1];
  for (i = v39; ; v39 = i)
  {
    v43 = *--i;
    sub_100014B98(v35, v13, v43);
    if (v39 == v41)
    {
      break;
    }

    v13 += *i;
    sub_10001911C(v35, v40);
  }

LABEL_60:
  v44 = a3[1];
  if (v44 != a3[3])
  {
    v45 = (v11->__vftable[1].~facet)(v11);
    sub_10001911C(v35, v45);
    sub_100014B98(v35, a3[1] + 1, a3[2] - (a3[1] + 1));
    sub_1000151D0(v35, *(a2 + 4), 48);
    v44 = a3[3];
  }

  v46 = a3[2];
  if (v46 != v44)
  {
    sub_100014B98(v35, v46, v44 - v46);
  }

  v47 = sub_100015150(v35, *v49, v33);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v47;
}

void sub_100019B48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_100019BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  *(a1 + 4) = 0;
  *a3 = a2;
  v5 = *(a1 + 16) + *(a1 + 8);
  v6 = std::to_chars();
  a3[3] = v6;
  result = (a2 + 1);
  if (a2 + 1 == v6)
  {
    a3[1] = v6;
    v11 = 2;
    goto LABEL_13;
  }

  v8 = v6 - result;
  if (v6 - result < 4)
  {
LABEL_8:
    a3[2] = v6;
  }

  else
  {
    v9 = 6;
    if (v8 < 6)
    {
      v9 = v6 - result;
    }

    v10 = -v9;
    while (*(v6 + v10) != 101)
    {
      if (++v10 == -3)
      {
        goto LABEL_8;
      }
    }

    a3[2] = v6 + v10;
    if (v10)
    {
      if (*result == 46)
      {
        v6 = a2 + 1;
      }

      goto LABEL_11;
    }
  }

  result = memchr(result, 46, v8);
  if (result)
  {
    v6 = result;
  }

LABEL_11:
  v11 = 1;
LABEL_13:
  a3[v11] = v6;
  return result;
}

_BYTE *sub_100019C88@<X0>(std::__1 *this@<X1>, uint64_t a2@<X0>, char *a3@<X2>, void *a4@<X8>, double a5@<D0>)
{
  *a4 = this;
  v7 = std::to_chars(this, (*(a2 + 16) + *(a2 + 8)), a3, a5);
  v8 = v7;
  a4[3] = v7;
  v9 = v7 - this;
  if (v7 - this < 4)
  {
LABEL_7:
    v11 = v7;
  }

  else
  {
    if (v9 >= 6)
    {
      v9 = 6;
    }

    v10 = -v9;
    while (*(v7 + v10) != 101)
    {
      if (++v10 == -3)
      {
        goto LABEL_7;
      }
    }

    v11 = (v7 + v10);
  }

  a4[2] = v11;
  result = memchr(this + 1, 46, v11 - (this + 1));
  if (result)
  {
    v13 = result;
  }

  else
  {
    v13 = v11;
  }

  if (v13 == v11)
  {
    v13 = v8;
  }

  a4[1] = v13;
  return result;
}

uint64_t sub_100019D38@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 == -1)
  {
    result = std::to_chars();
  }

  else
  {
    result = std::to_chars();
  }

  a4[3] = result;
  v10 = *(a3 + 1);
  v9 = a3 + 1;
  if (v10 == 46)
  {
    v11 = result - 2;
    v12 = memchr((result - 6), 112, 4uLL);
    result = v9;
    if (v12)
    {
      v9 = v12;
    }

    else
    {
      v9 = v11;
    }
  }

  a4[1] = result;
  a4[2] = v9;
  return result;
}

uint64_t sub_100019DD4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = sub_100019D38(a1, a2, a3, a4);
  v6 = *a4;
  v7 = a4[2];
  if (*a4 != v7)
  {
    do
    {
      result = sub_100015BB0(*v6);
      *v6++ = result;
    }

    while (v6 != v7);
    v7 = a4[2];
  }

  *v7 = 80;
  return result;
}

uint64_t sub_100019E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  *a3 = a2;
  v5 = *(a1 + 16) + *(a1 + 8);
  result = std::to_chars();
  a3[3] = result;
  v7 = a2 + 1;
  if (*(a2 + 1) == 46)
  {
    a3[1] = v7;
    v8 = result - a2 - 2;
    if (v8 < 4)
    {
LABEL_8:
      v7 = result;
    }

    else
    {
      if (v8 >= 6)
      {
        v8 = 6;
      }

      v9 = -v8;
      while (*(result + v9) != 101)
      {
        if (++v9 == -3)
        {
          goto LABEL_8;
        }
      }

      v7 = result + v9;
    }
  }

  else
  {
    a3[1] = result;
  }

  a3[2] = v7;
  return result;
}

void *sub_100019ED8(void **a1, uint64_t a2, unint64_t a3, double a4)
{
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v33 = *a1;

    return sub_1000185E0(v33, a2, a3, a4 < 0.0, 0);
  }

  else
  {
    v7 = fabs(a4);
    if (a3 == -1)
    {
      v8 = 1074;
    }

    else
    {
      v8 = a3;
    }

    v39 = v8;
    v40 = 0;
    if (v8 >= 1075)
    {
      v39 = 1074;
      v40 = v8 - 1074;
      v41 = 1390;
      goto LABEL_8;
    }

    v41 = v8 + 316;
    if ((v8 + 316) >= 0x401)
    {
LABEL_8:
      operator new();
    }

    __p = &v43;
    sub_10001A2F4(&v39, a4 < 0.0, (a3 & 0x80000000) == 0, (a2 >> 3) & 3, BYTE1(a2), &v35, v7);
    if ((a2 & 0x20) != 0)
    {
      v9 = v36;
      v10 = *v38;
      if (v36 == *v38)
      {
        ++*v38;
        *v10 = 46;
        v11 = v37;
        v12 = (*v38 - 1);
        if (v37 != (*v38 - 1))
        {
          if (v37 + 1 == v12)
          {
            v14 = *v37;
            *v37 = v37[1];
            v11[1] = v14;
          }

          else
          {
            v13 = *(*v38 - 1);
            memmove(v37 + 1, v37, v12 - v37);
            *v11 = v13;
          }
        }

        v9 = v37;
        v36 = v37++;
      }

      if ((BYTE1(a2) - 17) <= 1u)
      {
        if (a3 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = a3;
        }

        if ((a3 & 0x80000000) != 0)
        {
          v15 = 6;
        }

        if (v37 == *v38)
        {
          v16 = v35 - v9;
        }

        else
        {
          v16 = -1;
        }

        v17 = v16 + v15;
        v18 = &v37[~v9];
        if (v18 < v17)
        {
          v40 += v17 - v18;
        }
      }
    }

    if ((a2 & 0x40) != 0)
    {
      v26 = *a1;
      sub_100014898(a1, &v34);
      v27 = sub_100019744(v26, &v39, &v35, &v34, a2, a3);
      std::locale::~locale(&v34);
    }

    else
    {
      v19 = *v38;
      v20 = __p;
      v21 = *v38 - __p;
      v22 = v40;
      if (*v38 - __p + v40 >= a2 >> 32)
      {
        if (!v40 || (v28 = v37, v37 == *v38))
        {
          v27 = *a1;
          sub_100014B98(*a1, __p, *v38 - __p);
          sub_1000151D0(v27, v22, 48);
        }

        else
        {
          v27 = *a1;
          sub_100014B98(*a1, __p, v37 - __p);
          sub_1000151D0(v27, v22, 48);
          sub_100014B98(v27, v28, v19 - v28);
        }
      }

      else
      {
        v23 = *a1;
        if ((a2 & 7) == 4)
        {
          if (__p != v35)
          {
            sub_10001911C(v23, *__p);
            ++v20;
          }

          v24 = a2 & 0xB8 | 3;
          v25 = 48;
        }

        else
        {
          v25 = BYTE4(a3);
          v24 = a2;
        }

        v29 = a2 & 0xFFFFFFFFFFFFFF00 | v24;
        v30 = a3 & 0xFFFFFF00FFFFFFFFLL | (v25 << 32);
        if (v22)
        {
          v31 = sub_100018D14(v20, *v38, v23, v29, v30, v21, v37, v22);
        }

        else
        {
          v31 = sub_100014ABC(v20, *v38 - v20, v23, v29, v30, v21);
        }

        v27 = v31;
      }
    }

    if (v41 >= 0x401)
    {
      operator delete(__p);
    }

    return v27;
  }
}

void sub_10001A2B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, void *__p)
{
  if (a16 >= 0x401)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_10001A2F4@<X0>(unsigned int *a1@<X0>, char a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, char **a6@<X8>, long double a7@<D0>)
{
  v9 = *(a1 + 2);
  if (a2)
  {
    v10 = 45;
  }

  else if (a4 == 2)
  {
    v10 = 43;
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_8;
    }

    v10 = 32;
  }

  *v9 = v10;
  v9 = (v9 + 1);
LABEL_8:
  if (a5 > 14)
  {
    if ((a5 - 15) < 2)
    {
      v13 = *a1;
      *a6 = v9;
      v15 = *(a1 + 1);
      v14 = *(a1 + 2);
      result = std::to_chars();
      a6[2] = result;
      a6[3] = result;
      if (v13)
      {
        v16 = v13 + 1;
      }

      else
      {
        v16 = 0;
      }

      a6[1] = &result[-v16];
      return result;
    }

    if (a5 != 17)
    {
      v17 = *a1;
      result = sub_10001A4B4(a1, v9, a6);
      v18 = a6[2];
      if (v18 == a6[3])
      {
        return result;
      }

      goto LABEL_35;
    }

    goto LABEL_25;
  }

  if (a5 <= 11)
  {
    if (a5)
    {
      if (a3)
      {
        v22 = *a1;
      }

      else
      {
        v22 = -1;
      }

      return sub_10001A63C(a1, v22, v9, a6);
    }

    if (!a3)
    {

      return sub_10001A58C(v9, a1, v9, a6, a7);
    }

LABEL_25:
    v19 = *a1;

    return sub_10001A4B4(a1, v9, a6);
  }

  if (a5 != 12)
  {
    if (a5 == 13)
    {
      v11 = *a1;

      return sub_10001A734(a1, v9, a6);
    }

    v21 = *a1;
    result = sub_10001A734(a1, v9, a6);
    v18 = a6[2];
LABEL_35:
    *v18 = 69;
    return result;
  }

  if (a3)
  {
    v20 = *a1;
  }

  else
  {
    v20 = -1;
  }

  return sub_10001A6D8(a1, v20, v9, a6);
}

_BYTE *sub_10001A4B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  *(a1 + 4) = 0;
  *a3 = a2;
  v5 = *(a1 + 16) + *(a1 + 8);
  v6 = std::to_chars();
  a3[3] = v6;
  result = (a2 + 1);
  if (a2 + 1 == v6)
  {
    a3[1] = v6;
    v11 = 2;
    goto LABEL_13;
  }

  v8 = v6 - result;
  if (v6 - result < 4)
  {
LABEL_8:
    a3[2] = v6;
  }

  else
  {
    v9 = 6;
    if (v8 < 6)
    {
      v9 = v6 - result;
    }

    v10 = -v9;
    while (*(v6 + v10) != 101)
    {
      if (++v10 == -3)
      {
        goto LABEL_8;
      }
    }

    a3[2] = v6 + v10;
    if (v10)
    {
      if (*result == 46)
      {
        v6 = a2 + 1;
      }

      goto LABEL_11;
    }
  }

  result = memchr(result, 46, v8);
  if (result)
  {
    v6 = result;
  }

LABEL_11:
  v11 = 1;
LABEL_13:
  a3[v11] = v6;
  return result;
}

_BYTE *sub_10001A58C@<X0>(std::__1 *this@<X1>, uint64_t a2@<X0>, char *a3@<X2>, void *a4@<X8>, long double a5@<D0>)
{
  *a4 = this;
  v7 = std::to_chars(this, (*(a2 + 16) + *(a2 + 8)), a3, a5);
  v8 = v7;
  a4[3] = v7;
  v9 = v7 - this;
  if (v7 - this < 4)
  {
LABEL_7:
    v11 = v7;
  }

  else
  {
    if (v9 >= 6)
    {
      v9 = 6;
    }

    v10 = -v9;
    while (*(v7 + v10) != 101)
    {
      if (++v10 == -3)
      {
        goto LABEL_7;
      }
    }

    v11 = (v7 + v10);
  }

  a4[2] = v11;
  result = memchr(this + 1, 46, v11 - (this + 1));
  if (result)
  {
    v13 = result;
  }

  else
  {
    v13 = v11;
  }

  if (v13 == v11)
  {
    v13 = v8;
  }

  a4[1] = v13;
  return result;
}

uint64_t sub_10001A63C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 == -1)
  {
    result = std::to_chars();
  }

  else
  {
    result = std::to_chars();
  }

  a4[3] = result;
  v10 = *(a3 + 1);
  v9 = a3 + 1;
  if (v10 == 46)
  {
    v11 = result - 2;
    v12 = memchr((result - 6), 112, 4uLL);
    result = v9;
    if (v12)
    {
      v9 = v12;
    }

    else
    {
      v9 = v11;
    }
  }

  a4[1] = result;
  a4[2] = v9;
  return result;
}

uint64_t sub_10001A6D8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = sub_10001A63C(a1, a2, a3, a4);
  v6 = *a4;
  v7 = a4[2];
  if (*a4 != v7)
  {
    do
    {
      result = sub_100015BB0(*v6);
      *v6++ = result;
    }

    while (v6 != v7);
    v7 = a4[2];
  }

  *v7 = 80;
  return result;
}

uint64_t sub_10001A734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  *a3 = a2;
  v5 = *(a1 + 16) + *(a1 + 8);
  result = std::to_chars();
  a3[3] = result;
  v7 = a2 + 1;
  if (*(a2 + 1) == 46)
  {
    a3[1] = v7;
    v8 = result - a2 - 2;
    if (v8 < 4)
    {
LABEL_8:
      v7 = result;
    }

    else
    {
      if (v8 >= 6)
      {
        v8 = 6;
      }

      v9 = -v8;
      while (*(result + v9) != 101)
      {
        if (++v9 == -3)
        {
          goto LABEL_8;
        }
      }

      v7 = result + v9;
    }
  }

  else
  {
    a3[1] = result;
  }

  a3[2] = v7;
  return result;
}

unsigned __int8 *sub_10001A7DC(_BYTE *a1, unsigned __int8 **a2)
{
  result = sub_100013AEC(a1, a2, 296);
  v4 = a1[1];
  if (v4 >= 2 && v4 != 19)
  {
    sub_100012E2C("The type option contains an invalid value for a string formatting argument");
  }

  return result;
}

void *sub_10001A820(uint64_t a1, char *__s, void *a3)
{
  v6 = strlen(__s);
  v7 = *a3;
  v9 = sub_1000146D8(a1, a3);

  return sub_10001A898(__s, v6, v7, v9, v8);
}

void *sub_10001A898(char *__src, size_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if ((a5 & 0x80000000) != 0)
  {

    return sub_100014908(__src, a2, a3, a4, a5);
  }

  else
  {
    v9 = sub_1000149F8(__src, a2, a5 & 0x7FFFFFFF, 0);
    v11 = v10 - __src;

    return sub_100014ABC(__src, v11, a3, a4, a5, v9);
  }
}

unsigned __int8 *sub_10001A938(_BYTE *a1, unsigned __int8 **a2)
{
  result = sub_100013AEC(a1, a2, 292);
  v4 = a1[1];
  if ((v4 - 8) >= 2 && v4 != 0)
  {
    sub_1000141F8("a pointer");
  }

  return result;
}

void *sub_10001A980(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = sub_1000146D8(a1, a3);
  v7 = 1536;
  if ((v5 & 0xFF00) == 0x900)
  {
    v7 = 1792;
  }

  return sub_10001A9EC(a2, a3, v5 & 0xFFFFFFFFFFFF00FFLL | v7 | 0x20, v6, 0);
}