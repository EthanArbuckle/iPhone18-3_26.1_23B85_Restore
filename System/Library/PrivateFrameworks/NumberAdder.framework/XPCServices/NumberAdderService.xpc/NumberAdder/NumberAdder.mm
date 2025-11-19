void sub_100000D84()
{
  sub_100002278((v0 + 5));
  sub_10000222C(v1, 0);
  sub_10000205C(v0);
}

void NumberAdderService::startService(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a1 + 24))
    {
      operator new();
    }

    sub_100003964();
  }

  sub_100003AF0();
}

void sub_100000F3C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = *a2;
  *a2 = 0;
  sub_1000022FC(&v4, v3);
}

void sub_1000011FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, uint64_t a30, std::__shared_weak_count *a31)
{
  if (v33)
  {
    sub_100001FF0(v33);
  }

  if (a13)
  {
    sub_100001FF0(a13);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_weak(a22);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_weak(a20);
  }

  if (a31)
  {
    std::__shared_weak_count::__release_weak(a31);
  }

  if (a29)
  {
    std::__shared_weak_count::__release_weak(a29);
  }

  v36 = *(v34 - 104);
  if (v36)
  {
    std::__shared_weak_count::__release_weak(v36);
  }

  v37 = *(v34 - 120);
  if (v37)
  {
    std::__shared_weak_count::__release_weak(v37);
    if (!v32)
    {
LABEL_17:
      if (!v31)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if (!v32)
  {
    goto LABEL_17;
  }

  std::__shared_weak_count::__release_weak(v32);
  if (!v31)
  {
LABEL_19:
    v38 = *(v34 - 88);
    if (v38)
    {
      sub_100001FF0(v38);
    }

    _Unwind_Resume(exception_object);
  }

LABEL_18:
  std::__shared_weak_count::__release_weak(v31);
  goto LABEL_19;
}

void sub_1000012B4(void *a1, uint64_t *a2)
{
  v2 = a1[4];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3321888768;
  v8 = sub_1000013B0;
  v9 = &unk_100008288;
  v4 = a1[7];
  v3 = a1[8];
  v10 = v2;
  v11 = v4;
  v12 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = a2[1];
  v13 = *a2;
  v14 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = a1[6];
  if (v6 && *(v6 + 8) != -1)
  {
    v8(v7);
  }

  if (v14)
  {
    sub_100001FF0(v14);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_10000138C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100001FF0(a18);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000013B0(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v9 = a1[5];
        v10 = v4;
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = a1[7];
        v7 = a1[8];
        v8[0] = v6;
        v8[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        NumberAdderService::handleMessage(v3, &v9, v8);
        if (v7)
        {
          sub_100001FF0(v7);
        }

        if (v10)
        {
          sub_100001FF0(v10);
        }
      }

      sub_100001FF0(v5);
    }
  }
}

void sub_100001458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (v13)
  {
    sub_100001FF0(v13);
  }

  if (a12)
  {
    sub_100001FF0(a12);
  }

  sub_100001FF0(v12);
  _Unwind_Resume(a1);
}

void NumberAdderService::handleMessage(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  sub_100002790((a1 + 40), a2);
  v6 = CLConnectionMessage::name(*a3);
  if (*(v6 + 23) < 0)
  {
    sub_1000020E0(__p, *v6, *(v6 + 8));
  }

  else
  {
    v7 = *v6;
    v25 = *(v6 + 16);
    *__p = v7;
  }

  v8 = _os_activity_create(&_mh_execute_header, "CL: #NumberAdderService handling message", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  if (qword_10000C1C0 != -1)
  {
    sub_100003C7C();
  }

  v9 = qword_10000C1C8;
  if (os_log_type_enabled(qword_10000C1C8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = __p;
    if (v25 < 0)
    {
      v10 = __p[0];
    }

    *buf = 68289538;
    v27 = 0;
    v28 = 2082;
    v29 = "";
    v30 = 2082;
    v31 = "activity";
    v32 = 2082;
    v33 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#NumberAdderService handling message, event:%{public, location:escape_only}s, messageName:%{public, location:escape_only}s}", buf, 0x26u);
  }

  if (SHIBYTE(v25) < 0 && __p[1] == 27)
  {
    v11 = *__p[0] == 0x656E6E6F434C436BLL && *(__p[0] + 1) == 0x6D754E6E6F697463;
    v12 = v11 && *(__p[0] + 2) == 0x7265646441726562;
    if (v12 && *(__p[0] + 19) == 0x6464417265646441)
    {
      v18 = *a2;
      v19 = a2[1];
      v22[0] = v18;
      v22[1] = v19;
      if (v19)
      {
        atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
      }

      v20 = *a3;
      v21 = *(a3 + 8);
      if (v21)
      {
        atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
      }

      NumberAdderService::handleAddRequest(a1, v22);
    }
  }

  if (qword_10000C1C0 != -1)
  {
    sub_100003C7C();
  }

  v14 = qword_10000C1C8;
  if (os_log_type_enabled(qword_10000C1C8, OS_LOG_TYPE_FAULT))
  {
    v15 = __p;
    if (v25 < 0)
    {
      v15 = __p[0];
    }

    *buf = 68289282;
    v27 = 0;
    v28 = 2082;
    v29 = "";
    v30 = 2082;
    v31 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#NumberAdderService received unknown message, messageName:%{public, location:escape_only}s}", buf, 0x1Cu);
    if (qword_10000C1C0 != -1)
    {
      sub_100003C7C();
    }
  }

  v16 = qword_10000C1C8;
  if (os_signpost_enabled(qword_10000C1C8))
  {
    v17 = __p;
    if (v25 < 0)
    {
      v17 = __p[0];
    }

    *buf = 68289282;
    v27 = 0;
    v28 = 2082;
    v29 = "";
    v30 = 2082;
    v31 = v17;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#NumberAdderService received unknown message", "{msg%{public}.0s:#NumberAdderService received unknown message, messageName:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  os_activity_scope_leave(&state);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100001820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, os_activity_scope_state_s state, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (v19)
  {
    sub_100001FF0(v19);
  }

  if (v20)
  {
    sub_100001FF0(v20);
  }

  os_activity_scope_leave(&state);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_10000186C(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[8];
  result[7] = a2[7];
  result[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1000018A0(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_100001FF0(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void *sub_1000018F0(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[8];
  result[7] = a2[7];
  result[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100001924(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_100001974(void *a1)
{
  v1 = a1[4];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3321888768;
  v6 = sub_100001A40;
  v7 = &unk_1000082E8;
  v3 = a1[7];
  v2 = a1[8];
  v8 = v1;
  v9 = v3;
  v10 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = a1[6];
  if (v4 && *(v4 + 8) != -1)
  {
    v6(v5);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }
}

void sub_100001A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_100001A40(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v6 = a1[5];
        v7 = v4;
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        dispatch_assert_queue_V2(*(v3 + 24));
        sub_100002484((v3 + 40), &v6);
        if (v7)
        {
          sub_100001FF0(v7);
        }
      }

      sub_100001FF0(v5);
    }
  }
}

void sub_100001AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100001FF0(a10);
  }

  sub_100001FF0(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_100001AE8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100001B04(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100001B14(void *a1)
{
  v1 = a1[4];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3321888768;
  v6 = sub_100001BE0;
  v7 = &unk_1000082E8;
  v3 = a1[7];
  v2 = a1[8];
  v8 = v1;
  v9 = v3;
  v10 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = a1[6];
  if (v4 && *(v4 + 8) != -1)
  {
    v6(v5);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }
}

void sub_100001BC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_100001BE0(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v6 = a1[5];
        v7 = v4;
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        dispatch_assert_queue_V2(*(v3 + 24));
        sub_100002484((v3 + 40), &v6);
        if (v7)
        {
          sub_100001FF0(v7);
        }
      }

      sub_100001FF0(v5);
    }
  }
}

void sub_100001C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100001FF0(a10);
  }

  sub_100001FF0(v10);
  _Unwind_Resume(a1);
}

void NumberAdderService::handleAddRequest(uint64_t a1, uint64_t *a2)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  v3 = *a2;
  operator new();
}

void sub_100001EE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100001F40()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_100001F94(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1000083B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100001FF0(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void *sub_1000020E0(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_100002184();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void sub_10000219C(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1000021F8(exception, a1);
}

std::logic_error *sub_1000021F8(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

CLConnectionServer *sub_10000222C(CLConnectionServer **a1, CLConnectionServer *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    CLConnectionServer::~CLConnectionServer(result);

    operator delete();
  }

  return result;
}

uint64_t sub_100002278(uint64_t a1)
{
  sub_1000022B4(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1000022B4(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        sub_100001FF0(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_100002364(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    CLConnection::deferredDelete(v1);
  }

  __cxa_rethrow();
}

void sub_100002394(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

CLConnection *sub_1000023CC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return CLConnection::deferredDelete(result);
  }

  return result;
}

uint64_t sub_1000023F0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_100002430(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t *sub_100002484(void *a1, void *a2)
{
  result = sub_1000024BC(a1, a2);
  if (result)
  {
    sub_1000025A8(a1, result);
    return 1;
  }

  return result;
}

void *sub_1000024BC(void *a1, void *a2)
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

uint64_t sub_1000025A8(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_1000025F4(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    sub_100002730(&v6, v3);
  }

  return v2;
}

void *sub_1000025F4@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
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

void sub_100002730(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[3];
    if (v3)
    {
      sub_100001FF0(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *sub_100002790(void *a1, void *a2)
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

void sub_100002A20(uint64_t a1, size_t __n)
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

      sub_100002B10(a1, prime);
    }
  }
}

void sub_100002B10(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_100001F40();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_100002CA0(void *a1, int a2, int a3, int a4, const char *a5, const char *a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_signpost_emit_with_name_impl(a1, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, a5, a6, &buf, 0x26u);
}

void sub_100002CCC(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_FAULT, a4, &buf, 0x26u);
}

void sub_100002CEC(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_INFO, a4, &buf, 0x26u);
}

BOOL sub_100002D0C()
{
  v1 = qword_10000C1C8;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

id sub_100002E3C(uint64_t a1)
{
  result = objc_loadWeak((a1 + 40));
  if (result)
  {
    xpc_connection_create("com.apple.lomoqa.numberadderservice", [*(a1 + 32) connectionQueue]);
    operator new();
  }

  return result;
}

void sub_100003170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100003190(uint64_t a1, uint64_t *a2)
{
  Weak = objc_loadWeak((a1 + 32));
  v4 = a2[1];
  v5 = *a2;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [Weak handleMessage:&v5];
  if (v6)
  {
    sub_100001FF0(v6);
  }
}

void sub_1000031EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100001FF0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000032EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100003320(uint64_t a1)
{
  v4[0] = @"kCLConnectionNumberAdderNumber1Key";
  v2 = [NSNumber numberWithInt:*(a1 + 48)];
  v4[1] = @"kCLConnectionNumberAdderNumber2Key";
  v5[0] = v2;
  v5[1] = [NSNumber numberWithInt:*(a1 + 52)];
  [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];
  v3 = *(*(a1 + 32) + 8);
  sub_100003714();
}

void sub_100003450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_100001FF0(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_100003470(uint64_t a1, CLConnectionMessage **a2)
{
  v3 = *a2;
  v4 = objc_opt_class();
  ObjectOfClass = CLConnectionMessage::getObjectOfClass(v3, v4);
  v6 = *(*(*(a1 + 32) + 8) + 40);
  (*(v6 + 16))(v6, [ObjectOfClass intValue]);
  v7 = *(*(*(a1 + 32) + 8) + 40);

  _Block_release(v7);
}

CLConnection *sub_1000036E8(CLConnection **a1, CLConnection *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    return CLConnection::deferredDelete(result);
  }

  return result;
}

void *sub_100003788(void *a1, char *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1000085A8;
  sub_100003864((a1 + 3), a2, a3);
  return a1;
}

void sub_100003804(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1000085A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100003864(uint64_t a1, char *__s, uint64_t *a3)
{
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100002184();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v11 = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
  }

  *(&__dst + v7) = 0;
  v8 = *a3;
  CLConnectionMessage::CLConnectionMessage();
  if (v11 < 0)
  {
    operator delete(__dst);
  }

  return a1;
}

void sub_100003948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100003964()
{
  if (qword_10000C1C0 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    if (sub_100002D0C())
    {
      sub_100002C74();
      sub_100002CCC(&_mh_execute_header, v1, v2, "{msg%{public}.0s:#NumberAdderService fServiceQueue can't be null, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, v4, v5, v6, v18, v19, v20, v21, v22);
      if (qword_10000C1C0 != -1)
      {
        dispatch_once(&qword_10000C1C0, &stru_100008410);
      }
    }

    if (os_signpost_enabled(*(v0 + 456)))
    {
      sub_100002C74();
      sub_100002CA0(&_mh_execute_header, v7, v8, v9, "#NumberAdderService fServiceQueue can't be null", "{msg%{public}.0s:#NumberAdderService fServiceQueue can't be null, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v10, v11, v18, v19, v20, v21, v22);
      if (qword_10000C1C0 != -1)
      {
        dispatch_once(&qword_10000C1C0, &stru_100008410);
      }
    }

    if (os_log_type_enabled(*(v0 + 456), OS_LOG_TYPE_INFO))
    {
      sub_100002C74();
      sub_100002CEC(&_mh_execute_header, v12, v13, "{msg%{public}.0s:#NumberAdderService fServiceQueue can't be null, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v14, v15, v16, v17, v18, v19, v20, v21, v22);
    }

    v19 = 41;
    v20 = "startService";
    v18 = "/Library/Caches/com.apple.xbs/Sources/CoreLocationIPCTemplate/NumberAdder/XPCService/NumberAdderService.mm";
    abort_report_np();
    __break(1u);
LABEL_11:
    dispatch_once(&qword_10000C1C0, &stru_100008410);
  }
}

void sub_100003AF0()
{
  if (qword_10000C1C0 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    if (sub_100002D0C())
    {
      sub_100002C74();
      sub_100002CCC(&_mh_execute_header, v1, v2, "{msg%{public}.0s:#NumberAdderService service can't be null, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, v4, v5, v6, v18, v19, v20, v21, v22);
      if (qword_10000C1C0 != -1)
      {
        dispatch_once(&qword_10000C1C0, &stru_100008410);
      }
    }

    if (os_signpost_enabled(*(v0 + 456)))
    {
      sub_100002C74();
      sub_100002CA0(&_mh_execute_header, v7, v8, v9, "#NumberAdderService service can't be null", "{msg%{public}.0s:#NumberAdderService service can't be null, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v10, v11, v18, v19, v20, v21, v22);
      if (qword_10000C1C0 != -1)
      {
        dispatch_once(&qword_10000C1C0, &stru_100008410);
      }
    }

    if (os_log_type_enabled(*(v0 + 456), OS_LOG_TYPE_INFO))
    {
      sub_100002C74();
      sub_100002CEC(&_mh_execute_header, v12, v13, "{msg%{public}.0s:#NumberAdderService service can't be null, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v14, v15, v16, v17, v18, v19, v20, v21, v22);
    }

    v19 = 40;
    v20 = "startService";
    v18 = "/Library/Caches/com.apple.xbs/Sources/CoreLocationIPCTemplate/NumberAdder/XPCService/NumberAdderService.mm";
    abort_report_np();
    __break(1u);
LABEL_11:
    dispatch_once(&qword_10000C1C0, &stru_100008410);
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}