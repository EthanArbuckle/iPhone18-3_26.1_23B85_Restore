void sub_1000A2368(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  if (a2 == 1)
  {
    v13 = objc_begin_catch(a1);
    v14 = [v13 reason];
    [DIError failWithEnumValue:150 verboseInfo:v14 error:v10];

    objc_end_catch();
    JUMPOUT(0x1000A2330);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000A2404(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000A2BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_10000367C(a15);
  }

  if (a12 == 1)
  {
    if (a11)
    {
      sub_10000367C(a11);
    }
  }

  _Unwind_Resume(a1);
}

void *sub_1000A2CF4(void *a1, uint64_t *a2)
{
  sub_1000A47DC(&v6, a2);
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

void sub_1000A3054(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_1000A3270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9)
{
  if (a2 == 1)
  {
    v14 = [DIError nilWithDIException:__cxa_begin_catch(a1) prefix:@"Failed to set up image for resize after creation" error:v10];
    *v9 = 0;
    __cxa_end_catch();
    JUMPOUT(0x1000A3258);
  }

  _Unwind_Resume(a1);
}

void sub_1000A3474(void *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14)
{
  if (a13)
  {
    (*(*a13 + 16))(a13);
  }

  objc_begin_catch(exc_buf);
  v16 = *(v14 + 112);
  *(v14 + 112) = 0;

  objc_exception_rethrow();
}

diskimage_uio::diskimage **sub_1000A3524(diskimage_uio::diskimage **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    diskimage_uio::diskimage::~diskimage(v2);
    operator delete();
  }

  return a1;
}

void sub_1000A38D0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1001A3164(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000A39D4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1001A37A0(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000A39EC(void *a1, int a2)
{
  if (a2 == 1)
  {
    [DIError failWithDIException:__cxa_begin_catch(a1) prefix:@"Failed to set up image for resize" error:v2];
    __cxa_end_catch();
    JUMPOUT(0x1000A39B8);
  }

  JUMPOUT(0x1000A39E4);
}

void sub_1000A4748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    operator delete();
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1000A47DC(uint64_t *result, uint64_t *a2)
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

void sub_1000A4860(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000A4898(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    operator delete();
  }

  return result;
}

uint64_t sub_1000A48B8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_1000A4964(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100205A90;
  sub_100188628(a1 + 3);
  return a1;
}

void sub_1000A49C0(void *a1, uint64_t a2)
{
  v3 = a1[1];
  *&v9 = *a1;
  *(&v9 + 1) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  do
  {
    while (1)
    {
      (*(*v9 + 176))(v9, a2);
      v4 = v9;
      if (*(&v9 + 1))
      {
        atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      if (v3)
      {
        sub_10000367C(v3);
      }

      sub_10019AD28(&v9, &v8);
      v5 = v8;
      v8 = 0uLL;
      v6 = *(&v9 + 1);
      v9 = v5;
      if (v6)
      {
        break;
      }

      v3 = *(&v4 + 1);
      if (v5 == v4)
      {
        goto LABEL_13;
      }
    }

    sub_10000367C(v6);
    v7 = v9;
    if (*(&v8 + 1))
    {
      sub_10000367C(*(&v8 + 1));
    }

    v3 = *(&v4 + 1);
  }

  while (v7 != v4);
LABEL_13:
  if (*(&v4 + 1))
  {
    sub_10000367C(*(&v4 + 1));
  }

  if (*(&v9 + 1))
  {
    sub_10000367C(*(&v9 + 1));
  }
}

void sub_1000A4AC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (v12)
  {
    sub_10000367C(v12);
  }

  if (a12)
  {
    sub_10000367C(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1000A4AF8(uint64_t *a1, void **a2)
{
  a1[3] = off_100204010;
  a1[4] = off_100204040;
  a1[5] = off_100204070;
  a1[6] = off_1002040A0;
  *a1 = off_100214AE0;
  a1[1] = off_100214B28;
  a1[2] = off_100214B70;
  a1[3] = off_100214BB8;
  *(a1 + *(*a1 - 48)) = off_100214C00;
  *(a1 + *(*a1 - 56)) = off_100214C48;
  *(a1 + *(*a1 - 64)) = off_100214C90;
  *a1 = off_1002148B8;
  a1[1] = off_100214900;
  a1[2] = off_100214948;
  a1[3] = off_100214990;
  *(a1 + *(*a1 - 48)) = off_1002149D8;
  *(a1 + *(*a1 - 56)) = off_100214A20;
  *(a1 + *(*a1 - 64)) = off_100214A68;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  a1[16] = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  a1[19] = 0;
  *a1 = off_100214498;
  a1[1] = off_1002144E0;
  a1[2] = off_100214528;
  a1[3] = off_100214570;
  a1[4] = off_1002145B8;
  a1[5] = off_100214600;
  a1[6] = off_100214648;
  a1[7] = off_1002146A8;
  a1[15] = off_100214718;
  v4 = a2 + 2;
  v5 = (*(*a2[2] + 40))(a2[2]);
  v6 = *a1;
  *(a1 + *(*a1 - 112) + 8) = v5;
  *(a1 + *(v6 - 112) + 56) = 0;
  *(a1 + *(*a1 - 112) + 16) = ((*a2)[4])(a2);
  v7 = ((*a2)[3])(a2);
  v8 = *a1;
  v9 = a1 + *(*a1 - 112);
  if ((*(v9 + 32) & 1) == 0)
  {
    *(v9 + 32) = 1;
  }

  *(v9 + 24) = v7;
  sub_1000A49C0(v4, a1 + *(v8 - 104));
  return a1;
}

uint64_t *sub_1000A5098(uint64_t *a1, void **a2)
{
  a1[3] = off_100204010;
  a1[4] = off_100204040;
  a1[5] = off_100204070;
  a1[6] = off_1002040A0;
  *a1 = off_100214AE0;
  a1[1] = off_100214B28;
  a1[2] = off_100214B70;
  a1[3] = off_100214BB8;
  *(a1 + *(*a1 - 48)) = off_100214C00;
  *(a1 + *(*a1 - 56)) = off_100214C48;
  *(a1 + *(*a1 - 64)) = off_100214C90;
  *a1 = off_1002148B8;
  a1[1] = off_100214900;
  a1[2] = off_100214948;
  a1[3] = off_100214990;
  *(a1 + *(*a1 - 48)) = off_1002149D8;
  *(a1 + *(*a1 - 56)) = off_100214A20;
  *(a1 + *(*a1 - 64)) = off_100214A68;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  a1[16] = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  a1[19] = 0;
  *a1 = off_100214498;
  a1[1] = off_1002144E0;
  a1[2] = off_100214528;
  a1[3] = off_100214570;
  a1[4] = off_1002145B8;
  a1[5] = off_100214600;
  a1[6] = off_100214648;
  a1[7] = off_1002146A8;
  a1[15] = off_100214718;
  v4 = a2 + 2;
  v5 = (*(*a2[2] + 40))(a2[2]);
  v6 = *a1;
  *(a1 + *(*a1 - 112) + 8) = v5;
  v7 = a1 + *(v6 - 112);
  *(v7 + 40) = *(v7 + 8);
  *(v7 + 48) = 1;
  v8 = a1 + *(*a1 - 112);
  *(v8 + 24) = *(v8 + 8);
  *(v8 + 32) = 1;
  *(a1 + *(*a1 - 112) + 56) = 0;
  v9 = ((*a2)[4])(a2);
  v10 = *a1;
  *(a1 + *(*a1 - 112) + 16) = v9;
  sub_1000A49C0(v4, a1 + *(v10 - 104));
  return a1;
}

uint64_t sub_1000A5614(uint64_t a1)
{
  *(a1 + 120) = off_100214E38;
  *(a1 + 24) = off_100214E90;
  sub_100023024((a1 + 152));
  return a1;
}

void sub_1000A5680(uint64_t a1)
{
  *(a1 + 120) = off_100214E38;
  *(a1 + 24) = off_100214E90;
  sub_100023024((a1 + 152));

  operator delete();
}

const void **sub_1000A570C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (*(*a1 + 24))(a1);
  v10[0] = @"Image Format";
  v10[1] = v4;
  v10[2] = @"Format Description";
  v10[3] = @"RAW read-write image";
  sub_1000213FC(a1 + *(*a1 - 112), &v9);
  v10[4] = @"Size Info";
  v10[5] = v9;
  v9 = 0;
  sub_10000C8E0(&v9);
  sub_100021798(a1 + *(*a1 - 120), &v9);
  v10[6] = @"Encryption Info";
  v10[7] = v9;
  v9 = 0;
  sub_10000C8E0(&v9);
  v7[0] = v10;
  v7[1] = 4;
  sub_10014D3C0(v7, &v8);
  *a2 = v8;
  v8 = 0;
  sub_1000043E8(&v8);
  for (i = 7; i != -1; i -= 2)
  {
    result = sub_100004450(&v10[i]);
  }

  return result;
}

void sub_1000A5878(_Unwind_Exception *a1)
{
  v3 = (v1 + 56);
  v4 = -64;
  do
  {
    v3 = sub_100004450(v3) - 2;
    v4 += 16;
  }

  while (v4);
  _Unwind_Resume(a1);
}

const void **sub_1000A58C8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 15) = off_100214E38;
  *(v1 + 3) = off_100214E90;
  return sub_100023024(v1 + 19);
}

void sub_1000A5928(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 15) = off_100214E38;
  *(v1 + 3) = off_100214E90;
  sub_100023024(v1 + 19);

  operator delete();
}

const void **sub_1000A59C8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 15) = off_100214E38;
  *(v1 + 3) = off_100214E90;
  return sub_100023024(v1 + 19);
}

void sub_1000A5A28(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 15) = off_100214E38;
  *(v1 + 3) = off_100214E90;
  sub_100023024(v1 + 19);

  operator delete();
}

const void **sub_1000A5AC8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 15) = off_100214E38;
  *(v1 + 3) = off_100214E90;
  return sub_100023024(v1 + 19);
}

void sub_1000A5B28(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 15) = off_100214E38;
  *(v1 + 3) = off_100214E90;
  sub_100023024(v1 + 19);

  operator delete();
}

const void **sub_1000A5BC8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 15) = off_100214E38;
  *(v1 + 3) = off_100214E90;
  return sub_100023024(v1 + 19);
}

void sub_1000A5C28(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 15) = off_100214E38;
  *(v1 + 3) = off_100214E90;
  sub_100023024(v1 + 19);

  operator delete();
}

const void **sub_1000A5CC8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 15) = off_100214E38;
  *(v1 + 3) = off_100214E90;
  return sub_100023024(v1 + 19);
}

void sub_1000A5D28(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 15) = off_100214E38;
  *(v1 + 3) = off_100214E90;
  sub_100023024(v1 + 19);

  operator delete();
}

const void **sub_1000A5DC8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 15) = off_100214E38;
  *(v1 + 3) = off_100214E90;
  return sub_100023024(v1 + 19);
}

void sub_1000A5E28(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 15) = off_100214E38;
  *(v1 + 3) = off_100214E90;
  sub_100023024(v1 + 19);

  operator delete();
}

const void **sub_1000A5EC8(void *a1)
{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 15) = off_100214E38;
  *(v1 + 3) = off_100214E90;
  return sub_100023024(v1 + 19);
}

void sub_1000A5F28(void *a1)
{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 15) = off_100214E38;
  *(v1 + 3) = off_100214E90;
  sub_100023024(v1 + 19);

  operator delete();
}

const void **sub_1000A5FF0(void *a1)
{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 15) = off_100214E38;
  *(v1 + 3) = off_100214E90;
  return sub_100023024(v1 + 19);
}

void sub_1000A6050(void *a1)
{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 15) = off_100214E38;
  *(v1 + 3) = off_100214E90;
  sub_100023024(v1 + 19);

  operator delete();
}

uint64_t sub_1000A6118(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = off_100204010;
  *(a1 + 32) = off_100204040;
  *(a1 + 40) = off_100204070;
  *(a1 + 48) = off_1002040A0;
  *a1 = off_1002155A8;
  *(a1 + 8) = off_1002155F0;
  *(a1 + 16) = off_100215638;
  *(a1 + 24) = off_100215680;
  *(a1 + *(*a1 - 48)) = off_1002156C8;
  *(a1 + *(*a1 - 56)) = off_100215710;
  *(a1 + *(*a1 - 64)) = off_100215758;
  *a1 = off_100215380;
  *(a1 + 8) = off_1002153C8;
  *(a1 + 16) = off_100215410;
  *(a1 + 24) = off_100215458;
  *(a1 + *(*a1 - 48)) = off_1002154A0;
  *(a1 + *(*a1 - 56)) = off_1002154E8;
  *(a1 + *(*a1 - 64)) = off_100215530;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *a1 = off_100214FF8;
  *(a1 + 8) = off_100215040;
  *(a1 + 16) = off_100215088;
  *(a1 + 24) = off_1002150D0;
  *(a1 + 32) = off_100215118;
  *(a1 + 40) = off_100215160;
  *(a1 + 48) = off_1002151A8;
  *(a1 + 56) = off_100215208;
  *(a1 + 64) = 0;
  sub_100188274(a2, a1);
  return a1;
}

uint64_t sub_1000A652C(uint64_t a1)
{
  *(a1 + 56) = off_1002157B8;
  *(a1 + 24) = off_100215810;
  sub_100023024((a1 + 88));
  return a1;
}

void sub_1000A6598(uint64_t a1)
{
  *(a1 + 56) = off_1002157B8;
  *(a1 + 24) = off_100215810;
  sub_100023024((a1 + 88));

  operator delete();
}

const void **sub_1000A6624@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (*(*a1 + 24))(a1);
  v10[0] = @"Image Format";
  v10[1] = v4;
  v10[2] = @"Format Description";
  v10[3] = @"Locked encrypted image";
  sub_100021798(a1 + *(*a1 - 112), &v9);
  v10[4] = @"Encryption Info";
  v10[5] = v9;
  v9 = 0;
  sub_10000C8E0(&v9);
  v7[0] = v10;
  v7[1] = 3;
  sub_10014D3C0(v7, &v8);
  *a2 = v8;
  v8 = 0;
  sub_1000043E8(&v8);
  for (i = 5; i != -1; i -= 2)
  {
    result = sub_100004450(&v10[i]);
  }

  return result;
}

void sub_1000A6740(_Unwind_Exception *a1)
{
  v3 = (v1 + 40);
  v4 = -48;
  do
  {
    v3 = sub_100004450(v3) - 2;
    v4 += 16;
  }

  while (v4);
  _Unwind_Resume(a1);
}

const void **sub_1000A6794(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_1002157B8;
  *(v1 + 3) = off_100215810;
  return sub_100023024(v1 + 11);
}

void sub_1000A67F4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_1002157B8;
  *(v1 + 3) = off_100215810;
  sub_100023024(v1 + 11);

  operator delete();
}

const void **sub_1000A6894(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_1002157B8;
  *(v1 + 3) = off_100215810;
  return sub_100023024(v1 + 11);
}

void sub_1000A68F4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_1002157B8;
  *(v1 + 3) = off_100215810;
  sub_100023024(v1 + 11);

  operator delete();
}

const void **sub_1000A6994(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_1002157B8;
  *(v1 + 3) = off_100215810;
  return sub_100023024(v1 + 11);
}

void sub_1000A69F4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_1002157B8;
  *(v1 + 3) = off_100215810;
  sub_100023024(v1 + 11);

  operator delete();
}

const void **sub_1000A6A94(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_1002157B8;
  *(v1 + 3) = off_100215810;
  return sub_100023024(v1 + 11);
}

void sub_1000A6AF4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_1002157B8;
  *(v1 + 3) = off_100215810;
  sub_100023024(v1 + 11);

  operator delete();
}

const void **sub_1000A6B94(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_1002157B8;
  *(v1 + 3) = off_100215810;
  return sub_100023024(v1 + 11);
}

void sub_1000A6BF4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_1002157B8;
  *(v1 + 3) = off_100215810;
  sub_100023024(v1 + 11);

  operator delete();
}

const void **sub_1000A6C94(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_1002157B8;
  *(v1 + 3) = off_100215810;
  return sub_100023024(v1 + 11);
}

void sub_1000A6CF4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_1002157B8;
  *(v1 + 3) = off_100215810;
  sub_100023024(v1 + 11);

  operator delete();
}

const void **sub_1000A6D94(void *a1)
{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 7) = off_1002157B8;
  *(v1 + 3) = off_100215810;
  return sub_100023024(v1 + 11);
}

void sub_1000A6DF4(void *a1)
{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 7) = off_1002157B8;
  *(v1 + 3) = off_100215810;
  sub_100023024(v1 + 11);

  operator delete();
}

void sub_1000A75A0()
{
  if (v0)
  {
    sub_10000367C(v0);
  }

  JUMPOUT(0x1000A7648);
}

void sub_1000A76C8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_100002A4C(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1000A8184(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va, a5);
  if (a3)
  {
    sub_10000367C(a3);
  }

  if (a5)
  {
    sub_10000367C(a5);
  }

  sub_1000B0030(va);
  v8 = *(v6 - 40);
  if (v8)
  {
    sub_10000367C(v8);
  }

  _Unwind_Resume(a1);
}

void sub_1000A84D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, uint64_t a11, void *a12, std::__shared_weak_count *a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *__p, std::__shared_weak_count *a21, __int16 a22, __int16 a23, __int16 a24, char a25, char a26)
{
  if (a2)
  {
    if (a21)
    {
      sub_10000367C(a21);
    }

    if (a13)
    {
      sub_10000367C(a13);
    }

    v29 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      [DIError nilWithDIException:v29 description:@"Error creating AEA backend" error:v26];
    }

    else
    {
      [DIError nilWithEnumValue:150 verboseInfo:@"Unexpected error creating AEA backend" error:v26];
    }

    objc_claimAutoreleasedReturnValue();
    __cxa_end_catch();
    JUMPOUT(0x1000A8424);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000A976C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  if (*(v13 - 73) < 0)
  {
    operator delete(*(v13 - 96));
  }

  sub_1000022B4(va);
  if (v12)
  {
    __cxa_free_exception(v11);
  }

  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_1000A97DC(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1000A97E4);
  }

  sub_100002A4C(a1);
}

void sub_1000AABA4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_100002A4C(a1);
  }

  _Unwind_Resume(a1);
}

std::__shared_weak_count **sub_1000AABC0(void *a1, uint64_t a2, __n128 *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) + 1;
    if (v11 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_100036CAC();
    }

    v12 = a2 - v10;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v10) >> 3);
    v14 = 2 * v13;
    if (2 * v13 <= v11)
    {
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) + 1;
    }

    if (v13 >= 0x555555555555555)
    {
      v15 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v14;
    }

    v27 = a1;
    if (v15)
    {
      sub_10005C35C(a1, v15);
    }

    v24 = 0;
    v25 = 8 * (v12 >> 3);
    v26 = v25;
    sub_1000B0158(&v24, a3);
    v16 = v25;
    memcpy(v26, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v25;
    *&v26 = v26 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v26;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v24 = v21;
    v25 = v21;
    sub_10005C3B4(&v24);
    return v16;
  }

  else if (a2 == v6)
  {
    *v6 = *a3;
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    *(v6 + 16) = a3[1].n128_u32[0];
    a1[1] = v6 + 24;
  }

  else
  {
    sub_1000B00E4(a1, a2, v6, a2 + 24);
    v8 = *a3;
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    v9 = v4[1];
    *v4 = v8;
    if (v9)
    {
      sub_10000367C(v9);
    }

    *(v4 + 4) = a3[1].n128_u32[0];
  }

  return v4;
}

void sub_1000AAD64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10005C3B4(va);
  _Unwind_Resume(a1);
}

void sub_1000AB618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_10000367C(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000AB934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, void **a22, std::__shared_weak_count *a23)
{
  if (a21)
  {
    sub_10000367C(a21);
  }

  if (a23)
  {
    sub_10000367C(a23);
  }

  sub_10007182C(&a22);
  _Unwind_Resume(a1);
}

void **sub_1000ABA00(void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      sub_100036CAC();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      sub_1000715B0(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = sub_1000715F8(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

char **sub_1000AC104@<X0>(char ***a1@<X0>, char ***a2@<X8>)
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

char **sub_1000AC188@<X0>(char ***a1@<X0>, char ***a2@<X8>)
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

void sub_1000AC924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_1001A37A0(a10);
  }

  _Unwind_Resume(a1);
}

void sub_1000ACC0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_10000367C(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000ACF40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000022B4(&a9);

  _Unwind_Resume(a1);
}

void sub_1000AD9E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (v16)
  {
    sub_10000367C(v16);
  }

  if (a16)
  {
    sub_10000367C(a16);
  }

  _Unwind_Resume(a1);
}

void sub_1000ADF00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000022B4(&a9);

  _Unwind_Resume(a1);
}

void *sub_1000AE250(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000AE694(a1, a2);
  *a1 = off_100215928;
  a1[45] = &off_100215A28;
  a1[46] = &off_100215A50;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100215928;
  a1[45] = off_1002159B0;
  a1[46] = off_1002159D8;
  return a1;
}

void sub_1000AE354(_Unwind_Exception *a1)
{
  sub_1000AE75C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000AE378(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000AE75C(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000AE3BC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000AEF50(a1, a2);
  *a1 = off_100215B48;
  a1[45] = &off_100215C48;
  a1[46] = &off_100215C70;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100215B48;
  a1[45] = off_100215BD0;
  a1[46] = off_100215BF8;
  return a1;
}

void sub_1000AE4C0(_Unwind_Exception *a1)
{
  sub_1000AF018(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000AE4E4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000AF018(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000AE528(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000AF7C0(a1, a2);
  *a1 = off_100215D68;
  a1[45] = &off_100215E68;
  a1[46] = &off_100215E90;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100215D68;
  a1[45] = off_100215DF0;
  a1[46] = off_100215E18;
  return a1;
}

void sub_1000AE62C(_Unwind_Exception *a1)
{
  sub_1000AF888(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000AE650(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000AF888(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000AE694(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100215AC0;
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

void sub_1000AE744(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000AE75C(uint64_t a1)
{
  *a1 = off_100215AC0;
  sub_1000AEB9C(a1);
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

void sub_1000AE8C8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000AE75C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000AE930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000AE96C(_BYTE *a1, int a2)
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

uint64_t sub_1000AE9D8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000AE75C(v1);

  return std::ios::~ios();
}

void sub_1000AEA24(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000AE75C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000AEA88(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000AE75C(v1);

  return std::ios::~ios();
}

void sub_1000AEAE8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000AE75C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000AEB64(uint64_t a1)
{
  sub_1000AE75C(a1);

  operator delete();
}

uint64_t sub_1000AEB9C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_1000AED10((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
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

void sub_1000AECE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_1000AED10(uint64_t *a1, uint64_t *a2)
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
    v16 = v4;
    v17 = 2080;
    v18 = v7;
    v19 = 2048;
    v20 = 108;
    v21 = 2082;
    v22 = v8;
    v9 = _os_log_send_and_compose_impl();

    if (v9)
    {
      fprintf(__stderrp, "%s\n", v9);
      free(v9);
    }
  }

  else
  {
    v10 = sub_1000E03D8();
    v11 = *(a1 + 4);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      *buf = 68158466;
      v16 = v4;
      v17 = 2080;
      v18 = v12;
      v19 = 2048;
      v20 = 108;
      v21 = 2082;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v10, v11, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void sub_1000AEF04()
{
  exception = __cxa_allocate_exception(8uLL);
}

uint64_t sub_1000AEF50(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100215CE0;
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

void sub_1000AF000(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000AF018(uint64_t a1)
{
  *a1 = off_100215CE0;
  sub_1000AF458(a1);
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

void sub_1000AF184(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000AF018(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000AF1EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000AF228(_BYTE *a1, int a2)
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

uint64_t sub_1000AF294(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000AF018(v1);

  return std::ios::~ios();
}

void sub_1000AF2E0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000AF018(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000AF344(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000AF018(v1);

  return std::ios::~ios();
}

void sub_1000AF3A4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000AF018(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000AF420(uint64_t a1)
{
  sub_1000AF018(a1);

  operator delete();
}

uint64_t sub_1000AF458(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_1000AF5CC((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
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

void sub_1000AF5A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_1000AF5CC(uint64_t *a1, uint64_t *a2)
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
    v16 = v4;
    v17 = 2080;
    v18 = v7;
    v19 = 2048;
    v20 = 115;
    v21 = 2082;
    v22 = v8;
    v9 = _os_log_send_and_compose_impl();

    if (v9)
    {
      fprintf(__stderrp, "%s\n", v9);
      free(v9);
    }
  }

  else
  {
    v10 = sub_1000E03D8();
    v11 = *(a1 + 4);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      *buf = 68158466;
      v16 = v4;
      v17 = 2080;
      v18 = v12;
      v19 = 2048;
      v20 = 115;
      v21 = 2082;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v10, v11, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000AF7C0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100215F00;
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

void sub_1000AF870(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000AF888(uint64_t a1)
{
  *a1 = off_100215F00;
  sub_1000AFCC8(a1);
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

void sub_1000AF9F4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000AF888(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000AFA5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000AFA98(_BYTE *a1, int a2)
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

uint64_t sub_1000AFB04(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000AF888(v1);

  return std::ios::~ios();
}

void sub_1000AFB50(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000AF888(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000AFBB4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000AF888(v1);

  return std::ios::~ios();
}

void sub_1000AFC14(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000AF888(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000AFC90(uint64_t a1)
{
  sub_1000AF888(a1);

  operator delete();
}

uint64_t sub_1000AFCC8(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_1000AFE3C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
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

void sub_1000AFE14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_1000AFE3C(uint64_t *a1, uint64_t *a2)
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
    v16 = v4;
    v17 = 2080;
    v18 = v7;
    v19 = 2048;
    v20 = 129;
    v21 = 2082;
    v22 = v8;
    v9 = _os_log_send_and_compose_impl();

    if (v9)
    {
      fprintf(__stderrp, "%s\n", v9);
      free(v9);
    }
  }

  else
  {
    v10 = sub_1000E03D8();
    v11 = *(a1 + 4);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      *buf = 68158466;
      v16 = v4;
      v17 = 2080;
      v18 = v12;
      v19 = 2048;
      v20 = 129;
      v21 = 2082;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v10, v11, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

AEAAuthData *sub_1000B0030(uint64_t a1)
{
  if (*(a1 + 120) == 1 && *(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 16) == 1)
  {
    v2 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v2)
    {
      operator delete[]();
    }
  }

  return sub_10013A0A8(a1);
}

uint64_t sub_1000B00E4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8 = *v9;
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v8 + 16) = *(v9 + 16);
      v9 += 24;
      v8 += 24;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_1000B02AC(&v11, a2, v7, v6);
}

__n128 sub_1000B0158(void *a1, __n128 *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v9 = 1;
      }

      else
      {
        v9 = 0x5555555555555556 * ((v4 - *a1) >> 3);
      }

      v10 = a1[4];
      v12[4] = a1[4];
      sub_10005C35C(v10, v9);
    }

    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3) + 1 + ((0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3) + 1) >> 63);
    v7 = -3 * (v6 >> 1);
    sub_1000B0334(v12, v5, v4, v5 - 24 * (v6 >> 1));
    v4 = v8;
    a1[1] += 8 * v7;
    a1[2] = v8;
  }

  result = *a2;
  *v4 = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  *(v4 + 16) = a2[1].n128_u32[0];
  a1[2] += 24;
  return result;
}

uint64_t sub_1000B02AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v8 = a3 + v7;
      v9 = *(a3 + v7 - 24);
      *(v8 - 24) = 0;
      *(v8 - 16) = 0;
      v10 = *(a4 + v7 - 16);
      *(a4 + v7 - 24) = v9;
      if (v10)
      {
        sub_10000367C(v10);
      }

      *(a4 + v7 - 8) = *(v8 - 8);
      v7 -= 24;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

__int128 *sub_1000B0334(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        sub_10000367C(v8);
      }

      *(a4 + 16) = *(v5 + 4);
      v5 = (v5 + 24);
      a4 += 24;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_1000B03A8(uint64_t result, int a2, int *a3, uint64_t a4)
{
  if (a4)
  {
    v4 = 4 * a4;
    do
    {
      v5 = *a3++;
      a2 &= ~v5;
      v4 -= 4;
    }

    while (v4);
  }

  if (a2)
  {
    v6 = result;
    v7 = a2;
    exception = __cxa_allocate_exception(0x28uLL);
    exception[1] = v6;
    exception[2] = "invalid flags";
    exception[3] = "flags validator";
    *exception = &off_100209F68;
    *(exception + 8) = v7;
  }

  return result;
}

BOOL sub_1000B0444()
{
  sub_100159884();
  if (v4 < 0)
  {
    v0 = v3 == 4 && *v2 == 1936093281;
    operator delete(v2);
  }

  else
  {
    return v4 == 4 && v2 == 1936093281;
  }

  return v0;
}

void *sub_1000B04D8(void *a1)
{
  *a1 = off_100215F80;
  v2 = a1[3];
  if (v2)
  {
    sub_10000367C(v2);
  }

  return a1;
}

void sub_1000B0524(void *a1)
{
  *a1 = off_100215F80;
  v1 = a1[3];
  if (v1)
  {
    sub_10000367C(v1);
  }

  operator delete();
}

__n128 sub_1000B0688@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 40);
  v3 = *(a1 + 56);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1000B0744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 104) == 1 && *(a3 + 48) != 0)
  {
    return -102;
  }

  sub_1000B08BC(a1, a3, &v7);
  v5 = (*(**(a2 + 16) + 128))(*(a2 + 16), &v7);
  if (v8)
  {
    sub_10000367C(v8);
  }

  return v5;
}

void sub_1000B07DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000367C(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000B0804(void *a1)
{
  *a1 = off_100216090;
  v2 = a1[3];
  if (v2)
  {
    sub_10000367C(v2);
  }

  return a1;
}

void sub_1000B0850(void *a1)
{
  *a1 = off_100216090;
  v1 = a1[3];
  if (v1)
  {
    sub_10000367C(v1);
  }

  operator delete();
}

void *sub_1000B08BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[2];
  v6 = a2[3];
  v7 = *(a1 + 40);
  v8 = (*(**(a1 + 16) + 40))(*(a1 + 16));
  v9 = a2[4];
  v10 = *a2;
  result = sub_10019E2E8();
  v12 = result[1];
  *a3 = v10;
  *(a3 + 8) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = v6 / v7 * v7;
  v14 = v8 - v13;
  v15 = v5 + v6 + v7 - 1 - v13 - (v5 + v6 + v7 - 1) % v7;
  if (v9 < v15)
  {
    v15 = v9;
  }

  if (v14 >= v15)
  {
    v14 = v15;
  }

  *(a3 + 16) = v14;
  *(a3 + 24) = v13;
  *(a3 + 32) = v14;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 104) = 0;
  return result;
}

void sub_1000B0A04(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    operator delete[]();
  }

  __cxa_rethrow();
}

void sub_1000B0A44(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000B0A7C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    operator delete[]();
  }

  return result;
}

uint64_t sub_1000B0A9C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1000B0B44(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    operator delete[]();
  }

  __cxa_rethrow();
}

void sub_1000B0B84(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000B0BBC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    operator delete[]();
  }

  return result;
}

uint64_t sub_1000B0BDC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_1000B0CA0(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1002161A8;
  v8 = sub_1000FC698(*a2, a3);
  sub_1000FBAF4(a1 + 3, a2, a3, v8, v9, a4);
  return a1;
}

void sub_1000B0D54(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1002161A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1000B0E94(void *a1, unsigned __int16 *a2, unsigned int *a3, unint64_t *a4, unint64_t *a5, void *a6, uint64_t *a7, _OWORD *a8, __int128 *a9)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1002161A8;
  v9 = *a9;
  sub_1000FC370((a1 + 3), *a2, *a3, *a4, *a5, a6, a7, a8);
}

void sub_1000B0FD4(void *a1, char **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1002161F8;
  sub_1000B10CC(a1 + 3, a2);
}

void sub_1000B1050(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1002161F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1000B1120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000B1264(void *a1, uint64_t a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100216248;
  sub_10019B8A0(a1 + 3, a2, *a3);
  return a1;
}

void sub_1000B12E4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100216248;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

BOOL sub_1000B1360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v5 = a4 - a3 + 2;
  v6 = ~(-1 << v5) << a3;
  if (a4 - a3 == 62)
  {
    v6 = -1;
  }

  v7 = *a5;
  v8 = a5[1];
  if (v7 == v8)
  {
    v9 = (*(a1 + 8) + 8 * a2);
    if (*a5)
    {
      v10 = (v6 & ~atomic_fetch_or(v9, v6)) == 0;
    }

    else
    {
      v10 = (atomic_fetch_and(v9, ~v6) & v6) == 0;
    }
  }

  else
  {
    if ((a4 - a3) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v11 = 0;
      v12 = v5 >> 1;
      v13 = v7 | (2 * v8);
      do
      {
        v11 = v13 | (4 * v11);
        --v12;
      }

      while (v12);
    }

    else
    {
      v11 = 0;
    }

    v14 = v11 << a3;
    v15 = *(*(a1 + 8) + 8 * a2);
    v16 = v15 & ~v6 | v14;
    v17 = v15;
    atomic_compare_exchange_strong((*(a1 + 8) + 8 * a2), &v17, v16);
    if (v17 != v15)
    {
      v18 = ~v6;
      do
      {
        v15 = v17;
        v16 = v17 & v18 | v14;
        atomic_compare_exchange_strong((*(a1 + 8) + 8 * a2), &v17, v16);
      }

      while (v17 != v15);
    }

    v10 = v15 == v16;
  }

  return !v10;
}

unint64_t sub_1000B1434(unint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v4 = a3 - a2 + 2;
  if ((a3 - a2) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = 0;
    v6 = v4 >> 1;
    do
    {
      v5 = *a4 | (2 * a4[1]) | (4 * v5);
      --v6;
    }

    while (v6);
  }

  else
  {
    v5 = 0;
  }

  if (a3 - a2 == 62)
  {
    v7 = -1;
  }

  else
  {
    v7 = ~(-1 << v4) << a2;
  }

  v9 = ((v5 << a2) ^ v7 & a1 | (((v5 << a2) ^ v7 & a1) >> 1)) & 0x5555555555555555;
  v8 = v9 == 0;
  v10 = __clz(__rbit64(v9));
  if (v8)
  {
    return a3 + 2;
  }

  else
  {
    return v10;
  }
}

unint64_t sub_1000B14AC(unint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v4 = a3 - a2 + 2;
  if ((a3 - a2) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = 0;
    v6 = v4 >> 1;
    do
    {
      v5 = *a4 | (2 * a4[1]) | (4 * v5);
      --v6;
    }

    while (v6);
  }

  else
  {
    v5 = 0;
  }

  if (a3 - a2 == 62)
  {
    v7 = -1;
  }

  else
  {
    v7 = ~(-1 << v4) << a2;
  }

  v9 = v7 & ~((v5 << a2) ^ a1) & ((v7 & ~((v5 << a2) ^ a1)) >> 1) & 0x5555555555555555;
  v8 = v9 == 0;
  v10 = __clz(__rbit64(v9));
  if (v8)
  {
    return a3 + 2;
  }

  else
  {
    return v10;
  }
}

unint64_t sub_1000B1524(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  if (a2 > a3 || *(a1 + 16) <= a3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100002148(v22);
    sub_1000026BC(v22, "invalid bits range ", 19);
    std::ostream::operator<<();
    sub_1000026BC(v22, "-", 1);
    std::ostream::operator<<();
    sub_100004290(exception, v22, 0x16u);
  }

  v4 = a2 >> 6;
  v5 = a2 & 0x3F;
  v6 = a3 & 0x3F;
  if (a2 >> 6 == a3 >> 6)
  {
    v7 = v6 - v5 + 1;
    v8 = ~(-1 << v7) << v5;
    if (v7 == 64)
    {
      v9 = -1;
    }

    else
    {
      v9 = v8;
    }

    v10 = *(a1 + 8);
    if (a4)
    {
      v11 = atomic_fetch_or((v10 + 8 * v4), v9);
      v5 = v9;
    }

    else
    {
      v5 = 0;
      v11 = atomic_fetch_and((v10 + 8 * v4), ~v9);
    }

    LOBYTE(v5) = (v11 & v9) != v5;
  }

  else
  {
    v12 = a3 >> 6;
    if ((a2 & 0x3F) != 0)
    {
      v5 = ~(-1 << -v5) << v5;
      v13 = *(a1 + 8);
      if (a4)
      {
        v14 = atomic_fetch_or((v13 + 8 * v4), v5);
        v15 = v5;
      }

      else
      {
        v15 = 0;
        v14 = atomic_fetch_and((v13 + 8 * v4), ~v5);
      }

      LOBYTE(v5) = (v14 & v5) != v15;
      ++v4;
    }

    if (v6 != 63)
    {
      v16 = ~(-2 << v6);
      v17 = *(a1 + 8);
      if (a4)
      {
        v18 = atomic_fetch_or((v17 + 8 * v12), v16);
        v19 = v16;
      }

      else
      {
        v19 = 0;
        v18 = atomic_fetch_and((v17 + 8 * v12), ~v16);
      }

      if ((v18 & v16) != v19)
      {
        LOBYTE(v5) = 1;
      }

      --v12;
    }

    for (; v4 <= v12; ++v4)
    {
      LOBYTE(v5) = (*(a1 + 8) + 8 * v4 != __swp(*(a1 + 8) + 8 * v4, (*(a1 + 8) + 8 * v4))) | v5;
    }
  }

  return v5 & 1;
}

void sub_1000B1728(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000022B4(va);
  _Unwind_Resume(a1);
}

BOOL sub_1000B175C(uint64_t a1, unint64_t a2, unint64_t a3, unsigned __int8 *a4)
{
  if (a3 <= a2 || *(a1 + 16) < a3 || ((a3 - a2) & 1) != 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100002148(v19);
    sub_1000026BC(v19, "invalid bits range ", 19);
    std::ostream::operator<<();
    sub_1000026BC(v19, "-", 1);
    std::ostream::operator<<();
    sub_100004290(exception, v19, 0x16u);
  }

  v6 = a3 - 2;
  v7 = a2 >> 6;
  v8 = a2 & 0x3F;
  v9 = v6 & 0x3F;
  if (a2 >> 6 == v6 >> 6)
  {
    v10 = a2 >> 6;

    return sub_1000B1360(a1, v10, v8, v6 & 0x3F, a4);
  }

  else
  {
    v12 = v6 >> 6;
    v13 = (a2 & 0x3F) != 0 && sub_1000B1360(a1, v7++, v8, 62, a4);
    if (v9 <= 0x3D)
    {
      v13 |= sub_1000B1360(a1, v12--, 0, v9, a4);
    }

    v14 = 0;
    v15 = 32;
    do
    {
      v14 = *a4 | (2 * a4[1]) | (4 * v14);
      --v15;
    }

    while (v15);
    while (v7 <= v12)
    {
      v16 = *(a1 + 8);
      if (v13)
      {
        *(v16 + 8 * v7) = v14;
        v13 = 1;
      }

      else
      {
        v17 = (v16 + 8 * v7);
        v14 = __swp(v17, v17);
        v13 = v17 != v14;
      }

      ++v7;
    }

    return v13 & 1;
  }
}

void sub_1000B194C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000022B4(va);
  _Unwind_Resume(a1);
}

unint64_t sub_1000B1980(uint64_t a1, unint64_t a2, unint64_t a3, unsigned __int8 *a4)
{
  v4 = a3;
  if (a3 <= a2 || *(a1 + 16) < a3 || ((a3 - a2) & 1) != 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100002148(v26);
    sub_1000026BC(v26, "invalid bits range ", 19);
    std::ostream::operator<<();
    sub_1000026BC(v26, "-", 1);
    std::ostream::operator<<();
    sub_100004290(exception, v26, 0x16u);
  }

  v8 = a3 - 2;
  v9 = a2 >> 6;
  v10 = a2 & 0x3F;
  v11 = (a3 - 2) & 0x3F;
  if (a2 >> 6 == (a3 - 2) >> 6)
  {
    v12 = atomic_load((*(a1 + 8) + 8 * v9));
    v13 = sub_1000B1434(v12, v10, (a3 - 2) & 0x3F, a4);
    return v13 + (a2 & 0xFFFFFFFFFFFFFFC0);
  }

  if (v10)
  {
    v14 = atomic_load((*(a1 + 8) + 8 * v9));
    v13 = sub_1000B1434(v14, v10, 62, a4);
    if (v13 != 64)
    {
      return v13 + (a2 & 0xFFFFFFFFFFFFFFC0);
    }

    ++v9;
  }

  v15 = 0;
  v16 = v8 >> 6;
  if (v11 >= 0x3E)
  {
    v17 = 0;
  }

  else
  {
    v17 = -1;
  }

  v18 = 32;
  do
  {
    v15 = *a4 | (2 * a4[1]) | (4 * v15);
    --v18;
  }

  while (v18);
  v19 = v16 + v17;
  if (v9 > v19)
  {
LABEL_18:
    if (v11 <= 0x3D)
    {
      v22 = atomic_load((*(a1 + 8) + 8 * v16));
      v23 = sub_1000B1434(v22, 0, (v4 - 2) & 0x3F, a4);
      if (v23 != v11 + 2)
      {
        return v23 + (v8 & 0xFFFFFFFFFFFFFFC0);
      }
    }
  }

  else
  {
    v20 = *(a1 + 8);
    v21 = v9 << 6;
    while (((*(v20 + 8 * v9) ^ v15 | ((*(v20 + 8 * v9) ^ v15) >> 1)) & 0x5555555555555555) == 0)
    {
      ++v9;
      v21 += 64;
      if (v9 > v19)
      {
        goto LABEL_18;
      }
    }

    return __clz(__rbit64((*(v20 + 8 * v9) ^ v15 | ((*(v20 + 8 * v9) ^ v15) >> 1)) & 0x5555555555555555)) + v21;
  }

  return v4;
}

void sub_1000B1B88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000022B4(va);
  _Unwind_Resume(a1);
}

unint64_t sub_1000B1BBC(uint64_t a1, unint64_t a2, unint64_t a3, unsigned __int8 *a4)
{
  v4 = a3;
  if (a3 <= a2 || *(a1 + 16) < a3 || ((a3 - a2) & 1) != 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100002148(v27);
    sub_1000026BC(v27, "invalid bits range ", 19);
    std::ostream::operator<<();
    sub_1000026BC(v27, "-", 1);
    std::ostream::operator<<();
    sub_100004290(exception, v27, 0x16u);
  }

  v8 = a3 - 2;
  v9 = a2 >> 6;
  v10 = a2 & 0x3F;
  v11 = (a3 - 2) & 0x3F;
  if (a2 >> 6 == (a3 - 2) >> 6)
  {
    v12 = atomic_load((*(a1 + 8) + 8 * v9));
    v13 = sub_1000B14AC(v12, v10, (a3 - 2) & 0x3F, a4);
    return v13 + (a2 & 0xFFFFFFFFFFFFFFC0);
  }

  if (v10)
  {
    v14 = atomic_load((*(a1 + 8) + 8 * v9));
    v13 = sub_1000B14AC(v14, v10, 62, a4);
    if (v13 != 64)
    {
      return v13 + (a2 & 0xFFFFFFFFFFFFFFC0);
    }

    ++v9;
  }

  v15 = 0;
  v16 = v8 >> 6;
  if (v11 >= 0x3E)
  {
    v17 = 0;
  }

  else
  {
    v17 = -1;
  }

  v18 = 32;
  do
  {
    v15 = *a4 | (2 * a4[1]) | (4 * v15);
    --v18;
  }

  while (v18);
  v19 = v16 + v17;
  if (v9 > v19)
  {
LABEL_18:
    if (v11 <= 0x3D)
    {
      v23 = atomic_load((*(a1 + 8) + 8 * v16));
      v24 = sub_1000B14AC(v23, 0, (v4 - 2) & 0x3F, a4);
      if (v24 != v11 + 2)
      {
        return v24 + (v8 & 0xFFFFFFFFFFFFFFC0);
      }
    }
  }

  else
  {
    v20 = v9 << 6;
    while (1)
    {
      v21 = *(*(a1 + 8) + 8 * v9);
      v22 = ((v15 ^ ~v21) >> 1) & ~(v15 ^ v21) & 0x5555555555555555;
      if (v22)
      {
        return __clz(__rbit64(v22)) + v20;
      }

      ++v9;
      v20 += 64;
      if (v9 > v19)
      {
        goto LABEL_18;
      }
    }
  }

  return v4;
}

void sub_1000B1DCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000022B4(va);
  _Unwind_Resume(a1);
}

BOOL sub_1000B1E00(uint64_t a1)
{
  v1 = *(a1 + 16) + 63;
  if (v1 < 0x40)
  {
    return 1;
  }

  v3 = *(a1 + 8);
  if (*v3)
  {
    return 0;
  }

  v4 = v1 >> 6;
  v5 = 1;
  do
  {
    v6 = v5;
    if (v4 == v5)
    {
      break;
    }
  }

  while (!v3[v5++]);
  return v6 >= v4;
}

uint64_t sub_1000B1E58(uint64_t a1)
{
  v1 = *(a1 + 16) + 63;
  if (v1 < 0x40)
  {
    return 0;
  }

  v4 = 0;
  v2 = 0;
  v5 = 8 * (v1 >> 6);
  do
  {
    v6 = atomic_load((*(a1 + 8) + v4));
    v8 = v6;
    v2 += sub_1000B2154(&v8, 0, 0x40uLL);
    v4 += 8;
  }

  while (v5 != v4);
  return v2;
}

uint64_t sub_1000B1EE8(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100002148(v7);
    sub_1000026BC(v7, "Bit ", 4);
    std::ostream::operator<<();
    sub_1000026BC(v7, " requested while there are only ", 32);
    v5 = *(a1 + 16);
    std::ostream::operator<<();
    sub_1000026BC(v7, " bits in the bitmap", 19);
    sub_100004290(exception, v7, 0x16u);
  }

  v2 = atomic_load((*(a1 + 8) + 8 * (a2 >> 6)));
  return (v2 >> a2) & 1;
}

void sub_1000B1FE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000022B4(va);
  _Unwind_Resume(a1);
}

BOOL sub_1000B2014(uint64_t a1, unint64_t a2, int a3)
{
  if (*(a1 + 16) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100002148(v10);
    sub_1000026BC(v10, "Bit ", 4);
    std::ostream::operator<<();
    sub_1000026BC(v10, " requested while there are only ", 32);
    v8 = *(a1 + 16);
    std::ostream::operator<<();
    sub_1000026BC(v10, " bits in the bitmap", 19);
    sub_100004290(exception, v10, 0x16u);
  }

  v3 = 1 << a2;
  v4 = (*(a1 + 8) + 8 * (a2 >> 6));
  if (a3)
  {
    v5 = atomic_fetch_or(v4, v3);
  }

  else
  {
    v5 = atomic_fetch_and(v4, ~v3);
  }

  return (v5 & v3) == 0;
}

void sub_1000B2120(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000022B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B2154(int8x8_t *a1, unsigned int a2, unint64_t a3)
{
  v3 = a2;
  if (a2)
  {
    if (64 - a2 >= a3)
    {
      v4 = a3;
    }

    else
    {
      v4 = 64 - a2;
    }

    v5 = *a1++;
    v6 = vcnt_s8(((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v4)) & (-1 << a2) & v5));
    v6.i16[0] = vaddlv_u8(v6);
    v3 = v6.u32[0];
    a3 -= v4;
  }

  if (a3 >= 0x40)
  {
    do
    {
      v7 = *a1++;
      v8 = vcnt_s8(v7);
      v8.i16[0] = vaddlv_u8(v8);
      v3 += v8.u32[0];
      a3 -= 64;
    }

    while (a3 > 0x3F);
  }

  if (a3)
  {
    v9 = vcnt_s8((*a1 & (0xFFFFFFFFFFFFFFFFLL >> -a3)));
    v9.i16[0] = vaddlv_u8(v9);
    v3 += v9.u32[0];
  }

  return v3;
}

uint64_t sub_1000B21F8(uint64_t a1, uint64_t a2)
{
  *a1 = 2;
  *(a1 + 8) = a2;
  sub_100157DF8(a1 + 16, "rings_queue");
  *(a1 + 24) = 0;
  return a1;
}

void sub_1000B2240(uint64_t a1, uint64_t a2)
{
  v2 = atomic_load(a1);
  v3 = *(a1 + 8);
  if (v2 == 1)
  {
    io_rings_return_status(v3, a2, 0xFFFFFFA7, 0);
  }

  else
  {
    sub_1000B391C(v3, a2);
  }
}

uint64_t sub_1000B2260(uint64_t a1)
{
  v1 = atomic_load(a1);
  if (v1 != 2)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  do
  {
    v7 = sub_1000B3628(*(a1 + 8));
    v8 = v7;
    if (!v7)
    {
      break;
    }

    __dmb(9u);
    v9 = *(a1 + 24);
    if (*(v7 + 2))
    {
      v10 = 1;
    }

    else
    {
      if ((*(a1 + 24) & 1) == 0)
      {
        v12 = *(v7 + 2);
        goto LABEL_13;
      }

      v10 = 2;
      v9 = 1;
    }

    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    sub_1000B3E48(*(a1 + 8), v7, v11);
    v12 = *(v8 + 2);
LABEL_13:
    *(a1 + 24) = v12 & 1;
    sub_1000B39D0(*(a1 + 8), *(v8 + 8), &v18);
    if (v18)
    {
      if (v3)
      {
        if (*(v8 + 8) == v4)
        {
          v3 = 1;
          goto LABEL_22;
        }

        (*(v5 + 8))(v5);
        if (v6)
        {
          sub_10000367C(v6);
          v6 = 0;
        }

        v5 = 0;
      }

      v3 = 0;
LABEL_22:
      if ((*(v18 + 16))())
      {
        (*v18)(v18, v8);
        if (!v5)
        {
          v4 = *(v8 + 8);
          v5 = v18;
          v13 = v19;
          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v6)
          {
            sub_10000367C(v6);
          }

          v3 = 1;
          v6 = v13;
        }
      }

      else if (sub_1000B3768(v8))
      {
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 0x40000000;
        v17[2] = sub_1000B2508;
        v17[3] = &unk_1002162A8;
        v17[4] = a1;
        v17[5] = v8;
        sub_100157EBC((a1 + 16), v17);
      }

      else
      {
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 0x40000000;
        v16[2] = sub_1000B25C4;
        v16[3] = &unk_1002162C8;
        v16[4] = a1;
        v16[5] = v8;
        sub_100157E0C((a1 + 16), v16);
      }

      goto LABEL_32;
    }

    io_rings_return_status(*(a1 + 8), v8, 0xFFFFFFFA, 0);
LABEL_32:
    if (v19)
    {
      sub_10000367C(v19);
    }

    v14 = atomic_load(a1);
  }

  while (v14 == 2);
  if (v3)
  {
    (*(v5 + 8))(v5);
  }

  if (v6)
  {
    sub_10000367C(v6);
  }

  return 0;
}

void sub_1000B24D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (v22)
  {
    sub_10000367C(v22);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000B2508(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = atomic_load(v3);
  if (v4 == 1)
  {
    v5 = *(a1 + 40);
    v6 = *(v3 + 8);

    io_rings_return_status(v6, v5, 0xFFFFFFA7, 0);
  }

  else
  {
    v8[6] = v1;
    v8[7] = v2;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 0x40000000;
    v8[2] = sub_1000B25B0;
    v8[3] = &unk_100216288;
    v7 = *(a1 + 40);
    v8[4] = v3;
    v8[5] = v7;
    sub_100157E0C((v3 + 16), v8);
  }
}

void sub_1000B25B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  __dmb(9u);
  sub_1000B2240(v1, *(a1 + 40));
}

void sub_1000B25C4(uint64_t a1)
{
  v1 = *(a1 + 32);
  __dmb(9u);
  sub_1000B2240(v1, *(a1 + 40));
}

uint64_t sub_1000B25D8(uint64_t a1)
{
  v1 = atomic_load(a1);
  if (v1 != 2)
  {
    return 4294967260;
  }

  atomic_store(0, a1);
  sub_100157ECC((a1 + 16));
  return 0;
}

void sub_1000B2614(uint64_t a1)
{
  v2 = atomic_load(a1);
  if (v2 != 1)
  {
    if (atomic_exchange(a1, 1u) == 2)
    {
      sub_100157ECC((a1 + 16));
    }

    sub_1000B3C18(*(a1 + 8));
    sub_100157ED4((a1 + 16));
    sub_1000B2260(a1);
    sub_100157EC4((a1 + 16), &stru_100216308);

    sub_100157EC4((a1 + 16), &stru_100216348);
  }
}

uint64_t sub_1000B26A8(uint64_t a1)
{
  if (atomic_load(a1))
  {
    return 4294967274;
  }

  atomic_store(2u, a1);
  sub_100157ED4((a1 + 16));
  sub_1000B2260(a1);
  return 0;
}

diskimage_uio::diskimage *sub_1000B289C(diskimage_uio::diskimage **a1, diskimage_uio::diskimage *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    diskimage_uio::diskimage::~diskimage(result);

    operator delete();
  }

  return result;
}

void sub_1000B28E8(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v7 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    sub_1000B2A24(a1);
    if (!(a4 >> 60))
    {
      v8 = a1[2] - *a1;
      v9 = v8 >> 3;
      if (v8 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_1000B2A64(a1, v10);
    }

    sub_100036CAC();
  }

  v11 = a1[1] - v7;
  if (a4 <= v11 >> 4)
  {
    sub_1000B2BA4(&v18, a2, a3, v7);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      do
      {
        v16 = *(v15 - 8);
        if (v16)
        {
          sub_10000367C(v16);
        }

        v15 -= 16;
      }

      while (v15 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    v12 = sub_1000B2BA4(&v17, a2, (a2 + v11), v7);
    a1[1] = sub_1000B2AA0(a1, v12, a3, a1[1]);
  }
}

void sub_1000B2A24(uint64_t *a1)
{
  if (*a1)
  {
    sub_100071880(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_1000B2A64(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_1000715B0(a1, a2);
  }

  sub_100036CAC();
}

void *sub_1000B2AA0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_1000B2B28(v7);
  return v4;
}

uint64_t sub_1000B2B28(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000B2B60(a1);
  }

  return a1;
}

void sub_1000B2B60(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      sub_10000367C(v3);
    }

    v1 -= 16;
  }
}

uint64_t *sub_1000B2BA4(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v8 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = a4[1];
      *a4 = v8;
      a4[1] = v7;
      if (v9)
      {
        sub_10000367C(v9);
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_1000B2C1C(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 4294967274;
  if (a1 && a2 && a3 && a4)
  {
    if (*a2 <= 1u)
    {
      v5 = *(a2 + 4);
      if (v5 < 9)
      {
        return v4;
      }

      if (v5 < 0x10 || ((v6 = *(a2 + 8)) == 0 || !*v6) && (v5 < 0x31 || !*(a2 + 48) && !memcmp((a2 + 48), (a2 + 49), v5 - 49)))
      {
        operator new();
      }
    }

    return 4294967251;
  }

  return v4;
}

void sub_1000B2DE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000B317C(va);
  _Unwind_Resume(a1);
}

uint64_t io_rings_get_max_version(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = -22;
  }

  else
  {
    v2 = 1;
  }

  if (a2 <= 0 && a1 == 0)
  {
    return v2;
  }

  else
  {
    return 4294967251;
  }
}

void *sub_1000B2E10(void *result, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (v2 >= 0x18)
  {
    result[52] = *(a2 + 16);
    if (v2 >= 0x20)
    {
      result[53] = *(a2 + 24);
      if (v2 >= 0x28)
      {
        result[54] = *(a2 + 32);
        if (v2 >= 0x30)
        {
          result[55] = *(a2 + 40);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000B2E58(uint64_t *a1, unsigned int a2)
{
  if (a2 >= 0x2000)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = a2;
  }

  if (a2 + 1 < 0x2000)
  {
    v4 = a2 + 1;
  }

  else
  {
    v4 = 0x2000;
  }

  if ((v4 & (v4 - 1)) != 0)
  {
    v5 = 0;
    v6 = 2 * v4;
    do
    {
      v6 >>= 1;
      ++v5;
    }

    while (v6 != 1);
    v4 = 1 << v5;
  }

  v7 = mmap(0, 88 * v3 + 8 + 4 * v4, 3, 4097, 0, 0);
  if (v7 == -1)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  *a1 = v8;
  v9 = mmap(0, (16 * v4) | 8, 3, 4097, 0, 0);
  if (v9 == -1)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  a1[1] = v10;
  result = 4294967284;
  if (*a1)
  {
    if (v10)
    {
      sub_1000B3EF4((a1 + 2));
      v12 = *a1;
      v13 = a1[1];
      v14[0] = off_1002163A0;
      v14[1] = a1;
      v14[3] = v14;
      sub_1000B412C((a1 + 2), v12, v13, v3, v4, v4, v14);
    }
  }

  return result;
}

void sub_1000B3068(_Unwind_Exception *a1, int a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_1000B4418(va);
  sub_1000B3FAC(va1);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1000B3018);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000B30B0(uint64_t result)
{
  if (*(result + 264) == 1)
  {
    v1 = result;
    if (*(result + 408) == 1)
    {
      v2 = *(result + 136);
      v3 = *(result + 312);
      v4 = *(result + 56);
      sub_1000B3EF4(result + 16);
      sub_1000B43D4(v1 + 272);
      if (*v1)
      {
        munmap(*v1, 4 * v4 + 88 * v2 + 8);
        *v1 = 0;
      }

      v5 = *(v1 + 8);
      if (v5)
      {
        munmap(v5, (16 * v3) | 8);
        *(v1 + 8) = 0;
      }

      sub_1000B47C4(v1);

      operator delete();
    }
  }

  return result;
}

uint64_t *sub_1000B317C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1000B47C4(v2);
    operator delete();
  }

  return a1;
}

uint64_t io_rings_enter(uint64_t a1, int a2, int a3)
{
  if (a3)
  {
    return 4294967194;
  }

  if (*(a1 + 712) == 2)
  {
    return 4294967207;
  }

  return sub_1000B496C(a1 + 16, a2, 1);
}

double io_rings_sqe_allocate(uint64_t a1)
{
  v1 = sub_1000B334C(a1 + 16);
  if (v1)
  {
    *(v1 + 12) = 0;
    result = 0.0;
    *(v1 + 24) = 0u;
    *(v1 + 40) = 0u;
    *(v1 + 56) = 0u;
    *(v1 + 72) = 0u;
    *(v1 + 1) = 0;
    *(v1 + 4) = 0;
  }

  return result;
}

uint64_t sub_1000B334C(uint64_t a1)
{
  v2 = sub_1000B4B5C((a1 + 104));
  if (v2 < 0)
  {
    return 0;
  }

  atomic_fetch_add((a1 + 48), 1u);
  *(*(a1 + 24) + 4 * (*(a1 + 44) & atomic_fetch_add((a1 + 8), 1u))) = v2;
  return *(a1 + 96) + 88 * v2;
}

uint64_t sub_1000B33B8(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    v2 = atomic_load(*a1);
    *(a1 + 92) = v2;
    __dmb(9u);
    *(a1 + 96) = 0;
  }

  v3 = atomic_load(*(a1 + 16));
  sub_1000B4BD0(a1, &v5);
  if (v7 != 1)
  {
    return 0;
  }

  if (v3 == *(a1 + 92))
  {
    *(a1 + 96) = 1;
  }

  v6 |= 1u;
  return v5;
}

uint64_t io_rings_suspend(uint64_t a1)
{
  if (*(a1 + 712))
  {
    return 4294967274;
  }

  v3 = *(*(a1 + 704) + 16);
  if (!v3 || (result = v3(), !result))
  {
    sub_1000B3B28((a1 + 448));
    result = 0;
    *(a1 + 712) = 1;
  }

  return result;
}

uint64_t io_rings_resume(uint64_t a1)
{
  if (*(a1 + 712) != 1)
  {
    return 4294967274;
  }

  sub_1000B3BA0((a1 + 448));
  v2 = *(*(a1 + 704) + 24);
  if (v2 && (v3 = v2(), v3))
  {
    v4 = v3;
    sub_1000B3B28((a1 + 448));
  }

  else
  {
    v4 = 0;
    *(a1 + 712) = 0;
  }

  return v4;
}

uint64_t io_rings_cancel(uint64_t a1)
{
  if (*(a1 + 712) != 1)
  {
    return -16;
  }

  v2 = *(*(a1 + 704) + 8);
  if (v2 && (v3 = v2()) != 0)
  {
    if (v3 < 0)
    {
      return v3;
    }

    else
    {
      return -v3;
    }
  }

  else
  {
    *(a1 + 712) = 2;
    v6 = sub_1000B4CC0(a1 + 16);
    for (i = 0; (v6 & 0x100000000) != 0; v6 = sub_1000B4CC0(a1 + 16))
    {
      v7 = *(a1 + 112);
      if (!v7)
      {
        break;
      }

      v8 = v7 + 88 * v6;
      sub_1000B36E4(a1 + 272, *(v8 + 16), 0x1FFFFFFA7, 0);
      v9 = 0x2E8BA2E8BA2E8BA3 * ((v8 - *(a1 + 112)) >> 3);
      atomic_fetch_or((*(a1 + 128) + 8 * (v9 >> 6)), 1 << v9);
      ++i;
    }
  }

  return i;
}

uint64_t sub_1000B3628(uint64_t a1)
{
  v2 = sub_1000B4CC0(a1 + 16);
  if ((v2 & 0x100000000) != 0)
  {
    return *(a1 + 112) + 88 * v2;
  }

  else
  {
    return 0;
  }
}

void sub_1000B3674(uint64_t a1, unsigned int a2)
{
  v2 = 0;
  v3 = 0;
  sub_1000B4F58((a1 + 16 * a2), &v2);
  if (v3)
  {
    sub_10000367C(v3);
  }
}

void sub_1000B36B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000367C(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t io_rings_release(uint64_t result)
{
  if (result)
  {
    if (*(result + 712) == 2)
    {
      return sub_1000B30B0(result);
    }
  }

  return result;
}

uint64_t sub_1000B36E4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  __dmb(0xBu);
  result = sub_1000B4DD4(a1, a2, a3);
  if (result)
  {
    if (result == -28)
    {
      if (!atomic_fetch_add((a1 + 100), 1u))
      {
        sub_1000B4E8C(a1 + 104, 0, 4);
      }

      return 4294967268;
    }
  }

  else
  {

    return sub_1000B496C(a1, 1, a4);
  }

  return result;
}

void sub_1000B3834(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1000B381CLL);
}

uint64_t io_rings_return_status(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v8 = sub_1000B3D78(a1 + 144, a2);
  v9 = *(a2 + 2);
  v10 = *(a2 + 16);
  v11 = 0x2E8BA2E8BA2E8BA3 * ((a2 - *(a1 + 112)) >> 3);
  atomic_fetch_or((*(a1 + 128) + 8 * (v11 >> 6)), 1 << v11);
  if ((v9 & 4) != 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = v8;
  }

  return sub_1000B36E4(a1 + 272, v10, a3 | ((a4 | 1u) << 32), v12);
}

void sub_1000B391C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 >= 5)
  {
    v5 = 0;
    v6 = 0;
LABEL_6:
    io_rings_return_status(a1, a2, 0xFFFFFFFA, 0);
    goto LABEL_7;
  }

  sub_1000B51D4((a1 + 16 * v4 + 448), &v5);
  if (!v5)
  {
    goto LABEL_6;
  }

  if (!(*v5)())
  {
    (*(v5 + 8))();
  }

LABEL_7:
  if (v6)
  {
    sub_10000367C(v6);
  }
}

void sub_1000B39B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000367C(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000B39D0(uint64_t a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  if (a2 < 5)
  {
    sub_1000B51D4((a1 + 16 * a2 + 448), a3);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }
}

uint64_t sub_1000B39EC(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  if ((*(a3 + 1) & 0xFFFA) != 0)
  {
    return 4294967194;
  }

  v5 = *a3;
  v3 = 4294967194;
  if (v5 <= 2)
  {
    if (!*a3)
    {
      return 0;
    }

    if (v5 == 1)
    {
      v6 = *(a1 + 64);
    }

    else
    {
      if (v5 != 2)
      {
        return v3;
      }

      v6 = *(a1 + 80);
    }

LABEL_21:
    v7 = *(a3 + 12);
    v9 = *(a3 + 3);
    v8 = *(a3 + 4);
    v10 = *(a3 + 5);
    return v6();
  }

  if (*a3 <= 4u)
  {
    if (v5 == 3)
    {
      v6 = *(a1 + 72);
    }

    else
    {
      if (v5 != 4)
      {
        return v3;
      }

      v6 = *(a1 + 88);
    }

    goto LABEL_21;
  }

  if (v5 == 5)
  {
    if (*(a3 + 6) > 3u)
    {
      return v3;
    }

    return (*(a1 + 104))();
  }

  else
  {
    if (v5 != 6)
    {
      return v3;
    }

    return (*(a1 + 96))(a1, a2, *(a3 + 8), *(a3 + 3));
  }
}

uint64_t (**sub_1000B3AB4(uint64_t (**result)(uint64_t a1, unsigned __int8 *a2), uint64_t (*a2)(uint64_t a1, unsigned __int8 *a2)))(uint64_t a1, unsigned __int8 *a2)
{
  *result = sub_1000B4EE8;
  result[1] = nullsub_87;
  result[2] = sub_1000B4F3C;
  result[3] = nullsub_88;
  result[4] = nullsub_89;
  result[5] = nullsub_90;
  result[6] = sub_1000B4F50;
  result[7] = a2;
  return result;
}

void sub_1000B3B28(void *a1)
{
  v2 = 16;
  do
  {
    sub_1000B51D4(a1, &v3);
    if (v3)
    {
      (*(v3 + 24))();
    }

    if (v4)
    {
      sub_10000367C(v4);
    }

    a1 += 2;
    --v2;
  }

  while (v2);
}

void sub_1000B3B88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000367C(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000B3BA0(void *a1)
{
  v2 = 16;
  do
  {
    sub_1000B51D4(a1, &v3);
    if (v3)
    {
      (*(v3 + 32))();
    }

    if (v4)
    {
      sub_10000367C(v4);
    }

    a1 += 2;
    --v2;
  }

  while (v2);
}

void sub_1000B3C00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000367C(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000B3C20(void *a1)
{
  v2 = 16;
  do
  {
    sub_1000B51D4(a1, &v3);
    if (v3)
    {
      (*(v3 + 40))();
    }

    if (v4)
    {
      sub_10000367C(v4);
    }

    a1 += 2;
    --v2;
  }

  while (v2);
}

void sub_1000B3C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000367C(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000B3C98(uint64_t a1, uint64_t a2, int a3, int a4)
{
  std::mutex::lock(a1);
  v8 = *(a1 + 112);
  if (a3)
  {
    if (v8)
    {
      *(v8 + 4) = 1;
    }

    operator new();
  }

  if (a4 && v8)
  {
    *(v8 + 4) = 1;
  }

  atomic_fetch_add(v8, 1u);
  v9 = *(a1 + 112);
  v10[0] = a2;
  v10[1] = v9;
  sub_1000B5238((a1 + 64), v10);
  if (a4)
  {
    *(a1 + 112) = 0;
  }

  ++*(a1 + 104);
  std::mutex::unlock(a1);
}

uint64_t sub_1000B3D78(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  if (!*(a1 + 104))
  {
    return 1;
  }

  std::mutex::lock(a1);
  v3 = sub_1000B56F0((a1 + 64), &v6);
  if (!v3)
  {
    std::mutex::unlock(a1);
    return 1;
  }

  --*(a1 + 104);
  v4 = v3[3];
  sub_1000B57DC((a1 + 64), v3);
  std::mutex::unlock(a1);
  if (!v4)
  {
    return 1;
  }

  if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1 && *(v4 + 4) == 1)
  {
    operator delete();
  }

  return 0;
}

uint64_t di_plugin_register(char *a1, unsigned int *a2)
{
  v4 = sub_100071EC0();
  sub_100003410(__p, a1);
  v5 = sub_100072ACC(v4, __p, a2);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_1000B3ED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000B3EF4(uint64_t result)
{
  if (*(result + 248) == 1)
  {
    v1 = result;
    sub_1000B3F60(result + 192);
    std::mutex::~mutex((v1 + 128));
    v2 = *(v1 + 112);
    *(v1 + 112) = 0;
    if (v2)
    {
      operator delete[]();
    }

    result = sub_1000B3FAC(v1 + 56);
    *(v1 + 248) = 0;
  }

  return result;
}

uint64_t sub_1000B3F60(uint64_t a1)
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

uint64_t sub_1000B3FAC(uint64_t a1)
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

uint64_t sub_1000B409C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1002163A0;
  a2[1] = v2;
  return result;
}

uint64_t (**sub_1000B40C8(uint64_t a1))(void)
{
  result = *(*(a1 + 8) + 704);
  if (*result)
  {
    return (*result)();
  }

  return result;
}

uint64_t sub_1000B40E0(uint64_t a1, uint64_t a2)
{
  if (sub_100009720(a2, &off_100216410))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1000B412C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned int a6, uint64_t a7)
{
  v8 = a4;
  *&v10 = a2 + 88 * a4;
  *(&v10 + 1) = a5;
  v9 = sub_1000B41F0(a1, v10 + 4 * a5, a3 + 16 * a6 + 4, &v10, a5, a7);
  *(v9 + 96) = a2;
  sub_1000B430C((v9 + 104), v8);
}

uint64_t sub_1000B41F0(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, int a5, uint64_t a6)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = a3;
  *(a1 + 24) = *a4;
  *(a1 + 40) = a5;
  if ((a5 & (a5 - 1)) != 0)
  {
    v7 = 0;
    v8 = 2 * a5;
    do
    {
      v8 >>= 1;
      ++v7;
    }

    while (v8 != 1);
    a5 = 1 << v7;
  }

  *(a1 + 48) = 0;
  *(a1 + 44) = a5 - 1;
  sub_1000B4274(a1 + 56, a6);
  *(a1 + 88) = 1;
  return a1;
}

uint64_t sub_1000B4274(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000B43D4(uint64_t result)
{
  if (*(result + 136) == 1)
  {
    v1 = result;
    sub_1000B4418(result + 104);
    result = sub_1000B3FAC(v1 + 56);
    *(v1 + 136) = 0;
  }

  return result;
}

uint64_t sub_1000B4418(uint64_t a1)
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

uint64_t sub_1000B4508(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100216430;
  a2[1] = v2;
  return result;
}

uint64_t sub_1000B4534(uint64_t a1)
{
  result = *(a1 + 8);
  v2 = *(result + 432);
  if (v2)
  {
    return v2(result, *(result + 440));
  }

  return result;
}

uint64_t sub_1000B454C(uint64_t a1, uint64_t a2)
{
  if (sub_100009720(a2, &off_100216490))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000B4608(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1002164B0;
  a2[1] = v2;
  return result;
}

uint64_t sub_1000B4634(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  result = *(a1 + 8);
  v4 = *(result + 416);
  if (v4)
  {
    return v4(result, *(result + 424), *a2, a3);
  }

  return result;
}

uint64_t sub_1000B4654(uint64_t a1, uint64_t a2)
{
  if (sub_100009720(a2, &off_100216520))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000B46A0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  *&v12 = a3;
  *(&v12 + 1) = a6;
  v10 = sub_1000B41F0(a1, a3 + 16 * a6, a2 + 88 * a4 + 4 * a5 + 4, &v12, a6, a7);
  *(v10 + 96) = 1;
  *(v10 + 100) = 0;
  sub_1000B472C(v10 + 104, a8);
  return a1;
}

uint64_t sub_1000B472C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000B47C4(uint64_t a1)
{
  v2 = *(a1 + 704);
  *(a1 + 704) = 0;
  if (v2)
  {
    (*(v2 + 32))();
  }

  for (i = 696; i != 440; i -= 16)
  {
    v4 = *(a1 + i);
    if (v4)
    {
      sub_10000367C(v4);
    }
  }

  if (*(a1 + 408) == 1)
  {
    sub_1000B4418(a1 + 376);
    sub_1000B3FAC(a1 + 328);
  }

  if (*(a1 + 264) == 1)
  {
    sub_1000B3F60(a1 + 208);
    std::mutex::~mutex((a1 + 144));
    v5 = *(a1 + 128);
    *(a1 + 128) = 0;
    if (v5)
    {
      operator delete[]();
    }

    sub_1000B3FAC(a1 + 72);
  }

  return a1;
}

uint64_t sub_1000B48B4(uint64_t result)
{
  if (result)
  {
    sub_1000B490C((result + 48), 0);

    operator delete();
  }

  return result;
}

uint64_t *sub_1000B490C(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_100157D44((v2 + 16));

    operator delete();
  }

  return result;
}

uint64_t sub_1000B496C(uint64_t a1, int a2, int a3)
{
  v4 = *(a1 + 52);
  v5 = v4;
  atomic_compare_exchange_strong((a1 + 52), &v5, (v4 + 2 * a2) | a3);
  if (v5 != v4)
  {
    v6 = v5;
    do
    {
      atomic_compare_exchange_strong((a1 + 52), &v6, (v5 + 2 * a2) | a3);
      v7 = v6 == v5;
      v5 = v6;
    }

    while (!v7);
  }

  if (atomic_fetch_add((a1 + 48), -a2) == a2 && (atomic_exchange((a1 + 89), 1u) & 1) == 0)
  {
    while (1)
    {
      v9 = *(a1 + 52);
      if (atomic_load_explicit((a1 + 48), memory_order_acquire))
      {
        break;
      }

      v10 = v9;
      atomic_compare_exchange_strong((a1 + 52), &v10, 0);
      if (v10 == v9)
      {
        v11 = (v9 >> 1) | ((v9 & 1) << 32);
        goto LABEL_12;
      }
    }

    v11 = 0;
LABEL_12:
    v12 = HIDWORD(v11);
    if (v11)
    {
LABEL_13:
      __dmb(0xBu);
      v13 = v11 + atomic_fetch_add(*a1, v11);
      v14 = atomic_load(*(a1 + 16));
      if (v13 != v14 && (v12 & 1) != 0)
      {
        v15 = 1;
        atomic_compare_exchange_strong((a1 + 88), &v15, 0);
        if (v15 == 1)
        {
          v16 = *(a1 + 80);
          if (!v16)
          {
            sub_10002870C();
          }

          (*(*v16 + 48))(v16);
        }
      }

      while (1)
      {
        v17 = *(a1 + 52);
        if (atomic_load_explicit((a1 + 48), memory_order_acquire))
        {
          break;
        }

        v18 = v17;
        atomic_compare_exchange_strong((a1 + 52), &v18, 0);
        if (v18 == v17)
        {
          LODWORD(v11) = v17 >> 1;
          LOBYTE(v12) = v17 & 1;
          if (v17 > 1)
          {
            goto LABEL_13;
          }

          break;
        }
      }
    }

LABEL_21:
    atomic_store(0, (a1 + 89));
    __dmb(0xBu);
    if (*(a1 + 52))
    {
      while (2)
      {
        if ((atomic_exchange((a1 + 89), 1u) & 1) == 0)
        {
          while (1)
          {
            LODWORD(v12) = *(a1 + 52);
            if (atomic_load_explicit((a1 + 48), memory_order_acquire))
            {
              break;
            }

            v19 = v12;
            atomic_compare_exchange_strong((a1 + 52), &v19, 0);
            if (v19 == v12)
            {
              if (v12 > 1)
              {
                LODWORD(v11) = v12 >> 1;
                LOBYTE(v12) = v12 & 1;
                if (v11)
                {
                  goto LABEL_13;
                }

                goto LABEL_21;
              }

              break;
            }
          }

          atomic_store(0, (a1 + 89));
          __dmb(0xBu);
          if (*(a1 + 52) && !atomic_load_explicit((a1 + 48), memory_order_acquire))
          {
            continue;
          }
        }

        break;
      }
    }
  }

  return 0;
}

uint64_t sub_1000B4B5C(void *a1)
{
  v1 = *a1 + 63;
  if (v1 >= 0x40)
  {
    v3 = a1[1];
    v4 = &v3[v1 >> 6];
    do
    {
      if (atomic_load(v3))
      {
        while (1)
        {
          v6 = atomic_load(v3);
          if (!v6)
          {
            break;
          }

          v7 = __clz(__rbit64(v6));
          if ((atomic_fetch_and(v3, ~(1 << v7)) & (1 << v7)) != 0)
          {
            return v7 + 8 * (v3 - a1[1]);
          }
        }
      }

      ++v3;
    }

    while (v3 != v4);
  }

  return -1;
}

uint64_t sub_1000B4BD0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  while (1)
  {
    v2 = atomic_load(*result);
    v3 = atomic_load(*(result + 16));
    if (v2 == v3)
    {
      if (atomic_exchange((result + 88), 1u))
      {
        break;
      }

      v4 = atomic_load(*result);
      v5 = atomic_load(*(result + 16));
      if (v4 == v5)
      {
        break;
      }

      v6 = 1;
      atomic_compare_exchange_strong((result + 88), &v6, 0);
      if (v6 != 1)
      {
        break;
      }
    }

    v7 = atomic_load(*(result + 16));
    v8 = atomic_load(*result);
    if (v7 != v8)
    {
      v9 = v7;
      atomic_compare_exchange_strong(*(result + 16), &v9, v7 + 1);
      if (v9 == v7)
      {
        goto LABEL_11;
      }

      while (1)
      {
        LODWORD(v7) = v9;
        v8 = atomic_load(*result);
        if (v9 == v8)
        {
          break;
        }

        v10 = v9;
        atomic_compare_exchange_strong(*(result + 16), &v10, v9 + 1);
        v11 = v10 == v9;
        v9 = v10;
        if (v11)
        {
          goto LABEL_11;
        }
      }
    }

    v8 = v7;
LABEL_11:
    if (v7 != v8)
    {
      *a2 = *(*(result + 24) + 16 * (*(result + 44) & v7));
      v12 = 1;
      goto LABEL_14;
    }
  }

  v12 = 0;
  *a2 = 0;
LABEL_14:
  *(a2 + 16) = v12;
  return result;
}

uint64_t sub_1000B4CC0(uint64_t a1)
{
  v1 = atomic_load(*a1);
  v2 = atomic_load(*(a1 + 16));
  if (v1 == v2 && ((atomic_exchange((a1 + 88), 1u) & 1) != 0 || (v3 = atomic_load(*a1), v4 = atomic_load(*(a1 + 16)), v3 == v4) || (v5 = 1, atomic_compare_exchange_strong((a1 + 88), &v5, 0), v5 != 1)))
  {
    v12 = 0;
    LOBYTE(a1) = 0;
    v11 = 0;
  }

  else
  {
    v6 = atomic_load(*(a1 + 16));
    v7 = atomic_load(*a1);
    if (v6 != v7)
    {
      v8 = v6;
      atomic_compare_exchange_strong(*(a1 + 16), &v8, v6 + 1);
      if (v8 == v6)
      {
LABEL_10:
        if (v6 != v7)
        {
          LODWORD(a1) = *(*(a1 + 24) + 4 * (*(a1 + 44) & v6));
          v11 = a1 & 0xFFFFFF00;
          v12 = &_mh_execute_header;
          return v12 | v11 | a1;
        }
      }

      else
      {
        while (1)
        {
          v7 = atomic_load(*a1);
          if (v8 == v7)
          {
            break;
          }

          LODWORD(v6) = v8;
          v9 = v8;
          atomic_compare_exchange_strong(*(a1 + 16), &v9, v8 + 1);
          v10 = v9 == v8;
          v8 = v9;
          if (v10)
          {
            goto LABEL_10;
          }
        }
      }
    }

    a1 = sub_1000B4CC0();
    v11 = a1 & 0xFFFFFF00;
    v12 = a1 & 0xFF00000000;
  }

  return v12 | v11 | a1;
}

uint64_t sub_1000B4DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  atomic_fetch_add((a1 + 48), 1u);
  v3 = atomic_load((a1 + 8));
  v4 = atomic_load(*(a1 + 16));
  v5 = v4 - v3;
  while (v5 != 1 && v5 != 1 - *(a1 + 40))
  {
    v6 = v3;
    atomic_compare_exchange_strong((a1 + 8), &v6, v3 + 1);
    if (v6 == v3)
    {
      v8 = 0;
      v10 = (*(a1 + 24) + 16 * (*(a1 + 44) & v3));
      *v10 = a2;
      v10[1] = a3;
      return v8;
    }

    v7 = atomic_load(*(a1 + 16));
    v5 = v7 - v6;
    v3 = v6;
  }

  if (atomic_fetch_add((a1 + 48), 0xFFFFFFFF) == 1)
  {
    sub_1000B496C(a1, 0, 1);
  }

  return 4294967268;
}

uint64_t sub_1000B4E8C(uint64_t a1, int a2, int a3)
{
  v6 = a3;
  v5 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_10002870C();
  }

  return (*(*v3 + 48))(v3, &v5, &v6);
}

uint64_t sub_1000B4EE8(uint64_t a1, unsigned __int8 *a2)
{
  v4 = sub_1000B39EC(a1, 0, a2);
  v5 = *(a1 + 56);

  return io_rings_return_status(v5, a2, v4, 0);
}

void sub_1000B4F58(uint64_t *a1, uint64_t *a2)
{
  sp_mut = std::__get_sp_mut(a1);
  std::__sp_mut::lock(sp_mut);
  v5 = *a1;
  *a1 = *a2;
  *a2 = v5;
  v6 = a1[1];
  a1[1] = a2[1];
  a2[1] = v6;

  std::__sp_mut::unlock(sp_mut);
}

BOOL sub_1000B4FC4(uint64_t *a1, void *a2, uint64_t *a3)
{
  sp_mut = std::__get_sp_mut(a1);
  std::__sp_mut::lock(sp_mut);
  v7 = a1[1];
  v8 = a2[1];
  if (v7 == v8)
  {
    *a1 = 0;
    a1[1] = 0;
    v12 = *a3;
    v13 = a3[1];
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v14 = a1[1];
      *a1 = v12;
      a1[1] = v13;
      if (v14)
      {
        sub_10000367C(v14);
      }
    }

    else
    {
      *a1 = v12;
      a1[1] = 0;
    }

    v15 = v7;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    v9 = *a1;
    v10 = a1[1];
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      v11 = a2[1];
      *a2 = v9;
      a2[1] = v10;
      if (v11)
      {
        sub_10000367C(v11);
      }
    }

    else
    {
      *a2 = v9;
      a2[1] = 0;
    }

    v15 = v8;
  }

  std::__sp_mut::unlock(sp_mut);
  if (v15)
  {
    sub_10000367C(v15);
  }

  return v7 == v8;
}

void sub_1000B5108(void *a1)
{
  __cxa_begin_catch(a1);
  (*(v1 + 48))(v1);
  __cxa_rethrow();
}

void sub_1000B5138(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000B5194(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1000B51D4(void *a1@<X0>, void *a2@<X8>)
{
  sp_mut = std::__get_sp_mut(a1);
  std::__sp_mut::lock(sp_mut);
  v5 = a1[1];
  *a2 = *a1;
  a2[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::__sp_mut::unlock(sp_mut);
}

void *sub_1000B5238(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_1000B549C(uint64_t a1, size_t __n)
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

      sub_1000B558C(a1, prime);
    }
  }
}

void sub_1000B558C(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_100038E68();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *sub_1000B56F0(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
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

uint64_t sub_1000B57DC(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_1000B5820(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *sub_1000B5820@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
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

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
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

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t sub_1000B595C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 40);
  *a1 = &off_1002165E8;
  *(a1 + 8) = v4;
  v6 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  *a1 = off_1002165A0;
  sub_100124E14(a1 + 48, a2 + 48);
  sub_100124E14(a1 + 96, a2 + 96);
  v7 = *(a2 + 144);
  v8 = *(a2 + 152);
  *(a1 + 144) = v7;
  *(a1 + 152) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    v7 = *(a1 + 144);
  }

  v10 = *v7;
  v9 = v7[1];
  *(a1 + 160) = v10;
  *(a1 + 168) = v9;
  return a1;
}

void sub_1000B5A0C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  *(v1 + 48) = 0;
  if (v3)
  {
    sub_1001A37E0(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000B5A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = &off_1002165E8;
  *(a1 + 8) = a2;
  v8 = *(a3 + 16);
  *(a1 + 16) = *a3;
  *(a1 + 32) = v8;
  *(a1 + 40) = a4;
  *a1 = off_1002165A0;
  sub_100124E14(a1 + 48, a5);
  sub_100124E14(a1 + 96, a6);
  sub_1000B667C();
}

void sub_1000B5B08(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 96);
  *(v1 + 96) = 0;
  if (v3)
  {
    sub_1001A3598(v3);
  }

  v4 = *(v1 + 48);
  *(v1 + 48) = 0;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1000B5B5C@<W0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v7 = *(a1 + 160);
  v6 = *(a1 + 168);
  while (v7 != v6 && *(v7 + 8) <= a2)
  {
    v7 += 32;
    *(a1 + 160) = v7;
  }

  v8 = (a1 + 80);
  while (sub_100124F1C((a1 + 48), (a1 + 96)))
  {
    if (*v8 == 3 || *(a1 + 64) > v3)
    {
      break;
    }

    sub_100125224((a1 + 48), v20);
    v9 = v20[0];
    v20[0] = 0;
    if (v9)
    {
      (*(*v9 + 24))(v9);
    }
  }

  result = sub_100124F1C((a1 + 48), (a1 + 96));
  if (result && *v8 == 3)
  {
    v11 = *(a1 + 64);
    if (*(a1 + 56) > v3)
    {
      v3 = *(a1 + 56);
    }

    v12 = 3;
    goto LABEL_44;
  }

  result = sub_100124E80((a1 + 48), (a1 + 96));
  v13 = *(a1 + 160);
  v14 = *(a1 + 168);
  if (result && v13 == v14)
  {
    v12 = 0;
    v11 = *(a1 + 24);
    goto LABEL_44;
  }

  if (v13 == v14)
  {
    v11 = *(a1 + 56);
    if (v11 <= v3)
    {
      v11 = *(a1 + 64);
      v12 = *(a1 + 80);
      goto LABEL_44;
    }

    goto LABEL_39;
  }

  result = sub_100124E80((a1 + 48), (a1 + 96));
  if (result)
  {
    v15 = *(a1 + 160);
    v11 = *v15;
    if (*v15 <= v3)
    {
      v11 = v15[1];
      v12 = *(v15 + 6);
      goto LABEL_44;
    }

LABEL_39:
    v12 = 0;
    goto LABEL_44;
  }

  v16 = *(a1 + 56);
  v17 = *(a1 + 160);
  v18 = *v17;
  if (*v17 >= v16)
  {
    v11 = *(a1 + 56);
  }

  else
  {
    v11 = *v17;
  }

  if (v11 <= v3)
  {
    v11 = v3;
  }

  if (v11 < v16 && v11 < v18)
  {
    goto LABEL_39;
  }

  if (v11 >= v18)
  {
    v18 = v17[1];
    v8 = (v17 + 3);
  }

  else if (v18 >= *(a1 + 64))
  {
    v18 = *(a1 + 64);
  }

  v12 = *v8;
  v3 = v11;
  if (*(a1 + 24) >= v18)
  {
    v11 = v18;
  }

  else
  {
    v11 = *(a1 + 24);
  }

LABEL_44:
  *a3 = v3;
  *(a3 + 8) = v11;
  *(a3 + 16) = 2;
  *(a3 + 24) = v12;
  return result;
}

BOOL sub_1000B5D4C@<W0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000B5B5C(a1, *(a1 + 40), v9);
  v5 = *&v9[24];
  v6 = *&v9[8];
  v7 = *v9;
  do
  {
    if (v6 >= *(a1 + 24))
    {
      break;
    }

    if (v5 == 3)
    {
      break;
    }

    if (v5 != *&v9[24])
    {
      break;
    }

    v6 = *&v9[8];
    result = sub_1000B5B5C(a1, *&v9[8], v8);
    *v9 = v8[0];
    *&v9[12] = *(v8 + 12);
  }

  while (*&v8[0] == v6);
  *a2 = v7;
  *(a2 + 8) = v6;
  *(a2 + 16) = 2;
  *(a2 + 24) = v5;
  return result;
}

uint64_t sub_1000B5DFC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  sub_100070728(v8, a2);
  sub_1000B5EA0(a4, a1, v8, a3);
  return sub_10000B95C(v8);
}

void sub_1000B5E84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000B95C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B5EA0(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4)
{
  v7 = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = v7;
  v8 = *(a2 + 4);
  *(a2 + 4) = 0;
  *(a1 + 32) = v8;
  v9 = *(a2 + 5);
  *(a1 + 48) = *(a2 + 12);
  *(a1 + 40) = v9;
  sub_10000B7C4(a1 + 56, a2 + 56);
  sub_1000706B4((a1 + 56), a3);
  v10 = *a4;
  *(a1 + 24) = *(a4 + 16);
  *(a1 + 8) = v10;
  return a1;
}

void sub_1000B5F3C(uint64_t a1)
{
  sub_10005D16C(a1, v3);
  sub_10005D2EC(a1, v2);
  operator new();
}

void sub_1000B6288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_10000B95C(v27 - 88);
  sub_1000B6374(&a9);
  sub_1000B6374(&a26);
  sub_10000367C(v26);
  v29 = *(v27 - 184);
  *(v27 - 184) = 0;
  if (v29)
  {
    (*(*v29 + 24))(v29);
  }

  v30 = *(v27 - 136);
  *(v27 - 136) = 0;
  if (v30)
  {
    (*(*v30 + 24))(v30);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1000B6374(uint64_t *a1)
{
  v2 = a1[13];
  if (v2)
  {
    sub_10000367C(v2);
  }

  v3 = a1[6];
  a1[6] = 0;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  return a1;
}

void *sub_1000B6488(void *a1)
{
  v2 = a1[19];
  if (v2)
  {
    sub_10000367C(v2);
  }

  v3 = a1[12];
  a1[12] = 0;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v4 = a1[6];
  a1[6] = 0;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  return a1;
}

void sub_1000B6518(void *a1)
{
  v2 = a1[19];
  if (v2)
  {
    sub_10000367C(v2);
  }

  v3 = a1[12];
  a1[12] = 0;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v4 = a1[6];
  a1[6] = 0;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  operator delete();
}

void *sub_1000B65C8(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = v1[19];
    if (v2)
    {
      sub_10000367C(v2);
    }

    v3 = v1[12];
    v1[12] = 0;
    if (v3)
    {
      (*(*v3 + 24))(v3);
    }

    v4 = v1[6];
    v1[6] = 0;
    if (v4)
    {
      (*(*v4 + 24))(v4);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_1000B66E8(uint64_t a1, uint64_t *a2)
{
  *(a1 + 8) = 0u;
  *a1 = off_100216618;
  *(a1 + 32) = 0u;
  *(a1 + 24) = 0;
  sub_1000B67F0(a1 + 24, *a2, a2[1], (a2[1] - *a2) >> 5);
  return a1;
}

void sub_1000B6780(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100216618;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1000B67D4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

uint64_t sub_1000B67F0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100070564(result, a4);
  }

  return result;
}

void sub_1000B6850(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000B686C(void *a1)
{
  *a1 = off_100216668;
  v2 = a1[14];
  if (v2)
  {
    sub_10000367C(v2);
  }

  v3 = a1[7];
  a1[7] = 0;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  return a1;
}

void sub_1000B6918(void *a1)
{
  *a1 = off_100216668;
  v2 = a1[14];
  if (v2)
  {
    sub_10000367C(v2);
  }

  v3 = a1[7];
  a1[7] = 0;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  operator delete();
}

void sub_1000B6A7C(_Unwind_Exception *a1)
{
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    sub_1001A37E0(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B6AA8(uint64_t a1, void *a2)
{
  *a2 = off_100216668;
  v4 = (a2 + 7);
  sub_100124E14((a2 + 1), a1 + 8);
  result = sub_100124E14(v4, a1 + 56);
  v6 = *(a1 + 112);
  a2[13] = *(a1 + 104);
  a2[14] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1000B6B24(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (v3)
  {
    sub_1001A37E0(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000B6B40(void *a1)
{
  v2 = a1[14];
  if (v2)
  {
    sub_10000367C(v2);
  }

  v3 = a1[7];
  a1[7] = 0;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  result = a1[1];
  a1[1] = 0;
  if (result)
  {
    v5 = *(*result + 24);

    return v5();
  }

  return result;
}

void sub_1000B6BE4(void *__p)
{
  v2 = __p[14];
  if (v2)
  {
    sub_10000367C(v2);
  }

  v3 = __p[7];
  __p[7] = 0;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v4 = __p[1];
  __p[1] = 0;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  operator delete(__p);
}

uint64_t sub_1000B6D3C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1000B7104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B7130(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000B7148(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  if (!v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  [*(*(*(a1 + 40) + 8) + 40) signalCommandCompletedWithXpcError:v6];
}

const void **sub_1000B725C(const __CFString *a1, void *a2, __CFDictionary *a3)
{
  TypeID = CFStringGetTypeID();
  if (a1 && CFGetTypeID(a1) != TypeID)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    CFGetTypeID(a1);
    goto LABEL_20;
  }

  v7 = sub_10014CB00(a1);
  if (v7 == 1651272568 || v7 == 1970628964 || v7 == 1886155636)
  {
    v10 = __cxa_allocate_exception(0x40uLL);
    v11 = "User data contains reserved key(s)";
LABEL_16:
    v12 = sub_100001860(v10, v11, 0x16u);
    v14 = sub_1000018C8;
    goto LABEL_17;
  }

  v8 = CFDataGetTypeID();
  if (!a2)
  {
    v10 = __cxa_allocate_exception(0x40uLL);
    v11 = "Invalid user data content";
    goto LABEL_16;
  }

  if (CFGetTypeID(a2) != v8)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    CFGetTypeID(a2);
LABEL_20:
    v12 = sub_100008320(exception);
    v14 = sub_100008324;
LABEL_17:
    __cxa_throw(v12, v13, v14);
  }

  sub_100003410(v20, "");
  LOBYTE(__p[0]) = 0;
  v19 = 0;
  sub_1000BA0DC(&v16, 80);
  sub_100145E64(v20, __p, 0, &v16, a2, &v22);
  if (v19 == 1 && v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  __p[0] = v22;
  v20[0] = CFArrayCreate(kCFAllocatorDefault, __p, 1, &kCFTypeArrayCallBacks);
  CFDictionarySetValue(a3, a1, v20[0]);
  sub_1000BB260(v20);
  return sub_10000C8E0(&v22);
}

uint64_t sub_1000B74C8(uint64_t a1)
{
  v1 = *(a1 + 284);
  v2 = *(a1 + 8);
  v3 = *(a1 + 280);
  if (v3)
  {
    v20 = *(a1 + 96);
    LOBYTE(v3) = 1;
  }

  else
  {
    LOBYTE(v20) = 0;
  }

  v4 = *(v2 + 72);
  v26 = *(v4 + 44);
  v4 = (v4 + 360);
  v5 = v4[5];
  v31 = v4[4];
  v32 = v5;
  v6 = v4[7];
  v33 = v4[6];
  v34 = v6;
  v7 = v4[1];
  v27 = *v4;
  v28 = v7;
  v8 = v4[3];
  v29 = v4[2];
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  v11 = v1 == 0;
  v21 = v3;
  v30 = v8;
  *&v25 = sub_10013EFB0(&v26);
  *(&v25 + 1) = v12;
  if (v11)
  {
    if ((v21 & 1) == 0)
    {
      return 1;
    }

LABEL_29:
    v18 = sub_1001413E8((*(v2 + 72) + 80), &v20);
LABEL_30:
    sub_100003410(__p, "Data Fork");
    sub_10014452C(v2, __p, &v20, (*(v2 + 72) + 80));
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }

    return v18;
  }

  v13 = *(v2 + 32);
  if (v13 == (v2 + 40) || v9 == v10)
  {
    goto LABEL_21;
  }

  v14 = 1;
  do
  {
    v24 = *v9;
    v14 = v14 && sub_1001413E8(v13 + 15, &v24);
    sub_100003410(__p, "BLX");
    sub_10014452C(v2, __p, &v24, v13 + 60);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }

    v25 = *sub_1000BB294(&v25, &v24);
    v15 = v13[1];
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
        v16 = v13[2];
        v17 = *v16 == v13;
        v13 = v16;
      }

      while (!v17);
    }

    if (v16 == (v2 + 40))
    {
      break;
    }

    v9 = (v9 + 184);
    v13 = v16;
  }

  while (v9 != v10);
  if (v14)
  {
LABEL_21:
    v18 = sub_1001413E8(&v26, &v25);
  }

  else
  {
    v18 = 0;
  }

  sub_100003410(__p, "Master checksum");
  sub_10014452C(v2, __p, &v25, &v26);
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (v21)
  {
    if (!v18)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  return v18;
}

void sub_1000B7744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000B7770(uint64_t a1)
{
  v4 = 0;
  v3 = &v4;
  v1 = *(a1 + 12);
  if (v1 == -1)
  {
    sub_100036CC4();
  }

  v5 = &v3;
  (off_1002168C0[v1])(&v5, a1 + 4);
  return v4;
}

uint64_t sub_1000B77D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = (*(*a2 + 24))(a2);
  v5 = sub_10014451C(*(a1 + 8));
  *(a1 + 56) = v6;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v7 = *(a3 + 72);
  v8 = *(a1 + 16) * *(a3 + 80);
  v11[0] = 0;
  v11[1] = v8;
  v12 = 2;
  sub_1000B78E8((a1 + 40), (a1 + 56), v11, (v7 + 80), a1 + 96);
  if (sub_1000B7770(a1 + 96))
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 284) = v9;
  *(a1 + 280) = sub_1000B7770(a1 + 96) ^ 1;
  return a1;
}

void sub_1000B78C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000BA56C(va);
  _Unwind_Resume(a1);
}

void sub_1000B78E8(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, unsigned int *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = sub_10013EFB0(a4);
  *v12 = 850045863;
  v14[0] = 0;
  v14[1] = 0;
  memset(&v12[8], 0, 60);
  v13 = v14;
  v15 = *a1;
  v16 = v15;
  v17 = *a2;
  v19 = 0;
  v11 = v15;
  if (v15 != v17)
  {
    v11 = *(v15 + 32);
    if ((*(v15 + 48) & 2) == 0)
    {
      ++v11;
    }

    v18 = v11;
  }

  v20[0] = v9;
  v20[1] = v10;
  memset(&v21[8], 0, 60);
  v23[0] = 0;
  v23[1] = 0;
  *v21 = 850045863;
  v22 = v23;
  v24 = *a1;
  v25 = v24;
  v26 = *a2;
  v27 = v11;
  v28 = 0;
  v29 = 0;
  sub_1000BB414(a5, v20, a3);
  sub_1000BA50C(&v22, v23[0]);
  std::mutex::~mutex(v21);
  sub_1000BA50C(&v13, v14[0]);
  std::mutex::~mutex(v12);
}

void sub_1000B7A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_1000B7A6C(&a29);
  sub_1000BA4CC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B7A6C(uint64_t a1)
{
  sub_1000BA50C(a1 + 88, *(a1 + 96));
  std::mutex::~mutex((a1 + 16));
  return a1;
}

uint64_t sub_1000B7AA4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(sub_1000B77D0(a1, a2, a3) + 284) = 4 * (a4 & 1);
  if ((a4 & 2) != 0)
  {
    v6 = sub_1000B7770(a1 + 96) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 280) = v6;
  return a1;
}

uint64_t sub_1000B7B08(uint64_t a1)
{
  sub_1000BA50C(a1 + 184, *(a1 + 192));
  std::mutex::~mutex((a1 + 112));
  v3 = (a1 + 72);
  sub_1000BA56C(&v3);
  return a1;
}

uint64_t sub_1000B7B58(uint64_t a1, void *a2)
{
  v2 = (a2 + 1);
  v3 = *a2;
  if (*a2 == a2 + 1)
  {
    return 0;
  }

  LODWORD(v5) = 0;
  do
  {
    sub_1000B78E8((a1 + 40), (a1 + 56), (v3 + 8), v3 + 15, &v16);
    v6 = *(a1 + 80);
    if (v6 >= *(a1 + 88))
    {
      v10 = sub_1000BA624((a1 + 72), &v16);
    }

    else
    {
      *v6 = v16;
      *(v6 + 24) = 0u;
      *(v6 + 40) = 0u;
      *(v6 + 56) = 0u;
      *(v6 + 72) = 0;
      v7 = v21;
      *(v6 + 88) = v19;
      v8 = v20;
      *(v6 + 96) = v20;
      v9 = v6 + 96;
      *(v6 + 80) = v18;
      *(v6 + 16) = 850045863;
      *(v6 + 104) = v7;
      if (v7)
      {
        v8[2] = v9;
        v19 = &v20;
        v20 = 0;
        v21 = 0;
      }

      else
      {
        *(v6 + 88) = v9;
      }

      *(v6 + 112) = v22;
      *(v6 + 128) = v23;
      *(v6 + 144) = v24;
      *(v6 + 160) = v25;
      *(v6 + 168) = 0;
      *(v6 + 176) = v26;
      v10 = v6 + 184;
      *(a1 + 80) = v6 + 184;
    }

    *(a1 + 80) = v10;
    sub_1000BA50C(&v19, v20);
    std::mutex::~mutex(&v17);
    v11 = v3[15];
    v12 = v11 == 10 || v11 == 0;
    if (v12)
    {
      v5 = v5;
    }

    else
    {
      v5 = 2;
    }

    v13 = *(v3 + 1);
    if (v13)
    {
      do
      {
        v14 = v13;
        v13 = *v13;
      }

      while (v13);
    }

    else
    {
      do
      {
        v14 = *(v3 + 2);
        v12 = *v14 == v3;
        v3 = v14;
      }

      while (!v12);
    }

    v3 = v14;
  }

  while (v14 != v2);
  return v5;
}

uint64_t sub_1000B7D40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W3>, uint64_t a4@<X8>)
{
  v14 = a2;
  result = sub_1000BB5DC(a4, a3);
  if (a3)
  {
    v7 = (*(**a1 + 144))();
    v13 = v7;
    v12 = 0uLL;
    if ((sub_1000B80AC(*a1) & 1) == 0)
    {
      v8 = *(v7 + 48);
      v10 = *(v7 + 40);
      v11 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (*(v7 + 16) != v7 + 24)
      {
        v9 = 1;
        sub_1000BB810();
      }

      *(v7 + 56) = 0;
      if (v11)
      {
        sub_10000367C(v11);
      }
    }

    sub_1000B81CC();
  }

  return result;
}

uint64_t sub_1000B80AC(uint64_t a1)
{
  v1 = *(a1 + 168);
  v2 = (a1 + 176);
  if (v1 == (a1 + 176))
  {
    return 1;
  }

  do
  {
    sub_10019A824((v1 + 5), &v10);
    v3 = v1[5];
    v4 = v10;
    v5 = v3 == v10;
    if (v11)
    {
      sub_10000367C(v11);
    }

    if (v3 != v4)
    {
      break;
    }

    v6 = v1[1];
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
        v7 = v1[2];
        v8 = *v7 == v1;
        v1 = v7;
      }

      while (!v8);
    }

    v1 = v7;
  }

  while (v7 != v2);
  return v5;
}

void sub_1000B8160(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v4 = sub_100058898(a1 + 16, a2);
  v6 = *a3;
  v5 = a3[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = v4[6];
  v4[5] = v6;
  v4[6] = v5;
  if (v7)
  {
    sub_10000367C(v7);
  }
}

uint64_t sub_1000B82E0(int32x2_t *a1, uint64_t a2)
{
  v4 = sub_10003B0B0();
  v32 = (*(**a1 + 24))();
  v5 = (*(**a1 + 80))(v44);
  if (v44[0] <= v4[2] / v32 * v32)
  {
    v6 = v4[2] / v32 * v32;
  }

  else
  {
    v6 = v44[0];
  }

  v7 = *(v4 + 2);
  if (v7 == 1)
  {
    v8 = (*v4)(v5);
  }

  else
  {
    if (v7)
    {
      sub_100036CC4();
    }

    v8 = *v4;
  }

  v9 = v4[3] / v6;
  if (v8 < v9)
  {
    LODWORD(v9) = v8;
  }

  if (v9 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  (*(**a1 + 80))(v44);
  v31 = v45 + v6;
  sub_1001556A8(v44, v45 + v6, 0, v10);
  v11 = a1[1];
  v12 = sub_10014451C(v11);
  v30 = v13;
  v14 = v12;
  if (a1[35].i32[1])
  {
    v15 = sub_1000B7B58(a1, (v11 + 32));
    a1[35].i32[1] = v15;
  }

  else
  {
    v15 = 0;
  }

  v16 = a1[35].i32[0];
  if (sub_1000B80AC(*a1))
  {
    a1[35] = vbic_s8(0x200000002, vceqz_s32(a1[35]));
    v17 = 2;
  }

  else
  {
    v17 = v16 | v15;
  }

  sub_1000B7D40(a1, v31, v10, v43);
  sub_100046AE0(a2, v10, v42);
  v18 = a1[9];
  v41 = 0;
  v19 = *(v11 + 32);
  if (v19 != (v11 + 40) && v14 != v30)
  {
    while ((v14[6] & 1) + v14[5] - 1 > (v19[6] & 1) + v19[5] - 1)
    {
LABEL_22:
      v20 = v19[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v19[2];
          v25 = *v21 == v19;
          v19 = v21;
        }

        while (!v25);
      }

      if (v21 != (v11 + 40))
      {
        *&v18 += 184;
        v19 = v21;
        if (v14 != v30)
        {
          continue;
        }
      }

      goto LABEL_52;
    }

    v22 = v14;
    while (1)
    {
      v37 = *(v19 + 2);
      v38 = v19[6];
      sub_10006D5EC(&v37, (v22 + 4), v39);
      v23 = v39[0];
      if ((v40 & 2) == 0)
      {
        v23 = v39[0] + 1;
      }

      if (v23 <= (v40 & 1) + v39[1] - 1)
      {
        break;
      }

      v24 = v22[1];
      if (v24)
      {
        do
        {
          v14 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v14 = v22[2];
          v25 = *v14 == v22;
          v22 = v14;
        }

        while (!v25);
      }

      v25 = (v14[6] & 1) + v14[5] - 1 > (v19[6] & 1) + v19[5] - 1 || v14 == v30;
      v22 = v14;
      if (v25)
      {
        goto LABEL_22;
      }
    }

    if (!atomic_load_explicit(&v41, memory_order_acquire))
    {
      v34 = v23;
      v35 = v23 + (v32 + v6 - 1) / v32;
      v36 = 2;
      sub_10006D5EC(&v34, v39, &v37);
      if (v17 == 1)
      {
        v34 = 0;
        v35 = 0;
        sub_1000B88B0(v43, &v33);
      }

      sub_100155758(v44, &v34);
    }

    v26 = a1[9];
    for (i = a1[10]; *&v26 != *&i; *&v26 += 184)
    {
      *(*&v26 + 176) = 1;
      sub_1000BB9B8(*&v26 + 16);
    }

    a1[34].i8[0] = 1;
    sub_1000BB9B8(&a1[14]);
  }

LABEL_52:
  v28 = atomic_load(&v41);
  sub_100046A5C(v42);
  sub_1000BB73C(v43);
  sub_100155754(v44);
  return v28;
}

void sub_1000B881C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  sub_100046A5C(&a44);
  sub_1000BB73C(&a62);
  sub_100155754(&STACK[0x240]);
  _Unwind_Resume(a1);
}

void sub_1000B88B0(uint64_t a1@<X0>, void *a2@<X8>)
{
  __lk.__m_ = (a1 + 32);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 32));
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (*(a1 + 144) != 1 || v5 != v4)
  {
    while (v5 == v4)
    {
      std::condition_variable::wait((a1 + 96), &__lk);
      v5 = *(a1 + 8);
      v4 = *(a1 + 16);
    }

    v7 = *(v4 - 8);
    *(a1 + 16) = v4 - 8;
    sub_1000BBA14(a2, v7);
  }

  sub_1000B81CC();
}

void sub_1000B89A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, std::__shared_weak_count *a11, uint64_t a12, std::mutex *a13, char a14)
{
  if (a11)
  {
    sub_10000367C(a11);
  }

  sub_1001A3804(&a10, &a12);
  std::mutex::unlock(a13);
  _Unwind_Resume(a1);
}

void sub_1000B89DC(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = *(a1 + 64);
  v6 = (*(a1 + 48) - v3 + (v2 & 1) + (((v2 >> 1) & 1) - 1)) * v5;
  if ((v2 & 2) != 0)
  {
    v7 = *(a1 + 40);
  }

  else
  {
    v7 = v3 + 1;
  }

  v8 = v7 * v5;
  v10 = *(a1 + 80);
  v9 = *(a1 + 88);
  v47 = *(a1 + 72);
  v48 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v45 = v6;
  v49 = v6;
  v50 = v8;
  v51 = v9;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v11 = *(a1 + 96);
  sub_100025704(&v47, &v61);
  sub_1000246F4(v67, &v58);
  sub_100024448(v67, v55);
  v12 = sub_10000247C(*v11);
  v14 = v13;
  if (v57)
  {
    sub_10000367C(v57);
  }

  if (v56)
  {
    sub_10000367C(v56);
  }

  if (v60)
  {
    sub_10000367C(v60);
  }

  if (*(&v58 + 1))
  {
    sub_10000367C(*(&v58 + 1));
  }

  sub_1000036E8(&v61);
  if ((v12 & 0x8000000000000000) == 0 || !v12)
  {
    v15 = v4;
    v17 = *(a1 + 72);
    v16 = *(a1 + 80);
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v44 = v16;
    v18 = 0;
    v19 = *(a1 + 64);
    v20 = v50;
    if (v49 <= v19)
    {
      v21 = *(a1 + 64);
    }

    else
    {
      v21 = v49;
    }

    if (v49)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    if (*(a1 + 128))
    {
      v46 = 0;
      v23 = 0;
      if (v8 == v14)
      {
        v24 = *(a1 + 96);
        sub_100026638(&v61, *(v24 + 8) + 64);
        if (v62)
        {
          sub_10000367C(v62);
        }

        v18 = v61;
        v25 = v62;
        if (v62)
        {
          atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v46 = v25;
        sub_100026638(&v61, *(v24 + 8) + 64);
        v23 = v63;
        if (v62)
        {
          sub_10000367C(v62);
        }
      }
    }

    else
    {
      v46 = 0;
      v23 = 0;
    }

    v26 = v17 + v8 - v14;
    v27 = v20 / v19;
    v28 = v19 + v20 + v22 - 1;
    v29 = v15;
    v30 = *(v15 + 284);
    v31 = v28 / v19;
    if (v30 == 1)
    {
      v32 = v44;
      v33 = v45;
      if (!v23)
      {
        goto LABEL_57;
      }

      v34 = *(a1 + 120);
      v35 = v46;
      if (!v46)
      {
        v36 = v18;
        goto LABEL_46;
      }

      v36 = v18;
    }

    else
    {
      v32 = v44;
      v33 = v45;
      if (v30 != 2 || !v45)
      {
        goto LABEL_57;
      }

      v34 = *(a1 + 120);
      if (!v44)
      {
        v35 = 0;
        v36 = v26;
        goto LABEL_46;
      }

      v35 = v44;
      v36 = v26;
    }

    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_46:
    v37 = *(v29 + 284);
    if (v37 == 2)
    {
      v38 = v33;
    }

    else if (v37 == 1)
    {
      v38 = v23;
    }

    else
    {
      v38 = 0;
    }

    v61 = v27;
    v62 = v31;
    LOBYTE(v63) = 2;
    v64 = v36;
    v65 = v35;
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v66 = v38;
    sub_1000B9084(v34, &v61);
    if (v65)
    {
      sub_10000367C(v65);
    }

    if (v35)
    {
      sub_10000367C(v35);
    }

LABEL_57:
    v39 = *(v29 + 280);
    if (v39 == 1)
    {
      if (v23)
      {
        v40 = v29 + 96;
        v41 = v46;
        if (!v46)
        {
          goto LABEL_67;
        }

        goto LABEL_66;
      }
    }

    else if (v39 == 2 && v33)
    {
      v40 = v29 + 96;
      if (!v32)
      {
        v41 = 0;
        v18 = v26;
        goto LABEL_67;
      }

      v41 = v32;
      v18 = v26;
LABEL_66:
      atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_67:
      v42 = *(v29 + 280);
      if (v42 == 2)
      {
        v23 = v33;
      }

      else if (v42 != 1)
      {
        v23 = 0;
      }

      v61 = v27;
      v62 = v31;
      LOBYTE(v63) = 2;
      v64 = v18;
      v65 = v41;
      if (v41)
      {
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v66 = v23;
      sub_1000B9084(v40, &v61);
      if (v65)
      {
        sub_10000367C(v65);
      }

      if (v41)
      {
        sub_10000367C(v41);
      }
    }

    if ((*(a1 + 132) & 1) == 0)
    {
      sub_1000B9568(*(*(a1 + 96) + 8));
    }

    if (v46)
    {
      sub_10000367C(v46);
    }

    if (v32)
    {
      sub_10000367C(v32);
    }

    goto LABEL_83;
  }

  v43 = 0;
  atomic_compare_exchange_strong(*(a1 + 112), &v43, v12);
  if (!v43)
  {
    *&v58 = "details::udif_verify::calculate_checksums(workqueue::workqueue &)_block_invoke";
    *(&v58 + 1) = 41;
    v59 = 16;
    sub_1000B8F18(&v61, &v58);
    sub_1000026BC(v68, "Error reading sectors for verify ", 33);
    std::ostream::operator<<();
    sub_1000B9040(&v61);
  }

LABEL_83:
  if (v48)
  {
    sub_10000367C(v48);
  }
}

void sub_1000B8E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_1000B9040(&STACK[0x250]);
  if (a14)
  {
    sub_10000367C(a14);
  }

  _Unwind_Resume(a1);
}

void *sub_1000B8F18(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000BBCF4(a1, a2);
  *a1 = off_1002168E8;
  a1[45] = &off_1002169E8;
  a1[46] = &off_100216A10;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002168E8;
  a1[45] = off_100216970;
  a1[46] = off_100216998;
  return a1;
}

void sub_1000B901C(_Unwind_Exception *a1)
{
  sub_1000BAD60(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000B9040(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000BAD60(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000B9084(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  *v43 = *(a2 + 17);
  *&v43[3] = *(a2 + 20);
  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v8 = *(a2 + 40);
  *v44 = *(a2 + 17);
  *&v44[3] = *(a2 + 20);
  std::mutex::lock((a1 + 16));
  if (*(a1 + 168))
  {
    std::mutex::unlock((a1 + 16));
    if (v6)
    {
      sub_10000367C(v6);
    }
  }

  else
  {
    v46 = v3;
    *&v47 = v4;
    BYTE8(v47) = v5;
    *(&v47 + 9) = *v44;
    HIDWORD(v47) = *&v44[3];
    v48[0] = a1;
    v48[1] = v3;
    v48[2] = v4;
    v49 = v5;
    *v50 = *v43;
    *&v50[3] = *&v43[3];
    v51 = v7;
    v52 = v6;
    v53 = v8;
    sub_1000BBDBC(a1 + 88, &v46);
    if (v52)
    {
      sub_10000367C(v52);
    }

    if ((v5 & 2) != 0)
    {
      v9 = v3;
    }

    else
    {
      v9 = v3 + 1;
    }

    v10 = *(a1 + 160);
    std::mutex::unlock((a1 + 16));
    if (v9 == v10)
    {
      v11 = (a1 + 96);
      while (1)
      {
        v46 = v48;
        v47 = xmmword_1001C76E0;
        std::mutex::lock((a1 + 16));
        v12 = *(a1 + 88);
        v13 = *(a1 + 160);
        if (v12 == v11)
        {
          v16 = (a1 + 96);
        }

        else
        {
          v14 = *(a1 + 144);
          v15 = *(a1 + 112);
          v16 = *(a1 + 88);
          while (v15 != v14)
          {
            v17 = v16[4];
            if ((v16[6] & 2) == 0)
            {
              ++v17;
            }

            if (v17 != v13)
            {
              break;
            }

            v13 = v16[5] + (v16[6] & 1);
            for (i = (v15[6] & 1) + v15[5]; v13 > i - 1; i = (v15[6] & 1) + v15[5])
            {
              v19 = v15[1];
              v20 = v15;
              if (v19)
              {
                do
                {
                  v15 = v19;
                  v19 = *v19;
                }

                while (v19);
              }

              else
              {
                do
                {
                  v15 = v20[2];
                  v21 = *v15 == v20;
                  v20 = v15;
                }

                while (!v21);
              }

              *(a1 + 112) = v15;
              if (v15 == v14)
              {
                break;
              }

              if ((v15[6] & 2) != 0)
              {
                v13 = v15[4];
              }

              else
              {
                v13 = v15[4] + 1;
              }
            }

            v22 = v16[1];
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
                v23 = v16[2];
                v21 = *v23 == v16;
                v16 = v23;
              }

              while (!v21);
            }

            v16 = v23;
            if (v23 == v11)
            {
              v16 = (a1 + 96);
              break;
            }
          }

          if (v12 == v16)
          {
            v16 = v12;
          }

          else
          {
            v24 = 0;
            v25 = v12;
            do
            {
              v26 = v24;
              v27 = v25[1];
              if (v27)
              {
                do
                {
                  v28 = v27;
                  v27 = *v27;
                }

                while (v27);
              }

              else
              {
                do
                {
                  v28 = v25[2];
                  v21 = *v28 == v25;
                  v25 = v28;
                }

                while (!v21);
              }

              ++v24;
              v25 = v28;
            }

            while (v28 != v16);
            if (*(&v47 + 1) <= v26)
            {
              if (v26 >= 0x249249249249249)
              {
                sub_100026DEC("get_next_capacity, allocator's max size reached");
              }

              v29 = operator new(56 * v24);
              sub_1000BBFE4(&v46, v29, v24, &v46[7 * v47], 0, 0);
            }
          }
        }

        while (v16 != v12)
        {
          v30 = &v46[7 * v47];
          if (v47 == *(&v47 + 1))
          {
            sub_1000BC190(&v46, v30, 1, (v12 + 7), v45);
          }

          else
          {
            *v30 = v12[7];
            v31 = *(v12 + 4);
            *(v30 + 24) = v12[10];
            *(v30 + 8) = v31;
            *(v30 + 32) = *(v12 + 11);
            v12[11] = 0;
            v12[12] = 0;
            *(v30 + 48) = v12[13];
            *&v47 = v47 + 1;
          }

          v12 = sub_1000BC454((a1 + 88), v12);
        }

        std::mutex::unlock((a1 + 16));
        if (v47)
        {
          v32 = v46;
          v33 = &v46[7 * v47];
          do
          {
            v34 = *v32;
            v35 = v32[6];
            v45[0] = v32[4];
            v45[1] = v35;
            sub_1000BB374(v34, v45);
            v32 += 7;
          }

          while (v32 != v33);
          v36 = v47;
          if (v47)
          {
            v37 = (v46 + 5);
            do
            {
              if (*v37)
              {
                sub_10000367C(*v37);
              }

              v37 += 7;
              --v36;
            }

            while (v36);
          }
        }

        *&v47 = 0;
        std::mutex::lock((a1 + 16));
        *(a1 + 160) = v13;
        v38 = *(a1 + 88);
        if (v38 == v11 || *(a1 + 112) == *(a1 + 144))
        {
          break;
        }

        v39 = *(v38 + 48);
        v40 = *(v38 + 32);
        if ((v39 & 2) != 0)
        {
          v41 = v40;
        }

        else
        {
          v41 = v40 + 1;
        }

        std::mutex::unlock((a1 + 16));
        if (v41 != v13)
        {
          goto LABEL_70;
        }

        sub_1000BC494(&v46);
      }

      std::mutex::unlock((a1 + 16));
LABEL_70:
      sub_1000BC494(&v46);
    }
  }

  return a1;
}

void sub_1000B9500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::mutex::unlock((v7 + 16));
  sub_1000BC494(va);
  _Unwind_Resume(a1);
}

void sub_1000B9568(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  memset(v1, 0, 44);
  sub_100024B78(a1 + 64, v1);
  if (*(&v1[0] + 1))
  {
    sub_10000367C(*(&v1[0] + 1));
  }
}

void sub_1000B95B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000367C(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000B95D0(void *result, void *a2)
{
  v2 = a2[10];
  result[9] = a2[9];
  result[10] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[13];
  result[12] = a2[12];
  result[13] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1000B9604(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    sub_10000367C(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {

    sub_10000367C(v3);
  }
}

void sub_1000B96D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000C8E0(va);
  _Unwind_Resume(a1);
}

void sub_1000B96EC(const __CFString *a1, const void *a2, __CFDictionary *a3)
{
  TypeID = CFStringGetTypeID();
  if (a1 && CFGetTypeID(a1) != TypeID)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v13 = a1;
    v14 = exception;
    CFGetTypeID(v13);
LABEL_18:
    v15 = v14;
    goto LABEL_19;
  }

  v7 = sub_10014CB00(a1);
  switch(v7)
  {
    case 1651272568:
      return;
    case 1886155636:
      return;
    case 1970628964:
      return;
  }

  v8 = CFArrayGetTypeID();
  if (!a2)
  {
    return;
  }

  if (CFGetTypeID(a2) != v8)
  {
    v14 = __cxa_allocate_exception(0x40uLL);
    CFGetTypeID(a2);
    goto LABEL_18;
  }

  if (CFArrayGetCount(a2) < 1)
  {
    return;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a2, 0);
  v10 = CFDictionaryGetTypeID();
  if (!ValueAtIndex)
  {
    return;
  }

  if (CFGetTypeID(ValueAtIndex) != v10)
  {
    goto LABEL_21;
  }

  ValueAtIndex = CFDictionaryGetValue(ValueAtIndex, @"Data");
  v11 = CFDataGetTypeID();
  if (!ValueAtIndex)
  {
    return;
  }

  if (CFGetTypeID(ValueAtIndex) != v11)
  {
LABEL_21:
    v17 = __cxa_allocate_exception(0x40uLL);
    CFGetTypeID(ValueAtIndex);
    v15 = v17;
LABEL_19:
    v16 = sub_100008320(v15);
  }

  CFDictionaryAddValue(a3, a1, ValueAtIndex);
}

void sub_1000B9AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_1000043E8(&a9);
  sub_10000C8E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B9AF8(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    sub_1000B7AA4(v7, a1, a1 + 64, 3);
    if (!sub_1000B82E0(v7, a2))
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_1000B77D0(v7, a1, a1 + 64);
    if (!sub_1000B82E0(v7, a2))
    {
LABEL_6:
      v4 = sub_1000B74C8(v7);
      goto LABEL_7;
    }
  }

  v4 = 0;
LABEL_7:
  sub_1000BA50C(v10, v10[1]);
  std::mutex::~mutex(&v9);
  v6 = &v8;
  sub_1000BA56C(&v6);
  return v4;
}

void sub_1000B9BE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000B7B08(va);
  _Unwind_Resume(a1);
}

BOOL sub_1000B9C04@<W0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1 + 8;
  v4 = a1[8];
  v6 = a1 + 9;
  v7 = a1[9];
  v8 = a1[5];
  if (v4 != v7)
  {
    while (v8 > (v4[6] & 1) + v4[5] - 1)
    {
      v9 = v4[1];
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
          v10 = v4[2];
          v13 = *v10 == v4;
          v4 = v10;
        }

        while (!v13);
      }

      *v5 = v10;
      v4 = v10;
      if (v10 == v7)
      {
        goto LABEL_11;
      }
    }
  }

  v10 = v4;
LABEL_11:
  v11 = sub_1000B9DA8(a1 + 8, v6, v8);
  if (v11)
  {
    result = sub_1000B9DA8(v5, v6, v8);
    v13 = v10 == v7 || !result;
    v14 = v8;
    if (!v13)
    {
      do
      {
        v14 = (v10[6] & 1) + v10[5];
        result = sub_1000B9DA8(v5, v6, v14);
        if (!result)
        {
          break;
        }

        v15 = v10[1];
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
            v16 = v10[2];
            v13 = *v16 == v10;
            v10 = v16;
          }

          while (!v13);
        }

        *v5 = v16;
        v10 = v16;
      }

      while (v16 != v7);
    }
  }

  else
  {
    result = sub_1000B9DA8(v5, v6, v8);
    v14 = v8;
    if (!result)
    {
      if (v10 == v7)
      {
        v14 = a1[3];
      }

      else if ((v10[6] & 2) != 0)
      {
        v14 = v10[4];
      }

      else
      {
        v14 = v10[4] + 1;
      }
    }
  }

  *a2 = v8;
  *(a2 + 8) = v14;
  *(a2 + 16) = 2;
  *(a2 + 24) = v11;
  return result;
}

BOOL sub_1000B9DA8(uint64_t *a1, void *a2, unint64_t a3)
{
  v3 = *a1;
  if (*a1 == *a2)
  {
    return 0;
  }

  v4 = *(v3 + 32);
  if ((*(v3 + 48) & 2) != 0)
  {
    if (v4 > a3)
    {
      return 0;
    }
  }

  else if (v4 >= a3)
  {
    return 0;
  }

  v5 = *(v3 + 40);
  if (*(v3 + 48))
  {
    if (v5 < a3)
    {
      return 0;
    }
  }

  else if (v5 <= a3)
  {
    return 0;
  }

  v7 = *(v3 + 56);
  return v7 == 1 || HIBYTE(v7) == 128;
}

void *sub_1000B9EA0(void *a1)
{
  *a1 = &off_100208CD0;
  sub_100059D1C((a1 + 8));
  v2 = a1[7];
  if (v2)
  {
    sub_10000367C(v2);
  }

  return a1;
}

void sub_1000B9EF0(void *a1)
{
  *a1 = &off_100208CD0;
  sub_100059D1C((a1 + 8));
  v2 = a1[7];
  if (v2)
  {
    sub_10000367C(v2);
  }

  operator delete();
}

_WORD *sub_1000BA0DC(_WORD *result, int a2)
{
  v2 = 0;
  *result = a2;
  v5 = 0x10000800040002;
  v6 = 4194336;
  v7 = 128;
  do
  {
    a2 &= *(&v5 + v2) ^ 0xFFFF;
    v2 += 2;
  }

  while (v2 != 14);
  if (a2)
  {
    v3 = a2;
    exception = __cxa_allocate_exception(0x28uLL);
    exception[1] = "block_attributes";
    exception[2] = "invalid flags";
    exception[3] = "flags validator";
    *exception = &off_100216898;
    *(exception + 16) = v3;
  }

  return result;
}

void sub_1000BA1E0(std::exception *a1)
{
  std::exception::~exception(a1);

  operator delete();
}

void sub_1000BA218(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_100179BBC(a1);
  sub_100003410(v17, v4);
  sub_100009110(v12);
  if ((v18 & 0x80u) == 0)
  {
    v5 = v17;
  }

  else
  {
    v5 = v17[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v6 = v18;
  }

  else
  {
    v6 = v17[1];
  }

  v7 = sub_1000026BC(&v13, v5, v6);
  v8 = sub_1000026BC(v7, " [", 2);
  *(v8 + *(*v8 - 24) + 8) = *(v8 + *(*v8 - 24) + 8) & 0xFFFFFFB5 | 8;
  v9 = *(a1 + 32);
  v10 = std::ostream::operator<<();
  sub_1000026BC(v10, "]", 1);
  sub_100008510(&v14, a2);
  v13 = v11;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  std::locale::~locale(v15);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  if (v18 < 0)
  {
    operator delete(v17[0]);
  }
}

void sub_1000BA4CC(uint64_t a1)
{
  sub_1000BA50C(a1 + 72, *(a1 + 80));

  std::mutex::~mutex(a1);
}

void sub_1000BA50C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1000BA50C(a1, *a2);
    sub_1000BA50C(a1, a2[1]);
    v4 = a2[12];
    if (v4)
    {
      sub_10000367C(v4);
    }

    operator delete(a2);
  }
}

void sub_1000BA56C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1000BA5C0(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1000BA5C0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    do
    {
      v5 = v4 - 184;
      v6 = (v4 - 168);
      sub_1000BA50C(v4 - 96, *(v4 - 88));
      std::mutex::~mutex(v6);
      v4 = v5;
    }

    while (v5 != a2);
  }

  *(a1 + 8) = a2;
}

uint64_t sub_1000BA624(uint64_t *a1, uint64_t a2)
{
  v2 = 0xD37A6F4DE9BD37A7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1642C8590B21642)
  {
    sub_100036CAC();
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
    sub_1000BA808(a1, v6);
  }

  v13 = 0;
  v14 = 184 * v2;
  sub_1000BA770(a1, 184 * v2, a2);
  v15 = 184 * v2 + 184;
  v7 = a1[1];
  v8 = 184 * v2 + *a1 - v7;
  sub_1000BA864(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1000BAA28(&v13);
  return v12;
}

void sub_1000BA75C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000BAA28(va);
  _Unwind_Resume(a1);
}

__n128 sub_1000BA770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0;
  *(a2 + 88) = *(a3 + 88);
  v3 = (a3 + 96);
  v4 = *(a3 + 96);
  *(a2 + 96) = v4;
  v5 = a2 + 96;
  *(a2 + 16) = 850045863;
  *(a2 + 80) = *(a3 + 80);
  v6 = *(a3 + 104);
  *(a2 + 104) = v6;
  if (v6)
  {
    *(v4 + 16) = v5;
    *(a3 + 88) = v3;
    *v3 = 0;
    *(a3 + 104) = 0;
  }

  else
  {
    *(a2 + 88) = v5;
  }

  *(a2 + 112) = *(a3 + 112);
  *(a2 + 128) = *(a3 + 128);
  result = *(a3 + 144);
  *(a2 + 144) = result;
  *(a2 + 160) = *(a3 + 160);
  *(a2 + 168) = 0;
  *(a2 + 176) = *(a3 + 176);
  return result;
}

void sub_1000BA808(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1642C8590B21643)
  {
    operator new();
  }

  sub_100038E68();
}

uint64_t sub_1000BA864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v7 = a2;
    do
    {
      sub_1000BA770(a1, a4, v7);
      v7 += 184;
      a4 = v12 + 184;
      v12 += 184;
    }

    while (v7 != a3);
  }

  v10 = 1;
  sub_1000BA920(a1, a2, a3);
  return sub_1000BA980(v9);
}

void sub_1000BA920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v4 = a2 + 88;
    do
    {
      sub_1000BA50C(v4, *(v4 + 8));
      std::mutex::~mutex((v4 - 72));
      v5 = v4 + 96;
      v4 += 184;
    }

    while (v5 != a3);
  }
}

uint64_t sub_1000BA980(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000BA9CC(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_1000BA9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    do
    {
      v6 = a3 - 184;
      v7 = (a3 - 168);
      sub_1000BA50C(a3 - 96, *(a3 - 88));
      std::mutex::~mutex(v7);
      a3 = v6;
    }

    while (v6 != a5);
  }
}

uint64_t sub_1000BAA28(uint64_t a1)
{
  sub_1000BAA60(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1000BAA60(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 184;
    v5 = (i - 168);
    sub_1000BA50C(i - 96, *(i - 88));
    std::mutex::~mutex(v5);
  }
}

uint64_t sub_1000BAAC8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000BAD60(v1);

  return std::ios::~ios();
}

uint64_t sub_1000BAB14(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000BAD60(v1);

  return std::ios::~ios();
}

void sub_1000BAB74(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000BAD60(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000BABDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000BAC18(_BYTE *a1, int a2)
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

void sub_1000BAC84(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000BAD60(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000BACE8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000BAD60(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000BAD60(uint64_t a1)
{
  *a1 = off_100216A80;
  sub_1000BAECC(a1);
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

uint64_t sub_1000BAECC(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_1000BB07C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
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

void sub_1000BB018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000BB044(uint64_t a1)
{
  sub_1000BAD60(a1);

  operator delete();
}

int *sub_1000BB07C(uint64_t *a1, uint64_t *a2)
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
    v21 = 339;
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
      v21 = 339;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

const void **sub_1000BB260(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_1000BB294(uint64_t a1, uint64_t a2)
{
  sub_100141450(&v15, a2);
  v4 = v15;
  v9 = v20;
  v10 = v21;
  v11 = v22;
  v12 = v23;
  v5 = v16;
  v6 = v17;
  v7 = v18;
  v8 = v19;
  sub_100141570(&v4, v13);
  v4 = &v14;
  *&v5 = HIDWORD(v15) >> 3;
  sub_1000BB374(a1, &v4);
  return a1;
}

uint64_t sub_1000BB374(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v2 = *(a1 + 12);
  if (v2 == -1)
  {
    sub_100036CC4();
  }

  v6 = &v5;
  (off_100216AF0[v2])(&v6, a1 + 4);
  return a1;
}

uLong sub_1000BB3D8(const Bytef ****a1, _DWORD *a2)
{
  result = crc32(*a2, ***a1, *(**a1 + 2));
  *a2 = result;
  return result;
}

uint64_t sub_1000BB414(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = *a2;
  if ((*(a3 + 16) & 2) != 0)
  {
    v3 = *a3;
  }

  else
  {
    v3 = *a3 + 1;
  }

  v5 = (a2 + 144);
  v4 = *(a2 + 144);
  v6 = *(a2 + 128);
  if (v6 != v4)
  {
    while (1)
    {
      v7 = v6[4];
      if ((v6[6] & 2) == 0)
      {
        ++v7;
      }

      if (v7 >= v3)
      {
        break;
      }

      v8 = v6[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v6[2];
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v6 = v9;
      if (v9 == v4)
      {
        goto LABEL_16;
      }
    }
  }

  v9 = v6;
LABEL_16:
  if (v9 == v4)
  {
    v16 = *(a2 + 80);
    *(result + 96) = 0;
    *(result + 16) = 850045863;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0;
    *(result + 80) = v16;
    *(result + 104) = 0;
    *(result + 88) = result + 96;
    *(result + 112) = *v5;
    *(result + 128) = *v5;
    *(result + 144) = *v5;
    *(result + 168) = 0;
    v9 = *(result + 112);
    if (v9 == *(result + 144))
    {
      goto LABEL_35;
    }

    goto LABEL_32;
  }

  v11 = *(a2 + 136);
  v12 = v9;
  while (1)
  {
    v13 = v12[4];
    if ((v12[6] & 2) == 0)
    {
      ++v13;
    }

    if (v13 > (*(a3 + 16) & 1) + *(a3 + 8) - 1)
    {
      break;
    }

    v14 = v12[1];
    if (v14)
    {
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      do
      {
        v15 = v12[2];
        v10 = *v15 == v12;
        v12 = v15;
      }

      while (!v10);
    }

    v12 = v15;
    if (v15 == v4)
    {
      goto LABEL_31;
    }
  }

  v15 = v12;
LABEL_31:
  v17 = *(a2 + 80);
  *(result + 96) = 0;
  *(result + 16) = 850045863;
  *(result + 24) = 0u;
  *(result + 40) = 0u;
  *(result + 56) = 0u;
  *(result + 72) = 0;
  *(result + 80) = v17;
  *(result + 88) = result + 96;
  *(result + 104) = 0;
  *(result + 112) = v9;
  *(result + 120) = v11;
  *(result + 128) = v9;
  *(result + 136) = v11;
  *(result + 144) = v15;
  *(result + 152) = v11;
  *(result + 168) = 0;
  if (v9 != v15)
  {
LABEL_32:
    v18 = *(v9 + 48);
    v19 = v9[4];
    if ((v18 & 2) == 0)
    {
      ++v19;
    }

    *(result + 160) = v19;
  }

LABEL_35:
  *(result + 176) = 0;
  return result;
}

uint64_t sub_1000BB5DC(uint64_t a1, unsigned int a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 850045863;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1018212795;
  *a1 = 0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 129) = 0u;
  if (a2)
  {
    sub_1000BB69C((a1 + 8), a2);
  }

  return a1;
}

void sub_1000BB670(_Unwind_Exception *a1)
{
  std::condition_variable::~condition_variable(v4);
  std::mutex::~mutex(v3);
  v6 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

void *sub_1000BB69C(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      sub_100046D30(result, a2);
    }

    sub_100036CAC();
  }

  return result;
}

uint64_t sub_1000BB73C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = *v2;
      if (*v2)
      {
        v5 = v4[2];
        if (v5)
        {
          sub_10000367C(v5);
        }

        v6 = *v4;
        *v4 = 0;
        if (v6)
        {
          (*(*v6 + 40))(v6);
        }

        operator delete();
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *(a1 + 8);
  }

  *(a1 + 16) = v2;
  std::condition_variable::~condition_variable((a1 + 96));
  std::mutex::~mutex((a1 + 32));
  v7 = *(a1 + 8);
  if (v7)
  {
    *(a1 + 16) = v7;
    operator delete(v7);
  }

  return a1;
}

void *sub_1000BB8B4(void *a1, uint64_t a2, void *a3, int *a4, unsigned __int8 *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100216B10;
  sub_10019AEE4(a1 + 3, a2, *a3, *a4, *a5);
  return a1;
}

void sub_1000BB93C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100216B10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1000BB9B8(uint64_t a1)
{
  std::mutex::lock(a1);
  *(a1 + 152) = 1;
  sub_1000BA50C(a1 + 72, *(a1 + 80));
  *(a1 + 72) = a1 + 80;
  *(a1 + 88) = 0;
  *(a1 + 80) = 0;

  std::mutex::unlock(a1);
}

void sub_1000BBA98(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_begin_catch(a1);
  sub_1000BBAC4(va, v2);
  __cxa_rethrow();
}

void sub_1000BBAC4(uint64_t *a1, uint64_t a2)
{
  v3 = a2;
  v2 = *a1;
  std::mutex::lock((*a1 + 32));
  sub_1000BBC1C(v2 + 8, &v3);
  std::mutex::unlock((v2 + 32));
  std::condition_variable::notify_one((v2 + 96));
}

void sub_1000BBB14(_Unwind_Exception *a1)
{
  v2 = v1;
  std::mutex::unlock((v2 + 32));
  _Unwind_Resume(a1);
}

void sub_1000BBB30(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1000BBB68(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 24);
  std::mutex::lock((v1 + 32));
  sub_1000BBC1C(v1 + 8, &v2);
  std::mutex::unlock((v1 + 32));
  std::condition_variable::notify_one((v1 + 96));
}

void sub_1000BBBB8(void *a1)
{
  v2 = v1;
  std::mutex::unlock((v2 + 32));
  sub_100002A4C(a1);
}

uint64_t sub_1000BBBD8(uint64_t a1, uint64_t a2)
{
  if (sub_100009720(a2, &off_100216BA0))
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000BBC1C(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_100036CAC();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_100046D30(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
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
  return v6 - 8;
}

uint64_t sub_1000BBCF4(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100216A80;
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

void sub_1000BBDA4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000BBDBC(uint64_t a1, uint64_t a2)
{
  v2 = *sub_1000BBE7C(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_1000BBE7C(uint64_t a1, void *a2, uint64_t a3)
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
        if (!sub_1000BBF04(a3, (v4 + 4)))
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

      if (!sub_1000BBF04((v7 + 4), a3))
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

uint64_t sub_1000BBF04(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *a1;
  v3 = *(a1 + 8);
  if (*(a1 + 16))
  {
    if (v2 == 3)
    {
      if (v3 < v4)
      {
LABEL_4:
        v6 = *a2;
        v5 = *(a2 + 8);
        v7 = *a2 >= v5 || *a2 + 1 >= v5;
        v8 = v6 >= v5;
        v9 = v5 < v6;
        if (*(a2 + 16) != 3)
        {
          v9 = v8;
        }

        if (*(a2 + 16))
        {
          v10 = v9;
        }

        else
        {
          v10 = v7;
        }

        return !v10;
      }
    }

    else if (v4 >= v3)
    {
      goto LABEL_4;
    }
  }

  else if (v4 >= v3 || v4 + 1 >= v3)
  {
    goto LABEL_4;
  }

  if ((v2 & 2) != 0)
  {
    v13 = *a1;
  }

  else
  {
    v13 = v4 + 1;
  }

  v14 = *a2;
  if ((*(a2 + 16) & 2) == 0)
  {
    ++v14;
  }

  if (v13 < v14)
  {
    return 1;
  }

  if (v14 == v13)
  {
    return (v2 & 1) + v3 - 1 < (*(a2 + 16) & 1) + *(a2 + 8) - 1;
  }

  return 0;
}

void sub_1000BBFE4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  sub_1000BC0B8(a1, *a1, a4, *a1 + 56 * a1[1], a2, a5, a6);
  if (v10)
  {
    v11 = a1[1];
    if (v11)
    {
      v12 = (v10 + 40);
      do
      {
        if (*v12)
        {
          sub_10000367C(*v12);
        }

        v12 += 7;
        --v11;
      }

      while (v11);
    }

    if (a1 + 3 != *a1)
    {
      operator delete(*a1);
    }
  }

  v13 = a1[1] + a5;
  *a1 = a2;
  a1[1] = v13;
  a1[2] = a3;
}

void sub_1000BC094(_Unwind_Exception *exception_object)
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

__n128 sub_1000BC0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  while (a2 != a3)
  {
    *a5 = *a2;
    v7 = *(a2 + 8);
    *(a5 + 24) = *(a2 + 24);
    *(a5 + 8) = v7;
    result = *(a2 + 32);
    *(a5 + 32) = result;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a5 + 48) = *(a2 + 48);
    a2 += 56;
    a5 += 56;
  }

  if (a6)
  {
    v9 = a6;
    v10 = a5;
    do
    {
      *v10 = *a7;
      v11 = *(a7 + 8);
      *(v10 + 24) = *(a7 + 24);
      *(v10 + 8) = v11;
      result = *(a7 + 32);
      *(v10 + 32) = result;
      *(a7 + 32) = 0;
      *(a7 + 40) = 0;
      *(v10 + 48) = *(a7 + 48);
      a7 += 56;
      v10 += 56;
      --v9;
    }

    while (v9);
  }

  if (a3 != a4)
  {
    v12 = a5 + 56 * a6;
    do
    {
      *v12 = *a3;
      v13 = *(a3 + 8);
      *(v12 + 24) = *(a3 + 24);
      *(v12 + 8) = v13;
      result = *(a3 + 32);
      *(v12 + 32) = result;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(v12 + 48) = *(a3 + 48);
      a3 += 56;
      v12 += 56;
    }

    while (a3 != a4);
  }

  return result;
}

void sub_1000BC190(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *a1;
  v11 = sub_1000BC244(a1, a3);
  if (v11 >= 0x24924924924924ALL)
  {
    sub_100026DEC("get_next_capacity, allocator's max size reached");
  }

  v12 = v11;
  v13 = operator new(56 * v11);
  sub_1000BC2C4(a1, v13, v12, a2, a3, a4);
  *a5 = *a1 + a2 - v10;
}

unint64_t sub_1000BC244(uint64_t a1, uint64_t a2)
{
  v2 = 0x249249249249249;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x249249249249249 - v4 < a2 - v4 + v3)
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
  if (v8 < 0x249249249249249)
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

void sub_1000BC2C4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  sub_1000BC398(a1, *a1, a4, *a1 + 56 * a1[1], a2, a5, a6);
  if (v10)
  {
    v11 = a1[1];
    if (v11)
    {
      v12 = (v10 + 40);
      do
      {
        if (*v12)
        {
          sub_10000367C(*v12);
        }

        v12 += 7;
        --v11;
      }

      while (v11);
    }

    if (a1 + 3 != *a1)
    {
      operator delete(*a1);
    }
  }

  v13 = a1[1] + a5;
  *a1 = a2;
  a1[1] = v13;
  a1[2] = a3;
}

void sub_1000BC374(_Unwind_Exception *exception_object)
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

__n128 sub_1000BC398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  while (a2 != a3)
  {
    *a5 = *a2;
    v7 = *(a2 + 8);
    *(a5 + 24) = *(a2 + 24);
    *(a5 + 8) = v7;
    *(a5 + 32) = *(a2 + 32);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a5 + 48) = *(a2 + 48);
    a2 += 56;
    a5 += 56;
  }

  *a5 = *a7;
  v8 = *(a7 + 8);
  *(a5 + 24) = *(a7 + 24);
  *(a5 + 8) = v8;
  result = *(a7 + 32);
  *(a5 + 32) = result;
  *(a7 + 32) = 0;
  *(a7 + 40) = 0;
  *(a5 + 48) = *(a7 + 48);
  if (a3 != a4)
  {
    v10 = a5 + 56 * a6;
    do
    {
      *v10 = *a3;
      v11 = *(a3 + 8);
      *(v10 + 24) = *(a3 + 24);
      *(v10 + 8) = v11;
      result = *(a3 + 32);
      *(v10 + 32) = result;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(v10 + 48) = *(a3 + 48);
      a3 += 56;
      v10 += 56;
    }

    while (a3 != a4);
  }

  return result;
}

uint64_t *sub_1000BC454(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_10000C140(a1, a2);
  v4 = a2[12];
  if (v4)
  {
    sub_10000367C(v4);
  }

  operator delete(a2);
  return v3;
}

void *sub_1000BC494(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = (*a1 + 40);
    do
    {
      if (*v3)
      {
        sub_10000367C(*v3);
      }

      v3 += 7;
      --v2;
    }

    while (v2);
  }

  if (a1[2] && a1 + 3 != *a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1000BC504(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = off_100216BC0;
  sub_10004414C((a1 + 24), a1);
}

void sub_1000BC8AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1000C2BF0(&__p);
  sub_10000E944(v17 + 640);
  std::mutex::~mutex((v17 + 576));
  v20 = *(v17 + 568);
  if (v20)
  {
    sub_10000367C(v20);
  }

  sub_1000C2C74(v18);
  _Unwind_Resume(a1);
}

uint64_t sub_1000BC948(uint64_t a1)
{
  v2 = *(a1 + 560);
  result = sub_1000BCC60();
  if (result)
  {
    *&v6 = "DiskImageSparseBundle::init_bands_array_size()";
    *(&v6 + 1) = 44;
    v7 = 0;
    sub_1000BCD04(v8, &v6);
    sub_1000026BC(v9, "Mounted on AFP, max open bands is set to ", 41);
    v4 = *(a1 + 16);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_1000C3028(v8);
    result = std::ios::~ios();
    v5 = 3;
  }

  else
  {
    v5 = 64;
  }

  *(a1 + 16) = v5;
  return result;
}

void sub_1000BCA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000BCE2C(va);
  _Unwind_Resume(a1);
}

void *sub_1000BCA14(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_1000C21DC(result, a2);
    }

    sub_100036CAC();
  }

  return result;
}

void sub_1000BCADC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000C22D8(va);
  _Unwind_Resume(a1);
}

void *sub_1000BCAF0(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000D17E0(a1, a2);
  *a1 = off_100216D78;
  a1[45] = &off_100216E78;
  a1[46] = &off_100216EA0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100216D78;
  a1[45] = off_100216E00;
  a1[46] = off_100216E28;
  return a1;
}