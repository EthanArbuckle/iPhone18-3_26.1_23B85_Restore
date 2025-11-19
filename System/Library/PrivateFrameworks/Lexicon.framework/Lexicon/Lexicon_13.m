uint64_t sub_1B5DB00C0(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5C400))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5DB0100(uint64_t a1, char *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = *a3;
  v7 = v4[1];
  v6 = v4[2];
  if (v7 >= v6)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *v4) >> 4);
    if (v10 + 1 > 0x555555555555555)
    {
      sub_1B5D04FA0();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *v4) >> 4);
    v12 = 2 * v11;
    if (2 * v11 <= v10 + 1)
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v13 = 0x555555555555555;
    }

    else
    {
      v13 = v12;
    }

    v22 = v4;
    if (v13)
    {
      sub_1B5D935C8(v13);
    }

    v19 = 0;
    v20 = 48 * v10;
    sub_1B5DB0268((48 * v10), v3, v5);
    v21 = 48 * v10 + 48;
    v14 = v4[1];
    v15 = 48 * v10 + *v4 - v14;
    sub_1B5D93620(*v4, v14, v15);
    v16 = *v4;
    *v4 = v15;
    v17 = v4[2];
    v18 = v21;
    v20 = v16;
    *&v21 = v16;
    *(v4 + 1) = v18;
    *(&v21 + 1) = v17;
    v19 = v16;
    result = sub_1B5D936D0(&v19);
    v9 = v18;
  }

  else
  {
    result = sub_1B5DB0268(v4[1], *a2, *a3);
    v9 = v7 + 48;
    v4[1] = v7 + 48;
  }

  v4[1] = v9;
  return result;
}

_BYTE *sub_1B5DB0268(_BYTE *a1, char a2, uint64_t a3)
{
  *a1 = a2;
  v5[0] = a3;
  v6 = 9;
  sub_1B5DB9C6C((a1 + 8), v5);
  sub_1B5D264A0(v5);
  return a1;
}

void sub_1B5DB02B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D264A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5DB02D0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5C3A0;
  a2[1] = v2;
  return result;
}

double sub_1B5DB0364(uint64_t a1, uint64_t a2, unsigned int a3, int *a4, unsigned __int16 *a5)
{
  if ((*a2 & 1) != 0 && (v5 = *(a2 + 24), v6 = v5[1], v6 > a3) && (v7 = *v5) != 0)
  {
    v8 = *(v7 + a3);
    v10[0] = v7;
    v10[1] = v6;
    v10[2] = a3;
    *a4 = (v8 + a3) & (*(sub_1B5D330BC(a1, v10, a5, a2 + 648, *(a2 + 2024), *(a2 + 2032), *(a2 + 4)) + 44) >> 31);
  }

  else
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0;
    *(a1 + 2) = 16;
    *(a1 + 6) = 0;
    *(a1 + 16) = 0;
    *(a1 + 32) = 0;
    *(a1 + 37) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *&result = 0xFFFFFFFFLL;
    *(a1 + 64) = 0xFFFFFFFFLL;
    *(a1 + 76) = 0;
  }

  return result;
}

uint64_t sub_1B5DB0480(uint64_t *a1, uint64_t a2, _DWORD *a3)
{
  if (!(*(*a1 + 112))(a1))
  {
    return 0;
  }

  v8 = 0;
  v6 = sub_1B5CE6574(a1 + 2, a2, &v8);
  if (v6)
  {
    *a3 = sub_1B5DB06D8(a1, v8);
  }

  return v6;
}

uint64_t sub_1B5DB0518(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v4 = 0;
  v5[0] = &unk_1F2D5BDD0;
  v5[1] = &v4;
  v5[3] = v5;
  (*(*a1 + 144))(a1, a2, v5);
  sub_1B5D5FC3C(v5);
  result = v4;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5DB05C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D5FC3C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5DB05E8(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5BE30))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5DB0628(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *a4 = 1;
  **(result + 8) = 1;
  return result;
}

uint64_t sub_1B5DB0644(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5BDD0;
  a2[1] = v2;
  return result;
}

unint64_t sub_1B5DB06D8(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (v2 <= a2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_1B5D07108(exception, "Marisa Payload");
      __cxa_throw(exception, off_1E7C20490, MEMORY[0x1E69E5280]);
    }

    return *(*(a1 + 24) + 4 * a2);
  }

  return a2;
}

void sub_1B5DB075C(uint64_t *a1, uint64_t a2, char a3)
{
  if (*a1 != 0xFFFFFFFFLL)
  {
    v7 = *a1;
    if (*(a1 + 31) < 0)
    {
      sub_1B5CE4AC4(&v8, a1[1], a1[2]);
    }

    else
    {
      v8 = *(a1 + 1);
      v9 = a1[3];
    }

    v14 = a3;
    sub_1B5CE6808((a2 + 56), &v14, 1uLL, &v7, &v10);
    v6 = v10;
    v12 = v10;
    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_1B5CE4AC4(&__p, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
      v6 = v12;
    }

    else
    {
      __p = v11;
    }

    *a1 = v6;
    std::string::operator=((a1 + 1), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v9) < 0)
    {
      operator delete(v8);
    }

    if (!*a1)
    {
      __assert_rtn("advance", "LXWordTrie.cpp", 62, "!is_root()");
    }
  }
}

void sub_1B5DB0894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5DB08E0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8[4] = *MEMORY[0x1E69E9840];
  result = (*(*a1 + 112))(a1);
  if (result)
  {
    v8[0] = &unk_1F2D5E8A0;
    v8[1] = a3;
    v8[3] = v8;
    sub_1B5CE6910(a1 + 2, a2, v8);
    result = sub_1B5D5FC3C(v8);
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5DB09A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D5FC3C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5DB09C8(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5E900))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5DB0A1C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5E8A0;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5DB0ABC(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5C480))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1B5DB0AFC(uint64_t a1, char *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v17 = *a3;
  if (*(a3 + 31) < 0)
  {
    sub_1B5CE4AC4(&__p, *(a3 + 8), *(a3 + 16));
  }

  else
  {
    __p = *(a3 + 8);
    v19 = *(a3 + 24);
  }

  v6 = v4[1];
  v5 = v4[2];
  if (v6 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *v4) >> 4);
    if (v8 + 1 > 0x555555555555555)
    {
      sub_1B5D04FA0();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *v4) >> 4);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x2AAAAAAAAAAAAAALL)
    {
      v11 = 0x555555555555555;
    }

    else
    {
      v11 = v10;
    }

    v23 = v4;
    if (v11)
    {
      sub_1B5D935C8(v11);
    }

    v20 = 0;
    v21 = 48 * v8;
    v22 = 48 * v8;
    sub_1B5DB0CC0((48 * v8), v3, &v17);
    *&v22 = v22 + 48;
    v12 = v4[1];
    v13 = v21 + *v4 - v12;
    sub_1B5D93620(*v4, v12, v13);
    v14 = *v4;
    *v4 = v13;
    v15 = v4[2];
    v16 = v22;
    v21 = v14;
    *&v22 = v14;
    *(v4 + 1) = v16;
    *(&v22 + 1) = v15;
    v20 = v14;
    sub_1B5D936D0(&v20);
    v7 = v16;
  }

  else
  {
    sub_1B5DB0CC0(v4[1], v3, &v17);
    v7 = v6 + 48;
    v4[1] = v6 + 48;
  }

  v4[1] = v7;
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p);
  }
}

void sub_1B5DB0C88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  *(v20 + 8) = v19;
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1B5DB0CC0(_BYTE *a1, char a2, uint64_t *a3)
{
  *a1 = a2;
  v4 = (a1 + 8);
  v6 = *a3;
  if (*(a3 + 31) < 0)
  {
    sub_1B5CE4AC4(&v7, a3[1], a3[2]);
  }

  else
  {
    v7 = *(a3 + 1);
    v8 = a3[3];
  }

  v9 = 10;
  sub_1B5DB9C6C(v4, &v6);
  sub_1B5D264A0(&v6);
  return a1;
}

void sub_1B5DB0D44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D264A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5DB0D60(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5C420;
  a2[1] = v2;
  return result;
}

double sub_1B5DB0DF4(uint64_t a1, uint64_t a2, unsigned int a3, int *a4, unsigned __int16 *a5)
{
  if ((*a2 & 1) != 0 && (v5 = *(a2 + 24), v6 = v5[1], v6 > a3) && (v7 = *v5) != 0)
  {
    v8 = *(v7 + a3);
    v10[0] = v7;
    v10[1] = v6;
    v10[2] = a3;
    *a4 = (v8 + a3) & (*(sub_1B5D330BC(a1, v10, a5, a2 + 104, *(a2 + 1480), *(a2 + 1488), *(a2 + 4)) + 44) >> 31);
  }

  else
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0;
    *(a1 + 2) = 16;
    *(a1 + 6) = 0;
    *(a1 + 16) = 0;
    *(a1 + 32) = 0;
    *(a1 + 37) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *&result = 0xFFFFFFFFLL;
    *(a1 + 64) = 0xFFFFFFFFLL;
    *(a1 + 76) = 0;
  }

  return result;
}

uint64_t sub_1B5DB0F10(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v4 = 0;
  v5[0] = &unk_1F2D5BE50;
  v5[1] = &v4;
  v5[3] = v5;
  (*(*a1 + 144))(a1, a2, v5);
  sub_1B5D6ECA0(v5);
  result = v4;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5DB0FC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D6ECA0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5DB0FE0(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5BEB0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5DB1020(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *a4 = 1;
  **(result + 8) = 1;
  return result;
}

uint64_t sub_1B5DB103C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5BE50;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5DB10D0(uint64_t result, void *a2, uint64_t a3)
{
  if (*a2 != -1)
  {
    v3 = result;
    for (i = *(*(result + 40) + 2 * *a2); i; i = *(*(v3 + 40) + 2 * v10 + 1))
    {
      v7 = *(v3 + 24);
      v8 = *(v7 + 4 * *a2);
      v9 = (v8 >> 10 << ((v8 >> 6) & 8)) ^ *a2 ^ i;
      if ((*(v7 + 4 * v9) & 0x800000FF) != i)
      {
        v9 = -1;
      }

      v10 = v9;
      result = sub_1B5D6E468(*(a3 + 24), i);
    }
  }

  return result;
}

uint64_t sub_1B5DB11A8(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5C500))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5DB11E8(uint64_t a1, char *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = *a3;
  v7 = v4[1];
  v6 = v4[2];
  if (v7 >= v6)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *v4) >> 4);
    if (v10 + 1 > 0x555555555555555)
    {
      sub_1B5D04FA0();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *v4) >> 4);
    v12 = 2 * v11;
    if (2 * v11 <= v10 + 1)
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v13 = 0x555555555555555;
    }

    else
    {
      v13 = v12;
    }

    v22 = v4;
    if (v13)
    {
      sub_1B5D935C8(v13);
    }

    v19 = 0;
    v20 = 48 * v10;
    sub_1B5DB1350((48 * v10), v3, v5);
    v21 = 48 * v10 + 48;
    v14 = v4[1];
    v15 = 48 * v10 + *v4 - v14;
    sub_1B5D93620(*v4, v14, v15);
    v16 = *v4;
    *v4 = v15;
    v17 = v4[2];
    v18 = v21;
    v20 = v16;
    *&v21 = v16;
    *(v4 + 1) = v18;
    *(&v21 + 1) = v17;
    v19 = v16;
    result = sub_1B5D936D0(&v19);
    v9 = v18;
  }

  else
  {
    result = sub_1B5DB1350(v4[1], *a2, *a3);
    v9 = v7 + 48;
    v4[1] = v7 + 48;
  }

  v4[1] = v9;
  return result;
}

_BYTE *sub_1B5DB1350(_BYTE *a1, char a2, uint64_t a3)
{
  *a1 = a2;
  v5[0] = a3;
  v6 = 11;
  sub_1B5DB9C6C((a1 + 8), v5);
  sub_1B5D264A0(v5);
  return a1;
}

void sub_1B5DB139C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D264A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5DB13B8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5C4A0;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5DB144C(uint64_t *a1, uint64_t a2, _DWORD *a3)
{
  result = (*(*a1 + 112))(a1);
  if (result)
  {
    v7 = sub_1B5CF3300();
    v8 = sub_1B5CF352C(v7, a1[1], a2);
    *a3 = v8;
    return v8 != 0;
  }

  return result;
}

uint64_t sub_1B5DB14C0(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v4 = 0;
  v5[0] = &unk_1F2D5BED0;
  v5[1] = &v4;
  v5[3] = v5;
  (*(*a1 + 144))(a1, a2, v5);
  sub_1B5DAE7DC(v5);
  result = v4;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5DB1570(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5DAE7DC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5DB1590(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5BF30))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5DB15D0(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *a4 = 1;
  **(result + 8) = 1;
  return result;
}

uint64_t sub_1B5DB15EC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5BED0;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5DB1680(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (*(result + 12) != -1)
  {
    v3 = result;
    v5 = *result;
    v6 = a3;
    result = sub_1B5DB1708(a2 + 40, &v5, &v6, 1);
    *v3 = result;
    v3[1] = v4;
    if (v4 <= 0xFFFFFFFEFFFFFFFFLL && (v4 & 0x100) != 0)
    {
      __assert_rtn("advance", "LXWordTrie.cpp", 62, "!is_root()");
    }
  }

  return result;
}

uint64_t sub_1B5DB1708(uint64_t a1, __int128 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v11 = *a2;
  if (!a4)
  {
    return v11;
  }

  v4 = a4;
  while (1)
  {
    v7 = *a3;
    v8 = sub_1B5CF3300();
    *&v11 = sub_1B5CF349C(v8, *(a1 + 8), &v11);
    *(&v11 + 1) = v9;
    if (!sub_1B5CF3568(&v11))
    {
      break;
    }

    ++a3;
    if (!--v4)
    {
      return v11;
    }
  }

  return 0;
}

void sub_1B5DB1790(uint64_t a1, uint64_t a2)
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2000000000;
  v6 = 0;
  v4 = sub_1B5CF3300();
  sub_1B5CF34FC(v4, *(a1 + 8), a2);
  _Block_object_dispose(v5, 8);
}

void sub_1B5DB1848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5DB1860(uint64_t a1, char a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(*(a1 + 32) + 8);
  result = sub_1B5D13508(*(*(a1 + 40) + 24), a2);
  *a4 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1B5DB18B8(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5C600))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5DB18F8(uint64_t a1, char *a2, __int128 *a3)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v18 = *a3;
  v6 = v4[1];
  v5 = v4[2];
  if (v6 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *v4) >> 4);
    if (v9 + 1 > 0x555555555555555)
    {
      sub_1B5D04FA0();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *v4) >> 4);
    v11 = 2 * v10;
    if (2 * v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v11;
    }

    v22 = v4;
    if (v12)
    {
      sub_1B5D935C8(v12);
    }

    v19 = 0;
    v20 = 48 * v9;
    v21 = 48 * v9;
    sub_1B5DB1A64((48 * v9), v3, &v18);
    *&v21 = v21 + 48;
    v13 = v4[1];
    v14 = v20 + *v4 - v13;
    sub_1B5D93620(*v4, v13, v14);
    v15 = *v4;
    *v4 = v14;
    v16 = v4[2];
    v17 = v21;
    v20 = v15;
    *&v21 = v15;
    *(v4 + 1) = v17;
    *(&v21 + 1) = v16;
    v19 = v15;
    result = sub_1B5D936D0(&v19);
    v8 = v17;
  }

  else
  {
    result = sub_1B5DB1A64(v4[1], v3, &v18);
    v8 = v6 + 48;
    v4[1] = v6 + 48;
  }

  v4[1] = v8;
  return result;
}

_BYTE *sub_1B5DB1A64(_BYTE *a1, char a2, _OWORD *a3)
{
  *a1 = a2;
  v5[0] = *a3;
  v6 = 12;
  sub_1B5DB9C6C((a1 + 8), v5);
  sub_1B5D264A0(v5);
  return a1;
}

uint64_t sub_1B5DB1AD0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5C5A0;
  a2[1] = v2;
  return result;
}

double sub_1B5DB1B64(uint64_t a1, uint64_t a2, unsigned int a3, int *a4, unsigned __int16 *a5)
{
  if ((*a2 & 1) != 0 && (v5 = *(a2 + 24), v6 = v5[1], v6 > a3) && (v7 = *v5) != 0)
  {
    v8 = *(v7 + a3);
    v10[0] = v7;
    v10[1] = v6;
    v10[2] = a3;
    *a4 = (v8 + a3) & (*(sub_1B5D330BC(a1, v10, a5, a2 + 88, *(a2 + 1464), *(a2 + 1472), *(a2 + 4)) + 44) >> 31);
  }

  else
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0;
    *(a1 + 2) = 16;
    *(a1 + 6) = 0;
    *(a1 + 16) = 0;
    *(a1 + 32) = 0;
    *(a1 + 37) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *&result = 0xFFFFFFFFLL;
    *(a1 + 64) = 0xFFFFFFFFLL;
    *(a1 + 76) = 0;
  }

  return result;
}

uint64_t *sub_1B5DB1C80(uint64_t a1)
{
  sub_1B5CE10F4((a1 + 32), 0);
  sub_1B5CE10F4((a1 + 24), 0);
  sub_1B5CE10F4((a1 + 32), 0);
  result = sub_1B5CE10F4((a1 + 24), 0);
  *(a1 + 8) = 0;
  *a1 = 0;
  return result;
}

void sub_1B5DB1CD8(uint64_t a1, unsigned __int16 *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  LODWORD(v7) = 0x100000;
  WORD2(v7) = 0;
  BYTE6(v7) = 1;
  v8 = 0;
  sub_1B5CDCAAC(&v7, ".dat", 0, 4u);
  v4 = sub_1B5D5DDEC(a2, &v7);
  if (v8)
  {
    v5 = BYTE6(v7) == 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    free(v8);
  }

  if (v4)
  {
    sub_1B5D5D250(a1, a2, 0, (*a2 - 3));
    sub_1B5D5D760(a1, "idx", 0xFFFFuLL);
  }

  else
  {
    *a1 = 0x100000;
    *(a1 + 4) = 0;
    *(a1 + 6) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1B5DB1DF0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    if (*(v1 + 6) == 1)
    {
      free(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1B5DB1E1C(int *a1, int a2, unsigned int a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*a1 == a2 && a1[1] == a3)
  {
    if (a2 == 3)
    {
      if (a3 > 0xA)
      {
        result = 1;
      }

      else
      {
        if (qword_1EB90CCB0 != -1)
        {
          dispatch_once(&qword_1EB90CCB0, &unk_1F2D5B900);
        }

        v4 = qword_1EB90CCA8;
        result = os_log_type_enabled(qword_1EB90CCA8, OS_LOG_TYPE_ERROR);
        if (result)
        {
          v6 = a1[1];
          v13 = 67109376;
          v14 = v6;
          v15 = 1024;
          v16 = 11;
          v7 = "minor version %u is not supported (%u required)";
LABEL_17:
          v11 = v4;
          v12 = 14;
LABEL_20:
          _os_log_error_impl(&dword_1B5CDB000, v11, OS_LOG_TYPE_ERROR, v7, &v13, v12);
          result = 0;
        }
      }
    }

    else
    {
      if (qword_1EB90CCB0 != -1)
      {
        dispatch_once(&qword_1EB90CCB0, &unk_1F2D5B900);
      }

      v4 = qword_1EB90CCA8;
      result = os_log_type_enabled(qword_1EB90CCA8, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v10 = *a1;
        v13 = 67109376;
        v14 = v10;
        v15 = 1024;
        v16 = 3;
        v7 = "major version %u does not match required version %u";
        goto LABEL_17;
      }
    }
  }

  else
  {
    if (qword_1EB90CCB0 != -1)
    {
      dispatch_once(&qword_1EB90CCB0, &unk_1F2D5B900);
    }

    v8 = qword_1EB90CCA8;
    result = os_log_type_enabled(qword_1EB90CCA8, OS_LOG_TYPE_ERROR);
    if (result)
    {
      LOWORD(v13) = 0;
      v7 = "mismatched words and index file versions";
      v11 = v8;
      v12 = 2;
      goto LABEL_20;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1B5DB2010(void *result, uint64_t a2, unint64_t a3, unsigned int a4)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a4 < 0x13)
  {
    operator new();
  }

  if (a3 <= 0x4F)
  {
    __assert_rtn("InputStream", "TIDataFile.cpp", 314, "m_offset <= m_size");
  }

  if (a3 >= 0x54 && a2)
  {
    v4 = bswap32(*(a2 + 80));
    v6 = a2;
    v7 = a3;
    v8 = v4;
    if (v4 <= a3)
    {
      operator new();
    }

    __assert_rtn("InputStream", "TIDataFile.cpp", 314, "m_offset <= m_size");
  }

  *result = 0;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5DB2170(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  MEMORY[0x1B8C880F0](v10, 0x91C4089455612);
  if (a2 == 1)
  {
    v13 = __cxa_begin_catch(a1);
    if (qword_1EB90CCB0 != -1)
    {
      dispatch_once(&qword_1EB90CCB0, &unk_1F2D5B900);
    }

    v14 = qword_1EB90CCA8;
    if (os_log_type_enabled(qword_1EB90CCA8, OS_LOG_TYPE_ERROR))
    {
      v15 = (*(*v13 + 16))(v13);
      LODWORD(a9) = 136315138;
      *(&a9 + 4) = v15;
      _os_log_error_impl(&dword_1B5CDB000, v14, OS_LOG_TYPE_ERROR, "Failed to create metadata flags decoder: %s", &a9, 0xCu);
    }

    *v9 = 0;
    __cxa_end_catch();
    JUMPOUT(0x1B5DB20F8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1B5DB2268(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 12);
  *v15 = 0;
  *versionArray = v4;
  v5 = *(a2 + 8);
  ucol_getVersion();
  v6 = *(a1 + 16);
  v13 = 0;
  *v14 = v6;
  v7 = *(a2 + 8);
  ucol_getUCAVersion();
  if (v4)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6 == 0;
  }

  v9 = v8;
  if (!v8)
  {
    u_versionToString(versionArray, versionString);
    u_versionToString(v15, v27);
    u_versionToString(v14, v26);
    u_versionToString(&v13, v25);
    if (qword_1EB90CCB0 != -1)
    {
      dispatch_once(&qword_1EB90CCB0, &unk_1F2D5B900);
    }

    v10 = qword_1EB90CCA8;
    if (os_log_type_enabled(qword_1EB90CCA8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v18 = versionString;
      v19 = 2080;
      v20 = v27;
      v21 = 2080;
      v22 = v26;
      v23 = 2080;
      v24 = v25;
      _os_log_error_impl(&dword_1B5CDB000, v10, OS_LOG_TYPE_ERROR, "ICU version mismatch: file_collator=%s, loaded_collator=%s, file_uca=%s, loaded_uca=%s", buf, 0x2Au);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

os_log_t sub_1B5DB23E0()
{
  result = os_log_create("com.apple.Lexicon", "WordTrie");
  qword_1EB90CCA8 = result;
  return result;
}

void sub_1B5DB2410(const std::error_code *a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a1->__val_)
  {
    if (qword_1EB90CCB0 != -1)
    {
      dispatch_once(&qword_1EB90CCB0, &unk_1F2D5B900);
    }

    v4 = qword_1EB90CCA8;
    if (os_log_type_enabled(qword_1EB90CCA8, OS_LOG_TYPE_DEFAULT))
    {
      std::error_code::message(&v7, a1);
      if ((v7.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v5 = &v7;
      }

      else
      {
        v5 = v7.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      v9 = "log_result_on_failure";
      v10 = 2080;
      v11 = a2;
      v12 = 2080;
      v13 = v5;
      _os_log_impl(&dword_1B5CDB000, v4, OS_LOG_TYPE_DEFAULT, "%s: %s: %s", buf, 0x20u);
      if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v7.__r_.__value_.__l.__data_);
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B5DB2538(uint64_t result, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  v29[4] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  if (*a2 != -1)
  {
    v7 = result;
    v28 = 0u;
    memset(v27, 0, sizeof(v27));
    __p[0] = 0;
    __p[1] = 0;
    v25 = 0;
    v26 = v4;
    sub_1B5DB280C(v27, __p);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(__p[0]);
    }

    v23 = 0;
    if (*(&v28 + 1))
    {
      do
      {
        v8 = *(&v27[0] + 1);
        v9 = v28;
        v10 = v28 >> 7;
        v11 = v28 & 0x7F;
        v12 = *(*(&v27[0] + 1) + 8 * (v28 >> 7)) + 32 * v11;
        if (*(v12 + 23) < 0)
        {
          sub_1B5CE4AC4(__p, *v12, *(v12 + 8));
          v8 = *(&v27[0] + 1);
          v9 = v28;
          v10 = v28 >> 7;
          v11 = v28 & 0x7F;
        }

        else
        {
          v13 = *v12;
          v25 = *(v12 + 16);
          *__p = v13;
        }

        v26 = *(v12 + 24);
        v14 = *(v8 + 8 * v10) + 32 * v11;
        if (*(v14 + 23) < 0)
        {
          operator delete(*v14);
          v9 = v28;
        }

        v15 = v9 + 1;
        v28 = __PAIR128__(*(&v28 + 1), v15) + __PAIR128__(-1, 0);
        if (v15 >= 0x100)
        {
          operator delete(**(&v27[0] + 1));
          *(&v27[0] + 1) += 8;
          *&v28 = v28 - 128;
        }

        v22 = 0;
        if (*(*v7 + 128))(v7, &v26, &v22) && (v25 >= 0 ? (v16 = __p) : (v16 = __p[0]), v25 >= 0 ? (v17 = HIBYTE(v25)) : (v17 = __p[1]), sub_1B5D61690(*(a3 + 24), v22, v16, v17, &v23), (v23))
        {
          v18 = 1;
        }

        else
        {
          if ((a4 & 0x80000000) != 0)
          {
            goto LABEL_25;
          }

          v19 = HIBYTE(v25);
          if (v25 < 0)
          {
            v19 = __p[1];
          }

          if (v19 < a4)
          {
LABEL_25:
            v29[0] = &unk_1F2D5E2B0;
            v29[1] = v27;
            v29[2] = __p;
            v29[3] = v29;
            (*(*v7 + 144))(v7, &v26, v29);
            sub_1B5D75CCC(v29);
          }

          v18 = 0;
        }

        if (SHIBYTE(v25) < 0)
        {
          operator delete(__p[0]);
        }

        if (*(&v28 + 1))
        {
          v20 = v18;
        }

        else
        {
          v20 = 1;
        }
      }

      while ((v20 & 1) == 0);
    }

    result = sub_1B5D75D4C(v27);
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5DB27C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_1B5D75D4C(&a18);
  _Unwind_Resume(a1);
}

__n128 sub_1B5DB280C(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 16 * (v5 - v6) - 1;
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40) + v8;
  if (v7 == v9)
  {
    if (v8 < 0x80)
    {
      v10 = *(a1 + 24);
      v11 = v10 - *a1;
      if (v5 - v6 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *a1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      sub_1B5D051D8(v13);
    }

    *(a1 + 32) = v8 - 128;
    v16 = *v6;
    *(a1 + 8) = v6 + 8;
    sub_1B5D53F00(a1, &v16);
    v6 = *(a1 + 8);
    v9 = *(a1 + 40) + *(a1 + 32);
  }

  v14 = (*&v6[(v9 >> 4) & 0xFFFFFFFFFFFFFF8] + 32 * (v9 & 0x7F));
  result = *a2;
  v14[1].n128_u64[0] = a2[1].n128_u64[0];
  *v14 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  v14[1].n128_u64[1] = a2[1].n128_u64[1];
  ++*(a1 + 40);
  return result;
}

void sub_1B5DB2CF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1B5DB2D2C(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5E310))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1B5DB2D6C(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *(a1 + 8);
  sub_1B5D62618(&__p, *(a1 + 16), *a2);
  v7 = *a3;
  sub_1B5DB280C(v4, &__p);
  if (v6 < 0)
  {
    operator delete(__p.n128_u64[0]);
  }
}

void sub_1B5DB2DC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1B5DB2DEC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D5E2B0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1B5DB2E88(uint64_t a1, uint64_t *a2, char *__s, size_t a4)
{
  v4 = *a2;
  v6 = 0;
  v7 = v4;
  if (sub_1B5D753DC((a1 + 8), __s, &v7, &v6, a4) == -2)
  {
    return -1;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_1B5DB2EEC(uint64_t a1, const void *a2, size_t a3)
{
  v10[5] = *MEMORY[0x1E69E9840];
  v10[0] = (*(*a1 + 104))(a1);
  v10[0] = (*(*a1 + 120))(a1, v10, a2, a3);
  result = (*(*a1 + 112))(a1, v10);
  if (result)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      if (a3 < 0x17)
      {
        v9 = a3;
        if (a3)
        {
          memmove(&__dst, a2, a3);
        }

        *(&__dst + a3) = 0;
        operator new();
      }

      operator new();
    }

    sub_1B5D114C8();
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5DB3100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  sub_1B5D615AC(&a17);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1B5DB3140(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5E290))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5DB3180(uint64_t *a1, int *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 8);
  v9 = a1[3];
  v10 = v9 + v8;
  v11 = a1[1];
  v12 = *(v11 + 23);
  if (v12 < 0)
  {
    v13 = *(v11 + 8);
  }

  else
  {
    v13 = *(v11 + 23);
  }

  v14 = *a3;
  if (v13 < v10)
  {
    std::string::resize(a1[1], v9 + v8, 0);
    v11 = a1[1];
    v9 = a1[3];
    LOBYTE(v12) = *(v11 + 23);
  }

  v15 = v11;
  if ((v12 & 0x80) != 0)
  {
    v15 = *v11;
  }

  if (v8)
  {
    memmove((v15 + v9), v14, v8);
    v11 = a1[1];
    LOBYTE(v12) = *(v11 + 23);
  }

  v16 = *a2;
  if ((v12 & 0x80) != 0)
  {
    v11 = *v11;
  }

  v17 = *(a1[4] + 24);

  return sub_1B5D61690(v17, v16, v11, v10, a4);
}

__n128 sub_1B5DB3268(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D5E230;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

size_t sub_1B5DB3314(uint64_t a1, uint64_t a2, size_t a3, uint64_t a4)
{
  v7 = off_1EE8950B0();
  result = sub_1B5D765E8((v8 + 8), v9, v7, a3);
  v15 = 0;
  if (result)
  {
    v11 = result - 1;
    v12 = (v7 + 8);
    do
    {
      v13 = v11;
      if (a3 >= *v12)
      {
        v14 = *v12;
      }

      else
      {
        v14 = a3;
      }

      result = sub_1B5D61690(*(a4 + 24), *(v12 - 2), a2, v14, &v15);
      if (v15)
      {
        break;
      }

      v11 = v13 - 1;
      v12 += 2;
    }

    while (v13);
  }

  return result;
}

uint64_t sub_1B5DB33C4(uint64_t a1, char *__s, size_t a3, int *a4)
{
  v5 = __s;
  if (a3)
  {
    v7 = *(a1 + 8);
    v8 = *v7;
    goto LABEL_4;
  }

  a3 = strlen(__s);
  v7 = *(a1 + 8);
  v8 = *v7;
  if (a3)
  {
LABEL_4:
    while (1)
    {
      v9 = *v5++;
      v10 = &v7[2 * (v8 + v9 + 1)];
      if (v8 != v10[1])
      {
        return 0;
      }

      v8 = *v10;
      if (!--a3)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    result = 0;
    v12 = &v7[2 * v8];
    if (v8 == v12[1])
    {
      v13 = *v12;
      if (v13 < 0)
      {
        *a4 = ~v13;
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_1B5DB3474(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = a3 >> 3;
  sub_1B5D752BC((a1 + 8));
  *(a1 + 8) = a2;
  *(a1 + 88) = 1;
  *(a1 + 24) = v5;
  return 1;
}

BOOL sub_1B5DB34C0(uint64_t a1, uint64_t *a2, void *a3)
{
  v7 = *a2;
  v6 = a2[1];
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a2) >> 3);
  memset(v23, 0, sizeof(v23));
  __p = 0;
  v21 = 0;
  v22 = 0;
  memset(v19, 0, sizeof(v19));
  sub_1B5D6F85C(v23, v8);
  sub_1B5D6F900(&__p, v8);
  sub_1B5D6F9A0(v19, v8);
  if (v6 == v7)
  {
LABEL_11:
    v15 = v19[0];
    v16 = sub_1B5D769CC((a1 + 8), v8, v23[0], __p, v19[0]) == 0;
    if (!v15)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v9 = 0;
  v10 = 0;
  if (v8 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v8;
  }

  while (1)
  {
    v12 = (*a2 + v9);
    if (*(v12 + 23) < 0)
    {
      v12 = *v12;
    }

    v18 = v12;
    sub_1B5D140B0(v23, &v18);
    v13 = *a2 + v9;
    v14 = *(v13 + 23);
    if ((v14 & 0x8000000000000000) != 0)
    {
      v14 = *(v13 + 8);
    }

    v18 = v14;
    sub_1B5D14180(&__p, &v18);
    LODWORD(v18) = *(*a3 + 4 * v10);
    if ((v18 & 0x80000000) != 0)
    {
      break;
    }

    sub_1B5D0DE58(v19, &v18);
    ++v10;
    v9 += 24;
    if (v11 == v10)
    {
      goto LABEL_11;
    }
  }

  v16 = 0;
  v15 = v19[0];
  if (v19[0])
  {
LABEL_12:
    operator delete(v15);
  }

LABEL_13:
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  if (v23[0])
  {
    operator delete(v23[0]);
  }

  return v16;
}

void sub_1B5DB3648(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1B5DB3688(uint64_t a1, uint64_t **a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2);
  memset(v16, 0, sizeof(v16));
  __p = 0;
  v14 = 0;
  v15 = 0;
  sub_1B5D6F85C(v16, v4);
  sub_1B5D6F900(&__p, v4);
  v6 = *a2;
  v5 = a2[1];
  while (v6 != v5)
  {
    v7 = v6;
    if (*(v6 + 23) < 0)
    {
      v7 = *v6;
    }

    v12 = v7;
    sub_1B5D140B0(v16, &v12);
    v8 = *(v6 + 23);
    if ((v8 & 0x8000000000000000) != 0)
    {
      v8 = v6[1];
    }

    v12 = v8;
    sub_1B5D14180(&__p, &v12);
    v6 += 3;
  }

  v9 = v16[0];
  v10 = sub_1B5D769CC((a1 + 8), v4, v16[0], __p, 0);
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    operator delete(v9);
  }

  return v10 == 0;
}

void sub_1B5DB3790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5DB37D4(void *a1)
{
  *a1 = &unk_1F2D5E170;
  sub_1B5D752BC(a1 + 1);

  JUMPOUT(0x1B8C880F0);
}

void *sub_1B5DB3838(void *a1)
{
  *a1 = &unk_1F2D5E170;
  sub_1B5D752BC(a1 + 1);
  return a1;
}

void *sub_1B5DB387C(void *a1)
{
  *a1 = &unk_1F2D5E330;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = &unk_1F2D56948;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C880C0](v2, 0x1000C8052888210);
    a1[4] = 0;
  }

  return a1;
}

uint64_t sub_1B5DB3900(uint64_t result, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  v29[4] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  if (*a2 != -1)
  {
    v7 = result;
    v28 = 0u;
    memset(v27, 0, sizeof(v27));
    __p[0] = 0;
    __p[1] = 0;
    v25 = 0;
    v26 = v4;
    sub_1B5DB3BD4(v27, __p);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(__p[0]);
    }

    v23 = 0;
    if (*(&v28 + 1))
    {
      do
      {
        v8 = *(&v27[0] + 1);
        v9 = v28;
        v10 = v28 >> 7;
        v11 = v28 & 0x7F;
        v12 = *(*(&v27[0] + 1) + 8 * (v28 >> 7)) + 32 * v11;
        if (*(v12 + 23) < 0)
        {
          sub_1B5CE4AC4(__p, *v12, *(v12 + 8));
          v8 = *(&v27[0] + 1);
          v9 = v28;
          v10 = v28 >> 7;
          v11 = v28 & 0x7F;
        }

        else
        {
          v13 = *v12;
          v25 = *(v12 + 16);
          *__p = v13;
        }

        v26 = *(v12 + 24);
        v14 = *(v8 + 8 * v10) + 32 * v11;
        if (*(v14 + 23) < 0)
        {
          operator delete(*v14);
          v9 = v28;
        }

        v15 = v9 + 1;
        v28 = __PAIR128__(*(&v28 + 1), v15) + __PAIR128__(-1, 0);
        if (v15 >= 0x100)
        {
          operator delete(**(&v27[0] + 1));
          *(&v27[0] + 1) += 8;
          *&v28 = v28 - 128;
        }

        v22 = 0;
        if (*(*v7 + 128))(v7, &v26, &v22) && (v25 >= 0 ? (v16 = __p) : (v16 = __p[0]), v25 >= 0 ? (v17 = HIBYTE(v25)) : (v17 = __p[1]), sub_1B5D61690(*(a3 + 24), v22, v16, v17, &v23), (v23))
        {
          v18 = 1;
        }

        else
        {
          if ((a4 & 0x80000000) != 0)
          {
            goto LABEL_25;
          }

          v19 = HIBYTE(v25);
          if (v25 < 0)
          {
            v19 = __p[1];
          }

          if (v19 < a4)
          {
LABEL_25:
            v29[0] = &unk_1F2D5E470;
            v29[1] = v27;
            v29[2] = __p;
            v29[3] = v29;
            (*(*v7 + 144))(v7, &v26, v29);
            sub_1B5D6ECA0(v29);
          }

          v18 = 0;
        }

        if (SHIBYTE(v25) < 0)
        {
          operator delete(__p[0]);
        }

        if (*(&v28 + 1))
        {
          v20 = v18;
        }

        else
        {
          v20 = 1;
        }
      }

      while ((v20 & 1) == 0);
    }

    result = sub_1B5D75D4C(v27);
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5DB3B90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_1B5D75D4C(&a18);
  _Unwind_Resume(a1);
}

__n128 sub_1B5DB3BD4(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 16 * (v5 - v6) - 1;
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40) + v8;
  if (v7 == v9)
  {
    if (v8 < 0x80)
    {
      v10 = *(a1 + 24);
      v11 = v10 - *a1;
      if (v5 - v6 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *a1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      sub_1B5D051D8(v13);
    }

    *(a1 + 32) = v8 - 128;
    v16 = *v6;
    *(a1 + 8) = v6 + 8;
    sub_1B5D53F00(a1, &v16);
    v6 = *(a1 + 8);
    v9 = *(a1 + 40) + *(a1 + 32);
  }

  v14 = (*&v6[(v9 >> 4) & 0xFFFFFFFFFFFFFF8] + 32 * (v9 & 0x7F));
  result = *a2;
  v14[1].n128_u64[0] = a2[1].n128_u64[0];
  *v14 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  v14[1].n128_u64[1] = a2[1].n128_u64[1];
  ++*(a1 + 40);
  return result;
}

void sub_1B5DB40B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1B5DB40F4(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5E4D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1B5DB4134(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *(a1 + 8);
  sub_1B5D62618(&__p, *(a1 + 16), *a2);
  v7 = *a3;
  sub_1B5DB3BD4(v4, &__p);
  if (v6 < 0)
  {
    operator delete(__p.n128_u64[0]);
  }
}

void sub_1B5DB4190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1B5DB41B4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D5E470;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1B5DB4250(uint64_t a1, uint64_t *a2, _BYTE *a3, uint64_t a4)
{
  result = *a2;
  v6 = *(a1 + 24);
  v7 = *(v6 + 4 * *a2);
  if (a4)
  {
    while (1)
    {
      v8 = *a3++;
      result = result ^ (v7 >> 10 << ((v7 >> 6) & 8)) ^ v8;
      v7 = *(v6 + 4 * result);
      if ((v7 & 0x800000FF) != v8)
      {
        break;
      }

      if (!--a4)
      {
        return result;
      }
    }

    return -1;
  }

  v9 = *a3;
  if (*a3)
  {
    v10 = a3 + 1;
    while (1)
    {
      result = result ^ v9 ^ (v7 >> 10 << ((v7 >> 6) & 8));
      v7 = *(v6 + 4 * result);
      if ((v7 & 0x800000FF) != v9)
      {
        break;
      }

      v11 = *v10++;
      v9 = v11;
      if (!v11)
      {
        return result;
      }
    }

    return -1;
  }

  return result;
}

uint64_t sub_1B5DB42FC(uint64_t a1, const void *a2, size_t a3)
{
  v10[5] = *MEMORY[0x1E69E9840];
  v10[0] = (*(*a1 + 104))(a1);
  v10[0] = (*(*a1 + 120))(a1, v10, a2, a3);
  result = (*(*a1 + 112))(a1, v10);
  if (result)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      if (a3 < 0x17)
      {
        v9 = a3;
        if (a3)
        {
          memmove(&__dst, a2, a3);
        }

        *(&__dst + a3) = 0;
        operator new();
      }

      operator new();
    }

    sub_1B5D114C8();
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5DB4510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  sub_1B5D615AC(&a17);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1B5DB4550(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5E450))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5DB4590(uint64_t *a1, int *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 8);
  v9 = a1[3];
  v10 = v9 + v8;
  v11 = a1[1];
  v12 = *(v11 + 23);
  if (v12 < 0)
  {
    v13 = *(v11 + 8);
  }

  else
  {
    v13 = *(v11 + 23);
  }

  v14 = *a3;
  if (v13 < v10)
  {
    std::string::resize(a1[1], v9 + v8, 0);
    v11 = a1[1];
    v9 = a1[3];
    LOBYTE(v12) = *(v11 + 23);
  }

  v15 = v11;
  if ((v12 & 0x80) != 0)
  {
    v15 = *v11;
  }

  if (v8)
  {
    memmove((v15 + v9), v14, v8);
    v11 = a1[1];
    LOBYTE(v12) = *(v11 + 23);
  }

  v16 = *a2;
  if ((v12 & 0x80) != 0)
  {
    v11 = *v11;
  }

  v17 = *(a1[4] + 24);

  return sub_1B5D61690(v17, v16, v11, v10, a4);
}

__n128 sub_1B5DB4678(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D5E3F0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1B5DB4724(uint64_t a1, _BYTE *a2, unint64_t a3, uint64_t a4)
{
  result = off_1EE8950C8();
  v9 = *(v8 + 24);
  v10 = (*v9 >> 10 << ((*v9 >> 6) & 8));
  if (v11)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = a2[v12];
      v15 = v10 ^ v14;
      v16 = v9[v15];
      if ((v16 & 0x800000FF) != v14)
      {
        break;
      }

      v10 = v15 ^ (v16 >> 10 << ((v16 >> 6) & 8));
      if ((v16 & 0x100) != 0)
      {
        if (v13 <= 0x7F)
        {
          v17 = result + 16 * v13;
          *v17 = v9[v10] & 0x7FFFFFFF;
          *(v17 + 8) = v12 + 1;
        }

        ++v13;
      }

      ++v12;
    }

    while (a3 != v12);
  }

  else
  {
    v18 = *a2;
    if (!*a2)
    {
      return result;
    }

    v13 = 0;
    v19 = 1;
    do
    {
      v20 = v10 ^ v18;
      v21 = v9[v20];
      if ((v21 & 0x800000FF) != v18)
      {
        break;
      }

      v10 = v20 ^ (v21 >> 10 << ((v21 >> 6) & 8));
      if ((v21 & 0x100) != 0)
      {
        if (v13 <= 0x7F)
        {
          v22 = result + 16 * v13;
          *v22 = v9[v10] & 0x7FFFFFFF;
          *(v22 + 8) = v19;
        }

        ++v13;
      }

      v18 = a2[v19++];
    }

    while (v18);
  }

  v27 = 0;
  if (v13)
  {
    v23 = v13 - 1;
    v24 = (result + 8);
    do
    {
      v25 = v23;
      if (a3 >= *v24)
      {
        v26 = *v24;
      }

      else
      {
        v26 = a3;
      }

      result = sub_1B5D61690(*(a4 + 24), *(v24 - 2), a2, v26, &v27);
      if (v27)
      {
        break;
      }

      v23 = v25 - 1;
      v24 += 2;
    }

    while (v25);
  }

  return result;
}

BOOL sub_1B5DB48B4(uint64_t a1, _BYTE *a2, uint64_t a3, int *a4)
{
  v4 = *(a1 + 24);
  v5 = *v4;
  if (a3)
  {
    v6 = 0;
    while (1)
    {
      v7 = *a2++;
      v6 ^= (v5 >> 10 << ((v5 >> 6) & 8)) ^ v7;
      v5 = v4[v6];
      if ((v5 & 0x800000FF) != v7)
      {
        break;
      }

      if (!--a3)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v8 = *a2;
    if (*a2)
    {
      v6 = 0;
      v9 = a2 + 1;
      while (1)
      {
        v6 ^= (v5 >> 10 << ((v5 >> 6) & 8)) ^ v8;
        v5 = v4[v6];
        if ((v5 & 0x800000FF) != v8)
        {
          break;
        }

        v10 = *v9++;
        v8 = v10;
        if (!v10)
        {
LABEL_10:
          if ((v5 & 0x100) != 0)
          {
            goto LABEL_13;
          }

          break;
        }
      }
    }

    else
    {
      v6 = 0;
      if ((v5 & 0x100) != 0)
      {
LABEL_13:
        v11 = v4[v6 ^ (v5 >> 10 << ((v5 >> 6) & 8))] & 0x7FFFFFFF;
        goto LABEL_14;
      }
    }
  }

  v11 = -1;
LABEL_14:
  *a4 = v11;
  return v11 != -1;
}

uint64_t sub_1B5DB497C(void *a1, uint64_t a2, uint64_t a3)
{
  a1[2] = 0;
  a1[3] = 0;
  v6 = a1[4];
  if (v6)
  {
    MEMORY[0x1B8C880C0](v6, 0x1000C8052888210);
    a1[4] = 0;
  }

  a1[2] = a3;
  a1[3] = a2;
  return 1;
}

void sub_1B5DB49D8(uint64_t a1, uint64_t *a2, void *a3)
{
  v7 = *a2;
  v6 = a2[1];
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a2) >> 3);
  memset(v18, 0, sizeof(v18));
  memset(__p, 0, sizeof(__p));
  memset(v16, 0, sizeof(v16));
  sub_1B5D6F85C(v18, v8);
  sub_1B5D6F900(__p, v8);
  sub_1B5D6F9A0(v16, v8);
  if (v6 != v7)
  {
    v9 = 0;
    v10 = 0;
    if (v8 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v8;
    }

    do
    {
      v12 = (*a2 + v9);
      if (*(v12 + 23) < 0)
      {
        v12 = *v12;
      }

      v15 = v12;
      sub_1B5D140B0(v18, &v15);
      v13 = *a2 + v9;
      v14 = *(v13 + 23);
      if ((v14 & 0x8000000000000000) != 0)
      {
        v14 = *(v13 + 8);
      }

      v15 = v14;
      sub_1B5D14180(__p, &v15);
      LODWORD(v15) = *(*a3 + 4 * v10);
      sub_1B5D0DE58(v16, &v15);
      ++v10;
      v9 += 24;
    }

    while (v11 != v10);
  }

  sub_1B5D6FA44(a1 + 8, v8, v18[0], __p[0], v16[0]);
}

void sub_1B5DB4B48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5DB4B88(uint64_t a1, uint64_t **a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2);
  memset(v11, 0, sizeof(v11));
  memset(__p, 0, sizeof(__p));
  sub_1B5D6F85C(v11, v4);
  sub_1B5D6F900(__p, v4);
  v6 = *a2;
  v5 = a2[1];
  while (v6 != v5)
  {
    v7 = v6;
    if (*(v6 + 23) < 0)
    {
      v7 = *v6;
    }

    v9 = v7;
    sub_1B5D140B0(v11, &v9);
    v8 = *(v6 + 23);
    if ((v8 & 0x8000000000000000) != 0)
    {
      v8 = v6[1];
    }

    v9 = v8;
    sub_1B5D14180(__p, &v9);
    v6 += 3;
  }

  sub_1B5D6FA44(a1 + 8, v4, v11[0], __p[0], 0);
}

void sub_1B5DB4C88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5DB4CC8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a5)
  {
    v9 = a5;
    memset(v13, 0, sizeof(v13));
    sub_1B5D6F9A0(v13, a2);
    if (a2)
    {
      v10 = a2;
      do
      {
        v11 = *v9++;
        v12 = v11;
        sub_1B5D0DE58(v13, &v12);
        --v10;
      }

      while (v10);
    }

    sub_1B5D6FA44(a1 + 8, a2, a3, a4, v13[0]);
  }

  sub_1B5D6FA44(a1 + 8, a2, a3, a4, 0);
}

void sub_1B5DB4D90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5DB4DAC(void *a1)
{
  sub_1B5DB387C(a1);

  JUMPOUT(0x1B8C880F0);
}

void *sub_1B5DB4DE8(void *a1)
{
  *a1 = &unk_1F2D5E4F0;
  sub_1B5DB4E34((a1 + 1), 0);
  return a1;
}

void sub_1B5DB4E34(uint64_t a1, int a2)
{
  if (*(a1 + 76))
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  else
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      free(v4);
    }
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    free(v5);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    free(v6);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    free(v7);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    free(v8);
  }

  *(a1 + 72) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  if (a2)
  {
    sub_1B5DB4ECC(a1);
  }

  *(a1 + 76) = 0;
}

int64x2_t sub_1B5DB4ECC(uint64_t a1)
{
  sub_1B5DB512C((a1 + 8), 256, 256);
  sub_1B5D63394((a1 + 16), 4, 0);
  sub_1B5D6346C((a1 + 24), 1, 0);
  sub_1B5DB5284((a1 + 32), 256, 0);
  sub_1B5DB549C((a1 + 40), 1, 0);
  v2 = 0;
  **(a1 + 8) = 0xFFFFFFFF00000000;
  v3 = 0xFFFFFFFE00000000;
  for (i = 8; i != 2048; i += 8)
  {
    v5 = v2;
    if (i == 2040)
    {
      v6 = 0xFFFFFFFF00000000;
    }

    else
    {
      v6 = v3;
    }

    if (!v2)
    {
      v5 = 4294967041;
    }

    *(*(a1 + 8) + i) = v6 | v5;
    v3 -= 0x100000000;
    --v2;
  }

  *(a1 + 60) = 0x10000000100;
  *(*(a1 + 40) + 16) = 1;
  **(a1 + 16) = 4;
  *(a1 + 68) = 0x100000004;
  *a1 = 0;
  result = xmmword_1B5DC3A50;
  v8 = xmmword_1B5DC3A60;
  v9 = xmmword_1B5DC2640;
  v10 = xmmword_1B5DC2630;
  v11 = (a1 + 94);
  v12 = 264;
  v13 = vdupq_n_s64(0x101uLL);
  v14 = vdupq_n_s64(8uLL);
  do
  {
    v15 = vdupq_n_s64(1uLL);
    v16 = vaddq_s64(v10, v15);
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v13, v10)), *result.i8), *result.i8).u8[0])
    {
      *(v11 - 7) = v16.i16[0];
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x101uLL), *&v10)), *&result), *&result).i8[1])
    {
      *(v11 - 6) = v16.i16[4];
    }

    v17 = vaddq_s64(v9, v15);
    if (vuzp1_s8(vuzp1_s16(*&result, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x101uLL), *&v9))), *&result).i8[2])
    {
      *(v11 - 5) = v17.i16[0];
      *(v11 - 4) = v17.i16[4];
    }

    v18 = vaddq_s64(v8, v15);
    if (vuzp1_s8(*&result, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x101uLL), *&v8)), *&result)).i32[1])
    {
      *(v11 - 3) = v18.i16[0];
    }

    if (vuzp1_s8(*&result, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x101uLL), *&v8)), *&result)).i8[5])
    {
      *(v11 - 2) = v18.i16[4];
    }

    v19 = vaddq_s64(result, v15);
    if (vuzp1_s8(*&result, vuzp1_s16(*&result, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x101uLL), *&result)))).i8[6])
    {
      *(v11 - 1) = v19.i16[0];
      *v11 = v19.i16[4];
    }

    v8 = vaddq_s64(v8, v14);
    v9 = vaddq_s64(v9, v14);
    v10 = vaddq_s64(v10, v14);
    v11 += 8;
    result = vaddq_s64(result, v14);
    v12 -= 8;
  }

  while (v12);
  return result;
}

void sub_1B5DB512C(void **a1, int a2, int a3)
{
  v6 = 8 * a2;
  v7 = malloc_type_realloc(*a1, v6, 0x100004000313F17uLL);
  if (!v7)
  {
    free(*a1);
    fprintf(*MEMORY[0x1E69E9848], "cedar: %s [%d]: %s", "/AppleInternal/Library/BuildRoots/4~B_v4ugAaKm1SvYqNR_j_WeNVO3EdPp1fUmfDZDE/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/trie/cedarpp.h", 770, "memory reallocation failed\n");
    exit(1);
  }

  *a1 = v7;
  if ((atomic_load_explicit(&qword_1EB90CD00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EB90CD00))
  {
    qword_1EB90CCF8 = 0;
    __cxa_guard_release(&qword_1EB90CD00);
  }

  if (a3 != a2)
  {
    v8 = 0;
    v9 = qword_1EB90CCF8;
    v10 = (v6 - 8 * a3 - 8) >> 3;
    v11 = vdupq_n_s64(v10);
    v12 = (*a1 + 8 * a3 + 8);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v8), xmmword_1B5DC2630)));
      if (v13.i8[0])
      {
        *(v12 - 1) = v9;
      }

      if (v13.i8[4])
      {
        *v12 = v9;
      }

      v8 += 2;
      v12 += 2;
    }

    while (((v10 + 2) & 0x3FFFFFFFFFFFFFFELL) != v8);
  }
}

void sub_1B5DB5284(void **a1, int a2, int a3)
{
  v6 = 2 * a2;
  v7 = malloc_type_realloc(*a1, v6, 0x1000040BDFB0063uLL);
  if (!v7)
  {
    free(*a1);
    fprintf(*MEMORY[0x1E69E9848], "cedar: %s [%d]: %s", "/AppleInternal/Library/BuildRoots/4~B_v4ugAaKm1SvYqNR_j_WeNVO3EdPp1fUmfDZDE/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/trie/cedarpp.h", 770, "memory reallocation failed\n");
    exit(1);
  }

  *a1 = v7;
  if ((atomic_load_explicit(&qword_1EB90CD10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EB90CD10))
  {
    word_1EB90CD08 = 0;
    __cxa_guard_release(&qword_1EB90CD10);
  }

  if (a3 != a2)
  {
    v8 = 0;
    v9 = word_1EB90CD08;
    v10 = (v6 - 2 * a3 - 2) >> 1;
    v11 = vdupq_n_s64(v10);
    v12 = (v10 & 0x7FFFFFFFFFFFFFF8) + 8;
    v13 = (*a1 + 2 * a3 + 8);
    do
    {
      v14 = vdupq_n_s64(v8);
      v15 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v14, xmmword_1B5DC2630)));
      if (vuzp1_s8(vuzp1_s16(v15, *v11.i8), *v11.i8).u8[0])
      {
        *(v13 - 4) = v9;
      }

      if (vuzp1_s8(vuzp1_s16(v15, *&v11), *&v11).i8[1])
      {
        *(v13 - 3) = v9;
      }

      if (vuzp1_s8(vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v14, xmmword_1B5DC2640)))), *&v11).i8[2])
      {
        *(v13 - 2) = v9;
        *(v13 - 1) = v9;
      }

      v16 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v14, xmmword_1B5DC3A60)));
      if (vuzp1_s8(*&v11, vuzp1_s16(v16, *&v11)).i32[1])
      {
        *v13 = v9;
      }

      if (vuzp1_s8(*&v11, vuzp1_s16(v16, *&v11)).i8[5])
      {
        v13[1] = v9;
      }

      if (vuzp1_s8(*&v11, vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v14, xmmword_1B5DC3A50))))).i8[6])
      {
        v13[2] = v9;
        v13[3] = v9;
      }

      v8 += 8;
      v13 += 8;
    }

    while (v12 != v8);
  }
}

__n128 sub_1B5DB549C(void **a1, int a2, int a3)
{
  v6 = malloc_type_realloc(*a1, 20 * a2, 0x1000040A86A77D5uLL);
  if (!v6)
  {
    free(*a1);
    fprintf(*MEMORY[0x1E69E9848], "cedar: %s [%d]: %s", "/AppleInternal/Library/BuildRoots/4~B_v4ugAaKm1SvYqNR_j_WeNVO3EdPp1fUmfDZDE/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/trie/cedarpp.h", 770, "memory reallocation failed\n");
    exit(1);
  }

  *a1 = v6;
  if ((atomic_load_explicit(&qword_1EB90CD30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EB90CD30))
  {
    *&xmmword_1EB90CD18 = 0;
    DWORD2(xmmword_1EB90CD18) = 16843008;
    *(&xmmword_1EB90CD18 + 12) = 0;
    __cxa_guard_release(&qword_1EB90CD30);
  }

  if (a3 != a2)
  {
    v8 = (*a1 + 20 * a3);
    v9 = 20 * a2 - 20 * a3;
    do
    {
      result = xmmword_1EB90CD18;
      v8[1].n128_u32[0] = dword_1EB90CD28;
      *v8 = result;
      v8 = (v8 + 20);
      v9 -= 20;
    }

    while (v9);
  }

  return result;
}

BOOL sub_1B5DB55E4(uint64_t a1, unsigned __int8 *a2, unint64_t a3, _DWORD *a4)
{
  if (a3)
  {
    v56 = 0;
    if (!*(a1 + 40) || !*(a1 + 48))
    {
      sub_1B5DB59C8(a1 + 8);
    }

    v8 = **(a1 + 16);
    if ((v8 & 0x80000000) == 0)
    {
      v9 = 0;
      v10 = a2;
      while (-a3 != v9)
      {
        v11 = sub_1B5DB5C08(a1 + 8, &v56, v10);
        v12 = v11;
        v56 = v11;
        v8 = *(*(a1 + 16) + 8 * v11);
        --v9;
        ++v10;
        if (v8 < 0)
        {
          v13 = -v9;
          goto LABEL_11;
        }
      }

      v62 = 0;
      v19 = a1 + 8;
      v20 = &v62;
      goto LABEL_34;
    }

    v12 = 0;
    v13 = 0;
LABEL_11:
    v14 = -v8;
    if (v14 >= 4)
    {
      v15 = (*(a1 + 24) + v14);
      v16 = &v15[-v13];
      v17 = v13;
      if (v13 < a3)
      {
        v17 = v13;
        while (1)
        {
          v18 = *v15++;
          if (a2[v17] != v18)
          {
            break;
          }

          if (a3 == ++v17)
          {
            goto LABEL_19;
          }
        }
      }

      if (v17 == a3)
      {
LABEL_19:
        v21 = &v16[a3];
        v17 = a3;
        if (!v16[a3])
        {
          goto LABEL_51;
        }
      }

      v55 = a4;
      if (HIDWORD(v12))
      {
        v56 = v12;
        v22 = *(*(a1 + 16) + 8 * v12);
        v23 = -v22;
        if (v14 > -v22)
        {
          do
          {
            v61 = *(*(a1 + 24) + v23);
            v56 = sub_1B5DB5C08(a1 + 8, &v56, &v61);
            ++v23;
          }

          while (v14 != v23);
        }
      }

      v24 = v17 - v13;
      if (v17 > v13)
      {
        v25 = &a2[v13];
        v26 = v24;
        do
        {
          v27 = *v25++;
          v60 = v27;
          v56 = sub_1B5DB5C08(a1 + 8, &v56, &v60);
          --v26;
        }

        while (v26);
      }

      v28 = &v16[v17];
      if (v16[v17])
      {
        v59 = v16[v17];
        *(*(a1 + 16) + 8 * sub_1B5DB5C08(a1 + 8, &v56, &v59)) = v8 + ~v24;
        v24 -= 4;
      }

      v29 = __CFADD__(v24, v14);
      v30 = v24 + v14;
      a4 = v55;
      if (!v29)
      {
        do
        {
          v31 = *(a1 + 80);
          v32 = *(a1 + 32);
          v33 = *v32 + 1;
          *v32 = v33;
          if (v31 == v33)
          {
            v34 = 2 * *(a1 + 80);
            *(a1 + 80) = v34;
            sub_1B5D6346C((a1 + 32), v34, **(a1 + 32));
          }

          *(*(a1 + 32) + 4 * **(a1 + 32)) = v14;
          v14 += 5;
        }

        while (v14 <= v30);
      }

      if (v17 == a3)
      {
        v58 = 0;
        v19 = a1 + 8;
        v20 = &v58;
LABEL_34:
        v35 = (*(a1 + 16) + 8 * sub_1B5DB5C08(v19, &v56, v20));
LABEL_52:
        *v35 = *a4;
        return a3 != 0;
      }

      if (!*v28)
      {
        v58 = 0;
        v36 = sub_1B5DB5C08(a1 + 8, &v56, &v58);
        *(*(a1 + 16) + 8 * v36) += *(v28 + 1);
      }

      v57 = a2[v17];
      v12 = sub_1B5DB5C08(a1 + 8, &v56, &v57);
      v13 = v17 + 1;
    }

    v37 = a3 - v13;
    if (a3 == v13)
    {
      v38 = *(a1 + 32);
      v39 = *v38;
      if (v39)
      {
        v40 = v38[v39];
        *(*(a1 + 24) + v40) = 0;
        *(*(a1 + 16) + 8 * v12) = -v40;
        --**(a1 + 32);
        v41 = *(a1 + 24) + v40;
        *(v41 + 1) = 0;
        v35 = (v41 + 1);
        goto LABEL_52;
      }
    }

    v42 = v37 + 5;
    v44 = (a1 + 24);
    v43 = *(a1 + 24);
    v45 = *(a1 + 76);
    v46 = *v43;
    if (v45 < *v43 + v37 + 5)
    {
      if (v45 <= v42)
      {
        v47 = v37 + 5;
      }

      else
      {
        v47 = *(a1 + 76);
      }

      *(a1 + 76) = v47 + v45;
      sub_1B5D63394((a1 + 24), v47 + v45, *v43);
      v46 = **(a1 + 24);
    }

    *(*(a1 + 16) + 8 * v12) = -v46;
    v48 = *(a1 + 24);
    v49 = *v48;
    v50 = v48 + v49;
    v51 = v48 + v49 - v13;
    if (a3 > v13)
    {
      v52 = &a2[v13];
      do
      {
        v53 = *v52++;
        *v50++ = v53;
        --v37;
      }

      while (v37);
      v48 = *v44;
      LODWORD(v49) = **v44;
    }

    *v48 = v49 + v42;
    v21 = &v51[a3];
LABEL_51:
    v35 = v21 + 1;
    goto LABEL_52;
  }

  return a3 != 0;
}

void sub_1B5DB59C8(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = (a1 + 40);
  if (!v3)
  {
    sub_1B5DB549C(v2, *(a1 + 64) >> 8, 0);
    *(a1 + 56) = 0;
    *(a1 + 52) = 0;
    *(a1 + 48) = 0;
    if (*(a1 + 64) >= 1)
    {
      v4 = 0;
      v5 = 0;
      v6 = *(a1 + 40);
      v7 = 256;
      while (1)
      {
        v8 = (v6 + 20 * v4);
        *(v8 + 4) = 0;
        if (v5 >= (v4 << 8) + 256)
        {
          break;
        }

        v9 = 0;
        v10 = v5;
        v11 = (*(a1 + 8) + 8 * v5 + 4);
        do
        {
          v12 = *v11;
          v11 += 2;
          if (v12 < 0)
          {
            v15 = v9++ == 0;
            *(v8 + 4) = v9;
            if (v15)
            {
              v8[4] = v5;
              v9 = 1;
            }
          }

          ++v10;
          LODWORD(v5) = v5 + 1;
        }

        while (v7 != v10);
        if (v9)
        {
          v13 = (a1 + 56);
        }

        else
        {
          v13 = (a1 + 48);
        }

        if (v9 == 1)
        {
          v13 = (a1 + 52);
        }

        v14 = *v13;
        if (*v13)
        {
          v15 = 1;
        }

        else
        {
          v15 = v9 == 0;
        }

        if (v15)
        {
          v5 = v10;
LABEL_23:
          v16 = (v6 + 20 * v14);
          v17 = *v16;
          *v8 = *v16;
          v8[1] = *v13;
          v18 = (v6 + 20 * v17 + 4);
          v10 = v5;
          v8 = v16;
          goto LABEL_24;
        }

        v18 = v8 + 1;
LABEL_24:
        *v18 = v4;
        *v8 = v4;
        *v13 = v4++;
        v7 += 256;
        v5 = v10;
        if (v10 >= *(a1 + 64))
        {
          goto LABEL_25;
        }
      }

      v14 = *(a1 + 48);
      v13 = (a1 + 48);
      goto LABEL_23;
    }
  }

LABEL_25:
  v19 = (a1 + 32);
  v20 = *(a1 + 64);
  if (!*(a1 + 32))
  {
    sub_1B5DB5284((a1 + 32), v20, 0);
    v20 = *(a1 + 64);
    if (v20 >= 1)
    {
      for (i = 0; i < v20; ++i)
      {
        v22 = *(a1 + 8);
        v23 = *(v22 + 8 * i + 4);
        if ((v23 & 0x80000000) == 0)
        {
          v24 = *(v22 + 8 * v23);
          v25 = (v24 ^ i);
          if (v24 != i)
          {
            v26 = *v19;
            v27 = *v19 + 2 * v23;
            v30 = *(v27 + 1);
            v29 = (v27 + 1);
            v28 = v30;
            if (v23)
            {
              v31 = v28 == 0;
            }

            else
            {
              v31 = 0;
            }

            if (!v31 || (v28 = 0, *(v22 + 8 * v24 + 4) == v23))
            {
              if (v28 < v25)
              {
                do
                {
                  v32 = v24 ^ v28;
                  v28 = *(v26 + 2 * (v24 ^ v28));
                  if (*(v26 + 2 * v32))
                  {
                    v33 = v28 >= v25;
                  }

                  else
                  {
                    v33 = 1;
                  }
                }

                while (!v33);
                v29 = (v26 + 2 * v32);
              }
            }

            *(v26 + 2 * ((v24 ^ i) ^ v24)) = v28;
            *v29 = v25;
            v20 = *(a1 + 64);
          }
        }
      }
    }
  }

  *(a1 + 60) = v20;
  *(a1 + 68) = **(a1 + 16);
  *(a1 + 72) = 1;
}

uint64_t sub_1B5DB5C08(uint64_t a1, uint64_t *a2, unsigned __int8 *a3)
{
  v92 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 8);
  v7 = *a2;
  v8 = *(v6 + 8 * *a2);
  v9 = *a3;
  if (v8 < 0 || (v10 = v8 ^ v9, v11 = *(v6 + 8 * v10 + 4), (v11 & 0x80000000) != 0))
  {
    result = sub_1B5DB61C8(a1, *(v6 + 8 * *a2), *a3, v7);
    v22 = *a3;
    v23 = *(a1 + 32);
    v24 = v23 + 2 * *a2;
    v27 = *(v24 + 1);
    v26 = (v24 + 1);
    v25 = v27;
    if ((v8 & 0x80000000) == 0 && v25 < v22)
    {
      do
      {
        v28 = result ^ v25 ^ v22;
        v25 = *(v23 + 2 * v28);
        if (*(v23 + 2 * v28))
        {
          v29 = v25 >= v22;
        }

        else
        {
          v29 = 1;
        }
      }

      while (!v29);
      v26 = (v23 + 2 * v28);
    }

    *(v23 + 2 * result) = v25;
    *v26 = v22;
  }

  else
  {
    result = v8 ^ v9;
    if (v11 != v7)
    {
      v13 = *(v6 + 8 * v11);
      v14 = *(a1 + 32);
      v15 = *(v14 + 2 * v7 + 1);
      LOBYTE(v16) = v15;
      LOBYTE(v17) = *(v14 + 2 * v11 + 1);
      while (1)
      {
        v18 = 2 * (v13 ^ v17);
        v17 = *(v14 + v18);
        if (!*(v14 + v18))
        {
          break;
        }

        v16 = *(v14 + 2 * (v8 ^ v16));
        if (!v16)
        {
          v19 = a1;
          v20 = *(v6 + 8 * *a2);
          v21 = v9;
          goto LABEL_18;
        }
      }

      v19 = a1;
      v20 = *(v6 + 8 * v11);
      v15 = *(v14 + 2 * v11 + 1);
      v21 = -1;
LABEL_18:
      v30 = sub_1B5D645A4(v19, v91, v20, v15, v21);
      v31 = v30;
      if (v91 == v30)
      {
        v40 = sub_1B5DB62E4(a1);
      }

      else
      {
        v32 = *(a1 + 56);
        if (v32)
        {
          v33 = *(*(a1 + 40) + 20 * v32);
          v34 = (v30 - v91 + 1);
          v35 = a1 + 80;
          v88 = v33;
          do
          {
            v36 = *(a1 + 40);
            v37 = v36 + 20 * v32;
            v38 = *(v37 + 8);
            if (v38 >= v34 && v34 < *(v37 + 10))
            {
              v39 = *(a1 + 8);
              v40 = *(v37 + 16);
              do
              {
                v41 = v91;
                while (1)
                {
                  v42 = *++v41;
                  if ((*(v39 + 8 * (v40 ^ v91[0] ^ v42) + 4) & 0x80000000) == 0)
                  {
                    break;
                  }

                  if (v41 == v31)
                  {
                    *(v37 + 16) = v40;
                    goto LABEL_37;
                  }
                }

                v43 = *(v39 + 8 * v40 + 4);
                v40 = -v43;
              }

              while (*(v37 + 16) + v43);
            }

            *(v37 + 10) = v34;
            if (v34 < *(v35 + 2 * v38))
            {
              *(v35 + 2 * v38) = v34;
            }

            v44 = *(v37 + 4);
            v45 = *(v37 + 12);
            *(v37 + 12) = v45 + 1;
            if (!v45)
            {
              sub_1B5D64668(v36, v32, (a1 + 56), (a1 + 52));
              v35 = a1 + 80;
              v33 = v88;
            }

            v46 = v32 == v33;
            v32 = v44;
          }

          while (!v46);
        }

        v40 = sub_1B5DB6328(a1) << 8;
LABEL_37:
        v10 = v8 ^ v9;
      }

      v47 = v40 ^ v91[0];
      if (v17)
      {
        v48 = v8;
      }

      else
      {
        v48 = v13;
      }

      v90 = v48;
      if (v17)
      {
        v49 = *a2;
      }

      else
      {
        v49 = v11;
      }

      if (v17 && v91[0] == v9)
      {
        *(*(a1 + 32) + 2 * *a2 + 1) = v9;
      }

      *(*(a1 + 8) + 8 * v49) = v47;
      v50 = a2;
      if (v91 <= v31)
      {
        if (v9)
        {
          v51 = -1;
        }

        else
        {
          v51 = 0;
        }

        v85 = v51;
        v86 = v48 >> 8;
        v52 = v91;
        v84 = 2 * v10;
        v89 = v49;
        while (1)
        {
          v53 = sub_1B5DB61C8(a1, v47, *v52, v49);
          if (v52 == v31)
          {
            v54 = 0;
          }

          else
          {
            v54 = v52[1];
          }

          v55 = v90 ^ *v52;
          *(*(a1 + 32) + 2 * v53) = v54;
          if (v17 && v55 == v10)
          {
            goto LABEL_89;
          }

          v56 = v47;
          v57 = v10;
          v58 = *(a1 + 8);
          v59 = (v58 + 8 * v53);
          v60 = v55;
          v61 = (v58 + 8 * v55);
          v62 = *v61;
          *v59 = *v61;
          if (v62 >= 1 && *v52)
          {
            v63 = *(a1 + 32);
            v64 = *(v63 + 2 * v55 + 1);
            *(v63 + 2 * v53 + 1) = v64;
            v65 = *(a1 + 8);
            v66 = *v59;
            do
            {
              *(v65 + 8 * (v66 ^ v64) + 4) = v53;
              v66 = *v59;
              v64 = *(v63 + 2 * (*v59 ^ v64));
            }

            while (v64);
          }

          v67 = *v50;
          if (!v17 && v55 == v67)
          {
            *v50 = v53;
            v67 = v53;
          }

          v68 = v17 == 0;
          if (v55 != v57)
          {
            v68 = 0;
          }

          if (!v68)
          {
            break;
          }

          v69 = *(a1 + 32);
          v70 = v69 + 2 * v67;
          v73 = *(v70 + 1);
          v72 = (v70 + 1);
          LOBYTE(v71) = v73;
          if (v73 < v9)
          {
            do
            {
              v74 = v8 ^ v71;
              v71 = *(v69 + 2 * v74);
              if (*(v69 + 2 * v74))
              {
                v75 = v71 >= v9;
              }

              else
              {
                v75 = 1;
              }
            }

            while (!v75);
            v72 = (v69 + 2 * v74);
          }

          *(v69 + v84) = v71;
          *v72 = v9;
          *(*(a1 + 32) + 2 * v60 + 1) = 0;
          *v61 = v85;
          v61[1] = *v50;
LABEL_88:
          v10 = v57;
          v47 = v56;
          v49 = v89;
LABEL_89:
          if (++v52 > v31)
          {
            goto LABEL_90;
          }
        }

        v76 = *(a1 + 40) + 20 * v86;
        v77 = *(v76 + 8);
        *(v76 + 8) = v77 + 1;
        if (!v77)
        {
          *(v76 + 16) = v55;
          *(*(a1 + 8) + 8 * v55) = -v55 | (-v55 << 32);
          if (v90 >= 0x100)
          {
            sub_1B5D64668(*(a1 + 40), v86, (a1 + 48), (a1 + 52));
          }

          goto LABEL_85;
        }

        v78 = *(v76 + 16);
        v79 = *(a1 + 8);
        v80 = *(v79 + 8 * v78 + 4);
        *(v79 + 8 * v55) = -v78 | (v80 << 32);
        v81 = -v55;
        *(*(a1 + 8) + 8 * -v80) = v81;
        *(*(a1 + 8) + 8 * v78 + 4) = v81;
        if (*(v76 + 8) == 2)
        {
          if (v90 < 0x100)
          {
            goto LABEL_84;
          }
        }

        else if (v90 < 0x100 || *(v76 + 12) != 1)
        {
          goto LABEL_84;
        }

        sub_1B5D64668(*(a1 + 40), v86, (a1 + 52), (a1 + 56));
LABEL_84:
        *(v76 + 12) = 0;
LABEL_85:
        v82 = *(a1 + 80 + 2 * *(v76 + 8));
        if (*(v76 + 10) < v82)
        {
          *(v76 + 10) = v82;
        }

        *(*(a1 + 32) + 2 * v60) = 0;
        v50 = a2;
        goto LABEL_88;
      }

LABEL_90:
      if (v17)
      {
        result = v47 ^ v9;
      }

      else
      {
        result = v10;
      }
    }
  }

  v83 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B5DB61C8(uint64_t a1, unsigned int a2, int a3, int a4)
{
  if ((a2 & 0x80000000) != 0)
  {
    v8 = sub_1B5DB62E4(a1);
  }

  else
  {
    v8 = a3 ^ a2;
  }

  v9 = *(a1 + 8);
  v10 = (v9 + 8 * v8);
  v11 = *(a1 + 40);
  v12 = v11 + 20 * (v8 >> 8);
  v13 = *(v12 + 8) - 1;
  *(v12 + 8) = v13;
  if (!v13)
  {
    if (v8 < 0x100)
    {
      goto LABEL_14;
    }

    v17 = 48;
    v18 = 52;
    goto LABEL_13;
  }

  v15 = *v10;
  v14 = v10[1];
  *(v9 + 8 * -v15 + 4) = v14;
  v16 = -v14;
  *(v9 + 8 * v16) = v15;
  if (v8 == *(v12 + 16))
  {
    *(v12 + 16) = v16;
  }

  if (v8 >= 0x100 && *(v12 + 8) == 1 && *(v12 + 12) != 1)
  {
    v11 = *(a1 + 40);
    v17 = 52;
    v18 = 56;
LABEL_13:
    sub_1B5D64668(v11, v8 >> 8, (a1 + v18), (a1 + v17));
  }

LABEL_14:
  if (a3)
  {
    v19 = -1;
  }

  else
  {
    v19 = 0;
  }

  *v10 = v19;
  v10[1] = a4;
  if ((a2 & 0x80000000) != 0)
  {
    *(*(a1 + 8) + 8 * a4) = v8 ^ a3;
  }

  return v8;
}

uint64_t sub_1B5DB62E4(uint64_t a1)
{
  v1 = *(a1 + 52);
  if (v1)
  {
    return *(*(a1 + 40) + 20 * v1 + 16);
  }

  v1 = *(a1 + 56);
  if (v1)
  {
    return *(*(a1 + 40) + 20 * v1 + 16);
  }

  else
  {
    return sub_1B5DB6328(a1) << 8;
  }
}

uint64_t sub_1B5DB6328(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2 == *(a1 + 60))
  {
    *(a1 + 60) = 2 * v2;
    sub_1B5DB512C((a1 + 8), 2 * v2, 2 * v2);
    sub_1B5DB5284((a1 + 32), *(a1 + 60), *(a1 + 64));
    sub_1B5DB549C((a1 + 40), *(a1 + 60) >> 8, *(a1 + 64) >> 8);
    v2 = *(a1 + 64);
  }

  *(*(a1 + 40) + 20 * (v2 >> 8) + 16) = v2;
  *(*(a1 + 8) + 8 * v2) = (-255 - v2) | (~v2 << 32);
  v3 = *(a1 + 64);
  v4 = v3 + 1;
  v5 = 0xFFFFFFFE00000000 - (v3 << 32);
  v6 = -v3;
  do
  {
    *(*(a1 + 8) + 8 * v4) = v5 + v6;
    v7 = *(a1 + 64);
    v8 = v4++ - 1;
    v5 -= 0x100000000;
    --v6;
  }

  while (v8 < v7 + 253);
  *(*(a1 + 8) + 8 * v7 + 2040) = (-254 - v7) | (-v7 << 32);
  v9 = *(a1 + 64) >> 8;
  v10 = *(a1 + 56);
  v11 = *(a1 + 40);
  v12 = (v11 + 20 * v9);
  if (v10)
  {
    v13 = (v11 + 20 * v10);
    v14 = *v13;
    *v12 = *v13;
    v12[1] = *(a1 + 56);
    v15 = (v11 + 20 * v14 + 4);
    v12 = v13;
  }

  else
  {
    v15 = v12 + 1;
  }

  *v15 = v9;
  *v12 = v9;
  *(a1 + 56) = v9;
  v16 = *(a1 + 64) + 256;
  *(a1 + 64) = v16;
  return ((v16 >> 8) - 1);
}

void sub_1B5DB6480(void *a1, unint64_t *a2, uint64_t a3, unsigned int a4)
{
  if ((*(*a1 + 112))(a1))
  {
    memset(&__p, 0, sizeof(__p));
    v34 = 0;
    v32 = 0;
    v8 = *a2;
    v35 = *a2;
    v9 = sub_1B5D64CA8(a1 + 1, &v35, &v34);
    if (v9 != -2)
    {
      v10 = a4;
      v31 = a3;
      v30 = a4;
      while (1)
      {
        v12 = v34;
        v11 = v35;
        v13 = HIDWORD(v35);
        if ((a4 & 0x80000000) != 0 || v34 <= v10)
        {
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = __p.__r_.__value_.__l.__size_;
          }

          if (size < v34)
          {
            std::string::resize(&__p, v34, 0);
            v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          if (v15 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          p_p->__r_.__value_.__s.__data_[v12] = 0;
          v17 = v11;
          v18 = v12;
          if (v13)
          {
            v17 = v11;
            v29 = a4;
            v19 = a1[3];
            v20 = strlen((v19 - *(a1[2] + 8 * v11)));
            if (v20 >= v12)
            {
              v21 = v12;
            }

            else
            {
              v21 = v20;
            }

            if (v12 >= v20)
            {
              v18 = v12 - v20;
            }

            else
            {
              v18 = 0;
            }

            v22 = v19 - v21;
            a4 = v29;
            memcpy(p_p + v18, (v22 + (v11 >> 32)), v21);
          }

          for (; v18; --v18)
          {
            v23 = a1[2];
            v24 = *(v23 + 8 * v17 + 4);
            *(&p_p[-1].__r_.__value_.__r.__words[2] + v18 + 7) = *(v23 + 8 * v24) ^ v17;
            v17 = v24;
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v25 = &__p;
          }

          else
          {
            v25 = __p.__r_.__value_.__r.__words[0];
          }

          sub_1B5D61690(*(v31 + 24), v9, v25, v12, &v32);
          v10 = v30;
        }

        if (v13)
        {
          if (!HIDWORD(v8))
          {
            v11 = v11;
            v26 = a1[2];
            v12 -= *(v26 + 8 * v11) + v13;
            break;
          }

          goto LABEL_3;
        }

        v26 = a1[2];
        v27 = *(v26 + 8 * v11);
        v28 = *(a1[5] + 2 * v27);
        if (!*(a1[5] + 2 * v27))
        {
          break;
        }

LABEL_38:
        v35 = v27 ^ v28;
        v34 = v12 + 1;
        v9 = sub_1B5D64CA8(a1 + 1, &v35, &v34);
        if (v9 == -2)
        {
          goto LABEL_3;
        }
      }

      while (v11 != v8)
      {
        v28 = *(a1[5] + 2 * v11);
        v11 = *(v26 + 8 * v11 + 4);
        --v12;
        if (v28)
        {
          v27 = *(v26 + 8 * v11);
          goto LABEL_38;
        }
      }
    }

LABEL_3:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1B5DB66F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5DB6718(uint64_t a1, unint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = *a2;
  v6 = 0;
  v7 = v4;
  if (sub_1B5D64E70(a1 + 8, a3, &v7, &v6, a4) == -2)
  {
    return -1;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_1B5DB677C(uint64_t a1, const void *a2, size_t a3)
{
  v11[4] = *MEMORY[0x1E69E9840];
  v11[0] = (*(*a1 + 104))(a1);
  v10 = (*(*a1 + 120))(a1, v11, a2, a3);
  result = (*(*a1 + 112))(a1, &v10);
  if (result)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      if (a3 < 0x17)
      {
        v9 = a3;
        if (a3)
        {
          memmove(&__dst, a2, a3);
        }

        *(&__dst + a3) = 0;
        operator new();
      }

      operator new();
    }

    sub_1B5D114C8();
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5DB6990(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  sub_1B5D615AC(&a17);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1B5DB69D0(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5E640))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5DB6A10(uint64_t *a1, int *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 8);
  v9 = a1[3];
  v10 = v9 + v8;
  v11 = a1[1];
  v12 = *(v11 + 23);
  if (v12 < 0)
  {
    v13 = *(v11 + 8);
  }

  else
  {
    v13 = *(v11 + 23);
  }

  v14 = *a3;
  if (v13 < v10)
  {
    std::string::resize(a1[1], v9 + v8, 0);
    v11 = a1[1];
    v9 = a1[3];
    LOBYTE(v12) = *(v11 + 23);
  }

  v15 = v11;
  if ((v12 & 0x80) != 0)
  {
    v15 = *v11;
  }

  if (v8)
  {
    memmove((v15 + v9), v14, v8);
    v11 = a1[1];
    LOBYTE(v12) = *(v11 + 23);
  }

  v16 = *a2;
  if ((v12 & 0x80) != 0)
  {
    v11 = *v11;
  }

  v17 = *(a1[4] + 24);

  return sub_1B5D61690(v17, v16, v11, v10, a4);
}

__n128 sub_1B5DB6AF8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D5E5E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1B5DB6BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  result = (*(*a1 + 104))(a1);
  v11 = result;
  if (a3)
  {
    v9 = 0;
    do
    {
      v11 = (*(*a1 + 120))(a1, &v11, v9 + a2, 1);
      result = (*(*a1 + 112))(a1, &v11);
      if (!result)
      {
        break;
      }

      v10 = 0;
      result = (*(*a1 + 128))(a1, &v11, &v10);
      if (result)
      {
        result = sub_1B5D61690(*(a4 + 24), v10, a2, ++v9, &v12);
        if (v12)
        {
          return result;
        }
      }

      else
      {
        ++v9;
      }
    }

    while (v9 != a3);
  }

  return result;
}

BOOL sub_1B5DB6CF0(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = 0;
  v9 = 0;
  v5 = sub_1B5D64E70(a1 + 8, a2, &v9, &v8, a3);
  if (v5 == -2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  *a4 = v6;
  return v6 != -1;
}

uint64_t sub_1B5DB6D44(uint64_t a1, int *a2, unint64_t a3)
{
  sub_1B5DB6D7C(a1 + 8, a2, a3 >> 3);
  sub_1B5DB59C8(a1 + 8);
  return 1;
}

void sub_1B5DB6D7C(uint64_t a1, int *a2, uint64_t a3)
{
  sub_1B5DB4E34(a1, 0);
  if (a3)
  {
    v6 = 8 * a3 - *a2;
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 16) = a2;
  *(a1 + 8) = a2 + *a2;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 >> 3) + 1;
  }

  else
  {
    v7 = v6 >> 3;
  }

  *(a1 + 64) = v7;
  *(a1 + 76) = 1;
}

uint64_t sub_1B5DB6DF4(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3) != (a3[1] - *a3) >> 2)
  {
    __assert_rtn("build", "CedarMinimalPrefixTrie.h", 78, "keys.size() == values.size()");
  }

  if (v4 == v3)
  {
    v11 = 1;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    LODWORD(v11) = 1;
    do
    {
      v12 = (v3 + v8);
      v13 = *(v12 + 23);
      if ((v13 & 0x8000000000000000) != 0)
      {
        v14 = *v12;
        v13 = v12[1];
      }

      else
      {
        v14 = v12;
      }

      v11 = v11 & (*(*a1 + 152))(a1, v14, v13, *a3 + v9);
      ++v10;
      v3 = *a2;
      v9 += 4;
      v8 += 24;
    }

    while (v10 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  sub_1B5DB59C8(a1 + 8);
  return v11;
}

uint64_t sub_1B5DB6F20(uint64_t a1, void *a2)
{
  __p = 0;
  v10 = 0;
  v11 = 0;
  v8 = 1;
  if (a2[1] != *a2)
  {
    v4 = 2;
    do
    {
      sub_1B5D0DE58(&__p, &v8);
      v8 = v4;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) >= v4++);
  }

  v6 = (*(*a1 + 64))(a1, a2, &__p);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  return v6;
}

void sub_1B5DB6FF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5DB7010@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1B5CF7CDC(v9);
  v4 = **(a1 + 24);
  std::ostream::write();
  v5 = *(a1 + 16);
  v6 = *(a1 + 72);
  std::ostream::write();
  sub_1B5D3F684(a2, v9);
  v9[0] = *MEMORY[0x1E69E54D8];
  v7 = *(MEMORY[0x1E69E54D8] + 72);
  *(v9 + *(v9[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v9[2] = v7;
  v10 = MEMORY[0x1E69E5548] + 16;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  v10 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v11);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C88080](&v13);
}

void sub_1B5DB71B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D0B3AC(va);
  _Unwind_Resume(a1);
}

void sub_1B5DB71C4(void *a1)
{
  sub_1B5DB4DE8(a1);

  JUMPOUT(0x1B8C880F0);
}

void *sub_1B5DB7200(void *a1)
{
  *a1 = &unk_1F2D5E660;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  sub_1B5CE61CC(a1 + 2);
  return a1;
}

uint64_t sub_1B5DB7258(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[4] = *MEMORY[0x1E69E9840];
  result = (*(*a1 + 112))(a1);
  if (result)
  {
    v10[0] = &unk_1F2D5E820;
    v10[1] = a1;
    v10[2] = a3;
    v10[3] = v10;
    sub_1B5CE688C(a1 + 2, a2, v10, a4);
    result = sub_1B5D5FE94(v10);
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5DB7328(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D5FE94(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5DB7348(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5E880))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5DB7388(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = sub_1B5DB06D8(*(a1 + 8), *a2);
  v9 = *(*(a1 + 16) + 24);

  return sub_1B5D61690(v9, v8, v6, v7, a4);
}

__n128 sub_1B5DB73F4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D5E820;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

double sub_1B5DB74BC@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1B5DB74C8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v7[0] = &unk_1F2D5E7A0;
  v7[1] = a1;
  v7[2] = a4;
  v7[3] = v7;
  sub_1B5CE6784((a1 + 16), a2, a3, v7, a5);
  result = sub_1B5D5FE94(v7);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5DB7550(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D5FE94(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5DB7570(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5E800))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5DB75B0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = sub_1B5DB06D8(*(a1 + 8), *a2);
  v9 = *(*(a1 + 16) + 24);

  return sub_1B5D61690(v9, v8, v6, v7, a4);
}

__n128 sub_1B5DB761C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D5E7A0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1B5DB76B8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F2D5E720;
  v6[1] = a1;
  v6[2] = a4;
  v6[3] = v6;
  sub_1B5CE6700((a1 + 16), a2, a3, v6);
  result = sub_1B5D5FE94(v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5DB7740(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D5FE94(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5DB7760(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5E780))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5DB77A0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = sub_1B5DB06D8(*(a1 + 8), *a2);
  v9 = *(*(a1 + 16) + 24);

  return sub_1B5D61690(v9, v8, v6, v7, a4);
}

__n128 sub_1B5DB780C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D5E720;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1B5DB78A8(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4)
{
  v8 = 0;
  v6 = sub_1B5CE65F8((a1 + 16), a2, a3, &v8);
  if (v6)
  {
    *a4 = sub_1B5DB06D8(a1, v8);
  }

  return v6;
}

uint64_t sub_1B5DB7908(uint64_t *a1, void *a2, unint64_t a3)
{
  if (a3 >= 0xF)
  {
    if (*a2 == 0x2065766F6C206557 && *(a2 + 7) == 0x2E61736972614D20)
    {
      sub_1B5CE62F8(a1 + 2, a2, a3);
      return 1;
    }
  }

  else if (a3 < 4)
  {
    return 0;
  }

  v7 = a2 + 4;
  v8 = *a2;
  sub_1B5CE62F8(a1 + 2, a2 + 4, v8);
  a1[3] = &v7[v8];
  a1[4] = (a3 - v8 - 4) >> 2;
  return 1;
}

uint64_t sub_1B5DB79C4(void *a1, uint64_t **a2, int **a3)
{
  __p = 0;
  v21 = 0;
  v22 = 0;
  v5 = *a2;
  v6 = a2[1];
  if (0xAAAAAAAAAAAAAAABLL * (v6 - v5) != a3[1] - *a3)
  {
    __assert_rtn("build", "MarisaTrie.h", 61, "keys.size() == values.size()");
  }

  v9 = sub_1B5DB7B04(a1, v5, v6, &__p);
  if (v9)
  {
    sub_1B5CE13B8(a1 + 5, 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2));
    v10 = a1[5];
    v11 = a2[1] - *a2;
    if (v11)
    {
      v12 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
      v13 = *a3;
      v14 = __p;
      if (v12 <= 1)
      {
        v12 = 1;
      }

      do
      {
        v16 = *v13++;
        v15 = v16;
        v17 = *v14++;
        *(v10 + 4 * v17) = v15;
        --v12;
      }

      while (v12);
    }

    v18 = (a1[6] - v10) >> 2;
    a1[3] = v10;
    a1[4] = v18;
  }

  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  return v9;
}

void sub_1B5DB7AE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5DB7B04(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  __p = 0;
  v8 = 0;
  v9 = 0;
  if (a2 != a3)
  {
    if ((*(a2 + 23) & 0x8000000000000000) != 0)
    {
      v5 = *a2;
      v4 = a2[1];
    }

    sub_1B5D60A70(1uLL);
  }

  sub_1B5CE61D0((a1 + 16), &__p, a4, *(a1 + 8));
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  return 1;
}

uint64_t sub_1B5DB7CB0@<X0>(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  sub_1B5CF7CDC(v14);
  sub_1B5CE64A4(a1 + 2, &v15);
  sub_1B5D3F684(__p, v14);
  v4 = a1[4];
  if (v4)
  {
    v5 = SHIBYTE(v13);
    if (v13 >= 0)
    {
      v6 = HIBYTE(v13);
    }

    else
    {
      v6 = __p[1];
    }

    *__s = v6;
    v7 = a1[3];
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
    a2->__r_.__value_.__r.__words[0] = 0;
    std::string::append(a2, __s, 4uLL);
    if (v5 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    std::string::append(a2, v8, v6);
    std::string::append(a2, v7, 4 * v4);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *__p;
    a2->__r_.__value_.__r.__words[2] = v13;
  }

  v14[0] = *MEMORY[0x1E69E54D8];
  v9 = *(MEMORY[0x1E69E54D8] + 72);
  *(v14 + *(v14[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v15 = v9;
  v16 = MEMORY[0x1E69E5548] + 16;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  v16 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v17);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C88080](&v19);
}

void sub_1B5DB7F10(void *a1)
{
  sub_1B5DB7200(a1);

  JUMPOUT(0x1B8C880F0);
}

void *sub_1B5DB7F4C(void *a1)
{
  *a1 = &unk_1F2D5E920;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  return sub_1B5DB387C(a1);
}

uint64_t sub_1B5DB7FAC(void *a1, unsigned int *a2, unint64_t a3)
{
  v3 = a3 <= 3 || (a3 & 0xFFFFFFFFFFFFFFFCLL) == 4;
  v4 = !v3;
  if (!v3)
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = a2 + 2;
    a1[2] = 0;
    a1[3] = 0;
    v9 = a1[4];
    if (v9)
    {
      MEMORY[0x1B8C880C0](v9, 0x1000C8052888210);
      a1[4] = 0;
    }

    a1[2] = v6;
    a1[3] = v8;
    v10 = v8 + v6;
    sub_1B5D72A68(a1 + 5, v7);
    v11 = 2 * v7;
    v12 = a1[7];
    v13 = a1[5];
    if (v7 > (v12 - v13) >> 1)
    {
      if (v13)
      {
        a1[6] = v13;
        operator delete(v13);
        v12 = 0;
        a1[5] = 0;
        a1[6] = 0;
        a1[7] = 0;
      }

      if (v12 <= v7)
      {
        v14 = v7;
      }

      else
      {
        v14 = v12;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v15 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v14;
      }

      if ((v15 & 0x8000000000000000) == 0)
      {
        sub_1B5D0DF78(v15);
      }

      sub_1B5D04FA0();
    }

    v16 = a1[6];
    v17 = v16 - v13;
    if (v7 <= (v16 - v13) >> 1)
    {
      if (v7)
      {
        memmove(a1[5], v10, 2 * v7);
      }

      v18 = &v13[v11];
    }

    else
    {
      if (v16 != v13)
      {
        memmove(a1[5], v10, v16 - v13);
      }

      v19 = a1[6];
      if (v17 != v11)
      {
        v20 = &v10[v17];
        v21 = (&v13[v11] - v16);
        v19 = a1[6];
        do
        {
          v22 = *v20;
          v20 += 2;
          *v19 = v22;
          v19 += 2;
          v21 -= 2;
        }

        while (v21);
      }

      v18 = v19;
    }

    a1[6] = v18;
  }

  return v4;
}

void sub_1B5DB829C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1B5DB8288);
}

void sub_1B5DB82AC()
{
  v2 = *MEMORY[0x1E69E9840];
  v1 = 0;
  v0 = 0;
  operator new();
}

void sub_1B5DB836C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1B5D6ECA0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5DB838C(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5EA40))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1B5DB83CC(uint64_t a1, char *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = *(*(a1 + 16) + 40);
  if (*v3)
  {
    *(v4 + 2 * **(a1 + 32) + 1) = v2;
  }

  else
  {
    *(v4 + 2 * **(a1 + 24)) = v2;
    *v3 = 1;
  }

  sub_1B5DB82AC();
}

__n128 sub_1B5DB8450(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D5E9E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

std::string *sub_1B5DB852C@<X0>(void *a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[5];
  v7 = a1[6];
  memset(&v18, 0, sizeof(v18));
  std::string::resize(&v18, 4uLL, 0);
  v8 = 4 * v5;
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v18;
  }

  else
  {
    v9 = v18.__r_.__value_.__r.__words[0];
  }

  LODWORD(v9->__r_.__value_.__l.__data_) = v8;
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v18;
  }

  else
  {
    v10 = v18.__r_.__value_.__r.__words[0];
  }

  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v18.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v10, size);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  v13 = a1[5];
  v12 = a1[6];
  memset(&v18, 0, sizeof(v18));
  std::string::resize(&v18, 4uLL, 0);
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v18;
  }

  else
  {
    v14 = v18.__r_.__value_.__r.__words[0];
  }

  LODWORD(v14->__r_.__value_.__l.__data_) = (v12 - v13) >> 1;
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v18;
  }

  else
  {
    v15 = v18.__r_.__value_.__r.__words[0];
  }

  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = HIBYTE(v18.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = v18.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v15, v16);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  std::string::append(a2, v4, v8);
  return std::string::append(a2, v6, v7 - v6);
}

void sub_1B5DB8670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5DB86E0(void *a1)
{
  sub_1B5DB7F4C(a1);

  JUMPOUT(0x1B8C880F0);
}

void sub_1B5DB871C(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  if ((*(*a1 + 112))(a1))
  {
    if (a4)
    {
      v11[0] = 0;
      v11[1] = v11;
      v11[2] = 0x2000000000;
      v12 = 0;
      sub_1B5CF3300();
      v8 = a1[1];
      off_1EE8950E0();
      sub_1B5CF34CC(v10, v9, a2);
      _Block_object_dispose(v11, 8);
    }

    else
    {
      LODWORD(v11[0]) = 0;
      v13 = 0;
      if ((*(*a1 + 128))(a1, a2, v11))
      {
        sub_1B5D61690(*(a3 + 24), v11[0], 0, 0, &v13);
      }
    }
  }
}

void sub_1B5DB8894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5DB88AC(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 40);
  v7 = off_1EE8950E0();
  result = sub_1B5D61690(*(v8 + 24), v9, v7, v10, *(*(a1 + 32) + 8) + 24);
  *a4 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1B5DB8920(uint64_t a1, const void *a2, size_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v12 = (*(*a1 + 104))(a1);
  v13 = v6;
  v12 = (*(*a1 + 120))(a1, &v12, a2, a3);
  v13 = v7;
  result = (*(*a1 + 112))(a1, &v12);
  if (result)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      if (a3 < 0x17)
      {
        v11 = a3;
        if (a3)
        {
          memmove(&__p, a2, a3);
        }

        *(&__p + a3) = 0;
        operator new();
      }

      operator new();
    }

    sub_1B5D114C8();
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5DB8B3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  sub_1B5D615AC(&a17);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1B5DB8B7C(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5B8F0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5DB8BBC(uint64_t *a1, int *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 8);
  v9 = a1[3];
  v10 = v9 + v8;
  v11 = a1[1];
  v12 = *(v11 + 23);
  if (v12 < 0)
  {
    v13 = *(v11 + 8);
  }

  else
  {
    v13 = *(v11 + 23);
  }

  v14 = *a3;
  if (v13 < v10)
  {
    std::string::resize(a1[1], v9 + v8, 0);
    v11 = a1[1];
    v9 = a1[3];
    LOBYTE(v12) = *(v11 + 23);
  }

  v15 = v11;
  if ((v12 & 0x80) != 0)
  {
    v15 = *v11;
  }

  if (v8)
  {
    memmove((v15 + v9), v14, v8);
    v11 = a1[1];
    LOBYTE(v12) = *(v11 + 23);
  }

  v16 = *a2;
  if ((v12 & 0x80) != 0)
  {
    v11 = *v11;
  }

  v17 = *(a1[4] + 24);

  return sub_1B5D61690(v17, v16, v11, v10, a4);
}

__n128 sub_1B5DB8CA4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D5B890;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1B5DB8D50(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = result;
    v14 = 0;
    v8 = 0;
    v12 = (*(*result + 104))(result);
    v13 = v9;
    v11 = 0;
    do
    {
      v12 = (*(*v7 + 120))(v7, &v12, v8 + a2, 1);
      v13 = v10;
      result = (*(*v7 + 112))(v7, &v12);
      if (!result)
      {
        break;
      }

      result = (*(*v7 + 128))(v7, &v12, &v11);
      if (result)
      {
        result = sub_1B5D61690(*(a4 + 24), v11, a2, ++v8, &v14);
        if (v14)
        {
          return result;
        }
      }

      else
      {
        ++v8;
      }
    }

    while (v8 < a3);
  }

  return result;
}

uint64_t sub_1B5DB8EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = (*(*a1 + 104))(a1);
  v11[1] = v8;
  v12[0] = (*(*a1 + 120))(a1, v11, a2, a3);
  v12[1] = v9;
  return (*(*a1 + 128))(a1, v12, a4);
}

uint64_t sub_1B5DB8F6C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v9[4] = *MEMORY[0x1E69E9840];
  sub_1B5CF45AC(0, 0, a2, a3);
  v7[0] = &unk_1F2D5C520;
  v7[3] = v7;
  v8 = v4;
  sub_1B5D130A0(v9, v7);
  sub_1B5D13120(v7);
  sub_1B5D131A0((a1 + 8), &v8);
  sub_1B5D132A8(&v8, 0);
  sub_1B5D13120(v9);
  v5 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t sub_1B5DB9040(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5C580))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1B5DB9110(void *a1, uint64_t **a2, _DWORD **a3)
{
  (*(*a1 + 72))(a1, 0, 0);
  if (!a1[1])
  {
    __assert_rtn("build", "StaticBurstTrie.h", 96, "m_trie");
  }

  v6 = *a2;
  v7 = a2[1];
  v10 = a3;
  v8 = *a3;
  v9 = v10[1];
  if (0xAAAAAAAAAAAAAAABLL * (v7 - *a2) != v9 - v8)
  {
    __assert_rtn("build", "StaticBurstTrie.h", 97, "keys.size() == values.size()");
  }

  memset(v27, 0, sizeof(v27));
  if (v8 != v9)
  {
    do
    {
      sub_1B5D0DE58(v27, v8++);
    }

    while (v8 != v9);
    v6 = *a2;
    v7 = a2[1];
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  __p = 0;
  v22 = 0;
  v23 = 0;
  if (v6 == v7)
  {
    v15 = 0;
    v14 = 0;
    v13 = 0;
  }

  else
  {
    do
    {
      v11 = v6;
      if (*(v6 + 23) < 0)
      {
        v11 = *v6;
      }

      v20 = v11;
      sub_1B5D140B0(&v24, &v20);
      v12 = *(v6 + 23);
      if ((v12 & 0x8000000000000000) != 0)
      {
        v12 = v6[1];
      }

      v20 = v12;
      sub_1B5D14180(&__p, &v20);
      v6 += 3;
    }

    while (v6 != v7);
    v14 = v24;
    v13 = v25;
    v15 = __p;
  }

  v16 = a1[1];
  v17 = v27[0];
  v18 = sub_1B5CFD430(v16, (v13 - v14) >> 3, v14, v15, v27[0]);
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  if (v14)
  {
    operator delete(v14);
  }

  if (v17)
  {
    operator delete(v17);
  }

  return v18 == 0;
}

void sub_1B5DB92E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1B5DB9324(void *a1, uint64_t **a2)
{
  (*(*a1 + 72))(a1, 0, 0);
  if (!a1[1])
  {
    __assert_rtn("build", "StaticBurstTrie.h", 78, "m_trie");
  }

  memset(v24, 0, sizeof(v24));
  LODWORD(v21) = 1;
  v5 = *a2;
  v4 = a2[1];
  if (v4 != *a2)
  {
    v6 = 2;
    do
    {
      sub_1B5D0DE58(v24, &v21);
      LODWORD(v21) = v6;
      v5 = *a2;
      v4 = a2[1];
    }

    while (0xAAAAAAAAAAAAAAABLL * (v4 - *a2) >= v6++);
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  __p = 0;
  v19 = 0;
  v20 = 0;
  if (v5 == v4)
  {
    v12 = 0;
    v11 = 0;
    v10 = 0;
  }

  else
  {
    do
    {
      v8 = v5;
      if (*(v5 + 23) < 0)
      {
        v8 = *v5;
      }

      v17 = v8;
      sub_1B5D140B0(&v21, &v17);
      v9 = *(v5 + 23);
      if ((v9 & 0x8000000000000000) != 0)
      {
        v9 = v5[1];
      }

      v17 = v9;
      sub_1B5D14180(&__p, &v17);
      v5 += 3;
    }

    while (v5 != v4);
    v11 = v21;
    v10 = v22;
    v12 = __p;
  }

  v13 = a1[1];
  v14 = v24[0];
  v15 = sub_1B5CFD430(v13, (v10 - v11) >> 3, v11, v12, v24[0]);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (v11)
  {
    operator delete(v11);
  }

  if (v14)
  {
    operator delete(v14);
  }

  return v15 == 0;
}

void sub_1B5DB94D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1B5DB9514@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  __len = 0;
  v3 = sub_1B5CF468C(*(a1 + 8), &__len);
  return sub_1B5D5EC18(a2, v3, __len);
}

BOOL sub_1B5DB955C(uint64_t *a1, unint64_t a2, unsigned __int8 **a3, uint64_t *a4, void *a5)
{
  (*(*a1 + 72))(a1, 0, 0);
  if (!a1[1])
  {
    __assert_rtn("build", "StaticBurstTrie.h", 64, "m_trie");
  }

  memset(v16, 0, sizeof(v16));
  if (!a5)
  {
    v17 = 1;
    if (a2)
    {
      v11 = 2;
      do
      {
        sub_1B5D0DE58(v16, &v17);
        v17 = v11;
        v12 = v11++;
      }

      while (v12 <= a2);
    }

    goto LABEL_10;
  }

  if (a2)
  {
    v10 = 8 * a2;
    do
    {
      v17 = *a5;
      sub_1B5D0DE58(v16, &v17);
      ++a5;
      v10 -= 8;
    }

    while (v10);
LABEL_10:
    v13 = v16[0];
    goto LABEL_12;
  }

  v13 = 0;
LABEL_12:
  v14 = sub_1B5CFD430(a1[1], a2, a3, a4, v13);
  if (v13)
  {
    operator delete(v13);
  }

  return v14 == 0;
}

void sub_1B5DB969C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (v9)
  {
    operator delete(v9);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5DB96C4(void *a1)
{
  *a1 = &unk_1F2D5B7D0;
  v1 = (a1 + 2);
  sub_1B5D132A8(a1 + 1, 0);
  sub_1B5D13120(v1);

  JUMPOUT(0x1B8C880F0);
}

void *sub_1B5DB973C(void *a1)
{
  *a1 = &unk_1F2D5B7D0;
  v2 = (a1 + 2);
  sub_1B5D132A8(a1 + 1, 0);
  sub_1B5D13120(v2);
  return a1;
}

uint64_t sub_1B5DB9794(uint64_t a1)
{
  v2 = a1 + 12288;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 13) = 0;
  v3 = -6144;
  do
  {
    v4 = a1 + v3;
    *(v4 + 6440) = 0;
    *(v4 + 6448) = 0;
    *(v4 + 6456) = 0;
    v3 += 24;
  }

  while (v3);
  *(a1 + 276) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  v5 = -6144;
  do
  {
    v6 = a1 + v5;
    *(v6 + 6440) = 0;
    *(v6 + 6448) = 0;
    *(v6 + 6456) = 0;
    v5 += 24;
  }

  while (v5);
  *(a1 + 6440) = 0;
  *(a1 + 6448) = 0u;
  v7 = -6144;
  do
  {
    v8 = a1 + v7;
    *(v8 + 12880) = 0;
    *(v8 + 12888) = 0;
    *(v8 + 12896) = 0;
    v7 += 24;
  }

  while (v7);
  *(a1 + 6716) = 0u;
  *(a1 + 6688) = 0u;
  *(a1 + 6704) = 0u;
  *(a1 + 6656) = 0u;
  *(a1 + 6672) = 0u;
  *(a1 + 6624) = 0u;
  *(a1 + 6640) = 0u;
  *(a1 + 6592) = 0u;
  *(a1 + 6608) = 0u;
  *(a1 + 6560) = 0u;
  *(a1 + 6576) = 0u;
  *(a1 + 6528) = 0u;
  *(a1 + 6544) = 0u;
  *(a1 + 6496) = 0u;
  *(a1 + 6512) = 0u;
  *(a1 + 6464) = 0u;
  *(a1 + 6480) = 0u;
  v9 = -6144;
  do
  {
    v10 = a1 + v9;
    *(v10 + 12880) = 0;
    *(v10 + 12888) = 0;
    *(v10 + 12896) = 0;
    v9 += 24;
  }

  while (v9);
  *(a1 + 12880) = 0;
  *(a1 + 12888) = 0u;
  *(a1 + 12904) = 0u;
  sub_1B5CDDEAC(a1 + 12920);
  *(v2 + 2008) = 0;
  *(a1 + 14336) = 0u;
  *(a1 + 14308) = 0;
  *(a1 + 14316) = 0;
  *(a1 + 14300) = 0;
  *(a1 + 14322) = 0;
  return a1;
}

void sub_1B5DB98DC(_Unwind_Exception *a1)
{
  sub_1B5D86F80(v1 + 1);
  sub_1B5D86F80(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5DB98F8(uint64_t a1)
{
  *a1 = &unk_1F2D5DF18;
  sub_1B5D0C050(*(a1 + 64));
  *(a1 + 8) = &unk_1F2D56850;
  sub_1B5D132A8((a1 + 16), 0);
  sub_1B5D13120(a1 + 24);
  return a1;
}

uint64_t sub_1B5DB9974(uint64_t a1)
{
  *a1 = &unk_1F2D5DC98;
  sub_1B5D0C050(*(a1 + 80));
  sub_1B5D6E2D4((a1 + 8));
  return a1;
}

uint64_t sub_1B5DB99C4(uint64_t a1)
{
  *a1 = &unk_1F2D5D658;
  sub_1B5D0C050(*(a1 + 80));
  sub_1B5D5FA24((a1 + 8));
  return a1;
}

uint64_t sub_1B5DB9A14(uint64_t a1)
{
  *a1 = &unk_1F2D5D178;
  sub_1B5D0C050(*(a1 + 624));
  sub_1B5D63158((a1 + 8));
  return a1;
}

uint64_t sub_1B5DB9A64(uint64_t a1)
{
  *a1 = &unk_1F2D5CC38;
  sub_1B5D0C050(*(a1 + 56));
  sub_1B5D6E334((a1 + 8));
  return a1;
}

uint64_t sub_1B5DB9AB4(uint64_t a1)
{
  *a1 = &unk_1F2D5C620;
  sub_1B5D0C050(*(a1 + 120));
  *(a1 + 8) = &unk_1F2D5C6F8;
  sub_1B5D752BC((a1 + 16));
  return a1;
}

__n128 sub_1B5DB9B24(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

void *sub_1B5DB9B44(void **a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = *a2;
  result = v2 + 1;
  if (*(a2 + 31) < 0)
  {
    return sub_1B5CE4AC4(result, *(a2 + 8), *(a2 + 16));
  }

  v4 = *(a2 + 8);
  result[2] = *(a2 + 24);
  *result = v4;
  return result;
}

__n128 sub_1B5DB9BA8(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

void *sub_1B5DB9BC8(void **a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = *a2;
  result = v2 + 1;
  if (*(a2 + 31) < 0)
  {
    return sub_1B5CE4AC4(result, *(a2 + 8), *(a2 + 16));
  }

  v4 = *(a2 + 8);
  result[2] = *(a2 + 24);
  *result = v4;
  return result;
}

uint64_t *sub_1B5DB9C2C(uint64_t *result, uint64_t a2)
{
  v2 = 0;
  v3 = *result;
  *v3 = *a2;
  *(v3 + 8) = *(a2 + 8);
  *(v3 + 16) = *(a2 + 16);
  v4 = v3 + 24;
  do
  {
    *(v4 + v2) = *(a2 + 24 + v2);
    ++v2;
  }

  while (v2 != 4);
  return result;
}

uint64_t sub_1B5DB9C6C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 32) = -1;
  sub_1B5D264A0(a1);
  v4 = *(a2 + 32);
  if (v4 != -1)
  {
    v6 = a1;
    (off_1F2D5EA50[v4])(&v6, a2);
    *(a1 + 32) = v4;
  }

  return a1;
}

__n128 sub_1B5DB9CF4(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

void *sub_1B5DB9D14(void **a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = *a2;
  result = v2 + 1;
  if (*(a2 + 31) < 0)
  {
    return sub_1B5CE4AC4(result, *(a2 + 8), *(a2 + 16));
  }

  v4 = *(a2 + 8);
  result[2] = *(a2 + 24);
  *result = v4;
  return result;
}

__n128 sub_1B5DB9D78(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

void *sub_1B5DB9D98(void **a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = *a2;
  result = v2 + 1;
  if (*(a2 + 31) < 0)
  {
    return sub_1B5CE4AC4(result, *(a2 + 8), *(a2 + 16));
  }

  v4 = *(a2 + 8);
  result[2] = *(a2 + 24);
  *result = v4;
  return result;
}

uint64_t *sub_1B5DB9DFC(uint64_t *result, uint64_t a2)
{
  v2 = 0;
  v3 = *result;
  *v3 = *a2;
  *(v3 + 8) = *(a2 + 8);
  *(v3 + 16) = *(a2 + 16);
  v4 = v3 + 24;
  do
  {
    *(v4 + v2) = *(a2 + 24 + v2);
    ++v2;
  }

  while (v2 != 4);
  return result;
}

uint64_t sub_1B5DB9E3C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 32) = -1;
  sub_1B5D264A0(a1);
  v4 = *(a2 + 32);
  if (v4 != -1)
  {
    v6 = a1;
    (off_1F2D5EAB8[v4])(&v6, a2);
    *(a1 + 32) = v4;
  }

  return a1;
}

uint64_t sub_1B5DB9EC4(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    v3 = *(a2 + 32);
    if (*(a1 + 32) != -1 || v3 != -1)
    {
      if (v3 == -1)
      {
        sub_1B5D264A0(a1);
      }

      else
      {
        v6 = a1;
        (off_1F2D5EB20[v3])(&v6, a1, a2);
      }
    }
  }

  return a1;
}

__n128 sub_1B5DB9F40(uint64_t *a1, __n128 *a2, __n128 *a3)
{
  v4 = *a1;
  if (*(*a1 + 32) == 12)
  {
    result = *a3;
    *a2 = *a3;
  }

  else
  {
    sub_1B5D264A0(*a1);
    result = *a3;
    *v4 = *a3;
    *(v4 + 32) = 12;
  }

  return result;
}

uint64_t *sub_1B5DB9F94(uint64_t *result, void *a2, void *a3)
{
  v4 = *result;
  if (*(*result + 32) == 11)
  {
    *a2 = *a3;
  }

  else
  {
    result = sub_1B5D264A0(*result);
    *v4 = *a3;
    *(v4 + 32) = 11;
  }

  return result;
}

std::string *sub_1B5DB9FE8(uint64_t *a1, uint64_t a2, std::string *__str)
{
  v4 = *a1;
  if (*(*a1 + 32) == 10)
  {
    *a2 = __str->__r_.__value_.__r.__words[0];

    return std::string::operator=((a2 + 8), &__str->__r_.__value_.__r.__words[1]);
  }

  else
  {
    sub_1B5D264A0(*a1);
    *v4 = __str->__r_.__value_.__r.__words[0];
    result = (v4 + 8);
    if (__str[1].__r_.__value_.__s.__data_[7] < 0)
    {
      result = sub_1B5CE4AC4(result, __str->__r_.__value_.__l.__size_, __str->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v6 = *&__str->__r_.__value_.__r.__words[1];
      *(v4 + 24) = __str[1].__r_.__value_.__l.__data_;
      *&result->__r_.__value_.__l.__data_ = v6;
    }

    *(v4 + 32) = 10;
  }

  return result;
}

uint64_t *sub_1B5DBA084(uint64_t *result, void *a2, void *a3)
{
  v4 = *result;
  if (*(*result + 32) == 9)
  {
    *a2 = *a3;
  }

  else
  {
    result = sub_1B5D264A0(*result);
    *v4 = *a3;
    *(v4 + 32) = 9;
  }

  return result;
}

uint64_t *sub_1B5DBA0D8(uint64_t *result, void *a2, void *a3)
{
  v4 = *result;
  if (*(*result + 32) == 8)
  {
    *a2 = *a3;
  }

  else
  {
    result = sub_1B5D264A0(*result);
    *v4 = *a3;
    *(v4 + 32) = 8;
  }

  return result;
}

uint64_t *sub_1B5DBA12C(uint64_t *result, void *a2, void *a3)
{
  v4 = *result;
  if (*(*result + 32) == 7)
  {
    *a2 = *a3;
  }

  else
  {
    result = sub_1B5D264A0(*result);
    *v4 = *a3;
    *(v4 + 32) = 7;
  }

  return result;
}

__n128 sub_1B5DBA180(uint64_t *a1, __n128 *a2, __n128 *a3)
{
  v4 = *a1;
  if (*(*a1 + 32) == 6)
  {
    result = *a3;
    *a2 = *a3;
  }

  else
  {
    sub_1B5D264A0(*a1);
    result = *a3;
    *v4 = *a3;
    *(v4 + 32) = 6;
  }

  return result;
}

uint64_t *sub_1B5DBA1D4(uint64_t *result, void *a2, void *a3)
{
  v4 = *result;
  if (*(*result + 32) == 5)
  {
    *a2 = *a3;
  }

  else
  {
    result = sub_1B5D264A0(*result);
    *v4 = *a3;
    *(v4 + 32) = 5;
  }

  return result;
}

std::string *sub_1B5DBA228(uint64_t *a1, uint64_t a2, std::string *__str)
{
  v4 = *a1;
  if (*(*a1 + 32) == 4)
  {
    *a2 = __str->__r_.__value_.__r.__words[0];

    return std::string::operator=((a2 + 8), &__str->__r_.__value_.__r.__words[1]);
  }

  else
  {
    sub_1B5D264A0(*a1);
    *v4 = __str->__r_.__value_.__r.__words[0];
    result = (v4 + 8);
    if (__str[1].__r_.__value_.__s.__data_[7] < 0)
    {
      result = sub_1B5CE4AC4(result, __str->__r_.__value_.__l.__size_, __str->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v6 = *&__str->__r_.__value_.__r.__words[1];
      *(v4 + 24) = __str[1].__r_.__value_.__l.__data_;
      *&result->__r_.__value_.__l.__data_ = v6;
    }

    *(v4 + 32) = 4;
  }

  return result;
}

uint64_t *sub_1B5DBA2C4(uint64_t *result, void *a2, void *a3)
{
  v4 = *result;
  if (*(*result + 32) == 3)
  {
    *a2 = *a3;
  }

  else
  {
    result = sub_1B5D264A0(*result);
    *v4 = *a3;
    *(v4 + 32) = 3;
  }

  return result;
}

uint64_t *sub_1B5DBA318(uint64_t *result, void *a2, void *a3)
{
  v4 = *result;
  if (*(*result + 32) == 2)
  {
    *a2 = *a3;
  }

  else
  {
    result = sub_1B5D264A0(*result);
    *v4 = *a3;
    *(v4 + 32) = 2;
  }

  return result;
}

uint64_t *sub_1B5DBA36C(uint64_t *result, void *a2, void *a3)
{
  v4 = *result;
  if (*(*result + 32) == 1)
  {
    *a2 = *a3;
  }

  else
  {
    result = sub_1B5D264A0(*result);
    *v4 = *a3;
    *(v4 + 32) = 1;
  }

  return result;
}

uint64_t *sub_1B5DBA3C0(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = *result;
  if (*(*result + 32))
  {
    result = sub_1B5D264A0(*result);
    v5 = 0;
    *v4 = *a3;
    *(v4 + 8) = *(a3 + 8);
    *(v4 + 16) = *(a3 + 16);
    do
    {
      *(v4 + 24 + v5) = *(a3 + 24 + v5);
      ++v5;
    }

    while (v5 != 4);
    *(v4 + 32) = 0;
  }

  else
  {
    *a2 = *a3;
    if (a2 != a3)
    {
      v6 = 0;
      *(a2 + 8) = *(a3 + 8);
      *(a2 + 16) = *(a3 + 16);
      do
      {
        *(a2 + 24 + v6) = *(a3 + 24 + v6);
        ++v6;
      }

      while (v6 != 4);
    }
  }

  return result;
}

uint64_t sub_1B5DBA474(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    v3 = *(a2 + 32);
    if (*(a1 + 32) != -1 || v3 != -1)
    {
      if (v3 == -1)
      {
        sub_1B5D264A0(a1);
      }

      else
      {
        v6 = a1;
        (off_1F2D5EB88[v3])(&v6, a1, a2);
      }
    }
  }

  return a1;
}

__n128 sub_1B5DBA4F0(uint64_t *a1, __n128 *a2, __n128 *a3)
{
  v4 = *a1;
  if (*(*a1 + 32) == 12)
  {
    result = *a3;
    *a2 = *a3;
  }

  else
  {
    sub_1B5D264A0(*a1);
    result = *a3;
    *v4 = *a3;
    *(v4 + 32) = 12;
  }

  return result;
}

uint64_t *sub_1B5DBA544(uint64_t *result, void *a2, void *a3)
{
  v4 = *result;
  if (*(*result + 32) == 11)
  {
    *a2 = *a3;
  }

  else
  {
    result = sub_1B5D264A0(*result);
    *v4 = *a3;
    *(v4 + 32) = 11;
  }

  return result;
}

std::string *sub_1B5DBA598(uint64_t *a1, uint64_t a2, std::string *__str)
{
  v4 = *a1;
  if (*(*a1 + 32) == 10)
  {
    *a2 = __str->__r_.__value_.__r.__words[0];

    return std::string::operator=((a2 + 8), &__str->__r_.__value_.__r.__words[1]);
  }

  else
  {
    sub_1B5D264A0(*a1);
    *v4 = __str->__r_.__value_.__r.__words[0];
    result = (v4 + 8);
    if (__str[1].__r_.__value_.__s.__data_[7] < 0)
    {
      result = sub_1B5CE4AC4(result, __str->__r_.__value_.__l.__size_, __str->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v6 = *&__str->__r_.__value_.__r.__words[1];
      *(v4 + 24) = __str[1].__r_.__value_.__l.__data_;
      *&result->__r_.__value_.__l.__data_ = v6;
    }

    *(v4 + 32) = 10;
  }

  return result;
}

uint64_t *sub_1B5DBA634(uint64_t *result, void *a2, void *a3)
{
  v4 = *result;
  if (*(*result + 32) == 9)
  {
    *a2 = *a3;
  }

  else
  {
    result = sub_1B5D264A0(*result);
    *v4 = *a3;
    *(v4 + 32) = 9;
  }

  return result;
}

uint64_t *sub_1B5DBA688(uint64_t *result, void *a2, void *a3)
{
  v4 = *result;
  if (*(*result + 32) == 8)
  {
    *a2 = *a3;
  }

  else
  {
    result = sub_1B5D264A0(*result);
    *v4 = *a3;
    *(v4 + 32) = 8;
  }

  return result;
}

uint64_t *sub_1B5DBA6DC(uint64_t *result, void *a2, void *a3)
{
  v4 = *result;
  if (*(*result + 32) == 7)
  {
    *a2 = *a3;
  }

  else
  {
    result = sub_1B5D264A0(*result);
    *v4 = *a3;
    *(v4 + 32) = 7;
  }

  return result;
}

__n128 sub_1B5DBA730(uint64_t *a1, __n128 *a2, __n128 *a3)
{
  v4 = *a1;
  if (*(*a1 + 32) == 6)
  {
    result = *a3;
    *a2 = *a3;
  }

  else
  {
    sub_1B5D264A0(*a1);
    result = *a3;
    *v4 = *a3;
    *(v4 + 32) = 6;
  }

  return result;
}

uint64_t *sub_1B5DBA784(uint64_t *result, void *a2, void *a3)
{
  v4 = *result;
  if (*(*result + 32) == 5)
  {
    *a2 = *a3;
  }

  else
  {
    result = sub_1B5D264A0(*result);
    *v4 = *a3;
    *(v4 + 32) = 5;
  }

  return result;
}

std::string *sub_1B5DBA7D8(uint64_t *a1, uint64_t a2, std::string *__str)
{
  v4 = *a1;
  if (*(*a1 + 32) == 4)
  {
    *a2 = __str->__r_.__value_.__r.__words[0];

    return std::string::operator=((a2 + 8), &__str->__r_.__value_.__r.__words[1]);
  }

  else
  {
    sub_1B5D264A0(*a1);
    *v4 = __str->__r_.__value_.__r.__words[0];
    result = (v4 + 8);
    if (__str[1].__r_.__value_.__s.__data_[7] < 0)
    {
      result = sub_1B5CE4AC4(result, __str->__r_.__value_.__l.__size_, __str->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v6 = *&__str->__r_.__value_.__r.__words[1];
      *(v4 + 24) = __str[1].__r_.__value_.__l.__data_;
      *&result->__r_.__value_.__l.__data_ = v6;
    }

    *(v4 + 32) = 4;
  }

  return result;
}

uint64_t *sub_1B5DBA874(uint64_t *result, void *a2, void *a3)
{
  v4 = *result;
  if (*(*result + 32) == 3)
  {
    *a2 = *a3;
  }

  else
  {
    result = sub_1B5D264A0(*result);
    *v4 = *a3;
    *(v4 + 32) = 3;
  }

  return result;
}

uint64_t *sub_1B5DBA8C8(uint64_t *result, void *a2, void *a3)
{
  v4 = *result;
  if (*(*result + 32) == 2)
  {
    *a2 = *a3;
  }

  else
  {
    result = sub_1B5D264A0(*result);
    *v4 = *a3;
    *(v4 + 32) = 2;
  }

  return result;
}

uint64_t *sub_1B5DBA91C(uint64_t *result, void *a2, void *a3)
{
  v4 = *result;
  if (*(*result + 32) == 1)
  {
    *a2 = *a3;
  }

  else
  {
    result = sub_1B5D264A0(*result);
    *v4 = *a3;
    *(v4 + 32) = 1;
  }

  return result;
}

uint64_t *sub_1B5DBA970(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = *result;
  if (*(*result + 32))
  {
    result = sub_1B5D264A0(*result);
    v5 = 0;
    *v4 = *a3;
    *(v4 + 8) = *(a3 + 8);
    *(v4 + 16) = *(a3 + 16);
    do
    {
      *(v4 + 24 + v5) = *(a3 + 24 + v5);
      ++v5;
    }

    while (v5 != 4);
    *(v4 + 32) = 0;
  }

  else
  {
    *a2 = *a3;
    if (a2 != a3)
    {
      v6 = 0;
      *(a2 + 8) = *(a3 + 8);
      *(a2 + 16) = *(a3 + 16);
      do
      {
        *(a2 + 24 + v6) = *(a3 + 24 + v6);
        ++v6;
      }

      while (v6 != 4);
    }
  }

  return result;
}

_DWORD *sub_1B5DBAA24(_DWORD *a1)
{
  bzero(a1, 0x3810uLL);
  v2 = sub_1B5DB9794(a1);
  a1[3588] = 0;
  sub_1B5D23204(v2);
  bzero(a1, 0x3810uLL);
  sub_1B5DB9794(a1);
  a1[3588] = 0;
  return a1;
}

void sub_1B5DBAA8C(uint64_t **a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = **a1;
  v2 = (*a1)[1];
  sub_1B5DB1C80(a2);
  sub_1B5DB1CD8(v6, v3);
  if (*(v3 + 8))
  {
    v4 = *(v3 + 8);
  }

  else
  {
    v4 = (v3 + 16);
  }

  sub_1B5CE410C(&__p, v4);
  operator new();
}

void sub_1B5DBB130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, void *a24)
{
  if (a24)
  {
    if (a23 == 1)
    {
      free(a24);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5DBB2B8(uint64_t **a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = **a1;
  v2 = (*a1)[1];
  sub_1B5DB1C80(a2);
  sub_1B5DB1CD8(v6, v3);
  if (*(v3 + 8))
  {
    v4 = *(v3 + 8);
  }

  else
  {
    v4 = (v3 + 16);
  }

  sub_1B5CE410C(&__p, v4);
  operator new();
}

void sub_1B5DBB960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, void *a24)
{
  if (a24)
  {
    if (a23 == 1)
    {
      free(a24);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5DBBAE8(uint64_t **a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = **a1;
  v2 = (*a1)[1];
  sub_1B5DB1C80(a2);
  sub_1B5DB1CD8(v6, v3);
  if (*(v3 + 8))
  {
    v4 = *(v3 + 8);
  }

  else
  {
    v4 = (v3 + 16);
  }

  sub_1B5CE410C(&__p, v4);
  operator new();
}

void sub_1B5DBC190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, void *a24)
{
  if (a24)
  {
    if (a23 == 1)
    {
      free(a24);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5DBC318(uint64_t **a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = **a1;
  v2 = (*a1)[1];
  sub_1B5DB1C80(a2);
  sub_1B5DB1CD8(v6, v3);
  if (*(v3 + 8))
  {
    v4 = *(v3 + 8);
  }

  else
  {
    v4 = (v3 + 16);
  }

  sub_1B5CE410C(&__p, v4);
  operator new();
}

void sub_1B5DBC9C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, void *a24)
{
  if (a24)
  {
    if (a23 == 1)
    {
      free(a24);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5DBCB50(uint64_t **a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = **a1;
  v2 = (*a1)[1];
  sub_1B5DB1C80(a2);
  sub_1B5DB1CD8(v6, v3);
  if (*(v3 + 8))
  {
    v4 = *(v3 + 8);
  }

  else
  {
    v4 = (v3 + 16);
  }

  sub_1B5CE410C(&__p, v4);
  operator new();
}

void sub_1B5DBD210(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, void *a24)
{
  if (a24)
  {
    if (a23 == 1)
    {
      free(a24);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5DBD398(uint64_t **a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = **a1;
  v2 = (*a1)[1];
  sub_1B5DB1C80(a2);
  sub_1B5DB1CD8(v6, v3);
  if (*(v3 + 8))
  {
    v4 = *(v3 + 8);
  }

  else
  {
    v4 = (v3 + 16);
  }

  sub_1B5CE410C(&__p, v4);
  operator new();
}

void sub_1B5DBDA48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, void *a24)
{
  if (a24)
  {
    if (a23 == 1)
    {
      free(a24);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5DBDBD0(uint64_t **a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = **a1;
  v2 = (*a1)[1];
  sub_1B5DB1C80(a2);
  sub_1B5DB1CD8(v6, v3);
  if (*(v3 + 8))
  {
    v4 = *(v3 + 8);
  }

  else
  {
    v4 = (v3 + 16);
  }

  sub_1B5CE410C(&__p, v4);
  operator new();
}

void sub_1B5DBE274(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, void *a24)
{
  if (a24)
  {
    if (a23 == 1)
    {
      free(a24);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5DBE3FC(uint64_t **a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = **a1;
  v2 = (*a1)[1];
  sub_1B5DB1C80(a2);
  sub_1B5DB1CD8(v6, v3);
  if (*(v3 + 8))
  {
    v4 = *(v3 + 8);
  }

  else
  {
    v4 = (v3 + 16);
  }

  sub_1B5CE410C(&__p, v4);
  operator new();
}

void sub_1B5DBEAA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, void *a24)
{
  if (a24)
  {
    if (a23 == 1)
    {
      free(a24);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5DBEC2C(uint64_t **a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = **a1;
  v2 = (*a1)[1];
  sub_1B5DB1C80(a2);
  sub_1B5DB1CD8(v6, v3);
  if (*(v3 + 8))
  {
    v4 = *(v3 + 8);
  }

  else
  {
    v4 = (v3 + 16);
  }

  sub_1B5CE410C(&__p, v4);
  operator new();
}

void sub_1B5DBF2D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, void *a24)
{
  if (a24)
  {
    if (a23 == 1)
    {
      free(a24);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5DBF45C(uint64_t **a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = **a1;
  v2 = (*a1)[1];
  sub_1B5DB1C80(a2);
  sub_1B5DB1CD8(v6, v3);
  if (*(v3 + 8))
  {
    v4 = *(v3 + 8);
  }

  else
  {
    v4 = (v3 + 16);
  }

  sub_1B5CE410C(&__p, v4);
  operator new();
}

void sub_1B5DBFB0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, void *a24)
{
  if (a24)
  {
    if (a23 == 1)
    {
      free(a24);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5DBFC94(uint64_t **a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = **a1;
  v2 = (*a1)[1];
  sub_1B5DB1C80(a2);
  sub_1B5DB1CD8(v6, v3);
  if (*(v3 + 8))
  {
    v4 = *(v3 + 8);
  }

  else
  {
    v4 = (v3 + 16);
  }

  sub_1B5CE410C(&__p, v4);
  operator new();
}

void sub_1B5DC0344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, void *a24)
{
  if (a24)
  {
    if (a23 == 1)
    {
      free(a24);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5DC04CC(uint64_t **a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = **a1;
  v2 = (*a1)[1];
  sub_1B5DB1C80(a2);
  sub_1B5DB1CD8(v6, v3);
  if (*(v3 + 8))
  {
    v4 = *(v3 + 8);
  }

  else
  {
    v4 = (v3 + 16);
  }

  sub_1B5CE410C(&__p, v4);
  operator new();
}

void sub_1B5DC0B8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, void *a24)
{
  if (a24)
  {
    if (a23 == 1)
    {
      free(a24);
    }
  }

  _Unwind_Resume(exception_object);
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x1EEDB7958](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__filename(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x1EEE63A08](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__parent_path(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x1EEE63A18](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__root_directory(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x1EEE63A20](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return MEMORY[0x1EEE63B20](this, a2);
}

{
  return MEMORY[0x1EEE63B38](this, a2);
}

uint64_t std::istream::operator>>()
{
  return MEMORY[0x1EEE63E08]();
}

{
  return MEMORY[0x1EEE63E10]();
}

{
  return MEMORY[0x1EEE63E20]();
}

{
  return MEMORY[0x1EEE63E28]();
}

{
  return MEMORY[0x1EEE63E30]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x1EEE63EB8]();
}

{
  return MEMORY[0x1EEE63ED0]();
}

{
  return MEMORY[0x1EEE63ED8]();
}

{
  return MEMORY[0x1EEE63EF8]();
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

void operator delete(void *__p, const std::nothrow_t *a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}