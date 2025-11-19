uint64_t sub_10002EC24(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002EC70(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t sub_10002ECF4(uint64_t a1)
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

void sub_100030A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, std::__shared_weak_count *a17, char a18)
{
  if (a15 == 1)
  {
    sub_100035E1C(&a10);
  }

  if (a18 == 1)
  {
    if (a17)
    {
      sub_10000367C(a17);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100030A74(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == 1)
  {
    sub_100035D84(a1, a2);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = *(a2 + 24);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a1 + 40) = 1;
  }

  return a1;
}

void sub_100030C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, char a16)
{
  if (a16 == 1)
  {
    if (a15)
    {
      sub_10000367C(a15);
    }
  }

  _Unwind_Resume(a1);
}

char **sub_100030C94@<X0>(char ***a1@<X0>, char ***a2@<X8>)
{
  v2 = a1;
  result = *a1;
  {
    v6 = v2[1];
    *a2 = result;
    a2[1] = v6;
  }

  else
  {
    v2 = a2;
  }

  *v2 = 0;
  v2[1] = 0;
  return result;
}

void sub_10003117C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a17)
  {
    sub_10000367C(a17);
  }

  if (a21 == 1)
  {
    STACK[0x300] = &a18;
    sub_100036760(&STACK[0x300]);
  }

  if (LOBYTE(STACK[0x5B0]) == 1)
  {
    sub_100035E5C(&STACK[0x330]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100031244(uint64_t a1)
{
  if ((*(a1 + 656) & 1) == 0)
  {
    sub_10017F8D4(*a1, (a1 + 8), v3);
    sub_100035ED8(a1 + 16, v3);
    sub_100035E5C(v3);
  }

  return a1 + 16;
}

void sub_1000312C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100035E5C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000312E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  result = sub_10003683C((a2 + 16), a1 + 16);
  *(a1 + 8) += 20;
  if (*(a1 + 656) == 1)
  {
    result = sub_100035E5C(a1 + 16);
    *(a1 + 656) = 0;
  }

  return result;
}

void sub_1000315EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (LOBYTE(STACK[0x598]) == 1 && LOBYTE(STACK[0x590]) == 1)
  {
    sub_100035E5C(&STACK[0x310]);
  }

  if (a13 == 1)
  {
    sub_100036B7C(&a9);
  }

  if (a21 == 1)
  {
    (*(a14 + 56))(&a14);
  }

  _Unwind_Resume(a1);
}

void sub_100032704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (LOBYTE(STACK[0x548]) == 1)
  {
    sub_100035E5C(&STACK[0x2C8]);
  }

  _Unwind_Resume(a1);
}

void sub_1000328C0(_Unwind_Exception *a1)
{
  if (LOBYTE(STACK[0x540]) == 1)
  {
    sub_100035E5C(v1 + 16);
  }

  _Unwind_Resume(a1);
}

void sub_100032D18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a17)
  {
    sub_10000367C(a17);
  }

  if (a21 == 1)
  {
    STACK[0x300] = &a18;
    sub_100036760(&STACK[0x300]);
  }

  if (LOBYTE(STACK[0x5B0]) == 1)
  {
    sub_100035E5C(&STACK[0x330]);
  }

  _Unwind_Resume(a1);
}

void sub_100033264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a17)
  {
    sub_10000367C(a17);
  }

  if (a21 == 1)
  {
    STACK[0x300] = &a18;
    sub_100036760(&STACK[0x300]);
  }

  if (LOBYTE(STACK[0x5B0]) == 1)
  {
    sub_100035E5C(&STACK[0x330]);
  }

  _Unwind_Resume(a1);
}

void sub_1000336B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (LOBYTE(STACK[0x5A0]) == 1 && LOBYTE(STACK[0x598]) == 1)
  {
    sub_100035E5C(&STACK[0x318]);
  }

  if (a14 == 1)
  {
    sub_100036B7C(&a10);
  }

  if (a22 == 1)
  {
    (*(a15 + 56))(&a15);
  }

  _Unwind_Resume(a1);
}

void sub_100033C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (LOBYTE(STACK[0x5A8]) == 1 && LOBYTE(STACK[0x5A0]) == 1)
  {
    sub_100035E5C(&STACK[0x320]);
  }

  if (a15 == 1)
  {
    sub_100036B7C(&a11);
  }

  if (a23 == 1)
  {
    (*(a16 + 56))(&a16);
  }

  _Unwind_Resume(a1);
}

void sub_1000342F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    operator delete();
  }

  _Unwind_Resume(a1);
}

void sub_100034340(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1;
  v6 = 0;
  if ([v3 decodeBytesForKey:@"passphrase_header" returnedLength:&v6])
  {
    if (v6 == 616)
    {
      operator new();
    }

    exception = __cxa_allocate_exception(0x40uLL);
    sub_100002148(v5);
    sub_1000026BC(v5, "Unexpected passphrase header length (", 37);
    std::ostream::operator<<();
    sub_1000026BC(v5, ")", 1);
    sub_100004290(exception, v5, 0x9Au);
  }

  *a2 = 0;
}

void sub_100034474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::ios::~ios();
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

void *sub_1000344D8(void *a1, uint64_t *a2)
{
  sub_1000371AC(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    sub_10000367C(v3);
  }

  return a1;
}

void sub_1000345C8(void *a1, uint64_t a2)
{
  v3 = a1;
  sub_100036D48(__p, 616);
  sub_10017F068(a2, __p[0]);
  [v3 encodeBytes:__p[0] length:616 forKey:@"passphrase_header"];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_100034C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, char a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a20)
  {
    sub_10000367C(a20);
  }

  if (a24 == 1)
  {
    STACK[0x320] = &a21;
    sub_100036760(&STACK[0x320]);
  }

  if (LOBYTE(STACK[0x820]) == 1)
  {
    sub_100035E5C(&STACK[0x5A0]);
  }

  _Unwind_Resume(a1);
}

void sub_100035148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (LOBYTE(STACK[0x5B8]) == 1 && LOBYTE(STACK[0x5B0]) == 1)
  {
    sub_100035E5C(&STACK[0x330]);
  }

  if (LOBYTE(STACK[0x5E0]) == 1)
  {
    sub_100036B7C(&STACK[0x5C0]);
  }

  if (LOBYTE(STACK[0xAB8]) == 1)
  {
    sub_100035E5C(&STACK[0x838]);
  }

  if (a23 == 1)
  {
    (*(a16 + 56))(&a16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100035D84(uint64_t a1, uint64_t a2)
{
  sub_100035DC8(a1, a2);
  v4 = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v5 = *(a1 + 32);
  *(a1 + 24) = v4;
  if (v5)
  {
    sub_10000367C(v5);
  }

  return a1;
}

__n128 sub_100035DC8(uint64_t a1, __n128 *a2)
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

uint64_t sub_100035E1C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_10000367C(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_100035E5C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 632);
  if (v2 != -1)
  {
    result = (off_1002059A8[v2])(&v3, result);
  }

  *(v1 + 632) = -1;
  return result;
}

void sub_100035EC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    *(a2 + 24) = v2;
    operator delete(v2);
  }
}

uint64_t sub_100035ED8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 640) == 1)
  {
    sub_100035F1C(a1, a2);
  }

  else
  {
    sub_100036488(a1, a2);
    *(a1 + 640) = 1;
  }

  return a1;
}

uint64_t sub_100035F1C(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 632);
  if (*(result + 632) != -1 || v4 != -1)
  {
    if (v4 == -1)
    {

      return sub_100035E5C(result);
    }

    else
    {
      v6[1] = v2;
      v6[2] = v3;
      v6[0] = result;
      return (off_1002059D0[v4])(v6);
    }
  }

  return result;
}

void *sub_100035FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 632))
  {
    sub_100035E5C(a1);
    *a1 = *a3;
    *(a1 + 12) = *(a3 + 12);
    *(a1 + 16) = *(a3 + 16);
    *(a1 + 20) = *(a3 + 20);
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0;
    *(a1 + 24) = *(a3 + 24);
    v5 = *(a3 + 28);
    *(a1 + 44) = *(a3 + 44);
    *(a1 + 28) = v5;
    *(a1 + 60) = 0u;
    *(a1 + 76) = 0u;
    *(a1 + 92) = 0;
    *(a1 + 60) = *(a3 + 60);
    v6 = *(a3 + 80);
    *(a1 + 64) = *(a3 + 64);
    *(a1 + 80) = v6;
    *(a1 + 96) = *(a3 + 96);
    *(a1 + 100) = *(a3 + 100);
    *(a1 + 104) = *(a3 + 104);
    *(a1 + 108) = *(a3 + 108);
    bzero((a1 + 112), 0x204uLL);
    *(a1 + 112) = *(a3 + 112);
    result = memcpy((a1 + 116), (a3 + 116), 0x200uLL);
    *(a1 + 632) = 0;
  }

  else
  {
    sub_10017FCB4(a2, a3);
    v9 = *(a3 + 12);
    *(a2 + 20) = *(a3 + 20);
    *(a2 + 12) = v9;
    *(a2 + 24) = *(a3 + 24);
    v10 = *(a3 + 28);
    *(a2 + 44) = *(a3 + 44);
    *(a2 + 28) = v10;
    *(a2 + 60) = *(a3 + 60);
    v11 = *(a3 + 80);
    *(a2 + 64) = *(a3 + 64);
    *(a2 + 80) = v11;
    *(a2 + 96) = *(a3 + 96);
    *(a2 + 112) = *(a3 + 112);

    return memcpy((a2 + 116), (a3 + 116), 0x200uLL);
  }

  return result;
}

void *sub_10003611C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 632) == 1)
  {
    sub_10017FCB4(a2, a3);
    *(a2 + 12) = *(a3 + 12);
    v5 = *(a3 + 32);
    *(a2 + 16) = *(a3 + 16);
    *(a2 + 32) = v5;
    v6 = *(a3 + 56);
    *(a2 + 48) = *(a3 + 48);
    *(a2 + 56) = v6;
    *(a2 + 60) = *(a3 + 60);

    return memcpy((a2 + 64), (a3 + 64), 0x200uLL);
  }

  else
  {

    return sub_1000361BC(a1, a3);
  }
}

uint64_t sub_1000361BC(uint64_t a1, uint64_t a2)
{
  sub_100035E5C(a1);
  *a1 = *a2;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0;
  *(a1 + 12) = 0u;
  *(a1 + 12) = *(a2 + 12);
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  bzero((a1 + 60), 0x204uLL);
  *(a1 + 60) = *(a2 + 60);
  memcpy((a1 + 64), (a2 + 64), 0x200uLL);
  *(a1 + 632) = 1;
  return a1;
}

void *sub_100036254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 632) == 2)
  {
    sub_10017FCB4(a2, a3);
    *(a2 + 12) = *(a3 + 12);
    v5 = *(a3 + 32);
    *(a2 + 16) = *(a3 + 16);
    *(a2 + 32) = v5;
    *(a2 + 48) = *(a3 + 48);
    *(a2 + 52) = *(a3 + 52);

    return memcpy((a2 + 56), (a3 + 56), 0x200uLL);
  }

  else
  {
    sub_100035E5C(a1);
    *a1 = *a3;
    *(a1 + 28) = 0u;
    *(a1 + 44) = 0;
    *(a1 + 12) = 0u;
    *(a1 + 12) = *(a3 + 12);
    v8 = *(a3 + 32);
    *(a1 + 16) = *(a3 + 16);
    *(a1 + 32) = v8;
    *(a1 + 48) = *(a3 + 48);
    bzero((a1 + 52), 0x204uLL);
    *(a1 + 52) = *(a3 + 52);
    result = memcpy((a1 + 56), (a3 + 56), 0x200uLL);
    *(a1 + 632) = 2;
  }

  return result;
}

void sub_100036348(uint64_t a1, uint64_t a2, __n128 *a3)
{
  if (*(a1 + 632) == 3)
  {
    sub_10017FCB4(a2, a3);
    *(a2 + 12) = a3->n128_u32[3];

    sub_100035DC8(a2 + 16, a3 + 1);
  }

  else
  {

    sub_1000363C4(a1, a3);
  }
}

uint64_t sub_1000363C4(uint64_t a1, uint64_t a2)
{
  sub_100035E5C(a1);
  *a1 = *a2;
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  sub_100036BE0(a1 + 16, *(a2 + 16), *(a2 + 24), *(a2 + 24) - *(a2 + 16));
  *(a1 + 632) = 3;
  return a1;
}

__n128 sub_100036420(uint64_t a1, __n128 *a2, __n128 *a3)
{
  if (*(a1 + 632) == 4)
  {
    sub_10017FCB4(a2, a3);
    result = a3[1];
    a2[1] = result;
  }

  else
  {
    sub_100035E5C(a1);
    result = *a3;
    v7 = a3[1];
    *a1 = *a3;
    *(a1 + 16) = v7;
    *(a1 + 632) = 4;
  }

  return result;
}

uint64_t sub_100036488(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 632) = -1;
  sub_1000364D0(a1, a2);
  return a1;
}

uint64_t sub_1000364D0(uint64_t a1, uint64_t a2)
{
  result = sub_100035E5C(a1);
  v5 = *(a2 + 632);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_1002059F8[v5])(&v6, a2);
    *(a1 + 632) = v5;
  }

  return result;
}

void *sub_100036534(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *v3 = *a2;
  *(v3 + 12) = *(a2 + 12);
  *(v3 + 16) = *(a2 + 16);
  *(v3 + 20) = *(a2 + 20);
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0;
  *(v3 + 24) = *(a2 + 24);
  v4 = *(a2 + 28);
  *(v3 + 44) = *(a2 + 44);
  *(v3 + 28) = v4;
  *(v3 + 60) = 0u;
  *(v3 + 76) = 0u;
  *(v3 + 92) = 0;
  *(v3 + 60) = *(a2 + 60);
  v5 = *(a2 + 80);
  *(v3 + 64) = *(a2 + 64);
  *(v3 + 80) = v5;
  *(v3 + 96) = *(a2 + 96);
  *(v3 + 100) = *(a2 + 100);
  *(v3 + 104) = *(a2 + 104);
  *(v3 + 108) = *(a2 + 108);
  bzero((v3 + 112), 0x204uLL);
  *(v3 + 112) = *(a2 + 112);

  return memcpy((v3 + 116), (a2 + 116), 0x200uLL);
}

void *sub_10003660C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *v3 = *a2;
  *(v3 + 28) = 0u;
  *(v3 + 44) = 0;
  *(v3 + 12) = 0u;
  *(v3 + 12) = *(a2 + 12);
  v4 = *(a2 + 32);
  *(v3 + 16) = *(a2 + 16);
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a2 + 48);
  *(v3 + 52) = *(a2 + 52);
  *(v3 + 56) = *(a2 + 56);
  bzero((v3 + 60), 0x204uLL);
  *(v3 + 60) = *(a2 + 60);

  return memcpy((v3 + 64), (a2 + 64), 0x200uLL);
}

void *sub_1000366A0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *v3 = *a2;
  *(v3 + 28) = 0u;
  *(v3 + 44) = 0;
  *(v3 + 12) = 0u;
  *(v3 + 12) = *(a2 + 12);
  v4 = *(a2 + 32);
  *(v3 + 16) = *(a2 + 16);
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a2 + 48);
  bzero((v3 + 52), 0x204uLL);
  *(v3 + 52) = *(a2 + 52);

  return memcpy((v3 + 56), (a2 + 56), 0x200uLL);
}

uint64_t sub_100036724(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = *a2;
  v3 = *(a2 + 12);
  *(v2 + 16) = 0;
  v2 += 16;
  *(v2 - 4) = v3;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  return sub_100036BE0(v2, *(a2 + 16), *(a2 + 24), *(a2 + 24) - *(a2 + 16));
}

__n128 sub_100036750(_OWORD **a1, uint64_t a2)
{
  v2 = *a1;
  result = *a2;
  v4 = *(a2 + 16);
  *v2 = *a2;
  v2[1] = v4;
  return result;
}

void sub_100036760(void ***a1)
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
        sub_1000367E4(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1000367E4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;

    operator delete(v3);
  }
}

_BYTE *sub_10003683C(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[640] = 0;
  if (*(a2 + 640) == 1)
  {
    sub_1000368A4(a1, a2);
    a1[640] = 1;
  }

  return a1;
}

void sub_100036884(_Unwind_Exception *exception_object)
{
  if (*(v1 + 640) == 1)
  {
    sub_100035E5C(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000368A4(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 632) = -1;
  sub_1000368EC(a1, a2);
  return a1;
}

uint64_t sub_1000368EC(uint64_t a1, uint64_t a2)
{
  result = sub_100035E5C(a1);
  v5 = *(a2 + 632);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_100205A20[v5])(&v6, a2);
    *(a1 + 632) = v5;
  }

  return result;
}

void *sub_100036950(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *v3 = *a2;
  *(v3 + 12) = *(a2 + 12);
  *(v3 + 16) = *(a2 + 16);
  *(v3 + 20) = *(a2 + 20);
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0;
  *(v3 + 24) = *(a2 + 24);
  v4 = *(a2 + 28);
  *(v3 + 44) = *(a2 + 44);
  *(v3 + 28) = v4;
  *(v3 + 60) = 0u;
  *(v3 + 76) = 0u;
  *(v3 + 92) = 0;
  *(v3 + 60) = *(a2 + 60);
  v5 = *(a2 + 80);
  *(v3 + 64) = *(a2 + 64);
  *(v3 + 80) = v5;
  *(v3 + 96) = *(a2 + 96);
  *(v3 + 100) = *(a2 + 100);
  *(v3 + 104) = *(a2 + 104);
  *(v3 + 108) = *(a2 + 108);
  bzero((v3 + 112), 0x204uLL);
  *(v3 + 112) = *(a2 + 112);

  return memcpy((v3 + 116), (a2 + 116), 0x200uLL);
}

void *sub_100036A28(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *v3 = *a2;
  *(v3 + 28) = 0u;
  *(v3 + 44) = 0;
  *(v3 + 12) = 0u;
  *(v3 + 12) = *(a2 + 12);
  v4 = *(a2 + 32);
  *(v3 + 16) = *(a2 + 16);
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a2 + 48);
  *(v3 + 52) = *(a2 + 52);
  *(v3 + 56) = *(a2 + 56);
  bzero((v3 + 60), 0x204uLL);
  *(v3 + 60) = *(a2 + 60);

  return memcpy((v3 + 64), (a2 + 64), 0x200uLL);
}

void *sub_100036ABC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *v3 = *a2;
  *(v3 + 28) = 0u;
  *(v3 + 44) = 0;
  *(v3 + 12) = 0u;
  *(v3 + 12) = *(a2 + 12);
  v4 = *(a2 + 32);
  *(v3 + 16) = *(a2 + 16);
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a2 + 48);
  bzero((v3 + 52), 0x204uLL);
  *(v3 + 52) = *(a2 + 52);

  return memcpy((v3 + 56), (a2 + 56), 0x200uLL);
}

uint64_t sub_100036B40(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = *a2;
  v3 = *(a2 + 12);
  *(v2 + 16) = 0;
  v2 += 16;
  *(v2 - 4) = v3;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  return sub_100036BE0(v2, *(a2 + 16), *(a2 + 24), *(a2 + 24) - *(a2 + 16));
}

__n128 sub_100036B6C(_OWORD **a1, uint64_t a2)
{
  v2 = *a1;
  result = *a2;
  v4 = *(a2 + 16);
  *v2 = *a2;
  v2[1] = v4;
  return result;
}

uint64_t sub_100036B7C(uint64_t a1)
{
  if (*(a1 + 20) == 1)
  {
    (*(**(a1 + 24) + 48))(*(a1 + 24), *(a1 + 4), *(a1 + 12));
  }

  return a1;
}

uint64_t sub_100036BE0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_100036C5C(result, a4);
  }

  return result;
}

void sub_100036C40(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100036C5C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_100036CAC();
}

void sub_100036CC4()
{
  exception = __cxa_allocate_exception(8uLL);
}

void *sub_100036D48(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_100036C5C(result, a2);
  }

  return result;
}

void sub_100036DA0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100036DBC(void *a1, int a2)
{
  if (a2 && (v2 = a1[1], *(*a1 + 4) == *(v2 + 4)))
  {
    return sub_100036DF0(a1, *(*a1 + 8) == *(v2 + 8));
  }

  else
  {
    return 0;
  }
}

BOOL sub_100036DF0(void *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a1[1];
  v4 = *(*a1 + 12);
  v5 = v4 == *(v3 + 12) && memcmp((*a1 + 16), (v3 + 16), v4) == 0;

  return sub_100036E60(a1, v5);
}

BOOL sub_100036E60(void *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *a1;
  v4 = a1[1];
  v5 = *(*a1 + 48);
  if (v5 != v4[12] || memcmp((v3 + 52), v4 + 13, v5))
  {
    return 0;
  }

  v7 = *(v3 + 84) == v4[21];

  return sub_100036EE8(a1, v7);
}

BOOL sub_100036EE8(void *a1, int a2)
{
  if (a2 && (v2 = a1[1], *(*a1 + 88) == *(v2 + 88)))
  {
    return sub_100036F1C(a1, *(*a1 + 92) == *(v2 + 92));
  }

  else
  {
    return 0;
  }
}

BOOL sub_100036F1C(void *a1, int a2)
{
  if (a2 && (v2 = *a1, v3 = a1[1], *(*a1 + 96) == v3[24]) && (v4 = *(v2 + 100), v4 == v3[25]))
  {
    return memcmp((v2 + 104), v3 + 26, v4) == 0;
  }

  else
  {
    return 0;
  }
}

void *sub_100036FEC(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100205A90;
  sub_1001884C8(a1 + 3);
  return a1;
}

void sub_100037068(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100205A90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1000370BC(void *a1)
{
  sub_10003712C((a1 + 11));
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;
    operator delete(v3);
  }

  v4 = a1[4];
  if (v4)
  {

    sub_10000367C(v4);
  }
}

uint64_t sub_10003712C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 != -1)
  {
    result = (off_100205AD0[v2])(&v3, result);
  }

  *(v1 + 16) = -1;
  return result;
}

uint64_t sub_100037184(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  *a2 = 0;
  if (result)
  {
    operator delete[]();
  }

  return result;
}

uint64_t *sub_1000371AC(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void sub_100037230(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100037268(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    operator delete();
  }

  return result;
}

uint64_t sub_100037288(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_100037334(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100205B50;
  sub_10017F064(a1 + 3, *a2);
  return a1;
}

void sub_1000373B4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100205B50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100037E44(_Unwind_Exception *a1, int a2)
{
  (*(*v4 + 16))(v4);

  if (a2 == 1)
  {
    v8 = [objc_begin_catch(a1) reason];
    [DIError failWithEnumValue:150 verboseInfo:v8 error:v2];

    objc_end_catch();
    JUMPOUT(0x100037BB8);
  }

  _Unwind_Resume(a1);
}

int64_t sub_100038058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000247C(*(a1 + 16));
  v12[0] = result;
  v12[1] = v6;
  if (result <= 0)
  {
    if (result >= 0)
    {
      v11 = result;
    }

    else
    {
      v11 = -result;
    }

    return -v11;
  }

  else
  {
    v7 = *(a2 + 208);
    v8 = *(a3 + 208) - v7;
    if (v7 <= v6)
    {
      v10 = __OFSUB__(v8, result);
      v9 = v8 - result < 0;
    }

    else
    {
      v10 = 0;
      v9 = 1;
    }

    if (v9 != v10)
    {
      return sub_10019E460(a2, a3, v8 & ~(v8 >> 63), v12);
    }
  }

  return result;
}

unint64_t sub_1000380D4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if ((*(a1 + 56) & 1) == 0)
  {
    if (!a2[6] || (v7 = *(a4 + 208) - *(a3 + 208), *(a4 + 136) - *(a3 + 136) >= (v7 & ~(v7 >> 63)) + a2[8]))
    {
      sub_10000247C(a2[2]);
    }
  }

  sub_100026714(&v59, v5);
  v43 = a2;
  if (((*(v4 + 208) - v65) & ~((*(v4 + 208) - v65) >> 63)) + a2[8] <= v61)
  {
    v8 = sub_100038058(a2, &v59, v4);
    sub_1000249F0(&v59, v8);
    v9 = v8;
    if ((v8 & 0x8000000000000000) != 0)
    {
      goto LABEL_95;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = *(v4 + 208);
  if (v8 == ((v10 - *(v5 + 208)) & ~((v10 - *(v5 + 208)) >> 63)))
  {
    v9 = v8;
    goto LABEL_95;
  }

  v40 = v5;
  v41 = v4;
  do
  {
    v46 = v8;
    v11 = *(a1 + 72);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = *(v4 + 208);
    }

    v12 = v43;
    v13 = v43[3];
    v14 = v43[4];
    v15 = v65;
    v16 = (v14 - v13 - 8) >> 3;
    if (v14 == v13)
    {
      v17 = 0;
    }

    else
    {
      v17 = v16 + 1;
    }

    v18 = (v10 - v65) & ~((v10 - v65) >> 63);
    v19 = v43[6];
    if (v43[7] * v19 >= v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = v43[7] * v19;
    }

    __p = v79;
    v78 = xmmword_1001C6CC0;
    v44 = v20;
    v45 = v62;
    if (v17 < 6)
    {
      if (v13 == v14)
      {
        v17 = 0;
      }

      else
      {
        v28 = v16 + 1;
        v29 = v79;
        do
        {
          v30 = *v13;
          if (v11)
          {
            atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          *v29 = v30;
          v29[1] = v11;
          v13 += 8;
          v29[2] = v19;
          v29 += 3;
          --v28;
        }

        while (v28);
      }

      v8 = v46;
    }

    else
    {
      v39 = v65;
      if (v17 >= 0x555555555555556)
      {
        sub_100026DEC("get_next_capacity, allocator's max size reached");
      }

      v21 = operator new(24 * v17);
      v22 = __p;
      if (__p)
      {
        v23 = v78;
        if (v78)
        {
          v24 = (__p + 8);
          do
          {
            if (*v24)
            {
              sub_10000367C(*v24);
            }

            v24 += 3;
            --v23;
          }

          while (v23);
        }

        *&v78 = 0;
        v12 = v43;
        if (v79 != v22)
        {
          operator delete(v22);
        }
      }

      *(&v78 + 1) = v17;
      __p = v21;
      *&v78 = 0;
      if (v13 == v14)
      {
        v27 = 0;
        v25 = v21;
        v5 = v40;
      }

      else
      {
        v25 = v21;
        v5 = v40;
        do
        {
          v26 = *v13;
          if (v11)
          {
            atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          *v25 = v26;
          *(v25 + 1) = v11;
          *(v25 + 2) = v19;
          v13 += 8;
          v25 += 24;
        }

        while (v13 != v14);
        v27 = v78;
      }

      v17 = v27 - 0x5555555555555555 * ((v25 - v21) >> 3);
      v8 = v46;
      v15 = v39;
    }

    *&v78 = v17;
    v80 = &v82;
    v81 = xmmword_1001C6CC0;
    sub_100027018(&v80, v17);
    v68 = __p;
    __dst = __p + 24 * v78;
    v50 = v80;
    *&v66 = &v80[v81];
    sub_100024588(v83, &v68, &__dst, &v50, &v66, v15, v44, v45);
    v4 = v41;
    sub_1000246F4(v83, &v68);
    sub_100024448(v83, &__dst);
    v9 = sub_100038058(v12, &v68, &__dst);
    if (v75)
    {
      sub_10000367C(v75);
    }

    if (v73)
    {
      sub_10000367C(v73);
    }

    if (v70)
    {
      sub_10000367C(v70);
    }

    if (v69)
    {
      sub_10000367C(v69);
    }

    if ((v9 & 0x8000000080000000) == 0x8000000080000000)
    {
      goto LABEL_91;
    }

    sub_1000246F4(v83, &__src);
    sub_100024448(v83, &v50);
    sub_100026714(&v47, &v59);
    sub_100026714(&__dst, &v47);
    v31 = 0;
    v76 = 0;
    while (!sub_1000242EC(&__src, &v50))
    {
      sub_1000266C4(&v56);
      v32 = v57;
      if (v57)
      {
        atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!v58)
      {
        sub_100024C18(&__src);
        v35 = 2;
        if (!v32)
        {
          goto LABEL_67;
        }

        goto LABEL_66;
      }

      v33 = v74;
      if (v55 < v74)
      {
        v33 = v55;
      }

      if (v33 >= v58)
      {
        v34 = v58;
      }

      else
      {
        v34 = v33;
      }

      memmove(__dst, __src, v34);
      if (v34 <= 0)
      {
        *&v66 = "transform(Fn &&, sg_vec_ref::iterator, const sg_vec_ref::iterator &, sg_vec_ref::iterator) [Fn = (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/app/disk_images/io_breaker.cpp:76:13)]";
        *(&v66 + 1) = 97;
        v67 = 16;
        sub_10003A658(&v68, &v66);
        sub_1000026BC(v71, "IO error with sg: ", 18);
        sub_10019A3A8(v71, &__src);
        sub_1000026BC(v71, " dest ", 6);
        sub_10019A3A8(v71, &__dst);
        sub_1000026BC(v71, " returned status ", 17);
        std::ostream::operator<<();
        std::ostream::~ostream();
        sub_10003A88C(&v68);
        std::ios::~ios();
        v35 = 1;
        if (!v32)
        {
          goto LABEL_67;
        }

LABEL_66:
        sub_10000367C(v32);
        goto LABEL_67;
      }

      sub_1000249F0(&__src, v34);
      sub_100024AB4(&__dst, v34);
      v35 = 0;
      v31 += v34;
      if (v32)
      {
        goto LABEL_66;
      }

LABEL_67:
      if ((v35 | 2) != 2)
      {
        goto LABEL_74;
      }
    }

    sub_100024AB4(&v47, v31);
LABEL_74:
    if (v75)
    {
      sub_10000367C(v75);
    }

    v5 = v40;
    if (v73)
    {
      sub_10000367C(v73);
    }

    if (v49)
    {
      sub_10000367C(v49);
    }

    if (v48)
    {
      sub_10000367C(v48);
    }

    if (v52)
    {
      sub_10000367C(v52);
    }

    if (v51)
    {
      sub_10000367C(v51);
    }

    if (v57)
    {
      sub_10000367C(v57);
    }

    if (v54)
    {
      sub_10000367C(v54);
    }

    sub_1000249F0(&v59, v9);
    sub_1000240A0(v63);
    v8 += v9;
LABEL_91:
    sub_1000036E8(&__p);
    if (v11)
    {
      sub_10000367C(v11);
    }

    if ((v9 & 0x8000000080000000) == 0x8000000080000000)
    {
      break;
    }

    v10 = *(v41 + 208);
  }

  while (v8 != ((v10 - *(v5 + 208)) & ~((v10 - *(v5 + 208)) >> 63)));
LABEL_95:
  v36 = *(v5 + 208);
  if (v64)
  {
    sub_10000367C(v64);
  }

  if (v60)
  {
    sub_10000367C(v60);
  }

  if (v9 < 0)
  {
    v37 = v9;
  }

  else
  {
    v37 = 0;
  }

  if (v37 >= 0)
  {
    return v8;
  }

  else
  {
    return v37;
  }
}

void sub_100038798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (v50)
  {
    sub_10000367C(v50);
  }

  sub_100002440(&STACK[0x600]);
  sub_100002440(&a21);
  sub_100002440(&a49);
  sub_100002440(&STACK[0x220]);
  sub_1000036E8(&STACK[0x6E0]);
  if (v49)
  {
    sub_10000367C(v49);
  }

  sub_100002440(&STACK[0x300]);
  _Unwind_Resume(a1);
}

void *sub_1000388E4(void *a1)
{
  *a1 = off_100205BA0;
  v2 = a1[9];
  if (v2)
  {
    sub_10000367C(v2);
  }

  return a1;
}

void sub_100038930(void *a1)
{
  *a1 = off_100205BA0;
  v1 = a1[9];
  if (v1)
  {
    sub_10000367C(v1);
  }

  operator delete();
}

void sub_100038A1C()
{
  exception = __cxa_allocate_exception(0x40uLL);
  v1 = sub_100001860(exception, "Image info is not supported for the given image type", 0x16u);
}

double sub_100038A64@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_100038AD8(uint64_t a1)
{
  if ((*(**(a1 + 16) + 144))(*(a1 + 16)))
  {
    operator new();
  }

  return 0;
}

unint64_t sub_100038C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = sub_1000395A8;
  v13[1] = 0;
  v13[2] = a1;
  v13[3] = a2;
  sub_100026714(v10, a3);
  sub_100026714(&v7, a4);
  v5 = sub_100039444(v13, v10, &v7, 0xFFFFFFFFFFFFFFFFLL);
  if (v9)
  {
    sub_10000367C(v9);
  }

  if (v8)
  {
    sub_10000367C(v8);
  }

  if (v12)
  {
    sub_10000367C(v12);
  }

  if (v11)
  {
    sub_10000367C(v11);
  }

  return v5;
}

void sub_100038CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_100002440(&a9);
  sub_100002440(&a37);
  _Unwind_Resume(a1);
}

uint64_t sub_100038CDC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_100039940(v14, a3);
  sub_1000246F4(v15, v11);
  v5 = sub_100024448(v15, v8);
  v6 = (*(*a1 + 152))(a1, a2, v11, v8, v5);
  if (v10)
  {
    sub_10000367C(v10);
  }

  if (v9)
  {
    sub_10000367C(v9);
  }

  if (v13)
  {
    sub_10000367C(v13);
  }

  if (v12)
  {
    sub_10000367C(v12);
  }

  sub_1000036E8(v14);
  return v6;
}

void sub_100038DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_100002440(&a10);
  sub_100002440(&a38);
  sub_1000036E8(&a66);
  _Unwind_Resume(a1);
}

void sub_100038E68()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void *sub_100038E9C(void *result, uint64_t a2, uint64_t *a3)
{
  *result = off_100205CB0;
  result[1] = a2;
  v3 = *a3;
  *a3 = 0;
  result[3] = 0;
  result[2] = v3;
  result[4] = 0;
  result[5] = 0;
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = v4 + 1;
  result[7] = v4 + 1;
  result[8] = v5;
  v7 = v5 + v4;
  result[6] = v7 / v6;
  if (v6 <= v7)
  {
    v8 = result[6];
    operator new[]();
  }

  return result;
}

uint64_t sub_100039174(uint64_t a1)
{
  *a1 = off_100205CB0;
  v4 = (a1 + 24);
  sub_100039388(&v4);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_1000391FC(uint64_t a1)
{
  *a1 = off_100205CB0;
  v3 = (a1 + 24);
  sub_100039388(&v3);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  operator delete();
}

void sub_100039298(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100038E68();
}

uint64_t sub_1000392E0(uint64_t a1)
{
  sub_100039318(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100039318(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v3 = result;
    do
    {
      v4 = *--v2;
      result = v4;
      *(v3 + 16) = v2;
      *v2 = 0;
      if (v4)
      {
        operator delete[]();
      }
    }

    while (v2 != a2);
  }

  return result;
}

void sub_100039388(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1000393DC(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_1000393DC(uint64_t result, void *a2)
{
  v2 = result;
  v3 = *(result + 8);
  while (v3 != a2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      operator delete[]();
    }
  }

  *(v2 + 8) = a2;
  return result;
}

unint64_t sub_100039444(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_100026898(&v26, a2);
  v28 = *(a2 + 112);
  v29 = *(a2 + 120);
  v30 = *(a2 + 136);
  v31 = *(a2 + 152);
  v32 = *(a2 + 168);
  v8 = *(a2 + 176);
  v9 = *(a2 + 192);
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  v33 = v8;
  v34 = v9;
  v36 = *(a2 + 216);
  v35 = *(a2 + 208);
  sub_100026898(&v15, a3);
  v17 = *(a3 + 112);
  v18 = *(a3 + 120);
  v19 = *(a3 + 136);
  v20 = *(a3 + 152);
  v21 = *(a3 + 168);
  v10 = *(a3 + 176);
  v11 = *(a3 + 192);
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  v22 = v10;
  v23 = v11;
  v12 = *(a3 + 208);
  v25 = *(a3 + 216);
  v24 = v12;
  v13 = sub_1000395CC(a1, &v26, &v15, a4, 0);
  if (*(&v22 + 1))
  {
    sub_10000367C(*(&v22 + 1));
  }

  if (v16)
  {
    sub_10000367C(v16);
  }

  if (*(&v33 + 1))
  {
    sub_10000367C(*(&v33 + 1));
  }

  if (v27)
  {
    sub_10000367C(v27);
  }

  return v13;
}

void sub_100039584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_100002440(&a9);
  sub_100002440(&a37);
  _Unwind_Resume(a1);
}

unint64_t sub_1000395CC(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4, char a5)
{
  v8 = 0;
  v9 = 0;
  v10 = *(a3 + 208);
  v32[0] = 0;
  v39 = 0;
  while (!sub_1000242EC(a2, a3))
  {
    if (a2[26] >= v10 || v9 >= a4)
    {
      break;
    }

    if (sub_1000E0464())
    {
      *&v30 = "details::for_each_sg_in_vec_internal(Fn &&, sg_vec_ref::iterator, sg_vec::iterator, size_t, BOOL) [Fn = std::__bind<io_result_t (DiskImage::*)(DiskImage::Context &, const sg_entry &), DiskImage *, std::reference_wrapper<DiskImage::Context>, const std::placeholders::__ph<1> &>]";
      *(&v30 + 1) = 142;
      v31 = 2;
      sub_10002A1D4(v27, &v30);
      sub_1000026BC(v29, "sg: ", 4);
      sub_10019A3A8(v29, a2);
      std::ostream::~ostream();
      sub_10002A44C(v27);
      std::ios::~ios();
    }

    v27[0] = 0;
    v27[1] = v10;
    v28 = 2;
    sub_10008A3F4(a2, v27, &v30);
    v12 = *a1;
    v13 = *(a1 + 8);
    v14 = (*(a1 + 16) + (v13 >> 1));
    if (v13)
    {
      v12 = *(*v14 + v12);
    }

    v15 = v12(v14, *(a1 + 24), &v30);
    v17 = v15;
    v18 = v15 >= 0 || v15 == 0;
    v19 = v18;
    if (v18)
    {
      v20 = v16;
      if ((v8 & 1) == 0)
      {
        v8 = 1;
      }

      if (sub_100025604(a2, a3, v16, v15))
      {
        sub_100026714(v26, a2);
        sub_100025558(v26, a3, v20, v17, a4, v27);
        sub_10002A340(v32, v27);
        sub_100025620(v27);
        sub_100002440(v26);
        sub_1000246F4(v32, v27);
        sub_100027250(a2, v27);
        sub_100002440(v27);
        sub_100024448(v32, v27);
        sub_100027250(a3, v27);
        sub_100002440(v27);
      }

      if (a5)
      {
        sub_1000249F0(a2, v17);
      }

      else
      {
        sub_100024AB4(a2, v17);
      }

      v9 += v17;
    }

    else
    {
      if (v15 >= 0)
      {
        v21 = v15;
      }

      else
      {
        v21 = -v15;
      }

      v23 = -v21;
    }

    if (*(&v30 + 1))
    {
      sub_10000367C(*(&v30 + 1));
    }

    if ((v19 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  v23 = v9;
LABEL_36:
  if (v39 == 1)
  {
    if (v38)
    {
      sub_10000367C(v38);
    }

    if (v37)
    {
      sub_10000367C(v37);
    }

    if (v36)
    {
      sub_10000367C(v36);
    }

    if (v35)
    {
      sub_10000367C(v35);
    }

    if (v34)
    {
      sub_10000367C(v34);
    }

    if (v33)
    {
      sub_10000367C(v33);
    }
  }

  return v23;
}

void sub_1000398BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  sub_100002440(&a41);
  if (STACK[0x3D8])
  {
    sub_10000367C(STACK[0x3D8]);
  }

  sub_10002568C(&STACK[0x440]);
  _Unwind_Resume(a1);
}

uint64_t *sub_100039940(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_10019E2E8();
  v5 = *a2;
  v6 = v4[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = a2[4];
  v18 = v20;
  v20[0] = v5;
  v20[1] = v6;
  v20[2] = v7;
  v19 = xmmword_1001C6CB0;
  sub_100026B84(a1, &v18);
  sub_100003780(&v18);
  v8 = a1[1];
  v18 = *a1;
  v9 = &v18[3 * v8];
  v10 = a1[19];
  v16 = a1[18];
  v17 = v9;
  v15 = &v16[v10];
  sub_100024588((a1 + 26), &v18, &v17, &v16, &v15, a2[3], a2[2], *(a2 + 10));
  v13 = *(a2 + 12);
  v12 = (a2 + 6);
  v11 = v13;
  if (*(v12 + 56) == 1 && v11)
  {
    sub_1000257F4((a1 + 26), v12);
  }

  return a1;
}

void sub_100039A50(_Unwind_Exception *a1)
{
  sub_100025620(v1 + 26);
  sub_100026C30(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100039A84(uint64_t a1, uint64_t *a2)
{
  sub_100025704(a2, v11);
  sub_1000246F4(v12, v8);
  sub_100024448(v12, v5);
  v3 = sub_1000037F0(*(*a1 + 16));
  if (v7)
  {
    sub_10000367C(v7);
  }

  if (v6)
  {
    sub_10000367C(v6);
  }

  if (v10)
  {
    sub_10000367C(v10);
  }

  if (v9)
  {
    sub_10000367C(v9);
  }

  sub_1000036E8(v11);
  return v3;
}

void sub_100039B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_100002440(&a10);
  sub_100002440(&a38);
  sub_1000036E8(&a66);
  _Unwind_Resume(a1);
}

uint64_t sub_100039BA0(void *a1)
{
  if (*(a1[1] + 8))
  {
    if (sub_1000E0464())
    {
      *&v3 = "DiskImage::Context::unmap(const unmap_extent_t *, size_t)";
      *(&v3 + 1) = 25;
      v4 = 2;
      sub_100039C8C(v5, &v3);
      sub_1000026BC(v6, "Disk image is terminated, skipping unmap", 40);
      std::ostream::~ostream();
      sub_100039EC0(v5);
      std::ios::~ios();
    }

    return 4294967290;
  }

  else
  {
    v2 = *(*a1 + 16);

    return v2();
  }
}

void sub_100039C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100039DB4(va);
  _Unwind_Resume(a1);
}

void *sub_100039C8C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100039DF8(a1, a2);
  *a1 = off_100205D20;
  a1[45] = &off_100205E20;
  a1[46] = &off_100205E48;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100205D20;
  a1[45] = off_100205DA8;
  a1[46] = off_100205DD0;
  return a1;
}

void sub_100039D90(_Unwind_Exception *a1)
{
  sub_100039EC0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100039DB4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100039EC0(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100039DF8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100205EB8;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_100039EA8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100039EC0(uint64_t a1)
{
  *a1 = off_100205EB8;
  sub_10003A300(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_10003A02C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100039EC0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10003A094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10003A0D0(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_10003A13C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100039EC0(v1);

  return std::ios::~ios();
}

void sub_10003A188(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100039EC0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10003A1EC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100039EC0(v1);

  return std::ios::~ios();
}

void sub_10003A24C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100039EC0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10003A2C8(uint64_t a1)
{
  sub_100039EC0(a1);

  operator delete();
}

uint64_t sub_10003A300(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100003368(v2, __p);
        sub_10003A474((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10003A44C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10003A474(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 173;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 173;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_10003A658(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10003A7C4(a1, a2);
  *a1 = off_100205F40;
  a1[45] = &off_100206040;
  a1[46] = &off_100206068;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100205F40;
  a1[45] = off_100205FC8;
  a1[46] = off_100205FF0;
  return a1;
}

void sub_10003A75C(_Unwind_Exception *a1)
{
  sub_10003A88C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10003A780(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10003A88C(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10003A7C4(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1002060D8;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10003A874(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10003A88C(uint64_t a1)
{
  *a1 = off_1002060D8;
  sub_10003ACCC(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_10003A9F8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10003A88C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10003AA60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10003AA9C(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_10003AB08(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10003A88C(v1);

  return std::ios::~ios();
}

void sub_10003AB54(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10003A88C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10003ABB8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10003A88C(v1);

  return std::ios::~ios();
}

void sub_10003AC18(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10003A88C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10003AC94(uint64_t a1)
{
  sub_10003A88C(a1);

  operator delete();
}

uint64_t sub_10003ACCC(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100003368(v2, __p);
        sub_10003AE40((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10003AE18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10003AE40(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 694;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 694;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10003B024()
{
  if (atomic_load_explicit(&qword_100240AF8, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&qword_100240AF8, &v4, sub_10003B210);
  }

  return dword_100240B00;
}

uint64_t (**sub_10003B0B0())()
{
  if ((atomic_load_explicit(&qword_100240B10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100240B10))
  {
    qword_100240B08 = (sub_10003B158() + 0x3FFFFFFF) >> 30;
    __cxa_guard_release(&qword_100240B10);
  }

  v0 = &unk_1001C76B0;
  if (qword_100240B08 > 3)
  {
    v0 = &off_100206170;
  }

  if (qword_100240B08 <= 8)
  {
    return v0;
  }

  else
  {
    return &off_100206148;
  }
}

uint64_t sub_10003B158()
{
  if (atomic_load_explicit(&qword_100240B18, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&qword_100240B18, &v4, sub_10003B1C4);
  }

  return qword_100240B20;
}

uint64_t sub_10003B1C4()
{
  v1 = 8;
  v2 = 0;
  result = sysctlbyname("hw.memsize", &v2, &v1, 0, 0);
  qword_100240B20 = v2;
  return result;
}

uint64_t sub_10003B210()
{
  v2 = 1;
  v1 = 4;
  result = sysctlbyname("hw.logicalcpu", &v2, &v1, 0, 0);
  dword_100240B00 = v2;
  return result;
}

void sub_10003B264(uint64_t a1, _DWORD *a2)
{
  if (*a2 == 4)
  {
    sub_100042588();
  }

  sub_1000427C8();
}

void sub_10003B2D4(void *a1, void *a2, _DWORD *a3, uint64_t a4)
{
  v6 = sub_10003B384(a1, a2);
  *v6 = off_1002061A8;
  *(v6 + 10) = *a3;
  v6[6] = a4;
  operator new[]();
}

void *sub_10003B384(void *a1, void *a2)
{
  result = sub_10019A650(a1);
  *result = off_1002064C0;
  v4 = a2[1];
  result[3] = *a2;
  result[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_10003B3E0(void *a1)
{
  *a1 = off_1002064C0;
  v2 = a1[4];
  if (v2)
  {
    sub_10000367C(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_10003B438(void *a1, uint64_t a2, void *a3)
{
  v4 = sub_10003B384(a1, a3);
  *v4 = off_1002061A8;
  *(v4 + 10) = *(a2 + 40);
  v4[6] = *(a2 + 48);
  operator new[]();
}

void *sub_10003B4EC(void *a1)
{
  *a1 = off_1002061A8;
  sub_10003D8A8((a1 + 9));
  v2 = a1[7];
  a1[7] = 0;
  if (v2)
  {
    operator delete[]();
  }

  *a1 = off_1002064C0;
  v3 = a1[4];
  if (v3)
  {
    sub_10000367C(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

uint64_t sub_10003B58C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) != *(a1 + 56))
  {
    (*(*a1 + 152))(a1);
  }

  if (*(a2 + 104) == 1 && *(a2 + 48) != 0)
  {
    return 4294967251;
  }

  v5 = *(a1 + 56);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(sub_10019E2E8() + 1);
  v16 = v5;
  v17 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = v6;
  v19 = v7;
  v20 = v6;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v9 = (*(**(a1 + 24) + 128))(*(a1 + 24), &v16);
  if ((v9 & 0x80000000) != 0)
  {
    *&v12 = "int CompressedBackend::read(const sg_entry &)";
    *(&v12 + 1) = 27;
    v13 = 16;
    sub_10003B870(v14, &v12);
    sub_1000026BC(v15, "Internal backend read() failed. ret=", 36);
    std::ostream::operator<<();
    std::ios_base::getloc((v15 + *(v15[0] - 24)));
    v10 = std::locale::use_facet(&v24, &std::ctype<char>::id);
    (v10->__vftable[2].~facet_0)(v10, 10);
    std::locale::~locale(&v24);
    std::ostream::put();
    std::ostream::flush();
    std::ostream::~ostream();
    sub_10003DBBC(v14);
    std::ios::~ios();
  }

  else
  {
    v9 = (*(*a1 + 208))(a1, a2, v16);
    if (!v9)
    {
      *&v12 = "int CompressedBackend::read(const sg_entry &)";
      *(&v12 + 1) = 27;
      v13 = 16;
      sub_10003B9DC(v14, &v12);
      sub_1000026BC(v15, "Decompression failed", 20);
      std::ostream::~ostream();
      sub_10003E354(v14);
      std::ios::~ios();
      v9 = 4294967291;
    }
  }

  if (v17)
  {
    sub_10000367C(v17);
  }

  return v9;
}

void sub_10003B81C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10003BB04(va);
  v7 = *(v5 - 160);
  if (v7)
  {
    sub_10000367C(v7);
  }

  _Unwind_Resume(a1);
}

void *sub_10003B870(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100042974(a1, a2);
  *a1 = off_1002065A0;
  a1[45] = &off_1002066A0;
  a1[46] = &off_1002066C8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002065A0;
  a1[45] = off_100206628;
  a1[46] = off_100206650;
  return a1;
}

void sub_10003B974(_Unwind_Exception *a1)
{
  sub_10003DBBC(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10003B998(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10003DBBC(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10003B9DC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100042A3C(a1, a2);
  *a1 = off_1002067C0;
  a1[45] = &off_1002068C0;
  a1[46] = &off_1002068E8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002067C0;
  a1[45] = off_100206848;
  a1[46] = off_100206870;
  return a1;
}

void sub_10003BAE0(_Unwind_Exception *a1)
{
  sub_10003E354(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10003BB04(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10003E354(a1);
  std::ios::~ios();
  return a1;
}

void sub_10003BB48(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 64);
  v7 = *(a2 + 16);
  if (*(a1 + 48) - v6 + *(a1 + 56) < v7)
  {
    (*(*a1 + 152))(a1);
    v6 = *(a1 + 64);
    v7 = *(a2 + 16);
  }

  v8 = *(a2 + 24);
  v9 = *(sub_10019E2E8() + 1);
  v31 = v6;
  v32 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v33 = v7;
  v34 = v8;
  v35 = v7;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  if (*(a2 + 104) == 1 && *(a2 + 48))
  {
    *a3 = -45;
    *(a3 + 4) = 1;
LABEL_11:
    *(a3 + 8) = 0;
    goto LABEL_12;
  }

  (*(**(a1 + 24) + 136))(&v29);
  if ((v29 & 0x100000000) == 0 && !v30)
  {
    *a3 = 0;
    *(a3 + 4) = 0;
    *(a3 + 16) = 0;
    goto LABEL_11;
  }

  LOBYTE(v24) = 0;
  v25 = 0;
  v27 = &v28;
  v28 = &v24;
  v26 = 0;
  sub_100026638(v16, a2);
  v18 = v28;
  v28 = 0;
  *(v18 + 2) = &v18;
  LOBYTE(v19) = 0;
  v20 = 0;
  v21 = 0;
  if (BYTE4(v29) == 1)
  {
    v19 = v29;
    v20 = 1;
  }

  v10 = v30;
  v22 = v30;
  v30 = 0;
  if (v22)
  {
    *v10 = &v19;
  }

  v11 = *(a1 + 72);
  v23 = *(a1 + 64);
  v12 = *(a1 + 80);
  v13 = v11 + 152 * v12;
  if (v12 == *(a1 + 88))
  {
    sub_100042B04((a1 + 72), v11 + 152 * v12, 1, v16, &v39);
  }

  else
  {
    sub_100026898(v11 + 152 * v12, v16);
    *(v13 + 112) = v18;
    v18 = 0;
    *(*(v13 + 112) + 16) = v13 + 112;
    *(v13 + 120) = 0;
    *(v13 + 124) = 0;
    *(v13 + 128) = 0;
    if (v20 == 1)
    {
      *(v13 + 120) = v19;
      *(v13 + 124) = 1;
    }

    *(v13 + 136) = v22;
    v22 = 0;
    v14 = *(v13 + 136);
    if (v14)
    {
      *v14 = v13 + 120;
    }

    *(v13 + 144) = v23;
    ++*(a1 + 80);
  }

  if (v18)
  {
    *(v18 + 2) = 0;
  }

  if (v17)
  {
    sub_10000367C(v17);
  }

  *(a1 + 64) += *(a2 + 16);
  *a3 = 0;
  *(a3 + 4) = 0;
  *(a3 + 8) = 0;
  if (v25 == 1)
  {
    *a3 = v24;
    *(a3 + 4) = 1;
  }

  v15 = v27;
  *(a3 + 16) = v27;
  if (v15)
  {
    *v15 = a3;
  }

  if (v28)
  {
    *(v28 + 2) = 0;
  }

LABEL_12:
  if (v32)
  {
    sub_10000367C(v32);
  }
}

void sub_10003BE34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (a24)
  {
    *(a24 + 16) = 0;
  }

  if (a11)
  {
    sub_10000367C(a11);
  }

  if (a32)
  {
    *(a32 + 16) = 0;
  }

  v34 = *(v32 - 176);
  if (v34)
  {
    sub_10000367C(v34);
  }

  _Unwind_Resume(exception_object);
}

void sub_10003BE80(uint64_t a1)
{
  (*(**(a1 + 24) + 152))(*(a1 + 24));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = 152 * v2;
    v4 = *(a1 + 72) + 112;
    while (1)
    {
      LODWORD(v5) = sub_10003C008((v4 + 8));
      if ((v5 & 0x80000000) == 0)
      {
        if (*(v4 - 96) > v5)
        {
          goto LABEL_7;
        }

        v5 = (*(*a1 + 208))(a1, v4 - 112, *(v4 + 32));
        if (!v5)
        {
          break;
        }
      }

LABEL_8:
      v6 = *v4;
      *v6 = v5;
      *(v6 + 4) = 1;
      sub_10002967C(v4);
      v4 += 152;
      v3 -= 152;
      if (!v3)
      {
        goto LABEL_9;
      }
    }

    *&v7 = "void CompressedBackend::run_futures()";
    *(&v7 + 1) = 35;
    v8 = 16;
    sub_10003C0E0(v9, &v7);
    sub_1000026BC(v10, "Decompression failed", 20);
    std::ostream::~ostream();
    sub_10003EAEC(v9);
    std::ios::~ios();
LABEL_7:
    LODWORD(v5) = -5;
    goto LABEL_8;
  }

LABEL_9:
  *(a1 + 64) = *(a1 + 56);
  sub_100043054((a1 + 72));
}

void sub_10003BFF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10003C208(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10003C008(unsigned int *a1)
{
  if (*(a1 + 4) == 1)
  {
    return *a1;
  }

  atomic_fetch_add_explicit(a1 + 1, 1uLL, memory_order_relaxed);
  v6.__m_ = sub_100199F08(a1);
  v6.__owns_ = 1;
  std::mutex::lock(v6.__m_);
  v4 = sub_100199F94(a1);
  if ((a1[1] & 1) == 0)
  {
    v5 = v4;
    do
    {
      std::condition_variable::wait(v5, &v6);
    }

    while (*(a1 + 4) != 1);
  }

  atomic_fetch_add_explicit(a1 + 1, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
  sub_100042544(&v6);
  v2 = *a1;
  if (v6.__owns_)
  {
    std::mutex::unlock(v6.__m_);
  }

  return v2;
}

void sub_10003C0C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, char a10)
{
  if (a10 == 1)
  {
    std::mutex::unlock(a9);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10003C0E0(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100042F8C(a1, a2);
  *a1 = off_1002069E0;
  a1[45] = &off_100206AE0;
  a1[46] = &off_100206B08;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002069E0;
  a1[45] = off_100206A68;
  a1[46] = off_100206A90;
  return a1;
}

void sub_10003C1E4(_Unwind_Exception *a1)
{
  sub_10003EAEC(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10003C208(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10003EAEC(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10003C24C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) != *(a1 + 56))
  {
    (*(*a1 + 152))(a1);
  }

  if (*(a2 + 104) == 1 && *(a2 + 48) != 0)
  {
    return 4294967251;
  }

  v5 = (*(*a1 + 200))(a1, a2);
  if (!v5)
  {
    return 4294967291;
  }

  v6 = v5;
  v7 = *(a1 + 56);
  v8 = *(a2 + 24);
  v9 = *(sub_10019E2E8() + 1);
  v17 = v7;
  v18 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = v6;
  v20 = v8;
  v21 = v6;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v10 = (*(**(a1 + 24) + 120))(*(a1 + 24), &v17);
  if ((v10 & 0x80000000) != 0)
  {
    *&v13 = "int CompressedBackend::write(const sg_entry &)";
    *(&v13 + 1) = 28;
    v14 = 16;
    sub_10003C4BC(v15, &v13);
    sub_1000026BC(v16, "Internal backend write() failed. ret=", 37);
    std::ostream::operator<<();
    std::ios_base::getloc((v16 + *(v16[0] - 24)));
    v11 = std::locale::use_facet(&v25, &std::ctype<char>::id);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(&v25);
    std::ostream::put();
    std::ostream::flush();
    std::ostream::~ostream();
    sub_10003F284(v15);
    std::ios::~ios();
  }

  else
  {
    v10 = v6;
  }

  if (v18)
  {
    sub_10000367C(v18);
  }

  return v10;
}

void sub_10003C480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v15 = *(v13 - 160);
  if (v15)
  {
    sub_10000367C(v15);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10003C4BC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000430B4(a1, a2);
  *a1 = off_100206C00;
  a1[45] = &off_100206D00;
  a1[46] = &off_100206D28;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100206C00;
  a1[45] = off_100206C88;
  a1[46] = off_100206CB0;
  return a1;
}

void sub_10003C5C0(_Unwind_Exception *a1)
{
  sub_10003F284(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10003C5E4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10003F284(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10003C628(uint64_t a1, void *a2)
{
  v3 = sub_1000026BC(a2, "Compressed(", 11);
  v6 = *(a1 + 40);
  v4 = sub_10003C688(v3, &v6);
  return sub_1000026BC(v4, ")", 1);
}

void *sub_10003C688(void *a1, _DWORD *a2)
{
  v2 = &off_100206E10;
  v3 = 120;
  while (*(v2 - 2) != *a2)
  {
    v2 += 3;
    v3 -= 24;
    if (!v3)
    {
      v4 = "no_match";
      v5 = 8;
      return sub_1000026BC(a1, v4, v5);
    }
  }

  v4 = *v2;
  v5 = v2[1];
  return sub_1000026BC(a1, v4, v5);
}

void sub_10003C7C8(_Unwind_Exception *a1)
{
  v3 = v1[318];
  v1[318] = 0;
  if (v3)
  {
    operator delete();
  }

  v4 = v1[317];
  v1[317] = 0;
  if (v4)
  {
    operator delete[]();
  }

  sub_10003B4EC(v1);
  _Unwind_Resume(a1);
}

void sub_10003C914(_Unwind_Exception *a1)
{
  v3 = v1[318];
  v1[318] = 0;
  if (v3)
  {
    operator delete();
  }

  v4 = v1[317];
  v1[317] = 0;
  if (v4)
  {
    operator delete[]();
  }

  sub_10003B4EC(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10003C9FC(uint64_t a1, uint64_t a2, char *a3)
{
  destLen = *(a2 + 32);
  if (!BZ2_bzBuffToBuffDecompress(*a2, &destLen, a3, *(a2 + 16), 0, 0))
  {
    return destLen;
  }

  *&v4 = "size_t BZIPCompressedBackend::decompress(const sg_entry &, char *) const";
  *(&v4 + 1) = 40;
  v5 = 16;
  sub_10003CADC(v6, &v4);
  sub_1000026BC(v7, "BZIP decompression failed, res=", 31);
  std::ostream::operator<<();
  std::ostream::~ostream();
  sub_100040514(v6);
  std::ios::~ios();
  return 0;
}

void sub_10003CAC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10003CC04(va);
  _Unwind_Resume(a1);
}

void *sub_10003CADC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100043264(a1, a2);
  *a1 = off_1002070B8;
  a1[45] = &off_1002071B8;
  a1[46] = &off_1002071E0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002070B8;
  a1[45] = off_100207140;
  a1[46] = off_100207168;
  return a1;
}

void sub_10003CBE0(_Unwind_Exception *a1)
{
  sub_100040514(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10003CC04(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100040514(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10003CC48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  destLen = v2;
  v3 = v2 / 0x186A0;
  if ((v2 / 0x186A0) >= 8)
  {
    LODWORD(v3) = 8;
  }

  v4 = BZ2_bzBuffToBuffCompress(*(a1 + 56), &destLen, *a2, v2, v3 + 1, 0, 0);
  if (v4 != -8)
  {
    if (!v4)
    {
      return destLen;
    }

    *&v6 = "size_t BZIPCompressedBackend::compress(const sg_entry &) const";
    *(&v6 + 1) = 38;
    v7 = 16;
    sub_10003CD5C(v8, &v6);
    sub_1000026BC(v9, "BZIP compression failed, res=", 29);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_100040CAC(v8);
    std::ios::~ios();
  }

  return 0;
}

void sub_10003CD48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10003CE84(va);
  _Unwind_Resume(a1);
}

void *sub_10003CD5C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10004332C(a1, a2);
  *a1 = off_1002072D8;
  a1[45] = &off_1002073D8;
  a1[46] = &off_100207400;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002072D8;
  a1[45] = off_100207360;
  a1[46] = off_100207388;
  return a1;
}

void sub_10003CE60(_Unwind_Exception *a1)
{
  sub_100040CAC(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10003CE84(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100040CAC(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10003CF0C(void *a1)
{
  *a1 = off_100206290;
  v2 = a1[318];
  a1[318] = 0;
  if (v2)
  {
    operator delete();
  }

  v3 = a1[317];
  a1[317] = 0;
  if (v3)
  {
    operator delete[]();
  }

  return sub_10003B4EC(a1);
}

void sub_10003CFA0(void *a1)
{
  sub_10003CF0C(a1);

  operator delete();
}

void sub_10003D0D0(void **a1)
{
  (*(*a1[3] + 80))(&v2);
  ((*a1)[24])(a1, &v2);
  if (v3)
  {
    sub_10000367C(v3);
  }
}

void sub_10003D164(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000367C(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10003D17C(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (!v2)
  {
    return 0;
  }

  v4 = *a2;
  v5 = 112 * v2;
  while (1)
  {
    v6 = (*(*a1 + 128))(a1, v4);
    if ((v6 & 0x80000000) != 0)
    {
      break;
    }

    v4 += 112;
    v5 -= 112;
    if (!v5)
    {
      return 0;
    }
  }

  v7 = v6;
  *&v9 = "int Backend::read(const elements_t &)";
  *(&v9 + 1) = 17;
  v10 = 16;
  sub_1000411AC(v11, &v9);
  sub_1000026BC(v12, "Backend: failed reading element in vector", 41);
  std::ostream::~ostream();
  sub_1000413E0(v11);
  std::ios::~ios();
  return v7;
}

void sub_10003D270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000412D4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10003D284(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (!v2)
  {
    return 0;
  }

  v4 = *a2;
  v5 = 112 * v2;
  while (1)
  {
    v6 = (*(*a1 + 120))(a1, v4);
    if ((v6 & 0x80000000) != 0)
    {
      break;
    }

    v4 += 112;
    v5 -= 112;
    if (!v5)
    {
      return 0;
    }
  }

  v7 = v6;
  *&v9 = "int Backend::write(const elements_t &)";
  *(&v9 + 1) = 18;
  v10 = 16;
  sub_100041B78(v11, &v9);
  sub_1000026BC(v12, "Backend: failed writing element in vector", 41);
  std::ostream::~ostream();
  sub_100041DAC(v11);
  std::ios::~ios();
  return v7;
}

void sub_10003D378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100041CA0(va);
  _Unwind_Resume(a1);
}

void sub_10003D38C(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  LOBYTE(v6) = 0;
  v7 = 0;
  v9 = &v10;
  v10 = &v6;
  v8 = 0;
  v3 = (*(*a1 + 120))(a1);
  v4 = v10;
  *v10 = v3;
  *(v4 + 4) = 1;
  sub_10002967C(&v10);
  *a2 = 0;
  *(a2 + 4) = 0;
  *(a2 + 8) = 0;
  if (v7 == 1)
  {
    *a2 = v6;
    *(a2 + 4) = 1;
  }

  v5 = v9;
  *(a2 + 16) = v9;
  if (v5)
  {
    *v5 = a2;
  }

  if (v10)
  {
    *(v10 + 2) = 0;
  }
}

void sub_10003D44C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    *(a12 + 16) = 0;
  }

  _Unwind_Resume(a1);
}

void *sub_10003D45C(void **a1)
{
  v2 = ((*a1)[8])(a1);
  v3 = sub_1000026BC(v2, "(", 1);
  v4 = (*(*a1[3] + 64))(a1[3], v3);

  return sub_1000026BC(v4, ")", 1);
}

void sub_10003D54C(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_100002148(v3);
  sub_1000026BC(v3, "Unexpected context construction by ", 35);
  sub_10019A7F4(v3, a1);
  sub_100004290(exception, v3, 0x16u);
}

void sub_10003D5E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&a12);
  std::ostream::~ostream();
  std::ios::~ios();
  if (v25)
  {
    __cxa_free_exception(v24);
  }

  _Unwind_Resume(a1);
}

void sub_10003D6FC(void *a1)
{
  sub_10003B4EC(a1);

  operator delete();
}

void sub_10003D7D4(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  LOBYTE(v6) = 0;
  v7 = 0;
  v9 = &v10;
  v10 = &v6;
  v8 = 0;
  v3 = (*(*a1 + 128))(a1);
  v4 = v10;
  *v10 = v3;
  *(v4 + 4) = 1;
  sub_10002967C(&v10);
  *a2 = 0;
  *(a2 + 4) = 0;
  *(a2 + 8) = 0;
  if (v7 == 1)
  {
    *a2 = v6;
    *(a2 + 4) = 1;
  }

  v5 = v9;
  *(a2 + 16) = v9;
  if (v5)
  {
    *v5 = a2;
  }

  if (v10)
  {
    *(v10 + 2) = 0;
  }
}

void sub_10003D894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    *(a12 + 16) = 0;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10003D8A8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *a1 + 112;
    do
    {
      if (*v3)
      {
        *(*v3 + 16) = 0;
      }

      v4 = *(v3 - 104);
      if (v4)
      {
        sub_10000367C(v4);
      }

      v3 += 152;
      --v2;
    }

    while (v2);
  }

  if (*(a1 + 16) && a1 + 24 != *a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10003D924(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10003DBBC(v1);

  return std::ios::~ios();
}

uint64_t sub_10003D970(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10003DBBC(v1);

  return std::ios::~ios();
}

void sub_10003D9D0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10003DBBC(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10003DA38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10003DA74(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10003DAE0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10003DBBC(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10003DB44(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10003DBBC(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10003DBBC(uint64_t a1)
{
  *a1 = off_100206738;
  sub_10003DD28(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10003DD28(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100003368(v2, __p);
        sub_10003DED8((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10003DE74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10003DEA0(uint64_t a1)
{
  sub_10003DBBC(a1);

  operator delete();
}

int *sub_10003DED8(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 56;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 56;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10003E0BC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10003E354(v1);

  return std::ios::~ios();
}

uint64_t sub_10003E108(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10003E354(v1);

  return std::ios::~ios();
}

void sub_10003E168(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10003E354(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10003E1D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10003E20C(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10003E278(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10003E354(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10003E2DC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10003E354(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10003E354(uint64_t a1)
{
  *a1 = off_100206958;
  sub_10003E4C0(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10003E4C0(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100003368(v2, __p);
        sub_10003E670((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10003E60C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10003E638(uint64_t a1)
{
  sub_10003E354(a1);

  operator delete();
}

int *sub_10003E670(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 62;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 62;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10003E854(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10003EAEC(v1);

  return std::ios::~ios();
}

uint64_t sub_10003E8A0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10003EAEC(v1);

  return std::ios::~ios();
}

void sub_10003E900(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10003EAEC(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10003E968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10003E9A4(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10003EA10(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10003EAEC(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10003EA74(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10003EAEC(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10003EAEC(uint64_t a1)
{
  *a1 = off_100206B78;
  sub_10003EC58(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10003EC58(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100003368(v2, __p);
        sub_10003EE08((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10003EDA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10003EDD0(uint64_t a1)
{
  sub_10003EAEC(a1);

  operator delete();
}

int *sub_10003EE08(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 107;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 107;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10003EFEC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10003F284(v1);

  return std::ios::~ios();
}

uint64_t sub_10003F038(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10003F284(v1);

  return std::ios::~ios();
}

void sub_10003F098(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10003F284(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10003F100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10003F13C(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10003F1A8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10003F284(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10003F20C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10003F284(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10003F284(uint64_t a1)
{
  *a1 = off_100206D98;
  sub_10003F3F0(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10003F3F0(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100003368(v2, __p);
        sub_10003F5A0((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10003F53C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10003F568(uint64_t a1)
{
  sub_10003F284(a1);

  operator delete();
}

int *sub_10003F5A0(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 137;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 137;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

_DWORD *sub_10003F784(_DWORD *a1, int *a2)
{
  *a1 = dword_1001C78C4[*a2];
  if (sub_1000E0464())
  {
    *&v6 = "StandardCompressedBackend::pimpl::pimpl(algo_t)";
    *(&v6 + 1) = 39;
    v7 = 2;
    sub_10003F8B0(v8, &v6);
    sub_1000026BC(v9, "Using compression ", 18);
    v10 = *a2;
    sub_10003C688(v9, &v10);
    *(&v9[1] + *(v9[0] - 24)) = *(&v9[1] + *(v9[0] - 24)) & 0xFFFFFFB5 | 8;
    sub_1000026BC(v9, " constant ", 10);
    v4 = *a1;
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_10003FAE4(v8);
    std::ios::~ios();
  }

  return a1;
}

void sub_10003F89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10003F9D8(va);
  _Unwind_Resume(a1);
}

void *sub_10003F8B0(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10003FA1C(a1, a2);
  *a1 = off_100206E98;
  a1[45] = &off_100206F98;
  a1[46] = &off_100206FC0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100206E98;
  a1[45] = off_100206F20;
  a1[46] = off_100206F48;
  return a1;
}

void sub_10003F9B4(_Unwind_Exception *a1)
{
  sub_10003FAE4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10003F9D8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10003FAE4(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10003FA1C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100207030;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10003FACC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10003FAE4(uint64_t a1)
{
  *a1 = off_100207030;
  sub_10003FF24(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_10003FC50(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10003FAE4(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10003FCB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10003FCF4(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_10003FD60(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10003FAE4(v1);

  return std::ios::~ios();
}

void sub_10003FDAC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10003FAE4(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10003FE10(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10003FAE4(v1);

  return std::ios::~ios();
}

void sub_10003FE70(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10003FAE4(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10003FEEC(uint64_t a1)
{
  sub_10003FAE4(a1);

  operator delete();
}

uint64_t sub_10003FF24(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100003368(v2, __p);
        sub_100040098((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100040070(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100040098(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 195;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 195;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10004027C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100040514(v1);

  return std::ios::~ios();
}

uint64_t sub_1000402C8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100040514(v1);

  return std::ios::~ios();
}

void sub_100040328(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100040514(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100040390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000403CC(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100040438(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100040514(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10004049C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100040514(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100040514(uint64_t a1)
{
  *a1 = off_100207250;
  sub_100040680(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100040680(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100003368(v2, __p);
        sub_100040830((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1000407CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000407F8(uint64_t a1)
{
  sub_100040514(a1);

  operator delete();
}

int *sub_100040830(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 264;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 264;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100040A14(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100040CAC(v1);

  return std::ios::~ios();
}

uint64_t sub_100040A60(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100040CAC(v1);

  return std::ios::~ios();
}

void sub_100040AC0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100040CAC(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100040B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100040B64(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100040BD0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100040CAC(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100040C34(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100040CAC(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100040CAC(uint64_t a1)
{
  *a1 = off_100207470;
  sub_100040E18(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100040E18(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100003368(v2, __p);
        sub_100040FC8((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100040F64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100040F90(uint64_t a1)
{
  sub_100040CAC(a1);

  operator delete();
}

int *sub_100040FC8(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 287;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 287;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_1000411AC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100041318(a1, a2);
  *a1 = off_1002074F8;
  a1[45] = &off_1002075F8;
  a1[46] = &off_100207620;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002074F8;
  a1[45] = off_100207580;
  a1[46] = off_1002075A8;
  return a1;
}

void sub_1000412B0(_Unwind_Exception *a1)
{
  sub_1000413E0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000412D4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000413E0(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100041318(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100207690;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_1000413C8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000413E0(uint64_t a1)
{
  *a1 = off_100207690;
  sub_100041820(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_10004154C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000413E0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000415B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000415F0(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_10004165C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000413E0(v1);

  return std::ios::~ios();
}

void sub_1000416A8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000413E0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10004170C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000413E0(v1);

  return std::ios::~ios();
}

void sub_10004176C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000413E0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000417E8(uint64_t a1)
{
  sub_1000413E0(a1);

  operator delete();
}

uint64_t sub_100041820(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100003368(v2, __p);
        sub_100041994((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10004196C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100041994(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 121;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 121;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_100041B78(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100041CE4(a1, a2);
  *a1 = off_100207718;
  a1[45] = &off_100207818;
  a1[46] = &off_100207840;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100207718;
  a1[45] = off_1002077A0;
  a1[46] = off_1002077C8;
  return a1;
}

void sub_100041C7C(_Unwind_Exception *a1)
{
  sub_100041DAC(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100041CA0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100041DAC(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100041CE4(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1002078B0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_100041D94(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100041DAC(uint64_t a1)
{
  *a1 = off_1002078B0;
  sub_1000421EC(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_100041F18(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100041DAC(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100041F80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100041FBC(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_100042028(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100041DAC(v1);

  return std::ios::~ios();
}

void sub_100042074(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100041DAC(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000420D8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100041DAC(v1);

  return std::ios::~ios();
}

void sub_100042138(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100041DAC(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000421B4(uint64_t a1)
{
  sub_100041DAC(a1);

  operator delete();
}

uint64_t sub_1000421EC(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100003368(v2, __p);
        sub_100042360((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100042338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100042360(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 132;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 132;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void sub_100042544(uint64_t a1)
{
  if (*(a1 + 8))
  {
    std::mutex::unlock(*a1);
    *(a1 + 8) = 0;
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::unlock: not locked");
    sub_100042588();
  }
}

void sub_100042614(void *a1, void *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100207930;
  v3 = *a3;
  v4 = 4;
  sub_10003B2D4(a1 + 3, a2, &v4, v3);
}

void sub_1000426C4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100207930;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100042740(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        sub_10000367C(v5);
      }
    }
  }
}

void sub_100042864(void *a1, void *a2, int *a3, uint64_t *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100207980;
  v4 = *a3;
  sub_10003C6C8(a1 + 3, a2, &v4, *a4);
}

void sub_1000428F8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100207980;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100042974(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100206738;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_100042A24(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100042A3C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100206958;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_100042AEC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_100042B04(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *a1;
  v11 = sub_100042BB8(a1, a3);
  if (v11 >= 0xD79435E50D7944)
  {
    sub_100026DEC("get_next_capacity, allocator's max size reached");
  }

  v12 = v11;
  v13 = operator new(152 * v11);
  sub_100042C38(a1, v13, v12, a2, a3, a4);
  *a5 = *a1 + a2 - v10;
}

unint64_t sub_100042BB8(uint64_t a1, uint64_t a2)
{
  v2 = 0xD79435E50D7943;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xD79435E50D7943 - v4 < a2 - v4 + v3)
  {
    sub_100026DEC("get_next_capacity, allocator's max size reached");
  }

  v5 = v4 >> 61;
  v6 = 8 * v4;
  if (v5 > 4)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  v8 = v6 / 5;
  if (v5)
  {
    v8 = v7;
  }

  v9 = v3 + a2;
  if (v8 < 0xD79435E50D7943)
  {
    v2 = v8;
  }

  if (v9 <= v2)
  {
    return v2;
  }

  else
  {
    return v9;
  }
}

void sub_100042C38(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  sub_100042D18(a1, *a1, a4, *a1 + 152 * a1[1], a2, a5, a6);
  if (v10)
  {
    v11 = a1[1];
    if (v11)
    {
      v12 = v10 + 112;
      do
      {
        if (*v12)
        {
          *(*v12 + 16) = 0;
        }

        v13 = *(v12 - 104);
        if (v13)
        {
          sub_10000367C(v13);
        }

        v12 += 152;
        --v11;
      }

      while (v11);
    }

    if (a1 + 3 != *a1)
    {
      operator delete(*a1);
    }
  }

  v14 = a1[1] + a5;
  *a1 = a2;
  a1[1] = v14;
  a1[2] = a3;
}

void sub_100042CF4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if ((v2 + 24) != v1)
    {
      operator delete(v1);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100042D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a5;
  v17 = a1;
  v16 = sub_100042E1C(a1, a2, a3, a5);
  v12 = sub_100026898(v16, a7);
  *(v12 + 112) = *(a7 + 112);
  *(a7 + 112) = 0;
  *(*(v12 + 112) + 16) = v12 + 112;
  *(v12 + 120) = 0;
  *(v12 + 124) = 0;
  *(v12 + 128) = 0;
  if (*(a7 + 124) == 1)
  {
    *(v12 + 120) = *(a7 + 120);
    *(v12 + 124) = 1;
  }

  *(v12 + 136) = *(a7 + 136);
  *(a7 + 136) = 0;
  v13 = *(v12 + 136);
  if (v13)
  {
    *v13 = v12 + 120;
  }

  *(v12 + 144) = *(a7 + 144);
  sub_100042E1C(a1, a3, a4, v12 + 152 * a6);
  v15 = 0;
  v16 = 0;
  return sub_100042F34(&v15);
}

void sub_100042E08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100042F34(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100042E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      sub_100026898(a4 + v7, a2 + v7);
      *(v8 + 112) = *(a2 + v7 + 112);
      *(a2 + v7 + 112) = 0;
      *(*(v8 + 112) + 16) = v8 + 112;
      *(v8 + 120) = 0;
      *(v8 + 124) = 0;
      *(v8 + 128) = 0;
      if (*(a2 + v7 + 124) == 1)
      {
        *(v8 + 120) = *(a2 + v7 + 120);
        *(v8 + 124) = 1;
      }

      *(a4 + v7 + 136) = *(a2 + v7 + 136);
      *(a2 + v7 + 136) = 0;
      v9 = *(a4 + v7 + 136);
      if (v9)
      {
        *v9 = v8 + 120;
      }

      *(a4 + v7 + 144) = *(a2 + v7 + 144);
      v7 += 152;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_100042F04(void *a1)
{
  __cxa_begin_catch(a1);
  if (v3)
  {
    sub_1001A3434(v1, v2);
  }

  __cxa_rethrow();
}

uint64_t *sub_100042F34(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v2 != v3)
  {
    v4 = *(v2 + 112);
    if (v4)
    {
      *(v4 + 16) = 0;
    }

    v5 = *(v2 + 8);
    if (v5)
    {
      sub_10000367C(v5);
      v2 = *a1;
      v3 = a1[1];
    }

    v2 += 152;
    *a1 = v2;
  }

  return a1;
}

uint64_t sub_100042F8C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100206B78;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10004303C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_100043054(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = *a1 + 112;
    do
    {
      if (*v3)
      {
        *(*v3 + 16) = 0;
      }

      v4 = *(v3 - 104);
      if (v4)
      {
        sub_10000367C(v4);
      }

      v3 += 152;
      --v2;
    }

    while (v2);
  }

  a1[1] = 0;
}

uint64_t sub_1000430B4(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100206D98;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_100043164(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_100043208(void *a1, uint64_t a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100207980;
  sub_10003C848(a1 + 3, a2, a3);
}

uint64_t sub_100043264(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100207250;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_100043314(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10004332C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100207470;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_1000433DC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_100043480(void *a1, uint64_t a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100207930;
  sub_10003B438(a1 + 3, a2, a3);
}

void sub_100043504(uint64_t a1)
{
  std::mutex::lock((a1 + 8));
  if (atomic_fetch_add(a1, 0xFFFFFFFFFFFFFFFFLL) == 1 && *(a1 + 72) == 1)
  {
    *(a1 + 72) = 0;
    std::condition_variable::notify_one((a1 + 80));
  }

  std::mutex::unlock((a1 + 8));
}

uint64_t sub_100043568(uint64_t result)
{
  atomic_fetch_add(result, 1uLL);
  *(result + 72) = 1;
  return result;
}

void sub_100043578(uint64_t a1)
{
  v2.__m_ = (a1 + 8);
  v2.__owns_ = 1;
  std::mutex::lock((a1 + 8));
  if (atomic_fetch_add(a1, 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    *(a1 + 72) = 0;
  }

  else if (*(a1 + 72) == 1)
  {
    do
    {
      std::condition_variable::wait((a1 + 80), &v2);
    }

    while ((*(a1 + 72) & 1) != 0);
  }

  if (v2.__owns_)
  {
    std::mutex::unlock(v2.__m_);
  }
}

uint64_t sub_100043600(uint64_t a1, unint64_t a2)
{
  v18 = a2;
  __lk.__m_ = (a1 + 24);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 24));
  LOBYTE(v15[0]) = 0;
  sub_100045E40(a1, &v18);
  v4 = v3;
  if ((v3 & 1) == 0)
  {
    if (sub_1000E0464())
    {
      *&v13 = "sparse_bundles::open_bands_t::insert(uint64_t)";
      *(&v13 + 1) = 36;
      v14 = 2;
      sub_1000438EC(v15, &v13);
      sub_1000026BC(v16, "Band ", 5);
      *(&v16[1] + *(v16[0] - 24)) = *(&v16[1] + *(v16[0] - 24)) & 0xFFFFFFB5 | 8;
      std::ostream::operator<<();
      *(&v16[1] + *(v16[0] - 24)) = *(&v16[1] + *(v16[0] - 24)) & 0xFFFFFFB5 | 2;
      sub_1000026BC(v16, " was opened in the background, waiting for it to become available", 65);
      std::ostream::~ostream();
      sub_1000448CC(v15);
      std::ios::~ios();
    }

    v7 = *(a1 + 8);
    v6 = a1 + 8;
    v5 = v7;
    if (v7)
    {
      do
      {
        v8 = v6;
        do
        {
          v9 = *(v5 + 32);
          v10 = v9 >= v18;
          v11 = v9 < v18;
          if (v10)
          {
            v8 = v5;
          }

          v5 = *(v5 + 8 * v11);
        }

        while (v5);
        if (v8 == v6)
        {
          break;
        }

        if (v18 < *(v8 + 32))
        {
          break;
        }

        if (*(v8 + 40))
        {
          break;
        }

        std::condition_variable::wait((v6 + 80), &__lk);
        v5 = *v6;
      }

      while (*v6);
    }

    if (sub_1000E0464())
    {
      *&v13 = "sparse_bundles::open_bands_t::insert(uint64_t)";
      *(&v13 + 1) = 36;
      v14 = 2;
      sub_100043A58(v15, &v13);
      sub_1000026BC(v16, "Band ", 5);
      *(&v16[1] + *(v16[0] - 24)) = *(&v16[1] + *(v16[0] - 24)) & 0xFFFFFFB5 | 8;
      std::ostream::operator<<();
      *(&v16[1] + *(v16[0] - 24)) = *(&v16[1] + *(v16[0] - 24)) & 0xFFFFFFB5 | 2;
      sub_1000026BC(v16, " is now available", 17);
      std::ostream::~ostream();
      sub_100045064(v15);
      std::ios::~ios();
    }
  }

  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }

  return v4 & 1;
}

void sub_1000438A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (*(v13 - 64) == 1)
  {
    std::mutex::unlock(*(v13 - 72));
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000438EC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100045F18(a1, a2);
  *a1 = off_100207A00;
  a1[45] = &off_100207B00;
  a1[46] = &off_100207B28;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100207A00;
  a1[45] = off_100207A88;
  a1[46] = off_100207AB0;
  return a1;
}

void sub_1000439F0(_Unwind_Exception *a1)
{
  sub_1000448CC(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100043A14(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000448CC(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100043A58(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100045FE0(a1, a2);
  *a1 = off_100207C20;
  a1[45] = &off_100207D20;
  a1[46] = &off_100207D48;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100207C20;
  a1[45] = off_100207CA8;
  a1[46] = off_100207CD0;
  return a1;
}

void sub_100043B5C(_Unwind_Exception *a1)
{
  sub_100045064(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100043B80(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100045064(a1);
  std::ios::~ios();
  return a1;
}

void sub_100043BC4(uint64_t a1, unint64_t a2, int a3)
{
  std::mutex::lock((a1 + 24));
  v6 = *(a1 + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = a1 + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == a1 + 8 || *(v7 + 32) > a2)
  {
LABEL_9:
    v7 = a1 + 8;
  }

  *(v7 + 40) = a3;
  if (a3)
  {
    std::condition_variable::notify_all((a1 + 88));
  }

  std::mutex::unlock((a1 + 24));
}

void sub_100043C60(uint64_t a1, unint64_t a2)
{
  v7 = a2;
  std::mutex::lock((a1 + 24));
  sub_1000460A8(a1, &v7);
  if (sub_1000E0464())
  {
    *&v3 = "sparse_bundles::open_bands_t::remove(uint64_t)";
    *(&v3 + 1) = 36;
    v4 = 2;
    sub_100043DC0(v5, &v3);
    sub_1000026BC(v6, "Band ", 5);
    *(&v6[1] + *(v6[0] - 24)) = *(&v6[1] + *(v6[0] - 24)) & 0xFFFFFFB5 | 8;
    std::ostream::operator<<();
    *(&v6[1] + *(v6[0] - 24)) = *(&v6[1] + *(v6[0] - 24)) & 0xFFFFFFB5 | 2;
    sub_1000026BC(v6, " is closed, notifying waiters", 29);
    std::ostream::~ostream();
    sub_1000457FC(v5);
    std::ios::~ios();
  }

  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

void *sub_100043DC0(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10004612C(a1, a2);
  *a1 = off_100207E40;
  a1[45] = &off_100207F40;
  a1[46] = &off_100207F68;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100207E40;
  a1[45] = off_100207EC8;
  a1[46] = off_100207EF0;
  return a1;
}

void sub_100043EC4(_Unwind_Exception *a1)
{
  sub_1000457FC(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100043EE8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000457FC(a1);
  std::ios::~ios();
  return a1;
}

void sub_100043F2C(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  a1[2] = 0;
  v2 = 0;
  sub_1000461F4();
}

void sub_100044048(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  sub_100046A5C(v14 + 49);
  sub_10000E944(v15 + 144);
  v19 = v14[40];
  v14[40] = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  sub_100045CFC(v15);
  std::condition_variable::~condition_variable(v16);
  std::mutex::~mutex((v15 - 120));
  v20 = v14[4];
  if (v20)
  {
    sub_10000367C(v20);
  }

  v21 = v14[2];
  v14[2] = 0;
  if (v21)
  {
    (*(*v21 + 16))(v21);
  }

  v22 = *v17;
  *v17 = 0;
  if (v22)
  {
    (*(*v22 + 16))(v22);
  }

  _Unwind_Resume(a1);
}

void sub_100044150(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x4802000000;
  v12 = sub_10004433C;
  v13 = sub_100044360;
  __p = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  sub_100046AE0(a1 + 328, 0, v18);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_100044374;
  v8[3] = &unk_1002079C8;
  v8[4] = a2;
  v8[5] = &v9;
  sub_1000468B0(v18, v8);
  sub_100046A5C(v18);
  if (*(v10 + 16))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v4 = v10;
    v5 = *(v10 + 16);
    *exception = &off_100233158;
    v6 = std::generic_category();
    *(exception + 1) = v5;
    *(exception + 2) = v6;
    v7 = v4[7];
    *(exception + 24) = *(v4 + 5);
    *(exception + 5) = v7;
    v4[6] = 0;
    v4[7] = 0;
    v4[5] = 0;
    exception[48] = 1;
  }

  _Block_object_dispose(&v9, 8);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p);
  }
}

void sub_100044300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a15, 8);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10004433C(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  *(a1 + 64) = *(a2 + 64);
  return result;
}

void sub_100044360(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

uint64_t sub_100044490@<X0>(_BYTE *a1@<X8>)
{
  sub_100002148(&v3);
  *(&v3 + *(v3 - 3) + 8) = *(&v3 + *(v3 - 3) + 8) & 0xFFFFFFB5 | 8;
  std::ostream::operator<<();
  sub_100003368(&v3, a1);
  if (v6 < 0)
  {
    operator delete(v5[7].__locale_);
  }

  std::locale::~locale(v5);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_100044610(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100044634(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000448CC(v1);

  return std::ios::~ios();
}

uint64_t sub_100044680(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000448CC(v1);

  return std::ios::~ios();
}

void sub_1000446E0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000448CC(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100044748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100044784(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_1000447F0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000448CC(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100044854(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000448CC(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000448CC(uint64_t a1)
{
  *a1 = off_100207B98;
  sub_100044A38(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100044A38(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100003368(v2, __p);
        sub_100044BE8((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100044B84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100044BB0(uint64_t a1)
{
  sub_1000448CC(a1);

  operator delete();
}

int *sub_100044BE8(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 72;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 72;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100044DCC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100045064(v1);

  return std::ios::~ios();
}

uint64_t sub_100044E18(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100045064(v1);

  return std::ios::~ios();
}

void sub_100044E78(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100045064(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100044EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100044F1C(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100044F88(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100045064(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100044FEC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100045064(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100045064(uint64_t a1)
{
  *a1 = off_100207DB8;
  sub_1000451D0(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_1000451D0(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100003368(v2, __p);
        sub_100045380((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10004531C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100045348(uint64_t a1)
{
  sub_100045064(a1);

  operator delete();
}

int *sub_100045380(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 79;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 79;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100045564(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000457FC(v1);

  return std::ios::~ios();
}

uint64_t sub_1000455B0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000457FC(v1);

  return std::ios::~ios();
}

void sub_100045610(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000457FC(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100045678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000456B4(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100045720(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000457FC(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100045784(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000457FC(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000457FC(uint64_t a1)
{
  *a1 = off_100207FD8;
  sub_100045968(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100045968(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100003368(v2, __p);
        sub_100045B18((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100045AB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100045AE0(uint64_t a1)
{
  sub_1000457FC(a1);

  operator delete();
}

int *sub_100045B18(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 98;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 98;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100045CFC(uint64_t a1)
{
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  sub_1000085B4(a1, *(a1 + 8));
  return a1;
}

std::string *sub_100045D3C(std::string *__dst, const std::string::value_type *__src, size_t __len)
{
  size = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = __dst->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __len)
    {
      size = __dst->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = __dst->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = __dst;
    if (__len > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(__dst, v8, __len - v8, size, 0, size, __len, __src);
      return __dst;
    }
  }

  if (__len)
  {
    memmove(v7, __src, __len);
    LOBYTE(size) = *(&__dst->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    __dst->__r_.__value_.__l.__size_ = __len;
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = __len & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__len] = 0;
  return __dst;
}

std::string *sub_100045DF8(std::string *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_100045D3C(a1, __s, v4);
}

void *sub_100045E40(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_100045F18(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100207B98;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_100045FC8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100045FE0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100207DB8;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_100046090(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000460A8(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  sub_10000C140(a1, v4);
  operator delete(v4);
  return 1;
}

uint64_t sub_10004612C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100207FD8;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_1000461DC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void *sub_100046278(void *a1, int *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100208058;
  v3 = *a2;
  v4 = sub_10019E294();
  v6 = v5;
  sub_10019A650(a1 + 3);
  a1[3] = off_1002080A8;
  a1[6] = v3;
  a1[7] = v4;
  a1[8] = v6;
  return a1;
}

void sub_100046334(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100208058;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100046388(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_10004639C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1000463CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_1000464C8(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  if (!v3)
  {
    a1[1] = 0;
LABEL_5:
    sub_10004650C();
  }

  v4 = std::__shared_weak_count::lock(v3);
  a1[1] = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  return a1;
}

void sub_10004650C()
{
  exception = __cxa_allocate_exception(8uLL);
}

char *sub_100046558(char *__dst, __int128 *a2, unint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000093B4(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  *(__dst + 24) = 0u;
  *(__dst + 40) = 0u;
  __dst[56] = a3 != 0;
  if (a3)
  {
    sub_1000466D8(__dst + 3, a3);
    do
    {
      v6 = __dst;
      if (__dst[23] < 0)
      {
        v6 = *__dst;
      }

      sub_100157DF8(&v13, v6);
      v7 = *(__dst + 4);
      if (v7 >= *(__dst + 5))
      {
        v8 = sub_100046E38((__dst + 24), &v13);
      }

      else
      {
        v8 = sub_100157DFC(v7, &v13) + 1;
      }

      *(__dst + 4) = v8;
      sub_100157D44(&v13);
      --a3;
    }

    while (a3);
  }

  else
  {
    v9 = __dst;
    if (__dst[23] < 0)
    {
      v9 = *__dst;
    }

    sub_100157DF8(&v13, v9);
    v10 = *(__dst + 4);
    if (v10 >= *(__dst + 5))
    {
      v11 = sub_100046E38((__dst + 24), &v13);
    }

    else
    {
      v11 = sub_100157DFC(v10, &v13) + 1;
    }

    *(__dst + 4) = v11;
    sub_100157D44(&v13);
  }

  return __dst;
}

void sub_100046694(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100157D44(va);
  sub_10000E990(va);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

void *sub_1000466D8(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_100046D30(result, a2);
    }

    sub_100036CAC();
  }

  return result;
}

void sub_100046780(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100046DE8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100046798(uint64_t result, int a2)
{
  v2 = *(result + 24);
  for (i = *(result + 32); v2 != i; ++v2)
  {
    result = sub_100157EDC(v2, a2);
  }

  return result;
}

void sub_1000467E4(uint64_t a1)
{
  v5.__m_ = (a1 + 48);
  v5.__owns_ = 1;
  std::mutex::lock((a1 + 48));
  v2 = *(a1 + 112);
  if (v2)
  {
    *(a1 + 112) = v2 - 1;
LABEL_5:
    std::mutex::unlock(v5.__m_);
    return;
  }

  do
  {
    std::condition_variable::wait(a1, &v5);
    v3 = *(a1 + 112);
  }

  while (!v3);
  owns = v5.__owns_;
  *(a1 + 112) = v3 - 1;
  if (owns)
  {
    goto LABEL_5;
  }
}

void sub_100046860(uint64_t a1)
{
  std::mutex::lock((a1 + 48));
  ++*(a1 + 112);
  std::condition_variable::notify_one(a1);

  std::mutex::unlock((a1 + 48));
}

void sub_1000468B0(dispatch_group_t *a1, void *a2)
{
  if (*(a1 + 136) == 1)
  {
    sub_1000467E4((a1 + 2));
    v4 = *a1;
    add = atomic_fetch_add(&(*a1)[6], 1uLL);
    v7 = v4 + 3;
    isa = v4[3].isa;
    v8 = add % ((v7[1].isa - isa) >> 3);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 0x40000000;
    v11[2] = sub_1000469BC;
    v11[3] = &unk_100208188;
    v11[4] = a2;
    v11[5] = a1;
    sub_100157E14(isa + v8, a1 + 1, v11);
  }

  else
  {
    v9 = *a1;
    v10 = (v9[3].isa + 8 * (atomic_fetch_add(&(*a1)[6], 1uLL) % ((v9[4].isa - v9[3].isa) >> 3)));

    sub_100157E14(v10, a1 + 1, a2);
  }
}

void sub_1000469BC(uint64_t a1)
{
  v1 = *(a1 + 40);
  (*(*(a1 + 32) + 16))();

  sub_100046860(v1 + 16);
}

uint64_t sub_100046A04(uint64_t a1)
{
  sub_100157D74((a1 + 8), 0xFFFFFFFFFFFFFFFFLL);
  if (*(a1 + 136) == 1)
  {
    std::mutex::~mutex((a1 + 64));
    std::condition_variable::~condition_variable((a1 + 16));
  }

  sub_100157D44((a1 + 8));
  return a1;
}

uint64_t sub_100046A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  sub_100157D18((a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 136) = 0;
  if (a3)
  {
    sub_100046F44(a1 + 16);
    *(a1 + 16) = 1018212795;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0;
    *(a1 + 64) = 850045863;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 120) = 0;
    *(a1 + 128) = a3;
    *(a1 + 136) = 1;
  }

  return a1;
}

uint64_t sub_100046B04(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = a2[3] + 8 * (atomic_fetch_add(a2 + 6, 1uLL) % ((a2[4] - a2[3]) >> 3));
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_100046BF4;
  v7[3] = &unk_1002081B0;
  v7[4] = a3;
  v7[5] = a1;
  v7[6] = a4;
  sub_100157F80((a1 + 16), v7);
  if (*(a1 + 16) && *(*a1 + 56) == 1)
  {
    sub_100157E24(*(a1 + 8), (a1 + 16), a4);
  }

  return a1;
}

void sub_100046BF4(void *a1)
{
  v2 = a1[5];
  (*(a1[4] + 16))();
  v3 = *(v2 + 8);
  v4 = a1[6];

  sub_100157E24(v3, (v2 + 16), v4);
}

uint64_t sub_100046C40(uint64_t a1)
{
  sub_100046C74(a1);
  sub_100158000(a1 + 16);
  return a1;
}

void sub_100046C74(uint64_t a1)
{
  if (*(a1 + 16))
  {
    if (*(*a1 + 56) == 1)
    {
      v2 = *(a1 + 8);
      v3[0] = _NSConcreteStackBlock;
      v3[1] = 0x40000000;
      v3[2] = sub_100046D20;
      v3[3] = &unk_1002081D0;
      v3[4] = a1;
      sub_100157E0C(v2, v3);
      sub_100157EA8(*(a1 + 8), &stru_100208210);
    }
  }
}

void sub_100046D30(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100038E68();
}

void sub_100046D78(uint64_t a1, NSObject **a2, NSObject **a3, void *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_100157DFC(a4, v7++);
      a4 = v8 + 1;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_100157D44(v6++);
    }
  }
}

uint64_t sub_100046DE8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    sub_100157D44((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100046E38(uint64_t a1, void *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    sub_100036CAC();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    sub_100046D30(a1, v7);
  }

  v14 = 0;
  v15 = 8 * v2;
  sub_100157DFC((8 * v2), a2);
  v16 = (8 * v2 + 8);
  v8 = *(a1 + 8);
  v9 = (8 * v2 + *a1 - v8);
  sub_100046D78(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_100046DE8(&v14);
  return v13;
}

void sub_100046F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100046DE8(va);
  _Unwind_Resume(a1);
}

void sub_100046F44(uint64_t a1)
{
  if (*(a1 + 120) == 1)
  {
    std::mutex::~mutex((a1 + 48));
    std::condition_variable::~condition_variable(a1);
    *(a1 + 120) = 0;
  }
}

void sub_100047510(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_1000482E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    operator delete();
  }

  _Unwind_Resume(a1);
}

void sub_100049634(_Unwind_Exception *a1, int a2)
{
  v7 = v6;

  if (a2 == 1)
  {
    v10 = [objc_begin_catch(a1) reason];
    [DIError nilWithEnumValue:150 verboseInfo:v10 error:v2];
    objc_claimAutoreleasedReturnValue();

    objc_end_catch();
    JUMPOUT(0x1000495ECLL);
  }

  _Unwind_Resume(a1);
}

void sub_100049B60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, char a12, int a13, __int16 a14, char a15, char a16, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, int a27, io_object_t object, uint64_t a29, uint8_t buf, int a31, __int16 a32, uint64_t a33, __int16 a34, uint64_t a35, __int16 a36, uint64_t a37)
{
  if (a2)
  {
    sub_100002A4C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100049E20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100155D9C(&v4, *a1);
  *a2 = v4;
  v4 = 0;
  *(a2 + 16) = 1;
  return IOObjectRelease(0);
}

uint64_t sub_100049E98@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  if ((*(result + 16) & 1) == 0)
  {
    v3 = result;
    exception = __cxa_allocate_exception(0x40uLL);
    v6 = *v3;
    *exception = &off_100233158;
    *(exception + 8) = v6;
    exception[24] = 0;
    exception[48] = 0;
    *(exception + 7) = a2;
  }

  *a3 = *result;
  *result = 0;
  return result;
}

double sub_100049F1C@<D0>(io_object_t *a1@<X0>, io_object_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  while (sub_100156020(a1, a2))
  {
    v8 = nullsub_190(a1);
    sub_10004A388(&object, v8);
    v9 = *(a3 + 24);
    if (!v9)
    {
      sub_10002870C();
    }

    v10 = (*(*v9 + 48))(v9, &object);
    IOObjectRelease(object);
    if (v10)
    {
      break;
    }

    sub_100156040(a1);
  }

  result = *a1;
  *a4 = *a1;
  *a1 = 0;
  return result;
}

io_object_t *sub_10004A008(io_object_t *a1)
{
  IOObjectRelease(a1[1]);
  IOObjectRelease(*a1);
  return a1;
}

void sub_10004A0DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10004A484(va);
  _Unwind_Resume(a1);
}

void sub_10004A188(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10004A484(va);
  _Unwind_Resume(a1);
}

io_object_t *sub_10004A388(io_object_t *a1, io_object_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    IOObjectRetain(v3);
  }

  return a1;
}

uint64_t sub_10004A3C0(uint64_t result)
{
  if (*(result + 16) == 1)
  {
    return IOObjectRelease(*result);
  }

  return result;
}

uint64_t sub_10004A3EC(uint64_t a1, uint64_t a2)
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

uint64_t sub_10004A484(uint64_t a1)
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

BOOL sub_10004A58C(uint64_t a1, io_object_t *a2)
{
  object = *a2;
  *a2 = 0;
  v9 = @"Device Characteristics";
  v8[0] = &object;
  v8[1] = &v9;
  sub_10004A6C4(v8, theDict);
  v3 = v7 == 1 && theDict[0] && (Value = CFDictionaryGetValue(theDict[0], @"Medium Type")) != 0 && CFEqual(Value, @"Solid State") != 0;
  if (v7 == 1)
  {
    sub_10000C8E0(theDict);
  }

  IOObjectRelease(object);
  return v3;
}

void sub_10004A640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, io_object_t object, const void *a12, uint64_t a13, char a14)
{
  if (a14 == 1)
  {
    sub_10000C8E0(&a12);
  }

  IOObjectRelease(object);
  _Unwind_Resume(a1);
}

uint64_t sub_10004A678(uint64_t a1, uint64_t a2)
{
  if (sub_100009720(a2, &off_1002082B0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const void **sub_10004A6C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10004A734(a1, &v4);
  *a2 = v4;
  v4 = 0;
  *(a2 + 16) = 1;
  return sub_10000C8E0(&v4);
}

CFTypeID sub_10004A734@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  CFProperty = IORegistryEntryCreateCFProperty(**a1, **(a1 + 8), kCFAllocatorDefault, 0);
  result = CFDictionaryGetTypeID();
  if (CFProperty)
  {
    v5 = result;
    result = CFGetTypeID(CFProperty);
    if (result != v5)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      CFGetTypeID(CFProperty);
      v7 = sub_100008320(exception);
    }
  }

  *a2 = CFProperty;
  return result;
}

uint64_t sub_10004A87C(uint64_t a1, io_object_t *a2)
{
  object = *a2;
  *a2 = 0;
  v9 = @"High Throughput Options";
  valuePtr[0] = &object;
  valuePtr[1] = &v9;
  sub_10004A9B4(valuePtr, number);
  if (v7 != 1)
  {
    v3 = 0;
    goto LABEL_14;
  }

  if (!number[0])
  {
    v3 = 0;
LABEL_13:
    sub_10000441C(number);
    goto LABEL_14;
  }

  LODWORD(valuePtr[0]) = 0;
  if (CFNumberGetValue(number[0], kCFNumberSInt64Type, valuePtr))
  {
    v2 = LODWORD(valuePtr[0]) == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_14:
  IOObjectRelease(object);
  return v3;
}

void sub_10004A930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, io_object_t object, const void *a12, uint64_t a13, char a14)
{
  if (a14 == 1)
  {
    sub_10000441C(&a12);
  }

  IOObjectRelease(object);
  _Unwind_Resume(a1);
}

uint64_t sub_10004A968(uint64_t a1, uint64_t a2)
{
  if (sub_100009720(a2, &off_100208330))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const void **sub_10004A9B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10004AA24(a1, &v4);
  *a2 = v4;
  v4 = 0;
  *(a2 + 16) = 1;
  return sub_10000441C(&v4);
}

CFTypeID sub_10004AA24@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  CFProperty = IORegistryEntryCreateCFProperty(**a1, **(a1 + 8), kCFAllocatorDefault, 0);
  result = CFNumberGetTypeID();
  if (CFProperty)
  {
    v5 = result;
    result = CFGetTypeID(CFProperty);
    if (result != v5)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      CFGetTypeID(CFProperty);
      v7 = sub_100008320(exception);
    }
  }

  *a2 = CFProperty;
  return result;
}

void sub_10004B1F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, std::__shared_weak_count *a15, int a16, __int16 a17, char a18, char a19, uint64_t a20)
{
  if (a15)
  {
    sub_10000367C(a15);
  }

  sub_10004B310(&a20);

  _Unwind_Resume(a1);
}

char **sub_10004B28C@<X0>(char ***a1@<X0>, char ***a2@<X8>)
{
  v2 = a1;
  result = *a1;
  {
    v6 = v2[1];
    *a2 = result;
    a2[1] = v6;
  }

  else
  {
    v2 = a2;
  }

  *v2 = 0;
  v2[1] = 0;
  return result;
}

void *sub_10004B310(void *a1)
{
  *a1 = off_1002295E0;
  a1[3] = off_1002296D0;
  a1[4] = off_100229708;
  sub_10004DE80(a1 + 8);
  v2 = a1[6];
  if (v2)
  {
    sub_10000367C(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_10004C2AC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10004B310(va);
  if (a2 == 1)
  {
    [DIError nilWithDIException:__cxa_begin_catch(a1) prefix:@"failed to open existing output file" error:v6];
    objc_claimAutoreleasedReturnValue();
    __cxa_end_catch();
    JUMPOUT(0x10004C150);
  }

  _Unwind_Resume(a1);
}

void sub_10004D058(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {

    if (a2 == 2)
    {
      v10 = [objc_begin_catch(exception_object) reason];
      [DIError nilWithEnumValue:150 verboseInfo:v10 error:v3];
      objc_claimAutoreleasedReturnValue();

      objc_end_catch();
      JUMPOUT(0x10004CB98);
    }

    objc_begin_catch(exception_object);
    v11 = *(v2 + 152);
    *(v2 + 152) = 0;

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_10004D344(uint64_t a1)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_10004D54C;
  v25 = sub_10004D55C;
  v26 = 0;
  v2 = *(a1 + 32);
  obj = 0;
  v3 = [v2 prepareConvertWithError:&obj];
  objc_storeStrong(&v26, obj);
  if (v3)
  {
    v4 = [v3 remoteProxy];
    v5 = *(a1 + 32);
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_10004D564;
    v14 = &unk_100208348;
    v6 = v3;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v15 = v6;
    v16 = v7;
    v19 = &v21;
    v17 = v8;
    v18 = *(a1 + 48);
    v9 = [v4 convertWithParams:v5 reply:&v11];

    [*(a1 + 40) addChild:v9 withPendingUnitCount:{99, v11, v12, v13, v14}];
  }

  else
  {
    v10 = v22[5];
    (*(*(a1 + 48) + 16))();
  }

  _Block_object_dispose(&v21, 8);
}

void sub_10004D4D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_10004D54C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10004D564(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(*(a1 + 64) + 8);
  obj = *(v6 + 40);
  v7 = [v5 onConvertCompletionWithInError:v3 outError:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (v7)
  {
    [*(a1 + 48) setCompletedUnitCount:100];
  }

  v8 = *(*(*(a1 + 64) + 8) + 40);
  (*(*(a1 + 56) + 16))();
}

void sub_10004D9A0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10019A650(a1);
  *v5 = off_1002295E0;
  v5[3] = off_1002296D0;
  v5[4] = off_100229708;
  sub_100159760(v6, a2, a3);
  sub_10004DADC();
}

void sub_10004DAB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001590D0(va);
  v4 = *(v2 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

void sub_10004DB50(void *a1, uint64_t a2, char *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1002083A0;
  sub_10004DC98((a1 + 3), a2, *a3);
}

void sub_10004DBD0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1002083A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10004DC24(uint64_t a1)
{
  sub_10004DE34(a1 + 128);
  v2 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v2)
  {
    (*(*v2 + 32))(v2);
  }

  return sub_1001590D0(a1 + 24);
}

void sub_10004DC98(uint64_t a1, uint64_t a2, char a3)
{
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = -1;
  *a1 = off_1002083F0;
  v4 = *(a2 + 12);
  v5 = *(a2 + 28);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 28) = v5;
  *(a1 + 12) = v4;
  *(a1 + 48) = a3;
  *(a1 + 49) = sub_10004DD50();
  v6 = *(a1 + 16);
  *(a1 + 56) = 0;
  *(a1 + 64) = v6;
  sub_10015AF84(a1);
}

BOOL sub_10004DD50()
{
  sub_100159884();
  if (v6 < 0)
  {
    v1 = v5 == 5 && *v4 == 1717726579 && v4[4] == 115;
    operator delete(v4);
  }

  else
  {
    return v6 == 5 && v4 == 1717726579 && BYTE4(v4) == 115;
  }

  return v1;
}

void sub_10004DDFC(uint64_t a1)
{
  sub_1001590D0(a1);

  operator delete();
}

uint64_t sub_10004DE34(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    v2 = result;
    sub_10002986C(result, 0);

    return sub_1000298F0(v2 + 8);
  }

  return result;
}

uint64_t sub_10004DE80(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 >> 5];
    v7 = *v6 + 128 * (v5 & 0x1F);
    v8 = *(v2 + (((a1[5] + v5) >> 2) & 0x3FFFFFFFFFFFFFF8)) + 128 * ((a1[5] + v5) & 0x1F);
    if (v7 != v8)
    {
      do
      {
        v9 = *(v7 + 15);
        if (v9)
        {
          *(v9 + 16) = 0;
        }

        v10 = *(v7 + 1);
        if (v10)
        {
          sub_10000367C(v10);
        }

        v7 += 128;
        if (v7 - *v6 == 4096)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v12 = v3 - v2;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v12 = v3 - v2;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v13 = 16;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_20;
    }

    v13 = 32;
  }

  a1[4] = v13;
LABEL_20:
  while (v2 != v3)
  {
    v14 = *v2++;
    operator delete(v14);
  }

  return sub_100029E48(a1);
}

void sub_10004ECE0(id a1)
{
  v3 = [NSURL fileURLWithPath:@"/System/Library/PrivateFrameworks/DiskImages2.framework"];
  v1 = [NSBundle bundleWithURL:?];
  v2 = qword_100240B28;
  qword_100240B28 = v1;
}

void sub_10004F494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004F4B8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained signalCommandCompletedWithXpcError:v3];
}

void sub_10004F918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004F940(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained signalCommandCompletedWithXpcError:v3];
}

diskimage_uio::stack_image_node **sub_10004FF10(diskimage_uio::stack_image_node **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    diskimage_uio::stack_image_node::~stack_image_node(v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_10004FF58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**(a1 + 8) + 144))(*(a1 + 8));
  *a2 = result;
  *(a2 + 16) = 1;
  return result;
}

uint64_t make_error_code(uint64_t result)
{
  if ((atomic_load_explicit(&qword_100240B38, memory_order_acquire) & 1) == 0)
  {
    v1 = result;
    sub_1001A34E0();
    LODWORD(result) = v1;
  }

  return result;
}

void diskimage_uio::diskimage_open_params::diskimage_open_params()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

void sub_10005018C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  __cxa_free_exception(v12);
  sub_1000503A4(&a12);
  _Unwind_Resume(a1);
}

const std::error_category *sub_1000501B0@<X0>(std::__fs::filesystem::path *a1@<X1>, uint64_t a2@<X0>, int a3@<W2>, uint64_t a4@<X8>)
{
  std::__fs::filesystem::__status(a1, 0);
  if (LOBYTE(v16[0]) == 255 || LOBYTE(v16[0]) == 0)
  {
    *&v14 = "diskimage_err> diskimage_uio::details::diskimage_open_params_impl::set_path(const std::filesystem::path &, const diskimage_open_params::mode)";
    *(&v14 + 1) = 75;
    v15 = 16;
    sub_10005D388(v16, &v14);
    sub_1000026BC(v17, "Diskimageuio: path ", 19);
    if (SHIBYTE(a1->__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_1000093B4(__p, a1->__pn_.__r_.__value_.__l.__data_, a1->__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      *__p = *&a1->__pn_.__r_.__value_.__l.__data_;
      v13 = a1->__pn_.__r_.__value_.__r.__words[2];
    }

    if (v13 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    if (v13 >= 0)
    {
      v11 = HIBYTE(v13);
    }

    else
    {
      v11 = __p[1];
    }

    sub_1000026BC(v17, v10, v11);
    sub_1000026BC(v17, " doesn't exist", 14);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }

    std::ostream::~ostream();
    sub_10005DD24(v16);
    std::ios::~ios();
    result = std::generic_category();
    *a4 = 2;
    *(a4 + 8) = result;
    *(a4 + 16) = 0;
  }

  else
  {
    *(a2 + 572) = a3;
    std::string::operator=(a2, &a1->__pn_);
    return sub_10005D4F4(a2, 0, 1);
  }

  return result;
}

uint64_t sub_10005034C(uint64_t result)
{
  if (*(result + 16))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &off_100208560;
  }

  return result;
}

uint64_t *sub_1000503A4(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 624);
    if (v2)
    {
      sub_10000367C(v2);
    }

    v3 = *(v1 + 608);
    if (v3)
    {
      sub_10000367C(v3);
    }

    v4 = *(v1 + 592);
    if (v4)
    {
      sub_10000367C(v4);
    }

    sub_100052B84(v1 + 56);
    v5 = *(v1 + 48);
    if (v5)
    {
      sub_10000367C(v5);
    }

    v6 = *(v1 + 32);
    if (v6)
    {
      sub_10000367C(v6);
    }

    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  return result;
}

void sub_100050540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  __cxa_free_exception(v12);
  sub_1000503A4(&a12);
  _Unwind_Resume(a1);
}

void sub_100050564(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, _BYTE *a5@<X8>)
{
  memset(v11, 0, sizeof(v11));
  if (a4 == 1)
  {
    v7 = &_mh_execute_header + 2;
  }

  else
  {
    v7 = &_mh_execute_header;
  }

  sub_10007392C(&v8, a2, a3, v7, v11, 0);
  sub_100053108(a1 + 56, a1 + 56, &v8);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (*(&v8 + 1))
  {
    sub_10000367C(*(&v8 + 1));
  }

  *(a1 + 568) = 12;
  *a5 = 0;
  a5[16] = 1;
}

void sub_100050798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  __cxa_free_exception(v12);
  sub_1000503A4(&a12);
  _Unwind_Resume(a1);
}

void sub_1000507BC(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 572) = a3;
  *(a1 + 576) = a3;
  sub_100065BBC();
}

void diskimage_uio::diskimage_open_params::create()
{
  diskimage_uio::diskimage_open_params::diskimage_open_params();
}

{
  diskimage_uio::diskimage_open_params::diskimage_open_params();
}

{
  diskimage_uio::diskimage_open_params::diskimage_open_params();
}

uint64_t *diskimage_uio::diskimage_open_params::operator=(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = *(v2 + 624);
    if (v3)
    {
      sub_10000367C(v3);
    }

    v4 = *(v2 + 608);
    if (v4)
    {
      sub_10000367C(v4);
    }

    v5 = *(v2 + 592);
    if (v5)
    {
      sub_10000367C(v5);
    }

    sub_100052B84(v2 + 56);
    v6 = *(v2 + 48);
    if (v6)
    {
      sub_10000367C(v6);
    }

    v7 = *(v2 + 32);
    if (v7)
    {
      sub_10000367C(v7);
    }

    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  *result = *a2;
  *a2 = 0;
  return result;
}

void diskimage_uio::diskimage_open_params::~diskimage_open_params(diskimage_uio::diskimage_open_params *this)
{
  v1 = *this;
  if (*this)
  {
    v2 = *(v1 + 624);
    if (v2)
    {
      sub_10000367C(v2);
    }

    v3 = *(v1 + 608);
    if (v3)
    {
      sub_10000367C(v3);
    }

    v4 = *(v1 + 592);
    if (v4)
    {
      sub_10000367C(v4);
    }

    sub_100052B84(v1 + 56);
    v5 = *(v1 + 48);
    if (v5)
    {
      sub_10000367C(v5);
    }

    v6 = *(v1 + 32);
    if (v6)
    {
      sub_10000367C(v6);
    }

    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  *this = 0;
}

_OWORD *sub_100050B6C@<X0>(const std::error_category *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100051FD0(a1, v7);
  if (v7[16])
  {
    v5 = a1[5].__vftable;
    if (v5)
    {
      LOBYTE(v5) = !a1[73].__vftable || !a1[75].__vftable || a1[77].__vftable == 0;
    }

    *a2 = v5;
    v6 = 1;
  }

  else
  {
    result = sub_10005034C(v7);
    v6 = 0;
    *a2 = *result;
  }

  a2[16] = v6;
  return result;
}

__n128 sub_100050C00@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  sub_1000660D8(a1, v16);
  if (v16[16])
  {
    v4 = *(a1 + 560);
    if (v4 == -1)
    {
      sub_100036CC4();
    }

    v14[0] = &v12;
    (off_10020C280[v4])(v14, a1 + 56);
  }

  else
  {
    *&v12 = "diskimage_err> diskimage_uio::details::diskimage_open_params_impl::get_nr_blocks() const";
    *(&v12 + 1) = 80;
    v13 = 16;
    sub_100068084(v14, &v12);
    sub_1000026BC(v15, "Diskimageuio: query format failed ", 34);
    v6 = sub_10005034C(v16);
    v7 = (*(**(v6 + 1) + 16))(*(v6 + 1));
    v8 = strlen(v7);
    v9 = sub_1000026BC(v15, v7, v8);
    v17 = 58;
    sub_1000026BC(v9, &v17, 1);
    v10 = *v6;
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_1000682B8(v14);
    std::ios::~ios();
    v11 = sub_10005034C(v16);
    result = *v11;
    *a2 = *v11;
    a2[1].n128_u8[0] = 0;
  }

  return result;
}

void sub_100050D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000681AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100050D74(uint64_t result)
{
  if (*(result + 56))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &off_100208560;
  }

  return result;
}

void diskimage_uio::diskimage::~diskimage(diskimage_uio::diskimage *this)
{
  v2 = *this;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = 0;
}