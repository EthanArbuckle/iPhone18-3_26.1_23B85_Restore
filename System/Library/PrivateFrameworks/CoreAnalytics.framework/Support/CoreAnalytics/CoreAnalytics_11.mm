void sub_1000CE9B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  sub_10002C5F4(va);
  _Unwind_Resume(a1);
}

void sub_1000CEA40(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 factorPackIds];
  v5 = [v4 allValues];

  if ([v5 countByEnumeratingWithState:&v12 objects:v11 count:16])
  {
    *v13;
    *v13;
    v6 = **(&v12 + 1);
    v10[0] = 0xAAAAAAAAAAAAAA00;
    v10[1] = 0;
    sub_10000298C(v10);
    sub_10000298C(v10);
    v7 = [v3 rolloutId];
    v8 = v7;
    [v7 UTF8String];
    sub_10001AAEC(v9);
  }

  ++*(*(*(a1 + 40) + 8) + 24);
}

void sub_1000CEE98(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1000CEEA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v7 = dispatch_queue_create("analyticsd.NetworkingStateResolverQueue", v6);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v7;

  *a1 = off_100188628;
  *(a1 + 32) = off_1001886D0;
  *(a1 + 40) = off_1001886F8;
  *(a1 + 48) = off_100188728;
  *(a1 + 56) = off_1001887A0;
  *(a1 + 64) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 80) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  operator new();
}

void sub_1000CEFFC(_Unwind_Exception *a1)
{
  v4 = *(v1 + 88);
  if (v4)
  {
    sub_10000786C(v4);
  }

  v5 = *(v1 + 72);
  if (v5)
  {
    sub_10000786C(v5);
  }

  sub_10002CDDC(v2);
  _Unwind_Resume(a1);
}

void sub_1000CF028(uint64_t a1)
{
  v1[0] = 0xAAAAAAAAAAAAAAAALL;
  v1[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v1, (a1 + 8));
  operator new();
}

void sub_1000CF13C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_1000CF154(void *a1@<X8>)
{
  if (byte_100192CEF < 0)
  {
    sub_1000078D8(&v3, xmmword_100192CD8, *(&xmmword_100192CD8 + 1));
  }

  else
  {
    v3 = xmmword_100192CD8;
    v4 = unk_100192CE8;
  }

  if (byte_100192D07 < 0)
  {
    sub_1000078D8(&v5, xmmword_100192CF0, *(&xmmword_100192CF0 + 1));
  }

  else
  {
    v5 = xmmword_100192CF0;
    v6 = unk_100192D00;
  }

  if (byte_100192D1F < 0)
  {
    sub_1000078D8(&v7, xmmword_100192D08, *(&xmmword_100192D08 + 1));
  }

  else
  {
    v7 = xmmword_100192D08;
    v8 = unk_100192D18;
  }

  if (byte_100192D37 < 0)
  {
    sub_1000078D8(&v9, xmmword_100192D20, *(&xmmword_100192D20 + 1));
  }

  else
  {
    v9 = xmmword_100192D20;
    v10 = unk_100192D30;
  }

  sub_10000459C(v11, "cellularRAT");
  sub_10000459C(v12, "cellularSignalBars");
  sub_10000459C(v13, "cellularLQM");
  sub_10000459C(v14, "cellularHighThroughput");
  sub_10000459C(v15, "subscriberCarrierName");
  sub_10000459C(v16, "subscriberCarrierBundleVersion");
  sub_10000459C(v17, "subscriberCarrierCountry");
  sub_10000459C(v18, "servingCarrierName");
  sub_10000459C(v19, "isDualSim");
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_10003C198(a1, &v3, &v20, 0xDuLL);
  v2 = 312;
  do
  {
    if (*(&v3 + v2 - 1) < 0)
    {
      operator delete(*(&v3 + v2 - 24));
    }

    v2 -= 24;
  }

  while (v2);
}

void sub_1000CF418(uint64_t a1@<X0>, __int128 *a2@<X1>, dispatch_group_t *a3@<X8>)
{
  v6 = dispatch_group_create();
  *a3 = v6;
  v7[3] = a1;
  sub_10009B928(&__p, a2);
  group = v6;
  if (group)
  {
    dispatch_group_enter(group);
  }

  v7[0] = 0xAAAAAAAAAAAAAAAALL;
  v7[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v7, (a1 + 8));
  operator new();
}

void sub_1000CF5E4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10002C628(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000CF61C(uint64_t a1@<X0>, dispatch_group_t *a2@<X8>)
{
  v4 = dispatch_group_create();
  *a2 = v4;
  v5 = v4;
  if (v5)
  {
    dispatch_group_enter(v5);
  }

  v6[0] = 0xAAAAAAAAAAAAAAAALL;
  v6[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v6, (a1 + 8));
  operator new();
}

void sub_1000CF780(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_1000CF7A4(uint64_t a1@<X0>, __int128 *a2@<X1>, dispatch_group_t *a3@<X8>)
{
  v6 = dispatch_group_create();
  *a3 = v6;
  v8[3] = a1;
  LOBYTE(__p) = 0;
  v11 = 0;
  if (*(a2 + 24) == 1)
  {
    __p = *a2;
    v10 = *(a2 + 2);
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v11 = 1;
  }

  v7 = v6;
  v12 = v7;
  if (v7)
  {
    dispatch_group_enter(v7);
  }

  v8[0] = 0xAAAAAAAAAAAAAAAALL;
  v8[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v8, (a1 + 8));
  operator new();
}

void sub_1000CF980(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_1000CF9A0(uint64_t a1@<X0>, __int128 *a2@<X1>, dispatch_group_t *a3@<X8>)
{
  v6 = dispatch_group_create();
  *a3 = v6;
  v8[3] = a1;
  LOBYTE(__p) = 0;
  v11 = 0;
  if (*(a2 + 24) == 1)
  {
    __p = *a2;
    v10 = *(a2 + 2);
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v11 = 1;
  }

  v7 = v6;
  v12 = v7;
  if (v7)
  {
    dispatch_group_enter(v7);
  }

  v8[0] = 0xAAAAAAAAAAAAAAAALL;
  v8[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v8, (a1 + 8));
  operator new();
}

void sub_1000CFB7C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_1000CFB9C(uint64_t a1@<X0>, __int128 *a2@<X1>, dispatch_group_t *a3@<X8>)
{
  v6 = dispatch_group_create();
  *a3 = v6;
  v8[3] = a1;
  LOBYTE(__p) = 0;
  v11 = 0;
  if (*(a2 + 24) == 1)
  {
    __p = *a2;
    v10 = *(a2 + 2);
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v11 = 1;
  }

  v7 = v6;
  v12 = v7;
  if (v7)
  {
    dispatch_group_enter(v7);
  }

  v8[0] = 0xAAAAAAAAAAAAAAAALL;
  v8[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v8, (a1 + 8));
  operator new();
}

void sub_1000CFD78(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_1000CFD98(uint64_t a1@<X0>, dispatch_group_t *a2@<X8>)
{
  v4 = dispatch_group_create();
  *a2 = v4;
  v5 = v4;
  if (v5)
  {
    dispatch_group_enter(v5);
  }

  v6[0] = 0xAAAAAAAAAAAAAAAALL;
  v6[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v6, (a1 + 8));
  operator new();
}

void sub_1000CFEFC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_1000CFF20(uint64_t a1@<X0>, __int128 *a2@<X1>, dispatch_group_t *a3@<X8>)
{
  v6 = dispatch_group_create();
  *a3 = v6;
  v8[3] = a1;
  LOBYTE(__p) = 0;
  v11 = 0;
  if (*(a2 + 24) == 1)
  {
    __p = *a2;
    v10 = *(a2 + 2);
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v11 = 1;
  }

  v7 = v6;
  v12 = v7;
  if (v7)
  {
    dispatch_group_enter(v7);
  }

  v8[0] = 0xAAAAAAAAAAAAAAAALL;
  v8[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v8, (a1 + 8));
  operator new();
}

void sub_1000D00FC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_1000D011C(uint64_t a1@<X0>, __int128 *a2@<X1>, dispatch_group_t *a3@<X8>)
{
  v6 = dispatch_group_create();
  *a3 = v6;
  v8[3] = a1;
  LOBYTE(__p) = 0;
  v11 = 0;
  if (*(a2 + 24) == 1)
  {
    __p = *a2;
    v10 = *(a2 + 2);
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v11 = 1;
  }

  v7 = v6;
  v12 = v7;
  if (v7)
  {
    dispatch_group_enter(v7);
  }

  v8[0] = 0xAAAAAAAAAAAAAAAALL;
  v8[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v8, (a1 + 8));
  operator new();
}

void sub_1000D02F8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_1000D0318(uint64_t a1@<X0>, __int128 *a2@<X1>, dispatch_group_t *a3@<X8>)
{
  v6 = dispatch_group_create();
  *a3 = v6;
  v8[3] = a1;
  LOBYTE(__p) = 0;
  v11 = 0;
  if (*(a2 + 24) == 1)
  {
    __p = *a2;
    v10 = *(a2 + 2);
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v11 = 1;
  }

  v7 = v6;
  v12 = v7;
  if (v7)
  {
    dispatch_group_enter(v7);
  }

  v8[0] = 0xAAAAAAAAAAAAAAAALL;
  v8[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v8, (a1 + 8));
  operator new();
}

void sub_1000D04F4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_1000D0514(uint64_t a1@<X0>, __int128 *a2@<X1>, dispatch_group_t *a3@<X8>)
{
  v6 = dispatch_group_create();
  *a3 = v6;
  v8[3] = a1;
  LOBYTE(__p) = 0;
  v11 = 0;
  if (*(a2 + 24) == 1)
  {
    __p = *a2;
    v10 = *(a2 + 2);
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v11 = 1;
  }

  v7 = v6;
  v12 = v7;
  if (v7)
  {
    dispatch_group_enter(v7);
  }

  v8[0] = 0xAAAAAAAAAAAAAAAALL;
  v8[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v8, (a1 + 8));
  operator new();
}

void sub_1000D06F0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_1000D0710(uint64_t a1@<X0>, dispatch_group_t *a2@<X8>)
{
  v4 = dispatch_group_create();
  *a2 = v4;
  v5 = v4;
  if (v5)
  {
    dispatch_group_enter(v5);
  }

  v6[0] = 0xAAAAAAAAAAAAAAAALL;
  v6[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v6, (a1 + 8));
  operator new();
}

void sub_1000D0874(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_1000D0898(uint64_t a1@<X0>, __int128 *a2@<X1>, dispatch_group_t *a3@<X8>)
{
  v6 = dispatch_group_create();
  *a3 = v6;
  v8[3] = a1;
  LOBYTE(__p) = 0;
  v11 = 0;
  if (*(a2 + 24) == 1)
  {
    __p = *a2;
    v10 = *(a2 + 2);
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v11 = 1;
  }

  v7 = v6;
  v12 = v7;
  if (v7)
  {
    dispatch_group_enter(v7);
  }

  v8[0] = 0xAAAAAAAAAAAAAAAALL;
  v8[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v8, (a1 + 8));
  operator new();
}

void sub_1000D0A74(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_1000D0A94(uint64_t a1@<X0>, dispatch_group_t *a2@<X8>)
{
  v4 = dispatch_group_create();
  *a2 = v4;
  v5 = v4;
  if (v5)
  {
    dispatch_group_enter(v5);
  }

  v6[0] = 0xAAAAAAAAAAAAAAAALL;
  v6[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v6, (a1 + 8));
  operator new();
}

void sub_1000D0BF8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_1000D0C1C(uint64_t a1@<X0>, dispatch_group_t *a2@<X8>)
{
  v4 = dispatch_group_create();
  *a2 = v4;
  v5 = v4;
  if (v5)
  {
    dispatch_group_enter(v5);
  }

  v6[0] = 0xAAAAAAAAAAAAAAAALL;
  v6[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v6, (a1 + 8));
  operator new();
}

void sub_1000D0D80(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_1000D0DA4(uint64_t a1@<X0>, uint64_t a2@<X1>, dispatch_group_t *a3@<X8>)
{
  v6 = dispatch_group_create();
  *a3 = v6;
  v8[3] = a1;
  v10 = BYTE4(a2);
  v9 = a2;
  v7 = v6;
  v11 = v7;
  if (v7)
  {
    dispatch_group_enter(v7);
  }

  v8[0] = 0xAAAAAAAAAAAAAAAALL;
  v8[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v8, (a1 + 8));
  operator new();
}

void sub_1000D0F10(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_1000D0F30(uint64_t a1@<X8>)
{
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *a1 = v2;
  *(a1 + 16) = v2;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = MGCopyAnswer();
  v4 = v3;
  if (v3 && [v3 length])
  {
    sub_10000459C(&v5, [v4 UTF8String]);
    *a1 = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = 1;
  }
}

void sub_1000D100C(uint64_t a1)
{
  sub_1000D1154(a1);

  operator delete();
}

void sub_1000D104C(uint64_t a1)
{
  sub_1000D1154(a1 - 32);

  operator delete();
}

void sub_1000D1090(uint64_t a1)
{
  sub_1000D1154(a1 - 40);

  operator delete();
}

void sub_1000D10D4(uint64_t a1)
{
  sub_1000D1154(a1 - 48);

  operator delete();
}

void sub_1000D1118(uint64_t a1)
{
  sub_1000D1154(a1 - 56);

  operator delete();
}

uint64_t sub_1000D1154(uint64_t a1)
{
  *a1 = off_100188628;
  *(a1 + 32) = off_1001886D0;
  *(a1 + 40) = off_1001886F8;
  *(a1 + 48) = off_100188728;
  *(a1 + 56) = off_1001887A0;
  if (*(a1 + 128) == 1 && *(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v2 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v2)
  {

    operator delete();
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    sub_10000786C(v3);
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    sub_10000786C(v4);
  }

  sub_10002CDDC(a1 + 8);
  return a1;
}

void sub_1000D1398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_10000786C(a10);
  }

  if (a12)
  {
    sub_10000786C(a12);
  }

  operator delete();
}

void sub_1000D147C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    sub_1000D14C4(&a12, v12);
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D14C4(uint64_t a1, id *a2)
{
  v3 = sub_100006020(a2 + 3);
  dispatch_barrier_async_f(v3, a2, sub_1000D1608);
}

void sub_1000D152C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1000D1564(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = sub_100006020(v1 + 3);
  dispatch_barrier_async_f(v2, v1, sub_1000D1608);
}

uint64_t sub_1000D15C8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000D1608(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1000D1634(uint64_t **a1)
{
  v16 = a1;
  v1 = **a1;
  v2 = *(v1 + 96);
  if (!v2[1])
  {
    v3 = [[WiFiStateRelay alloc] initWithMonitoring:v1 + 40];
    v4 = *(v1 + 96);
    v5 = *(v4 + 8);
    *(v4 + 8) = v3;

    v2 = *(v1 + 96);
  }

  if (!v2[3])
  {
    v6 = [[WirelessTrialStateRelay alloc] initWithMonitoring:v1 + 56];
    v7 = *(v1 + 96);
    v8 = *(v7 + 24);
    *(v7 + 24) = v6;

    v2 = *(v1 + 96);
  }

  if (!v2[2])
  {
    v9 = [[TelephonyStateRelay alloc] initWithMonitoring:v1 + 48];
    v10 = *(v1 + 96);
    v11 = *(v10 + 16);
    *(v10 + 16) = v9;
  }

  sub_1000D0F30(__p);
  sub_1000D1890(v1 + 104, __p);
  if (v19 == 1 && SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_DEBUG))
  {
    sub_10012625C(v1, (v1 + 104));
  }

  if (*(v1 + 128) == 1)
  {
    v12 = *(v1 + 80);
    if (*(v1 + 127) < 0)
    {
      sub_1000078D8(__p, *(v1 + 104), *(v1 + 112));
    }

    else
    {
      *__p = *(v1 + 104);
      v18 = *(v1 + 120);
    }

    sub_1000372B0(v12, __p);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (!**(v1 + 96))
  {
    v13 = [[NetworkStateRelay alloc] initWithMonitoring:v1 + 32 withWiFiStateRelay:*(*(v1 + 96) + 8) withTelephonyStateRelay:*(*(v1 + 96) + 16)];
    v14 = *(v1 + 96);
    v15 = *v14;
    *v14 = v13;
  }

  operator delete();
}

void sub_1000D1834(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

__n128 sub_1000D1890(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      result = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      *a1 = result;
      a2[1].n128_u8[7] = 0;
      a2->n128_u8[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    result = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a1 = result;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    a2->n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

void sub_1000D1930()
{
  exception = __cxa_allocate_exception(8uLL);
}

uint64_t *sub_1000D197C(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  if (*(v1 + 32) == 1)
  {
    if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_DEBUG))
    {
      sub_1001262E4(v1);
    }

    v3 = *(v2 + 64);
    v8[0] = 0;
    v9 = 0;
    sub_10000298C(v8);
    sub_10000298C(v8);
    sub_100006C9C(v7);
  }

  (*(**(v2 + 64) + 32))(*(v2 + 64), &xmmword_100192CD8);
  sub_1000D1B3C(&v6);
  return sub_1000120B8(&v5);
}

uint64_t *sub_1000D1B3C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_1000278B4((v1 + 40));
    if (*(v1 + 32) == 1 && *(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_1000D1BA8(uint64_t *a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  if (*(v1 + 9) == 1)
  {
    if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_DEBUG))
    {
      sub_100126354((v1 + 8));
    }

    v3 = *(v2 + 64);
    v10[0] = 0;
    v11 = 0;
    sub_10000298C(v10);
    sub_10000298C(v10);
    v4 = *(v1 + 8);
    v8[0] = 5;
    v9 = v4;
    sub_10000298C(v8);
    sub_10000298C(v8);
    (*(*v3 + 24))(v3, &xmmword_100192D08, v10, v8, -1, 0);
    sub_10000298C(v8);
    sub_1000048FC(&v9, v8[0]);
    sub_10000298C(v10);
    sub_1000048FC(&v11, v10[0]);
  }

  else
  {
    (*(**(v2 + 64) + 32))(*(v2 + 64), &xmmword_100192D08);
  }

  sub_1000D1D70(&v7);
  return sub_1000120B8(&v6);
}

uint64_t *sub_1000D1D70(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_1000278B4((v1 + 16));
    operator delete();
  }

  return result;
}

uint64_t *sub_1000D1DC0(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  if (*(v1 + 32) == 1)
  {
    if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_DEBUG))
    {
      sub_1001263C0(v1);
    }

    v3 = *(v2 + 64);
    v8[0] = 0;
    v9 = 0;
    sub_10000298C(v8);
    sub_10000298C(v8);
    sub_100006C9C(v7);
  }

  (*(**(v2 + 64) + 32))(*(v2 + 64), &xmmword_100192CF0);
  sub_1000D1B3C(&v6);
  return sub_1000120B8(&v5);
}

uint64_t *sub_1000D1F80(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  if (*(v1 + 32) == 1)
  {
    if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_DEBUG))
    {
      sub_100126430(v1);
    }

    v3 = *(v2 + 64);
    v8[0] = 0;
    v9 = 0;
    sub_10000298C(v8);
    sub_10000298C(v8);
    sub_100006C9C(v7);
  }

  (*(**(v2 + 64) + 32))(*(v2 + 64), &xmmword_100192D20);
  sub_1000D1B3C(&v6);
  return sub_1000120B8(&v5);
}

uint64_t *sub_1000D2140(uint64_t *a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  if (*(v1 + 32) == 1)
  {
    if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_DEBUG))
    {
      sub_1001264A0(v1);
    }

    v3 = *(v2 + 64);
    sub_10000459C(__p, "cellularRAT");
    v9[0] = 0;
    v10 = 0;
    sub_10000298C(v9);
    sub_10000298C(v9);
    sub_100006C9C(v8);
  }

  v4 = *(v2 + 64);
  sub_10000459C(__p, "cellularRAT");
  (*(*v4 + 32))(v4, __p);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1000D1B3C(&v7);
  return sub_1000120B8(&v6);
}

uint64_t *sub_1000D2344(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  if (*(v1 + 9) == 1)
  {
    if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_DEBUG))
    {
      sub_100126510((v1 + 8));
    }

    v3 = *(v2 + 64);
    sub_10000459C(__p, "cellularSignalBars");
    v11[0] = 0;
    v12 = 0;
    sub_10000298C(v11);
    sub_10000298C(v11);
    v4 = *(v1 + 8);
    v9[0] = 5;
    v10 = v4;
    sub_10000298C(v9);
    sub_10000298C(v9);
    (*(*v3 + 24))(v3, __p, v11, v9, -1, 0);
    sub_10000298C(v9);
    sub_1000048FC(&v10, v9[0]);
    sub_10000298C(v11);
    sub_1000048FC(&v12, v11[0]);
  }

  else
  {
    v5 = *(v2 + 64);
    sub_10000459C(__p, "cellularSignalBars");
    (*(*v5 + 32))(v5, __p);
  }

  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1000D1D70(&v8);
  return sub_1000120B8(&v7);
}

uint64_t *sub_1000D2550(uint64_t *a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  if (*(v1 + 32) == 1)
  {
    if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_DEBUG))
    {
      sub_10012657C(v1);
    }

    v3 = *(v2 + 64);
    sub_10000459C(__p, "subscriberCarrierName");
    v9[0] = 0;
    v10 = 0;
    sub_10000298C(v9);
    sub_10000298C(v9);
    sub_100006C9C(v8);
  }

  v4 = *(v2 + 64);
  sub_10000459C(__p, "subscriberCarrierName");
  (*(*v4 + 32))(v4, __p);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1000D1B3C(&v7);
  return sub_1000120B8(&v6);
}

uint64_t *sub_1000D2754(uint64_t *a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  if (*(v1 + 32) == 1)
  {
    if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_DEBUG))
    {
      sub_1001265EC(v1);
    }

    v3 = *(v2 + 64);
    sub_10000459C(__p, "subscriberCarrierBundleVersion");
    v9[0] = 0;
    v10 = 0;
    sub_10000298C(v9);
    sub_10000298C(v9);
    sub_100006C9C(v8);
  }

  v4 = *(v2 + 64);
  sub_10000459C(__p, "subscriberCarrierBundleVersion");
  (*(*v4 + 32))(v4, __p);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1000D1B3C(&v7);
  return sub_1000120B8(&v6);
}

uint64_t *sub_1000D2958(uint64_t *a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  if (*(v1 + 32) == 1)
  {
    if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_DEBUG))
    {
      sub_10012665C(v1);
    }

    v3 = *(v2 + 64);
    sub_10000459C(__p, "subscriberCarrierCountry");
    v9[0] = 0;
    v10 = 0;
    sub_10000298C(v9);
    sub_10000298C(v9);
    sub_100006C9C(v8);
  }

  v4 = *(v2 + 64);
  sub_10000459C(__p, "subscriberCarrierCountry");
  (*(*v4 + 32))(v4, __p);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1000D1B3C(&v7);
  return sub_1000120B8(&v6);
}

uint64_t *sub_1000D2B5C(uint64_t *a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  if (*(v1 + 32) == 1)
  {
    if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_DEBUG))
    {
      sub_1001266CC(v1);
    }

    v3 = *(v2 + 64);
    sub_10000459C(__p, "servingCarrierName");
    v9[0] = 0;
    v10 = 0;
    sub_10000298C(v9);
    sub_10000298C(v9);
    sub_100006C9C(v8);
  }

  v4 = *(v2 + 64);
  sub_10000459C(__p, "servingCarrierName");
  (*(*v4 + 32))(v4, __p);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1000D1B3C(&v7);
  return sub_1000120B8(&v6);
}

uint64_t *sub_1000D2D60(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  if (*(v1 + 9) == 1)
  {
    if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_DEBUG))
    {
      sub_10012673C((v1 + 8));
    }

    v3 = *(v2 + 64);
    sub_10000459C(__p, "isDualSim");
    v11[0] = 0;
    v12 = 0;
    sub_10000298C(v11);
    sub_10000298C(v11);
    v4 = *(v1 + 8);
    v9[0] = 4;
    v10 = v4;
    sub_10000298C(v9);
    sub_10000298C(v9);
    (*(*v3 + 24))(v3, __p, v11, v9, -1, 1);
    sub_10000298C(v9);
    sub_1000048FC(&v10, v9[0]);
    sub_10000298C(v11);
    sub_1000048FC(&v12, v11[0]);
  }

  else
  {
    v5 = *(v2 + 64);
    sub_10000459C(__p, "isDualSim");
    (*(*v5 + 32))(v5, __p);
  }

  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1000D1D70(&v8);
  return sub_1000120B8(&v7);
}

uint64_t *sub_1000D2F6C(uint64_t *a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  if (*(v1 + 32) == 1)
  {
    if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_DEBUG))
    {
      sub_1001267A8(v1);
    }

    v3 = *(v2 + 64);
    sub_10000459C(__p, "cellularInternetConnection");
    v9[0] = 0;
    v10 = 0;
    sub_10000298C(v9);
    sub_10000298C(v9);
    sub_100006C9C(v8);
  }

  v4 = *(v2 + 64);
  sub_10000459C(__p, "cellularInternetConnection");
  (*(*v4 + 32))(v4, __p);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1000D1B3C(&v7);
  return sub_1000120B8(&v6);
}

uint64_t *sub_1000D3170(uint64_t *a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_DEBUG))
  {
    sub_100126818(v1);
  }

  v3 = *(v2 + 64);
  if (*(v1 + 9) == 1)
  {
    sub_10000459C(__p, "cellularLQM");
    v10[0] = 0;
    v11 = 0;
    sub_10000298C(v10);
    sub_10000298C(v10);
    v4 = *(v1 + 8);
    v8[0] = 5;
    v9 = v4;
    sub_10000298C(v8);
    sub_10000298C(v8);
    (*(*v3 + 24))(v3, __p, v10, v8, -1, 0);
    sub_10000298C(v8);
    sub_1000048FC(&v9, v8[0]);
    sub_10000298C(v10);
    sub_1000048FC(&v11, v10[0]);
  }

  else
  {
    sub_10000459C(__p, "cellularLQM");
    (*(*v3 + 32))(v3, __p);
  }

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1000D1D70(&v7);
  return sub_1000120B8(&v6);
}

void sub_1000D3324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, uint64_t a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  sub_1000D1D70(&a10);
  sub_1000120B8(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1000D3378(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v3 = qword_100192D98;
  if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_DEBUG))
  {
    sub_100126884(v1, v3);
  }

  v4 = *(v2 + 64);
  if (*(v1 + 9) == 1)
  {
    sub_10000459C(__p, "cellularHighThroughput");
    v11[0] = 0;
    v12 = 0;
    sub_10000298C(v11);
    sub_10000298C(v11);
    v5 = *(v1 + 8);
    v9[0] = 4;
    v10 = v5;
    sub_10000298C(v9);
    sub_10000298C(v9);
    (*(*v4 + 24))(v4, __p, v11, v9, -1, 1);
    sub_10000298C(v9);
    sub_1000048FC(&v10, v9[0]);
    sub_10000298C(v11);
    sub_1000048FC(&v12, v11[0]);
  }

  else
  {
    sub_10000459C(__p, "cellularHighThroughput");
    (*(*v4 + 32))(v4, __p);
  }

  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1000D1D70(&v8);
  return sub_1000120B8(&v7);
}

void sub_1000D352C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, uint64_t a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  sub_1000D1D70(&a10);
  sub_1000120B8(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1000D3580(uint64_t *a1)
{
  v1 = *a1;
  v12 = a1;
  v13 = v1;
  v2 = *v1;
  if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_DEBUG))
  {
    sub_100126918(v1);
  }

  if (*(v1 + 12) == 1)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v16 = v3;
    v17 = v3;
    sub_1000D0F30(v16);
    if (BYTE8(v17) == 1)
    {
      if (*(v2 + 128) != 1)
      {
        goto LABEL_19;
      }

      v4 = *(v2 + 127);
      if (v4 >= 0)
      {
        v5 = *(v2 + 127);
      }

      else
      {
        v5 = *(v2 + 112);
      }

      v6 = BYTE7(v17);
      if (SBYTE7(v17) < 0)
      {
        v6 = v16[1];
      }

      if (v5 != v6 || (v4 >= 0 ? (v7 = (v2 + 104)) : (v7 = *(v2 + 104)), (SBYTE7(v17) & 0x80u) == 0 ? (v8 = v16) : (v8 = v16[0]), memcmp(v7, v8, v5)))
      {
LABEL_19:
        v9 = qword_100192D98;
        if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_DEBUG))
        {
          sub_100126984(v16, v9);
        }

        sub_1000D37FC((v2 + 104), v16);
        if ((BYTE8(v17) & 1) == 0)
        {
          sub_1000D1930();
        }

        v10 = *(v2 + 80);
        if (SBYTE7(v17) < 0)
        {
          sub_1000078D8(__p, v16[0], v16[1]);
        }

        else
        {
          *__p = *v16;
          v15 = v17;
        }

        sub_1000372B0(v10, __p);
        if (SHIBYTE(v15) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    if (BYTE8(v17) == 1 && SBYTE7(v17) < 0)
    {
      operator delete(v16[0]);
    }
  }

  sub_1000D37AC(&v13);
  return sub_1000120B8(&v12);
}

void sub_1000D374C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a24 == 1 && a23 < 0)
  {
    operator delete(a18);
  }

  sub_1000D37AC(&a10);
  sub_1000120B8(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1000D37AC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_1000278B4((v1 + 16));
    operator delete();
  }

  return result;
}

void sub_1000D37FC(std::string *__dst, const std::string *a2)
{
  if (__dst[1].__r_.__value_.__s.__data_[0] == a2[1].__r_.__value_.__s.__data_[0])
  {
    if (__dst[1].__r_.__value_.__s.__data_[0])
    {

      std::string::operator=(__dst, a2);
    }
  }

  else if (__dst[1].__r_.__value_.__s.__data_[0])
  {
    if (SHIBYTE(__dst->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst->__r_.__value_.__l.__data_);
    }

    __dst[1].__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      sub_1000078D8(__dst, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v3 = *&a2->__r_.__value_.__l.__data_;
      __dst->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
      *&__dst->__r_.__value_.__l.__data_ = v3;
    }

    __dst[1].__r_.__value_.__s.__data_[0] = 1;
  }
}

uint64_t sub_1000D38A0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 31);
  return result;
}

void sub_1000D38AC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 8u);
}

void sub_1000D38D4()
{
  v0 = objc_autoreleasePoolPush();
  sub_10000459C(&xmmword_100192CD8, "primaryNetworkInterface");
  __cxa_atexit(&std::string::~string, &xmmword_100192CD8, &_mh_execute_header);
  sub_10000459C(&xmmword_100192CF0, "wiFiRadioTech");
  __cxa_atexit(&std::string::~string, &xmmword_100192CF0, &_mh_execute_header);
  sub_10000459C(&xmmword_100192D08, "wiFiLQM");
  __cxa_atexit(&std::string::~string, &xmmword_100192D08, &_mh_execute_header);
  sub_10000459C(&xmmword_100192D20, "wirelessTrialIdentifier");
  __cxa_atexit(&std::string::~string, &xmmword_100192D20, &_mh_execute_header);

  objc_autoreleasePoolPop(v0);
}

os_log_t sub_1000D39CC()
{
  qword_100192D38 = os_log_create("com.apple.analyticsd.critical", "main");
  qword_100192D40 = os_log_create("com.apple.analyticsd.critical", "rollover");
  qword_100192D48 = os_log_create("com.apple.analyticsd.critical", "event_process");
  qword_100192D50 = os_log_create("com.apple.CoreAnalytics", "send");
  qword_100192D58 = os_log_create("com.apple.analyticsd.event", "recv");
  qword_100192D60 = os_log_create("com.apple.analyticsd", "client");
  qword_100192D68 = os_log_create("com.apple.analyticsd.critical", "xform");
  qword_100192D70 = os_log_create("com.apple.analyticsd.critical", "xform_cache");
  qword_100192D78 = os_log_create("com.apple.analyticsd.critical", "config");
  qword_100192D80 = os_log_create("com.apple.analyticsd.critical", "db");
  qword_100192D90 = os_log_create("com.apple.analyticsd.critical", "sink");
  qword_100192D98 = os_log_create("com.apple.analyticsd.critical", "query-state");
  qword_100192DA0 = os_log_create("com.apple.analyticsd.critical", "xpc");
  qword_100192DA8 = os_log_create("com.apple.analyticsd.critical", "perf");
  qword_100192DB0 = os_log_create("com.apple.analyticsd.critical", "tracer");
  qword_100192DB8 = os_log_create("com.apple.analyticsd", "kernellistener");
  result = os_log_create("com.apple.CoreAnalytics.data-quality", "heartbeat-2hr");
  qword_100192DC0 = result;
  return result;
}

void sub_1000D3B68(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = a1;
  sub_1000D3C6C(&v6);
  v5 = &v7;
  v3 = v6;
  *a2 = 0xAAAAAAAAAAAAAA00;
  *(a2 + 8) = 0;
  v4 = v3;
  sub_10000298C(a2);
  sub_10000298C(a2);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D57C4;
  block[3] = &unk_1001818D8;
  block[4] = a2;
  block[5] = &v5;
  dispatch_sync(v4, block);
}

id sub_1000D3C6C@<X0>(void *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_100192E20, memory_order_acquire) & 1) == 0)
  {
    sub_100126A0C();
  }

  if (qword_100192DF8 != -1)
  {
    sub_100126A84();
  }

  result = qword_100192E18;
  *a1 = result;
  return result;
}

void sub_1000D3CCC(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  sub_1000D3C6C(&queue);
  v4[0] = a2;
  v4[1] = &v6;
  v3 = queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D5BF8;
  block[3] = &unk_1001857F0;
  block[4] = v4;
  dispatch_sync(queue, block);
}

void sub_1000D3D98(uint64_t a1)
{
  v4 = a1;
  sub_1000D3C6C(&queue);
  v2 = &v4;
  v1 = queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D5E84;
  block[3] = &unk_1001857F0;
  block[4] = &v2;
  dispatch_sync(queue, block);
}

void sub_1000D3E60(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  dword_100192DC8 = [v1 integerForKey:@"budget"];

  if (!dword_100192DC8)
  {
    dword_100192DC8 = 16000;
    if (sub_10001B7CC())
    {
      dword_100192DC8 *= 2;
    }
  }
}

uint64_t sub_1000D3EDC()
{
  if (qword_100192DE0 != -1)
  {
    sub_100126AAC();
  }

  return dword_100192DD8;
}

void sub_1000D3F14(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  dword_100192DD8 = [v1 integerForKey:@"cache_size"];

  if (!dword_100192DD8)
  {
    dword_100192DD8 = 30;
  }
}

void sub_1000D3F7C(uint64_t a1)
{
  sub_1000D3C6C(&queue);
  v3 = a1;
  v2 = queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D5F9C;
  block[3] = &unk_1001857F0;
  block[4] = &v3;
  dispatch_sync(queue, block);
}

void sub_1000D4040(uint64_t a1@<X8>)
{
  sub_1000D3C6C(&v5);
  v2 = v5;
  *a1 = 0xAAAAAAAAAAAAAA00;
  *(a1 + 8) = 0;
  v3 = v2;
  sub_10000298C(a1);
  sub_10000298C(a1);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D646C;
  block[3] = &unk_1001818D8;
  block[4] = a1;
  block[5] = &v4;
  dispatch_sync(v3, block);
}

void sub_1000D4138(BOOL *a1@<X8>)
{
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v15 = 0xAAAAAAAAAAAAAAAALL;
  sub_1000D3B68("GreyMatterAvailable", &v14);
  v23[0] = "availability";
  v22 = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20 = v2;
  v21 = v2;
  sub_10000BD10(&v14, v23, &v20);
  __p[0] = &v14;
  __p[1] = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0x8000000000000000;
  sub_10000DCFC(__p);
  if (sub_10000DD7C(&v20, __p))
  {
    v3 = sub_100016CD8();
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v3 = sub_10000DB44(&v20);
  }

  if (*v3 == 3)
  {
    v4 = *(v3 + 8);
    goto LABEL_8;
  }

LABEL_7:
  v4 = 0;
LABEL_8:
  v23[0] = "countryPolicy";
  v22 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20 = v5;
  v21 = v5;
  sub_10000BD10(&v14, v23, &v20);
  __p[0] = &v14;
  __p[1] = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0x8000000000000000;
  sub_10000DCFC(__p);
  if (sub_10000DD7C(&v20, __p))
  {
    v6 = sub_100016CD8();
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v6 = sub_10000DB44(&v20);
  }

  if (*v6 == 3)
  {
    v7 = *(v6 + 8);
    goto LABEL_15;
  }

LABEL_14:
  v7 = 0;
LABEL_15:
  v8 = qword_100192D38;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100017DF0(&v20);
  }

  if (v4)
  {
    v9 = *(v4 + 23);
    if (v9 < 0)
    {
      if (v4[1] != 9)
      {
        goto LABEL_31;
      }

      v4 = *v4;
    }

    else if (v9 != 9)
    {
      goto LABEL_31;
    }

    v11 = *v4 == 0x6C62616C69617661 && *(v4 + 8) == 101;
    if (v7)
    {
      goto LABEL_32;
    }

LABEL_30:
    sub_10000459C(__p, "ROW");
    goto LABEL_35;
  }

LABEL_31:
  v11 = 0;
  if (!v7)
  {
    goto LABEL_30;
  }

LABEL_32:
  if (*(v7 + 23) < 0)
  {
    sub_1000078D8(__p, *v7, *(v7 + 1));
  }

  else
  {
    v12 = *v7;
    v17 = *(v7 + 2);
    *__p = v12;
  }

LABEL_35:
  *a1 = v11;
  v13 = a1 + 8;
  if (SHIBYTE(v17) < 0)
  {
    sub_1000078D8(v13, __p[0], __p[1]);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *v13 = *__p;
    *(v13 + 2) = v17;
  }

  sub_10000298C(&v14);
  sub_1000048FC(&v15, v14);
}

void sub_1000D43F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_10002C5F4(&a9);
  _Unwind_Resume(a1);
}

void sub_1000D4438(uint64_t a1@<X8>)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  sub_1000D3B68("MediaAccountStatus", &v7);
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v11 = "appStoreCountry";
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9[0] = v2;
  v9[1] = v2;
  sub_10000BD10(&v7, &v11, v9);
  v12[0] = &v7;
  memset(&v12[1], 0, 24);
  v12[4] = 0x8000000000000000;
  sub_10000DCFC(v12);
  if (sub_10000DD7C(v9, v12))
  {
    v3 = sub_100016CD8();
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v3 = sub_10000DB44(v9);
  }

  if (*v3 == 3)
  {
    v4 = *(v3 + 8);
    goto LABEL_8;
  }

LABEL_7:
  v4 = 0;
LABEL_8:
  v5 = qword_100192D38;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100017DF0(v9);
  }

  if (v4)
  {
    if (*(v4 + 23) < 0)
    {
      sub_1000078D8(a1, *v4, *(v4 + 1));
    }

    else
    {
      v6 = *v4;
      *(a1 + 16) = *(v4 + 2);
      *a1 = v6;
    }
  }

  else
  {
    sub_10000459C(a1, "Unknown");
  }

  sub_10000298C(&v7);
  sub_1000048FC(&v8, v7);
}

void sub_1000D45FC(char a1)
{
  v4 = a1;
  sub_1000D3C6C(&queue);
  v2 = &v4;
  v1 = queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D6914;
  block[3] = &unk_1001857F0;
  block[4] = &v2;
  dispatch_sync(queue, block);
}

uint64_t sub_1000D46C4()
{
  sub_1000D3C6C(&queue);
  v0 = queue;
  v6 = -86;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D698C;
  block[3] = &unk_1001818D8;
  block[4] = &v6;
  block[5] = &v3;
  dispatch_sync(queue, block);
  v1 = v6;

  return v1 & 1;
}

unint64_t sub_1000D47A0(void *a1)
{
  v6 = a1;
  sub_1000D3C6C(&queue);
  v4 = &v6;
  v1 = queue;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D5548;
  block[3] = &unk_1001818D8;
  block[4] = &v8;
  block[5] = &v4;
  dispatch_sync(queue, block);
  v2 = v8;

  return v2;
}

void sub_1000D4894()
{
  sub_1000D3C6C(&queue);
  v0 = queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D69F4;
  block[3] = &unk_1001857F0;
  block[4] = &v1;
  dispatch_sync(queue, block);
}

double sub_1000D4950()
{
  sub_1000D3C6C(&queue);
  v0 = queue;
  v6 = -1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D6B58;
  block[3] = &unk_1001818D8;
  block[4] = &v6;
  block[5] = &v3;
  dispatch_sync(queue, block);
  v1 = *&v6;

  return v1;
}

void sub_1000D4A28(double a1)
{
  v4 = a1;
  sub_1000D3C6C(&queue);
  v2 = &v4;
  v1 = queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D6BC0;
  block[3] = &unk_1001857F0;
  block[4] = &v2;
  dispatch_sync(queue, block);
}

void sub_1000D4AF0(int a1, int a2)
{
  v5 = a2;
  v6 = a1;
  sub_1000D3C6C(&queue);
  v3[0] = &v6;
  v3[1] = &v5;
  v2 = queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D6C38;
  block[3] = &unk_1001857F0;
  block[4] = v3;
  dispatch_sync(queue, block);
}

void sub_1000D4BBC(uint64_t a1@<X8>)
{
  sub_1000D3C6C(&v5);
  v2 = v5;
  *a1 = 0xAAAAAAAAAAAAAA00;
  *(a1 + 8) = 0;
  v3 = v2;
  sub_10000298C(a1);
  sub_10000298C(a1);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D6C5C;
  block[3] = &unk_1001818D8;
  block[4] = a1;
  block[5] = &v4;
  dispatch_sync(v3, block);
}

unsigned __int8 *sub_1000D4CB4@<X0>(unsigned __int8 *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_100192E08, memory_order_acquire) & 1) == 0)
  {
    sub_100126B88();
  }

  if (qword_100192DE8 != -1)
  {
    sub_100126C14();
  }

  return sub_10000FF70(a1, &byte_100192E28);
}

void sub_1000D4D20(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = [v1 stringForKey:@"daemon_perf_params"];

  if (v2)
  {
    if ([v2 length])
    {
      sub_10000459C(__p, [v2 UTF8String]);
      v12 = 0;
      sub_1000039AC(__p, buf, 1, v7);
      sub_100004FBC(buf);
      sub_10000298C(v7);
      v3 = byte_100192E28;
      byte_100192E28 = v7[0];
      v7[0] = v3;
      v4 = qword_100192E30;
      qword_100192E30 = v8;
      v8 = v4;
      sub_10000298C(&byte_100192E28);
      sub_10000298C(v7);
      sub_1000048FC(&v8, v7[0]);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  v5 = qword_100192DA8;
  if (byte_100192E28)
  {
    v6 = qword_100192DA8;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      sub_100017DF0(buf);
    }
  }

  else if (os_log_type_enabled(qword_100192DA8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[DaemonState] Demon perf checks are disabled. Please update the daemon perf params in defaults if you wish to turn on perf checks.", buf, 2u);
  }
}

void sub_1000D4F34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  v20 = v19;

  _Unwind_Resume(a1);
}

uint64_t sub_1000D4FC8()
{
  sub_1000D3C6C(&queue);
  v0 = queue;
  v6 = -86;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D6E9C;
  block[3] = &unk_1001818D8;
  block[4] = &v6;
  block[5] = &v3;
  dispatch_sync(queue, block);
  v1 = v6;

  return v1 & 1;
}

uint64_t sub_1000D5098()
{
  sub_1000D3C6C(&queue);
  v0 = queue;
  v6 = -86;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D6F88;
  block[3] = &unk_1001818D8;
  block[4] = &v6;
  block[5] = &v3;
  dispatch_sync(queue, block);
  v1 = v6;

  return v1 & 1;
}

void sub_1000D5168(char a1)
{
  v4 = a1;
  sub_1000D3C6C(&queue);
  v2 = &v4;
  v1 = queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D701C;
  block[3] = &unk_1001857F0;
  block[4] = &v2;
  dispatch_sync(queue, block);
}

void sub_1000D5230()
{
  sub_1000D3C6C(&queue);
  v0 = queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D7094;
  block[3] = &unk_1001857F0;
  block[4] = &v1;
  dispatch_sync(queue, block);
}

void sub_1000D52EC(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_100192E10, memory_order_acquire) & 1) == 0)
  {
    sub_100126C28();
  }

  if (qword_100192DF0 != -1)
  {
    sub_100126CA0();
  }

  if (byte_100192E4F < 0)
  {
    v2 = xmmword_100192E38;

    sub_1000078D8(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_100192E38;
    *(a1 + 16) = unk_100192E48;
  }
}

void sub_1000D538C(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = [v1 stringForKey:@"nonce"];

  if (!v2)
  {
    v3 = qword_100192D38;
    if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[DeviceKeyManager] WARNING: Device nonce not present; generating and storing new nonce", v7, 2u);
    }

    v4 = +[NSUUID UUID];
    v2 = [v4 UUIDString];

    v5 = +[NSUserDefaults standardUserDefaults];
    [v5 setObject:v2 forKey:@"nonce"];
  }

  v6 = v2;
  std::string::assign(&xmmword_100192E38, [v2 UTF8String]);
}

void sub_1000D5508(id a1)
{
  qword_100192E18 = dispatch_queue_create("analyticsd.DaemonState", 0);

  _objc_release_x1();
}

void sub_1000D5548(uint64_t a1)
{
  v2 = *(a1 + 40);
  v8 = -1;
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 stringForKey:**v2];

  if (v4)
  {
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v21 = v5;
    v22 = v5;
    v19 = v5;
    v20 = v5;
    v17 = v5;
    v18 = v5;
    v15 = v5;
    v16 = v5;
    v13 = v5;
    v14 = v5;
    *v11 = v5;
    v12 = v5;
    v10[2] = v5;
    v10[3] = v5;
    v10[0] = v5;
    v10[1] = v5;
    v9 = v5;
    sub_10000459C(&__p, [v4 UTF8String]);
    sub_100009860(&v9, &__p, 8);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::istream::operator>>();
    if (SBYTE7(v12) < 0)
    {
      operator delete(v11[0]);
    }

    std::locale::~locale(v10 + 1);
    std::istream::~istream();
    std::ios::~ios();
    v6 = v8;
  }

  else
  {
    v6 = -1;
  }

  **(a1 + 32) = v6;
}

void sub_1000D5768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  std::ios::~ios();

  _Unwind_Resume(a1);
}

void sub_1000D57C4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [NSString stringWithUTF8String:**v2];
  v5 = [v3 stringForKey:v4];

  if (v5 && [v5 length])
  {
    v16 = 0xAAAAAAAAAAAAAAAALL;
    v17 = 0xAAAAAAAAAAAAAAAALL;
    v18 = [v5 UTF8String];
    v23 = 0;
    sub_1000D5AD0(&v18, buf, 1, &v16);
    sub_100004FBC(buf);
    v6 = v16;
    v7 = qword_100192D38;
    v8 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        sub_100126CB4(**v2, buf, [v5 length], v8);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v14 = **v2;
      v15 = [v5 length];
      *buf = 136315394;
      v20 = v14;
      v21 = 2048;
      v22 = v15;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[DaemonState] WARNING: %s parameters exist (%lu bytes) but was not parsed", buf, 0x16u);
    }
  }

  else
  {
    v9 = qword_100192D38;
    if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_INFO))
    {
      v10 = **v2;
      *buf = 136315138;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[DaemonState] No information for key %s", buf, 0xCu);
    }

    LOBYTE(v16) = 0;
    v17 = 0;
    sub_10000298C(&v16);
    sub_10000298C(&v16);
  }

  v11 = *(a1 + 32);
  sub_10000298C(&v16);
  v12 = *v11;
  *v11 = v16;
  LOBYTE(v16) = v12;
  v13 = *(v11 + 8);
  *(v11 + 8) = v17;
  v17 = v13;
  sub_10000298C(v11);
  sub_10000298C(&v16);
  sub_1000048FC(&v17, v16);
}

void sub_1000D5A40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_10002C5F4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D5AD0@<X0>(const char **a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = 0xAAAAAAAAAAAAAAAALL;
  *(a4 + 8) = 0;
  *a4 = 0;
  sub_10000298C(a4);
  sub_10000298C(a4);
  v8 = *a1;
  v9 = strlen(v8);
  sub_100003538(v11, a2);
  sub_10000A638(v8, &v8[v9], v11, a3, v12);
  sub_10000A72C(v12, 1, a4);
  sub_10000797C(&v13);
  sub_100004FBC(v12);
  return sub_100004FBC(v11);
}

void sub_1000D5BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_10000797C(v14 + 40);
  sub_100004FBC(&a13);
  sub_100004FBC(&a9);
  sub_10002C5F4(v13);
  _Unwind_Resume(a1);
}

void sub_1000D5BF8(uint64_t a1)
{
  v1 = *(a1 + 32);
  +[NSUserDefaults standardUserDefaults];
  objc_claimAutoreleasedReturnValue();
  v2 = *v1;
  sub_100017DF0(&__p);
}

void sub_1000D5CFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, int a17, __int16 a18, uint64_t a19, char a20, char a21, uint64_t a22)
{
  if (SHIBYTE(a19) < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v28 = __cxa_begin_catch(a1);
    v29 = qword_100192D38;
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {

      __cxa_end_catch();
      JUMPOUT(0x1000D5CC8);
    }

    (*(*v28 + 16))(v28);
    v30 = *v25;
    v31 = *v25[1];
    sub_100017DF0(&a10);
  }

  _Unwind_Resume(a1);
}

void sub_1000D5E84(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = +[NSUserDefaults standardUserDefaults];
  v2 = [NSString stringWithUTF8String:**v1];
  [v3 removeObjectForKey:v2];
}

void sub_1000D5F08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v19 = v17;

  if (a2 != 1)
  {
    _Unwind_Resume(a1);
  }

  v21 = __cxa_begin_catch(a1);
  v22 = qword_100192D38;
  if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_ERROR))
  {
    sub_100126D0C(v21, v22, v16);
  }

  __cxa_end_catch();
}

void sub_1000D5F9C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *v1;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  v25 = "user-interface-language";
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v3;
  v23 = v3;
  sub_10000BD10(v2, &v25, __p);
  *buf = v2;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0x8000000000000000;
  if (!v2)
  {
    __assert_rtn("iter_impl", "iter_impl.hpp", 88, "m_object != nullptr");
  }

  sub_10000DCFC(buf);
  if (sub_10000DD7C(__p, buf))
  {
    v4 = sub_100016CD8();
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = sub_10000DB44(__p);
  }

  if (*v4 == 3)
  {
    v5 = +[NSUserDefaults standardUserDefaults];
    sub_100010390(v4, __p);
    if ((SBYTE7(v23) & 0x80u) == 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    v7 = [NSString stringWithUTF8String:v6];
    [v5 setObject:v7 forKey:@"user-interface-language"];

    if (SBYTE7(v23) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_13:
  v8 = *v1;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  v25 = "preferred-user-interface-language";
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v9;
  v23 = v9;
  sub_10000BD10(v8, &v25, __p);
  *buf = v8;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0x8000000000000000;
  if (!v8)
  {
    __assert_rtn("iter_impl", "iter_impl.hpp", 88, "m_object != nullptr");
  }

  sub_10000DCFC(buf);
  if (sub_10000DD7C(__p, buf))
  {
    v10 = sub_100016CD8();
    if (!v10)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v10 = sub_10000DB44(__p);
  }

  if (*v10 == 3)
  {
    v11 = +[NSUserDefaults standardUserDefaults];
    sub_100010390(v10, __p);
    if ((SBYTE7(v23) & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    v13 = [NSString stringWithUTF8String:v12];
    [v11 setObject:v13 forKey:@"preferred-user-interface-language"];

    if (SBYTE7(v23) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_25:
  v14 = *v1;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  v25 = "user-set-region-format";
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v15;
  v23 = v15;
  sub_10000BD10(v14, &v25, __p);
  *buf = v14;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0x8000000000000000;
  if (!v14)
  {
    __assert_rtn("iter_impl", "iter_impl.hpp", 88, "m_object != nullptr");
  }

  sub_10000DCFC(buf);
  if (sub_10000DD7C(__p, buf))
  {
    v16 = sub_100016CD8();
    if (!v16)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v16 = sub_10000DB44(__p);
  }

  if (*v16 == 3)
  {
    v17 = +[NSUserDefaults standardUserDefaults];
    sub_100010390(v16, __p);
    if ((SBYTE7(v23) & 0x80u) == 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    v19 = [NSString stringWithUTF8String:v18];
    [v17 setObject:v19 forKey:@"user-set-region-format"];

    if (SBYTE7(v23) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_37:
  v20 = qword_100192D38;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = *v1;
    sub_100017DF0(__p);
  }
}

void sub_1000D63F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1000D6454(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1000D646C()
{
  v3[0] = 0xAAAAAAAAAAAAAA00;
  v3[1] = 0;
  sub_10000298C(v3);
  sub_10000298C(v3);
  v0 = +[NSUserDefaults standardUserDefaults];
  v1 = [v0 valueForKey:@"user-interface-language"];

  if (v1)
  {
    v2 = v1;
    sub_10000459C(__p, [v1 UTF8String]);
  }

  else
  {
    sub_10000459C(__p, "<unknown>");
  }

  sub_1000739F0(v5);
}

void sub_1000D6914(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 setBool:**v1 forKey:@"reset_dev_config"];
}

void sub_1000D698C(uint64_t a1)
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"reset_dev_config"];

  **(a1 + 32) = v3;
}

void sub_1000D69F4()
{
  v0 = sub_10005FA3C();
  if (v0 < 0)
  {
    v4 = qword_100192DA8;
    if (os_log_type_enabled(qword_100192DA8, OS_LOG_TYPE_ERROR))
    {
      sub_100126DF4(v4);
    }
  }

  else
  {
    v1 = v0;
    v2 = +[NSUserDefaults standardUserDefaults];
    v3 = [NSString stringWithFormat:@"%ld", v1];
    [v2 setObject:v3 forKey:@"cpu_uptime"];
  }

  v5 = sub_10005F9A0();
  if (v5 < 0)
  {
    v9 = qword_100192DA8;
    if (os_log_type_enabled(qword_100192DA8, OS_LOG_TYPE_ERROR))
    {
      sub_100126E64(v9);
    }
  }

  else
  {
    v6 = v5;
    v7 = +[NSUserDefaults standardUserDefaults];
    v8 = [NSString stringWithFormat:@"%ld", v6];
    [v7 setObject:v8 forKey:@"wall_uptime"];
  }
}

void sub_1000D6B30(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1000D6B58(uint64_t a1)
{
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 doubleForKey:@"app_usage_last_sync"];
  v4 = v3;

  **(a1 + 32) = v4;
}

void sub_1000D6BC0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 setDouble:@"app_usage_last_sync" forKey:**v1];
}

uint64_t sub_1000D6C38(uint64_t result)
{
  v1 = *(result + 32);
  v3 = *v1;
  v2 = v1[1];
  dword_100192E00 = *v3;
  dword_100192E04 = *v2;
  return result;
}

void sub_1000D6C5C()
{
  v1[0] = 0xAAAAAAAAAAAAAA00;
  v1[1] = 0;
  sub_10000298C(v1);
  sub_10000298C(v1);
  if (dword_100192E00 >= 3)
  {
    if (dword_100192E00 >= 0xB)
    {
      v0 = "10+";
    }

    else
    {
      v0 = "3-10";
    }
  }

  else
  {
    v0 = off_1001889A0[dword_100192E00];
  }

  v1[3] = v0;
  sub_10001AAEC(v2);
}

void sub_1000D6E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  sub_10002C5F4(&a12);
  sub_10002C5F4(&a9);
  _Unwind_Resume(a1);
}

void sub_1000D6E9C(uint64_t a1)
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"activateSamplingOverride"];

  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 integerForKey:@"samplingPercentage"];

  v6 = +[NSUserDefaults standardUserDefaults];
  [v6 removeObjectForKey:@"activateSamplingOverride"];

  v7 = +[NSUserDefaults standardUserDefaults];
  [v7 removeObjectForKey:@"samplingPercentage"];

  **(a1 + 32) = (v5 == 100) & v3;
}

void sub_1000D6F88(uint64_t a1)
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"current_disable_sampling_override"];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  **(a1 + 32) = v4;
}

void sub_1000D701C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 setBool:**v1 forKey:@"staged_disable_sampling_override"];
}

void sub_1000D7094()
{
  v0 = +[NSUserDefaults standardUserDefaults];
  v4 = [v0 objectForKey:@"staged_disable_sampling_override"];

  v1 = +[NSUserDefaults standardUserDefaults];
  [v1 removeObjectForKey:@"staged_disable_sampling_override"];

  v2 = v4;
  if (v4)
  {
    if ([v4 BOOLValue])
    {
      v3 = +[NSUserDefaults standardUserDefaults];
      [v3 setBool:1 forKey:@"current_disable_sampling_override"];
    }

    else
    {
      v3 = +[NSUserDefaults standardUserDefaults];
      [v3 removeObjectForKey:@"current_disable_sampling_override"];
    }

    v2 = v4;
  }
}

uint64_t sub_1000D71A0()
{
  v1[0] = off_1001889C8;
  v1[3] = v1;
  sub_10005D3F0(v1);
  return sub_10000E910(v1);
}

void sub_1000D7224(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000E910(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D7238()
{
  memset(v6, 170, sizeof(v6));
  sub_10005DF0C(v6);
  v0 = v6[0];
  v1 = v6[1];
  if (v6[0] == v6[1])
  {
LABEL_5:
    v2 = 0;
  }

  else
  {
    while (1)
    {
      sub_100117660(v0, 0, &v7);
      if (v7 >= 2 && !sub_10011818C(v0, 0))
      {
        break;
      }

      v0 += 24;
      if (v0 == v1)
      {
        goto LABEL_5;
      }
    }

    v3 = qword_100192D38;
    if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v0 + 23) >= 0)
      {
        v4 = v0;
      }

      else
      {
        v4 = *v0;
      }

      *buf = 136446210;
      *&buf[4] = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[LegacyContains] Found contents in legacy transform state directory: %{public}s", buf, 0xCu);
    }

    v2 = 1;
  }

  *buf = v6;
  sub_10002DE40(buf);
  return v2;
}

void sub_1000D74F4()
{
  sub_10005D554(&buf);
  __p = buf;
  sub_100118274(&__p, 0);
  if (v0)
  {
    v1 = qword_100192D38;
    if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_INFO))
    {
      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
      *(buf.__r_.__value_.__r.__words + 4) = p_p;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "[LegacyWipe] Removed legacy allowlist: %{public}s", &buf, 0xCu);
    }
  }

  sub_10005D670(&buf);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = buf;
  sub_100118274(&__p, 0);
  if (v3)
  {
    v4 = qword_100192D38;
    if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_INFO))
    {
      v5 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v5 = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
      *(buf.__r_.__value_.__r.__words + 4) = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[LegacyWipe] Removed legacy config: %{public}s", &buf, 0xCu);
    }
  }

  sub_10005D78C(&buf);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = buf;
  if (sub_1001183D0(&__p, 0))
  {
    v6 = qword_100192D38;
    if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_INFO))
    {
      v7 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v7 = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
      *(buf.__r_.__value_.__r.__words + 4) = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[LegacyWipe] Removed all in legacy journal directory: %{public}s", &buf, 0xCu);
    }
  }

  sub_10005D8A8(&buf);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = buf;
  if (sub_1001183D0(&__p, 0))
  {
    v8 = qword_100192D38;
    if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_INFO))
    {
      v9 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v9 = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
      *(buf.__r_.__value_.__r.__words + 4) = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[LegacyWipe] Removed all in legacy markov path: %{public}s", &buf, 0xCu);
    }
  }

  sub_10005D9C4(&buf);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = buf;
  sub_100118274(&__p, 0);
  if (v10)
  {
    v11 = qword_100192D38;
    if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_DEFAULT))
    {
      v12 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v12 = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
      *(buf.__r_.__value_.__r.__words + 4) = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[LegacyWipe] Removed legacy budget usage path: %{public}s", &buf, 0xCu);
    }
  }

  sub_10005DAE0(&buf);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = buf;
  sub_100118274(&__p, 0);
  if (v13)
  {
    v14 = qword_100192D38;
    if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_DEFAULT))
    {
      v15 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v15 = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
      *(buf.__r_.__value_.__r.__words + 4) = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[LegacyWipe] Removed legacy budget usage temp path: %{public}s", &buf, 0xCu);
    }
  }

  memset(&buf, 170, sizeof(buf));
  sub_10005DBFC(&buf);
  for (i = buf.__r_.__value_.__r.__words[0]; i != buf.__r_.__value_.__l.__size_; ++i)
  {
    std::string::operator=(&__p, i);
    if (sub_1001183D0(&__p, 0))
    {
      v17 = qword_100192D38;
      if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_DEFAULT))
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = &__p;
        }

        else
        {
          v18 = __p.__r_.__value_.__r.__words[0];
        }

        *v25 = 136446210;
        *&v25[4] = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[LegacyWipe] Removed legacy transform state directory: %{public}s", v25, 0xCu);
      }
    }
  }

  memset(v25, 170, 24);
  sub_10005EAF0(v25);
  for (j = *v25; j != *&v25[8]; ++j)
  {
    std::string::operator=(&__p, j);
    sub_100118274(&__p, 0);
    if (v20)
    {
      v21 = qword_100192D38;
      if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_DEFAULT))
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = &__p;
        }

        else
        {
          v22 = __p.__r_.__value_.__r.__words[0];
        }

        *v24 = 136446210;
        *&v24[4] = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[LegacyWipe] Removed legacy transform staging path: %{public}s", v24, 0xCu);
      }
    }
  }

  *v24 = v25;
  sub_10002DE40(v24);
  *v25 = &buf;
  sub_10002DE40(v25);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

uint64_t sub_1000D7EDC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1000D7F28(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x16u);
}

int *sub_1000D7F48@<X0>(const char *a1@<X1>, void *a2@<X8>)
{
  result = sub_100117660(a1, 0, v4);
  if (v4[0] >= 2u)
  {
    sub_1000D80D4();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void sub_1000D7FF4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_1000D8000(uint64_t a1)
{
  v2[0] = off_100188AD8;
  v2[1] = a1;
  v2[3] = v2;
  sub_100076F64(a1, v2);
  return sub_100070850(v2);
}

void sub_1000D8084(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100070850(va);
  _Unwind_Resume(a1);
}

void sub_1000D809C(uint64_t a1)
{
  sub_1000705E4(a1);

  operator delete();
}

void *sub_1000D8158(void *a1, __int128 *a2, __int128 *a3, void *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100188A88;
  sub_100076E38((a1 + 3), a2, a3, a4);
  a1[3] = &off_100188A48;
  return a1;
}

void sub_1000D81F0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100188A88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000D82DC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100188AD8;
  a2[1] = v2;
  return result;
}

void sub_1000D8308(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  memset(__dst, 170, 24);
  if (*(v3 + 55) < 0)
  {
    sub_1000078D8(__dst, *(v3 + 32), *(v3 + 40));
  }

  else
  {
    *__dst = *(v3 + 32);
    __dst[2] = *(v3 + 48);
  }

  memset(__p, 170, 24);
  if (*(a2 + 23) < 0)
  {
    sub_1000078D8(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    __p[2] = *(a2 + 16);
  }

  sub_100082C58();
}

void sub_1000D8504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000D8554(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1000D85A0(uint64_t a1, __int16 a2, __int16 a3, CFTypeRef cf)
{
  if ((atomic_load_explicit(&qword_100192E58, memory_order_acquire) & 1) == 0)
  {
    sub_10012727C();
  }

  if ((atomic_load_explicit(&qword_100192E68, memory_order_acquire) & 1) == 0)
  {
    sub_100127300();
  }

  CFRetain(cf);
  v8 = qword_100192E60;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_1000D8750;
  block[3] = &unk_100188B48;
  if (*(a1 + 23) < 0)
  {
    sub_1000078D8(__p, *a1, *(a1 + 8));
  }

  else
  {
    *__p = *a1;
    v10 = *(a1 + 16);
  }

  LOWORD(v11) = a2;
  WORD1(v11) = a3;
  *(&v11 + 1) = cf;
  if (SHIBYTE(v10) < 0)
  {
    sub_1000078D8(&v13, __p[0], __p[1]);
  }

  else
  {
    v13 = *__p;
    v14 = v10;
  }

  v15 = v11;
  dispatch_async(v8, block);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13);
  }
}

void sub_1000D8728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D8750(uint64_t a1)
{
  v2 = sub_10001E21C(&xmmword_100192E70, (a1 + 32));
  if (!v2)
  {
    operator new();
  }

  v4 = *(a1 + 64);
  v3 = (a1 + 64);
  sub_1000D893C(v2[5], *(v3 - 4), *(v3 - 3), v4);
  CFRelease(*v3);
}

__n128 sub_1000D88D4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    sub_1000078D8((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v4 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v4;
  }

  result = *(a2 + 56);
  *(a1 + 56) = result;
  return result;
}

void sub_1000D8928(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

void sub_1000D893C(uint64_t a1, __int16 a2, __int16 a3, void *a4)
{
  if (objc_opt_class())
  {
    v8 = a4;
    v9 = [v8 mutableCopy];
    v10 = +[OSASystemConfiguration sharedInstance];
    v11 = [v10 crashReporterKey];
    [v9 setObject:v11 forKeyedSubscript:@"CRKey"];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000D8BD0;
    v14[3] = &unk_100188B80;
    v15 = v9;
    v16 = a1;
    v17 = a2;
    v18 = a3;
    v12 = v9;
    sub_1000D8B0C(a1, v14);
  }

  else
  {
    v13 = qword_100192DB0;
    if (os_log_type_enabled(qword_100192DB0, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[RTCReporter] WARNING: Failed to get RTCReporting class", buf, 2u);
    }
  }
}

void sub_1000D8B0C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D8E74;
  block[3] = &unk_100188BF0;
  v7 = v3;
  v8 = a1;
  v5 = v3;
  dispatch_async(v4, block);
}

id sub_1000D8BD0(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = qword_100192DB0;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [*(a1 + 32) description];
    sub_10012735C(v4, v6, v3);
  }

  return [*(v2 + 16) sendMessageWithCategory:*(a1 + 48) type:*(a1 + 50) payload:*(a1 + 32) error:0];
}

void sub_1000D8E74(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 16))
  {
    if ((*(v2 + 48) & 1) == 0)
    {
      v3 = qword_100192E50;
      v25 = objc_retainBlock(*(a1 + 32));
      [v3 addObject:?];

      return;
    }

LABEL_7:
    v4 = *(a1 + 32);
    (*(*(a1 + 32) + 16))();
    *(v2 + 56) = dispatch_time(0, 0);
    return;
  }

  if (*(v2 + 48))
  {
    goto LABEL_7;
  }

  v5 = [NSNumber numberWithUnsignedInt:arc4random()];
  v6 = qword_100192DB0;
  if (os_log_type_enabled(qword_100192DB0, OS_LOG_TYPE_DEBUG))
  {
    sub_1001273B4(v2, v6);
  }

  v7 = [RTCReporting alloc];
  v8 = v5;
  v29 = kRTCReportingSessionInfoClientType;
  v30 = kRTCReportingSessionInfoClientVersion;
  v34 = &off_10018CC88;
  v35 = &off_10018CCA0;
  v31 = kRTCReportingSessionInfoBatchEvent;
  v32 = kRTCReportingSessionInfoSessionID;
  v36 = &__kCFBooleanTrue;
  v37 = v8;
  v33 = kRTCReportingSessionInfoContainsRealtimeEvents;
  v38 = &__kCFBooleanFalse;
  v9 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v29 count:5];

  v10 = v2 + 24;
  v11 = *(v2 + 47);
  if ((*(v2 + 47) & 0x80000000) == 0)
  {
    if (v11 != 10)
    {
      v12 = (v2 + 24);
      if (v11 != 13)
      {
        goto LABEL_24;
      }

      goto LABEL_17;
    }

    if (*v10 != 0x636974796C616E61 || *(v2 + 32) != 25715)
    {
      goto LABEL_24;
    }

LABEL_39:
    v14 = @"com.apple.CoreAnalytics";
    goto LABEL_25;
  }

  v13 = *(v2 + 32);
  if (v13 == 10)
  {
    if (**v10 != 0x636974796C616E61 || *(*v10 + 8) != 25715)
    {
      goto LABEL_24;
    }

    goto LABEL_39;
  }

  if (v13 != 13)
  {
LABEL_24:
    v14 = @"unknown";
    goto LABEL_25;
  }

  v12 = *v10;
LABEL_17:
  if (*v12 ^ 0x636974796C616E61 | *(v12 + 5) ^ 0x62685F6473636974)
  {
    v14 = @"unknown";
  }

  else
  {
    v14 = @"com.apple.CA";
  }

LABEL_25:
  v34 = v14;
  v29 = kRTCReportingUserInfoClientName;
  v30 = kRTCReportingUserInfoServiceName;
  if ((v11 & 0x80u) == 0)
  {
    v16 = v2 + 24;
  }

  else
  {
    v16 = *v10;
  }

  v17 = [NSString stringWithUTF8String:v16];
  v35 = v17;
  v18 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v29 count:2];

  v19 = [v7 initWithSessionInfo:v9 userInfo:v18 frameworksToCheck:0];
  objc_storeStrong((v2 + 16), v19);
  if (v19)
  {
    v20 = objc_retainBlock(*(a1 + 32));
    v21 = [NSMutableArray arrayWithObject:v20];
    v22 = qword_100192E50;
    qword_100192E50 = v21;

    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000D9360;
    v26[3] = &unk_100188BC8;
    v28 = v2;
    v27 = v8;
    [v19 startConfigurationWithCompletionHandler:v26];
  }

  else
  {
    v23 = qword_100192DB0;
    if (os_log_type_enabled(qword_100192DB0, OS_LOG_TYPE_ERROR))
    {
      sub_10012743C(v23);
    }
  }
}

void sub_1000D9360(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = qword_100192DB0;
  if (v3)
  {
    v6 = qword_100192DB0;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 32) intValue];
      *buf = 67109120;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[RTCReporter] Successfully configured RTCReporting with session id: %d", buf, 8u);
    }

    v8 = *(v4 + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000D94E4;
    block[3] = &unk_1001857F0;
    block[4] = v4;
    dispatch_async(v8, block);
    *(v4 + 48) = 1;
  }

  else
  {
    if (os_log_type_enabled(qword_100192DB0, OS_LOG_TYPE_ERROR))
    {
      sub_1001274AC(v5);
    }

    *(v4 + 48) = 0;
    v9 = dispatch_time(0, 0);
    sub_1000D969C(v4, v9);
  }
}

void sub_1000D94E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_100192DB0;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v14 = [qword_100192E50 count];
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[RTCReporter] Processing %zu blocks from queue.", buf, 0xCu);
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = qword_100192E50;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v9 + 1) + 8 * v6) + 16))();
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v9 objects:v8 count:16];
    }

    while (v4);
  }

  [qword_100192E50 removeAllObjects];
  v7 = dispatch_time(0, 0);
  *(v1 + 56) = v7;
  sub_1000D969C(v1, v7);
}

void sub_1000D969C(uint64_t a1, dispatch_time_t when)
{
  v4 = dispatch_time(when, 3000000000);
  v5 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D9758;
  block[3] = &unk_1001818D8;
  block[4] = a1;
  block[5] = when;
  dispatch_after(v4, v5, block);
}

void sub_1000D9758(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 56);
  if (v2 <= *(a1 + 40))
  {
    v4 = qword_100192DB0;
    if (os_log_type_enabled(qword_100192DB0, OS_LOG_TYPE_DEBUG))
    {
      sub_10012751C(v1, v4);
    }

    *(v1 + 48) = 0;
    v5 = *(v1 + 16);
    *(v1 + 16) = 0;
  }

  else
  {
    v3 = *(a1 + 32);

    sub_1000D969C(v3, v2);
  }
}

uint64_t sub_1000D97E4(uint64_t a1)
{
  *a1 = off_100188BB0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void sub_1000D9844(uint64_t a1)
{
  *a1 = off_100188BB0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  operator delete();
}

const void **sub_1000D98C4(void *a1, const void **a2)
{
  v4 = sub_10001357C(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
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
LABEL_18:
    memset(v14, 170, sizeof(v14));
    sub_1000D9B90();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_10001706C(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1000D9B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000D9C40(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D9C40(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1000D9C8C(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1000D9C8C(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t sub_1000D9D04(uint64_t a1)
{
  sub_1000D9D40(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1000D9D40(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_1000D9C8C((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *sub_1000D9D84(void *result, void *a2, void *a3)
{
  v3 = a2[1];
  *result = *a2;
  result[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a3[1];
  result[2] = *a3;
  result[3] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1000D9DB8(uint64_t a1, uint64_t a2)
{
  v52[0] = 0xAAAAAAAAAAAAAAAALL;
  v52[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_1000D4040(v52);
  v3 = sub_1000071E4(v52, "preferred-user-interface-language");
  sub_10000FF70(v50, v3);
  v4 = sub_1000071E4(a2, "_preferredUserInterfaceLanguage");
  sub_10000298C(v50);
  v5 = *v4;
  *v4 = v50[0];
  v50[0] = v5;
  v6 = *(v4 + 8);
  *(v4 + 8) = v51;
  v51 = v6;
  sub_10000298C(v4);
  sub_10000298C(v50);
  sub_1000048FC(&v51, v50[0]);
  v7 = sub_1000071E4(v52, "user-interface-language");
  sub_10000FF70(v48, v7);
  v8 = sub_1000071E4(a2, "_userInterfaceLanguage");
  sub_10000298C(v48);
  v9 = *v8;
  *v8 = v48[0];
  v48[0] = v9;
  v10 = *(v8 + 8);
  *(v8 + 8) = v49;
  v49 = v10;
  sub_10000298C(v8);
  sub_10000298C(v48);
  sub_1000048FC(&v49, v48[0]);
  v11 = sub_1000071E4(v52, "user-set-region-format");
  sub_10000FF70(v46, v11);
  v12 = sub_1000071E4(a2, "_userSetRegionFormat");
  sub_10000298C(v46);
  v13 = *v12;
  *v12 = v46[0];
  v46[0] = v13;
  v14 = *(v12 + 8);
  *(v12 + 8) = v47;
  v47 = v14;
  sub_10000298C(v12);
  sub_10000298C(v46);
  sub_1000048FC(&v47, v46[0]);
  v15 = +[OSASystemConfiguration sharedInstance];
  v44[0] = 4;
  v45 = [v15 optInApple];
  sub_10000298C(v44);
  sub_10000298C(v44);
  v16 = sub_1000071E4(a2, "optInStatus");
  sub_10000298C(v44);
  v17 = *v16;
  *v16 = v44[0];
  v44[0] = v17;
  v18 = *(v16 + 8);
  *(v16 + 8) = v45;
  v45 = v18;
  sub_10000298C(v16);
  sub_10000298C(v44);
  sub_1000048FC(&v45, v44[0]);

  v19 = +[OSASystemConfiguration sharedInstance];
  v42[0] = 4;
  v43 = [v19 optIn3rdParty];
  sub_10000298C(v42);
  sub_10000298C(v42);
  v20 = sub_1000071E4(a2, "optIn3rdParty");
  sub_10000298C(v42);
  v21 = *v20;
  *v20 = v42[0];
  v42[0] = v21;
  v22 = *(v20 + 8);
  *(v20 + 8) = v43;
  v43 = v22;
  sub_10000298C(v20);
  sub_10000298C(v42);
  sub_1000048FC(&v43, v42[0]);

  v40[0] = 5;
  v41 = sub_1000DA9C4();
  sub_10000298C(v40);
  sub_10000298C(v40);
  v23 = sub_1000071E4(a2, "deviceCapacity");
  sub_10000298C(v40);
  v24 = *v23;
  *v23 = v40[0];
  v40[0] = v24;
  v25 = *(v23 + 8);
  *(v23 + 8) = v41;
  v41 = v25;
  sub_10000298C(v23);
  sub_10000298C(v40);
  sub_1000048FC(&v41, v40[0]);
  v38 = 0xAAAAAAAAAAAAAAAALL;
  v39 = 0xAAAAAAAAAAAAAAAALL;
  sub_1000DAA94(&v38);
  if (v38)
  {
    if (v38 == 2)
    {
      if (*v39 == v39[1])
      {
        goto LABEL_8;
      }
    }

    else if (v38 == 1 && !v39[2])
    {
      goto LABEL_8;
    }

    __p = &v38;
    v34 = 0uLL;
    *&v35 = 0;
    *(&v35 + 1) = 0x8000000000000000;
    sub_10001D250(&__p);
    v36 = __p;
    v37[0] = v34;
    v37[1] = v35;
    v27 = &v38;
    v28 = 0uLL;
    *&v29 = 0;
    *(&v29 + 1) = 0x8000000000000000;
    sub_1000137F8(&v27);
    v30 = v27;
    v31 = v28;
    v32 = v29;
    sub_1000DACF4(a2, &v36, &v30);
  }

LABEL_8:
  v26[0] = 0xAAAAAAAAAAAAAAAALL;
  v26[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_1000DAF44(v26);
}

void sub_1000DA7C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  sub_10002C5F4((v50 - 216));
  sub_10002C5F4((v50 - 104));
  _Unwind_Resume(a1);
}

uint64_t sub_1000DA96C(uint64_t a1, uint64_t a2)
{
  sub_10000298C(a2);
  v4 = *a1;
  *a1 = *a2;
  *a2 = v4;
  v5 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v5;
  sub_10000298C(a1);
  return a1;
}

uint64_t sub_1000DA9C4()
{
  v0 = MGCopyAnswer();
  v1 = v0;
  if (v0)
  {
    v2 = kMGQDiskUsageTotalDiskCapacity;
    v3 = &off_10018CCB8;
    v4 = [v0 objectForKeyedSubscript:kMGQDiskUsageTotalDiskCapacity];

    if (v4)
    {
      v3 = [v1 objectForKeyedSubscript:v2];
    }

    v5 = sub_10002E5B4([v3 longLongValue]);
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
    v3 = &off_10018CCB8;
  }

  return v5;
}

void sub_1000DAA94(uint64_t a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  *(a1 + 8) = 0;
  *a1 = 0;
  sub_10000298C(a1);
  sub_10000298C(a1);
  v2 = qword_100192D90;
  if (os_log_type_enabled(qword_100192D90, OS_LOG_TYPE_DEBUG))
  {
    sub_1001275A4(v2);
  }

  +[HighEngagementResolver fetchHighEngagementCategories];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v3 = v10 = 0u;
  if ([v3 countByEnumeratingWithState:&v9 objects:v8 count:16])
  {
    *v10;
    *v10;
    v4 = [v3 objectForKeyedSubscript:**(&v9 + 1)];
    v5 = v4;
    [v4 UTF8String];
    sub_10001AAEC(v7);
  }

  v6 = qword_100192D90;
  if (os_log_type_enabled(qword_100192D90, OS_LOG_TYPE_DEBUG))
  {
    sub_100127614(v6);
  }
}

void *sub_1000DACF4(uint64_t a1, void *a2, void *a3)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v9 = sub_10002CB3C(a1);
    sub_10000459C(&v14, v9);
    v10 = std::string::insert(&v14, 0, "cannot use insert() with ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v16 = v10->__r_.__value_.__r.__words[2];
    v15 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    sub_10002C9C4(309, &v15, exception);
  }

  if (*a2 != *a3)
  {
    v12 = __cxa_allocate_exception(0x20uLL);
    sub_10000459C(&v15, "iterators do not fit");
    sub_10002E87C(210, &v15, v12);
  }

  if (**a2 != 1)
  {
    v13 = __cxa_allocate_exception(0x20uLL);
    sub_10000459C(&v15, "iterators first and last must point to objects");
    sub_10002E87C(202, &v15, v13);
  }

  v4 = *(a1 + 8);
  v5 = a2[1];
  v6 = a3[1];

  return sub_100016DD4(v4, v5, v6);
}

void sub_1000DAECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_1000DAF44(void *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100013CA0(a1, 0, 0, 0, 1);
}

void sub_1000DBF34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, unsigned __int8 *a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, char a29, uint64_t a30, char a31, void *a32, uint64_t a33, char a34, uint64_t a35, char a36, uint64_t a37, char a38, uint64_t a39, char a40, uint64_t a41, char a42, uint64_t a43, char a44, uint64_t a45, char a46, uint64_t a47, char a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  sub_10002C5F4(&a18);
  if (a58 < 0)
  {
    operator delete(__p);
  }

  sub_1000620CC(&a31, a32);
  sub_10002C5F4(a14);
  _Unwind_Resume(a1);
}

void sub_1000DC254(void *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100013CA0(a1, 0, 0, 0, 1);
}

void sub_1000DC510(void *a1@<X8>)
{
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  sub_100013CA0(a1, 0, 0, 0, 1);
}

void sub_1000DCE0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int8 a21)
{
  sub_10002C5F4(&a9);
  sub_10002C5F4(&a13);
  sub_10002C5F4(&a17);
  sub_10002C5F4(&a21);
  sub_10002C5F4(v21);
  _Unwind_Resume(a1);
}

void sub_1000DCF0C(void *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100013CA0(a1, 0, 0, 0, 1);
}

void sub_1000DD230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  sub_10002C5F4(&a9);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_10002C5F4(v20);
  _Unwind_Resume(a1);
}

_BYTE *sub_1000DD2E4(_BYTE *a1, char *a2, char **a3)
{
  v5 = sub_10000459C(a1, a2);
  sub_10000459C(v5 + 24, *a3);
  return a1;
}

void sub_1000DD31C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1000DD338(_BYTE *a1, char *a2, char **a3)
{
  v5 = sub_10000459C(a1, a2);
  sub_10000459C(v5 + 24, *a3);
  return a1;
}

void sub_1000DD370(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1000DD38C(_BYTE *a1, char *a2, char **a3)
{
  v5 = sub_10000459C(a1, a2);
  sub_10000459C(v5 + 24, *a3);
  return a1;
}

void sub_1000DD3C4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000DD3E0(void *a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 48 * a3;
    do
    {
      sub_1000DD464(a1, v4, a2);
      a2 += 6;
      v6 -= 48;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_1000DD464(void *a1, uint64_t a2, const void **a3)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  v6[0] = 0xAAAAAAAAAAAAAAAALL;
  v3 = *sub_100063C58(a1, a2, v6, &v5, a3);
  if (!v3)
  {
    memset(&v6[1], 170, 24);
    sub_1000DD538();
  }

  return v3;
}

uint64_t sub_1000DD5B0(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_100062128(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

char *sub_1000DD5FC(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000078D8(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_1000078D8(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  return __dst;
}

void sub_1000DD674(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000DD690(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  sub_1000DD6DC();
}

void sub_1000DD738(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  sub_1000DD784();
}

void sub_1000DD7E0(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  sub_1000DD82C();
}

void sub_1000DD888()
{
  v0 = objc_autoreleasePoolPush();
  sub_10000459C(byte_100192E98, "primaryNetworkInterface");
  __cxa_atexit(&std::string::~string, byte_100192E98, &_mh_execute_header);
  sub_10000459C(byte_100192EB0, "wiFiRadioTech");
  __cxa_atexit(&std::string::~string, byte_100192EB0, &_mh_execute_header);
  sub_10000459C(byte_100192EC8, "wiFiLQM");
  __cxa_atexit(&std::string::~string, byte_100192EC8, &_mh_execute_header);
  sub_10000459C(byte_100192EE0, "wirelessTrialIdentifier");
  __cxa_atexit(&std::string::~string, byte_100192EE0, &_mh_execute_header);

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_1000DD980@<X0>(uint64_t a1@<X0>, const std::string::value_type **a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *a3 = v6;
  *(a3 + 16) = v6;
  v7 = sub_100016ED8(a3, a1);
  result = sub_1000137F8(v7);
  if (*a1 == 1)
  {
    result = sub_10000E890(*(a1 + 8), a2);
    *(a3 + 8) = result;
  }

  return result;
}

uint64_t sub_1000DD9EC(uint64_t a1, unsigned __int8 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_10002C63C();
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
    sub_10000BC18(a1, v7);
  }

  v14 = 0;
  v15 = 16 * v2;
  sub_10000FF70((16 * v2), a2);
  v16 = (16 * v2 + 16);
  v8 = *(a1 + 8);
  v9 = 16 * v2 + *a1 - v8;
  sub_10000BB08(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_10000BC60(&v14);
  return v13;
}

void sub_1000DDB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000BC60(va);
  _Unwind_Resume(a1);
}

unsigned __int8 **sub_1000DDB30(unsigned __int8 **result)
{
  if (!*result)
  {
    sub_10012779C();
  }

  v1 = **result;
  if (v1 == 2)
  {
    result[2] -= 16;
  }

  else if (v1 == 1)
  {
    v2 = result[1];
    v3 = *v2;
    if (*v2)
    {
      do
      {
        v4 = v3;
        v3 = *(v3 + 1);
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

      while (v5);
    }

    result[1] = v4;
  }

  else
  {
    --result[4];
  }

  return result;
}

unsigned __int8 *sub_1000DDBB8(void *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 4)
    {
      v17 = v10 - a2;
      v18 = (v10 - a2) >> 4;
      if (v18 >= a5)
      {
        sub_100043408(a1, a2, a1[1], a2 + 16 * a5);
        sub_100014B04(&v23, v7, &v7[16 * a5], v5);
      }

      else
      {
        a1[1] = sub_100014674(a1, &a3[v17], a4, a1[1]);
        if (v18 >= 1)
        {
          sub_100043408(a1, v5, v10, &v5[16 * a5]);
          sub_100014B04(&v23, v7, &v7[v17], v5);
        }
      }
    }

    else
    {
      v11 = *a1;
      v23 = 0u;
      v24 = 0u;
      v12 = a5 + ((v10 - v11) >> 4);
      if (v12 >> 60)
      {
        sub_10002C63C();
      }

      v13 = a2 - v11;
      v14 = v9 - v11;
      v15 = v14 >> 3;
      if (v14 >> 3 <= v12)
      {
        v15 = v12;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF0)
      {
        v16 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v15;
      }

      v25 = a1;
      if (v16)
      {
        sub_10000BC18(a1, v16);
      }

      v19 = (16 * (v13 >> 4));
      *&v23 = 0;
      *(&v23 + 1) = v19;
      v24 = v19;
      v20 = 16 * a5;
      v21 = &v19[16 * a5];
      do
      {
        sub_10000FF70(v19, v7);
        v19 += 16;
        v7 += 16;
        v20 -= 16;
      }

      while (v20);
      *&v24 = v21;
      v5 = sub_1000434F0(a1, &v23, v5);
      sub_10000BC60(&v23);
    }
  }

  return v5;
}

void sub_1000DDF54(uint64_t a1)
{
  if ((*(*a1 + 72))(a1))
  {
    v2 = 0;
    sub_10000459C(&__p, "persisting to store");
    v3 = 0;
    operator new();
  }

  __assert_rtn("persistToStore", "IdentityTransform.cpp", 50, "initialized()");
}

void sub_1000DE07C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_1000DE088(void *a1, uint64_t a2, __int128 *a3)
{
  if (((*(*a1 + 72))(a1) & 1) == 0)
  {
    __assert_rtn("acceptEvent", "IdentityTransform.cpp", 64, "initialized()");
  }

  (*(*a1 + 88))(a1);
  v19 = 0xAAAAAAAAAAAAAAAALL;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  sub_10000FF70(&v19, (*a3 + 40));
  v18 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v17[0] = v6;
  v17[1] = v6;
  sub_100015F0C(a2, "transformation", v17);
  v16 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15[0] = v7;
  v15[1] = v7;
  sub_10000DEC4(v15, a2);
  sub_10000DCFC(v15);
  if (!sub_10000DD7C(v17, v15) && *sub_1000760D0(v17) == 2)
  {
    v8 = *(a1[5] + 24);
    v9 = sub_10000DB44(v17);
    sub_1000F0D6C(v8, a3, v9, v13);
    sub_10000298C(v13);
    v10 = v19;
    LOBYTE(v19) = v13[0];
    v13[0] = v10;
    v11 = v20;
    v20 = v14;
    v14 = v11;
    sub_10000298C(&v19);
    sub_10000298C(v13);
    sub_1000048FC(&v14, v13[0]);
  }

  sub_1000DE338(a1, *a3 + 16, &v19);
  sub_10000298C(&v19);
  sub_1000048FC(&v20, v19);
  return 1;
}

void sub_1000DE284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      sub_10000459C(&a18, "IdentityTransformError");
      sub_10000459C(&__p, "transformation");
      sub_1000C7E1C(v23, &a18, &__p, v24);
    }

    sub_10000459C(&a18, "IdentityTransformError");
    sub_10000459C(&__p, "transformation");
    sub_1000C8288(v23, &a18, &__p, v24);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1000DE338(void *a1, uint64_t a2, unsigned __int8 *a3)
{
  if (((*(*a1 + 72))(a1) & 1) == 0)
  {
    sub_1001277C8();
  }

  v5 = a1[4];
  v14 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13[0] = v6;
  v13[1] = v6;
  sub_10000DEC4(v13, v5);
  sub_10000DF14(v13);
  v12 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11[0] = v7;
  v11[1] = v7;
  sub_10000DEC4(v11, v5);
  sub_10000DCFC(v11);
  for (result = sub_10000DD7C(v13, v11); !result; result = sub_10000DD7C(v13, v11))
  {
    v9 = sub_10000DB44(v13);
    if ((sub_1000DE560(a1, v10, v9, a3) & 1) == 0)
    {
      sub_1000DE734(a1);
    }

    sub_100012BFC(v13);
  }

  return result;
}

uint64_t sub_1000DE560(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  if (((*(*a1 + 72))(a1) & 1) == 0)
  {
    sub_1001277F4();
  }

  v16 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15[0] = v7;
  v15[1] = v7;
  sub_100015F0C(a3, "event", v15);
  v14 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v8;
  v13 = v8;
  sub_10000DEC4(__p, a3);
  sub_10000DCFC(__p);
  if (!sub_10000DD7C(v15, __p) && *(a1[5] + 8))
  {
    v9 = sub_10000DB44(v15);
    sub_100010390(v9, __p);
    sub_10000FF70(v11, a4);
    sub_100019D5C(__p, v11);
  }

  return 0;
}

void sub_1000DE6EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a12)
  {
    sub_10000786C(a12);
  }

  sub_10002C5F4(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1000DE734(uint64_t a1)
{
  if ((*(*a1 + 72))(a1))
  {

    sub_1000DDF54(a1);
  }

  sub_100127820();
}

void sub_1000DE79C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if ((*(*a1 + 72))(a1))
  {
    sub_10000DFA0(a2, "event");
    v5 = *a3;
    sub_100006C9C(v6);
  }

  __assert_rtn("maybeHandleEvent", "IdentityTransform.cpp", 127, "initialized()");
}

void sub_1000DE8B8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_1000DE8C4(void *a1, uint64_t *a2)
{
  (*(*a1 + 64))(a1);
  if (!sub_100012C84(a1) && (sub_1000140A4(a1, a1[3], a2) & 1) == 0)
  {
    v4 = a1[3];
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v15 = v5;
    *&v15[16] = v5;
    *&v15[32] = 0xAAAAAAAAAAAAAAAALL;
    sub_10000DEC4(v15, v4);
    sub_10000DF14(v15);
    v6 = a1[3];
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v14 = v7;
    *&v14[16] = v7;
    *&v14[32] = 0xAAAAAAAAAAAAAAAALL;
    sub_10000DEC4(v14, v6);
    sub_10000DCFC(v14);
    *buf = *v15;
    *&buf[8] = *&v15[8];
    v20 = *&v15[24];
    __p = *v14;
    v17 = *&v14[8];
    v18 = *&v14[24];
    if (!sub_10000DD7C(buf, &__p))
    {
      v8 = sub_10000DB44(buf);
      sub_1000DE79C(a1, v8, a2);
    }

    v9 = qword_100192D68;
    if (os_log_type_enabled(qword_100192D68, OS_LOG_TYPE_DEBUG))
    {
      p_p = &__p;
      sub_1000C7D60(a1, &__p);
      if (v17 < 0)
      {
        p_p = __p;
      }

      v11 = sub_10001C33C(a1);
      if (*(v11 + 23) >= 0)
      {
        v12 = v11;
      }

      else
      {
        v12 = *v11;
      }

      v13 = (*a2 + 16);
      if (*(*a2 + 39) < 0)
      {
        v13 = *v13;
      }

      *buf = 136446722;
      *&buf[4] = p_p;
      *&buf[12] = 2080;
      *&buf[14] = v12;
      *&buf[22] = 2080;
      *&v20 = v13;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[%{public}sTransform] WARNING: transform '%s' received event '%s' but did not handle it.", buf, 0x20u);
      if (SHIBYTE(v17) < 0)
      {
        operator delete(__p);
      }
    }
  }
}

uint64_t sub_1000DEAE4(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 64))(a1);
  v5[0] = off_100188DA8;
  v5[1] = a2;
  v5[2] = a1;
  v5[3] = v5;
  sub_1000DEBAC(a1, v5);
  return sub_1000DF284(v5);
}

void sub_1000DEB98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000DF284(va);
  _Unwind_Resume(a1);
}

void sub_1000DEBAC(uint64_t a1, uint64_t a2)
{
  sub_10000459C(__p, "retrieving events from store");
  v6[0] = off_100188E38;
  v6[1] = a1;
  v6[2] = a2;
  v6[3] = v6;
  sub_10000F46C(a1, __p, v6);
  sub_10000E910(v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1000DEC68(uint64_t a1)
{
  sub_100024584(a1);

  operator delete();
}

void *sub_1000DED54(void *a1, uint64_t a2, __int128 *a3, double *a4, void *a5, uint64_t a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100188CD8;
  sub_100015C48((a1 + 3), a2, a3, a5, a6, *a4);
  a1[3] = off_100188C50;
  return a1;
}

void sub_1000DEDF8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100188CD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

__n128 sub_1000DEEF0(uint64_t a1, uint64_t a2)
{
  *a2 = off_100188D28;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1000DEF28(uint64_t a1)
{
  sub_100016734(*(a1 + 8));
  v2 = *(a1 + 16);
  sub_1000DDE94();
}

uint64_t sub_1000DF00C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1000DF0CC(uint64_t a1, uint64_t a2)
{
  *a2 = off_100188DA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1000DF0FC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = (*(*v3 + 24))(v3);
  sub_1000C8790(v3, v5, a2, v7);
  v6 = *(v4 + 24);
  if (!v6)
  {
    sub_10002B200();
  }

  (*(*v6 + 48))(v6, v7);
  if (v15 == 1 && v14 < 0)
  {
    operator delete(v13[3]);
  }

  sub_10000298C(v12);
  sub_1000048FC(v13, v12[0]);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v9 < 0)
  {
    operator delete(v8);
  }
}

void sub_1000DF224(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10008AB88(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DF238(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000DF284(uint64_t a1)
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

__n128 sub_1000DF378(uint64_t a1, uint64_t a2)
{
  *a2 = off_100188E38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1000DF3A8(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(*(v2 + 40) + 72);
  v4 = sub_100016734(v2);
  v5 = *(a1 + 16);
  v7[0] = off_100188EA8;
  v7[1] = v5;
  v7[3] = v7;
  (*(*v3 + 80))(v3, v4, v2 + 72, v7);
  return sub_10008BBB8(v7);
}

uint64_t sub_1000DF47C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000DF538(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100188EA8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1000DF564(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 24);
  if (!v2)
  {
    sub_10002B200();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_1000DF5B4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1000DF600(void *a1, uint64_t a2)
{
  result = sub_1000AC66C(a1, a2);
  *result = &off_100188F38;
  return result;
}

void sub_1000DF638(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

unsigned __int8 *sub_1000DF670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000DF6C0(a1, a2, a3);

  return sub_1000DF8E8(a1, a2, a3);
}

unsigned __int8 *sub_1000DF6C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[0] = v4;
  v24[1] = v4;
  sub_1000DD980(a3, off_100182088, v24);
  v23 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21 = v5;
  v22 = v5;
  sub_100016ED8(&v21, a3);
  sub_1000137F8(&v21);
  result = sub_100013878(v24, &v21);
  if ((result & 1) == 0)
  {
    result = sub_100040F6C(v24);
    if (*result == 2)
    {
      v7 = sub_10001CF44(v24);
      v23 = 0xAAAAAAAAAAAAAAAALL;
      *&v8 = 0xAAAAAAAAAAAAAAAALL;
      *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v21 = v8;
      v22 = v8;
      sub_100016ED8(&v21, v7);
      sub_10001D250(&v21);
      v20 = 0xAAAAAAAAAAAAAAAALL;
      *&v9 = 0xAAAAAAAAAAAAAAAALL;
      *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v19[0] = v9;
      v19[1] = v9;
      sub_100016ED8(v19, v7);
      sub_1000137F8(v19);
      for (result = sub_100013878(&v21, v19); (result & 1) == 0; result = sub_100013878(&v21, v19))
      {
        v10 = sub_10001CF44(&v21);
        if (*v10 == 1)
        {
          v11 = v10;
          v18 = 0xAAAAAAAAAAAAAAAALL;
          *&v12 = 0xAAAAAAAAAAAAAAAALL;
          *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v17[0] = v12;
          v17[1] = v12;
          sub_10003EA28(v10, "type", v17);
          v16 = 0xAAAAAAAAAAAAAAAALL;
          *&v13 = 0xAAAAAAAAAAAAAAAALL;
          *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v15[0] = v13;
          v15[1] = v13;
          sub_100016ED8(v15, v11);
          sub_1000137F8(v15);
          if (!sub_100013878(v17, v15))
          {
            v14 = sub_10001CF44(v17);
            sub_100073F04(v14, "aggregate");
          }
        }

        sub_100012BFC(&v21);
      }
    }
  }

  return result;
}

unsigned __int8 *sub_1000DF8E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1000DFAB4(a3, "external_configurations", "externalConfigurations"))
  {
    sub_1000DFC58(a1, a2, "Renamed 'external_configurations' to 'externalConfigurations' (no underscore)");
  }

  v19 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18[0] = v6;
  v18[1] = v6;
  sub_1000DD980(a3, off_100182090, v18);
  v17 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15 = v7;
  v16 = v7;
  sub_100016ED8(&v15, a3);
  sub_1000137F8(&v15);
  result = sub_100013878(v18, &v15);
  if ((result & 1) == 0)
  {
    result = sub_100040F6C(v18);
    if (*result == 2)
    {
      v9 = sub_10001CF44(v18);
      v17 = 0xAAAAAAAAAAAAAAAALL;
      *&v10 = 0xAAAAAAAAAAAAAAAALL;
      *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v15 = v10;
      v16 = v10;
      sub_100016ED8(&v15, v9);
      sub_10001D250(&v15);
      v14 = 0xAAAAAAAAAAAAAAAALL;
      *&v11 = 0xAAAAAAAAAAAAAAAALL;
      *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v13[0] = v11;
      v13[1] = v11;
      sub_100016ED8(v13, v9);
      sub_1000137F8(v13);
      for (result = sub_100013878(&v15, v13); (result & 1) == 0; result = sub_100013878(&v15, v13))
      {
        v12 = sub_10001CF44(&v15);
        if (*v12 == 1)
        {
          if (sub_1000DFAB4(v12, "enable_if", "enableIf"))
          {
            sub_1000DFC58(a1, a2, "Renamed 'enable_if' to 'enableIf' (no underscore) in an external configuration specification");
          }
        }

        sub_100012BFC(&v15);
      }
    }
  }

  return result;
}

uint64_t sub_1000DFAB4(uint64_t a1, const std::string::value_type *a2, const std::string::value_type *a3)
{
  v16 = a3;
  v17 = a2;
  *&v15[32] = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v15 = v4;
  *&v15[16] = v4;
  sub_1000DD980(a1, &v17, v15);
  *&v14[32] = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v14 = v5;
  *&v14[16] = v5;
  sub_100016ED8(v14, a1);
  sub_1000137F8(v14);
  if (sub_100013878(v15, v14) || *a1 == 1 && sub_100076578(*(a1 + 8), &v16))
  {
    return 0;
  }

  v7 = sub_10001CF44(v15);
  v12[0] = *v7;
  v13 = *(v7 + 1);
  sub_10000298C(v7);
  *v7 = 0;
  *(v7 + 1) = 0;
  sub_10000298C(v12);
  v8 = sub_1000071E4(a1, v16);
  sub_10000298C(v12);
  v9 = *v8;
  *v8 = v12[0];
  v12[0] = v9;
  v10 = *(v8 + 8);
  *(v8 + 8) = v13;
  v13 = v10;
  sub_10000298C(v8);
  sub_10000298C(v12);
  sub_1000048FC(&v13, v12[0]);
  *v14 = *v15;
  *&v14[8] = *&v15[8];
  *&v14[24] = *&v15[24];
  sub_1000410CC(a1, v14, v11);
  return 1;
}

void sub_1000DFC3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10002C5F4(va);
  _Unwind_Resume(a1);
}

void sub_1000DFC58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = a2;
  v3[0] = 0xAAAAAAAAAAAAAAAALL;
  v3[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100013CA0(v3, 0, 0, 0, 1);
}

void sub_1000DFE1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_10002C5F4(va);
  sub_10002C5F4(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DFE60(uint64_t a1, unsigned __int8 *a2)
{
  v43 = -86;
  v42 = -1431655766;
  v41[0] = sub_1000DFAB4(a2, "enable_if", "enableIf");
  v41[1] = sub_1000DFAB4(a2, "input_transformation", "input_transformation_not_supported_anymore");
  v41[2] = sub_1000E1AF4(a1, a2);
  sub_10003EA28(a2, "inputs", &v44);
  v40 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v39 = v4;
  *__p = v4;
  sub_100016ED8(__p, a2);
  sub_1000137F8(__p);
  if (sub_100013878(&v44, __p))
  {
    sub_10003EA28(a2, "event", &v44);
    v40 = 0xAAAAAAAAAAAAAAAALL;
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v39 = v5;
    *__p = v5;
    sub_100016ED8(__p, a2);
    sub_1000137F8(__p);
    if (!sub_100013878(&v44, __p))
    {
      v32[0] = 0xAAAAAAAAAAAAAAAALL;
      v32[1] = 0xAAAAAAAAAAAAAAAALL;
      sub_100013CA0(v32, 0, 0, 0, 1);
    }
  }

  LOBYTE(v42) = 0;
  sub_10003EA28(a2, "outputs", &v44);
  v40 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v39 = v6;
  *__p = v6;
  sub_100016ED8(__p, a2);
  sub_1000137F8(__p);
  if (sub_100013878(&v44, __p))
  {
    v29[0] = 0xAAAAAAAAAAAAAAAALL;
    v29[1] = 0xAAAAAAAAAAAAAAAALL;
    sub_100013CA0(v29, 0, 0, 0, 2);
  }

  BYTE1(v42) = 0;
  v46 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v44 = v8;
  v45 = v8;
  sub_10003EA28(a2, "dimensions", &v44);
  v40 = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v39 = v9;
  *__p = v9;
  sub_100016ED8(__p, a2);
  sub_1000137F8(__p);
  if (sub_100013878(&v44, __p) || *sub_100040F6C(&v44) != 2)
  {
    v11 = 0;
  }

  else
  {
    v10 = sub_10001CF44(&v44);
    __p[0] = v10;
    __p[1] = 0;
    v39 = 0uLL;
    v40 = 0x8000000000000000;
    sub_10001D250(__p);
    v33 = v10;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0x8000000000000000;
    sub_1000137F8(&v33);
    v11 = 0;
    while (!sub_100013878(__p, &v33))
    {
      v12 = sub_10001CF44(__p);
      v13 = v12;
      if (*v12 == 1 && sub_1000061C8(*(v12 + 1), "name") && (*v13 != 1 || !sub_1000061C8(*(v13 + 8), "field") && (*v13 != 1 || !sub_1000061C8(*(v13 + 8), "expression"))))
      {
        v14 = sub_1000071E4(v13, "name");
        sub_10000FF70(&v30, v14);
        v15 = sub_1000071E4(v13, "field");
        sub_10000298C(&v30);
        v16 = *v15;
        *v15 = v30;
        LOBYTE(v30) = v16;
        v17 = *(v15 + 8);
        *(v15 + 8) = v31;
        v31 = v17;
        sub_10000298C(v15);
        sub_10000298C(&v30);
        sub_1000048FC(&v31, v30);
        v11 = 1;
      }

      sub_100012BFC(__p);
    }
  }

  BYTE2(v42) = v11;
  v46 = 0xAAAAAAAAAAAAAAAALL;
  *&v18 = 0xAAAAAAAAAAAAAAAALL;
  *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v44 = v18;
  v45 = v18;
  sub_10003EA28(a2, "measures", &v44);
  v40 = 0xAAAAAAAAAAAAAAAALL;
  *&v19 = 0xAAAAAAAAAAAAAAAALL;
  *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v39 = v19;
  *__p = v19;
  sub_100016ED8(__p, a2);
  sub_1000137F8(__p);
  if (!sub_100013878(&v44, __p) && *sub_100040F6C(&v44) == 2)
  {
    v20 = sub_10001CF44(&v44);
    __p[0] = v20;
    __p[1] = 0;
    v39 = 0uLL;
    v40 = 0x8000000000000000;
    sub_10001D250(__p);
    v33 = v20;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0x8000000000000000;
    sub_1000137F8(&v33);
    while (!sub_100013878(__p, &v33))
    {
      v21 = sub_10001CF44(__p);
      v22 = v21;
      if (*v21 == 1)
      {
        if (sub_1000061C8(*(v21 + 1), "name") && (*v22 != 1 || !sub_1000061C8(*(v22 + 8), "field") && (*v22 != 1 || !sub_1000061C8(*(v22 + 8), "expression"))))
        {
          v23 = sub_1000071E4(v22, "function");
          sub_10007172C(v23, "count");
        }

        if (*v22 == 1 && sub_1000061C8(*(v22 + 8), "function"))
        {
          v24 = sub_1000071E4(v22, "function");
          sub_100073F04(v24, "count");
        }
      }

      sub_100012BFC(__p);
    }
  }

  HIBYTE(v42) = 0;
  v25 = sub_1000DFAB4(a2, "routing", "routing_renamed_because_not_used");
  v26 = 0;
  v43 = v25;
  do
  {
    result = v41[v26];
    if (result)
    {
      break;
    }
  }

  while (v26++ != 7);
  return result;
}

void sub_1000E0D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_10002C5F4(&a31);
  sub_10002C5F4(&__p);
  sub_10002C5F4(&a21);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E0EA4(uint64_t a1, unsigned __int8 *a2)
{
  v17 = -21846;
  v16[0] = sub_1000DFAB4(a2, "enable_if", "enableIf");
  v16[1] = sub_1000E1AF4(a1, a2);
  sub_10003EA28(a2, "inputs", &v18);
  v15 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13 = v4;
  v14 = v4;
  sub_100016ED8(&v13, a2);
  sub_1000137F8(&v13);
  if (sub_100013878(&v18, &v13))
  {
    sub_10003EA28(a2, "event", &v18);
    v15 = 0xAAAAAAAAAAAAAAAALL;
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v13 = v5;
    v14 = v5;
    sub_100016ED8(&v13, a2);
    sub_1000137F8(&v13);
    if (!sub_100013878(&v18, &v13))
    {
      v11 = 0xAAAAAAAAAAAAAAAALL;
      v12 = 0xAAAAAAAAAAAAAAAALL;
      sub_100013CA0(&v11, 0, 0, 0, 1);
    }
  }

  LOBYTE(v17) = 0;
  sub_10003EA28(a2, "outputs", &v18);
  v15 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13 = v6;
  v14 = v6;
  sub_100016ED8(&v13, a2);
  sub_1000137F8(&v13);
  if (sub_100013878(&v18, &v13))
  {
    v11 = 0xAAAAAAAAAAAAAAAALL;
    v12 = 0xAAAAAAAAAAAAAAAALL;
    sub_100013CA0(&v11, 0, 0, 0, 2);
  }

  v8 = 0;
  HIBYTE(v17) = 0;
  do
  {
    result = v16[v8];
    if (result)
    {
      break;
    }
  }

  while (v8++ != 3);
  return result;
}

void sub_1000E17D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  sub_10002C5F4(va2);
  sub_10002C5F4(va1);
  sub_10002C5F4(va);
  _Unwind_Resume(a1);
}

void sub_1000E1870(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v2[0] = 0xAAAAAAAAAAAAAAAALL;
  v2[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100013CA0(v2, 0, 0, 0, 1);
}

void sub_1000E1AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 a17)
{
  sub_10002C5F4(&a9);
  sub_10002C5F4(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E1AF4(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  switch(v3)
  {
    case 3:
      sub_1000E1E80(a2, ":get_event", ":getEventMap");
    case 2:
      v20 = 0xAAAAAAAAAAAAAAAALL;
      *&v8 = 0xAAAAAAAAAAAAAAAALL;
      *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v19[0] = v8;
      v19[1] = v8;
      sub_100016ED8(v19, a2);
      sub_10001D250(v19);
      v14 = 0xAAAAAAAAAAAAAAAALL;
      *&v9 = 0xAAAAAAAAAAAAAAAALL;
      *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v13[0] = v9;
      v13[1] = v9;
      sub_100016ED8(v13, a2);
      sub_1000137F8(v13);
      for (i = 0; !sub_100013878(v19, v13); i |= v11)
      {
        v10 = sub_10001CF44(v19);
        v11 = sub_1000E1AF4(a1, v10);
        sub_100012BFC(v19);
      }

      break;
    case 1:
      v26 = a2;
      sub_100023420(&v26, v19);
      sub_100023508(&v26, v13);
      i = 0;
      while (!sub_100013878(v19, v13))
      {
        v6 = sub_10001CF44(v19);
        v7 = sub_1000E1AF4(a1, v6);
        sub_100012BFC(v19);
        i |= v7;
        ++v21;
      }

      if (v18 < 0)
      {
        operator delete(__p);
      }

      if (v16 < 0)
      {
        operator delete(v15);
      }

      if (v25 < 0)
      {
        operator delete(v24);
      }

      if (v23 < 0)
      {
        operator delete(v22);
      }

      break;
    default:
      i = 0;
      break;
  }

  return i & 1;
}

void sub_1000E1E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  sub_10008C714(&a9);
  sub_10008C714(&a23);
  _Unwind_Resume(a1);
}

void sub_1000E1F44(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  sub_1000E1F90();
}

void sub_1000E1FEC(uint64_t a1, uint64_t a2)
{
  if (((*(*a1 + 72))(a1) & 1) == 0)
  {
    __assert_rtn("loadAllStatisticsFromStore", "AggregatingTransform.cpp", 128, "initialized()");
  }

  sub_10000459C(__p, "loading all statistics from store");
  v6[0] = off_100189050;
  v6[1] = a1;
  v6[2] = a2;
  v6[3] = v6;
  sub_10000F46C(a1, __p, v6);
  sub_10000E910(v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1000E20EC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

unsigned __int8 *sub_1000E20F8@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  if (*a2 == 2 && *(*(a2 + 8) + 8) - **(a2 + 8) >= 0x11uLL)
  {
    v5 = result;
    result = sub_1000239C8(a2, 0);
    if (*result == 2)
    {
      result = sub_1000239C8(a2, 1);
      if (*result == 2)
      {
        result = sub_1000239C8(a2, 0);
        v6 = *result;
        if (*result)
        {
          if (v6 == 1)
          {
            v6 = *(*(result + 1) + 16);
          }

          else if (v6 == 2)
          {
            v6 = (*(*(result + 1) + 8) - **(result + 1)) >> 4;
          }

          else
          {
            v6 = 1;
          }
        }

        v7 = *(v5 + 18);
        v8 = *v7;
        if (*v7)
        {
          if (v8 == 1)
          {
            v8 = *(*(v7 + 1) + 16);
          }

          else if (v8 == 2)
          {
            v8 = (*(*(v7 + 1) + 8) - **(v7 + 1)) >> 4;
          }

          else
          {
            v8 = 1;
          }
        }

        if (v6 == v8)
        {
          result = sub_1000239C8(a2, 1);
          v9 = *result;
          if (*result)
          {
            if (v9 == 1)
            {
              v9 = *(*(result + 1) + 16);
            }

            else if (v9 == 2)
            {
              v9 = (*(*(result + 1) + 8) - **(result + 1)) >> 4;
            }

            else
            {
              v9 = 1;
            }
          }

          v10 = *(v5 + 19);
          v11 = *v10;
          if (*v10)
          {
            if (v11 == 1)
            {
              v11 = *(*(v10 + 1) + 16);
            }

            else if (v11 == 2)
            {
              v11 = (*(*(v10 + 1) + 8) - **(v10 + 1)) >> 4;
            }

            else
            {
              v11 = 1;
            }
          }

          if (v9 == v11)
          {
            v12 = sub_1000239C8(a2, 0);
            v25 = 0xAAAAAAAAAAAAAAAALL;
            *&v13 = 0xAAAAAAAAAAAAAAAALL;
            *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v23 = v13;
            v24 = v13;
            sub_10000DEC4(&v23, v12);
            sub_10000DF14(&v23);
            v14 = sub_1000239C8(a2, 0);
            v22 = 0xAAAAAAAAAAAAAAAALL;
            *&v15 = 0xAAAAAAAAAAAAAAAALL;
            *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v20 = v15;
            v21 = v15;
            sub_10000DEC4(&v20, v14);
            sub_10000DCFC(&v20);
            sub_1000E23C0(&v23, &v20, a3);
            v16 = sub_1000239C8(a2, 1);
            v25 = 0xAAAAAAAAAAAAAAAALL;
            *&v17 = 0xAAAAAAAAAAAAAAAALL;
            *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v23 = v17;
            v24 = v17;
            sub_10000DEC4(&v23, v16);
            sub_10000DF14(&v23);
            v18 = sub_1000239C8(a2, 1);
            v22 = 0xAAAAAAAAAAAAAAAALL;
            *&v19 = 0xAAAAAAAAAAAAAAAALL;
            *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v20 = v19;
            v21 = v19;
            sub_10000DEC4(&v20, v18);
            sub_10000DCFC(&v20);
            return sub_1000E23C0(&v23, &v20, a3 + 24);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000E23C0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v11 = *(a1 + 1);
  v12 = *(a1 + 3);
  v4 = *a2;
  v5 = *(a2 + 24);
  v8 = *(a2 + 8);
  v9 = v5;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13[1] = v5;
  v14 = v5;
  v13[0] = v5;
  v10 = v3;
  v7 = v4;
  sub_1000E3B64(&v10, &v7, a3, v13);
  return *(&v14 + 1);
}

void **sub_1000E246C(void **a1)
{
  v3 = a1 + 3;
  sub_100004E54(&v3);
  v3 = a1;
  sub_100004E54(&v3);
  return a1;
}

uint64_t sub_1000E24E0(void *a1)
{
  (*(*a1 + 40))(a1);
  sub_1000C7DD4(a1);
  v3 = a1[20];
  v2 = (a1 + 20);
  sub_100024404(v2, v3);

  return sub_10001622C((v2 + 56), 0);
}

void sub_1000E2550(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  memset(v11, 0, sizeof(v11));
  v4 = *a1;
  v5 = a1[1];
  *&v8 = v11;
  if (v4 != v5)
  {
    sub_100017DF0(__p);
  }

  memset(v10, 0, sizeof(v10));
  v7 = *a2;
  v6 = a2[1];
  v14 = v10;
  if (v7 != v6)
  {
    sub_100017DF0(__p);
  }

  sub_1000E2994(" ", v11, __p);
  sub_1000E2994(" ", v10, &v8);
  *a3 = *__p;
  *(a3 + 16) = v13;
  *(a3 + 24) = v8;
  *(a3 + 40) = v9;
  __p[0] = v10;
  sub_10002DE40(__p);
  __p[0] = v11;
  sub_10002DE40(__p);
}

void sub_1000E26D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char **a9, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  a9 = &a12;
  sub_10002DE40(&a9);
  a12 = &a15;
  sub_10002DE40(&a12);
  _Unwind_Resume(a1);
}

void sub_1000E273C(uint64_t *a1)
{
  (*(*a1 + 64))(a1);
  (*(*a1 + 40))(a1);
  memset(v3, 170, sizeof(v3));
  sub_1000C9450(a1[18], v3);
  memset(__p, 170, sizeof(__p));
  sub_1000C9450(a1[19], __p);
  operator new();
}

void sub_1000E2898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E28D4(uint64_t a1)
{
  *a1 = off_100188F78;
  sub_10001622C((a1 + 216), 0);
  v2 = *(a1 + 192);
  if (v2)
  {
    *(a1 + 200) = v2;
    operator delete(v2);
  }

  if (*(a1 + 184) == 1)
  {
    v3 = (a1 + 160);
    sub_100016A70(&v3);
  }

  sub_100024584(a1);
  operator delete();
}

uint64_t *sub_1000E2994@<X0>(char *__s@<X1>, uint64_t *result@<X0>, uint64_t a3@<X8>)
{
  v5 = *result;
  v6 = result[1];
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  if (v5 == v6)
  {
    goto LABEL_10;
  }

  v7 = *(v5 + 23);
  if (v7 >= 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = *v5;
  }

  if (v7 >= 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v9 = *(v5 + 8);
  }

  for (result = sub_1000E2C28(a3, a3, v8, &v8[v9], v9); ; result = sub_1000E2C28(a3, v15 + v14, v17, &v17[v18], v18))
  {
    v5 += 24;
LABEL_10:
    if (v5 == v6)
    {
      break;
    }

    v10 = *(a3 + 23);
    if (v10 >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    if (v10 >= 0)
    {
      v12 = *(a3 + 23);
    }

    else
    {
      v12 = *(a3 + 8);
    }

    v13 = strlen(__s);
    sub_1000E2F48(a3, v11 + v12, __s, &__s[v13], v13);
    v14 = *(a3 + 23);
    if ((v14 & 0x80u) == 0)
    {
      v15 = a3;
    }

    else
    {
      v15 = *a3;
    }

    if ((v14 & 0x80u) != 0)
    {
      v14 = *(a3 + 8);
    }

    v16 = *(v5 + 23);
    if (v16 >= 0)
    {
      v17 = v5;
    }

    else
    {
      v17 = *v5;
    }

    if (v16 >= 0)
    {
      v18 = *(v5 + 23);
    }

    else
    {
      v18 = *(v5 + 8);
    }
  }

  return result;
}

void sub_1000E2A94(_Unwind_Exception *a1)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1000E2AB4(uint64_t *a1, __int128 *a2)
{
  v4 = *a1;
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (v5 >= v6)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *v4) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_10002C63C();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *v4) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v10;
    }

    v20[4] = *a1;
    if (v12)
    {
      sub_10002E2FC(v4, v12);
    }

    v13 = 24 * v9;
    v14 = *a2;
    *(v13 + 16) = *(a2 + 2);
    *v13 = v14;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v8 = 24 * v9 + 24;
    v15 = *(v4 + 8) - *v4;
    v16 = v13 - v15;
    memcpy((v13 - v15), *v4, v15);
    v17 = *v4;
    *v4 = v16;
    v20[0] = v17;
    v20[1] = v17;
    *(v4 + 8) = v8;
    v20[2] = v17;
    v18 = *(v4 + 16);
    *(v4 + 16) = 0;
    v20[3] = v18;
    sub_10002E354(v20);
  }

  else
  {
    v7 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v7;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v8 = v5 + 24;
  }

  *(v4 + 8) = v8;
  return a1;
}

uint64_t sub_1000E2C28(std::string *this, uint64_t a2, std::string::value_type *a3, std::string::value_type *a4, std::string::size_type __n_add)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[0];
    v8 = a2 - this->__r_.__value_.__r.__words[0];
    if (__n_add)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    return v9 + v8;
  }

  v8 = a2 - this;
  if (!__n_add)
  {
    v9 = this;
    return v9 + v8;
  }

  v9 = this;
LABEL_6:
  if (v9 <= a3 && &v9->__r_.__value_.__l.__data_ + size + 1 > a3)
  {
    memset(&__p, 170, sizeof(__p));
    sub_1000E2EC0(&__p, a3, a4);
    v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v10 = __p.__r_.__value_.__l.__size_;
    }

    v12 = sub_1000E2DB0(this, __n_add, v8, p_p, p_p + v10);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    return v12;
  }

  return sub_1000E2DB0(this, __n_add, v8, a3, a4);
}

void sub_1000E2D8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000E2DB0(std::string *this, std::string::size_type __n_add, std::string::size_type __n_copy, _BYTE *a4, _BYTE *a5)
{
  v9 = this;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v11 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v11 - size >= __n_add)
    {
      v12 = this->__r_.__value_.__r.__words[0];
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 22;
    v12 = this;
    if (22 - size >= __n_add)
    {
LABEL_7:
      v13 = size - __n_copy;
      if (size == __n_copy)
      {
        size = __n_copy;
      }

      else
      {
        memmove(v12 + __n_copy + __n_add, v12 + __n_copy, v13);
      }

      goto LABEL_10;
    }
  }

  std::string::__grow_by(this, v11, size + __n_add - v11, size, __n_copy, 0, __n_add);
  v9->__r_.__value_.__l.__size_ = size + __n_add;
  v12 = v9->__r_.__value_.__r.__words[0];
LABEL_10:
  v14 = size + __n_add;
  if (SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0)
  {
    v9->__r_.__value_.__l.__size_ = v14;
  }

  else
  {
    *(&v9->__r_.__value_.__s + 23) = v14 & 0x7F;
  }

  v12->__r_.__value_.__s.__data_[v14] = 0;
  if (a5 != a4)
  {
    memmove(v12 + __n_copy, a4, a5 - a4);
  }

  if (SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0)
  {
    v9 = v9->__r_.__value_.__r.__words[0];
  }

  return v9 + __n_copy;
}

void sub_1000E2EC0(std::string *this, std::string::value_type *a2, std::string::value_type *a3)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      std::string::push_back(this, *v4++);
    }

    while (v4 != a3);
  }
}

void sub_1000E2F18(void *a1)
{
  __cxa_begin_catch(a1);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  __cxa_rethrow();
}

uint64_t sub_1000E2F48(std::string *this, uint64_t a2, std::string::value_type *a3, std::string::value_type *a4, std::string::size_type __n_add)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[0];
    v8 = a2 - this->__r_.__value_.__r.__words[0];
    if (__n_add)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    return v9 + v8;
  }

  v8 = a2 - this;
  if (!__n_add)
  {
    v9 = this;
    return v9 + v8;
  }

  v9 = this;
LABEL_6:
  if (v9 <= a3 && &v9->__r_.__value_.__l.__data_ + size + 1 > a3)
  {
    memset(&__p, 170, sizeof(__p));
    sub_1000E30D0(&__p, a3, a4);
    v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v10 = __p.__r_.__value_.__l.__size_;
    }

    v12 = sub_1000E2DB0(this, __n_add, v8, p_p, p_p + v10);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    return v12;
  }

  return sub_1000E2DB0(this, __n_add, v8, a3, a4);
}

void sub_1000E30AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E30D0(std::string *this, std::string::value_type *a2, std::string::value_type *a3)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      std::string::push_back(this, *v4++);
    }

    while (v4 != a3);
  }
}

void sub_1000E3128(void *a1)
{
  __cxa_begin_catch(a1);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  __cxa_rethrow();
}

void sub_1000E3158(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v14 = 0.0;
  if (sub_100025EAC(a2, &v14))
  {
    if (*a1 - 5 >= 3)
    {
      v4 = v12;
      v12[0] = 7;
      v13 = v14;
      sub_10000298C(v12);
      sub_10000298C(v12);
      sub_10000298C(v12);
      v8 = *a1;
      *a1 = v12[0];
      v12[0] = v8;
      v9 = *(a1 + 1);
      *(a1 + 1) = v13;
      v13 = v9;
      sub_10000298C(a1);
      sub_10000298C(v12);
      v7 = v12[0];
    }

    else
    {
      v15 = NAN;
      sub_100025F58(a1, &v15);
      v3 = v15;
      v4 = v10;
      if (v14 < v15)
      {
        v3 = v14;
      }

      v10[0] = 7;
      v11 = v3;
      sub_10000298C(v10);
      sub_10000298C(v10);
      sub_10000298C(v10);
      v5 = *a1;
      *a1 = v10[0];
      v10[0] = v5;
      v6 = *(a1 + 1);
      *(a1 + 1) = v11;
      v11 = v6;
      sub_10000298C(a1);
      sub_10000298C(v10);
      v7 = v10[0];
    }

    sub_1000048FC(v4 + 1, v7);
  }
}

void sub_1000E32C0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v14 = 0;
  if (sub_10001D5DC(a2, &v14))
  {
    if (*a1 - 5 >= 3)
    {
      v4 = v12;
      v12[0] = 5;
      v13 = v14;
      sub_10000298C(v12);
      sub_10000298C(v12);
      sub_10000298C(v12);
      v8 = *a1;
      *a1 = v12[0];
      v12[0] = v8;
      v9 = *(a1 + 1);
      *(a1 + 1) = v13;
      v13 = v9;
      sub_10000298C(a1);
      sub_10000298C(v12);
      v7 = v12[0];
    }

    else
    {
      v15 = 0xAAAAAAAAAAAAAAAALL;
      sub_10001D684(a1, &v15);
      v3 = v15;
      v4 = v10;
      if (v14 < v15)
      {
        v3 = v14;
      }

      v10[0] = 5;
      v11 = v3;
      sub_10000298C(v10);
      sub_10000298C(v10);
      sub_10000298C(v10);
      v5 = *a1;
      *a1 = v10[0];
      v10[0] = v5;
      v6 = *(a1 + 1);
      *(a1 + 1) = v11;
      v11 = v6;
      sub_10000298C(a1);
      sub_10000298C(v10);
      v7 = v10[0];
    }

    sub_1000048FC(v4 + 1, v7);
  }
}

void sub_1000E3428(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v14 = 0.0;
  if (sub_100025EAC(a2, &v14))
  {
    if (*a1 - 5 >= 3)
    {
      v4 = v12;
      v12[0] = 7;
      v13 = v14;
      sub_10000298C(v12);
      sub_10000298C(v12);
      sub_10000298C(v12);
      v8 = *a1;
      *a1 = v12[0];
      v12[0] = v8;
      v9 = *(a1 + 1);
      *(a1 + 1) = v13;
      v13 = v9;
      sub_10000298C(a1);
      sub_10000298C(v12);
      v7 = v12[0];
    }

    else
    {
      v15 = NAN;
      sub_100025F58(a1, &v15);
      v3 = v15;
      v4 = v10;
      if (v15 < v14)
      {
        v3 = v14;
      }

      v10[0] = 7;
      v11 = v3;
      sub_10000298C(v10);
      sub_10000298C(v10);
      sub_10000298C(v10);
      v5 = *a1;
      *a1 = v10[0];
      v10[0] = v5;
      v6 = *(a1 + 1);
      *(a1 + 1) = v11;
      v11 = v6;
      sub_10000298C(a1);
      sub_10000298C(v10);
      v7 = v10[0];
    }

    sub_1000048FC(v4 + 1, v7);
  }
}

void sub_1000E3590(uint64_t a1, unsigned __int8 *a2)
{
  if (!*a1)
  {
    sub_10000FF70(v5, a2);
    sub_10000298C(v5);
    v3 = *a1;
    *a1 = v5[0];
    v5[0] = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v4;
    sub_10000298C(a1);
    sub_10000298C(v5);
    sub_1000048FC(&v6, v5[0]);
  }
}

void sub_1000E365C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100189000;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

__n128 sub_1000E3724(uint64_t a1, uint64_t a2)
{
  *a2 = off_100189050;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1000E3754(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(*(v2 + 40) + 72);
  v4 = sub_100016734(v2);
  v5 = *(a1 + 16);
  v7[0] = off_1001890C0;
  v7[1] = v5;
  v7[3] = v7;
  (*(*v3 + 80))(v3, v4, v2 + 72, v7);
  return sub_10008BBB8(v7);
}

uint64_t sub_1000E3828(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000E38E4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1001890C0;
  a2[1] = v2;
  return result;
}

void sub_1000E3910()
{
  v0[0] = 0xAAAAAAAAAAAAAAAALL;
  v0[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100013CA0(v0, 0, 0, 0, 2);
}

uint64_t sub_1000E3A1C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1000E3AE4(uint64_t a1, uint64_t a2)
{
  *a2 = off_100189150;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1000E3B18(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1000E3B64@<Q0>(uint64_t a1@<X1>, unsigned __int8 **a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = a3;
  v10 = a3;
  if (!sub_10000DD7C(a1, a2))
  {
    do
    {
      v8 = sub_10000DB44(a1);
      sub_1000103DC(&v10, v8);
      sub_100012BFC(a1);
    }

    while (!sub_10000DD7C(a1, a2));
    v4 = v10;
  }

  *a4 = *a1;
  *(a4 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  *(a4 + 24) = result;
  *(a4 + 40) = v4;
  return result;
}

__n128 sub_1000E3CA0(uint64_t a1, uint64_t a2)
{
  *a2 = off_1001891D0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1000E3CCC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000E3D88(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100189250;
  a2[1] = v2;
  return result;
}

uint64_t sub_1000E3DB0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1000E3DFC(uint64_t a1)
{
  if (*a1)
  {
    sub_100024404(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

unsigned __int8 *sub_1000E3E3C(unsigned __int8 *result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 1);
  if (a2)
  {
    v4 = v3 + 16 * a2;
    do
    {
      *v3 = 0;
      *(v3 + 8) = 0;
      sub_10000298C(v3);
      result = sub_10000298C(v3);
      v3 += 16;
    }

    while (v3 != v4);
    v3 = v4;
  }

  *(v2 + 1) = v3;
  return result;
}

uint64_t sub_1000E3E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    sub_100014578(a4);
    *a4 = *v5;
    *(a4 + 16) = *(v5 + 16);
    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    sub_100014578(a4 + 24);
    *(a4 + 24) = *(v5 + 24);
    *(a4 + 40) = *(v5 + 40);
    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
    *(v5 + 40) = 0;
    v5 += 48;
    a4 += 48;
  }

  while (v5 != v6);
  return v6;
}

uint64_t sub_1000E3F34(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (a3)
  {
    v4 = &v3[6 * a3];
    do
    {
      *v3 = 0;
      v3[1] = 0;
      v3[2] = 0;
      *v3 = *a2;
      v3[2] = *(a2 + 16);
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      v3[3] = 0;
      v3[4] = 0;
      v3[5] = 0;
      *(v3 + 3) = *(a2 + 24);
      v3[5] = *(a2 + 40);
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      v3 += 6;
      a2 += 48;
    }

    while (v3 != v4);
    v3 = v4;
  }

  *(result + 16) = v3;
  return result;
}

void sub_1000E3FA0(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, void **a5)
{
  if (a3 != a5)
  {
    do
    {
      v6 = a3 - 6;
      v7 = a3 - 3;
      sub_100004E54(&v7);
      v7 = v6;
      sub_100004E54(&v7);
      a3 = v6;
    }

    while (v6 != a5);
  }
}

__n128 sub_1000E40A4(uint64_t a1, uint64_t a2)
{
  *a2 = off_1001892D0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1000E40DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v5[1] = v3;
  v5[2] = v3;
  v5[0] = v3;
  sub_1000E20F8(v2, a2, v5);
  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  v4[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100013CA0(v4, 0, 0, 0, 1);
}

void sub_1000E4238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, void *a20)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_10002C5F4(&a18);
  sub_1000E246C(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E427C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1000E434C(uint64_t a1, uint64_t a2)
{
  *a2 = off_100189350;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void sub_1000E438C(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 8);
  v4 = v3[1] - *v3;
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    if ((v4 >> 4) <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v4 >> 4;
    }

    do
    {
      v8 = **(a1 + 8) + v5;
      v26[0] = *v8;
      v27 = *(v8 + 8);
      sub_10000298C(v8);
      *v8 = 0;
      *(v8 + 8) = 0;
      sub_10000298C(v26);
      v9 = sub_1000071E4(*(a1 + 16), *(**(a1 + 24) + 8 * v6));
      sub_10000298C(v26);
      v10 = *v9;
      *v9 = v26[0];
      v26[0] = v10;
      v11 = *(v9 + 8);
      *(v9 + 8) = v27;
      v27 = v11;
      sub_10000298C(v9);
      sub_10000298C(v26);
      sub_1000048FC(&v27, v26[0]);
      ++v6;
      v5 += 16;
    }

    while (v7 != v6);
    v3 = *(a1 + 8);
  }

  v12 = v3[4] - v3[3];
  if (v12)
  {
    v13 = 0;
    v14 = 0;
    v15 = v12 >> 4;
    if (v15 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = v15;
    }

    do
    {
      v17 = *(*(a1 + 8) + 24) + v13;
      v24[0] = *v17;
      v25 = *(v17 + 8);
      sub_10000298C(v17);
      *v17 = 0;
      *(v17 + 8) = 0;
      sub_10000298C(v24);
      v18 = sub_1000071E4(*(a1 + 16), *(**(a1 + 32) + 8 * v14));
      sub_10000298C(v24);
      v19 = *v18;
      *v18 = v24[0];
      v24[0] = v19;
      v20 = *(v18 + 8);
      *(v18 + 8) = v25;
      v25 = v20;
      sub_10000298C(v18);
      sub_10000298C(v24);
      sub_1000048FC(&v25, v24[0]);
      ++v14;
      v13 += 16;
    }

    while (v16 != v14);
  }

  v21 = *(a1 + 40);
  v22 = (*(*v2 + 24))(v2);
  sub_1000C8790(v2, v22, *(a1 + 16), v28);
  v23 = *(v21 + 24);
  if (!v23)
  {
    sub_10002B200();
  }

  (*(*v23 + 48))(v23, v28);
  if (v36 == 1 && v35 < 0)
  {
    operator delete(v34[3]);
  }

  sub_10000298C(v33);
  sub_1000048FC(v34, v33[0]);
  if (v32 < 0)
  {
    operator delete(v31);
  }

  if (v30 < 0)
  {
    operator delete(v29);
  }
}

uint64_t sub_1000E468C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000E46D8(uint64_t a1)
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

void sub_1000E4758(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  std::string::reserve(a3, 2 * a2);
  if (a2 >= 1)
  {
    v6 = &a1[a2];
    do
    {
      std::string::push_back(a3, a0123456789abcd[*a1 >> 4]);
      std::string::push_back(a3, a0123456789abcd[*a1++ & 0xF]);
    }

    while (a1 < v6);
  }
}

void sub_1000E47E4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E480C(xpc_object_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  *(a2 + 8) = 0;
  *a2 = 0;
  sub_10000298C(a2);
  sub_10000298C(a2);
  type = xpc_get_type(*a1);
  if (type == &_xpc_type_dictionary)
  {
    sub_100013CA0(v39, 0, 0, 0, 1);
  }

  if (type == &_xpc_type_string)
  {
    *out = xpc_string_get_string_ptr(*a1);
    sub_10001AAEC(v38);
  }

  if (type == &_xpc_type_int64)
  {
    value = xpc_int64_get_value(*a1);
    v8 = v36;
    v36[0] = 5;
    v37 = value;
    sub_10000298C(v36);
    sub_10000298C(v36);
    sub_10000298C(v36);
    v9 = *a2;
    *a2 = v36[0];
    v36[0] = v9;
    v10 = *(a2 + 8);
    *(a2 + 8) = v37;
    v37 = v10;
    sub_10000298C(a2);
    sub_10000298C(v36);
    v11 = v36[0];
LABEL_15:
    sub_1000048FC(v8 + 1, v11);
    return;
  }

  if (type == &_xpc_type_array)
  {
    memset(out, 170, 24);
    sub_100013CA0(&v26, 0, 0, 0, 2);
  }

  if (type == &_xpc_type_data)
  {
    bytes_ptr = xpc_data_get_bytes_ptr(*a1);
    length = xpc_data_get_length(*a1);
    sub_1000E4758(bytes_ptr, length, out);
    v35 = 3;
    operator new();
  }

  if (type == &_xpc_type_BOOL)
  {
    v14 = xpc_BOOL_get_value(*a1);
    v8 = v33;
    v33[0] = 4;
    v34 = v14;
    sub_10000298C(v33);
    sub_10000298C(v33);
    sub_10000298C(v33);
    v15 = *a2;
    *a2 = v33[0];
    v33[0] = v15;
    v16 = *(a2 + 8);
    *(a2 + 8) = v34;
    v34 = v16;
    sub_10000298C(a2);
    sub_10000298C(v33);
    v11 = v33[0];
    goto LABEL_15;
  }

  if (type == &_xpc_type_uint64)
  {
    v17 = xpc_uint64_get_value(*a1);
    v8 = v31;
    v31[0] = 6;
    v32 = v17;
    sub_10000298C(v31);
    sub_10000298C(v31);
    sub_10000298C(v31);
    v18 = *a2;
    *a2 = v31[0];
    v31[0] = v18;
    v19 = *(a2 + 8);
    *(a2 + 8) = v32;
    v32 = v19;
    sub_10000298C(a2);
    sub_10000298C(v31);
    v11 = v31[0];
    goto LABEL_15;
  }

  if (type == &_xpc_type_null)
  {
    v29[0] = 0;
    v30 = 0;
    sub_10000298C(v29);
    sub_10000298C(v29);
    sub_1000DA96C(a2, v29);
    v20 = v29;
  }

  else
  {
    if (type != &_xpc_type_double)
    {
      if (type == &_xpc_type_uuid)
      {
        *&out[29] = 0xAAAAAAAAAAAAAAAALL;
        *&v5 = 0xAAAAAAAAAAAAAAAALL;
        *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *out = v5;
        *&out[16] = v5;
        bytes = xpc_uuid_get_bytes(*a1);
        uuid_unparse_lower(bytes, out);
        sub_1000ACCC4(v27);
      }

      memset(out, 170, 24);
      name = xpc_type_get_name(type);
      sub_10000459C(out, name);
      exception = __cxa_allocate_exception(0x10uLL);
      std::operator+<char>();
      v23 = std::string::append(&v25, ") cannot be converted and is invalid");
      v24 = *&v23->__r_.__value_.__l.__data_;
      v26.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
      *&v26.__r_.__value_.__l.__data_ = v24;
      v23->__r_.__value_.__l.__size_ = 0;
      v23->__r_.__value_.__r.__words[2] = 0;
      v23->__r_.__value_.__r.__words[0] = 0;
      std::logic_error::logic_error(exception, &v26);
    }

    *out = xpc_double_get_value(*a1);
    sub_1000E57F0(v28, out);
    sub_1000DA96C(a2, v28);
    v20 = v28;
  }

  sub_10002C5F4(v20);
}

void sub_1000E4FAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v23 & 1) == 0)
    {
LABEL_8:
      if (*(v24 - 105) < 0)
      {
        operator delete(*(v24 - 128));
      }

      sub_10002C5F4(v21);
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

void sub_1000E5208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  if (a2)
  {
    sub_10002C628(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E5290(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_null_create();
  *a2 = v4;
  v5 = *a1;
  if (v5 <= 3)
  {
    switch(v5)
    {
      case 1u:
        v36 = 0xAAAAAAAAAAAAAAAALL;
        sub_10001B07C(&v36);
        v35 = a1;
        sub_10008C584(&v35, value);
        sub_10008C608(&v35, v21);
        while (!sub_10000DD7C(value, v21))
        {
          v9 = sub_10000DB44(value);
          sub_1000E5290(&v19, v9);
          v10 = sub_10008C68C(value);
          if (*(v10 + 23) >= 0)
          {
            v11 = v10;
          }

          else
          {
            v11 = *v10;
          }

          xarray[0] = &v36;
          xarray[1] = v11;
          sub_10001B168(xarray, &v19, &object);
          xpc_release(object);
          object = 0;
          xpc_release(v19);
          v19 = 0;
          sub_100012BFC(value);
          ++v30;
        }

        if (v26 < 0)
        {
          operator delete(__p);
        }

        if (v24 < 0)
        {
          operator delete(v23);
        }

        if (v34 < 0)
        {
          operator delete(v33);
        }

        if (v32 < 0)
        {
          operator delete(v31);
        }

        v17 = v36;
        if (v36)
        {
          xpc_retain(v36);
        }

        else
        {
          v17 = xpc_null_create();
        }

        *a2 = v17;
        xpc_release(v4);
        xpc_release(v36);
        break;
      case 2u:
        xarray[0] = 0xAAAAAAAAAAAAAAAALL;
        sub_1000E5760(xarray);
        v29 = 0xAAAAAAAAAAAAAAAALL;
        *&v12 = 0xAAAAAAAAAAAAAAAALL;
        *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *value = v12;
        v28 = v12;
        sub_10000DEC4(value, a1);
        sub_10000DF14(value);
        v22 = 0xAAAAAAAAAAAAAAAALL;
        *&v13 = 0xAAAAAAAAAAAAAAAALL;
        *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v21[0] = v13;
        v21[1] = v13;
        sub_10000DEC4(v21, a1);
        sub_10000DCFC(v21);
        while (!sub_10000DD7C(value, v21))
        {
          v14 = sub_10000DB44(value);
          sub_1000E5290(&v36, v14);
          v15 = v36;
          xpc_array_append_value(xarray[0], v36);
          xpc_release(v15);
          sub_100012BFC(value);
        }

        v16 = xarray[0];
        if (xarray[0])
        {
          xpc_retain(xarray[0]);
        }

        else
        {
          v16 = xpc_null_create();
        }

        *a2 = v16;
        xpc_release(v4);
        xpc_release(xarray[0]);
        break;
      case 3u:
        sub_100010390(a1, value);
        if ((SBYTE7(v28) & 0x80u) == 0)
        {
          v7 = value;
        }

        else
        {
          v7 = value[0];
        }

        v8 = xpc_string_create(v7);
        if (!v8)
        {
          v8 = xpc_null_create();
        }

        *a2 = v8;
        xpc_release(v4);
        if (SBYTE7(v28) < 0)
        {
          operator delete(value[0]);
        }

        break;
    }
  }

  else
  {
    if (*a1 > 5u)
    {
      if (v5 == 6)
      {
        value[0] = 0xAAAAAAAAAAAAAAAALL;
        sub_10001E0A4(a1, value);
        v6 = xpc_uint64_create(value[0]);
        if (!v6)
        {
          v6 = xpc_null_create();
        }
      }

      else
      {
        if (v5 != 7)
        {
          return;
        }

        value[0] = -1;
        sub_100025F58(a1, value);
        v6 = xpc_double_create(*value);
        if (!v6)
        {
          v6 = xpc_null_create();
        }
      }
    }

    else if (v5 == 4)
    {
      LOBYTE(value[0]) = -86;
      sub_100032734(a1, value);
      v6 = xpc_BOOL_create(value[0]);
      if (!v6)
      {
        v6 = xpc_null_create();
      }
    }

    else
    {
      if (v5 != 5)
      {
        return;
      }

      value[0] = 0xAAAAAAAAAAAAAAAALL;
      sub_10001D684(a1, value);
      v6 = xpc_int64_create(value[0]);
      if (!v6)
      {
        v6 = xpc_null_create();
      }
    }

    *a2 = v6;
    xpc_release(v4);
  }
}

void sub_1000E5658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, uint64_t a10, xpc_object_t object, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10002C628(exception_object);
}

void sub_1000E5760(xpc_object_t *a1@<X8>)
{
  v2 = xpc_array_create(0, 0);
  v3 = v2;
  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    v3 = xpc_null_create();
    *a1 = v3;
    if (!v3)
    {
      goto LABEL_5;
    }
  }

  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    xpc_retain(v3);
    goto LABEL_7;
  }

LABEL_5:
  *a1 = xpc_null_create();
LABEL_7:
  xpc_release(v3);
}

uint64_t sub_1000E57F0(uint64_t a1, uint64_t *a2)
{
  *(a1 + 8) = 0;
  v3 = *a2;
  *a1 = 7;
  *(a1 + 8) = v3;
  sub_10000298C(a1);
  sub_10000298C(a1);
  return a1;
}

void sub_1000E5E40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1000E5F8C(&a16);
  _Unwind_Resume(a1);
}

uint64_t *sub_1000E5F8C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    nullsub_13(v2);
    operator delete();
  }

  return a1;
}

void sub_1000E5FD4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002ADF0(a1, a2);
  v5 = 0xAAAAAAAAAAAAAAAALL;
  v6 = 0xAAAAAAAAAAAAAAAALL;
  v4 = sub_100114D2C(a2, &v5);
  sub_1000E60A0(v4, &v5, v3);
  sub_10002AFA4(a2 + 24, &v5);
  sub_10000298C(&v5);
  sub_1000048FC(&v6, v5);
}

void sub_1000E60A0(int a1, uint64_t a2, int64_t __n)
{
  if (*a2)
  {
    if (*a2 == 3)
    {
      v3 = *(a2 + 8);
    }

    else
    {
      v3 = 0;
    }

    v4 = HIBYTE(v3->__r_.__value_.__r.__words[2]);
    if (__n < 0)
    {
      if ((v4 & 0x80) != 0)
      {
        size = v3->__r_.__value_.__l.__size_;
        if (size <= -__n)
        {
          return;
        }

        v8 = size + __n;
        v6 = v3->__r_.__value_.__r.__words[0];
        v5 = v8 + v3->__r_.__value_.__r.__words[0];
      }

      else
      {
        if (v4 <= -__n)
        {
          return;
        }

        v5 = v3 + __n + v4;
        v6 = v3;
      }

      std::string::erase(v3, 0, v5 - v6);
    }

    else
    {
      if ((v4 & 0x80) != 0)
      {
        v4 = v3->__r_.__value_.__l.__size_;
      }

      if (v4 > __n)
      {
        std::string::resize(v3, __n, 0);
      }
    }
  }
}

void sub_1000E6134(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002ADF0(a1, a2);
  v5 = sub_10002ADF0(a1, a2);
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  v6 = sub_100114D2C(a2, &v7);
  sub_1000E6214(v6, &v7, v5, v4);
  sub_10002AFA4(a2 + 24, &v7);
  sub_10000298C(&v7);
  sub_1000048FC(&v8, v7);
}

void sub_1000E6214(uint64_t a1, uint64_t a2, std::string::size_type a3, uint64_t a4)
{
  if (!*a2)
  {
    return;
  }

  v4 = a3;
  if (*a2 == 3)
  {
    v5 = *(a2 + 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v5 + 23);
  if ((a3 & 0x8000000000000000) == 0)
  {
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v6 = *(v5 + 8);
    v7 = v6 - v4;
    if (v6 <= v4)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      return;
    }

    goto LABEL_14;
  }

  if ((v6 & 0x80) != 0)
  {
    v8 = *(v5 + 8);
  }

  else
  {
    v8 = *(v5 + 23);
  }

  v4 = (v8 + a3) & ~((v8 + a3) >> 63);
  if ((v6 & 0x80) != 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v7 = v6 - v4;
  if (v6 <= v4)
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    return;
  }

LABEL_14:
  v9 = (a4 - v4 + v6) & ~((a4 - v4 + v6) >> 63);
  if (a4 >= 0)
  {
    v9 = a4;
  }

  if (v9 >= v7)
  {
    v9 = v7;
  }

  std::string::resize(v5, v9 + v4, 0);

  std::string::erase(v5, 0, v4);
}

void sub_1000E6304(uint64_t a1, uint64_t a2)
{
  memset(&__p, 170, sizeof(__p));
  sub_1000170E4(a2, &__p);
  v17 = 0xAAAAAAAAAAAAAAAALL;
  __s = 0xAAAAAAAAAAAAAAAALL;
  sub_100114D2C(a2, &v17);
  v3 = v17;
  if (!v17)
  {
    goto LABEL_27;
  }

  if (v17 == 3)
  {
    v4 = __s;
  }

  else
  {
    v4 = 0;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v6 = *(v4 + 23);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v6 = v4[1];
    if (size <= v6)
    {
      v4 = *v4;
      goto LABEL_14;
    }

LABEL_12:
    v3 = 0;
    goto LABEL_27;
  }

  if (size > v6)
  {
    goto LABEL_12;
  }

LABEL_14:
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (size)
  {
    v8 = v4 + v6;
    if (v6 >= size)
    {
      v11 = p_p->__r_.__value_.__s.__data_[0];
      v12 = v4;
      do
      {
        v13 = v6 - size;
        if (v13 == -1)
        {
          break;
        }

        v14 = memchr(v12, v11, v13 + 1);
        if (!v14)
        {
          break;
        }

        v9 = v14;
        if (!memcmp(v14, p_p, size))
        {
          goto LABEL_20;
        }

        v12 = v9 + 1;
        v6 = v8 - (v9 + 1);
      }

      while (v6 >= size);
    }

    v9 = v8;
LABEL_20:
    v3 = v9 != v8 && v9 - v4 != -1;
  }

  else
  {
    v3 = 1;
  }

LABEL_27:
  v15[0] = 4;
  v16 = v3;
  sub_10000298C(v15);
  sub_10000298C(v15);
  sub_10000F8A4(a2 + 24, v15);
  sub_10000298C(v15);
  sub_1000048FC(&v16, v15[0]);
  sub_10000298C(&v17);
  sub_1000048FC(&__s, v17);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1000E64E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_10002C5F4(&a9);
  sub_10002C5F4(&a11);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1000E6528(uint64_t a1, uint64_t a2)
{
  memset(&__p, 170, sizeof(__p));
  sub_1000170E4(a2, &__p);
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v11 = 0xAAAAAAAAAAAAAAAALL;
  sub_100114D2C(a2, &v10);
  v3 = v10;
  if (!v10)
  {
    goto LABEL_20;
  }

  if (v10 == 3)
  {
    v4 = v11;
  }

  else
  {
    v4 = 0;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v6 = *(v4 + 23);
  if ((v6 & 0x8000000000000000) != 0)
  {
    if (size <= v4[1])
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v4 = *v4;
      goto LABEL_19;
    }

LABEL_14:
    v3 = 0;
    goto LABEL_20;
  }

  if (size > v6)
  {
    goto LABEL_14;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

LABEL_19:
  v3 = memcmp(p_p, v4, size) == 0;
LABEL_20:
  v8[0] = 4;
  v9 = v3;
  sub_10000298C(v8);
  sub_10000298C(v8);
  sub_10000F8A4(a2 + 24, v8);
  sub_10000298C(v8);
  sub_1000048FC(&v9, v8[0]);
  sub_10000298C(&v10);
  sub_1000048FC(&v11, v10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1000E66A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_10002C5F4(&a9);
  sub_10002C5F4(&a11);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1000E66E4(uint64_t a1, uint64_t a2)
{
  memset(&__p, 170, sizeof(__p));
  sub_1000170E4(a2, &__p);
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v11 = 0xAAAAAAAAAAAAAAAALL;
  sub_100114D2C(a2, &v10);
  v3 = v10;
  if (!v10)
  {
    goto LABEL_20;
  }

  if (v10 == 3)
  {
    v4 = v11;
  }

  else
  {
    v4 = 0;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v6 = *(v4 + 23);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v6 = *(v4 + 8);
    if (size <= v6)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v4 = *v4;
      goto LABEL_19;
    }

LABEL_14:
    v3 = 0;
    goto LABEL_20;
  }

  if (size > v6)
  {
    goto LABEL_14;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

LABEL_19:
  v3 = memcmp(p_p, (v6 - size + v4), size) == 0;
LABEL_20:
  v8[0] = 4;
  v9 = v3;
  sub_10000298C(v8);
  sub_10000298C(v8);
  sub_10000F8A4(a2 + 24, v8);
  sub_10000298C(v8);
  sub_1000048FC(&v9, v8[0]);
  sub_10000298C(&v10);
  sub_1000048FC(&v11, v10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1000E6864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_10002C5F4(&a9);
  sub_10002C5F4(&a11);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1000E68A8(uint64_t a1, uint64_t a2)
{
  memset(&v7, 170, sizeof(v7));
  sub_1000170E4(a2, &v7);
  v5 = 0xAAAAAAAAAAAAAAAALL;
  v6 = 0xAAAAAAAAAAAAAAAALL;
  sub_100114D2C(a2, &v5);
  if (v5)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v9[6] = 0xAAAAAAAAAAAAAA00;
    v9[3] = 0xAAAAAAAAAAAAAAAALL;
    v10 = v3;
    v9[4] = 0;
    v9[5] = 0;
    v9[7] = 0;
    v9[8] = 0;
    LOBYTE(v10) = 0;
    BYTE8(v10) = 0;
    v11 = 0;
    *__p = 0u;
    memset(v9, 0, 25);
    sub_10004D244(&v4, &v7, 0);
  }

  LOBYTE(__p[0]) = 4;
  __p[1] = 0;
  sub_10000298C(__p);
  sub_10000298C(__p);
  sub_10000F8A4(a2 + 24, __p);
  sub_10000298C(__p);
  sub_1000048FC(&__p[1], LOBYTE(__p[0]));
  sub_10000298C(&v5);
  sub_1000048FC(&v6, v5);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }
}

void sub_1000E6A60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27)
{
  sub_10004C4AC(&a10);
  if (__p)
  {
    a27 = __p;
    operator delete(__p);
  }

  sub_10002C5F4(&a18);
  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

void sub_1000E6ACC(uint64_t a1, uint64_t a2)
{
  memset(&v7, 170, sizeof(v7));
  sub_1000170E4(a2, &v7);
  v5 = 0xAAAAAAAAAAAAAAAALL;
  v6 = 0xAAAAAAAAAAAAAAAALL;
  sub_100114D2C(a2, &v5);
  if (v5)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v9[6] = 0xAAAAAAAAAAAAAA00;
    v9[3] = 0xAAAAAAAAAAAAAAAALL;
    v10 = v3;
    v9[4] = 0;
    v9[5] = 0;
    v9[7] = 0;
    v9[8] = 0;
    LOBYTE(v10) = 0;
    BYTE8(v10) = 0;
    v11 = 0;
    *__p = 0u;
    memset(v9, 0, 25);
    sub_10004D244(&v4, &v7, 0);
  }

  LOBYTE(v12) = 4;
  v13[0] = 0;
  sub_10000298C(&v12);
  sub_10000298C(&v12);
  sub_10000F8A4(a2 + 24, &v12);
  sub_10000298C(&v12);
  sub_1000048FC(v13, v12);
  sub_10000298C(&v5);
  sub_1000048FC(&v6, v5);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }
}

void sub_1000E6CF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27)
{
  sub_10002C5F4(&a18);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1000E6D74(uint64_t a1, uint64_t a2)
{
  memset(&v9, 170, sizeof(v9));
  sub_1000170E4(a2, &v9);
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  sub_100114D2C(a2, &v7);
  v5 = 0xAAAAAAAAAAAAAA00;
  v6 = 0;
  sub_10000298C(&v5);
  sub_10000298C(&v5);
  if (v7)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v11[6] = 0xAAAAAAAAAAAAAA00;
    v11[3] = 0xAAAAAAAAAAAAAAAALL;
    v12 = v3;
    v11[4] = 0;
    v11[5] = 0;
    v11[7] = 0;
    v11[8] = 0;
    LOBYTE(v12) = 0;
    BYTE8(v12) = 0;
    v13 = 0;
    __p = 0u;
    memset(v11, 0, 25);
    sub_10004D244(&v4, &v9, 0);
  }

  sub_10000F8A4(a2 + 24, &v5);
  sub_10000298C(&v5);
  sub_1000048FC(&v6, v5);
  sub_10000298C(&v7);
  sub_1000048FC(&v8, v7);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_1000E70D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31)
{
  if (__p)
  {
    a31 = __p;
    operator delete(__p);
  }

  sub_10002C5F4(&a20);
  sub_10002C5F4(&a22);
  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

void sub_1000E7184(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000E71C0(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000E71FC(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000E7238(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000E7274(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000E72B0(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000E72EC(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000E7328(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

const void **sub_1000E7360(void *a1, const void **a2)
{
  v4 = sub_10001357C(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
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
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_10001706C(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t sub_1000E7620(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1000E766C(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1000E766C(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void sub_1000E796C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1000E5F8C(&a16);
  _Unwind_Resume(a1);
}

void sub_1000E79F0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  v3 = *(a2 + 64);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  memset(&v9, 170, sizeof(v9));
  sub_1000170E4(a2, &v9);
  memset(&__p, 170, sizeof(__p));
  sub_1000170E4(a2, &__p);
  sub_1000B0234(v4, &__p, &v9, v5);
  v7 = 0;
  v6 = 2;
  v10 = v5[1];
  v11 = v5[0];
  sub_1000BD0FC();
}

void sub_1000E7B48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_10002C5F4(&a13);
  *(v27 - 80) = &a10;
  sub_10002DE40((v27 - 80));
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (v26)
  {
    sub_10000786C(v26);
  }

  _Unwind_Resume(a1);
}

void sub_1000E7BC0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  v3 = *(a2 + 64);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  memset(&__p, 170, sizeof(__p));
  sub_1000170E4(a2, &__p);
  v5 = sub_1000B08E4(v4, &__p.__r_.__value_.__l.__data_);
  if (v6)
  {
    v7[0] = 5;
  }

  else
  {
    v5 = 0;
    v7[0] = 0;
  }

  v8 = v5;
  sub_10000298C(v7);
  sub_10000298C(v7);
  sub_10000F8A4(a2 + 24, v7);
  sub_10000298C(v7);
  sub_1000048FC(&v8, v7[0]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v3)
  {
    sub_10000786C(v3);
  }
}

void sub_1000E7CC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  sub_10002C5F4(&a9);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    sub_10000786C(v16);
  }

  _Unwind_Resume(a1);
}

void sub_1000E7D08(uint64_t a1, uint64_t a2)
{
  sub_10002ADF0(a1, a2);
  memset(&__p, 170, sizeof(__p));
  sub_1000170E4(a2, &__p);
  v3 = 0xAAAAAAAAAAAAAAAALL;
  v4 = 0xAAAAAAAAAAAAAAAALL;
  sub_1000E810C(v6);
}

void sub_1000E7F58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  sub_10002C5F4(&a9);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1000E805C(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000E8098(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000E80D4(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000E810C(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  sub_1000E8158();
}

void sub_1000E8B44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1000E5F8C(&a16);
  _Unwind_Resume(a1);
}

void sub_1000E8D60(unsigned __int8 **a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = v2 - 16;
    v5 = v2 - 16;
    do
    {
      sub_10000298C(v4);
      v6 = *v5;
      v5 -= 16;
      sub_1000048FC(v4 + 1, v6);
      v7 = v4 == v3;
      v4 = v5;
    }

    while (!v7);
  }

  a1[1] = v3;
}

uint64_t sub_1000E8DC8(uint64_t a1, void *a2)
{
  v3 = a2[4];
  v4 = a2[5];
  v5 = (v3 - a2[3]) >> 4;
  v7 = v5;
  if (v3 >= v4)
  {
    result = sub_1000E9AF8((a2 + 3), &v7);
  }

  else
  {
    *v3 = 6;
    *(v3 + 8) = v5;
    sub_10000298C(v3);
    sub_10000298C(v3);
    result = v3 + 16;
  }

  a2[4] = result;
  return result;
}

uint64_t sub_1000E8E78(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v3 = *(a2 + 32);
  v2 = a2 + 24;
  if (v4 == v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1000E8F08(exception, "EvaluationContext Stack empty: 'drop' expected at least one item");
  }

  return sub_100013F0C(v2, (v3 - 16));
}

std::logic_error *sub_1000E8F08(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

unsigned __int8 *sub_1000E8F44(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 24);
  if (*(a2 + 24) == *(a2 + 32))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1000E8F08(exception, "EvaluationContext Stack empty: 'dropN' expected at least one item");
    goto LABEL_10;
  }

  v4 = sub_10002ADF0(a1, a2);
  if ((v4 & 0x8000000000000000) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1000E8F08(exception, "EvaluationContext Stack empty: 'dropN' saw a negative number");
    goto LABEL_10;
  }

  v5 = (*(a2 + 32) - *(a2 + 24)) >> 4;
  if (v5 < v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1000E8F08(exception, "EvaluationContext Stack empty: 'dropN' saw too few items");
LABEL_10:
  }

  return sub_10001BA24(v2, v5 - v4);
}

uint64_t sub_1000E9038(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v2 = a2 + 24;
  v4 = *(&v3 + 1);
  v5 = v3;
  if (v3 == *(&v3 + 1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1000E8F08(exception, "EvaluationContext Stack empty: 'dropExcept1' expected at least one item");
  }

  return sub_1000E90D0(v2, v5, v4 - 16);
}

uint64_t sub_1000E90D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    sub_100041858(&v7, a3, *(a1 + 8), a2);
    sub_100013F0C(a1, v5);
  }

  return a2;
}

uint64_t sub_1000E9160(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 24;
  if (*(a2 + 24) == *(a2 + 32))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1000E8F08(exception, "EvaluationContext Stack empty: 'dropExceptN' expected at least one item");
    goto LABEL_10;
  }

  v4 = sub_10002ADF0(a1, a2);
  if ((v4 & 0x8000000000000000) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1000E8F08(exception, "EvaluationContext Stack empty: 'dropExceptN' saw a negative N");
LABEL_10:
  }

  v5 = *(a2 + 24);
  v6 = (*(a2 + 32) - v5) >> 4;
  v7 = v6 >= v4;
  v8 = v6 - v4;
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1000E8F08(exception, "EvaluationContext Stack empty: 'dropExceptN' saw too few items");
    goto LABEL_10;
  }

  return sub_1000E90D0(v2, v5, v5 + 16 * v8);
}

uint64_t sub_1000E9258(uint64_t a1, void *a2)
{
  v3 = a2[4];
  v2 = (a2 + 3);
  if (a2[3] == v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1000E8F08(exception, "EvaluationContext Stack empty: 'dup' expected at least one item");
  }

  v5 = v3 - 16;
  if (v3 >= a2[5])
  {
    result = sub_1000DD9EC(v2, v5);
  }

  else
  {
    sub_10000FF70(v3, v5);
    result = (v3 + 16);
    a2[4] = v3 + 16;
  }

  a2[4] = result;
  return result;
}

unsigned __int8 *sub_1000E931C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002ADF0(a1, a2);
  if ((v3 & 0x8000000000000000) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1000E8F08(exception, "EvaluationContext Stack empty: 'dupN' saw a negative number");
    goto LABEL_8;
  }

  v5 = *(a2 + 24);
  v4 = *(a2 + 32);
  v6 = (a2 + 24);
  if (v3 > (v4 - v5) >> 4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1000E8F08(exception, "EvaluationContext Stack empty: 'dupN' saw too few items");
LABEL_8:
  }

  return sub_1000DDBB8(v6, v4, (v4 - 16 * v3), v4, (16 * v3) >> 4);
}

uint64_t sub_1000E93E8(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002ADF0(a1, a2);
  if (v3 <= 0)
  {
    v7 = v3;
    exception = __cxa_allocate_exception(0x10uLL);
    v9 = exception;
    if (v7)
    {
      sub_1000E8F08(exception, "EvaluationContext Stack empty: 'pick' saw a negative number");
    }

    else
    {
      sub_1000E8F08(exception, "EvaluationContext Stack empty: 'pick' saw a zero");
    }

LABEL_11:
  }

  v4 = *(a2 + 32);
  if (v3 > ((v4 - *(a2 + 24)) >> 4))
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    sub_1000E8F08(v9, "EvaluationContext Stack empty: 'pick' saw a number larger than the stack size");
    goto LABEL_11;
  }

  v5 = (v4 - 16 * v3);
  if (v4 >= *(a2 + 40))
  {
    result = sub_1000DD9EC(a2 + 24, v5);
  }

  else
  {
    sub_10000FF70(*(a2 + 32), v5);
    result = v4 + 16;
    *(a2 + 32) = v4 + 16;
  }

  *(a2 + 32) = result;
  return result;
}

uint64_t sub_1000E9500(uint64_t a1, void *a2)
{
  v3 = a2[4];
  v2 = (a2 + 3);
  if (&v3[-a2[3]] <= 0x10)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1000E8F08(exception, "EvaluationContext Stack empty: 'pick2' expected at least two items");
  }

  v5 = v3 - 32;
  if (v3 >= a2[5])
  {
    result = sub_1000DD9EC(v2, v5);
  }

  else
  {
    sub_10000FF70(v3, v5);
    result = (v3 + 16);
    a2[4] = v3 + 16;
  }

  a2[4] = result;
  return result;
}

unsigned __int8 *sub_1000E95C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if ((v2 - *(a2 + 24)) <= 0x10)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1000E8F08(exception, "EvaluationContext Stack empty: 'swap' expected at least two items");
  }

  v4 = *(v2 - 16);
  v3 = v2 - 16;
  *v3 = *(v3 - 16);
  *(v3 - 16) = v4;
  v5 = *(v3 + 8);
  *(v3 + 8) = *(v3 - 8);
  *(v3 - 8) = v5;

  return sub_10000298C(v3);
}

uint64_t sub_1000E9678(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if ((v2 - *(a2 + 24)) <= 0x20)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1000E8F08(exception, "EvaluationContext Stack empty: 'rot' expected at least three items");
  }

  return sub_1000E9C50(v2 - 48, v2 - 32, v2);
}

unint64_t sub_1000E9710(uint64_t a1, uint64_t a2)
{
  result = sub_10002ADF0(a1, a2);
  if (!result)
  {
    return result;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1000E8F08(exception, "EvaluationContext Stack empty: 'roll' saw a negative number");
    goto LABEL_11;
  }

  v4 = *(a2 + 32);
  if (result > (v4 - *(a2 + 24)) >> 4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1000E8F08(exception, "EvaluationContext Stack empty: 'roll' saw too few items");
LABEL_11:
  }

  result = v4 - 16 * result;
  if (result + 16 != v4)
  {

    return sub_1000E9C50(result, result + 16, v4);
  }

  return result;
}

void sub_1000E97F0(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000E982C(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000E9868(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000E98A4(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000E98E0(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000E991C(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000E9958(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000E9994(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000E99D0(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000E9A0C(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000E9A48(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000E9A84(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000E9AC0(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

uint64_t sub_1000E9AF8(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_10002C63C();
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

  v19 = a1;
  if (v7)
  {
    sub_10000BC18(a1, v7);
  }

  v18 = 0uLL;
  v8 = 16 * v2;
  v16 = 0;
  v17 = v8;
  *(v8 + 8) = 0;
  v9 = *a2;
  *v8 = 6;
  *(v8 + 8) = v9;
  sub_10000298C(v8);
  sub_10000298C(v8);
  *&v18 = v8 + 16;
  v10 = *(a1 + 8);
  v11 = v8 + *a1 - v10;
  sub_10000BB08(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_10000BC60(&v16);
  return v15;
}

void sub_1000E9C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000BC60(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E9C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *a1;
  *a1 = *a2;
  *a2 = v6;
  v7 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v7;
  sub_10000298C(a1);
  v8 = a1 + 16;
  for (i = v4 + 16; i != a3; i += 16)
  {
    if (v8 == v4)
    {
      v4 = i;
    }

    v10 = *v8;
    *v8 = *i;
    *i = v10;
    v11 = *(v8 + 8);
    *(v8 + 8) = *(i + 8);
    *(i + 8) = v11;
    sub_10000298C(v8);
    v8 += 16;
  }

  if (v8 != v4)
  {
    v12 = v8;
    v13 = v4;
    do
    {
      while (1)
      {
        v14 = *v12;
        *v12 = *v13;
        *v13 = v14;
        v15 = *(v12 + 8);
        *(v12 + 8) = *(v13 + 8);
        *(v13 + 8) = v15;
        sub_10000298C(v12);
        v12 += 16;
        v13 += 16;
        if (v13 == a3)
        {
          break;
        }

        if (v12 == v4)
        {
          v4 = v13;
        }
      }

      v13 = v4;
    }

    while (v12 != v4);
  }

  return v8;
}

void sub_1000EA150(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1000E5F8C(&a16);
  _Unwind_Resume(a1);
}

void sub_1000EA224(uint64_t a1, uint64_t a2)
{
  v11 = 0xAAAAAAAAAAAAAAAALL;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  sub_100024E50(a2, &v11);
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  sub_100026890(a2, &v9);
  sub_1000139C0(&v9, &v7);
  v3 = v7;
  v4 = v8;
  if (v7 != v8)
  {
    while ((sub_10000EC1C(v3, &v11) & 1) == 0)
    {
      v3 += 16;
      if (v3 == v4)
      {
        v3 = v4;
        break;
      }
    }

    v4 = v8;
  }

  if (v3 == v4)
  {
    LOBYTE(v5) = 0;
    v6 = 0;
  }

  else
  {
    LOBYTE(v5) = 5;
    v6 = (v3 - v7) >> 4;
  }

  sub_10000298C(&v5);
  sub_10000298C(&v5);
  sub_10000F8A4(a2 + 24, &v5);
  sub_10000298C(&v5);
  sub_1000048FC(&v6, v5);
  v5 = &v7;
  sub_100004E54(&v5);
  sub_10000298C(&v9);
  sub_1000048FC(&v10, v9);
  sub_10000298C(&v11);
  sub_1000048FC(&v12, v11);
}

void sub_1000EA3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, uint64_t a15, unsigned __int8 a16)
{
  sub_10002C5F4(&a9);
  a9 = &a11;
  sub_100004E54(&a9);
  sub_10002C5F4(&a14);
  sub_10002C5F4(&a16);
  _Unwind_Resume(a1);
}

void sub_1000EA3FC(uint64_t a1, uint64_t a2)
{
  v11 = 0xAAAAAAAAAAAAAAAALL;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  sub_100024E50(a2, &v11);
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  sub_100026890(a2, &v9);
  sub_1000139C0(&v9, &v7);
  v3 = v7;
  v4 = v8;
  if (v7 != v8)
  {
    while ((sub_10000EC1C(v3, &v11) & 1) == 0)
    {
      v3 += 16;
      if (v3 == v4)
      {
        v3 = v4;
        break;
      }
    }

    v4 = v8;
  }

  LOBYTE(v5) = 4;
  v6 = v3 != v4;
  sub_10000298C(&v5);
  sub_10000298C(&v5);
  sub_10000F8A4(a2 + 24, &v5);
  sub_10000298C(&v5);
  sub_1000048FC(&v6, v5);
  v5 = &v7;
  sub_100004E54(&v5);
  sub_10000298C(&v9);
  sub_1000048FC(&v10, v9);
  sub_10000298C(&v11);
  sub_1000048FC(&v12, v11);
}

void sub_1000EA544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, uint64_t a15, unsigned __int8 a16)
{
  sub_10002C5F4(&a9);
  a9 = &a11;
  sub_100004E54(&a9);
  sub_10002C5F4(&a14);
  sub_10002C5F4(&a16);
  _Unwind_Resume(a1);
}

void sub_1000EA598(uint64_t a1, uint64_t a2)
{
  v18[0] = 0xAAAAAAAAAAAAAAAALL;
  v18[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100026890(a2, v18);
  v17[0] = 0xAAAAAAAAAAAAAAAALL;
  v17[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100026890(a2, v17);
  v4 = *(a2 + 32);
  v10 = *(a2 + 24);
  sub_1000139C0(v17, &v15);
  v13 = 0uLL;
  v14 = 0;
  v5 = v15;
  for (i = v16; v5 != i; v5 += 16)
  {
    sub_10002AFA4(a2 + 24, v5);
    sub_10000F91C(*(a2 + 48), a2, v18);
    v7 = sub_100114AB8(a1, a2);
    LOBYTE(v11) = 4;
    v12 = v7;
    sub_10000298C(&v11);
    sub_10000298C(&v11);
    v19 = -86;
    sub_100032734(&v11, &v19);
    v8 = v19;
    sub_10000298C(&v11);
    sub_1000048FC(&v12, v11);
    if (v8 == 1)
    {
      sub_10002AFA4(&v13, v5);
    }
  }

  if (*(a2 + 32) - *(a2 + 24) == v4 - v10)
  {
    LOBYTE(v11) = 2;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Filter left the wrong number of items on the stack.");
}

void sub_1000EA808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va4, a3);
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void **);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  va_copy(va3, va2);
  v11 = va_arg(va3, void);
  v13 = va_arg(va3, void);
  v14 = va_arg(va3, void);
  va_copy(va4, va3);
  v15 = va_arg(va4, void);
  v17 = va_arg(va4, void);
  va_copy(v4, va1);
  sub_100004E54(va);
  va_copy(v7, va2);
  sub_100004E54(va1);
  sub_10002C5F4(va3);
  sub_10002C5F4(va4);
  _Unwind_Resume(a1);
}

void sub_1000EA894(uint64_t a1, uint64_t a2)
{
  v15[0] = 0xAAAAAAAAAAAAAAAALL;
  v15[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100026890(a2, v15);
  v14[0] = 0xAAAAAAAAAAAAAAAALL;
  v14[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100026890(a2, v14);
  v3 = *(a2 + 24);
  v4 = *(a2 + 32);
  sub_1000139C0(v14, &v12);
  v10 = 0uLL;
  v11 = 0;
  v5 = v12;
  for (i = v13; v5 != i; v5 += 16)
  {
    v8 = 0xAAAAAAAAAAAAAAAALL;
    v9 = 0xAAAAAAAAAAAAAAAALL;
    sub_10002AFA4(a2 + 24, v5);
    sub_10000F91C(*(a2 + 48), a2, v15);
    sub_100024E50(a2, &v8);
    sub_10000F8A4(&v10, &v8);
    sub_10000298C(&v8);
    sub_1000048FC(&v9, v8);
  }

  if (*(a2 + 32) - *(a2 + 24) == v4 - v3)
  {
    LOBYTE(v8) = 2;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Map left the wrong number of items on the stack.");
}

void sub_1000EAAC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, unsigned __int8 a18, uint64_t a19, unsigned __int8 a20)
{
  a9 = &a11;
  sub_100004E54(&a9);
  a11 = &a15;
  sub_100004E54(&a11);
  sub_10002C5F4(&a18);
  sub_10002C5F4(&a20);
  _Unwind_Resume(a1);
}

void sub_1000EAB50(uint64_t a1, uint64_t a2)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  sub_100026890(a2, &v13);
  v11 = 0xAAAAAAAAAAAAAAAALL;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  sub_100026890(a2, &v11);
  v3 = *(a2 + 24);
  v4 = *(a2 + 32);
  sub_1000139C0(&v11, &v9);
  v5 = v9;
  v6 = v10;
  if (v10 != v9 && v13)
  {
    v7 = v4 - v3;
    if (v13 == 1)
    {
      if (!v14[2])
      {
        goto LABEL_10;
      }
    }

    else if (v13 == 2 && !((v14[1] - *v14) >> 4))
    {
      goto LABEL_10;
    }

    do
    {
      sub_10002AFA4(a2 + 24, v5);
      sub_10000F91C(*(a2 + 48), a2, &v13);
      v5 += 16;
    }

    while (v5 != v6);
    if (*(a2 + 32) - *(a2 + 24) != v7)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Fold left the wrong number of items on the stack.");
    }
  }

LABEL_10:
  v15 = &v9;
  sub_100004E54(&v15);
  sub_10000298C(&v11);
  sub_1000048FC(&v12, v11);
  sub_10000298C(&v13);
  sub_1000048FC(&v14, v13);
}

void sub_1000EACF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, unsigned __int8 a15, uint64_t a16, void **a17)
{
  a17 = &a10;
  sub_100004E54(&a17);
  sub_10002C5F4(&a13);
  sub_10002C5F4(&a15);
  _Unwind_Resume(a1);
}