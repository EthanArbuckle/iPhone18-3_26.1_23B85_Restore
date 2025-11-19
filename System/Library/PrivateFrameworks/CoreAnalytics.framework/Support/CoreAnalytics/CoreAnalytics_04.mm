void sub_10004AD0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a2)
  {
    v17 = *(v15 + 16);
    if (v17)
    {
      std::__shared_weak_count::__release_weak(v17);
    }

    sub_10002C628(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10004AD5C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2[1];
  v5 = *a2;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a3 + 23) < 0)
  {
    sub_1000078D8(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v7 = *(a3 + 16);
  }

  v8[0] = 0xAAAAAAAAAAAAAAAALL;
  v8[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v8, (a1 + 24));
  operator new();
}

void sub_10004AEF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a2)
  {
    v13 = *(v11 + 16);
    if (v13)
    {
      std::__shared_weak_count::__release_weak(v13);
    }

    sub_10002C628(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10004AF48(uint64_t a1, uint64_t a2)
{
  v3[3] = a1;
  sub_1000564F4(&v4, a2);
  v3[0] = 0xAAAAAAAAAAAAAAAALL;
  v3[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v3, (a1 + 24));
  operator new();
}

void sub_10004B070(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10004B080(uint64_t a1, uint64_t a2)
{
  v3[3] = a1;
  sub_1000564F4(&v4, a2);
  v3[0] = 0xAAAAAAAAAAAAAAAALL;
  v3[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v3, (a1 + 24));
  operator new();
}

void sub_10004B1A8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10004B1B8(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, NSObject **a4@<X8>)
{
  v8 = dispatch_group_create();
  *a4 = v8;
  if (*(a2 + 23) < 0)
  {
    sub_1000078D8(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    __p[2] = *(a2 + 16);
  }

  sub_10000FF70(v10, a3);
  group = v8;
  if (v8)
  {
    dispatch_retain(v8);
    dispatch_group_enter(v8);
  }

  v12[0] = 0xAAAAAAAAAAAAAAAALL;
  v12[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v12, (a1 + 24));
  operator new();
}

void sub_10004B3B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16)
  {
    dispatch_release(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_10004B420(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 24;
  v4[0] = a1;
  v4[1] = a2;
  v3 = *(a1 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100056AD4;
  block[3] = &unk_100183490;
  block[4] = v2;
  block[5] = v4;
  dispatch_sync(v3, block);
}

void sub_10004B4C8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  v4[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v4, (a1 + 24));
  operator new();
}

void sub_10004B600(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10004B610(uint64_t a1)
{
  v1[0] = 0xAAAAAAAAAAAAAAAALL;
  v1[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v1, (a1 + 24));
  operator new();
}

void sub_10004B70C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10004B71C(uint64_t a1)
{
  v1 = qword_100192D48;
  if (!*(a1 + 216))
  {
    if (os_log_type_enabled(qword_100192D48, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v2) = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "[EventBroker] event processing paused. Events will be queued.", &v2, 2u);
    }

    operator new();
  }

  if (os_log_type_enabled(qword_100192D48, OS_LOG_TYPE_ERROR))
  {
    sub_10011BA84(v1);
  }
}

void sub_10004B814(uint64_t a1)
{
  v1 = *(a1 + 216);
  if (v1)
  {
    *(a1 + 216) = 0;
    v8 = v1;
    v3 = qword_100192D48;
    if (os_log_type_enabled(qword_100192D48, OS_LOG_TYPE_DEFAULT))
    {
      v4 = (*(v1 + 8) - *v1) >> 4;
      *buf = 134217984;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[EventBroker] event processing resumed; %zd events queued.", buf, 0xCu);
    }

    v5 = *v1;
    v6 = *(v1 + 8);
    while (v5 != v6)
    {
      sub_10000C22C(a1, v5);
      v5 += 2;
    }

    sub_10004C1F8(&v8, 0);
  }

  else
  {
    v7 = qword_100192D48;
    if (os_log_type_enabled(qword_100192D48, OS_LOG_TYPE_ERROR))
    {
      sub_10011BAF4(v7);
    }
  }
}

void sub_10004B958(uint64_t a1@<X0>, uint64_t *a2@<X1>, NSObject **a3@<X8>)
{
  v6 = dispatch_group_create();
  *a3 = v6;
  if ((sub_1000C5A1C(*(a1 + 96)) & 1) == 0)
  {
    v10 = qword_100192D40;
    if (!os_log_type_enabled(qword_100192D40, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *__p = 0;
    v8 = " *** DAILY ROLLOVER EXPIRATION SKIPPED: daemon restart is in progress";
    v9 = v10;
    goto LABEL_7;
  }

  v7 = qword_100192D40;
  if (!*(a1 + 216))
  {
    if (os_log_type_enabled(qword_100192D40, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, " *** DAILY ROLLOVER EXPIRATION ***", __p, 2u);
      v7 = qword_100192D40;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a2 + 23);
      v12 = *a2;
      sub_100017DF0(__p);
    }

    v13 = *(a1 + 248);
    if (v13)
    {
      (*(*v13 + 48))(v13);
    }

    sub_10004B71C(a1);
    (*(**(a1 + 80) + 16))(buf);
    if (v6)
    {
      dispatch_retain(v6);
      dispatch_group_enter(v6);
    }

    v14 = *(a1 + 40);
    operator new();
  }

  if (os_log_type_enabled(qword_100192D40, OS_LOG_TYPE_INFO))
  {
    *__p = 0;
    v8 = " *** DAILY ROLLOVER EXPIRATION SKIPPED: rollover is currently in progress ***";
    v9 = v7;
LABEL_7:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, v8, __p, 2u);
  }
}

void sub_10004BC28(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10004BC58@<X0>(void *result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[1] - *result) >> 3) <= a2)
  {
    v3 = (result + 3);
  }

  else
  {
    v3 = *result + 24 * a2;
  }

  if (*(v3 + 16) == 1)
  {
    return sub_100052DF0(a3, *v3, *(v3 + 8), *(v3 + 8) - *v3);
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return result;
}

uint64_t sub_10004BCAC(unsigned __int8 *a1, const void **a2, unsigned int *a3)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v10 = sub_10002CB3C(a1);
    sub_10000459C(v13, v10);
    v11 = std::string::insert(v13, 0, "cannot use value() with ");
    v12 = *&v11->__r_.__value_.__l.__data_;
    *&v16 = *(&v11->__r_.__value_.__l + 2);
    v15 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    sub_10002C9C4(306, &v15, exception);
  }

  v17 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15 = v5;
  v16 = v5;
  sub_10000F1F4(a1, a2, &v15);
  v14 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13[0] = v6;
  v13[1] = v6;
  sub_10000DEC4(v13, a1);
  sub_10000DCFC(v13);
  if (sub_10000DD7C(&v15, v13))
  {
    return *a3;
  }

  v8 = sub_10000DB44(&v15);
  LODWORD(v13[0]) = -1431655766;
  sub_100058D88(v8, v13);
  return LODWORD(v13[0]);
}

void sub_10004BE7C(uint64_t a1)
{
  sub_10004BF3C(a1);

  operator delete();
}

void sub_10004BEBC(uint64_t a1)
{
  sub_10004BF3C(a1 - 8);

  operator delete();
}

void sub_10004BF00(uint64_t a1)
{
  sub_10004BF3C(a1 - 16);

  operator delete();
}

uint64_t sub_10004BF3C(uint64_t a1)
{
  *a1 = off_100182AF0;
  *(a1 + 8) = off_100182B40;
  *(a1 + 16) = off_100182B70;
  sub_10000E910(a1 + 256);
  sub_10000E910(a1 + 224);
  sub_10004C1F8((a1 + 216), 0);
  v8 = (a1 + 192);
  sub_100030E9C(&v8);
  v8 = (a1 + 168);
  sub_10004C36C(&v8);
  sub_10004C278(a1 + 128);
  v2 = *(a1 + 120);
  if (v2)
  {
    sub_10000786C(v2);
  }

  v3 = *(a1 + 104);
  if (v3)
  {
    sub_10000786C(v3);
  }

  v4 = *(a1 + 88);
  if (v4)
  {
    sub_10000786C(v4);
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    sub_10000786C(v5);
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    sub_10000786C(v6);
  }

  sub_100044430(a1 + 24);
  return a1;
}

void sub_10004C0F8(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[5], v1, sub_10004C1CC);
  __cxa_rethrow();
}

void sub_10004C138(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10004C18C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10004C1CC(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void ***sub_10004C1F8(void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2;
    sub_1000131F8(&v3);
    operator delete();
  }

  return result;
}

uint64_t sub_10004C278(uint64_t a1)
{
  sub_10004C2B4(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_10004C2B4(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_10004C2F8((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_10004C2F8(uint64_t a1)
{
  v2 = (a1 + 24);
  sub_100030E9C(&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_10004C36C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10004C3C0(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10004C3C0(uint64_t a1, std::locale *a2)
{
  for (i = *(a1 + 8); i != a2; sub_10004C414(a1, i))
  {
    i -= 10;
  }

  *(a1 + 8) = a2;
}

void sub_10004C414(int a1, std::locale *this)
{
  locale = this[9].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_weak(locale);
  }

  v4 = this[6].__locale_;
  if (v4)
  {
    sub_10000786C(v4);
  }

  std::locale::~locale(this);
}

void sub_10004C460(std::locale *this)
{
  locale = this[9].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_weak(locale);
  }

  v3 = this[6].__locale_;
  if (v3)
  {
    sub_10000786C(v3);
  }

  std::locale::~locale(this);
}

void sub_10004C4AC(std::locale *this)
{
  locale = this[6].__locale_;
  if (locale)
  {
    sub_10000786C(locale);
  }

  std::locale::~locale(this);
}

void sub_10004C4EC(uint64_t **a1)
{
  v7 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(v2 + 88);
  *(v2 + 80) = v3;
  *(v2 + 88) = v4;
  if (v5)
  {
    sub_10000786C(v5);
  }

  v6 = v1[2];
  if (v6)
  {
    sub_10000786C(v6);
  }

  operator delete();
}

uint64_t *sub_10004C598(uint64_t *a1)
{
  v1 = *a1;
  v40 = a1;
  v41 = v1;
  v2 = *v1;
  v3 = *(v1 + 48);
  switch(v3)
  {
    case 2:
      v10 = v2[25];
      v11 = v2[26];
      if (v10 >= v11)
      {
        v14 = v2[24];
        v15 = (v10 - v14) >> 4;
        v16 = v15 + 1;
        if ((v15 + 1) >> 60)
        {
          goto LABEL_38;
        }

        v17 = v11 - v14;
        if (v17 >> 3 > v16)
        {
          v16 = v17 >> 3;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFF0)
        {
          v18 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v16;
        }

        v47 = v2 + 24;
        if (v18)
        {
          sub_10000BED4((v2 + 24), v18);
        }

        v25 = 16 * v15;
        v26 = *(v1 + 8);
        *(16 * v15) = v26;
        if (*(&v26 + 1))
        {
          atomic_fetch_add_explicit((*(&v26 + 1) + 16), 1uLL, memory_order_relaxed);
        }

        v13 = (v25 + 16);
        v27 = v2[24];
        v28 = v2[25] - v27;
        v29 = v25 - v28;
        memcpy((v25 - v28), v27, v28);
        v30 = v2[24];
        v2[24] = v29;
        v2[25] = v13;
        v31 = v2[26];
        v2[26] = 0;
        v45 = v30;
        v46 = v31;
        v43.__locale_ = v30;
        v44 = v30;
        sub_1000314A8(&v43.__locale_);
      }

      else
      {
        *v10 = *(v1 + 8);
        v12 = *(v1 + 16);
        v10[1] = v12;
        if (v12)
        {
          atomic_fetch_add_explicit((v12 + 16), 1uLL, memory_order_relaxed);
        }

        v13 = v10 + 2;
      }

      v2[25] = v13;
      break;
    case 1:
      sub_10004D244(&v42, (v1 + 24), 0);
    case 0:
      v43.__locale_ = (v1 + 24);
      v4 = sub_10004C9EC(v2 + 16, (v1 + 24));
      v5 = v4;
      v6 = v4[6];
      v7 = v4[7];
      if (v6 < v7)
      {
        *v6 = *(v1 + 8);
        v8 = *(v1 + 16);
        *(v6 + 1) = v8;
        if (v8)
        {
          atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
        }

        v9 = v6 + 16;
LABEL_36:
        v5[6] = v9;
        break;
      }

      v19 = (v4 + 5);
      v20 = v5[5];
      v21 = (v6 - v20) >> 4;
      v22 = v21 + 1;
      if (!((v21 + 1) >> 60))
      {
        v23 = v7 - v20;
        if (v23 >> 3 > v22)
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

        v47 = v5 + 5;
        if (v24)
        {
          sub_10000BED4(v19, v24);
        }

        v32 = 16 * v21;
        v33 = *(v1 + 8);
        *(16 * v21) = v33;
        if (*(&v33 + 1))
        {
          atomic_fetch_add_explicit((*(&v33 + 1) + 16), 1uLL, memory_order_relaxed);
        }

        v9 = (v32 + 16);
        v34 = v5[5];
        v35 = v5[6] - v34;
        v36 = v32 - v35;
        memcpy((v32 - v35), v34, v35);
        v37 = v5[5];
        v5[5] = v36;
        v5[6] = v9;
        v38 = v5[7];
        v5[7] = 0;
        v45 = v37;
        v46 = v38;
        v43.__locale_ = v37;
        v44 = v37;
        sub_1000314A8(&v43.__locale_);
        goto LABEL_36;
      }

LABEL_38:
      sub_10002C63C();
  }

  sub_10004C948(&v41);
  return sub_1000120B8(&v40);
}

void sub_10004C8B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::locale a20)
{
  sub_10004C460(&a20);
  sub_10004C4AC(&a12);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    v23 = qword_100192D48;
    if (os_log_type_enabled(qword_100192D48, OS_LOG_TYPE_ERROR))
    {
      sub_10011BC00(v20, (v20 + 24), v23);
    }

    __cxa_end_catch();
    JUMPOUT(0x10004C870);
  }

  sub_10004C948(&a11);
  sub_1000120B8(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_10004C948(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 47) < 0)
    {
      operator delete(*(v1 + 24));
    }

    v2 = *(v1 + 16);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_10004C9AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_10004CE1C(a1, a2);
  }

  else
  {
    sub_10004CDB8(a1, a2);
    result = v3 + 80;
  }

  *(a1 + 8) = result;
  return result;
}

const void **sub_10004C9EC(void *a1, const void **a2)
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
    sub_10004CCB8();
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

void sub_10004CC9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004CD6C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10004CD6C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10004C2F8(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

__n128 sub_10004CDB8(uint64_t a1, uint64_t a2)
{
  v4 = std::locale::locale(*(a1 + 8), a2);
  *&v4[1].__locale_ = *(a2 + 8);
  *&v4[3].__locale_ = *(a2 + 24);
  *&v4[5].__locale_ = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  result = *(a2 + 56);
  *&v4[7].__locale_ = result;
  v4[9].__locale_ = *(a2 + 72);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a1 + 8) = v4 + 10;
  return result;
}

uint64_t sub_10004CE1C(uint64_t a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    sub_10002C63C();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    sub_10004CFAC(a1, v6);
  }

  v16 = 0uLL;
  v7 = 80 * v2;
  v14 = 0;
  v15 = v7;
  std::locale::locale(v7, a2);
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v7 + 56) = *(a2 + 56);
  *(v7 + 72) = *(a2 + 72);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *&v16 = v7 + 80;
  v8 = *(a1 + 8);
  v9 = (v7 + *a1 - v8);
  sub_10004D004(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_10004D1C4(&v14);
  return v13;
}

void sub_10004CF98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004D1C4(va);
  _Unwind_Resume(a1);
}

void sub_10004CFAC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  sub_100025BBC();
}

uint64_t sub_10004D004(uint64_t a1, std::locale *a2, std::locale *a3, std::locale *this)
{
  v10 = this;
  v11 = this;
  v12[0] = a1;
  v12[1] = &v10;
  v12[2] = &v11;
  v13 = 0xAAAAAAAAAAAAAA00;
  if (a2 == a3)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    v4 = this;
    v6 = a2;
    v7 = a1;
    v8 = a2;
    do
    {
      std::locale::locale(v4, v8);
      *&v4[1].__locale_ = *&v8[1].__locale_;
      *&v4[3].__locale_ = *&v8[3].__locale_;
      *&v4[5].__locale_ = *&v8[5].__locale_;
      v8[5].__locale_ = 0;
      v8[6].__locale_ = 0;
      *&v4[7].__locale_ = *&v8[7].__locale_;
      v4[9].__locale_ = v8[9].__locale_;
      v8[8].__locale_ = 0;
      v8[9].__locale_ = 0;
      v8 += 10;
      v4 = v11 + 10;
      v11 += 10;
    }

    while (v8 != a3);
    LOBYTE(v13) = 1;
    while (v6 != a3)
    {
      sub_10004C414(v7, v6);
      v6 += 10;
    }
  }

  return sub_10004D138(v12);
}

void sub_10004D124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10004D138(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10004D138(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10004D170(a1);
  }

  return a1;
}

void sub_10004D170(uint64_t *a1)
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
      v3 -= 10;
      sub_10004C414(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_10004D1C4(uint64_t a1)
{
  sub_10004D1FC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10004D1FC(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 80;
    sub_10004C414(v5, (v4 - 80));
  }
}

void sub_10004D244(std::locale *a1, uint64_t *a2, int a3)
{
  v5 = sub_10004D2E4(a1);
  LODWORD(v5[3].__locale_) = a3;
  *(&v5[3].__locale_ + 4) = 0u;
  *(&v5[5].__locale_ + 4) = 0u;
  HIDWORD(v5[7].__locale_) = 0;
  if (*(a2 + 23) < 0)
  {
    v6 = *a2;
    v7 = a2[1];
  }

  sub_10004D344();
}

void sub_10004D2C4(_Unwind_Exception *a1)
{
  locale = v1[6].__locale_;
  if (locale)
  {
    sub_10000786C(locale);
  }

  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

std::locale *sub_10004D2E4(std::locale *a1)
{
  v2 = std::locale::locale(a1);
  a1[1].__locale_ = std::locale::use_facet(v2, &std::ctype<char>::id);
  a1[2].__locale_ = std::locale::use_facet(a1, &std::collate<char>::id);
  return a1;
}

void sub_10004D538()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, __re_err_parse);
}

unsigned __int8 *sub_10004D604(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = sub_10004DF18(a1, a2, a3);
  if (v7 == a2)
  {
    operator new();
  }

  if (v7 != a3 && *v7 == 124)
  {
    v8 = *(a1 + 56);
    if (v7 + 1 == sub_10004DF18(a1, v7 + 1, a3))
    {
      operator new();
    }

    sub_10004DF64();
  }

  return v7;
}

unsigned __int8 *sub_10004D738(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v4 = a3;
  if (*a2 == 94)
  {
    sub_10004E8A0();
  }

  if (a2 != a3)
  {
    do
    {
      v6 = v3;
      v3 = sub_1000556BC(a1, v3, v4);
    }

    while (v6 != v3);
    if (v6 != v4 && v6 + 1 == v4 && *v6 == 36)
    {
      sub_10004E924();
    }

    if (v6 != v4)
    {
      sub_100055664();
    }
  }

  return v4;
}

unsigned __int8 *sub_10004D7F4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  result = sub_100055DC8(a1, a2, a3);
  if (result == a2)
  {
LABEL_7:
    sub_100055664();
  }

  if (result != a3 && *result == 124)
  {
    v8 = *(a1 + 56);
    if (result + 1 != sub_100055DC8(a1, result + 1, a3))
    {
      sub_10004DF64();
    }

    goto LABEL_7;
  }

  return result;
}

unsigned __int8 *sub_10004D894(uint64_t a1, unsigned __int8 *__s, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (v8 == __s)
  {
    operator new();
  }

  sub_10004D738(a1, __s, v8);
  if (v8 == a3)
  {
    v12 = v8;
  }

  else
  {
    v12 = v8 + 1;
  }

  if (v12 != a3)
  {
    v9 = memchr(v12, 10, a3 - v12);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = a3;
    }

    v11 = *(a1 + 56);
    if (v10 != v12)
    {
      sub_10004D738(a1, v12, v10);
      sub_10004DF64();
    }

    operator new();
  }

  return a3;
}

unsigned __int8 *sub_10004D9FC(uint64_t a1, unsigned __int8 *__s, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (v8 == __s)
  {
    operator new();
  }

  sub_10004D7F4(a1, __s, v8);
  if (v8 == a3)
  {
    v12 = v8;
  }

  else
  {
    v12 = v8 + 1;
  }

  if (v12 != a3)
  {
    v9 = memchr(v12, 10, a3 - v12);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = a3;
    }

    v11 = *(a1 + 56);
    if (v10 != v12)
    {
      sub_10004D7F4(a1, v12, v10);
      sub_10004DF64();
    }

    operator new();
  }

  return a3;
}

void sub_10004DB64()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, __re_err_grammar);
}

void sub_10004DC50(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10011BC88(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10004DC6C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10004DCA4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10004DCD4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_10004DD14(void *a1)
{
  *a1 = off_100182E80;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_10004DD80(void *a1)
{
  *a1 = off_100182E80;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

uint64_t sub_10004DE0C(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_10004DE20(void *a1)
{
  *a1 = off_100182E80;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_10004DE8C(void *a1)
{
  *a1 = off_100182E80;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

unsigned __int8 *sub_10004DF18(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  do
  {
    v5 = a2;
    a2 = sub_10004E064(a1, a2, a3);
  }

  while (v5 != a2);
  return v5;
}

unsigned __int8 *sub_10004E064(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = sub_10004E10C(a1, a2, a3);
  if (result == a2)
  {
    v7 = *(a1 + 56);
    v8 = *(a1 + 28);
    v9 = sub_10004E370(a1, a2, a3);
    result = a2;
    if (v9 != a2)
    {
      v10 = (*(a1 + 28) + 1);

      return sub_10004E564(a1, v9, a3);
    }
  }

  return result;
}

unsigned __int8 *sub_10004E10C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v6 = *a2;
    if (v6 > 0x5B)
    {
      if (v6 == 92)
      {
        if (a2 + 1 != a3)
        {
          v11 = a2[1];
          if (v11 == 66 || v11 == 98)
          {
            sub_10004E9A8();
          }
        }
      }

      else if (v6 == 94)
      {
        sub_10004E8A0();
      }
    }

    else
    {
      if (v6 == 36)
      {
        sub_10004E924();
      }

      if (v6 == 40 && a2 + 1 != a3 && a2[1] == 63 && a2 + 2 != a3)
      {
        v7 = a2[2];
        if (v7 == 33)
        {
          *&v12 = 0xAAAAAAAAAAAAAAAALL;
          *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v15[1] = v12;
          v15[2] = v12;
          v14 = v12;
          v15[0] = v12;
          sub_10004D2E4(&v14);
          memset(v15 + 8, 0, 40);
          DWORD2(v15[0]) = *(a1 + 24);
          sub_10004D344(&v14, a2 + 3, a3);
          v13 = *(a1 + 28);
          sub_10004EA3C();
        }

        if (v7 == 61)
        {
          *&v8 = 0xAAAAAAAAAAAAAAAALL;
          *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v15[1] = v8;
          v15[2] = v8;
          v14 = v8;
          v15[0] = v8;
          sub_10004D2E4(&v14);
          memset(v15 + 8, 0, 40);
          DWORD2(v15[0]) = *(a1 + 24);
          sub_10004D344(&v14, a2 + 3, a3);
          v9 = *(a1 + 28);
          sub_10004EA3C();
        }
      }
    }
  }

  return a2;
}

unsigned __int8 *sub_10004E370(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    v6 = *a2;
    if (v6 <= 0x3E)
    {
      if (v6 != 40)
      {
        if (v6 == 46)
        {
          operator new();
        }

        if (v6 - 42 >= 2)
        {
          return sub_100050888(a1, a2, a3);
        }

LABEL_28:
        sub_100050830();
      }

      v8 = a2 + 1;
      if (a2 + 1 != a3)
      {
        if (a2 + 2 != a3 && *v8 == 63 && a2[2] == 58)
        {
          ++*(a1 + 36);
          v9 = sub_10004D604(a1, a2 + 3, a3);
          if (v9 != a3 && *v9 == 41)
          {
            --*(a1 + 36);
            return v9 + 1;
          }
        }

        else
        {
          sub_100050728(a1);
          v10 = *(a1 + 28);
          ++*(a1 + 36);
          v11 = sub_10004D604(a1, v8, a3);
          if (v11 != a3)
          {
            v12 = v11;
            if (*v11 == 41)
            {
              sub_1000507B0(a1);
              --*(a1 + 36);
              return v12 + 1;
            }
          }
        }
      }

      sub_10004EADC();
    }

    if (*a2 > 0x5Bu)
    {
      if (v6 == 92)
      {
        return sub_100050564(a1, a2, a3);
      }

      if (v6 == 123)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v6 == 91)
      {
        return sub_10005060C(a1, a2, a3);
      }

      if (v6 == 63)
      {
        goto LABEL_28;
      }
    }

    return sub_100050888(a1, a2, a3);
  }

  return v3;
}

unsigned __int8 *sub_10004E564(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v6 = *(a1 + 24) & 0x1F0;
  v7 = *a2;
  if (v7 > 0x3E)
  {
    if (v7 == 63)
    {
      v15 = a2 + 1;
      if (v6)
      {
        v16 = 1;
      }

      else
      {
        v16 = v15 == a3;
      }

      if (!v16)
      {
        *v15;
      }
    }

    else
    {
      v3 = a2;
      if (v7 != 123)
      {
        return v3;
      }

      v22 = -1431655766;
      v9 = a2 + 1;
      v10 = sub_1000551A8(a1, a2 + 1, a3, &v22);
      if (v9 == v10)
      {
        goto LABEL_47;
      }

      if (v10 == a3)
      {
        goto LABEL_48;
      }

      v11 = *v10;
      if (v11 != 44)
      {
        if (v11 == 125)
        {
          v12 = v10 + 1;
          if (!v6 && v12 != a3)
          {
            *v12;
          }

          goto LABEL_36;
        }

LABEL_47:
        sub_100055248();
      }

      v17 = v10 + 1;
      if (v10 + 1 == a3)
      {
        goto LABEL_47;
      }

      if (*v17 == 125)
      {
        v18 = v10 + 2;
        if (!v6 && v18 != a3)
        {
          *v18;
        }

        goto LABEL_36;
      }

      v21 = -1;
      v20 = sub_1000551A8(a1, v17, a3, &v21);
      if (v17 == v20 || v20 == a3 || *v20 != 125)
      {
LABEL_48:
        sub_1000552A0();
      }

      if (v21 < v22)
      {
        goto LABEL_47;
      }

      if (!v6 && v20 + 1 != a3)
      {
        v14 = v20[1] == 63;
      }
    }

LABEL_36:
    sub_100055018();
  }

  if (v7 == 42)
  {
    v13 = a2 + 1;
    if (v6)
    {
      v14 = 1;
    }

    else
    {
      v14 = v13 == a3;
    }

    if (!v14)
    {
      *v13;
    }

    goto LABEL_36;
  }

  v3 = a2;
  if (v7 == 43)
  {
    v8 = a2 + 1;
    if (!v6 && v8 != a3)
    {
      *v8;
    }

    goto LABEL_36;
  }

  return v3;
}

void sub_10004EADC()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_paren);
}

void *sub_10004EB34(void *a1)
{
  *a1 = off_100182E80;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_10004EBA0(void *a1)
{
  *a1 = off_100182E80;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

uint64_t sub_10004EC2C(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) == 1)
  {
    if (*(a2 + 16) != *(a2 + 8) || (*(a2 + 88) & 1) != 0)
    {
LABEL_12:
      v4 = 0;
      *a2 = -993;
      goto LABEL_13;
    }
  }

  else
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }
  }

  *a2 = -994;
  v4 = *(result + 8);
LABEL_13:
  *(a2 + 80) = v4;
  return result;
}

void *sub_10004EC94(void *a1)
{
  *a1 = off_100182E80;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_10004ED00(void *a1)
{
  *a1 = off_100182E80;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

uint64_t sub_10004ED8C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    v5 = *(result + 8);
  }

  else
  {
    v5 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *sub_10004EDE0(std::locale *a1)
{
  a1->__locale_ = off_100182F40;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100182E80;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_10004EE6C(std::locale *a1)
{
  a1->__locale_ = off_100182F40;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100182E80;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete();
}

uint64_t sub_10004EF18(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    goto LABEL_17;
  }

  v4 = *(a2 + 16);
  if (v4 == v3)
  {
    if ((*(a2 + 88) & 8) == 0)
    {
      v6 = *(v4 - 1);
      goto LABEL_13;
    }

LABEL_17:
    v10 = 0;
    goto LABEL_25;
  }

  if (v4 == v2)
  {
    v5 = *(a2 + 88);
    if ((v5 & 0x80) == 0)
    {
      if ((v5 & 4) == 0)
      {
        v6 = *v4;
LABEL_13:
        if (v6 == 95 || (v6 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v6) & 0x500) != 0)
        {
          v10 = 1;
          goto LABEL_25;
        }

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  v7 = *(v4 - 1);
  v8 = *v4;
  v9 = v7 == 95 || (v7 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v7) & 0x500) != 0;
  v11 = v8 == 95 || (v8 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v8) & 0x500) != 0;
  v10 = v9 != v11;
LABEL_25:
  if (*(result + 40) == v10)
  {
    v12 = 0;
    v13 = -993;
  }

  else
  {
    v12 = *(result + 8);
    v13 = -994;
  }

  *a2 = v13;
  *(a2 + 80) = v12;
  return result;
}

uint64_t sub_10004F02C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  *a1 = off_100182F88;
  *(a1 + 8) = a4;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = *(a2 + 24);
  v9 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 40);
  *(a1 + 64) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = *(a2 + 56);
  *(a1 + 80) = a5;
  *(a1 + 84) = a3;
  return a1;
}

std::locale *sub_10004F0BC(std::locale *a1)
{
  a1->__locale_ = off_100182F88;
  locale = a1[8].__locale_;
  if (locale)
  {
    sub_10000786C(locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100182E80;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_10004F158(std::locale *a1)
{
  a1->__locale_ = off_100182F88;
  locale = a1[8].__locale_;
  if (locale)
  {
    sub_10000786C(locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100182E80;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  operator delete();
}

void sub_10004F214(uint64_t a1, uint64_t a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  v26 = 0xAAAAAAAAAAAAAA00;
  v28 = v4;
  v25 = 0;
  v27 = 0uLL;
  LOBYTE(v28) = 0;
  BYTE8(v28) = 0;
  v29 = 0;
  __p = 0;
  v21 = 0;
  v5 = (*(a1 + 44) + 1);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v22 = 0;
  *&v23 = v6;
  *(&v23 + 1) = v6;
  LOBYTE(v24) = 0;
  sub_10004F83C(&__p, v5, &v23);
  *(&v24 + 1) = v7;
  v25 = v7;
  LOBYTE(v26) = 0;
  v27 = v23;
  LOBYTE(v28) = v24;
  v29 = v7;
  BYTE8(v28) = 1;
  v8 = *(a2 + 88) & 0xFFF;
  v9 = *(a2 + 16);
  if (v9 == *(a2 + 8))
  {
    v10 = *(a2 + 92);
  }

  else
  {
    v10 = 0;
  }

  if (*(a1 + 84) == sub_10004F448(a1 + 16, v9, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v10))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    v11 = __p;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  v11 = __p;
  v12 = 0xAAAAAAAAAAAAAAABLL * ((v21 - __p) >> 3);
  if (v12 < 2)
  {
LABEL_10:
    if (!v11)
    {
      return;
    }

    goto LABEL_11;
  }

  v13 = *(a1 + 80);
  v14 = *(a2 + 32);
  v15 = 2;
  v16 = 1;
  do
  {
    v17 = &v11[24 * v16];
    v18 = v14 + 24 * v13;
    *v18 = *v17;
    *(v18 + 16) = v17[16];
    v16 = v15;
    ++v13;
  }

  while (v12 > v15++);
LABEL_11:
  v21 = v11;
  operator delete(v11);
}

void sub_10004F3B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_10004F3D4(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, char a5)
{
  *(a1 + 24) = a4;
  v8 = (a1 + 24);
  *(a1 + 32) = a4;
  *(a1 + 40) = 0;
  result = sub_10004F83C(a1, a2, (a1 + 24));
  *(a1 + 48) = a3;
  *(a1 + 56) = a3;
  *(a1 + 64) = 0;
  *(a1 + 72) = *v8;
  *(a1 + 88) = *(a1 + 40);
  if ((a5 & 1) == 0)
  {
    *(a1 + 104) = a3;
  }

  *(a1 + 96) = 1;
  return result;
}

uint64_t sub_10004F448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_29:
    v25 = 0;
    goto LABEL_30;
  }

  *(&v41 + 1) = a3;
  v42 = 0xAAAAAAAAAAAAAA00;
  *&v41 = a3;
  *v40 = 0;
  memset(&v40[8], 0, 85);
  sub_10004FA44(&v37, v40);
  if (*&v40[56])
  {
    *&v40[64] = *&v40[56];
    operator delete(*&v40[56]);
  }

  if (*&v40[32])
  {
    *&v40[40] = *&v40[32];
    operator delete(*&v40[32]);
  }

  v36 = a4;
  v13 = v38;
  *(v38 - 96) = 0;
  *(v13 - 88) = a2;
  *(v13 - 80) = a2;
  *(v13 - 72) = a3;
  sub_10004FB20((v13 - 64), *(a1 + 28), &v41);
  sub_10004FB5C((v38 - 40), *(a1 + 32));
  v14 = v38;
  *(v38 - 16) = v6;
  *(v14 - 8) = a5;
  *(v14 - 4) = a6;
  v15 = 1;
  while (1)
  {
    if ((v15 & 0xFFF) == 0 && (v15 >> 12) >= a3 - a2)
    {
      sub_10004FB8C();
    }

    v17 = (v14 - 16);
    v16 = *(v14 - 16);
    v18 = (v14 - 96);
    if (v16)
    {
      (*(*v16 + 16))(v16, v14 - 96);
    }

    v19 = *v18;
    if (*v18 > -994)
    {
      if (v19 != -993)
      {
        if (v19 == -992)
        {
          *&v22 = 0xAAAAAAAAAAAAAAAALL;
          *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v40[64] = v22;
          *&v40[80] = v22;
          *&v40[32] = v22;
          *&v40[48] = v22;
          *v40 = v22;
          *&v40[16] = v22;
          v23 = *(v14 - 80);
          *v40 = *v18;
          *&v40[16] = v23;
          memset(&v40[32], 0, 24);
          sub_1000503AC(&v40[32], *(v14 - 64), *(v14 - 56), 0xAAAAAAAAAAAAAAABLL * ((*(v14 - 56) - *(v14 - 64)) >> 3));
          memset(&v40[56], 0, 24);
          sub_10005042C(&v40[56], *(v14 - 40), *(v14 - 32), (*(v14 - 32) - *(v14 - 40)) >> 4);
          v24 = *v17;
          *&v40[85] = *(v14 - 11);
          *&v40[80] = v24;
          (*(**v17 + 24))(*v17, 1, v14 - 96);
          (*(**&v40[80] + 24))(*&v40[80], 0, v40);
          sub_10004FA44(&v37, v40);
          if (*&v40[56])
          {
            *&v40[64] = *&v40[56];
            operator delete(*&v40[56]);
          }

          if (*&v40[32])
          {
            *&v40[40] = *&v40[32];
            operator delete(*&v40[32]);
          }
        }

        else if (v19 != -991)
        {
LABEL_36:
          sub_10004FBE4();
        }

        goto LABEL_28;
      }

      goto LABEL_23;
    }

    if ((v19 + 995) >= 2)
    {
      break;
    }

LABEL_28:
    v14 = v38;
    ++v15;
    if (v37 == v38)
    {
      goto LABEL_29;
    }
  }

  if (v19 != -1000)
  {
    goto LABEL_36;
  }

  v20 = *(v14 - 80);
  if ((a5 & 0x20) != 0 && v20 == a2 || (a5 & 0x1000) != 0 && v20 != a3)
  {
LABEL_23:
    v21 = v38 - 96;
    sub_10004FF68(&v37, (v38 - 96));
    v38 = v21;
    goto LABEL_28;
  }

  v27 = *v36;
  *v27 = a2;
  *(v27 + 8) = v20;
  *(v27 + 16) = 1;
  v28 = *(v14 - 64);
  v29 = *(v14 - 56) - v28;
  if (v29)
  {
    v30 = 0xAAAAAAAAAAAAAAABLL * (v29 >> 3);
    v31 = (v28 + 16);
    v32 = 1;
    do
    {
      v33 = v27 + 24 * v32;
      *v33 = *(v31 - 1);
      v34 = *v31;
      v31 += 24;
      *(v33 + 16) = v34;
    }

    while (v30 > v32++);
  }

  v25 = 1;
LABEL_30:
  *v40 = &v37;
  sub_1000504DC(v40);
  return v25;
}

void sub_10004F7E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  sub_10004FADC(&a13);
  a13 = &a10;
  sub_1000504DC(&a13);
  _Unwind_Resume(a1);
}

char *sub_10004F83C(char **a1, unint64_t a2, __int128 *a3)
{
  v5 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - result) >> 3) < a2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a2 <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
      v8 = 2 * v7;
      if (2 * v7 <= a2)
      {
        v8 = a2;
      }

      if (v7 >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      sub_10004F9A0(a1, v9);
    }

    sub_10002C63C();
  }

  v10 = a1[1];
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - result) >> 3);
  if (v11 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - result) >> 3);
  }

  if (v12)
  {
    v13 = *a3;
    v14 = *(a3 + 16);
    v15 = result;
    do
    {
      *v15 = v13;
      v15[16] = v14;
      v15 += 24;
      --v12;
    }

    while (v12);
  }

  if (a2 <= v11)
  {
    a1[1] = &result[24 * a2];
  }

  else
  {
    v16 = &v10[24 * (a2 - v11)];
    v17 = 24 * a2 - 8 * ((v10 - result) >> 3);
    do
    {
      v18 = *a3;
      *(v10 + 2) = *(a3 + 2);
      *v10 = v18;
      v10 += 24;
      v17 -= 24;
    }

    while (v17);
    a1[1] = v16;
  }

  return result;
}

void sub_10004F9A0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_10004F9EC(a1, a2);
  }

  sub_10002C63C();
}

void sub_10004F9EC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100025BBC();
}

uint64_t sub_10004FA44(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_10004FC3C(a1, a2);
  }

  else
  {
    v4 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v4;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 32) = 0;
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 72) = *(a2 + 72);
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v5 = *(a2 + 80);
    *(v3 + 85) = *(a2 + 85);
    *(v3 + 80) = v5;
    result = v3 + 96;
  }

  *(a1 + 8) = result;
  return result;
}

void *sub_10004FADC(void *a1)
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

  return a1;
}

void sub_10004FB20(uint64_t *a1, unint64_t a2, __int128 *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v5 != 0 && v4)
  {
    sub_1000500C8(a1, v5, a3);
  }

  else if (!v4)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

void sub_10004FB5C(void *a1, unint64_t a2)
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
    sub_100050250(a1, a2 - v2);
  }
}

void sub_10004FB8C()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_complexity);
}

void sub_10004FBE4()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, __re_err_unknown);
}

uint64_t sub_10004FC3C(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_10002C63C();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    sub_10004FDE8(a1, v6);
  }

  v18 = 0uLL;
  v7 = 96 * v2;
  v16 = 0;
  v17 = v7;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 32) = 0;
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 56) = *(a2 + 56);
  *(v7 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v9 = *(a2 + 80);
  *(v7 + 85) = *(a2 + 85);
  *(v7 + 80) = v9;
  *&v18 = 96 * v2 + 96;
  v10 = *(a1 + 8);
  v11 = 96 * v2 + *a1 - v10;
  sub_10004FE40(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_10005004C(&v16);
  return v15;
}

void sub_10004FDD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10005004C(va);
  _Unwind_Resume(a1);
}

void sub_10004FDE8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100025BBC();
}

uint64_t sub_10004FE40(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v13[0] = a1;
  v13[1] = &v11;
  v13[2] = &v12;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  if (a2 == a3)
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *(v7 + 1);
      *a4 = *v7;
      *(a4 + 16) = v8;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = 0;
      *(a4 + 32) = *(v7 + 2);
      *(a4 + 48) = v7[6];
      v7[4] = 0;
      v7[5] = 0;
      v7[6] = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 56) = *(v7 + 7);
      *(a4 + 72) = v7[9];
      v7[7] = 0;
      v7[8] = 0;
      v7[9] = 0;
      v9 = v7[10];
      *(a4 + 85) = *(v7 + 85);
      *(a4 + 80) = v9;
      v7 += 12;
      a4 += 96;
    }

    while (v7 != a3);
    v12 = a4;
    LOBYTE(v14) = 1;
    while (v5 != a3)
    {
      sub_10004FF68(a1, v5);
      v5 += 12;
    }
  }

  return sub_10004FFC0(v13);
}

void sub_10004FF68(uint64_t a1, void *a2)
{
  v3 = a2[7];
  if (v3)
  {
    a2[8] = v3;
    operator delete(v3);
  }

  v4 = a2[4];
  if (v4)
  {
    a2[5] = v4;

    operator delete(v4);
  }
}

uint64_t sub_10004FFC0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10004FFF8(a1);
  }

  return a1;
}

void sub_10004FFF8(uint64_t *a1)
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
      v3 -= 12;
      sub_10004FF68(v5, v3);
    }

    while (v3 != v4);
  }
}

void **sub_10005004C(void **a1)
{
  sub_100050080(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100050080(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 96;
    sub_10004FF68(v4, (i - 96));
  }
}

void sub_1000500C8(uint64_t *a1, unint64_t a2, __int128 *a3)
{
  v5 = a1[1];
  v6 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v11 = v5 + 24 * a2;
      v12 = 24 * a2;
      do
      {
        v13 = *a3;
        *(v5 + 16) = *(a3 + 2);
        *v5 = v13;
        v5 += 24;
        v12 -= 24;
      }

      while (v12);
      v5 = v11;
    }

    a1[1] = v5;
  }

  else
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v8 = v7 + a2;
    if (v7 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_10002C63C();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3);
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

    if (v10)
    {
      sub_10004F9EC(a1, v10);
    }

    v14 = 24 * a2;
    v15 = 24 * v7;
    do
    {
      v16 = *a3;
      *(v15 + 16) = *(a3 + 2);
      *v15 = v16;
      v15 += 24;
      v14 -= 24;
    }

    while (v14);
    v17 = *a1;
    v18 = a1[1];
    v19 = 24 * v7 + *a1 - v18;
    if (v18 != *a1)
    {
      v20 = 24 * v7 + *a1 - v18;
      do
      {
        v21 = *v17;
        *(v20 + 16) = v17[2];
        *v20 = v21;
        v20 += 24;
        v17 += 3;
      }

      while (v17 != v18);
      v17 = *a1;
    }

    *a1 = v19;
    a1[1] = 24 * v7 + 24 * a2;
    a1[2] = 0;
    if (v17)
    {

      operator delete(v17);
    }
  }
}

void sub_100050250(uint64_t a1, unint64_t a2)
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
      sub_10002C63C();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_100050364(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void sub_100050364(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_100025BBC();
}

uint64_t sub_1000503AC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10004F9A0(result, a4);
  }

  return result;
}

void sub_100050410(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10005042C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1000504A0(result, a4);
  }

  return result;
}

void sub_100050484(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000504A0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_100050364(a1, a2);
  }

  sub_10002C63C();
}

void sub_1000504DC(void ***a1)
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
        v4 -= 12;
        sub_10004FF68(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

unsigned __int8 *sub_100050564(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3 && *a2 == 92)
  {
    v5 = (a2 + 1);
    if (a2 + 1 == a3)
    {
      sub_1000509F0();
    }

    v7 = sub_100050A48(a1, a2 + 1, a3);
    if (v7 == v5 && (v7 = sub_100050B00(a1, v3 + 1, a3), v7 == v5))
    {
      v8 = sub_100050BD0(a1, v3 + 1, a3, 0);
      if (v8 != v5)
      {
        return v8;
      }
    }

    else
    {
      return v7;
    }
  }

  return v3;
}

_BYTE *sub_10005060C(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 != a3)
    {
      v3 = a2[1] == 94;
      sub_100051CA8();
    }

    sub_100052FFC();
  }

  return a2;
}

uint64_t sub_100050728(uint64_t result)
{
  if ((*(result + 24) & 2) == 0)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1000507B0(uint64_t result)
{
  if ((*(result + 24) & 2) == 0)
  {
    operator new();
  }

  return result;
}

void sub_100050830()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_badrepeat);
}

unsigned __int8 *sub_100050888(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v3 = *a2;
    v4 = (v3 - 36) > 0x3A || ((1 << (v3 - 36)) & 0x7800000080004F1) == 0;
    if (v4 && (v3 - 123) >= 3)
    {
      sub_100050EBC(a1);
    }
  }

  return a2;
}

void *sub_1000508F8(void *a1)
{
  *a1 = off_100182E80;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_100050964(void *a1)
{
  *a1 = off_100182E80;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

void sub_1000509F0()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_escape);
}

unsigned __int8 *sub_100050A48(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a3 != a2)
  {
    v4 = *a2;
    v5 = v4 - 48;
    if (v4 == 48)
    {
      sub_100050EBC(a1);
    }

    if ((v4 - 49) <= 8)
    {
      v6 = a2 + 1;
      if (v6 == a3)
      {
        goto LABEL_10;
      }

      do
      {
        v7 = *v6;
        if ((v7 - 48) > 9)
        {
          break;
        }

        if (v5 >= 0x19999999)
        {
          goto LABEL_13;
        }

        ++v6;
        v5 = v7 + 10 * v5 - 48;
      }

      while (v6 != a3);
      if (v5)
      {
LABEL_10:
        if (v5 <= *(a1 + 28))
        {
          sub_100051054(a1);
        }
      }

LABEL_13:
      sub_100050FFC();
    }
  }

  return a2;
}

unsigned __int8 *sub_100050B00(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v3 = *a2;
  if (v3 > 0x63)
  {
    if (v3 == 119)
    {
      goto LABEL_11;
    }

    if (v3 == 115)
    {
LABEL_12:
      sub_100051CA8();
    }

    if (v3 != 100)
    {
      return a2;
    }

LABEL_10:
    sub_100051CA8();
  }

  switch(v3)
  {
    case 'D':
      goto LABEL_10;
    case 'S':
      goto LABEL_12;
    case 'W':
LABEL_11:
      sub_100051CA8();
  }

  return a2;
}

char *sub_100050BD0(uint64_t a1, std::string::value_type *a2, unsigned __int8 *a3, std::string *this)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (*a2 <= 0x71u)
  {
    if (*a2 > 0x65u)
    {
      if (v5 == 102)
      {
        if (!this)
        {
          goto LABEL_68;
        }

        v9 = this;
        v8 = 12;
      }

      else
      {
        if (v5 != 110)
        {
          goto LABEL_63;
        }

        if (!this)
        {
          goto LABEL_68;
        }

        v9 = this;
        v8 = 10;
      }
    }

    else
    {
      if (v5 != 48)
      {
        if (v5 == 99)
        {
          v4 = (a2 + 1);
          if (a2 + 1 == a3)
          {
            goto LABEL_70;
          }

          if (*v4 < 65)
          {
            goto LABEL_70;
          }

          v7 = *v4;
          if (v7 >= 0x5B && (v7 - 97) > 0x19u)
          {
            goto LABEL_70;
          }

          v8 = v7 & 0x1F;
          if (this)
          {
            goto LABEL_66;
          }

          goto LABEL_68;
        }

        if (v5 == 95)
        {
          goto LABEL_70;
        }

LABEL_63:
        if ((v5 & 0x80) == 0 && (*(*(*(a1 + 8) + 16) + 4 * v5) & 0x500) != 0)
        {
          goto LABEL_70;
        }

        v8 = *a2;
        if (this)
        {
LABEL_66:
          v9 = this;
          goto LABEL_67;
        }

LABEL_68:
        sub_100050EBC(a1);
      }

      if (!this)
      {
        goto LABEL_68;
      }

      v9 = this;
      v8 = 0;
    }

LABEL_67:
    std::string::operator=(v9, v8);
    return ++v4;
  }

  if (*a2 <= 0x74u)
  {
    if (v5 == 114)
    {
      if (!this)
      {
        goto LABEL_68;
      }

      v9 = this;
      v8 = 13;
    }

    else
    {
      if (v5 != 116)
      {
        goto LABEL_63;
      }

      if (!this)
      {
        goto LABEL_68;
      }

      v9 = this;
      v8 = 9;
    }

    goto LABEL_67;
  }

  if (v5 != 117)
  {
    if (v5 != 118)
    {
      if (v5 == 120)
      {
        v6 = 0;
        goto LABEL_41;
      }

      goto LABEL_63;
    }

    if (!this)
    {
      goto LABEL_68;
    }

    v9 = this;
    v8 = 11;
    goto LABEL_67;
  }

  if (a2 + 1 == a3)
  {
    goto LABEL_70;
  }

  v10 = a2[1];
  if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38 && (v10 | 0x20u) - 97 >= 6)
  {
    goto LABEL_70;
  }

  v4 = (a2 + 2);
  if (a2 + 2 == a3)
  {
    goto LABEL_70;
  }

  v11 = *v4;
  v12 = -48;
  if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
  {
    v11 |= 0x20u;
    if ((v11 - 97) >= 6)
    {
      goto LABEL_70;
    }

    v12 = -87;
  }

  v6 = 16 * (v12 + v11);
LABEL_41:
  if (v4 + 1 == a3)
  {
    goto LABEL_70;
  }

  v13 = v4[1];
  v14 = -48;
  if ((v13 & 0xF8) != 0x30 && (v13 & 0xFE) != 0x38)
  {
    v13 |= 0x20u;
    if ((v13 - 97) >= 6)
    {
      goto LABEL_70;
    }

    v14 = -87;
  }

  if (v4 + 2 == a3)
  {
    goto LABEL_70;
  }

  v15 = v4[2];
  v16 = -48;
  if ((v15 & 0xF8) == 0x30 || (v15 & 0xFE) == 0x38)
  {
    goto LABEL_51;
  }

  v15 |= 0x20u;
  if ((v15 - 97) >= 6)
  {
LABEL_70:
    sub_1000509F0();
  }

  v16 = -87;
LABEL_51:
  if (!this)
  {
    sub_100050EBC(a1);
  }

  std::string::operator=(this, v16 + v15 + 16 * (v14 + v6 + v13));
  v4 += 3;
  return v4;
}

void sub_100050EBC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if ((v1 & 1) == 0)
  {
    if ((v1 & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_100050FFC()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_backref);
}

void sub_100051054(uint64_t a1)
{
  v1 = *(a1 + 24);
  if ((v1 & 1) == 0)
  {
    if ((v1 & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t sub_100051184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = off_100183018;
  *(a1 + 8) = a4;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = (*(**(a2 + 8) + 40))(*(a2 + 8), a3);
  return a1;
}

void sub_100051210(_Unwind_Exception *a1)
{
  std::locale::~locale(v1 + 2);
  v1->__locale_ = off_100182E80;
  locale = v1[1].__locale_;
  if (locale)
  {
    sub_10011BC88(locale);
  }

  _Unwind_Resume(a1);
}

std::locale *sub_100051250(std::locale *a1)
{
  a1->__locale_ = off_100183018;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100182E80;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_1000512DC(std::locale *a1)
{
  a1->__locale_ = off_100183018;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100182E80;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete();
}

uint64_t sub_100051388(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == *(a2 + 24) || (v4 = result, result = (*(**(result + 24) + 40))(*(result + 24), *v3), *(v4 + 40) != result))
  {
    v5 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    ++*(a2 + 16);
    v5 = *(v4 + 8);
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *sub_10005141C(std::locale *a1)
{
  a1->__locale_ = off_100183060;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100182E80;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_1000514A8(std::locale *a1)
{
  a1->__locale_ = off_100183060;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100182E80;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete();
}

uint64_t sub_100051554(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 40))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

void *sub_10005159C(void *a1)
{
  *a1 = off_100182E80;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_100051608(void *a1)
{
  *a1 = off_100182E80;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

uint64_t sub_100051694(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 16))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

std::locale *sub_1000516DC(std::locale *a1)
{
  a1->__locale_ = off_1001830F0;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100182E80;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_100051768(std::locale *a1)
{
  a1->__locale_ = off_1001830F0;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100182E80;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete();
}

uint64_t sub_100051814(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v3 + 16) == 1)
  {
    v4 = *(v3 + 8) - *v3;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      v7 = result;
      v8 = *(v3 + 8) != *v3;
      if (v4 < 1)
      {
LABEL_10:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(v7 + 8);
        goto LABEL_4;
      }

      v9 = 0;
      while (1)
      {
        v10 = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*v3 + v9));
        result = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*(a2 + 16) + v9));
        if (v10 != result)
        {
          break;
        }

        if (v4 == ++v9)
        {
          v5 = *(a2 + 16);
          goto LABEL_10;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

std::locale *sub_100051930(std::locale *a1)
{
  a1->__locale_ = off_100183138;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100182E80;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_1000519BC(std::locale *a1)
{
  a1->__locale_ = off_100183138;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100182E80;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete();
}

uint64_t sub_100051A68(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v2 + 16) == 1)
  {
    v3 = *v2;
    v4 = *(v2 + 8) - *v2;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      if (v4 < 1)
      {
LABEL_9:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(result + 8);
        goto LABEL_4;
      }

      v7 = *(a2 + 16);
      v8 = v4;
      while (1)
      {
        v10 = *v3++;
        v9 = v10;
        v11 = *v7++;
        if (v9 != v11)
        {
          break;
        }

        if (!--v8)
        {
          goto LABEL_9;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

void *sub_100051AF4(void *a1)
{
  *a1 = off_100182E80;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_100051B60(void *a1)
{
  *a1 = off_100182E80;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

unsigned int *sub_100051BEC(unsigned int *result, uint64_t a2)
{
  v2 = result[4];
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) < v2)
  {
    sub_100050FFC();
  }

  v5 = v3 + 24 * (v2 - 1);
  if (*(v5 + 16) == 1 && (v6 = result, result = *v5, v7 = *(v5 + 8) - *v5, v8 = *(a2 + 16), *(a2 + 24) - v8 >= v7) && (result = memcmp(result, *(a2 + 16), v7), !result))
  {
    *a2 = -994;
    *(a2 + 16) = v8 + v7;
    v9 = *(v6 + 1);
  }

  else
  {
    v9 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v9;
  return result;
}

void sub_100051D3C(uint64_t a1, char a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v3 = a1 + 40;
    v4 = &v6;
LABEL_5:
    sub_100003650(v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = a1 + 40;
    v4 = &v5;
    goto LABEL_5;
  }

  sub_100003650(a1 + 40, &v7);
}

uint64_t sub_100051E04(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  *a1 = off_1001831C8;
  *(a1 + 8) = a3;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = a4;
  *(a1 + 169) = a5;
  *(a1 + 170) = a6;
  std::locale::locale(&v13, (a1 + 16));
  std::locale::name(&v14, &v13);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    v11 = v14.__r_.__value_.__l.__size_ != 1 || *v14.__r_.__value_.__l.__data_ != 67;
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  else
  {
    v11 = SHIBYTE(v14.__r_.__value_.__r.__words[2]) != 1 || v14.__r_.__value_.__s.__data_[0] != 67;
  }

  std::locale::~locale(&v13);
  *(a1 + 171) = v11;
  return a1;
}

void sub_100051F70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, std::locale *a11)
{
  std::locale::~locale(&a10);
  a11 = v11 + 17;
  sub_10002DE40(&a11);
  locale = v11[14].__locale_;
  if (locale)
  {
    v11[15].__locale_ = locale;
    operator delete(locale);
  }

  sub_1000528D4(&a11);
  v16 = v11[8].__locale_;
  if (v16)
  {
    v11[9].__locale_ = v16;
    operator delete(v16);
  }

  v17 = *v13;
  if (*v13)
  {
    v11[6].__locale_ = v17;
    operator delete(v17);
  }

  std::locale::~locale(v11 + 2);
  v11->__locale_ = v12;
  v18 = v11[1].__locale_;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  _Unwind_Resume(a1);
}

void sub_10005200C(std::locale *a1)
{
  sub_1000529F8(a1);

  operator delete();
}

void sub_100052044(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (v4 == v5)
  {
    v35 = 0;
    v36 = *(a1 + 168);
    goto LABEL_81;
  }

  if (*(a1 + 171) != 1 || v4 + 1 == v5)
  {
    goto LABEL_58;
  }

  v109 = *v4;
  v6 = v4[1];
  v110 = v4[1];
  if (*(a1 + 169) == 1)
  {
    v109 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v110 = (*(**(a1 + 24) + 40))(*(a1 + 24), v6);
  }

  sub_100052C08(a1 + 16, &v109, &v111, __p);
  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
  {
    if (HIBYTE(__p[2]))
    {
      goto LABEL_8;
    }

LABEL_58:
    v36 = 0;
    v35 = 1;
    goto LABEL_59;
  }

  v37 = __p[1];
  operator delete(__p[0]);
  if (!v37)
  {
    goto LABEL_58;
  }

LABEL_8:
  v7 = *(a1 + 112);
  v8 = *(a1 + 120) - v7;
  if (v8)
  {
    v9 = v8 >> 1;
    if ((v8 >> 1) <= 1)
    {
      v9 = 1;
    }

    v10 = (v7 + 1);
    while (v109 != *(v10 - 1) || v110 != *v10)
    {
      v10 += 2;
      if (!--v9)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_217;
  }

LABEL_17:
  if (*(a1 + 170) == 1 && *(a1 + 88) != *(a1 + 96))
  {
    memset(__p, 170, sizeof(__p));
    sub_100052B0C(a1 + 16, &v109, &v111);
    v12 = *(a1 + 88);
    v13 = HIBYTE(__p[2]);
    v14 = *(a1 + 96) - v12;
    if (v14)
    {
      v15 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 4);
      v105 = HIBYTE(__p[2]);
      v16 = SHIBYTE(__p[2]) >= 0 ? HIBYTE(__p[2]) : __p[1];
      v17 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
      v18 = v15 <= 1 ? 1 : 0xAAAAAAAAAAAAAAABLL * (v14 >> 4);
      v19 = (v12 + 47);
      v20 = 1;
      v21 = 1;
      while (1)
      {
        v22 = *(v19 - 24);
        if (v22 >= 0)
        {
          v23 = *(v19 - 24);
        }

        else
        {
          v23 = *(v19 - 39);
        }

        if (v22 >= 0)
        {
          v24 = (v19 - 47);
        }

        else
        {
          v24 = *(v19 - 47);
        }

        if (v23 >= v16)
        {
          v25 = v16;
        }

        else
        {
          v25 = v23;
        }

        v26 = memcmp(v17, v24, v25);
        v27 = v16 >= v23;
        if (v26)
        {
          v27 = v26 >= 0;
        }

        if (v27)
        {
          v28 = *v19;
          if (v28 >= 0)
          {
            v29 = *v19;
          }

          else
          {
            v29 = *(v19 - 15);
          }

          if (v28 >= 0)
          {
            v30 = (v19 - 23);
          }

          else
          {
            v30 = *(v19 - 23);
          }

          if (v16 >= v29)
          {
            v31 = v29;
          }

          else
          {
            v31 = v16;
          }

          v32 = memcmp(v30, v17, v31);
          v33 = v29 >= v16;
          if (v32)
          {
            v33 = v32 >= 0;
          }

          if (v33)
          {
            break;
          }
        }

        v21 = v20++ < v15;
        v19 += 48;
        if (!--v18)
        {
          v34 = 0;
          goto LABEL_166;
        }
      }

      v34 = 5;
LABEL_166:
      v13 = v105;
    }

    else
    {
      v21 = 0;
      v34 = 0;
    }

    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    if (v21)
    {
      v85 = 1;
      goto LABEL_197;
    }
  }

  if (*(a1 + 136) == *(a1 + 144))
  {
    v85 = 0;
    goto LABEL_199;
  }

  memset(__p, 170, sizeof(__p));
  sub_100052EA0(a1 + 16, &v109, &v111, __p);
  v86 = *(a1 + 136);
  v87 = HIBYTE(__p[2]);
  v88 = *(a1 + 144) - v86;
  if (v88)
  {
    v89 = 0xAAAAAAAAAAAAAAABLL * (v88 >> 3);
    if (SHIBYTE(__p[2]) >= 0)
    {
      v90 = HIBYTE(__p[2]);
    }

    else
    {
      v90 = __p[1];
    }

    if (SHIBYTE(__p[2]) >= 0)
    {
      v91 = __p;
    }

    else
    {
      v91 = __p[0];
    }

    if (v89 <= 1)
    {
      v92 = 1;
    }

    else
    {
      v92 = 0xAAAAAAAAAAAAAAABLL * (v88 >> 3);
    }

    v93 = 1;
    v94 = 1;
    while (1)
    {
      v95 = *(v86 + 23);
      v96 = v95;
      if ((v95 & 0x80u) != 0)
      {
        v95 = *(v86 + 8);
      }

      if (v90 == v95)
      {
        v97 = v96 >= 0 ? v86 : *v86;
        if (!memcmp(v91, v97, v90))
        {
          break;
        }
      }

      v94 = v93++ < v89;
      v86 += 24;
      if (!--v92)
      {
        goto LABEL_194;
      }
    }

    v85 = 1;
    v34 = 5;
    if (v87 < 0)
    {
LABEL_195:
      operator delete(__p[0]);
    }
  }

  else
  {
    v94 = 0;
LABEL_194:
    v34 = 0;
    v85 = 0;
    if (v87 < 0)
    {
      goto LABEL_195;
    }
  }

  if (!v94)
  {
LABEL_199:
    if (v109 < 0)
    {
      v101 = *(a1 + 164);
    }

    else
    {
      v98 = *(a1 + 160);
      v99 = *(*(a1 + 24) + 16);
      v100 = *(v99 + 4 * v109);
      if (((v100 & v98) != 0 || v109 == 95 && (v98 & 0x80) != 0) && (v110 & 0x8000000000000000) == 0 && ((*(v99 + 4 * v110) & v98) != 0 || (v98 & 0x80) != 0 && v110 == 95))
      {
        goto LABEL_217;
      }

      v101 = *(a1 + 164);
      if ((v100 & v101) != 0 || v109 == 95 && (v101 & 0x80) != 0)
      {
LABEL_216:
        v36 = v85;
LABEL_218:
        v35 = 2;
        goto LABEL_81;
      }
    }

    if ((v110 & 0x8000000000000000) == 0)
    {
      if ((*(*(*(a1 + 24) + 16) + 4 * v110) & v101) == 0)
      {
        v36 = 1;
        if (v110 != 95 || (v101 & 0x80) == 0)
        {
          goto LABEL_218;
        }
      }

      goto LABEL_216;
    }

LABEL_217:
    v36 = 1;
    goto LABEL_218;
  }

LABEL_197:
  v35 = 2;
  v36 = v85;
  if (v34)
  {
    goto LABEL_81;
  }

LABEL_59:
  v38 = **(a2 + 16);
  v109 = **(a2 + 16);
  if (*(a1 + 169) == 1)
  {
    LODWORD(v38) = (*(**(a1 + 24) + 40))(*(a1 + 24), v38);
    v109 = v38;
  }

  v39 = *(a1 + 40);
  v40 = *(a1 + 48) - v39;
  if (v40)
  {
    if (v40 <= 1)
    {
      v40 = 1;
    }

    do
    {
      v41 = *v39++;
      if (v41 == v38)
      {
        goto LABEL_80;
      }
    }

    while (--v40);
  }

  v42 = *(a1 + 164);
  if (v42 || *(a1 + 64) != *(a1 + 72))
  {
    if ((v38 & 0x80000000) != 0 || (*(*(*(a1 + 24) + 16) + 4 * v38) & v42) == 0)
    {
      v43 = (v38 == 95) & (v42 >> 7);
    }

    else
    {
      LOBYTE(v43) = 1;
    }

    v44 = *(a1 + 72);
    v45 = memchr(*(a1 + 64), v38, v44 - *(a1 + 64));
    v46 = !v45 || v45 == v44;
    v47 = !v46;
    if ((v43 & 1) == 0 && !v47)
    {
LABEL_80:
      v36 = 1;
      goto LABEL_81;
    }
  }

  v50 = *(a1 + 88);
  v51 = *(a1 + 96);
  if (v50 != v51)
  {
    memset(__p, 170, sizeof(__p));
    if (*(a1 + 170) == 1)
    {
      sub_100052B0C(a1 + 16, &v109, &v110);
      v50 = *(a1 + 88);
      v51 = *(a1 + 96);
    }

    else
    {
      HIBYTE(__p[2]) = 1;
      LOWORD(__p[0]) = v38;
    }

    v52 = v51 - v50;
    if (v52)
    {
      v103 = HIBYTE(__p[2]);
      v106 = v35;
      v102 = v36;
      v53 = 0xAAAAAAAAAAAAAAABLL * (v52 >> 4);
      if (SHIBYTE(__p[2]) >= 0)
      {
        v54 = HIBYTE(__p[2]);
      }

      else
      {
        v54 = __p[1];
      }

      if (SHIBYTE(__p[2]) >= 0)
      {
        v55 = __p;
      }

      else
      {
        v55 = __p[0];
      }

      if (v53 <= 1)
      {
        v56 = 1;
      }

      else
      {
        v56 = 0xAAAAAAAAAAAAAAABLL * (v52 >> 4);
      }

      v57 = (v50 + 47);
      v58 = 1;
      v59 = 1;
      while (1)
      {
        v60 = *(v57 - 24);
        if (v60 >= 0)
        {
          v61 = *(v57 - 24);
        }

        else
        {
          v61 = *(v57 - 39);
        }

        if (v60 >= 0)
        {
          v62 = (v57 - 47);
        }

        else
        {
          v62 = *(v57 - 47);
        }

        if (v61 >= v54)
        {
          v63 = v54;
        }

        else
        {
          v63 = v61;
        }

        v64 = memcmp(v55, v62, v63);
        v65 = v54 >= v61;
        if (v64)
        {
          v65 = v64 >= 0;
        }

        if (v65)
        {
          v66 = *v57;
          if (v66 >= 0)
          {
            v67 = *v57;
          }

          else
          {
            v67 = *(v57 - 15);
          }

          if (v66 >= 0)
          {
            v68 = (v57 - 23);
          }

          else
          {
            v68 = *(v57 - 23);
          }

          if (v54 >= v67)
          {
            v69 = v67;
          }

          else
          {
            v69 = v54;
          }

          v70 = memcmp(v68, v55, v69);
          v71 = v67 >= v54;
          if (v70)
          {
            v71 = v70 >= 0;
          }

          if (v71)
          {
            break;
          }
        }

        v59 = v58++ < v53;
        v57 += 48;
        if (!--v56)
        {
          v36 = v102;
          goto LABEL_129;
        }
      }

      v36 = 1;
LABEL_129:
      v35 = v106;
      if ((v103 & 0x80) == 0)
      {
LABEL_131:
        if (v59)
        {
          goto LABEL_81;
        }

        goto LABEL_132;
      }
    }

    else
    {
      v59 = 0;
      if ((HIBYTE(__p[2]) & 0x80) == 0)
      {
        goto LABEL_131;
      }
    }

    operator delete(__p[0]);
    goto LABEL_131;
  }

LABEL_132:
  if (*(a1 + 136) == *(a1 + 144))
  {
    goto LABEL_159;
  }

  memset(__p, 170, sizeof(__p));
  sub_100052EA0(a1 + 16, &v109, &v110, __p);
  v72 = *(a1 + 136);
  v73 = *(a1 + 144) - v72;
  if (!v73)
  {
    v79 = 0;
    if ((HIBYTE(__p[2]) & 0x80) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_157;
  }

  v104 = HIBYTE(__p[2]);
  v107 = v35;
  v74 = 0xAAAAAAAAAAAAAAABLL * (v73 >> 3);
  if (SHIBYTE(__p[2]) >= 0)
  {
    v75 = HIBYTE(__p[2]);
  }

  else
  {
    v75 = __p[1];
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v76 = __p;
  }

  else
  {
    v76 = __p[0];
  }

  if (v74 <= 1)
  {
    v77 = 1;
  }

  else
  {
    v77 = 0xAAAAAAAAAAAAAAABLL * (v73 >> 3);
  }

  v78 = 1;
  v79 = 1;
  while (1)
  {
    v80 = *(v72 + 23);
    v81 = v80;
    if ((v80 & 0x80u) != 0)
    {
      v80 = *(v72 + 8);
    }

    if (v75 == v80)
    {
      v82 = v81 >= 0 ? v72 : *v72;
      if (!memcmp(v76, v82, v75))
      {
        break;
      }
    }

    v79 = v78++ < v74;
    v72 += 24;
    if (!--v77)
    {
      goto LABEL_156;
    }
  }

  v36 = 1;
LABEL_156:
  v35 = v107;
  if (v104 < 0)
  {
LABEL_157:
    operator delete(__p[0]);
  }

LABEL_158:
  if (v79)
  {
    goto LABEL_81;
  }

LABEL_159:
  v83 = *(a1 + 160);
  if ((v109 & 0x8000000000000000) == 0 && (*(*(*(a1 + 24) + 16) + 4 * v109) & v83) != 0)
  {
    goto LABEL_80;
  }

  v84 = (v83 >> 7) & 1;
  if (v109 != 95)
  {
    LOBYTE(v84) = 0;
  }

  v36 |= v84;
LABEL_81:
  if (*(a1 + 168) == (v36 & 1))
  {
    v48 = 0;
    v49 = -993;
  }

  else
  {
    *(a2 + 16) += v35;
    v48 = *(a1 + 8);
    v49 = -995;
  }

  *a2 = v49;
  *(a2 + 80) = v48;
}

void sub_1000528D4(void ***a1)
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
        sub_10005295C(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_10005295C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t sub_1000529B4(uint64_t a1)
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

std::locale *sub_1000529F8(std::locale *a1)
{
  a1->__locale_ = off_1001831C8;
  v7 = a1 + 17;
  sub_10002DE40(&v7);
  locale = a1[14].__locale_;
  if (locale)
  {
    a1[15].__locale_ = locale;
    operator delete(locale);
  }

  v7 = a1 + 11;
  sub_1000528D4(&v7);
  v3 = a1[8].__locale_;
  if (v3)
  {
    a1[9].__locale_ = v3;
    operator delete(v3);
  }

  v4 = a1[5].__locale_;
  if (v4)
  {
    a1[6].__locale_ = v4;
    operator delete(v4);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100182E80;
  v5 = a1[1].__locale_;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return a1;
}

void sub_100052B0C(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  memset(__p, 170, sizeof(__p));
  sub_100052DF0(__p, a2, a3, a3 - a2);
  v4 = HIBYTE(__p[2]);
  if (SHIBYTE(__p[2]) >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    v4 = __p[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v5, &v4[v5]);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100052BE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100052C08(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  memset(&__s, 170, sizeof(__s));
  sub_100052DF0(&__s, a2, a3, a3 - a2);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    p_s = __s.__r_.__value_.__r.__words[0];
    if (!__s.__r_.__value_.__l.__size_)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (!*(&__s.__r_.__value_.__s + 23))
    {
      return;
    }

    p_s = &__s;
  }

  std::__get_collation_name(&v11, p_s);
  *a4 = *&v11.__r_.__value_.__l.__data_;
  v7 = v11.__r_.__value_.__r.__words[2];
  *(a4 + 16) = *(&v11.__r_.__value_.__l + 2);
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8)
  {
    goto LABEL_8;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    p_s = __s.__r_.__value_.__r.__words[0];
    if (__s.__r_.__value_.__l.__size_ < 3)
    {
      goto LABEL_16;
    }

LABEL_10:
    operator delete(p_s);
    return;
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 3)
  {
LABEL_16:
    (*(**(a1 + 16) + 32))(&v11);
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = v11;
    if (*(a4 + 23) < 0)
    {
      v10 = *(a4 + 8);
      if (v10 != 1 && v10 != 12)
      {
        **a4 = 0;
        *(a4 + 8) = 0;
        goto LABEL_8;
      }
    }

    else
    {
      v9 = *(a4 + 23);
      if (v9 != 12 && v9 != 1)
      {
        *a4 = 0;
        *(a4 + 23) = 0;
LABEL_8:
        if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return;
        }

        p_s = __s.__r_.__value_.__r.__words[0];
        goto LABEL_10;
      }
    }

    std::string::operator=(a4, &__s);
    goto LABEL_8;
  }
}

void sub_100052DB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (*(v18 + 23) < 0)
  {
    operator delete(*v18);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_100052DF0(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000173E4();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  __dst[23] = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  v4[v5] = 0;
  return __dst;
}

void sub_100052EA0(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, void *a4@<X8>)
{
  memset(__p, 170, sizeof(__p));
  sub_100052DF0(__p, a2, a3, a3 - a2);
  memset(a4, 170, 24);
  v6 = HIBYTE(__p[2]);
  if (SHIBYTE(__p[2]) >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    v6 = __p[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v7, &v6[v7]);
  v8 = *(a4 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = a4[1];
  }

  if (v8 != 1)
  {
    if (v8 == 12)
    {
      if (v9 >= 0)
      {
        v10 = a4;
      }

      else
      {
        v10 = *a4;
      }

      v10[11] = v10[3];
    }

    else if (v9 < 0)
    {
      **a4 = 0;
      a4[1] = 0;
    }

    else
    {
      *a4 = 0;
      *(a4 + 23) = 0;
    }
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100052FD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100052FFC()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_brack);
}

unsigned __int8 *sub_100053054(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (v5 == 93)
  {
    return v4;
  }

  v6 = a4;
  memset(&v23, 0, sizeof(v23));
  if (a2 + 1 == a3 || v5 != 91)
  {
LABEL_9:
    v11 = *(a1 + 24) & 0x1F0;
    goto LABEL_10;
  }

  v9 = a2[1];
  if (v9 != 46)
  {
    if (v9 == 58)
    {
      v10 = sub_10005365C(a1, a2 + 2, a3, a4);
      goto LABEL_34;
    }

    if (v9 == 61)
    {
      v10 = sub_10005343C(a1, a2 + 2, a3, a4);
LABEL_34:
      v6 = v10;
      v17 = 0;
      goto LABEL_42;
    }

    goto LABEL_9;
  }

  v4 = sub_100053740(a1, a2 + 2, a3, &v23);
  v11 = *(a1 + 24) & 0x1F0;
  size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v23.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
LABEL_10:
    if ((v11 | 0x40) == 0x40)
    {
      v12 = *v4;
      if (v12 == 92)
      {
        if (v11)
        {
          v4 = sub_100053974(a1, v4 + 1, a3, &v23);
        }

        else
        {
          v4 = sub_100053850(a1, v4 + 1, a3, &v23, v6);
          v11 = 0;
        }

        goto LABEL_16;
      }
    }

    else
    {
      LOBYTE(v12) = *v4;
    }

    std::string::operator=(&v23, v12);
    ++v4;
  }

LABEL_16:
  if (v4 != a3)
  {
    v13 = *v4;
    if (v13 != 93)
    {
      v15 = v4 + 1;
      if (v4 + 1 != a3 && v13 == 45 && *v15 != 93)
      {
        memset(&v22, 0, sizeof(v22));
        v4 += 2;
        if (v15 + 1 != a3 && *v15 == 91 && *v4 == 46)
        {
          v16 = sub_100053740(a1, v15 + 2, a3, &v22);
LABEL_55:
          v4 = v16;
          goto LABEL_56;
        }

        if ((v11 | 0x40) == 0x40)
        {
          LODWORD(v15) = *v15;
          if (v15 == 92)
          {
            if (v11)
            {
              v16 = sub_100053974(a1, v4, a3, &v22);
            }

            else
            {
              v16 = sub_100053850(a1, v4, a3, &v22, v6);
            }

            goto LABEL_55;
          }
        }

        else
        {
          LOBYTE(v15) = *v15;
        }

        std::string::operator=(&v22, v15);
LABEL_56:
        v21 = v23;
        __p = v22;
        memset(&v22, 0, sizeof(v22));
        memset(&v23, 0, sizeof(v23));
        sub_100053B54(v6, &v21, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v21.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v22.__r_.__value_.__l.__data_);
        }

        goto LABEL_41;
      }
    }
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v23.__r_.__value_.__l.__size_)
    {
      if (v23.__r_.__value_.__l.__size_ != 1)
      {
        v14 = v23.__r_.__value_.__r.__words[0];
LABEL_40:
        sub_100053F88(v6, v14->__r_.__value_.__s.__data_[0], v14->__r_.__value_.__s.__data_[1]);
        goto LABEL_41;
      }

      v14 = v23.__r_.__value_.__r.__words[0];
      goto LABEL_25;
    }
  }

  else if (*(&v23.__r_.__value_.__s + 23))
  {
    v14 = &v23;
    if (HIBYTE(v23.__r_.__value_.__r.__words[2]) != 1)
    {
      goto LABEL_40;
    }

LABEL_25:
    sub_100051D3C(v6, v14->__r_.__value_.__s.__data_[0]);
  }

LABEL_41:
  v17 = 1;
LABEL_42:
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (v17)
  {
    return v4;
  }

  return v6;
}

void sub_1000533C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *sub_10005343C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v17 = 23869;
  LOBYTE(__p[0]) = 0;
  v8 = sub_1000540E8(a2, a3, &v17, &v18);
  if (v8 == a3)
  {
    sub_100052FFC();
  }

  memset(v16, 170, sizeof(v16));
  sub_100054164(a1, a2, v8, v16);
  v9 = SHIBYTE(v16[2]);
  if ((SHIBYTE(v16[2]) & 0x8000000000000000) == 0)
  {
    if (HIBYTE(v16[2]))
    {
      memset(__p, 170, sizeof(__p));
      v10 = v16;
      goto LABEL_7;
    }

LABEL_27:
    sub_100054090();
  }

  v9 = v16[1];
  if (!v16[1])
  {
    goto LABEL_27;
  }

  memset(__p, 170, sizeof(__p));
  v10 = v16[0];
LABEL_7:
  sub_10005434C(a1, v10, v9 + v10, __p);
  if ((SHIBYTE(__p[2]) & 0x8000000000000000) != 0)
  {
    if (__p[1])
    {
      goto LABEL_9;
    }
  }

  else if (HIBYTE(__p[2]))
  {
LABEL_9:
    sub_1000544A8((a4 + 136), __p);
    goto LABEL_21;
  }

  v11 = HIBYTE(v16[2]);
  if (SHIBYTE(v16[2]) < 0)
  {
    v11 = v16[1];
  }

  if (v11 == 2)
  {
    v13 = v16;
    if (SHIBYTE(v16[2]) < 0)
    {
      v13 = v16[0];
    }

    sub_100053F88(a4, *v13, *(v13 + 1));
  }

  else
  {
    if (v11 != 1)
    {
      sub_100054090();
    }

    v12 = v16;
    if (SHIBYTE(v16[2]) < 0)
    {
      v12 = v16[0];
    }

    sub_100051D3C(a4, *v12);
  }

LABEL_21:
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v16[2]) < 0)
  {
    operator delete(v16[0]);
  }

  return v8 + 2;
}

void sub_10005361C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *sub_10005365C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v12 = 23866;
  v8 = sub_1000540E8(a2, a3, &v12, &v13);
  if (v8 == a3)
  {
    sub_100052FFC();
  }

  v9 = v8;
  v10 = sub_100054714(a1, a2, v8, *(a1 + 24) & 1);
  if (!v10)
  {
    sub_1000546BC();
  }

  *(a4 + 160) |= v10;
  return v9 + 2;
}

unsigned __int8 *sub_100053740(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v16 = 23854;
  v15 = 0;
  v8 = sub_1000540E8(a2, a3, &v16, &v17);
  if (v8 == a3)
  {
    sub_100052FFC();
  }

  v9 = v8;
  sub_100054164(a1, a2, v8, &v13);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v13;
  v10 = v14;
  *(a4 + 16) = v14;
  v11 = HIBYTE(v10);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a4 + 8);
  }

  if (v11 - 1 >= 2)
  {
    sub_100054090();
  }

  return v9 + 2;
}

char *sub_100053850(uint64_t a1, std::string::value_type *a2, unsigned __int8 *a3, std::string *this, uint64_t a5)
{
  if (a2 == a3)
  {
    sub_1000509F0();
  }

  v6 = *a2;
  if (v6 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v6 != 115)
      {
        if (v6 != 119)
        {
          return sub_100050BD0(a1, a2, a3, this);
        }

        *(a5 + 160) |= 0x500u;
        sub_100051D3C(a5, 95);
        return a2 + 1;
      }

      v8 = *(a5 + 160) | 0x4000;
    }

    else
    {
      if (v6 == 98)
      {
        v9 = this;
        v10 = 8;
LABEL_19:
        std::string::operator=(v9, v10);
        return a2 + 1;
      }

      if (v6 != 100)
      {
        return sub_100050BD0(a1, a2, a3, this);
      }

      v8 = *(a5 + 160) | 0x400;
    }

    *(a5 + 160) = v8;
    return a2 + 1;
  }

  if (*a2 <= 0x52u)
  {
    if (*a2)
    {
      if (v6 == 68)
      {
        v7 = *(a5 + 164) | 0x400;
LABEL_21:
        *(a5 + 164) = v7;
        return a2 + 1;
      }

      return sub_100050BD0(a1, a2, a3, this);
    }

    v9 = this;
    v10 = 0;
    goto LABEL_19;
  }

  if (v6 == 83)
  {
    v7 = *(a5 + 164) | 0x4000;
    goto LABEL_21;
  }

  if (v6 == 87)
  {
    *(a5 + 164) |= 0x500u;
    sub_100054830(a5, 95);
    return a2 + 1;
  }

  return sub_100050BD0(a1, a2, a3, this);
}

unsigned __int8 *sub_100053974(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this)
{
  if (a2 == a3)
  {
LABEL_47:
    sub_1000509F0();
  }

  v5 = *a2;
  if (v5 <= 0x65)
  {
    if (*a2 <= 0x5Bu)
    {
      if (v5 != 34 && v5 != 47)
      {
        goto LABEL_32;
      }
    }

    else if (v5 != 92)
    {
      if (v5 == 97)
      {
        if (this)
        {
          v6 = this;
          v7 = 7;
          goto LABEL_31;
        }

        goto LABEL_44;
      }

      if (v5 == 98)
      {
        if (this)
        {
          v6 = this;
          v7 = 8;
LABEL_31:
          std::string::operator=(v6, v7);
          return a2 + 1;
        }

        goto LABEL_44;
      }

      goto LABEL_32;
    }

    v7 = v5;
    if (this)
    {
      v6 = this;
      goto LABEL_31;
    }

    goto LABEL_44;
  }

  if (*a2 <= 0x71u)
  {
    if (v5 == 102)
    {
      if (this)
      {
        v6 = this;
        v7 = 12;
        goto LABEL_31;
      }

      goto LABEL_44;
    }

    if (v5 == 110)
    {
      if (this)
      {
        v6 = this;
        v7 = 10;
        goto LABEL_31;
      }

      goto LABEL_44;
    }
  }

  else
  {
    switch(v5)
    {
      case 'r':
        if (this)
        {
          v6 = this;
          v7 = 13;
          goto LABEL_31;
        }

        goto LABEL_44;
      case 't':
        if (this)
        {
          v6 = this;
          v7 = 9;
          goto LABEL_31;
        }

        goto LABEL_44;
      case 'v':
        if (this)
        {
          v6 = this;
          v7 = 11;
          goto LABEL_31;
        }

LABEL_44:
        sub_100050EBC(a1);
    }
  }

LABEL_32:
  if ((v5 & 0xF8) != 0x30)
  {
    goto LABEL_47;
  }

  v8 = v5 - 48;
  v12 = a2 + 1;
  if (a2 + 1 == a3)
  {
LABEL_41:
    v12 = a3;
    goto LABEL_42;
  }

  if ((*v12 & 0xF8) == 0x30)
  {
    v8 = *v12 + 8 * v8 - 48;
    if (a2 + 2 != a3)
    {
      v9 = a2[2];
      v10 = v9 & 0xF8;
      v11 = v9 + 8 * v8 - 48;
      if (v10 == 48)
      {
        v12 = a2 + 3;
      }

      else
      {
        v12 = a2 + 2;
      }

      if (v10 == 48)
      {
        v8 = v11;
      }

      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_42:
  if (!this)
  {
    sub_100050EBC(a1);
  }

  std::string::operator=(this, v8);
  return v12;
}

void sub_100053B54(uint64_t a1, char *a2, char *a3)
{
  v3 = a3;
  v4 = a2;
  if (*(a1 + 170) == 1)
  {
    if (*(a1 + 169))
    {
      for (i = 0; ; ++i)
      {
        v7 = v4[23];
        v8 = v7 < 0 ? *(v4 + 1) : v4[23];
        if (i >= v8)
        {
          break;
        }

        v9 = v4;
        if ((v7 & 0x80000000) != 0)
        {
          v9 = *v4;
        }

        v10 = (*(**(a1 + 24) + 40))(*(a1 + 24), v9[i]);
        v11 = v4;
        if (v4[23] < 0)
        {
          v11 = *v4;
        }

        v11[i] = v10;
      }

      for (j = 0; ; ++j)
      {
        v20 = v3[23];
        v21 = v20 < 0 ? *(v3 + 1) : v3[23];
        if (j >= v21)
        {
          break;
        }

        v22 = v3;
        if ((v20 & 0x80000000) != 0)
        {
          v22 = *v3;
        }

        v23 = (*(**(a1 + 24) + 40))(*(a1 + 24), v22[j]);
        v24 = v3;
        if (v3[23] < 0)
        {
          v24 = *v3;
        }

        v24[j] = v23;
      }
    }

    else
    {
      for (k = 0; ; ++k)
      {
        v15 = a2[23];
        v16 = v15 < 0 ? *(a2 + 1) : a2[23];
        if (k >= v16)
        {
          break;
        }

        v17 = a2;
        if ((v15 & 0x80000000) != 0)
        {
          v17 = *a2;
        }

        v18 = a2;
        if ((v15 & 0x80000000) != 0)
        {
          v18 = *a2;
        }

        v18[k] = v17[k];
      }

      for (m = 0; ; ++m)
      {
        v26 = a3[23];
        v27 = v26 < 0 ? *(a3 + 1) : a3[23];
        if (m >= v27)
        {
          break;
        }

        v28 = a3;
        if ((v26 & 0x80000000) != 0)
        {
          v28 = *a3;
        }

        v29 = a3;
        if ((v26 & 0x80000000) != 0)
        {
          v29 = *a3;
        }

        v29[m] = v28[m];
      }
    }

    v30 = v4[23];
    if (v30 < 0)
    {
      v31 = v4;
      v4 = *v4;
      v30 = *(v31 + 1);
    }

    sub_100054A84(a1 + 16, v4, &v4[v30]);
    v32 = v3[23];
    if (v32 < 0)
    {
      v33 = v3;
      v3 = *v3;
      v32 = *(v33 + 1);
    }

    sub_100054A84(a1 + 16, v3, &v3[v32]);
    *v45 = v43;
    v46 = v44;
    *__p = *v41;
    v48 = v42;
    sub_1000548F8((a1 + 88), v45);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45[0]);
    }
  }

  else
  {
    v12 = a2[23];
    if (v12 < 0)
    {
      v13 = *(a2 + 1);
    }

    else
    {
      v13 = a2[23];
    }

    if (v13 != 1)
    {
      goto LABEL_74;
    }

    v34 = a3[23];
    if (v34 < 0)
    {
      v34 = *(a3 + 1);
    }

    if (v34 != 1)
    {
LABEL_74:
      sub_100054B80();
    }

    if (*(a1 + 169) == 1)
    {
      v35 = a2;
      if ((v12 & 0x80000000) != 0)
      {
        v35 = *a2;
      }

      v36 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v35);
      v37 = v4;
      if (v4[23] < 0)
      {
        v37 = *v4;
      }

      *v37 = v36;
      v38 = v3;
      if (v3[23] < 0)
      {
        v38 = *v3;
      }

      v39 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v38);
      v40 = v3;
      if (v3[23] < 0)
      {
        v40 = *v3;
      }

      *v40 = v39;
    }

    *v45 = *v4;
    v46 = *(v4 + 2);
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = 0;
    *__p = *v3;
    v48 = *(v3 + 2);
    *v3 = 0;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    sub_1000548F8((a1 + 88), v45);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45[0]);
    }
  }
}

void sub_100053F88(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  if (*(a1 + 169) == 1)
  {
    v5 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v11 = v5 | ((*(**(a1 + 24) + 40))(*(a1 + 24), a3) << 8);
    v6 = a1 + 112;
    v7 = &v11;
  }

  else
  {
    v8 = a2 | (a3 << 8);
    if (*(a1 + 170) == 1)
    {
      v10 = v8;
      v6 = a1 + 112;
      v7 = &v10;
    }

    else
    {
      v9 = v8;
      v6 = a1 + 112;
      v7 = &v9;
    }
  }

  sub_100054CAC(v6, v7);
}

void sub_100054090()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_collate);
}

unsigned __int8 *sub_1000540E8(unsigned __int8 *result, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4 - a3;
  if (a4 != a3)
  {
    if (a2 - result < v4)
    {
      return a2;
    }

    v5 = a2 - v4 + 1;
    if (v5 == result)
    {
      return a2;
    }

    else
    {
      v8 = *a3;
      v6 = a3 + 1;
      v7 = v8;
      while (*result != v7)
      {
LABEL_11:
        if (++result == v5)
        {
          return a2;
        }
      }

      v9 = result + 1;
      v10 = v6;
      while (v10 != a4)
      {
        v12 = *v9++;
        v11 = v12;
        v13 = *v10++;
        if (v11 != v13)
        {
          goto LABEL_11;
        }
      }
    }
  }

  return result;
}

void sub_100054164(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  memset(&__s, 170, sizeof(__s));
  sub_100052DF0(&__s, a2, a3, a3 - a2);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    p_s = __s.__r_.__value_.__r.__words[0];
    if (!__s.__r_.__value_.__l.__size_)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (!*(&__s.__r_.__value_.__s + 23))
    {
      return;
    }

    p_s = &__s;
  }

  std::__get_collation_name(&v11, p_s);
  *a4 = *&v11.__r_.__value_.__l.__data_;
  v7 = v11.__r_.__value_.__r.__words[2];
  *(a4 + 16) = *(&v11.__r_.__value_.__l + 2);
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8)
  {
    goto LABEL_8;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    p_s = __s.__r_.__value_.__r.__words[0];
    if (__s.__r_.__value_.__l.__size_ < 3)
    {
      goto LABEL_16;
    }

LABEL_10:
    operator delete(p_s);
    return;
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 3)
  {
LABEL_16:
    (*(**(a1 + 16) + 32))(&v11);
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = v11;
    if (*(a4 + 23) < 0)
    {
      v10 = *(a4 + 8);
      if (v10 != 1 && v10 != 12)
      {
        **a4 = 0;
        *(a4 + 8) = 0;
        goto LABEL_8;
      }
    }

    else
    {
      v9 = *(a4 + 23);
      if (v9 != 12 && v9 != 1)
      {
        *a4 = 0;
        *(a4 + 23) = 0;
LABEL_8:
        if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return;
        }

        p_s = __s.__r_.__value_.__r.__words[0];
        goto LABEL_10;
      }
    }

    std::string::operator=(a4, &__s);
    goto LABEL_8;
  }
}

void sub_100054310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (*(v18 + 23) < 0)
  {
    operator delete(*v18);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10005434C(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, void *a4@<X8>)
{
  memset(__p, 170, sizeof(__p));
  sub_100052DF0(__p, a2, a3, a3 - a2);
  memset(a4, 170, 24);
  v6 = HIBYTE(__p[2]);
  if (SHIBYTE(__p[2]) >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    v6 = __p[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v7, &v6[v7]);
  v8 = *(a4 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = a4[1];
  }

  if (v8 != 1)
  {
    if (v8 == 12)
    {
      if (v9 >= 0)
      {
        v10 = a4;
      }

      else
      {
        v10 = *a4;
      }

      v10[11] = v10[3];
    }

    else if (v9 < 0)
    {
      **a4 = 0;
      a4[1] = 0;
    }

    else
    {
      *a4 = 0;
      *(a4 + 23) = 0;
    }
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100054484(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000544A8(void *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_100054548(a1, a2);
  }

  else
  {
    sub_1000544E8(a1, a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

void *sub_1000544E8(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_1000078D8(result[1], *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  v2[1] = v3 + 24;
  return result;
}

uint64_t sub_100054548(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_10002C63C();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    sub_10002E2FC(a1, v6);
  }

  v7 = 24 * v2;
  v17 = 0;
  v18 = 24 * v2;
  v8 = 0;
  v19 = 24 * v2;
  if (*(a2 + 23) < 0)
  {
    sub_1000078D8(v7, *a2, *(a2 + 1));
    v7 = v18;
    v8 = *(&v19 + 1);
    v10 = v19;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *v7 = v9;
    v10 = 24 * v2;
  }

  v11 = v10 + 24;
  v12 = *(a1 + 8) - *a1;
  v13 = v7 - v12;
  memcpy((v7 - v12), *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v8;
  *&v19 = v14;
  *(&v19 + 1) = v15;
  v17 = v14;
  v18 = v14;
  sub_10002E354(&v17);
  return v11;
}

void sub_1000546BC()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_ctype);
}

uint64_t sub_100054714(uint64_t a1, _BYTE *a2, _BYTE *a3, BOOL a4)
{
  memset(__p, 170, sizeof(__p));
  sub_100052DF0(__p, a2, a3, a3 - a2);
  v6 = HIBYTE(__p[2]);
  if (SHIBYTE(__p[2]) >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    v6 = __p[1];
  }

  (*(**(a1 + 8) + 48))(*(a1 + 8), v7, &v6[v7]);
  if (SHIBYTE(__p[2]) >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  classname = std::__get_classname(v8, a4);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  return classname;
}

void sub_100054830(uint64_t a1, char a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v3 = a1 + 64;
    v4 = &v6;
LABEL_5:
    sub_100003650(v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = a1 + 64;
    v4 = &v5;
    goto LABEL_5;
  }

  sub_100003650(a1 + 64, &v7);
}

void **sub_1000548F8(void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      sub_10002C63C();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    v20[4] = result;
    if (v12)
    {
      sub_100054BD8(result, v12);
    }

    v13 = 48 * v9;
    v14 = *a2;
    *(v13 + 16) = *(a2 + 2);
    *v13 = v14;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v15 = *(a2 + 24);
    *(v13 + 40) = *(a2 + 5);
    *(v13 + 24) = v15;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v8 = 48 * v9 + 48;
    v16 = result[1] - *result;
    v17 = v13 - v16;
    memcpy((v13 - v16), *result, v16);
    v18 = *v3;
    *v3 = v17;
    v3[1] = v8;
    v19 = v3[2];
    v3[2] = 0;
    v20[2] = v18;
    v20[3] = v19;
    v20[0] = v18;
    v20[1] = v18;
    result = sub_100054C30(v20);
  }

  else
  {
    v6 = *a2;
    *(v4 + 2) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = *(a2 + 24);
    *(v4 + 5) = *(a2 + 5);
    *(v4 + 24) = v7;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v8 = (v4 + 48);
  }

  v3[1] = v8;
  return result;
}

void sub_100054A84(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  memset(__p, 170, sizeof(__p));
  sub_100052DF0(__p, a2, a3, a3 - a2);
  v4 = HIBYTE(__p[2]);
  if (SHIBYTE(__p[2]) >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    v4 = __p[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v5, &v4[v5]);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100054B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100054B80()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_range);
}

void sub_100054BD8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_100025BBC();
}

void **sub_100054C30(void **a1)
{
  sub_100054C64(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100054C64(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 48;
    sub_10005295C(v4, i - 48);
  }
}

void sub_100054CAC(uint64_t a1, _WORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 1;
    if (v7 <= -2)
    {
      sub_10002C63C();
    }

    v8 = v4 - *a1;
    if (v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    else
    {
      v9 = v8;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_100054D7C(a1, v10);
    }

    v11 = (2 * v7);
    *v11 = *a2;
    v6 = 2 * v7 + 2;
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

void sub_100054D7C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_100025BBC();
}

void *sub_100054DC0(void *a1)
{
  *a1 = off_100182E80;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_100054E2C(void *a1)
{
  *a1 = off_100182E80;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

uint64_t sub_100054EB8(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(*(a2 + 32) + 24 * (*(result + 16) - 1)) = *(a2 + 16);
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_100054EE8(void *a1)
{
  *a1 = off_100182E80;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_100054F54(void *a1)
{
  *a1 = off_100182E80;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

uint64_t sub_100054FE0(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  v2 = *(a2 + 32) + 24 * (*(result + 16) - 1);
  *(v2 + 8) = *(a2 + 16);
  *(v2 + 16) = 1;
  *(a2 + 80) = *(result + 8);
  return result;
}

unsigned __int8 *sub_1000551A8(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, int *a4)
{
  if (a2 != a3)
  {
    v4 = *a2;
    if ((v4 & 0xF8) == 0x30 || (v4 & 0xFE) == 0x38)
    {
      v5 = v4 - 48;
      *a4 = v5;
      if (++a2 == a3)
      {
        return a3;
      }

      else
      {
        while (1)
        {
          v6 = *a2;
          if ((v6 & 0xF8) != 0x30 && (v6 & 0xFE) != 0x38)
          {
            break;
          }

          if (v5 >= 214748364)
          {
            sub_100055248();
          }

          v5 = v6 + 10 * v5 - 48;
          *a4 = v5;
          if (++a2 == a3)
          {
            return a3;
          }
        }
      }
    }
  }

  return a2;
}

void sub_100055248()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_badbrace);
}

void sub_1000552A0()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_brace);
}

void sub_1000552FC(void *a1)
{
  sub_100055450(a1);

  operator delete();
}

unsigned int *sub_100055334(unsigned int *result, void *a2)
{
  v2 = (a2[7] + 16 * result[10]);
  if (*a2 == -991)
  {
    v3 = *v2 + 1;
    *v2 = v3;
    v4 = *(result + 3);
    v5 = *(result + 4);
    v6 = v3 < v5;
    if (v3 < v5 && v3 >= v4)
    {
      v8 = v2[1];
      v6 = v3 < v5 && v8 != a2[2];
    }

    if (!v6 || v3 < v4)
    {
      *a2 = -994;
      if (!v6)
      {
        goto LABEL_25;
      }

LABEL_22:
      a2[10] = *(result + 1);
      return sub_100055504(result, a2);
    }

    goto LABEL_23;
  }

  *v2 = 0;
  if (*(result + 4))
  {
    if (*(result + 3))
    {
      *a2 = -994;
      goto LABEL_22;
    }

LABEL_23:
    *a2 = -992;
    return result;
  }

  *a2 = -994;
LABEL_25:
  a2[10] = *(result + 2);
  return result;
}

unsigned int *sub_1000553E4(unsigned int *result, int a2, void *a3)
{
  *a3 = -994;
  if (*(result + 52) == a2)
  {
    a3[10] = *(result + 2);
  }

  else
  {
    a3[10] = *(result + 1);
    return sub_100055504(result, a3);
  }

  return result;
}

void sub_100055418(void *a1)
{
  sub_100055450(a1);

  operator delete();
}

void *sub_100055450(void *a1)
{
  *a1 = off_100183300;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = off_100182E80;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

unsigned int *sub_100055504(unsigned int *result, void *a2)
{
  v2 = result[11];
  *(a2[7] + 16 * result[10] + 8) = a2[2];
  v3 = result[12];
  if (v2 != v3)
  {
    v4 = v2 - 1;
    v5 = a2[3];
    v6 = v3 - 1 - v4;
    v7 = (a2[4] + 24 * v4 + 16);
    do
    {
      *(v7 - 2) = v5;
      *(v7 - 1) = v5;
      *v7 = 0;
      v7 += 24;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_10005556C(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

void sub_100055584(void *a1)
{
  sub_100055450(a1);

  operator delete();
}

uint64_t sub_1000555C8(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  v3 = 8;
  if (a2)
  {
    v3 = 16;
  }

  *(a3 + 80) = *(result + v3);
  return result;
}

uint64_t sub_100055604(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

uint64_t sub_100055618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    v5 = a2;
    a2 = sub_1000556BC(a1, a2, a3);
  }

  while (v5 != a2);
  return v5;
}

void sub_100055664()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, __re_err_empty);
}

unsigned __int8 *sub_1000556BC(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  v8 = sub_100055758(a1, a2, a3);
  if (v8 == a2)
  {
    return a2;
  }

  v10 = (*(a1 + 28) + 1);

  return sub_100055860(a1, v8, a3);
}

unsigned __int8 *sub_100055758(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = a3;
  v6 = sub_100055A58(a1, a2, a3);
  v7 = v6;
  if (v6 != a2)
  {
    return v6;
  }

  if (a2 == v3 || a2 + 1 == v3 || *v6 != 92)
  {
    return a2;
  }

  v8 = *(a2 + 1);
  if (v8 == 40)
  {
    v9 = a2 + 2;
  }

  else
  {
    v9 = v6;
  }

  if (v9 != a2)
  {
    sub_100050728(a1);
    v11 = *(a1 + 28);
    v12 = sub_100055618(a1, v9, v3);
    if (v12 != v3)
    {
      if (v12 + 1 == v3 || *v12 != 92)
      {
        goto LABEL_23;
      }

      if (v12[1] == 41)
      {
        v3 = (v12 + 2);
      }

      else
      {
        v3 = v12;
      }
    }

    if (v3 != v12)
    {
      sub_1000507B0(a1);
      return v3;
    }

LABEL_23:
    sub_10004EADC();
  }

  v3 = a2 + 2;
  if (!sub_100055D68(a1, v8))
  {
    return v7;
  }

  return v3;
}

unsigned __int8 *sub_100055860(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = *a2;
    if (v4 == 42)
    {
      sub_100055018();
    }

    v6 = a3;
    if (a2 + 1 != a3 && v4 == 92)
    {
      v7 = a2[1] == 123 ? a2 + 2 : a2;
      if (v7 != a2)
      {
        v13 = 0;
        v8 = sub_1000551A8(a1, v7, a3, &v13);
        if (v8 == v7)
        {
          goto LABEL_32;
        }

        if (v8 != v6)
        {
          v9 = *v8;
          if (v9 == 44)
          {
            v12 = -1;
            v10 = sub_1000551A8(a1, v8 + 1, v6, &v12);
            if (v10 != v6)
            {
              if (v10 + 1 == v6 || *v10 != 92)
              {
                goto LABEL_31;
              }

              if (v10[1] == 125)
              {
                v6 = v10 + 2;
              }

              else
              {
                v6 = v10;
              }
            }

            if (v6 != v10)
            {
              if (v12 == -1 || v12 >= v13)
              {
                goto LABEL_30;
              }

LABEL_32:
              sub_100055248();
            }
          }

          else if (v8 + 1 != v6 && v9 == 92)
          {
            v11 = (v8[1] == 125 ? v8 + 2 : v8);
            if (v8 != v11)
            {
LABEL_30:
              sub_100055018();
            }
          }
        }

LABEL_31:
        sub_1000552A0();
      }
    }
  }

  return a2;
}

unsigned __int8 *sub_100055A58(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = sub_100055B48(a1, a2, a3);
  if (v6 != a2)
  {
    return v6;
  }

  v7 = sub_100055BB8(a1, a2, a3);
  v6 = v7;
  if (v7 != a2)
  {
    return v6;
  }

  if (a2 != a3 && *v7 == 46)
  {
    operator new();
  }

  return sub_10005060C(a1, a2, a3);
}

unsigned __int8 *sub_100055B48(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v3 = *a2;
    if ((a2 + 1 != a3 || v3 != 36) && ((v3 - 46) > 0x2E || ((1 << (v3 - 46)) & 0x600000000001) == 0))
    {
      sub_100050EBC(a1);
    }
  }

  return a2;
}

_BYTE *sub_100055BB8(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  if (a2 != a3 && a2 + 1 != a3 && *a2 == 92)
  {
    v3 = a2[1];
    if ((v3 - 36) <= 0x3A && ((1 << (v3 - 36)) & 0x580000000000441) != 0)
    {
      sub_100050EBC(a1);
    }
  }

  return a2;
}

void *sub_100055C30(void *a1)
{
  *a1 = off_100182E80;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_100055C9C(void *a1)
{
  *a1 = off_100182E80;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

uint64_t sub_100055D28(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || !*v2)
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

uint64_t sub_100055D68(uint64_t a1, unsigned __int8 a2)
{
  if (((a2 & 0xF8) == 0x30 || (a2 & 0xFE) == 0x38) && a2 - 49 <= 8)
  {
    if (a2 - 48 <= *(a1 + 28))
    {
      sub_100051054(a1);
    }

    sub_100050FFC();
  }

  return 0;
}

unsigned __int8 *sub_100055DC8(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = sub_100055E28(a1, a2, a3);
  if (v6 == a2)
  {
    sub_100055664();
  }

  do
  {
    v7 = v6;
    v6 = sub_100055E28(a1, v6, a3);
  }

  while (v7 != v6);
  return v7;
}

unsigned __int8 *sub_100055E28(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  v8 = sub_100055F6C(a1, a2, a3);
  v9 = v8;
  if (v8 == a2 && v8 != a3)
  {
    v10 = *v8;
    switch(v10)
    {
      case '$':
        sub_10004E924();
      case '(':
        sub_100050728(a1);
        v11 = *(a1 + 28);
        ++*(a1 + 36);
        v12 = sub_10004D7F4(a1, v9 + 1, a3);
        if (v12 == a3 || (v13 = v12, *v12 != 41))
        {
          sub_10004EADC();
        }

        sub_1000507B0(a1);
        --*(a1 + 36);
        v9 = v13 + 1;
        break;
      case '^':
        sub_10004E8A0();
    }
  }

  if (v9 == a2)
  {
    return a2;
  }

  v14 = (*(a1 + 28) + 1);

  return sub_10004E564(a1, v9, a3);
}

unsigned __int8 *sub_100055F6C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = sub_10005605C(a1, a2, a3);
  if (v6 != a2)
  {
    return v6;
  }

  v7 = sub_1000560E8(a1, a2, a3);
  v6 = v7;
  if (v7 != a2)
  {
    return v6;
  }

  if (a2 != a3 && *v7 == 46)
  {
    operator new();
  }

  return sub_10005060C(a1, a2, a3);
}

unsigned __int8 *sub_10005605C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v3 = *a2;
    v4 = (v3 - 36);
    if (v4 > 0x3A)
    {
      goto LABEL_8;
    }

    if (((1 << (v3 - 36)) & 0x5800000080004D1) != 0)
    {
      return a2;
    }

    if (v4 == 5)
    {
      if (*(a1 + 36))
      {
        return a2;
      }
    }

    else
    {
LABEL_8:
      if ((v3 - 123) < 2)
      {
        return a2;
      }
    }

    sub_100050EBC(a1);
  }

  return a2;
}

unsigned __int8 *sub_1000560E8(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3 && a2 + 1 != a3 && *a2 == 92)
  {
    v4 = a2[1];
    v5 = (v4 - 36) > 0x3A || ((1 << (v4 - 36)) & 0x5800000080004F1) == 0;
    if (!v5 || (v4 - 123) < 3)
    {
      sub_100050EBC(a1);
    }

    if ((*(a1 + 24) & 0x1F0) == 0x40)
    {
      return sub_100053974(a1, a2 + 1, a3, 0);
    }

    else if (sub_100055D68(a1, v4))
    {
      v3 += 2;
    }
  }

  return v3;
}

uint64_t *sub_1000561A4(uint64_t *a1)
{
  v1 = *a1;
  v10 = a1;
  v11 = v1;
  v2 = *v1;
  v3 = sub_10001E21C((*v1 + 128), (v1 + 24));
  v4 = v3;
  if (v3)
  {
    v5 = v3[5];
    v6 = v4[6];
    v7 = *(v1 + 16);
    v12 = *(v1 + 8);
    v13 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = sub_10005632C(v5, v6, &v12);
    if (v13)
    {
      std::__shared_weak_count::__release_weak(v13);
    }

    sub_1000563D4((v4 + 5), v8, v4[6]);
    if (v4[5] == v4[6])
    {
      sub_100049E14((v2 + 128), v4, v14);
      sub_10004CD6C(v14);
    }
  }

  sub_1000562C8(&v11);
  return sub_1000120B8(&v10);
}

void sub_100056298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_weak(a12);
  }

  sub_1000562C8(&a10);
  sub_1000120B8(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1000562C8(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 47) < 0)
    {
      operator delete(*(v1 + 24));
    }

    v2 = *(v1 + 16);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_10005632C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while (v3[1] != *(a3 + 8))
    {
      v3 += 2;
      if (v3 == a2)
      {
        v3 = a2;
        break;
      }
    }

    if (v3 != a2)
    {
      for (i = v3 + 2; i != a2; i += 2)
      {
        v8 = i[1];
        if (v8 != *(a3 + 8))
        {
          v9 = *i;
          *i = 0;
          i[1] = 0;
          v10 = v3[1];
          *v3 = v9;
          v3[1] = v8;
          if (v10)
          {
            std::__shared_weak_count::__release_weak(v10);
          }

          v3 += 2;
        }
      }
    }
  }

  return v3;
}

uint64_t sub_1000563D4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    v5 = (a1 + 8);
    sub_100056488(&v11, a3, *(a1 + 8), a2);
    v7 = v6;
    for (i = *v5; i != v7; i -= 16)
    {
      v9 = *(i - 8);
      if (v9)
      {
        std::__shared_weak_count::__release_weak(v9);
      }
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

__int128 *sub_100056488(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
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
        std::__shared_weak_count::__release_weak(v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_1000564F4(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void sub_100056574(void *a1)
{
  v2 = a1;
  v1 = *a1 + 8;
  sub_100056614(**a1 + 256, v1);
  sub_10000E910(v1);
  operator delete();
}

void sub_100056608(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_100056614(uint64_t a1, uint64_t a2)
{
  sub_100056698(a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_100056698(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

void sub_10005671C(void *a1)
{
  v2 = a1;
  v1 = *a1 + 8;
  sub_100056614(**a1 + 224, v1);
  sub_10000E910(v1);
  operator delete();
}

void sub_1000567B0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t *sub_1000567BC(uint64_t *a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  sub_10004B958(*v1, (v1 + 8), &object);
  sub_100056904((v1 + 48), &object);
  if (object)
  {
    dispatch_release(object);
  }

  sub_100056880(&v4);
  return sub_1000120B8(&v3);
}

void sub_100056850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  sub_100056880(&a10);
  sub_1000120B8(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100056880(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 48);
    if (v2)
    {
      dispatch_group_leave(v2);
      v3 = *(v1 + 48);
      if (v3)
      {
        dispatch_release(v3);
      }
    }

    sub_10000298C((v1 + 32));
    sub_1000048FC((v1 + 40), *(v1 + 32));
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

void sub_100056904(dispatch_object_t *a1, NSObject **a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    dispatch_retain(*a1);
    dispatch_group_enter(v2);
    v5 = *a2;
    global_queue = dispatch_get_global_queue(0, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1174405120;
    v7[2] = nullsub_35;
    v7[3] = &unk_100183440;
    group = v2;
    dispatch_retain(v2);
    if (v2)
    {
      dispatch_group_enter(v2);
    }

    dispatch_group_notify(v5, global_queue, v7);
    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }

    dispatch_group_leave(v2);
    dispatch_release(v2);
  }
}

void sub_100056A30(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  *(a1 + 32) = v3;
  if (v3)
  {
    dispatch_retain(v3);
    v4 = *(a1 + 32);
    if (v4)
    {

      dispatch_group_enter(v4);
    }
  }
}

void sub_100056A84(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 32);
    if (v3)
    {

      dispatch_release(v3);
    }
  }
}

uint64_t *sub_100056AE0(uint64_t **a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  sub_100006690(*v1, v1 + 1);
  sub_100046468(&v4);
  return sub_1000120B8(&v3);
}

void sub_100056B50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  sub_100046468(va1);
  sub_1000120B8(va);
  _Unwind_Resume(a1);
}

void sub_100056B6C(uint64_t **a1)
{
  v1 = a1;
  sub_10004B814(**a1);
  operator delete();
}

uint64_t sub_100056C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a5;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v13[3] = 0xAAAAAAAAAAAAAAAALL;
  v13[6] = 0xAAAAAAAAAAAAAA00;
  v15 = v9;
  v13[5] = 0;
  v14 = 0uLL;
  LOBYTE(v15) = 0;
  BYTE8(v15) = 0;
  v16 = 0;
  *__p = 0u;
  memset(v13, 0, 24);
  v10 = sub_100056D54(a4, a1, a2, __p, a5 | 0x1040u);
  sub_100056F20(a3, a1, a2, __p, (v5 & 0x800) != 0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (!v10)
  {
    return 0;
  }

  if (*(a3 + 88) != 1)
  {
    return 1;
  }

  result = 0;
  *(a3 + 8) = *a3;
  return result;
}

void sub_100056D38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100056D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if ((a5 & 0x80) != 0)
  {
    v9 = a5 & 0xFFA;
  }

  else
  {
    v9 = a5;
  }

  sub_10004F3D4(a4, *(a1 + 28) + 1, a2, a3, (v9 & 0x800) >> 11);
  if (sub_1000570A4(a1, a2, a3, a4, v9, (v9 & 0x800) == 0))
  {
    if (*(a4 + 8) == *a4)
    {
      v10 = (a4 + 24);
    }

    else
    {
      v10 = *a4;
    }

LABEL_19:
    v16 = *v10;
    *(a4 + 56) = *v10;
    *(a4 + 64) = *(a4 + 48) != v16;
    v17 = v10[1];
    *(a4 + 72) = v17;
    *(a4 + 88) = v17 != *(a4 + 80);
    return 1;
  }

  if (a2 != a3 && (v9 & 0x40) == 0)
  {
    v11 = a2 + 1;
    if (v11 != a3)
    {
      v12 = (a4 + 24);
      do
      {
        sub_10004F83C(a4, 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3), (a4 + 24));
        v13 = sub_1000570A4(a1, v11, a3, a4, v9 | 0x80u, 0);
        v15 = *a4;
        v14 = *(a4 + 8);
        if (v13)
        {
          goto LABEL_16;
        }

        sub_10004F83C(a4, 0xAAAAAAAAAAAAAAABLL * ((v14 - v15) >> 3), (a4 + 24));
      }

      while (++v11 != a3);
    }

    v12 = (a4 + 24);
    sub_10004F83C(a4, 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3), (a4 + 24));
    if (sub_1000570A4(a1, v11, a3, a4, v9 | 0x80u, 0))
    {
      v15 = *a4;
      v14 = *(a4 + 8);
LABEL_16:
      if (v14 == v15)
      {
        v10 = v12;
      }

      else
      {
        v10 = v15;
      }

      goto LABEL_19;
    }
  }

  result = 0;
  *(a4 + 8) = *a4;
  return result;
}

void sub_100056F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v10 = a4[6];
  sub_100058BD0(a1, 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  v11 = *a1;
  if (*(a1 + 8) == *a1)
  {
    v14 = a2 - v10;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = a2 - v10;
    v16 = *a4;
    v15 = a4[1];
    do
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v16) >> 3);
      v18 = (v16 + v12);
      if (v17 <= v13)
      {
        v19 = a4 + 3;
      }

      else
      {
        v19 = v18;
      }

      *(v11 + v12) = v14 + *v19;
      if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v13)
      {
        v20 = a4 + 3;
      }

      else
      {
        v20 = (*a4 + v12);
      }

      *(*a1 + v12 + 8) = v14 + v20[1];
      v16 = *a4;
      v15 = a4[1];
      if (0xAAAAAAAAAAAAAAABLL * ((v15 - *a4) >> 3) <= v13)
      {
        v21 = a4 + 3;
      }

      else
      {
        v21 = (*a4 + v12);
      }

      v22 = *(v21 + 16);
      v11 = *a1;
      v23 = *(a1 + 8);
      *(*a1 + v12 + 16) = v22;
      ++v13;
      v12 += 24;
    }

    while (v13 < 0xAAAAAAAAAAAAAAABLL * ((v23 - v11) >> 3));
  }

  *(a1 + 24) = a3;
  *(a1 + 32) = a3;
  *(a1 + 40) = 0;
  v24 = v14 + a4[6];
  *(a1 + 48) = v24;
  *(a1 + 56) = v14 + a4[7];
  *(a1 + 64) = *(a4 + 64);
  *(a1 + 72) = v14 + a4[9];
  *(a1 + 80) = v14 + a4[10];
  *(a1 + 88) = *(a4 + 88);
  if ((a5 & 1) == 0)
  {
    *(a1 + 104) = v24;
  }

  *(a1 + 96) = *(a4 + 96);
}

uint64_t sub_1000570A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  if ((*(a1 + 24) & 0x1F0) == 0)
  {
    return sub_10004F448(a1, a2, a3, a4, a5, a6);
  }

  if (*(a1 + 28))
  {
    return sub_100057650(a1, a2, a3, a4, a5, a6);
  }

  return sub_1000570C4(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1000570C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v57 = 0u;
  v58 = 0u;
  v56 = 0u;
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_70;
  }

  *v59 = 0;
  memset(&v59[8], 0, 85);
  sub_100057BA4(&v56, v59);
  if (*&v59[56])
  {
    *&v59[64] = *&v59[56];
    operator delete(*&v59[56]);
  }

  if (*&v59[32])
  {
    *&v59[40] = *&v59[32];
    operator delete(*&v59[32]);
  }

  v52 = a4;
  v13 = v56.i64[1];
  v14 = *(&v58 + 1) + v58 - 1;
  v15 = v14 / 0x2A;
  v16 = *(v56.i64[1] + 8 * (v14 / 0x2A));
  v17 = 3 * (v14 % 0x2A);
  v18 = v16 + 32 * v17;
  *v18 = 0;
  *(v18 + 8) = a2;
  *(*(v13 + 8 * v15) + 32 * v17 + 16) = a2;
  *(*(v13 + 8 * v15) + 32 * v17 + 24) = a3;
  sub_10004FB5C((*(v13 + 8 * v15) + 32 * v17 + 56), *(a1 + 32));
  v19 = 0;
  v55 = 0;
  v20 = 0;
  v21 = *(&v58 + 1);
  v22 = v56.i64[1];
  v23 = *(&v58 + 1) + v58 - 1;
  v24 = v23 / 0x2A;
  v25 = 3 * (v23 % 0x2A);
  *(*(v56.i64[1] + 8 * v24) + 32 * v25 + 80) = v6;
  v53 = a3;
  v54 = a2;
  v26 = a3 - a2;
  v27 = *(v22 + 8 * v24) + 32 * v25;
  *(v27 + 88) = a5;
  *(v27 + 92) = a6;
  do
  {
    if ((++v20 & 0xFFF) == 0 && (v20 >> 12) >= v26)
    {
      sub_10004FB8C();
    }

    v29 = *(v56.i64[1] + 8 * ((v21 + v58 - 1) / 0x2AuLL)) + 96 * ((v21 + v58 - 1) % 0x2AuLL);
    v30 = *(v29 + 80);
    if (v30)
    {
      (*(*v30 + 16))(v30, v29);
    }

    v31 = *v29;
    if (*v29 <= -995)
    {
      if (v31 != -1000)
      {
        if (v31 == -999)
        {
          goto LABEL_52;
        }

        if (v31 != -995)
        {
          goto LABEL_72;
        }

        sub_100057D30(&v56, v29);
        goto LABEL_51;
      }

      v32 = *(v29 + 16);
      v34 = (a5 & 0x1000) == 0 || v32 == v53;
      v35 = v32 != v54 || (a5 & 0x20) == 0;
      if (!v35 || !v34)
      {
        goto LABEL_51;
      }

      v36 = v32 - *(v29 + 8);
      if (v19 <= v36)
      {
        v37 = v36;
      }

      else
      {
        v37 = v19;
      }

      if (v55)
      {
        v19 = v37;
      }

      else
      {
        v19 = v36;
      }

      if (v19 != v26)
      {
        sub_100057CA8(&v56);
        v55 = 1;
        goto LABEL_52;
      }

      v38 = v56.i64[1];
      v39 = v57;
      if (v57 == v56.i64[1])
      {
        v39 = v56.i64[1];
      }

      else
      {
        v40 = (v56.i64[1] + 8 * (v58 / 0x2A));
        v41 = (*v40 + 96 * (v58 % 0x2A));
        v42 = *(v56.i64[1] + 8 * ((*(&v58 + 1) + v58) / 0x2AuLL)) + 96 * ((*(&v58 + 1) + v58) % 0x2AuLL);
        if (v41 != v42)
        {
          do
          {
            sub_10004FF68(&v56, v41);
            v41 += 12;
            if ((v41 - *v40) == 4032)
            {
              v43 = v40[1];
              ++v40;
              v41 = v43;
            }
          }

          while (v41 != v42);
          v38 = v56.i64[1];
          v39 = v57;
        }
      }

      *(&v58 + 1) = 0;
      v47 = (v39 - v38) >> 3;
      if (v47 >= 3)
      {
        do
        {
          operator delete(*v38);
          v38 = (v56.i64[1] + 8);
          v56.i64[1] = v38;
          v47 = (v57 - v38) >> 3;
        }

        while (v47 > 2);
      }

      if (v47 == 1)
      {
        v48 = 21;
      }

      else
      {
        if (v47 != 2)
        {
LABEL_67:
          v55 = 1;
          v19 = v26;
          goto LABEL_52;
        }

        v48 = 42;
      }

      *&v58 = v48;
      goto LABEL_67;
    }

    if (v31 <= -993)
    {
      if (v31 == -994)
      {
        goto LABEL_52;
      }

      if (v31 != -993)
      {
        goto LABEL_72;
      }

LABEL_51:
      sub_100057CA8(&v56);
      goto LABEL_52;
    }

    if (v31 == -992)
    {
      *&v44 = 0xAAAAAAAAAAAAAAAALL;
      *(&v44 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v59[64] = v44;
      *&v59[80] = v44;
      *&v59[32] = v44;
      *&v59[48] = v44;
      *v59 = v44;
      *&v59[16] = v44;
      v45 = *(v29 + 16);
      *v59 = *v29;
      *&v59[16] = v45;
      memset(&v59[32], 0, 24);
      sub_1000503AC(&v59[32], *(v29 + 32), *(v29 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v29 + 40) - *(v29 + 32)) >> 3));
      memset(&v59[56], 0, 24);
      sub_10005042C(&v59[56], *(v29 + 56), *(v29 + 64), (*(v29 + 64) - *(v29 + 56)) >> 4);
      v46 = *(v29 + 80);
      *&v59[85] = *(v29 + 85);
      *&v59[80] = v46;
      (*(**(v29 + 80) + 24))(*(v29 + 80), 1, v29);
      (*(**&v59[80] + 24))(*&v59[80], 0, v59);
      sub_100057BA4(&v56, v59);
      if (*&v59[56])
      {
        *&v59[64] = *&v59[56];
        operator delete(*&v59[56]);
      }

      if (*&v59[32])
      {
        *&v59[40] = *&v59[32];
        operator delete(*&v59[32]);
      }
    }

    else if (v31 != -991)
    {
LABEL_72:
      sub_10004FBE4();
    }

LABEL_52:
    v21 = *(&v58 + 1);
  }

  while (*(&v58 + 1));
  if ((v55 & 1) == 0)
  {
LABEL_70:
    v50 = 0;
    goto LABEL_71;
  }

  v49 = *v52;
  *v49 = v54;
  *(v49 + 8) = v54 + v19;
  v50 = 1;
  *(v49 + 16) = 1;
LABEL_71:
  sub_10005876C(&v56);
  return v50;
}

uint64_t sub_100057650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v46 = 0;
  v47 = 0;
  v48 = 0;
  HIDWORD(v54[4]) = -1431655766;
  *v52 = 0xAAAAAAAA00000000;
  memset(&v52[8], 0, 32);
  v53 = 0u;
  memset(v54, 0, 36);
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_47;
  }

  *(&v50 + 1) = a3;
  v51 = 0xAAAAAAAAAAAAAA00;
  *&v50 = a3;
  *v49 = 0;
  memset(&v49[8], 0, 85);
  sub_10004FA44(&v46, v49);
  if (*&v49[56])
  {
    *&v49[64] = *&v49[56];
    operator delete(*&v49[56]);
  }

  if (*&v49[32])
  {
    *&v49[40] = *&v49[32];
    operator delete(*&v49[32]);
  }

  v43 = a4;
  v13 = v47;
  *(v47 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  sub_10004FB20(v13 - 8, *(a1 + 28), &v50);
  sub_10004FB5C(v47 - 5, *(a1 + 32));
  v14 = 0;
  v45 = 0;
  v15 = 0;
  v44 = a3;
  v16 = a3 - a2;
  v17 = v47;
  *(v47 - 2) = v6;
  *(v17 - 2) = a5;
  *(v17 - 4) = a6;
  do
  {
    v18 = (++v15 & 0xFFF) != 0 || (v15 >> 12) < v16;
    if (!v18)
    {
      sub_10004FB8C();
    }

    v20 = v17 - 2;
    v19 = *(v17 - 2);
    v21 = v17 - 12;
    if (v19)
    {
      (*(*v19 + 16))(v19, v17 - 12);
    }

    v22 = *v21;
    if (*v21 > -994)
    {
      switch(v22)
      {
        case -993:
          goto LABEL_33;
        case -992:
          *&v31 = 0xAAAAAAAAAAAAAAAALL;
          *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v49[64] = v31;
          *&v49[80] = v31;
          *&v49[32] = v31;
          *&v49[48] = v31;
          *v49 = v31;
          *&v49[16] = v31;
          v32 = *(v17 - 5);
          *v49 = *v21;
          *&v49[16] = v32;
          memset(&v49[32], 0, 24);
          sub_1000503AC(&v49[32], *(v17 - 8), *(v17 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v17 - 7) - *(v17 - 8)) >> 3));
          memset(&v49[56], 0, 24);
          sub_10005042C(&v49[56], *(v17 - 5), *(v17 - 4), (*(v17 - 4) - *(v17 - 5)) >> 4);
          v33 = *v20;
          *&v49[85] = *(v17 - 11);
          *&v49[80] = v33;
          (*(**v20 + 24))(*v20, 1, v17 - 12);
          (*(**&v49[80] + 24))(*&v49[80], 0, v49);
          sub_10004FA44(&v46, v49);
          if (*&v49[56])
          {
            *&v49[64] = *&v49[56];
            operator delete(*&v49[56]);
          }

          if (*&v49[32])
          {
            *&v49[40] = *&v49[32];
            operator delete(*&v49[32]);
          }

          break;
        case -991:
          break;
        default:
LABEL_53:
          sub_10004FBE4();
      }
    }

    else
    {
      if ((v22 + 995) < 2)
      {
        goto LABEL_38;
      }

      if (v22 != -1000)
      {
        goto LABEL_53;
      }

      v23 = *(v17 - 10);
      if ((a5 & 0x20) != 0 && v23 == a2 || (a5 & 0x1000) != 0 && v23 != v44)
      {
LABEL_33:
        v30 = v47 - 12;
        sub_10004FF68(&v46, v47 - 12);
        v47 = v30;
        goto LABEL_38;
      }

      v24 = v14;
      v25 = v23 - *(v17 - 11);
      if ((v45 & (v24 >= v25)) == 0)
      {
        v26 = *(v17 - 5);
        *v52 = *v21;
        *&v52[16] = v26;
        if (v52 != v21)
        {
          sub_100058920(&v52[32], *(v17 - 8), *(v17 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v17 - 7) - *(v17 - 8)) >> 3));
          sub_100058AAC(v54, *(v17 - 5), *(v17 - 4), (*(v17 - 4) - *(v17 - 5)) >> 4);
        }

        v27 = *v20;
        *(&v54[3] + 5) = *(v17 - 11);
        v54[3] = v27;
        v24 = v25;
      }

      v28 = v47;
      if (v24 == v16)
      {
        v29 = v46;
        while (v28 != v29)
        {
          v28 -= 12;
          sub_10004FF68(&v46, v28);
        }

        v47 = v29;
        v45 = 1;
        v14 = v16;
      }

      else
      {
        v14 = v24;
        v34 = v47 - 12;
        sub_10004FF68(&v46, v47 - 12);
        v47 = v34;
        v45 = 1;
      }
    }

LABEL_38:
    v17 = v47;
  }

  while (v46 != v47);
  if ((v45 & 1) == 0)
  {
LABEL_47:
    v41 = 0;
    goto LABEL_48;
  }

  v35 = *v43;
  *v35 = a2;
  *(v35 + 8) = a2 + v14;
  *(v35 + 16) = 1;
  if (v53 != *&v52[32])
  {
    v36 = 0xAAAAAAAAAAAAAAABLL * ((v53 - *&v52[32]) >> 3);
    v37 = (*&v52[32] + 16);
    v38 = 1;
    do
    {
      v39 = v35 + 24 * v38;
      *v39 = *(v37 - 1);
      v40 = *v37;
      v37 += 24;
      *(v39 + 16) = v40;
      v18 = v36 > v38++;
    }

    while (v18);
  }

  v41 = 1;
LABEL_48:
  if (v54[0])
  {
    v54[1] = v54[0];
    operator delete(v54[0]);
  }

  if (*&v52[32])
  {
    *&v53 = *&v52[32];
    operator delete(*&v52[32]);
  }

  *v52 = &v46;
  sub_1000504DC(v52);
  return v41;
}

void sub_100057B44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char *a31)
{
  sub_10004FADC(&a15);
  sub_10004FADC(&a31);
  a31 = &a12;
  sub_1000504DC(&a31);
  _Unwind_Resume(a1);
}

__n128 sub_100057BA4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 42 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    sub_100057E24(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = *(v6 + 8 * (v8 / 0x2A)) + 96 * (v8 % 0x2A);
  v10 = *(a2 + 16);
  *v9 = *a2;
  *(v9 + 16) = v10;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v9 + 32) = 0;
  *(v9 + 32) = *(a2 + 32);
  *(v9 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v9 + 56) = 0;
  *(v9 + 64) = 0;
  *(v9 + 72) = 0;
  result = *(a2 + 56);
  *(v9 + 56) = result;
  *(v9 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v12 = *(a2 + 80);
  *(v9 + 85) = *(a2 + 85);
  *(v9 + 80) = v12;
  ++*(a1 + 40);
  return result;
}

uint64_t sub_100057CA8(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  sub_10004FF68(a1, (*(a1[1] + 8 * (v2 / 0x2A)) + 96 * (v2 % 0x2A)));
  --a1[5];

  return sub_100058470(a1, 1);
}

int64x2_t sub_100057D30(int64x2_t *a1, uint64_t a2)
{
  v4 = a1[2].u64[0];
  if (!v4)
  {
    sub_1000584E8(a1);
    v4 = a1[2].u64[0];
  }

  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 / 0x2A));
  v7 = *v6 + 96 * (v4 % 0x2A);
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4032;
  }

  v8 = *(a2 + 16);
  *(v7 - 96) = *a2;
  *(v7 - 80) = v8;
  *(v7 - 56) = 0;
  *(v7 - 48) = 0;
  *(v7 - 64) = 0;
  *(v7 - 64) = *(a2 + 32);
  *(v7 - 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v7 - 40) = 0;
  *(v7 - 32) = 0;
  *(v7 - 24) = 0;
  *(v7 - 40) = *(a2 + 56);
  *(v7 - 24) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v9 = *(a2 + 80);
  *(v7 - 11) = *(a2 + 85);
  *(v7 - 16) = v9;
  result = vaddq_s64(a1[2], xmmword_1001423E0);
  a1[2] = result;
  return result;
}

void *sub_100057E24(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x2A;
  v3 = v1 - 42;
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
    sub_100003C10(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_100058048(a1, &v10);
}

void sub_100057FF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_100058048(void *result, void *a2)
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

      sub_100003C10(result, v11);
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

const void **sub_100058150(const void **result, void *a2)
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

      sub_100003C10(result, v9);
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

void *sub_10005825C(void *result, void *a2)
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

      sub_100003C10(result[4], v11);
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

const void **sub_100058364(const void **result, void *a2)
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

      sub_100003C10(result[4], v9);
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

uint64_t sub_100058470(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 42 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x2A)
  {
    a2 = 1;
  }

  if (v5 < 0x54)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

const void **sub_1000584E8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 42 * ((v2 - v1) >> 3) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x2A)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v11[4] = a1;
    sub_100003C10(a1, v10);
  }

  *(a1 + 32) = v5 + 42;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return sub_100058150(a1, v11);
}

void sub_100058718(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10005876C(void *a1)
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
    v6 = &v2[v5 / 0x2A];
    v7 = *v6 + 96 * (v5 % 0x2A);
    v8 = v2[(a1[5] + v5) / 0x2A] + 96 * ((a1[5] + v5) % 0x2A);
    if (v7 != v8)
    {
      do
      {
        sub_10004FF68(a1, v7);
        v7 += 96;
        if (v7 - *v6 == 4032)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 21;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 42;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return sub_1000588D0(a1);
}

uint64_t sub_1000588D0(uint64_t a1)
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

_BYTE *sub_100058920(void *a1, uint64_t a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - result) >> 3) < a4)
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

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      sub_10004F9A0(a1, v11);
    }

    sub_10002C63C();
  }

  v12 = a1[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 3) >= a4)
  {
    while (v5 != a3)
    {
      *result = *v5;
      result[16] = *(v5 + 16);
      v5 += 24;
      result += 24;
    }

    a1[1] = result;
  }

  else
  {
    v13 = (a2 + v12 - result);
    if (v12 != result)
    {
      do
      {
        *result = *v5;
        result[16] = *(v5 + 16);
        v5 += 24;
        result += 24;
      }

      while (v5 != v13);
    }

    if (v13 == a3)
    {
      v14 = v12;
    }

    else
    {
      v14 = v12;
      do
      {
        v15 = *v13;
        *(v12 + 16) = *(v13 + 2);
        *v12 = v15;
        v12 += 24;
        v13 = (v13 + 24);
        v14 += 24;
      }

      while (v13 != a3);
    }

    a1[1] = v14;
  }

  return result;
}

char *sub_100058AAC(char **a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
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

      sub_1000504A0(a1, v10);
    }

    sub_10002C63C();
  }

  v11 = a1[1];
  if (a4 <= (v11 - result) >> 4)
  {
    while (v5 != a3)
    {
      v17 = *v5;
      v18 = v5[1];
      v5 += 2;
      *result = v17;
      *(result + 1) = v18;
      result += 16;
    }

    a1[1] = result;
  }

  else
  {
    v12 = (a2 + v11 - result);
    if (v11 != result)
    {
      do
      {
        v13 = *v5;
        v14 = v5[1];
        v5 += 2;
        *result = v13;
        *(result + 1) = v14;
        result += 16;
      }

      while (v5 != v12);
    }

    if (v12 == a3)
    {
      v15 = v11;
    }

    else
    {
      v15 = v11;
      do
      {
        v16 = *v12++;
        *v11 = v16;
        v11 += 16;
        v15 += 16;
      }

      while (v12 != a3);
    }

    a1[1] = v15;
  }

  return result;
}

void sub_100058BD0(uint64_t *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_100058C0C(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

void sub_100058C0C(uint64_t *a1, unint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 24 * a2;
      v11 = 24 * a2;
      do
      {
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
        v4 += 24;
        v11 -= 24;
      }

      while (v11);
      v4 = v10;
    }

    a1[1] = v4;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_10002C63C();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10004F9EC(a1, v9);
    }

    v12 = 24 * a2;
    v13 = 24 * v6;
    do
    {
      *v13 = 0;
      *(v13 + 8) = 0;
      *(v13 + 16) = 0;
      v13 += 24;
      v12 -= 24;
    }

    while (v12);
    v14 = *a1;
    v15 = a1[1];
    v16 = 24 * v6 + *a1 - v15;
    if (v15 != *a1)
    {
      v17 = 24 * v6 + *a1 - v15;
      do
      {
        v18 = *v14;
        *(v17 + 16) = v14[2];
        *v17 = v18;
        v17 += 24;
        v14 += 3;
      }

      while (v14 != v15);
      v14 = *a1;
    }

    *a1 = v16;
    a1[1] = 24 * v6 + 24 * a2;
    a1[2] = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

unsigned __int8 *sub_100058D88(unsigned __int8 *result, int *a2)
{
  v2 = result;
  v3 = *result;
  if (v3 > 5)
  {
    if (v3 == 7)
    {
      v4 = *(result + 1);
      goto LABEL_10;
    }

    if (v3 == 6)
    {
      goto LABEL_4;
    }

LABEL_7:
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = sub_10002CB3C(v2);
    sub_10000459C(&v9, v6);
    v7 = std::string::insert(&v9, 0, "type must be number, but is ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v11 = v7->__r_.__value_.__r.__words[2];
    v10 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    sub_10002C9C4(302, &v10, exception);
  }

  if (v3 == 4)
  {
    v4 = result[8];
    goto LABEL_10;
  }

  if (v3 != 5)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = *(result + 2);
LABEL_10:
  *a2 = v4;
  return result;
}

void sub_100058EB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t *sub_100058F14(uint64_t *a1)
{
  v5 = a1;
  v1 = *a1;
  v2 = qword_100192D40;
  if (os_log_type_enabled(qword_100192D40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, " *** DAILY ROLLOVER EXPIRATION COMPLETE ***", buf, 2u);
  }

  v3 = *(v1 + 280);
  if (v3)
  {
    (*(*v3 + 48))(v3);
  }

  sub_10004B814(v1);
  sub_1000C5B18(*(v1 + 96));
  return sub_100046828(&v5);
}

void sub_100058FF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100046828(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10005900C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = 0xAAAAAAAAAAAAAAAALL;
  *(a5 + 8) = 0;
  *a5 = 0;
  sub_10000298C(a5);
  sub_10000298C(a5);
  sub_100003538(v11, a3);
  sub_10000A638(a1, a2, v11, a4, v12);
  sub_10000A72C(v12, 1, a5);
  sub_10000797C(&v13);
  sub_100004FBC(v12);
  return sub_100004FBC(v11);
}

void sub_1000590EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_10000797C(v14 + 40);
  sub_100004FBC(&a13);
  sub_100004FBC(&a9);
  sub_10002C5F4(v13);
  _Unwind_Resume(a1);
}

void sub_1000591F4()
{
  v0[0] = 0;
  v0[1] = v0;
  v0[2] = 0x3802000000;
  v0[3] = sub_100059478;
  v0[4] = sub_1000594D0;
  v1[0] = 0xAAAAAAAAAAAAAAAALL;
  v1[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100013CA0(v1, 0, 0, 0, 1);
}

void sub_100059438(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_10002C5F4(va);
  _Block_object_dispose(va1, 8);
  sub_10002C5F4((v2 + 40));
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_100059478(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 40;
  *(a1 + 40) = *(a2 + 40);
  v3 = (a1 + 40);
  *(a1 + 48) = *(a2 + 48);
  sub_10000298C((a2 + 40));
  *v2 = 0;
  *(v2 + 8) = 0;

  return sub_10000298C(v3);
}

void sub_1000594D0(uint64_t a1)
{
  sub_10000298C((a1 + 40));
  v2 = *(a1 + 40);

  sub_1000048FC((a1 + 48), v2);
}

uint64_t sub_100059510(uint64_t a1, char *a2, void *a3)
{
  if (sub_100059128(a2))
  {
    string_ptr = xpc_string_get_string_ptr(a3);
    v16[1] = string_ptr;
    if (string_ptr)
    {
      v7 = string_ptr;
      if (strncmp(a2, "com.apple.message.domain", 0x18uLL))
      {
        if (*(a1 + 40) != 1 || strncmp(a2, "com.apple.message.value", 0x17uLL))
        {
          sub_10001AAEC(v14);
        }

        v9 = strtod(v7, 0);
        v10 = qword_100192D48;
        if (os_log_type_enabled(qword_100192D48, OS_LOG_TYPE_DEBUG))
        {
          sub_10011BDB8(v7, v10, v9);
        }

        v15[0] = 7;
        *v16 = v9;
        sub_10000298C(v15);
        sub_10000298C(v15);
        v11 = sub_1000071E4(*(*(a1 + 32) + 8) + 40, a2);
        sub_10000298C(v15);
        v12 = *v11;
        *v11 = v15[0];
        v15[0] = v12;
        v13 = *(v11 + 8);
        *(v11 + 8) = v16[0];
        v16[0] = v13;
        sub_10000298C(v11);
        sub_10000298C(v15);
        sub_1000048FC(v16, v15[0]);
      }
    }
  }

  return 1;
}

void sub_100059704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002C5F4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10005972C()
{
  v4 = -1431655766;
  sub_10005BABC(&v4, 0x7B2u, 1u, 1u);
  v0 = sub_10005BD2C();
  v1 = (14 - WORD1(v0)) / 12;
  v3 = WORD2(v0) + 365 * (v0 - v1 + 4800) + ((v0 - v1 + 4800) >> 2) - (v0 - v1 + 4800) / 0x64u + (v0 - v1 + 4800) / 0x190u - 32045 + ((858993460 * (153 * (WORD1(v0) + 12 * v1 - 3) + 2)) >> 32);
  return sub_100059844(&v3, &v4);
}

uint64_t sub_100059844(unsigned int *a1, int *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((v2 + 2) >= 3 && (v3 + 2) >= 3)
  {
    return v2 - v3;
  }

  v8 = *a2;
  v9 = v2;
  v5 = sub_10005BCA8(&v9, &v8);
  v6 = 0x7FFFFFFFFFFFFFFELL;
  if (!v5)
  {
    v6 = 0x8000000000000000;
  }

  if (v5 == -1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return v6;
  }
}

__n128 sub_100059918@<Q0>(std::chrono::duration<long long, std::ratio<1, 1000000>>::rep a1@<X0>, uint64_t a2@<X8>)
{
  __t.__d_.__rep_ = a1;
  v6 = std::chrono::system_clock::to_time_t(&__t);
  v3 = gmtime(&v6);
  v4 = *&v3->tm_mon;
  *a2 = *&v3->tm_sec;
  *(a2 + 16) = v4;
  result = *&v3->tm_isdst;
  *(a2 + 32) = result;
  *(a2 + 48) = v3->tm_zone;
  return result;
}

std::chrono::system_clock::time_point sub_10005999C(uint64_t a1)
{
  v1 = *(a1 + 16);
  *&v4.tm_sec = *a1;
  *&v4.tm_mon = v1;
  *&v4.tm_isdst = *(a1 + 32);
  v4.tm_zone = *(a1 + 48);
  v4.tm_hour = 0;
  ++v4.tm_mday;
  *&v4.tm_sec = 0;
  v2 = mktime(&v4);
  return std::chrono::system_clock::from_time_t(v2 - timezone);
}

std::chrono::system_clock::time_point sub_100059A28(uint64_t a1)
{
  *&v4.tm_sec = *a1;
  *&v4.tm_mon = *(a1 + 16);
  v1 = (8 - *(a1 + 24)) % 7;
  if (!v1)
  {
    v1 = 7;
  }

  v4.tm_wday = *(a1 + 24);
  *&v4.tm_yday = *(a1 + 28);
  *&v4.tm_gmtoff = *(a1 + 40);
  v4.tm_hour = 0;
  v4.tm_mday += v1;
  *&v4.tm_sec = 0;
  v2 = mktime(&v4);
  return std::chrono::system_clock::from_time_t(v2 - timezone);
}

std::chrono::system_clock::time_point sub_100059AF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  *&v4.tm_sec = *a1;
  *&v4.tm_mon = v1;
  *&v4.tm_isdst = *(a1 + 32);
  v4.tm_zone = *(a1 + 48);
  v4.tm_mon = v1 + 1;
  if (v1 >= 11)
  {
    v4.tm_mon = 0;
    ++v4.tm_year;
  }

  *&v4.tm_sec = xmmword_100142B00;
  v2 = mktime(&v4);
  return std::chrono::system_clock::from_time_t(v2 - timezone);
}

std::chrono::system_clock::time_point sub_100059BA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  *&v4.tm_year = *(a1 + 20);
  *(&v4.tm_isdst + 1) = *(a1 + 36);
  HIDWORD(v4.tm_zone) = *(a1 + 52);
  v4.tm_mon = 3 * ((v1 + 3) / 3);
  if (v4.tm_mon >= 12)
  {
    v4.tm_mon = 0;
    ++v4.tm_year;
  }

  *&v4.tm_sec = xmmword_100142B00;
  v2 = mktime(&v4);
  return std::chrono::system_clock::from_time_t(v2 - timezone);
}

uint64_t sub_100059C64(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t sub_100059D80(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  std::locale::~locale((a1 + 24));

  return std::istream::~istream();
}

_WORD *sub_100059E9C(_WORD *result, unsigned int a2)
{
  if (a2 <= 0x577)
  {
    v2 = *result;
    goto LABEL_3;
  }

  if (a2 >> 4 >= 0x271)
  {
    v3 = *result;
LABEL_3:
    sub_100059ED0();
  }

  *result = a2;
  return result;
}