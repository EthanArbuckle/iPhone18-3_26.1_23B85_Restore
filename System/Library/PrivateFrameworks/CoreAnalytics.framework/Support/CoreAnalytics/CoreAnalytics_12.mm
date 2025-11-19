void sub_1000EAD5C(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000EAD98(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000EADD4(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000EAE10(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000EAE4C(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000EAF48(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void *sub_1000EAF58(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = dispatch_queue_create("analyticsd.ConfigurerQueue", 0);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = v10;
  if (v10)
  {
    v11 = v10;
    dispatch_retain(v10);
    dispatch_release(v11);
  }

  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  v12 = a3[1];
  a1[6] = *a3;
  a1[7] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = a2[1];
  a1[8] = *a2;
  a1[9] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = a4[1];
  a1[10] = *a4;
  a1[11] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = a5[1];
  a1[12] = *a5;
  a1[13] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_1000EB030(void *a1@<X0>, NSObject **a2@<X8>)
{
  v4 = dispatch_group_create();
  v5 = v4;
  *a2 = v4;
  if (v4)
  {
    dispatch_retain(v4);
    dispatch_group_enter(v5);
  }

  v6[0] = 0xAAAAAAAAAAAAAAAALL;
  v6[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v6, a1);
  operator new();
}

void sub_1000EB150(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1000EB160(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1000EE8A4;
  v5[3] = &unk_100189C78;
  v5[4] = a1;
  v5[5] = &v4;
  v6 = v5;
  *a2 = 0xAAAAAAAAAAAAAA00;
  *(a2 + 8) = 0;
  sub_10000298C(a2);
  sub_10000298C(a2);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000216A4;
  block[3] = &unk_100189C98;
  block[4] = a2;
  block[5] = &v6;
  dispatch_sync(v3, block);
}

void sub_1000EB27C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1000EEEE8;
  v5[3] = &unk_100189D48;
  v5[4] = a1;
  v5[5] = &v4;
  v6 = v5;
  *a2 = 0xAAAAAAAAAAAAAA00;
  *(a2 + 8) = 0;
  sub_10000298C(a2);
  sub_10000298C(a2);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000216A4;
  block[3] = &unk_100189C98;
  block[4] = a2;
  block[5] = &v6;
  dispatch_sync(v3, block);
}

void sub_1000EB398(void *a1, __int128 *a2)
{
  v2 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v3[0] = 0xAAAAAAAAAAAAAAAALL;
  v3[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v3, a1);
  operator new();
}

void sub_1000EB4A8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1000EB4B8(uint64_t a1, char a2)
{
  v4 = a2;
  v3 = &v4;
  v2 = *(a1 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000EF7FC;
  block[3] = &unk_100189D68;
  block[4] = a1;
  block[5] = &v3;
  dispatch_sync(v2, block);
}

void sub_1000EB568(void *a1@<X0>, NSObject **a2@<X8>)
{
  v4 = dispatch_group_create();
  v5 = v4;
  *a2 = v4;
  if (v4)
  {
    dispatch_retain(v4);
    dispatch_group_enter(v5);
  }

  v6[0] = 0xAAAAAAAAAAAAAAAALL;
  v6[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v6, a1);
  operator new();
}

void sub_1000EB688(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1000EB698(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = a1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000EF948;
  block[3] = &unk_100189D88;
  block[4] = a1;
  block[5] = &v2;
  dispatch_sync(v1, block);
}

void sub_1000EB73C(void *a1@<X0>, NSObject **a2@<X8>)
{
  v4 = dispatch_group_create();
  v5 = v4;
  *a2 = v4;
  if (v4)
  {
    dispatch_retain(v4);
    dispatch_group_enter(v5);
  }

  v6[0] = 0xAAAAAAAAAAAAAAAALL;
  v6[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v6, a1);
  operator new();
}

void sub_1000EB85C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1000EB86C()
{
  *&v0 = 0xAAAAAAAAAAAAAAAALL;
  *(&v0 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v2[0] = 0xAAAAAAAAAAAAAA00;
  v3 = v0;
  v1 = off_100187FB8;
  v2[1] = 0;
  sub_10000298C(v2);
  sub_10000298C(v2);
  LOBYTE(v3) = 0;
  *(&v3 + 1) = 0;
  sub_10000298C(&v3);
  sub_10000298C(&v3);
  sub_100048E34(&v4);
}

void sub_1000EBF64(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1000EBF7C(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  if (!*a2)
  {
    *a3 = 0;
    a3[1] = 0;
    return;
  }

  memset(v13, 170, sizeof(v13));
  sub_1000EC160(a1, a2, v13);
  v6 = v13[0];
  if (v13[0] && (v13[2] & 1) == 0)
  {
    v8 = qword_100192D78;
    if (os_log_type_enabled(qword_100192D78, OS_LOG_TYPE_DEFAULT))
    {
      v9 = (*a2 + 8);
      if (*(*a2 + 31) < 0)
      {
        v9 = *v9;
      }

      *buf = 136446210;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Configurer] -- Config store does NOT already contain config '%{public}s'. Proceeding and attempting to store", buf, 0xCu);
    }

    v10 = (*(**(a1 + 64) + 80))(*(a1 + 64), v6);
    v11 = qword_100192D78;
    if ((v10 & 1) == 0)
    {
      if (os_log_type_enabled(qword_100192D78, OS_LOG_TYPE_ERROR))
      {
        sub_1000EFD50(a2);
      }

      *a3 = 0;
      a3[1] = 0;
      v7 = v13[1];
      if (v13[1])
      {
        goto LABEL_6;
      }

      return;
    }

    if (os_log_type_enabled(qword_100192D78, OS_LOG_TYPE_DEFAULT))
    {
      v12 = (*a2 + 8);
      if (*(*a2 + 31) < 0)
      {
        v12 = *v12;
      }

      *buf = 136446210;
      v15 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[Configurer] -- Try store config '%{public}s': success!", buf, 0xCu);
    }
  }

  v7 = v13[1];
  *a3 = v6;
  a3[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_6:
    sub_10000786C(v7);
  }
}

void sub_1000EC160(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *a2;
  if (!*a2)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    return;
  }

  v14 = 0xAAAAAAAAAAAAAAAALL;
  v15 = 0xAAAAAAAAAAAAAAAALL;
  sub_1000337FC(v5, &v14);
  v7 = v14;
  v8 = qword_100192D78;
  if (v14)
  {
    if (os_log_type_enabled(qword_100192D78, OS_LOG_TYPE_DEFAULT))
    {
      v9 = (*a2 + 8);
      if (*(*a2 + 31) < 0)
      {
        v9 = *v9;
      }

      *buf = 136446210;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Configurer] -- Config '%{public}s' loaded successfully!", buf, 0xCu);
      v7 = v14;
    }

    if (sub_100114348(*(a1 + 64), v7))
    {
      v10 = qword_100192D78;
      if (os_log_type_enabled(qword_100192D78, OS_LOG_TYPE_DEFAULT))
      {
        v11 = (*a2 + 8);
        if (*(*a2 + 31) < 0)
        {
          v11 = *v11;
        }

        *buf = 136446210;
        v17 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[Configurer] -- Config store contains '%{public}s': success; already present", buf, 0xCu);
      }

      v12 = v15;
      *a3 = v14;
      *(a3 + 8) = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *(a3 + 16) = 1;
      goto LABEL_22;
    }

    v13 = v15;
    *a3 = v14;
    *(a3 + 8) = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100192D78, OS_LOG_TYPE_ERROR))
    {
      sub_1000EFDCC(a2);
    }

    *a3 = 0;
    *(a3 + 8) = 0;
  }

  *(a3 + 16) = 0;
LABEL_22:
  if (v15)
  {
    sub_10000786C(v15);
  }
}

void sub_1000EC340(uint64_t a1)
{
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7 = 0xAAAAAAAAAAAAAA00;
  v8 = v2;
  v6[3] = off_100187FB8;
  sub_10000298C(&v7);
  sub_10000298C(&v7);
  LOBYTE(v8) = 0;
  *(&v8 + 1) = 0;
  sub_10000298C(&v8);
  sub_10000298C(&v8);
  memset(v6, 170, 24);
  (*(**(a1 + 64) + 96))(v6);
  v4 = v6[0];
  for (i = v6[1]; v4 != i; v4 += 16)
  {
    *&v9[0] = 0xAAAAAAAAAAAAAAAALL;
    *(&v9[0] + 1) = 0xAAAAAAAAAAAAAAAALL;
    sub_10000FF70(v9, v4);
    if (os_log_type_enabled(qword_100192D78, OS_LOG_TYPE_DEFAULT))
    {
      sub_100017DF0(__p);
    }

    sub_10000298C(v9);
    sub_1000048FC(v9 + 1, LOBYTE(v9[0]));
  }

  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9[0] = v5;
  v9[1] = v5;
  sub_1000ECDD4();
}

void sub_1000ECDAC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1000EDD78(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1000EDD98(uint64_t a1, uint64_t a2, dispatch_object_t *a3)
{
  v5 = qword_100192D78;
  if (os_log_type_enabled(qword_100192D78, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(object) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Configurer] === Notifying observers configuration will change", &object, 2u);
  }

  v6 = *(a1 + 24);
  for (i = *(a1 + 32); v6 != i; v6 += 2)
  {
    v8 = v6[1];
    if (v8)
    {
      v9 = std::__shared_weak_count::lock(v8);
      if (v9)
      {
        v10 = v9;
        v11 = *v6;
        if (*v6)
        {
          object = 0xAAAAAAAAAAAAAAAALL;
          (*(*v11 + 24))(&object);
          if (object)
          {
            sub_100056904(a3, &object);
            if (object)
            {
              dispatch_release(object);
            }
          }
        }

        sub_10000786C(v10);
      }
    }
  }

  v12 = qword_100192D78;
  if (os_log_type_enabled(qword_100192D78, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(object) = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[Configurer] === Completed notifying observers configuration will change", &object, 2u);
  }
}

void sub_1000EDF10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  sub_10000786C(v9);
  _Unwind_Resume(a1);
}

void sub_1000EDF38(uint64_t a1, uint64_t a2, dispatch_object_t *a3)
{
  v5 = qword_100192D78;
  if (os_log_type_enabled(qword_100192D78, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(object) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Configurer] === Notifying observers configuration conditions will change", &object, 2u);
  }

  v6 = *(a1 + 24);
  for (i = *(a1 + 32); v6 != i; v6 += 2)
  {
    v8 = v6[1];
    if (v8)
    {
      v9 = std::__shared_weak_count::lock(v8);
      if (v9)
      {
        v10 = v9;
        v11 = *v6;
        if (*v6)
        {
          object = 0xAAAAAAAAAAAAAAAALL;
          (*(*v11 + 32))(&object);
          if (object)
          {
            sub_100056904(a3, &object);
            if (object)
            {
              dispatch_release(object);
            }
          }
        }

        sub_10000786C(v10);
      }
    }
  }
}

void sub_1000EE074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  sub_10000786C(v9);
  _Unwind_Resume(a1);
}

void sub_1000EE09C(uint64_t a1, uint64_t a2, dispatch_object_t *a3)
{
  v5 = qword_100192D78;
  if (os_log_type_enabled(qword_100192D78, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(object) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Configurer] === Notifying observers new configuration activated", &object, 2u);
  }

  v6 = *(a1 + 24);
  for (i = *(a1 + 32); v6 != i; v6 += 2)
  {
    v8 = v6[1];
    if (v8)
    {
      v9 = std::__shared_weak_count::lock(v8);
      if (v9)
      {
        v10 = v9;
        v11 = *v6;
        if (*v6)
        {
          object = 0xAAAAAAAAAAAAAAAALL;
          (*(*v11 + 16))(&object);
          if (object)
          {
            sub_100056904(a3, &object);
            if (object)
            {
              dispatch_release(object);
            }
          }
        }

        sub_10000786C(v10);
      }
    }
  }
}

void sub_1000EE1D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  sub_10000786C(v9);
  _Unwind_Resume(a1);
}

void sub_1000EE200(uint64_t a1, uint64_t a2, dispatch_object_t *a3)
{
  v5 = qword_100192D78;
  if (os_log_type_enabled(qword_100192D78, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(object) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Configurer] === Notifying observers current configuration conditions changed", &object, 2u);
  }

  v6 = *(a1 + 24);
  for (i = *(a1 + 32); v6 != i; v6 += 2)
  {
    v8 = v6[1];
    if (v8)
    {
      v9 = std::__shared_weak_count::lock(v8);
      if (v9)
      {
        v10 = v9;
        v11 = *v6;
        if (*v6)
        {
          object = 0xAAAAAAAAAAAAAAAALL;
          (*(*v11 + 40))(&object);
          if (object)
          {
            sub_100056904(a3, &object);
            if (object)
            {
              dispatch_release(object);
            }
          }
        }

        sub_10000786C(v10);
      }
    }
  }
}

void sub_1000EE33C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  sub_10000786C(v9);
  _Unwind_Resume(a1);
}

void sub_1000EE364(uint64_t a1, uint64_t a2, dispatch_object_t *a3)
{
  v5 = sub_1000D5098();
  sub_1000D5230();
  v7 = sub_1000D5098();
  if (v5 != v7)
  {
    sub_1000EDF38(a1, v6, a3);
    if ((*(**(a1 + 64) + 168))(*(a1 + 64), v7))
    {
      sub_1000EE200(a1, v8, a3);
    }
  }
}

uint64_t sub_1000EE3F8(uint64_t a1)
{
  *a1 = off_100187FB8;
  sub_10000298C((a1 + 24));
  sub_1000048FC((a1 + 32), *(a1 + 24));
  sub_10000298C((a1 + 8));
  sub_1000048FC((a1 + 16), *(a1 + 8));

  return nullsub_13(a1);
}

uint64_t *sub_1000EE46C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 104);
    if (v2)
    {
      sub_10000786C(v2);
    }

    v3 = *(v1 + 88);
    if (v3)
    {
      sub_10000786C(v3);
    }

    v4 = *(v1 + 72);
    if (v4)
    {
      sub_10000786C(v4);
    }

    v5 = *(v1 + 56);
    if (v5)
    {
      sub_10000786C(v5);
    }

    v6 = (v1 + 24);
    sub_100030E9C(&v6);
    sub_100044430(v1);
    operator delete();
  }

  return result;
}

void sub_1000EE5A4(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, sub_1000EE678);
  __cxa_rethrow();
}

void sub_1000EE5E4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000EE638(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000EE678(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 104);
    if (v2)
    {
      sub_10000786C(v2);
    }

    v3 = *(v1 + 88);
    if (v3)
    {
      sub_10000786C(v3);
    }

    v4 = *(v1 + 72);
    if (v4)
    {
      sub_10000786C(v4);
    }

    v5 = *(v1 + 56);
    if (v5)
    {
      sub_10000786C(v5);
    }

    v6 = (v1 + 24);
    sub_100030E9C(&v6);
    sub_100044430(v1);
    operator delete();
  }

  return result;
}

uint64_t *sub_1000EE72C(uint64_t *a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9 = 0xAAAAAAAAAAAAAA00;
  v10 = v3;
  sub_10000298C(&v9);
  sub_10000298C(&v9);
  LOBYTE(v10) = 0;
  *(&v10 + 1) = 0;
  sub_10000298C(&v10);
  sub_10000298C(&v10);
  sub_1000EE200(v2, v4, (v1 + 8));
  v8 = off_100187FB8;
  sub_10000298C(&v10);
  sub_1000048FC(&v10 + 1, v10);
  sub_10000298C(&v9);
  sub_1000048FC(&v9 + 1, v9);
  nullsub_13(&v8);
  sub_100046828(&v7);
  return sub_1000120B8(&v6);
}

void sub_1000EE840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_1000EE3F8(&a11);
  sub_100046828(&a10);
  sub_1000120B8(&a9);
  _Unwind_Resume(a1);
}

void sub_1000EE864(uint64_t *a1)
{
  if (*a1)
  {
    sub_1000131AC(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_1000EE8A4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = **(a1 + 40);
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100013CA0(a2, 0, 0, 0, 2);
}

void sub_1000EEA68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void **a17)
{
  sub_10002C5F4(&a9);
  a17 = &a11;
  sub_1000131F8(&a17);
  a17 = &a14;
  sub_100004E54(&a17);
  sub_10002C5F4(v17);
  _Unwind_Resume(a1);
}

__n128 sub_1000EEB18(uint64_t a1, uint64_t a2)
{
  *a2 = off_100189CC8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1000EEB48(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2[0] = 0xAAAAAAAAAAAAAAAALL;
  v2[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100013CA0(v2, 0, 0, 0, 1);
}

void sub_1000EEE50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  sub_10002C5F4(va);
  sub_10002C5F4(va1);
  sub_10002C5F4(va2);
  _Unwind_Resume(a1);
}

uint64_t sub_1000EEE9C(uint64_t a1, uint64_t a2)
{
  if (sub_10002E128(a2, &off_100189D38))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1000EEEE8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(**(a1 + 40) + 64);
  if (v3)
  {
    memset(v5, 170, sizeof(v5));
    (*(*v3 + 96))(v5);
    *a2 = 0xAAAAAAAAAAAAAA00;
    *(a2 + 8) = 0;
    sub_10000298C(a2);
    sub_10000298C(a2);
    for (i = v5[0]; i != v5[1]; i += 16)
    {
      if (*i == 1)
      {
        sub_1000257AC(v6);
      }
    }

    v7 = v5;
    sub_100004E54(&v7);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    sub_10000298C(a2);

    sub_10000298C(a2);
  }
}

void sub_1000EF47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  for (i = 32; i != -32; i -= 32)
  {
    sub_10003E1D0(&STACK[0x210] + i);
  }

  sub_10002C5F4(v36);
  *(v37 - 224) = &a36;
  sub_100004E54((v37 - 224));
  _Unwind_Resume(a1);
}

uint64_t *sub_1000EF654(void **a1)
{
  v1 = *a1;
  v20 = a1;
  v21 = v1;
  v4 = *v1;
  v2 = v1 + 1;
  v3 = v4;
  v6 = v4[4];
  v5 = v4[5];
  if (v6 >= v5)
  {
    v8 = v3[3];
    v9 = (v6 - v8) >> 4;
    if ((v9 + 1) >> 60)
    {
      sub_10002C63C();
    }

    v10 = v5 - v8;
    v11 = v10 >> 3;
    if (v10 >> 3 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v12 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v22[4] = v3 + 3;
    if (v12)
    {
      sub_10000BED4((v3 + 3), v12);
    }

    v13 = (16 * v9);
    *v13 = *v2;
    v7 = 16 * v9 + 16;
    *v2 = 0;
    v2[1] = 0;
    v14 = v3[3];
    v15 = v3[4] - v14;
    v16 = v13 - v15;
    memcpy(v13 - v15, v14, v15);
    v17 = v3[3];
    v3[3] = v16;
    v3[4] = v7;
    v18 = v3[5];
    v3[5] = 0;
    v22[2] = v17;
    v22[3] = v18;
    v22[0] = v17;
    v22[1] = v17;
    sub_1000314A8(v22);
  }

  else
  {
    *v6 = *v2;
    v7 = (v6 + 1);
    *v2 = 0;
    v2[1] = 0;
  }

  v3[4] = v7;
  sub_1000EF7A8(&v21);
  return sub_1000120B8(&v20);
}

void sub_1000EF78C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000EF7A8(&a10);
  sub_1000120B8(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1000EF7A8(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return result;
}

void sub_1000EF80C(uint64_t **a1)
{
  v7 = a1;
  v1 = *a1;
  v2 = **a1;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9 = 0xAAAAAAAAAAAAAA00;
  v10 = v3;
  sub_10000298C(&v9);
  sub_10000298C(&v9);
  LOBYTE(v10) = 0;
  *(&v10 + 1) = 0;
  sub_10000298C(&v10);
  sub_10000298C(&v10);
  sub_1000EE364(v2, v4, v1 + 1);
  v8 = off_100187FB8;
  sub_10000298C(&v10);
  sub_1000048FC(&v10 + 1, v10);
  sub_10000298C(&v9);
  sub_1000048FC(&v9 + 1, v9);
  nullsub_13(&v8);
  v5 = v1[1];
  if (v5)
  {
    dispatch_group_leave(v5);
    v6 = v1[1];
    if (v6)
    {
      dispatch_release(v6);
    }
  }

  operator delete();
}

void sub_1000EF9F0(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  sub_1000EFA3C();
}

void sub_1000EFA98(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  sub_1000EFAE4();
}

uint64_t sub_1000EFB40(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10007E5A0(result, a4);
  }

  return result;
}

void sub_1000EFBD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v2 + 8) = v3;
  sub_1000131F8(va);
  _Unwind_Resume(a1);
}

void *sub_1000EFBF8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v7 = a4;
  v8 = a4;
  v9[0] = a1;
  v9[1] = &v7;
  v9[2] = &v8;
  v10 = 0xAAAAAAAAAAAAAAAALL;
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
    v8 = v4;
  }

  LOBYTE(v10) = 1;
  sub_1000EFCAC(v9);
  return v4;
}

uint64_t sub_1000EFCAC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10007E6C8(a1);
  }

  return a1;
}

__int128 *sub_1000EFCE4(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
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
        sub_10000786C(v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_1000EFD50(uint64_t a1)
{
  sub_10002A290(a1, __stack_chk_guard);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  sub_10002A218();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_1000EFDCC(uint64_t a1)
{
  sub_10002A290(a1, __stack_chk_guard);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  sub_10002A218();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_1000F03C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1000E5F8C(&a16);
  _Unwind_Resume(a1);
}

void sub_1000F04C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100114AB8(a1, a2);
  v5[0] = 4;
  v6 = v4 & sub_100114AB8(a1, a2);
  sub_10000298C(v5);
  sub_10000298C(v5);
  sub_10000F8A4(a2 + 24, v5);
  sub_10000298C(v5);
  sub_1000048FC(&v6, v5[0]);
}

void sub_1000F0578(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002C5F4(va);
  _Unwind_Resume(a1);
}

void sub_1000F0594(uint64_t a1, uint64_t a2)
{
  v4 = sub_100114AB8(a1, a2);
  v5[0] = 4;
  v6 = (v4 | sub_100114AB8(a1, a2)) & 1;
  sub_10000298C(v5);
  sub_10000298C(v5);
  sub_10000F8A4(a2 + 24, v5);
  sub_10000298C(v5);
  sub_1000048FC(&v6, v5[0]);
}

void sub_1000F0650(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002C5F4(va);
  _Unwind_Resume(a1);
}

void sub_1000F066C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100114AB8(a1, a2);
  v5[0] = 4;
  v6 = v4 ^ sub_100114AB8(a1, a2);
  sub_10000298C(v5);
  sub_10000298C(v5);
  sub_10000F8A4(a2 + 24, v5);
  sub_10000298C(v5);
  sub_1000048FC(&v6, v5[0]);
}

void sub_1000F0724(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002C5F4(va);
  _Unwind_Resume(a1);
}

void sub_1000F0740(uint64_t a1, uint64_t a2)
{
  v3[0] = 4;
  v4 = sub_100114AB8(a1, a2) ^ 1;
  sub_10000298C(v3);
  sub_10000298C(v3);
  sub_10000F8A4(a2 + 24, v3);
  sub_10000298C(v3);
  sub_1000048FC(&v4, v3[0]);
}

void sub_1000F07DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002C5F4(va);
  _Unwind_Resume(a1);
}

void sub_1000F07F8(uint64_t a1, uint64_t a2)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  v5 = 0xAAAAAAAAAAAAAAAALL;
  sub_100026890(a2, &v4);
  if (sub_100114AB8(a1, a2))
  {
    sub_10000F91C(*(a2 + 48), a2, &v4);
  }

  sub_10000298C(&v4);
  sub_1000048FC(&v5, v4);
}

void sub_1000F08BC(uint64_t a1, uint64_t a2)
{
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  sub_100026890(a2, &v9);
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  sub_100026890(a2, &v7);
  v4 = sub_100114AB8(a1, a2);
  v5 = *(a2 + 48);
  if (v4)
  {
    v6 = &v7;
  }

  else
  {
    v6 = &v9;
  }

  sub_10000F91C(*(a2 + 48), a2, v6);
  sub_10000298C(&v7);
  sub_1000048FC(&v8, v7);
  sub_10000298C(&v9);
  sub_1000048FC(&v10, v9);
}

void sub_1000F0994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10002C5F4(va);
  _Unwind_Resume(a1);
}

void sub_1000F09CC(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000F0A08(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000F0A44(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000F0A80(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000F0ABC(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000F0AF8(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000F0C6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1000E5F8C(&a16);
  _Unwind_Resume(a1);
}

void sub_1000F0CA4(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

std::runtime_error *sub_1000F0CDC(std::runtime_error *a1)
{
  result = std::runtime_error::runtime_error(a1, "return");
  result->__vftable = &off_10018A000;
  return result;
}

void sub_1000F0D6C(void **a1@<X0>, __int128 *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100021068(a1, a2, v4, a3, a4);
}

void sub_1000F0DC8(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  operator delete();
}

void sub_1000F0E5C(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10018A050;
  sub_1001146FC();
}

void sub_1000F0EDC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10018A050;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1000F0F30(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    sub_10000786C(v1);
  }
}

void sub_1000F21F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1000E5F8C(&a16);
  _Unwind_Resume(a1);
}

void sub_1000F2614()
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1000F0CDC(exception);
}

void sub_1000F2670(uint64_t a1, uint64_t a2)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  sub_100024E50(a2, &v13);
  if (v13 - 5 >= 3)
  {
    if (v13 == 4)
    {
      v15 = -86;
      sub_100032734(&v13, &v15);
      v3 = v11;
      v11[0] = 5;
      v12 = v15;
      sub_10000298C(v11);
      sub_10000298C(v11);
      sub_10000298C(v11);
      v4 = v13;
      LOBYTE(v13) = v11[0];
      v11[0] = v4;
      v5 = v14;
      v14 = v12;
      v12 = v5;
      sub_10000298C(&v13);
      sub_10000298C(v11);
      v6 = v11[0];
    }

    else
    {
      v3 = v9;
      v9[0] = 5;
      v10 = 0;
      sub_10000298C(v9);
      sub_10000298C(v9);
      sub_10000298C(v9);
      v7 = v13;
      LOBYTE(v13) = v9[0];
      v9[0] = v7;
      v8 = v14;
      v14 = v10;
      v10 = v8;
      sub_10000298C(&v13);
      sub_10000298C(v9);
      v6 = v9[0];
    }

    sub_1000048FC(v3 + 1, v6);
  }

  sub_10002AFA4(a2 + 24, &v13);
  sub_10000298C(&v13);
  sub_1000048FC(&v14, v13);
}

void sub_1000F27F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10002C5F4(va);
  _Unwind_Resume(a1);
}

void sub_1000F281C(uint64_t a1, uint64_t a2)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  sub_100024E50(a2, &v13);
  if (v13 - 5 <= 2)
  {
    v3 = v11;
    v11[0] = 4;
    v12 = sub_1000F29B4(&v13, 0);
    sub_10000298C(v11);
    sub_10000298C(v11);
    sub_10000298C(v11);
    v4 = v13;
    LOBYTE(v13) = v11[0];
    v11[0] = v4;
    v5 = v14;
    v14 = v12;
    v12 = v5;
    sub_10000298C(&v13);
    sub_10000298C(v11);
    v6 = v11[0];
LABEL_5:
    sub_1000048FC(v3 + 1, v6);
    goto LABEL_6;
  }

  if (v13 != 4)
  {
    v3 = v9;
    v9[0] = 4;
    v10 = 0;
    sub_10000298C(v9);
    sub_10000298C(v9);
    sub_10000298C(v9);
    v7 = v13;
    LOBYTE(v13) = v9[0];
    v9[0] = v7;
    v8 = v14;
    v14 = v10;
    v10 = v8;
    sub_10000298C(&v13);
    sub_10000298C(v9);
    v6 = v9[0];
    goto LABEL_5;
  }

LABEL_6:
  sub_10002AFA4(a2 + 24, &v13);
  sub_10000298C(&v13);
  sub_1000048FC(&v14, v13);
}

void sub_1000F2998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10002C5F4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F29B4(unsigned __int8 *a1, int a2)
{
  LOBYTE(v4) = 5;
  v5 = a2;
  sub_10000298C(&v4);
  sub_10000298C(&v4);
  LODWORD(a1) = sub_10000EC1C(a1, &v4);
  sub_10000298C(&v4);
  sub_1000048FC(&v5, v4);
  return a1 ^ 1;
}

void sub_1000F2A5C(uint64_t a1, uint64_t a2)
{
  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  v4[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100024E50(a2, v4);
  sub_1000F2B68(v4, &__p);
  sub_1000739F0(v3);
}

void sub_1000F2B24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17)
{
  sub_10002C5F4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10002C5F4(&a17);
  _Unwind_Resume(a1);
}

_BYTE *sub_1000F2B68@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (v3 <= 2)
  {
    if (v3 == 1)
    {
      v7[0] = 0xAAAAAAAAAAAAAAAALL;
      v7[1] = 0xAAAAAAAAAAAAAAAALL;
      sub_100013CA0(v7, 0, 0, 0, 1);
    }

    if (v3 == 2)
    {
      v6[0] = 0xAAAAAAAAAAAAAAAALL;
      v6[1] = 0xAAAAAAAAAAAAAAAALL;
      sub_100013CA0(v6, 0, 0, 0, 2);
    }
  }

  else
  {
    switch(v3)
    {
      case 7u:
        v4 = "float";
        goto LABEL_17;
      case 4u:
        v4 = "BOOL";
        goto LABEL_17;
      case 3u:
        v4 = "string";
        goto LABEL_17;
    }
  }

  if (v3 - 5 > 2)
  {
    if (*a1)
    {
      v4 = "unknown";
    }

    else
    {
      v4 = "null";
    }
  }

  else
  {
    v4 = "int";
  }

LABEL_17:

  return sub_10000459C(a2, v4);
}

void sub_1000F2FA4(uint64_t a1, uint64_t a2)
{
  v6[0] = 0xAAAAAAAAAAAAAAAALL;
  v6[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100024E50(a2, v6);
  v5[0] = 0xAAAAAAAAAAAAAA00;
  v5[1] = 0;
  sub_10000298C(v5);
  sub_10000298C(v5);
  if (LOBYTE(v6[0]) == 1)
  {
    sub_100013CA0(v4, 0, 0, 0, 1);
  }

  sub_1000F32DC(v6, &v3);
  sub_1000739F0(v2);
}

void sub_1000F3258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  sub_10002C5F4((v38 - 88));
  sub_10002C5F4((v38 - 72));
  _Unwind_Resume(a1);
}

_BYTE *sub_1000F32DC@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  if (v4 - 1) < 7 && ((0x4Fu >> (v4 - 1)))
  {
    v5 = off_10018A8D0[(v4 - 1)];
  }

  else
  {
    v6 = v4 - 5;
    if (v4)
    {
      v7 = "unknown";
    }

    else
    {
      v7 = "null";
    }

    if (v6 >= 3)
    {
      v5 = v7;
    }

    else
    {
      v5 = "int";
    }
  }

  return sub_10000459C(a2, v5);
}

void sub_1000F334C(uint64_t a1, uint64_t a2)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  v6 = 0xAAAAAAAAAAAAAAAALL;
  sub_100024E50(a2, &v5);
  v3[0] = 6;
  v4 = sub_10001BDA4(&v5);
  sub_10000298C(v3);
  sub_10000298C(v3);
  sub_10000F8A4(a2 + 24, v3);
  sub_10000298C(v3);
  sub_1000048FC(&v4, v3[0]);
  sub_10000298C(&v5);
  sub_1000048FC(&v6, v5);
}

void sub_1000F3414(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_10002C5F4(va);
  sub_10002C5F4(va1);
  _Unwind_Resume(a1);
}

void sub_1000F34E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_10002C5F4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1000F3520(uint64_t a1, void *a2)
{
  sub_10005F300(&__p);
  if (a2[4] < a2[5])
  {
    sub_1000739F0(a2[4]);
  }

  sub_1000F4EA0(a2 + 3);
}

void sub_1000F35C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000F35FC(uint64_t a1, void *a2)
{
  sub_10005FB90(&__p);
  if (a2[4] < a2[5])
  {
    sub_1000739F0(a2[4]);
  }

  sub_1000F4EA0(a2 + 3);
}

void sub_1000F369C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000F36D8(uint64_t a1, uint64_t a2)
{
  v3.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  rep = v3.__d_.__rep_;
  v4 = *(a2 + 32);
  if (v4 >= *(a2 + 40))
  {
    result = sub_1000F4FE4(a2 + 24, &rep);
  }

  else
  {
    *v4 = 5;
    *(v4 + 8) = v3;
    sub_10000298C(v4);
    sub_10000298C(v4);
    result = v4 + 16;
  }

  *(a2 + 32) = result;
  return result;
}

uint64_t sub_1000F3780(uint64_t a1, uint64_t a2)
{
  v5 = 1000;
  v3 = *(a2 + 32);
  if (v3 >= *(a2 + 40))
  {
    result = sub_1000F4FE4(a2 + 24, &v5);
  }

  else
  {
    *v3 = 5;
    *(v3 + 8) = 1000;
    sub_10000298C(v3);
    sub_10000298C(v3);
    result = v3 + 16;
  }

  *(a2 + 32) = result;
  return result;
}

uint64_t sub_1000F382C(uint64_t a1, uint64_t a2)
{
  v5 = 1000000;
  v3 = *(a2 + 32);
  if (v3 >= *(a2 + 40))
  {
    result = sub_1000F4FE4(a2 + 24, &v5);
  }

  else
  {
    *v3 = 5;
    *(v3 + 8) = 1000000;
    sub_10000298C(v3);
    sub_10000298C(v3);
    result = v3 + 16;
  }

  *(a2 + 32) = result;
  return result;
}

uint64_t sub_1000F38D8(uint64_t a1, uint64_t a2)
{
  v5 = 60000000;
  v3 = *(a2 + 32);
  if (v3 >= *(a2 + 40))
  {
    result = sub_1000F4FE4(a2 + 24, &v5);
  }

  else
  {
    *v3 = 5;
    *(v3 + 8) = 60000000;
    sub_10000298C(v3);
    sub_10000298C(v3);
    result = v3 + 16;
  }

  *(a2 + 32) = result;
  return result;
}

uint64_t sub_1000F3984(uint64_t a1, uint64_t a2)
{
  v5 = 3600000000;
  v3 = *(a2 + 32);
  if (v3 >= *(a2 + 40))
  {
    result = sub_1000F4FE4(a2 + 24, &v5);
  }

  else
  {
    *v3 = 5;
    *(v3 + 8) = 3600000000;
    sub_10000298C(v3);
    sub_10000298C(v3);
    result = v3 + 16;
  }

  *(a2 + 32) = result;
  return result;
}

uint64_t sub_1000F3A30(uint64_t a1, uint64_t a2)
{
  v5 = 86400000000;
  v3 = *(a2 + 32);
  if (v3 >= *(a2 + 40))
  {
    result = sub_1000F4FE4(a2 + 24, &v5);
  }

  else
  {
    *v3 = 5;
    *(v3 + 8) = 86400000000;
    sub_10000298C(v3);
    sub_10000298C(v3);
    result = v3 + 16;
  }

  *(a2 + 32) = result;
  return result;
}

uint64_t sub_1000F3AE0(uint64_t a1, void *a2)
{
  v4 = sub_1001147E8(a1, a2);
  if (v4 > 0)
  {
    v5 = v4;
    *&__t.tm_sec = v4;
    v11 = std::chrono::system_clock::to_time_t(&__t);
    memset(&__t, 0, sizeof(__t));
    if ((*(*a1 + 32))(a1))
    {
      localtime_r(&v11, &__t);
    }

    else
    {
      gmtime_r(&v11, &__t);
    }

    __t.tm_isdst = 0;
    __t.tm_gmtoff = sub_10005F7B4();
    memset(v13, 170, 18);
    *__s = 0xAAAAAAAAAAAAAAAALL;
    v8 = (*(*a1 + 40))(a1);
    __s[strftime(__s, 0x1AuLL, v8, &__t)] = 0;
    memset(__p, 170, sizeof(__p));
    sub_10000459C(__p, __s);
    (*(*a1 + 48))(a1, __p, v5, &__t);
    if (a2[4] < a2[5])
    {
      sub_100006C9C(a2[4]);
    }

    sub_1000088CC(a2 + 3);
  }

  *&__t.tm_sec = 0;
  v6 = a2[4];
  if (v6 >= a2[5])
  {
    result = sub_100026554((a2 + 3));
  }

  else
  {
    *v6 = 0;
    *(v6 + 8) = 0;
    sub_10000298C(v6);
    sub_10000298C(v6);
    result = v6 + 16;
  }

  a2[4] = result;
  return result;
}

void sub_1000F3CEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 32) = v16;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1000F3D38(uint64_t a1, std::string *a2, uint64_t a3)
{
  strcpy(__str, ".000000");
  snprintf(__str, 8uLL, ".%06lld", a3 % 1000000);
  v4 = std::string::find(a2, 90, 0);
  return std::string::replace(a2, v4, 1uLL, __str);
}

std::string *sub_1000F3E08(uint64_t a1, std::string *a2, uint64_t a3)
{
  strcpy(__str, ".000000");
  snprintf(__str, 8uLL, ".%06lld", a3 % 1000000);
  return std::string::append(a2, __str);
}

void sub_1000F3F20(uint64_t a1, void *a2)
{
  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  v4[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100024E50(a2, v4);
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7 = v3;
  v8 = v3;
  *md = v3;
  v6 = v3;
  *&c.wbuf[12] = v3;
  *&c.wbuf[14] = v3;
  *&c.wbuf[8] = v3;
  *&c.wbuf[10] = v3;
  *&c.wbuf[4] = v3;
  *&c.wbuf[6] = v3;
  *c.wbuf = v3;
  *&c.wbuf[2] = v3;
  *&c.hash[4] = v3;
  *&c.hash[6] = v3;
  *c.hash = v3;
  *&c.hash[2] = v3;
  *c.count = v3;
  CC_SHA512_Init(&c);
  sub_1000F4A28(&c, v4);
  CC_SHA512_Final(md, &c);
  sub_1000E4758(md, 64, &c);
  if (a2[4] < a2[5])
  {
    sub_1000739F0(a2[4]);
  }

  sub_1000F4EA0(a2 + 3);
}

void sub_1000F4040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_10002C5F4(&a9);
  _Unwind_Resume(a1);
}

void sub_1000F4090(uint64_t a1, uint64_t a2)
{
  v3[0] = 0xAAAAAAAAAAAAAAAALL;
  v3[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100024E50(a2, v3);
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v4[2] = v2;
  v4[3] = v2;
  v4[0] = v2;
  v4[1] = v2;
  sub_1000F41C0(v4);
}

void sub_1000F4178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10002C5F4(&a16);
  _Unwind_Resume(a1);
}

void sub_1000F41C0(_OWORD *a1@<X8>)
{
  *&v1 = 0xAAAAAAAAAAAAAAAALL;
  *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
  a1[2] = v1;
  a1[3] = v1;
  *a1 = v1;
  a1[1] = v1;
  *&c.wbuf[12] = v1;
  *&c.wbuf[14] = v1;
  *&c.wbuf[8] = v1;
  *&c.wbuf[10] = v1;
  *&c.wbuf[4] = v1;
  *&c.wbuf[6] = v1;
  *&c.wbuf[2] = v1;
  *&c.hash[6] = v1;
  *c.wbuf = v1;
  *&c.hash[2] = v1;
  *&c.hash[4] = v1;
  *c.count = v1;
  *c.hash = v1;
  CC_SHA512_Init(&c);
  sub_1000D52EC(&__p);
  sub_1000739F0(v3);
}

void sub_1000F42B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  sub_10002C5F4(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1000F42F0(uint64_t a1, uint64_t a2)
{
  v3[0] = 0xAAAAAAAAAAAAAAAALL;
  v3[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100024E50(a2, v3);
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v4[2] = v2;
  v4[3] = v2;
  v4[0] = v2;
  v4[1] = v2;
  sub_1000F41C0(v4);
}

void sub_1000F43E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002C5F4(va);
  _Unwind_Resume(a1);
}

void sub_1000F4414(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000F4450(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000F448C(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000F44C8(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000F4504(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000F4540(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000F457C(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000F45B8(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000F45F4(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000F4630(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000F466C(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000F46A8(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000F46E4(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000F4720(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000F475C(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000F4798(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000F47D4(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000F4810(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000F484C(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000F4888(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000F48C4(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000F4900(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000F493C(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000F4978(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000F49B4(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000F49F0(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000F4A28(CC_SHA512_CTX *a1, unsigned __int8 *a2)
{
  v4 = *a2;
  if (v4 <= 2)
  {
    if (v4 == 1)
    {
      LOBYTE(data) = 6;
      CC_SHA512_Update(a1, &data, 1u);
      v7 = *a2;
      if (*a2)
      {
        if (v7 == 1)
        {
          v7 = *(*(a2 + 1) + 16);
        }

        else if (v7 == 2)
        {
          v7 = (*(*(a2 + 1) + 8) - **(a2 + 1)) >> 4;
        }

        else
        {
          v7 = 1;
        }
      }

      *&data = v7;
      CC_SHA512_Update(a1, &data, 8u);
      v22 = 0xAAAAAAAAAAAAAAAALL;
      *&v8 = 0xAAAAAAAAAAAAAAAALL;
      *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
      data = v8;
      v21 = v8;
      sub_10000DEC4(&data, a2);
      sub_10000DF14(&data);
      v19 = 0xAAAAAAAAAAAAAAAALL;
      *&v9 = 0xAAAAAAAAAAAAAAAALL;
      *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v17 = v9;
      v18 = v9;
      sub_10000DEC4(&v17, a2);
      sub_10000DCFC(&v17);
      for (i = sub_10000DD7C(&data, &v17); !i; i = sub_10000DD7C(&data, &v17))
      {
        v11 = sub_100088A20(&data);
        sub_1000F4E14(a1, v11);
        v12 = sub_10000DB44(&data);
        sub_1000F4A28(a1, v12);
        sub_100012BFC(&data);
      }
    }

    else
    {
      if (v4 != 2)
      {
LABEL_22:
        if (v4 - 5 > 2)
        {
          LOBYTE(data) = v4 == 0;
          CC_SHA512_Update(a1, &data, 1u);
        }

        else
        {
          LOBYTE(data) = 4;
          CC_SHA512_Update(a1, &data, 1u);
          *&data = 0xAAAAAAAAAAAAAAAALL;
          sub_10001E0A4(a2, &data);
          CC_SHA512_Update(a1, &data, 8u);
        }

        return;
      }

      LOBYTE(data) = 5;
      CC_SHA512_Update(a1, &data, 1u);
      v5 = *a2;
      if (*a2)
      {
        if (v5 == 1)
        {
          v5 = *(*(a2 + 1) + 16);
        }

        else if (v5 == 2)
        {
          v5 = (*(*(a2 + 1) + 8) - **(a2 + 1)) >> 4;
        }

        else
        {
          v5 = 1;
        }
      }

      *&data = v5;
      CC_SHA512_Update(a1, &data, 8u);
      v22 = 0xAAAAAAAAAAAAAAAALL;
      *&v13 = 0xAAAAAAAAAAAAAAAALL;
      *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
      data = v13;
      v21 = v13;
      sub_10000DEC4(&data, a2);
      sub_10000DF14(&data);
      v19 = 0xAAAAAAAAAAAAAAAALL;
      *&v14 = 0xAAAAAAAAAAAAAAAALL;
      *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v17 = v14;
      v18 = v14;
      sub_10000DEC4(&v17, a2);
      sub_10000DCFC(&v17);
      for (j = sub_10000DD7C(&data, &v17); !j; j = sub_10000DD7C(&data, &v17))
      {
        v16 = sub_10000DB44(&data);
        sub_1000F4A28(a1, v16);
        sub_100012BFC(&data);
      }
    }
  }

  else
  {
    if (v4 == 7)
    {
      LOBYTE(data) = 3;
      CC_SHA512_Update(a1, &data, 1u);
      *&data = -1;
      sub_100025F58(a2, &data);
      CC_SHA512_Update(a1, &data, 8u);
      return;
    }

    if (v4 != 4)
    {
      if (v4 == 3)
      {
        LOBYTE(data) = 2;
        CC_SHA512_Update(a1, &data, 1u);
        sub_100010390(a2, &data);
        sub_1000F4E14(a1, &data);
        if (SBYTE7(v21) < 0)
        {
          operator delete(data);
        }

        return;
      }

      goto LABEL_22;
    }

    LOBYTE(data) = -86;
    sub_100032734(a2, &data);
    if (data)
    {
      v6 = 7;
    }

    else
    {
      v6 = 8;
    }

    LOBYTE(data) = v6;
    CC_SHA512_Update(a1, &data, 1u);
  }
}

void sub_1000F4DF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000F4E14(CC_SHA512_CTX *a1, const void **a2)
{
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 < 0)
  {
    v3 = a2[1];
  }

  *len = v3;
  CC_SHA512_Update(a1, len, 8u);
  return CC_SHA512_Update(a1, v4, len[0]);
}

void sub_1000F4EA0(void *a1)
{
  v1 = (a1[1] - *a1) >> 4;
  v2 = v1 + 1;
  if (!((v1 + 1) >> 60))
  {
    v3 = a1[2] - *a1;
    if (v3 >> 3 > v2)
    {
      v2 = v3 >> 3;
    }

    if (v3 >= 0x7FFFFFFFFFFFFFF0)
    {
      v4 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v4 = v2;
    }

    v6 = a1;
    if (v4)
    {
      sub_10000BC18(a1, v4);
    }

    v5 = (16 * v1);
    sub_1000739F0(16 * v1);
  }

  sub_10002C63C();
}

void sub_1000F4FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000BC60(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F4FE4(uint64_t a1, uint64_t *a2)
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
  *v8 = 5;
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

void sub_1000F5128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000BC60(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F513C(uint64_t a1, uint64_t *a2)
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
  *v8 = 7;
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

void sub_1000F5280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000BC60(va);
  _Unwind_Resume(a1);
}

void sub_1000F5ABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1000E5F8C(&a16);
  _Unwind_Resume(a1);
}

void sub_1000F5C80(uint64_t a1, uint64_t a2)
{
  v15 = 0xAAAAAAAAAAAAAAAALL;
  v16 = -3.72066208e-103;
  sub_100026694(a2, &v15);
  if (v15)
  {
    v3 = v15 == 6;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    if (v15 == 7)
    {
      v17 = NAN;
      sub_100025F58(&v15, &v17);
      v4 = v13;
      v13[0] = 7;
      v14 = fabs(v17);
      sub_10000298C(v13);
      sub_10000298C(v13);
      sub_10000298C(v13);
      v5 = v15;
      LOBYTE(v15) = v13[0];
      v13[0] = v5;
      *&v6 = v16;
      v16 = v14;
      v14 = *&v6;
      sub_10000298C(&v15);
      sub_10000298C(v13);
      v7 = v13[0];
    }

    else
    {
      v17 = -3.72066208e-103;
      sub_10001D684(&v15, &v17);
      v8 = *&v17;
      if (v17 < 0.0)
      {
        v8 = -*&v17;
      }

      v4 = v11;
      v11[0] = 5;
      v12 = v8;
      sub_10000298C(v11);
      sub_10000298C(v11);
      sub_10000298C(v11);
      v9 = v15;
      LOBYTE(v15) = v11[0];
      v11[0] = v9;
      v10 = *&v16;
      v16 = *&v12;
      v12 = v10;
      sub_10000298C(&v15);
      sub_10000298C(v11);
      v7 = v11[0];
    }

    sub_1000048FC(v4 + 1, v7);
  }

  sub_10002AFA4(a2 + 24, &v15);
  sub_10000298C(&v15);
  sub_1000048FC(&v16, v15);
}

void sub_1000F5E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10002C5F4(va);
  _Unwind_Resume(a1);
}

void sub_1000F5E54(uint64_t a1, uint64_t a2)
{
  v26 = 0xAAAAAAAAAAAAAAAALL;
  v27 = 0xAAAAAAAAAAAAAAAALL;
  sub_10011491C(a2, &v26);
  v24 = 0xAAAAAAAAAAAAAAAALL;
  v25 = -3.72066208e-103;
  sub_100026694(a2, &v24);
  v3 = v24;
  if (v24 == 7)
  {
    goto LABEL_9;
  }

  if (v24)
  {
    if (v26 == 7)
    {
      v4 = qword_100192BA8;
      if (os_log_type_enabled(qword_100192BA8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[Evaluator::Truncate] Received a float modulus for an non-float number. The modulus will be cast to an int.", buf, 2u);
        v3 = v24;
      }
    }

    if (v3 == 6)
    {
      *buf = 0xAAAAAAAAAAAAAAAALL;
      sub_10001E0A4(&v24, buf);
      v10 = *buf;
      *buf = 0xAAAAAAAAAAAAAAAALL;
      sub_10001E0A4(&v26, buf);
      v11 = sub_10002AF08(v10, *buf);
      v6 = v20;
      v20[0] = 6;
      v21 = v11;
      sub_10000298C(v20);
      sub_10000298C(v20);
      sub_10000298C(v20);
      v12 = v24;
      LOBYTE(v24) = v20[0];
      v20[0] = v12;
      v13 = *&v25;
      v25 = *&v21;
      v21 = v13;
      sub_10000298C(&v24);
      sub_10000298C(v20);
      v9 = v20[0];
      goto LABEL_10;
    }

    if (v3 != 7)
    {
      *buf = 0xAAAAAAAAAAAAAAAALL;
      sub_10001D684(&v24, buf);
      v14 = *buf;
      *buf = 0xAAAAAAAAAAAAAAAALL;
      sub_10001D684(&v26, buf);
      v15 = sub_1000F627C(v14, *buf);
      v6 = v18;
      v18[0] = 5;
      v19 = v15;
      sub_10000298C(v18);
      sub_10000298C(v18);
      sub_10000298C(v18);
      v16 = v24;
      LOBYTE(v24) = v18[0];
      v18[0] = v16;
      v17 = *&v25;
      v25 = *&v19;
      v19 = v17;
      sub_10000298C(&v24);
      sub_10000298C(v18);
      v9 = v18[0];
      goto LABEL_10;
    }

LABEL_9:
    *buf = -1;
    sub_100025F58(&v24, buf);
    v5 = *buf;
    *buf = -1;
    sub_100025F58(&v26, buf);
    v6 = v22;
    v22[0] = 7;
    v23 = sub_1000F61E0(*&v5, *buf);
    sub_10000298C(v22);
    sub_10000298C(v22);
    sub_10000298C(v22);
    v7 = v24;
    LOBYTE(v24) = v22[0];
    v22[0] = v7;
    *&v8 = v25;
    v25 = v23;
    v23 = *&v8;
    sub_10000298C(&v24);
    sub_10000298C(v22);
    v9 = v22[0];
LABEL_10:
    sub_1000048FC(v6 + 1, v9);
    sub_10002AFA4(a2 + 24, &v24);
    goto LABEL_11;
  }

  buf[0] = 0;
  v29 = 0;
  sub_10000298C(buf);
  sub_10000298C(buf);
  sub_10000F8A4(a2 + 24, buf);
  sub_10000298C(buf);
  sub_1000048FC(&v29, buf[0]);
LABEL_11:
  sub_10000298C(&v24);
  sub_1000048FC(&v25, v24);
  sub_10000298C(&v26);
  sub_1000048FC(&v27, v26);
}

void sub_1000F6198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_10002C5F4(va);
  sub_10002C5F4(va1);
  _Unwind_Resume(a1);
}

double sub_1000F61E0(double a1, double a2)
{
  if (a2 < 2.22044605e-16)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1000E8F08(exception, "Truncation with negative modulus is not legal");
  }

  return fmin(fmax(ceil(a1 / a2) * a2, -1.79769313e308), 1.79769313e308);
}

uint64_t sub_1000F627C(int64_t a1, unint64_t a2)
{
  if (a2 <= 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1000E8F08(exception, "Truncation with negative modulus is not legal");
  }

  v2 = 0x7FFFFFFFFFFFFFFFLL;
  if ((0x7FFFFFFFFFFFFFFFLL / a2 * a2) < a1)
  {
    return v2;
  }

  if (a1 < 0)
  {
    return -a1 % a2 + a1;
  }

  return sub_10002AF08(a1, a2);
}

uint64_t sub_1000F633C(unsigned __int8 *a1, int a2)
{
  LOBYTE(v5) = 5;
  v6 = a2;
  sub_10000298C(&v5);
  sub_10000298C(&v5);
  v3 = sub_10000EC1C(a1, &v5);
  sub_10000298C(&v5);
  sub_1000048FC(&v6, v5);
  return v3;
}

uint64_t sub_1000F63DC(unsigned __int8 *a1, uint64_t a2)
{
  LOBYTE(v5) = 5;
  v6 = a2;
  sub_10000298C(&v5);
  sub_10000298C(&v5);
  v3 = sub_10000EC1C(a1, &v5);
  sub_10000298C(&v5);
  sub_1000048FC(&v6, v5);
  return v3;
}

void sub_1000F6488(uint64_t a1, uint64_t a2)
{
  v15 = 0xAAAAAAAAAAAAAAAALL;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  sub_100024E50(a2, &v15);
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  sub_100026890(a2, &v13);
  if (v15)
  {
    v12 = 0xAAAAAAAAAAAAAAAALL;
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v11[0] = v3;
    v11[1] = v3;
    v8 = &v13;
    v9 = 0uLL;
    *&v10 = 0;
    *(&v10 + 1) = 0x8000000000000000;
    sub_10001D250(&v8);
    v5 = &v13;
    v6 = 0uLL;
    *&v7 = 0;
    *(&v7 + 1) = 0x8000000000000000;
    sub_1000137F8(&v5);
    v21 = v9;
    v22 = v10;
    v18 = v6;
    v19 = v7;
    v20 = v8;
    v17 = v5;
    sub_1000F7C20(&v20, &v17, &v15, v11);
    v20 = &v13;
    v21 = 0uLL;
    *&v22 = 0;
    *(&v22 + 1) = 0x8000000000000000;
    sub_10001D250(&v20);
    v4 = sub_100026B94(v11, &v20);
    LOBYTE(v20) = 6;
    *&v21 = v4;
    sub_10000298C(&v20);
    sub_10000298C(&v20);
    sub_10000F8A4(a2 + 24, &v20);
  }

  else
  {
    LOBYTE(v20) = 0;
    *&v21 = 0;
    sub_10000298C(&v20);
    sub_10000298C(&v20);
    sub_10000F8A4(a2 + 24, &v20);
  }

  sub_10000298C(&v20);
  sub_1000048FC(&v21, v20);
  sub_10000298C(&v13);
  sub_1000048FC(&v14, v13);
  sub_10000298C(&v15);
  sub_1000048FC(&v16, v15);
}

void sub_1000F6660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unsigned __int8 a24, uint64_t a25, unsigned __int8 a26)
{
  sub_10002C5F4((v26 - 104));
  sub_10002C5F4(&a24);
  sub_10002C5F4(&a26);
  _Unwind_Resume(a1);
}

void sub_1000F66AC(uint64_t a1, uint64_t a2)
{
  v26 = 0xAAAAAAAAAAAAAAAALL;
  v27 = 0xAAAAAAAAAAAAAAAALL;
  sub_100026694(a2, &v26);
  v24 = 0xAAAAAAAAAAAAAAAALL;
  v25 = 0xAAAAAAAAAAAAAAAALL;
  sub_100026694(a2, &v24);
  v22 = 0xAAAAAAAAAAAAAA00;
  v23 = 0.0;
  sub_10000298C(&v22);
  sub_10000298C(&v22);
  if (v24)
  {
    if (v26)
    {
      if (v24 == 7 || v26 == 7)
      {
        v28 = NAN;
        sub_100025F58(&v24, &v28);
        v12 = v28;
        v28 = NAN;
        sub_100025F58(&v26, &v28);
        v16[0] = 7;
        v17 = v12 + v28;
      }

      else
      {
        if (v24 == 6 && v26 == 6)
        {
          v28 = -3.72066208e-103;
          sub_10001E0A4(&v24, &v28);
          v3 = v28;
          v28 = -3.72066208e-103;
          sub_10001E0A4(&v26, &v28);
          *&v4 = *&v28 + *&v3;
          v5 = 6;
        }

        else
        {
          v28 = -3.72066208e-103;
          sub_10001D684(&v24, &v28);
          v13 = v28;
          v28 = -3.72066208e-103;
          sub_10001D684(&v26, &v28);
          *&v4 = *&v28 + *&v13;
          v5 = 5;
        }

        v16[0] = v5;
        v17 = v4;
      }

      v6 = v16;
      sub_10000298C(v16);
      sub_10000298C(v16);
      sub_10000298C(v16);
      v14 = v22;
      LOBYTE(v22) = v16[0];
      v16[0] = v14;
      *&v15 = v23;
      v23 = v17;
      v17 = *&v15;
      sub_10000298C(&v22);
      sub_10000298C(v16);
      v9 = v16[0];
    }

    else
    {
      v6 = v18;
      sub_10000FF70(v18, &v24);
      sub_10000298C(v18);
      v10 = v22;
      LOBYTE(v22) = v18[0];
      v18[0] = v10;
      v11 = *&v23;
      v23 = *&v19;
      v19 = v11;
      sub_10000298C(&v22);
      sub_10000298C(v18);
      v9 = v18[0];
    }
  }

  else
  {
    v6 = v20;
    sub_10000FF70(v20, &v26);
    sub_10000298C(v20);
    v7 = v22;
    LOBYTE(v22) = v20[0];
    v20[0] = v7;
    v8 = *&v23;
    v23 = *&v21;
    v21 = v8;
    sub_10000298C(&v22);
    sub_10000298C(v20);
    v9 = v20[0];
  }

  sub_1000048FC(v6 + 1, v9);
  sub_10000F8A4(a2 + 24, &v22);
  sub_10000298C(&v22);
  sub_1000048FC(&v23, v22);
  sub_10000298C(&v24);
  sub_1000048FC(&v25, v24);
  sub_10000298C(&v26);
  sub_1000048FC(&v27, v26);
}

void sub_1000F697C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  sub_10002C5F4(va);
  sub_10002C5F4(va1);
  sub_10002C5F4(va2);
  _Unwind_Resume(a1);
}

void sub_1000F69BC(uint64_t a1, uint64_t a2)
{
  v29 = 0xAAAAAAAAAAAAAAAALL;
  v30 = 0xAAAAAAAAAAAAAAAALL;
  sub_100026694(a2, &v29);
  v27 = 0xAAAAAAAAAAAAAAAALL;
  v28 = 0xAAAAAAAAAAAAAAAALL;
  sub_100026694(a2, &v27);
  v25 = 0xAAAAAAAAAAAAAA00;
  v26 = 0.0;
  sub_10000298C(&v25);
  sub_10000298C(&v25);
  if (v29)
  {
    if (v27)
    {
      if (v29 == 7 || v27 == 7)
      {
        v20[0] = -1;
        sub_100025F58(&v27, v20);
        v10 = *v20;
        v20[0] = -1;
        sub_100025F58(&v29, v20);
        v18[0] = 7;
        v19 = v10 - *v20;
      }

      else
      {
        if (v29 == 6 && v27 == 6)
        {
          v20[0] = 0xAAAAAAAAAAAAAAAALL;
          sub_10001E0A4(&v27, v20);
          v3 = v20[0];
          v20[0] = 0xAAAAAAAAAAAAAAAALL;
          sub_10001E0A4(&v29, v20);
          v4 = v3 - v20[0];
          v5 = 6;
        }

        else
        {
          v20[0] = 0xAAAAAAAAAAAAAAAALL;
          sub_10001D684(&v27, v20);
          v11 = v20[0];
          v20[0] = 0xAAAAAAAAAAAAAAAALL;
          sub_10001D684(&v29, v20);
          v4 = v11 - v20[0];
          v5 = 5;
        }

        v18[0] = v5;
        v19 = *&v4;
      }

      v6 = v18;
      sub_10000298C(v18);
      sub_10000298C(v18);
      sub_10000298C(v18);
      v12 = v25;
      LOBYTE(v25) = v18[0];
      v18[0] = v12;
      v13 = v26;
      v26 = v19;
      v19 = v13;
      sub_10000298C(&v25);
      sub_10000298C(v18);
      v9 = v18[0];
    }

    else
    {
      v6 = v20;
      LOBYTE(v20[0]) = 5;
      v20[1] = 0;
      sub_10000298C(v20);
      sub_10000298C(v20);
      if (LOBYTE(v20[0]) == 7 || v29 == 7)
      {
        v31 = NAN;
        sub_100025F58(v20, &v31);
        v31 = NAN;
        sub_100025F58(&v29, &v31);
        v21[0] = 7;
        v22 = -v31;
      }

      else
      {
        if (LOBYTE(v20[0]) == 6 && v29 == 6)
        {
          v31 = -3.72066208e-103;
          sub_10001E0A4(v20, &v31);
          v31 = -3.72066208e-103;
          sub_10001E0A4(&v29, &v31);
          v14 = -*&v31;
          v15 = 6;
        }

        else
        {
          v31 = -3.72066208e-103;
          sub_10001D684(v20, &v31);
          v31 = -3.72066208e-103;
          sub_10001D684(&v29, &v31);
          v14 = -*&v31;
          v15 = 5;
        }

        v21[0] = v15;
        v22 = *&v14;
      }

      sub_10000298C(v21);
      sub_10000298C(v21);
      sub_10000298C(v21);
      v16 = v25;
      LOBYTE(v25) = v21[0];
      v21[0] = v16;
      v17 = v26;
      v26 = v22;
      v22 = v17;
      sub_10000298C(&v25);
      sub_10000298C(v21);
      sub_1000048FC(&v22, v21[0]);
      sub_10000298C(v20);
      v9 = LOBYTE(v20[0]);
    }
  }

  else
  {
    v6 = v23;
    sub_10000FF70(v23, &v27);
    sub_10000298C(v23);
    v7 = v25;
    LOBYTE(v25) = v23[0];
    v23[0] = v7;
    v8 = v26;
    v26 = v24;
    v24 = v8;
    sub_10000298C(&v25);
    sub_10000298C(v23);
    v9 = v23[0];
  }

  sub_1000048FC(v6 + 1, v9);
  sub_10000F8A4(a2 + 24, &v25);
  sub_10000298C(&v25);
  sub_1000048FC(&v26, v25);
  sub_10000298C(&v27);
  sub_1000048FC(&v28, v27);
  sub_10000298C(&v29);
  sub_1000048FC(&v30, v29);
}

void sub_1000F6D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  va_copy(va2, va1);
  v12 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  sub_10002C5F4(va);
  sub_10002C5F4(va1);
  sub_10002C5F4(va2);
  sub_10002C5F4((v3 - 80));
  _Unwind_Resume(a1);
}

void sub_1000F6DE4(uint64_t a1, uint64_t a2)
{
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v17 = 0xAAAAAAAAAAAAAAAALL;
  sub_100026694(a2, &v16);
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v15 = 0xAAAAAAAAAAAAAAAALL;
  sub_100026694(a2, &v14);
  v12 = 0xAAAAAAAAAAAAAA00;
  v13 = 0.0;
  sub_10000298C(&v12);
  sub_10000298C(&v12);
  if (v14 && v16)
  {
    if (v14 == 7 || v16 == 7)
    {
      v18 = NAN;
      sub_100025F58(&v14, &v18);
      v6 = v18;
      v18 = NAN;
      sub_100025F58(&v16, &v18);
      v10[0] = 7;
      v11 = v6 * v18;
    }

    else
    {
      if (v14 == 6 && v16 == 6)
      {
        v18 = -3.72066208e-103;
        sub_10001E0A4(&v14, &v18);
        v3 = v18;
        v18 = -3.72066208e-103;
        sub_10001E0A4(&v16, &v18);
        v4 = *&v18 * *&v3;
        v5 = 6;
      }

      else
      {
        v18 = -3.72066208e-103;
        sub_10001D684(&v14, &v18);
        v7 = v18;
        v18 = -3.72066208e-103;
        sub_10001D684(&v16, &v18);
        v4 = *&v18 * *&v7;
        v5 = 5;
      }

      v10[0] = v5;
      v11 = *&v4;
    }

    sub_10000298C(v10);
    sub_10000298C(v10);
    sub_10000298C(v10);
    v8 = v12;
    LOBYTE(v12) = v10[0];
    v10[0] = v8;
    v9 = v13;
    v13 = v11;
    v11 = v9;
    sub_10000298C(&v12);
    sub_10000298C(v10);
    sub_1000048FC(&v11, v10[0]);
  }

  sub_10000F8A4(a2 + 24, &v12);
  sub_10000298C(&v12);
  sub_1000048FC(&v13, v12);
  sub_10000298C(&v14);
  sub_1000048FC(&v15, v14);
  sub_10000298C(&v16);
  sub_1000048FC(&v17, v16);
}

void sub_1000F7014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  sub_10002C5F4(va);
  sub_10002C5F4(va1);
  sub_10002C5F4(va2);
  _Unwind_Resume(a1);
}

void sub_1000F7054(uint64_t a1, uint64_t a2)
{
  v17 = 0xAAAAAAAAAAAAAAAALL;
  v18 = 0xAAAAAAAAAAAAAAAALL;
  sub_100026694(a2, &v17);
  v15 = 0xAAAAAAAAAAAAAAAALL;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  sub_100026694(a2, &v15);
  v13 = 0xAAAAAAAAAAAAAA00;
  v14 = 0.0;
  sub_10000298C(&v13);
  sub_10000298C(&v13);
  if (v15 && v17)
  {
    if (sub_1000F633C(&v17, 0))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Divide by zero");
    }

    if (v15 == 7 || v17 == 7)
    {
      v19 = NAN;
      sub_100025F58(&v15, &v19);
      v3 = v19;
      v19 = NAN;
      sub_100025F58(&v17, &v19);
      v11[0] = 7;
      v12 = v3 / v19;
    }

    else
    {
      if (v15 == 6 && v17 == 6)
      {
        v19 = -3.72066208e-103;
        sub_10001E0A4(&v15, &v19);
        v4 = v19;
        v19 = -3.72066208e-103;
        sub_10001E0A4(&v17, &v19);
        v5 = *&v4 / *&v19;
        v6 = 6;
      }

      else
      {
        v19 = -3.72066208e-103;
        sub_10001D684(&v15, &v19);
        v7 = v19;
        v19 = -3.72066208e-103;
        sub_10001D684(&v17, &v19);
        v5 = *&v7 / *&v19;
        v6 = 5;
      }

      v11[0] = v6;
      v12 = *&v5;
    }

    sub_10000298C(v11);
    sub_10000298C(v11);
    sub_10000298C(v11);
    v8 = v13;
    LOBYTE(v13) = v11[0];
    v11[0] = v8;
    v9 = v14;
    v14 = v12;
    v12 = v9;
    sub_10000298C(&v13);
    sub_10000298C(v11);
    sub_1000048FC(&v12, v11[0]);
  }

  sub_10000F8A4(a2 + 24, &v13);
  sub_10000298C(&v13);
  sub_1000048FC(&v14, v13);
  sub_10000298C(&v15);
  sub_1000048FC(&v16, v15);
  sub_10000298C(&v17);
  sub_1000048FC(&v18, v17);
}

void sub_1000F72F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  __cxa_free_exception(v15);
  sub_10002C5F4(&a11);
  sub_10002C5F4(&a13);
  sub_10002C5F4(&a15);
  _Unwind_Resume(a1);
}

void sub_1000F7344(uint64_t a1, uint64_t a2)
{
  v27 = 0xAAAAAAAAAAAAAAAALL;
  v28 = 0xAAAAAAAAAAAAAAAALL;
  sub_100026694(a2, &v27);
  v25 = 0xAAAAAAAAAAAAAAAALL;
  v26 = 0xAAAAAAAAAAAAAAAALL;
  sub_100026694(a2, &v25);
  v23 = 0xAAAAAAAAAAAAAA00;
  v24 = 0;
  sub_10000298C(&v23);
  sub_10000298C(&v23);
  if (v25)
  {
    if (v27)
    {
      if (v25 == 7 || v27 == 7)
      {
        v29 = NAN;
        sub_100025F58(&v25, &v29);
        v12 = v29;
        v29 = NAN;
        sub_100025F58(&v27, &v29);
        v13 = v29;
        if (v29 >= v12)
        {
          v13 = v12;
        }

        v17[0] = 7;
        v18 = *&v13;
      }

      else
      {
        if (v25 == 6 && v27 == 6)
        {
          v29 = -3.72066208e-103;
          sub_10001E0A4(&v25, &v29);
          v3 = *&v29;
          v29 = -3.72066208e-103;
          sub_10001E0A4(&v27, &v29);
          v4 = v29;
          if (*&v29 >= v3)
          {
            v4 = *&v3;
          }

          v5 = 6;
        }

        else
        {
          v29 = -3.72066208e-103;
          sub_10001D684(&v25, &v29);
          v14 = v29;
          v29 = -3.72066208e-103;
          sub_10001D684(&v27, &v29);
          v4 = v29;
          if (*&v29 >= *&v14)
          {
            v4 = v14;
          }

          v5 = 5;
        }

        v17[0] = v5;
        v18 = *&v4;
      }

      v6 = v17;
      sub_10000298C(v17);
      sub_10000298C(v17);
      sub_10000298C(v17);
      v15 = v23;
      LOBYTE(v23) = v17[0];
      v17[0] = v15;
      v16 = v24;
      v24 = v18;
      v18 = v16;
      sub_10000298C(&v23);
      sub_10000298C(v17);
      v9 = v17[0];
    }

    else
    {
      v6 = v19;
      sub_10000FF70(v19, &v25);
      sub_10000298C(v19);
      v10 = v23;
      LOBYTE(v23) = v19[0];
      v19[0] = v10;
      v11 = v24;
      v24 = v20;
      v20 = v11;
      sub_10000298C(&v23);
      sub_10000298C(v19);
      v9 = v19[0];
    }
  }

  else
  {
    v6 = v21;
    sub_10000FF70(v21, &v27);
    sub_10000298C(v21);
    v7 = v23;
    LOBYTE(v23) = v21[0];
    v21[0] = v7;
    v8 = v24;
    v24 = v22;
    v22 = v8;
    sub_10000298C(&v23);
    sub_10000298C(v21);
    v9 = v21[0];
  }

  sub_1000048FC(v6 + 1, v9);
  sub_10000F8A4(a2 + 24, &v23);
  sub_10000298C(&v23);
  sub_1000048FC(&v24, v23);
  sub_10000298C(&v25);
  sub_1000048FC(&v26, v25);
  sub_10000298C(&v27);
  sub_1000048FC(&v28, v27);
}

void sub_1000F7628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  sub_10002C5F4(va);
  sub_10002C5F4(va1);
  sub_10002C5F4(va2);
  _Unwind_Resume(a1);
}

void sub_1000F7668(uint64_t a1, uint64_t a2)
{
  v27 = 0xAAAAAAAAAAAAAAAALL;
  v28 = 0xAAAAAAAAAAAAAAAALL;
  sub_100026694(a2, &v27);
  v25 = 0xAAAAAAAAAAAAAAAALL;
  v26 = 0xAAAAAAAAAAAAAAAALL;
  sub_100026694(a2, &v25);
  v23 = 0xAAAAAAAAAAAAAA00;
  v24 = 0;
  sub_10000298C(&v23);
  sub_10000298C(&v23);
  if (v25)
  {
    if (v27)
    {
      if (v25 == 7 || v27 == 7)
      {
        v29 = NAN;
        sub_100025F58(&v25, &v29);
        v12 = v29;
        v29 = NAN;
        sub_100025F58(&v27, &v29);
        v13 = v29;
        if (v12 >= v29)
        {
          v13 = v12;
        }

        v17[0] = 7;
        v18 = *&v13;
      }

      else
      {
        if (v25 == 6 && v27 == 6)
        {
          v29 = -3.72066208e-103;
          sub_10001E0A4(&v25, &v29);
          v3 = *&v29;
          v29 = -3.72066208e-103;
          sub_10001E0A4(&v27, &v29);
          v4 = v29;
          if (v3 > *&v29)
          {
            v4 = *&v3;
          }

          v5 = 6;
        }

        else
        {
          v29 = -3.72066208e-103;
          sub_10001D684(&v25, &v29);
          v14 = v29;
          v29 = -3.72066208e-103;
          sub_10001D684(&v27, &v29);
          v4 = v29;
          if (*&v14 > *&v29)
          {
            v4 = v14;
          }

          v5 = 5;
        }

        v17[0] = v5;
        v18 = *&v4;
      }

      v6 = v17;
      sub_10000298C(v17);
      sub_10000298C(v17);
      sub_10000298C(v17);
      v15 = v23;
      LOBYTE(v23) = v17[0];
      v17[0] = v15;
      v16 = v24;
      v24 = v18;
      v18 = v16;
      sub_10000298C(&v23);
      sub_10000298C(v17);
      v9 = v17[0];
    }

    else
    {
      v6 = v19;
      sub_10000FF70(v19, &v25);
      sub_10000298C(v19);
      v10 = v23;
      LOBYTE(v23) = v19[0];
      v19[0] = v10;
      v11 = v24;
      v24 = v20;
      v20 = v11;
      sub_10000298C(&v23);
      sub_10000298C(v19);
      v9 = v19[0];
    }
  }

  else
  {
    v6 = v21;
    sub_10000FF70(v21, &v27);
    sub_10000298C(v21);
    v7 = v23;
    LOBYTE(v23) = v21[0];
    v21[0] = v7;
    v8 = v24;
    v24 = v22;
    v22 = v8;
    sub_10000298C(&v23);
    sub_10000298C(v21);
    v9 = v21[0];
  }

  sub_1000048FC(v6 + 1, v9);
  sub_10000F8A4(a2 + 24, &v23);
  sub_10000298C(&v23);
  sub_1000048FC(&v24, v23);
  sub_10000298C(&v25);
  sub_1000048FC(&v26, v25);
  sub_10000298C(&v27);
  sub_1000048FC(&v28, v27);
}

void sub_1000F794C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  sub_10002C5F4(va);
  sub_10002C5F4(va1);
  sub_10002C5F4(va2);
  _Unwind_Resume(a1);
}

void sub_1000F7990(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000F79CC(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000F7A08(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000F7A44(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000F7A80(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000F7ABC(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000F7AF8(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000F7B34(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000F7B70(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000F7BAC(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_1000F7BE8(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

__n128 sub_1000F7C20@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v16 = *a1;
  v17 = *(a1 + 8);
  v18 = *(a1 + 24);
  *v15 = *a2;
  *&v15[8] = *(a2 + 8);
  *&v15[24] = *(a2 + 24);
  v7 = sub_100026990(&v16, v15);
  if (v7)
  {
    v8 = v7;
    do
    {
      v9 = v8 >> 1;
      *&v15[32] = 0xAAAAAAAAAAAAAAAALL;
      *&v10 = 0xAAAAAAAAAAAAAAAALL;
      *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *v15 = v10;
      *&v15[16] = v10;
      v16 = *a1;
      v17 = *(a1 + 8);
      v18 = *(a1 + 24);
      sub_100026B3C(&v16, v8 >> 1);
      *v15 = v16;
      *&v15[8] = v17;
      *&v15[24] = v18;
      v11 = sub_10001CF44(v15);
      if ((sub_10001D7F8(a3, v11) & 1) == 0)
      {
        v12 = sub_100012BFC(v15);
        *a1 = *v12;
        v13 = *(v12 + 1);
        *(a1 + 24) = *(v12 + 3);
        *(a1 + 8) = v13;
        v9 = v8 + ~v9;
      }

      v8 = v9;
    }

    while (v9);
  }

  *a4 = *a1;
  *(a4 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  *(a4 + 24) = result;
  return result;
}

void *sub_1000F7E54(void *a1, __int128 *a2, void *a3)
{
  *a1 = off_100186F40;
  object = dispatch_queue_create("analyticsd.SqliteDeviceConfigurationStoreQueue", 0);
  sub_10007EA2C(a1, off_10018AEE8, &object, a2, a3);
  if (object)
  {
    dispatch_release(object);
  }

  sub_10011411C(a1 + 14, off_10018AEF8);
  *a1 = off_10018AC78;
  a1[14] = off_10018ADD8;
  a1[15] = 0;
  a1[16] = 0;
  a1[17] = 0;
  return a1;
}

void sub_1000F7F60(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_1000F7F6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 8;
  v7 = a1;
  v5 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100102E3C;
  block[3] = &unk_10018B238;
  block[4] = v4;
  block[5] = &v7;
  dispatch_sync(v5, block);
  sub_10007FC24((a1 + 136), 0);
  sub_10007FC24((a1 + 128), 0);
  sub_10007FC24((a1 + 120), 0);
  sub_10009EE34(a1, (a2 + 8));
  return a1;
}

void sub_1000F8074(uint64_t a1)
{
  sub_1000F7F6C(a1, &off_10018AEE0);

  operator delete();
}

void sub_1000F80B4(uint64_t a1)
{
  sub_1000F7F6C(a1 - 112, &off_10018AEE0);

  operator delete();
}

uint64_t sub_1000F80F8(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v5[0] = a1;
  v5[1] = a2;
  v3 = *(a1 + 24);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_100102E84;
  v6[3] = &unk_10018B258;
  v6[4] = v2;
  v6[5] = v5;
  v7 = v6;
  v9 = -86;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100008890;
  block[3] = &unk_10018B278;
  block[4] = &v9;
  block[5] = &v7;
  dispatch_sync(v3, block);
  return v9;
}

uint64_t sub_1000F8200(uint64_t a1)
{
  v1 = a1 + 8;
  v4 = a1;
  v2 = *(a1 + 24);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_100103014;
  v5[3] = &unk_10018B298;
  v5[4] = v1;
  v5[5] = &v4;
  v8 = -86;
  v6 = v5;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100008890;
  block[3] = &unk_10018B278;
  block[4] = &v8;
  block[5] = &v6;
  dispatch_sync(v2, block);
  return v8;
}

uint64_t sub_1000F8304(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v5[0] = a1;
  v5[1] = a2;
  v3 = *(a1 + 24);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_1001031D4;
  v6[3] = &unk_10018B2B8;
  v6[4] = v2;
  v6[5] = v5;
  v7 = v6;
  v9 = -86;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100008890;
  block[3] = &unk_10018B278;
  block[4] = &v9;
  block[5] = &v7;
  dispatch_sync(v3, block);
  return v9;
}

void sub_1000F840C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5[0] = a1;
  v5[1] = a2;
  v4 = *(a1 + 24);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_10010353C;
  v6[3] = &unk_10018B2D8;
  v6[4] = a1 + 8;
  v6[5] = v5;
  v7 = v6;
  *a3 = 0xAAAAAAAAAAAAAA00;
  *(a3 + 8) = 0;
  sub_10000298C(a3);
  sub_10000298C(a3);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_10002175C;
  block[3] = &unk_10018B2F8;
  block[4] = a3;
  block[5] = &v7;
  dispatch_sync(v4, block);
}

void sub_1000F8538(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((atomic_load_explicit(&qword_100192F08, memory_order_acquire) & 1) == 0)
  {
    sub_100106BB0();
  }

  std::mutex::lock(&stru_100192830);
  v10 = &v16;
  v11 = a1;
  v4 = *(a1 + 24);
  v16 = 0;
  v17 = _NSConcreteStackBlock;
  v18 = 0x40000000;
  v19 = sub_100103870;
  v20 = &unk_10018B318;
  v21 = a1 + 8;
  v22 = &v10;
  v14 = &v17;
  LOBYTE(v23) = -86;
  block = _NSConcreteStackBlock;
  v26 = 0x40000000;
  v27 = sub_100008890;
  v28 = &unk_10018B278;
  v29 = &v23;
  v30 = &v14;
  dispatch_sync(v4, &block);
  v5 = v23;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (v5 == 1)
  {
    while (1)
    {
      v14 = 0xAAAAAAAAAAAAAA00;
      v15 = 0;
      sub_10000298C(&v14);
      sub_10000298C(&v14);
      v10 = a1;
      v11 = &v16;
      v12 = a2;
      v13 = &v14;
      v6 = *(a1 + 24);
      v17 = _NSConcreteStackBlock;
      v18 = 0x40000000;
      v19 = sub_100103960;
      v20 = &unk_10018B338;
      v21 = a1 + 8;
      v22 = &v10;
      v23 = &v17;
      v24 = -86;
      block = _NSConcreteStackBlock;
      v26 = 0x40000000;
      v27 = sub_100008890;
      v28 = &unk_10018B278;
      v29 = &v24;
      v30 = &v23;
      dispatch_sync(v6, &block);
      if (v24 != 1)
      {
        break;
      }

      v7 = *(a2 + 8);
      if (v7 >= *(a2 + 16))
      {
        v8 = sub_1000DD9EC(a2, &v14);
      }

      else
      {
        sub_10000FF70(*(a2 + 8), &v14);
        v8 = v7 + 16;
      }

      *(a2 + 8) = v8;
      sub_10000298C(&v14);
      sub_1000048FC(&v15, v14);
    }

    sub_10000298C(&v14);
    sub_1000048FC(&v15, v14);
  }

  v17 = &v16;
  v9 = *(a1 + 24);
  block = _NSConcreteStackBlock;
  v26 = 0x40000000;
  v27 = sub_100103C0C;
  v28 = &unk_10018B358;
  v29 = (a1 + 8);
  v30 = &v17;
  dispatch_sync(v9, &block);
  sub_10007FC24(&v16, 0);
  std::mutex::unlock(&stru_100192830);
}

void sub_1000F8838(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1000F8860(uint64_t a1@<X0>, void *a2@<X8>)
{
  if ((atomic_load_explicit(&qword_100192F10, memory_order_acquire) & 1) == 0)
  {
    sub_100106C08();
  }

  std::mutex::lock(&stru_100192870);
  v8 = &v11;
  v9 = a1;
  v4 = *(a1 + 24);
  v11 = 0;
  v12 = _NSConcreteStackBlock;
  v13 = 0x40000000;
  v14 = sub_100103C1C;
  v15 = &unk_10018B378;
  v16 = a1 + 8;
  v17 = &v8;
  v18 = &v12;
  v19 = -86;
  block = _NSConcreteStackBlock;
  v21 = 0x40000000;
  v22 = sub_100008890;
  v23 = &unk_10018B278;
  v24 = &v19;
  v25 = &v18;
  dispatch_sync(v4, &block);
  v5 = v19;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (v5 == 1)
  {
    do
    {
      v8 = a1;
      v9 = &v11;
      v10 = a2;
      v6 = *(a1 + 24);
      v12 = _NSConcreteStackBlock;
      v13 = 0x40000000;
      v14 = sub_100103D0C;
      v15 = &unk_10018B398;
      v16 = a1 + 8;
      v17 = &v8;
      v18 = &v12;
      v19 = -86;
      block = _NSConcreteStackBlock;
      v21 = 0x40000000;
      v22 = sub_100008890;
      v23 = &unk_10018B278;
      v24 = &v19;
      v25 = &v18;
      dispatch_sync(v6, &block);
    }

    while ((v19 & 1) != 0);
  }

  v12 = &v11;
  v7 = *(a1 + 24);
  block = _NSConcreteStackBlock;
  v21 = 0x40000000;
  v22 = sub_100103FB8;
  v23 = &unk_10018B3B8;
  v24 = (a1 + 8);
  v25 = &v12;
  dispatch_sync(v7, &block);
  sub_10007FC24(&v11, 0);
  std::mutex::unlock(&stru_100192870);
}

void sub_1000F8B04(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_1000F8B18(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v4[0] = a1;
  v4[1] = a2;
  v3 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100103FC8;
  block[3] = &unk_10018B3D8;
  block[4] = v2;
  block[5] = v4;
  dispatch_sync(v3, block);
}

uint64_t sub_1000F8BC8(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v5[0] = a1;
  v5[1] = a2;
  v3 = *(a1 + 24);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_100104148;
  v6[3] = &unk_10018B3F8;
  v6[4] = v2;
  v6[5] = v5;
  v7 = v6;
  v9 = -86;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100008890;
  block[3] = &unk_10018B278;
  block[4] = &v9;
  block[5] = &v7;
  dispatch_sync(v3, block);
  return v9;
}

void sub_1000F8CD0(uint64_t a1)
{
  v1 = a1 + 8;
  v3 = a1;
  v2 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1001042D8;
  block[3] = &unk_10018B418;
  block[4] = v1;
  block[5] = &v3;
  dispatch_sync(v2, block);
}

uint64_t sub_1000F8D80(uint64_t a1, char a2)
{
  v6 = a2;
  v2 = a1 + 8;
  v5[0] = a1;
  v5[1] = &v6;
  v3 = *(a1 + 24);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_100104364;
  v7[3] = &unk_10018B438;
  v7[4] = v2;
  v7[5] = v5;
  v8 = v7;
  v10 = -86;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100008890;
  block[3] = &unk_10018B278;
  block[4] = &v10;
  block[5] = &v8;
  dispatch_sync(v3, block);
  return v10;
}

uint64_t sub_1000F8E90(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v5[0] = a1;
  v5[1] = a2;
  v3 = *(a1 + 24);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_100104558;
  v6[3] = &unk_10018B458;
  v6[4] = v2;
  v6[5] = v5;
  v7 = v6;
  v9 = -86;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100008890;
  block[3] = &unk_10018B278;
  block[4] = &v9;
  block[5] = &v7;
  dispatch_sync(v3, block);
  return v9;
}

uint64_t sub_1000F8F98(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v5[0] = a2;
  v5[1] = a1;
  v3 = *(a1 + 24);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_1001046F0;
  v6[3] = &unk_10018B478;
  v6[4] = v2;
  v6[5] = v5;
  v7 = v6;
  v9 = -86;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100008890;
  block[3] = &unk_10018B278;
  block[4] = &v9;
  block[5] = &v7;
  dispatch_sync(v3, block);
  return v9;
}

void sub_1000F90A0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v4 = a1 + 8;
  v6[0] = a1;
  v6[1] = a2;
  v5 = *(a1 + 24);
  v6[2] = a3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_100104F0C;
  v7[3] = &unk_10018B528;
  v7[4] = v4;
  v7[5] = v6;
  *a4 = 0u;
  a4[1] = 0u;
  v8 = v7;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100105110;
  block[3] = &unk_10018B548;
  block[4] = a4;
  block[5] = &v8;
  dispatch_sync(v5, block);
}

void sub_1000F919C(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_100192F18, memory_order_acquire) & 1) == 0)
  {
    sub_100106C60();
  }

  std::mutex::lock(&stru_1001928B0);
  v9 = &v13;
  v10 = a1;
  v3 = *(a1 + 24);
  v13 = 0;
  v14 = _NSConcreteStackBlock;
  v15 = 0x40000000;
  v16 = sub_1001051A8;
  v17 = &unk_10018B568;
  v18 = a1 + 8;
  v19 = &v9;
  v20 = &v14;
  LOBYTE(v12) = -86;
  block = _NSConcreteStackBlock;
  v23 = 0x40000000;
  v24 = sub_100008890;
  v25 = &unk_10018B278;
  v26 = &v12;
  v27 = &v20;
  dispatch_sync(v3, &block);
  if (v12 == 1)
  {
    v4 = qword_100192D80;
    if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_INFO))
    {
      LOWORD(block) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[Config Store] Iterating all enabled transforms", &block, 2u);
    }

    do
    {
      v9 = a1;
      v10 = &v13;
      v11 = &v12;
      v12 = 0;
      v5 = *(a1 + 24);
      v14 = _NSConcreteStackBlock;
      v15 = 0x40000000;
      v16 = sub_100105298;
      v17 = &unk_10018B588;
      v18 = a1 + 8;
      v19 = &v9;
      v20 = &v14;
      v21 = -86;
      block = _NSConcreteStackBlock;
      v23 = 0x40000000;
      v24 = sub_100008890;
      v25 = &unk_10018B278;
      v26 = &v21;
      v27 = &v20;
      dispatch_sync(v5, &block);
      v6 = v21;
      if (v21 == 1 && v12)
      {
        sub_1000AD500(a2, v12);
      }
    }

    while ((v6 & 1) != 0);
  }

  v14 = &v13;
  v7 = *(a1 + 24);
  block = _NSConcreteStackBlock;
  v23 = 0x40000000;
  v24 = sub_1001053D4;
  v25 = &unk_10018B5A8;
  v26 = (a1 + 8);
  v27 = &v14;
  dispatch_sync(v7, &block);
  sub_10007FC24(&v13, 0);
  std::mutex::unlock(&stru_1001928B0);
}

void sub_1000F94B4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1000F94CC(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_100192F20, memory_order_acquire) & 1) == 0)
  {
    sub_100106CB8();
  }

  std::mutex::lock(&stru_1001928F0);
  v9 = &v13;
  v10 = a1;
  v3 = *(a1 + 24);
  v13 = 0;
  v14 = _NSConcreteStackBlock;
  v15 = 0x40000000;
  v16 = sub_1001053E4;
  v17 = &unk_10018B5C8;
  v18 = a1 + 8;
  v19 = &v9;
  v20 = &v14;
  LOBYTE(v12) = -86;
  block = _NSConcreteStackBlock;
  v23 = 0x40000000;
  v24 = sub_100008890;
  v25 = &unk_10018B278;
  v26 = &v12;
  v27 = &v20;
  dispatch_sync(v3, &block);
  if (v12 == 1)
  {
    v4 = qword_100192D80;
    if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_INFO))
    {
      LOWORD(block) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[Config Store] Iterating all disabled transforms", &block, 2u);
    }

    do
    {
      v9 = a1;
      v10 = &v13;
      v11 = &v12;
      v12 = 0;
      v5 = *(a1 + 24);
      v14 = _NSConcreteStackBlock;
      v15 = 0x40000000;
      v16 = sub_1001054D4;
      v17 = &unk_10018B5E8;
      v18 = a1 + 8;
      v19 = &v9;
      v20 = &v14;
      v21 = -86;
      block = _NSConcreteStackBlock;
      v23 = 0x40000000;
      v24 = sub_100008890;
      v25 = &unk_10018B278;
      v26 = &v21;
      v27 = &v20;
      dispatch_sync(v5, &block);
      v6 = v21;
      if (v21 == 1 && v12)
      {
        sub_1000AD500(a2, v12);
      }
    }

    while ((v6 & 1) != 0);
  }

  v14 = &v13;
  v7 = *(a1 + 24);
  block = _NSConcreteStackBlock;
  v23 = 0x40000000;
  v24 = sub_100105610;
  v25 = &unk_10018B608;
  v26 = (a1 + 8);
  v27 = &v14;
  dispatch_sync(v7, &block);
  sub_10007FC24(&v13, 0);
  std::mutex::unlock(&stru_1001928F0);
}

void sub_1000F97E4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1000F97FC(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_100192F30, memory_order_acquire) & 1) == 0)
  {
    sub_100106D68();
  }

  std::mutex::lock(&stru_100192970);
  v9 = &v13;
  v10 = a1;
  v3 = *(a1 + 24);
  v13 = 0;
  v14 = _NSConcreteStackBlock;
  v15 = 0x40000000;
  v16 = sub_100105620;
  v17 = &unk_10018B688;
  v18 = a1 + 8;
  v19 = &v9;
  v20 = &v14;
  LOBYTE(v12) = -86;
  block = _NSConcreteStackBlock;
  v23 = 0x40000000;
  v24 = sub_100008890;
  v25 = &unk_10018B278;
  v26 = &v12;
  v27 = &v20;
  dispatch_sync(v3, &block);
  if (v12 == 1)
  {
    v4 = qword_100192D80;
    if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_INFO))
    {
      LOWORD(block) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[Config Store] Iterating all active events", &block, 2u);
    }

    do
    {
      v9 = a1;
      v10 = &v13;
      v11 = &v12;
      v12 = 0;
      v5 = *(a1 + 24);
      v14 = _NSConcreteStackBlock;
      v15 = 0x40000000;
      v16 = sub_100105710;
      v17 = &unk_10018B6A8;
      v18 = a1 + 8;
      v19 = &v9;
      v20 = &v14;
      v21 = -86;
      block = _NSConcreteStackBlock;
      v23 = 0x40000000;
      v24 = sub_100008890;
      v25 = &unk_10018B278;
      v26 = &v21;
      v27 = &v20;
      dispatch_sync(v5, &block);
      v6 = v21;
      if (v21 == 1 && v12)
      {
        sub_1000AD500(a2, v12);
      }
    }

    while ((v6 & 1) != 0);
  }

  v14 = &v13;
  v7 = *(a1 + 24);
  block = _NSConcreteStackBlock;
  v23 = 0x40000000;
  v24 = sub_10010584C;
  v25 = &unk_10018B6C8;
  v26 = (a1 + 8);
  v27 = &v14;
  dispatch_sync(v7, &block);
  sub_10007FC24(&v13, 0);
  std::mutex::unlock(&stru_100192970);
}

void sub_1000F9B14(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000F9B2C(uint64_t a1)
{
  v1 = a1 + 8;
  v4 = a1;
  v2 = *(a1 + 24);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_10010585C;
  v5[3] = &unk_10018B6E8;
  v5[4] = v1;
  v5[5] = &v4;
  v8 = -1431655766;
  v6 = v5;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100105988;
  block[3] = &unk_10018B708;
  block[4] = &v8;
  block[5] = &v6;
  dispatch_sync(v2, block);
  return v8;
}

void sub_1000F9C30(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_100192F38, memory_order_acquire) & 1) == 0)
  {
    sub_100106DC0();
  }

  std::mutex::lock(&stru_1001929B0);
  v10 = &v20;
  v11 = a1;
  v3 = *(a1 + 24);
  v20 = 0;
  v21 = _NSConcreteStackBlock;
  v22 = 0x40000000;
  v23 = sub_1001059C4;
  v24 = &unk_10018B728;
  v25 = a1 + 8;
  v26 = &v10;
  v28 = &v21;
  LOBYTE(v19) = -86;
  block = _NSConcreteStackBlock;
  v30 = 0x40000000;
  v31 = sub_100008890;
  v32 = &unk_10018B278;
  v33 = &v19;
  v34 = &v28;
  dispatch_sync(v3, &block);
  if (v19 == 1)
  {
    v4 = qword_100192D80;
    if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_INFO))
    {
      LOWORD(block) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[Config Store] Iterating all eventdefs", &block, 2u);
    }

    do
    {
      v18 = 0;
      v19 = 0;
      v16 = 0;
      v17 = 0;
      v10 = a1;
      v11 = &v20;
      v12 = &v19;
      v13 = &v18;
      v14 = &v17;
      v15 = &v16;
      v5 = *(a1 + 24);
      v21 = _NSConcreteStackBlock;
      v22 = 0x40000000;
      v23 = sub_100105AB4;
      v24 = &unk_10018B748;
      v25 = a1 + 8;
      v26 = &v10;
      v28 = &v21;
      v27 = -86;
      block = _NSConcreteStackBlock;
      v30 = 0x40000000;
      v31 = sub_100008890;
      v32 = &unk_10018B278;
      v33 = &v27;
      v34 = &v28;
      dispatch_sync(v5, &block);
      v6 = v27;
      if (v27 == 1 && v16)
      {
        block = v19;
        v21 = v18;
        v10 = v17;
        v28 = v16;
        v7 = *(a2 + 24);
        if (!v7)
        {
          sub_10002B200();
        }

        (*(*v7 + 48))(v7, &block, &v21, &v10, &v28);
      }
    }

    while ((v6 & 1) != 0);
  }

  v21 = &v20;
  v8 = *(a1 + 24);
  block = _NSConcreteStackBlock;
  v30 = 0x40000000;
  v31 = sub_100105C38;
  v32 = &unk_10018B768;
  v33 = (a1 + 8);
  v34 = &v21;
  dispatch_sync(v8, &block);
  sub_10007FC24(&v20, 0);
  std::mutex::unlock(&stru_1001929B0);
}

void sub_1000F9FB8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1000F9FD0(uint64_t a1, sqlite3_stmt **a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_100192F40, memory_order_acquire) & 1) == 0)
  {
    sub_100106E18();
  }

  std::mutex::lock(&stru_1001929F0);
  v10 = &v19;
  v11 = a1;
  v12 = a2;
  v4 = *(a1 + 24);
  v19 = 0;
  v20 = _NSConcreteStackBlock;
  v21 = 0x40000000;
  v22 = sub_100105C48;
  v23 = &unk_10018B788;
  v24 = a1 + 8;
  v25 = &v10;
  v26 = &v20;
  LOBYTE(v18) = -86;
  block = _NSConcreteStackBlock;
  v29 = 0x40000000;
  v30 = sub_100008890;
  v31 = &unk_10018B278;
  v32 = &v18;
  v33 = &v26;
  dispatch_sync(v4, &block);
  if (v18 == 1)
  {
    do
    {
      v17 = 0;
      v18 = 0;
      v15 = &v16;
      v16 = 0;
      v10 = a2;
      v11 = a1;
      v12 = &v19;
      v13 = &v18;
      v14 = &v17;
      v5 = *(a1 + 24);
      v20 = _NSConcreteStackBlock;
      v21 = 0x40000000;
      v22 = sub_100105D4C;
      v23 = &unk_10018B7A8;
      v24 = a1 + 8;
      v25 = &v10;
      v26 = &v20;
      v27 = -86;
      block = _NSConcreteStackBlock;
      v29 = 0x40000000;
      v30 = sub_100008890;
      v31 = &unk_10018B278;
      v32 = &v27;
      v33 = &v26;
      dispatch_sync(v5, &block);
      v6 = v27;
      if (v27 == 1 && v16)
      {
        sub_100020558(a3, v18, v17, v16);
      }
    }

    while ((v6 & 1) != 0);
  }

  v20 = &v19;
  v7 = *(a1 + 24);
  block = _NSConcreteStackBlock;
  v29 = 0x40000000;
  v30 = sub_100105F08;
  v31 = &unk_10018B7C8;
  v32 = (a1 + 8);
  v33 = &v20;
  dispatch_sync(v7, &block);
  sub_10007FC24(&v19, 0);
  std::mutex::unlock(&stru_1001929F0);
}

void sub_1000FA2B8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1000FA2D0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_100192F48, memory_order_acquire) & 1) == 0)
  {
    sub_100106E70();
  }

  std::mutex::lock(&stru_100192A30);
  v10 = &v18;
  v11 = a1;
  v12 = a2;
  v5 = *(a1 + 24);
  v18 = 0;
  v19 = _NSConcreteStackBlock;
  v20 = 0x40000000;
  v21 = sub_100105F18;
  v22 = &unk_10018B7E8;
  v23 = a1 + 8;
  v24 = &v10;
  v25 = &v19;
  LOBYTE(v17) = -86;
  block = _NSConcreteStackBlock;
  v28 = 0x40000000;
  v29 = sub_100008890;
  v30 = &unk_10018B278;
  v31 = &v17;
  v32 = &v25;
  dispatch_sync(v5, &block);
  if (v17 == 1)
  {
    do
    {
      v16 = 0;
      v17 = 0;
      v14 = &v15;
      v15 = 0;
      v10 = a1;
      v11 = &v18;
      v12 = &v17;
      v13 = &v16;
      v6 = *(a1 + 24);
      v19 = _NSConcreteStackBlock;
      v20 = 0x40000000;
      v21 = sub_10010601C;
      v22 = &unk_10018B808;
      v23 = a1 + 8;
      v24 = &v10;
      v25 = &v19;
      v26 = -86;
      block = _NSConcreteStackBlock;
      v28 = 0x40000000;
      v29 = sub_100008890;
      v30 = &unk_10018B278;
      v31 = &v26;
      v32 = &v25;
      dispatch_sync(v6, &block);
      v7 = v26;
      if (v26 == 1 && v17 && v15)
      {
        sub_100020558(a3, v17, v16, v15);
      }
    }

    while ((v7 & 1) != 0);
  }

  v19 = &v18;
  v8 = *(a1 + 24);
  block = _NSConcreteStackBlock;
  v28 = 0x40000000;
  v29 = sub_100106188;
  v30 = &unk_10018B828;
  v31 = (a1 + 8);
  v32 = &v19;
  dispatch_sync(v8, &block);
  sub_10007FC24(&v18, 0);
  std::mutex::unlock(&stru_100192A30);
}

void sub_1000FA5B8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1000FA5D0(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_100192F58, memory_order_acquire) & 1) == 0)
  {
    sub_100106F20();
  }

  std::mutex::lock(&stru_100192AB0);
  v9 = &v15;
  v10 = a1;
  v3 = *(a1 + 24);
  v15 = 0;
  v16 = _NSConcreteStackBlock;
  v17 = 0x40000000;
  v18 = sub_100106198;
  v19 = &unk_10018B8A8;
  v20 = a1 + 8;
  v21 = &v9;
  v22 = &v16;
  LOBYTE(v14) = -86;
  block = _NSConcreteStackBlock;
  v25 = 0x40000000;
  v26 = sub_100008890;
  v27 = &unk_10018B278;
  v28 = &v14;
  v29 = &v22;
  dispatch_sync(v3, &block);
  if (v14 == 1)
  {
    v4 = qword_100192D80;
    if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_INFO))
    {
      LOWORD(block) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[Config Store] Iterating all external configs", &block, 2u);
    }

    do
    {
      v13 = 0;
      v14 = 0;
      v9 = a1;
      v10 = &v15;
      v11 = &v14;
      v12 = &v13;
      v5 = *(a1 + 24);
      v16 = _NSConcreteStackBlock;
      v17 = 0x40000000;
      v18 = sub_100106288;
      v19 = &unk_10018B8C8;
      v20 = a1 + 8;
      v21 = &v9;
      v22 = &v16;
      v23 = -86;
      block = _NSConcreteStackBlock;
      v25 = 0x40000000;
      v26 = sub_100008890;
      v27 = &unk_10018B278;
      v28 = &v23;
      v29 = &v22;
      dispatch_sync(v5, &block);
      v6 = v23;
      if (v23 == 1 && v13)
      {
        sub_1000FA908(a2, v14, v13);
      }
    }

    while ((v6 & 1) != 0);
  }

  v16 = &v15;
  v7 = *(a1 + 24);
  block = _NSConcreteStackBlock;
  v25 = 0x40000000;
  v26 = sub_1001063DC;
  v27 = &unk_10018B8E8;
  v28 = (a1 + 8);
  v29 = &v16;
  dispatch_sync(v7, &block);
  sub_10007FC24(&v15, 0);
  std::mutex::unlock(&stru_100192AB0);
}

void sub_1000FA8F8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000FA908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_10002B200();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

void sub_1000FA994(uint64_t a1)
{
  v1 = a1 + 8;
  v3 = a1;
  v2 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1001063EC;
  block[3] = &unk_10018B908;
  block[4] = v1;
  block[5] = &v3;
  dispatch_sync(v2, block);
}

uint64_t sub_1000FAA44(uint64_t a1, void *a2)
{
  memset(&v15, 170, sizeof(v15));
  v4 = sub_10000DFA0(a2, "uuid");
  sub_100010390(v4, &v15);
  size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v15.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v14 = 0xAAAAAAAAAAAAAAAALL;
    sub_10007F8D4(a1, "INSERT INTO configs (config_uuid, config_parent_uuid, config_header, config_type) VALUES (?1, ?2, ?3, ?4);", 0, &v14);
    if (v14)
    {
      v13 = 0;
      sub_100023980(a1, &v14, 1, &v15, &v13);
      *buf = "parentUuid";
      v22 = 0xAAAAAAAAAAAAAAAALL;
      *&v6 = 0xAAAAAAAAAAAAAAAALL;
      *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *v21 = v6;
      *&v21[16] = v6;
      sub_10000BD10(a2, buf, v21);
      __p[0] = a2;
      __p[1] = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0x8000000000000000;
      sub_10000DCFC(__p);
      if (sub_10000DD7C(v21, __p))
      {
        v7 = sub_100016CD8();
        if (!v7)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v7 = sub_10000DB44(v21);
      }

      if (*v7 == 3)
      {
        v11 = *(v7 + 8);
        if (v11)
        {
          sub_100023980(a1, &v14, 2, v11, &v13);
          goto LABEL_19;
        }
      }

LABEL_18:
      sub_1000294A8(a1, &v14, 2, &v13);
LABEL_19:
      memset(v21, 170, 24);
      sub_100017DF0(v21);
    }

    v8 = *(a1 + 32);
    v9 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v8)
    {
      if (v9)
      {
        v10 = sqlite3_errmsg(v8);
        sub_1001070BC(v10, v21);
      }
    }

    else if (v9)
    {
      sub_1001070F4();
    }

    sub_10007FC24(&v14, 0);
  }

  else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
  {
    sub_100107154();
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1000FAF40(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_1000FAF4C(uint64_t a1, sqlite3_int64 a2, uint64_t a3)
{
  v63 = a2;
  v5 = qword_100192D80;
  if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a3 + 23) >= 0)
    {
      v6 = a3;
    }

    else
    {
      v6 = *a3;
    }

    *buf = 136446210;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Config Store] Cloning from parent config with uuid '%{public}s'", buf, 0xCu);
  }

  v62 = 0xAAAAAAAAAAAAAAAALL;
  sub_10007F8D4(a1, "SELECT config_id FROM configs WHERE config_uuid=?1 LIMIT 1;", 0, &v62);
  if (!v62)
  {
    v8 = *(a1 + 32);
    v9 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v8)
    {
      if (v9)
      {
        v10 = sqlite3_errmsg(v8);
        sub_10010777C(v10, buf);
      }
    }

    else if (v9)
    {
      sub_1001077B4();
    }

    goto LABEL_97;
  }

  sub_10000BE00(a1, &v62, 1, a3);
  v7 = sub_10000BE48(a1, &v62);
  if (v7 != 100)
  {
    if (v7 == 101)
    {
      if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_1001071B4(a3);
      }
    }

    else
    {
      v32 = *(a1 + 32);
      v33 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
      if (v32)
      {
        if (v33)
        {
          v34 = sqlite3_errmsg(v32);
          sub_1001076E4(v34, buf);
        }
      }

      else if (v33)
      {
        sub_10010771C();
      }
    }

LABEL_97:
    v29 = 0;
    goto LABEL_98;
  }

  v61 = sub_100016AC4(a1, &v62, 0);
  sub_10007F8D4(a1, "INSERT INTO config_transforms (config_id, transform_id) SELECT ?1, transform_id FROM config_transforms WHERE config_id=?2;", 0, buf);
  v11 = *buf;
  *buf = 0;
  sub_10007FC24(&v62, v11);
  sub_10007FC24(buf, 0);
  if (!v62)
  {
    v35 = *(a1 + 32);
    v36 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v35)
    {
      if (v36)
      {
        v37 = sqlite3_errmsg(v35);
        sub_10010764C(v37, buf);
      }
    }

    else if (v36)
    {
      sub_100107684();
    }

    goto LABEL_97;
  }

  v60 = 0;
  sub_100023B24(a1, &v62, 1, &v63, &v60);
  sub_100023B24(a1, &v62, 2, &v61, &v60);
  do
  {
    v12 = sub_100023B68(a1, &v62, &v60);
  }

  while (v12 == 100);
  if (v12 != 101)
  {
    v38 = *(a1 + 32);
    v39 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v38)
    {
      if (v39)
      {
        v40 = sqlite3_errmsg(v38);
        sub_1001075B4(v40, buf);
      }
    }

    else if (v39)
    {
      sub_1001075EC();
    }

    goto LABEL_97;
  }

  v13 = qword_100192D80;
  if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_INFO))
  {
    v14 = sqlite3_changes(*(a1 + 32));
    if (*(a3 + 23) >= 0)
    {
      v15 = a3;
    }

    else
    {
      v15 = *a3;
    }

    *buf = 67109378;
    *&buf[4] = v14;
    *&buf[8] = 2082;
    *&buf[10] = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[Config Store] Cloned %d transforms from parent configwith uuid '%{public}s' ", buf, 0x12u);
  }

  sub_10007F8D4(a1, "INSERT INTO config_eventdefs (config_id, eventdef_id) SELECT ?1, eventdef_id FROM config_eventdefs WHERE config_id=?2;", 0, buf);
  v16 = *buf;
  *buf = 0;
  sub_10007FC24(&v62, v16);
  sub_10007FC24(buf, 0);
  if (!v62)
  {
    v41 = *(a1 + 32);
    v42 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v41)
    {
      if (v42)
      {
        v43 = sqlite3_errmsg(v41);
        sub_10010751C(v43, buf);
      }
    }

    else if (v42)
    {
      sub_100107554();
    }

    goto LABEL_97;
  }

  v60 = 0;
  sub_100023B24(a1, &v62, 1, &v63, &v60);
  sub_100023B24(a1, &v62, 2, &v61, &v60);
  do
  {
    v17 = sub_100023B68(a1, &v62, &v60);
  }

  while (v17 == 100);
  if (v17 != 101)
  {
    v44 = *(a1 + 32);
    v45 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v44)
    {
      if (v45)
      {
        v46 = sqlite3_errmsg(v44);
        sub_100107484(v46, buf);
      }
    }

    else if (v45)
    {
      sub_1001074BC();
    }

    goto LABEL_97;
  }

  v18 = qword_100192D80;
  if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_INFO))
  {
    v19 = sqlite3_changes(*(a1 + 32));
    if (*(a3 + 23) >= 0)
    {
      v20 = a3;
    }

    else
    {
      v20 = *a3;
    }

    *buf = 67109378;
    *&buf[4] = v19;
    *&buf[8] = 2082;
    *&buf[10] = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "[Config Store] Cloned %d eventdefs from parent configwith uuid '%{public}s' ", buf, 0x12u);
  }

  sub_10007F8D4(a1, "INSERT INTO config_modify_eventdefs (config_id, modify_eventdef_id) SELECT ?1, modify_eventdef_id FROM config_modify_eventdefs WHERE config_id=?2;", 0, buf);
  v21 = *buf;
  *buf = 0;
  sub_10007FC24(&v62, v21);
  sub_10007FC24(buf, 0);
  if (!v62)
  {
    v47 = *(a1 + 32);
    v48 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v47)
    {
      if (v48)
      {
        v49 = sqlite3_errmsg(v47);
        sub_1001073EC(v49, buf);
      }
    }

    else if (v48)
    {
      sub_100107424();
    }

    goto LABEL_97;
  }

  v60 = 0;
  sub_100023B24(a1, &v62, 1, &v63, &v60);
  sub_100023B24(a1, &v62, 2, &v61, &v60);
  do
  {
    v22 = sub_100023B68(a1, &v62, &v60);
  }

  while (v22 == 100);
  if (v22 != 101)
  {
    v50 = *(a1 + 32);
    v51 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v50)
    {
      if (v51)
      {
        v52 = sqlite3_errmsg(v50);
        sub_100107354(v52, buf);
      }
    }

    else if (v51)
    {
      sub_10010738C();
    }

    goto LABEL_97;
  }

  v23 = qword_100192D80;
  if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_INFO))
  {
    v24 = sqlite3_changes(*(a1 + 32));
    if (*(a3 + 23) >= 0)
    {
      v25 = a3;
    }

    else
    {
      v25 = *a3;
    }

    *buf = 67109378;
    *&buf[4] = v24;
    *&buf[8] = 2082;
    *&buf[10] = v25;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "[Config Store] Cloned %d modify-eventdefs from parent configwith uuid '%{public}s' ", buf, 0x12u);
  }

  sub_10007F8D4(a1, "INSERT INTO config_external_configs (config_id, external_config_id) SELECT ?1, external_config_id FROM config_external_configs WHERE config_id=?2;", 0, buf);
  v26 = *buf;
  *buf = 0;
  sub_10007FC24(&v62, v26);
  sub_10007FC24(buf, 0);
  if (!v62)
  {
    v53 = *(a1 + 32);
    v54 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v53)
    {
      if (v54)
      {
        v55 = sqlite3_errmsg(v53);
        sub_1001072BC(v55, buf);
      }
    }

    else if (v54)
    {
      sub_1001072F4();
    }

    goto LABEL_97;
  }

  v60 = 0;
  sub_100023B24(a1, &v62, 1, &v63, &v60);
  sub_100023B24(a1, &v62, 2, &v61, &v60);
  do
  {
    v27 = sub_100023B68(a1, &v62, &v60);
  }

  while (v27 == 100);
  if (v27 != 101)
  {
    v56 = *(a1 + 32);
    v57 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v56)
    {
      if (v57)
      {
        v58 = sqlite3_errmsg(v56);
        sub_100107224(v58, buf);
      }
    }

    else if (v57)
    {
      sub_10010725C();
    }

    goto LABEL_97;
  }

  v28 = qword_100192D80;
  v29 = 1;
  if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_INFO))
  {
    v30 = sqlite3_changes(*(a1 + 32));
    if (*(a3 + 23) >= 0)
    {
      v31 = a3;
    }

    else
    {
      v31 = *a3;
    }

    *buf = 67109378;
    *&buf[4] = v30;
    *&buf[8] = 2082;
    *&buf[10] = v31;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "[Config Store] Cloned %d external configs from parent config with uuid '%{public}s'", buf, 0x12u);
  }

LABEL_98:
  sub_10007FC24(&v62, 0);
  return v29;
}

void sub_1000FB758(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_1000FB764(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*a3 != 2)
  {
    return 0;
  }

  v5 = sub_1000FBB54(a1, a2);
  if (!v5)
  {
    v7 = *(a2 + 24);
    v6 = (a2 + 24);
    if (v7 || (sub_10007F8D4(a1, "INSERT INTO sampling (sampling_def, sampling_def_perc, sampled_out, disable_sampling) VALUES (?1, ?2, ?3, ?4);", 0, buf), v8 = *buf, *buf = 0, sub_10007FC24(v6, v8), sub_10007FC24(buf, 0), *v6))
    {
      v14 = 0xAAAAAAAAAAAAAAAALL;
      sub_100016760(&v14, v6);
      __p[3] = 0;
      memset(__p, 170, 24);
      sub_100017DF0(__p);
    }

    v9 = *(a1 + 32);
    v10 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v9)
    {
      if (v10)
      {
        v11 = sqlite3_errmsg(v9);
        sub_100107884(v11, buf);
      }
    }

    else if (v10)
    {
      sub_1001078BC();
    }

    return 0;
  }

  return v5;
}

void sub_1000FBB10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    sub_1000358F0(&a17);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1000FB964);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000FBB54(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 32);
  if (*(a2 + 32) || (sub_10007F8D4(a1, "SELECT sampling_id FROM sampling WHERE sampling_def=?1 LIMIT 1", 0, __p), v4 = __p[0], __p[0] = 0, sub_10007FC24(v3, v4), sub_10007FC24(__p, 0), *v3))
  {
    v9 = 0xAAAAAAAAAAAAAAAALL;
    sub_100016760(&v9, v3);
    memset(__p, 170, sizeof(__p));
    sub_100017DF0(__p);
  }

  v6 = *(a1 + 32);
  v7 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
  if (v6)
  {
    if (v7)
    {
      v8 = sqlite3_errmsg(v6);
      sub_10010791C(v8, __p);
    }
  }

  else if (v7)
  {
    sub_100107954();
  }

  return 0;
}

void sub_1000FBCEC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_1000FBCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = 0xAAAAAAAAAAAAAAAALL;
  v20 = a3;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18[0] = v7;
  v18[1] = v7;
  sub_10003EA28(a4, "uuid", v18);
  v17 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v8;
  v16 = v8;
  sub_100016ED8(__p, a4);
  sub_1000137F8(__p);
  if (sub_100013878(v18, __p) || *sub_10001CF44(v18) != 3)
  {
    if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      sub_100107B28();
    }
  }

  else
  {
    v9 = sub_10001CF44(v18);
    sub_100010390(v9, __p);
    if (*(a2 + 8) || (sub_10007F8D4(a1, "INSERT INTO transforms (transform_uuid, transform_def, sampling_id) VALUES (?1, ?2, ?3);", 0, v21), v10 = v21[0], v21[0] = 0, sub_10007FC24((a2 + 8), v10), sub_10007FC24(v21, 0), *(a2 + 8)))
    {
      memset(v21, 170, sizeof(v21));
      sub_100017DF0(v21);
    }

    v12 = *(a1 + 32);
    v13 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v12)
    {
      if (v13)
      {
        v14 = sqlite3_errmsg(v12);
        sub_100107A90(v14, v21);
      }
    }

    else if (v13)
    {
      sub_100107AC8();
    }

    if (SBYTE7(v16) < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 0;
}

void sub_1000FC094(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

sqlite3_int64 sub_1000FC0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a2 + 16);
  if (*(a2 + 16) || (sub_10007F8D4(a1, "SELECT transform_id FROM transforms WHERE transform_uuid=?1 LIMIT 1;", 0, v12), v6 = v12[0], v12[0] = 0, sub_10007FC24(v5, v6), sub_10007FC24(v12, 0), *v5))
  {
    v12[0] = 0xAAAAAAAAAAAAAAAALL;
    sub_100016760(v12, v5);
    sub_10000BE00(a1, v5, 1, a3);
    if (sub_10000BE48(a1, v5) == 100)
    {
      v7 = sub_100016AC4(a1, v5, 0);
    }

    else
    {
      v7 = 0;
    }

    sub_100011B58(v12);
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v9)
    {
      if (v10)
      {
        v11 = sqlite3_errmsg(v9);
        sub_100107B88(v11, v12);
      }
    }

    else if (v10)
    {
      sub_100107BC0();
    }

    return 0;
  }

  return v7;
}

void sub_1000FC204(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

sqlite3_int64 sub_1000FC210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a2 + 64);
  if (*(a2 + 64) || (sub_10007F8D4(a1, "SELECT eventdef_id FROM eventdefs WHERE event_uuid=?1 LIMIT 1", 0, v12), v6 = v12[0], v12[0] = 0, sub_10007FC24(v5, v6), sub_10007FC24(v12, 0), *v5))
  {
    v12[0] = 0xAAAAAAAAAAAAAAAALL;
    sub_100016760(v12, v5);
    sub_10000BE00(a1, v5, 1, a3);
    if (sub_10000BE48(a1, v5) == 100)
    {
      v7 = sub_100016AC4(a1, v5, 0);
    }

    else
    {
      v7 = 0;
    }

    sub_100011B58(v12);
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v9)
    {
      if (v10)
      {
        v11 = sqlite3_errmsg(v9);
        sub_100107C20(v11, v12);
      }
    }

    else if (v10)
    {
      sub_100107C58();
    }

    return 0;
  }

  return v7;
}

void sub_1000FC374(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_1000FC380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v25[32] = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v25 = v4;
  *&v25[16] = v4;
  sub_10003EA28(a3, "uuid", v25);
  *&buf[32] = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v5;
  *&buf[16] = v5;
  v6 = sub_100016ED8(buf, a3);
  sub_1000137F8(v6);
  if (sub_100013878(v25, buf) || *sub_10001CF44(v25) != 3)
  {
    if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      sub_100107EE0();
    }
  }

  else
  {
    v7 = sub_10001CF44(v25);
    sub_100010390(v7, &__p);
    sub_10003EA28(a3, "name", buf);
    *v25 = *buf;
    *&v25[8] = *&buf[8];
    *&v25[24] = *&buf[24];
    *&buf[32] = 0xAAAAAAAAAAAAAAAALL;
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *buf = v8;
    *&buf[16] = v8;
    v9 = sub_100016ED8(buf, a3);
    sub_1000137F8(v9);
    if (sub_100013878(v25, buf) || *sub_10001CF44(v25) != 3)
    {
      if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_100107E80();
      }
    }

    else
    {
      v10 = sub_10001CF44(v25);
      sub_100010390(v10, &v23);
      sub_10003EA28(a3, "type", buf);
      *v25 = *buf;
      *&v25[8] = *&buf[8];
      *&v25[24] = *&buf[24];
      *&buf[32] = 0xAAAAAAAAAAAAAAAALL;
      *&v11 = 0xAAAAAAAAAAAAAAAALL;
      *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *buf = v11;
      *&buf[16] = v11;
      v12 = sub_100016ED8(buf, a3);
      sub_1000137F8(v12);
      if (sub_100013878(v25, buf) || *sub_10001CF44(v25) != 3)
      {
        if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
        {
          sub_100107E20();
        }
      }

      else
      {
        v13 = sub_10001CF44(v25);
        sub_100010390(v13, &v22);
        sub_10003EA28(a3, "configuration", buf);
        *v25 = *buf;
        *&v25[8] = *&buf[8];
        *&v25[24] = *&buf[24];
        *&buf[32] = 0xAAAAAAAAAAAAAAAALL;
        *&v14 = 0xAAAAAAAAAAAAAAAALL;
        *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *buf = v14;
        *&buf[16] = v14;
        v15 = sub_100016ED8(buf, a3);
        sub_1000137F8(v15);
        if (!sub_100013878(v25, buf) && *sub_10001CF44(v25) == 2)
        {
          v16 = sub_10001CF44(v25);
          v17 = *v16;
          if (!*v16)
          {
            goto LABEL_30;
          }

          if (v17 == 1)
          {
            v18 = *(*(v16 + 1) + 16);
          }

          else
          {
            if (v17 != 2)
            {
              goto LABEL_32;
            }

            v18 = (*(*(v16 + 1) + 8) - **(v16 + 1)) >> 4;
          }

          if (!v18)
          {
LABEL_30:
            v20 = qword_100192D80;
            if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[Config Store] WARNING: event has no configurations", buf, 2u);
            }
          }

LABEL_32:
          sub_10001CF44(v25);
          sub_100017DF0(&v21);
        }

        if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
        {
          sub_100107DC0();
        }

        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v22.__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return 0;
}

void sub_1000FCA50(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

sqlite3_int64 sub_1000FCA5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a2 + 80);
  if (*(a2 + 80) || (sub_10007F8D4(a1, "SELECT modify_eventdef_id FROM modify_eventdefs WHERE modify_event_uuid=?1 LIMIT 1", 0, v12), v6 = v12[0], v12[0] = 0, sub_10007FC24(v5, v6), sub_10007FC24(v12, 0), *v5))
  {
    v12[0] = 0xAAAAAAAAAAAAAAAALL;
    sub_100016760(v12, v5);
    sub_10000BE00(a1, v5, 1, a3);
    if (sub_10000BE48(a1, v5) == 100)
    {
      v7 = sub_100016AC4(a1, v5, 0);
    }

    else
    {
      v7 = 0;
    }

    sub_100011B58(v12);
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v9)
    {
      if (v10)
      {
        v11 = sqlite3_errmsg(v9);
        sub_100107F40(v11, v12);
      }
    }

    else if (v10)
    {
      sub_100107F78();
    }

    return 0;
  }

  return v7;
}

void sub_1000FCBC0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_1000FCBCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v28[32] = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v28 = v4;
  *&v28[16] = v4;
  sub_10003EA28(a3, "uuid", v28);
  *&buf[32] = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v5;
  *&buf[16] = v5;
  v6 = sub_100016ED8(buf, a3);
  sub_1000137F8(v6);
  if (sub_100013878(v28, buf) || *sub_10001CF44(v28) != 3)
  {
    if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      sub_100108260();
    }
  }

  else
  {
    v7 = sub_10001CF44(v28);
    sub_100010390(v7, &__p);
    sub_10003EA28(a3, "name", buf);
    *v28 = *buf;
    *&v28[8] = *&buf[8];
    *&v28[24] = *&buf[24];
    *&buf[32] = 0xAAAAAAAAAAAAAAAALL;
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *buf = v8;
    *&buf[16] = v8;
    v9 = sub_100016ED8(buf, a3);
    sub_1000137F8(v9);
    if (sub_100013878(v28, buf) || *sub_10001CF44(v28) != 3)
    {
      if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_100108200();
      }
    }

    else
    {
      v10 = sub_10001CF44(v28);
      sub_100010390(v10, &v26);
      sub_10003EA28(a3, "type", buf);
      *v28 = *buf;
      *&v28[8] = *&buf[8];
      *&v28[24] = *&buf[24];
      *&buf[32] = 0xAAAAAAAAAAAAAAAALL;
      *&v11 = 0xAAAAAAAAAAAAAAAALL;
      *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *buf = v11;
      *&buf[16] = v11;
      v12 = sub_100016ED8(buf, a3);
      sub_1000137F8(v12);
      if (sub_100013878(v28, buf) || *sub_10001CF44(v28) != 3)
      {
        if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
        {
          sub_1001081A0();
        }
      }

      else
      {
        v13 = sub_10001CF44(v28);
        sub_100010390(v13, &v25);
        sub_10003EA28(a3, "defType", buf);
        *v28 = *buf;
        *&v28[8] = *&buf[8];
        *&v28[24] = *&buf[24];
        *&buf[32] = 0xAAAAAAAAAAAAAAAALL;
        *&v14 = 0xAAAAAAAAAAAAAAAALL;
        *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *buf = v14;
        *&buf[16] = v14;
        v15 = sub_100016ED8(buf, a3);
        sub_1000137F8(v15);
        if (sub_100013878(v28, buf) || *sub_10001CF44(v28) != 3)
        {
          if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
          {
            sub_100108140();
          }
        }

        else
        {
          v16 = sub_10001CF44(v28);
          sub_100010390(v16, &v24);
          sub_10003EA28(a3, "configuration", buf);
          *v28 = *buf;
          *&v28[8] = *&buf[8];
          *&v28[24] = *&buf[24];
          *&buf[32] = 0xAAAAAAAAAAAAAAAALL;
          *&v17 = 0xAAAAAAAAAAAAAAAALL;
          *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *buf = v17;
          *&buf[16] = v17;
          v18 = sub_100016ED8(buf, a3);
          sub_1000137F8(v18);
          if (!sub_100013878(v28, buf) && *sub_10001CF44(v28) == 2)
          {
            v19 = sub_10001CF44(v28);
            v20 = *v19;
            if (!*v19)
            {
              goto LABEL_36;
            }

            if (v20 == 1)
            {
              v21 = *(*(v19 + 1) + 16);
            }

            else
            {
              if (v20 != 2)
              {
                goto LABEL_38;
              }

              v21 = (*(*(v19 + 1) + 8) - **(v19 + 1)) >> 4;
            }

            if (!v21)
            {
LABEL_36:
              v23 = qword_100192D80;
              if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "[Config Store] WARNING: modify event has no configurations", buf, 2u);
              }
            }

LABEL_38:
            sub_10001CF44(v28);
            sub_100017DF0(buf);
          }

          if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
          {
            sub_1001080E0();
          }

          if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v24.__r_.__value_.__l.__data_);
          }
        }

        if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v25.__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return 0;
}

void sub_1000FD2B0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

sqlite3_int64 sub_1000FD2BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  insert_rowid = sub_1000FD4DC(a1, a2, a3);
  if (!insert_rowid)
  {
    v8 = *(a2 + 40);
    v7 = (a2 + 40);
    if (v8 || (sub_10007F8D4(a1, "INSERT INTO events (event_name) VALUES (?1)", 0, buf), v9 = *buf, *buf = 0, sub_10007FC24(v7, v9), sub_10007FC24(buf, 0), *v7))
    {
      v23 = 0xAAAAAAAAAAAAAAAALL;
      sub_100016760(&v23, v7);
      v22 = 0;
      sub_100023980(a1, v7, 1, a3, &v22);
      v10 = sub_100023B68(a1, v7, &v22);
      v11 = *(a1 + 32);
      if (v10 == 101)
      {
        insert_rowid = sqlite3_last_insert_rowid(*(a1 + 32));
      }

      else
      {
        v12 = qword_100192D80;
        v13 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
        if (v11)
        {
          if (v13)
          {
            v14 = *(a3 + 23);
            v15 = *a3;
            v16 = sqlite3_errmsg(v11);
            if (v14 >= 0)
            {
              v17 = a3;
            }

            else
            {
              v17 = v15;
            }

            *buf = 136315394;
            *&buf[4] = v17;
            v25 = 2080;
            v26 = v16;
            _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[Config Store] ERROR: Failed to insert event '%s'; %s", buf, 0x16u);
          }
        }

        else if (v13)
        {
          sub_1001082C0(a3);
        }

        insert_rowid = 0;
      }

      sub_100011B58(&v23);
    }

    else
    {
      v19 = *(a1 + 32);
      v20 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
      if (v19)
      {
        if (v20)
        {
          v21 = sqlite3_errmsg(v19);
          sub_100107D28(v21, buf);
        }
      }

      else if (v20)
      {
        sub_100107D60();
      }

      return 0;
    }
  }

  return insert_rowid;
}

void sub_1000FD4D0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

sqlite3_int64 sub_1000FD4DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a2 + 48);
  if (*(a2 + 48) || (sub_10007F8D4(a1, "SELECT event_id FROM events WHERE event_name=?1 LIMIT 1;", 0, v12), v6 = v12[0], v12[0] = 0, sub_10007FC24(v5, v6), sub_10007FC24(v12, 0), *v5))
  {
    v12[0] = 0xAAAAAAAAAAAAAAAALL;
    sub_100016760(v12, v5);
    sub_10000BE00(a1, v5, 1, a3);
    if (sub_10000BE48(a1, v5) == 100)
    {
      v7 = sub_100016AC4(a1, v5, 0);
    }

    else
    {
      v7 = 0;
    }

    sub_100011B58(v12);
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v9)
    {
      if (v10)
      {
        v11 = sqlite3_errmsg(v9);
        sub_100108330(v11, v12);
      }
    }

    else if (v10)
    {
      sub_100108368();
    }

    return 0;
  }

  return v7;
}

void sub_1000FD640(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_1000FD64C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  __p[3] = a3;
  v6 = (a2 + 144);
  if (*(a2 + 144) || (sub_10007F8D4(a1, "INSERT INTO external_configs (external_config_kind, external_config_def, sampling_id) VALUES (?1, ?2, ?3);", 0, &v14), v7 = v14.__r_.__value_.__r.__words[0], v14.__r_.__value_.__r.__words[0] = 0, sub_10007FC24(v6, v7), sub_10007FC24(&v14, 0), *v6))
  {
    memset(&v14, 170, sizeof(v14));
    v8 = sub_1000071E4(a4, "kind");
    sub_100010390(v8, &v14);
    memset(__p, 170, 24);
    sub_100017DF0(__p);
  }

  v9 = *(a1 + 32);
  v10 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
  if (v9)
  {
    if (v10)
    {
      v11 = sqlite3_errmsg(v9);
      sub_100108460(v11, &v14);
    }
  }

  else if (v10)
  {
    sub_100108498();
  }

  return 0;
}

void sub_1000FD8C8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

BOOL sub_1000FD8D4(uint64_t a1, sqlite3_int64 *a2, sqlite3_int64 a3)
{
  v18 = a3;
  v5 = (a2 + 11);
  if (a2[11] || (sub_10007F8D4(a1, "INSERT OR IGNORE INTO config_transforms (config_id, transform_id) VALUES (?1, ?2)", 0, v19), v6 = v19[0], v19[0] = 0, sub_10007FC24(v5, v6), sub_10007FC24(v19, 0), *v5))
  {
    v17 = 0xAAAAAAAAAAAAAAAALL;
    sub_100016760(&v17, v5);
    v16 = 0;
    sub_100023B24(a1, v5, 1, a2, &v16);
    sub_100023B24(a1, v5, 2, &v18, &v16);
    v7 = sub_100023B68(a1, v5, &v16);
    v8 = v7 == 101;
    if (v7 != 101)
    {
      v9 = *(a1 + 32);
      v10 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
      if (v9)
      {
        if (v10)
        {
          v11 = sqlite3_errmsg(v9);
          sub_1001084F8(v11, v19);
        }
      }

      else if (v10)
      {
        sub_100108530();
      }
    }

    sub_100011B58(&v17);
  }

  else
  {
    v13 = *(a1 + 32);
    v14 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v13)
    {
      if (v14)
      {
        v15 = sqlite3_errmsg(v13);
        sub_100108590(v15, v19);
      }
    }

    else if (v14)
    {
      sub_1001085C8();
    }

    return 0;
  }

  return v8;
}

void sub_1000FDA98(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

BOOL sub_1000FDAA4(uint64_t a1, sqlite3_int64 *a2, sqlite3_int64 a3)
{
  v18 = a3;
  v5 = (a2 + 13);
  if (a2[13] || (sub_10007F8D4(a1, "INSERT OR IGNORE INTO config_eventdefs (config_id, eventdef_id) VALUES (?1, ?2)", 0, v19), v6 = v19[0], v19[0] = 0, sub_10007FC24(v5, v6), sub_10007FC24(v19, 0), *v5))
  {
    v17 = 0xAAAAAAAAAAAAAAAALL;
    sub_100016760(&v17, v5);
    v16 = 0;
    sub_100023B24(a1, v5, 1, a2, &v16);
    sub_100023B24(a1, v5, 2, &v18, &v16);
    v7 = sub_100023B68(a1, v5, &v16);
    v8 = v7 == 101;
    if (v7 != 101)
    {
      v9 = *(a1 + 32);
      v10 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
      if (v9)
      {
        if (v10)
        {
          v11 = sqlite3_errmsg(v9);
          sub_100108628(v11, v19);
        }
      }

      else if (v10)
      {
        sub_100108660();
      }
    }

    sub_100011B58(&v17);
  }

  else
  {
    v13 = *(a1 + 32);
    v14 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v13)
    {
      if (v14)
      {
        v15 = sqlite3_errmsg(v13);
        sub_1001086C0(v15, v19);
      }
    }

    else if (v14)
    {
      sub_1001086F8();
    }

    return 0;
  }

  return v8;
}

void sub_1000FDC68(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

BOOL sub_1000FDC74(uint64_t a1, sqlite3_int64 *a2, sqlite3_int64 a3)
{
  v18 = a3;
  v5 = (a2 + 15);
  if (a2[15] || (sub_10007F8D4(a1, "INSERT OR IGNORE INTO config_modify_eventdefs (config_id, modify_eventdef_id) VALUES (?1, ?2);", 0, v19), v6 = v19[0], v19[0] = 0, sub_10007FC24(v5, v6), sub_10007FC24(v19, 0), *v5))
  {
    v17 = 0xAAAAAAAAAAAAAAAALL;
    sub_100016760(&v17, v5);
    v16 = 0;
    sub_100023B24(a1, v5, 1, a2, &v16);
    sub_100023B24(a1, v5, 2, &v18, &v16);
    v7 = sub_100023B68(a1, v5, &v16);
    v8 = v7 == 101;
    if (v7 != 101)
    {
      v9 = *(a1 + 32);
      v10 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
      if (v9)
      {
        if (v10)
        {
          v11 = sqlite3_errmsg(v9);
          sub_100108758(v11, v19);
        }
      }

      else if (v10)
      {
        sub_100108790();
      }
    }

    sub_100011B58(&v17);
  }

  else
  {
    v13 = *(a1 + 32);
    v14 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v13)
    {
      if (v14)
      {
        v15 = sqlite3_errmsg(v13);
        sub_1001087F0(v15, v19);
      }
    }

    else if (v14)
    {
      sub_100108828();
    }

    return 0;
  }

  return v8;
}

void sub_1000FDE38(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

BOOL sub_1000FDE44(uint64_t a1, uint64_t a2, sqlite3_int64 a3, sqlite3_int64 a4)
{
  v18 = a4;
  v19 = a3;
  v5 = (a2 + 136);
  if (*(a2 + 136) || (sub_10007F8D4(a1, "INSERT OR IGNORE INTO transform_events (event_id, transform_id) VALUES (?1, ?2)", 0, v20), v6 = v20[0], v20[0] = 0, sub_10007FC24(v5, v6), sub_10007FC24(v20, 0), *v5))
  {
    v17 = 0xAAAAAAAAAAAAAAAALL;
    sub_100016760(&v17, v5);
    v16 = 0;
    sub_100023B24(a1, v5, 1, &v19, &v16);
    sub_100023B24(a1, v5, 2, &v18, &v16);
    v7 = sub_100023B68(a1, v5, &v16);
    v8 = v7 == 101;
    if (v7 != 101)
    {
      v9 = *(a1 + 32);
      v10 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
      if (v9)
      {
        if (v10)
        {
          v11 = sqlite3_errmsg(v9);
          sub_100108888(v11, v20);
        }
      }

      else if (v10)
      {
        sub_1001088C0();
      }
    }

    sub_100011B58(&v17);
  }

  else
  {
    v13 = *(a1 + 32);
    v14 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v13)
    {
      if (v14)
      {
        v15 = sqlite3_errmsg(v13);
        sub_100108920(v15, v20);
      }
    }

    else if (v14)
    {
      sub_100108958();
    }

    return 0;
  }

  return v8;
}

void sub_1000FE004(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

BOOL sub_1000FE010(uint64_t a1, sqlite3_int64 *a2, sqlite3_int64 a3)
{
  v18 = a3;
  v5 = (a2 + 20);
  if (a2[20] || (sub_10007F8D4(a1, "INSERT OR IGNORE INTO config_external_configs (config_id, external_config_id) VALUES (?1, ?2)", 0, v19), v6 = v19[0], v19[0] = 0, sub_10007FC24(v5, v6), sub_10007FC24(v19, 0), *v5))
  {
    v17 = 0xAAAAAAAAAAAAAAAALL;
    sub_100016760(&v17, v5);
    v16 = 0;
    sub_100023B24(a1, v5, 1, a2, &v16);
    sub_100023B24(a1, v5, 2, &v18, &v16);
    v7 = sub_100023B68(a1, v5, &v16);
    v8 = v7 == 101;
    if (v7 != 101)
    {
      v9 = *(a1 + 32);
      v10 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
      if (v9)
      {
        if (v10)
        {
          v11 = sqlite3_errmsg(v9);
          sub_1001089B8(v11, v19);
        }
      }

      else if (v10)
      {
        sub_1001089F0();
      }
    }

    sub_100011B58(&v17);
  }

  else
  {
    v13 = *(a1 + 32);
    v14 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v13)
    {
      if (v14)
      {
        v15 = sqlite3_errmsg(v13);
        sub_100108A50(v15, v19);
      }
    }

    else if (v14)
    {
      sub_100108A88();
    }

    return 0;
  }

  return v8;
}

void sub_1000FE1D4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

BOOL sub_1000FE1E0(uint64_t a1, uint64_t a2, _BYTE *a3, sqlite3_int64 a4)
{
  if (*a3 != 2)
  {
    return 0;
  }

  v28 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27[0] = v8;
  v27[1] = v8;
  v9 = sub_10000DEC4(v27, a3);
  sub_10000DF14(v9);
  v26 = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25[0] = v10;
  v25[1] = v10;
  sub_10000DEC4(v25, a3);
  sub_10000DCFC(v25);
  while (1)
  {
    v11 = sub_10000DD7C(v27, v25);
    if (v11)
    {
      break;
    }

    v12 = sub_10000DB44(v27);
    v13 = v12;
    if (*v12 == 1)
    {
      v24 = 0xAAAAAAAAAAAAAAAALL;
      *&v14 = 0xAAAAAAAAAAAAAAAALL;
      *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v23[0] = v14;
      v23[1] = v14;
      sub_100015F0C(v12, "event", v23);
      v22 = 0xAAAAAAAAAAAAAAAALL;
      *&v15 = 0xAAAAAAAAAAAAAAAALL;
      *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *__p = v15;
      v21 = v15;
      sub_10000DEC4(__p, v13);
      sub_10000DCFC(__p);
      if (!sub_10000DD7C(v23, __p) && *sub_10000DB44(v23) == 3)
      {
        v16 = sub_10000DB44(v23);
        sub_100010390(v16, __p);
        v17 = sub_1000FD2BC(a1, a2, __p);
        v18 = v17 && sub_1000FDE44(a1, a2, v17, a4);
        if (SBYTE7(v21) < 0)
        {
          operator delete(__p[0]);
        }

        if (!v18)
        {
          break;
        }
      }
    }

    sub_100012BFC(v27);
  }

  return v11;
}

void sub_1000FE3A4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_1000FE3B0(uint64_t a1, sqlite3_int64 *a2, unsigned __int8 *a3)
{
  if (*a3 == 1)
  {
    v18 = 0xAAAAAAAAAAAAAAAALL;
    v19 = 0xAAAAAAAAAAAAAAAALL;
    sub_1000FE584(a3, &v18);
    v6 = sub_1000FB764(a1, a2, &v18);
    v7 = sub_1000FBCF8(a1, a2, v6, a3);
    if (v7)
    {
      v8 = v7;
      if (sub_1000FD8D4(a1, a2, v7))
      {
        v17 = 0xAAAAAAAAAAAAAAAALL;
        *&v9 = 0xAAAAAAAAAAAAAAAALL;
        *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v16[0] = v9;
        v16[1] = v9;
        sub_10003EA28(a3, "inputs", v16);
        v15 = 0xAAAAAAAAAAAAAAAALL;
        *&v10 = 0xAAAAAAAAAAAAAAAALL;
        *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v14[0] = v10;
        v14[1] = v10;
        sub_100016ED8(v14, a3);
        sub_1000137F8(v14);
        if (sub_100013878(v16, v14))
        {
          if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
          {
            sub_100108B48();
          }

          goto LABEL_11;
        }

        v12 = sub_10001CF44(v16);
        if (sub_1000FE1E0(a1, a2, v12, v8))
        {
LABEL_11:
          v11 = 1;
LABEL_13:
          sub_10000298C(&v18);
          sub_1000048FC(&v19, v18);
          return v11;
        }
      }
    }

    v11 = 0;
    goto LABEL_13;
  }

  if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
  {
    sub_100108AE8();
  }

  return 0;
}

void sub_1000FE578(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

unsigned __int8 *sub_1000FE584@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  *(a2 + 8) = 0;
  *a2 = 0;
  sub_10000298C(a2);
  sub_10000298C(a2);
  *&v14[32] = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v14 = v4;
  *&v14[16] = v4;
  sub_10003EA28(a1, "enableIf", v14);
  *&v13[32] = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v13 = v5;
  *&v13[16] = v5;
  sub_100016ED8(v13, a1);
  sub_1000137F8(v13);
  result = sub_100013878(v14, v13);
  if ((result & 1) == 0)
  {
    v7 = sub_10001CF44(v14);
    v11[0] = *v7;
    v12 = *(v7 + 1);
    sub_10000298C(v7);
    *v7 = 0;
    *(v7 + 1) = 0;
    sub_10000298C(v11);
    sub_10000298C(v11);
    v8 = *a2;
    *a2 = v11[0];
    v11[0] = v8;
    v9 = *(a2 + 8);
    *(a2 + 8) = v12;
    v12 = v9;
    sub_10000298C(a2);
    sub_10000298C(v11);
    sub_1000048FC(&v12, v11[0]);
    *v13 = *v14;
    *&v13[8] = *&v14[8];
    *&v13[24] = *&v14[24];
    return sub_1000410CC(a1, v13, v10);
  }

  return result;
}

BOOL sub_1000FE718(uint64_t a1, sqlite3_int64 *a2, _BYTE *a3)
{
  if (*a3 == 2)
  {
    v6 = (a2 + 12);
    if (a2[12] || (sub_10007F8D4(a1, "DELETE FROM config_transforms WHERE config_id=?1 AND transform_id IN (SELECT transform_id FROM transforms WHERE transform_uuid=?2)", 0, v41), v7 = *&v41[0], *&v41[0] = 0, sub_10007FC24(v6, v7), sub_10007FC24(v41, 0), *v6))
    {
      v42 = 0xAAAAAAAAAAAAAAAALL;
      *&v8 = 0xAAAAAAAAAAAAAAAALL;
      *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v41[0] = v8;
      v41[1] = v8;
      v9 = sub_100016ED8(v41, a3);
      sub_10001D250(v9);
      v36 = 0xAAAAAAAAAAAAAAAALL;
      *&v10 = 0xAAAAAAAAAAAAAAAALL;
      *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v35[0] = v10;
      v35[1] = v10;
      sub_100016ED8(v35, a3);
      sub_1000137F8(v35);
      while (1)
      {
        v11 = sub_100013878(v41, v35);
        if (v11)
        {
          return v11;
        }

        v12 = sub_10001CF44(v41);
        if (*v12 != 3)
        {
          if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
          {
            sub_100108C08();
          }

          return v11;
        }

        sub_100010390(v12, &__p);
        v33 = 0xAAAAAAAAAAAAAAAALL;
        sub_100016760(&v33, v6);
        v32 = 0;
        sub_100023B24(a1, v6, 1, a2, &v32);
        sub_100023980(a1, v6, 2, &__p, &v32);
        v13 = sub_100023B68(a1, v6, &v32);
        v14 = *(a1 + 32);
        if (v13 == 101)
        {
          v15 = sqlite3_changes(*(a1 + 32));
          if (v15 != 1)
          {
            v16 = qword_100192D80;
            if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_INFO))
            {
              p_p = &__p;
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                p_p = __p.__r_.__value_.__r.__words[0];
              }

              *buf = 136315394;
              v38 = p_p;
              v39 = 1024;
              LODWORD(v40) = v15;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[Config Store] WARNING: config tried to remove transform (uuid='%s') but %d rows were updated; continue", buf, 0x12u);
            }
          }
        }

        else
        {
          v18 = qword_100192D80;
          v19 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
          if (v14)
          {
            if (!v19)
            {
              goto LABEL_19;
            }

            v20 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
            v31 = __p.__r_.__value_.__r.__words[0];
            v21 = sqlite3_errmsg(v14);
            *buf = 136446466;
            v22 = &__p;
            if (v20 < 0)
            {
              v22 = v31;
            }

            v38 = v22;
            v39 = 2080;
            v40 = v21;
            v23 = v18;
            v24 = "[Config Store] ERROR: Failed to remove transform (uuid='%{public}s'); %s";
            v25 = 22;
          }

          else
          {
            if (!v19)
            {
              goto LABEL_19;
            }

            v26 = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v26 = __p.__r_.__value_.__r.__words[0];
            }

            *buf = 136446210;
            v38 = v26;
            v23 = v18;
            v24 = "[Config Store] ERROR: Failed to remove transform (uuid='%{public}s')[null database]";
            v25 = 12;
          }

          _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, v24, buf, v25);
        }

LABEL_19:
        sub_100011B58(&v33);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v13 != 101)
        {
          return v11;
        }

        sub_100012BFC(v41);
      }
    }

    v28 = *(a1 + 32);
    v29 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v28)
    {
      if (v29)
      {
        v30 = sqlite3_errmsg(v28);
        sub_100108C68(v30, v41);
      }
    }

    else if (v29)
    {
      sub_100108CA0();
    }
  }

  else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
  {
    sub_100108BA8();
  }

  return 0;
}

void sub_1000FEAFC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1000FEB0C(uint64_t a1, sqlite3_int64 *a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      sub_100108D00();
    }

    return 0;
  }

  v5 = sub_1000FC380(a1, a2, a3);
  if (!v5)
  {
    return 0;
  }

  return sub_1000FDAA4(a1, a2, v5);
}

BOOL sub_1000FEB9C(uint64_t a1, sqlite3_int64 *a2, _BYTE *a3)
{
  if (*a3 == 2)
  {
    v6 = (a2 + 14);
    if (a2[14] || (sub_10007F8D4(a1, "DELETE FROM config_eventdefs WHERE config_id=?1 AND eventdef_id IN (SELECT eventdef_id FROM eventdefs WHERE event_uuid=?2)", 0, v41), v7 = *&v41[0], *&v41[0] = 0, sub_10007FC24(v6, v7), sub_10007FC24(v41, 0), *v6))
    {
      v42 = 0xAAAAAAAAAAAAAAAALL;
      *&v8 = 0xAAAAAAAAAAAAAAAALL;
      *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v41[0] = v8;
      v41[1] = v8;
      v9 = sub_100016ED8(v41, a3);
      sub_10001D250(v9);
      v36 = 0xAAAAAAAAAAAAAAAALL;
      *&v10 = 0xAAAAAAAAAAAAAAAALL;
      *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v35[0] = v10;
      v35[1] = v10;
      sub_100016ED8(v35, a3);
      sub_1000137F8(v35);
      while (1)
      {
        v11 = sub_100013878(v41, v35);
        if (v11)
        {
          return v11;
        }

        v12 = sub_10001CF44(v41);
        if (*v12 != 3)
        {
          if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
          {
            sub_100108DC0();
          }

          return v11;
        }

        sub_100010390(v12, &__p);
        v33 = 0xAAAAAAAAAAAAAAAALL;
        sub_100016760(&v33, v6);
        v32 = 0;
        sub_100023B24(a1, v6, 1, a2, &v32);
        sub_100023980(a1, v6, 2, &__p, &v32);
        v13 = sub_100023B68(a1, v6, &v32);
        v14 = *(a1 + 32);
        if (v13 == 101)
        {
          v15 = sqlite3_changes(*(a1 + 32));
          if (v15 != 1)
          {
            v16 = qword_100192D80;
            if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_INFO))
            {
              p_p = &__p;
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                p_p = __p.__r_.__value_.__r.__words[0];
              }

              *buf = 136315394;
              v38 = p_p;
              v39 = 1024;
              LODWORD(v40) = v15;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[Config Store] WARNING: config tried to remove eventdef (uuid='%s') but %d rows were updated; continue", buf, 0x12u);
            }
          }
        }

        else
        {
          v18 = qword_100192D80;
          v19 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
          if (v14)
          {
            if (!v19)
            {
              goto LABEL_19;
            }

            v20 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
            v31 = __p.__r_.__value_.__r.__words[0];
            v21 = sqlite3_errmsg(v14);
            *buf = 136446466;
            v22 = &__p;
            if (v20 < 0)
            {
              v22 = v31;
            }

            v38 = v22;
            v39 = 2080;
            v40 = v21;
            v23 = v18;
            v24 = "[Config Store] ERROR: Failed to remove eventdef (uuid='%{public}s'); %s";
            v25 = 22;
          }

          else
          {
            if (!v19)
            {
              goto LABEL_19;
            }

            v26 = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v26 = __p.__r_.__value_.__r.__words[0];
            }

            *buf = 136446210;
            v38 = v26;
            v23 = v18;
            v24 = "[Config Store] ERROR: Failed to remove eventdef (uuid='%{public}s')[null database]";
            v25 = 12;
          }

          _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, v24, buf, v25);
        }

LABEL_19:
        sub_100011B58(&v33);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v13 != 101)
        {
          return v11;
        }

        sub_100012BFC(v41);
      }
    }

    v28 = *(a1 + 32);
    v29 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v28)
    {
      if (v29)
      {
        v30 = sqlite3_errmsg(v28);
        sub_100108E20(v30, v41);
      }
    }

    else if (v29)
    {
      sub_100108E58();
    }
  }

  else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
  {
    sub_100108D60();
  }

  return 0;
}

void sub_1000FEF80(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1000FEF90(uint64_t a1, sqlite3_int64 *a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      sub_100108EB8();
    }

    return 0;
  }

  v5 = sub_1000FCBCC(a1, a2, a3);
  if (!v5)
  {
    return 0;
  }

  return sub_1000FDC74(a1, a2, v5);
}

BOOL sub_1000FF020(uint64_t a1, sqlite3_int64 *a2, _BYTE *a3)
{
  if (*a3 == 2)
  {
    v6 = (a2 + 16);
    if (a2[16] || (sub_10007F8D4(a1, "DELETE FROM config_modify_eventdefs WHERE config_id=?1 AND modify_eventdef_id IN (SELECT modify_eventdef_id FROM modify_eventdefs WHERE modify_event_uuid=?2);", 0, v41), v7 = *&v41[0], *&v41[0] = 0, sub_10007FC24(v6, v7), sub_10007FC24(v41, 0), *v6))
    {
      v42 = 0xAAAAAAAAAAAAAAAALL;
      *&v8 = 0xAAAAAAAAAAAAAAAALL;
      *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v41[0] = v8;
      v41[1] = v8;
      v9 = sub_100016ED8(v41, a3);
      sub_10001D250(v9);
      v36 = 0xAAAAAAAAAAAAAAAALL;
      *&v10 = 0xAAAAAAAAAAAAAAAALL;
      *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v35[0] = v10;
      v35[1] = v10;
      sub_100016ED8(v35, a3);
      sub_1000137F8(v35);
      while (1)
      {
        v11 = sub_100013878(v41, v35);
        if (v11)
        {
          return v11;
        }

        v12 = sub_10001CF44(v41);
        if (*v12 != 3)
        {
          if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
          {
            sub_100108F78();
          }

          return v11;
        }

        sub_100010390(v12, &__p);
        v33 = 0xAAAAAAAAAAAAAAAALL;
        sub_100016760(&v33, v6);
        v32 = 0;
        sub_100023B24(a1, v6, 1, a2, &v32);
        sub_100023980(a1, v6, 2, &__p, &v32);
        v13 = sub_100023B68(a1, v6, &v32);
        v14 = *(a1 + 32);
        if (v13 != 101)
        {
          break;
        }

        v15 = sqlite3_changes(*(a1 + 32));
        if (v15 != 1)
        {
          v16 = qword_100192D80;
          if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
          {
            p_p = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            *buf = 136315394;
            v38 = p_p;
            v39 = 1024;
            LODWORD(v40) = v15;
            v18 = v16;
            v19 = "[Config Store] ERROR: config tried to remove modify eventdef (uuid='%s') but %d rows were updated; continue";
            v20 = 18;
LABEL_26:
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, v19, buf, v20);
          }
        }

LABEL_19:
        sub_100011B58(&v33);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v13 != 101)
        {
          return v11;
        }

        sub_100012BFC(v41);
      }

      v21 = qword_100192D80;
      v22 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
      if (v14)
      {
        if (!v22)
        {
          goto LABEL_19;
        }

        v23 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        v31 = __p.__r_.__value_.__r.__words[0];
        v24 = sqlite3_errmsg(v14);
        *buf = 136446466;
        v25 = &__p;
        if (v23 < 0)
        {
          v25 = v31;
        }

        v38 = v25;
        v39 = 2080;
        v40 = v24;
        v18 = v21;
        v19 = "[Config Store] ERROR: Failed to remove modify-eventdefs (uuid='%{public}s'); %s";
        v20 = 22;
      }

      else
      {
        if (!v22)
        {
          goto LABEL_19;
        }

        v26 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v26 = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136446210;
        v38 = v26;
        v18 = v21;
        v19 = "[Config Store] ERROR: Failed to remove modify-eventdefs (uuid='%{public}s')[null database]";
        v20 = 12;
      }

      goto LABEL_26;
    }

    v28 = *(a1 + 32);
    v29 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v28)
    {
      if (v29)
      {
        v30 = sqlite3_errmsg(v28);
        sub_100108FD8(v30, v41);
      }
    }

    else if (v29)
    {
      sub_100109010();
    }
  }

  else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
  {
    sub_100108F18();
  }

  return 0;
}

void sub_1000FF400(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1000FF410(uint64_t a1, sqlite3_int64 *a2, _BYTE *a3)
{
  if (*a3 == 2)
  {
    v6 = (a2 + 19);
    if (a2[19] || (sub_10007F8D4(a1, "DELETE FROM config_external_configs WHERE config_id=?1 AND external_config_id IN (SELECT external_config_id FROM external_configs WHERE external_config_kind=?2)", 0, v41), v7 = *&v41[0], *&v41[0] = 0, sub_10007FC24(v6, v7), sub_10007FC24(v41, 0), *v6))
    {
      v42 = 0xAAAAAAAAAAAAAAAALL;
      *&v8 = 0xAAAAAAAAAAAAAAAALL;
      *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v41[0] = v8;
      v41[1] = v8;
      v9 = sub_100016ED8(v41, a3);
      sub_10001D250(v9);
      v36 = 0xAAAAAAAAAAAAAAAALL;
      *&v10 = 0xAAAAAAAAAAAAAAAALL;
      *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v35[0] = v10;
      v35[1] = v10;
      sub_100016ED8(v35, a3);
      sub_1000137F8(v35);
      while (1)
      {
        v11 = sub_100013878(v41, v35);
        if (v11)
        {
          return v11;
        }

        v12 = sub_10001CF44(v41);
        if (*v12 != 3)
        {
          if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
          {
            sub_100109070();
          }

          return v11;
        }

        sub_100010390(v12, &__p);
        v33 = 0xAAAAAAAAAAAAAAAALL;
        sub_100016760(&v33, v6);
        v32 = 0;
        sub_100023B24(a1, v6, 1, a2, &v32);
        sub_100023980(a1, v6, 2, &__p, &v32);
        v13 = sub_100023B68(a1, v6, &v32);
        v14 = *(a1 + 32);
        if (v13 == 101)
        {
          v15 = sqlite3_changes(*(a1 + 32));
          if (v15 <= 0)
          {
            v16 = qword_100192D80;
            if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_INFO))
            {
              p_p = &__p;
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                p_p = __p.__r_.__value_.__r.__words[0];
              }

              *buf = 136315394;
              v38 = p_p;
              v39 = 1024;
              LODWORD(v40) = v15;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[Config Store] WARNING: config tried to remove external config (kind='%s') but %d rows were updated; continue", buf, 0x12u);
            }
          }
        }

        else
        {
          v18 = qword_100192D80;
          v19 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
          if (v14)
          {
            if (!v19)
            {
              goto LABEL_19;
            }

            v20 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
            v31 = __p.__r_.__value_.__r.__words[0];
            v21 = sqlite3_errmsg(v14);
            *buf = 136446466;
            v22 = &__p;
            if (v20 < 0)
            {
              v22 = v31;
            }

            v38 = v22;
            v39 = 2080;
            v40 = v21;
            v23 = v18;
            v24 = "[Config Store] ERROR: Failed to remove external config (kind='%{public}s'); %s";
            v25 = 22;
          }

          else
          {
            if (!v19)
            {
              goto LABEL_19;
            }

            v26 = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v26 = __p.__r_.__value_.__r.__words[0];
            }

            *buf = 136446210;
            v38 = v26;
            v23 = v18;
            v24 = "[Config Store] ERROR: Failed to remove external config (kind='%{public}s')[null database]";
            v25 = 12;
          }

          _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, v24, buf, v25);
        }

LABEL_19:
        sub_100011B58(&v33);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v13 != 101)
        {
          return v11;
        }

        sub_100012BFC(v41);
      }
    }

    v28 = *(a1 + 32);
    v29 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v28)
    {
      if (v29)
      {
        v30 = sqlite3_errmsg(v28);
        sub_1001090D0(v30, v41);
      }
    }

    else if (v29)
    {
      sub_100109108();
    }
  }

  else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
  {
    sub_100108BA8();
  }

  return 0;
}

void sub_1000FF7F4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1000FF804(uint64_t a1, sqlite3_int64 *a2, unsigned __int8 *a3)
{
  if (*a3 == 1)
  {
    v10 = 0xAAAAAAAAAAAAAAAALL;
    v11 = 0xAAAAAAAAAAAAAAAALL;
    sub_1000FE584(a3, &v10);
    v6 = sub_1000FB764(a1, a2, &v10);
    v7 = sub_1000FD64C(a1, a2, v6, a3);
    if (v7)
    {
      v8 = sub_1000FE010(a1, a2, v7);
    }

    else
    {
      v8 = 0;
    }

    sub_10000298C(&v10);
    sub_1000048FC(&v11, v10);
  }

  else
  {
    if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      sub_100109168();
    }

    return 0;
  }

  return v8;
}

void sub_1000FF91C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

BOOL sub_1000FF928(uint64_t a1)
{
  v2 = qword_100192D80;
  if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_DEFAULT))
  {
    *v93 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Config Store] DATABASE INITIALIZATION: modifying for V1 schema", v93, 2u);
  }

  v3 = sqlite3_exec(*(a1 + 32), "\n         CREATE TABLE configs\n         (\n          config_id INTEGER PRIMARY KEY ASC,\n          config_uuid STRING UNIQUE,\n          config_parent_uuid STRING,\n          config_type STRING,\n          config_header STRING,\n          config_md5  BLOB,\n          config_enabled INTEGER DEFAULT 0,\n          config_last_enabled TEXT,\n          config_last_disabled TEXT\n         )\n    ", 0, 0, 0);
  v4 = *(a1 + 32);
  if (v3)
  {
    result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v4)
    {
      if (!result)
      {
        return result;
      }

      v6 = sqlite3_errmsg(v4);
      sub_1001091C8(v6, v93);
    }

    else
    {
      if (!result)
      {
        return result;
      }

      sub_100109200();
    }
  }

  else
  {
    v7 = sqlite3_exec(*(a1 + 32), "\n         CREATE TRIGGER update_activation_time AFTER UPDATE ON configs\n         WHEN old.config_enabled=0 AND new.config_enabled=1\n         BEGIN\n                 UPDATE configs SET config_last_enabled = datetime('now') WHERE config_id = new.config_id;\n         END\n    ", 0, 0, 0);
    v8 = *(a1 + 32);
    if (v7)
    {
      result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
      if (v8)
      {
        if (!result)
        {
          return result;
        }

        v9 = sqlite3_errmsg(v8);
        sub_100109260(v9, v93);
      }

      else
      {
        if (!result)
        {
          return result;
        }

        sub_100109298();
      }
    }

    else
    {
      v10 = sqlite3_exec(*(a1 + 32), "\n         CREATE TRIGGER update_deactivation_time AFTER UPDATE ON configs\n         WHEN old.config_enabled=1 AND new.config_enabled=0\n         BEGIN\n                 UPDATE configs SET config_last_disabled = datetime('now') WHERE config_id = new.config_id;\n         END\n    ", 0, 0, 0);
      v11 = *(a1 + 32);
      if (v10)
      {
        result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
        if (v11)
        {
          if (!result)
          {
            return result;
          }

          v12 = sqlite3_errmsg(v11);
          sub_1001092F8(v12, v93);
        }

        else
        {
          if (!result)
          {
            return result;
          }

          sub_100109330();
        }
      }

      else
      {
        v13 = sqlite3_exec(*(a1 + 32), "\n         CREATE TABLE events\n         (\n          event_id INTEGER PRIMARY KEY ASC,\n          event_name STRING UNIQUE ON CONFLICT IGNORE\n         )\n    ", 0, 0, 0);
        v14 = *(a1 + 32);
        if (v13)
        {
          result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
          if (v14)
          {
            if (!result)
            {
              return result;
            }

            v15 = sqlite3_errmsg(v14);
            sub_100109390(v15, v93);
          }

          else
          {
            if (!result)
            {
              return result;
            }

            sub_1001093C8();
          }
        }

        else
        {
          v16 = sqlite3_exec(*(a1 + 32), "\n         CREATE TABLE eventdefs\n         (\n          eventdef_id INTEGER PRIMARY KEY ASC,\n          event_uuid STRING UNIQUE,\n          event_name STRING,\n          event_type STRING,\n          event_defType STRING,\n          event_config STRING\n         )\n    ", 0, 0, 0);
          v17 = *(a1 + 32);
          if (v16)
          {
            result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
            if (v17)
            {
              if (!result)
              {
                return result;
              }

              v18 = sqlite3_errmsg(v17);
              sub_100109428(v18, v93);
            }

            else
            {
              if (!result)
              {
                return result;
              }

              sub_100109460();
            }
          }

          else
          {
            v19 = sqlite3_exec(*(a1 + 32), "\n         CREATE TABLE transforms\n         (\n          transform_id INTEGER PRIMARY KEY ASC,\n          transform_uuid STRING UNIQUE,\n          transform_def  STRING,\n          transform_enableIf STRING\n         )\n    ", 0, 0, 0);
            v20 = *(a1 + 32);
            if (v19)
            {
              result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
              if (v20)
              {
                if (!result)
                {
                  return result;
                }

                v21 = sqlite3_errmsg(v20);
                sub_1001094C0(v21, v93);
              }

              else
              {
                if (!result)
                {
                  return result;
                }

                sub_1001094F8();
              }
            }

            else
            {
              v22 = sqlite3_exec(*(a1 + 32), "\n         CREATE TABLE config_transforms\n         (\n          config_id INTEGER,\n          transform_id INTEGER\n         )\n    ", 0, 0, 0);
              v23 = *(a1 + 32);
              if (v22)
              {
                result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
                if (v23)
                {
                  if (!result)
                  {
                    return result;
                  }

                  v24 = sqlite3_errmsg(v23);
                  sub_100109558(v24, v93);
                }

                else
                {
                  if (!result)
                  {
                    return result;
                  }

                  sub_100109590();
                }
              }

              else
              {
                v25 = sqlite3_exec(*(a1 + 32), "\n         CREATE TABLE config_eventdefs\n         (\n          config_id INTEGER,\n          eventdef_id INTEGER\n         )\n    ", 0, 0, 0);
                v26 = *(a1 + 32);
                if (v25)
                {
                  result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
                  if (v26)
                  {
                    if (!result)
                    {
                      return result;
                    }

                    v27 = sqlite3_errmsg(v26);
                    sub_1001095F0(v27, v93);
                  }

                  else
                  {
                    if (!result)
                    {
                      return result;
                    }

                    sub_100109628();
                  }
                }

                else
                {
                  v28 = sqlite3_exec(*(a1 + 32), "\n         CREATE TABLE transform_events\n         (\n          event_id INTEGER,\n          transform_id INTEGER,\n          CONSTRAINT maps_uniquely UNIQUE (event_id, transform_id)\n         )\n    ", 0, 0, 0);
                  v29 = *(a1 + 32);
                  if (v28)
                  {
                    result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
                    if (v29)
                    {
                      if (!result)
                      {
                        return result;
                      }

                      v30 = sqlite3_errmsg(v29);
                      sub_100109688(v30, v93);
                    }

                    else
                    {
                      if (!result)
                      {
                        return result;
                      }

                      sub_1001096C0();
                    }
                  }

                  else
                  {
                    v31 = sqlite3_exec(*(a1 + 32), "\n         CREATE TABLE disabled_transforms\n         (\n          transform_id INTEGER\n        )\n    ", 0, 0, 0);
                    v32 = *(a1 + 32);
                    if (v31)
                    {
                      result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
                      if (v32)
                      {
                        if (!result)
                        {
                          return result;
                        }

                        v33 = sqlite3_errmsg(v32);
                        sub_100109720(v33, v93);
                      }

                      else
                      {
                        if (!result)
                        {
                          return result;
                        }

                        sub_100109758();
                      }
                    }

                    else
                    {
                      v34 = sqlite3_exec(*(a1 + 32), "\n         CREATE TABLE external_configs\n         (\n          external_config_id INTEGER PRIMARY KEY ASC,\n          external_config_kind STRING,\n          external_config_def  STRING,\n          external_config_enableIf STRING\n         )\n    ", 0, 0, 0);
                      v35 = *(a1 + 32);
                      if (v34)
                      {
                        result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
                        if (v35)
                        {
                          if (!result)
                          {
                            return result;
                          }

                          v36 = sqlite3_errmsg(v35);
                          sub_1001097B8(v36, v93);
                        }

                        else
                        {
                          if (!result)
                          {
                            return result;
                          }

                          sub_1001097F0();
                        }
                      }

                      else
                      {
                        v37 = sqlite3_exec(*(a1 + 32), "\n         CREATE TABLE config_external_configs\n         (\n          config_id INTEGER,\n          external_config_id INTEGER\n         )\n    ", 0, 0, 0);
                        v38 = *(a1 + 32);
                        if (v37)
                        {
                          result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
                          if (v38)
                          {
                            if (!result)
                            {
                              return result;
                            }

                            v39 = sqlite3_errmsg(v38);
                            sub_100109850(v39, v93);
                          }

                          else
                          {
                            if (!result)
                            {
                              return result;
                            }

                            sub_100109888();
                          }
                        }

                        else
                        {
                          v40 = sqlite3_exec(*(a1 + 32), "\n         CREATE TABLE disabled_external_configs\n         (\n          external_config_id INTEGER\n        )\n    ", 0, 0, 0);
                          v41 = *(a1 + 32);
                          if (v40)
                          {
                            result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
                            if (v41)
                            {
                              if (!result)
                              {
                                return result;
                              }

                              v42 = sqlite3_errmsg(v41);
                              sub_1001098E8(v42, v93);
                            }

                            else
                            {
                              if (!result)
                              {
                                return result;
                              }

                              sub_100109920();
                            }
                          }

                          else
                          {
                            v43 = sqlite3_exec(*(a1 + 32), "\n         CREATE VIEW eligible_transform_view AS\n           SELECT transforms.transform_id, transform_uuid, transform_def, transform_enableIf\n           FROM transforms\n           INNER JOIN config_transforms\n                ON config_transforms.transform_id=transforms.transform_id\n           WHERE config_transforms.config_id IN (SELECT config_id FROM configs WHERE config_enabled=1 LIMIT 1)\n    ", 0, 0, 0);
                            v44 = *(a1 + 32);
                            if (v43)
                            {
                              result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
                              if (v44)
                              {
                                if (!result)
                                {
                                  return result;
                                }

                                v45 = sqlite3_errmsg(v44);
                                sub_100109980(v45, v93);
                              }

                              else
                              {
                                if (!result)
                                {
                                  return result;
                                }

                                sub_1001099B8();
                              }
                            }

                            else
                            {
                              v46 = sqlite3_exec(*(a1 + 32), "\n         CREATE VIEW eligible_eventdef_view AS\n           SELECT eventdefs.eventdef_id, event_uuid, event_name, event_type, event_defType, event_config\n           FROM eventdefs\n           INNER JOIN config_eventdefs\n                ON config_eventdefs.eventdef_id=eventdefs.eventdef_id\n           WHERE config_eventdefs.config_id IN (SELECT config_id FROM configs WHERE config_enabled=1 LIMIT 1)\n    ", 0, 0, 0);
                              v47 = *(a1 + 32);
                              if (v46)
                              {
                                result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
                                if (v47)
                                {
                                  if (!result)
                                  {
                                    return result;
                                  }

                                  v48 = sqlite3_errmsg(v47);
                                  sub_100109A18(v48, v93);
                                }

                                else
                                {
                                  if (!result)
                                  {
                                    return result;
                                  }

                                  sub_100109A50();
                                }
                              }

                              else
                              {
                                v49 = sqlite3_exec(*(a1 + 32), "\n         CREATE VIEW eligible_external_configs_view AS\n           SELECT config_external_configs.external_config_id, external_config_kind, external_config_def, external_config_enableIf\n           FROM external_configs\n           INNER JOIN config_external_configs\n                ON config_external_configs.external_config_id=external_configs.external_config_id\n           WHERE config_external_configs.config_id IN (SELECT config_id FROM configs WHERE config_enabled=1 LIMIT 1)\n    ", 0, 0, 0);
                                v50 = *(a1 + 32);
                                if (v49)
                                {
                                  result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
                                  if (v50)
                                  {
                                    if (!result)
                                    {
                                      return result;
                                    }

                                    v51 = sqlite3_errmsg(v50);
                                    sub_100109AB0(v51, v93);
                                  }

                                  else
                                  {
                                    if (!result)
                                    {
                                      return result;
                                    }

                                    sub_100109AE8();
                                  }
                                }

                                else
                                {
                                  v52 = sqlite3_exec(*(a1 + 32), "\n         CREATE VIEW enabled_transform_view AS\n           SELECT eligible_transform_view.transform_id AS transform_id, transform_uuid, transform_def\n           FROM eligible_transform_view\n           LEFT JOIN disabled_transforms\n              ON eligible_transform_view.transform_id=disabled_transforms.transform_id\n           WHERE disabled_transforms.transform_id IS NULL\n    ", 0, 0, 0);
                                  v53 = *(a1 + 32);
                                  if (v52)
                                  {
                                    result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
                                    if (v53)
                                    {
                                      if (!result)
                                      {
                                        return result;
                                      }

                                      v54 = sqlite3_errmsg(v53);
                                      sub_100109B48(v54, v93);
                                    }

                                    else
                                    {
                                      if (!result)
                                      {
                                        return result;
                                      }

                                      sub_100109B80();
                                    }
                                  }

                                  else
                                  {
                                    v55 = sqlite3_exec(*(a1 + 32), "\n         CREATE VIEW disabled_transform_view AS\n           SELECT eligible_transform_view.transform_id AS transform_id, transform_uuid, transform_def\n           FROM eligible_transform_view\n           LEFT JOIN disabled_transforms\n              ON eligible_transform_view.transform_id=disabled_transforms.transform_id\n           WHERE disabled_transforms.transform_id IS NOT NULL\n    ", 0, 0, 0);
                                    v56 = *(a1 + 32);
                                    if (v55)
                                    {
                                      result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
                                      if (v56)
                                      {
                                        if (!result)
                                        {
                                          return result;
                                        }

                                        v57 = sqlite3_errmsg(v56);
                                        sub_100109BE0(v57, v93);
                                      }

                                      else
                                      {
                                        if (!result)
                                        {
                                          return result;
                                        }

                                        sub_100109C18();
                                      }
                                    }

                                    else
                                    {
                                      v58 = sqlite3_exec(*(a1 + 32), "\n         CREATE VIEW enabled_tranforms_by_event_view AS\n           SELECT transform_events.event_id, event_name, transform_uuid, transform_def\n           FROM enabled_transform_view\n           INNER JOIN transform_events\n              ON transform_events.transform_id=enabled_transform_view.transform_id\n           LEFT JOIN events\n              ON transform_events.event_id=events.event_id\n    ", 0, 0, 0);
                                      v59 = *(a1 + 32);
                                      if (v58)
                                      {
                                        result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
                                        if (v59)
                                        {
                                          if (!result)
                                          {
                                            return result;
                                          }

                                          v60 = sqlite3_errmsg(v59);
                                          sub_100109C78(v60, v93);
                                        }

                                        else
                                        {
                                          if (!result)
                                          {
                                            return result;
                                          }

                                          sub_100109CB0();
                                        }
                                      }

                                      else
                                      {
                                        v61 = sqlite3_exec(*(a1 + 32), "\n         CREATE VIEW enabled_event_names_view AS\n           SELECT DISTINCT event_name\n           FROM enabled_tranforms_by_event_view\n           ORDER BY event_name\n    ", 0, 0, 0);
                                        v62 = *(a1 + 32);
                                        if (v61)
                                        {
                                          result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
                                          if (v62)
                                          {
                                            if (!result)
                                            {
                                              return result;
                                            }

                                            v63 = sqlite3_errmsg(v62);
                                            sub_100109D10(v63, v93);
                                          }

                                          else
                                          {
                                            if (!result)
                                            {
                                              return result;
                                            }

                                            sub_100109D48();
                                          }
                                        }

                                        else
                                        {
                                          v64 = sqlite3_exec(*(a1 + 32), "\n         CREATE VIEW enabled_external_configs_view AS\n           SELECT external_config_kind, external_config_def\n           FROM eligible_external_configs_view\n           LEFT JOIN disabled_external_configs\n              ON eligible_external_configs_view.external_config_id=disabled_external_configs.external_config_id\n           WHERE disabled_external_configs.external_config_id IS NULL\n    ", 0, 0, 0);
                                          v65 = *(a1 + 32);
                                          if (v64)
                                          {
                                            result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
                                            if (v65)
                                            {
                                              if (!result)
                                              {
                                                return result;
                                              }

                                              v66 = sqlite3_errmsg(v65);
                                              sub_100109DA8(v66, v93);
                                            }

                                            else
                                            {
                                              if (!result)
                                              {
                                                return result;
                                              }

                                              sub_100109DE0();
                                            }
                                          }

                                          else
                                          {
                                            v67 = sqlite3_exec(*(a1 + 32), "CREATE INDEX index1 ON disabled_transforms(transform_id);", 0, 0, 0);
                                            v68 = *(a1 + 32);
                                            if (v67)
                                            {
                                              result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
                                              if (v68)
                                              {
                                                if (!result)
                                                {
                                                  return result;
                                                }

                                                v69 = sqlite3_errmsg(v68);
                                                sub_100109E40(v69, v93);
                                              }

                                              else
                                              {
                                                if (!result)
                                                {
                                                  return result;
                                                }

                                                sub_100109E78();
                                              }
                                            }

                                            else
                                            {
                                              v70 = sqlite3_exec(*(a1 + 32), "CREATE INDEX index2 ON transform_events(transform_id);", 0, 0, 0);
                                              v71 = *(a1 + 32);
                                              if (v70)
                                              {
                                                result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
                                                if (v71)
                                                {
                                                  if (!result)
                                                  {
                                                    return result;
                                                  }

                                                  v72 = sqlite3_errmsg(v71);
                                                  sub_100109ED8(v72, v93);
                                                }

                                                else
                                                {
                                                  if (!result)
                                                  {
                                                    return result;
                                                  }

                                                  sub_100109F10();
                                                }
                                              }

                                              else
                                              {
                                                v73 = sqlite3_exec(*(a1 + 32), "CREATE INDEX index3 ON disabled_external_configs(external_config_id);", 0, 0, 0);
                                                v74 = *(a1 + 32);
                                                if (v73)
                                                {
                                                  result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
                                                  if (v74)
                                                  {
                                                    if (!result)
                                                    {
                                                      return result;
                                                    }

                                                    v75 = sqlite3_errmsg(v74);
                                                    sub_100109F70(v75, v93);
                                                  }

                                                  else
                                                  {
                                                    if (!result)
                                                    {
                                                      return result;
                                                    }

                                                    sub_100109FA8();
                                                  }
                                                }

                                                else
                                                {
                                                  v76 = sqlite3_exec(*(a1 + 32), "CREATE INDEX index4 ON transforms(transform_id);", 0, 0, 0);
                                                  v77 = *(a1 + 32);
                                                  if (v76)
                                                  {
                                                    result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
                                                    if (v77)
                                                    {
                                                      if (!result)
                                                      {
                                                        return result;
                                                      }

                                                      v78 = sqlite3_errmsg(v77);
                                                      sub_10010A008(v78, v93);
                                                    }

                                                    else
                                                    {
                                                      if (!result)
                                                      {
                                                        return result;
                                                      }

                                                      sub_10010A040();
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v79 = sqlite3_exec(*(a1 + 32), "CREATE INDEX index5 ON config_transforms(transform_id);", 0, 0, 0);
                                                    v80 = *(a1 + 32);
                                                    if (v79)
                                                    {
                                                      result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
                                                      if (v80)
                                                      {
                                                        if (!result)
                                                        {
                                                          return result;
                                                        }

                                                        v81 = sqlite3_errmsg(v80);
                                                        sub_10010A0A0(v81, v93);
                                                      }

                                                      else
                                                      {
                                                        if (!result)
                                                        {
                                                          return result;
                                                        }

                                                        sub_10010A0D8();
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v82 = sqlite3_exec(*(a1 + 32), "CREATE INDEX index6 ON transform_events(event_id);", 0, 0, 0);
                                                      v83 = *(a1 + 32);
                                                      if (v82)
                                                      {
                                                        result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
                                                        if (v83)
                                                        {
                                                          if (!result)
                                                          {
                                                            return result;
                                                          }

                                                          v84 = sqlite3_errmsg(v83);
                                                          sub_10010A138(v84, v93);
                                                        }

                                                        else
                                                        {
                                                          if (!result)
                                                          {
                                                            return result;
                                                          }

                                                          sub_10010A170();
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v85 = sqlite3_exec(*(a1 + 32), "CREATE INDEX index7 ON events(event_id);", 0, 0, 0);
                                                        v86 = *(a1 + 32);
                                                        if (v85)
                                                        {
                                                          result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
                                                          if (v86)
                                                          {
                                                            if (!result)
                                                            {
                                                              return result;
                                                            }

                                                            v87 = sqlite3_errmsg(v86);
                                                            sub_10010A1D0(v87, v93);
                                                          }

                                                          else
                                                          {
                                                            if (!result)
                                                            {
                                                              return result;
                                                            }

                                                            sub_10010A208();
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v88 = sqlite3_exec(*(a1 + 32), "CREATE INDEX index8 ON eventdefs(eventdef_id);", 0, 0, 0);
                                                          v89 = *(a1 + 32);
                                                          if (v88)
                                                          {
                                                            result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
                                                            if (v89)
                                                            {
                                                              if (!result)
                                                              {
                                                                return result;
                                                              }

                                                              v90 = sqlite3_errmsg(v89);
                                                              sub_10010A268(v90, v93);
                                                            }

                                                            else
                                                            {
                                                              if (!result)
                                                              {
                                                                return result;
                                                              }

                                                              sub_10010A2A0();
                                                            }
                                                          }

                                                          else
                                                          {
                                                            if (!sqlite3_exec(*(a1 + 32), "CREATE INDEX index9 ON config_eventdefs(eventdef_id);", 0, 0, 0))
                                                            {
                                                              return sub_10007F970(a1, 1);
                                                            }

                                                            v91 = *(a1 + 32);
                                                            result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
                                                            if (v91)
                                                            {
                                                              if (!result)
                                                              {
                                                                return result;
                                                              }

                                                              v92 = sqlite3_errmsg(v91);
                                                              sub_10010A300(v92, v93);
                                                            }

                                                            else
                                                            {
                                                              if (!result)
                                                              {
                                                                return result;
                                                              }

                                                              sub_10010A338();
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
                }
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

void sub_100100594(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

BOOL sub_1001005A0(uint64_t a1)
{
  v2 = qword_100192D80;
  if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Config Store] DATABASE INITIALIZATION: modifying for V2 schema", v15, 2u);
  }

  v3 = sqlite3_exec(*(a1 + 32), "\n         ALTER TABLE transforms ADD COLUMN transform_sampling DOUBLE DEFAULT 100.00\n    ", 0, 0, 0);
  v4 = *(a1 + 32);
  if (v3)
  {
    result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v4)
    {
      if (!result)
      {
        return result;
      }

      v6 = sqlite3_errmsg(v4);
      sub_10010A398(v6, v15);
    }

    else
    {
      if (!result)
      {
        return result;
      }

      sub_10010A3D0();
    }
  }

  else
  {
    v7 = sqlite3_exec(*(a1 + 32), "\n        DROP VIEW eligible_transform_view; CREATE VIEW eligible_transform_view AS\n           SELECT transforms.transform_id, transform_uuid, transform_def, transform_enableIf, transform_sampling\n           FROM transforms\n           INNER JOIN config_transforms\n                ON config_transforms.transform_id=transforms.transform_id\n           WHERE config_transforms.config_id IN (SELECT config_id FROM configs WHERE config_enabled=1 LIMIT 1)\n    ", 0, 0, 0);
    v8 = *(a1 + 32);
    if (v7)
    {
      result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
      if (v8)
      {
        if (!result)
        {
          return result;
        }

        v9 = sqlite3_errmsg(v8);
        sub_100109980(v9, v15);
      }

      else
      {
        if (!result)
        {
          return result;
        }

        sub_10010A430();
      }
    }

    else
    {
      v10 = sqlite3_exec(*(a1 + 32), "\n        DROP VIEW enabled_transform_view; CREATE VIEW enabled_transform_view AS\n           SELECT eligible_transform_view.transform_id AS transform_id, transform_uuid, transform_def, transform_sampling\n           FROM eligible_transform_view\n           LEFT JOIN disabled_transforms\n              ON eligible_transform_view.transform_id=disabled_transforms.transform_id\n           WHERE disabled_transforms.transform_id IS NULL\n    ", 0, 0, 0);
      v11 = *(a1 + 32);
      if (v10)
      {
        result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
        if (v11)
        {
          if (!result)
          {
            return result;
          }

          v12 = sqlite3_errmsg(v11);
          sub_100109B48(v12, v15);
        }

        else
        {
          if (!result)
          {
            return result;
          }

          sub_10010A490();
        }
      }

      else
      {
        if (!sqlite3_exec(*(a1 + 32), "\n        DROP VIEW enabled_tranforms_by_event_view; CREATE VIEW enabled_tranforms_by_event_view AS\n           SELECT transform_events.event_id, event_name, transform_uuid, transform_def, transform_sampling\n           FROM enabled_transform_view\n           INNER JOIN transform_events\n              ON transform_events.transform_id=enabled_transform_view.transform_id\n           LEFT JOIN events\n              ON transform_events.event_id=events.event_id\n    ", 0, 0, 0))
        {
          return sub_10007F970(a1, 2);
        }

        v13 = *(a1 + 32);
        result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
        if (v13)
        {
          if (!result)
          {
            return result;
          }

          v14 = sqlite3_errmsg(v13);
          sub_100109C78(v14, v15);
        }

        else
        {
          if (!result)
          {
            return result;
          }

          sub_100109CB0();
        }
      }
    }
  }

  return 0;
}

void sub_1001007E4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

BOOL sub_1001007F0(uint64_t a1)
{
  v2 = qword_100192D80;
  if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Config Store] DATABASE INITIALIZATION: modifying for V3 schema", v6, 2u);
  }

  if (!sqlite3_exec(*(a1 + 32), "\n         ALTER TABLE disabled_transforms ADD COLUMN disable_reason STRING\n    ", 0, 0, 0))
  {
    return sub_10007F970(a1, 3);
  }

  v3 = *(a1 + 32);
  result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
  if (v3)
  {
    if (result)
    {
      v5 = sqlite3_errmsg(v3);
      sub_10010A4F0(v5, v6);
      return 0;
    }
  }

  else if (result)
  {
    sub_10010A528();
    return 0;
  }

  return result;
}

void sub_10010090C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

BOOL sub_100100918(uint64_t a1)
{
  v2 = qword_100192D80;
  if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Config Store] DATABASE INITIALIZATION: modifying for V4 schema", v18, 2u);
  }

  v3 = sqlite3_exec(*(a1 + 32), "\n         CREATE TABLE modify_eventdefs\n         (\n          modify_eventdef_id INTEGER PRIMARY KEY ASC,\n          modify_event_uuid STRING UNIQUE,\n          modify_event_name STRING,\n          modify_event_type STRING,\n          modify_event_defType STRING,\n          modify_event_config STRING\n         )\n    ", 0, 0, 0);
  v4 = *(a1 + 32);
  if (v3)
  {
    result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v4)
    {
      if (!result)
      {
        return result;
      }

      v6 = sqlite3_errmsg(v4);
      sub_10010A588(v6, v18);
    }

    else
    {
      if (!result)
      {
        return result;
      }

      sub_10010A5C0();
    }
  }

  else
  {
    v7 = sqlite3_exec(*(a1 + 32), "\n         CREATE TABLE config_modify_eventdefs\n         (\n          config_id INTEGER,\n          modify_eventdef_id INTEGER\n         )\n    ", 0, 0, 0);
    v8 = *(a1 + 32);
    if (v7)
    {
      result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
      if (v8)
      {
        if (!result)
        {
          return result;
        }

        v9 = sqlite3_errmsg(v8);
        sub_10010A620(v9, v18);
      }

      else
      {
        if (!result)
        {
          return result;
        }

        sub_10010A658();
      }
    }

    else
    {
      v10 = sqlite3_exec(*(a1 + 32), "\n         CREATE VIEW eligible_modify_eventdef_view AS\n           SELECT modify_eventdefs.modify_eventdef_id, modify_event_uuid, modify_event_name, modify_event_type, modify_event_defType, modify_event_config\n           FROM modify_eventdefs\n           INNER JOIN config_modify_eventdefs\n                ON config_modify_eventdefs.modify_eventdef_id=modify_eventdefs.modify_eventdef_id\n           WHERE config_modify_eventdefs.config_id IN (SELECT config_id FROM configs WHERE config_enabled=1 LIMIT 1)\n    ", 0, 0, 0);
      v11 = *(a1 + 32);
      if (v10)
      {
        result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
        if (v11)
        {
          if (!result)
          {
            return result;
          }

          v12 = sqlite3_errmsg(v11);
          sub_10010A6B8(v12, v18);
        }

        else
        {
          if (!result)
          {
            return result;
          }

          sub_10010A6F0();
        }
      }

      else
      {
        v13 = sqlite3_exec(*(a1 + 32), "CREATE INDEX index10 ON modify_eventdefs(modify_eventdef_id);", 0, 0, 0);
        v14 = *(a1 + 32);
        if (v13)
        {
          result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
          if (v14)
          {
            if (!result)
            {
              return result;
            }

            v15 = sqlite3_errmsg(v14);
            sub_10010A750(v15, v18);
          }

          else
          {
            if (!result)
            {
              return result;
            }

            sub_10010A788();
          }
        }

        else
        {
          if (!sqlite3_exec(*(a1 + 32), "CREATE INDEX index11 ON config_modify_eventdefs(modify_eventdef_id);", 0, 0, 0))
          {
            return sub_10007F970(a1, 4);
          }

          v16 = *(a1 + 32);
          result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
          if (v16)
          {
            if (!result)
            {
              return result;
            }

            v17 = sqlite3_errmsg(v16);
            sub_10010A7E8(v17, v18);
          }

          else
          {
            if (!result)
            {
              return result;
            }

            sub_10010A820();
          }
        }
      }
    }
  }

  return 0;
}

void sub_100100BC0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

BOOL sub_100100BCC(uint64_t a1)
{
  v2 = sqlite3_exec(*(a1 + 32), "\n         CREATE TABLE sampling\n         (\n          sampling_id INTEGER PRIMARY KEY ASC,\n          sampling_def STRING UNIQUE NOT NULL,\n          sampling_def_perc DOUBLE NOT NULL DEFAULT 100.0,\n          sampled_out INTEGER NOT NULL DEFAULT 0,\n          disable_sampling INTEGER NOT NULL DEFAULT 0\n         )\n    ", 0, 0, 0);
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      if (v4)
      {
        v5 = sqlite3_errmsg(v3);
        sub_10010A880(v5, v166);
      }
    }

    else if (v4)
    {
      sub_10010A8B8();
    }

    return 0;
  }

  v6 = sqlite3_exec(*(a1 + 32), "ALTER TABLE transforms ADD COLUMN sampling_id INTEGER REFERENCES sampling(sampling_id)", 0, 0, 0);
  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (v8)
      {
        v9 = sqlite3_errmsg(v7);
        sub_10010A918(v9, v166);
      }
    }

    else if (v8)
    {
      sub_10010A950();
    }

    return 0;
  }

  v10 = sqlite3_exec(*(a1 + 32), "ALTER TABLE external_configs ADD COLUMN sampling_id INTEGER REFERENCES sampling(sampling_id)", 0, 0, 0);
  v11 = *(a1 + 32);
  if (v10)
  {
    v12 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v11)
    {
      if (v12)
      {
        v13 = sqlite3_errmsg(v11);
        sub_10010A9B0(v13, v166);
      }
    }

    else if (v12)
    {
      sub_10010A9E8();
    }

    return 0;
  }

  v14 = sqlite3_exec(*(a1 + 32), "\n                            INSERT INTO sampling(sampling_def, sampling_def_perc, sampled_out)\n                            SELECT transform_enableIf, transform_sampling, CASE WHEN (disabled_transforms.transform_id IS NOT NULL AND disable_reason=sampled) THEN 1 ELSE 0 END AS sampled_out\n                            FROM transforms\n                            LEFT JOIN disabled_transforms\n                            ON transforms.transform_id=disabled_transforms.transform_id\n                            WHERE transform_enableIf IS NOT NULL\n                            GROUP BY transform_enableIf;\n    ", 0, 0, 0);
  v15 = *(a1 + 32);
  if (v14)
  {
    v16 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v15)
    {
      if (v16)
      {
        v17 = sqlite3_errmsg(v15);
        sub_10010AA48(v17, v166);
      }
    }

    else if (v16)
    {
      sub_10010AA80();
    }

    return 0;
  }

  v18 = sqlite3_exec(*(a1 + 32), "\n                            INSERT INTO sampling(sampling_def, sampled_out)\n                            SELECT external_config_enableIf, CASE WHEN disabled_external_configs.external_config_id IS NOT NULL THEN 1 ELSE 0 END AS sampled_out\n                            FROM external_configs\n                            LEFT JOIN disabled_external_configs\n                            ON external_configs.external_config_id=disabled_external_configs.external_config_id\n                            WHERE external_config_enableIf IS NOT NULL\n                            GROUP BY external_config_enableIf;\n    ", 0, 0, 0);
  v19 = *(a1 + 32);
  if (v18)
  {
    v20 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v19)
    {
      if (v20)
      {
        v21 = sqlite3_errmsg(v19);
        sub_10010AAE0(v21, v166);
      }
    }

    else if (v20)
    {
      sub_10010AB18();
    }

    return 0;
  }

  v22 = sqlite3_exec(*(a1 + 32), "\n                            UPDATE transforms\n                            SET sampling_id=sampling.sampling_id\n                            FROM sampling\n                            WHERE transforms.transform_enableIf=sampling.sampling_def;\n    ", 0, 0, 0);
  v23 = *(a1 + 32);
  if (v22)
  {
    v24 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v23)
    {
      if (v24)
      {
        v25 = sqlite3_errmsg(v23);
        sub_10010AB78(v25, v166);
      }
    }

    else if (v24)
    {
      sub_10010ABB0();
    }

    return 0;
  }

  v26 = sqlite3_exec(*(a1 + 32), "\n                            UPDATE external_configs\n                            SET sampling_id=sampling.sampling_id\n                            FROM sampling\n                            WHERE external_configs.external_config_enableIf=sampling.sampling_def;\n    ", 0, 0, 0);
  v27 = *(a1 + 32);
  if (v26)
  {
    v28 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v27)
    {
      if (v28)
      {
        v29 = sqlite3_errmsg(v27);
        sub_10010AC10(v29, v166);
      }
    }

    else if (v28)
    {
      sub_10010AC48();
    }

    return 0;
  }

  v30 = sqlite3_exec(*(a1 + 32), "\n           CREATE VIEW composed_transforms_view AS\n           SELECT transforms.*, sampling.*, CASE WHEN (transforms.sampling_id IS NULL OR disable_sampling=1) THEN 100.0 ELSE sampling_def_perc END as derived_sampling_perc\n           FROM transforms\n           LEFT JOIN sampling\n                ON transforms.sampling_id=sampling.sampling_id\n    ", 0, 0, 0);
  v31 = *(a1 + 32);
  if (v30)
  {
    v32 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v31)
    {
      if (v32)
      {
        v33 = sqlite3_errmsg(v31);
        sub_10010ACA8(v33, v166);
      }
    }

    else if (v32)
    {
      sub_10010ACE0();
    }

    return 0;
  }

  v34 = sqlite3_exec(*(a1 + 32), "\n           DROP VIEW eligible_transform_view; CREATE VIEW eligible_transforms_view AS\n           SELECT composed_transforms_view.*\n           FROM composed_transforms_view\n           INNER JOIN config_transforms\n                ON composed_transforms_view.transform_id=config_transforms.transform_id\n           WHERE config_transforms.config_id IN (SELECT config_id FROM configs WHERE config_enabled=1 LIMIT 1)\n    ", 0, 0, 0);
  v35 = *(a1 + 32);
  if (v34)
  {
    v36 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v35)
    {
      if (v36)
      {
        v37 = sqlite3_errmsg(v35);
        sub_10010AD40(v37, v166);
      }
    }

    else if (v36)
    {
      sub_10010AD78();
    }

    return 0;
  }

  v38 = sqlite3_exec(*(a1 + 32), "\n           DROP VIEW disabled_transform_view; CREATE VIEW disabled_transforms_view AS\n           SELECT composed_transforms_view.*\n           FROM composed_transforms_view\n           INNER JOIN disabled_transforms\n              ON composed_transforms_view.transform_id=disabled_transforms.transform_id\n    ", 0, 0, 0);
  v39 = *(a1 + 32);
  if (v38)
  {
    v40 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v39)
    {
      if (v40)
      {
        v41 = sqlite3_errmsg(v39);
        sub_10010ADD8(v41, v166);
      }
    }

    else if (v40)
    {
      sub_10010AE10();
    }

    return 0;
  }

  v42 = sqlite3_exec(*(a1 + 32), "\n           CREATE VIEW sampled_out_transforms_view AS\n           SELECT *\n           FROM composed_transforms_view\n           WHERE (sampled_out=1 AND disable_sampling=0)\n    ", 0, 0, 0);
  v43 = *(a1 + 32);
  if (v42)
  {
    v44 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v43)
    {
      if (v44)
      {
        v45 = sqlite3_errmsg(v43);
        sub_10010AE70(v45, v166);
      }
    }

    else if (v44)
    {
      sub_10010AEA8();
    }

    return 0;
  }

  v46 = sqlite3_exec(*(a1 + 32), "\n           CREATE VIEW usable_transforms_view AS\n           SELECT composed_transforms_view.*\n           FROM composed_transforms_view\n           LEFT JOIN disabled_transforms\n              ON composed_transforms_view.transform_id=disabled_transforms.transform_id\n           WHERE disabled_transforms.transform_id IS NULL AND (sampling_id IS NULL OR sampled_out=0 OR disable_sampling=1)\n    ", 0, 0, 0);
  v47 = *(a1 + 32);
  if (v46)
  {
    v48 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v47)
    {
      if (v48)
      {
        v49 = sqlite3_errmsg(v47);
        sub_10010AF08(v49, v166);
      }
    }

    else if (v48)
    {
      sub_10010AF40();
    }

    return 0;
  }

  v50 = sqlite3_exec(*(a1 + 32), "\n        DROP VIEW enabled_transform_view; CREATE VIEW enabled_transforms_view AS\n           SELECT eligible_transforms_view.*\n           FROM eligible_transforms_view\n           INNER JOIN usable_transforms_view\n              ON usable_transforms_view.transform_id=eligible_transforms_view.transform_id\n    ", 0, 0, 0);
  v51 = *(a1 + 32);
  if (v50)
  {
    v52 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v51)
    {
      if (v52)
      {
        v53 = sqlite3_errmsg(v51);
        sub_10010AFA0(v53, v166);
      }
    }

    else if (v52)
    {
      sub_10010AFD8();
    }

    return 0;
  }

  v54 = sqlite3_exec(*(a1 + 32), "\n        DROP VIEW enabled_tranforms_by_event_view; CREATE VIEW enabled_transforms_by_event_view AS\n           SELECT events.*, enabled_transforms_view.*\n           FROM enabled_transforms_view\n           INNER JOIN transform_events\n              ON enabled_transforms_view.transform_id=transform_events.transform_id\n           LEFT JOIN events\n              ON transform_events.event_id=events.event_id\n    ", 0, 0, 0);
  v55 = *(a1 + 32);
  if (v54)
  {
    v56 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v55)
    {
      if (v56)
      {
        v57 = sqlite3_errmsg(v55);
        sub_10010B038(v57, v166);
      }
    }

    else if (v56)
    {
      sub_10010B070();
    }

    return 0;
  }

  v58 = sqlite3_exec(*(a1 + 32), "\n        DROP VIEW enabled_event_names_view; CREATE VIEW enabled_event_names_view AS\n           SELECT DISTINCT event_name\n           FROM enabled_transforms_by_event_view\n           ORDER BY event_name\n    ", 0, 0, 0);
  v59 = *(a1 + 32);
  if (v58)
  {
    v60 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v59)
    {
      if (v60)
      {
        v61 = sqlite3_errmsg(v59);
        sub_10010B0D0(v61, v166);
      }
    }

    else if (v60)
    {
      sub_10010B108();
    }

    return 0;
  }

  v62 = sqlite3_exec(*(a1 + 32), "\n           CREATE VIEW composed_external_configs_view AS\n           SELECT external_configs.*, sampling.*\n           FROM external_configs\n           LEFT JOIN sampling\n                ON external_configs.sampling_id=sampling.sampling_id\n    ", 0, 0, 0);
  v63 = *(a1 + 32);
  if (v62)
  {
    v64 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v63)
    {
      if (v64)
      {
        v65 = sqlite3_errmsg(v63);
        sub_10010B168(v65, v166);
      }
    }

    else if (v64)
    {
      sub_10010B1A0();
    }

    return 0;
  }

  v66 = sqlite3_exec(*(a1 + 32), "\n           DROP VIEW eligible_external_configs_view; CREATE VIEW eligible_external_configs_view AS\n           SELECT composed_external_configs_view.*\n           FROM composed_external_configs_view\n           INNER JOIN config_external_configs\n                ON composed_external_configs_view.external_config_id=config_external_configs.external_config_id\n           WHERE config_external_configs.config_id IN (SELECT config_id FROM configs WHERE config_enabled=1 LIMIT 1)\n    ", 0, 0, 0);
  v67 = *(a1 + 32);
  if (v66)
  {
    v68 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v67)
    {
      if (v68)
      {
        v69 = sqlite3_errmsg(v67);
        sub_10010B200(v69, v166);
      }
    }

    else if (v68)
    {
      sub_10010B238();
    }

    return 0;
  }

  v70 = sqlite3_exec(*(a1 + 32), "\n           CREATE VIEW disabled_external_configs_view AS\n           SELECT composed_external_configs_view.*\n           FROM composed_external_configs_view\n           INNER JOIN disabled_external_configs\n              ON composed_external_configs_view.external_config_id=disabled_external_configs.external_config_id\n    ", 0, 0, 0);
  v71 = *(a1 + 32);
  if (v70)
  {
    v72 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v71)
    {
      if (v72)
      {
        v73 = sqlite3_errmsg(v71);
        sub_10010B298(v73, v166);
      }
    }

    else if (v72)
    {
      sub_10010B2D0();
    }

    return 0;
  }

  v74 = sqlite3_exec(*(a1 + 32), "\n           CREATE VIEW sampled_out_external_configs_view AS\n           SELECT *\n           FROM composed_external_configs_view\n           WHERE (sampled_out=1 AND disable_sampling=0)\n    ", 0, 0, 0);
  v75 = *(a1 + 32);
  if (v74)
  {
    v76 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v75)
    {
      if (v76)
      {
        v77 = sqlite3_errmsg(v75);
        sub_10010B330(v77, v166);
      }
    }

    else if (v76)
    {
      sub_10010B368();
    }

    return 0;
  }

  v78 = sqlite3_exec(*(a1 + 32), "\n          CREATE VIEW usable_external_configs_view AS\n          SELECT composed_external_configs_view.*\n          FROM composed_external_configs_view\n          LEFT JOIN disabled_external_configs\n             ON composed_external_configs_view.external_config_id=disabled_external_configs.external_config_id\n          WHERE disabled_external_configs.external_config_id IS NULL AND (sampling_id IS NULL OR sampled_out=0 OR disable_sampling=1)\n    ", 0, 0, 0);
  v79 = *(a1 + 32);
  if (v78)
  {
    v80 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v79)
    {
      if (v80)
      {
        v81 = sqlite3_errmsg(v79);
        sub_10010B3C8(v81, v166);
      }
    }

    else if (v80)
    {
      sub_10010B400();
    }

    return 0;
  }

  v82 = sqlite3_exec(*(a1 + 32), "\n        DROP VIEW enabled_external_configs_view; CREATE VIEW enabled_external_configs_view AS\n           SELECT eligible_external_configs_view.*\n           FROM eligible_external_configs_view\n           INNER JOIN usable_external_configs_view\n              ON eligible_external_configs_view.external_config_id=usable_external_configs_view.external_config_id\n    ", 0, 0, 0);
  v83 = *(a1 + 32);
  if (v82)
  {
    v84 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v83)
    {
      if (v84)
      {
        v85 = sqlite3_errmsg(v83);
        sub_10010B460(v85, v166);
      }
    }

    else if (v84)
    {
      sub_10010B498();
    }

    return 0;
  }

  v86 = sqlite3_exec(*(a1 + 32), "ALTER TABLE transforms DROP COLUMN transform_enableIf; ALTER TABLE transforms DROP COLUMN transform_sampling", 0, 0, 0);
  v87 = *(a1 + 32);
  if (v86)
  {
    v88 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v87)
    {
      if (v88)
      {
        v89 = sqlite3_errmsg(v87);
        sub_10010B4F8(v89, v166);
      }
    }

    else if (v88)
    {
      sub_10010B530();
    }

    return 0;
  }

  v90 = sqlite3_exec(*(a1 + 32), "ALTER TABLE external_configs DROP COLUMN external_config_enableIf", 0, 0, 0);
  v91 = *(a1 + 32);
  if (v90)
  {
    v92 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v91)
    {
      if (v92)
      {
        v93 = sqlite3_errmsg(v91);
        sub_10010B590(v93, v166);
      }
    }

    else if (v92)
    {
      sub_10010B5C8();
    }

    return 0;
  }

  v94 = sqlite3_exec(*(a1 + 32), "CREATE INDEX IX_sampling_sampled_out_disable_sampling ON sampling(sampled_out, disable_sampling)", 0, 0, 0);
  v95 = *(a1 + 32);
  if (v94)
  {
    v96 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v95)
    {
      if (v96)
      {
        v97 = sqlite3_errmsg(v95);
        sub_10010B628(v97, v166);
      }
    }

    else if (v96)
    {
      sub_10010B660();
    }

    return 0;
  }

  v98 = sqlite3_exec(*(a1 + 32), "CREATE INDEX IX_transforms_sampling_id ON transforms(sampling_id)", 0, 0, 0);
  v99 = *(a1 + 32);
  if (v98)
  {
    v100 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v99)
    {
      if (v100)
      {
        v101 = sqlite3_errmsg(v99);
        sub_10010B6C0(v101, v166);
      }
    }

    else if (v100)
    {
      sub_10010B6F8();
    }

    return 0;
  }

  v102 = sqlite3_exec(*(a1 + 32), "CREATE INDEX IX_external_configs_sampling_id ON external_configs(sampling_id)", 0, 0, 0);
  v103 = *(a1 + 32);
  if (v102)
  {
    v104 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v103)
    {
      if (v104)
      {
        v105 = sqlite3_errmsg(v103);
        sub_10010B758(v105, v166);
      }
    }

    else if (v104)
    {
      sub_10010B790();
    }

    return 0;
  }

  v106 = sqlite3_exec(*(a1 + 32), "DROP INDEX index1; CREATE INDEX IX_disabled_transforms_transform_id ON disabled_transforms(transform_id)", 0, 0, 0);
  v107 = *(a1 + 32);
  if (v106)
  {
    v108 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v107)
    {
      if (v108)
      {
        v109 = sqlite3_errmsg(v107);
        sub_10010B7F0(v109, v166);
      }
    }

    else if (v108)
    {
      sub_10010B828();
    }

    return 0;
  }

  v110 = sqlite3_exec(*(a1 + 32), "DROP INDEX index2; CREATE INDEX IX_transform_events_transform_id ON transform_events(transform_id)", 0, 0, 0);
  v111 = *(a1 + 32);
  if (v110)
  {
    v112 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v111)
    {
      if (v112)
      {
        v113 = sqlite3_errmsg(v111);
        sub_10010B888(v113, v166);
      }
    }

    else if (v112)
    {
      sub_10010B8C0();
    }

    return 0;
  }

  v114 = sqlite3_exec(*(a1 + 32), "DROP INDEX index3; CREATE INDEX IX_disabled_external_configs_external_config_id ON disabled_external_configs(external_config_id)", 0, 0, 0);
  v115 = *(a1 + 32);
  if (v114)
  {
    v116 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v115)
    {
      if (v116)
      {
        v117 = sqlite3_errmsg(v115);
        sub_10010B920(v117, v166);
      }
    }

    else if (v116)
    {
      sub_10010B958();
    }

    return 0;
  }

  v118 = sqlite3_exec(*(a1 + 32), "DROP INDEX index4", 0, 0, 0);
  v119 = *(a1 + 32);
  if (v118)
  {
    v120 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v119)
    {
      if (v120)
      {
        v121 = sqlite3_errmsg(v119);
        sub_10010B9B8(v121, v166);
      }
    }

    else if (v120)
    {
      sub_10010B9F0();
    }

    return 0;
  }

  v122 = sqlite3_exec(*(a1 + 32), "DROP INDEX index5; CREATE INDEX IX_config_transforms_transform_id ON config_transforms(transform_id)", 0, 0, 0);
  v123 = *(a1 + 32);
  if (v122)
  {
    v124 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v123)
    {
      if (v124)
      {
        v125 = sqlite3_errmsg(v123);
        sub_10010BA50(v125, v166);
      }
    }

    else if (v124)
    {
      sub_10010BA88();
    }

    return 0;
  }

  v126 = sqlite3_exec(*(a1 + 32), "CREATE INDEX IX_config_transforms_config_id_transform_id ON config_transforms(config_id, transform_id)", 0, 0, 0);
  v127 = *(a1 + 32);
  if (v126)
  {
    v128 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v127)
    {
      if (v128)
      {
        v129 = sqlite3_errmsg(v127);
        sub_10010BAE8(v129, v166);
      }
    }

    else if (v128)
    {
      sub_10010BB20();
    }

    return 0;
  }

  v130 = sqlite3_exec(*(a1 + 32), "DROP INDEX index6; CREATE INDEX IX_transform_events_event_id ON transform_events(event_id)", 0, 0, 0);
  v131 = *(a1 + 32);
  if (v130)
  {
    v132 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v131)
    {
      if (v132)
      {
        v133 = sqlite3_errmsg(v131);
        sub_10010BB80(v133, v166);
      }
    }

    else if (v132)
    {
      sub_10010BBB8();
    }

    return 0;
  }

  v134 = sqlite3_exec(*(a1 + 32), "DROP INDEX index7", 0, 0, 0);
  v135 = *(a1 + 32);
  if (v134)
  {
    v136 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v135)
    {
      if (v136)
      {
        v137 = sqlite3_errmsg(v135);
        sub_10010BC18(v137, v166);
      }
    }

    else if (v136)
    {
      sub_10010BC50();
    }

    return 0;
  }

  v138 = sqlite3_exec(*(a1 + 32), "DROP INDEX index8", 0, 0, 0);
  v139 = *(a1 + 32);
  if (v138)
  {
    v140 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v139)
    {
      if (v140)
      {
        v141 = sqlite3_errmsg(v139);
        sub_10010BCB0(v141, v166);
      }
    }

    else if (v140)
    {
      sub_10010BCE8();
    }

    return 0;
  }

  v142 = sqlite3_exec(*(a1 + 32), "DROP INDEX index9; CREATE INDEX IX_config_eventdefs_eventdef_id ON config_eventdefs(eventdef_id)", 0, 0, 0);
  v143 = *(a1 + 32);
  if (v142)
  {
    v144 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v143)
    {
      if (v144)
      {
        v145 = sqlite3_errmsg(v143);
        sub_10010BD48(v145, v166);
      }
    }

    else if (v144)
    {
      sub_10010BD80();
    }

    return 0;
  }

  v146 = sqlite3_exec(*(a1 + 32), "CREATE INDEX IX_config_eventdefs_config_id_eventdef_id ON config_eventdefs(config_id, eventdef_id)", 0, 0, 0);
  v147 = *(a1 + 32);
  if (v146)
  {
    v148 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v147)
    {
      if (v148)
      {
        v149 = sqlite3_errmsg(v147);
        sub_10010BDE0(v149, v166);
      }
    }

    else if (v148)
    {
      sub_10010BE18();
    }

    return 0;
  }

  v150 = sqlite3_exec(*(a1 + 32), "DROP INDEX index10;", 0, 0, 0);
  v151 = *(a1 + 32);
  if (v150)
  {
    v152 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v151)
    {
      if (v152)
      {
        v153 = sqlite3_errmsg(v151);
        sub_10010BE78(v153, v166);
      }
    }

    else if (v152)
    {
      sub_10010BEB0();
    }

    return 0;
  }

  v154 = sqlite3_exec(*(a1 + 32), "DROP INDEX index11; CREATE INDEX IX_config_modify_eventdefs_modify_eventdef_id ON config_modify_eventdefs(modify_eventdef_id)", 0, 0, 0);
  v155 = *(a1 + 32);
  if (v154)
  {
    v156 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v155)
    {
      if (v156)
      {
        v157 = sqlite3_errmsg(v155);
        sub_10010BF10(v157, v166);
      }
    }

    else if (v156)
    {
      sub_10010BF48();
    }

    return 0;
  }

  v158 = sqlite3_exec(*(a1 + 32), "CREATE INDEX IX_config_modify_eventdefs_config_id_modify_eventdef_id ON config_modify_eventdefs(config_id, modify_eventdef_id)", 0, 0, 0);
  v159 = *(a1 + 32);
  if (v158)
  {
    v160 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v159)
    {
      if (v160)
      {
        v161 = sqlite3_errmsg(v159);
        sub_10010BFA8(v161, v166);
      }
    }

    else if (v160)
    {
      sub_10010BFE0();
    }

    return 0;
  }

  if (sqlite3_exec(*(a1 + 32), "CREATE INDEX IX_modify_eventdefs_modify_event_name ON modify_eventdefs(modify_event_name)", 0, 0, 0))
  {
    v162 = *(a1 + 32);
    v163 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v162)
    {
      if (v163)
      {
        v164 = sqlite3_errmsg(v162);
        sub_10010C040(v164, v166);
      }
    }

    else if (v163)
    {
      sub_10010C078();
    }

    return 0;
  }

  return sub_10007F970(a1, 5);
}