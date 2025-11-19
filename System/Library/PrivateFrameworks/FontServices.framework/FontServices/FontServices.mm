int *Type1ScalerOpen()
{
  if (qword_28151C200 != -1)
  {
    sub_24BC05CA8();
  }

  sub_24BBCFAB8();
  return &dword_27F0784E0;
}

int *sub_24BBCFAB8()
{
  if ((atomic_load_explicit(&qword_27F0784D8, memory_order_acquire) & 1) == 0)
  {
    sub_24BC05BE4();
  }

  return &dword_27F0784E0;
}

uint64_t sub_24BBCFAF0(uint64_t a1, _DWORD *a2)
{
  result = 8;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = 0;
    }
  }

  return result;
}

uint64_t sub_24BBCFB0C(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v3 = 8;
  if (a2 && a3)
  {
    v6 = 0;
    v7 = 0;
    sub_24BBCFBC8(a2, &v6);
    if (v6)
    {
      sub_24BBD5F24(v6, a3);
    }

    if (v7)
    {
      sub_24BBECA0C(v7);
    }

    return 0;
  }

  return v3;
}

void sub_24BBCFB74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_24BBECA0C(a10);
  }

  if (a2 == 1)
  {
    v12 = __cxa_begin_catch(exception_object);
    sub_24BBE2308(v12);
    __cxa_end_catch();
    JUMPOUT(0x24BBCFB60);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *sub_24BBCFBC8@<X0>(unsigned int *result@<X0>, void *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  memset(__dst, 0, sizeof(__dst));
  if (!*(result + 5) || (v3 = result, v4 = result[6], v4 >= 0x11))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 8);
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  if (v4)
  {
    result = memcpy(__dst, *(result + 4), 8 * v4);
  }

  v5 = v3[8];
  v6 = v3[1];
  v7 = v3[2];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  if (!v6)
  {
    operator new();
  }

  *a2 = v6;
  a2[1] = v7;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BBCFD20(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_24BBECA0C(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BBCFD6C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_285F89D48;
  v9 = a1 + 1;
  sub_24BBCFF00(a2, a1 + 1);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  a1[3] = (*(*a1[1] + 56))(a1[1], a3, a4, 0);
  v10 = (*(**v9 + 64))();
  a1[4] = v10;
  if (!v10)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 8);
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  a1[5] = (*(**v9 + 64))(*v9, a1[3], a5, 4);
  return a1;
}

void sub_24BBCFEC8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *(v1 + 2);
  if (v4)
  {
    sub_24BBECA0C(v4);
  }

  MCacheData::~MCacheData(v1);
  _Unwind_Resume(a1);
}

void *sub_24BBCFF00@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = result[3];
  v4 = result[4];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  if (!v3)
  {
    v5 = (*(*result + 40))(result);
    if (v5 > 22)
    {
      if (v5 > 26)
      {
        if ((v5 - 27) < 2)
        {
          operator new();
        }

        if (v5 == 29)
        {
          operator new();
        }
      }

      else
      {
        if ((v5 - 23) < 2)
        {
          operator new();
        }

        if ((v5 - 25) < 2)
        {
          operator new();
        }
      }
    }

    else
    {
      if (v5 > 16)
      {
        if (v5 <= 18)
        {
          if (v5 == 17)
          {
            operator new();
          }

LABEL_23:
          operator new();
        }

        if (v5 != 19)
        {
          if (v5 == 22)
          {
            operator new();
          }

          goto LABEL_29;
        }

LABEL_25:
        operator new();
      }

      switch(v5)
      {
        case 14:
          goto LABEL_23;
        case 15:
          goto LABEL_25;
        case 16:
          operator new();
      }
    }

LABEL_29:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 3);
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  *a2 = v3;
  a2[1] = v4;
  return result;
}

void sub_24BBD01C4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  if (v1)
  {
    sub_24BBECA0C(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BBD0240(uint64_t a1, uint64_t a2)
{
  result = sub_24BBD02B0(a1, a2);
  *result = &unk_285F8A090;
  *(result + 8) = 0;
  v3 = *(result + 48);
  *(result + 32) = *(*(v3 + 128) + 56);
  if (*(v3 + 148))
  {
    *(result + 8) = 1;
    v4 = 16385;
  }

  else
  {
    v4 = 0x4000;
  }

  if (*(v3 + 200))
  {
    *(result + 8) = v4;
  }

  return result;
}

uint64_t sub_24BBD02B0(uint64_t result, uint64_t a2)
{
  *result = &unk_285F8A2D0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 40) = 0;
  *(result + 48) = a2;
  return result;
}

void *sub_24BBD02DC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_24BBD038C(v10, a1);
  v8 = sub_24BBD0430(a1, a2, a3, a4);
  sub_24BBD1704(v10);
  return v8;
}

uint64_t sub_24BBD0390(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_285F8A7E0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 248) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 256) = 1;
  pthread_mutex_lock(&stru_28151BBD0);
  *(a1 + 248) = qword_27F078540;
  qword_27F078540 = a1;
  return a1;
}

void *sub_24BBD0430(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v32[2] = *MEMORY[0x277D85DE8];
  if (*(a1 + 8))
  {
    v31 = 0;
    *__src = 0u;
    memset(v29, 0, sizeof(v29));
    v9 = (*(*a1 + 280))(a1);
    sub_24BBD09E4(v29, v9, 1112297028);
    v10 = LODWORD(v29[0]);
    if (LODWORD(v29[0]) <= 0xD)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_24BBE0934(exception, 5);
      __cxa_throw(exception, &unk_285F89D90, nullsub_8);
    }

    v11 = sub_24BBD0E00(v29[0], qword_28151C040, 0);
    v12 = v11;
    if (v11)
    {
      v28 = v11;
      memmove(v11, __src[1], v10);
      v13 = *(a1 + 48);
      v14 = *(v13 + 148);
      v15 = *(v13 + 150);
      if (!*(a1 + 24))
      {
        if (__PAIR64__(v15, v14) != __PAIR64__(bswap32(v12[3]) >> 16, bswap32(v12[2]) >> 16))
        {
          v26 = __cxa_allocate_exception(0x10uLL);
          sub_24BBE0934(v26, 5);
          __cxa_throw(v26, &unk_285F89D90, nullsub_8);
        }

        *(a1 + 24) = sub_24BBF24B0(v12, v10);
      }

      if (a4)
      {
        v16 = v14;
      }

      else
      {
        v16 = 0;
      }

      v17 = sub_24BBD0F68(4 * (v16 + v15), 0);
      v18 = v17;
      v27 = v17;
      v32[0] = 0;
      v32[1] = 0;
      if (a4)
      {
        v19 = &v17[v15];
        (*(*a1 + 312))(a1, a2, a3, v12, v10, v19);
      }

      else
      {
        (*(*a1 + 312))(a1, a2, a3, v12, v10, v32);
        v19 = v32;
        sub_24BBD12E8(*(a1 + 24), v18, v32, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);
      }

      v20 = *(a1 + 24);
      v21 = *(*(*(a1 + 48) + 128) + 2);
      if (!qword_28151C130)
      {
        qword_28151C138 = sub_24BBF2FD8;
        qword_28151C140 = sub_24BBF3008;
        qword_28151C148 = sub_24BBF3038;
        qword_28151C150 = sub_24BBF3040;
        unk_28151C158 = 0;
        qword_28151C160 = sub_24BBF30D8;
        qword_28151C170 = 0;
        unk_28151C178 = 0;
        qword_28151C168 = sub_24BBF30E4;
        qword_28151C130 = &qword_28151C138;
      }

      if (!sub_24BBF0574(v20, v12, v10, v19, v19, v18, v21, &qword_28151C130, 0))
      {
        v25 = __cxa_allocate_exception(0x10uLL);
        sub_24BBE0934(v25, 1);
        __cxa_throw(v25, &unk_285F89D90, nullsub_8);
      }

      v4 = v27;
      v27 = 0;
      sub_24BBF33B8(&v27);
      sub_24BBF33B8(&v28);
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x24C252010](v29 + 8);
  }

  else
  {
    v4 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_24BBD0808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void *);
  v11 = va_arg(va1, void);
  sub_24BBF33B8(va);
  MEMORY[0x24C252010](va1);
  _Unwind_Resume(a1);
}

uint64_t sub_24BBD0888(uint64_t a1)
{
  if (!*(a1 + 40))
  {
    operator new();
  }

  return *(a1 + 40);
}

uint64_t sub_24BBD0900(uint64_t a1, uint64_t a2)
{
  v4 = TFontSurrogate::TFontSurrogate();
  *v4 = &unk_285F8A030;
  v4[2] = 0;
  if (a2 && (*(*a2 + 40))(a2) != 22)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 4);
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  return a1;
}

void sub_24BBD09C0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  TFontSurrogate::~TFontSurrogate(v1);
  _Unwind_Resume(a1);
}

void *sub_24BBD09E4(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  TDataReference::TDataReference((a1 + 1));
  a1[6] = a2;
  v10 = 0;
  (*(*a2 + 40))(v9, a2, a3, 0, &v10);
  TDataReference::operator=();
  MEMORY[0x24C252010](v9);
  *a1 = v10;
  Data = TDataReference::GetData((a1 + 1));
  a1[5] = Data;
  if (!Data)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 4);
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  return a1;
}

void sub_24BBD0ACC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  MEMORY[0x24C252010](v1 + 8);
  _Unwind_Resume(a1);
}

void sub_24BBD0B04(uint64_t a1@<X0>, int a2@<W1>, _DWORD *a3@<X3>, TDataReference *a4@<X8>)
{
  if (a2 != 1112297028)
  {
    if ((*(*a1 + 16))(a1) != a2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_24BBE0934(exception, 4);
      __cxa_throw(exception, &unk_285F89D90, nullsub_8);
    }

    if (a3)
    {
      v9 = (*(**(a1 + 8) + 56))(*(a1 + 8));
      *a3 = (*(*v9 + 24))(v9);
    }

    v8 = *(**(a1 + 8) + 48);

    goto LABEL_7;
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    if (a3)
    {
      *a3 = (*(*v7 + 24))(v7);
      v7 = *(a1 + 16);
    }

    v8 = *(*v7 + 32);

LABEL_7:
    v8();
    return;
  }

  v10 = (*(**(a1 + 8) + 56))(*(a1 + 8));
  if (TResourceForkFileReference::GetResourceCount(*(*(v10 + 8) + 48)) == 1)
  {
    operator new();
  }

  TDataReference::TDataReference(a4);
}

uint64_t sub_24BBD0E00(unsigned int a1, uint64_t *a2, char a3)
{
  if (!a2 || ((v3 = *a2, (a3 & 1) == 0) ? (result = (*(v3 + 16))(a2, a1)) : (result = (*(v3 + 24))(a2, a1, 1)), !result))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 20);
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  return result;
}

_BYTE *sub_24BBD0EE4(int a1, int a2, uint64_t (*a3)(void, uint64_t), uint64_t a4)
{
  if ((a1 - 16) < 0xFFFFFFF1 || a2 > 16)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  v8 = (1 << a1);
  v9 = a3((v8 + 3), a4);
  v5 = v9;
  if (v9)
  {
    *v9 = v7;
    v9[1] = v6;
    memset(v9 + 2, 255, v8);
  }

  return v5;
}

unint64_t sub_24BBD0F7C(const char *a1)
{
  v1 = sub_24BBD0FA4(a1);

  return sub_24BBD11BC(v1);
}

unint64_t sub_24BBD0FA4(const char *a1)
{
  v1 = 0;
  v2 = *a1;
  if (v2 == 45 || v2 == 43)
  {
    v4 = a1 + 1;
  }

  else
  {
    v4 = a1;
  }

  do
  {
    v5 = v4[v1];
    v6 = byte_24BC06072[v4[v1++]];
  }

  while ((v6 & 0x40) != 0);
  v7 = &v4[v1];
  if (v5 != 35)
  {
    v12 = strtol(v4, 0, 10);
    v13 = sub_24BBD116C(v12);
    if (v5 == 46)
    {
      v14 = 0;
      do
      {
        v5 = v4[v14 + v1];
        v15 = byte_24BC06072[v4[v14++ + v1]];
      }

      while ((v15 & 0x40) != 0);
      v16 = &v4[v1 - 1 + v14];
      if (v14 != 1)
      {
        v17 = strtol(v7, 0, 10);
        v18 = sub_24BBD116C(v17);
        v19 = sub_24BBEDBA0(v18, 1 - v14);
        v13 = sub_24BBFB6EC(v13, v19);
      }
    }

    else
    {
      v16 = (v7 - 1);
    }

    if ((v5 & 0xFFFFFFDF) == 0x45)
    {
      v5 = *(v16 + 1);
      if (v5 == 45 || (v20 = v16 + 1, v5 == 43))
      {
        v5 = *(v16 + 2);
        v20 = v16 + 2;
      }

      if ((byte_24BC06072[v5] & 0x40) != 0)
      {
        v21 = (v20 + 1);
        do
        {
          v22 = *v21++;
          v5 = v22;
        }

        while ((byte_24BC06072[v22] & 0x40) != 0);
      }

      v23 = atoi((v16 + 1));
      v13 = sub_24BBEDBA0(v13, v23);
    }

    if (v2 == 45)
    {
      v10 = -v13;
    }

    else
    {
      LODWORD(v10) = v13;
    }

    if (!v5)
    {
      v11 = v13 & 0xFFFFFFFF00000000;
      return v11 | v10;
    }

    goto LABEL_33;
  }

  if (v1 == 1 || (v8 = atoi(v4), v8 > 0x24) || (__endptr = 0, v9 = strtol(&v4[v1], &__endptr, v8), *__endptr))
  {
LABEL_33:
    v11 = 0x753000000000;
    LODWORD(v10) = 1;
    return v11 | v10;
  }

  if (v2 == 45)
  {
    v9 = -v9;
  }

  v10 = sub_24BBD116C(v9);
  v11 = v10 & 0xFFFFFFFF00000000;
  return v11 | v10;
}

uint64_t sub_24BBD116C(int a1)
{
  if (!a1)
  {
    return 0;
  }

  if (a1 >= 0)
  {
    LODWORD(v1) = a1;
  }

  else
  {
    LODWORD(v1) = -a1;
  }

  v2 = 0x1E00000000;
  v3 = v1 >> 30;
  v4 = __clz(v1) ^ 0x1F;
  v5 = v1 << (30 - v4);
  v6 = v4 << 32;
  if (!(v1 >> 30))
  {
    LODWORD(v1) = v5;
  }

  if (!v3)
  {
    v2 = v6;
  }

  if (a1 >= 0)
  {
    v1 = v1;
  }

  else
  {
    v1 = -v1;
  }

  return v2 | v1;
}

unint64_t sub_24BBD11BC(unint64_t result)
{
  if (result && HIDWORD(result) != 14)
  {
    if ((result & 0x80000000) == 0)
    {
      v1 = result;
    }

    else
    {
      v1 = -result;
    }

    v2 = ((v1 >> (13 - BYTE4(result))) & 1) + (v1 >> (13 - BYTE4(result)) >> 1);
    if ((result & 0x80000000) != 0)
    {
      v2 = -v2;
    }

    if (SHIDWORD(result) <= 13)
    {
      return v2;
    }

    else
    {
      return (result >> 31) ^ 0x7FFFFFFFu;
    }
  }

  return result;
}

uint64_t *sub_24BBD1200()
{
  if (!qword_28151C130)
  {
    qword_28151C138 = sub_24BBF2FD8;
    qword_28151C140 = sub_24BBF3008;
    qword_28151C148 = sub_24BBF3038;
    qword_28151C150 = sub_24BBF3040;
    unk_28151C158 = 0;
    qword_28151C160 = sub_24BBF30D8;
    qword_28151C170 = 0;
    unk_28151C178 = 0;
    qword_28151C168 = sub_24BBF30E4;
    qword_28151C130 = &qword_28151C138;
  }

  return &qword_28151C130;
}

uint64_t sub_24BBD1288(_BYTE *a1, unsigned int a2, int *a3)
{
  v3 = *a1;
  if (a2 >> v3)
  {
    return 0;
  }

  v5 = 0;
  if (*a1)
  {
    v6 = 1;
    do
    {
      v8 = *a3++;
      v7 = v8;
      if (v8)
      {
        if (v7 != 0x10000)
        {
          return 0;
        }

        v5 |= v6;
      }

      v6 *= 2;
      --v3;
    }

    while (v3);
    if (v5 < 0)
    {
      return 0;
    }
  }

  if (a1[v5 + 2] != 255)
  {
    return 0;
  }

  a1[v5 + 2] = a2;
  return 1;
}

BOOL sub_24BBD12E8(unsigned __int8 *a1, _DWORD *a2, int *a3, int *a4, __int16 a5, uint64_t a6, __int16 a7, uint64_t a8, __int16 a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13)
{
  v53 = *MEMORY[0x277D85DE8];
  memset(v46, 0, sizeof(v46));
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  LODWORD(v49) = a1[1];
  *(&v49 + 1) = a2;
  v19 = *a1;
  LODWORD(v50) = v19;
  *(&v50 + 1) = a3;
  LODWORD(v51) = v19;
  *(&v51 + 1) = a4;
  v48[5] = 0;
  v48[6] = a12;
  v48[4] = 0x10000;
  memset(v48, 0, 32);
  v47 = 0;
  *(&v46[0] + 1) = 0;
  v45 = 0u;
  memset(v44, 0, sizeof(v44));
  if (!a8)
  {
    v21 = a10;
    if (a10 && v19)
    {
      v22 = 0;
      v23 = a3;
      do
      {
        v24 = *a4;
        v25 = v21;
        do
        {
          v21 = v25;
          v27 = *(v25 + 8);
          v26 = *(v25 + 12);
          v25 += 8;
        }

        while (v24 >= v27 && v26 < 0x10000);
        v29 = *(v25 - 8);
        v28 = *(v25 - 4);
        v30 = (v24 - v29) * (v26 - v28) * 0.0000152587891;
        if (v30 >= 0.0)
        {
          v31 = 0.5;
        }

        else
        {
          v31 = -0.5;
        }

        v32 = v30 + v31;
        if (v32 >= 2147483650.0)
        {
          v33 = 0x7FFFFFFF;
        }

        else if (v32 <= -2147483650.0)
        {
          v33 = 0x80000000;
        }

        else
        {
          v33 = v32;
        }

        v34 = v27 - v29;
        if (v34)
        {
          v36 = v33 / v34 * 65536.0;
          if (v36 >= 0.0)
          {
            v37 = 0.5;
          }

          else
          {
            v37 = -0.5;
          }

          v38 = v36 + v37;
          if (v38 >= 2147483650.0)
          {
            v35 = 0x7FFFFFFF;
          }

          else if (v38 <= -2147483650.0)
          {
            v35 = 0x80000000;
          }

          else
          {
            v35 = v38;
          }
        }

        else
        {
          v35 = (v33 >> 31) ^ 0x7FFFFFFF;
        }

        *v23 = v35 + v28;
        do
        {
          v39 = *(v21 + 12);
          v21 += 8;
        }

        while (v39 != 0x10000);
        ++v22;
        ++v23;
        ++a4;
      }

      while (v22 != v19);
    }

LABEL_31:
    if (a6)
    {
      *&v44[0] = a6;
      LOWORD(v45) = a7;
      result = sub_24BBE3DC8(v48, v44, a5, v46, &v49, a11, a13) == 0;
      goto LABEL_40;
    }

    if (a2)
    {
      if (a1[1])
      {
        v40 = a1 + 2;
        v41 = a1[1];
        do
        {
          v42 = *v40++;
          if (v42 >= a1[1])
          {
            goto LABEL_3;
          }
        }

        while (--v41);
      }

      sub_24BBD15B0(a1, a2, a3);
    }

    result = 1;
    goto LABEL_40;
  }

  *&v44[0] = a8;
  LOWORD(v45) = a9;
  if (!sub_24BBE3DC8(v48, v44, a5, v46, &v49, a11, a13))
  {
    goto LABEL_31;
  }

LABEL_3:
  result = 0;
LABEL_40:
  v43 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BBD15B0(unsigned __int8 *a1, _DWORD *a2, int *a3)
{
  v5 = *a1;
  if (*a1)
  {
    v6 = 0;
    v7 = 1;
    v8 = a3;
    v9 = *a1;
    do
    {
      v11 = *v8++;
      v10 = v11;
      if (v11)
      {
        if (v10 != 0x10000)
        {
          goto LABEL_8;
        }

        v6 |= v7;
      }

      v7 *= 2;
      --v9;
    }

    while (v9);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

LABEL_8:
    v12 = a1[1];
    if (a1[1])
    {
      v13 = 0;
      do
      {
        v14 = 1;
        v15 = 0x10000;
        v16 = a3;
        v17 = v5;
        do
        {
          v19 = *v16++;
          v18 = v19;
          v20 = 0x10000 - v19;
          if ((v14 & v13) == 0)
          {
            v18 = v20;
          }

          v21 = v15 * v18 * 0.0000152587891;
          if (v21 >= 0.0)
          {
            v22 = 0.5;
          }

          else
          {
            v22 = -0.5;
          }

          v23 = v21 + v22;
          if (v23 >= 2147483650.0)
          {
            v15 = 0x7FFFFFFF;
          }

          else if (v23 <= -2147483650.0)
          {
            v15 = 0x80000000;
          }

          else
          {
            v15 = v23;
          }

          v14 *= 2;
          --v17;
        }

        while (v17);
        a2[a1[v13++ + 2]] = v15;
      }

      while (v13 != v12);
    }
  }

  else
  {
    v6 = 0;
LABEL_25:
    if (a1[1])
    {
      bzero(a2, 4 * a1[1]);
    }

    a2[a1[v6 + 2]] = 0x10000;
  }
}

uint64_t sub_24BBD1708(uint64_t a1)
{
  *a1 = &unk_285F8A7E0;
  v2 = *(a1 + 152);
  if (v2)
  {
    j__free(v2);
  }

  v3 = *(a1 + 176);
  if (v3)
  {
    j__free(v3);
  }

  qword_27F078540 = *(a1 + 248);
  if (*(a1 + 256) == 1)
  {
    pthread_mutex_unlock(&stru_28151BBD0);
  }

  return a1;
}

uint64_t sub_24BBD1788(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (sub_24BBD1868(a3))
  {
    v8 = sub_24BBD1894(0x50u);
    sub_24BBF907C(v8, a1, a2, a3, a4);
  }

  else
  {
    v8 = sub_24BBD1894(0x30u);
    sub_24BBD18A8(v8, a1, a2, a3, a4);
  }

  return v8;
}

void sub_24BBD1820(_Unwind_Exception *a1, int a2)
{
  j__free(v2);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BBD17C0);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BBD18AC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, int a5, __n128 a6)
{
  v7 = *a4;
  v8 = a4[1];
  *(a1 + 8) = *a4;
  *(a1 + 12) = v8;
  *a1 = &unk_285F8B098;
  *(a1 + 16) = 0;
  v9 = a4[12];
  v10 = a4[11] / 4718592.0 * 65536.0;
  v11 = 0.5;
  if (v10 >= 0.0)
  {
    v12 = 0.5;
  }

  else
  {
    v12 = -0.5;
  }

  v13 = v10 + v12;
  a6.n128_u64[0] = 0x41DFFFFFFFC00000;
  if (v13 > -2147483650.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0x80000000;
  }

  if (v13 < 2147483650.0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0x7FFFFFFF;
  }

  *(a1 + 24) = v15;
  v16 = v9 / 4718592.0 * 65536.0;
  if (v16 < 0.0)
  {
    v11 = -0.5;
  }

  v17 = v16 + v11;
  if (v17 >= 2147483650.0)
  {
    v18 = 0x7FFFFFFF;
  }

  else if (v17 <= -2147483650.0)
  {
    v18 = 0x80000000;
  }

  else
  {
    v18 = v17;
  }

  *(a1 + 28) = v18;
  v19 = a4[2];
  *(a1 + 32) = v19;
  v20 = a4[3];
  *(a1 + 36) = v20;
  v21 = a4[5];
  *(a1 + 40) = v21;
  v22 = a4[6];
  *(a1 + 44) = v22;
  if (v8 < 1 || a4[11] < 1 || a4[12] < 1 || !(v21 | v20 | v19 | v22))
  {
LABEL_127:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 8);
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  if (a3)
  {
    v23 = 0;
  }

  else
  {
    v23 = (v21 | v20) == 0;
  }

  v25 = v23 && v19 == v22;
  v26 = v8 * a5;
  *(a1 + 12) = v8 * a5;
  if (!v19)
  {
    v35 = 0;
    if (v20)
    {
      goto LABEL_70;
    }

LABEL_48:
    v36 = 0;
    if (v21)
    {
      goto LABEL_89;
    }

LABEL_49:
    if (!v22)
    {
      goto LABEL_108;
    }

    goto LABEL_50;
  }

  v27 = v15 * v19 * 0.0000152587891;
  v28 = 0.5;
  if (v27 >= 0.0)
  {
    v29 = 0.5;
  }

  else
  {
    v29 = -0.5;
  }

  v30 = v27 + v29;
  if (v30 >= 2147483650.0 || v30 <= -2147483650.0 || (v30 - 0x7FFFFFFF) <= 1)
  {
    goto LABEL_127;
  }

  v33 = v26 * v30 * 0.0000152587891;
  if (v33 < 0.0)
  {
    v28 = -0.5;
  }

  v34 = v33 + v28;
  if (v34 >= 2147483650.0)
  {
    v35 = 0x7FFFFFFF;
  }

  else if (v34 <= -2147483650.0)
  {
    v35 = 0x80000000;
  }

  else
  {
    v35 = v34;
  }

  *(a1 + 32) = v35;
  if (!v20)
  {
    goto LABEL_48;
  }

LABEL_70:
  v46 = v15 * v20 * 0.0000152587891;
  v47 = 0.5;
  if (v46 >= 0.0)
  {
    v48 = 0.5;
  }

  else
  {
    v48 = -0.5;
  }

  v49 = v46 + v48;
  if (v49 >= 2147483650.0 || v49 <= -2147483650.0 || (v49 - 0x7FFFFFFF) <= 1)
  {
    goto LABEL_127;
  }

  v52 = v26 * v49 * 0.0000152587891;
  if (v52 < 0.0)
  {
    v47 = -0.5;
  }

  v53 = v52 + v47;
  if (v53 >= 2147483650.0)
  {
    v54 = 0x7FFFFFFF;
  }

  else if (v53 <= -2147483650.0)
  {
    v54 = 0x80000000;
  }

  else
  {
    v54 = v53;
  }

  v36 = -v54;
  *(a1 + 36) = v36;
  if (!v21)
  {
    goto LABEL_49;
  }

LABEL_89:
  v55 = v18 * v21 * 0.0000152587891;
  v56 = 0.5;
  if (v55 >= 0.0)
  {
    v57 = 0.5;
  }

  else
  {
    v57 = -0.5;
  }

  v58 = v55 + v57;
  if (v58 >= 2147483650.0 || v58 <= -2147483650.0 || (v58 - 0x7FFFFFFF) <= 1)
  {
    goto LABEL_127;
  }

  v61 = v26 * v58 * 0.0000152587891;
  if (v61 < 0.0)
  {
    v56 = -0.5;
  }

  v62 = v61 + v56;
  if (v62 >= 2147483650.0)
  {
    v21 = 0x7FFFFFFF;
  }

  else if (v62 <= -2147483650.0)
  {
    v21 = 0x80000000;
  }

  else
  {
    v21 = v62;
  }

  *(a1 + 40) = v21;
  if (!v22)
  {
LABEL_108:
    v63 = 0;
    if (!v25)
    {
      goto LABEL_115;
    }

    goto LABEL_112;
  }

LABEL_50:
  v37 = v18 * v22 * 0.0000152587891;
  v38 = 0.5;
  if (v37 >= 0.0)
  {
    v39 = 0.5;
  }

  else
  {
    v39 = -0.5;
  }

  v40 = v37 + v39;
  if (v40 >= 2147483650.0 || v40 <= -2147483650.0 || (v40 - 0x7FFFFFFF) <= 1)
  {
    goto LABEL_127;
  }

  v43 = v26 * v40 * 0.0000152587891;
  if (v43 < 0.0)
  {
    v38 = -0.5;
  }

  v44 = v43 + v38;
  if (v44 >= 2147483650.0)
  {
    v45 = 0x7FFFFFFF;
  }

  else
  {
    a6.n128_u64[0] = 0xC1E0000000000000;
    if (v44 <= -2147483650.0)
    {
      v45 = 0x80000000;
    }

    else
    {
      v45 = v44;
    }
  }

  v63 = -v45;
  *(a1 + 44) = v63;
  if (v25)
  {
LABEL_112:
    if (!v35 && (v35 - 393216) <= 0x7A0000)
    {
      *(a1 + 8) = v7 | 0x80000000;
    }
  }

LABEL_115:
  if (v21 >= 0)
  {
    v64 = v21;
  }

  else
  {
    v64 = -v21;
  }

  if (v63 >= 0)
  {
    v65 = v63;
  }

  else
  {
    v65 = -v63;
  }

  if (v64 <= v65)
  {
    v66 = v65;
  }

  else
  {
    v66 = v64;
  }

  if (v64 >= v65)
  {
    v64 = v65;
  }

  *(a1 + 12) = v66 + (v64 >> 1) - (v64 >> 4);
  v69[0] = v35;
  v69[1] = v36;
  v69[2] = v21;
  v69[3] = v63;
  v70 = 0;
  *(a1 + 16) = (*(*a2 + 80))(a2, a3, v69, a4 + 13, a6);
  return a1;
}

void *sub_24BBD1E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24BBD1894(0x18u);
  sub_24BBD1EB0(v10, a1, a2, a3, a4, a5);
  return v10;
}

void *sub_24BBD1EB0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = &unk_285F89FD8;
  a1[1] = 0;
  v8 = a1 + 2;
  a1[1] = (*(*a2 + 72))(a2, a3, a4, a5, a6, &v8);
  return a1;
}

void *sub_24BBD1F44(uint64_t a1, uint64_t a2, int *a3, int32x2_t *a4, int a5, void **a6)
{
  v12 = *a6;
  if (*a6)
  {
    v13 = 0;
  }

  else
  {
    v12 = sub_24BBD0F68(8u, 0);
    v13 = v12;
  }

  v19 = v13;
  v14 = sub_24BBD20B4(a1, *(*(a1 + 48) + 128), a2, a3, a4, a5, v12);
  v18 = v14;
  v15 = sub_24BBD0F68(0x3D8u, 0);
  memcpy(v15, v14, 0x3D8uLL);
  if (a2)
  {
    v16 = v15[109];
    if (v16)
    {
      if (v16 == v14 + 648)
      {
        v15[109] = v15 + 81;
      }
    }
  }

  v19 = 0;
  if (!*a6)
  {
    *a6 = v12;
  }

  sub_24BBEC42C(&v18);
  sub_24BBF33B8(&v19);
  return v15;
}

void sub_24BBD204C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_24BBEC42C(&a9);
  sub_24BBF33B8(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_24BBD2070(uint64_t a1, int a2, uint64_t *a3)
{
  if (a1)
  {
    v4 = 0;
  }

  else
  {
    a1 = sub_24BBD0F68(8 * a2, 0);
    v4 = a1;
  }

  *a3 = a1;
  return v4;
}

uint64_t sub_24BBD20B4(uint64_t a1, int *a2, uint64_t a3, int *a4, int32x2_t *a5, int a6, void *a7)
{
  v54 = 0;
  v55 = 0;
  v56 = 0;
  sub_24BBD23A4(a2 + 1, a4, &v54);
  v14 = a2[1];
  if (v14 == a2[4])
  {
    if (a2[2] || a2[3])
    {
      goto LABEL_16;
    }

    if (v54 >= 0)
    {
      v15 = v54;
    }

    else
    {
      v15 = -v54;
    }

    v16 = HIDWORD(v55);
    if (v55 < 0)
    {
      v16 = -HIDWORD(v55);
    }

    v17 = v15 == v16 && HIDWORD(v54) == 0;
    if (!v17 || v55 != 0)
    {
LABEL_16:
      v19 = 0;
      v20 = 0;
    }

    else
    {
      if (v14 == 1073742)
      {
        v28 = (0x4189374BC7 * *a4 + 0x8000) >> 16;
      }

      else
      {
        v28 = 4 * v14 * *a4;
      }

      v19 = v54 == (((v28 >> 31) + 1) >> 1);
      v20 = v28;
    }
  }

  else
  {
    v19 = 0;
    v20 = 0;
  }

  *a7 = v56;
  v56 = 0;
  v21 = v20;
  v51 = vbsl_s8(vceqz_s32(*a5), vdup_n_s32(0x16A09u), *a5);
  v52 = a6;
  v53 = a6 == 1;
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  sub_24BBD0390(&v34, a1);
  v33 = 0;
  memset(v30, 0, sizeof(v30));
  v32 = 0;
  v31 = qword_28151C018;
  qword_28151C018 = v30;
  if (_setjmp(v30))
  {
    v22 = v32;
  }

  else
  {
    v23 = *sub_24BBD2908();
    sub_24BBD2CC8();
    v22 = v23(a2, &v54, a3, &v51, &qword_28151C188, &v33, 0);
    qword_28151C018 = v31;
  }

  v24 = sub_24BBD5D7C(v22);
  if (v35)
  {
    v25 = 1;
  }

  else
  {
    v25 = v24;
  }

  if (v25 == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, v35);
    goto LABEL_33;
  }

  v26 = v33;
  if (!v33)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 1);
LABEL_33:
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  *(v33 + 962) = v19;
  *(v26 + 968) = v21;
  *(v26 + 976) = v54;
  sub_24BBD1708(&v34);
  return v26;
}

void sub_24BBD2374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  __cxa_free_exception(v37);
  sub_24BBD1708(&a37);
  _Unwind_Resume(a1);
}

int *sub_24BBD23A4(int *result, int *a2, int *a3)
{
  v3 = result[1];
  if (v3 || result[2] || a2[1] || a2[2])
  {
    v4 = *result;
    v5 = *a2 * v4 * 9.31322575e-10;
    v6 = 0.5;
    if (v5 >= 0.0)
    {
      v7 = 0.5;
    }

    else
    {
      v7 = -0.5;
    }

    v8 = v5 + v7;
    if (v5 + v7 > -2147483650.0)
    {
      v9 = (v5 + v7);
    }

    else
    {
      v9 = 0x80000000;
    }

    v10 = a2[3];
    v11 = a2[2];
    if (v8 >= 2147483650.0)
    {
      v9 = 0x7FFFFFFF;
    }

    v12 = v3;
    v13 = v3 * v11 * 9.31322575e-10;
    if (v13 >= 0.0)
    {
      v14 = 0.5;
    }

    else
    {
      v14 = -0.5;
    }

    v15 = v13 + v14;
    if (v15 > -2147483650.0)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0x80000000;
    }

    if (v15 >= 2147483650.0)
    {
      v16 = 0x7FFFFFFF;
    }

    v17 = v16 + v9;
    v18 = v4 * a2[1] * 9.31322575e-10;
    if (v18 >= 0.0)
    {
      v19 = 0.5;
    }

    else
    {
      v19 = -0.5;
    }

    v20 = v18 + v19;
    if (v20 > -2147483650.0)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0x80000000;
    }

    if (v20 >= 2147483650.0)
    {
      v21 = 0x7FFFFFFF;
    }

    v22 = v12 * v10 * 9.31322575e-10;
    if (v22 >= 0.0)
    {
      v23 = 0.5;
    }

    else
    {
      v23 = -0.5;
    }

    v24 = v22 + v23;
    if (v24 > -2147483650.0)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0x80000000;
    }

    if (v24 >= 2147483650.0)
    {
      v25 = 0x7FFFFFFF;
    }

    *a3 = v17;
    a3[1] = v25 + v21;
    v26 = a2[1];
    v27 = *a2;
    v28 = result[3];
    v29 = result[2];
    v30 = v27 * v29 * 9.31322575e-10;
    if (v30 >= 0.0)
    {
      v31 = 0.5;
    }

    else
    {
      v31 = -0.5;
    }

    v32 = v30 + v31;
    if (v32 > -2147483650.0)
    {
      v33 = v32;
    }

    else
    {
      v33 = 0x80000000;
    }

    if (v32 >= 2147483650.0)
    {
      v33 = 0x7FFFFFFF;
    }

    v34 = v28;
    v35 = v11 * v28 * 9.31322575e-10;
    if (v35 >= 0.0)
    {
      v36 = 0.5;
    }

    else
    {
      v36 = -0.5;
    }

    v37 = v35 + v36;
    if (v37 > -2147483650.0)
    {
      v38 = v37;
    }

    else
    {
      v38 = 0x80000000;
    }

    if (v37 >= 2147483650.0)
    {
      v38 = 0x7FFFFFFF;
    }

    v39 = v38 + v33;
    v40 = v26;
    v41 = v29 * v26 * 9.31322575e-10;
    if (v41 >= 0.0)
    {
      v42 = 0.5;
    }

    else
    {
      v42 = -0.5;
    }

    v43 = v41 + v42;
    if (v43 > -2147483650.0)
    {
      v44 = v43;
    }

    else
    {
      v44 = 0x80000000;
    }

    if (v43 < 2147483650.0)
    {
      v45 = v44;
    }

    else
    {
      v45 = 0x7FFFFFFF;
    }

    v46 = v10 * v34 * 9.31322575e-10;
    if (v46 >= 0.0)
    {
      v47 = 0.5;
    }

    else
    {
      v47 = -0.5;
    }

    v48 = v46 + v47;
    if (v48 > -2147483650.0)
    {
      v49 = v48;
    }

    else
    {
      v49 = 0x80000000;
    }

    if (v48 >= 2147483650.0)
    {
      v49 = 0x7FFFFFFF;
    }

    v50 = v49 + v45;
    v51 = result[5];
    v52 = result[4];
    a3[2] = v39;
    a3[3] = v50;
    v53 = v27 * v52 * 9.31322575e-10;
    if (v53 >= 0.0)
    {
      v54 = 0.5;
    }

    else
    {
      v54 = -0.5;
    }

    v55 = v53 + v54;
    if (v55 > -2147483650.0)
    {
      v56 = v55;
    }

    else
    {
      v56 = 0x80000000;
    }

    if (v55 < 2147483650.0)
    {
      v57 = v56;
    }

    else
    {
      v57 = 0x7FFFFFFF;
    }

    v58 = a2[3];
    v59 = v51;
    v60 = a2[2] * v51 * 9.31322575e-10;
    if (v60 >= 0.0)
    {
      v61 = 0.5;
    }

    else
    {
      v61 = -0.5;
    }

    v62 = v60 + v61;
    if (v62 > -2147483650.0)
    {
      v63 = v62;
    }

    else
    {
      v63 = 0x80000000;
    }

    if (v62 < 2147483650.0)
    {
      v64 = v63;
    }

    else
    {
      v64 = 0x7FFFFFFF;
    }

    a3[4] = v64 + v57 + a2[4];
    v65 = v40 * v52 * 9.31322575e-10;
    if (v65 >= 0.0)
    {
      v66 = 0.5;
    }

    else
    {
      v66 = -0.5;
    }

    v67 = v65 + v66;
    if (v67 > -2147483650.0)
    {
      v68 = v67;
    }

    else
    {
      v68 = 0x80000000;
    }

    if (v67 < 2147483650.0)
    {
      v69 = v68;
    }

    else
    {
      v69 = 0x7FFFFFFF;
    }

    v70 = v59 * v58 * 9.31322575e-10;
    if (v70 < 0.0)
    {
      v6 = -0.5;
    }

    v71 = v70 + v6;
    if (v71 >= 2147483650.0)
    {
      v72 = 0x7FFFFFFF;
    }

    else if (v71 <= -2147483650.0)
    {
      v72 = 0x80000000;
    }

    else
    {
      v72 = v71;
    }

    v73 = v72 + v69 + a2[5];
  }

  else
  {
    v74 = *a2 * *result * 9.31322575e-10;
    v75 = 0.5;
    if (v74 >= 0.0)
    {
      v76 = 0.5;
    }

    else
    {
      v76 = -0.5;
    }

    v77 = v74 + v76;
    if (v77 > -2147483650.0)
    {
      v78 = v77;
    }

    else
    {
      v78 = 0x80000000;
    }

    if (v77 < 2147483650.0)
    {
      v79 = v78;
    }

    else
    {
      v79 = 0x7FFFFFFF;
    }

    a3[1] = 0;
    a3[2] = 0;
    *a3 = v79;
    v80 = a2[3] * result[3] * 9.31322575e-10;
    if (v80 < 0.0)
    {
      v75 = -0.5;
    }

    v81 = v80 + v75;
    if (v81 >= 2147483650.0)
    {
      v82 = 0x7FFFFFFF;
    }

    else if (v81 <= -2147483650.0)
    {
      v82 = 0x80000000;
    }

    else
    {
      v82 = v81;
    }

    a3[3] = v82;
    v83 = result[4];
    if (v83 || result[5])
    {
      v84 = v83 * *a2 * 9.31322575e-10;
      v85 = 0.5;
      if (v84 >= 0.0)
      {
        v86 = 0.5;
      }

      else
      {
        v86 = -0.5;
      }

      v87 = v84 + v86;
      if (v87 > -2147483650.0)
      {
        v88 = v87;
      }

      else
      {
        v88 = 0x80000000;
      }

      if (v87 < 2147483650.0)
      {
        v89 = v88;
      }

      else
      {
        v89 = 0x7FFFFFFF;
      }

      v90 = a2[3];
      a3[4] = a2[4] + v89;
      v91 = v90 * result[5] * 9.31322575e-10;
      if (v91 < 0.0)
      {
        v85 = -0.5;
      }

      v92 = v91 + v85;
      if (v92 >= 2147483650.0)
      {
        v93 = 0x7FFFFFFF;
      }

      else if (v92 <= -2147483650.0)
      {
        v93 = 0x80000000;
      }

      else
      {
        v93 = v92;
      }

      v73 = a2[5] + v93;
    }

    else
    {
      v73 = a2[5];
      a3[4] = a2[4];
    }
  }

  a3[5] = v73;
  return result;
}

void *sub_24BBD2908()
{
  if ((byte_28151C0C0 & 1) == 0)
  {
    if (sub_24BBD2998(&unk_28151C0C8))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_24BBE0934(exception, 1);
      __cxa_throw(exception, &unk_285F89D90, nullsub_8);
    }

    byte_28151C0C0 = 1;
  }

  return &unk_28151C0C8;
}

uint64_t sub_24BBD2998(uint64_t a1)
{
  result = sub_24BBD29CC(a1);
  if (!result)
  {
    qword_28151BD78 = sub_24BBDFF28;
  }

  return result;
}

uint64_t sub_24BBD29CC(uint64_t a1)
{
  *a1 = sub_24BBD2D48;
  *(a1 + 8) = sub_24BBE4058;
  *(a1 + 64) = sub_24BBD3788;
  *(a1 + 16) = sub_24BBE40BC;
  *(a1 + 24) = sub_24BBE40F0;
  *(a1 + 32) = sub_24BBD81D8;
  *(a1 + 40) = sub_24BBE1500;
  *(a1 + 72) = sub_24BBD71E0;
  *(a1 + 80) = sub_24BBE4254;
  *(a1 + 48) = sub_24BBE425C;
  *(a1 + 56) = sub_24BBE4264;
  *(a1 + 88) = sub_24BBE7C6C;
  *(a1 + 96) = 103;
  dword_28151BD70 = 0;
  qword_28151BD78 = sub_24BBDFF28;
  qword_28151BC10[0] = sub_24BBE4294;
  qword_28151BC18 = sub_24BBE42D0;
  qword_28151BC20 = sub_24BBDFB50;
  qword_28151BC28 = sub_24BBE4310;
  qword_28151BC30 = sub_24BBE4350;
  qword_28151BC38 = sub_24BBE4390;
  qword_28151BC40 = sub_24BBE43D0;
  qword_28151BC48 = sub_24BBE4410;
  qword_28151BC50 = sub_24BBE4454;
  qword_28151BC58 = sub_24BBE44D0;
  qword_28151BC60 = sub_24BBE4550;
  qword_28151BC68 = sub_24BBE45D4;
  qword_28151BC70 = sub_24BBE4658;
  qword_28151BC78 = sub_24BBE46DC;
  qword_28151BC80 = sub_24BBE4760;
  qword_28151BC88 = sub_24BBE47E0;
  qword_28151BC90[0] = sub_24BBE4864;
  qword_28151BC98 = sub_24BBE48A0;
  qword_28151BCA0 = sub_24BBDFBC8;
  qword_28151BCA8 = sub_24BBE48E0;
  qword_28151BCB0 = sub_24BBE4920;
  qword_28151BCB8 = sub_24BBE4960;
  qword_28151BCC0 = sub_24BBE49A0;
  qword_28151BCC8 = sub_24BBE49E0;
  qword_28151BCD0 = sub_24BBE4A24;
  qword_28151BCD8 = sub_24BBE4A8C;
  qword_28151BCE0 = sub_24BBE4AF8;
  qword_28151BCE8 = sub_24BBE4B68;
  qword_28151BCF0 = sub_24BBE4BD8;
  qword_28151BCF8 = sub_24BBE4C48;
  qword_28151BD00 = sub_24BBE4CB8;
  qword_28151BD08 = sub_24BBE4D24;
  return 0;
}

uint64_t *sub_24BBD2CC8()
{
  if ((byte_28151C180 & 1) == 0)
  {
    qword_28151C188 = 0;
    unk_28151C190 = sub_24BBF41D4;
    qword_28151C198 = sub_24BBF4254;
    qword_28151C1A0 = sub_24BBF432C;
    qword_28151C1B8 = sub_24BBD1200();
    qword_28151C1B0 = sub_24BBD1200();
    byte_28151C180 = 1;
  }

  return &qword_28151C188;
}

uint64_t sub_24BBD2D48(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t *a6)
{
  v12 = (***(a5 + 48))(*(a5 + 48), 984);
  *a6 = v12;
  if (!v12)
  {
    return 4294967292;
  }

  bzero(v12, 0x3D8uLL);
  v13 = sub_24BBD2E38(a1, a2, a3, a4, sub_24BBD45C8, a5, *a6);
  if (v13)
  {
    v14 = *a6;
    if (*a6)
    {
      if (*(v14 + 800))
      {
        (*(**(a5 + 48) + 16))(*(a5 + 48));
      }

      (*(**(a5 + 48) + 16))(*(a5 + 48), v14);
    }

    *a6 = 0;
  }

  return v13;
}

uint64_t sub_24BBD2E38(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t (*a5)(uint64_t, void, uint64_t, int *, char *, uint64_t *, uint64_t), uint64_t a6, uint64_t a7)
{
  if (*a1 != 5)
  {
    sub_24BBEDB70(-1, 0);
  }

  v91 = 0;
  memset(v90, 0, sizeof(v90));
  *(a7 + 800) = 0;
  *(a7 + 960) = *(a1 + 2);
  *(a6 + 32) = 0x10000;
  v12 = *(a1 + 72);
  if (v12 < 2)
  {
    v17 = (a1 + 88);
    *(a7 + 644) = 0;
    *(a7 + 864) = 0;
    *(a7 + 872) = 0;
  }

  else
  {
    if (!a3 || v12 - 17 < 0xFFFFFFF0)
    {
      sub_24BBEDB70(-1, 0);
    }

    v13 = *(a1 + 72);
    v14 = (a7 + 648);
    v15 = a3;
    do
    {
      v16 = *v15++;
      *v14++ = v16;
      --v13;
    }

    while (v13);
    *(a7 + 644) = v12;
    *(a7 + 864) = v12;
    *(a7 + 872) = a7 + 648;
    v17 = v90;
    sub_24BBD37D8(a1, a3, v90);
  }

  v89 = 0;
  v88 = 0;
  *(a7 + 220) = sub_24BBD42F8(*(a1 + 62), v17 + 13);
  v18 = sub_24BBD42F8(*(a1 + 64), v17 + 25);
  *(a7 + 24) = v18;
  if (*(v17 + 4) <= 0)
  {
    v19 = *(a7 + 220);
    if (v19)
    {
      v19 = *(v17 + 13);
    }

    *(v17 + 4) = v19;
  }

  if (*(v17 + 5) <= 0)
  {
    if (v18)
    {
      v20 = *(v17 + 25);
    }

    else
    {
      v20 = 0;
    }

    *(v17 + 5) = v20;
  }

  v21 = *(a1 + 58);
  *(a7 + 720) = v21;
  v22 = *(a1 + 74);
  *(a7 + 820) = v22;
  if (a4)
  {
    v24 = *a4;
    v23 = a4[1];
    v26 = a4[2];
    v25 = a4[3];
    *(a7 + 760) = *a4;
    *(a7 + 764) = v23;
    *(a7 + 824) = v26;
    *(a7 + 828) = v25;
    result = 4294967283;
    if ((v24 - 524289) < 0xFFF5FFFF || (v23 - 524289) < 0xFFF5FFFF || v26 > 0x10 || ((1 << v26) & 0x10016) == 0 || v25 > 1)
    {
      return result;
    }
  }

  else
  {
    *(a7 + 760) = vdup_n_s32(0x16A09u);
    *(a7 + 824) = 0x100000001;
  }

  *(a7 + 812) = *(a1 + 80);
  v28 = *(a7 + 960);
  if (v28 == 13 || v28 == 2)
  {
    if (v21 > 0x4D7)
    {
      if (v21 > 0x846B)
      {
        v29 = 0x8000;
      }

      else
      {
        v29 = 1131;
      }
    }

    else
    {
      v29 = 107;
    }

    *(a7 + 808) = v29;
    if (v22 > 0x4D7)
    {
      if (v22 > 0x846B)
      {
        v30 = 0x8000;
      }

      else
      {
        v30 = 1131;
      }
    }

    else
    {
      v30 = 107;
    }
  }

  else
  {
    *(a7 + 808) = *(a1 + 76);
    v30 = *(a1 + 78);
  }

  *(a7 + 816) = v30;
  *(a7 + 768) = *(a1 + 52);
  sub_24BBD43E0((a1 + 4), &v88);
  *(a7 + 716) = 0;
  result = a5(a2, v88, a7, a4, &v89 + 4, &v89, a7 + 716);
  if (result)
  {
    if (result == 1)
    {
      return 4294967286;
    }

    else if (result == 2)
    {
      return 4294967293;
    }
  }

  else
  {
    v31 = *(a1 + 44);
    if (*v17 || *(v17 + 1) || *(v17 + 2) || *(v17 + 3))
    {
      v33 = *v17;
      v32 = *(v17 + 1);
      v35 = *(v17 + 2);
      v34 = *(v17 + 3);
    }

    else
    {
      v85 = v88 * 163840.0 * 0.0000152587891;
      v86 = 0.5;
      if (v85 < 0.0)
      {
        v86 = -0.5;
      }

      v87 = v85 + v86;
      if (v87 >= 2147483650.0)
      {
        v34 = 0x7FFFFFFF;
      }

      else if (v87 <= -2147483650.0)
      {
        v34 = 0x80000000;
      }

      else
      {
        v34 = v87;
      }

      v32 = -v34;
      v33 = -v34;
      v35 = v34;
    }

    v36 = v31;
    v37 = v31 * (v35 - v33) * 0.0000152587891;
    v38 = 0.5;
    if (v37 >= 0.0)
    {
      v39 = 0.5;
    }

    else
    {
      v39 = -0.5;
    }

    v40 = v37 + v39;
    if (v40 < 2147483650.0 && v40 > -2147483650.0)
    {
      if (((v40 + 0x8000) & 0xFFFF0000) >= 2031616)
      {
        v42 = 2031616;
      }

      else
      {
        v42 = (v40 + 0x8000) & 0xFFFF0000;
      }
    }

    else
    {
      v42 = 0x80000000;
    }

    v43 = v33 - v42;
    v44 = v42 + v35;
    v45 = v36 * (v34 - v32) * 0.0000152587891;
    if (v45 < 0.0)
    {
      v38 = -0.5;
    }

    v46 = v45 + v38;
    if (v46 < 2147483650.0 && v46 > -2147483650.0)
    {
      v48 = (v46 + 0x8000) & 0xFFFF0000;
      if (v48 >= 2031616)
      {
        v48 = 2031616;
      }
    }

    else
    {
      v48 = 0x80000000;
    }

    v49 = (v32 - v48);
    v50 = (v48 + v34);
    v95 = 0;
    v92 = 0;
    v94 = __PAIR64__(v49, v44);
    v93.i32[0] = v43;
    v93.i32[1] = v48 + v34;
    if (!off_28151BD50)
    {
      sub_24BBEDB70(257, 0);
    }

    off_28151BD50(v43 | (v49 << 32));
    if (!off_28151BD50)
    {
      sub_24BBEDB70(257, 0);
    }

    off_28151BD50(*&v94);
    if (!off_28151BD50)
    {
      sub_24BBEDB70(257, 0);
    }

    off_28151BD50(*&v93);
    if (!off_28151BD50)
    {
      sub_24BBEDB70(257, 0);
    }

    off_28151BD50(v44 | (v50 << 32));
    v51 = v95;
    *(a7 + 928) = v95;
    *(a7 + 936) = v92;
    sub_24BBD53EC(v51, &v95, a7);
    sub_24BBD53EC(*&v94, &v94, a7);
    sub_24BBD53EC(*&v93, &v93, a7);
    sub_24BBD53EC(*&v92, &v92, a7);
    v53 = v92;
    v52 = v93;
    v54 = v94;
    v55 = v95;
    *(a7 + 728) = vmin_s32(v95, vmin_s32(v94, vmin_s32(v93, v92)));
    *(a7 + 736) = vmax_s32(v55, vmax_s32(v54, vmax_s32(v52, v53)));
    sub_24BBD5418(a7, v88, (a7 + 624), (a7 + 628));
    if (*(a7 + 624) <= *(a7 + 628))
    {
      v56 = *(a7 + 628);
    }

    else
    {
      v56 = *(a7 + 624);
    }

    if (v56 > 0x80000)
    {
      v57 = 102400;
      if (v56 <= 0x31FFFF)
      {
        v57 = -2147381249;
        v58 = (v56 - 0x80000) * 25565281.0 * 9.31322575e-10 + 0.5;
        if (v58 < 2147483650.0)
        {
          if (v58 <= -2147483650.0)
          {
            v57 = -2147381248;
          }

          else
          {
            v57 = v58 + 102400;
          }
        }
      }
    }

    else
    {
      v57 = 36864;
    }

    *(a7 + 632) = v57;
    v59 = v89 != 0;
    if (v89)
    {
      v60 = v56 >= 0x40000;
    }

    else
    {
      v60 = 0;
    }

    v61 = *(a1 + 60);
    *(a7 + 724) = v61;
    if (v61 == 2)
    {
      v62 = *(a1 + 40);
    }

    else
    {
      v62 = 0;
    }

    *(a7 + 712) = v62;
    v95.i32[0] = 0;
    v94.i32[0] = 0;
    sub_24BBD55AC(v17 + 52, *(a7 + 220), *(v17 + 4), 1, v60, (a7 + 224), (a7 + 220), &v94, *(a7 + 824));
    sub_24BBD55AC(v17 + 100, *(a7 + 24), *(v17 + 5), 0, v60, (a7 + 28), (a7 + 24), &v95, *(a7 + 824));
    v63 = v95.i32[0];
    v64 = (v95.i32[0] + 0x8000) & 0xFFFF0000;
    if (!v64)
    {
      v64 = 0x10000;
    }

    if (v95.i32[0])
    {
      v65 = v64;
    }

    else
    {
      v65 = 0;
    }

    v66 = v94.i32[0];
    if (v94.i32[0])
    {
      v67 = v94.i32[0] + v95.i32[0];
      if (((v94.i32[0] + 0x8000) & 0xFFFF0000) != 0)
      {
        v68 = (v94.i32[0] + 0x8000) & 0xFFFF0000;
      }

      else
      {
        v68 = 0x10000;
      }

      v65 += v68;
      if (v95.i32[0])
      {
        v67 >>= 1;
        v65 >>= 1;
      }
    }

    else
    {
      v67 = v95.i32[0];
    }

    *(a7 + 748) = v67;
    if (v63 <= v66)
    {
      v63 = v66;
    }

    *(a7 + 756) = v63;
    if (v60)
    {
      sub_24BBE7900(a1, v17, a7 + 432, (a7 + 428), (a7 + 744), v66, v60, *(a7 + 824));
      v69 = *(a7 + 428);
    }

    else
    {
      v69 = 0;
      *(a7 + 428) = 0;
    }

    *(a7 + 420) = *(v17 + 19);
    *(a7 + 944) = *(v17 + 88);
    v70 = *(v17 + 37);
    v71 = 0;
    if (v69)
    {
      v72 = (v17 + 10);
      do
      {
        v73 = *v72;
        v74 = v72[1];
        v72 += 2;
        v75 = v73 - v74;
        if (v75 > v71)
        {
          v71 = v75;
        }

        --v69;
      }

      while (v69);
    }

    v76 = v70 * v71 * 0.0000152587891;
    v77 = 0.5;
    if (v76 < 0.0)
    {
      v77 = -0.5;
    }

    v78 = v76 + v77;
    if (v78 >= 2147483650.0 || v78 > -2147483650.0 && v78 >= 0x10000)
    {
      if (v71 && (v79 = 65536.0 / v71 * 65536.0 + 0.5, v79 < 2147483650.0))
      {
        if (v79 <= -2147483650.0)
        {
          v70 = 0x7FFFFFFF;
        }

        else
        {
          v70 = v79 - 1;
        }
      }

      else
      {
        v70 = 2147483646;
      }
    }

    *(a7 + 416) = v70;
    *(a7 + 640) = *(a1 + 44);
    *(a7 + 636) = *(a1 + 28);
    *(a7 + 772) = *(v17 + 24);
    *(a7 + 788) = *(v17 + 5);
    *(a7 + 796) = *(v17 + 12);
    if (v60 && HIDWORD(v89) != 0)
    {
      v80 = 0x40000000;
    }

    else
    {
      v80 = 0;
    }

    if (v60 && v89 != 0)
    {
      v81 = 0x80000000;
    }

    else
    {
      v81 = 0;
    }

    if ((v56 - 425985) < 0xAFFFF && v59)
    {
      v82 = 16;
    }

    else
    {
      v82 = 0;
    }

    if (v60 && *(a1 + 70) == 1)
    {
      v83 = 32;
    }

    else
    {
      v83 = 0;
    }

    if (v65)
    {
      if (*(a7 + 748))
      {
        v84 = (v65 <= 0x10000) << 6;
      }

      else
      {
        v84 = 0;
      }
    }

    else
    {
      v84 = 0;
    }

    result = 0;
    *(a7 + 716) |= v80 | v82 | v81 | v83 | v84 | ((*(v17 + 89) & 1) << 7);
    *(a7 + 880) = 0;
    *(a7 + 896) = 0;
  }

  return result;
}

uint64_t sub_24BBD3788(uint64_t a1, int a2, uint64_t a3)
{
  v3 = 0xFFFFFFFFLL;
  if ((a2 - 17) >= 0xFFFFFFF0 && a1 && a3)
  {
    v4 = 0;
    v5 = a3 + 648;
    do
    {
      *(v5 + 4 * v4) = *(a1 + 4 * v4);
      ++v4;
    }

    while (a2 != v4);
    v3 = 0;
    *(a3 + 644) = a2;
    *(a3 + 864) = a2;
    *(a3 + 872) = v5;
  }

  return v3;
}

uint64_t sub_24BBD37D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v178 = *(a1 + 72);
  *(a3 + 352) = 0;
  *(a3 + 320) = 0u;
  *(a3 + 336) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 304) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v5 = *(a1 + 104);
  v4 = *(a1 + 108);
  *(a3 + 16) = v5;
  *(a3 + 20) = v4;
  v6 = *(a1 + 112);
  v7 = *(a1 + 116);
  *(a3 + 24) = v6;
  *(a3 + 28) = v7;
  *(a3 + 352) = *(a1 + 440);
  v8 = *(a1 + 120);
  v9 = *(a1 + 124);
  *(a3 + 32) = v8;
  *(a3 + 36) = v9;
  *(a3 + 148) = *(a1 + 236);
  v11 = (a1 + 88);
  v10 = *(a1 + 88);
  *(a3 + 156) = *(a1 + 244);
  v12 = *(a1 + 92);
  v13 = *(a1 + 96);
  *a3 = v10;
  *(a3 + 4) = v12;
  v14 = *(a1 + 100);
  *(a3 + 8) = v13;
  *(a3 + 12) = v14;
  v15 = *(a1 + 128);
  v16 = *(a1 + 132);
  *(a3 + 40) = v15;
  *(a3 + 44) = v16;
  v17 = *(a1 + 136);
  *(a3 + 48) = v17;
  v177 = *(a1 + 62);
  if (*(a1 + 62))
  {
    v18 = (a1 + 140);
    v19 = (a3 + 52);
    v20 = v177;
    do
    {
      v21 = *v18++;
      *v19++ = v21;
      --v20;
    }

    while (v20);
  }

  v176 = *(a1 + 64);
  if (*(a1 + 64))
  {
    v22 = (a1 + 188);
    v23 = (a3 + 100);
    v24 = *(a1 + 64);
    do
    {
      v25 = *v22++;
      *v23++ = v25;
      --v24;
    }

    while (v24);
  }

  v175 = *(a1 + 66);
  if (*(a1 + 66))
  {
    v26 = (a1 + 248);
    v27 = (a3 + 160);
    v28 = *(a1 + 66);
    do
    {
      v29 = *v26++;
      *v27++ = v29;
      --v28;
    }

    while (v28);
  }

  v174 = *(a1 + 68);
  if (*(a1 + 68))
  {
    v30 = (a1 + 344);
    v31 = (a3 + 256);
    v32 = *(a1 + 68);
    do
    {
      v33 = *v30++;
      *v31++ = v33;
      --v32;
    }

    while (v32);
  }

  result = *(a1 + 444);
  v35 = *(a1 + 444) & 1;
  if (v178 >= 2)
  {
    v36 = 0;
    v37 = 1;
    v38 = 500;
    v39 = 548;
    v172 = v11;
    do
    {
      v40 = &v11[90 * v37];
      v41 = *(a2 + 4 * v37);
      v42 = v41;
      v43 = v41 * (v40[4] - *(a1 + 104)) * 0.0000152587891;
      if (v43 >= 0.0)
      {
        v44 = 0.5;
      }

      else
      {
        v44 = -0.5;
      }

      v45 = v43 + v44;
      if (v45 >= 2147483650.0)
      {
        v46 = 0x7FFFFFFF;
      }

      else if (v45 <= -2147483650.0)
      {
        v46 = 0x80000000;
      }

      else
      {
        v46 = v45;
      }

      v47 = v5 + v46;
      *(a3 + 16) = v47;
      v48 = v42 * (v40[5] - *(a1 + 108)) * 0.0000152587891;
      if (v48 >= 0.0)
      {
        v49 = 0.5;
      }

      else
      {
        v49 = -0.5;
      }

      v50 = v48 + v49;
      if (v50 >= 2147483650.0)
      {
        v51 = 0x7FFFFFFF;
      }

      else if (v50 <= -2147483650.0)
      {
        v51 = 0x80000000;
      }

      else
      {
        v51 = v50;
      }

      v52 = v4 + v51;
      *(a3 + 20) = v52;
      v53 = v42 * (v40[6] - *(a1 + 112)) * 0.0000152587891;
      if (v53 >= 0.0)
      {
        v54 = 0.5;
      }

      else
      {
        v54 = -0.5;
      }

      v55 = v53 + v54;
      if (v55 >= 2147483650.0)
      {
        v56 = 0x7FFFFFFF;
      }

      else if (v55 <= -2147483650.0)
      {
        v56 = 0x80000000;
      }

      else
      {
        v56 = v55;
      }

      v57 = v6 + v56;
      *(a3 + 24) = v57;
      v58 = v42 * (v40[7] - *(a1 + 116)) * 0.0000152587891;
      if (v58 >= 0.0)
      {
        v59 = 0.5;
      }

      else
      {
        v59 = -0.5;
      }

      v60 = v58 + v59;
      if (v60 >= 2147483650.0)
      {
        v61 = 0x7FFFFFFF;
      }

      else if (v60 <= -2147483650.0)
      {
        v61 = 0x80000000;
      }

      else
      {
        v61 = v60;
      }

      v62 = v7 + v61;
      *(a3 + 28) = v62;
      v63 = v42 * (v40[88] - *(a1 + 440)) * 0.0000152587891;
      if (v63 >= 0.0)
      {
        v64 = 0.5;
      }

      else
      {
        v64 = -0.5;
      }

      v65 = v63 + v64;
      if (v65 >= 2147483650.0)
      {
        v66 = 0x7FFFFFFF;
      }

      else if (v65 <= -2147483650.0)
      {
        v66 = 0x80000000;
      }

      else
      {
        v66 = v65;
      }

      *(a3 + 352) += v66;
      v67 = v42 * (v40[8] - *(a1 + 120)) * 0.0000152587891;
      if (v67 >= 0.0)
      {
        v68 = 0.5;
      }

      else
      {
        v68 = -0.5;
      }

      v69 = v67 + v68;
      if (v69 >= 2147483650.0)
      {
        v70 = 0x7FFFFFFF;
      }

      else if (v69 <= -2147483650.0)
      {
        v70 = 0x80000000;
      }

      else
      {
        v70 = v69;
      }

      v71 = v8 + v70;
      *(a3 + 32) = v71;
      v72 = v42 * (v40[9] - *(a1 + 124)) * 0.0000152587891;
      if (v72 >= 0.0)
      {
        v73 = 0.5;
      }

      else
      {
        v73 = -0.5;
      }

      v74 = v72 + v73;
      if (v74 >= 2147483650.0)
      {
        v75 = 0x7FFFFFFF;
      }

      else if (v74 <= -2147483650.0)
      {
        v75 = 0x80000000;
      }

      else
      {
        v75 = v74;
      }

      v76 = v9 + v75;
      *(a3 + 36) = v76;
      v77 = v42 * (v40[37] - *(a1 + 236)) * 0.0000152587891;
      if (v77 >= 0.0)
      {
        v78 = 0.5;
      }

      else
      {
        v78 = -0.5;
      }

      v79 = v77 + v78;
      if (v79 >= 2147483650.0)
      {
        v80 = 0x7FFFFFFF;
      }

      else if (v79 <= -2147483650.0)
      {
        v80 = 0x80000000;
      }

      else
      {
        v80 = v79;
      }

      *(a3 + 148) += v80;
      v81 = v42 * (v40[38] - *(a1 + 240)) * 0.0000152587891;
      if (v81 >= 0.0)
      {
        v82 = 0.5;
      }

      else
      {
        v82 = -0.5;
      }

      v83 = v81 + v82;
      if (v83 >= 2147483650.0)
      {
        v84 = 0x7FFFFFFF;
      }

      else if (v83 <= -2147483650.0)
      {
        v84 = 0x80000000;
      }

      else
      {
        v84 = v83;
      }

      *(a3 + 152) += v84;
      v85 = v42 * (v40[39] - *(a1 + 244)) * 0.0000152587891;
      if (v85 >= 0.0)
      {
        v86 = 0.5;
      }

      else
      {
        v86 = -0.5;
      }

      v87 = v85 + v86;
      if (v87 >= 2147483650.0)
      {
        v88 = 0x7FFFFFFF;
      }

      else if (v87 <= -2147483650.0)
      {
        v88 = 0x80000000;
      }

      else
      {
        v88 = v87;
      }

      *(a3 + 156) += v88;
      v89 = v42 * (*v40 - *v11) * 0.0000152587891;
      if (v89 >= 0.0)
      {
        v90 = 0.5;
      }

      else
      {
        v90 = -0.5;
      }

      v91 = v89 + v90;
      if (v91 >= 2147483650.0)
      {
        v92 = 0x7FFFFFFF;
      }

      else if (v91 <= -2147483650.0)
      {
        v92 = 0x80000000;
      }

      else
      {
        v92 = v91;
      }

      v93 = v10 + v92;
      *a3 = v93;
      v94 = v42 * (v40[1] - *(a1 + 92)) * 0.0000152587891;
      if (v94 >= 0.0)
      {
        v95 = 0.5;
      }

      else
      {
        v95 = -0.5;
      }

      v96 = v94 + v95;
      if (v96 >= 2147483650.0)
      {
        v97 = 0x7FFFFFFF;
      }

      else if (v96 <= -2147483650.0)
      {
        v97 = 0x80000000;
      }

      else
      {
        v97 = v96;
      }

      v98 = v12 + v97;
      *(a3 + 4) = v98;
      v99 = v42 * (v40[2] - *(a1 + 96)) * 0.0000152587891;
      if (v99 >= 0.0)
      {
        v100 = 0.5;
      }

      else
      {
        v100 = -0.5;
      }

      v101 = v99 + v100;
      if (v101 >= 2147483650.0)
      {
        v102 = 0x7FFFFFFF;
      }

      else if (v101 <= -2147483650.0)
      {
        v102 = 0x80000000;
      }

      else
      {
        v102 = v101;
      }

      v103 = v13 + v102;
      *(a3 + 8) = v103;
      v104 = v42 * (v40[3] - *(a1 + 100)) * 0.0000152587891;
      if (v104 >= 0.0)
      {
        v105 = 0.5;
      }

      else
      {
        v105 = -0.5;
      }

      v106 = v104 + v105;
      if (v106 >= 2147483650.0)
      {
        v107 = 0x7FFFFFFF;
      }

      else if (v106 <= -2147483650.0)
      {
        v107 = 0x80000000;
      }

      else
      {
        v107 = v106;
      }

      v108 = v14 + v107;
      *(a3 + 12) = v108;
      v109 = v42 * (v40[10] - *(a1 + 128)) * 0.0000152587891;
      if (v109 >= 0.0)
      {
        v110 = 0.5;
      }

      else
      {
        v110 = -0.5;
      }

      v111 = v109 + v110;
      if (v111 >= 2147483650.0)
      {
        v112 = 0x7FFFFFFF;
      }

      else if (v111 <= -2147483650.0)
      {
        v112 = 0x80000000;
      }

      else
      {
        v112 = v111;
      }

      v113 = v15 + v112;
      *(a3 + 40) = v113;
      v114 = v42 * (v40[11] - *(a1 + 132)) * 0.0000152587891;
      if (v114 >= 0.0)
      {
        v115 = 0.5;
      }

      else
      {
        v115 = -0.5;
      }

      v116 = v114 + v115;
      if (v116 >= 2147483650.0)
      {
        v117 = 0x7FFFFFFF;
      }

      else if (v116 <= -2147483650.0)
      {
        v117 = 0x80000000;
      }

      else
      {
        v117 = v116;
      }

      v118 = v16 + v117;
      *(a3 + 44) = v118;
      v119 = v42 * (v40[12] - *(a1 + 136)) * 0.0000152587891;
      if (v119 >= 0.0)
      {
        v120 = 0.5;
      }

      else
      {
        v120 = -0.5;
      }

      v121 = v119 + v120;
      v181 = v118;
      v182 = v113;
      v179 = v108;
      if (v121 >= 2147483650.0)
      {
        v122 = v41;
        v123 = v103;
        v124 = v98;
        v125 = v93;
        v126 = v76;
        v127 = v71;
        v128 = v62;
        v129 = v57;
        v130 = v47;
        v131 = v52;
        v132 = 0x7FFFFFFF;
      }

      else
      {
        v122 = v41;
        v123 = v103;
        v124 = v98;
        v125 = v93;
        v126 = v76;
        v127 = v71;
        v128 = v62;
        v129 = v57;
        v130 = v47;
        v131 = v52;
        if (v121 <= -2147483650.0)
        {
          v132 = 0x80000000;
        }

        else
        {
          v132 = v121;
        }
      }

      v180 = v17 + v132;
      *(a3 + 48) = v17 + v132;
      v133 = v177;
      v134 = a1;
      v135 = (a3 + 52);
      if (v177)
      {
        do
        {
          v136 = v42 * (*(v134 + v38) - *(v134 + 140)) * 0.0000152587891;
          if (v136 >= 0.0)
          {
            v137 = 0.5;
          }

          else
          {
            v137 = -0.5;
          }

          v138 = v136 + v137;
          if (v138 >= 2147483650.0)
          {
            v139 = 0x7FFFFFFF;
          }

          else if (v138 <= -2147483650.0)
          {
            v139 = 0x80000000;
          }

          else
          {
            v139 = v138;
          }

          v134 += 4;
          *v135++ += v139;
          --v133;
        }

        while (v133);
      }

      v140 = v176;
      v141 = a1;
      v142 = (a3 + 100);
      if (v176)
      {
        do
        {
          v143 = v42 * (*(v141 + v39) - *(v141 + 188)) * 0.0000152587891;
          if (v143 >= 0.0)
          {
            v144 = 0.5;
          }

          else
          {
            v144 = -0.5;
          }

          v145 = v143 + v144;
          if (v145 >= 2147483650.0)
          {
            v146 = 0x7FFFFFFF;
          }

          else if (v145 <= -2147483650.0)
          {
            v146 = 0x80000000;
          }

          else
          {
            v146 = v145;
          }

          v141 += 4;
          *v142++ += v146;
          --v140;
        }

        while (v140);
      }

      v147 = a1;
      v148 = (a3 + 164);
      v149 = v175;
      if (v175)
      {
        do
        {
          v150 = *(v147 + 252);
          v151 = v42 * (*(v147 + v36 + 608) - *(v147 + 248)) * 0.0000152587891;
          if (v151 >= 0.0)
          {
            v152 = 0.5;
          }

          else
          {
            v152 = -0.5;
          }

          v153 = v151 + v152;
          v154 = v153;
          if (v153 <= -2147483650.0)
          {
            v154 = 0x80000000;
          }

          if (v153 >= 2147483650.0)
          {
            v154 = 0x7FFFFFFF;
          }

          *(v148 - 1) += v154;
          v155 = v42 * (*(v147 + v36 + 612) - v150) * 0.0000152587891;
          if (v155 >= 0.0)
          {
            v156 = 0.5;
          }

          else
          {
            v156 = -0.5;
          }

          v157 = v155 + v156;
          if (v157 >= 2147483650.0)
          {
            v158 = 0x7FFFFFFF;
          }

          else if (v157 <= -2147483650.0)
          {
            v158 = 0x80000000;
          }

          else
          {
            v158 = v157;
          }

          *v148 += v158;
          v148 += 2;
          v147 += 8;
          --v149;
        }

        while (v149);
      }

      v159 = a1;
      v160 = (a3 + 260);
      v161 = v174;
      if (v174)
      {
        do
        {
          v162 = v42 * (*(v159 + v36 + 704) - *(v159 + 344)) * 0.0000152587891;
          if (v162 >= 0.0)
          {
            v163 = 0.5;
          }

          else
          {
            v163 = -0.5;
          }

          v164 = v162 + v163;
          v165 = v164;
          if (v164 <= -2147483650.0)
          {
            v165 = 0x80000000;
          }

          if (v164 >= 2147483650.0)
          {
            v165 = 0x7FFFFFFF;
          }

          *(v160 - 1) += v165;
          v166 = v42 * (*(v159 + v36 + 708) - *(v159 + 348)) * 0.0000152587891;
          if (v166 >= 0.0)
          {
            v167 = 0.5;
          }

          else
          {
            v167 = -0.5;
          }

          v168 = v166 + v167;
          if (v168 >= 2147483650.0)
          {
            v169 = 0x7FFFFFFF;
          }

          else if (v168 <= -2147483650.0)
          {
            v169 = 0x80000000;
          }

          else
          {
            v169 = v168;
          }

          *v160 += v169;
          v160 += 2;
          v159 += 8;
          --v161;
        }

        while (v161);
      }

      result = *(a1 + 444);
      if (result)
      {
        v170 = 0;
      }

      else
      {
        v170 = v122;
      }

      if (v40[89])
      {
        v171 = v170;
      }

      else
      {
        v171 = -(((result << 31) >> 31) & v122);
      }

      v35 += v171;
      ++v37;
      v38 += 360;
      v39 += 360;
      v36 += 360;
      v4 = v131;
      v5 = v130;
      v6 = v129;
      v7 = v128;
      v8 = v127;
      v9 = v126;
      v11 = v172;
      v10 = v125;
      v12 = v124;
      v13 = v123;
      v14 = v179;
      v17 = v180;
      v16 = v181;
      v15 = v182;
    }

    while (v37 != v178);
  }

  if (v5 < 0)
  {
    *(a3 + 16) = 0;
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_214;
    }
  }

  else if ((v4 & 0x80000000) == 0)
  {
    goto LABEL_214;
  }

  *(a3 + 20) = 0;
LABEL_214:
  *(a3 + 356) = result;
  if (v35 > *(a1 + 48))
  {
    *(a3 + 356) = result | 1;
  }

  return result;
}

uint64_t sub_24BBD42F8(uint64_t a1, int *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (a1 == 1)
  {
    LODWORD(v8) = 1;
    v7 = 1;
    if (*a2 >= 1)
    {
      return v7;
    }
  }

  else
  {
    v2 = a2 - 1;
    v3 = a1 - 1;
    do
    {
      while (1)
      {
        while (1)
        {
          v4 = v2[v3];
          v5 = a2[v3];
          if (!v4 || v4 != v5)
          {
            break;
          }

          v2[v3] = 0;
          if (!v3)
          {
            goto LABEL_16;
          }
        }

        if (v4 > v5)
        {
          break;
        }

        if (!--v3)
        {
          goto LABEL_16;
        }
      }

      a2[v3] = v4;
      v2[v3] = v5;
      if (v3 < a1 - 1)
      {
        ++v3;
      }
    }

    while (v3);
LABEL_16:
    if (*a2 >= 1)
    {
      return a1;
    }

    v10 = a1 <= 2 ? 2 : a1;
    v8 = 1;
    while (a2[v8] <= 0)
    {
      if (v10 == ++v8)
      {
        return 0;
      }
    }
  }

  v7 = (a1 - v8);
  if (a1 <= v8)
  {
    return 0;
  }

  v9 = (a1 - v8);
  do
  {
    *a2 = a2[v8];
    ++a2;
    --v9;
  }

  while (v9);
  return v7;
}

uint64_t sub_24BBD43E0(int32x4_t *a1, int *a2)
{
  v3 = *a1;
  v4 = vceqz_s32(*&vextq_s8(v3, v3, 4uLL));
  v5 = vabsq_s32(*a1);
  result = v5.u32[0];
  v7 = v5.i32[3];
  if (((v4.i32[0] | v4.i32[1]) & 1) == 0)
  {
    v8 = vceqz_s32(*&vextq_s8(v3, v3, 0xCuLL));
    v9 = v5.i32[1];
    if (((v8.i32[1] | v8.i32[0]) & 1) == 0)
    {
      v11.i64[0] = 0xC0000000C0000000;
      v11.i64[1] = 0xC0000000C0000000;
      if (vmaxv_u16(vmovn_s32(vcgtq_s32(v5, v11))))
      {
        sub_24BBEDB70(-1, 0);
      }

      v12 = v5.i32[0] * v5.i32[3] * 9.31322575e-10;
      v13 = 0.5;
      if (v12 >= 0.0)
      {
        v14 = 0.5;
      }

      else
      {
        v14 = -0.5;
      }

      v15 = v12 + v14;
      if (v15 >= 2147483650.0)
      {
        v16 = 0x7FFFFFFF;
      }

      else if (v15 <= -2147483650.0)
      {
        v16 = 0x80000000;
      }

      else
      {
        v16 = v15;
      }

      v17 = v9 * v5.i32[2] * 9.31322575e-10;
      if (v17 < 0.0)
      {
        v13 = -0.5;
      }

      v18 = v17 + v13;
      if (v18 >= 2147483650.0)
      {
        v19 = 0x7FFFFFFF;
      }

      else if (v18 <= -2147483650.0)
      {
        v19 = 0x80000000;
      }

      else
      {
        v19 = v18;
      }

      v20 = v16 - v19;
      if (v20 >= 0)
      {
        v21 = v20;
      }

      else
      {
        v21 = -v20;
      }

      result = sub_24BC05B04(v21);
      if (result > 0)
      {
        goto LABEL_35;
      }

      goto LABEL_28;
    }

    result = v5.u32[1];
    v7 = v5.i32[2];
  }

  if (result <= v7)
  {
LABEL_28:
    if (result)
    {
      v10 = result;
      goto LABEL_30;
    }

LABEL_35:
    v25 = 0;
    goto LABEL_38;
  }

  if (!v7)
  {
    goto LABEL_35;
  }

  v10 = v7;
LABEL_30:
  v22 = 1073741820.0 / v10 * 65536.0;
  v23 = 0.5;
  if (v22 < 0.0)
  {
    v23 = -0.5;
  }

  v24 = v22 + v23;
  if (v24 >= 2147483650.0)
  {
    v25 = 0x7FFFFFFF;
  }

  else if (v24 <= -2147483650.0)
  {
    v25 = 0x80000000;
  }

  else
  {
    v25 = v24;
  }

LABEL_38:
  *a2 = v25;
  return result;
}

uint64_t sub_24BBD45C8(__int128 *a1, int a2, int32x2_t *a3, uint64_t a4, _DWORD *a5, _DWORD *a6, _DWORD *a7)
{
  v7 = *a1;
  a3[2] = a1[1];
  *a3->i8 = v7;
  if (!a4)
  {
LABEL_8:
    v13 = a3[2].i32[0];
    if (v13 > 0x8000)
    {
      return 4294967284;
    }

    v14 = a3[2].i32[1] - 32769;
    v15 = v13 < -32768;
    v16 = -65537;
    goto LABEL_17;
  }

  v8 = *(a4 + 8);
  if (v8 == 2)
  {
    v18 = a3[2].i32[0];
    if (v18 > 0x10000)
    {
      return 4294967284;
    }

    v14 = a3[2].i32[1] - 65537;
    v15 = v18 < -65536;
    v16 = -131073;
LABEL_17:
    if (!v15 && v14 >= v16)
    {
LABEL_22:
      a3[2] = 0;
      v20 = a2 * 163840.0 * 0.0000152587891;
      v21 = 0.5;
      if (v20 >= 0.0)
      {
        v22 = 0.5;
      }

      else
      {
        v22 = -0.5;
      }

      v23 = v20 + v22;
      if (v23 >= 2147483650.0)
      {
        v24 = 0x7FFFFFFF;
      }

      else if (v23 <= -2147483650.0)
      {
        v24 = 0x80000000;
      }

      else
      {
        v24 = v23;
        if (!v23)
        {
          goto LABEL_36;
        }
      }

      v25 = 2147483650.0 / v24 * 65536.0;
      if (v25 < 0.0)
      {
        v21 = -0.5;
      }

      v26 = v25 + v21;
      if (v26 < 2147483650.0)
      {
        if (v26 <= -2147483650.0)
        {
          v27 = 0xFFFFFFFF80000000;
        }

        else
        {
          v27 = v26;
        }

LABEL_38:
        v28 = *a3;
        v29 = vabs_s32(*a3);
        if ((v29.u32[1] + v29.u32[0]) > v27)
        {
          return 1;
        }

        v30 = a3[1];
        v31 = vabs_s32(v30);
        if (v31.u32[1] + v31.u32[0] > v27)
        {
          return 1;
        }

        if (v28.i32[0] && (v32 = HIDWORD(*&a3[1]), v30.i32[1]))
        {
          if ((v28.i32[0] & 0x80000000) == 0)
          {
            goto LABEL_44;
          }
        }

        else
        {
          *a7 |= 0x10000u;
          v34 = *a3->i8;
          *a3->i8 = vrev64q_s32(*a3->i8);
          a3[2] = vrev64_s32(a3[2]);
          v32 = DWORD2(v34);
          if ((DWORD1(v34) & 0x80000000) == 0)
          {
LABEL_44:
            if ((v32 & 0x80000000) == 0)
            {
LABEL_45:
              v33 = a3->i32[1];
LABEL_49:
              *a6 = v33 == 0;
              *a5 = a3[1].i32[0] == 0;
              return sub_24BBD4880(a3);
            }

LABEL_48:
            *a7 |= 0x400000u;
            v33 = -a3->i32[1];
            a3->i32[1] = v33;
            a3[1].i32[1] = -a3[1].i32[1];
            a3[2].i32[1] = -a3[2].i32[1];
            goto LABEL_49;
          }
        }

        *a7 |= 0x80000u;
        a3->i32[0] = -a3->i32[0];
        v35 = a3[1].i32[1];
        a3[1].i32[0] = -a3[1].i32[0];
        a3[2].i32[0] = -a3[2].i32[0];
        if ((v35 & 0x80000000) == 0)
        {
          goto LABEL_45;
        }

        goto LABEL_48;
      }

LABEL_36:
      v27 = 0x7FFFFFFFLL;
      goto LABEL_38;
    }

    return 4294967284;
  }

  if (v8 != 4)
  {
    if (v8 == 16)
    {
      v9 = a3[2].i32[0];
      if (v9 <= 0x80000)
      {
        result = 4294967284;
        if (v9 < -524288)
        {
          return result;
        }

        v11 = a3[2].i32[1] - 524289;
        v12 = -1048577;
        goto LABEL_13;
      }

      return 4294967284;
    }

    goto LABEL_8;
  }

  v17 = a3[2].i32[0];
  if (v17 > 0x20000)
  {
    return 4294967284;
  }

  result = 4294967284;
  if (v17 < -131072)
  {
    return result;
  }

  v11 = a3[2].i32[1] - 131073;
  v12 = -262145;
LABEL_13:
  if (v11 >= v12)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_24BBD4880(uint64_t result)
{
  if (result)
  {
    qword_28151BD48 = &qword_28151BD10;
    v1 = *(result + 16);
    *&dword_28151BD18 = *result;
    qword_28151BD28 = v1;
    if (dword_28151BD18 | dword_28151BD24)
    {
      if (qword_28151BD1C)
      {
        v2 = 3;
      }

      else
      {
        v2 = 1;
      }
    }

    else
    {
      v2 = 2;
    }

    LODWORD(qword_28151BD10) = v2;
    if (sub_24BBD4A74(&dword_28151BD18, &xmmword_28151BD30))
    {
      v3 = qword_28151BD48;
      if (*(qword_28151BD48 + 32) || *(qword_28151BD48 + 44))
      {
        v4 = 3;
        if (!*(qword_28151BD48 + 36))
        {
          if (*(qword_28151BD48 + 40))
          {
            v4 = 3;
          }

          else
          {
            v4 = 1;
          }
        }
      }

      else
      {
        v4 = 2;
      }

      *(qword_28151BD48 + 4) = v4;
      v5 = sub_24BBE62C0;
      v6 = sub_24BBD5328;
      if (*v3 != 1)
      {
        if (*v3 == 2)
        {
          v5 = sub_24BBE6390;
          v6 = sub_24BBE65C4;
        }

        else
        {
          v5 = sub_24BBE6460;
          v6 = sub_24BBE6684;
        }
      }

      off_28151BD60 = v6;
      off_28151BD50 = v5;
      if (!v3[6] && !v3[7])
      {
        off_28151BD50 = v6;
      }

      v7 = sub_24BBE67D8;
      v8 = sub_24BBE6ADC;
      if (v4 != 1)
      {
        if (v4 == 2)
        {
          v7 = sub_24BBE68A8;
          v8 = sub_24BBE6BA0;
        }

        else
        {
          v7 = sub_24BBE6978;
          v8 = sub_24BBE6C60;
        }
      }

      off_28151BD68 = v8;
      off_28151BD58 = v7;
      if (v3[12] || v3[13])
      {
        return 0;
      }

      else
      {
        result = 0;
        off_28151BD58 = v8;
      }
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t sub_24BBD4A74(int *a1, int32x4_t *a2)
{
  result = sub_24BBD4C58(a1, a2);
  if (result)
  {
    v5 = a1[4];
    v6 = v5 * a2->i32[0] * 0.0000152587891;
    v7 = 0.5;
    if (v6 >= 0.0)
    {
      v8 = 0.5;
    }

    else
    {
      v8 = -0.5;
    }

    v9 = v6 + v8;
    if (v9 >= 2147483650.0)
    {
      v10 = 0x7FFFFFFF;
    }

    else if (v9 <= -2147483650.0)
    {
      v10 = 0x80000000;
    }

    else
    {
      v10 = v9;
      if (v9 == -2147483647)
      {
        return 0;
      }
    }

    v11 = a1[5];
    v12 = v11 * a2->i32[2] * 0.0000152587891;
    if (v12 < 0.0)
    {
      v7 = -0.5;
    }

    v13 = v12 + v7;
    if (v13 >= 2147483650.0)
    {
      v14 = 0x7FFFFFFF;
    }

    else if (v13 <= -2147483650.0)
    {
      v14 = 0x80000000;
    }

    else
    {
      v14 = v13;
    }

    v15 = v14 + v10;
    if (v15 < -2147483646)
    {
      return 0;
    }

    v16 = v5 * a2->i32[1] * 0.0000152587891;
    v17 = 0.5;
    if (v16 >= 0.0)
    {
      v18 = 0.5;
    }

    else
    {
      v18 = -0.5;
    }

    v19 = v16 + v18;
    if (v19 >= 2147483650.0)
    {
      v20 = 0x7FFFFFFF;
    }

    else if (v19 <= -2147483650.0)
    {
      v20 = 0x80000000;
    }

    else
    {
      v20 = v19;
      if (v19 == -2147483647)
      {
        return 0;
      }
    }

    v21 = v11 * a2->i32[3] * 0.0000152587891;
    if (v21 < 0.0)
    {
      v17 = -0.5;
    }

    v22 = v21 + v17;
    if (v22 >= 2147483650.0)
    {
      v23 = 0x7FFFFFFF;
    }

    else if (v22 <= -2147483650.0)
    {
      v23 = 0x80000000;
    }

    else
    {
      v23 = v22;
    }

    v24 = v23 + v20;
    if (v24 >= -2147483646)
    {
      a2[1].i32[0] = -v15;
      a2[1].i32[1] = -v24;
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_24BBD4C58(int *a1, int32x4_t *a2)
{
  v3 = *a1;
  if (*a1 >= 0)
  {
    v4 = *a1;
  }

  else
  {
    v4 = -v3;
  }

  v5 = a1[2];
  if (v5 >= 0)
  {
    v6 = a1[2];
  }

  else
  {
    v6 = -v5;
  }

  if (v4 >= v6)
  {
    if (v3)
    {
      v10 = v5 / v3 * 1073741820.0;
      v11 = 0.5;
      if (v10 < 0.0)
      {
        v11 = -0.5;
      }

      v12 = v10 + v11;
      if (v12 >= 2147483650.0 || v12 <= -2147483650.0)
      {
        return 0;
      }

      v14 = v12;
    }

    else
    {
      v14 = (v5 >> 31) ^ 0x7FFFFFFF;
    }

    if ((v14 - 0x7FFFFFFF) < 2)
    {
      return 0;
    }

    v15 = a1[3];
    v16 = a1[1];
    v17 = v16;
    v18 = v14;
    v19 = v14 * v16 * 9.31322575e-10;
    v20 = 0.5;
    if (v19 < 0.0)
    {
      v20 = -0.5;
    }

    v21 = v19 + v20;
    if (v21 >= 2147483650.0)
    {
      v22 = 0x7FFFFFFF;
    }

    else if (v21 <= -2147483650.0)
    {
      v22 = 0x80000000;
    }

    else
    {
      v22 = v21;
    }

    v23 = v15 - v22;
    if (v15 - v22 >= 0)
    {
      v24 = v15 - v22;
    }

    else
    {
      v24 = v22 - v15;
    }

    if (v24 >= 0x10000)
    {
      if (v15 == v22)
      {
        return 0;
      }

      v25 = 65536.0 / v23 * 1073741820.0;
      v26 = 0.5;
      if (v25 < 0.0)
      {
        v26 = -0.5;
      }

      v27 = v25 + v26;
      if (v27 >= 2147483650.0 || v27 <= -2147483650.0)
      {
        return 0;
      }

      v29 = v27;
      if ((v27 - 0x7FFFFFFF) < 2)
      {
        return 0;
      }

      v30 = (v29 + 0x2000) >> 14;
      a2->i32[3] = v30;
      v31 = v18 * v29 * 9.31322575e-10;
      v32 = 0.5;
      v33 = -0.5;
      if (v31 < 0.0)
      {
        v32 = -0.5;
      }

      v34 = v31 + v32;
      v35 = v34 > -2147483650.0 && v34 < 2147483650.0;
      v36 = (0x2000 - v34) >> 14;
      if (!v35)
      {
        v36 = -131072;
      }

      goto LABEL_66;
    }

    if (v15 == v22)
    {
      goto LABEL_79;
    }

    v37 = 65536.0 / v23 * 65536.0;
    v38 = 0.5;
    if (v37 < 0.0)
    {
      v38 = -0.5;
    }

    v39 = v37 + v38;
    if (v39 >= 2147483650.0)
    {
LABEL_79:
      v51 = 0x7FFFFFFF;
    }

    else
    {
      if (v39 > -2147483650.0)
      {
        v30 = v39;
        a2->i32[3] = v39;
        if ((v39 - 0x7FFFFFFF) < 2)
        {
          return 0;
        }

        v40 = v18 * v30 * 9.31322575e-10;
        v41 = 0.5;
        v33 = -0.5;
        if (v40 < 0.0)
        {
          v41 = -0.5;
        }

        v42 = v40 + v41;
        if (v42 > -2147483650.0)
        {
          v43 = v42;
        }

        else
        {
          v43 = 0x80000000;
        }

        if (v42 < 2147483650.0)
        {
          v44 = v43;
        }

        else
        {
          v44 = 0x7FFFFFFF;
        }

        v36 = -v44;
LABEL_66:
        a2->i32[2] = v36;
        if (v16 >= 0)
        {
          v45 = v16;
        }

        else
        {
          v45 = -v16;
        }

        if (v45 >= v4)
        {
          if (v30 >= 0)
          {
            v52 = v30;
          }

          else
          {
            v52 = -v30;
          }

          if (v52 >= v4)
          {
            if (v3)
            {
              v57 = v17 / v3 * 65536.0;
              v58 = 0.5;
              if (v57 < 0.0)
              {
                v58 = -0.5;
              }

              v59 = v57 + v58;
              if (v59 > -2147483650.0)
              {
                v60 = v59;
              }

              else
              {
                v60 = 0x80000000;
              }

              if (v59 < 2147483650.0)
              {
                v61 = v60;
              }

              else
              {
                v61 = 0x7FFFFFFF;
              }
            }

            else
            {
              v61 = (v16 >> 31) ^ 0x7FFFFFFF;
            }

            v63 = v30 * v61 * 0.0000152587891;
            v64 = 0.5;
            v65 = -0.5;
            if (v63 < 0.0)
            {
              v64 = -0.5;
            }

            v66 = v63 + v64;
            if (v66 >= 2147483650.0)
            {
              v68 = 0x7FFFFFFF;
            }

            else
            {
              if (v66 > -2147483650.0)
              {
                v67 = v66;
                a2->i32[1] = v66;
                if ((v66 - 0x7FFFFFFF) < 2)
                {
                  return 0;
                }

LABEL_125:
                a2->i32[1] = -v67;
                v73 = a1[1];
                v74 = v73 * v36 * 0.0000152587891;
                v75 = 0.5;
                if (v74 < 0.0)
                {
                  v75 = v65;
                }

                v76 = v74 + v75;
                v77 = v76 < 2147483650.0 && v76 > -2147483650.0;
                v78 = v76;
                if (!v77 || (v76 - 0x7FFFFFFF) <= 1)
                {
                  if (v73 >= 0)
                  {
                    v80 = a1[1];
                  }

                  else
                  {
                    v80 = -v73;
                  }

                  if (v36 >= 0)
                  {
                    v81 = v36;
                  }

                  else
                  {
                    v81 = -v36;
                  }

                  v82 = v80 > v81;
                  if (v80 <= v81)
                  {
                    v83 = v36;
                  }

                  else
                  {
                    v83 = a1[1];
                  }

                  if (!v82)
                  {
                    v36 = a1[1];
                  }

                  if (v3)
                  {
                    v84 = v83 / v3 * 65536.0;
                    v85 = 0.5;
                    if (v84 < 0.0)
                    {
                      v85 = v65;
                    }

                    v86 = v84 + v85;
                    if (v86 >= 2147483650.0)
                    {
                      v87 = 0x7FFFFFFF;
                    }

                    else if (v86 <= -2147483650.0)
                    {
                      v87 = 0x80000000;
                    }

                    else
                    {
                      v87 = v86;
                    }
                  }

                  else
                  {
                    v87 = (v83 >> 31) ^ 0x7FFFFFFF;
                  }

                  v92 = v36 * v87 * 0.0000152587891;
                  v93 = 0.5;
                  if (v92 < 0.0)
                  {
                    v93 = v65;
                  }

                  v94 = v92 + v93;
                  if (v94 < 2147483650.0)
                  {
                    if (v94 > -2147483650.0)
                    {
                      a2->i32[0] = v94;
                      if ((v94 - 0x7FFFFFFF) >= 2)
                      {
                        a2->i32[0] = -v94;
                        return 1;
                      }

                      return 0;
                    }

                    goto LABEL_167;
                  }

LABEL_166:
                  v95 = 0x7FFFFFFF;
LABEL_168:
                  result = 0;
                  a2->i32[0] = v95;
                  return result;
                }

                if (v3)
                {
                  v88 = (0x10000 - v78) / v3 * 65536.0;
                  v89 = 0.5;
                  if (v88 < 0.0)
                  {
                    v89 = v65;
                  }

                  v90 = v88 + v89;
                  if (v90 >= 2147483650.0)
                  {
                    goto LABEL_166;
                  }

                  if (v90 <= -2147483650.0)
                  {
LABEL_167:
                    v95 = 0x80000000;
                    goto LABEL_168;
                  }

                  v91 = v90;
                }

                else if (v78 <= 0x10000)
                {
                  v91 = 0x7FFFFFFF;
                }

                else
                {
                  v91 = 0x80000000;
                }

                a2->i32[0] = v91;
                return (v91 - 0x7FFFFFFF) >= 2;
              }

              v68 = 0x80000000;
            }

            result = 0;
            a2->i32[1] = v68;
            return result;
          }

          if (v3)
          {
            v53 = v30 / v3 * 1073741820.0;
            v54 = 0.5;
            if (v53 < 0.0)
            {
              v54 = v33;
            }

            v55 = v53 + v54;
            if (v55 >= 2147483650.0)
            {
              v56 = 0x7FFFFFFF;
            }

            else if (v55 <= -2147483650.0)
            {
              v56 = 0x80000000;
            }

            else
            {
              v56 = v55;
            }
          }

          else
          {
            v56 = (v30 >> 31) ^ 0x7FFFFFFF;
          }

          v62 = v17 * v56;
        }

        else
        {
          if (v3)
          {
            v46 = v17 / v3 * 1073741820.0;
            v47 = 0.5;
            if (v46 < 0.0)
            {
              v47 = -0.5;
            }

            v48 = v46 + v47;
            if (v48 > -2147483650.0)
            {
              v49 = v48;
            }

            else
            {
              v49 = 0x80000000;
            }

            if (v48 < 2147483650.0)
            {
              v50 = v49;
            }

            else
            {
              v50 = 0x7FFFFFFF;
            }
          }

          else
          {
            v50 = (v16 >> 31) ^ 0x7FFFFFFF;
          }

          v62 = v50 * v30;
        }

        v69 = v62 * 9.31322575e-10;
        v70 = 0.5;
        v65 = -0.5;
        if (v69 < 0.0)
        {
          v70 = -0.5;
        }

        v71 = v69 + v70;
        if (v71 > -2147483650.0)
        {
          v72 = v71;
        }

        else
        {
          v72 = 0x80000000;
        }

        if (v71 < 2147483650.0)
        {
          v67 = v72;
        }

        else
        {
          v67 = 0x7FFFFFFF;
        }

        goto LABEL_125;
      }

      v51 = 0x80000000;
    }

    result = 0;
    a2->i32[3] = v51;
    return result;
  }

  v97 = 0;
  v7 = a1[3];
  v96[0] = v5;
  v96[1] = v7;
  v8 = a1[1];
  v96[2] = v3;
  v96[3] = v8;
  result = sub_24BBD4C58(v96, a2);
  if (result)
  {
    *a2 = vrev64q_s32(*a2);
    return 1;
  }

  return result;
}

uint64_t sub_24BBD5328(uint64_t result, int *a2)
{
  v2 = result * *(qword_28151BD48 + 8) * 0.0000152587891;
  v3 = 0.5;
  if (v2 >= 0.0)
  {
    v4 = 0.5;
  }

  else
  {
    v4 = -0.5;
  }

  v5 = v2 + v4;
  if (v5 > -2147483650.0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x80000000;
  }

  if (v5 < 2147483650.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7FFFFFFF;
  }

  v8 = SHIDWORD(result) * *(qword_28151BD48 + 20) * 0.0000152587891;
  if (v8 < 0.0)
  {
    v3 = -0.5;
  }

  v9 = v8 + v3;
  if (v9 >= 2147483650.0)
  {
    v10 = 0x7FFFFFFF;
  }

  else if (v9 <= -2147483650.0)
  {
    v10 = 0x80000000;
  }

  else
  {
    v10 = v9;
  }

  *a2 = v7;
  a2[1] = v10;
  return result;
}

unint64_t sub_24BBD53EC(unint64_t result, int *a2, uint64_t a3)
{
  v3 = HIDWORD(result);
  v4 = *(a3 + 716);
  if ((v4 & 0x80000) != 0)
  {
    v5 = -result;
  }

  else
  {
    v5 = result;
  }

  if ((*&v4 & 0x400000) != 0)
  {
    LODWORD(v3) = -HIDWORD(result);
  }

  v6 = (*&v4 & 0x10000) == 0;
  if ((*&v4 & 0x10000) != 0)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (!v6)
  {
    LODWORD(v3) = v5;
  }

  *a2 = v7;
  a2[1] = v3;
  return result;
}

uint64_t sub_24BBD5418(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4)
{
  v7 = a2;
  v8 = 0;
  *a3 = sub_24BBD5470(&v7);
  v7 = 0;
  v8 = a2;
  result = sub_24BBD5470(&v7);
  *a4 = result;
  return result;
}

uint64_t sub_24BBD5470(int *a1)
{
  if (!off_28151BD60)
  {
    sub_24BBEDB70(257, 0);
  }

  off_28151BD60(*a1, a1);
  if (*a1 < 0)
  {
    *a1 = -*a1;
  }

  v2 = a1[1];
  if (v2 < 0)
  {
    v2 = -v2;
    a1[1] = v2;
  }

  v3 = *a1;
  if (*a1 >= v2)
  {
    v8 = v2 * 22046.0 * 0.0000152587891 + 0.5;
    if (v8 >= 2147483650.0)
    {
      v9 = 0x7FFFFFFF;
    }

    else if (v8 <= -2147483650.0)
    {
      v9 = 0x80000000;
    }

    else
    {
      v9 = v8;
    }

    return (v9 + v3);
  }

  else
  {
    v4 = v3 * 22046.0 * 0.0000152587891;
    v5 = 0.5;
    if (v4 < 0.0)
    {
      v5 = -0.5;
    }

    v6 = v4 + v5;
    if (v6 >= 2147483650.0)
    {
      v7 = 0x7FFFFFFF;
    }

    else if (v6 <= -2147483650.0)
    {
      v7 = 0x80000000;
    }

    else
    {
      v7 = v6;
    }

    return (v7 + v2);
  }
}

uint64_t sub_24BBD55AC(uint64_t result, unsigned int a2, int a3, int a4, int a5, _DWORD *a6, unsigned int *a7, int *a8, int a9)
{
  v10 = a7;
  v71 = a3;
  if (!a2)
  {
    *a7 = 0;
    v10 = a8;
    goto LABEL_35;
  }

  v16 = result;
  v70 = 0;
  if (a3)
  {
    result = sub_24BBD5C00(&v71, 1, a4, a5, &v70);
  }

  if (a9 == 2)
  {
    v17 = 196608;
  }

  else
  {
    v17 = 98304;
  }

  if (a9 == 4)
  {
    v17 = 393216;
  }

  if (a9 == 16)
  {
    v17 = 1572864;
  }

  v18 = v70;
  if (!v70)
  {
    if (a2 != 1)
    {
      goto LABEL_14;
    }

LABEL_34:
    *v10 = 1;
    *a6 = a3;
    a6[12] = v18;
    a6[36] = 0;
    a6[24] = 0;
    *a8 = v18;
    if (v18 > 16711680)
    {
      goto LABEL_35;
    }

    return result;
  }

  if (a2 == 1 || v70 < v17)
  {
    goto LABEL_34;
  }

LABEL_14:
  *v10 = a2;
  sub_24BBD5C00(v16, a2, a4, a5, a6 + 12);
  v19 = 0;
  v20 = -1;
  do
  {
    a6[v19] = *(v16 + 4 * v19);
    a6[(v19 + 36)] = 0x7FFFFFFF;
    a6[(v19 + 24)] = 0x7FFFFFFF;
    if (*(v16 + 4 * v19) == a3)
    {
      a6[(v19 + 36)] = 0;
      a6[(v19 + 24)] = 0;
      v20 = v19;
    }

    ++v19;
  }

  while (a2 != v19);
  if (v20 == -1)
  {
    v20 = 0;
    v18 = a6[12];
    a6[36] = 0;
    a6[24] = 0;
    *a8 = v18;
  }

  else
  {
    *a8 = v18;
    if (v20)
    {
      v21 = a6[12];
      v22 = v18 - v21 <= 22272 && (v18 - 0x7FFFFFFF) >= 2;
      if (v22 && (v21 - 0x7FFFFFFF) >= 2)
      {
        if (v18 == v21)
        {
          goto LABEL_39;
        }

        v23 = 22272.0 / (v18 - v21) * 65536.0;
        v24 = 0.5;
        if (v23 < 0.0)
        {
          v24 = -0.5;
        }

        v25 = v23 + v24;
        if (v25 >= 2147483650.0)
        {
LABEL_39:
          v26 = 0x7FFFFFFF;
        }

        else if (v25 <= -2147483650.0)
        {
          v26 = 0x80000000;
        }

        else
        {
          v26 = v25;
        }

        a6[36] = v26;
        v27 = v21 * v26 * 0.0000152587891;
        v28 = 0.5;
        if (v27 < 0.0)
        {
          v28 = -0.5;
        }

        v29 = v27 + v28;
        if (v29 >= 2147483650.0)
        {
          v30 = 0x7FFFFFFF;
        }

        else if (v29 <= -2147483650.0)
        {
          v30 = 0x80000000;
        }

        else
        {
          v30 = v29;
        }

        a6[24] = v30;
      }

      else
      {
        a6[36] = 0;
        a6[24] = 0;
      }
    }
  }

  if (v20 + 1 < a2)
  {
    v31 = a6[a2 + 11];
    v32 = v31 - v18 <= 44544 && (v18 - 0x7FFFFFFF) >= 2;
    if (v32 && (v31 - 0x7FFFFFFF) >= 2)
    {
      if (v31 == v18)
      {
        goto LABEL_62;
      }

      v33 = 44544.0 / (v31 - v18) * 65536.0;
      v34 = 0.5;
      if (v33 < 0.0)
      {
        v34 = -0.5;
      }

      v35 = v33 + v34;
      if (v35 >= 2147483650.0)
      {
LABEL_62:
        v36 = 0x7FFFFFFF;
      }

      else if (v35 <= -2147483650.0)
      {
        v36 = 0x80000000;
      }

      else
      {
        v36 = v35;
      }

      a6[a2 + 35] = v36;
      v38 = v31 * v36 * 0.0000152587891;
      v39 = 0.5;
      if (v38 < 0.0)
      {
        v39 = -0.5;
      }

      v40 = v38 + v39;
      if (v40 >= 2147483650.0)
      {
        v37 = 0x7FFFFFFF;
      }

      else if (v40 <= -2147483650.0)
      {
        v37 = 0x80000000;
      }

      else
      {
        v37 = v40;
      }
    }

    else
    {
      v37 = 0;
      a6[a2 + 35] = 0;
    }

    a6[a2 + 23] = v37;
  }

  if (a2 <= 2)
  {
    v41 = 2;
  }

  else
  {
    v41 = a2;
  }

  v42 = 1 - v41;
  v43 = -2;
  while (1)
  {
    v44 = 25;
    while (1)
    {
      result = a6[v44];
      if (result == 0x7FFFFFFF)
      {
        break;
      }

      ++v44;
      result = v42 + v44;
      if (v42 + v44 == 25)
      {
        v45 = v41;
        goto LABEL_80;
      }
    }

    v45 = v44 - 24;
LABEL_80:
    if (v45 == a2)
    {
      break;
    }

    result = v45;
    LODWORD(v46) = v45;
    if (v45 < a2)
    {
      v46 = v45;
      while (a6[(v46 + 24)] == 0x7FFFFFFF)
      {
        if (a2 == ++v46)
        {
          LODWORD(v46) = a2;
          break;
        }
      }
    }

    if (v45 >= v46)
    {
      break;
    }

    v47 = 0;
    v48 = a6[v45 - 1];
    v49 = a6[v45 + 11];
    v50 = a6[(v46 + 12)];
    v51 = -1;
    do
    {
      v52 = a6[result];
      v53 = 2 * (a6[v46] - v52);
      v54 = v52 - v48;
      if (v53 < v54)
      {
        v54 = v53;
      }

      if (v54 > v47)
      {
        v47 = v54;
        v51 = result;
      }

      ++result;
    }

    while (v46 != result);
    if (v51 == -1)
    {
      break;
    }

    v55 = a6[v51 + 12];
    v56 = v50 - v55;
    v57 = v55 - v49;
    if (v55 - v49 <= 2 * (v50 - v55))
    {
      if (v57 <= 44544)
      {
        if (v55 != v49)
        {
          v58 = 44544.0 / v57;
LABEL_101:
          v59 = v58 * 65536.0;
          v60 = v59 >= 0.0 ? 0.5 : -0.5;
          v61 = v59 + v60;
          if (v61 < 2147483650.0)
          {
            if (v61 <= -2147483650.0)
            {
              v62 = 0x80000000;
            }

            else
            {
              v62 = v61;
            }

LABEL_109:
            a6[v51 + 36] = v62;
            v63 = v55 * v62 * 0.0000152587891;
            if (v63 >= 0.0)
            {
              v64 = 0.5;
            }

            else
            {
              v64 = -0.5;
            }

            v65 = v63 + v64;
            if (v65 >= 2147483650.0)
            {
              result = 0x7FFFFFFFLL;
            }

            else if (v65 <= -2147483650.0)
            {
              result = 0x80000000;
            }

            else
            {
              result = v65;
            }

            goto LABEL_117;
          }
        }

LABEL_108:
        v62 = 0x7FFFFFFF;
        goto LABEL_109;
      }
    }

    else if (v56 <= 22272)
    {
      if (v50 != v55)
      {
        v58 = 22272.0 / v56;
        goto LABEL_101;
      }

      goto LABEL_108;
    }

    result = 0;
    a6[v51 + 36] = 0;
LABEL_117:
    a6[v51 + 24] = result;
    if (v43-- == 0)
    {
      goto LABEL_123;
    }
  }

  if (!v43)
  {
    sub_24BBEDB70(-1, 0);
  }

LABEL_123:
  v67 = 0;
  *v10 = 0;
  v68 = 12;
  do
  {
    v69 = a6[v68];
    if (v69 >= 16711680)
    {
      break;
    }

    if (a6[(v68 + 12)] < 1)
    {
      ++v67;
    }

    else
    {
      a6[v68] = -v69;
    }

    *v10 = v68++ - 11;
  }

  while (v68 - a2 != 12);
  if (!v67)
  {
LABEL_35:
    *v10 = 0;
  }

  return result;
}

uint64_t sub_24BBD5C00(uint64_t result, int a2, int a3, int a4, int *a5)
{
  v6 = a2;
  v7 = result;
  if (a4)
  {
    if (a3)
    {
      if (a2)
      {
        do
        {
          v8 = *v7++;
          LODWORD(v13) = 0;
          HIDWORD(v13) = v8;
          if (!off_28151BD60)
          {
            sub_24BBEDB70(257, 0);
          }

          result = off_28151BD60(v13, &v13);
          if (v13 >= 0)
          {
            v9 = HIDWORD(v13);
          }

          else
          {
            v9 = -HIDWORD(v13);
          }

          *a5++ = v9;
          --v6;
        }

        while (v6);
      }
    }

    else if (a2)
    {
      do
      {
        v11 = *v7++;
        v13 = v11;
        if (!off_28151BD60)
        {
          sub_24BBEDB70(257, 0);
        }

        result = off_28151BD60(v13, &v13);
        v12 = v13;
        if (v13 < 0)
        {
          v12 = -v13;
        }

        *a5++ = v12;
        --v6;
      }

      while (v6);
    }
  }

  else if (a2)
  {
    do
    {
      v10 = *v7++;
      v13 = v10;
      result = sub_24BBD5470(&v13);
      *a5++ = result;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_24BBD5D14(int a1, _DWORD *a2)
{
  LODWORD(v4) = 0;
  HIDWORD(v4) = a1;
  if (!off_28151BD50)
  {
    sub_24BBEDB70(257, 0);
  }

  result = off_28151BD50(v4);
  *a2 = HIDWORD(v4);
  return result;
}

BOOL sub_24BBD5D7C(int a1)
{
  if (a1)
  {
    switch(a1)
    {
      case -18:
      case -16:
      case -13:
        exception = __cxa_allocate_exception(0x10uLL);
        sub_24BBE0934(exception, 8);
        goto LABEL_11;
      case -17:
      case -15:
        exception = __cxa_allocate_exception(0x10uLL);
        sub_24BBE0934(exception, 4);
        goto LABEL_11;
      case -14:
      case -8:
      case -7:
      case -1:
        exception = __cxa_allocate_exception(0x10uLL);
        sub_24BBE0934(exception, 5);
        goto LABEL_11;
      case -12:
      case -3:
        exception = __cxa_allocate_exception(0x10uLL);
        sub_24BBE0934(exception, 15);
        goto LABEL_11;
      case -10:
      case -9:
        exception = __cxa_allocate_exception(0x10uLL);
        sub_24BBE0934(exception, 13);
        goto LABEL_11;
      case -6:
      case -5:
      case -4:
        exception = __cxa_allocate_exception(0x10uLL);
        sub_24BBE0934(exception, 20);
        goto LABEL_11;
      case -2:
        exception = __cxa_allocate_exception(0x10uLL);
        sub_24BBE0934(exception, 1);
LABEL_11:
        __cxa_throw(exception, &unk_285F89D90, nullsub_8);
      default:
        return a1 != 0;
    }
  }

  return a1 != 0;
}

uint64_t sub_24BBD5F24(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v6 = 0;
  (*(**(a1 + 8) + 40))(*(a1 + 8), &v6);
  v4 = v6;
  *(a2 + 56) = HIWORD(v6);
  *(a2 + 60) = v4;
  return (*(**(a1 + 8) + 96))(*(a1 + 8), *(a1 + 32), a2, a2 + 8, a2 + 16, a2 + 24, a2 + 32, a2 + 40, a2 + 64);
}

uint64_t sub_24BBD5FDC(void **a1, uint64_t a2)
{
  v4 = (*(*a1[6] + 72))(a1[6]);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1000;
  }

  *(a2 + 4) = v5;
  *a2 = 16;
  result = ((*a1)[2])(a1);
  *(a2 + 6) = result;
  *(a2 + 8) = 6;
  return result;
}

uint64_t sub_24BBD6074(uint64_t a1)
{
  LODWORD(result) = (*(**(a1 + 48) + 168))(*(a1 + 48));
  if (result >= 0xFFFF)
  {
    return 0xFFFFLL;
  }

  else
  {
    return result;
  }
}

uint64_t sub_24BBD60BC(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, void *a6, uint64_t a7, int32x4_t *a8, uint64_t a9)
{
  v16 = (*(*a2 + 64))(a2);
  v17 = (*(*v16 + 16))(v16);
  v18 = *(*(a1 + 48) + 128);
  *v59 = 0;
  v58 = 0;
  memset(v57, 0, sizeof(v57));
  if (*(v18 + 72) > 1u)
  {
    v19 = v57;
    sub_24BBD6C0C();
  }

  else
  {
    v19 = (v18 + 88);
  }

  LODWORD(v51) = 0;
  v55 = 0;
  v56 = 0;
  if (sub_24BBD6C14(a2))
  {
    sub_24BBE0618(&v53, a1);
    sub_24BBE070C(&v53, *(*(a1 + 48) + 150), &v17[40].i32[2], &v51, &v56 + 1, &v56, &v55 + 1, &v55);
    sub_24BBE0958(&v53);
    *&v52 = 0;
    v53.i64[0] = v51;
    *(&v52 + 1) = HIDWORD(v56);
    (*(*a2 + 24))(a2, &v53, &v53);
    (*(*a2 + 24))(a2, &v52 + 8, &v52 + 8);
    v20 = v53.i32[0];
    v21 = v53.i32[1];
    *a3 = v53.i32[0];
    *a9 = v20;
    a3[1] = -v21;
    v22 = DWORD2(v52);
    v23 = HIDWORD(v52);
    *a4 = DWORD2(v52);
    *(a9 + 4) = v22;
    a4[1] = -v23;
    *(a9 + 8) = 0;
    *a7 = 0;
    v53.i64[0] = 0;
    HIDWORD(v52) = v56;
    *(&v52 + 4) = v55;
  }

  else
  {
    v54 = 0;
    sub_24BBD6C20(&v53, a1);
    sub_24BBD6EA8(&v53, *(*(a1 + 48) + 150), &v17[40].i32[2], &v51, &v56 + 1, &v56, &v55 + 1, &v55, &v54);
    sub_24BBD70C8(&v53);
    v53.i32[0] = 0;
    v53.i32[1] = v51;
    HIDWORD(v52) = HIDWORD(v56);
    LODWORD(v52) = 0;
    *(&v52 + 4) = v56;
    (*(*a2 + 24))(a2, &v53, &v53);
    (*(*a2 + 24))(a2, &v52 + 8, &v52 + 8);
    (*(*a2 + 24))(a2, &v52, &v52);
    v24 = -v53.i32[1];
    *a3 = v53.i32[0];
    a3[1] = v24;
    *a9 = v24;
    v25 = v52;
    v26 = DWORD1(v52);
    v27 = HIDWORD(v52);
    v28 = DWORD1(v52) - HIDWORD(v52);
    *a4 = DWORD2(v52) - v52;
    a4[1] = v28;
    *(a9 + 4) = -v27;
    v29 = -v26;
    *a7 = v25;
    *(a7 + 4) = v29;
    *(a9 + 8) = v29;
    v53.i64[0] = 0;
    *(&v52 + 1) = v55;
    *&v52 = v54;
  }

  (*(*a2 + 24))(a2, &v53, &v53);
  (*(*a2 + 24))(a2, &v52 + 8, &v52 + 8);
  (*(*a2 + 24))(a2, &v52, &v52);
  v30 = v53.i32[1] - HIDWORD(v52);
  *a5 = DWORD2(v52) - v53.i32[0];
  a5[1] = v30;
  *a6 = v52;
  *a8 = vtrn1q_s32(v17[58], vextq_s8(v17[58], v17[58], 0xCuLL));
  *(a9 + 72) = 0;
  if (sub_24BBD6C14(a2))
  {
    if ((v19[22].i8[4] & 3) != 0)
    {
      *(a9 + 72) |= 0x40000u;
    }

    *v59 = v19[1].u32[1];
    (*(*a2 + 24))(a2, v59, v59);
    *(a9 + 28) = v59[0];
    v31 = -v19[1].i32[0];
    v59[0] = 0;
    v59[1] = v31;
    (*(*a2 + 24))(a2, v59, v59);
    *(a9 + 32) = v59[1];
    v32 = (a9 + 32);
    if (v19[2].i32[2] || v19[2].i32[3])
    {
      (*(*a2 + 32))(a2, &v19[2].i64[1], v59);
    }

    else
    {
      v48 = *v19;
      v53 = vtrn1q_s32(*v19, vextq_s8(v48, v48, 0xCuLL));
      if (v17[48].i32[3])
      {
        v49 = v48.i32[2] - v48.i32[0];
      }

      else
      {
        v49 = 0;
      }

      v52 = 0uLL;
      v51 = 0;
      sub_24BBF4B68(a1, 0, 0, &v17[40].i64[1], v17->i32[0], &v53, v49, v59, &v52 + 2, &v52, &v51);
      v59[1] = -v59[1];
      (*(*a2 + 24))(a2, v59, v59);
    }

    v33.i64[0] = *v59;
    v33.i64[1] = *v59;
    v34 = vsubq_s32(v17[58], v33);
    *(a9 + 48) = v34.i32[0];
    *(a9 + 56) = v34;
    v35 = (*(**(a1 + 48) + 304))();
    if (v35)
    {
      *v59 = (v35 << 16);
      v32 = v59;
      (*(*a2 + 24))(a2, v59, v59);
    }

    v36 = *v32;
    *(a9 + 48) -= *v32;
    *(a9 + 52) = v36;
    *(a9 + 44) = *(*(a1 + 48) + 152);
    v37 = v19[2].i32[1];
    v59[0] = 0;
    v59[1] = v37;
    (*(*a2 + 24))(a2, v59, v59);
    *(a9 + 12) = v59[1];
    *(a9 + 16) = v17[58].i32[3] - v17[58].i32[1];
    v38 = v19[1].i32[3];
    v59[0] = 0;
    v59[1] = v38;
    (*(*a2 + 24))(a2, v59, v59);
    v39 = -v59[1];
    *(a9 + 20) = v59[1];
    *(a9 + 24) = v39;
    *(a9 + 36) = 0;
    *(a9 + 40) = 0;
  }

  else
  {
    v40 = (*(**(a1 + 48) + 296))(*(a1 + 48));
    if (v40)
    {
      v59[0] = 0;
      v59[1] = -65536 * v40;
      (*(*a2 + 24))(a2, v59, v59);
      v41 = v59[1];
    }

    else
    {
      v41 = *(a9 + 4) >> 1;
    }

    *(a9 + 48) = v41;
    if ((v19[22].i8[4] & 3) != 0)
    {
      *(a9 + 72) |= 0x40000u;
    }

    *v59 = v19[1].u32[1];
    (*(*a2 + 24))(a2, v59, v59);
    *(a9 + 28) = v59[0];
    v42 = -v19[1].i32[0];
    v59[0] = 0;
    v59[1] = v42;
    (*(*a2 + 24))(a2, v59, v59);
    *(a9 + 32) = v59[1];
    v43 = (*(**(a1 + 48) + 304))();
    if (v43)
    {
      v59[0] = 0;
      v59[1] = -65536 * v43;
      (*(*a2 + 24))(a2, v59, v59);
      v44 = v59[1];
    }

    else
    {
      v44 = *(a9 + 32);
    }

    *(a9 + 52) = v44;
    *(a9 + 44) = *(*(a1 + 48) + 152);
    *v59 = v19[2].u32[0];
    (*(*a2 + 24))(a2, v59, v59);
    *(a9 + 12) = v59[0];
    *(a9 + 16) = v17[58].i32[2] - v17[58].i32[0];
    *v59 = v19[1].u32[2];
    (*(*a2 + 24))(a2, v59, v59);
    v45 = v59[0];
    *(a9 + 20) = v59[0];
    *(a9 + 24) = -v45;
    v46 = v17[58];
    *(a9 + 40) = 0;
    *(a9 + 56) = v46;
    *(a9 + 36) = 0;
    sub_24BBD7374(a1, a2, (a9 + 36), (a9 + 40));
    if (!*(a9 + 36))
    {
      *(a9 + 36) = 8 * *a9 / 9;
    }

    if (!*(a9 + 40))
    {
      *(a9 + 40) = 2 * *a9 / 3;
    }
  }

  result = (*(**(a1 + 48) + 312))(*(a1 + 48));
  if (result)
  {
    *(a9 + 72) |= 1u;
  }

  if (*(*(a1 + 48) + 152))
  {
    *(a9 + 72) |= 0x40u;
  }

  return result;
}

void sub_24BBD6AF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _Unwind_Exception *exception_object, uint64_t a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23, int a24, int a25, int a26, int a27)
{
  sub_24BBD70C8(&a19);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    v35 = *(v28 + 12);
    v29 = *(v28 + 4);
    a26 = 0;
    a27 = v29;
    v30 = *(*(v27 + 48) + 152);
    v31 = 18 * (-v30 >> 8);
    if (v30)
    {
      v32 = 65536000;
    }

    else
    {
      v32 = 0x10000;
    }

    a24 = v31;
    a25 = v32;
    a23 = 0;
    __cxa_end_catch();
    JUMPOUT(0x24BBD6320);
  }

  _Unwind_Resume(a1);
}

void *sub_24BBD6C20(void *a1, uint64_t a2)
{
  *a1 = &unk_285F8AC80;
  a1[1] = (*(*a2 + 248))(a2);
  return a1;
}

void *sub_24BBD6C8C(void **a1)
{
  (*(*a1[6] + 72))(a1[6]);
  v2 = *(a1[6] + 74);
  v3 = sub_24BBD6D84(0x18u);
  v4 = ((*a1)[35])(a1);
  if (v2)
  {
    sub_24BBD6D98(v3, v4);
  }

  else
  {
    sub_24BBF1C9C(v3, v4);
  }

  return v3;
}

void *sub_24BBD6D98(void *a1, uint64_t a2)
{
  v4 = sub_24BBD6E88(a1);
  *v4 = &unk_285F8A208;
  v4[1] = a2;
  v5 = (*(**(a2 + 8) + 504))();
  a1[2] = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 4);
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  return a1;
}

void sub_24BBD6E64(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  nullsub_1(v1);
  _Unwind_Resume(a1);
}

unsigned __int16 *sub_24BBD6EA8(uint64_t a1, int a2, int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7, unsigned int *a8, unsigned int *a9)
{
  result = (*(**(a1 + 8) + 16))(*(a1 + 8));
  v17 = (a2 - 1);
  if (a2 > 1)
  {
    v19 = 0;
    v20 = a2;
    v21 = result;
    v22 = a3;
    do
    {
      v23 = *v21++;
      v24 = bswap32(v23);
      v25 = *v22++;
      v19 += v25 * (v24 >> 16);
      --v20;
    }

    while (v20);
    v26 = 0;
    v27 = v17;
    *a4 = v19;
    v28 = a2;
    v29 = &result[v17 + 1];
    v30 = a3;
    do
    {
      v31 = *v29++;
      v32 = bswap32(v31);
      v33 = *v30++;
      v26 += v33 * (v32 >> 16);
      --v28;
    }

    while (v28);
    *a5 = v26;
    v34 = a2;
    v35 = &result[v17 + 2 + v27];
    v36 = a3;
    do
    {
      v37 = *v35++;
      v38 = bswap32(v37);
      v39 = *v36++;
      v28 += v39 * (v38 >> 16);
      --v34;
    }

    while (v34);
    *a6 = v28;
    v40 = a2;
    v41 = &result[v17 + 3 + v27 + v27];
    v42 = a3;
    do
    {
      v43 = *v41++;
      v44 = bswap32(v43);
      v45 = *v42++;
      v34 += v45 * (v44 >> 16);
      --v40;
    }

    while (v40);
    v46 = &result[v17 + 4 + v27 + v27 + v27];
    *a7 = v34;
    v47 = a2;
    v48 = a3;
    do
    {
      v49 = *v46++;
      v50 = bswap32(v49);
      v51 = *v48++;
      v40 += v51 * (v50 >> 16);
      --v47;
    }

    while (v47);
    v18 = 0;
    *a8 = v40;
    v52 = &result[5 * v17 + 5];
    do
    {
      v53 = *v52++;
      v54 = bswap32(v53);
      v55 = *a3++;
      v18 += v55 * (v54 >> 16);
      --a2;
    }

    while (a2);
  }

  else
  {
    *a4 = bswap32(*result) & 0xFFFF0000;
    *a5 = bswap32(result[1]) & 0xFFFF0000;
    *a6 = bswap32(result[2]) & 0xFFFF0000;
    *a7 = bswap32(result[3]) & 0xFFFF0000;
    *a8 = bswap32(result[4]) & 0xFFFF0000;
    v18 = bswap32(result[5]) & 0xFFFF0000;
  }

  *a9 = v18;
  return result;
}

void *sub_24BBD70C8(void *a1)
{
  *a1 = &unk_285F8AC80;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_24BBD7134(uint64_t a1)
{
  v1 = nullsub_1(a1);

  sub_24BBD7160(v1);
}

int *sub_24BBD717C(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  v6 = *a2;

  return sub_24BBD71E0(v5, v6, a3);
}

int *sub_24BBD71E0(int *result, uint64_t a2, int *a3)
{
  v3 = a2 * *result * 0.0000152587891;
  v4 = 0.5;
  if (v3 >= 0.0)
  {
    v5 = 0.5;
  }

  else
  {
    v5 = -0.5;
  }

  v6 = v3 + v5;
  if (v6 > -2147483650.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x80000000;
  }

  if (v6 < 2147483650.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0x7FFFFFFF;
  }

  v9 = SHIDWORD(a2) * result[2] * 0.0000152587891;
  if (v9 >= 0.0)
  {
    v10 = 0.5;
  }

  else
  {
    v10 = -0.5;
  }

  v11 = v9 + v10;
  if (v11 >= 2147483650.0)
  {
    v12 = 0x7FFFFFFF;
  }

  else if (v11 > -2147483650.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0x80000000;
  }

  v13 = SHIDWORD(a2) * result[3] * 0.0000152587891;
  if (v13 < 0.0)
  {
    v4 = -0.5;
  }

  v14 = v13 + v4;
  if (v14 >= 2147483650.0)
  {
    v15 = 0x7FFFFFFF;
  }

  else if (v14 > -2147483650.0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0x80000000;
  }

  v16 = a2 * result[1] * 0.0000152587891;
  v17 = 0.5;
  if (v16 < 0.0)
  {
    v17 = -0.5;
  }

  v18 = v16 + v17;
  if (v18 >= 2147483650.0)
  {
    v19 = 0x7FFFFFFF;
  }

  else if (v18 <= -2147483650.0)
  {
    v19 = 0x80000000;
  }

  else
  {
    v19 = v18;
  }

  v20 = v12 + v8 + result[4];
  v21 = v19 + v15 + result[5];
  v22 = result[179];
  if ((v22 & 0x80000) != 0)
  {
    v20 = -v20;
  }

  if ((*&v22 & 0x400000) != 0)
  {
    v21 = -v21;
  }

  v23 = (*&v22 & 0x10000) == 0;
  if ((*&v22 & 0x10000) != 0)
  {
    v24 = v21;
  }

  else
  {
    v24 = v20;
  }

  if (v23)
  {
    v20 = v21;
  }

  *a3 = v24;
  a3[1] = v20;
  return result;
}

uint64_t sub_24BBD7374(void **a1, uint64_t a2, int *a3, int *a4)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15[0] = 0x4F0048006F0078;
  v13 = 4;
  result = (*(*a1[6] + 120))(a1[6], v15, &v14, &v13, 0);
  if (v13)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      while (1)
      {
        if (*(&v15[-1] + v10))
        {
          result = ((*a1)[16])(a1, a2);
          ++v9;
        }

        if (v10 != 2 || !v9)
        {
          break;
        }

        *a4 = 0 / v9;
        v10 = 4;
        v9 = 0;
      }

      v11 = v10 >= 6;
      v10 += 2;
    }

    while (!v11);
    if (v9)
    {
      *a3 = 0 / v9;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_24BBD7508(uint64_t a1, uint64_t a2, unsigned __int16 a3, int32x2_t *a4)
{
  v11 = a3;
  v10 = 0;
  v7 = (*(*a2 + 64))(a2);
  v9 = (*(*a1 + 200))(a1, v7, &v11, &v10);
  sub_24BBD77F0(a1, a2, v11, v9, v10, a4);
  return sub_24BBEC42C(&v9);
}

unsigned __int8 *sub_24BBD760C(uint64_t a1, unsigned int a2, _WORD *a3)
{
  v6 = (*(**(a1 + 48) + 168))(*(a1 + 48));
  if (v6 >= 0xFFFF)
  {
    v7 = 0xFFFF;
  }

  else
  {
    v7 = v6;
  }

  if (v7 <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 8);
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  v8 = (*(*(a1 + 48) + 104) + 8 * a2);
  v9 = sub_24BBD0E00(v8[1], qword_28151C040, 0);
  sub_24BBD770C(v9, (*(*(a1 + 48) + 232) + *v8), v8[1], *(a1 + 32));
  *a3 = v8[1];
  return v9;
}

unsigned __int8 *sub_24BBD770C(unsigned __int8 *result, unsigned __int8 *a2, int a3, int a4)
{
  if (a3 <= a4)
  {
    return result;
  }

  if ((a4 & 0x80000000) == 0)
  {
    v4 = 4330;
    v5 = a2;
    if (a4 > 2)
    {
      if (a4 != 3)
      {
        if (a4 != 4)
        {
          goto LABEL_15;
        }

        v5 = a2 + 1;
        v4 = 52845 * *a2 + 228841569;
      }

      v6 = *v5++;
      v4 = 52845 * (v4 + v6) + 22719;
    }

    else
    {
      if (a4 == 1)
      {
LABEL_14:
        v8 = *v5++;
        v4 = 52845 * (v4 + v8) + 22719;
        goto LABEL_15;
      }

      if (a4 != 2)
      {
LABEL_15:
        if (v5 < &a2[a3])
        {
          v9 = &a2[a3] - v5;
          do
          {
            v10 = *v5++;
            v11 = v10 ^ (v4 >> 8);
            v4 = 52845 * (v4 + v10) + 22719;
            *result++ = v11;
            --v9;
          }

          while (v9);
        }

        return result;
      }
    }

    v7 = *v5++;
    v4 = 52845 * (v4 + v7) + 22719;
    goto LABEL_14;
  }

  if (result != a2)
  {
    return memcpy(result, a2, a3);
  }

  return result;
}

int32x2_t sub_24BBD77F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, int32x2_t *a6)
{
  v12 = (*(*a2 + 64))(a2);
  v13 = (*(*v12 + 16))(v12);
  if ((*(*a2 + 40))(a2))
  {
    v50 = 0uLL;
    v51 = 0uLL;
    v48 = 0uLL;
    v49 = 0uLL;
    v46 = 0uLL;
    v47 = 0uLL;
    v44 = 0uLL;
    v45 = 0uLL;
    v42 = 0uLL;
    v43 = 0uLL;
    v40 = 0uLL;
    v41 = 0uLL;
    v38 = 0uLL;
    v39 = 0uLL;
    v36 = 0uLL;
    v37 = 0uLL;
    v34 = 0uLL;
    v35 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    v27 = 0uLL;
    sub_24BBD7BD4(&v27, a1, a2, a4, a5);
    BYTE12(v51) = 0;
    *&v27 = &unk_285F8A928;
    *&v48 = &unk_285F8A9A8;
    *(&v48 + 1) = a2;
    sub_24BBF48E0(&v27, v13, 0, a6, &a6[2] + 1, &a6[3] + 1);
    v14 = DWORD1(v43);
    if (DWORD1(v43) != 0x7FFFFFFF)
    {
      v14 = v47 - DWORD2(v47) + DWORD1(v43);
    }

    if (HIDWORD(v43) == 0x80000000)
    {
      v15 = 0x8000;
    }

    else
    {
      v15 = (HIDWORD(v43) + 0xFFFF + v47 - DWORD2(v47)) >> 16;
    }

    v16 = DWORD1(v47) + DWORD2(v43);
    v17 = -(v44 + DWORD1(v47));
    a6[1].i32[0] = v14;
    a6[1].i32[1] = -v16;
    a6[2].i16[0] = ((0xFFFF - v16) >> 16) - HIWORD(v17);
    a6[2].i16[1] = v15 - HIWORD(v14);
    if (sub_24BBD6C14(a2))
    {
      v26 = 0;
      v18 = *v13;
      v25 = vzip2q_s32(vzip1q_s32(v49, vextq_s8(v49, v49, 0xCuLL)), v49);
      sub_24BBF4C28(a1, a3, a2, (v13 + 162), v18, DWORD1(v43) == 0x7FFFFFFF, &v25, HIDWORD(v44), a6, &a6[2] + 1, &a6[3] + 1, &v26);
      a6[1] = vadd_s32(a6[1], v26);
    }

    sub_24BBE04C0(&v27);
  }

  else
  {
    v46 = 0uLL;
    v47 = 0uLL;
    v44 = 0uLL;
    v45 = 0uLL;
    v42 = 0uLL;
    v43 = 0uLL;
    v40 = 0uLL;
    v41 = 0uLL;
    v38 = 0uLL;
    v39 = 0uLL;
    v36 = 0uLL;
    v37 = 0uLL;
    v34 = 0uLL;
    v35 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    v27 = 0uLL;
    sub_24BBD7BD4(&v27, a1, a2, a4, a5);
    v20 = sub_24BBD7F18(a2);
    sub_24BBD7F24(&v27, v13, v20, a6, &a6[2] + 1, &a6[3] + 1);
    v21 = DWORD1(v43);
    if (DWORD1(v43) != 0x7FFFFFFF)
    {
      v21 = v47 - DWORD2(v47) + DWORD1(v43);
    }

    if (HIDWORD(v43) == 0x80000000)
    {
      v22 = 0x8000;
    }

    else
    {
      v22 = (HIDWORD(v43) + 0xFFFF + v47 - DWORD2(v47)) >> 16;
    }

    v23 = DWORD1(v47) + DWORD2(v43);
    v24 = -(v44 + DWORD1(v47));
    a6[1].i32[0] = v21;
    a6[1].i32[1] = -v23;
    a6[2].i16[0] = ((0xFFFF - v23) >> 16) - HIWORD(v24);
    a6[2].i16[1] = v22 - HIWORD(v21);
    sub_24BBE04C0(&v27);
    if (sub_24BBD6C14(a2))
    {
      *&v27 = 0;
      sub_24BBF513C(a1, a3, a2, a4, a5, a6, &a6[2] + 1, &a6[3] + 1, &v27);
      result = vadd_s32(a6[1], *&v27);
      a6[1] = result;
    }
  }

  return result;
}

void sub_24BBD7BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_24BBE04C0(va);
  _Unwind_Resume(a1);
}

void *sub_24BBD7BD4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v7 = sub_24BBD7C94(a1, a2, a4, a5, 1);
  *v7 = &unk_285F8A888;
  *(v7 + 82) = 0;
  v8 = (*(*a3 + 64))(a3);
  a1[40] = *(*(*v8 + 24))(v8);
  return a1;
}

void *sub_24BBD7C94(void *a1, uint64_t a2, uint64_t a3, __int16 a4, int a5)
{
  v6 = sub_24BBD7D34(a1, a2, a3, a4, a5);
  *v6 = &unk_285F8A820;
  v6[39] = &off_281C0A890;
  a1[24] = sub_24BBD7EAC(0);
  a1[25] = sub_24BBD7EAC(1u);
  a1[26] = sub_24BBD7EAC(2u);
  a1[27] = sub_24BBD7EAC(3u);
  a1[28] = sub_24BBD7EAC(4u);
  return a1;
}

uint64_t sub_24BBD7D34(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, int a5)
{
  *a1 = &unk_285F8A7E0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = a3;
  *(a1 + 32) = a4;
  *(a1 + 48) = (*(*a2 + 208))(a2, a1 + 40, a1 + 34, a1 + 80);
  *(a1 + 56) = (*(*a2 + 216))(a2);
  *(a1 + 96) = (*(*a2 + 224))(a2, a1 + 88, a1 + 120, a1 + 104, a1 + 128, a1 + 136);
  *(a1 + 112) = (*(*a2 + 232))(a2);
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = a5;
  if (a5)
  {
    pthread_mutex_lock(&stru_28151BBD0);
  }

  *(a1 + 248) = qword_27F078540;
  qword_27F078540 = a1;
  return a1;
}

char *sub_24BBD7EAC(unsigned int a1)
{
  v1 = &unk_28151BAE0 + 24 * a1;
  if (!*v1)
  {
    v2 = *(v1 + 5);
    if (v2)
    {
      *v1 = sub_24BBD0E00(v2, qword_28151C040, 0);
      v3 = *(v1 + 5);
      *(v1 + 4) = v3;
      *(v1 + 2) = v3;
    }
  }

  return v1;
}

uint64_t sub_24BBD7F24(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, _DWORD *a5, _DWORD *a6)
{
  (*(*a1 + 16))(a1);
  result = (*(**(a1 + 8) + 240))(*(a1 + 8), a2, a1 + 276);
  *(a1 + 328) = result;
  v12 = -*(a1 + 308);
  *a4 = *(a1 + 304);
  a4[1] = v12;
  v13 = *(a1 + 296);
  v14 = *(a1 + 300);
  *a5 = v13;
  a5[1] = -v14;
  *a6 = -v13;
  a6[1] = v14;
  v15 = *(a1 + 320);
  v16 = *(a1 + 324);
  v17 = a5[1] - v16;
  *a5 += v15;
  a5[1] = v17;
  v18 = a6[1] - v16;
  *a6 += v15;
  a6[1] = v18;
  return result;
}

BOOL sub_24BBD800C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  v21 = vextq_s8(v6, v6, 8uLL);
  v7 = *(a1 + 96);
  v24 = vextq_s8(v7, v7, 8uLL);
  v8 = *(a1 + 34);
  v25 = 0x40000000000;
  BYTE4(v25) = v8;
  BYTE6(v25) = *(a1 + 88);
  v26 = *(a1 + 32);
  v27 = *(a1 + 56);
  v28 = *(a1 + 112);
  v9 = *(a1 + 80) - v6.i32[0];
  v10 = *(a1 + 136) - v7.i32[0];
  v11 = *(a1 + 24);
  v22 = 0;
  v23 = 0;
  v19[4] = 0;
  v20 = v11;
  v29 = 0;
  v30 = v9;
  v31 = v10;
  v19[0] = a1 + 192;
  v19[1] = a1 + 276;
  v19[2] = a1 + 260;
  v19[3] = 0;
  *(a1 + 292) = 0;
  v18 = 0;
  memset(v15, 0, sizeof(v15));
  v17 = 0;
  v16 = qword_28151C018;
  qword_28151C018 = v15;
  if (_setjmp(v15))
  {
    v18 = v17;
  }

  else
  {
    v12 = *(sub_24BBD2908() + 4);
    sub_24BBD2CC8();
    v18 = v12(a2, &qword_28151C188, &v20, v19, *(a1 + 312), a3, a1);
    qword_28151C018 = v16;
  }

  result = sub_24BBD5D7C(v18);
  if (result || *(a1 + 16) && *(a1 + 16) != 19)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, *(a1 + 16));
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  return result;
}

uint64_t sub_24BBD81D8(uint64_t a1, uint64_t a2, unsigned __int8 **a3, unsigned int *a4, uint64_t a5, char a6, uint64_t a7)
{
  v62 = 0;
  v61[0] = 0;
  v61[1] = 0;
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  v57 = 0;
  v55 = 0u;
  v56 = 0u;
  v49 = 0;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v42 = 0;
  v43 = a5;
  v44 = a2;
  v45 = 0;
  v41 = a7;
  DWORD2(v48) = 0;
  *&v50 = sub_24BBDDB9C;
  *(&v50 + 1) = sub_24BBDFB90;
  v51 = sub_24BBDFC08;
  v52 = sub_24BBDFD8C;
  v53 = sub_24BBDFE6C;
  v54 = sub_24BBDFEE0;
  v14 = a6 & 1;
  *&v38 = v14 | dword_28151BD70 | 2;
  v39 = a7;
  v40 = &v41;
  *(&v38 + 1) = v61;
  memset(v35, 0, sizeof(v35));
  v37 = 0;
  v36 = qword_28151C018;
  qword_28151C018 = v35;
  if (_setjmp(v35))
  {
    if (v45)
    {
      v15 = v45;
      do
      {
        v16 = *v15;
        (*(**(v44 + 48) + 16))(*(v44 + 48));
        v15 = v16;
      }

      while (v16);
    }

    v45 = 0;
    *&v46 = 0;
    if ((v37 - 256) >= 0x13)
    {
      sub_24BBEDB70(v37, 0);
    }

    return (256 - v37);
  }

  else
  {
    sub_24BBD8608(&v41);
    v62 = sub_24BBD86F8(a1, a2, a3, a4, 0, &v50, &v38);
    if (v62 == 1)
    {
      v18 = v61[0];
      v19 = HIDWORD(v61[0]);
      v20 = *(&v47 + 1);
      if (*(&v47 + 1) + 40 >= v48)
      {
        v21 = a4;
        v22 = v61[0];
        sub_24BBD8608(&v41);
        v18 = v22;
        a4 = v21;
        v20 = *(&v47 + 1);
      }

      *v20 = 1548;
      v20[3] = v18;
      v20[4] = v19;
      *&v47 = 0;
      *(&v47 + 1) = v20 + 5;
      *(&v46 + 1) = 0;
      LODWORD(v59) = 0;
      v23 = *(a4 + 4);
      v24 = *(a4 + 1);
      v34 = a4;
      *&v55 = *a4;
      v56 = v24;
      v57 = v23;
      *(&v55 + 1) = &v58;
      LODWORD(v38) = v38 | 0x10;
      v25 = v18;
      v62 = sub_24BBD86F8(a1, a2, a3, &v55, 0, &v50, &v38);
      if (!v62)
      {
        v26 = *(&v47 + 1);
        if (*(&v47 + 1) + 40 >= v48)
        {
          sub_24BBD8608(&v41);
          v26 = *(&v47 + 1);
        }

        *v26 = 1548;
        v26[3] = v25;
        v26[4] = v19;
        *(&v47 + 1) = v26 + 5;
        *(&v46 + 1) = 0;
        *&v47 = 0;
        *&v50 = 0;
        LODWORD(v38) = v14 | 0x8A | dword_28151BD70;
        v62 = sub_24BBD86F8(a1, a2, a3, v34, 0, &v50, &v38);
      }

      a4 = v34;
      if (v62 == 1)
      {
        v62 = -8;
      }
    }

    if (!v62)
    {
      v27 = *(a1 + 716);
      v28 = *(&v47 + 1);
      if (*(&v47 + 1) + 40 >= v48)
      {
        sub_24BBD8608(&v41);
        v28 = *(&v47 + 1);
      }

      *v28 = 14;
      *(&v47 + 1) = v28 + 1;
      v29 = (v38 & 0x100) == 0 || (a6 & 2) == 0;
      v30 = qword_28151BD78;
      if (v29)
      {
        v30 = sub_24BBDFF28;
      }

      v62 = (v30)(v45, a2, a5, *(a4 + 2), 0, ((v27 >> 19) ^ (v27 >> 22) ^ HIWORD(v27)) & 1, a7);
    }

    if (v45)
    {
      v31 = v45;
      do
      {
        v32 = *v31;
        (*(**(v44 + 48) + 16))(*(v44 + 48));
        v31 = v32;
      }

      while (v32);
    }

    qword_28151C018 = v36;
    if (!v42)
    {
      v33 = *(a4 + 2);
      *v33 = 0;
      v33[1] = 0;
    }

    return v62;
  }
}

uint64_t sub_24BBD8608(uint64_t result)
{
  v1 = result;
  if (*(result + 32))
  {
    v2 = **(result + 40);
    if (v2)
    {
      **(result + 64) = 16;
      *(result + 40) = v2;
      *(result + 64) = v2 + 8;
      *(result + 72) = v2 + 808;
    }

    else
    {
      result = (***(*(result + 24) + 48))(*(*(result + 24) + 48), 808);
      if (!result)
      {
        sub_24BBEDB70(260, 0);
      }

      **(v1 + 40) = result;
      **(v1 + 64) = 16;
      *(v1 + 40) = result;
      *result = 0;
      *(v1 + 64) = result + 8;
      *(v1 + 72) = result + 808;
    }
  }

  else
  {
    result = (***(*(result + 24) + 48))(*(*(result + 24) + 48), 808);
    if (!result)
    {
      sub_24BBEDB70(260, 0);
    }

    *result = 0;
    *(v1 + 32) = result;
    *(v1 + 40) = result;
    *(v1 + 64) = result + 8;
    *(v1 + 72) = result + 808;
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
  }

  return result;
}

uint64_t sub_24BBD86F8(uint64_t a1, uint64_t a2, unsigned __int8 **a3, unsigned int *a4, unsigned __int16 *a5, __int128 *a6, __int128 *a7)
{
  v31 = a6;
  v30 = a7;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v22 = 0;
  if (a6 && (*(v31 + 2) == sub_24BBF16E8) != (*(v31 + 1) == sub_24BBF164C))
  {
    sub_24BBEDB70(-1, 0);
  }

  v12 = v30[1];
  v23 = *v30;
  v24 = v12;
  qword_28151C028 = a1;
  if (v31)
  {
    v13 = *(a1 + 716);
    if (*(v31 + 2) != sub_24BBF16E8 || (v13 & 0x490000) != 0x400000)
    {
      v14 = (8 * (*(v31 + 2) == sub_24BBF16E8)) | (v13 >> 17) & 4 | (v13 >> 21) & 2 | HIWORD(v13) & 1;
      v15 = qword_28151BC10[v14];
      v16 = qword_28151BC90[v14];
      *(&v27 + 1) = v15;
      *&v28 = v16;
      *&v27 = sub_24BBDDB84;
      v17 = sub_24BBDFCE4;
      if (*(v31 + 3) == sub_24BBED660)
      {
        v17 = sub_24BBFBF18;
      }

      *(&v28 + 1) = v17;
      *&v29 = sub_24BBDFE54;
      *(&v29 + 1) = sub_24BBDFEC8;
      *&v25 = *(v30 + 3);
      *(&v25 + 1) = a1;
      *&v26 = &v27;
      *(&v26 + 1) = v31;
      LODWORD(v23) = v23 | 0x40;
      *(&v24 + 1) = &v25;
      v31 = &v27;
    }
  }

  memset(v19, 0, sizeof(v19));
  v21 = 0;
  v20 = qword_28151C018;
  qword_28151C018 = v19;
  if (_setjmp(v19))
  {
    if (v21 == 260 || (v21 - 256) >= 0x13)
    {
      sub_24BBEDB70(v21, 0);
    }

    return (256 - v21);
  }

  else
  {
    if (*(a1 + 960) == 13)
    {
      v22 = -8;
    }

    else
    {
      v22 = sub_24BBD89BC(a1, a2, a3, a4, a5, v31, &v23);
    }

    *v30 |= v23 & 0x180;
    qword_28151C018 = v20;
  }

  return v22;
}

uint64_t sub_24BBD89BC(_DWORD *a1, uint64_t a2, unsigned __int8 **a3, unsigned int *a4, unsigned __int16 *a5, uint64_t a6, unsigned int *a7)
{
  v558[158] = *MEMORY[0x277D85DE8];
  bzero(&v555, 0x528uLL);
  v554 = 0;
  v553 = 0;
  v552 = 0u;
  v551 = 0u;
  memset(v550, 0, sizeof(v550));
  v549 = 0u;
  bzero(v547, 0x300uLL);
  memset(v546, 0, sizeof(v546));
  v545[0].i32[0] = 0;
  v543 = 0u;
  v544 = 0u;
  v541 = 0u;
  v542 = 0u;
  v539 = 0u;
  v540 = 0u;
  v537 = 0u;
  v538 = 0u;
  v535 = 0u;
  v536 = 0u;
  v533 = 0u;
  v534 = 0u;
  v531 = 0u;
  v532 = 0u;
  memset(v530, 0, sizeof(v530));
  v527 = 0;
  v526 = 0;
  v525 = 0;
  v524 = 0;
  v514 = *(a7 + 3);
  v498 = a2;
  v499 = a1[179];
  v523 = 0;
  v14 = *a7;
  v15 = *a7 & 1;
  v522 = 0;
  qword_28151C038 = a2;
  v515 = a6;
  v16 = (v14 & 0x404) != 0 || a6 == 0;
  v17 = v16;
  v518 = v17;
  v501 = a4[6];
  v474 = a4[7];
  if (v16)
  {
    v18 = v14 & 1;
  }

  else
  {
    v19 = *(*a4 + 32);
    v20 = *v19;
    if (*(v19 + 8) >> 4 <= 0x202u)
    {
      v21 = a2;
      if (v20)
      {
        (*(**(a2 + 40) + 16))(*(a2 + 40));
        v21 = qword_28151C038;
      }

      v22 = (***(v21 + 40))(*(v21 + 40), 8240);
      v23 = *(*a4 + 32);
      *v23 = v22;
      if (!v22)
      {
        *(v23 + 8) = 0;
        v455 = 4294967292;
        goto LABEL_1079;
      }

      v20 = v22;
      *(v23 + 8) = 8240;
    }

    qword_28151C1C0 = v20;
    qword_28151C1C8 = v20 + 4120;
    *v20 = 1;
    *(v20 + 40) = 0u;
    *(v20 + 56) = 0u;
    *(v20 + 24) = 0u;
    v24 = vdup_n_s32(0xE8300001);
    *(v20 + 64) = v24;
    *(v20 + 72) = 0;
    *(v20 + 80) = v20 + 56;
    *(v20 + 4120) = 1;
    *(v20 + 4176) = 0u;
    *(v20 + 4144) = 0u;
    *(v20 + 4160) = 0u;
    *(v20 + 4192) = 0;
    *(v20 + 4184) = v24;
    *(v20 + 4200) = v20 + 4176;
    v14 = *a7;
    v18 = *a7 & 1;
  }

  qword_28151C1D0 = 0;
  byte_28151C1D8 = 1;
  qword_28151C1E0 = (a1 + 7);
  qword_28151C1E8 = (a1 + 56);
  LODWORD(qword_28151C1F0) = a1[6];
  HIDWORD(qword_28151C1F0) = a1[55];
  if ((v499 & 0xC0000000) != 0)
  {
    v25 = v18;
  }

  else
  {
    v25 = 0;
  }

  v497 = v25;
  if (v499 < 0)
  {
    v26 = v18;
  }

  else
  {
    v26 = 0;
  }

  v506 = v26;
  if ((v14 & 0x400) == 0)
  {
    sub_24BBDDADC(a1, 0);
  }

  dword_27F078468 = v499 & 0x10;
  v27 = v518;
  if ((v499 & 0x10) == 0)
  {
    v27 = 1;
  }

  if ((v27 & 1) == 0)
  {
    v524 = 0x1000000000000;
    if (!off_28151BD68)
    {
      sub_24BBEDB70(257, 0);
    }

    off_28151BD68(v524, &v524);
    *(qword_28151C1C8 + 16) = HIDWORD(v524);
    v524 = 0x10000;
    if (!off_28151BD68)
    {
      sub_24BBEDB70(257, 0);
    }

    off_28151BD68(v524, &v524);
    *(qword_28151C1C0 + 16) = v524;
  }

  dword_28151C030 = 0x10000;
  v16 = a1[181] == 2;
  dword_27F07846C = v16;
  if (v16)
  {
    v28 = 1;
    if (a1[178])
    {
      HIDWORD(v529) = a1[178];
      LODWORD(v529) = 0;
      v29 = (sub_24BBD5470(&v529) + 0x8000) & 0xFFFF0000;
      if (v29 <= 0x10000)
      {
        v29 = 0x10000;
      }

      v28 = ((v29 + 98304) & 0x10000) == 0;
    }

    dword_27F078470 = v28;
  }

  v469 = a5;
  v503 = v18 & ((v499 & 0x40000000) != 0);
  byte_27F078474 = 0;
  v30 = v518;
  if ((v499 & 0x20) == 0)
  {
    v30 = 1;
  }

  v31 = v497 ^ 1;
  v516 = a1;
  v509 = a7;
  v500 = a4;
  v496 = a3;
  v473 = v15;
  if ((v30 & 1) != 0 || v31)
  {
    v466 = v497 ^ 1;
    v472 = 0;
    v511 = 0;
    v476 = 0;
    v517 = 0;
    dword_28151C1F8 = 2;
  }

  else
  {
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
LABEL_45:
    v517 = v35;
    v511 = v33;
    v476 = v34;
    v472 = v32;
    v466 = v31;
    dword_28151C1F8 = 0;
    sub_24BBFCA78(**a4, *(*a4 + 8), *(*a4 + 16));
  }

  v36 = a1 + 237;
  v490 = a1 + 162;
  v477 = a1 + 216;
  v484 = (a3 + 1);
  v481 = a3 + 33;
  v486 = a3 + 60;
  v480 = a3 + 9;
  v487 = (a3 + 6);
  v488 = (a3 + 2);
  v483 = (a3 + 5);
  v485 = a3 + 62;
  v478 = a3 + 19;
  v479 = a3 + 34;
  v37 = 0x27F078000uLL;
  v38 = 0uLL;
  v39 = vdupq_n_s64(2uLL);
  v512 = v39;
  v513 = vdupq_n_s64(0x21uLL);
  v40 = vneg_f16(0xFFFFFFFF00000000);
  v41 = 0x27F078000uLL;
  v502 = a1 + 237;
LABEL_48:
  *(v37 + 1352) = 0;
  a4[9] = 0;
  v527 = 0;
  *(v41 + 1148) = 0;
  *v36 = 0;
  a1[239] = 0;
  v42 = *a7;
  if ((*a7 & 0x18) == 0)
  {
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v556 = 0;
    v557 = 1;
    v47 = *a3;
    v517 = &(*a3)[*(a3 + 32)];
    if (!*a3)
    {
      goto LABEL_73;
    }

    goto LABEL_82;
  }

  if ((v42 & 0x20) == 0)
  {
    if ((v42 & 0x10) != 0)
    {
      v44 = *(*(a7 + 1) + 8);
      v556 = v44;
      v557 = 2;
      v39 = 0uLL;
LABEL_62:
      v50 = v476;
      goto LABEL_66;
    }

    v43 = 0;
LABEL_57:
    if ((v42 & 8) == 0)
    {
      sub_24BBEDB70(-1, 0);
    }

    v49 = *(a7 + 1);
    v44 = v49[1].i32[1];
    v556 = v44;
    v557 = 2;
    v39.n128_u64[0] = vshr_n_u32(vadd_s32(*v49, 0x800000008000), 0x10uLL);
    if ((v42 & 0x20) != 0)
    {
      v50 = v476;
      *v43 = v476;
      goto LABEL_66;
    }

    goto LABEL_62;
  }

  v48 = v514;
  if ((v42 & 0x40) != 0)
  {
    v48 = *v514;
  }

  v43 = (v48 + 2);
  if ((v42 & 0x10) == 0)
  {
    goto LABEL_57;
  }

  v51 = *(a7 + 1);
  v44 = *(v51 + 8);
  v556 = v44;
  v557 = 2;
  v50 = *v43;
  if (*v43)
  {
    v52.i64[0] = *v51;
    v52.i64[1] = *v51;
    *v52.i8 = vsub_s16(*v50, vraddhn_s32(v52, v38));
    v38 = 0uLL;
    v523 = vbsl_s8(vceq_s16(*v50, v40), v40, *v52.i8);
    *v43 = &v523;
  }

  v39 = 0uLL;
LABEL_66:
  v476 = v50;
  v53 = a3[4];
  if (v53)
  {
    v519 = v39;
    v54 = sub_24BBFCB24(v53, v44, *(a3 + 61));
    if (v54)
    {
      v47 = &a3[3][v54];
    }

    else
    {
      v47 = 0;
    }

    v38 = 0uLL;
    v39 = v519;
  }

  else
  {
    v47 = 0;
  }

  v45 = v39.n128_u32[1] << 16;
  v46 = v39.n128_u32[0];
  if (!v47)
  {
LABEL_73:
    *(a3 + 14) = v44;
    v55 = *(v498 + 24);
    if (!v55)
    {
      goto LABEL_1081;
    }

    v56 = 34;
    v57 = v558;
    v58 = xmmword_24BC06060;
    do
    {
      if (vmovn_s64(vcgtq_u64(v513, v58)).u8[0])
      {
        *(v57 - 5) = 0;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x21uLL), *&v58)).i32[1])
      {
        *v57 = 0;
      }

      v58 = vaddq_s64(v58, v512);
      v57 += 10;
      v56 -= 2;
    }

    while (v56);
    v59 = *(v509 + 2);
    v60 = v55(v58);
    v38 = 0uLL;
    if (!v60)
    {
      goto LABEL_1081;
    }

    v47 = v60;
    v517 = v60 + *(a3 + 35);
  }

LABEL_82:
  v555 = v47;
  v510 = sub_24BBDFBA4;
  if (v497)
  {
    if (dword_28151C1F8)
    {
      v61 = qword_28151BD10 == 1;
    }

    else
    {
      v61 = 0;
    }

    v63 = v61 && dword_28151BD24 < 65537 && dword_28151BD18 < 65537;
    v64 = sub_24BBFCC1C;
    if (v63)
    {
      v64 = sub_24BBFCB98;
    }

    v510 = v64;
  }

  v470 = v46;
  v471 = v45;
  if ((v518 & 1) == 0 && *v515)
  {
    (*v515)(v514);
    v38 = 0uLL;
  }

  v504 = 0;
  v489 = 0;
  v65 = 0;
  v482 = 0;
  v66 = 0;
  v475 = 0;
  v493 = 0;
  v494 = 0;
  v507 = 0;
  v505 = 0;
  v492 = 0;
  v491 = 0;
  v495 = 0;
  v67 = v530;
  v508 = 1;
LABEL_99:
  while (2)
  {
    v520 = v66;
    v68 = v65;
    v69 = v517;
    if (v47 >= v517)
    {
      sub_24BBEDB70(-1, 0);
    }

    v71 = *v47++;
    v70 = v71;
    v72 = v67;
LABEL_102:
    if (v72 < v530)
    {
      sub_24BBEDB70(-1, 0);
    }

    switch(v70)
    {
      case 0u:
      case 2u:
        goto LABEL_1078;
      case 1u:
        goto LABEL_147;
      case 3u:
        goto LABEL_162;
      case 4u:
        if (v72 - v530 == 4)
        {
          HIDWORD(v530[1]) = v530[0];
          DWORD2(v530[1]) = 0;
          goto LABEL_296;
        }

        HIDWORD(v530[1]) = DWORD1(v530[0]);
        DWORD2(v530[1]) = 0;
        goto LABEL_529;
      case 5u:
        goto LABEL_520;
      case 6u:
        v143 = 1;
        goto LABEL_264;
      case 7u:
        v143 = 0;
LABEL_264:
        LODWORD(v508) = 0;
        v65 = v68;
        v66 = v520;
        v67 = v530;
        if (((v72 - v530) >> 2) < 1)
        {
          continue;
        }

        v152 = ((v72 - v530) >> 2) & 0x7FFFFFFF;
        v153 = v530;
        do
        {
          v154 = v143;
          v156 = *v153++;
          v155 = v156;
          if (v143)
          {
            v143 = 0;
            v527.i32[0] += v155;
          }

          else
          {
            v527.i32[1] += v155;
            v143 = 1;
          }

          if (dword_28151C1F8)
          {
            if ((v518 & 1) == 0)
            {
              if (qword_28151C1D0 == sub_24BBFCB98)
              {
                if (v154)
                {
                  v525.i32[0] = sub_24BBFD400(qword_28151C1C0, v527.i32[0]);
                }

                else
                {
                  v525.i32[1] = sub_24BBFD400(qword_28151C1C8, v527.i32[1]);
                }
              }

              else
              {
                v510(&v527, &v525);
              }

              (*(v515 + 16))(&v525, v514);
              v38 = 0uLL;
            }
          }

          else
          {
            sub_24BBFD2E4(v511, *&v527);
            v38 = 0uLL;
            v511 = v527;
            v525 = v527;
          }

          --v152;
        }

        while (v152);
        LODWORD(v508) = 0;
        v65 = v68;
        goto LABEL_904;
      case 8u:
      case 0x18u:
        goto LABEL_504;
      case 9u:
        if (!dword_28151C1F8)
        {
          sub_24BBFD2E4(*&v527, v472);
          v38 = 0uLL;
          goto LABEL_707;
        }

        if (v508)
        {
          v144 = 1;
        }

        else
        {
          v144 = v518;
        }

        LODWORD(v508) = 1;
        v65 = v68;
        v66 = v520;
        v67 = v530;
        if ((v144 & 1) == 0)
        {
          (*(v515 + 32))(v514);
          v38 = 0uLL;
          LODWORD(v508) = 1;
          goto LABEL_707;
        }

        continue;
      case 0xAu:
        v67 = v72 - 1;
        if (v72 - 1 < v530)
        {
          sub_24BBEDB70(-1, 0);
        }

        v87 = *(v72 - 1) + *(v516 + 808);
        if (v87 >= *(v516 + 720) || v87 < 0)
        {
          goto LABEL_1078;
        }

        v88 = 0;
        v89 = v488;
        v90 = v484;
        v92 = v480;
        v91 = v481;
        v93 = v486;
        goto LABEL_201;
      case 0xBu:
        v67 = v72;
        goto LABEL_711;
      case 0xCu:
        if (v47 >= v69)
        {
          sub_24BBEDB70(-1, 0);
        }

        v73 = v68;
        v74 = *v47++;
LABEL_108:
        v67 = v530;
        v65 = v73;
        v66 = v520;
        v75 = v72;
        v76 = HIDWORD(v508);
        v77 = HIDWORD(v508);
        switch(v73)
        {
          case 0:
            continue;
          case 1:
            if (*(v516 + 960) != 1)
            {
              goto LABEL_1078;
            }

            v65 = v73;
            v66 = v520;
            v67 = v530;
            if (!v503)
            {
              continue;
            }

            sub_24BBFD278(v530, v505, *(v509 + 2));
            goto LABEL_421;
          case 2:
            if (*(v516 + 960) != 1)
            {
              goto LABEL_1078;
            }

            v65 = v73;
            v66 = v520;
            v67 = v530;
            if (!v506)
            {
              continue;
            }

            sub_24BBFD20C(v530, v507, *(v509 + 2));
LABEL_421:
            v38 = 0uLL;
            v96 = byte_27F078474 != 1 || dword_28151C1F8 == 2;
            v65 = v73;
            goto LABEL_425;
          case 3:
            v211 = v72 - 2;
            if (v72 - 2 < v530)
            {
              sub_24BBEDB70(-1, 0);
            }

            v225 = *--v72;
            v212 = v225;
            if (!v225)
            {
              goto LABEL_948;
            }

            goto LABEL_441;
          case 4:
            v211 = v72 - 2;
            if (v72 - 2 < v530)
            {
              sub_24BBEDB70(-1, 0);
            }

            if (*--v72)
            {
              v212 = 0x10000;
            }

            else
            {
LABEL_441:
              v214 = *v211 != 0;
LABEL_442:
              v212 = v214 << 16;
            }

            goto LABEL_948;
          case 5:
            v211 = v72 - 1;
            if (v72 - 1 < v530)
            {
              sub_24BBEDB70(-1, 0);
            }

            v214 = *v211 == 0;
            goto LABEL_442;
          case 6:
            a1 = v516;
            if (*(v516 + 960) != 1)
            {
              goto LABEL_1078;
            }

            a7 = v509;
            v440 = *v509;
            *v509 |= 0x80u;
            if ((v440 & 0x18) != 0)
            {
              goto LABEL_1087;
            }

            sub_24BBFD570(v530, *(v509 + 1), v505, v507, v516);
            a4 = v500;
            a3 = v496;
            v165 = &qword_28151C000;
            v36 = v502;
            v41 = 0x27F078000;
            goto LABEL_1031;
          case 7:
            if (*(v516 + 960) != 1)
            {
              goto LABEL_1078;
            }

            v99 = DWORD1(v530[0]);
            v98 = v504;
            v36 = v502;
            v68 = v73;
            goto LABEL_554;
          case 8:
            if (*(v516 + 960) != 1)
            {
              goto LABEL_1078;
            }

            v67 = v72 - 4;
            if (v72 - 4 < v530)
            {
              sub_24BBEDB70(-1, 0);
            }

            v202 = *(v72 - 1);
            v203 = *(v72 - 3);
            v204 = *(v72 - 5);
            v205 = *(v72 - 7);
            v206 = *(v516 + 800);
            if (!v206)
            {
              v207 = *(**(v498 + 48) + 8);
              if (!v207)
              {
                goto LABEL_1078;
              }

              v208 = *(v516 + 812);
              v206 = v207();
              v38 = 0uLL;
              *(v516 + 800) = v206;
              if (!v206)
              {
                goto LABEL_1078;
              }
            }

            v65 = v73;
            v66 = v520;
            if (v205 > 3)
            {
              continue;
            }

            v65 = v73;
            v66 = v520;
            if (v202 < 0)
            {
              continue;
            }

            v65 = v73;
            v66 = v520;
            if ((v203 & 0x80000000) != 0)
            {
              continue;
            }

            v65 = v73;
            v66 = v520;
            if ((v203 + v202) > *(v516 + 812))
            {
              continue;
            }

            v65 = v73;
            v66 = v520;
            if ((v204 & 0x80000000) != 0)
            {
              continue;
            }

            v209 = &v477[4 * v205];
            v65 = v73;
            v66 = v520;
            if ((v204 + v202) > *v209)
            {
              continue;
            }

            v210 = *(v209 + 1);
            v65 = v73;
            v66 = v520;
            if (!v210)
            {
              continue;
            }

            v200 = 4 * (v202 & 0x3FFFu);
            v199 = (v206 + 4 * v203);
            v201 = (v210 + 4 * v204);
            goto LABEL_388;
          case 9:
            v211 = v72 - 1;
            if (v72 - 1 < v530)
            {
              sub_24BBEDB70(-1, 0);
            }

            v212 = *v211;
            if (*v211 < 0)
            {
              v212 = -v212;
            }

            goto LABEL_948;
          case 10:
LABEL_337:
            if (&v75[-1] < v530)
            {
              sub_24BBEDB70(-1, 0);
            }

            v186 = v75[-1].i32[1];
            v75 = (v75 - 4);
            v181 = v75[-1].i32[1] + v186;
            goto LABEL_340;
          case 11:
LABEL_325:
            if (&v75[-1] < v530)
            {
              sub_24BBEDB70(-1, 0);
            }

            v180 = v75[-1].i32[1];
            v75 = (v75 - 4);
            v181 = v75[-1].i32[1] - v180;
LABEL_340:
            v75[-1].i32[1] = v181;
            goto LABEL_836;
          case 12:
            v211 = v72 - 2;
            if (v72 - 2 < v530)
            {
              sub_24BBEDB70(-1, 0);
            }

            v228 = *--v72;
            v227 = v228;
            v229 = v228 >> 16;
            if (v475)
            {
              v227 = v229;
            }

            v230 = *(v72 - 1);
            if (v227)
            {
              v231 = v230 / v227 * 65536.0;
              v232 = 0.5;
              if (v231 < 0.0)
              {
                v232 = -0.5;
              }

              v233 = v231 + v232;
              if (v233 >= 2147483650.0)
              {
                v212 = 0x7FFFFFFF;
              }

              else if (v233 <= -2147483650.0)
              {
                v212 = 0x80000000;
              }

              else
              {
                v212 = v233;
              }

              v38 = 0uLL;
            }

            else
            {
              v212 = (v230 >> 31) ^ 0x7FFFFFFF;
            }

            v475 = 0;
            goto LABEL_948;
          case 13:
            if (*(v516 + 960) != 1)
            {
              goto LABEL_1078;
            }

            v67 = v72 - 3;
            if (v72 - 3 < v530)
            {
              sub_24BBEDB70(-1, 0);
            }

            v192 = *(v72 - 1);
            v193 = *(v72 - 3);
            v194 = *(v72 - 5);
            v195 = *(v516 + 800);
            if (!v195)
            {
              v196 = *(**(v498 + 48) + 8);
              if (!v196)
              {
                goto LABEL_1078;
              }

              v197 = *(v516 + 812);
              v195 = v196();
              v38 = 0uLL;
              *(v516 + 800) = v195;
              if (!v195)
              {
                goto LABEL_1078;
              }
            }

            v65 = v73;
            v66 = v520;
            if (v194 > 3)
            {
              continue;
            }

            v65 = v73;
            v66 = v520;
            if (v192 < 0)
            {
              continue;
            }

            v198 = &v477[4 * v194];
            v65 = v73;
            v66 = v520;
            if (v192 > *v198)
            {
              continue;
            }

            v65 = v73;
            v66 = v520;
            if ((v193 & 0x80000000) != 0)
            {
              continue;
            }

            v65 = v73;
            v66 = v520;
            if ((v193 + v192) > *(v516 + 812))
            {
              continue;
            }

            v199 = *(v198 + 1);
            v65 = v73;
            v66 = v520;
            if (!v199)
            {
              continue;
            }

            v200 = 4 * (v192 & 0x3FFFu);
            v201 = (v195 + 4 * v193);
LABEL_388:
            memmove(v201, v199, v200);
            goto LABEL_1026;
          case 14:
            v211 = v72 - 1;
            if (v72 - 1 < v530)
            {
              sub_24BBEDB70(-1, 0);
            }

            v212 = -*v211;
            goto LABEL_948;
          case 15:
            if (v72 - 2 < v530)
            {
              sub_24BBEDB70(-1, 0);
            }

            v191 = *--v72;
            *(v72 - 1) = (v191 == *(v72 - 1)) << 16;
            goto LABEL_949;
          case 16:
            v67 = v72 - 2;
            if (v72 - 2 < v530)
            {
              sub_24BBEDB70(-1, 0);
            }

            if (*(v516 + 960) != 1)
            {
              goto LABEL_1078;
            }

            break;
          case 17:
            if (*(v516 + 960) != 1)
            {
              goto LABEL_1078;
            }

            if (SHIDWORD(v508) < 1)
            {
              v394 = v482;
              if (v482 <= 0)
              {
LABEL_1078:
                sub_24BBEDB70(-1, 0);
              }

              if (v72 - v530 >= 252)
              {
                sub_24BBEDB70(-1, 0);
              }

              --v482;
              *v72++ = *(&v553 + (v394 - 1));
            }

            else
            {
              --HIDWORD(v508);
            }

LABEL_949:
            v65 = v73;
LABEL_950:
            v66 = v520;
            v67 = v72;
            continue;
          case 18:
            v67 = v72 - 1;
            goto LABEL_936;
          case 20:
LABEL_129:
            v67 = &v75[-1];
            if (&v75[-1] < v530)
            {
              sub_24BBEDB70(-1, 0);
            }

            v82 = v75[-1].i16[3];
            v83 = v75[-1].i32[0];
            v84 = *(v516 + 800);
            if (!v84)
            {
              v85 = *(**(v498 + 48) + 8);
              if (!v85)
              {
                goto LABEL_1078;
              }

              v86 = *(v516 + 812);
              v84 = v85();
              *(v516 + 800) = v84;
              if (!v84)
              {
                goto LABEL_1078;
              }
            }

            if (v82 < 0 || v82 >= *(v516 + 812))
            {
              sub_24BBEDB70(-1, 0);
            }

            *(v84 + 4 * v82) = v83;
            HIDWORD(v508) = v76;
LABEL_773:
            v65 = v73;
            goto LABEL_774;
          case 21:
LABEL_328:
            if (&v75[-1].u8[4] < v530)
            {
              sub_24BBEDB70(-1, 0);
            }

            v182 = v75[-1].i16[3];
            v183 = *(v516 + 800);
            if (!v183)
            {
              v184 = *(**(v498 + 48) + 8);
              if (!v184)
              {
                goto LABEL_1078;
              }

              v185 = *(v516 + 812);
              v183 = v184();
              *(v516 + 800) = v183;
              if (!v183)
              {
                goto LABEL_1078;
              }
            }

            if (v182 < 0 || v182 >= *(v516 + 812))
            {
              sub_24BBEDB70(-1, 0);
            }

            v75[-1].i32[1] = *(v183 + 4 * v182);
            HIDWORD(v508) = v77;
            v65 = v73;
            v66 = v520;
            v67 = v75;
            v38 = 0uLL;
            continue;
          case 22:
LABEL_313:
            if (&v75[-2] < v530)
            {
              sub_24BBEDB70(-1, 0);
            }

            if (v75[-1].i32[0] > v75[-1].i32[1])
            {
              v75[-2].i32[0] = v75[-2].i32[1];
            }

            v67 = &v75[-2] + 1;
            HIDWORD(v508) = v77;
            goto LABEL_936;
          case 24:
LABEL_318:
            v174 = &v75[-1];
            if (&v75[-1] < v530)
            {
              sub_24BBEDB70(-1, 0);
            }

            v175 = v75[-1].i32[1];
            v75 = (v75 - 4);
            v176 = v175 * v75[-1].i32[1] * 0.0000152587891;
            v177 = 0.5;
            if (v176 < 0.0)
            {
              v177 = -0.5;
            }

            v178 = v176 + v177;
            if (v178 >= 2147483650.0)
            {
              v179 = 0x7FFFFFFF;
            }

            else if (v178 <= -2147483650.0)
            {
              v179 = 0x80000000;
            }

            else
            {
              v179 = v178;
            }

            v38 = 0uLL;
            *v174 = v179;
LABEL_836:
            HIDWORD(v508) = v77;
            goto LABEL_837;
          case 25:
            if (*(v516 + 960) != 1)
            {
              goto LABEL_1078;
            }

LABEL_721:
            v211 = v72 - 2;
            if (v72 - 2 < v530)
            {
              sub_24BBEDB70(-1, 0);
            }

            v333 = *--v72;
            v332 = v333;
            v334 = *(v72 - 1);
            if (v333)
            {
              v335 = v334 / v332 * 65536.0;
              v336 = 0.5;
              if (v335 < 0.0)
              {
                v336 = -0.5;
              }

              v337 = v335 + v336;
              if (v337 >= 2147483650.0)
              {
                v212 = 0x7FFFFFFF;
              }

              else if (v337 <= -2147483650.0)
              {
                v212 = 0x80000000;
              }

              else
              {
                v212 = v337;
              }

              v38 = 0uLL;
            }

            else
            {
              v212 = (v334 >> 31) ^ 0x7FFFFFFF;
            }

            goto LABEL_948;
          case 26:
            if (v72 - 1 < v530)
            {
              sub_24BBEDB70(-1, 0);
            }

            *(v72 - 1) = (sub_24BC05B04(*(v72 - 1)) + 64) >> 7;
            v65 = v73;
            v66 = v520;
            v67 = v72;
            v38 = 0uLL;
            continue;
          case 27:
LABEL_341:
            if (v75 - v530 >= 252)
            {
              sub_24BBEDB70(-1, 0);
            }

            if (&v75[-1].u8[4] < v530)
            {
              sub_24BBEDB70(-1, 0);
            }

            v75->i32[0] = v75[-1].i32[1];
            v67 = v75 + 1;
            goto LABEL_936;
          case 28:
LABEL_346:
            if (v75 >= v545)
            {
              sub_24BBEDB70(-1, 0);
            }

            if (&v75[-1] < v530)
            {
              sub_24BBEDB70(-1, 0);
            }

            v75[-1] = vrev64_s32(v75[-1]);
LABEL_837:
            v65 = v73;
            v66 = v520;
            v67 = v75;
            continue;
          case 29:
            v211 = v72 - 1;
            if (v72 - 1 < v530)
            {
              sub_24BBEDB70(-1, 0);
            }

            v213 = &v72[-(*(v72 - 1) & ~(*(v72 - 1) >> 31))];
            if (v213 - 2 < v530)
            {
              sub_24BBEDB70(-1, 0);
            }

            v212 = *(v213 - 2);
LABEL_948:
            *v211 = v212;
            goto LABEL_949;
          case 30:
            v67 = v72 - 2;
            if (v72 - 2 < v530)
            {
              sub_24BBEDB70(-1, 0);
            }

            v234 = *(v72 - 2);
            v235 = (v234 >> 16);
            if ((v235 & 0x80000000) != 0 || &v67[-v235] < v530)
            {
              goto LABEL_1078;
            }

            v65 = v73;
            v66 = v520;
            if (v234 < 0x10000)
            {
              continue;
            }

            v236 = (*(v72 - 1) >> 16) % v235;
            if (v236 < 0)
            {
              v403 = 0;
              do
              {
                v404 = v67[-v235];
                if (v235 >= 2)
                {
                  v405 = (v235 - 1);
                  v406 = &v72[-v235 - 1];
                  do
                  {
                    *(v406 - 1) = *v406;
                    ++v406;
                    --v405;
                  }

                  while (v405);
                }

                *(v72 - 3) = v404;
                --v403;
              }

              while (v403 > v236);
            }

            else
            {
              v65 = v73;
              v66 = v520;
              if (!((*(v72 - 1) >> 16) % v235))
              {
                continue;
              }

              v237 = 0;
              do
              {
                v238 = *(v72 - 3);
                if (v235 >= 2)
                {
                  v239 = (v235 - 1);
                  v240 = v72 - 4;
                  do
                  {
                    v240[1] = *v240;
                    --v240;
                    --v239;
                  }

                  while (v239);
                }

                v67[-v235] = v238;
                ++v237;
              }

              while (v237 != v236);
            }

            goto LABEL_936;
          case 33:
            if (*(v516 + 960) != 1)
            {
              goto LABEL_1078;
            }

            if (v72 - 2 < v530)
            {
              sub_24BBEDB70(-1, 0);
            }

            v527 = *(v72 - 2);
            goto LABEL_903;
          case 34:
            v187 = v527.i32[1];
            v188 = DWORD2(v530[0]) + v527.i32[1];
            HIDWORD(v550[0]) = v527.i32[1];
            LODWORD(v550[0]) = v527.i32[0] + LODWORD(v530[0]);
            HIDWORD(v550[1]) = DWORD2(v530[0]) + v527.i32[1];
            LODWORD(v550[1]) = v527.i32[0] + LODWORD(v530[0]) + DWORD1(v530[0]);
            v189 = LODWORD(v550[1]) + HIDWORD(v530[0]);
            HIDWORD(v550[2]) = DWORD2(v530[0]) + v527.i32[1];
            LODWORD(v550[2]) = LODWORD(v550[1]) + HIDWORD(v530[0]);
            DWORD1(v551) = DWORD2(v530[0]) + v527.i32[1];
            LODWORD(v551) = LODWORD(v550[1]) + HIDWORD(v530[0]) + LODWORD(v530[1]);
            HIDWORD(v551) = v527.i32[1];
            DWORD2(v551) = v551 + DWORD1(v530[1]);
            v190 = v551 + DWORD1(v530[1]) + DWORD2(v530[1]);
            *&v552 = __PAIR64__(v527.u32[1], v190);
            goto LABEL_431;
          case 35:
            v223 = v532;
            v187 = v527.i32[1];
            v189 = v527.i32[0] + LODWORD(v530[0]) + DWORD2(v530[0]) + LODWORD(v530[1]);
            LODWORD(v550[0]) = v527.i32[0] + LODWORD(v530[0]);
            HIDWORD(v550[0]) = v527.i32[1] + DWORD1(v530[0]);
            LODWORD(v550[1]) = v527.i32[0] + LODWORD(v530[0]) + DWORD2(v530[0]);
            HIDWORD(v550[1]) = v527.i32[1] + DWORD1(v530[0]) + HIDWORD(v530[0]);
            v188 = HIDWORD(v550[1]) + DWORD1(v530[1]);
            v190 = v189 + DWORD2(v530[1]) + v531 + DWORD2(v531);
            LODWORD(v550[2]) = v189;
            HIDWORD(v550[2]) = HIDWORD(v550[1]) + DWORD1(v530[1]);
            LODWORD(v551) = v189 + DWORD2(v530[1]);
            DWORD1(v551) = HIDWORD(v550[1]) + DWORD1(v530[1]) + HIDWORD(v530[1]);
            DWORD2(v551) = v189 + DWORD2(v530[1]) + v531;
            HIDWORD(v551) = DWORD1(v551) + DWORD1(v531);
            v224 = DWORD1(v551) + DWORD1(v531) + HIDWORD(v531);
            *&v552 = __PAIR64__(v224, v190);
            goto LABEL_783;
          case 36:
            v187 = v527.i32[1];
            v188 = DWORD1(v530[0]) + v527.i32[1] + HIDWORD(v530[0]);
            HIDWORD(v550[0]) = DWORD1(v530[0]) + v527.i32[1];
            LODWORD(v550[0]) = v527.i32[0] + LODWORD(v530[0]);
            HIDWORD(v550[1]) = v188;
            LODWORD(v550[1]) = v527.i32[0] + LODWORD(v530[0]) + DWORD2(v530[0]);
            v189 = LODWORD(v550[1]) + LODWORD(v530[1]);
            HIDWORD(v550[2]) = v188;
            LODWORD(v550[2]) = LODWORD(v550[1]) + LODWORD(v530[1]);
            DWORD1(v551) = v188;
            LODWORD(v551) = LODWORD(v550[1]) + LODWORD(v530[1]) + DWORD1(v530[1]);
            HIDWORD(v551) = v188 + HIDWORD(v530[1]);
            DWORD2(v551) = v551 + DWORD2(v530[1]);
            v190 = v551 + DWORD2(v530[1]) + v531;
            v223 = 3276800;
            v224 = v527.i32[1];
            *&v552 = __PAIR64__(v527.u32[1], v190);
            goto LABEL_783;
          case 37:
            v216 = vadd_s32(v527, *&v530[0]);
            v217 = vadd_s32(v216, *(v530 + 8));
            v218 = vadd_s32(v217, *&v530[1]);
            v219 = vadd_s32(v218, *(&v530[1] + 8));
            v220 = vext_s8(v217, v218, 4uLL);
            v188 = v218.i32[1];
            HIDWORD(v550[2]) = v218.i32[1];
            v189 = v218.i32[0];
            LODWORD(v550[0]) = v216.i32[0];
            LODWORD(v551) = v219.i32[0];
            v221 = vadd_s32(v219, *&v531);
            *(v550 + 4) = vext_s8(v216, v217, 4uLL);
            *(&v550[1] + 4) = v220;
            HIDWORD(v551) = v221.i32[1];
            *(&v551 + 4) = vext_s8(v219, v221, 4uLL);
            v222 = vabd_s32(v221, v527);
            if (vcgt_u32(v222, vdup_lane_s32(v222, 1)).u32[0])
            {
              v190 = DWORD2(v531) + v221.i32[0];
              v187 = v527.i32[1];
              LODWORD(v552) = DWORD2(v531) + v221.i32[0];
              DWORD1(v552) = v527.i32[1];
LABEL_431:
              v223 = 3276800;
              v224 = v187;
            }

            else
            {
              v190 = v527.i32[0];
              LODWORD(v552) = v527.i32[0];
              v224 = DWORD2(v531) + v221.i32[1];
              DWORD1(v552) = DWORD2(v531) + v221.i32[1];
              v187 = v527.i32[1];
              v223 = 3276800;
            }

LABEL_783:
            v351 = v516;
            v357 = v190 - v527.i32[0];
            if (v357 < 0)
            {
              v357 = -v357;
            }

            v358 = v224 - v187;
            if (v358 < 0)
            {
              v358 = -v358;
            }

            if (v357 >= v358)
            {
              v188 = v187;
            }

            else
            {
              v189 = v527.i32[0];
            }

            *&v549 = __PAIR64__(v188, v189);
            *(&v549 + 1) = __PAIR64__(v188, v189);
            v550[3] = v550[2];
            *(&v552 + 1) = v552;
            v527 = v552;
            v510(&v549 + 1, &v549 + 1);
            if (!off_28151BD58)
            {
              sub_24BBEDB70(257, 0);
            }

            off_28151BD58(*(&v549 + 1), &v549 + 8);
            v510(v550, v550);
            v352 = v473;
            if (!off_28151BD58)
            {
              sub_24BBEDB70(257, 0);
            }

            off_28151BD58(v550[0], v550);
            v510(&v550[1], &v550[1]);
            if (!off_28151BD58)
            {
              sub_24BBEDB70(257, 0);
            }

            off_28151BD58(v550[1], &v550[1]);
            v510(&v550[3], &v550[3]);
            if (!off_28151BD58)
            {
              sub_24BBEDB70(257, 0);
            }

            off_28151BD58(v550[3], &v550[3]);
            v510(&v551, &v551);
            if (!off_28151BD58)
            {
              sub_24BBEDB70(257, 0);
            }

            off_28151BD58(v551, &v551);
            v510(&v551 + 1, &v551 + 1);
            if (!off_28151BD58)
            {
              sub_24BBEDB70(257, 0);
            }

            off_28151BD58(*(&v551 + 1), &v551 + 8);
            v510(&v552, &v552);
            if (!off_28151BD58)
            {
              sub_24BBEDB70(257, 0);
            }

            off_28151BD58(v552, &v552);
            v67 = v530;
            v38 = 0uLL;
LABEL_811:
            if (((dword_28151C1F8 != 0) & ~v518) != 0)
            {
              if (v352)
              {
                sub_24BBECAF8(&v549, v223, &v525, *(v515 + 16), *(v515 + 24), v514, *(v351 + 632), dword_28151C030, dword_27F07846C);
              }

              else
              {
                sub_24BBED5F0(&v549, &v525, *(v515 + 24), v514);
              }

              v360 = DWORD2(v549);
              v526 = *(&v549 + 8);
              v359 = HIDWORD(*(&v549 + 1));
              v38 = 0uLL;
            }

            else
            {
              LODWORD(v359) = v526.i32[1];
              v360 = v526.i32[0];
            }

            v508 = 0;
            v66 = 0;
            v553 = __PAIR64__(v360, v359);
            v482 = 2;
            v65 = v73;
            continue;
          case 38:
            if (*(v516 + 960) != 1)
            {
              goto LABEL_1078;
            }

            if (dword_28151C1F8 == 2)
            {
              v215 = v466;
            }

            else
            {
              v215 = 1;
            }

            v65 = v73;
            v66 = v520;
            v67 = v72;
            if (v215)
            {
              continue;
            }

            v65 = v73;
            v66 = v520;
            v67 = v72;
            if (byte_27F078474)
            {
              continue;
            }

LABEL_1088:
            a1 = v516;
            a7 = v509;
            a4 = v500;
            a3 = v496;
            v31 = v466;
            v32 = v472;
            v34 = v476;
            v33 = v511;
            v35 = v517;
            goto LABEL_45;
          default:
            goto LABEL_1078;
        }

        v66 = *(v72 - 1);
        v78 = *(v72 - 2);
        v79 = (v78 >> 16);
        v65 = 0;
        v76 = 0;
        v77 = 1;
        v75 = (v72 - 2);
        switch(*(v72 - 1))
        {
          case 0:
            if (v73 != 9 || v79 != 3)
            {
              goto LABEL_1078;
            }

            v67 = v72 - 5;
            if (v72 - 5 < v530)
            {
              sub_24BBEDB70(-1, 0);
            }

            v526.i32[1] = v507 - v492 + *(v72 - 3);
            v526.i32[0] = v505 - v491 + *(v72 - 4);
            v223 = *(v72 - 5);
            *(&v552 + 1) = v526;
            v351 = v516;
            v352 = v473;
            goto LABEL_811;
          case 1:
            continue;
          case 2:
            goto LABEL_936;
          case 3:
            if (v79 != 1)
            {
              goto LABEL_1078;
            }

            v67 = v72 - 3;
            if (v72 - 3 < v530)
            {
              sub_24BBEDB70(-1, 0);
            }

            *(&v553 + v482) = *v67;
            if (v482 >= 2)
            {
              sub_24BBEDB70(-1, 0);
            }

            if (!dword_28151C1F8)
            {
              for (i = qword_27F078548; i; i = *i)
              {
                *(i + 72) &= ~4u;
              }
            }

            ++v482;
            qword_28151C1D0 = 0;
            v339 = qword_28151C1C0;
            *qword_28151C1C0 = 1;
            v340 = qword_28151C1C8;
            *qword_28151C1C8 = 1;
            v341 = vdup_n_s32(0xE8300001);
            *(v339 + 64) = v341;
            *(v340 + 64) = v341;
            *(v339 + 80) = v339 + 56;
            *(v340 + 80) = v340 + 56;
            byte_28151C1D8 = 0;
            v65 = v73;
            v66 = v520;
            if (byte_27F07847C)
            {
              goto LABEL_1041;
            }

            continue;
          case 4:
            if (v79 != 1)
            {
              goto LABEL_1078;
            }

            v475 = 0;
            v354 = v482;
            *(&v553 + v482) = 196608;
            v67 = v72 - 3;
            v65 = v73;
            v66 = v520;
            ++v482;
            if (v354 >= 2)
            {
              sub_24BBEDB70(-1, 0);
            }

            continue;
          case 6:
            if (v78 >= 0x10000)
            {
              goto LABEL_1078;
            }

            if (dword_28151C1F8 == 2)
            {
              v349 = v466;
            }

            else
            {
              v349 = 1;
            }

            v65 = v73;
            v66 = v520;
            if ((v349 & 1) == 0)
            {
              v65 = v73;
              v66 = v520;
              if ((byte_27F078474 & 1) == 0)
              {
                goto LABEL_1088;
              }
            }

            continue;
          case 0xC:
          case 0xD:
            if ((v79 - 23) <= 0xFFFFFFE9)
            {
              goto LABEL_1078;
            }

            if (dword_28151C1F8 == 2)
            {
              v67 -= v79;
              goto LABEL_936;
            }

            v355 = qword_27F078488;
            v68 = v73;
            if (qword_27F078488)
            {
              goto LABEL_956;
            }

            if (*(qword_27F078490 + 8) >> 4 >= 0x145u)
            {
              v355 = *qword_27F078490;
            }

            else
            {
              v355 = (*(**(qword_28151C038 + 40) + 40))(*(qword_28151C038 + 40), *qword_27F078490, 5200);
              v356 = qword_27F078490;
              *qword_27F078490 = v355;
              if (!v355)
              {
                *(v356 + 8) = 0;
                dword_28151C1F8 = 2;
                v67 -= v79;
LABEL_195:
                v65 = v68;
LABEL_774:
                v66 = v520;
                v38 = 0uLL;
                continue;
              }

              *(v356 + 8) = 5200;
              v38 = 0uLL;
            }

            dword_27F078498 = 0;
            qword_27F078488 = v355;
            qword_27F0784A0 = (v355 + 300);
LABEL_956:
            if (&v67[-v79] < v530)
            {
              sub_24BBEDB70(-1, 0);
            }

            if (&v355[v79] > qword_27F0784A0)
            {
              sub_24BBEDB70(-1, 0);
            }

            if (v78 >= 0x10000)
            {
              v408 = v72 - 3;
              v409 = dword_27F078498 + 1;
              do
              {
                dword_27F078498 = v409;
                v410 = *v408--;
                *v355++ = v410;
                ++v409;
                LODWORD(v79) = v79 - 1;
              }

              while (v79);
              qword_27F078488 = v355;
              v67 = v408 + 1;
            }

            if (v67 != v530)
            {
              goto LABEL_1078;
            }

            v65 = v73;
            v16 = v66 == 12;
            v66 = v520;
            if (v16)
            {
              continue;
            }

            v411 = dword_27F078498;
            if (!dword_27F078498)
            {
              goto LABEL_1022;
            }

            LOWORD(v467) = 0;
            v412 = v492;
            v462 = *(v516 + 640);
            v413 = *(v509 + 2);
            v461 = *(*v500 + 16);
            v414 = v491;
            v528 = 0;
            v529 = 0;
            v415 = 1;
            while (2)
            {
              if (v411 <= 0)
              {
                sub_24BBEDB70(-1, 0);
              }

              dword_27F078498 = v411 - 1;
              v416 = *(qword_27F078488 - 4);
              qword_27F078488 -= 4;
              v468 = v415;
              if ((v416 & 0x80000000) != 0)
              {
                sub_24BBEDB70(-1, 0);
              }

              v465 = v415 == 0;
              if (v415)
              {
                v417 = v412;
              }

              else
              {
                v417 = v414;
              }

              if (v416 >= 0x10000)
              {
                v418 = 0;
                v419 = HIWORD(v416);
                v464 = v415 & 1;
                v463 = v417;
                v420 = v417;
                do
                {
                  if (dword_27F078498 <= 1)
                  {
                    sub_24BBEDB70(-1, 0);
                  }

                  dword_27F078498 -= 2;
                  v421 = *(qword_27F078488 - 8);
                  v422 = *(qword_27F078488 - 4) + v420;
                  qword_27F078488 -= 8;
                  v420 = v421 + v422;
                  if (v421 >= 0)
                  {
                    v423 = v422;
                  }

                  else
                  {
                    v423 = v421 + v422;
                  }

                  if (v421 >= 0)
                  {
                    v424 = v421 + v422;
                  }

                  else
                  {
                    v424 = v422;
                  }

                  if (!v421)
                  {
                    goto LABEL_1022;
                  }

                  v425 = sub_24BBFDA4C(v423, v424, v468);
                  if (v425)
                  {
                    if (!v418)
                    {
                      goto LABEL_1003;
                    }

                    goto LABEL_1001;
                  }

                  v426 = sub_24BBFDAA0(&v529, &v528);
                  if (!v426)
                  {
                    goto LABEL_1022;
                  }

                  v425 = v426;
                  *v426 = 0;
                  v427 = &qword_27F078548;
                  if (qword_27F078548)
                  {
                    v427 = v529;
                    if (!v529)
                    {
                      goto LABEL_994;
                    }

                    *v426 = *v529;
                  }

                  *v427 = v426;
LABEL_994:
                  *(v426 + 28) = 0x3E8000000000000;
                  v428 = *(v426 + 72) & 0xFFF2;
                  *(v426 + 12) = v423;
                  *(v426 + 16) = v424;
                  *(v426 + 72) = v464 | v428 | 4;
                  if (v465)
                  {
                    sub_24BBFE034(v423, (v426 + 20));
                    sub_24BBFE034(v424, (v425 + 24));
                    v429 = *(v425 + 24) - *(v425 + 20);
                    *(v425 + 44) = v429;
                    *(v425 + 8) = v429;
                    v430 = qword_28151C1F0;
                    if (!qword_28151C1F0)
                    {
                      goto LABEL_1000;
                    }

                    v431 = v424 - v423;
                    v432 = qword_28151C1E0;
                    v433 = *(qword_28151C028 + 760);
                  }

                  else
                  {
                    sub_24BBFDC20(v423, (v426 + 20));
                    sub_24BBFDC20(v424, (v425 + 24));
                    v434 = *(v425 + 24) - *(v425 + 20);
                    *(v425 + 44) = v434;
                    *(v425 + 8) = v434;
                    v430 = HIDWORD(qword_28151C1F0);
                    if (!HIDWORD(qword_28151C1F0))
                    {
                      goto LABEL_1000;
                    }

                    v431 = v424 - v423;
                    v432 = qword_28151C1E8;
                    v433 = *(qword_28151C028 + 764);
                  }

                  sub_24BBFDC88(v431, (v425 + 8), v432, v430, v433);
LABEL_1000:
                  *(v425 + 72) = *(v425 + 72) & 0xD | 0x10;
                  *(v425 + 56) = 0;
                  *(v425 + 64) = 0;
                  sub_24BBFC29C(v425);
                  v529 = v425;
                  if (!v418)
                  {
                    goto LABEL_1003;
                  }

LABEL_1001:
                  v435 = sub_24BBFE09C();
                  if (!v435)
                  {
                    goto LABEL_1022;
                  }

                  v436 = v528;
                  *(v435 + 8) = *(v425 + 20) - *(v528 + 24);
                  *(v435 + 16) = v425;
                  *(v435 + 24) = v436;
                  *v435 = qword_27F078550;
                  qword_27F078550 = v435;
                  *(v425 + 64) = v435;
                  *(v436 + 56) = v435;
LABEL_1003:
                  v528 = v425;
                  if (v421 < 0)
                  {
                    v437 = qword_27F078548;
                    if (qword_27F078548)
                    {
                      do
                      {
                        sub_24BBFC844(v437);
                        v437 = *v437;
                      }

                      while (v437);
                      for (j = qword_27F078548; j; j = *j)
                      {
                        *(j + 8) = *(j + 40) - *(j + 36);
                      }
                    }

                    if (!*(v425 + 64))
                    {
                      sub_24BBEDB70(-1, 0);
                    }

                    sub_24BBEE680(v425, qword_27F0784A0, 0x1F4uLL, v462);
                    v467 = (v467 + 1);
                    if (v467 > 63)
                    {
                      goto LABEL_1022;
                    }

                    v418 = 0;
                    LOWORD(v419) = v419 - 1;
                    v420 = v463;
                  }

                  else
                  {
                    v418 = 1;
                  }
                }

                while (v419);
              }

              if (v468)
              {
                v415 = v468 - 1;
                v411 = dword_27F078498;
                v414 = v491;
                v412 = v492;
                continue;
              }

              break;
            }

            if (!sub_24BBEF764(qword_27F078548, v461, dword_27F078480, dword_27F078484))
            {
LABEL_1022:
              byte_27F078474 = 1;
              v439 = 2;
              goto LABEL_1023;
            }

            if (byte_27F078474)
            {
              v439 = 2;
            }

            else
            {
              v439 = 3;
            }

LABEL_1023:
            qword_27F078550 = 0;
            qword_27F078488 = 0;
            v65 = v73;
            v66 = v520;
            dword_28151C1F8 = v439;
            v38 = 0uLL;
            if ((v518 & 1) == 0)
            {
              v65 = v73;
              v66 = v520;
              if (*v515)
              {
                (*v515)(v514);
LABEL_1026:
                v38 = 0uLL;
LABEL_936:
                v65 = v73;
                v66 = v520;
              }
            }

            break;
          case 0xE:
          case 0xF:
          case 0x10:
          case 0x11:
            v81 = v66 - 13;
            goto LABEL_768;
          case 0x12:
            v81 = 6;
LABEL_768:
            v353 = *(v516 + 644);
            if ((v530 + 4 * (v353 * v81)) > v67)
            {
              sub_24BBEDB70(-1, 0);
            }

            if (!v353)
            {
              sub_24BBEDB70(-1, 0);
            }

            HIDWORD(v508) = v81;
            v67 = sub_24BBDDBD8((v72 - 2), v490, v353, v81);
            goto LABEL_773;
          case 0x13:
            v67 = v72 - 3;
            if (v72 - 3 < v530)
            {
              sub_24BBEDB70(-1, 0);
            }

            v342 = *(v72 - 5);
            if (!*(v516 + 800))
            {
              v343 = *(**(v498 + 48) + 8);
              if (!v343)
              {
                goto LABEL_1078;
              }

              v344 = *(v516 + 812);
              v345 = v343();
              *(v516 + 800) = v345;
              if (!v345)
              {
                goto LABEL_1078;
              }
            }

            if (v342 < 0 || (v346 = *(v516 + 644), v346 + v342 > *(v516 + 812)))
            {
              sub_24BBEDB70(-1, 0);
            }

            HIDWORD(v508) = 0;
            v65 = v73;
            v66 = v520;
            v38 = 0uLL;
            if (v346 < 1)
            {
              continue;
            }

            v347 = 0;
            v348 = *(v516 + 800) + 4 * v342;
            do
            {
              *(v348 + 4 * v347) = v490[v347];
              ++v347;
            }

            while (v347 < *(v516 + 644));
            HIDWORD(v508) = 0;
            goto LABEL_936;
          case 0x14:
            goto LABEL_337;
          case 0x15:
            goto LABEL_325;
          case 0x16:
            goto LABEL_318;
          case 0x17:
            HIDWORD(v508) = 1;
            v72 -= 2;
            goto LABEL_721;
          case 0x18:
          case 0x1A:
            goto LABEL_129;
          case 0x19:
            goto LABEL_328;
          case 0x1B:
            goto LABEL_313;
          case 0x1C:
            v350 = 1103515245 * *(v516 + 768) + 12345;
            *(v516 + 768) = v350;
            if (v67 - v530 >= 252)
            {
              sub_24BBEDB70(-1, 0);
            }

            *v67 = HIWORD(v350) + 1;
            v67 = v72 - 1;
            v500[9] |= 1u;
            HIDWORD(v508) = 1;
            goto LABEL_936;
          case 0x1D:
            goto LABEL_341;
          case 0x1E:
            goto LABEL_346;
          default:
            if ((v79 & 0x80000000) != 0)
            {
              goto LABEL_1078;
            }

            v72 = &v67[-v79];
            if (v72 < v530)
            {
              goto LABEL_1078;
            }

            if (*v498)
            {
              (*v498)((v79 + 1), &v67[-v79], *(v509 + 2));
              v38 = 0uLL;
            }

            v68 = v73;
            if (v78 < 0x10000)
            {
              goto LABEL_179;
            }

            v80 = v79 + 1;
            ++v47;
            v69 = v517;
            do
            {
              if ((v47 - 1) >= v517)
              {
                sub_24BBEDB70(-1, 0);
              }

              v70 = *(v47 - 1);
              if (v70 != 12)
              {
                goto LABEL_102;
              }

              if (v47 >= v517)
              {
                sub_24BBEDB70(-1, 0);
              }

              if (*v47 != 17)
              {
                ++v47;
                goto LABEL_108;
              }

              ++v72;
              --v80;
              v47 += 2;
            }

            while (v80 > 1);
            --v47;
LABEL_179:
            v65 = v68;
            goto LABEL_950;
        }

        continue;
      case 0xDu:
        v99 = 0;
        *(&v530[0] + 1) = DWORD1(v530[0]);
        DWORD1(v530[0]) = 0;
        v98 = v504;
        goto LABEL_498;
      case 0xEu:
        a3 = v496;
        v165 = &qword_28151C000;
        v36 = v502;
        v41 = 0x27F078000;
        if (*(v516 + 960) == 1)
        {
          goto LABEL_1045;
        }

        v166 = *v509;
        v167 = v72 - v530;
        if ((*v509 & 0x400) != 0)
        {
          v456 = v167 >> 2;
          *(v516 + 912) = v456;
          if (v456 < 1)
          {
            goto LABEL_1086;
          }

          v457 = *(v516 + 920);
          v458 = v530;
          v455 = 0;
          do
          {
            v459 = *v458++;
            *v457++ = v459;
            --v456;
          }

          while (v456);
          goto LABEL_1079;
        }

        if (v167 <= 4)
        {
          if (*v502)
          {
LABEL_1045:
            v445 = dword_28151C1F8;
            if (dword_28151C1F8)
            {
              v446 = v518;
            }

            else
            {
              v446 = 1;
            }

            if (dword_28151C1F8)
            {
              v447 = 1;
            }

            else
            {
              v447 = v508;
            }

            if ((v446 & 1) == 0)
            {
              a1 = v516;
              a7 = v509;
              a4 = v500;
              if (!v508)
              {
                (*(v515 + 32))(v514);
              }

              goto LABEL_1057;
            }

            a1 = v516;
            a7 = v509;
            a4 = v500;
            goto LABEL_1061;
          }

          v16 = v72 == v530;
          v72 = &v530[1] + 1;
          if (v16)
          {
            LODWORD(v530[0]) = -1;
            v72 = &v530[1] + 1;
          }

LABEL_530:
          v37 = 0x27F078000uLL;
          if (*(v516 + 956) && !dword_28151C1F8)
          {
            v276 = *(v509 + 2);
            if (!sub_24BBEF764(qword_27F078548, *(*v500 + 16), dword_27F078480, dword_27F078484))
            {
              byte_27F078474 = 1;
              a1 = v516;
              a7 = v509;
              a4 = v500;
              v38 = 0uLL;
              goto LABEL_48;
            }

            dword_28151C1F8 = 3;
            qword_27F078550 = 0;
            qword_27F078488 = 0;
            v38 = 0uLL;
            if (byte_27F078474 == 1)
            {
              dword_28151C1F8 = 2;
            }

            if ((v518 & 1) == 0 && *v515)
            {
              (*v515)(v514);
              v38 = 0uLL;
            }
          }

          if (*v36)
          {
            v277 = v508;
LABEL_622:
            if (*(v516 + 952))
            {
              goto LABEL_664;
            }

            *(v516 + 952) = 1;
            if (!v497)
            {
              goto LABEL_664;
            }

            if (v499 < 0)
            {
              v298 = (v495 - 1);
              if (v495 >= 1)
              {
                v299 = 0;
                v300 = v546;
                v301 = v548;
                for (k = v495; k; --k)
                {
                  if (*v300++)
                  {
                    v304 = v530 + v299;
                    v305 = *v301;
                    *v304 = *(v301 - 1);
                    v304[1] = v305;
                    v299 += 2;
                    if (v299 == 6)
                    {
                      sub_24BBFD20C(v530, v507, *(v509 + 2));
                      v299 = 0;
                      goto LABEL_635;
                    }
                  }

                  else
                  {
                    v306 = *v301;
                    LODWORD(v530[1]) = *(v301 - 1);
                    DWORD1(v530[1]) = v306;
                    sub_24BBFCD0C(&v530[1], v507, v516, *(v509 + 2));
                  }

                  if (!v298)
                  {
                    if (v299)
                    {
                      sub_24BBFCD0C(v530, v507, v516, *(v509 + 2));
                      if (v299 == 4)
                      {
                        sub_24BBFCD0C(v530 + 2, v507, v516, *(v509 + 2));
                      }
                    }
                  }

LABEL_635:
                  if (byte_27F078474 == 1 && dword_28151C1F8 != 2)
                  {
LABEL_1036:
                    dword_28151C1F8 = 2;
                    a1 = v516;
                    a7 = v509;
                    a4 = v500;
                    a3 = v496;
                    v36 = v502;
                    goto LABEL_1038;
                  }

                  --v298;
                  v301 += 2;
                }
              }
            }

            if (!v503)
            {
              goto LABEL_664;
            }

            if (v495 >= 0x61)
            {
              sub_24BBEDB70(-1, 0);
            }

            if (v494 >= 0x61)
            {
              sub_24BBEDB70(-1, 0);
            }

            v308 = v495 + v494;
            if (v495 + v494 >= 97)
            {
              sub_24BBEDB70(-1, 0);
            }

            if (v494 < 1)
            {
LABEL_664:
              v527 = vadd_s32(v527, *(&v530[1] + 8));
              v510(&v527, &v526);
              if (v520 && v68 <= 9)
              {
                if ((v68 & 0xFFFFFFFB) == 0)
                {
                  v550[v68 - 2] = v527;
                  LODWORD(v68) = v68 | 1;
                }

                if (!off_28151BD58)
                {
                  sub_24BBEDB70(257, 0);
                }

                off_28151BD58(*&v526, &v550[v68 - 2]);
                v65 = (v68 + 1);
                LODWORD(v508) = v277;
                goto LABEL_676;
              }

              v525 = v526;
              v65 = v68;
              LODWORD(v508) = v277;
              v66 = v520;
              v472 = v527;
              v511 = v527;
              v67 = v530;
              v38 = 0uLL;
              if (!dword_28151C1F8)
              {
                continue;
              }

              LODWORD(v508) = 1;
              v65 = v68;
              v66 = v520;
              v511 = v527;
              v67 = v530;
              if (v518)
              {
                continue;
              }

              if (!v277)
              {
                v39.n128_f64[0] = (*(v515 + 32))(v514);
              }

              (*(v515 + 8))(&v525, v514, v39, v38);
              LODWORD(v508) = 1;
              v65 = v68;
              v66 = v520;
              v511 = v472;
LABEL_677:
              v67 = v530;
              v38 = 0uLL;
              continue;
            }

            v309 = 0;
            v310 = v495;
            v311 = &v548[v495];
            while (1)
            {
              if (v546[v310])
              {
                v312 = v530 + v309;
                v313 = *v311;
                *v312 = *(v311 - 1);
                v312[1] = v313;
                v309 += 2;
                if (v309 == 6)
                {
                  sub_24BBFD278(v530, v505, *(v509 + 2));
                  v309 = 0;
                  goto LABEL_658;
                }
              }

              else
              {
                v314 = *v311;
                LODWORD(v530[1]) = *(v311 - 1);
                DWORD1(v530[1]) = v314;
                sub_24BBFCE9C(&v530[1], v505, *(v509 + 2));
              }

              if (v308 - 1 == v310)
              {
                if (v309)
                {
                  sub_24BBFCE9C(v530, v505, *(v509 + 2));
                  if (v309 == 4)
                  {
                    sub_24BBFCE9C(&v530[1], v505, *(v509 + 2));
                  }
                }
              }

LABEL_658:
              if (byte_27F078474 == 1 && dword_28151C1F8 != 2)
              {
                goto LABEL_1036;
              }

              ++v310;
              v311 += 2;
              if (v310 >= v308)
              {
                goto LABEL_664;
              }
            }
          }

          if (LODWORD(v530[0]) == -1)
          {
            if (v500[8])
            {
              HIDWORD(v530[0]) = *(v516 + 784);
              v99 = *(v516 + 776);
              LODWORD(v530[0]) = 0;
              *(v530 + 4) = v99;
            }

            else
            {
              v99 = 0;
              *(&v530[0] + 1) = *(v516 + 780);
              *&v530[0] = *(v516 + 772);
            }
          }

          else
          {
            v99 = 0;
            *(&v530[0] + 1) = (*(v516 + 944) + LODWORD(v530[0]));
            *&v530[0] = 0;
          }

          v98 = v504;
LABEL_554:
          *v36 = 1;
          v491 = v530[0];
          v527 = __PAIR64__(v99, v530[0]);
          v492 = v99;
          v278 = *(v500 + 1);
          v504 = v98;
          v65 = v68;
          v66 = v520;
          v67 = v530;
          if (!v278)
          {
            continue;
          }

          v73 = v68;
          v279 = HIDWORD(v530[0]);
          v280 = v278[4];
          if (v280 != 1)
          {
            if (v280 != 2)
            {
              if (v280 != 4)
              {
                v281 = DWORD2(v530[0]);
LABEL_567:
                v165 = &qword_28151C000;
                if (v501 | v474)
                {
                  v529 = 0;
                  if (!off_28151BD68)
                  {
                    sub_24BBEDB70(257, 0);
                  }

                  off_28151BD68(v501 | (v474 << 32), &v529);
                  v527 = vadd_s32(v527, v529);
                  v282 = v527.i32[1];
                }

                else
                {
                  v282 = v527.i32[1];
                }

                v507 = v282;
                v505 = v527.i32[0];
                v283 = *(v500 + 1);
                if ((*v509 & 0x10) == 0)
                {
                  *v283 = v527;
                  v283 = *(v500 + 1);
                  v283[1].i32[0] = v281;
                  v283[1].i32[1] = v279;
                }

                sub_24BBD71E0(v516, *&v527, &v283[2] + 1);
                sub_24BBD71E0(v516, v281 | (v279 << 32), (*(v500 + 1) + 28));
                if (v518)
                {
                  goto LABEL_1086;
                }

                if (dword_28151C1F8 && !v508)
                {
                  (*(v515 + 32))(v514);
                }

                a3 = v496;
                v36 = v502;
                if (!off_28151BD50)
                {
                  sub_24BBEDB70(257, 0);
                }

                off_28151BD50(*&v527);
                (*(v515 + 8))(&v525, v514);
                v284 = v72 - v530;
                if (v72 - v530 == 36)
                {
                  *&v530[0] = *(&v530[1] + 1);
                  v277 = 1;
                  v504 = v98;
                  v37 = 0x27F078000;
                  goto LABEL_622;
                }

                v38 = 0uLL;
                if (v284 == 20)
                {
                  a1 = v516;
                  a7 = v509;
                  a4 = v500;
                  v41 = 0x27F078000;
                  if (!dword_28151C1F8)
                  {
                    goto LABEL_1071;
                  }

LABEL_1057:
                  if ((*a7 & 0x20) == 0)
                  {
                    v448 = *(v515 + 40);
                    if (v448)
                    {
                      goto LABEL_1059;
                    }

                    goto LABEL_1060;
                  }

                  v460 = v460 & 0xFFFFFFFF00000000 | v470 | v471;
                  v452 = sub_24BBFD608(a1, v469, a4, v470 | v471, v498, *(a7 + 2));
                  if (v452)
                  {
                    v455 = v452;
                  }

                  else
                  {
                    v448 = *v515;
                    if (*v515)
                    {
LABEL_1059:
                      v448(v514);
                    }

LABEL_1060:
                    v445 = dword_28151C1F8;
                    v447 = 1;
                    v38 = 0uLL;
LABEL_1061:
                    if (!v445)
                    {
LABEL_1071:
                      dword_28151C1F8 = 3;
                      sub_24BBFD810();
                      v451 = *(a7 + 2);
                      sub_24BBFD8E4(a1, *(*a4 + 16), a1[160]);
                      v37 = 0x27F078000;
                      if (byte_27F078474 == 1)
                      {
                        dword_28151C1F8 = 2;
                      }

                      qword_27F078550 = 0;
                      v38 = 0uLL;
                      goto LABEL_48;
                    }

                    v449 = v518;
                    if (v447)
                    {
                      v449 = 1;
                    }

                    if ((v449 & 1) == 0)
                    {
                      (*(v515 + 32))(v514);
                      v38 = 0uLL;
                    }

                    if ((~*a7 & 0x30) == 0)
                    {
                      *a7 = *a7 & 0xFFFFFFE7 | 8;
                      if (!dword_28151C1F8)
                      {
                        for (m = qword_27F078548; m; m = *m)
                        {
                          *(m + 72) &= ~4u;
                        }
                      }

                      goto LABEL_1035;
                    }

LABEL_1086:
                    v455 = 0;
                  }

                  goto LABEL_1079;
                }

                a1 = v516;
                if (v284 == 32)
                {
                  *&v530[0] = *&v530[1];
                  DWORD2(v530[0]) = DWORD2(v530[1]);
                  v41 = 0x27F078000;
                  goto LABEL_1077;
                }

                if (v489)
                {
                  LODWORD(v508) = 1;
                  v504 = v98;
LABEL_586:
                  v41 = 0x27F078000uLL;
                  if (a1[239] && !dword_28151C1F8)
                  {
                    v285 = *(v509 + 2);
                    if (!sub_24BBEF764(qword_27F078548, *(*v500 + 16), dword_27F078480, dword_27F078484))
                    {
                      byte_27F078474 = 1;
                      a7 = v509;
                      a4 = v500;
                      v37 = 0x27F078000;
                      v38 = 0uLL;
                      goto LABEL_48;
                    }

                    dword_28151C1F8 = 3;
                    qword_27F078550 = 0;
                    qword_27F078488 = 0;
                    v38 = 0uLL;
                    if (byte_27F078474 == 1)
                    {
                      dword_28151C1F8 = 2;
                    }

                    if ((v518 & 1) == 0 && *v515)
                    {
                      (*v515)(v514);
                      v38 = 0uLL;
                    }
                  }

                  if (a1[238])
                  {
                    if (!dword_28151C1F8)
                    {
                      for (n = qword_27F078548; n; n = *n)
                      {
                        *(n + 72) &= ~4u;
                      }
                    }

                    v165[58] = 0;
                    v287 = qword_28151C1C0;
                    *qword_28151C1C0 = 1;
                    v288 = qword_28151C1C8;
                    *qword_28151C1C8 = 1;
                    v289 = vdup_n_s32(0xE8300001);
                    *(v287 + 64) = v289;
                    *(v288 + 64) = v289;
                    *(v287 + 80) = v287 + 56;
                    *(v288 + 80) = v288 + 56;
                    byte_28151C1D8 = 0;
                    if (byte_27F07847C)
                    {
                      a7 = v509;
                      a4 = v500;
                      v37 = 0x27F078000;
                      goto LABEL_48;
                    }
                  }

                  if (v495 >= 1)
                  {
                    v290 = 0;
                    v291 = 0;
                    v292 = 0;
                    v293 = v548;
                    v37 = 0x27F078000;
                    while (1)
                    {
                      if ((v290 & 7) == 0)
                      {
                        if (v47 >= v517)
                        {
                          sub_24BBEDB70(-1, 0);
                        }

                        v294 = *v47++;
                        v292 = v294;
                      }

                      if (v506)
                      {
                        if (v292 < 0)
                        {
                          if (v546[v290])
                          {
                            v295 = *v293;
                            v296 = v530 + v291;
                            *v296 = *(v293 - 1);
                            v296[1] = v295;
                            v291 += 2;
                          }

                          else
                          {
                            v297 = *v293;
                            LODWORD(v530[1]) = *(v293 - 1);
                            DWORD1(v530[1]) = v297;
                            sub_24BBFCD0C(&v530[1], v507, v516, *(v509 + 2));
                            v38 = 0uLL;
                          }
                        }

                        if (v291 == 6)
                        {
                          sub_24BBFD20C(v530, v507, *(v509 + 2));
                          v38 = 0uLL;
                          v291 = 0;
                        }

                        else if (v495 - 1 == v290)
                        {
                          if (v291)
                          {
                            sub_24BBFCD0C(v530, v507, v516, *(v509 + 2));
                            v38 = 0uLL;
                            if (v291 == 4)
                            {
                              sub_24BBFCD0C(v530 + 2, v507, v516, *(v509 + 2));
                              v38 = 0uLL;
                            }
                          }
                        }

                        if (byte_27F078474 == 1 && dword_28151C1F8 != 2)
                        {
LABEL_1027:
                          dword_28151C1F8 = 2;
                          a1 = v516;
                          a7 = v509;
                          a4 = v500;
                          a3 = v496;
                          v36 = v502;
                          v41 = 0x27F078000;
                          goto LABEL_48;
                        }

                        v292 *= 2;
                      }

                      ++v290;
                      v293 += 2;
                      if (v495 == v290)
                      {
                        goto LABEL_679;
                      }
                    }
                  }

                  v292 = 0;
                  v37 = 0x27F078000;
LABEL_679:
                  if (v495 >= 0x61)
                  {
                    sub_24BBEDB70(-1, 0);
                  }

                  if (v494 >= 0x61)
                  {
                    sub_24BBEDB70(-1, 0);
                  }

                  v316 = v495 + v494;
                  if (v495 + v494 >= 97)
                  {
                    sub_24BBEDB70(-1, 0);
                  }

                  if (v494 >= 1)
                  {
                    v317 = 0;
                    v318 = v495;
                    v319 = &v548[v495];
                    do
                    {
                      if ((v318 & 7) == 0)
                      {
                        if (v47 >= v517)
                        {
                          sub_24BBEDB70(-1, 0);
                        }

                        v320 = *v47++;
                        v292 = v320;
                      }

                      if (v503)
                      {
                        if (v292 < 0)
                        {
                          if (v546[v318])
                          {
                            v321 = *v319;
                            v322 = v530 + v317;
                            *v322 = *(v319 - 1);
                            v322[1] = v321;
                            v317 += 2;
                          }

                          else
                          {
                            v323 = *v319;
                            LODWORD(v530[1]) = *(v319 - 1);
                            DWORD1(v530[1]) = v323;
                            sub_24BBFCE9C(&v530[1], v505, *(v509 + 2));
                          }
                        }

                        if (v317 == 6)
                        {
                          sub_24BBFD278(v530, v505, *(v509 + 2));
                          v317 = 0;
                        }

                        else if (v316 - 1 == v318)
                        {
                          if (v317)
                          {
                            sub_24BBFCE9C(v530, v505, *(v509 + 2));
                            if (v317 == 4)
                            {
                              sub_24BBFCE9C(&v530[1], v505, *(v509 + 2));
                            }
                          }
                        }

                        v38 = 0uLL;
                        if (byte_27F078474 == 1 && dword_28151C1F8 != 2)
                        {
                          goto LABEL_1027;
                        }

                        v292 *= 2;
                      }

                      ++v318;
                      v319 += 2;
                    }

                    while (v318 < v316);
                  }

                  v489 = 0;
                  *(v516 + 952) = 1;
                  goto LABEL_707;
                }

                v504 = 0;
                v489 = 0;
                LODWORD(v508) = 1;
                goto LABEL_840;
              }

              v279 = v278[3];
              if ((v279 - 399507456) < 0xD0600001)
              {
                sub_24BBEDB70(266, 0);
              }

              v527.i32[1] = v278[1];
              if ((v527.i32[1] - 131072001) <= 0xF05FFFFE)
              {
                sub_24BBEDB70(266, 0);
              }
            }

            v527.i32[0] = *v278;
            if ((v527.i32[0] - 131072001) <= 0xF05FFFFE)
            {
              sub_24BBEDB70(266, 0);
            }
          }

          v281 = v278[2];
          if (v281 - 399507456 < 0xD0600001)
          {
            sub_24BBEDB70(266, 0);
          }

          goto LABEL_567;
        }

        *v509 = v166 | 0x80;
        if ((v166 & 0x18) != 0)
        {
LABEL_1087:
          v455 = 0xFFFFFFFFLL;
          goto LABEL_1079;
        }

        if (v167 == 20)
        {
          v39.n128_u64[1] = *(v530 + 12);
          v530[1] = *(v530 + 4);
        }

        else
        {
          v39.n128_u64[1] = *(&v530[0] + 1);
          v530[1] = v530[0];
          LODWORD(v530[0]) = -1;
        }

        v72 = &v531;
        if (!*v502)
        {
          goto LABEL_530;
        }

        a1 = v516;
LABEL_1077:
        HIDWORD(v530[0]) = 0;
        a7 = v509;
        sub_24BBFD570(v530 | 0xC, *(v509 + 1), v505, v507, a1);
        a4 = v500;
LABEL_1031:
        v38 = 0uLL;
        if ((*a7 & 2) == 0)
        {
          *a7 |= 0x10u;
          if (!dword_28151C1F8)
          {
            for (ii = qword_27F078548; ii; ii = *ii)
            {
              *(ii + 72) &= ~4u;
            }
          }

LABEL_1035:
          v165[58] = 0;
          v442 = qword_28151C1C0;
          *qword_28151C1C0 = 1;
          v443 = qword_28151C1C8;
          *qword_28151C1C8 = 1;
          v444 = vdup_n_s32(0xE8300001);
          *(v442 + 64) = v444;
          *(v443 + 64) = v444;
          *(v442 + 80) = v442 + 56;
          *(v443 + 80) = v443 + 56;
          byte_28151C1D8 = 1;
          v37 = 0x27F078000;
          goto LABEL_48;
        }

        v455 = 1;
LABEL_1079:
        v453 = *MEMORY[0x277D85DE8];
        return v455;
      case 0xFu:
        if (*(v516 + 960) != 1)
        {
          goto LABEL_1078;
        }

        v100 = LODWORD(v530[0]) + v505;
        HIDWORD(v530[1]) = DWORD1(v530[0]);
        goto LABEL_305;
      case 0x10u:
        if (*(v516 + 960) != 1)
        {
          goto LABEL_1078;
        }

        v114 = (v72 - 1);
        if (v72 - 1 < v530)
        {
          sub_24BBEDB70(-1, 0);
        }

        v115 = *(v72 - 1);
        if ((v115 - 1) >= 0x10)
        {
          sub_24BBEDB70(-1, 0);
        }

        v116 = *(v516 + 644);
        if (v530 + 4 * (v116 * v115) > v114)
        {
          sub_24BBEDB70(-1, 0);
        }

        if (!v116)
        {
          sub_24BBEDB70(-1, 0);
        }

        v67 = sub_24BBDDBD8(v114, v490, v116, *(v114 + 2));
        goto LABEL_195;
      case 0x11u:
        if (*(v516 + 960) != 1)
        {
          goto LABEL_1078;
        }

        *&v530[1] = vsub_s32(*&v530[1], *(v530 + 8));
        *v101.i8 = v527;
        v102.i32[1] = DWORD1(v530[0]);
        v101.i64[1] = *&v530[0];
        v102.i32[0] = LODWORD(v530[0]) + v505;
        v102.i64[1] = *(&v530[0] + 1);
        v38 = 0uLL;
        v39 = vsubq_s32(v102, v101);
        v530[0] = v39;
LABEL_504:
        LODWORD(v508) = 0;
        v255 = (v72 - v530) >> 2;
        v65 = v68;
        v66 = v520;
        v67 = v530;
        v256 = v255 - 6;
        if (v255 < 6)
        {
          continue;
        }

        v257 = 0;
        v258 = v255 - 8;
        v259 = v530 | 0xC;
        while (qword_28151C1D0 == sub_24BBFCB98)
        {
          v529 = 0;
          v528 = 0;
          v521 = 0;
          if (!dword_28151C1F8)
          {
            sub_24BBEDB70(-1, 0);
          }

          v263 = v527.i32[0] + *(v259 - 12);
          LODWORD(v529) = sub_24BBFD400(qword_28151C1C0, v263);
          v264 = *(v259 - 4) + v263;
          LODWORD(v528) = sub_24BBFD400(qword_28151C1C0, v264);
          v265 = *(v259 + 4) + v264;
          v521.i32[0] = sub_24BBFD400(qword_28151C1C0, v265);
          v527.i32[0] = v265;
          v266 = v527.i32[1] + *(v259 - 8);
          HIDWORD(v529) = sub_24BBFD400(qword_28151C1C8, v266);
          v267 = *v259 + v266;
          HIDWORD(v528) = sub_24BBFD400(qword_28151C1C8, v267);
          v268 = *(v259 + 8) + v267;
          v521.i32[1] = sub_24BBFD400(qword_28151C1C8, v268);
          v527.i32[1] = v268;
          if ((v518 & 1) == 0)
          {
            goto LABEL_513;
          }

LABEL_516:
          v525 = v521;
          v38 = 0uLL;
          if (v258 == v257)
          {
            v270 = *(v530 + (v257 + 7));
            LODWORD(v530[0]) = *(v530 + ((v257 + 6) & 0xFFFFFFFE));
            DWORD1(v530[0]) = v270;
            v72 = v530 + 2;
LABEL_520:
            LODWORD(v508) = 0;
            v271 = (v72 - v530) >> 2;
            v65 = v68;
            v66 = v520;
            v67 = v530;
            v272 = v271 - 2;
            if (v271 < 2)
            {
              goto LABEL_99;
            }

            v273 = 0;
            v274 = v530;
            v275 = v511;
            do
            {
              v527 = vadd_s32(v527, *v274);
              if (dword_28151C1F8)
              {
                if ((v518 & 1) == 0)
                {
                  v510(&v527, &v525);
                  (*(v515 + 16))(&v525, v514);
                }
              }

              else
              {
                sub_24BBFD2E4(v275, *&v527);
                v275 = v527;
                v525 = v527;
              }

              ++v274;
              v273 += 2;
            }

            while (v272 >= v273);
            v511 = v275;
            LODWORD(v508) = 0;
            v65 = v68;
LABEL_676:
            v66 = v520;
            goto LABEL_677;
          }

          v257 += 6;
          v259 += 24;
          if (v256 < v257)
          {
            goto LABEL_518;
          }
        }

        v260 = vadd_s32(*(v259 - 12), v527);
        *(v259 - 12) = v260;
        v261 = vadd_s32(*(v259 - 4), v260);
        *(v259 - 4) = v261;
        v262 = vadd_s32(*(v259 + 4), v261);
        *(v259 + 4) = v262;
        v527 = v262;
        v529 = v260;
        v528 = v261;
        v521 = v262;
        if (!dword_28151C1F8)
        {
          sub_24BBFD2E4(v511, v529);
          sub_24BBFD2E4(v528, *&v521);
          v511 = v527;
          goto LABEL_516;
        }

        if (v518)
        {
          goto LABEL_516;
        }

        v510(&v529, &v529);
        v510(&v528, &v528);
        v510(&v521, &v521);
LABEL_513:
        v269 = *(v515 + 24);
        if (v269)
        {
          v269(&v525, &v529, &v528, &v521, v514);
        }

        goto LABEL_516;
      case 0x12u:
        byte_28151C1D8 = 0;
LABEL_147:
        if (*(v516 + 960) == 1)
        {
          v65 = v68;
          v66 = v520;
          v67 = v530;
          if (!v506)
          {
            continue;
          }

          sub_24BBFCD0C(v530, v507, v516, *(v509 + 2));
          v38 = 0uLL;
          v96 = byte_27F078474 != 1 || dword_28151C1F8 == 2;
          v65 = v68;
LABEL_425:
          v66 = v520;
          v67 = v530;
          if (v96)
          {
            continue;
          }

          goto LABEL_1040;
        }

        v109 = v72 - v530;
        v110 = v109 >> 2;
        v111 = v495;
        if ((v495 + ((v109 >> 2) >> 1)) >= 0x60)
        {
          sub_24BBEDB70(-1, 0);
        }

        v112 = (v109 >> 2) & 1;
        v113 = (v110 - 2);
        if (v112 <= v113)
        {
          bzero(&v546[v495], (v113 >> 1) + 1);
          v247 = 0;
          v248 = v530 + v112 + 1;
          v249 = v112;
          v250 = &v548[v495];
          v38 = 0uLL;
          do
          {
            v251 = *v248;
            v252 = *(v248 - 1) + v247;
            v247 = *v248 + v252;
            v249 += 2;
            *(v250 - 1) = v252;
            *v250 = v251;
            v111 = (v111 + 1);
            v248 += 2;
            v250 += 2;
          }

          while (v249 <= v113);
        }

        else
        {
          v38 = 0uLL;
        }

        v495 = v111;
        if (v112)
        {
          v99 = 0;
          v253 = *(v516 + 944) + LODWORD(v530[0]);
        }

        else
        {
          v65 = v68;
          v66 = v520;
          v67 = v530;
          if (*v502)
          {
            continue;
          }

          v99 = 0;
          v253 = *(v516 + 780);
        }

        *(&v530[0] + 1) = v253;
        *&v530[0] = 0;
        v98 = v504;
        goto LABEL_497;
      case 0x13u:
        if (v72 == v530)
        {
          a1 = v516;
          a3 = v496;
          v165 = &qword_28151C000;
          v36 = v502;
          goto LABEL_586;
        }

        v489 = 1;
LABEL_162:
        v98 = v504;
        v97 = v494;
        goto LABEL_163;
      case 0x14u:
        v97 = v494;
        if (v72 == v530)
        {
          v73 = v68;
LABEL_841:
          v529 = 0;
          if (!*(v516 + 956))
          {
            v522 = 0;
          }

          if (v495 >= 0x61)
          {
            sub_24BBEDB70(-1, 0);
          }

          if (v494 >= 0x61)
          {
            sub_24BBEDB70(-1, 0);
          }

          v364 = (v495 + v494);
          v365 = v517;
          if (v364 >= 97)
          {
            sub_24BBEDB70(-1, 0);
          }

          if (v364 < 1)
          {
LABEL_902:
            v504 = 0;
            goto LABEL_903;
          }

          v366 = 0;
          v367 = 0;
          v368 = 0;
          v369 = 0;
          v370 = 0;
          v371 = 0;
          while (1)
          {
            if ((v370 & 7) == 0)
            {
              if (v47 >= v365)
              {
                sub_24BBEDB70(-1, 0);
              }

              v372 = *v47++;
              v371 = v372;
            }

            if (dword_28151C1F8)
            {
              v546[v370] = v371 < 0 && dword_28151C1F8 == 2 && (byte_27F078474 & 1) == 0;
              goto LABEL_901;
            }

            v546[v370] = 0;
            if (v371 < 0)
            {
              break;
            }

LABEL_883:
            if (v370 == v495 - 1)
            {
              if (!*&v367)
              {
                v368 = 0;
                v369 = 0;
                goto LABEL_901;
              }
            }

            else if (v370 != v364 - 1 || !v368)
            {
              v369 = v368;
              goto LABEL_901;
            }

            v388 = qword_27F078548;
            v389 = v516;
            if (qword_27F078548)
            {
              do
              {
                sub_24BBFC844(v388);
                v388 = *v388;
              }

              while (v388);
              for (jj = qword_27F078548; jj; jj = *jj)
              {
                *(jj + 8) = *(jj + 40) - *(jj + 36);
              }
            }

            if (qword_27F078488)
            {
              v391 = qword_27F0784A0;
            }

            else
            {
              if (*(qword_27F078490 + 8) >> 4 >= 0x145u)
              {
                v392 = *qword_27F078490;
              }

              else
              {
                v392 = (*(**(qword_28151C038 + 40) + 40))(*(qword_28151C038 + 40), *qword_27F078490, 5200);
                v393 = qword_27F078490;
                *qword_27F078490 = v392;
                if (!v392)
                {
                  *(v393 + 8) = 0;
                  dword_28151C1F8 = 2;
                  v38 = 0uLL;
                  goto LABEL_902;
                }

                *(v393 + 8) = 5200;
              }

              v389 = v516;
              dword_27F078498 = 0;
              qword_27F078488 = v392;
              v391 = v392 + 1200;
              qword_27F0784A0 = v392 + 1200;
              *(v516 + 956) = 1;
            }

            sub_24BBEE680(*&v366, v391, 0x1F4uLL, *(v389 + 640));
            v366 = 0;
            v367 = 0;
            v368 = 0;
            v369 = 0;
            v529 = 0;
            v38 = 0uLL;
LABEL_901:
            v371 *= 2;
            if (++v370 == v364)
            {
              goto LABEL_902;
            }
          }

          v373 = &v547[8 * v370];
          v375 = *v373;
          v374 = v373[1];
          v376 = v374 + *v373;
          v366 = sub_24BBFDA4C(v375, v374 + v375, v370 < v495);
          if (v366)
          {
            if (!v369)
            {
              goto LABEL_882;
            }

            goto LABEL_880;
          }

          v377 = sub_24BBFDAA0(&v522, &v529);
          if (!v377)
          {
            goto LABEL_1037;
          }

          v366 = v377;
          v378 = &qword_27F078548;
          v379 = qword_27F078548;
          if (qword_27F078548)
          {
            v378 = v522;
            if (!v522)
            {
              goto LABEL_1078;
            }

            v379 = *v522;
          }

          *v377 = v379;
          *v378 = v377;
          *(v377 + 28) = 0x3E8000000000000;
          v380 = *(v377 + 72) & 0xFFF2;
          *(v377 + 12) = v375;
          *(v377 + 16) = v376;
          if (v370 < v495)
          {
            ++v380;
          }

          *(v377 + 72) = v380 | 4;
          v381 = (v377 + 20);
          if (v370 < v495)
          {
            sub_24BBFDC20(v375, v381);
            sub_24BBFDC20(*(*&v366 + 16), (*&v366 + 24));
            v382 = *(*&v366 + 24) - *(*&v366 + 20);
            *(*&v366 + 44) = v382;
            *(*&v366 + 8) = v382;
            v383 = HIDWORD(qword_28151C1F0);
            if (!HIDWORD(qword_28151C1F0))
            {
              goto LABEL_879;
            }

            v384 = qword_28151C1E8;
            v385 = *(qword_28151C028 + 764);
          }

          else
          {
            sub_24BBFE034(v375, v381);
            sub_24BBFE034(*(*&v366 + 16), (*&v366 + 24));
            v386 = *(*&v366 + 24) - *(*&v366 + 20);
            *(*&v366 + 44) = v386;
            *(*&v366 + 8) = v386;
            v383 = qword_28151C1F0;
            if (!qword_28151C1F0)
            {
LABEL_879:
              *(*&v366 + 72) = *(*&v366 + 72) & 0xD | 0x10;
              *(*&v366 + 56) = 0;
              *(*&v366 + 64) = 0;
              sub_24BBFC29C(*&v366);
              v522 = v366;
              v369 = v529;
              if (!v529)
              {
LABEL_882:
                v529 = v366;
                v367 = v366;
                v368 = v366;
                v38 = 0uLL;
                v365 = v517;
                goto LABEL_883;
              }

LABEL_880:
              v387 = sub_24BBFE09C();
              if (!v387)
              {
LABEL_1037:
                byte_27F078474 = 1;
                a1 = v516;
                a7 = v509;
                a4 = v500;
                a3 = v496;
                v36 = v502;
                v37 = 0x27F078000;
LABEL_1038:
                v38 = 0uLL;
                v41 = 0x27F078000;
                goto LABEL_48;
              }

              *(v387 + 8) = *(*&v366 + 20) - *(v369 + 6);
              *(v387 + 16) = v366;
              *(v387 + 24) = v369;
              *v387 = qword_27F078550;
              qword_27F078550 = v387;
              *(*&v366 + 64) = v387;
              v369[7] = v387;
              goto LABEL_882;
            }

            v384 = qword_28151C1E0;
            v385 = *(qword_28151C028 + 760);
          }

          sub_24BBFDC88(v374, (*&v366 + 8), v384, v383, v385);
          goto LABEL_879;
        }

        v98 = 1;
LABEL_163:
        if (*(v516 + 960) == 1)
        {
          v504 = v98;
          v65 = v68;
          v66 = v520;
          v67 = v530;
          if (!v503)
          {
            continue;
          }

          sub_24BBFCE9C(v530, v505, *(v509 + 2));
          v38 = 0uLL;
          v504 = v98;
          v65 = v68;
          v66 = v520;
          v67 = v530;
          if (byte_27F078474 != 1)
          {
            continue;
          }

          v504 = v98;
          v65 = v68;
          v66 = v520;
          v67 = v530;
          if (dword_28151C1F8 == 2)
          {
            continue;
          }

LABEL_1040:
          dword_28151C1F8 = 2;
LABEL_1041:
          a1 = v516;
          a7 = v509;
          a4 = v500;
          a3 = v496;
          v36 = v502;
          v37 = 0x27F078000;
          v41 = 0x27F078000;
          goto LABEL_48;
        }

        v103 = (v72 - v530) >> 2;
        if ((v495 + v97 + (v103 >> 1)) >= 0x60)
        {
          sub_24BBEDB70(-1, 0);
        }

        v104 = ((v72 - v530) >> 2) & 1;
        v105 = (v103 - 2);
        if (v104 <= v105)
        {
          bzero(&v546[v495 + v97], (v105 >> 1) + 1);
          v38 = 0uLL;
          v168 = 0;
          v169 = v530 + v104 + 1;
          v170 = &v548[v97 + v495];
          v171 = ((v72 - v530) >> 2) & 1;
          a1 = v516;
          do
          {
            v172 = *v169;
            v173 = *(v169 - 1) + v168;
            v168 = *v169 + v173;
            v171 += 2;
            *(v170 - 1) = v173;
            *v170 = v172;
            v97 = (v97 + 1);
            v169 += 2;
            v170 += 2;
          }

          while (v171 <= v105);
        }

        else
        {
          a1 = v516;
        }

        v494 = v97;
        if (v104)
        {
          v99 = 0;
          *(&v530[0] + 1) = (a1[236] + LODWORD(v530[0]));
          *&v530[0] = 0;
LABEL_497:
          v72 = &v530[1];
LABEL_498:
          v36 = v502;
        }

        else
        {
          v36 = v502;
          if (*v502)
          {
            if (v489)
            {
              v504 = v98;
              a3 = v496;
              v165 = &qword_28151C000;
              goto LABEL_586;
            }

            v504 = 0;
            v489 = 0;
            v73 = v68;
LABEL_840:
            v65 = v68;
            v66 = v520;
            v67 = v530;
            if (!v98)
            {
              continue;
            }

            goto LABEL_841;
          }

          v99 = 0;
          *(&v530[0] + 1) = a1[195];
          *&v530[0] = 0;
          v72 = &v530[1];
        }

        goto LABEL_554;
      case 0x15u:
        if (v72 - v530 == 8)
        {
          *(&v530[1] + 1) = *&v530[0];
LABEL_296:
          LODWORD(v530[0]) = -1;
        }

        else
        {
          *(&v530[1] + 1) = *(v530 + 4);
        }

LABEL_529:
        v72 = &v531 + 1;
        a3 = v496;
        v36 = v502;
        v41 = 0x27F078000;
        goto LABEL_530;
      case 0x16u:
        if (v72 - v530 == 4)
        {
          v100 = v530[0];
          HIDWORD(v530[1]) = 0;
LABEL_305:
          DWORD2(v530[1]) = v100;
          LODWORD(v530[0]) = -1;
        }

        else
        {
          *(&v530[1] + 1) = DWORD1(v530[0]);
        }

        goto LABEL_529;
      case 0x17u:
        byte_28151C1D8 = 0;
        goto LABEL_162;
      case 0x19u:
        v147 = (v72 - v530) >> 2;
        if (v147 <= 5)
        {
          sub_24BBEDB70(-1, 0);
        }

        v148 = v147 - 6;
        v149 = v511;
        if (v148)
        {
          v150 = 0;
          v151 = v530;
          do
          {
            v527 = vadd_s32(v527, *v151);
            if (dword_28151C1F8)
            {
              if ((v518 & 1) == 0)
              {
                v510(&v527, &v525);
                (*(v515 + 16))(&v525, v514);
              }
            }

            else
            {
              sub_24BBFD2E4(v149, *&v527);
              v149 = v527;
              v525 = v527;
            }

            v38 = 0uLL;
            ++v151;
            v150 += 2;
          }

          while (v148 > v150);
        }

        v511 = v149;
        for (kk = 0; kk != 24; kk += 4)
        {
          *(v530 + kk) = *(v530 + v148++);
        }

        v72 = &v530[1] + 2;
        goto LABEL_504;
      case 0x1Au:
        v529 = 0;
        v528 = 0;
        v157 = (v72 - v530) >> 2;
        if (v157 < 4)
        {
          goto LABEL_518;
        }

        v158 = 0;
        while (1)
        {
          if ((v157 - v158))
          {
            v159 = v527.i32[0] + *(v530 + v158);
            LODWORD(v529) = v159;
            v163 = v158 + 1;
            v160 = 4;
            v161 = 3;
            v162 = 2;
          }

          else
          {
            v159 = v527.i32[0];
            LODWORD(v529) = v527.i32[0];
            v160 = 3;
            v161 = 2;
            v162 = 1;
            v163 = v158;
          }

          HIDWORD(v529) = v527.i32[1] + *(v530 + v163);
          v164 = *(v530 + v158 + v161) + HIDWORD(v529);
          LODWORD(v528) = *(v530 + v158 + v162) + v159;
          HIDWORD(v528) = v164;
          v521.i32[1] = *(v530 + v158 + v160) + v164;
          v521.i32[0] = v528;
          v527 = v521;
          if (qword_28151C1D0 == sub_24BBFCB98)
          {
            break;
          }

          if (!dword_28151C1F8)
          {
            sub_24BBFD2E4(v511, v529);
            sub_24BBFD2E4(v528, *&v521);
            v38 = 0uLL;
            v511 = v527;
            goto LABEL_292;
          }

          if ((v518 & 1) == 0)
          {
            v510(&v529, &v529);
            v510(&v528, &v528);
            v510(&v521, &v521);
LABEL_290:
            (*(v515 + 24))(&v525, &v529, &v528, &v521, v514);
            v38 = 0uLL;
          }

LABEL_292:
          v525 = v521;
          v158 += ((v157 - v158) & 1) + 4;
          if (v158 > v157 - 4)
          {
            goto LABEL_518;
          }
        }

        LODWORD(v529) = sub_24BBFD400(qword_28151C1C0, v529);
        HIDWORD(v529) = sub_24BBFD400(qword_28151C1C8, SHIDWORD(v529));
        LODWORD(v528) = sub_24BBFD400(qword_28151C1C0, v528);
        HIDWORD(v528) = sub_24BBFD400(qword_28151C1C8, SHIDWORD(v528));
        v521.i32[0] = sub_24BBFD400(qword_28151C1C0, v521.i32[0]);
        v521.i32[1] = sub_24BBFD400(qword_28151C1C8, v521.i32[1]);
        goto LABEL_290;
      case 0x1Bu:
        v529 = 0;
        v528 = 0;
        v521 = 0;
        v94 = (v72 - v530) >> 2;
        if (v94 < 4)
        {
          v95 = v511;
          goto LABEL_488;
        }

        v241 = 0;
        v95 = v511;
        while (1)
        {
          if ((v94 - v241))
          {
            if (v241)
            {
              sub_24BBEDB70(-1, 0);
            }

            v242 = v527.i32[1] + LODWORD(v530[0]);
            HIDWORD(v529) = v527.i32[1] + LODWORD(v530[0]);
            v241 = 1;
          }

          else
          {
            v242 = v527.i32[1];
            HIDWORD(v529) = v527.i32[1];
          }

          v243 = v530 + v241;
          v244 = v243[1];
          v245 = v527.i32[0] + *v243;
          LODWORD(v529) = v245;
          v246 = v243[2];
          LODWORD(v243) = v243[3];
          LODWORD(v528) = v244 + v245;
          HIDWORD(v528) = v242 + v246;
          v521.i32[0] = v243 + v244 + v245;
          v521.i32[1] = v242 + v246;
          v527 = v521;
          if (qword_28151C1D0 == sub_24BBFCB98)
          {
            break;
          }

          if (!dword_28151C1F8)
          {
            sub_24BBFD2E4(v95, v529);
            sub_24BBFD2E4(v528, *&v521);
            v38 = 0uLL;
            v95 = v527;
            goto LABEL_487;
          }

          if ((v518 & 1) == 0)
          {
            v510(&v529, &v529);
            v510(&v528, &v528);
            v510(&v521, &v521);
LABEL_485:
            (*(v515 + 24))(&v525, &v529, &v528, &v521, v514);
            v38 = 0uLL;
          }

LABEL_487:
          v525 = v521;
          v241 += 4;
          if (v241 > v94 - 4)
          {
LABEL_488:
            v511 = v95;
LABEL_518:
            LODWORD(v508) = 0;
LABEL_707:
            v65 = v68;
LABEL_904:
            v66 = v520;
            v67 = v530;
            goto LABEL_99;
          }
        }

        LODWORD(v529) = sub_24BBFD400(qword_28151C1C0, v245);
        HIDWORD(v529) = sub_24BBFD400(qword_28151C1C8, SHIDWORD(v529));
        LODWORD(v528) = sub_24BBFD400(qword_28151C1C0, v528);
        HIDWORD(v528) = sub_24BBFD400(qword_28151C1C8, SHIDWORD(v528));
        v521.i32[0] = sub_24BBFD400(qword_28151C1C0, v521.i32[0]);
        v521.i32[1] = sub_24BBFD400(qword_28151C1C8, v521.i32[1]);
        goto LABEL_485;
      case 0x1Cu:
        if (v47 >= v69)
        {
          sub_24BBEDB70(-1, 0);
        }

        v106 = *v47;
        if ((v47 + 1) >= v69)
        {
          sub_24BBEDB70(-1, 0);
        }

        v107 = v47[1];
        if (v72 - v530 >= 252)
        {
          sub_24BBEDB70(-1, 0);
        }

        v47 += 2;
        *v72++ = (v106 << 24) | (v107 << 16);
        goto LABEL_179;
      case 0x1Du:
        v67 = v72 - 1;
        if (v72 - 1 < v530)
        {
          sub_24BBEDB70(-1, 0);
        }

        v87 = *(v72 - 1) + *(v516 + 816);
        if (v87 >= *(v516 + 820) || v87 < 0)
        {
          goto LABEL_1078;
        }

        v88 = 5;
        v89 = v487;
        v90 = v483;
        v92 = v478;
        v91 = v479;
        v93 = v485;
LABEL_201:
        v117 = *v93;
        v118 = *v91;
        v119 = *v90;
        v120 = *v89;
        if (*v89 != *v90 && *v92 <= v117 + v117 * v118 || v493 == 32)
        {
          goto LABEL_1078;
        }

        v121 = &(&v555)[5 * v493];
        *(v121 + 2) = v47 - *v121;
        v121[2] = v47;
        v121[3] = v517;
        ++v493;
        if (!v120 || v87 >= v118 || (v122 = sub_24BBFCB24(v120, v87, v117), v123 = sub_24BBFCB24(v120, v87 + 1, v117), v38 = 0uLL, !v122))
        {
          *(v496 + 14) = v87;
          v125 = *(v498 + 24);
          if (v125)
          {
            v126 = xmmword_24BC06060;
            v127 = 34;
            v128 = v558;
            do
            {
              if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x21uLL), v126)).u8[0])
              {
                *(v128 - 5) = 0;
              }

              if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x21uLL), *&v126)).i32[1])
              {
                *v128 = 0;
              }

              v126 = vaddq_s64(v126, vdupq_n_s64(2uLL));
              v128 += 10;
              v127 -= 2;
            }

            while (v127);
            v129 = v125(v88, v496, *(v509 + 2), v126);
            v38 = 0uLL;
            if (v129)
            {
              v47 = v129;
              v124 = v129 + *(v496 + 35);
              goto LABEL_218;
            }
          }

          goto LABEL_1081;
        }

        if (v122 < v123)
        {
          v47 = (v119 + v122);
          v124 = v119 + v123;
LABEL_218:
          v517 = v124;
          v121[5] = v47;
          *(v121 + 13) = v87;
          v65 = v68;
          v66 = v520;
          *(v121 + 18) = v88;
          continue;
        }

        *(v121 + 12) = 0;
        *(v121 + 13) = v87;
        *(v121 + 18) = v88;
LABEL_711:
        if (v493 <= 0)
        {
          sub_24BBEDB70(-1, 0);
        }

        v324 = &(&v555)[5 * --v493];
        v47 = v324[2];
        v517 = v324[3];
        v65 = v68;
        v66 = v520;
        if (v47)
        {
          continue;
        }

        v73 = v68;
        v325 = *(v324 + 3);
        v326 = *(v324 + 8);
        if (v326 == 5)
        {
          v327 = v509;
          v328 = v496;
          v329 = v324[3];
          if (*v487)
          {
            v330 = sub_24BBFCB24(*v487, *(v324 + 3), *v485);
            v38 = 0uLL;
            if (v330)
            {
              v331 = v483;
              goto LABEL_920;
            }
          }
        }

        else
        {
          v327 = v509;
          v328 = v496;
          if (v326 == 1)
          {
            v396 = *v496;
            v329 = v324[3];
            goto LABEL_925;
          }

          v329 = v324[3];
          if (v326)
          {
            v398 = v496[4];
            if (v398)
            {
              v330 = sub_24BBFCB24(v398, *(v324 + 3), *(v496 + 61));
              v38 = 0uLL;
              if (v330)
              {
                v397 = v496[3];
                goto LABEL_924;
              }
            }
          }

          else if (*v488)
          {
            v330 = sub_24BBFCB24(*v488, *(v324 + 3), *v486);
            v38 = 0uLL;
            if (v330)
            {
              v331 = v484;
LABEL_920:
              v397 = *v331;
LABEL_924:
              v396 = &v397[v330];
LABEL_925:
              if (v396)
              {
LABEL_935:
                v517 = v329;
                *v324 = v396;
                v47 = (v396 + *(v324 + 2));
                goto LABEL_936;
              }
            }
          }
        }

        *(v328 + 14) = v325;
        v399 = *(v498 + 24);
        if (v399)
        {
          v400 = xmmword_24BC06060;
          v401 = 34;
          v402 = v558;
          do
          {
            if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x21uLL), v400)).u8[0])
            {
              *(v402 - 5) = 0;
            }

            if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x21uLL), *&v400)).i32[1])
            {
              *v402 = 0;
            }

            v400 = vaddq_s64(v400, vdupq_n_s64(2uLL));
            v402 += 10;
            v401 -= 2;
          }

          while (v401);
          v396 = v399(v326, v328, *(v327 + 2), v400);
          v38 = 0uLL;
          if (v396)
          {
            v329 = v396 + *(v328 + 35);
            goto LABEL_935;
          }
        }

LABEL_1081:
        sub_24BBEDB70(-1, 0);
      case 0x1Eu:
        v73 = v68;
        v108 = 0;
        goto LABEL_220;
      case 0x1Fu:
        v73 = v68;
        v108 = 1;
LABEL_220:
        v529 = 0;
        v528 = 0;
        v521 = 0;
        v130 = ((v72 - v530) >> 2) - 4;
        if (((v72 - v530) >> 2) < 4)
        {
          goto LABEL_236;
        }

        v131 = 0;
        v132 = (((v72 - v530) >> 2) & 0x7FFFFFFF) - 5;
        v133 = v530 + 2;
        break;
      default:
        if (v72 >= v545)
        {
          sub_24BBEDB70(-1, 0);
        }

        *v72 = (v70 << 16) - 9109504;
        if (v70 < 0xF7)
        {
          goto LABEL_914;
        }

        if (v70 > 0xFA)
        {
          if (v70 == 255)
          {
            if (v47 >= v69)
            {
              sub_24BBEDB70(-1, 0);
            }

            if ((v47 + 1) >= v69)
            {
              sub_24BBEDB70(-1, 0);
            }

            if ((v47 + 2) >= v69)
            {
              sub_24BBEDB70(-1, 0);
            }

            if ((v47 + 3) >= v69)
            {
              sub_24BBEDB70(-1, 0);
            }

            v361 = v47 + 4;
            v362 = v47[3] | (((*v47 << 16) | (v47[1] << 8) | v47[2]) << 8);
            v363 = *(v516 + 960);
            if (v363 == 1 && (v362 + 32000) <= 0xFA00)
            {
              *v72 = v362 << 16;
            }

            else
            {
              *v72 = v362;
              v407 = v475;
              if (v363 == 1)
              {
                v407 = 1;
              }

              v475 = v407;
            }

            goto LABEL_915;
          }

          if (v47 >= v69)
          {
            sub_24BBEDB70(-1, 0);
          }

          v395 = *v47++;
          v146 = -7077888 - ((((v70 << 8) + 1280) | v395) << 16);
        }

        else
        {
          if (v47 >= v69)
          {
            sub_24BBEDB70(-1, 0);
          }

          v145 = *v47++;
          v146 = ((((v70 << 8) + 2304) | v145) << 16) + 7077888;
        }

        *v72 = v146;
LABEL_914:
        v361 = v47;
LABEL_915:
        v67 = v72 + 1;
        v47 = v361;
        v65 = v68;
        v66 = v520;
        continue;
    }

    break;
  }

  while (1)
  {
    if (v108)
    {
      v139 = *(v133 - 1);
      LODWORD(v529) = v527.i32[0] + *(v133 - 2);
      HIDWORD(v529) = v527.i32[1];
      v140 = v139 + v529;
      v141 = *v133;
      v142 = v133[1];
      LODWORD(v528) = v140;
      HIDWORD(v528) = v141 + v527.i32[1];
      v521.i32[1] = v142 + v141 + v527.i32[1];
      v521.i32[0] = v140;
      v108 = 0;
      if (v132 == v131)
      {
        v521.i32[0] = v133[2] + v140;
      }
    }

    else
    {
      v134 = *(v133 - 1);
      v135 = v527.i32[1] + *(v133 - 2);
      v529 = __PAIR64__(v135, v527.u32[0]);
      v136 = v134 + v527.i32[0];
      v137 = v133[1];
      v138 = *v133 + v135;
      v528 = __PAIR64__(v138, v136);
      v521.i32[0] = v137 + v136;
      v521.i32[1] = v138;
      if (v132 == v131)
      {
        v521.i32[1] = v133[2] + v138;
      }

      v108 = 1;
    }

    v527 = v521;
    if (qword_28151C1D0 == sub_24BBFCB98)
    {
      break;
    }

    if (!dword_28151C1F8)
    {
      sub_24BBFD2E4(v511, v529);
      sub_24BBFD2E4(v528, *&v521);
      v38 = 0uLL;
      v511 = v527;
      goto LABEL_235;
    }

    if ((v518 & 1) == 0)
    {
      v510(&v529, &v529);
      v510(&v528, &v528);
      v510(&v521, &v521);
LABEL_233:
      (*(v515 + 24))(&v525, &v529, &v528, &v521, v514);
      v38 = 0uLL;
    }

LABEL_235:
    v525 = v521;
    v131 += 4;
    v133 += 4;
    if (v130 < v131)
    {
LABEL_236:
      LODWORD(v508) = 0;
LABEL_903:
      v65 = v73;
      goto LABEL_904;
    }
  }

  LODWORD(v529) = sub_24BBFD400(qword_28151C1C0, v529);
  HIDWORD(v529) = sub_24BBFD400(qword_28151C1C8, SHIDWORD(v529));
  LODWORD(v528) = sub_24BBFD400(qword_28151C1C0, v528);
  HIDWORD(v528) = sub_24BBFD400(qword_28151C1C8, SHIDWORD(v528));
  v521.i32[0] = sub_24BBFD400(qword_28151C1C0, v521.i32[0]);
  v521.i32[1] = sub_24BBFD400(qword_28151C1C8, v521.i32[1]);
  goto LABEL_233;
}