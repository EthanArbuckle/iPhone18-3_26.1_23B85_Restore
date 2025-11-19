BOOL sub_1B5D2A588(uint64_t **a1, uint64_t a2)
{
  v3 = **a1;
  if (*(v3 + 32) != 6)
  {
    sub_1B5D24008();
  }

  if (*(v3 + 12) != -1 && (*(v3 + 9) & 1) == 0 && (v5 = 0, sub_1B5D137A8((a2 + 48), v3, &v5)) && (~v5 & 0x7FFFFF) != 0)
  {
    return (v5 & 0x600000) == 0x200000;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1B5D2A60C(unsigned int ***a1, uint64_t a2)
{
  v3 = **a1;
  if (v3[8] != 5)
  {
    sub_1B5D24008();
  }

  if ((*v3 + 1) >= 2 && (v5 = 0, sub_1B5D6EE88((a2 + 48), v3, &v5)) && (~v5 & 0x7FFFFF) != 0)
  {
    return (v5 & 0x600000) == 0x200000;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1B5D2A68C(uint64_t **a1, uint64_t a2)
{
  v3 = **a1;
  if (*(v3 + 32) != 4)
  {
    sub_1B5D24008();
  }

  if (*v3)
  {
    v4 = *v3 == 0xFFFFFFFFLL;
  }

  else
  {
    v4 = 1;
  }

  if (!v4 && (v7 = 0, v6 = sub_1B5D600EC((a2 + 48), v3, &v7), v6 && (~v7 & 0xFFFFFF) != 0))
  {
    return (v7 & 0x600000) == 0x200000;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1B5D2A710(uint64_t **a1, uint64_t a2)
{
  v3 = **a1;
  if (*(v3 + 32) != 3)
  {
    sub_1B5D24008();
  }

  if ((*v3 + 1) >= 2 && (v5 = 0, sub_1B5D64DE0(a2 + 48, v3, &v5)) && (~v5 & 0x7FFFFF) != 0)
  {
    return (v5 & 0x600000) == 0x200000;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1B5D2A790(uint64_t **a1, uint64_t a2)
{
  v3 = **a1;
  if (*(v3 + 32) != 2)
  {
    sub_1B5D24008();
  }

  if ((*v3 + 1) >= 2 && (v5 = 0, sub_1B5D7601C((a2 + 48), v3, &v5)) && (~v5 & 0x7FFFFF) != 0)
  {
    return (v5 & 0x600000) == 0x200000;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1B5D2A810(unsigned int ***a1, uint64_t a2)
{
  v3 = **a1;
  if (v3[8] != 1)
  {
    sub_1B5D24008();
  }

  if ((*v3 + 1) >= 2 && (v5 = 0, sub_1B5D6EE88((a2 + 48), v3, &v5)) && (~v5 & 0x7FFFFF) != 0)
  {
    return (v5 & 0x600000) == 0x200000;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D2A890(char ***a1)
{
  v1 = **a1;
  if (*(v1 + 8))
  {
    sub_1B5D24008();
  }

  if ((*v1 & 0x80000000) == 0 && ((v2 = *v1, v3 = *(v1 + 2), v2 | v3) || (v3 = 0, v1[24])) && (HIBYTE(v3) & 3) < (v2 + 1))
  {
    return v1[19] >> 7;
  }

  else
  {
    return 0;
  }
}

double sub_1B5D2A8F8(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  if (*(v3 + 32) != 12)
  {
    sub_1B5D24008();
  }

  sub_1B5DB1680(v3, a2, *(v2 + 8));
  return 0.0;
}

double sub_1B5D2A930(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  if (*(v3 + 32) != 11)
  {
    sub_1B5D24008();
  }

  sub_1B5DAF788(v3, *(a2 + 64), *(v2 + 8));
  return 0.0;
}

double sub_1B5D2A96C(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  if (*(v3 + 32) != 10)
  {
    sub_1B5D24008();
  }

  sub_1B5DB075C(v3, a2, *(v2 + 8));
  return 0.0;
}

double sub_1B5D2A9A4(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  if (*(v3 + 32) != 9)
  {
    sub_1B5D24008();
  }

  sub_1B5DAFED4(v3, a2, *(v2 + 8));
  return 0.0;
}

double sub_1B5D2A9DC(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  if (*(v3 + 32) != 8)
  {
    sub_1B5D24008();
  }

  sub_1B5DAF788(v3, *(a2 + 64), *(v2 + 8));
  return 0.0;
}

double sub_1B5D2AA18(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  if (*(v3 + 32) != 7)
  {
    sub_1B5D24008();
  }

  sub_1B5DAF028(v3, a2, *(v2 + 8));
  return 0.0;
}

float sub_1B5D2AA50(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = **a1;
  if (*(v4 + 32) != 6)
  {
    sub_1B5D24008();
  }

  v5 = *(v3 + 8);

  return sub_1B5DAE958(v4, a2, v5);
}

void sub_1B5D2AA88(unsigned int ***a1, uint64_t a2)
{
  v3 = *a1;
  v4 = **a1;
  if (v4[8] != 5)
  {
    sub_1B5D24008();
  }

  v5 = *(v3 + 8);

  sub_1B5DAC73C(v4, a2, v5);
}

float sub_1B5D2AAC0(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = **a1;
  if (*(v4 + 32) != 4)
  {
    sub_1B5D24008();
  }

  v5 = *(v3 + 8);

  return sub_1B5DADC08(v4, a2, v5);
}

float sub_1B5D2AAF8(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = **a1;
  if (*(v4 + 32) != 3)
  {
    sub_1B5D24008();
  }

  v5 = *(v3 + 8);

  return sub_1B5DAD5C8(v4, a2, v5);
}

float sub_1B5D2AB30(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = **a1;
  if (*(v4 + 32) != 2)
  {
    sub_1B5D24008();
  }

  v5 = *(v3 + 8);

  return sub_1B5DACE78(v4, a2, v5);
}

void sub_1B5D2AB68(unsigned int ***a1, uint64_t a2)
{
  v3 = *a1;
  v4 = **a1;
  if (v4[8] != 1)
  {
    sub_1B5D24008();
  }

  v5 = *(v3 + 8);

  sub_1B5DAC73C(v4, a2, v5);
}

float sub_1B5D2ABA0(uint64_t **a1, uint64_t **a2)
{
  v3 = *a1;
  v4 = **a1;
  if (*(v4 + 32))
  {
    sub_1B5D24008();
  }

  v5 = *(v3 + 8);

  return sub_1B5D93028(v4, a2, v5);
}

uint64_t sub_1B5D2ACAC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5[0] = sub_1B5CF3294(*(a1 + 48));
  v5[1] = v3;
  v6 = 12;
  sub_1B5DB9C6C(a2, v5);
  return sub_1B5D264A0(v5);
}

void sub_1B5D2ACFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D264A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D2AD10@<X0>(uint64_t a1@<X8>)
{
  v2[0] = 0;
  v3 = 11;
  sub_1B5DB9C6C(a1, v2);
  return sub_1B5D264A0(v2);
}

void sub_1B5D2AD54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D264A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D2AD68@<X0>(uint64_t a1@<X8>)
{
  memset(v2, 0, sizeof(v2));
  v3 = 10;
  sub_1B5DB9C6C(a1, v2);
  return sub_1B5D264A0(v2);
}

uint64_t sub_1B5D2ADC4@<X0>(uint64_t a1@<X8>)
{
  v2[0] = 0;
  v3 = 9;
  sub_1B5DB9C6C(a1, v2);
  return sub_1B5D264A0(v2);
}

void sub_1B5D2AE08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D264A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D2AE1C@<X0>(uint64_t a1@<X8>)
{
  v2[0] = 0;
  v3 = 8;
  sub_1B5DB9C6C(a1, v2);
  return sub_1B5D264A0(v2);
}

void sub_1B5D2AE60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D264A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D2AE74@<X0>(uint64_t a1@<X8>)
{
  v2[0] = 0;
  v3 = 7;
  sub_1B5DB9C6C(a1, v2);
  return sub_1B5D264A0(v2);
}

void sub_1B5D2AEB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D264A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D2AECC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5[0] = sub_1B5CF3294(*(a1 + 56));
  v5[1] = v3;
  v6 = 6;
  sub_1B5DB9C6C(a2, v5);
  return sub_1B5D264A0(v5);
}

void sub_1B5D2AF1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D264A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D2AF30@<X0>(uint64_t a1@<X8>)
{
  v2[0] = 0;
  v3 = 5;
  sub_1B5DB9C6C(a1, v2);
  return sub_1B5D264A0(v2);
}

void sub_1B5D2AF74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D264A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D2AF88@<X0>(uint64_t a1@<X8>)
{
  memset(v2, 0, sizeof(v2));
  v3 = 4;
  sub_1B5DB9C6C(a1, v2);
  return sub_1B5D264A0(v2);
}

uint64_t sub_1B5D2AFE4@<X0>(uint64_t a1@<X8>)
{
  v2[0] = 0;
  v3 = 3;
  sub_1B5DB9C6C(a1, v2);
  return sub_1B5D264A0(v2);
}

void sub_1B5D2B028(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D264A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D2B03C@<X0>(uint64_t a1@<X8>)
{
  v2[0] = 0;
  v3 = 2;
  sub_1B5DB9C6C(a1, v2);
  return sub_1B5D264A0(v2);
}

void sub_1B5D2B080(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D264A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D2B094@<X0>(uint64_t a1@<X8>)
{
  v2[0] = 0;
  v3 = 1;
  sub_1B5DB9C6C(a1, v2);
  return sub_1B5D264A0(v2);
}

void sub_1B5D2B0D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D264A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D2B0EC@<X0>(uint64_t a1@<X8>)
{
  v2[0] = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  sub_1B5DB9C6C(a1, v2);
  return sub_1B5D264A0(v2);
}

void sub_1B5D2B138(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D264A0(va);
  _Unwind_Resume(a1);
}

void sub_1B5D2B14C(uint64_t a1@<X1>, void *a2@<X8>)
{
  v2 = *(a1 + 1488);
  *a2 = *(a1 + 1480);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1B5D2B16C(uint64_t a1@<X1>, void *a2@<X8>)
{
  v2 = *(a1 + 1504);
  *a2 = *(a1 + 1496);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1B5D2B18C(uint64_t a1@<X1>, void *a2@<X8>)
{
  v2 = *(a1 + 1504);
  *a2 = *(a1 + 1496);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1B5D2B1AC(uint64_t a1@<X1>, void *a2@<X8>)
{
  v2 = *(a1 + 2048);
  *a2 = *(a1 + 2040);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1B5D2B1CC(uint64_t a1@<X1>, void *a2@<X8>)
{
  v2 = *(a1 + 1480);
  *a2 = *(a1 + 1472);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1B5D2B1EC(uint64_t a1@<X1>, void *a2@<X8>)
{
  v2 = *(a1 + 1544);
  *a2 = *(a1 + 1536);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1B5D2B20C(uint64_t a1@<X1>, void *a2@<X8>)
{
  v2 = *(a1 + 1520);
  *a2 = *(a1 + 1512);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1B5D2B22C(uint64_t a1@<X1>, void *a2@<X8>)
{
  v2 = *(a1 + 1536);
  *a2 = *(a1 + 1528);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1B5D2B24C(uint64_t a1@<X1>, void *a2@<X8>)
{
  v2 = *(a1 + 1536);
  *a2 = *(a1 + 1528);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1B5D2B26C(uint64_t a1@<X1>, void *a2@<X8>)
{
  v2 = *(a1 + 2080);
  *a2 = *(a1 + 2072);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1B5D2B28C(uint64_t a1@<X1>, void *a2@<X8>)
{
  v2 = *(a1 + 1576);
  *a2 = *(a1 + 1568);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1B5D2B2AC(uint64_t a1@<X1>, void *a2@<X8>)
{
  v2 = *(a1 + 1512);
  *a2 = *(a1 + 1504);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

os_log_t sub_1B5D2B38C()
{
  result = os_log_create("com.apple.Lexicon", "StaticDictionaryImpl");
  qword_1ED833A40 = result;
  return result;
}

void sub_1B5D2B3BC(char a1, void *__p)
{
  if (a1)
  {
    if (*(__p + 8) >= 0xFu)
    {
      v3 = __p[3];
      if (v3)
      {
        MEMORY[0x1B8C880C0](v3, 0x1000C8077774924);
      }
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_1B5D2B490(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (mlock(**(a2 + 24), *(*(a2 + 24) + 8)))
    {
      v3 = *__error();
      v4 = std::generic_category();
    }

    else
    {
      v4 = std::system_category();
      v3 = 0;
    }

    *&v7.__val_ = v3;
    v7.__cat_ = v4;
    sub_1B5DB2410(&v7, "mlock() failed for words file");
    if (mlock(**(a2 + 32), *(*(a2 + 32) + 8)))
    {
      v5 = *__error();
      v6 = std::generic_category();
    }

    else
    {
      v6 = std::system_category();
      v5 = 0;
    }

    *&v7.__val_ = v5;
    v7.__cat_ = v6;
    sub_1B5DB2410(&v7, "mlock() failed for index file");
  }
}

void sub_1B5D2B544(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (mlock(**(a2 + 24), *(*(a2 + 24) + 8)))
    {
      v3 = *__error();
      v4 = std::generic_category();
    }

    else
    {
      v4 = std::system_category();
      v3 = 0;
    }

    *&v7.__val_ = v3;
    v7.__cat_ = v4;
    sub_1B5DB2410(&v7, "mlock() failed for words file");
    if (mlock(**(a2 + 32), *(*(a2 + 32) + 8)))
    {
      v5 = *__error();
      v6 = std::generic_category();
    }

    else
    {
      v6 = std::system_category();
      v5 = 0;
    }

    *&v7.__val_ = v5;
    v7.__cat_ = v6;
    sub_1B5DB2410(&v7, "mlock() failed for index file");
  }
}

void sub_1B5D2B5F8(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (mlock(**(a2 + 24), *(*(a2 + 24) + 8)))
    {
      v3 = *__error();
      v4 = std::generic_category();
    }

    else
    {
      v4 = std::system_category();
      v3 = 0;
    }

    *&v7.__val_ = v3;
    v7.__cat_ = v4;
    sub_1B5DB2410(&v7, "mlock() failed for words file");
    if (mlock(**(a2 + 32), *(*(a2 + 32) + 8)))
    {
      v5 = *__error();
      v6 = std::generic_category();
    }

    else
    {
      v6 = std::system_category();
      v5 = 0;
    }

    *&v7.__val_ = v5;
    v7.__cat_ = v6;
    sub_1B5DB2410(&v7, "mlock() failed for index file");
  }
}

void sub_1B5D2B6AC(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (mlock(**(a2 + 24), *(*(a2 + 24) + 8)))
    {
      v3 = *__error();
      v4 = std::generic_category();
    }

    else
    {
      v4 = std::system_category();
      v3 = 0;
    }

    *&v7.__val_ = v3;
    v7.__cat_ = v4;
    sub_1B5DB2410(&v7, "mlock() failed for words file");
    if (mlock(**(a2 + 32), *(*(a2 + 32) + 8)))
    {
      v5 = *__error();
      v6 = std::generic_category();
    }

    else
    {
      v6 = std::system_category();
      v5 = 0;
    }

    *&v7.__val_ = v5;
    v7.__cat_ = v6;
    sub_1B5DB2410(&v7, "mlock() failed for index file");
  }
}

void sub_1B5D2B760(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (mlock(**(a2 + 24), *(*(a2 + 24) + 8)))
    {
      v3 = *__error();
      v4 = std::generic_category();
    }

    else
    {
      v4 = std::system_category();
      v3 = 0;
    }

    *&v7.__val_ = v3;
    v7.__cat_ = v4;
    sub_1B5DB2410(&v7, "mlock() failed for words file");
    if (mlock(**(a2 + 32), *(*(a2 + 32) + 8)))
    {
      v5 = *__error();
      v6 = std::generic_category();
    }

    else
    {
      v6 = std::system_category();
      v5 = 0;
    }

    *&v7.__val_ = v5;
    v7.__cat_ = v6;
    sub_1B5DB2410(&v7, "mlock() failed for index file");
  }
}

void sub_1B5D2B814(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (mlock(**(a2 + 24), *(*(a2 + 24) + 8)))
    {
      v3 = *__error();
      v4 = std::generic_category();
    }

    else
    {
      v4 = std::system_category();
      v3 = 0;
    }

    *&v7.__val_ = v3;
    v7.__cat_ = v4;
    sub_1B5DB2410(&v7, "mlock() failed for words file");
    if (mlock(**(a2 + 32), *(*(a2 + 32) + 8)))
    {
      v5 = *__error();
      v6 = std::generic_category();
    }

    else
    {
      v6 = std::system_category();
      v5 = 0;
    }

    *&v7.__val_ = v5;
    v7.__cat_ = v6;
    sub_1B5DB2410(&v7, "mlock() failed for index file");
  }
}

void sub_1B5D2B8C8(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (mlock(**(a2 + 24), *(*(a2 + 24) + 8)))
    {
      v3 = *__error();
      v4 = std::generic_category();
    }

    else
    {
      v4 = std::system_category();
      v3 = 0;
    }

    *&v7.__val_ = v3;
    v7.__cat_ = v4;
    sub_1B5DB2410(&v7, "mlock() failed for words file");
    if (mlock(**(a2 + 32), *(*(a2 + 32) + 8)))
    {
      v5 = *__error();
      v6 = std::generic_category();
    }

    else
    {
      v6 = std::system_category();
      v5 = 0;
    }

    *&v7.__val_ = v5;
    v7.__cat_ = v6;
    sub_1B5DB2410(&v7, "mlock() failed for index file");
  }
}

void sub_1B5D2B97C(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (mlock(**(a2 + 24), *(*(a2 + 24) + 8)))
    {
      v3 = *__error();
      v4 = std::generic_category();
    }

    else
    {
      v4 = std::system_category();
      v3 = 0;
    }

    *&v7.__val_ = v3;
    v7.__cat_ = v4;
    sub_1B5DB2410(&v7, "mlock() failed for words file");
    if (mlock(**(a2 + 32), *(*(a2 + 32) + 8)))
    {
      v5 = *__error();
      v6 = std::generic_category();
    }

    else
    {
      v6 = std::system_category();
      v5 = 0;
    }

    *&v7.__val_ = v5;
    v7.__cat_ = v6;
    sub_1B5DB2410(&v7, "mlock() failed for index file");
  }
}

void sub_1B5D2BA30(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (mlock(**(a2 + 24), *(*(a2 + 24) + 8)))
    {
      v3 = *__error();
      v4 = std::generic_category();
    }

    else
    {
      v4 = std::system_category();
      v3 = 0;
    }

    *&v7.__val_ = v3;
    v7.__cat_ = v4;
    sub_1B5DB2410(&v7, "mlock() failed for words file");
    if (mlock(**(a2 + 32), *(*(a2 + 32) + 8)))
    {
      v5 = *__error();
      v6 = std::generic_category();
    }

    else
    {
      v6 = std::system_category();
      v5 = 0;
    }

    *&v7.__val_ = v5;
    v7.__cat_ = v6;
    sub_1B5DB2410(&v7, "mlock() failed for index file");
  }
}

void sub_1B5D2BAE4(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (mlock(**(a2 + 24), *(*(a2 + 24) + 8)))
    {
      v3 = *__error();
      v4 = std::generic_category();
    }

    else
    {
      v4 = std::system_category();
      v3 = 0;
    }

    *&v7.__val_ = v3;
    v7.__cat_ = v4;
    sub_1B5DB2410(&v7, "mlock() failed for words file");
    if (mlock(**(a2 + 32), *(*(a2 + 32) + 8)))
    {
      v5 = *__error();
      v6 = std::generic_category();
    }

    else
    {
      v6 = std::system_category();
      v5 = 0;
    }

    *&v7.__val_ = v5;
    v7.__cat_ = v6;
    sub_1B5DB2410(&v7, "mlock() failed for index file");
  }
}

void sub_1B5D2BB98(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (mlock(**(a2 + 24), *(*(a2 + 24) + 8)))
    {
      v3 = *__error();
      v4 = std::generic_category();
    }

    else
    {
      v4 = std::system_category();
      v3 = 0;
    }

    *&v7.__val_ = v3;
    v7.__cat_ = v4;
    sub_1B5DB2410(&v7, "mlock() failed for words file");
    if (mlock(**(a2 + 32), *(*(a2 + 32) + 8)))
    {
      v5 = *__error();
      v6 = std::generic_category();
    }

    else
    {
      v6 = std::system_category();
      v5 = 0;
    }

    *&v7.__val_ = v5;
    v7.__cat_ = v6;
    sub_1B5DB2410(&v7, "mlock() failed for index file");
  }
}

void sub_1B5D2BC4C(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (mlock(**(a2 + 24), *(*(a2 + 24) + 8)))
    {
      v3 = *__error();
      v4 = std::generic_category();
    }

    else
    {
      v4 = std::system_category();
      v3 = 0;
    }

    *&v7.__val_ = v3;
    v7.__cat_ = v4;
    sub_1B5DB2410(&v7, "mlock() failed for words file");
    if (mlock(**(a2 + 32), *(*(a2 + 32) + 8)))
    {
      v5 = *__error();
      v6 = std::generic_category();
    }

    else
    {
      v6 = std::system_category();
      v5 = 0;
    }

    *&v7.__val_ = v5;
    v7.__cat_ = v6;
    sub_1B5DB2410(&v7, "mlock() failed for index file");
  }
}

void sub_1B5D2BD00(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 20) == 1)
  {
    sub_1B5CE410C(__p, "words");
    sub_1B5D93F6C((a2 + 14328), *(a2 + 8), __p);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }

    sub_1B5CE410C(__p, "index");
    sub_1B5D93F6C((a2 + 14329), *a2, __p);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1B5D2BD9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D2BDBC(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (munlock(**(a2 + 24), *(*(a2 + 24) + 8)))
    {
      v3 = *__error();
      v4 = std::generic_category();
    }

    else
    {
      v4 = std::system_category();
      v3 = 0;
    }

    *&v7.__val_ = v3;
    v7.__cat_ = v4;
    sub_1B5DB2410(&v7, "munlock() failed for words file");
    if (munlock(**(a2 + 32), *(*(a2 + 32) + 8)))
    {
      v5 = *__error();
      v6 = std::generic_category();
    }

    else
    {
      v6 = std::system_category();
      v5 = 0;
    }

    *&v7.__val_ = v5;
    v7.__cat_ = v6;
    sub_1B5DB2410(&v7, "munlock() failed for index file");
  }
}

void sub_1B5D2BE70(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (munlock(**(a2 + 24), *(*(a2 + 24) + 8)))
    {
      v3 = *__error();
      v4 = std::generic_category();
    }

    else
    {
      v4 = std::system_category();
      v3 = 0;
    }

    *&v7.__val_ = v3;
    v7.__cat_ = v4;
    sub_1B5DB2410(&v7, "munlock() failed for words file");
    if (munlock(**(a2 + 32), *(*(a2 + 32) + 8)))
    {
      v5 = *__error();
      v6 = std::generic_category();
    }

    else
    {
      v6 = std::system_category();
      v5 = 0;
    }

    *&v7.__val_ = v5;
    v7.__cat_ = v6;
    sub_1B5DB2410(&v7, "munlock() failed for index file");
  }
}

void sub_1B5D2BF24(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (munlock(**(a2 + 24), *(*(a2 + 24) + 8)))
    {
      v3 = *__error();
      v4 = std::generic_category();
    }

    else
    {
      v4 = std::system_category();
      v3 = 0;
    }

    *&v7.__val_ = v3;
    v7.__cat_ = v4;
    sub_1B5DB2410(&v7, "munlock() failed for words file");
    if (munlock(**(a2 + 32), *(*(a2 + 32) + 8)))
    {
      v5 = *__error();
      v6 = std::generic_category();
    }

    else
    {
      v6 = std::system_category();
      v5 = 0;
    }

    *&v7.__val_ = v5;
    v7.__cat_ = v6;
    sub_1B5DB2410(&v7, "munlock() failed for index file");
  }
}

void sub_1B5D2BFD8(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (munlock(**(a2 + 24), *(*(a2 + 24) + 8)))
    {
      v3 = *__error();
      v4 = std::generic_category();
    }

    else
    {
      v4 = std::system_category();
      v3 = 0;
    }

    *&v7.__val_ = v3;
    v7.__cat_ = v4;
    sub_1B5DB2410(&v7, "munlock() failed for words file");
    if (munlock(**(a2 + 32), *(*(a2 + 32) + 8)))
    {
      v5 = *__error();
      v6 = std::generic_category();
    }

    else
    {
      v6 = std::system_category();
      v5 = 0;
    }

    *&v7.__val_ = v5;
    v7.__cat_ = v6;
    sub_1B5DB2410(&v7, "munlock() failed for index file");
  }
}

void sub_1B5D2C08C(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (munlock(**(a2 + 24), *(*(a2 + 24) + 8)))
    {
      v3 = *__error();
      v4 = std::generic_category();
    }

    else
    {
      v4 = std::system_category();
      v3 = 0;
    }

    *&v7.__val_ = v3;
    v7.__cat_ = v4;
    sub_1B5DB2410(&v7, "munlock() failed for words file");
    if (munlock(**(a2 + 32), *(*(a2 + 32) + 8)))
    {
      v5 = *__error();
      v6 = std::generic_category();
    }

    else
    {
      v6 = std::system_category();
      v5 = 0;
    }

    *&v7.__val_ = v5;
    v7.__cat_ = v6;
    sub_1B5DB2410(&v7, "munlock() failed for index file");
  }
}

void sub_1B5D2C140(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (munlock(**(a2 + 24), *(*(a2 + 24) + 8)))
    {
      v3 = *__error();
      v4 = std::generic_category();
    }

    else
    {
      v4 = std::system_category();
      v3 = 0;
    }

    *&v7.__val_ = v3;
    v7.__cat_ = v4;
    sub_1B5DB2410(&v7, "munlock() failed for words file");
    if (munlock(**(a2 + 32), *(*(a2 + 32) + 8)))
    {
      v5 = *__error();
      v6 = std::generic_category();
    }

    else
    {
      v6 = std::system_category();
      v5 = 0;
    }

    *&v7.__val_ = v5;
    v7.__cat_ = v6;
    sub_1B5DB2410(&v7, "munlock() failed for index file");
  }
}

void sub_1B5D2C1F4(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (munlock(**(a2 + 24), *(*(a2 + 24) + 8)))
    {
      v3 = *__error();
      v4 = std::generic_category();
    }

    else
    {
      v4 = std::system_category();
      v3 = 0;
    }

    *&v7.__val_ = v3;
    v7.__cat_ = v4;
    sub_1B5DB2410(&v7, "munlock() failed for words file");
    if (munlock(**(a2 + 32), *(*(a2 + 32) + 8)))
    {
      v5 = *__error();
      v6 = std::generic_category();
    }

    else
    {
      v6 = std::system_category();
      v5 = 0;
    }

    *&v7.__val_ = v5;
    v7.__cat_ = v6;
    sub_1B5DB2410(&v7, "munlock() failed for index file");
  }
}

void sub_1B5D2C2A8(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (munlock(**(a2 + 24), *(*(a2 + 24) + 8)))
    {
      v3 = *__error();
      v4 = std::generic_category();
    }

    else
    {
      v4 = std::system_category();
      v3 = 0;
    }

    *&v7.__val_ = v3;
    v7.__cat_ = v4;
    sub_1B5DB2410(&v7, "munlock() failed for words file");
    if (munlock(**(a2 + 32), *(*(a2 + 32) + 8)))
    {
      v5 = *__error();
      v6 = std::generic_category();
    }

    else
    {
      v6 = std::system_category();
      v5 = 0;
    }

    *&v7.__val_ = v5;
    v7.__cat_ = v6;
    sub_1B5DB2410(&v7, "munlock() failed for index file");
  }
}

void sub_1B5D2C35C(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (munlock(**(a2 + 24), *(*(a2 + 24) + 8)))
    {
      v3 = *__error();
      v4 = std::generic_category();
    }

    else
    {
      v4 = std::system_category();
      v3 = 0;
    }

    *&v7.__val_ = v3;
    v7.__cat_ = v4;
    sub_1B5DB2410(&v7, "munlock() failed for words file");
    if (munlock(**(a2 + 32), *(*(a2 + 32) + 8)))
    {
      v5 = *__error();
      v6 = std::generic_category();
    }

    else
    {
      v6 = std::system_category();
      v5 = 0;
    }

    *&v7.__val_ = v5;
    v7.__cat_ = v6;
    sub_1B5DB2410(&v7, "munlock() failed for index file");
  }
}

void sub_1B5D2C410(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (munlock(**(a2 + 24), *(*(a2 + 24) + 8)))
    {
      v3 = *__error();
      v4 = std::generic_category();
    }

    else
    {
      v4 = std::system_category();
      v3 = 0;
    }

    *&v7.__val_ = v3;
    v7.__cat_ = v4;
    sub_1B5DB2410(&v7, "munlock() failed for words file");
    if (munlock(**(a2 + 32), *(*(a2 + 32) + 8)))
    {
      v5 = *__error();
      v6 = std::generic_category();
    }

    else
    {
      v6 = std::system_category();
      v5 = 0;
    }

    *&v7.__val_ = v5;
    v7.__cat_ = v6;
    sub_1B5DB2410(&v7, "munlock() failed for index file");
  }
}

void sub_1B5D2C4C4(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (munlock(**(a2 + 24), *(*(a2 + 24) + 8)))
    {
      v3 = *__error();
      v4 = std::generic_category();
    }

    else
    {
      v4 = std::system_category();
      v3 = 0;
    }

    *&v7.__val_ = v3;
    v7.__cat_ = v4;
    sub_1B5DB2410(&v7, "munlock() failed for words file");
    if (munlock(**(a2 + 32), *(*(a2 + 32) + 8)))
    {
      v5 = *__error();
      v6 = std::generic_category();
    }

    else
    {
      v6 = std::system_category();
      v5 = 0;
    }

    *&v7.__val_ = v5;
    v7.__cat_ = v6;
    sub_1B5DB2410(&v7, "munlock() failed for index file");
  }
}

void sub_1B5D2C578(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (munlock(**(a2 + 24), *(*(a2 + 24) + 8)))
    {
      v3 = *__error();
      v4 = std::generic_category();
    }

    else
    {
      v4 = std::system_category();
      v3 = 0;
    }

    *&v7.__val_ = v3;
    v7.__cat_ = v4;
    sub_1B5DB2410(&v7, "munlock() failed for words file");
    if (munlock(**(a2 + 32), *(*(a2 + 32) + 8)))
    {
      v5 = *__error();
      v6 = std::generic_category();
    }

    else
    {
      v6 = std::system_category();
      v5 = 0;
    }

    *&v7.__val_ = v5;
    v7.__cat_ = v6;
    sub_1B5DB2410(&v7, "munlock() failed for index file");
  }
}

void sub_1B5D2C62C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 20) == 1)
  {
    sub_1B5CE410C(&__p, "words");
    sub_1B5D94200((a2 + 14328), *(a2 + 8), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_1B5CE410C(&__p, "index");
    sub_1B5D94200((a2 + 14329), *a2, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1B5D2C6C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D2C6E8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    v6 = *(result + 8);
    v7 = v6;
    do
    {
      v8 = *v5;
      if (*v5 == v7)
      {
        v9 = v7;
      }

      else
      {
        while (1)
        {
          if (v8 == v4 || (result = sub_1B5D5DD60(v8, v4), result))
          {
            if (*(v8 + 40) == *(v4 + 40))
            {
              break;
            }
          }

          v8 += 88;
          if (v8 == v7)
          {
            v9 = v6;
            v8 = v7;
            goto LABEL_11;
          }
        }

        v9 = v6;
      }

LABEL_11:
      if (v8 == v9)
      {
        if (v9 >= v5[2])
        {
          result = sub_1B5D2C828(v5, v4);
          v6 = result;
        }

        else
        {
          result = sub_1B5D5CABC(v9, v4);
          v10 = *(v4 + 32);
          v11 = *(v4 + 48);
          v12 = *(v4 + 64);
          *(v9 + 80) = *(v4 + 80);
          *(v9 + 48) = v11;
          *(v9 + 64) = v12;
          *(v9 + 32) = v10;
          v6 = v9 + 88;
          v5[1] = v9 + 88;
        }

        v5[1] = v6;
        v9 = v6;
      }

      else
      {
        *(v8 + 32) = *(v8 + 32) + *(v4 + 32);
        *(v8 + 36) = *(v4 + 36);
        *(v8 + 56) = *(v4 + 56);
      }

      v4 += 88;
      v7 = v9;
    }

    while (v4 != a3);
  }

  return result;
}

uint64_t sub_1B5D2C828(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_1B5D04FA0();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    sub_1B5D2C984(v6);
  }

  v17 = 0;
  v18 = 88 * v2;
  v19 = (88 * v2);
  v7 = sub_1B5D5CABC(88 * v2, a2);
  v9 = *(a2 + 48);
  v8 = *(a2 + 64);
  v10 = *(a2 + 80);
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = v9;
  *(v7 + 80) = v10;
  *(v7 + 64) = v8;
  *&v19 = v19 + 88;
  v11 = a1[1];
  v12 = v18 + *a1 - v11;
  sub_1B5D2C9E0(*a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_1B5D2CAC4(&v17);
  return v16;
}

void sub_1B5D2C970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1B5D2CAC4(va);
  _Unwind_Resume(a1);
}

void sub_1B5D2C984(unint64_t a1)
{
  if (a1 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  sub_1B5CE5968();
}

void sub_1B5D2C9E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = 0;
    do
    {
      v7 = a3 + v6;
      sub_1B5D5CABC(a3 + v6, (v5 + v6));
      v8 = *(v5 + v6 + 32);
      v9 = *(v5 + v6 + 48);
      v10 = *(v5 + v6 + 64);
      *(v7 + 80) = *(v5 + v6 + 80);
      *(v7 + 48) = v9;
      *(v7 + 64) = v10;
      *(v7 + 32) = v8;
      v6 += 88;
    }

    while (v5 + v6 != a2);
    do
    {
      v11 = *(v5 + 8);
      if (v11)
      {
        if (*(v5 + 6) == 1)
        {
          free(v11);
        }
      }

      v5 += 88;
    }

    while (v5 != a2);
  }
}

uint64_t sub_1B5D2CAC4(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 88;
      *(a1 + 16) = v2 - 88;
      v5 = *(v2 - 80);
      if (v5 && *(v2 - 82) == 1)
      {
        free(v5);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

unint64_t sub_1B5D2CB30(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2 >= 0xF)
  {
    v3 = *(a1 + 160);
    if (v2 > 0x16)
    {
      operator new();
    }

    v12 = *(a1 + 152);
    goto LABEL_7;
  }

  v12 = *(a1 + 152);
  if (v2)
  {
    v3 = (a1 + 154);
LABEL_7:
    memmove(__dst, v3, v2);
    goto LABEL_8;
  }

  v2 = 0;
LABEL_8:
  *(__dst + v2) = 0;
  v4 = v12;
  v5 = __dst[0];
  if (v12 >= 0)
  {
    v6 = __dst;
  }

  else
  {
    v6 = __dst[0];
  }

  if (v12 >= 0)
  {
    v7 = v12;
  }

  else
  {
    v7 = __dst[1];
  }

  v8 = sub_1B5D2CC6C(v6, v7);
  v9 = (*(**(a1 + 8) + 112))(*(a1 + 8));
  if (v4 < 0)
  {
    operator delete(v5);
  }

  return v9 ^ v8;
}

void sub_1B5D2CC54(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_1B5D2CC6C(uint64_t *a1, unint64_t a2)
{
  if (a2 > 0x20)
  {
    if (a2 <= 0x40)
    {
      v5 = *(a1 + a2 - 16);
      v6 = *a1 - 0x3C5A37A36834CED9 * (v5 + a2);
      v8 = a1[2];
      v7 = a1[3];
      v9 = __ROR8__(v6 + v7, 52);
      v10 = v6 + a1[1];
      v11 = __ROR8__(v10, 7);
      v12 = v10 + v8;
      v13 = *(a1 + a2 - 32) + v8;
      v14 = *(a1 + a2 - 8) + v7;
      v15 = __ROR8__(v14 + v13, 52);
      v16 = v11 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v5 + a2), 37) + v9;
      v17 = __ROR8__(v13, 37);
      v18 = *(a1 + a2 - 24) + v13;
      v19 = __ROR8__(v18, 7);
      v20 = v16 + __ROR8__(v12, 31);
      v21 = v18 + v5;
      v22 = v21 + v14;
      v23 = 0x9AE16A3B2F90404FLL;
      v24 = 0xC3A5C85C97CB3127 * (v22 + v20) - 0x651E95C4D06FBFB1 * (v12 + v7 + v17 + v19 + v15 + __ROR8__(v21, 31));
      v25 = v20 - 0x3C5A37A36834CED9 * (v24 ^ (v24 >> 47));
      return (v25 ^ (v25 >> 47)) * v23;
    }

    v4 = 0x9DDFEA08EB382D69;
    v32 = *(a1 + a2 - 48);
    v33 = *(a1 + a2 - 40);
    v34 = *(a1 + a2 - 24);
    v35 = *(a1 + a2 - 56);
    v36 = *(a1 + a2 - 16);
    v37 = *(a1 + a2 - 8);
    v38 = v35 + v36;
    v39 = 0x9DDFEA08EB382D69 * (v34 ^ ((0x9DDFEA08EB382D69 * (v34 ^ (v32 + a2))) >> 47) ^ (0x9DDFEA08EB382D69 * (v34 ^ (v32 + a2))));
    v40 = 0x9DDFEA08EB382D69 * (v39 ^ (v39 >> 47));
    v41 = *(a1 + a2 - 64) + a2;
    v42 = v41 + v35 + v32;
    v43 = __ROR8__(v42, 44) + v41;
    v44 = __ROR8__(v33 + v41 + v40, 21);
    v45 = v42 + v33;
    v46 = v43 + v44;
    v47 = v38 + *(a1 + a2 - 32) - 0x4B6D499041670D8DLL;
    v48 = v47 + v34 + v36;
    v49 = v48 + v37;
    v50 = __ROR8__(v48, 44) + v47 + __ROR8__(v47 + v33 + v37, 21);
    v52 = *a1;
    v51 = a1 + 4;
    v53 = v52 - 0x4B6D499041670D8DLL * v33;
    v54 = -((a2 - 1) & 0xFFFFFFFFFFFFFFC0);
    do
    {
      v55 = *(v51 - 3);
      v56 = v53 + v45 + v38 + v55;
      v57 = v51[2];
      v58 = v51[3];
      v59 = v51[1];
      v38 = v59 + v45 - 0x4B6D499041670D8DLL * __ROR8__(v38 + v46 + v57, 42);
      v60 = v40 + v49;
      v61 = *(v51 - 2);
      v62 = *(v51 - 1);
      v63 = *(v51 - 4) - 0x4B6D499041670D8DLL * v46;
      v64 = v63 + v49 + v62;
      v65 = v63 + v55 + v61;
      v45 = v65 + v62;
      v66 = __ROR8__(v65, 44) + v63;
      v67 = (0xB492B66FBE98F273 * __ROR8__(v56, 37)) ^ v50;
      v53 = 0xB492B66FBE98F273 * __ROR8__(v60, 33);
      v46 = v66 + __ROR8__(v64 + v67, 21);
      v68 = v53 + v50 + *v51;
      v49 = v68 + v59 + v57 + v58;
      v50 = __ROR8__(v68 + v59 + v57, 44) + v68 + __ROR8__(v38 + v61 + v68 + v58, 21);
      v51 += 8;
      v40 = v67;
      v54 += 64;
    }

    while (v54);
    v69 = v67 - 0x4B6D499041670D8DLL * (v38 ^ (v38 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * (v49 ^ v45)) >> 47) ^ (0x9DDFEA08EB382D69 * (v49 ^ v45)))) ^ ((0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * (v49 ^ v45)) >> 47) ^ (0x9DDFEA08EB382D69 * (v49 ^ v45)))) >> 47));
    v70 = v53 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ v46)) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ v46)))) ^ ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ v46)) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ v46)))) >> 47));
    v71 = 0x9DDFEA08EB382D69 * (v70 ^ ((0x9DDFEA08EB382D69 * (v70 ^ v69)) >> 47) ^ (0x9DDFEA08EB382D69 * (v70 ^ v69)));
    goto LABEL_13;
  }

  if (a2 > 0x10)
  {
    v26 = a1[1];
    v27 = 0xB492B66FBE98F273 * *a1;
    v28 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v27 - v26, 43);
    v29 = v27 + a2 + __ROR8__(v26 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
    v23 = 0x9DDFEA08EB382D69;
    v30 = 0x9DDFEA08EB382D69 * (v29 ^ (v28 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
    v31 = v29 ^ (v30 >> 47) ^ v30;
LABEL_8:
    v25 = 0x9DDFEA08EB382D69 * v31;
    return (v25 ^ (v25 >> 47)) * v23;
  }

  if (a2 < 9)
  {
    if (a2 >= 4)
    {
      v73 = *(a1 + a2 - 4);
      v23 = 0x9DDFEA08EB382D69;
      v74 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v73);
      v31 = v73 ^ (v74 >> 47) ^ v74;
      goto LABEL_8;
    }

    v4 = 0x9AE16A3B2F90404FLL;
    if (!a2)
    {
      return v4;
    }

    v71 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
LABEL_13:
    v4 *= v71 ^ (v71 >> 47);
    return v4;
  }

  v2 = *(a1 + a2 - 8);
  v3 = __ROR8__(v2 + a2, a2);
  return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (v3 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (v3 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ *a1)))) >> 47))) ^ v2;
}

uint64_t sub_1B5D2D0A0(uint64_t a1)
{
  if (*(a1 + 104) > 0)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v6 = a1 + 16;
  v4 = *(v3 + 14360);
  if (v4 == -1)
  {
    goto LABEL_9;
  }

  v7 = &v6;
  if ((off_1F2D5A6C0[v4])(&v7, v3 + 8))
  {
    return 1;
  }

  v6 = a1 + 56;
  v5 = *(v3 + 28720);
  if (v5 == -1)
  {
LABEL_9:
    sub_1B5D24008();
  }

  v7 = &v6;
  return (off_1F2D5A6C0[v5])(&v7, v3 + 14368);
}

CFStringRef sub_1B5D2D168(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (!v1)
  {
    v1 = (a1 + 136);
  }

  return sub_1B5CDFA10(v1, *(a1 + 120));
}

void sub_1B5D2D1D0(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = *(a1 + 8) + 8;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = sub_1B5D2D2A4;
  v3[3] = &unk_1E7C20C50;
  v3[4] = a2;
  v3[5] = a1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = sub_1B5D2D3A0;
  v5[3] = &unk_1E7C20CC8;
  v5[6] = a1 + 152;
  v5[7] = a1 + 120;
  v5[8] = 0;
  v5[9] = &v4;
  v5[4] = v3;
  v5[5] = v2;
  sub_1B5D9A37C(a1 + 16, v2, v5);
}

void sub_1B5D2D2A4(uint64_t a1, uint64_t a2, unsigned __int16 *a3, unsigned __int16 *a4, double a5)
{
  v10 = *(a1 + 40);
  v11 = *(v10 + 208);
  v12 = *MEMORY[0x1E695E480];
  if (qword_1ED833B58[0] != -1)
  {
    dispatch_once(qword_1ED833B58, &unk_1F2D58048);
  }

  Instance = _CFRuntimeCreateInstance();
  sub_1B5D2D6C4(Instance + 16, *(v10 + 8), a2, a3, a4, a5, v11 + a5);
  (*(*(a1 + 32) + 16))();

  CFRelease(Instance);
}

void sub_1B5D2D3A0(uint64_t a1, uint64_t a2, BOOL *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  sub_1B5D7FC58(&v18, *(a1 + 40) + 28744, *(a1 + 48), *(a2 + 84));
  if (v22 == -1)
  {
    sub_1B5D7FC58(&v23, *(a1 + 40) + 28744, *(a1 + 48), *(a2 + 84));
    if (v26 >= 0xFu && v27)
    {
      MEMORY[0x1B8C880C0](v27, 0x1000C8077774924);
    }

    if (v23 >= 0xFu && v24)
    {
      MEMORY[0x1B8C880C0](v24, 0x1000C8077774924);
    }
  }

  else if (v22 == -2)
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    v9 = sub_1B5D99B18(a2, v6);
    v10 = log10f(v9);
    v11 = *(a1 + 72);
    v12 = *(a1 + 32);
    v23 = MEMORY[0x1E69E9820];
    v24 = 0x40000000;
    v25 = sub_1B5D2D3A0;
    v26 = &unk_1E7C20CC8;
    v29 = &v18;
    v30 = v7;
    v31 = v8 + v10;
    v32 = v11;
    v27 = v12;
    v28 = v6;
    sub_1B5D9A37C(a2, v6, &v23);
  }

  else
  {
    v13 = *(a1 + 32);
    sub_1B5D5DC60(&v23, *(a1 + 56), v22);
    v14 = *(a1 + 64);
    v15 = sub_1B5D99B18(a2, *(a1 + 40));
    v16 = log10f(v15);
    (*(v13 + 16))(v13, a2, &v23, &v18, *(a1 + 72), v14 + v16);
    if (v24 && BYTE6(v23) == 1)
    {
      free(v24);
    }
  }

  *a3 = **(a1 + 72) != 0;
  if (v20 >= 0xFu && v21)
  {
    MEMORY[0x1B8C880C0](v21, 0x1000C8077774924);
  }

  if (v18 >= 0xFu && v19)
  {
    MEMORY[0x1B8C880C0](v19, 0x1000C8077774924);
  }

  v17 = *MEMORY[0x1E69E9840];
}

unsigned __int16 *sub_1B5D2D650(unsigned __int16 *a1)
{
  if (a1[12] >= 0xFu)
  {
    v2 = *(a1 + 4);
    if (v2)
    {
      MEMORY[0x1B8C880C0](v2, 0x1000C8077774924);
    }
  }

  if (*a1 >= 0xFu)
  {
    v3 = *(a1 + 1);
    if (v3)
    {
      MEMORY[0x1B8C880C0](v3, 0x1000C8077774924);
    }
  }

  return a1;
}

uint64_t sub_1B5D2D6C4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, unsigned __int16 *a5, double a6, double a7)
{
  *a1 = &unk_1F2D56A48;
  *(a1 + 8) = a2;
  sub_1B5D9A194(a1 + 16, a3);
  sub_1B5D5CABC(a1 + 120, a4);
  v12 = *a5;
  if (v12 >= 0xF)
  {
    *(a1 + 152) = v12;
    operator new[]();
  }

  *(a1 + 152) = *a5;
  *(a1 + 168) = *(a5 + 16);
  v13 = a5[12];
  if (v13 >= 0xF)
  {
    *(a1 + 176) = v13;
    operator new[]();
  }

  *(a1 + 176) = *(a5 + 12);
  *(a1 + 192) = *(a5 + 10);
  *(a1 + 200) = a6;
  *(a1 + 208) = a7;
  return a1;
}

void sub_1B5D2D7D0(_Unwind_Exception *a1)
{
  if (*(v1 + 152) >= 0xFu)
  {
    v3 = *(v1 + 160);
    if (v3)
    {
      MEMORY[0x1B8C880C0](v3, 0x1000C8077774924);
    }
  }

  v4 = *(v1 + 128);
  if (v4)
  {
    if (*(v1 + 126) == 1)
    {
      free(v4);
    }
  }

  sub_1B5D2D834(v1 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D2D834(uint64_t a1)
{
  v2 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v2)
  {
    v3 = sub_1B5D27078(v2);
    MEMORY[0x1B8C880F0](v3, 0x1032C40198927B0);
  }

  sub_1B5D264A0(a1 + 40);
  sub_1B5D264A0(a1);
  return a1;
}

uint64_t sub_1B5D2D88C()
{
  qword_1ED833AF0 = 0;
  *algn_1ED833AF8 = "LXCursor";
  qword_1ED833B00 = 0;
  unk_1ED833B08 = 0;
  qword_1ED833B10 = sub_1B5D2D8E0;
  unk_1ED833B18 = 0u;
  unk_1ED833B28 = 0u;
  result = _CFRuntimeRegisterClass();
  qword_1ED833AE0 = result;
  return result;
}

uint64_t sub_1B5D2D904(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 112);
  if (v3 && (sub_1B5D8A778(v3, v2 + 8) & 1) != 0)
  {
    return 1;
  }

  v7 = a1 + 16;
  v4 = *(v2 + 14360);
  if (v4 == -1)
  {
    goto LABEL_9;
  }

  v8 = &v7;
  if ((off_1F2D5A860[v4])(&v8, v2 + 8))
  {
    return 1;
  }

  v7 = a1 + 56;
  v6 = *(v2 + 28720);
  if (v6 == -1)
  {
LABEL_9:
    sub_1B5D24008();
  }

  v8 = &v7;
  return (off_1F2D5A860[v6])(&v8, v2 + 14368);
}

void sub_1B5D2D9C4(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 0x40000000;
  v2[2] = sub_1B5D2DA30;
  v2[3] = &unk_1E7C20C78;
  v2[4] = a2;
  sub_1B5D2DAC0(a1, v2);
}

void sub_1B5D2DA30(uint64_t a1, uint64_t a2, double a3)
{
  v5 = a3;
  v4 = sub_1B5D2DF44(a2, &v5);
  (*(*(a1 + 32) + 16))(*(a1 + 32));
  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_1B5D2DAC0(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 16);
  v3 = *(a1 + 8);
  v4 = (a1 + 152);
  v35 = (a1 + 16);
  v36 = (a1 + 152);
  v5 = *(v3 + 14360);
  if (v5 == -1)
  {
    sub_1B5D24008();
  }

  v33 = &v35;
  (off_1F2D5A728[v5])(&v31, &v33, v3 + 8);
  v8 = sub_1B5D9A294(v2, v3 + 8);
  v9 = sub_1B5D996DC(v2, v3 + 8);
  if (v8 > 0.0)
  {
    v33 = v2;
    v10 = *(v3 + 14360);
    if (v10 == -1)
    {
      sub_1B5D24008();
    }

    v35 = &v33;
    v9 = (v9 * (off_1F2D5A5F0[v10])(&v35, v3 + 8)) / v8;
  }

  if ((LODWORD(v9) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    __assert_rtn("probability_of_baseline_given_termination", "TIStaticDictionaryImplCursor.cpp", 124, "isfinite(result)");
  }

  v11 = v31;
  v12 = v32;
  while (v11 != v12)
  {
    *(v11 + 32) = v9 * *(v11 + 32);
    v11 += 88;
  }

  v33 = (a1 + 56);
  v34 = v4;
  v13 = *(v3 + 28720);
  if (v13 == -1)
  {
    sub_1B5D24008();
  }

  v37 = &v33;
  (off_1F2D5A728[v13])(&v35, &v37, v3 + 14368);
  v14 = v35;
  v15 = v36;
  if (v35 != v36)
  {
    v16 = v35;
    do
    {
      *(v16 + 8) = (1.0 - v9) * *(v16 + 8);
      v16 += 11;
    }

    while (v16 != v15);
  }

  sub_1B5D2C6E8(&v31, v14, v15);
  if (*(a1 + 104) > 0)
  {
    v17 = *(v3 + 30128);
    if (!v17)
    {
      __assert_rtn("derive_words", "TIStaticDictionaryImplCursor.cpp", 347, "converter");
    }

    v18 = v31;
    v19 = v32;
    if (v31 != v32)
    {
      while ((*(v18 + 59) & 0x20) == 0 && (sub_1B5D4D950(v17, *(v18 + 60), 0, 0) & 1) == 0)
      {
        v18 += 88;
        if (v18 == v19)
        {
          goto LABEL_35;
        }
      }

      if (v18 != v19)
      {
        v20 = v18 + 88;
        if (v18 + 88 != v19)
        {
          do
          {
            if ((*(v20 + 59) & 0x20) == 0 && (sub_1B5D4D950(v17, *(v20 + 60), 0, 0) & 1) == 0)
            {
              sub_1B5D5CBBC(v18, v20);
              v21 = *(v20 + 32);
              v22 = *(v20 + 48);
              v23 = *(v20 + 64);
              *(v18 + 80) = *(v20 + 80);
              *(v18 + 48) = v22;
              *(v18 + 64) = v23;
              *(v18 + 32) = v21;
              v18 += 88;
            }

            v20 += 88;
          }

          while (v20 != v19);
          v19 = v32;
        }
      }
    }

    if (v18 != v19)
    {
      while (v19 != v18)
      {
        v24 = *(v19 - 80);
        if (v24 && *(v19 - 82) == 1)
        {
          free(v24);
        }

        v19 -= 88;
      }

      v32 = v18;
    }

LABEL_35:
    v25 = *(a1 + 112);
    if (v25)
    {
      sub_1B5D8ACC0(&v33, v25, v3 + 8, v4);
      sub_1B5D2C6E8(&v31, v33, v34);
      v38 = &v33;
      sub_1B5D26264(&v38);
    }
  }

  v33 = &v35;
  sub_1B5D26264(&v33);
  LOBYTE(v35) = 0;
  v26 = v31;
  for (i = v32; v26 != i; v26 += 88)
  {
    v28 = (*(*a1 + 80))(a1);
    v29 = v28 + (*(*a1 + 88))(a1);
    v30 = log10f(*(v26 + 32));
    (*(a2 + 16))(a2, v26, &v35, v29 + v30);
    if (v35)
    {
      break;
    }
  }

  v35 = &v31;
  sub_1B5D26264(&v35);
}

void sub_1B5D2DED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void ***a20)
{
  a20 = &a13;
  sub_1B5D26264(&a20);
  a13 = &a16;
  sub_1B5D26264(&a13);
  a20 = &a10;
  sub_1B5D26264(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D2DF44(uint64_t a1, uint64_t *a2)
{
  v4 = *MEMORY[0x1E695E480];
  if (qword_1ED833AC8 != -1)
  {
    dispatch_once(&qword_1ED833AC8, &unk_1F2D58068);
  }

  Instance = _CFRuntimeCreateInstance();
  v6 = *a2;
  sub_1B5D5CABC(Instance + 16, a1);
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v9 = *(a1 + 64);
  *(Instance + 96) = *(a1 + 80);
  *(Instance + 64) = v8;
  *(Instance + 80) = v9;
  *(Instance + 48) = v7;
  *(Instance + 104) = v6;
  *(Instance + 112) = 0;
  *(Instance + 120) = 0;
  return Instance;
}

uint64_t sub_1B5D2E010()
{
  qword_1ED833A60 = 0;
  *algn_1ED833A68 = "LXEntry";
  qword_1ED833A70 = 0;
  unk_1ED833A78 = 0;
  qword_1ED833A80 = sub_1B5D2E064;
  unk_1ED833A88 = 0u;
  unk_1ED833A98 = 0u;
  result = _CFRuntimeRegisterClass();
  qword_1ED833A50 = result;
  return result;
}

void sub_1B5D2E064(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    if (*(a1 + 22) == 1)
    {
      free(v2);
    }
  }
}

uint64_t sub_1B5D2E084(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 104);
  if (v3 < 1)
  {
    v7 = a1 + 16;
    v5 = *(v2 + 14360);
    if (v5 != -1)
    {
      v8 = &v7;
      if ((off_1F2D5A658[v5])(&v8, v2 + 8))
      {
        return 1;
      }

      v7 = a1 + 56;
      v6 = *(v2 + 28720);
      if (v6 != -1)
      {
        v8 = &v7;
        return (off_1F2D5A658[v6])(&v8, v2 + 14368);
      }
    }

    sub_1B5D24008();
  }

  if (v3 == 2)
  {
    return 1;
  }

  result = *(a1 + 112);
  if (result)
  {

    return sub_1B5D8BAD4(result, v2 + 8);
  }

  return result;
}

uint64_t sub_1B5D2E18C(uint64_t a1, unsigned __int16 *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  sub_1B5D9A194(v37, a1 + 16);
  if (*(a1 + 152) >= 0xFuLL)
  {
    LOWORD(v33) = *(a1 + 152);
    operator new[]();
  }

  v33 = *(a1 + 152);
  v4 = *(a1 + 176);
  v34 = *(a1 + 168);
  if (v4 >= 0xF)
  {
    LOWORD(v35) = v4;
    operator new[]();
  }

  v35 = *(a1 + 176);
  v36 = *(a1 + 192);
  if (*(a2 + 1))
  {
    v5 = *(a2 + 1);
  }

  else
  {
    v5 = (a2 + 8);
  }

  v29 = v5;
  v22 = a2;
  v6 = *a2;
  v30 = 0;
  v31 = v6;
  v32 = 0;
  sub_1B5CDCF70(&v29);
  v25 = v5;
  v26 = v6;
  v27 = v6;
  v28 = 0;
  sub_1B5CDCF70(&v25);
  v7 = v25;
  v8 = 0.0;
  v9 = v26;
  while (1)
  {
    if (v29 != v7)
    {
      __assert_rtn("operator!=", "TIString.h", 202, "p==rhs.p");
    }

    if (v30 == v9)
    {
      break;
    }

    v10 = v32;
    sub_1B5CDC2F8(&v40, *(a1 + 8) + 8);
    (*(*v40 + 16))(&v23);
    if (*(&v40 + 1))
    {
      sub_1B5CDD904(*(&v40 + 1));
    }

    v11 = v33;
    sub_1B5CDD368(&v40, *(a1 + 8) + 28752, &v33, v10, &v23);
    if (v11 >= 0xF && *(&v33 + 1))
    {
      MEMORY[0x1B8C880C0](*(&v33 + 1), 0x1000C8077774924);
    }

    v33 = v40;
    if (v40 >= 0xFu)
    {
      LOWORD(v40) = 0;
    }

    v34 = v41;
    if (v35 >= 0xFu && *(&v35 + 1))
    {
      MEMORY[0x1B8C880C0](*(&v35 + 1), 0x1000C8077774924);
    }

    v35 = v42;
    if (v42 >= 0xFu)
    {
      LOWORD(v42) = 0;
    }

    v36 = v43;
    if (v40 >= 0xFu && *(&v40 + 1))
    {
      MEMORY[0x1B8C880C0](*(&v40 + 1), 0x1000C8077774924);
    }

    while (sub_1B5D99510(v37) && v11 < v33)
    {
      if (v33 <= 0xEu)
      {
        v12 = &v33 + 2;
      }

      else
      {
        v12 = *(&v33 + 1);
      }

      v13 = sub_1B5D995A8(v37, *(a1 + 8) + 8, v12[v11]);
      v8 = v8 + log10f(v13);
      ++v11;
    }

    v14 = sub_1B5D99510(v37);
    if (v23 >= 0xFu && v24)
    {
      MEMORY[0x1B8C880C0](v24, 0x1000C8077774924);
    }

    if (!v14)
    {
      Instance = 0;
      goto LABEL_44;
    }

    sub_1B5CDCF70(&v29);
  }

  if ((sub_1B5D99510(v37) & 1) == 0)
  {
    __assert_rtn("create_child", "LXCursor.cpp", 170, "impl.valid()");
  }

  sub_1B5D5DD0C(&v40, (a1 + 120), v22);
  v15 = *(a1 + 208);
  v16 = *MEMORY[0x1E695E480];
  if (qword_1ED833B58[0] != -1)
  {
    dispatch_once(qword_1ED833B58, &unk_1F2D58048);
  }

  Instance = _CFRuntimeCreateInstance();
  sub_1B5D2D6C4(Instance + 16, *(a1 + 8), v37, &v40, &v33, v8, v15 + v8);
  if (*(&v40 + 1) && BYTE6(v40) == 1)
  {
    free(*(&v40 + 1));
  }

LABEL_44:
  if (v35 >= 0xFu && *(&v35 + 1))
  {
    MEMORY[0x1B8C880C0](*(&v35 + 1), 0x1000C8077774924);
  }

  if (v33 >= 0xFu && *(&v33 + 1))
  {
    MEMORY[0x1B8C880C0](*(&v33 + 1), 0x1000C8077774924);
  }

  v18 = v39;
  v39 = 0;
  if (v18)
  {
    v19 = sub_1B5D27078(v18);
    MEMORY[0x1B8C880F0](v19, 0x1032C40198927B0);
  }

  sub_1B5D264A0(&v38);
  sub_1B5D264A0(v37);
  v20 = *MEMORY[0x1E69E9840];
  return Instance;
}

void sub_1B5D2E630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned __int16 a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a19 >= 0xFu)
  {
    if (a20)
    {
      MEMORY[0x1B8C880C0](a20, 0x1000C8077774924);
    }
  }

  sub_1B5D2D834(&a26);
  _Unwind_Resume(a1);
}

void sub_1B5D2E6F8(uint64_t a1)
{
  *a1 = &unk_1F2D56A48;
  if (*(a1 + 176) >= 0xFu)
  {
    v2 = *(a1 + 184);
    if (v2)
    {
      MEMORY[0x1B8C880C0](v2, 0x1000C8077774924);
    }
  }

  if (*(a1 + 152) >= 0xFu)
  {
    v3 = *(a1 + 160);
    if (v3)
    {
      MEMORY[0x1B8C880C0](v3, 0x1000C8077774924);
    }
  }

  v4 = *(a1 + 128);
  if (v4 && *(a1 + 126) == 1)
  {
    free(v4);
  }

  v5 = *(a1 + 112);
  *(a1 + 112) = 0;
  if (v5)
  {
    v6 = sub_1B5D27078(v5);
    MEMORY[0x1B8C880F0](v6, 0x1032C40198927B0);
  }

  sub_1B5D264A0(a1 + 56);
  sub_1B5D264A0(a1 + 16);

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5D2E7F4(uint64_t a1)
{
  *a1 = &unk_1F2D56A48;
  if (*(a1 + 176) >= 0xFu)
  {
    v2 = *(a1 + 184);
    if (v2)
    {
      MEMORY[0x1B8C880C0](v2, 0x1000C8077774924);
    }
  }

  if (*(a1 + 152) >= 0xFu)
  {
    v3 = *(a1 + 160);
    if (v3)
    {
      MEMORY[0x1B8C880C0](v3, 0x1000C8077774924);
    }
  }

  v4 = *(a1 + 128);
  if (v4 && *(a1 + 126) == 1)
  {
    free(v4);
  }

  v5 = *(a1 + 112);
  *(a1 + 112) = 0;
  if (v5)
  {
    v6 = sub_1B5D27078(v5);
    MEMORY[0x1B8C880F0](v6, 0x1032C40198927B0);
  }

  sub_1B5D264A0(a1 + 56);
  sub_1B5D264A0(a1 + 16);
  return a1;
}

uint64_t sub_1B5D2E8D0(uint64_t result, _BYTE *a2, uint64_t a3)
{
  v5 = result;
  v6[6] = MEMORY[0x1E69E9820];
  v6[7] = 0x40000000;
  v6[8] = sub_1B5D2EA00;
  v6[9] = &unk_1E7C20BB0;
  v6[10] = a3;
  v6[11] = a2;
  if (result)
  {
    result = (*(*(result + 16) + 48))();
  }

  if (!*a2)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = sub_1B5D2EA40;
    v6[3] = &unk_1E7C20BD8;
    v6[4] = a3;
    v6[5] = a2;
    if (v5)
    {
      return (*(*(v5 + 16) + 64))(v5 + 16, v6);
    }
  }

  return result;
}

uint64_t sub_1B5D2EA00(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  **(a1 + 40) = *a3;
  return result;
}

uint64_t sub_1B5D2EA40(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = sub_1B5D2E8D0(a2, a3, *(a1 + 32));
  **(a1 + 40) = *a3;
  return result;
}

uint64_t LXCursorEnumerateEntries(uint64_t result)
{
  if (result)
  {
    return (*(*(result + 16) + 48))();
  }

  return result;
}

uint64_t LXCursorEnumerateChildren(uint64_t result)
{
  if (result)
  {
    return (*(*(result + 16) + 64))();
  }

  return result;
}

void sub_1B5D2EAD8(const void *a1, uint64_t a2)
{
  v92 = 0;
  v93 = &v92;
  v94 = 0x4802000000;
  v95 = sub_1B5D2F3A0;
  v96 = sub_1B5D2F3C8;
  v97 = 0;
  v98 = 0;
  v99 = 0;
  v100 = &unk_1B5DC4897;
  v83 = 0;
  v84 = &v83;
  v85 = 0x4802000000;
  v86 = sub_1B5D2F3E0;
  v87 = sub_1B5D2F408;
  __p = 0;
  v89 = 0;
  v90 = 0;
  v91 = &unk_1B5DC4898;
  v3 = CFRetain(a1);
  v4 = v3;
  v5 = v98;
  if (v98 >= v99)
  {
    v7 = (v98 - v97) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_1B5D04FA0();
    }

    v8 = (v99 - v97) >> 2;
    if (v8 <= v7 + 1)
    {
      v8 = v7 + 1;
    }

    if (v99 - v97 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      sub_1B5D2F420(v9);
    }

    v10 = (8 * v7);
    *v10 = v4;
    v6 = 8 * v7 + 8;
    v11 = v10 - (v98 - v97);
    memcpy(v11, v97, v98 - v97);
    v12 = v97;
    v97 = v11;
    v98 = v6;
    v99 = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v98 = v3;
    v6 = (v5 + 8);
  }

  v98 = v6;
  sub_1B5D2F468(v97, v6, (v6 - v97) >> 3);
  v82 = 0;
  v13 = v93;
  v14 = v93[5];
  v16 = v93 + 6;
  v15 = v93[6];
  if (v14 == v15)
  {
    goto LABEL_57;
  }

  do
  {
    v17 = *v14;
    cf = *v14;
    v18 = v15 - v14;
    if (v18 < 2)
    {
      goto LABEL_28;
    }

    v72 = v17;
    v73 = v15;
    v19 = 0;
    v20 = v14;
    do
    {
      v21 = &v20[v19 + 1];
      v22 = (2 * v19) | 1;
      v23 = 2 * v19 + 2;
      if (v23 >= v18)
      {
        goto LABEL_24;
      }

      v24 = v20[v19 + 2];
      if (*v21)
      {
        v25 = (*(*(*v21 + 16) + 80))();
        if (v24)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v25 = -INFINITY;
        if (v24)
        {
LABEL_19:
          (*(*(v24 + 16) + 80))(v24 + 16);
          goto LABEL_22;
        }
      }

      v26 = -INFINITY;
LABEL_22:
      if (v25 < v26)
      {
        v21 += 8;
        v22 = v23;
      }

LABEL_24:
      *v20 = *v21;
      v20 = v21;
      v19 = v22;
    }

    while (v22 <= ((v18 - 2) >> 1));
    v27 = v73 - 1;
    if (v21 == v73 - 1)
    {
      *v21 = v72;
    }

    else
    {
      *v21 = *v27;
      *v27 = v72;
      sub_1B5D2F468(v14, v21 + 8, (v21 + 8 - v14) >> 3);
    }

LABEL_28:
    *v16 -= 8;
    v80[0] = MEMORY[0x1E69E9820];
    v80[1] = 0x40000000;
    v80[2] = sub_1B5D2F5E8;
    v80[3] = &unk_1E7C20C00;
    v80[4] = &v83;
    if (cf)
    {
      v28 = cf + 16;
      (*(*(cf + 2) + 48))(cf + 16, v80);
      v75 = MEMORY[0x1E69E9820];
      v76 = 0x40000000;
      v77 = sub_1B5D2F70C;
      v78 = &unk_1E7C20C28;
      v79 = &v92;
      (*(*v28 + 64))(v28, &v75);
    }

    else
    {
      v75 = MEMORY[0x1E69E9820];
      v76 = 0x40000000;
      v77 = sub_1B5D2F70C;
      v78 = &unk_1E7C20C28;
      v79 = &v92;
    }

    v29 = v84;
    v30 = v93;
    do
    {
      v31 = v29[5];
      v32 = v29[6];
      if (v31 == v32)
      {
        break;
      }

      v33 = v30[5];
      if (v33 != v30[6])
      {
        v34 = *(*v31 + 104);
        if (v34 >= (*(*(*v33 + 16) + 80))())
        {
          v31 = v29[5];
          v32 = v29[6];
        }

        else
        {
          if ((v30[6] - v30[5]) < 0x27101)
          {
            break;
          }

          v31 = v29[5];
          v32 = v29[6];
          if ((v32 - v31) < 0x3E81)
          {
            break;
          }
        }
      }

      v35 = *v31;
      v101 = *v31;
      v36 = (v32 - v31) >> 3;
      if (v36 >= 2)
      {
        v37 = 0;
        v38 = v31;
        do
        {
          v39 = v38;
          v38 += v37 + 1;
          v40 = 2 * v37;
          v37 = (2 * v37) | 1;
          v41 = v40 + 2;
          if (v41 < v36 && *(*v38 + 104) < *(v38[1] + 104))
          {
            ++v38;
            v37 = v41;
          }

          *v39 = *v38;
        }

        while (v37 <= ((v36 - 2) >> 1));
        v42 = (v32 - 8);
        if (v38 == v42)
        {
          *v38 = v35;
        }

        else
        {
          *v38 = *v42;
          *v42 = v35;
          sub_1B5D2F800(v31, (v38 + 1), (v38 - v31 + 8) >> 3);
        }
      }

      v29[6] -= 8;
      v43 = v101;
      (*(a2 + 16))(a2, v101, &v82);
      v44 = v82;
      if (v43)
      {
        CFRelease(v43);
      }
    }

    while (!v44);
    if (cf)
    {
      CFRelease(cf);
    }

    v13 = v93;
    v14 = v93[5];
    v16 = v93 + 6;
    v15 = v93[6];
  }

  while (v14 != v15 && v82 == 0);
LABEL_57:
  v46 = v84[5];
  if (v46 != v84[6])
  {
    do
    {
      CFRelease(*v46);
      v47 = v84;
      v48 = v84[5];
      v49 = v84[6];
      v50 = (v49 - v48) >> 3;
      if (v50 >= 2)
      {
        v51 = 0;
        v52 = *v48;
        v53 = v84[5];
        do
        {
          v54 = v53;
          v53 += v51 + 1;
          v55 = 2 * v51;
          v51 = (2 * v51) | 1;
          v56 = v55 + 2;
          if (v56 < v50 && *(*v53 + 104) < *(v53[1] + 104))
          {
            ++v53;
            v51 = v56;
          }

          *v54 = *v53;
        }

        while (v51 <= ((v50 - 2) >> 1));
        v57 = (v49 - 8);
        if (v53 == v57)
        {
          *v53 = v52;
        }

        else
        {
          *v53 = *v57;
          *v57 = v52;
          sub_1B5D2F800(v48, (v53 + 1), v53 + 1 - v48);
        }
      }

      v47[6] -= 8;
      v46 = v84[5];
    }

    while (v46 != v84[6]);
    goto LABEL_70;
  }

LABEL_71:
  v58 = v13[5];
  if (v58 != v13[6])
  {
    CFRelease(*v58);
    v59 = v93;
    v60 = v93[5];
    v61 = v93[6];
    v62 = (v61 - v60) >> 3;
    if (v62 < 2)
    {
      goto LABEL_86;
    }

    v63 = 0;
    v74 = *v60;
    v64 = v93[5];
    while (1)
    {
      v65 = &v64[v63 + 1];
      v66 = (2 * v63) | 1;
      v67 = 2 * v63 + 2;
      if (v67 < v62)
      {
        break;
      }

LABEL_82:
      *v64 = *v65;
      v64 = v65;
      v63 = v66;
      if (v66 > ((v62 - 2) >> 1))
      {
        v71 = (v61 - 8);
        if (v65 == v61 - 8)
        {
          *v65 = v74;
        }

        else
        {
          *v65 = *v71;
          *v71 = v74;
          sub_1B5D2F468(v60, v65 + 8, (v65 + 8 - v60) >> 3);
        }

LABEL_86:
        v59[6] -= 8;
LABEL_70:
        v13 = v93;
        goto LABEL_71;
      }
    }

    v68 = v64[v63 + 2];
    if (*v65)
    {
      v69 = (*(*(*v65 + 16) + 80))();
      if (v68)
      {
        goto LABEL_77;
      }

LABEL_79:
      v70 = -INFINITY;
    }

    else
    {
      v69 = -INFINITY;
      if (!v68)
      {
        goto LABEL_79;
      }

LABEL_77:
      (*(*(v68 + 16) + 80))(v68 + 16);
    }

    if (v69 < v70)
    {
      v65 += 8;
      v66 = v67;
    }

    goto LABEL_82;
  }

  _Block_object_dispose(&v83, 8);
  if (__p)
  {
    v89 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v92, 8);
  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }
}

__n128 sub_1B5D2F3A0(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  v3 = *(a2 + 64);
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  a1[8] = v3;
  return result;
}

void sub_1B5D2F3C8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

__n128 sub_1B5D2F3E0(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  v3 = *(a2 + 64);
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  a1[8] = v3;
  return result;
}

void sub_1B5D2F408(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void sub_1B5D2F420(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_1B5CE5968();
}

void sub_1B5D2F468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = v3 >> 1;
    v6 = (a1 + 8 * (v3 >> 1));
    v7 = (a2 - 8);
    v8 = *(a2 - 8);
    if (*v6)
    {
      v9 = (*(*(*v6 + 16) + 80))();
      if (v8)
      {
LABEL_4:
        (*(*(v8 + 16) + 80))(v8 + 16);
LABEL_7:
        if (v9 >= v10)
        {
          return;
        }

        v11 = *v7;
        v12 = *v7 + 16;
        while (1)
        {
          v13 = v6;
          *v7 = *v6;
          if (!v5)
          {
LABEL_16:
            *v13 = v11;
            return;
          }

          v5 = (v5 - 1) >> 1;
          v6 = (a1 + 8 * v5);
          if (*v6)
          {
            v14 = (*(*(*v6 + 16) + 80))();
            if (!v11)
            {
              goto LABEL_14;
            }
          }

          else
          {
            v14 = -INFINITY;
            if (!v11)
            {
LABEL_14:
              v15 = -INFINITY;
              goto LABEL_15;
            }
          }

          (*(*v12 + 80))(v12);
LABEL_15:
          v7 = v13;
          if (v14 >= v15)
          {
            goto LABEL_16;
          }
        }
      }
    }

    else
    {
      v9 = -INFINITY;
      if (v8)
      {
        goto LABEL_4;
      }
    }

    v10 = -INFINITY;
    goto LABEL_7;
  }
}

uint64_t sub_1B5D2F5E8(uint64_t a1, CFTypeRef cf)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = CFRetain(cf);
  v5 = v2[6];
  v4 = v2[7];
  if (v5 >= v4)
  {
    v7 = v2[5];
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 3;
    v10 = v9 + 1;
    if ((v9 + 1) >> 61)
    {
      sub_1B5D04FA0();
    }

    v11 = v4 - v7;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 61))
      {
        operator new();
      }

      sub_1B5CE5968();
    }

    v13 = v9;
    v14 = (8 * v9);
    v15 = &v14[-v13];
    *v14 = v3;
    v6 = (v14 + 1);
    memcpy(v15, v7, v8);
    v2[5] = v15;
    v2[6] = v6;
    v2[7] = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = v3;
    v6 = (v5 + 8);
  }

  v2[6] = v6;
  v16 = v2[5];

  return sub_1B5D2F800(v16, v6, (v6 - v16) >> 3);
}

void sub_1B5D2F70C(uint64_t a1, CFTypeRef cf)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = CFRetain(cf);
  v4 = v3;
  v6 = v2[6];
  v5 = v2[7];
  if (v6 >= v5)
  {
    v8 = v2[5];
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      sub_1B5D04FA0();
    }

    v10 = v5 - v8;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      sub_1B5D2F420(v12);
    }

    v13 = (8 * v9);
    *v13 = v4;
    v7 = 8 * v9 + 8;
    v14 = v2[5];
    v15 = v2[6] - v14;
    v16 = v13 - v15;
    memcpy(v13 - v15, v14, v15);
    v17 = v2[5];
    v2[5] = v16;
    v2[6] = v7;
    v2[7] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v6 = v3;
    v7 = (v6 + 1);
  }

  v2[6] = v7;
  v18 = v2[5];

  sub_1B5D2F468(v18, v7, (v7 - v18) >> 3);
}

uint64_t sub_1B5D2F800(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = (a3 - 2) >> 1;
    v4 = (result + 8 * v3);
    v5 = *v4;
    v8 = *(a2 - 8);
    v6 = (a2 - 8);
    v7 = v8;
    v9 = *(v8 + 104);
    if (*(*v4 + 104) < v9)
    {
      do
      {
        v10 = v4;
        *v6 = v5;
        if (!v3)
        {
          break;
        }

        v3 = (v3 - 1) >> 1;
        v4 = (result + 8 * v3);
        v5 = *v4;
        v6 = v10;
      }

      while (*(*v4 + 104) < v9);
      *v10 = v7;
    }
  }

  return result;
}

uint64_t LXCursorIsRoot(uint64_t result)
{
  if (result)
  {
    return (*(*(result + 16) + 32))();
  }

  return result;
}

uint64_t LXCursorCopyTraversedCharacters(uint64_t result)
{
  if (result)
  {
    return (*(*(result + 16) + 112))();
  }

  return result;
}

uint64_t LXCursorLastTraversedCharacter(uint64_t result)
{
  if (result)
  {
    return (*(*(result + 16) + 120))();
  }

  return result;
}

double LXCursorConditionalProbability(uint64_t a1)
{
  if (!a1)
  {
    return -INFINITY;
  }

  (*(*(a1 + 16) + 72))();
  return result;
}

double LXCursorPrefixProbability(uint64_t a1)
{
  if (!a1)
  {
    return -INFINITY;
  }

  (*(*(a1 + 16) + 80))();
  return result;
}

uint64_t LXCursorUsageCount(uint64_t result)
{
  if (result)
  {
    return (*(*(result + 16) + 96))();
  }

  return result;
}

uint64_t LXCursorUsageCountRecursive(uint64_t result)
{
  if (result)
  {
    return (*(*(result + 16) + 104))();
  }

  return result;
}

double LXCursorTerminationProbability(uint64_t a1)
{
  if (!a1)
  {
    return -INFINITY;
  }

  (*(*(a1 + 16) + 88))();
  return result;
}

uint64_t LXCursorTerminatesWordStem(uint64_t result)
{
  if (result)
  {
    return (*(*(result + 16) + 128))();
  }

  return result;
}

uint64_t LXCursorCreateByAdvancing(uint64_t a1, const __CFString *a2)
{
  v2 = a1;
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    sub_1B5CDC4B4(v5, a2);
    v2 = (*(*(v2 + 16) + 16))(v2 + 16, v5);
    if (v6)
    {
      if (v5[6] == 1)
      {
        free(v6);
      }
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

void sub_1B5D2FAD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, void *a13)
{
  if (a13)
  {
    if (a12 == 1)
    {
      free(a13);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t LXCursorCreateByAdvancingWithUTF8(uint64_t a1, char *a2, unsigned __int16 a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    sub_1B5D5CA18(&v8, a2, a3);
    v4 = (*(*(a1 + 16) + 16))(a1 + 16, &v8);
    if (*&v9[4] && v9[2] == 1)
    {
      free(*&v9[4]);
    }
  }

  else
  {
    if (qword_1EB90CA68 != -1)
    {
      dispatch_once(&qword_1EB90CA68, &unk_1F2D58028);
    }

    v5 = qword_1EB90CA60;
    if (os_log_type_enabled(qword_1EB90CA60, OS_LOG_TYPE_FAULT))
    {
      v8 = 136315138;
      *v9 = "LXCursorCreateByAdvancingWithUTF8";
      _os_log_fault_impl(&dword_1B5CDB000, v5, OS_LOG_TYPE_FAULT, "%s: Missing cursor", &v8, 0xCu);
    }

    v4 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_1B5D2FC38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, void *a12)
{
  if (a12)
  {
    if (a11 == 1)
    {
      free(a12);
    }
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_1B5D2FC64()
{
  result = os_log_create("com.apple.Lexicon", "Cursor");
  qword_1EB90CA60 = result;
  return result;
}

uint64_t LXCursorCreateByAdvancingWithUTF16(uint64_t a1, UChar *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __assert_rtn("LXCursorCreateByAdvancingWithUTF16", "LXCursor.cpp", 392, "false && missing cursor");
  }

  v7 = 0x100000;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  sub_1B5D5D888(&v7, a2, a3);
  v4 = (*(*(a1 + 16) + 16))(a1 + 16, &v7);
  if (v10 && v9 == 1)
  {
    free(v10);
  }

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_1B5D2FD78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, void *a13)
{
  if (a13)
  {
    v14 = a12 == 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    free(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LXCursorCreateByAdvancingWithUTF32(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __assert_rtn("LXCursorCreateByAdvancingWithUTF32", "LXCursor.cpp", 403, "false && missing cursor");
  }

  v3 = a3;
  v10 = 0x100000;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  for (i = 0; v3; --v3)
  {
    v6 = *a2++;
    sub_1B5D5CC40(&v10, v6);
  }

  v7 = (*(*(a1 + 16) + 16))(a1 + 16, &v10);
  if (v13 && v12 == 1)
  {
    free(v13);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_1B5D2FEA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, void *a13)
{
  if (a13)
  {
    v14 = a12 == 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    free(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LXCursorHasChildren(uint64_t result)
{
  if (result)
  {
    return (*(*(result + 16) + 56))();
  }

  return result;
}

void LXCursorEnumerateEntriesRecursively(const void *a1, uint64_t a2)
{
  if (a1)
  {
    sub_1B5D2EAD8(a1, a2);
  }
}

void LXCursorEnumerateEntriesRecursivelyWithPolicy(const void *a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_5:
    v3 = *MEMORY[0x1E69E9840];
    return;
  }

  if (a2 != 1)
  {
    if (a2)
    {
      if (qword_1EB90CA68 != -1)
      {
        dispatch_once(&qword_1EB90CA68, &unk_1F2D58028);
      }

      v5 = qword_1EB90CA60;
      if (os_log_type_enabled(qword_1EB90CA60, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v8 = a2;
        _os_log_error_impl(&dword_1B5CDB000, v5, OS_LOG_TYPE_ERROR, "Unsupported enumeration policy: %ld", buf, 0xCu);
      }

      __assert_rtn("LXCursorEnumerateEntriesRecursivelyWithPolicy", "LXCursor.cpp", 451, "false && unsupported enumeration policy");
    }

    buf[0] = 0;
    sub_1B5D2E8D0(a1, buf, a3);
    goto LABEL_5;
  }

  v4 = *MEMORY[0x1E69E9840];

  sub_1B5D2EAD8(a1, a3);
}

uint64_t LXCursorHasEntries(uint64_t result)
{
  if (result)
  {
    return (*(*(result + 16) + 40))();
  }

  return result;
}

uint64_t LXCursorCopyFirstEntry(uint64_t a1)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  if (a1)
  {
    (*(*(a1 + 16) + 48))();
    v1 = v4[3];
  }

  else
  {
    v1 = 0;
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_1B5D30194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFTypeRef sub_1B5D301AC(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(*(*(a1 + 32) + 8) + 24) = a2;
  result = CFRetain(*(*(*(a1 + 32) + 8) + 24));
  *a3 = 1;
  return result;
}

uint64_t LXCursorHash(uint64_t result)
{
  if (result)
  {
    return (*(*(result + 16) + 136))();
  }

  return result;
}

void sub_1B5D3021C(uint64_t a1, size_t __n)
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
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    sub_1B5CE5968();
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
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

void sub_1B5D30420(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_1B5D304B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1B5D304D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = v3 >> 1;
    v6 = a1 + 32 * (v3 >> 1);
    v7 = *(a2 - 8);
    if (*(v6 + 24) > v7)
    {
      v8 = 0;
      v9 = a2 - 32;
      v13 = *(a2 - 32);
      v10 = *(a2 - 16);
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      while (1)
      {
        v11 = v6;
        if (v8)
        {
          *(v9 + 8) = v8;
          operator delete(v8);
          *v9 = 0;
          *(v9 + 8) = 0;
          *(v9 + 16) = 0;
        }

        *v9 = *v11;
        *(v9 + 16) = *(v11 + 16);
        *v11 = 0;
        *(v11 + 8) = 0;
        *(v11 + 16) = 0;
        *(v9 + 24) = *(v11 + 24);
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = a1 + 32 * v5;
        if (*(v6 + 24) <= v7)
        {
          break;
        }

        v8 = *v11;
        v9 = v11;
      }

      result = v13;
      *v11 = v13;
      *(v11 + 16) = v10;
      *(v11 + 24) = v7;
    }
  }

  return result;
}

uint64_t sub_1B5D305BC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1B5D320C0(result, a4);
  }

  return result;
}

void sub_1B5D30614(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D30630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = 0;
    v4 = *a1;
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    v7 = a1;
    v8 = *(a1 + 24);
    do
    {
      v9 = v7 + 32 * v3 + 32;
      v10 = (2 * v3) | 1;
      v11 = 2 * v3 + 2;
      if (v11 < a3)
      {
        v12 = *(v9 + 24);
        v13 = *(v9 + 56);
        v9 += 32 * (v12 > v13);
        if (v12 > v13)
        {
          v10 = v11;
        }
      }

      v14 = *(v9 + 24);
      *v7 = *v9;
      *(v7 + 16) = *(v9 + 16);
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *(v7 + 24) = v14;
      v7 = v9;
      v3 = v10;
    }

    while (v10 <= ((a3 - 2) >> 1));
    if (a2 - 32 == v9)
    {
      *v9 = v4;
      *(v9 + 8) = v5;
      *(v9 + 16) = v6;
      *(v9 + 24) = v8;
    }

    else
    {
      v15 = *(a2 - 8);
      *v9 = *(a2 - 32);
      *(v9 + 16) = *(a2 - 16);
      *(v9 + 24) = v15;
      *(a2 - 32) = v4;
      *(a2 - 24) = v5;
      *(a2 - 16) = v6;
      *(a2 - 8) = v8;
      sub_1B5D304D4(a1, v9 + 32, (v9 + 32 - a1) >> 5);
    }
  }
}

uint64_t sub_1B5D30714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (a1 == a2)
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    sub_1B5D308DC(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
    v6 = *a1;
    v7 = *(a1 + 8);
  }

  v9 = *a3;
  v8 = *(a3 + 8);
  v10 = v8 - *a3;
  if (v10 >> 3 >= 1)
  {
    v11 = *(a1 + 16);
    if (v11 - v7 >= v10)
    {
      while (v9 != v8)
      {
        v16 = *v9++;
        *v7 = v16;
        v7 += 8;
      }

      *(a1 + 8) = v7;
    }

    else
    {
      v12 = v7 - v6;
      v13 = (v10 >> 3) + ((v7 - v6) >> 3);
      if (v13 >> 61)
      {
        sub_1B5D04FA0();
      }

      v14 = v11 - v6;
      if (v14 >> 2 > v13)
      {
        v13 = v14 >> 2;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        v15 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        sub_1B5CE1BC0(v15);
      }

      v17 = 8 * (v12 >> 3);
      v18 = (v17 + v10);
      v19 = v17;
      do
      {
        v20 = *v9++;
        *v19++ = v20;
        v10 -= 8;
      }

      while (v10);
      memcpy(v18, v7, *(a1 + 8) - v7);
      v21 = *a1;
      v22 = &v18[*(a1 + 8) - v7];
      *(a1 + 8) = v7;
      v23 = v7 - v21;
      v24 = (v17 - (v7 - v21));
      memcpy(v24, v21, v23);
      v25 = *a1;
      *a1 = v24;
      *(a1 + 8) = v22;
      *(a1 + 16) = 0;
      if (v25)
      {
        operator delete(v25);
        v7 = *(a1 + 8);
      }

      else
      {
        v7 = v22;
      }
    }
  }

  for (i = *a1; i != v7; i += 8)
  {
    ++*(i + 1);
  }

  *(a1 + 24) = *(a3 + 24) + *(a2 + 24);
  return a1;
}

void sub_1B5D308BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1B5D308DC(char **a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 3)
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

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_1B5D320C0(a1, v10);
    }

    sub_1B5D04FA0();
  }

  v11 = a1[1];
  v12 = v11 - result;
  if (a4 <= (v11 - result) >> 3)
  {
    while (v5 != a3)
    {
      v15 = *v5++;
      *result = v15;
      result += 8;
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
        result += 8;
        v12 -= 8;
      }

      while (v12);
    }

    while (v13 != a3)
    {
      v16 = *v13++;
      *v11 = v16;
      v11 += 8;
    }

    a1[1] = v11;
  }

  return result;
}

uint64_t sub_1B5D309E4(uint64_t result, char *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = (a2 - 8);
  v135 = a2 - 16;
  v133 = a2 - 4;
  v134 = a2 - 24;
  v130 = a2 - 20;
  v131 = a2 - 12;
  v10 = v8;
  v137 = a2;
  v132 = (a2 - 8);
  while (1)
  {
    v8 = v10;
    v11 = &a2[-v10] >> 3;
    v12 = v11 - 2;
    if (v11 <= 2)
    {
      break;
    }

    switch(v11)
    {
      case 3:
        v87 = (*(*a3 + 16))();
        result = (*(*a3 + 16))();
        if (v87)
        {
          v89 = (v10 + 4);
          v88 = *v10;
          if (result)
          {
            *v10 = *v9;
          }

          else
          {
            v129 = *(v10 + 8);
            *(v10 + 12) = *(v10 + 4);
            v89 = (v10 + 12);
            *(v10 + 8) = v88;
            *v10 = v129;
            result = (*(*a3 + 16))();
            if (!result)
            {
              return result;
            }

            v88 = *(v10 + 8);
            *(v10 + 8) = *v9;
          }

          *v9 = v88;
        }

        else
        {
          if (!result)
          {
            return result;
          }

          v121 = *(v10 + 8);
          *(v10 + 8) = *v9;
          *v9 = v121;
          v122 = *(v10 + 12);
          *(v10 + 12) = *v133;
          *v133 = v122;
          result = (*(*a3 + 16))();
          if (!result)
          {
            return result;
          }

          v123 = *v10;
          *v10 = *(v10 + 8);
          *(v10 + 8) = v123;
          v89 = (v10 + 4);
          v133 = (v10 + 12);
        }

        v85 = *v89;
        v86 = v133;
        *v89 = *v133;
        goto LABEL_179;
      case 4:

        return sub_1B5D31A30(v10, (v10 + 8), (v10 + 16), v9, a3);
      case 5:
        sub_1B5D31A30(v10, (v10 + 8), (v10 + 16), (v10 + 24), a3);
        result = (*(*a3 + 16))();
        if (result)
        {
          v82 = *(v10 + 24);
          *(v10 + 24) = *v9;
          *v9 = v82;
          v83 = *(v10 + 28);
          *(v10 + 28) = *v133;
          *v133 = v83;
          result = (*(*a3 + 16))();
          if (result)
          {
            *(v10 + 16) = vextq_s8(*(v10 + 16), *(v10 + 16), 8uLL);
            result = (*(*a3 + 16))();
            if (result)
            {
              *(v10 + 8) = vextq_s8(*(v10 + 8), *(v10 + 8), 8uLL);
              result = (*(*a3 + 16))();
              if (result)
              {
                *v10 = vextq_s8(*v10, *v10, 8uLL);
              }
            }
          }
        }

        return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      if (a5)
      {
        if (v10 != a2)
        {
          v90 = (v10 + 8);
          if ((v10 + 8) != a2)
          {
            v91 = 0;
            do
            {
              v92 = v90;
              result = (*(*a3 + 16))();
              if (result)
              {
                v141 = *v92;
                v93 = v91;
                while (1)
                {
                  v94 = v10 + v93;
                  v95 = *(v10 + v93 + 4);
                  *(v94 + 8) = *(v10 + v93);
                  *(v94 + 12) = v95;
                  if (!v93)
                  {
                    break;
                  }

                  v93 -= 8;
                  result = (*(*a3 + 16))();
                  if ((result & 1) == 0)
                  {
                    v96 = (v10 + v93 + 8);
                    goto LABEL_128;
                  }
                }

                v96 = v10;
LABEL_128:
                *v96 = v141;
              }

              v90 = v92 + 1;
              v91 += 8;
            }

            while (v92 + 1 != a2);
          }
        }
      }

      else if (v10 != a2)
      {
        v124 = (v10 + 8);
        if ((v10 + 8) != a2)
        {
          v125 = (v10 - 8);
          do
          {
            v126 = v124;
            result = (*(*a3 + 16))();
            if (result)
            {
              v144 = *v126;
              v127 = v125;
              do
              {
                v128 = v127[3];
                v127[4] = v127[2];
                v127[5] = v128;
                result = (*(*a3 + 16))();
                v127 -= 2;
              }

              while ((result & 1) != 0);
              *(v127 + 2) = v144;
            }

            v124 = v126 + 1;
            v125 += 2;
          }

          while (v126 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v97 = v12 >> 1;
        v98 = v12 >> 1;
        do
        {
          v99 = v98;
          if (v97 >= v98)
          {
            v100 = (2 * v98) | 1;
            v101 = &v8[2 * v100];
            if (2 * v98 + 2 < v11 && (*(*a3 + 16))())
            {
              v101 += 2;
              v100 = 2 * v99 + 2;
            }

            v102 = &v8[2 * v99];
            result = (*(*a3 + 16))();
            if ((result & 1) == 0)
            {
              v142 = *v102;
              do
              {
                v103 = v101;
                *v102 = *v101;
                v102[1] = v101[1];
                if (v97 < v100)
                {
                  break;
                }

                v104 = (2 * v100) | 1;
                v101 = &v8[2 * v104];
                v105 = 2 * v100 + 2;
                if (v105 < v11 && (*(*a3 + 16))())
                {
                  v101 += 2;
                  v104 = v105;
                }

                result = (*(*a3 + 16))();
                v102 = v103;
                v100 = v104;
              }

              while (!result);
              *v103 = v142;
            }
          }

          v98 = v99 - 1;
        }

        while (v99);
        v106 = v137;
        do
        {
          v138 = v106;
          v107 = 0;
          v108 = *v8;
          v109 = v8;
          do
          {
            v110 = &v109[2 * v107];
            v111 = v110 + 2;
            v112 = (2 * v107) | 1;
            v113 = 2 * v107 + 2;
            if (v113 < v11)
            {
              v114 = v110 + 4;
              result = (*(*a3 + 16))();
              if (result)
              {
                v111 = v114;
                v112 = v113;
              }
            }

            *v109 = *v111;
            v109[1] = v111[1];
            v109 = v111;
            v107 = v112;
          }

          while (v112 <= (v11 - 2) / 2);
          v106 -= 8;
          if (v111 == (v138 - 8))
          {
            *v111 = v108;
          }

          else
          {
            *v111 = *(v138 - 2);
            v111[1] = *(v138 - 1);
            *(v138 - 1) = v108;
            v115 = (v111 - v8 + 8) >> 3;
            v116 = v115 < 2;
            v117 = v115 - 2;
            if (!v116)
            {
              v118 = v117 >> 1;
              v119 = &v8[2 * (v117 >> 1)];
              result = (*(*a3 + 16))();
              if (result)
              {
                v143 = *v111;
                do
                {
                  v120 = v119;
                  *v111 = *v119;
                  v111[1] = v119[1];
                  if (!v118)
                  {
                    break;
                  }

                  v118 = (v118 - 1) >> 1;
                  v119 = &v8[2 * v118];
                  result = (*(*a3 + 16))();
                  v111 = v120;
                }

                while ((result & 1) != 0);
                *v120 = v143;
              }
            }
          }

          v116 = v11-- <= 2;
        }

        while (!v116);
      }

      return result;
    }

    v13 = v11 >> 1;
    v14 = (v10 + 8 * (v11 >> 1));
    v15 = *(*a3 + 16);
    if (v11 >= 0x81)
    {
      v16 = v15();
      v17 = (*(*a3 + 16))();
      if (v16)
      {
        v19 = v8 + 1;
        v18 = *v8;
        if (v17)
        {
          *v8 = *v9;
          goto LABEL_27;
        }

        v32 = v8[1];
        *v8 = v14->i64[0];
        v14->i32[1] = v32;
        v19 = &v14->i32[1];
        v14->i32[0] = v18;
        if ((*(*a3 + 16))())
        {
          v18 = v14->i32[0];
          v14->i32[0] = *v9;
LABEL_27:
          *v9 = v18;
          v26 = v133;
LABEL_28:
          v33 = *v19;
          *v19 = *v26;
          *v26 = v33;
        }
      }

      else if (v17)
      {
        v24 = v14->i32[0];
        v14->i32[0] = *v9;
        *v9 = v24;
        v26 = &v14->i32[1];
        v25 = v14->i32[1];
        v14->i32[1] = *v133;
        *v133 = v25;
        if ((*(*a3 + 16))())
        {
          v27 = *v8;
          *v8 = v14->i32[0];
          v19 = v8 + 1;
          v14->i32[0] = v27;
          goto LABEL_28;
        }
      }

      v34 = &v14[-1].i64[1];
      v35 = (*(*a3 + 16))();
      v36 = (*(*a3 + 16))();
      if (v35)
      {
        v37 = v8[2];
        v38 = v8 + 3;
        if (v36)
        {
          v39 = v135;
          v8[2] = *v135;
          goto LABEL_40;
        }

        v45 = *v38;
        *(v8 + 1) = *v34;
        v14[-1].i32[3] = v45;
        v38 = &v14[-1].i32[3];
        *v34 = v37;
        if ((*(*a3 + 16))())
        {
          v37 = *v34;
          v39 = v135;
          *v34 = *v135;
LABEL_40:
          *v39 = v37;
          v42 = v131;
LABEL_41:
          v46 = *v38;
          *v38 = *v42;
          *v42 = v46;
        }
      }

      else if (v36)
      {
        v40 = *v34;
        *v34 = *v135;
        *v135 = v40;
        v42 = &v14[-1].i32[3];
        v41 = v14[-1].i32[3];
        v14[-1].i32[3] = *v131;
        *v131 = v41;
        if ((*(*a3 + 16))())
        {
          v43 = v8[2];
          v8[2] = *v34;
          *v34 = v43;
          v38 = v8 + 3;
          goto LABEL_41;
        }
      }

      v47 = v13 + 1;
      v48 = &v8[2 * v13 + 2];
      v49 = (*(*a3 + 16))();
      v50 = (*(*a3 + 16))();
      if (v49)
      {
        v51 = v8[4];
        v52 = v8 + 5;
        if (v50)
        {
          v53 = v134;
          v8[4] = *v134;
          goto LABEL_50;
        }

        v58 = *v52;
        *(v8 + 2) = *v48;
        v48[1] = v58;
        v52 = v48 + 1;
        *v48 = v51;
        if ((*(*a3 + 16))())
        {
          v51 = *v48;
          v53 = v134;
          *v48 = *v134;
LABEL_50:
          *v53 = v51;
          v56 = v130;
LABEL_51:
          v59 = *v52;
          *v52 = *v56;
          *v56 = v59;
        }
      }

      else if (v50)
      {
        v54 = *v48;
        *v48 = *v134;
        *v134 = v54;
        v56 = (v48 + 1);
        v55 = v48[1];
        v48[1] = *v130;
        *v130 = v55;
        if ((*(*a3 + 16))())
        {
          v57 = v8[4];
          v8[4] = *v48;
          *v48 = v57;
          v52 = v8 + 5;
          goto LABEL_51;
        }
      }

      v60 = (*(*a3 + 16))();
      v61 = (*(*a3 + 16))();
      if (v60)
      {
        v62 = *v34;
        a2 = v137;
        if (v61)
        {
          *v34 = *v48;
          *v48 = v62;
          v63 = &v14[-1].i32[3];
          goto LABEL_60;
        }

        v65 = v14->i64[0];
        v14->i32[1] = v14[-1].i32[3];
        v14->i32[0] = v62;
        *v34 = v65;
        if ((*(*a3 + 16))())
        {
          v66 = v14->i32[0];
          v14->i32[0] = *v48;
          *v48 = v66;
          v63 = &v14->i32[1];
LABEL_60:
          v67 = &v8[2 * v47];
          v68 = *v63;
          *v63 = v67[1];
          v67[1] = v68;
        }
      }

      else
      {
        a2 = v137;
        if (v61)
        {
          *v14 = vextq_s8(*v14, *v14, 8uLL);
          if ((*(*a3 + 16))())
          {
            v64 = *v34;
            *v34 = v14->i32[0];
            v63 = &v14[-1].i32[3];
            v14->i32[0] = v64;
            v47 = v13;
            goto LABEL_60;
          }
        }
      }

      v69 = *v8;
      *v8 = v14->i32[0];
      v23 = v8 + 1;
      v14->i32[0] = v69;
      v31 = &v14->i32[1];
      v9 = v132;
      goto LABEL_62;
    }

    v20 = v15();
    v21 = (*(*a3 + 16))();
    if (v20)
    {
      v23 = &v14->i32[1];
      v22 = v14->i32[0];
      if (v21)
      {
        v14->i32[0] = *v9;
      }

      else
      {
        v44 = v14->i32[1];
        v14->i64[0] = *v8;
        v8[1] = v44;
        v23 = v8 + 1;
        *v8 = v22;
        if (!(*(*a3 + 16))())
        {
          goto LABEL_63;
        }

        v22 = *v8;
        *v8 = *v9;
      }

      *v9 = v22;
      v31 = v133;
    }

    else
    {
      if (!v21)
      {
        goto LABEL_63;
      }

      v28 = *v8;
      *v8 = *v9;
      *v9 = v28;
      v29 = v8[1];
      v8[1] = *v133;
      *v133 = v29;
      if (!(*(*a3 + 16))())
      {
        goto LABEL_63;
      }

      v30 = v14->i32[0];
      v14->i32[0] = *v8;
      *v8 = v30;
      v23 = &v14->i32[1];
      v31 = v8 + 1;
    }

LABEL_62:
    v70 = *v23;
    *v23 = *v31;
    *v31 = v70;
LABEL_63:
    --a4;
    if (a5 & 1) != 0 || ((*(*a3 + 16))())
    {
      v139 = *v8;
      v71 = v8;
      do
      {
        v72 = v71;
        v71 += 2;
      }

      while (((*(*a3 + 16))() & 1) != 0);
      v73 = a2;
      if (v72 == v8)
      {
        v73 = a2;
        do
        {
          if (v71 >= v73)
          {
            break;
          }

          v73 -= 8;
        }

        while (((*(*a3 + 16))() & 1) == 0);
      }

      else
      {
        do
        {
          v73 -= 8;
        }

        while (!(*(*a3 + 16))());
      }

      v10 = v71;
      if (v71 < v73)
      {
        v74 = v73;
        do
        {
          v75 = *v10;
          *v10 = *v74;
          *v74 = v75;
          v76 = *(v10 + 4);
          *(v10 + 4) = *(v74 + 1);
          *(v74 + 1) = v76;
          do
          {
            v10 += 8;
          }

          while (((*(*a3 + 16))() & 1) != 0);
          do
          {
            v74 -= 8;
          }

          while (!(*(*a3 + 16))());
        }

        while (v10 < v74);
      }

      if ((v10 - 8) != v8)
      {
        *v8 = *(v10 - 8);
        v8[1] = *(v10 - 4);
      }

      *(v10 - 8) = v139;
      if (v71 < v73)
      {
        goto LABEL_84;
      }

      v77 = sub_1B5D31C34(v8, (v10 - 8), a3);
      result = sub_1B5D31C34(v10, a2, a3);
      if (result)
      {
        a2 = (v10 - 8);
        if (!v77)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v77)
      {
LABEL_84:
        result = sub_1B5D309E4(v8, v10 - 8, a3, a4, a5 & 1);
        a5 = 0;
      }
    }

    else
    {
      v140 = *v8;
      result = (*(*a3 + 16))();
      if (result)
      {
        v10 = v8;
        do
        {
          v10 += 8;
          result = (*(*a3 + 16))();
        }

        while ((result & 1) == 0);
      }

      else
      {
        v78 = v8 + 2;
        do
        {
          v10 = v78;
          if (v78 >= a2)
          {
            break;
          }

          result = (*(*a3 + 16))();
          v78 = (v10 + 8);
        }

        while (!result);
      }

      v79 = a2;
      if (v10 < a2)
      {
        v79 = a2;
        do
        {
          v79 -= 8;
          result = (*(*a3 + 16))();
        }

        while ((result & 1) != 0);
      }

      while (v10 < v79)
      {
        v80 = *v10;
        *v10 = *v79;
        *v79 = v80;
        v81 = *(v10 + 4);
        *(v10 + 4) = *(v79 + 1);
        *(v79 + 1) = v81;
        do
        {
          v10 += 8;
        }

        while (!(*(*a3 + 16))());
        do
        {
          v79 -= 8;
          result = (*(*a3 + 16))();
        }

        while ((result & 1) != 0);
      }

      if ((v10 - 8) != v8)
      {
        *v8 = *(v10 - 8);
        v8[1] = *(v10 - 4);
      }

      a5 = 0;
      *(v10 - 8) = v140;
    }
  }

  if (v11 < 2)
  {
    return result;
  }

  if (v11 != 2)
  {
    goto LABEL_10;
  }

  result = (*(*a3 + 16))();
  if (result)
  {
    v84 = *v10;
    *v10 = *v9;
    *v9 = v84;
    v85 = *(v10 + 4);
    v86 = v133;
    *(v10 + 4) = *v133;
LABEL_179:
    *v86 = v85;
  }

  return result;
}

void sub_1B5D31948(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v8 = *(v6 - 4);
        v6 -= 32;
        v7 = v8;
        if (v8)
        {
          *(v4 - 3) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1B5D319D8(char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[3];
    if (v3)
    {
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_1B5D31A30(int *a1, int *a2, int *a3, int *a4, uint64_t a5)
{
  v10 = (*(*a5 + 16))();
  v11 = (*(*a5 + 16))();
  if (v10)
  {
    v13 = a1 + 1;
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
LABEL_9:
      *a3 = v12;
      v16 = a3 + 1;
      goto LABEL_10;
    }

    *a1 = *a2;
    *a2 = v12;
    v13 = a2 + 1;
    v18 = a1[1];
    a1[1] = a2[1];
    a2[1] = v18;
    if ((*(*a5 + 16))())
    {
      v12 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v14 = *a2;
    *a2 = *a3;
    *a3 = v14;
    v16 = a2 + 1;
    v15 = a2[1];
    a2[1] = a3[1];
    a3[1] = v15;
    if ((*(*a5 + 16))())
    {
      v17 = *a1;
      *a1 = *a2;
      v13 = a1 + 1;
      *a2 = v17;
LABEL_10:
      v19 = *v13;
      *v13 = *v16;
      *v16 = v19;
    }
  }

  result = (*(*a5 + 16))();
  if (result)
  {
    v21 = *a3;
    *a3 = *a4;
    *a4 = v21;
    v22 = a3[1];
    a3[1] = a4[1];
    a4[1] = v22;
    result = (*(*a5 + 16))();
    if (result)
    {
      v23 = *a2;
      *a2 = *a3;
      *a3 = v23;
      v24 = a2[1];
      a2[1] = a3[1];
      a3[1] = v24;
      result = (*(*a5 + 16))();
      if (result)
      {
        v25 = *a1;
        *a1 = *a2;
        *a2 = v25;
        v26 = a1[1];
        a1[1] = a2[1];
        a2[1] = v26;
      }
    }
  }

  return result;
}

BOOL sub_1B5D31C34(int *a1, char *a2, uint64_t a3)
{
  v6 = (a2 - a1) >> 3;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v11 = (*(*a3 + 16))();
      v12 = (*(*a3 + 16))();
      if (v11)
      {
        v14 = a1 + 1;
        v13 = *a1;
        if (v12)
        {
          *a1 = *(a2 - 2);
        }

        else
        {
          v25 = *(a1 + 1);
          a1[3] = a1[1];
          v14 = a1 + 3;
          a1[2] = v13;
          *a1 = v25;
          if (!(*(*a3 + 16))())
          {
            return 1;
          }

          v13 = a1[2];
          a1[2] = *(a2 - 2);
        }

        *(a2 - 2) = v13;
        v21 = (a2 - 4);
      }

      else
      {
        if (!v12)
        {
          return 1;
        }

        v19 = a1[2];
        a1[2] = *(a2 - 2);
        *(a2 - 2) = v19;
        v21 = a1 + 3;
        v20 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v20;
        if (!(*(*a3 + 16))())
        {
          return 1;
        }

        v22 = *a1;
        *a1 = a1[2];
        a1[2] = v22;
        v14 = a1 + 1;
      }

      v26 = *v14;
      *v14 = *v21;
      *v21 = v26;
      return 1;
    }

    if (v6 != 4)
    {
      if (v6 == 5)
      {
        sub_1B5D31A30(a1, a1 + 2, a1 + 4, a1 + 6, a3);
        if ((*(*a3 + 16))())
        {
          v9 = a1[6];
          a1[6] = *(a2 - 2);
          *(a2 - 2) = v9;
          v10 = a1[7];
          a1[7] = *(a2 - 1);
          *(a2 - 1) = v10;
          if ((*(*a3 + 16))())
          {
            *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
            if ((*(*a3 + 16))())
            {
              *(a1 + 2) = vextq_s8(*(a1 + 2), *(a1 + 2), 8uLL);
              if ((*(*a3 + 16))())
              {
                *a1 = vextq_s8(*a1, *a1, 8uLL);
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    sub_1B5D31A30(a1, a1 + 2, a1 + 4, a2 - 2, a3);
    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*(*a3 + 16))())
    {
      v7 = *a1;
      *a1 = *(a2 - 2);
      *(a2 - 2) = v7;
      v8 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v8;
    }

    return 1;
  }

LABEL_17:
  v15 = (*(*a3 + 16))();
  v16 = (*(*a3 + 16))();
  if (v15)
  {
    v18 = a1 + 1;
    v17 = *a1;
    if (v16)
    {
      *a1 = a1[4];
    }

    else
    {
      v27 = *(a1 + 1);
      a1[3] = a1[1];
      v18 = a1 + 3;
      a1[2] = v17;
      *a1 = v27;
      if (!(*(*a3 + 16))())
      {
        goto LABEL_35;
      }

      v17 = a1[2];
      a1[2] = a1[4];
    }

    a1[4] = v17;
    v23 = a1 + 5;
    goto LABEL_34;
  }

  if (v16)
  {
    *(a1 + 2) = vextq_s8(*(a1 + 2), *(a1 + 2), 8uLL);
    if ((*(*a3 + 16))())
    {
      v23 = a1 + 3;
      v24 = *a1;
      *a1 = a1[2];
      a1[2] = v24;
      v18 = a1 + 1;
LABEL_34:
      v28 = *v18;
      *v18 = *v23;
      *v23 = v28;
    }
  }

LABEL_35:
  v29 = (a1 + 6);
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v30 = 0;
  v31 = 0;
  while (1)
  {
    if ((*(*a3 + 16))())
    {
      v37 = *v29;
      v32 = v30;
      while (1)
      {
        v33 = a1 + v32;
        v34 = *(a1 + v32 + 20);
        *(v33 + 24) = *(a1 + v32 + 16);
        *(v33 + 28) = v34;
        if (v32 == -16)
        {
          break;
        }

        v32 -= 8;
        if (((*(*a3 + 16))() & 1) == 0)
        {
          v35 = (a1 + v32 + 24);
          goto LABEL_43;
        }
      }

      v35 = a1;
LABEL_43:
      *v35 = v37;
      if (++v31 == 8)
      {
        return v29 + 1 == a2;
      }
    }

    v30 += 8;
    if (++v29 == a2)
    {
      return 1;
    }
  }
}

BOOL sub_1B5D320A0(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = a2[1];
  v4 = a3[1];
  v5 = v3 == v4;
  v6 = v3 < v4;
  if (v5)
  {
    return *a2 < *a3;
  }

  else
  {
    return v6;
  }
}

void sub_1B5D320C0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_1B5CE1BC0(a2);
  }

  sub_1B5D04FA0();
}

void sub_1B5D32100(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  sub_1B5CE5968();
}

void sub_1B5D32148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(a4 + 24) = *(v6 + 24);
      v6 += 32;
      a4 += 32;
    }

    while (v6 != a3);
    do
    {
      v7 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v7;
        operator delete(v7);
      }

      v5 += 32;
    }

    while (v5 != a3);
  }
}

uint64_t sub_1B5D321D0(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 32);
    *(a1 + 16) = v2 - 32;
    if (v4)
    {
      *(v2 - 24) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 sub_1B5D32234(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a1 + 64) = *(a2 + 64);
  return result;
}

void sub_1B5D32260(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void sub_1B5D32278(uint64_t a1, unsigned int a2)
{
  v3 = sub_1B5D32600((*(a1 + 40) + 40), a2);
  if (!v3)
  {
    __assert_rtn("encode_block_invoke", "TIHuffmanCoder.cpp", 207, "it != m_dictionary.end()");
  }

  v4 = v3[4];
  v5 = v4 & 0x3F;
  if (v4 > 0x3F || v5 != 0)
  {
    v7 = 0;
    v8 = *(*(a1 + 32) + 8);
    v9 = v3[3];
    v10 = &v9[v4 >> 6];
    v11 = *(v8 + 64);
    do
    {
      v12 = *v9;
      if (v11 == 8)
      {
        *(v8 + 64) = 0;
        v14 = *(v8 + 48);
        v13 = *(v8 + 56);
        if (v14 >= v13)
        {
          v16 = *(v8 + 40);
          v17 = (v14 - v16);
          v18 = v14 - v16 + 1;
          if (v18 < 0)
          {
            sub_1B5D04FA0();
          }

          v19 = v13 - v16;
          if (2 * v19 > v18)
          {
            v18 = 2 * v19;
          }

          if (v19 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v20 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v18;
          }

          if (v20)
          {
            operator new();
          }

          v21 = v14 - v16;
          *v17 = 0;
          v15 = v17 + 1;
          memcpy(0, v16, v21);
          *(v8 + 40) = 0;
          *(v8 + 48) = v17 + 1;
          *(v8 + 56) = 0;
          if (v16)
          {
            operator delete(v16);
          }
        }

        else
        {
          *v14 = 0;
          v15 = v14 + 1;
        }

        *(v8 + 48) = v15;
        v11 = *(v8 + 64);
      }

      if ((v12 & (1 << v7)) != 0)
      {
        *(*(v8 + 48) - 1) |= 1 << v11;
        v11 = *(v8 + 64);
      }

      *(v8 + 64) = ++v11;
      v9 += v7 == 63;
      if (v7 == 63)
      {
        v7 = 0;
      }

      else
      {
        ++v7;
      }
    }

    while (v9 != v10 || v7 != v5);
  }
}

uint64_t sub_1B5D32430(uint64_t a1, unsigned __int16 *a2)
{
  if (!*(a1 + 64))
  {
    __assert_rtn("encoded_size", "TIHuffmanCoder.cpp", 223, "is_compiled()");
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 0x40000000;
  v18 = sub_1B5D325B8;
  v19 = &unk_1E7C20D90;
  v20 = a1;
  if (*(a2 + 1))
  {
    v2 = *(a2 + 1);
  }

  else
  {
    v2 = (a2 + 8);
  }

  v13 = v2;
  v3 = *a2;
  v14 = 0;
  v15 = v3;
  v16 = 0;
  sub_1B5CDCF70(&v13);
  v9 = v2;
  v10 = v3;
  v11 = v3;
  v12 = 0;
  sub_1B5CDCF70(&v9);
  v4 = v13;
  if (v13 != v9)
  {
LABEL_9:
    __assert_rtn("operator!=", "TIString.h", 202, "p==rhs.p");
  }

  v5 = 0;
  v6 = v10;
  while (v14 != v6)
  {
    v5 += v18(v17, v16);
    sub_1B5CDCF70(&v13);
    if (v13 != v4)
    {
      goto LABEL_9;
    }
  }

  v7 = v5 + v18(v17, 0);
  if (!v7)
  {
    __assert_rtn("encoded_size", "TIHuffmanCoder.cpp", 234, "bit_count > 0");
  }

  return ((v7 - 1) >> 3) + 1;
}

uint64_t sub_1B5D325B8(uint64_t a1, unsigned int a2)
{
  v2 = sub_1B5D32600((*(a1 + 32) + 40), a2);
  if (!v2)
  {
    __assert_rtn("encoded_size_block_invoke", "TIHuffmanCoder.cpp", 227, "it != m_dictionary.end()");
  }

  return v2[4];
}

uint64_t *sub_1B5D32600(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1B5D326B4(void ***a1)
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
        v6 = *(v4 - 3);
        if (v6)
        {
          *(v4 - 2) = v6;
          operator delete(v6);
        }

        v4 -= 32;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1B5D32740(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1B5CE1E70(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

BOOL sub_1B5D32794(uint64_t a1, uint64_t *a2, unsigned __int16 *a3)
{
  v3 = *(a1 + 32);
  if (v3 == *(a1 + 40))
  {
    __assert_rtn("decode", "TIHuffmanCoder.cpp", 399, "valid()");
  }

  v4 = *v3;
  if (!*v3)
  {
LABEL_19:
    __assert_rtn("decode", "TIHuffmanCoder.cpp", 407, "table.bit_length >= 1");
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = *(a1 + 32);
  while (1)
  {
    if (v8 >= v4)
    {
LABEL_11:
      v15 = v8;
      v14 = v9;
    }

    else
    {
      v13 = *a2;
      v12 = a2[1];
      v14 = v9;
      v15 = v8;
      v16 = a2[2];
      do
      {
        v17 = v16 + 1;
        if (v12 && v17 > v12)
        {
          break;
        }

        a2[2] = v17;
        if (!v13)
        {
          goto LABEL_11;
        }

        v14 |= *(v13 + v16) << v15;
        v15 += 8;
        ++v16;
      }

      while (v15 < v4);
    }

    v18 = *(v11 + 1) + 12 * (v14 & ~(-1 << v4));
    v19 = *(v18 + 4);
    v8 = v15 - v19;
    if (v15 < v19)
    {
      return v15 >= v19;
    }

    if (*v18 == 1)
    {
      v10 = *(v18 + 8);
    }

    else if (!*v18)
    {
      v20 = *(v18 + 8);
      if (!v20)
      {
        if (v8 >= 8)
        {
          a2[2] -= v8 >> 3;
        }

        return v15 >= v19;
      }

      sub_1B5D5CC40(a3, v20);
      v10 = 0;
      v3 = *(a1 + 32);
    }

    v9 = v14 >> v19;
    v11 = &v3[8 * v10];
    v4 = *v11;
    if (!*v11)
    {
      goto LABEL_19;
    }
  }
}

uint64_t sub_1B5D32914()
{
  if ((atomic_load_explicit(&qword_1EB90C860, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EB90C860))
  {
    sub_1B5D32968();
    __cxa_guard_release(&qword_1EB90C860);
  }

  return qword_1EB90C818;
}

void sub_1B5D32968()
{
  v1 = 13;
  strcpy(category, "DefaultLogger");
  qword_1EB90C818 = os_log_create("com.apple.Lexicon", category);
  if (v1 < 0)
  {
    operator delete(*category);
  }
}

uint64_t sub_1B5D329D0(uint64_t a1)
{
  v2 = *(a1 + 16);
  while (v2)
  {
    v3 = v2;
    v2 = *v2;
    if (*(v3 + 8) >= 0xFu)
    {
      v4 = v3[3];
      if (v4)
      {
        MEMORY[0x1B8C880C0](v4, 0x1000C8077774924);
      }
    }

    operator delete(v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

const void *sub_1B5D32A54(_BYTE *a1, uint64_t a2)
{
  result = sub_1B5D03500(a2);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1B5D114C8();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    result = memmove(a1, result, v4);
  }

  a1[v5] = 0;
  return result;
}

void *sub_1B5D32AFC(void *a1, __int128 *a2)
{
  *a1 = &unk_1F2D55760;
  v3 = a1 + 1;
  if (*(a2 + 23) < 0)
  {
    sub_1B5CE4AC4(v3, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3[2] = *(a2 + 2);
    *v3 = v4;
  }

  return a1;
}

void sub_1B5D32B78(void *a1)
{
  if (a1)
  {
    sub_1B5D32B78(*a1);
    sub_1B5D32B78(a1[1]);
    if (*(a1 + 20) >= 0xFu)
    {
      v2 = a1[6];
      if (v2)
      {
        MEMORY[0x1B8C880C0](v2, 0x1000C8077774924);
      }
    }

    operator delete(a1);
  }
}

void sub_1B5D32BEC(std::exception *this)
{
  this->__vftable = &unk_1F2D55760;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);
}

uint64_t sub_1B5D32C4C(uint64_t a1)
{
  result = a1 + 8;
  if (*(a1 + 31) < 0)
  {
    return *result;
  }

  return result;
}

void sub_1B5D32C68(std::exception *this)
{
  this->__vftable = &unk_1F2D55760;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);

  JUMPOUT(0x1B8C880F0);
}

BOOL sub_1B5D32CDC(uint64_t a1, uint64_t *a2, unsigned __int16 *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v45 = 0x100000;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v6 = *(a3 + 1);
  v7 = a3 + 8;
  if (!v6)
  {
    v6 = (a3 + 8);
  }

  v38 = v6;
  v8 = *a3;
  v39 = 0;
  v40 = v8;
  v41 = 0;
  sub_1B5CDCF70(&v38);
  v9 = 0;
  v10 = 1;
  while (1)
  {
    v11 = v10;
    if (!v10)
    {
      break;
    }

    v13 = a2[1];
    v12 = a2[2];
    v14 = v12 + 1;
    if (v13)
    {
      v15 = v14 > v13;
    }

    else
    {
      v15 = 0;
    }

    if (!v15)
    {
      v16 = *a2;
      a2[2] = v14;
      if (v16)
      {
        v17 = *(v16 + v12);
        __p[0] = 0;
        __p[1] = 0;
        v37 = 0;
        v18 = sub_1B5DA4F1C(a2, __p);
        if (v18)
        {
          if (v37 >= 0)
          {
            v19 = __p;
          }

          else
          {
            v19 = __p[0];
          }

          sub_1B5D5C9B0(&v42, v19);
          if (v9 < (v17 & 0x1Fu))
          {
            while (1)
            {
              v20 = *a3;
              v21 = *(a3 + 1);
              if (!v21)
              {
                v21 = v7;
              }

              v32 = v21;
              v33 = v20;
              v34 = v20;
              v35 = 0;
              sub_1B5CDCF70(&v32);
              if (v38 != v32)
              {
                __assert_rtn("operator!=", "TIString.h", 202, "p==rhs.p");
              }

              if (v39 == v33)
              {
                break;
              }

              sub_1B5D5CC40(&v45, v41);
              sub_1B5CDCF70(&v38);
              if ((v17 & 0x1F) == ++v9)
              {
                v9 = v17 & 0x1F;
                break;
              }
            }
          }

          sub_1B5D5D820(&v45, &v42);
          if ((v17 & 0x20) != 0)
          {
            sub_1B5CDCF70(&v38);
            sub_1B5CDCF70(&v38);
            v9 += 2;
          }

          else if ((v17 & 0x40) != 0)
          {
            *(a1 + 36) |= 0x400000u;
          }

          else
          {
            v22 = a1;
            v23 = 0;
            v24 = WORD2(v42);
            if (WORD2(v42))
            {
              goto LABEL_27;
            }

LABEL_26:
            sub_1B5CDF8F4(&v42);
            v24 = WORD2(v42);
LABEL_27:
            while (v23 < v24)
            {
              sub_1B5CDCF70(&v38);
              ++v9;
              ++v23;
              if (!v24)
              {
                goto LABEL_26;
              }
            }

            a1 = v22;
          }

          v10 = v17 < 0;
          if (v43)
          {
            v25 = BYTE6(v42) == 1;
          }

          else
          {
            v25 = 0;
          }

          if (v25)
          {
            free(v43);
          }
        }

        else
        {
          v10 = 1;
        }

        if (SHIBYTE(v37) < 0)
        {
          operator delete(__p[0]);
        }

        if (v18)
        {
          continue;
        }
      }
    }

    goto LABEL_51;
  }

  while (1)
  {
    v26 = *a3;
    v27 = *(a3 + 1);
    if (!v27)
    {
      v27 = v7;
    }

    v42 = v27;
    LODWORD(v43) = v26;
    HIDWORD(v43) = v26;
    v44 = 0;
    sub_1B5CDCF70(&v42);
    if (v38 != v42)
    {
      __assert_rtn("operator!=", "TIString.h", 202, "p==rhs.p");
    }

    if (v39 == v43)
    {
      break;
    }

    sub_1B5D5CC40(&v45, v41);
    sub_1B5CDCF70(&v38);
    ++v9;
  }

  v28 = a3[2];
  if (!a3[2])
  {
    sub_1B5CDF8F4(a3);
    v28 = a3[2];
  }

  if (v9 != v28)
  {
    __assert_rtn("parse_substitution_list", "TIWord.cpp", 79, "count == base_surface_form.length()");
  }

  sub_1B5CDF770(a1, &v45);
LABEL_51:
  if (v48)
  {
    v29 = v47 == 1;
  }

  else
  {
    v29 = 0;
  }

  if (v29)
  {
    free(v48);
  }

  v30 = *MEMORY[0x1E69E9840];
  return !v11;
}

void sub_1B5D3304C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, void *a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, void *a30)
{
  if (a24 && a23 == 1)
  {
    free(a24);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a30)
  {
    if (a29 == 1)
    {
      free(a30);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D330BC(uint64_t a1, uint64_t *a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v55 = *MEMORY[0x1E69E9840];
  *a1 = 0x100000;
  *(a1 + 4) = 0;
  *(a1 + 6) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 37) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  HIDWORD(v13) = 0;
  *(a1 + 64) = 0xFFFFFFFFLL;
  *(a1 + 72) = 0;
  *(a1 + 76) = 0;
  *(a1 + 80) = 0;
  v14 = a2[1];
  v15 = a2[2];
  v16 = v15 + 1;
  if (v14 && v16 > v14)
  {
    goto LABEL_6;
  }

  v17 = *a2;
  a2[2] = v16;
  if (!v17)
  {
    goto LABEL_6;
  }

  v18 = v15 + 2;
  if (v14)
  {
    if (v18 > v14)
    {
      goto LABEL_6;
    }
  }

  a2[2] = v18;
  v21 = *(v17 + v16);
  *(a1 + 44) = v21;
  LODWORD(v13) = 1.0;
  if ((v21 & 4) != 0)
  {
    v22 = v15 + 3;
    if (v14 && v22 > v14)
    {
      goto LABEL_6;
    }

    a2[2] = v22;
    LOBYTE(v13) = *(v17 + v18);
    v23 = v13 * 0.00392156863;
    *&v13 = v23 * v23;
    v18 = v22;
  }

  *(a1 + 32) = v13;
  if ((v21 & 0x20) != 0)
  {
    v25 = v18 + 1;
    if (v14 && v25 > v14)
    {
      goto LABEL_6;
    }

    a2[2] = v25;
    v24 = *(v17 + v18);
  }

  else
  {
    v24 = 0;
  }

  v26 = (*(*a6 + 16))(a6, v24);
  *(a1 + 36) = v26;
  if (v26)
  {
    *(a1 + 40) = 1;
  }

  v27 = *(a1 + 44);
  if (v27)
  {
    v29 = a2[1];
    v28 = a2[2];
    v30 = v28 + 4;
    if (v29 && v30 > v29)
    {
      goto LABEL_6;
    }

    v31 = *a2;
    a2[2] = v30;
    if (!v31)
    {
      goto LABEL_6;
    }

    v32 = bswap32(*(v31 + v28));
    *(a1 + 36) = v26 | 0x200000;
    *(a1 + 40) = v32;
  }

  if ((v27 & 0x40) != 0)
  {
    v34 = a2[1];
    v33 = a2[2];
    v35 = v33 + 4;
    if (v34 && v35 > v34)
    {
      goto LABEL_6;
    }

    v36 = *a2;
    a2[2] = v35;
    if (!v36)
    {
      goto LABEL_6;
    }

    *(a1 + 56) = bswap32(*(v36 + v33));
  }

  if ((v27 & 0x10) == 0)
  {
    if (*a3)
    {
      sub_1B5D80088(&v50, a4, a3);
      if (!v50)
      {
        __assert_rtn("Word", "TIWord.cpp", 157, "!common_letter_base.is_empty()");
      }

      if ((*(a1 + 44) & 8) == 0)
      {
        goto LABEL_32;
      }

      if (sub_1B5D32CDC(a1, a2, &v50))
      {
        goto LABEL_47;
      }

LABEL_56:
      if (v53 && v52 == 1)
      {
        free(v53);
      }

      goto LABEL_6;
    }

    v46 = "!sort_key_for_derivation.empty()";
    v47 = 155;
    goto LABEL_75;
  }

  if ((a7 & 0x40000) != 0)
  {
    if (a5)
    {
      v50 = 0x100000;
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      if (sub_1B5D32794(a5, a2, &v50))
      {
LABEL_32:
        sub_1B5CDF770(a1, &v50);
LABEL_47:
        if (v53 && v52 == 1)
        {
          free(v53);
        }

        goto LABEL_50;
      }

      goto LABEL_56;
    }

    v46 = "huffman_decoder";
    v47 = 143;
LABEL_75:
    __assert_rtn("Word", "TIWord.cpp", v47, v46);
  }

  __p[0] = 0;
  __p[1] = 0;
  v49 = 0;
  if (sub_1B5DA4F1C(a2, __p))
  {
    if (v49 >= 0)
    {
      v37 = __p;
    }

    else
    {
      v37 = __p[0];
    }

    sub_1B5D5C9B0(&v50, v37);
    sub_1B5CDF770(a1, &v50);
    if (v53 && v52 == 1)
    {
      free(v53);
    }

    if (SHIBYTE(v49) < 0)
    {
      operator delete(__p[0]);
    }

LABEL_50:
    if ((a7 & 0x10000) != 0)
    {
      v50 = 0;
      if ((sub_1B5DA5074(a2, &v50) & 1) == 0)
      {
        goto LABEL_69;
      }

      *(a1 + 60) = v50;
    }

    if ((a7 & 0x200000) == 0)
    {
      if ((a7 & 0x80000) == 0)
      {
        goto LABEL_6;
      }

      v38 = a2[1];
      v39 = a2[2];
      goto LABEL_63;
    }

    v38 = a2[1];
    v40 = a2[2];
    v39 = v40 + 4;
    if (!v38 || v39 <= v38)
    {
      v41 = *a2;
      a2[2] = v39;
      if (v41)
      {
        *(a1 + 64) = bswap32(*(v41 + v40));
        if ((a7 & 0x80000) == 0)
        {
          goto LABEL_6;
        }

LABEL_63:
        *(a1 + 72) = 1;
        v42 = v39 + 4;
        if (!v38 || v42 <= v38)
        {
          v43 = *a2;
          a2[2] = v42;
          if (v43)
          {
            v44 = bswap32(*(v43 + v39));
            *(a1 + 72) = 1;
            *(a1 + 76) = v44;
            v45 = v39 + 6;
            if (!v38 || v45 <= v38)
            {
              a2[2] = v45;
              *(a1 + 80) = bswap32(*(v43 + v42)) >> 16;
            }
          }
        }

        goto LABEL_6;
      }
    }

LABEL_69:
    sub_1B5CDF8A0(a1);
    goto LABEL_6;
  }

  if (SHIBYTE(v49) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_6:
  v19 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1B5D33520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, void *a18)
{
  if (a18 && a17 == 1)
  {
    free(a18);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  v20 = *(v18 + 8);
  if (v20)
  {
    if (*(v18 + 6) == 1)
    {
      free(v20);
    }
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1B5D335A8(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
  return a1;
}

void sub_1B5D335E0(uint64_t a1, float *a2, unsigned int a3, int a4)
{
  v12 = *MEMORY[0x1E69E9840];
  *(a1 + 32) = *(a1 + 32) * a2[8];
  sub_1B5D5D250(&v10, a2, a3, *a2);
  sub_1B5D5D820(a1, &v10);
  if (v11)
  {
    v7 = BYTE6(v10) == 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    free(v11);
  }

  *(a1 + 56) &= ~0x20000000u;
  *(a1 + 60) = a4;
  v8 = *(a2 + 9);
  if ((v8 & 2) == 0)
  {
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_13:
    *(a1 + 36) |= 0x80u;
    if ((a2[9] & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  *(a1 + 36) |= 2u;
  v8 = *(a2 + 9);
  if ((v8 & 0x80) != 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  if ((v8 & 4) != 0)
  {
LABEL_10:
    *(a1 + 36) |= 4u;
  }

LABEL_11:
  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B5D336D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, void *a13)
{
  if (a13)
  {
    v14 = a12 == 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    free(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1B5D33704(uint64_t a1, unsigned __int16 *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(a2 + 10))
  {
    *a1 = 0x100000;
    *(a1 + 4) = 0;
    *(a1 + 6) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    if (*(a2 + 1))
    {
      v4 = *(a2 + 1);
    }

    else
    {
      v4 = (a2 + 8);
    }

    v17 = v4;
    v5 = *a2;
    v18 = 0;
    v19 = v5;
    c = 0;
    sub_1B5CDCF70(&v17);
    v13 = v4;
    v14 = v5;
    v15 = v5;
    v16 = 0;
    result = sub_1B5CDCF70(&v13);
    v7 = 0;
    v8 = v13;
    v9 = v14;
    while (1)
    {
      if (v17 != v8)
      {
        __assert_rtn("operator!=", "TIString.h", 202, "p==rhs.p");
      }

      if (v18 == v9)
      {
        break;
      }

      v10 = c;
      if (v7 <= 0x1F && ((*(a2 + 10) >> v7) & 1) != 0 && !u_istitle(c))
      {
        sub_1B5D8C080(v21, v10, 0);
        sub_1B5D5D820(a1, v21);
        if (v22)
        {
          if (v21[6] == 1)
          {
            free(v22);
          }
        }
      }

      else
      {
        sub_1B5D5CC40(a1, v10);
      }

      ++v7;
      result = sub_1B5CDCF70(&v17);
    }

    v11 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v12 = *MEMORY[0x1E69E9840];

    return sub_1B5D5CABC(a1, a2);
  }

  return result;
}

void sub_1B5D338D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, void *a19)
{
  if (a19 && a18 == 1)
  {
    free(a19);
  }

  v21 = *(v19 + 8);
  if (v21)
  {
    if (*(v19 + 6) == 1)
    {
      free(v21);
    }
  }

  _Unwind_Resume(exception_object);
}

void LXLatticeCreateMutable()
{
  v0 = *MEMORY[0x1E695E480];
  if (qword_1EB90CA70 != -1)
  {
    dispatch_once(&qword_1EB90CA70, &unk_1F2D580A8);
  }

  *(_CFRuntimeCreateInstance() + 16) = 0;
  operator new();
}

void sub_1B5D33A10(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D33A50()
{
  qword_1EB90CA78 = 0;
  unk_1EB90CA80 = "LXLattice";
  qword_1EB90CA88 = 0;
  unk_1EB90CA90 = 0;
  qword_1EB90CA98 = sub_1B5D33AA4;
  unk_1EB90CAA0 = 0u;
  unk_1EB90CAB0 = 0u;
  result = _CFRuntimeRegisterClass();
  qword_1EB90CAD8 = result;
  return result;
}

uint64_t sub_1B5D33AA4(uint64_t a1)
{
  result = *(a1 + 16);
  *(a1 + 16) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t LXLatticeAddNode(uint64_t a1, unint64_t a2, const __CFString *a3, uint64_t a4, double a5)
{
  if ((*(**(a1 + 16) + 24))(*(a1 + 16)) <= a2)
  {
    sub_1B5D7CCF8(*(a1 + 16), a2 + 1);
  }

  Length = CFStringGetLength(a3);
  CharactersPtr = CFStringGetCharactersPtr(a3);
  if (!CharactersPtr)
  {
    operator new[]();
  }

  v12 = CharactersPtr;
  if ((*(**(a1 + 16) + 16))(*(a1 + 16), a2))
  {
    v13 = 1;
  }

  else
  {
    v13 = Length == a4;
  }

  if (!v13)
  {
    return 0;
  }

  v14 = (*(*(a1 + 16) + 8) + 24 * a2);
  v16 = v14[1];
  v15 = v14[2];
  if (v16 >= v15)
  {
    v20 = 0xCCCCCCCCCCCCCCCDLL * ((v16 - *v14) >> 3);
    if (v20 + 1 > 0x666666666666666)
    {
      sub_1B5D04FA0();
    }

    v21 = 0xCCCCCCCCCCCCCCCDLL * ((v15 - *v14) >> 3);
    v22 = 2 * v21;
    if (2 * v21 <= v20 + 1)
    {
      v22 = v20 + 1;
    }

    if (v21 >= 0x333333333333333)
    {
      v23 = 0x666666666666666;
    }

    else
    {
      v23 = v22;
    }

    v36 = v14;
    if (v23)
    {
      if (v23 <= 0x666666666666666)
      {
        operator new();
      }

      sub_1B5CE5968();
    }

    v33 = 0;
    v34 = 40 * v20;
    sub_1B5D7CC44((40 * v20), v12, Length, a4, a5);
    v35 = 40 * v20 + 40;
    v25 = *v14;
    v24 = v14[1];
    v26 = 40 * v20 + *v14 - v24;
    if (*v14 != v24)
    {
      v27 = *v14;
      v28 = v34 + *v14 - v24;
      do
      {
        v29 = *v27;
        *(v28 + 16) = *(v27 + 16);
        *v28 = v29;
        *(v27 + 8) = 0;
        *(v27 + 16) = 0;
        *v27 = 0;
        *(v28 + 24) = *(v27 + 24);
        v27 += 40;
        v28 += 40;
      }

      while (v27 != v24);
      do
      {
        if (*(v25 + 23) < 0)
        {
          operator delete(*v25);
        }

        v25 += 40;
      }

      while (v25 != v24);
    }

    v30 = *v14;
    *v14 = v26;
    v34 = v30;
    v31 = v14[2];
    v32 = v35;
    *&v35 = v30;
    *(v14 + 1) = v32;
    *(&v35 + 1) = v31;
    v33 = v30;
    sub_1B5D33E38(&v33);
    v17 = v32;
  }

  else
  {
    sub_1B5D7CC44(v14[1], v12, Length, a4, a5);
    v17 = v16 + 40;
    v14[1] = v16 + 40;
  }

  v14[1] = v17;
  return 1;
}

void sub_1B5D33DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1B5D33E38(va);
  if (v4)
  {
    MEMORY[0x1B8C880C0](v4, 0x1000C80BDFB0063);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1B5D33E38(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 5;
      *(a1 + 16) = v2 - 5;
      if (*(v2 - 17) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1B5D33E9C(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (!a4)
  {
    __assert_rtn("markRange", "CoverageVector.cpp", 16, "0 < end");
  }

  v4 = a4 - a3;
  if (a4 <= a3)
  {
    __assert_rtn("markRange", "CoverageVector.cpp", 17, "begin < end");
  }

  v5 = (a2 - result) >> 2;
  if (v5 <= a3)
  {
    __assert_rtn("markRange", "CoverageVector.cpp", 18, "begin < m_ranges.size()");
  }

  if (v5 < a4)
  {
    __assert_rtn("markRange", "CoverageVector.cpp", 19, "end <= m_ranges.size()");
  }

  if (v5 > a4 && *(result + 4 * a4))
  {
    LODWORD(a4) = *(result + 4 * a4);
  }

  v6 = 0;
  v7 = (v4 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v8 = vdupq_n_s64(v4 - 1);
  v9 = (result + 4 * a3 + 8);
  do
  {
    v10 = vdupq_n_s64(v6);
    v11 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(v10, xmmword_1B5DC2630)));
    if (vuzp1_s16(v11, *v8.i8).u8[0])
    {
      *(v9 - 2) = a4;
    }

    if (vuzp1_s16(v11, *&v8).i8[2])
    {
      *(v9 - 1) = a4;
    }

    if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, vorrq_s8(v10, xmmword_1B5DC2640)))).i32[1])
    {
      *v9 = a4;
      v9[1] = a4;
    }

    v6 += 4;
    v9 += 4;
  }

  while (v7 != v6);
  return result;
}

uint64_t sub_1B5D33FFC(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (!a4)
  {
    __assert_rtn("isCovered", "CoverageVector.cpp", 33, "0 < end");
  }

  if (a3 >= a4)
  {
    __assert_rtn("isCovered", "CoverageVector.cpp", 34, "begin < end");
  }

  v4 = (a2 - a1) >> 2;
  if (v4 <= a3)
  {
    __assert_rtn("isCovered", "CoverageVector.cpp", 35, "begin < m_ranges.size()");
  }

  if (v4 < a4)
  {
    __assert_rtn("isCovered", "CoverageVector.cpp", 36, "end <= m_ranges.size()");
  }

  while (1)
  {
    a3 = *(a1 + 4 * a3);
    if (!a3)
    {
      break;
    }

    if (v4 <= a3)
    {
      return a3 >= a4;
    }

    if (a3 >= a4)
    {
      return 1;
    }
  }

  a3 = 0;
  return a3 >= a4;
}

void sub_1B5D340E0(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  sub_1B5CE5968();
}

uint64_t sub_1B5D34140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 8))(&v17);
  (*(*a1 + 8))(&v15, a1, a3);
  v5 = v17;
  if (v17 <= 0xEu)
  {
    v6 = &v17 + 2;
  }

  else
  {
    v6 = v18;
  }

  v7 = v15;
  v8 = v16;
  if (v15 >= 0xFu)
  {
    v9 = v16;
  }

  else
  {
    v9 = &v15 + 2;
  }

  if (v15 >= v17)
  {
    v10 = v17;
  }

  else
  {
    v10 = v15;
  }

  v11 = memcmp(v6, v9, v10);
  v12 = v5 < v7;
  if (v11)
  {
    v12 = v11 < 0;
  }

  if (v12)
  {
    v13 = 0xFFFFFFFFLL;
  }

  else
  {
    v13 = !sub_1B5CE401C(&v17, &v15);
  }

  if (v7 >= 0xF && v8)
  {
    MEMORY[0x1B8C880C0](v8, 0x1000C8077774924);
    v5 = v17;
  }

  if (v5 >= 0xF && v18)
  {
    MEMORY[0x1B8C880C0](v18, 0x1000C8077774924);
  }

  return v13;
}

void sub_1B5D34290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, unsigned __int16 a11, uint64_t a12)
{
  if (a11 >= 0xFu)
  {
    if (a12)
    {
      MEMORY[0x1B8C880C0](a12, 0x1000C8077774924);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D342C4(uint64_t a1, char *a2, unsigned __int16 a3)
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1B5D5CA18(v6, a2, a3);
  (*(*a1 + 8))(a1, v6);
  if (v7)
  {
    v4 = v6[6] == 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    free(v7);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B5D34370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, void *a13)
{
  if (a13)
  {
    v14 = a12 == 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    free(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D3439C(uint64_t result)
{
  add = atomic_fetch_add(result, 0xFFFFFFFF);
  if (add <= 0)
  {
    __assert_rtn("derefBase", "WTFRefCounted.h", 70, "new_count >= 0");
  }

  if (add == 1)
  {
    v2 = result;
    v3 = *(result + 16);
    if (v3 && *(v2 + 14) == 1)
    {
      free(v3);
    }

    JUMPOUT(0x1B8C880F0);
  }

  return result;
}

uint64_t sub_1B5D3443C(uint64_t result)
{
  add = atomic_fetch_add(result, 0xFFFFFFFF);
  if (add <= 0)
  {
    __assert_rtn("derefBase", "WTFRefCounted.h", 70, "new_count >= 0");
  }

  if (add == 1)
  {
    v2 = result;
    v3 = result + 24;
    v4 = *(result + 16);
    if (v4)
    {
      v5 = 8 * v4;
      v6 = (result + 24);
      do
      {
        if (*v6)
        {
          sub_1B5D3439C(*v6);
        }

        ++v6;
        v5 -= 8;
      }

      while (v5);
      v7 = *(v2 + 16);
    }

    else
    {
      v7 = 0;
    }

    v8 = *(v2 + 20);
    if (v8)
    {
      v9 = 8 * v8;
      v10 = (v3 + 8 * v7);
      do
      {
        if (*v10)
        {
          sub_1B5D3443C();
        }

        ++v10;
        v9 -= 8;
      }

      while (v9);
    }

    JUMPOUT(0x1B8C880F0);
  }

  return result;
}

void sub_1B5D34538(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2000000000;
    v17 = 0;
    v4 = a1 + 24;
    v5 = *(a1 + 16);
    v6 = *(a1 + 20);
    if (v6)
    {
      v7 = (v4 + 8 * v5);
      v8 = MEMORY[0x1E69E9820];
      v9 = 8 * v6;
      while (1)
      {
        v10 = *v7;
        v13[0] = v8;
        v13[1] = 0x40000000;
        v13[2] = sub_1B5D3469C;
        v13[3] = &unk_1E7C20DF8;
        v13[4] = a2;
        v13[5] = &v14;
        sub_1B5D34538(v10, v13);
        if (v15[3])
        {
          break;
        }

        ++v7;
        v9 -= 8;
        if (!v9)
        {
          v5 = *(a1 + 16);
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v18 = 0;
      if (v5)
      {
        v11 = 8 * v5 - 8;
        do
        {
          (*(a2 + 16))(a2, v4, &v18);
          if (v18)
          {
            break;
          }

          v4 += 8;
          v12 = v11;
          v11 -= 8;
        }

        while (v12);
      }
    }

    _Block_object_dispose(&v14, 8);
  }
}

void sub_1B5D34680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D3469C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  if (a3)
  {
    if (*a3 == 1)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  return result;
}

void sub_1B5D346F0(void ***a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, size_t a6)
{
  v136 = *MEMORY[0x1E69E9840];
  v9 = (a2 + 8);
  v10 = *(a2 + 15);
  v11 = v10 - a6;
  v12 = 0;
  if (v10 >= a6)
  {
    v13 = a6;
  }

  else
  {
    v13 = *(a2 + 15);
  }

  if (v13)
  {
    while (v9[v12] == *(a5 + v12))
    {
      if (v13 == ++v12)
      {
        goto LABEL_12;
      }
    }
  }

  if (*(a2 + 15))
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 0;
  }

  v13 = v12;
  if (v14)
  {
    __assert_rtn("merge", "TIDynamicTrie.cpp", 123, "is_root() || lcp_size > 0");
  }

LABEL_12:
  v125 = 0;
  if (a6 > v13 && v10 > v13)
  {
    v16 = *(a2 + 16);
    v124 = 0;
    v123 = 0uLL;
    sub_1B5D353B4(&v123, a2 + 24, a2 + 24 + 8 * v16, v16);
    v17 = *(a2 + 20);
    v18 = a2 + 24 + 8 * *(a2 + 16);
    v122 = 0;
    v121 = 0uLL;
    sub_1B5D354BC(&v121, v18, v18 + 8 * v17, v17);
    sub_1B5D355C4(v101, &v9[v13], v10 - v13, &v123, &v121);
    v132 = &v121;
    sub_1B5D3581C(&v132);
    v132 = &v123;
    sub_1B5D3589C(&v132);
    sub_1B5D3591C(&v126, *(a4 + 24), (a5 + v13), a6 - v13);
    v19 = v9[v13];
    v20 = *(a5 + v13);
    v21 = v19 > v20;
    if (v19 == v20)
    {
      __assert_rtn("merge", "TIDynamicTrie.cpp", 133, "child1_key[0] != child2_key[0]");
    }

    v22 = *&v101[0];
    if (v21)
    {
      v23 = *&v101[0];
    }

    else
    {
      v23 = v126;
    }

    if (v21)
    {
      v22 = v126;
    }

    v119 = 0;
    v117 = 0;
    v118 = 0uLL;
    *&v101[0] = 0;
    v126 = 0;
    v132 = v22;
    v133 = v23;
    v116 = 0uLL;
    sub_1B5D354BC(&v116, &v132, v134, 2uLL);
    sub_1B5D355C4(&v120, v9, v13, &v118, &v116);
    v24 = v120;
    v120 = 0;
    v125 = v24;
    v127 = &v116;
    sub_1B5D3581C(&v127);
    for (i = 8; i != -8; i -= 8)
    {
      v26 = *(&v132 + i);
      if (v26)
      {
        sub_1B5D3443C(v26);
      }
    }

    v132 = &v118;
    sub_1B5D3589C(&v132);
    if (v126)
    {
      sub_1B5D3443C(v126);
    }

    v27 = *&v101[0];
    if (!*&v101[0])
    {
      goto LABEL_122;
    }

    goto LABEL_27;
  }

  if (a6 != v13)
  {
    if (v10 == v13)
    {
      v32 = 156;
    }

    else
    {
      v32 = 155;
    }

    if (v10 == v13)
    {
      v33 = "lcp_size < new_key.size()";
    }

    else
    {
      v33 = "lcp_size == m_key_size";
    }

    if (v10 != v13 || a6 <= v13)
    {
      goto LABEL_128;
    }

    v35 = *(a2 + 16);
    v34 = *(a2 + 20);
    v95 = a2 + 24;
    v36 = a2 + 24 + 8 * v35;
    if (v34)
    {
      v37 = a2 + 24 + 8 * v35;
      v38 = *(a2 + 20);
      do
      {
        v39 = v38 >> 1;
        v40 = (v37 + 8 * (v38 >> 1));
        v42 = *v40;
        v41 = v40 + 1;
        v38 += ~(v38 >> 1);
        if (*(v42 + 8) < *(a5 + v10))
        {
          v37 = v41;
        }

        else
        {
          v38 = v39;
        }
      }

      while (v38);
    }

    else
    {
      v34 = 0;
      v37 = a2 + 24 + 8 * v35;
    }

    memset(v101, 0, 24);
    sub_1B5D354BC(v101, a2 + 24 + 8 * v35, v36 + 8 * v34, v34);
    v49 = a6 - v10;
    v50 = v37 - v36;
    v51 = *&v101[0];
    if (v50 < *(&v101[0] + 1) - *&v101[0] && *(*(*&v101[0] + v50) + 8) == *(a5 + v10))
    {
      sub_1B5D346F0(&v132);
      v52 = v132;
      if (v132[1].i32[0] || v132[1].i32[1])
      {
        v132 = 0;
        v53 = *(*&v101[0] + v50);
        *(*&v101[0] + v50) = v52;
        if (v53)
        {
          sub_1B5D3443C(v53);
        }
      }

      else
      {
        sub_1B5D35CB0(v101, (v50 + *&v101[0]));
      }

      v54 = v132;
      if (!v132)
      {
        goto LABEL_121;
      }
    }

    else
    {
      sub_1B5D3591C(&v126, *(a4 + 24), (a5 + v10), v49);
      v55 = (v50 + v51);
      v56 = *(&v101[0] + 1);
      if (*(&v101[0] + 1) >= *&v101[1])
      {
        v60 = ((*(&v101[0] + 1) - *&v101[0]) >> 3) + 1;
        if (v60 >> 61)
        {
          sub_1B5D04FA0();
        }

        v61 = *&v101[1] - *&v101[0];
        if ((*&v101[1] - *&v101[0]) >> 2 > v60)
        {
          v60 = v61 >> 2;
        }

        if (v61 >= 0x7FFFFFFFFFFFFFF8)
        {
          v62 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v62 = v60;
        }

        v130 = v101;
        if (v62)
        {
          sub_1B5D051D8(v62);
        }

        v70 = v55 - *&v101[0];
        v71 = (v55 - *&v101[0]) >> 3;
        v72 = 8 * v71;
        v127 = 0;
        v128 = 8 * v71;
        v129 = (8 * v71);
        if (!v71)
        {
          if (v70 < 1)
          {
            v86 = v70 >> 2;
            if (v55 == *&v101[0])
            {
              v87 = 1;
            }

            else
            {
              v87 = v86;
            }

            v135 = v130;
            sub_1B5D051D8(v87);
          }

          v72 -= ((v70 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8;
          v128 = v72;
        }

        v88 = v126;
        v126 = 0;
        *v72 = v88;
        *&v129 = v72 + 8;
        sub_1B5D35DA8(v55, *(&v101[0] + 1), (v72 + 8));
        *&v129 = v129 + *(&v101[0] + 1) - v55;
        *(&v101[0] + 1) = v55;
        v89 = (v128 + *&v101[0] - v55);
        sub_1B5D35DA8(*&v101[0], v55, v89);
        v90 = *&v101[0];
        v91 = *&v101[1];
        *&v101[0] = v89;
        *(v101 + 8) = v129;
        *&v129 = v90;
        *(&v129 + 1) = v91;
        v127 = v90;
        v128 = v90;
        sub_1B5D35D38(&v127);
      }

      else if (v55 == *(&v101[0] + 1))
      {
        v69 = v126;
        v126 = 0;
        **(&v101[0] + 1) = v69;
        *(&v101[0] + 1) = v56 + 1;
      }

      else
      {
        v57 = (*(&v101[0] + 1) - 8);
        if (*(&v101[0] + 1) < 8uLL)
        {
          v59 = *(&v101[0] + 1);
        }

        else
        {
          v58 = *v57;
          *v57 = 0;
          *v56 = v58;
          v59 = v56 + 1;
        }

        *(&v101[0] + 1) = v59;
        if (v56 != v55 + 1)
        {
          v73 = v37 + v51 - (v56 + a2) - 8 * v35 - 16;
          v74 = (v56 - 2);
          do
          {
            v75 = *v74;
            *v74 = 0;
            v76 = *v57;
            *v57 = v75;
            if (v76)
            {
              sub_1B5D3443C(v76);
            }

            --v57;
            --v74;
            v73 += 8;
          }

          while (v73);
        }

        v77 = v126;
        v126 = 0;
        v78 = *v55;
        *v55 = v77;
        if (v78)
        {
          sub_1B5D3443C(v78);
        }
      }

      v54 = v126;
      if (!v126)
      {
        goto LABEL_121;
      }
    }

    sub_1B5D3443C(v54);
LABEL_121:
    v92 = *(a2 + 15);
    v93 = *(a2 + 16);
    v100 = 0;
    v99 = 0uLL;
    sub_1B5D353B4(&v99, v95, v95 + 8 * v93, v93);
    v97 = v101[0];
    v98 = *&v101[1];
    memset(v101, 0, 24);
    sub_1B5D355C4(&v127, v9, v92, &v99, &v97);
    v24 = v127;
    v127 = 0;
    v132 = &v97;
    sub_1B5D3581C(&v132);
    v132 = &v99;
    sub_1B5D3589C(&v132);
    v132 = v101;
    sub_1B5D3581C(&v132);
    goto LABEL_122;
  }

  if (a6 != v10)
  {
    if (a6 < v10)
    {
      v43 = *(a2 + 16);
      v109 = 0;
      v108 = 0uLL;
      sub_1B5D353B4(&v108, a2 + 24, a2 + 24 + 8 * v43, v43);
      v44 = *(a2 + 20);
      v45 = a2 + 24 + 8 * *(a2 + 16);
      v107 = 0;
      v106 = 0uLL;
      sub_1B5D354BC(&v106, v45, v45 + 8 * v44, v44);
      sub_1B5D355C4(v101, &v9[a6], v11, &v108, &v106);
      v132 = &v106;
      sub_1B5D3581C(&v132);
      v132 = &v108;
      sub_1B5D3589C(&v132);
      v132 = 0;
      v133 = 0;
      v134[0] = 0;
      sub_1B5D35A88(&v126, *(a4 + 24), 0);
      v46 = v126;
      if (v126)
      {
        v47 = sub_1B5D35AE4(&v132, &v126);
        v48 = v132;
        v46 = v134[0];
      }

      else
      {
        v48 = 0;
        v47 = 0;
      }

      v104.i64[0] = v48;
      v104.i64[1] = v47;
      v105 = v46;
      v133 = 0;
      v134[0] = 0;
      v68 = *&v101[0];
      *&v101[0] = 0;
      v131 = v68;
      v132 = 0;
      v103 = 0;
      v102 = 0uLL;
      sub_1B5D354BC(&v102, &v131, &v132, 1uLL);
      sub_1B5D355C4(&v120, v9, a6, &v104, &v102);
      v24 = v120;
      v120 = 0;
      v125 = v24;
      v127 = &v102;
      sub_1B5D3581C(&v127);
      if (v131)
      {
        sub_1B5D3443C(v131);
      }

      v127 = &v104;
      sub_1B5D3589C(&v127);
      if (v126)
      {
        sub_1B5D3439C(v126);
      }

      v127 = &v132;
      sub_1B5D3589C(&v127);
      v27 = *&v101[0];
      if (!*&v101[0])
      {
        goto LABEL_122;
      }

LABEL_27:
      sub_1B5D3443C(v27);
LABEL_122:
      *a1 = v24;
      goto LABEL_123;
    }

    v33 = "lcp_size < m_key_size";
    v32 = 143;
LABEL_128:
    __assert_rtn("merge", "TIDynamicTrie.cpp", v32, v33);
  }

  v29 = *(a2 + 16);
  v113 = 0uLL;
  v112 = 0;
  sub_1B5D353B4(&v112, a2 + 24, a2 + 24 + 8 * v29, v29);
  v30 = v112;
  v115 = v113;
  v112 = 0;
  v113 = 0uLL;
  v114 = v30;
  v31 = v115;
  v132 = MEMORY[0x1E69E9820];
  v133 = 0x40000000;
  v134[0] = sub_1B5D35EEC;
  v134[1] = &unk_1E7C20E18;
  v135 = a3;
  if (v30 != v115)
  {
    while (((v134[0])(&v132, v30) & 1) == 0)
    {
      if (++v30 == v31)
      {
        goto LABEL_78;
      }
    }
  }

  if (v30 == v31)
  {
LABEL_78:
    sub_1B5D35A88(&v127, *(a4 + 24), 0);
    v65 = v127;
    if (!v127)
    {
      goto LABEL_113;
    }

    v66 = v115;
    if (v115 >= *(&v115 + 1))
    {
      v67 = sub_1B5D35AE4(&v114, &v127);
    }

    else
    {
      v127 = 0;
      *v115 = v65;
      v67 = v66 + 8;
    }

    *&v115 = v67;
    v79 = v127;
    if (!v127)
    {
      goto LABEL_113;
    }
  }

  else
  {
    sub_1B5D35A88(&v127, *(a4 + 24), *v30);
    v63 = v127;
    if (v127)
    {
      if (atomic_fetch_add(v127->i32, 1u) <= 0)
      {
        __assert_rtn("ref", "WTFRefCounted.h", 42, "old_count > 0");
      }

      v64 = *v30;
      *v30 = v63;
      if (v64)
      {
        sub_1B5D3439C(v64);
      }
    }

    else
    {
      v80 = v30 + 1;
      v81 = v115;
      if (v30 + 1 != v115)
      {
        do
        {
          v82 = *(v80 - 1);
          *(v80 - 1) = *v80;
          *v80 = 0;
          if (v82)
          {
            sub_1B5D3439C(v82);
          }

          ++v80;
        }

        while (v80 != v81);
        v30 = v80 - 1;
      }

      while (v81 != v30)
      {
        v83 = *--v81;
        sub_1B5D35ECC(v83);
      }

      *&v115 = v30;
    }

    v79 = v127;
    if (!v127)
    {
      goto LABEL_113;
    }
  }

  sub_1B5D3439C(v79);
LABEL_113:
  v84 = *(a2 + 20);
  v85 = a2 + 24 + 8 * *(a2 + 16);
  v111 = 0;
  v110 = 0uLL;
  sub_1B5D354BC(&v110, v85, v85 + 8 * v84, v84);
  sub_1B5D355C4(a1, v9, a6, &v114, &v110);
  v132 = &v110;
  sub_1B5D3581C(&v132);
  v132 = &v114;
  sub_1B5D3589C(&v132);
  v132 = &v112;
  sub_1B5D3589C(&v132);
LABEL_123:
  v94 = *MEMORY[0x1E69E9840];
}

void sub_1B5D3516C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  sub_1B5D35A54((v17 - 144));
  *(v17 - 200) = &a17;
  sub_1B5D3581C((v17 - 200));
  sub_1B5D35A54((v17 - 208));
  _Unwind_Resume(a1);
}

void sub_1B5D353B4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1B5D051D8(a4);
  }
}

void sub_1B5D354BC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1B5D051D8(a4);
  }
}

void sub_1B5D355C4(void *a1, char *a2, size_t a3, int64x2_t *a4, int64x2_t *a5)
{
  v26 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  if (a3 <= 7)
  {
    v21 = *a4;
    v22 = a4[1].i64[0];
    a4->i64[1] = 0;
    a4[1].i64[0] = 0;
    a4->i64[0] = 0;
    v19 = *a5;
    v20 = a5[1].i64[0];
    a5->i64[1] = 0;
    a5[1].i64[0] = 0;
    a5->i64[0] = 0;
    sub_1B5D35F10(&v23, a2, a3, &v21, &v19);
    *a1 = v23;
    v24 = &v19;
    sub_1B5D3581C(&v24);
    v24 = &v21;
    sub_1B5D3589C(&v24);
  }

  else
  {
    v17 = *a4;
    v18 = a4[1].i64[0];
    a4->i64[1] = 0;
    a4[1].i64[0] = 0;
    a4->i64[0] = 0;
    v15 = *a5;
    v16 = a5[1].i64[0];
    a5->i64[1] = 0;
    a5[1].i64[0] = 0;
    a5->i64[0] = 0;
    sub_1B5D355C4(&v23, a2 + 7, a3 - 7, &v17, &v15);
    v24 = &v15;
    sub_1B5D3581C(&v24);
    v24 = &v17;
    sub_1B5D3589C(&v24);
    v13 = 0;
    v11 = 0;
    v12 = 0uLL;
    v7 = v23;
    v23 = 0;
    v25 = v7;
    v10 = 0uLL;
    sub_1B5D354BC(&v10, &v25, &v26, 1uLL);
    sub_1B5D35F10(&v14, a2, 7uLL, &v12, &v10);
    v8 = v14;
    v14 = 0;
    *a1 = v8;
    v24 = &v10;
    sub_1B5D3581C(&v24);
    if (v25)
    {
      sub_1B5D3443C(v25);
    }

    v24 = &v12;
    sub_1B5D3589C(&v24);
    if (v23)
    {
      sub_1B5D3443C(v23);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B5D3579C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    sub_1B5CE56B8(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D3581C(void ***a1)
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
        v6 = *(v4 - 1);
        v4 -= 8;
        sub_1B5D35D88(v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1B5D3589C(void ***a1)
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
        v6 = *(v4 - 1);
        v4 -= 8;
        sub_1B5D35ECC(v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1B5D3591C(void *a1, uint64_t a2, char *a3, size_t a4)
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  sub_1B5D35A88(&v14, a2, 0);
  v7 = v14;
  if (v14)
  {
    v8 = sub_1B5D35AE4(&v15, &v14);
    v7 = v17;
    v9 = v15;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v12.i64[0] = v9;
  v12.i64[1] = v8;
  v13 = v7;
  v16 = 0;
  v17 = 0;
  v15 = 0;
  v11 = 0;
  v10 = 0uLL;
  sub_1B5D355C4(a1, a3, a4, &v12, &v10);
  v18 = &v10;
  sub_1B5D3581C(&v18);
  v18 = &v12;
  sub_1B5D3589C(&v18);
  if (v14)
  {
    sub_1B5D3439C(v14);
  }

  v18 = &v15;
  sub_1B5D3589C(&v18);
}

void sub_1B5D35A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  sub_1B5D35C7C(&a16);
  *(v17 - 56) = &a17;
  sub_1B5D3589C((v17 - 56));
  _Unwind_Resume(a1);
}

uint64_t *sub_1B5D35A54(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    sub_1B5D3443C(v2);
  }

  return a1;
}

uint64_t sub_1B5D35A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  if (!a2)
  {
    sub_1B5CEC274();
  }

  return (*(*a2 + 48))(a2, &v4);
}

uint64_t sub_1B5D35AE4(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = (v2 - *a1) >> 3;
  v5 = v4 + 1;
  if ((v4 + 1) >> 61)
  {
    sub_1B5D04FA0();
  }

  v7 = *(a1 + 16) - v3;
  if (v7 >> 2 > v5)
  {
    v5 = v7 >> 2;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    v8 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v5;
  }

  v20 = a1;
  if (v8)
  {
    sub_1B5D051D8(v8);
  }

  v17 = 0;
  v18 = 8 * v4;
  v9 = *a2;
  *a2 = 0;
  *(8 * v4) = v9;
  v19 = (8 * v4 + 8);
  if (v3 != v2)
  {
    v10 = 0;
    do
    {
      v11 = *(v10 + v3);
      *v10 = v11;
      if (v11 && atomic_fetch_add(v11, 1u) <= 0)
      {
        __assert_rtn("ref", "WTFRefCounted.h", 42, "old_count > 0");
      }

      ++v10;
    }

    while ((v10 + v3) != v2);
    do
    {
      v12 = *v3++;
      sub_1B5D35ECC(v12);
    }

    while (v3 != v2);
  }

  v13 = *a1;
  *a1 = 0;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_1B5D35E7C(&v17);
  return v16;
}

uint64_t *sub_1B5D35C7C(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    sub_1B5D3439C(v2);
  }

  return a1;
}

void *sub_1B5D35CB0(uint64_t a1, void *a2)
{
  v4 = a2 + 1;
  v5 = *(a1 + 8);
  if (a2 + 1 == v5)
  {
    v6 = a2;
  }

  else
  {
    do
    {
      v6 = v4;
      v7 = *(v4 - 1);
      *(v4 - 1) = *v4;
      *v4 = 0;
      if (v7)
      {
        sub_1B5D3443C(v7);
      }

      v4 = v6 + 1;
    }

    while (v6 + 1 != v5);
    v5 = *(a1 + 8);
  }

  while (v5 != v6)
  {
    v8 = *--v5;
    sub_1B5D35D88(v8);
  }

  *(a1 + 8) = v6;
  return a2;
}

uint64_t sub_1B5D35D38(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 8);
    *(a1 + 16) = i - 8;
    sub_1B5D35D88(v4);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1B5D35D88(uint64_t result)
{
  if (result)
  {
    return sub_1B5D3443C(result);
  }

  return result;
}

uint64_t sub_1B5D35DA8(uint64_t result, atomic_uint **a2, atomic_uint **a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = 0;
    v6 = result;
    do
    {
      v8 = *v6;
      *a3 = *v6;
      if (v8 && atomic_fetch_add(v8, 1u) <= 0)
      {
        __assert_rtn("ref", "WTFRefCounted.h", 42, "old_count > 0");
      }

      ++v6;
      ++a3;
      v5 -= 8;
    }

    while (v6 != a2);
    do
    {
      v9 = *v4++;
      result = sub_1B5D35D88(v9);
    }

    while (v4 != a2);
  }

  return result;
}

uint64_t sub_1B5D35E7C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 8);
    *(a1 + 16) = i - 8;
    sub_1B5D35ECC(v4);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1B5D35ECC(uint64_t result)
{
  if (result)
  {
    return sub_1B5D3439C(result);
  }

  return result;
}

BOOL sub_1B5D35EEC(uint64_t a1, void *a2)
{
  v3 = (*a2 + 8);
  v4 = *(a1 + 32);
  return v3 == v4 || sub_1B5D5DD60(v3, v4);
}

void sub_1B5D35F10(void *a1, const void *a2, size_t a3, int64x2_t *a4, int64x2_t *a5)
{
  if (a3 >= 8)
  {
    __assert_rtn("create_single", "TIDynamicTrie.cpp", 213, "key.size() <= max_key_size()");
  }

  v10 = vaddq_s64(*a4, *a5);
  v11 = operator new((vsubq_s64(vdupq_laneq_s64(v10, 1), v10).u64[0] & 0xFFFFFFFFFFFFFFF8) + 24);
  v12 = v11;
  v33 = *a4;
  v13 = v33;
  v34 = a4[1].i64[0];
  a4->i64[0] = 0;
  a4->i64[1] = 0;
  a4[1].i64[0] = 0;
  v31 = *a5;
  v14 = v31;
  v32 = a5[1].i64[0];
  a5->i64[1] = 0;
  a5[1].i64[0] = 0;
  a5->i64[0] = 0;
  *v11 = 1;
  v11[15] = a3;
  v15 = v13.i64[1];
  v16 = v13.i64[0];
  v17 = v13.i64[1] - v13.i64[0];
  v18 = v14.i64[1];
  v19 = v14.i64[0];
  v20 = v14.i64[1] - v14.i64[0];
  *(v11 + 4) = (v13.i64[1] - v13.i64[0]) >> 3;
  *(v11 + 5) = (v14.i64[1] - v14.i64[0]) >> 3;
  if (a3)
  {
    memmove(v11 + 8, a2, a3);
  }

  if (v15 != v16)
  {
    v21 = 0;
    do
    {
      v22 = *(v16 + 8 * v21);
      *(v16 + 8 * v21) = 0;
      *&v12[8 * v21++ + 24] = v22;
    }

    while (v17 >> 3 > v21);
  }

  v23 = *(v12 + 4);
  if (v18 == v19)
  {
    v24 = 0;
  }

  else
  {
    v25 = 0;
    v24 = 0;
    do
    {
      v26 = *(v19 + 8 * v25);
      *(v19 + 8 * v25) = 0;
      *&v12[8 * v23 + 24 + 8 * v25] = v26;
      v24 += *(v26 + 4);
      *(v12 + 1) = v24;
      ++v25;
    }

    while (v20 >> 3 > v25);
  }

  v27 = 0;
  if (v23)
  {
    v28 = 8 * v23;
    v29 = (v12 + 24);
    do
    {
      v30 = *v29++;
      v27 += *(v30 + 48);
      v28 -= 8;
    }

    while (v28);
  }

  *(v12 + 1) = v24 + v27;
  v35 = &v31;
  sub_1B5D3581C(&v35);
  v35 = &v33;
  sub_1B5D3589C(&v35);
  *a1 = v12;
}

void sub_1B5D360F8(void *a1)
{
  v3 = 0uLL;
  v4 = 0;
  v2 = 0;
  v1 = 0uLL;
  sub_1B5D355C4(a1, 0, 0, &v3, &v1);
  v5 = &v1;
  sub_1B5D3581C(&v5);
  v5 = &v3;
  sub_1B5D3589C(&v5);
}

void sub_1B5D36168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v14 - 40) = v13;
  sub_1B5D3581C((v14 - 40));
  *(v14 - 40) = &a13;
  sub_1B5D3589C((v14 - 40));
  _Unwind_Resume(a1);
}

void *sub_1B5D36190(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1B5D360F8(a1 + 2);
  return a1;
}

void sub_1B5D361D0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_1B5CDD904(v3);
  }

  _Unwind_Resume(exception_object);
}

void **sub_1B5D361E8(void **result, _OWORD *a2, uint64_t a3)
{
  if (*a2 <= 0x200u)
  {
    v5 = result;
    (*(**result + 8))(&v9);
    if (v9 <= 0xEuLL)
    {
      v6 = (&v9 + 2);
    }

    else
    {
      v6 = v10;
    }

    sub_1B5D346F0(&v8, v5[2], a2, a3, v6, v9);
    v7 = v8;
    v8 = 0;
    result = v5[2];
    v5[2] = v7;
    if (result)
    {
      sub_1B5D3443C(result);
      result = v8;
      if (v8)
      {
        result = sub_1B5D3443C(v8);
      }
    }

    if (v9 >= 0xFu)
    {
      result = v10;
      if (v10)
      {
        return MEMORY[0x1B8C880C0](v10, 0x1000C8077774924);
      }
    }
  }

  return result;
}

void sub_1B5D362D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int16 a11, uint64_t a12)
{
  sub_1B5D35A54(&a10);
  if (a11 >= 0xFu)
  {
    if (a12)
    {
      MEMORY[0x1B8C880C0](a12, 0x1000C8077774924);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1B5D36318(uint64_t result, uint64_t a2, unsigned int a3)
{
  v3 = *a2;
  if (!*a2)
  {
    goto LABEL_18;
  }

  v4 = *(a2 + 8);
  if (v4 + 1 < *(v3 + 15))
  {
    if (*(v3 + v4 + 9) == a3)
    {
      v16 = *a2;
      if (atomic_fetch_add(v3, 1u) > 0)
      {
        sub_1B5D364B4(result, &v16, *(a2 + 8) + 1);
        result = v16;
        if (v16)
        {
          return sub_1B5D3443C(v16);
        }

        return result;
      }

LABEL_20:
      __assert_rtn("ref", "WTFRefCounted.h", 42, "old_count > 0");
    }

LABEL_18:
    *result = 0;
    *(result + 8) = 0;
    return result;
  }

  v5 = *(v3 + 20);
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = v3 + 8 * *(v3 + 16) + 24;
  v7 = v6;
  v8 = v5;
  do
  {
    v9 = v8 >> 1;
    v10 = (v7 + 8 * (v8 >> 1));
    v12 = *v10;
    v11 = v10 + 1;
    v8 += ~(v8 >> 1);
    if (*(v12 + 8) < a3)
    {
      v7 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  while (v8);
  v13 = v7 - v6;
  if (v5 <= v13 >> 3)
  {
    goto LABEL_18;
  }

  v14 = *(v6 + v13);
  if (*(v14 + 8) != a3)
  {
    goto LABEL_18;
  }

  v15 = *(v6 + v13);
  if (atomic_fetch_add(v14, 1u) <= 0)
  {
    goto LABEL_20;
  }

  sub_1B5D364B4(result, &v15, 0);
  result = v15;
  if (v15)
  {
    return sub_1B5D3443C(v15);
  }

  return result;
}

uint64_t *sub_1B5D36480(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    sub_1B5D3443C(v2);
  }

  return a1;
}

uint64_t sub_1B5D364B4(uint64_t result, uint64_t *a2, unsigned __int8 a3)
{
  v3 = *a2;
  *a2 = 0;
  *result = v3;
  *(result + 8) = a3;
  if (*(v3 + 15) <= a3)
  {
    __assert_rtn("DynamicTrieCursor", "TIDynamicTrie.h", 211, "m_key_index < m_trie_node->key_size()");
  }

  return result;
}

uint64_t *sub_1B5D3652C(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    sub_1B5D3443C(v2);
  }

  return a1;
}

uint64_t sub_1B5D36560(uint64_t a1)
{
  sub_1B5D360F8(&v4);
  v2 = v4;
  v4 = 0;
  result = *(a1 + 16);
  *(a1 + 16) = v2;
  if (result)
  {
    sub_1B5D3443C(result);
    result = v4;
    if (v4)
    {
      return sub_1B5D3443C(v4);
    }
  }

  return result;
}

void sub_1B5D365B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D35A54(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D365CC(uint64_t result, uint64_t a2)
{
  v2 = *result;
  if (*result)
  {
    if (a2)
    {
      if (*(result + 8) + 1 >= *(v2 + 15))
      {
        v8 = 0;
        v4 = *(v2 + 16);
        if (v4)
        {
          v5 = v2 + 24;
          v6 = 8 * v4 - 8;
          do
          {
            result = (*(a2 + 16))(a2, v5, &v8);
            if (v8)
            {
              break;
            }

            v5 += 8;
            v7 = v6;
            v6 -= 8;
          }

          while (v7);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B5D36668(uint64_t result, uint64_t a2)
{
  v2 = *result;
  if (!*result)
  {
    return result;
  }

  v13 = 0;
  if (*(result + 8) + 1 >= *(v2 + 15))
  {
    v4 = *(v2 + 20);
    if (!v4)
    {
      return result;
    }

    v5 = (v2 + 8 * *(v2 + 16) + 24);
    v6 = 8 * v4 - 8;
    while (1)
    {
      v7 = *v5;
      v9 = v7;
      if (v7)
      {
        if (atomic_fetch_add(v7, 1u) <= 0)
        {
          break;
        }
      }

      sub_1B5D364B4(v10, &v9, 0);
      (*(a2 + 16))(a2, v10, &v13);
      if (v10[0])
      {
        sub_1B5D3443C(v10[0]);
      }

      result = v9;
      if (v9)
      {
        result = sub_1B5D3443C(v9);
      }

      if ((v13 & 1) == 0)
      {
        ++v5;
        v8 = v6;
        v6 -= 8;
        if (v8)
        {
          continue;
        }
      }

      return result;
    }

LABEL_19:
    __assert_rtn("ref", "WTFRefCounted.h", 42, "old_count > 0");
  }

  v11 = v2;
  if (atomic_fetch_add(v2, 1u) <= 0)
  {
    goto LABEL_19;
  }

  sub_1B5D364B4(v12, &v11, *(result + 8) + 1);
  (*(a2 + 16))(a2, v12, &v13);
  if (v12[0])
  {
    sub_1B5D3443C(v12[0]);
  }

  result = v11;
  if (v11)
  {
    return sub_1B5D3443C(v11);
  }

  return result;
}

void sub_1B5D367D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  sub_1B5D36480(va1);
  sub_1B5D3652C(va);
  _Unwind_Resume(a1);
}

BOOL sub_1B5D3681C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (sub_1B5CE401C((*a1 + 136), (*a2 + 136)))
  {
    if (*(v2 + 112))
    {
      v4 = *(v2 + 112);
    }

    else
    {
      v4 = (v2 + 120);
    }

    if (*(v3 + 112))
    {
      v5 = *(v3 + 112);
    }

    else
    {
      v5 = (v3 + 120);
    }

    v6 = strcmp(v4, v5);
    if (v6)
    {
      return v6 >> 31;
    }

    v7 = *(v2 + 8) ? *(v2 + 8) : (v2 + 16);
    v8 = *(v3 + 8) ? *(v3 + 8) : (v3 + 16);
    v6 = strcmp(v7, v8);
    if (v6)
    {
      return v6 >> 31;
    }

    else
    {
      v17 = *(v2 + 40) - *(v3 + 40);
      if (v17)
      {
        return v17 >> 31;
      }

      else
      {
        return *(v2 + 56) < *(v3 + 56);
      }
    }
  }

  else
  {
    v10 = *(v2 + 136);
    if (v10 <= 0xE)
    {
      v11 = (v2 + 138);
    }

    else
    {
      v11 = *(v2 + 144);
    }

    v12 = *(v3 + 136);
    v13 = *(v3 + 144);
    if (v12 <= 0xE)
    {
      v14 = (v3 + 138);
    }

    else
    {
      v14 = *(v3 + 144);
    }

    if (v12 >= v10)
    {
      v15 = v10;
    }

    else
    {
      v15 = *(v3 + 136);
    }

    v16 = memcmp(v11, v14, v15);
    if (v16)
    {
      return v16 < 0;
    }

    else
    {
      return v10 < v12;
    }
  }
}

uint64_t sub_1B5D36924(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  sub_1B5D1BB0C(a1 + 40);

  return sub_1B5D1BB70(a1);
}

uint64_t sub_1B5D36970(uint64_t a1)
{
  *a1 = &unk_1F2D558B8;
  sub_1B5D1BBBC(a1 + 1392);
  v2 = *(a1 + 1384);
  if (v2)
  {
    sub_1B5CDD904(v2);
  }

  *a1 = &unk_1F2D559C0;
  v3 = *(a1 + 1352);
  if (v3 && *(a1 + 1350) == 1)
  {
    free(v3);
  }

  sub_1B5D1BBBC(a1 + 1296);
  return a1;
}

uint64_t sub_1B5D36A00(uint64_t a1)
{
  v2 = *(a1 + 216);
  if (v2 && *(a1 + 214) == 1)
  {
    free(v2);
  }

  v3 = *(a1 + 184);
  if (v3 && *(a1 + 182) == 1)
  {
    free(v3);
  }

  v4 = *(a1 + 152);
  if (v4 && *(a1 + 150) == 1)
  {
    free(v4);
  }

  v5 = *(a1 + 120);
  if (v5 && *(a1 + 118) == 1)
  {
    free(v5);
  }

  v6 = *(a1 + 88);
  if (v6 && *(a1 + 86) == 1)
  {
    free(v6);
  }

  v7 = *(a1 + 56);
  if (v7 && *(a1 + 54) == 1)
  {
    free(v7);
  }

  v8 = *(a1 + 24);
  if (v8 && *(a1 + 22) == 1)
  {
    free(v8);
  }

  return a1;
}

uint64_t sub_1B5D36ACC(uint64_t a1)
{
  *a1 = &unk_1F2D559C0;
  v2 = *(a1 + 1352);
  if (v2 && *(a1 + 1350) == 1)
  {
    free(v2);
  }

  sub_1B5D1BBBC(a1 + 1296);
  return a1;
}

void sub_1B5D36B2C(uint64_t a1)
{
  v1 = a1;
  v491 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 1912);
  if (*(a1 + 1904))
  {
    v3 = *(a1 + 1904);
  }

  else
  {
    v3 = (a1 + 1912);
  }

  sub_1B5CE410C(&md, v3);
  sub_1B5CE4C88(buf, &md, 0);
  if (SHIBYTE(md.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(md.__r_.__value_.__l.__data_);
  }

  *&md.__r_.__value_.__l.__data_ = 0uLL;
  if (buf[24] == 1)
  {
    CC_MD5(v490, len, &md);
  }

  *v1 = *&md.__r_.__value_.__l.__data_;
  sub_1B5DA4E0C(buf);
  *buf = 0x100000;
  *&buf[4] = 0;
  buf[6] = 1;
  *&buf[8] = 0;
  sub_1B5CDCAAC(buf, "dat", 0, 3u);
  sub_1B5D3AF54(v464, v1, buf);
  if (*&buf[8] && buf[6] == 1)
  {
    free(*&buf[8]);
  }

  *buf = 0x100000;
  *&buf[4] = 0;
  buf[6] = 1;
  *&buf[8] = 0;
  sub_1B5CDCAAC(buf, "idx", 0, 3u);
  sub_1B5D3AF54(v462, v1, buf);
  if (*&buf[8] && buf[6] == 1)
  {
    free(*&buf[8]);
  }

  v454 = 0;
  v455 = 0;
  v4 = *(*(v1 + 248) + 8);
  ucol_getVersion();
  v5 = *(*(v1 + 248) + 8);
  ucol_getUCAVersion();
  v6 = *(v1 + 240);
  if ((v6 & 0x40000) != 0)
  {
    goto LABEL_696;
  }

  v453 = v1;
  if ((*(v1 + 1964) & 1) == 0 && *(v1 + 1965) != 1)
  {
    if ((v6 & 0x4000) == 0 && sub_1B5D9AAA8(&v455, &v454, v1, v464) && sub_1B5D9AAA8(&v455, &v454, v1, v462))
    {
      v11 = atomic_load(byte_1EB90C7D0);
      if (v11)
      {
        v12 = atomic_load(byte_1EB90CC20);
        if (v12)
        {
          v13 = *(v1 + 1904);
          if (!v13)
          {
            v13 = v2;
          }

          v14 = *(v1 + 24);
          if (!v14)
          {
            v14 = v1 + 32;
          }

          printf("Nothing to be done for %s (%s) ", v13, v14);
          putchar(10);
        }

        else
        {
          v367 = sub_1B5D32914();
          if (os_log_type_enabled(v367, OS_LOG_TYPE_DEFAULT))
          {
            v368 = *(v1 + 1904);
            if (!v368)
            {
              v368 = v2;
            }

            v369 = *(v1 + 24);
            if (!v369)
            {
              v369 = v1 + 32;
            }

            *buf = 136315394;
            *&buf[4] = v368;
            *&buf[12] = 2080;
            *&buf[14] = v369;
            _os_log_impl(&dword_1B5CDB000, v367, OS_LOG_TYPE_DEFAULT, "Nothing to be done for %s (%s) ", buf, 0x16u);
          }
        }
      }

      goto LABEL_696;
    }

    v15 = atomic_load(byte_1EB90C7D0);
    if (v15)
    {
      v16 = atomic_load(byte_1EB90CC20);
      if (v16)
      {
        v17 = *(v1 + 1904);
        if (!v17)
        {
          v17 = v2;
        }

        v18 = *(v1 + 24);
        if (!v18)
        {
          v18 = (v1 + 32);
        }

        printf("Compiling %s (%s) ", v17, v18);
        putchar(10);
      }

      else
      {
        v56 = sub_1B5D32914();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          v57 = *(v1 + 1904);
          if (!v57)
          {
            v57 = v2;
          }

          v58 = *(v1 + 24);
          if (!v58)
          {
            v58 = v1 + 32;
          }

          *buf = 136315394;
          *&buf[4] = v57;
          *&buf[12] = 2080;
          *&buf[14] = v58;
          _os_log_impl(&dword_1B5CDB000, v56, OS_LOG_TYPE_DEFAULT, "Compiling %s (%s) ", buf, 0x16u);
        }
      }
    }

    sub_1B5D3B4F0(v1);
    if ((*(v1 + 243) & 2) == 0)
    {
      *(v1 + 1992) = *(v1 + 1984);
      *&md.__r_.__value_.__r.__words[1] = 0uLL;
      md.__r_.__value_.__r.__words[0] = &md.__r_.__value_.__l.__size_;
      v59 = v1 + 1736;
      while (1)
      {
        v59 = *v59;
        if (!v59)
        {
          break;
        }

        if (!*sub_1B5D4171C(&md, buf, (v59 + 16)))
        {
          operator new();
        }
      }

      v60 = *(v1 + 24);
      if (!v60)
      {
        v60 = (v1 + 32);
      }

      if (*v60 == 116 && v60[1] == 97 && !v60[2])
      {
        for (i = 0; i != 53; ++i)
        {
          v62 = dword_1B5DC48D4[i];
          (*(**(v1 + 248) + 16))(buf);
          if (!*sub_1B5D4171C(&md, &v480, buf))
          {
            operator new();
          }

          if (*buf >= 0xFu && *&buf[8])
          {
            MEMORY[0x1B8C880C0](*&buf[8], 0x1000C8077774924);
          }
        }
      }

      v449 = &buf[16];
      v63 = 1;
      while (1)
      {
        if ((v63 & 0xF800 | 0x400) != 0xDC00)
        {
          (*(**(v1 + 248) + 16))(&__n);
          v64 = __n;
          if (v63 < 0x10000)
          {
            if (__n)
            {
LABEL_136:
              size = md.__r_.__value_.__l.__size_;
              if (!md.__r_.__value_.__l.__size_)
              {
                goto LABEL_195;
              }

              v66 = __n <= 0xEu ? &__n + 2 : *v477;
              v67 = &md.__r_.__value_.__r.__words[1];
              do
              {
                v68 = size;
                v69 = v67;
                v70 = *(size + 32);
                v71 = *(size + 40);
                if (v70 <= 0xE)
                {
                  v72 = &v68[1].__r_.__value_.__r.__words[1] + 2;
                }

                else
                {
                  v72 = v71;
                }

                if (v64 >= v70)
                {
                  v73 = v70;
                }

                else
                {
                  v73 = v64;
                }

                v74 = memcmp(v72, v66, v73);
                v75 = v74 < 0;
                if (!v74)
                {
                  v75 = v70 < v64;
                }

                v76 = v75;
                if (v75)
                {
                  v67 = v69;
                }

                else
                {
                  v67 = v68;
                }

                size = v68->__r_.__value_.__r.__words[v76];
              }

              while (size);
              if (v67 == &md.__r_.__value_.__r.__words[1])
              {
                goto LABEL_195;
              }

              v77 = !v75;
              if (v75)
              {
                v78 = v69;
              }

              else
              {
                v78 = v68;
              }

              v79 = LOWORD(v78[1].__r_.__value_.__r.__words[1]);
              v80 = v78[1].__r_.__value_.__r.__words[2];
              v81 = &v69[1].__r_.__value_.__r.__words[1] + 2;
              if (v77)
              {
                v81 = &v68[1].__r_.__value_.__r.__words[1] + 2;
              }

              if (v79 <= 0xE)
              {
                v82 = v81;
              }

              else
              {
                v82 = v80;
              }

              if (v79 >= v64)
              {
                v83 = v64;
              }

              else
              {
                v83 = v79;
              }

              v84 = memcmp(v66, v82, v83);
              v91 = v64 < v79;
              if (v84)
              {
                v91 = v84 < 0;
              }

              if (v91)
              {
                goto LABEL_195;
              }

              if (*v66 == 2)
              {
                exception = __cxa_allocate_exception(0x20uLL);
                sub_1B5CE410C(buf, "Sort key top byte collides with 0x02!!");
                sub_1B5D32AFC(exception, buf);
                __cxa_throw(exception, &unk_1F2D56F00, sub_1B5D32BEC);
              }

              if (v64 >= 5)
              {
                v92 = atomic_load(byte_1EB90C7D0);
                if (v92)
                {
                  v93 = atomic_load(byte_1EB90CC20);
                  if (v93)
                  {
                    sub_1B5D523B0(buf, &__n, v85, v86, v87, v88, v89, v90);
                    v94 = *&buf[8];
                    if (!*&buf[8])
                    {
                      v94 = &buf[16];
                    }

                    printf("U+%04X: long sort key : %s", v63, v94);
                    if (*&buf[8] && buf[6] == 1)
                    {
                      free(*&buf[8]);
                    }

                    putchar(10);
                  }

                  else
                  {
                    v107 = sub_1B5D32914();
                    if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
                    {
                      sub_1B5D523B0(buf, &__n, v108, v109, v110, v111, v112, v113);
                      v114 = *&buf[8];
                      if (!*&buf[8])
                      {
                        v114 = &buf[16];
                      }

                      LODWORD(v480.__r_.__value_.__l.__data_) = 67109378;
                      HIDWORD(v480.__r_.__value_.__r.__words[0]) = v63;
                      LOWORD(v480.__r_.__value_.__r.__words[1]) = 2080;
                      *(&v480.__r_.__value_.__r.__words[1] + 2) = v114;
                      _os_log_impl(&dword_1B5CDB000, v107, OS_LOG_TYPE_DEFAULT, "U+%04X: long sort key : %s", &v480, 0x12u);
                      if (*&buf[8] && buf[6] == 1)
                      {
                        free(*&buf[8]);
                      }
                    }
                  }
                }

                v115 = *(v1 + 2008);
                v116 = *(v1 + 2016) - v115;
                v117 = atomic_load(byte_1EB90C7D0);
                if (v117)
                {
                  v118 = atomic_load(byte_1EB90CC20);
                  if (v118)
                  {
                    printf(" offset=%X", *(v1 + 2016) - v115);
                    putchar(10);
                  }

                  else
                  {
                    v119 = sub_1B5D32914();
                    if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 67109120;
                      *&buf[4] = v116;
                      _os_log_impl(&dword_1B5CDB000, v119, OS_LOG_TYPE_DEFAULT, " offset=%X", buf, 8u);
                    }
                  }
                }

                v120 = v63 | 0x1000000;
                v121 = *(v1 + 1992);
                v122 = *(v1 + 2000);
                if (v121 >= v122)
                {
                  v124 = *(v1 + 1984);
                  v125 = (v121 - v124) >> 3;
                  if ((v125 + 1) >> 61)
                  {
                    sub_1B5D04FA0();
                  }

                  v126 = v122 - v124;
                  v127 = v126 >> 2;
                  if (v126 >> 2 <= (v125 + 1))
                  {
                    v127 = v125 + 1;
                  }

                  if (v126 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v128 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v128 = v127;
                  }

                  if (v128)
                  {
                    sub_1B5CE1BC0(v128);
                  }

                  v129 = (8 * v125);
                  *v129 = v120 | (v116 << 32);
                  v123 = 8 * v125 + 8;
                  v130 = *(v1 + 1984);
                  v131 = *(v1 + 1992) - v130;
                  v132 = v129 - v131;
                  memcpy(v129 - v131, v130, v131);
                  v133 = *(v1 + 1984);
                  *(v1 + 1984) = v132;
                  *(v1 + 1992) = v123;
                  *(v1 + 2000) = 0;
                  if (v133)
                  {
                    operator delete(v133);
                  }
                }

                else
                {
                  *v121 = v120 | (v116 << 32);
                  v123 = (v121 + 1);
                }

                v134 = v1;
                *(v1 + 1992) = v123;
                v135 = *(v1 + 2016);
                v136 = __n;
                if (__n <= 0xEu)
                {
                  v137 = &__n + 2;
                }

                else
                {
                  v137 = *v477;
                }

                if (__n)
                {
                  v138 = *(v1 + 2024);
                  if (v138 - v135 >= __n)
                  {
                    do
                    {
                      v144 = *v137++;
                      *v135++ = v144;
                      --v136;
                    }

                    while (v136);
                    v134 = v1;
                    *(v1 + 2016) = v135;
                  }

                  else
                  {
                    v139 = *(v1 + 2008);
                    v140 = (v135 - v139);
                    v141 = v135 - v139 + __n;
                    if (v141 < 0)
                    {
                      sub_1B5D04FA0();
                    }

                    v142 = v138 - v139;
                    if (2 * v142 > v141)
                    {
                      v141 = 2 * v142;
                    }

                    if (v142 >= 0x3FFFFFFFFFFFFFFFLL)
                    {
                      v143 = 0x7FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v143 = v141;
                    }

                    if (v143)
                    {
                      operator new();
                    }

                    v447 = *(v1 + 2016);
                    v134 = v1;
                    memcpy(v140, v137, __n);
                    memcpy(&v140[v136], v135, v447 - v135);
                    *(v1 + 2016) = v135;
                    memcpy(0, v139, v135 - v139);
                    *(v1 + 2008) = 0;
                    *(v1 + 2016) = v136 - v139 + v447;
                    *(v1 + 2024) = 0;
                    if (v139)
                    {
                      operator delete(v139);
                      v135 = *(v1 + 2016);
                    }

                    else
                    {
                      v135 = (v136 - v139 + v447);
                    }
                  }
                }

                v145 = *(v134 + 2024);
                if (v135 >= v145)
                {
                  v147 = *(v134 + 2008);
                  v148 = v135 - v147 + 1;
                  if (v148 < 0)
                  {
                    sub_1B5D04FA0();
                  }

                  v149 = v145 - v147;
                  if (2 * v149 > v148)
                  {
                    v148 = 2 * v149;
                  }

                  if (v149 >= 0x3FFFFFFFFFFFFFFFLL)
                  {
                    v150 = 0x7FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v150 = v148;
                  }

                  if (v150)
                  {
                    operator new();
                  }

                  v151 = v135 - v147;
                  *(v135 - v147) = 0;
                  v146 = v135 - v147 + 1;
                  memcpy(0, v147, v151);
                  *(v1 + 2008) = 0;
                  *(v1 + 2016) = v146;
                  *(v1 + 2024) = 0;
                  if (v147)
                  {
                    operator delete(v147);
                  }
                }

                else
                {
                  *v135 = 0;
                  v146 = (v135 + 1);
                }

                *(v1 + 2016) = v146;
LABEL_195:
                if (__n >= 0xFu && *v477)
                {
                  MEMORY[0x1B8C880C0](*v477, 0x1000C8077774924);
                }

                goto LABEL_130;
              }
            }

            *buf = v63;
            *&buf[4] = 0;
            strncpy(&buf[4], &__n + 2, v64);
            v95 = *(v1 + 1992);
            v96 = *(v1 + 2000);
            if (v95 >= v96)
            {
              v98 = *(v1 + 1984);
              v99 = (v95 - v98) >> 3;
              if ((v99 + 1) >> 61)
              {
                sub_1B5D04FA0();
              }

              v100 = v96 - v98;
              v101 = v100 >> 2;
              if (v100 >> 2 <= (v99 + 1))
              {
                v101 = v99 + 1;
              }

              if (v100 >= 0x7FFFFFFFFFFFFFF8)
              {
                v102 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v102 = v101;
              }

              if (v102)
              {
                sub_1B5CE1BC0(v102);
              }

              *(8 * v99) = *buf;
              v97 = 8 * v99 + 8;
              v103 = *(v1 + 1984);
              v104 = *(v1 + 1992) - v103;
              v105 = (8 * v99 - v104);
              memcpy(v105, v103, v104);
              v106 = *(v1 + 1984);
              *(v1 + 1984) = v105;
              *(v1 + 1992) = v97;
              *(v1 + 2000) = 0;
              if (v106)
              {
                operator delete(v106);
              }
            }

            else
            {
              *v95 = *buf;
              v97 = (v95 + 1);
            }

            *(v1 + 1992) = v97;
            goto LABEL_195;
          }

          if (__n)
          {
            goto LABEL_136;
          }
        }

LABEL_130:
        if (++v63 == 196608)
        {
          sub_1B5D416A8(md.__r_.__value_.__l.__size_);
          v152 = *(v1 + 1984);
          v153 = (*(v1 + 1992) - v152) >> 3;
          v154 = *(v1 + 2008);
          v155 = (*(v1 + 2016) - v154);
          *buf = &unk_1F2D580D8;
          *&buf[8] = v1 + 328;
          *&buf[16] = v152;
          *&buf[24] = v153;
          v485 = v154;
          v486 = v155;
          v156 = *(v1 + 280);
          v158 = *v156;
          v157 = v156[1];
          while (v158 != v157)
          {
            v159 = *v158;
            (*(*buf + 8))(&md, buf, *v158 + 104);
            v160 = sub_1B5CE401C(&md, (v159 + 136));
            if (LOWORD(md.__r_.__value_.__l.__data_) >= 0xFu && md.__r_.__value_.__l.__size_)
            {
              MEMORY[0x1B8C880C0](md.__r_.__value_.__l.__size_, 0x1000C8077774924);
            }

            if (!v160)
            {
              v377 = *v158;
              v378 = *(*v158 + 112);
              v379 = *v158 + 120;
              if (!v378)
              {
                v378 = *v158 + 120;
              }

              *&v470 = v378;
              v380 = *(v377 + 104);
              DWORD2(v470) = 0;
              HIDWORD(v470) = v380;
              v471[0] = 0;
              sub_1B5CDCF70(&v470);
              v381 = *(v377 + 104);
              v382 = *(v377 + 112);
              if (!v382)
              {
                v382 = v379;
              }

              *v466 = v382;
              *&v466[8] = v381;
              *v467 = v381;
              *&v467[4] = 0;
              sub_1B5CDCF70(v466);
              while (v470 == *v466)
              {
                if (DWORD2(v470) == *&v466[8])
                {
                  v434 = atomic_load(byte_1EB90C7D0);
                  if (v434)
                  {
                    v435 = atomic_load(byte_1EB90CC20);
                    if (v435)
                    {
                      sub_1B5D523B0(&md, (*v158 + 136), v383, v384, v385, v386, v387, v388);
                      v436 = md.__r_.__value_.__l.__size_;
                      if (!md.__r_.__value_.__l.__size_)
                      {
                        v436 = &md.__r_.__value_.__s.__data_[16];
                      }

                      printf("  ICU collator's original sort key: %s", v436);
                      if (md.__r_.__value_.__l.__size_ && md.__r_.__value_.__s.__data_[6] == 1)
                      {
                        free(md.__r_.__value_.__l.__size_);
                      }

                      putchar(10);
                    }

                    else
                    {
                      v437 = sub_1B5D32914();
                      if (os_log_type_enabled(v437, OS_LOG_TYPE_DEFAULT))
                      {
                        sub_1B5D523B0(&md, (*v158 + 136), v438, v439, v440, v441, v442, v443);
                        v444 = md.__r_.__value_.__l.__size_;
                        if (!md.__r_.__value_.__l.__size_)
                        {
                          v444 = &md.__r_.__value_.__s.__data_[16];
                        }

                        LODWORD(v480.__r_.__value_.__l.__data_) = 136315138;
                        *(v480.__r_.__value_.__r.__words + 4) = v444;
                        _os_log_impl(&dword_1B5CDB000, v437, OS_LOG_TYPE_DEFAULT, "  ICU collator's original sort key: %s", &v480, 0xCu);
                        if (md.__r_.__value_.__l.__size_ && md.__r_.__value_.__s.__data_[6] == 1)
                        {
                          free(md.__r_.__value_.__l.__size_);
                        }
                      }
                    }
                  }

                  v445 = __cxa_allocate_exception(0x20uLL);
                  if (*(*v158 + 112))
                  {
                    v446 = *(*v158 + 112);
                  }

                  else
                  {
                    v446 = (*v158 + 120);
                  }

                  sub_1B5CE410C(&v480, v446);
                  sub_1B5D41644(&md, "sort key not matching for ", &v480);
                  sub_1B5D32AFC(v445, &md);
                  __cxa_throw(v445, &unk_1F2D56F00, sub_1B5D32BEC);
                }

                v389 = v471[0];
                sub_1B5CDD030(buf, v471[0], &v457);
                (*(**(v1 + 248) + 16))(&v460);
                v396 = atomic_load(byte_1EB90C7D0);
                if (v396)
                {
                  v397 = atomic_load(byte_1EB90CC20);
                  if (v397)
                  {
                    sub_1B5D523B0(&md, &v457, v390, v391, v392, v393, v394, v395);
                    v398 = md.__r_.__value_.__l.__size_;
                    sub_1B5D523B0(&v480, &v460, v399, v400, v401, v402, v403, v404);
                    if (v398)
                    {
                      v405 = v398;
                    }

                    else
                    {
                      v405 = &md.__r_.__value_.__s.__data_[16];
                    }

                    v406 = v480.__r_.__value_.__l.__size_;
                    if (!v480.__r_.__value_.__l.__size_)
                    {
                      v406 = &v480.__r_.__value_.__s.__data_[16];
                    }

                    printf("  Sort key mapping: U+%04X -> %s : %s", v389, v405, v406);
                    if (v480.__r_.__value_.__l.__size_ && v480.__r_.__value_.__s.__data_[6] == 1)
                    {
                      free(v480.__r_.__value_.__l.__size_);
                    }

                    if (md.__r_.__value_.__l.__size_ && md.__r_.__value_.__s.__data_[6] == 1)
                    {
                      free(md.__r_.__value_.__l.__size_);
                    }

                    putchar(10);
                  }

                  else
                  {
                    v407 = sub_1B5D32914();
                    if (os_log_type_enabled(v407, OS_LOG_TYPE_DEFAULT))
                    {
                      sub_1B5D523B0(&md, &v457, v408, v409, v410, v411, v412, v413);
                      v414 = md.__r_.__value_.__l.__size_;
                      sub_1B5D523B0(&v480, &v460, v415, v416, v417, v418, v419, v420);
                      v421 = v480.__r_.__value_.__l.__size_;
                      if (v414)
                      {
                        v422 = v414;
                      }

                      else
                      {
                        v422 = &md.__r_.__value_.__s.__data_[16];
                      }

                      LODWORD(__n) = 67109634;
                      if (!v480.__r_.__value_.__l.__size_)
                      {
                        v421 = &v480.__r_.__value_.__s.__data_[16];
                      }

                      HIDWORD(__n) = v389;
                      *v477 = 2080;
                      *&v477[2] = v422;
                      v478 = 2080;
                      v479 = v421;
                      _os_log_impl(&dword_1B5CDB000, v407, OS_LOG_TYPE_DEFAULT, "  Sort key mapping: U+%04X -> %s : %s", &__n, 0x1Cu);
                      if (v480.__r_.__value_.__l.__size_ && v480.__r_.__value_.__s.__data_[6] == 1)
                      {
                        free(v480.__r_.__value_.__l.__size_);
                      }

                      if (md.__r_.__value_.__l.__size_ && md.__r_.__value_.__s.__data_[6] == 1)
                      {
                        free(md.__r_.__value_.__l.__size_);
                      }
                    }
                  }
                }

                if (v460 >= 0xFu && v461)
                {
                  MEMORY[0x1B8C880C0](v461, 0x1000C8077774924);
                }

                if (v457 >= 0xFu && v458)
                {
                  MEMORY[0x1B8C880C0](v458, 0x1000C8077774924);
                }

                sub_1B5CDCF70(&v470);
              }

              __assert_rtn("operator!=", "TIString.h", 202, "p==rhs.p");
            }

            ++v158;
          }

          break;
        }
      }
    }

    v161 = *(v1 + 280);
    v162 = *v161;
    v163 = v161[1];
    v164 = 126 - 2 * __clz(v163 - *v161);
    *buf = sub_1B5D3681C;
    if (v163 == v162)
    {
      v165 = 0;
    }

    else
    {
      v165 = v164;
    }

    sub_1B5D40274(v162, v163, buf, v165, 1);
    v171 = **(v1 + 280);
    if (*(*(v1 + 280) + 8) != v171)
    {
      v172 = 0;
      v173 = 1;
      do
      {
        sub_1B5DA5964(*(v1 + 272), *(v171 + 8 * v172), 0, v166, v167, v168, v169, v170);
        v172 = v173;
        v171 = **(v1 + 280);
        ++v173;
      }

      while (v172 < (*(*(v1 + 280) + 8) - v171) >> 3);
    }

    v174 = atomic_load(byte_1EB90C7D0);
    if (v174)
    {
      v175 = atomic_load(byte_1EB90CC20);
      if (v175)
      {
        printf("\tInserted %d trie nodes.", dword_1EB90CBF8);
        putchar(10);
      }

      else
      {
        v176 = sub_1B5D32914();
        if (os_log_type_enabled(v176, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = dword_1EB90CBF8;
          _os_log_impl(&dword_1B5CDB000, v176, OS_LOG_TYPE_DEFAULT, "\tInserted %d trie nodes.", buf, 8u);
        }
      }
    }

    if (*(v1 + 240))
    {
      v177 = sub_1B5DA67C0(*(v1 + 272));
      v178 = atomic_load(byte_1EB90C7D0);
      if (v178)
      {
        v179 = v177;
        v180 = atomic_load(byte_1EB90CC20);
        if (v180)
        {
          printf("\tCondensed %d nodes into patricia nodes.", v177);
          putchar(10);
        }

        else
        {
          v181 = sub_1B5D32914();
          if (os_log_type_enabled(v181, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = v179;
            _os_log_impl(&dword_1B5CDB000, v181, OS_LOG_TYPE_DEFAULT, "\tCondensed %d nodes into patricia nodes.", buf, 8u);
          }
        }
      }
    }

    *buf = 0x100000;
    *&buf[4] = 0;
    buf[6] = 1;
    *&buf[8] = 0;
    sub_1B5CDCAAC(buf, "dat", 0, 3u);
    sub_1B5D3AF54(&__n, v1, buf);
    if (*&buf[8] && buf[6] == 1)
    {
      free(*&buf[8]);
    }

    v182 = atomic_load(byte_1EB90C7D0);
    if (v182)
    {
      v183 = atomic_load(byte_1EB90CC20);
      if (v183)
      {
        v184 = *v477;
        if (!*v477)
        {
          v184 = &v477[8];
        }

        printf("writing: %s", v184);
        putchar(10);
      }

      else
      {
        v185 = sub_1B5D32914();
        if (os_log_type_enabled(v185, OS_LOG_TYPE_DEFAULT))
        {
          v186 = *v477;
          if (!*v477)
          {
            v186 = &v477[8];
          }

          *buf = 136315138;
          *&buf[4] = v186;
          _os_log_impl(&dword_1B5CDB000, v185, OS_LOG_TYPE_DEFAULT, "writing: %s", buf, 0xCu);
        }
      }
    }

    v187 = &v477[8];
    if (*v477)
    {
      v188 = *v477;
    }

    else
    {
      v188 = &v477[8];
    }

    sub_1B5DA5160(&md, v188);
    if ((v473 & 1) == 0)
    {
      sub_1B5CF7CDC(buf);
      v423 = sub_1B5CE599C(&buf[16], "Failed to open data file at ", 28);
      if (*v477)
      {
        v187 = *v477;
      }

      v424 = strlen(v187);
      v425 = sub_1B5CE599C(v423, v187, v424);
      v426 = sub_1B5CE599C(v425, " (errno=", 8);
      v427 = MEMORY[0x1B8C87F00](v426, v474);
      sub_1B5CE599C(v427, ")", 1);
      v428 = __cxa_allocate_exception(0x20uLL);
      sub_1B5D3F684(&v480, buf);
      sub_1B5D32AFC(v428, &v480);
      __cxa_throw(v428, &unk_1F2D56F00, sub_1B5D32BEC);
    }

    sub_1B5D3F72C(v1, &md, 0);
    v189 = *(v1 + 280);
    v190 = *v189;
    v191 = v189[1] - *v189;
    if (!v191)
    {
LABEL_524:
      *buf = 0;
      if (v473 == 1)
      {
        v291 = 0;
        do
        {
          v292 = write(__fd, &buf[v291], 4 - v291);
          if (!v292)
          {
            goto LABEL_529;
          }

          v291 += v292;
        }

        while ((v292 & 0x8000000000000000) == 0);
        v473 = 0;
      }

LABEL_529:
      v293 = sub_1B5DA53A0(__fd);
      v294 = v293;
      if ((*(v1 + 241) & 0x10) != 0)
      {
        v295 = 0x80000000;
      }

      else
      {
        v295 = 0x800000;
      }

      if (v295 < v293)
      {
        sub_1B5CF7CDC(buf);
        v429 = sub_1B5CE599C(&buf[16], "Unigram index length=", 21);
        v430 = MEMORY[0x1B8C87F10](v429, v294);
        v431 = sub_1B5CE599C(v430, " bytes exceeds trie addressing capacity=", 40);
        MEMORY[0x1B8C87F10](v431, v295);
        if ((*(v453 + 241) & 0x10) == 0)
        {
          sub_1B5CE599C(&buf[16], " (try passing the '-4' option when compiling)", 45);
        }

        v432 = __cxa_allocate_exception(0x20uLL);
        sub_1B5D3F684(&v480, buf);
        sub_1B5D32AFC(v432, &v480);
        __cxa_throw(v432, &unk_1F2D56F00, sub_1B5D32BEC);
      }

      v296 = atomic_load(byte_1EB90C7D0);
      if (v296)
      {
        v297 = atomic_load(byte_1EB90CC20);
        if (v297)
        {
          printf("\tWrote %d non-derivable words in %d bytes", *(v1 + 1888), v293);
          putchar(10);
        }

        else
        {
          v298 = sub_1B5D32914();
          if (os_log_type_enabled(v298, OS_LOG_TYPE_DEFAULT))
          {
            v299 = *(v1 + 1888);
            *buf = 67109376;
            *&buf[4] = v299;
            *&buf[8] = 1024;
            *&buf[10] = v294;
            _os_log_impl(&dword_1B5CDB000, v298, OS_LOG_TYPE_DEFAULT, "\tWrote %d non-derivable words in %d bytes", buf, 0xEu);
          }
        }
      }

      v300 = atomic_load(byte_1EB90C7D0);
      if (v300)
      {
        v301 = atomic_load(byte_1EB90CC20);
        if (v301)
        {
          putchar(10);
        }

        else
        {
          v302 = sub_1B5D32914();
          if (os_log_type_enabled(v302, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1B5CDB000, v302, OS_LOG_TYPE_DEFAULT, "", buf, 2u);
          }
        }
      }

      v303 = *(v1 + 240);
      if ((v303 & 0x100) == 0)
      {
        goto LABEL_627;
      }

      v448 = sub_1B5DA53A0(__fd);
      memset(buf, 0, sizeof(buf));
      LODWORD(v485) = 1065353216;
      v304 = *(v1 + 280);
      v306 = *v304;
      v305 = v304[1];
      if (*v304 == v305)
      {
        v307 = 0;
        v308 = -1;
        goto LABEL_599;
      }

      v307 = 0;
      v308 = -1;
LABEL_546:
      v309 = *v306;
      v310 = *(*v306 + 15);
      LODWORD(v457) = v310;
      if (!v310)
      {
        goto LABEL_596;
      }

      v312 = *buf;
      v311 = *&buf[8];
      if (sub_1B5D3FF9C(*buf, *&buf[8], v310))
      {
        if (*(v309 + 96) == 1)
        {
          v480.__r_.__value_.__r.__words[0] = &v457;
          v1 = v453;
          sub_1B5D40048(buf, v310)[3] = v309;
        }

        else
        {
          v315 = atomic_load(byte_1EB90C7D0);
          v1 = v453;
          if (v315)
          {
            v316 = atomic_load(byte_1EB90CC20);
            if (v316)
            {
              *&v470 = &v457;
              v317 = sub_1B5D40048(buf, v457);
              sub_1B5D33704(&v480, v317[3]);
              v318 = v480.__r_.__value_.__l.__size_;
              sub_1B5D33704(&v470, *v306);
              v319 = &v480.__r_.__value_.__s.__data_[16];
              if (v318)
              {
                v319 = v318;
              }

              v320 = *(&v470 + 1);
              if (!*(&v470 + 1))
              {
                v320 = v471;
              }

              printf("WARNING: words [%s] and [%s] share word id %u; only former is stored in word id map", v319, v320, v457);
              if (*(&v470 + 1) && BYTE6(v470) == 1)
              {
                free(*(&v470 + 1));
              }

              if (v480.__r_.__value_.__l.__size_ && v480.__r_.__value_.__s.__data_[6] == 1)
              {
                free(v480.__r_.__value_.__l.__size_);
              }

              putchar(10);
            }

            else
            {
              v324 = sub_1B5D32914();
              if (os_log_type_enabled(v324, OS_LOG_TYPE_DEFAULT))
              {
                *&v470 = &v457;
                v325 = sub_1B5D40048(buf, v457);
                sub_1B5D33704(&v480, v325[3]);
                v326 = v480.__r_.__value_.__l.__size_;
                sub_1B5D33704(&v470, *v306);
                v327 = &v480.__r_.__value_.__s.__data_[16];
                if (v326)
                {
                  v327 = v326;
                }

                v328 = *(&v470 + 1);
                if (!*(&v470 + 1))
                {
                  v328 = v471;
                }

                *v466 = 136315650;
                *&v466[4] = v327;
                *v467 = 2080;
                *&v467[2] = v328;
                v468 = 1024;
                v469 = v457;
                _os_log_impl(&dword_1B5CDB000, v324, OS_LOG_TYPE_DEFAULT, "WARNING: words [%s] and [%s] share word id %u; only former is stored in word id map", v466, 0x1Cu);
                if (*(&v470 + 1) && BYTE6(v470) == 1)
                {
                  free(*(&v470 + 1));
                }

                if (v480.__r_.__value_.__l.__size_ && v480.__r_.__value_.__s.__data_[6] == 1)
                {
                  free(v480.__r_.__value_.__l.__size_);
                }
              }
            }
          }
        }

        goto LABEL_596;
      }

      if (!*&v311)
      {
        goto LABEL_579;
      }

      v313 = vcnt_s8(v311);
      v313.i16[0] = vaddlv_u8(v313);
      if (v313.u32[0] > 1uLL)
      {
        v314 = v310;
        if (*&v311 <= v310)
        {
          v314 = v310 % v311.i32[0];
        }
      }

      else
      {
        v314 = (v311.i32[0] - 1) & v310;
      }

      v321 = *(v312 + 8 * v314);
      if (!v321 || (v322 = *v321) == 0)
      {
LABEL_579:
        operator new();
      }

      while (1)
      {
        v323 = v322[1];
        if (v323 == v310)
        {
          if (*(v322 + 4) == v310)
          {
            if (v310 < v308)
            {
              v308 = v310;
            }

            if (v307 <= v310)
            {
              v307 = v310;
            }

            v1 = v453;
LABEL_596:
            if (++v306 == v305)
            {
LABEL_599:
              v480.__r_.__value_.__s.__data_[0] = (v307 - v308 + 1) >> 16;
              v480.__r_.__value_.__s.__data_[1] = (v307 - v308 + 1) >> 8;
              v480.__r_.__value_.__s.__data_[2] = v307 - v308 + 1;
              if (v473 != 1)
              {
                goto LABEL_604;
              }

              v329 = 0;
              do
              {
                v330 = write(__fd, &v480 + v329, 3 - v329);
                if (!v330)
                {
                  v480.__r_.__value_.__s.__data_[0] = BYTE2(v308);
                  v480.__r_.__value_.__s.__data_[1] = BYTE1(v308);
                  v480.__r_.__value_.__s.__data_[2] = v308;
                  if (v473)
                  {
                    v356 = 0;
                    do
                    {
                      v357 = write(__fd, &v480 + v356, 3 - v356);
                      if (!v357)
                      {
                        goto LABEL_605;
                      }

                      v356 += v357;
                    }

                    while ((v357 & 0x8000000000000000) == 0);
                    v473 = 0;
                  }

                  goto LABEL_605;
                }

                v329 += v330;
              }

              while ((v330 & 0x8000000000000000) == 0);
              v473 = 0;
LABEL_604:
              v480.__r_.__value_.__s.__data_[0] = BYTE2(v308);
              v480.__r_.__value_.__s.__data_[1] = BYTE1(v308);
              v480.__r_.__value_.__s.__data_[2] = v308;
LABEL_605:
              for (LODWORD(v470) = v308; v308 <= v307; LODWORD(v470) = v308)
              {
                if (sub_1B5D3FF9C(*buf, *&buf[8], v308))
                {
                  v480.__r_.__value_.__r.__words[0] = &v470;
                  v331 = *(sub_1B5D40048(buf, v308)[3] + 248);
                }

                else
                {
                  v331 = 0;
                }

                if ((*(v1 + 241) & 0x10) != 0)
                {
                  LODWORD(v480.__r_.__value_.__l.__data_) = bswap32(v331);
                  if (v473 == 1)
                  {
                    v334 = 0;
                    do
                    {
                      v335 = write(__fd, &v480 + v334, 4 - v334);
                      if (!v335)
                      {
                        goto LABEL_620;
                      }

                      v334 += v335;
                    }

                    while ((v335 & 0x8000000000000000) == 0);
LABEL_619:
                    v473 = 0;
                  }
                }

                else
                {
                  v480.__r_.__value_.__s.__data_[0] = BYTE2(v331);
                  v480.__r_.__value_.__s.__data_[1] = BYTE1(v331);
                  v480.__r_.__value_.__s.__data_[2] = v331;
                  if (v473 == 1)
                  {
                    v332 = 0;
                    while (1)
                    {
                      v333 = write(__fd, &v480 + v332, 3 - v332);
                      if (!v333)
                      {
                        break;
                      }

                      v332 += v333;
                      if (v333 < 0)
                      {
                        goto LABEL_619;
                      }
                    }
                  }
                }

LABEL_620:
                v308 = v470 + 1;
              }

              sub_1B5DA53E8(__fd, 72);
              LODWORD(v480.__r_.__value_.__l.__data_) = bswap32(v448);
              if (v473 == 1)
              {
                v336 = 0;
                do
                {
                  v337 = write(__fd, &v480 + v336, 4 - v336);
                  if (!v337)
                  {
                    goto LABEL_626;
                  }

                  v336 += v337;
                }

                while ((v337 & 0x8000000000000000) == 0);
                v473 = 0;
              }

LABEL_626:
              sub_1B5DA542C(__fd);
              sub_1B5D1BB70(buf);
              v303 = *(v1 + 240);
LABEL_627:
              if ((v303 & 8) != 0)
              {
                sub_1B5DA53A0(__fd);
                if (!*(v1 + 1840))
                {
                  __assert_rtn("write_unigram_data", "UnigramsCompiler.cpp", 1047, "m_huffman_coder.is_compiled()");
                }

                v338 = *(v1 + 1864);
                v339 = *(v338 - 4);
                if (v339 != -1)
                {
                  sub_1B5D0DF30((v339 + 1));
                }

                for (j = *(v1 + 1856); j != v338; j += 8)
                {
                  ++*(4 * *(j + 4));
                }

                buf[0] = -1;
                if (v473 == 1)
                {
                  v341 = 0;
                  do
                  {
                    v342 = write(__fd, &buf[v341], 1 - v341);
                    if (!v342)
                    {
                      goto LABEL_639;
                    }

                    v341 += v342;
                  }

                  while ((v342 & 0x8000000000000000) == 0);
                  v473 = 0;
                }

LABEL_639:
                for (k = 1; ; ++k)
                {
                  v344 = *(4 * k);
                  if (v344 >= 0x10000)
                  {
                    __assert_rtn("write", "TIHuffmanCoder.cpp", 191, "num_chars_in_depth[depth] <= 0xffff");
                  }

                  *buf = bswap32(v344) >> 16;
                  if (v473 == 1)
                  {
                    v345 = 0;
                    do
                    {
                      v346 = write(__fd, &buf[v345], 2 - v345);
                      if (!v346)
                      {
                        goto LABEL_646;
                      }

                      v345 += v346;
                    }

                    while ((v346 & 0x8000000000000000) == 0);
                    v473 = 0;
                  }

LABEL_646:
                  ;
                }
              }

              v347 = sub_1B5DA53A0(__fd);
              (*(**(v1 + 264) + 48))(*(v1 + 264), &md);
              sub_1B5DA53E8(__fd, 80);
              *buf = bswap32(v347);
              if (v473 == 1)
              {
                v348 = 0;
                do
                {
                  v349 = write(__fd, &buf[v348], 4 - v348);
                  if (!v349)
                  {
                    goto LABEL_652;
                  }

                  v348 += v349;
                }

                while ((v349 & 0x8000000000000000) == 0);
                v473 = 0;
              }

LABEL_652:
              sub_1B5DA542C(__fd);
              if ((*(v1 + 243) & 2) == 0)
              {
LABEL_653:
                while ((sub_1B5DA53A0(__fd) & 0x8000000000000003) >= 1)
                {
                  buf[0] = 0;
                  if (v473 == 1)
                  {
                    v350 = 0;
                    do
                    {
                      v351 = write(__fd, &buf[v350], 1 - v350);
                      if (!v351)
                      {
                        goto LABEL_653;
                      }

                      v350 += v351;
                    }

                    while ((v351 & 0x8000000000000000) == 0);
                    v473 = 0;
                  }
                }

                v352 = sub_1B5DA53A0(__fd);
                v353 = *(v1 + 1992) - *(v1 + 1984);
                v354 = atomic_load(byte_1EB90C7D0);
                if (v354)
                {
                  v355 = atomic_load(byte_1EB90CC20);
                  if (v355)
                  {
                    printf("sort key mapping table = %d bytes", v353 & 0xFFFFFFF8);
                    putchar(10);
                  }

                  else
                  {
                    v358 = sub_1B5D32914();
                    if (os_log_type_enabled(v358, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 67109120;
                      *&buf[4] = v353 & 0xFFFFFFF8;
                      _os_log_impl(&dword_1B5CDB000, v358, OS_LOG_TYPE_DEFAULT, "sort key mapping table = %d bytes", buf, 8u);
                    }
                  }
                }

                *buf = bswap32(v353 & 0xFFFFFFF8);
                if (v473 != 1)
                {
                  goto LABEL_679;
                }

                v359 = 0;
                while (1)
                {
                  v360 = write(__fd, &buf[v359], 4 - v359);
                  if (!v360)
                  {
                    break;
                  }

                  v359 += v360;
                  if (v360 < 0)
                  {
LABEL_678:
                    v473 = 0;
                    goto LABEL_679;
                  }
                }

                if ((v473 & 1) == 0)
                {
LABEL_679:
                  *buf = bswap32(*(v1 + 2016) - *(v1 + 2008));
                  goto LABEL_680;
                }

                v361 = 0;
                v362 = *(v1 + 1984);
                v363 = v353 & 0xFFFFFFF8;
                while (1)
                {
                  v364 = write(__fd, (v362 + v361), v363 - v361);
                  if (!v364)
                  {
                    break;
                  }

                  v361 += v364;
                  if (v364 < 0)
                  {
                    goto LABEL_678;
                  }
                }

                *buf = bswap32(*(v1 + 2016) - *(v1 + 2008));
                if ((v473 & 1) == 0)
                {
                  goto LABEL_680;
                }

                v371 = 0;
                while (1)
                {
                  v372 = write(__fd, &buf[v371], 4 - v371);
                  if (!v372)
                  {
                    break;
                  }

                  v371 += v372;
                  if (v372 < 0)
                  {
LABEL_713:
                    v473 = 0;
                    goto LABEL_680;
                  }
                }

                if (v473)
                {
                  v373 = 0;
                  v374 = *(v1 + 2008);
                  v375 = *(v1 + 2016);
                  while (1)
                  {
                    v376 = write(__fd, (v374 + v373), v375 - (v374 + v373));
                    if (!v376)
                    {
                      break;
                    }

                    v373 += v376;
                    if (v376 < 0)
                    {
                      goto LABEL_713;
                    }
                  }
                }

LABEL_680:
                sub_1B5DA53E8(__fd, 64);
                *buf = bswap32(v352);
                if (v473 == 1)
                {
                  v365 = 0;
                  do
                  {
                    v366 = write(__fd, &buf[v365], 4 - v365);
                    if (!v366)
                    {
                      goto LABEL_685;
                    }

                    v365 += v366;
                  }

                  while ((v366 & 0x8000000000000000) == 0);
                  v473 = 0;
                }

LABEL_685:
                sub_1B5DA542C(__fd);
              }

              sub_1B5DA4D68(&md);
              if (*v477 && BYTE6(__n) == 1)
              {
                free(*v477);
              }

              sub_1B5D3D1A8();
            }

            goto LABEL_546;
          }
        }

        else
        {
          if (v313.u32[0] > 1uLL)
          {
            if (v323 >= *&v311)
            {
              v323 %= *&v311;
            }
          }

          else
          {
            v323 &= *&v311 - 1;
          }

          if (v323 != v314)
          {
            goto LABEL_579;
          }
        }

        v322 = *v322;
        if (!v322)
        {
          goto LABEL_579;
        }
      }
    }

    v192 = 0;
    v193 = 0;
    v194 = v191 >> 3;
    __src = v1 + 1776;
    while (1)
    {
      v195 = v192;
      v196 = v193 + 1;
      do
      {
        v193 = v196;
        v192 = v196;
        if (v194 <= v196)
        {
          break;
        }

        v197 = *(*(v190 + 8 * v196++) + 304);
      }

      while ((v197 & 1) != 0);
      v198 = *(v190 + 8 * v195);
      if (v198[152])
      {
        goto LABEL_483;
      }

      v199 = *(v198 + 41);
      if ((v199 & 0x20) == 0)
      {
        goto LABEL_323;
      }

      if ((v199 & 0x100) != 0 && (*(v198 + 15) > 0x3FFEu || *(v1 + 1960) != 5))
      {
        goto LABEL_323;
      }

      if ((v199 & 0x200000) != 0 && *(v198 + 19) || *(v198 + 16) != -1)
      {
        goto LABEL_323;
      }

      v201 = *(v198 + 28);
      if (v201)
      {
        if (atomic_fetch_add(v201, 1u) <= 0)
        {
          __assert_rtn("ref", "WTFRefCounted.h", 42, "old_count > 0");
        }

        v202 = *(v198 + 28);
        if (atomic_fetch_add(v202, 1u) < 1)
        {
          __assert_rtn("ref", "WTFRefCounted.h", 42, "old_count > 0");
        }

        v449 = v202;
        v203 = *(v202 + 32);
        if (v203)
        {
          if (((v203[1] - *v203) & 0x7FFFFFFF0) != 0)
          {
            LOBYTE(v204) = 1;
            v205 = v202;
LABEL_319:
            v449 = v205;
            sub_1B5D1BCD4(v205);
            sub_1B5D1BCD4(v201);
            v189 = *(v1 + 280);
            if (v204)
            {
              goto LABEL_322;
            }

            goto LABEL_483;
          }
        }
      }

      v451 = v201;
      if ((*(v198 + 9) & 1) != 0 || *(v198 + 18) || *(v198 + 14) || *(v198 + 25) == *(v198 + 26) || !*(v1 + 1648))
      {
        goto LABEL_316;
      }

      LODWORD(v480.__r_.__value_.__l.__data_) = 0x100000;
      WORD2(v480.__r_.__value_.__r.__words[0]) = 0;
      v480.__r_.__value_.__s.__data_[6] = 0;
      v480.__r_.__value_.__l.__size_ = 0;
      v480.__r_.__value_.__s.__data_[16] = 0;
      sub_1B5D5CABC(buf, v198);
      v286 = 0;
      LODWORD(v485) = 0;
      while (1)
      {
        v287 = *&buf[4];
        if (!*&buf[4])
        {
          sub_1B5CDF8F4(buf);
          v287 = *&buf[4];
        }

        if (v286 >= v287)
        {
          v289 = sub_1B5D5DD60(&v480, v198);
          goto LABEL_511;
        }

        sub_1B5D8EBAC(buf);
        (*(**(v1 + 1704) + 16))(&v470);
        if (v470 >= 3u)
        {
          ++*(v1 + 336);
        }

        v288 = sub_1B5DA3158(v1 + 328, &v470);
        if (sub_1B5CE2F44(v1 + 328, &v470))
        {
          break;
        }

        if (v288)
        {
          sub_1B5D5CC40(&v480, v288);
        }

        if (v470 >= 0xFu && *(&v470 + 1))
        {
          MEMORY[0x1B8C880C0](*(&v470 + 1), 0x1000C8077774924);
        }

        v286 = WORD1(v485);
      }

      if (v470 >= 0xFu && *(&v470 + 1))
      {
        MEMORY[0x1B8C880C0](*(&v470 + 1), 0x1000C8077774924);
      }

      v289 = 0;
LABEL_511:
      if (*&buf[8] && buf[6] == 1)
      {
        free(*&buf[8]);
      }

      if (v480.__r_.__value_.__l.__size_ && v480.__r_.__value_.__s.__data_[6] == 1)
      {
        free(v480.__r_.__value_.__l.__size_);
      }

      if (!v289)
      {
LABEL_316:
        v201 = v451;
        if (!v451)
        {
          v189 = *(v1 + 280);
LABEL_322:
          v198 = *(v190 + 8 * v195);
          v190 = *v189;
LABEL_323:
          if (v192 < (v189[1] - v190) >> 3 && (v206 = *(v198 + 29)) != 0)
          {
            v207 = *v206;
            v208 = *(v206 + 8);
            if (v207 != v208)
            {
              do
              {
                if (*v207 == *(v190 + 8 * v192))
                {
                  goto LABEL_329;
                }

                ++v207;
              }

              while (v207 != v208);
              v207 = v208;
            }

LABEL_329:
            if (v207 == v208)
            {
              v209 = 2;
            }

            else
            {
              v209 = -126;
            }
          }

          else
          {
            v209 = 2;
          }

          v210 = *(v1 + 264);
          *(v198 + 62) = sub_1B5DA53A0(__fd);
          v211 = *(v198 + 11);
          v212 = 0.0;
          if (v211 != 0.0)
          {
            v213 = *(v198 + 28);
            if (v213)
            {
              v214 = *(v213 + 40);
              goto LABEL_338;
            }

            v215 = *(v198 + 84);
            if (v215)
            {
              v214 = v215;
LABEL_338:
              v212 = v211 / v214;
            }

            else
            {
              v212 = 1.0;
            }
          }

          if (*(v198 + 10) == 1)
          {
            *(v198 + 9) |= 1u;
          }

          v457 = 0;
          v458 = 0;
          v459 = 0;
          v456 = 0;
          if ((v198[164] & 0x20) == 0 || !sub_1B5DA31A4(v198, v1 + 328, &v457, &v456))
          {
            goto LABEL_351;
          }

          v216 = v457;
          v217 = 0;
          if (v458 != v457)
          {
            v218 = 1;
            do
            {
              v219 = *v216;
              v216 += 20;
              v217 += v219 + 2;
              v236 = 0xCCCCCCCCCCCCCCCDLL * ((v458 - v457) >> 3) > v218++;
            }

            while (v236);
          }

          v220 = (v198[164] & 8) != 0 ? sub_1B5D32430(__src, v198) : *v198 + 1;
          if (v217 < v220)
          {
            v221 = v209;
            v222 = 0;
            v223 = v457 != v458;
          }

          else
          {
LABEL_351:
            v221 = v209;
            v223 = 0;
            v222 = 1;
          }

          v452 = sub_1B5DA53A0(__fd);
          v480.__r_.__value_.__s.__data_[0] = 0;
          if (v473 == 1)
          {
            v224 = 0;
            do
            {
              v225 = write(__fd, &v480 + v224, 1 - v224);
              if (!v225)
              {
                goto LABEL_357;
              }

              v224 += v225;
            }

            while ((v225 & 0x8000000000000000) == 0);
            v473 = 0;
          }

LABEL_357:
          v226 = *(v198 + 29);
          if (v226)
          {
            if (v226[1] - *v226 <= 8uLL)
            {
              v227 = 0;
            }

            else
            {
              v227 = v221;
            }
          }

          else
          {
            v227 = 0;
          }

          v228 = (*(*v210 + 40))(v210, *(v198 + 9));
          v229 = v227 | 4;
          if (v212 >= 1.0)
          {
            v229 = v227;
          }

          if (v228)
          {
            v229 |= 0x20u;
          }

          v230 = v229 | (*(v198 + 10) > 1u);
          if (*(v198 + 14))
          {
            v230 |= 0x40u;
          }

          if (v223)
          {
            v230 |= 8u;
          }

          if (v222)
          {
            v231 = v230 | 0x10;
          }

          else
          {
            v231 = v230;
          }

          v480.__r_.__value_.__s.__data_[0] = v231;
          if (v473 == 1)
          {
            v232 = 0;
            do
            {
              v233 = write(__fd, &v480 + v232, 1 - v232);
              if (!v233)
              {
                goto LABEL_378;
              }

              v232 += v233;
            }

            while ((v233 & 0x8000000000000000) == 0);
            v473 = 0;
          }

LABEL_378:
          *(v198 + 44) = v231;
          v1 = v453;
          if (v212 < 1.0)
          {
            v234 = (sqrt(v212) * 255.0);
            v235 = v234 >= 0xFF ? -1 : v234;
            v236 = v234 || v212 <= 0.0;
            v237 = v236 ? v235 : 1;
            v480.__r_.__value_.__s.__data_[0] = v237;
            if (v473 == 1)
            {
              v238 = 0;
              do
              {
                v239 = write(__fd, &v480 + v238, 1 - v238);
                if (!v239)
                {
                  goto LABEL_393;
                }

                v238 += v239;
              }

              while ((v239 & 0x8000000000000000) == 0);
              v473 = 0;
            }
          }

LABEL_393:
          v240 = (*(*v210 + 40))(v210, *(v198 + 9));
          if (v240)
          {
            v480.__r_.__value_.__s.__data_[0] = v240;
            if (v473 == 1)
            {
              v241 = 0;
              do
              {
                v242 = write(__fd, &v480 + v241, 1 - v241);
                if (!v242)
                {
                  goto LABEL_399;
                }

                v241 += v242;
              }

              while ((v242 & 0x8000000000000000) == 0);
              v473 = 0;
            }
          }

LABEL_399:
          v243 = *(v198 + 10);
          if (v243 >= 2)
          {
            LODWORD(v480.__r_.__value_.__l.__data_) = bswap32(v243);
            if (v473 == 1)
            {
              v244 = 0;
              do
              {
                v245 = write(__fd, &v480 + v244, 4 - v244);
                if (!v245)
                {
                  goto LABEL_405;
                }

                v244 += v245;
              }

              while ((v245 & 0x8000000000000000) == 0);
              v473 = 0;
            }
          }

LABEL_405:
          v246 = *(v198 + 14);
          if (v246)
          {
            LODWORD(v480.__r_.__value_.__l.__data_) = bswap32(v246);
            if (v473 == 1)
            {
              v247 = 0;
              do
              {
                v248 = write(__fd, &v480 + v247, 4 - v247);
                if (!v248)
                {
                  goto LABEL_411;
                }

                v247 += v248;
              }

              while ((v248 & 0x8000000000000000) == 0);
              v473 = 0;
            }
          }

LABEL_411:
          if (v223)
          {
            v249 = v457;
            if (v458 != v457)
            {
              v250 = 0;
              LODWORD(v251) = 0;
              v252 = 0xCCCCCCCCCCCCCCCDLL * ((v458 - v457) >> 3);
              do
              {
                v253 = *(v249 + 40 * v250 + 32);
                v251 = (v251 + 1);
                if (v252 > v251)
                {
                  v253 |= 0x80u;
                }

                v480.__r_.__value_.__s.__data_[0] = v253;
                if (v473 == 1)
                {
                  v254 = 0;
                  do
                  {
                    v255 = write(__fd, &v480 + v254, 1 - v254);
                    if (!v255)
                    {
                      goto LABEL_421;
                    }

                    v254 += v255;
                  }

                  while ((v255 & 0x8000000000000000) == 0);
                  v473 = 0;
                }

LABEL_421:
                v256 = &v457[20 * v250];
                v257 = *(v256 + 1);
                v258 = (v256 + 8);
                if (v257)
                {
                  v259 = v257;
                }

                else
                {
                  v259 = v258;
                }

                sub_1B5DA5258(&md, v259);
                v249 = v457;
                v252 = 0xCCCCCCCCCCCCCCCDLL * ((v458 - v457) >> 3);
                v250 = v251;
              }

              while (v252 > v251);
            }
          }

          else if (v222)
          {
            if ((v198[164] & 8) != 0)
            {
              if (!*(v453 + 1840))
              {
                __assert_rtn("encode", "TIHuffmanCoder.cpp", 203, "is_compiled()");
              }

              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x4802000000;
              *&buf[24] = sub_1B5D32234;
              v485 = sub_1B5D32260;
              v487 = 0;
              v488 = 0;
              v486 = 0;
              len = 8;
              v480.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
              v480.__r_.__value_.__l.__size_ = 0x40000000;
              v480.__r_.__value_.__r.__words[2] = sub_1B5D32278;
              v481 = &unk_1E7C20D70;
              v482 = buf;
              v483 = __src;
              v261 = *(v198 + 1);
              if (!v261)
              {
                v261 = v198 + 8;
              }

              *&v470 = v261;
              DWORD2(v470) = 0;
              HIDWORD(v470) = *v198;
              v471[0] = 0;
              sub_1B5CDCF70(&v470);
              v262 = *v198;
              v263 = *(v198 + 1);
              if (!v263)
              {
                v263 = v198 + 8;
              }

              *v466 = v263;
              *&v466[8] = v262;
              *v467 = v262;
              *&v467[4] = 0;
              sub_1B5CDCF70(v466);
              v264 = *v466;
              v265 = *&v466[8];
              while (1)
              {
                if (v470 != v264)
                {
                  __assert_rtn("operator!=", "TIString.h", 202, "p==rhs.p");
                }

                if (DWORD2(v470) == v265)
                {
                  break;
                }

                (v480.__r_.__value_.__r.__words[2])(&v480, v471[0]);
                sub_1B5CDCF70(&v470);
              }

              (v480.__r_.__value_.__r.__words[2])(&v480, 0);
              v266 = *&buf[8];
              v268 = *(*&buf[8] + 40);
              v267 = *(*&buf[8] + 48);
              if (v267 - v268 != sub_1B5D32430(__src, v198))
              {
                __assert_rtn("encode", "TIHuffmanCoder.cpp", 215, "bytes.size() == encoded_size(str)");
              }

              sub_1B5CDD214(&v460, *(v266 + 48) - *(v266 + 40), *(v266 + 40), *(v266 + 48) - *(v266 + 40));
              _Block_object_dispose(buf, 8);
              if (v486)
              {
                v487 = v486;
                operator delete(v486);
              }

              v269 = v460;
              if (v460 <= 0xEuLL)
              {
                v270 = &v460 + 2;
              }

              else
              {
                v270 = v461;
              }

              if (v473 == 1)
              {
                v271 = 0;
                do
                {
                  v272 = write(__fd, &v270[v271], v269 - v271);
                  if (!v272)
                  {
                    goto LABEL_452;
                  }

                  v271 += v272;
                }

                while ((v272 & 0x8000000000000000) == 0);
                v473 = 0;
              }

LABEL_452:
              if (v460 >= 0xFu && v461)
              {
                MEMORY[0x1B8C880C0](v461, 0x1000C8077774924);
              }
            }

            else
            {
              if (*(v198 + 1))
              {
                v260 = *(v198 + 1);
              }

              else
              {
                v260 = (v198 + 8);
              }

              sub_1B5DA5258(&md, v260);
            }
          }

          v273 = *(v198 + 41);
          if ((v273 & 0x100) != 0)
          {
            v274 = *(v198 + 15);
            v480.__r_.__value_.__s.__data_[0] = BYTE2(v274);
            v480.__r_.__value_.__s.__data_[1] = BYTE1(v274);
            v480.__r_.__value_.__s.__data_[2] = v274;
            if (v473 == 1)
            {
              v275 = 0;
              do
              {
                v276 = write(__fd, &v480 + v275, 3 - v275);
                if (!v276)
                {
                  goto LABEL_461;
                }

                v275 += v276;
              }

              while ((v276 & 0x8000000000000000) == 0);
              v473 = 0;
            }

LABEL_461:
            v273 = *(v198 + 41);
          }

          if ((v273 & 0x1000000) != 0)
          {
            LODWORD(v480.__r_.__value_.__l.__data_) = bswap32(*(v198 + 16));
            if (v473 == 1)
            {
              v277 = 0;
              do
              {
                v278 = write(__fd, &v480 + v277, 4 - v277);
                if (!v278)
                {
                  goto LABEL_468;
                }

                v277 += v278;
              }

              while ((v278 & 0x8000000000000000) == 0);
              v473 = 0;
            }

LABEL_468:
            v273 = *(v198 + 41);
          }

          if ((v273 & 0x200000) == 0)
          {
            goto LABEL_476;
          }

          LODWORD(v480.__r_.__value_.__l.__data_) = bswap32(*(v198 + 19));
          if (v473 != 1)
          {
            goto LABEL_475;
          }

          v279 = 0;
          do
          {
            v280 = write(__fd, &v480 + v279, 4 - v279);
            if (!v280)
            {
              LOWORD(v480.__r_.__value_.__l.__data_) = bswap32(v198[40]) >> 16;
              if (v473)
              {
                v284 = 0;
                do
                {
                  v285 = write(__fd, &v480 + v284, 2 - v284);
                  if (!v285)
                  {
                    goto LABEL_476;
                  }

                  v284 += v285;
                }

                while ((v285 & 0x8000000000000000) == 0);
                v473 = 0;
              }

              goto LABEL_476;
            }

            v279 += v280;
          }

          while ((v280 & 0x8000000000000000) == 0);
          v473 = 0;
LABEL_475:
          LOWORD(v480.__r_.__value_.__l.__data_) = bswap32(v198[40]) >> 16;
LABEL_476:
          v281 = sub_1B5DA53A0(__fd);
          if (((v281 - v452) & 0xFFFFFF00) != 0)
          {
            __assert_rtn("write_unigram_record_v2", "UnigramWord.cpp", 726, "record_length <= 0xff");
          }

          sub_1B5DA53E8(__fd, v452);
          v480.__r_.__value_.__s.__data_[0] = v281 - v452;
          if (v473 == 1)
          {
            v282 = 0;
            do
            {
              v283 = write(__fd, &v480 + v282, 1 - v282);
              if (!v283)
              {
                goto LABEL_482;
              }

              v282 += v283;
            }

            while ((v283 & 0x8000000000000000) == 0);
            v473 = 0;
          }

LABEL_482:
          sub_1B5DA53E8(__fd, v281);
          *buf = &v457;
          sub_1B5D46D6C(buf);
          ++*(v453 + 1888);
          v189 = *(v453 + 280);
          goto LABEL_483;
        }

        LODWORD(v204) = 1;
      }

      else
      {
        v290 = *(v198 + 41);
        v201 = v451;
        if (!v451)
        {
          v189 = *(v1 + 280);
          if ((v290 & 0x800) != 0)
          {
            goto LABEL_322;
          }

          goto LABEL_483;
        }

        v204 = (v290 >> 11) & 1;
      }

      v205 = v449;
      if (v449)
      {
        goto LABEL_319;
      }

      sub_1B5D1BCD4(v201);
      v189 = *(v1 + 280);
      if (v204)
      {
        goto LABEL_322;
      }

LABEL_483:
      v190 = *v189;
      v194 = (v189[1] - *v189) >> 3;
      if (v194 <= v192)
      {
        goto LABEL_524;
      }
    }
  }

  v7 = atomic_load(byte_1EB90C7D0);
  if (v7)
  {
    v8 = atomic_load(byte_1EB90CC20);
    if (v8)
    {
      v9 = *(v1 + 1904);
      if (!v9)
      {
        v9 = v2;
      }

      v10 = *(v1 + 24);
      if (!v10)
      {
        v10 = (v1 + 32);
      }

      printf("Printing active unigrams from %s (%s) with prefix=%s, length<>%d, suffix=%s", v9, v10, "", *(v1 + 1968), "");
      putchar(10);
    }

    else
    {
      v19 = sub_1B5D32914();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(v1 + 1904);
        if (!v20)
        {
          v20 = v2;
        }

        v21 = *(v1 + 24);
        if (!v21)
        {
          v21 = v1 + 32;
        }

        v22 = *(v1 + 1968);
        *buf = 136316162;
        *&buf[4] = v20;
        *&buf[12] = 2080;
        *&buf[14] = v21;
        *&buf[22] = 2080;
        *&buf[24] = "";
        LOWORD(v485) = 1024;
        *(&v485 + 2) = v22;
        HIWORD(v485) = 2080;
        v486 = "";
        _os_log_impl(&dword_1B5CDB000, v19, OS_LOG_TYPE_DEFAULT, "Printing active unigrams from %s (%s) with prefix=%s, length<>%d, suffix=%s", buf, 0x30u);
      }
    }
  }

  sub_1B5D3B4F0(v1);
  LODWORD(md.__r_.__value_.__l.__data_) = 0x100000;
  WORD2(md.__r_.__value_.__r.__words[0]) = 0;
  md.__r_.__value_.__s.__data_[6] = 1;
  md.__r_.__value_.__l.__size_ = 0;
  sub_1B5CDCAAC(&md, "", 0, 0);
  v23 = *(v1 + 1968);
  LODWORD(v480.__r_.__value_.__l.__data_) = 0x100000;
  WORD2(v480.__r_.__value_.__r.__words[0]) = 0;
  v480.__r_.__value_.__s.__data_[6] = 1;
  v480.__r_.__value_.__l.__size_ = 0;
  sub_1B5CDCAAC(&v480, "", 0, 0);
  v24 = *(v1 + 280);
  v25 = *v24;
  v26 = v24[1];
  v27 = 126 - 2 * __clz(v26 - *v24);
  *buf = sub_1B5D3681C;
  if (v26 == v25)
  {
    v28 = 0;
  }

  else
  {
    v28 = v27;
  }

  v29 = sub_1B5D40274(v25, v26, buf, v28, 1);
  (*(**(v1 + 248) + 8))(&__n, v29);
  v36 = *(v1 + 280);
  v37 = *v36;
  if (v36[1] != *v36)
  {
    v38 = 0;
    v39 = 1;
    do
    {
      v40 = *(v37 + 8 * v38);
      v41 = *(v40 + 4);
      if (!*(v40 + 4))
      {
        sub_1B5CDF8F4(*(v37 + 8 * v38));
        v41 = *(v40 + 4);
      }

      if (v23)
      {
        v42 = v23 >= v41;
      }

      else
      {
        v42 = 1;
      }

      v43 = !v42;
      v44 = __n;
      if (__n)
      {
        v45 = sub_1B5D5234C((*(v37 + 8 * v38) + 136), &__n);
      }

      else
      {
        v45 = 0;
      }

      data_low = LOWORD(v480.__r_.__value_.__l.__data_);
      if (LOWORD(v480.__r_.__value_.__l.__data_))
      {
        v47 = sub_1B5D5DDEC(*(v37 + 8 * v38), &v480);
        if (v23)
        {
          goto LABEL_70;
        }
      }

      else
      {
        v47 = 0;
        if (v23)
        {
          goto LABEL_70;
        }
      }

      if (!v44)
      {
        if (data_low != 0 && !v45 && !v47)
        {
          goto LABEL_84;
        }

        goto LABEL_71;
      }

LABEL_70:
      if (((v43 | (v45 || v47)) & 1) == 0)
      {
        goto LABEL_84;
      }

LABEL_71:
      v48 = *(v1 + 1965);
      v49 = atomic_load(byte_1EB90C7D0);
      if (v48 == 1)
      {
        if (v49)
        {
          v50 = atomic_load(byte_1EB90CC20);
          if (v50)
          {
            sub_1B5DA3E54(buf, *(v37 + 8 * v38), v30, v31, v32, v33, v34, v35);
LABEL_78:
            v52 = *&buf[8];
            if (!*&buf[8])
            {
              v52 = &buf[16];
            }

            printf("%s", v52);
            if (*&buf[8] && buf[6] == 1)
            {
              free(*&buf[8]);
            }

            putchar(10);
            goto LABEL_84;
          }

          v54 = sub_1B5D32914();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            sub_1B5DA3E54(buf, *(v37 + 8 * v38), v30, v31, v32, v33, v34, v35);
            v55 = *&buf[8];
            if (!*&buf[8])
            {
              v55 = &buf[16];
            }

LABEL_93:
            LODWORD(v470) = 136315138;
            *(&v470 + 4) = v55;
            _os_log_impl(&dword_1B5CDB000, v54, OS_LOG_TYPE_DEFAULT, "%s", &v470, 0xCu);
            if (*&buf[8] && buf[6] == 1)
            {
              free(*&buf[8]);
            }
          }
        }
      }

      else if (v49)
      {
        v51 = atomic_load(byte_1EB90CC20);
        if (v51)
        {
          sub_1B5DA39D8(buf, *(v37 + 8 * v38));
          goto LABEL_78;
        }

        v54 = sub_1B5D32914();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          sub_1B5DA39D8(buf, *(v37 + 8 * v38));
          v55 = *&buf[8];
          if (!*&buf[8])
          {
            v55 = &buf[16];
          }

          goto LABEL_93;
        }
      }

LABEL_84:
      v38 = v39;
      v53 = *(v1 + 280);
      v37 = *v53;
      ++v39;
    }

    while (v38 < (v53[1] - *v53) >> 3);
  }

  if (__n >= 0xFu && *v477)
  {
    MEMORY[0x1B8C880C0](*v477, 0x1000C8077774924);
  }

  if (v480.__r_.__value_.__l.__size_ && v480.__r_.__value_.__s.__data_[6] == 1)
  {
    free(v480.__r_.__value_.__l.__size_);
  }

  if (md.__r_.__value_.__l.__size_ && md.__r_.__value_.__s.__data_[6] == 1)
  {
    free(md.__r_.__value_.__l.__size_);
  }

LABEL_696:
  if (v463 && v462[6] == 1)
  {
    free(v463);
  }

  if (v465 && v464[6] == 1)
  {
    free(v465);
  }

  v370 = *MEMORY[0x1E69E9840];
}