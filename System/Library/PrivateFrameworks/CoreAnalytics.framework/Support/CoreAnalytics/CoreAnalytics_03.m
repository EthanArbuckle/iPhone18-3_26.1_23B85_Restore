void sub_100038804(uint64_t **a1)
{
  v5 = a1;
  v1 = **a1;
  v2 = *(v1 + 192);
  *(v1 + 192) = 1;
  v3 = qword_100192D38;
  if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_INFO))
  {
    v4 = "false";
    if (v2)
    {
      v4 = "true";
    }

    *buf = 136446210;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[CadenceManager] Partial data flag enabled {prior: %{public}s}", buf, 0xCu);
  }

  operator delete();
}

void sub_100038900(uint64_t **a1)
{
  v3 = a1;
  v1 = **a1;
  if (sub_100037A00(v1))
  {
    v2 = qword_100192D38;
    if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[CadenceManager] Resetting partial data flag", buf, 2u);
    }

    *(v1 + 192) = 0;
  }

  operator delete();
}

void sub_100038A00(uint64_t **a1)
{
  v1 = **a1;
  if (sub_100037A00(v1))
  {
    memset(&__str, 170, sizeof(__str));
    v2 = *(v1 + 328);
    if (!v2)
    {
      sub_10002B200();
    }

    (*(*v2 + 48))(&__str);
    v3 = (v1 + 200);
    v4 = *(v1 + 223);
    if (v4 >= 0)
    {
      v5 = *(v1 + 223);
    }

    else
    {
      v5 = *(v1 + 208);
    }

    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    v7 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if (v5 == size && (v4 >= 0 ? (v8 = (v1 + 200)) : (v8 = *v3), (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v9 = &__str) : (v9 = __str.__r_.__value_.__r.__words[0]), !memcmp(v8, v9, v5)))
    {
      v13 = qword_100192D38;
      if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_INFO))
      {
        *buf = 136380675;
        v16 = v8;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[CadenceManager] NO day boundary change. Keeping cached day boundary key: %{private}s", buf, 0xCu);
      }
    }

    else
    {
      v10 = qword_100192D38;
      if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_INFO))
      {
        v11 = (v1 + 200);
        if (v4 < 0)
        {
          v11 = *v3;
        }

        p_str = __str.__r_.__value_.__r.__words[0];
        if (v7 >= 0)
        {
          p_str = &__str;
        }

        *buf = 136380931;
        v16 = v11;
        v17 = 2081;
        v18 = p_str;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[CadenceManager] Daily key changed. Rotating day boundary key: {prior: %{private}s, new: %{private}s}", buf, 0x16u);
      }

      std::string::operator=((v1 + 200), &__str);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  *(v1 + 272) = 2;
  operator delete();
}

void sub_100038C30(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void sub_100038C74(uint64_t **a1)
{
  v1 = **a1;
  v2.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  v3 = (*(**(v1 + 280) + 48))(*(v1 + 280));
  v4 = qword_100192D38;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = &v15;
    sub_100024608(*(v1 + 176));
    if (v16 < 0)
    {
      v5 = v15;
    }

    v6 = &v13;
    sub_100024608(v2.__d_.__rep_);
    if (v14 < 0)
    {
      v6 = v13;
    }

    sub_100024608(*(v1 + 184));
    sub_100024608(v3);
    v7 = &v11;
    if (v12 < 0)
    {
      v7 = v11;
    }

    if (v10 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136446978;
    v18 = v5;
    v19 = 2082;
    v20 = v6;
    v21 = 2082;
    v22 = v7;
    v23 = 2082;
    v24 = p_p;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[CadenceManager] Rollover deadlines changed. lastRollover: {prior: %{public}s, new: %{public}s}. nextDeadline: {prior: %{public}s, new: %{public}s}.", buf, 0x2Au);
    if (v10 < 0)
    {
      operator delete(__p);
    }

    if (v12 < 0)
    {
      operator delete(v11);
    }

    if (v14 < 0)
    {
      operator delete(v13);
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  *(v1 + 176) = v2;
  *(v1 + 184) = v3;
  *(v1 + 296) = v2;
  operator delete();
}

void sub_100038EA4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  operator delete();
}

BOOL sub_100038FB4(uint64_t a1)
{
  v1 = **(a1 + 40);
  if (*(v1 + 272) == 1)
  {
    return 1;
  }

  v3 = sub_10005972C() - *(v1 + 248);
  if (v3 < 0)
  {
    v3 = -v3;
  }

  return v3 < 0x5B;
}

std::string *sub_100039004@<X0>(std::string *result@<X0>, std::string *a2@<X8>)
{
  v3 = result[1].__r_.__value_.__r.__words[2];
  v4 = v3[1];
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  v5 = *v3;
  v6 = *(v5 + 23);
  if (v6 < 0)
  {
    if (v5[1] != 5)
    {
      return result;
    }

    v5 = *v5;
  }

  else if (v6 != 5)
  {
    return result;
  }

  if (*v5 == 1818845508 && *(v5 + 4) == 121)
  {
    v11 = 25;
    return std::string::operator=(a2, &v4[v11]);
  }

  v8 = *v5;
  v9 = *(v5 + 4);
  if (v8 == 1631858745 && v9 == 121)
  {
    v11 = 28;
    return std::string::operator=(a2, &v4[v11]);
  }

  return result;
}

void sub_1000390B4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1000390D0(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v4);
  v2 = *(a1 + 32);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  result = v4;
  *(v2 + 16) = v5;
  *v2 = result;
  return result;
}

void **sub_100039160@<X0>(void **result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result[5];
  if (*(v2 + 55) < 0)
  {
    return sub_1000078D8(a2, *(v2 + 32), *(v2 + 40));
  }

  v3 = *(v2 + 32);
  *(a2 + 16) = *(v2 + 48);
  *a2 = v3;
  return result;
}

void **sub_100039190@<X0>(void **result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result[5];
  if (*(v2 + 79) < 0)
  {
    return sub_1000078D8(a2, *(v2 + 56), *(v2 + 64));
  }

  v3 = *(v2 + 56);
  *(a2 + 16) = *(v2 + 72);
  *a2 = v3;
  return result;
}

void **sub_1000391C0@<X0>(void **result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result[5];
  if (*(v2 + 103) < 0)
  {
    return sub_1000078D8(a2, *(v2 + 80), *(v2 + 88));
  }

  v3 = *(v2 + 80);
  *(a2 + 16) = *(v2 + 96);
  *a2 = v3;
  return result;
}

void sub_1000391F0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = **(a1 + 40);
  memset(__p, 170, sizeof(__p));
  if (*(v3 + 127) < 0)
  {
    sub_1000078D8(__p, *(v3 + 104), *(v3 + 112));
  }

  else
  {
    *__p = *(v3 + 104);
    __p[2] = *(v3 + 120);
  }

  v4 = HIBYTE(__p[2]);
  v5 = HIBYTE(__p[2]);
  if (SHIBYTE(__p[2]) < 0)
  {
    v4 = __p[1];
  }

  if (v4)
  {
    *a2 = *__p;
    *(a2 + 16) = __p[2];
    return;
  }

  if ((*(v3 + 103) & 0x80000000) == 0)
  {
    v6 = *(v3 + 80);
    *(a2 + 16) = *(v3 + 96);
    *a2 = v6;
    if ((v5 & 0x80) == 0)
    {
      return;
    }

    goto LABEL_10;
  }

  sub_1000078D8(a2, *(v3 + 80), *(v3 + 88));
  if ((HIBYTE(__p[2]) & 0x80) != 0)
  {
LABEL_10:
    operator delete(__p[0]);
  }
}

void sub_1000392E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void **sub_10003930C@<X0>(void **result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result[5];
  if (*(v2 + 175) < 0)
  {
    return sub_1000078D8(a2, *(v2 + 152), *(v2 + 160));
  }

  v3 = *(v2 + 152);
  *(a2 + 16) = *(v2 + 168);
  *a2 = v3;
  return result;
}

void sub_10003933C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = (*v1 + 80);
  v4 = (v1 + 1);
  v5 = *(*v1 + 103);
  v6 = *(*v1 + 88);
  if (v5 >= 0)
  {
    v7 = *(*v1 + 103);
  }

  else
  {
    v7 = *(*v1 + 88);
  }

  v8 = *(v1 + 31);
  v9 = v1[2];
  if ((v8 & 0x80u) == 0)
  {
    v9 = v8;
  }

  if (v7 != v9 || (v5 >= 0 ? (v10 = v3) : (v10 = v3->__r_.__value_.__r.__words[0]), (v8 & 0x80u) == 0 ? (v11 = v4) : (v11 = v4->__r_.__value_.__r.__words[0]), memcmp(v10, v11, v7)))
  {
    memset(&__p, 170, sizeof(__p));
    if (v5 < 0)
    {
      sub_1000078D8(&__p, v3->__r_.__value_.__l.__data_, v6);
    }

    else
    {
      __p = *v3;
    }

    std::string::operator=(v3, v4);
    if ((*(v2 + 127) & 0x8000000000000000) != 0)
    {
      if (!*(v2 + 112))
      {
LABEL_21:
        std::string::operator=((v2 + 104), v4);
      }
    }

    else if (!*(v2 + 127))
    {
      goto LABEL_21;
    }

    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      std::string::operator=((v2 + 104), &__p);
      (*(**(v2 + 280) + 24))(*(v2 + 280), v2 + 24);
      v13 = qword_100192D38;
      if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_DEBUG))
      {
        sub_10011ADB8(v13);
      }
    }

    else
    {
      (*(**(v2 + 280) + 24))(*(v2 + 280), v2 + 24);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1000395E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10002C628(exception_object);
}

void sub_100039630(uint64_t a1, uint64_t a2)
{
  v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v5 = dispatch_queue_create("analyticsd.MotionStateResolverQueue.myQueue", v4);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v5;

  *a1 = off_100181B20;
  *(a1 + 32) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  operator new();
}

void sub_100039A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_10000786C(a12);
  }

  sub_100039BF4((v12 + 48));
  v15 = *(v12 + 40);
  if (v15)
  {
    sub_10000786C(v15);
  }

  sub_10002CDDC(v13);
  _Unwind_Resume(a1);
}

uint64_t sub_100039B08(uint64_t result, unsigned __int8 *a2)
{
  v2 = *(result + 8);
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
      v5 = *(v2 + 32);
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
      return result;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_100039BF4(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10003C0C4(*(v1 + 40));

    v2 = *v1;
    *v1 = 0;

    operator delete();
  }

  return result;
}

void *sub_100039C70(void *a1)
{
  *a1 = off_100181B20;
  v2 = a1 + 6;
  v3 = *(a1[6] + 16);
  if (v3)
  {
    [v3 stopActivityUpdates];
  }

  sub_100039BF4(v2);
  v4 = a1[5];
  if (v4)
  {
    sub_10000786C(v4);
  }

  sub_10002CDDC((a1 + 1));
  return a1;
}

void sub_100039CE8(void *a1)
{
  sub_100039C70(a1);

  operator delete();
}

void sub_100039D20(void *a1@<X8>)
{
  sub_10000459C(v3, "motionState");
  sub_10000459C(v4, "rawDeviceOrientation");
  sub_10000459C(v5, "deviceOrientation");
  sub_10000459C(v6, "deviceOrientationLock");
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_10003C198(a1, v3, &v7, 4uLL);
  for (i = 0; i != -96; i -= 24)
  {
    if (v6[i + 23] < 0)
    {
      operator delete(*&v6[i]);
    }
  }
}

void sub_100039E14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = (v10 + 95);
  v13 = -96;
  v14 = v12;
  while (1)
  {
    v15 = *v14;
    v14 -= 24;
    if (v15 < 0)
    {
      operator delete(*(v12 - 23));
    }

    v12 = v14;
    v13 += 24;
    if (!v13)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void sub_100039E78(uint64_t a1)
{
  v1[0] = 0xAAAAAAAAAAAAAAAALL;
  v1[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v1, (a1 + 8));
  operator new();
}

void sub_100039F8C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_100039FA4(uint64_t a1)
{
  v2 = qword_100192D98;
  if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[MotionStateResolver] Initializing CoreMotion activity", buf, 2u);
  }

  v3 = *(a1 + 48);
  if (!*(v3 + 16))
  {
    v5 = qword_100192D98;
    if (!os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 0;
    v6 = "[MotionStateResolver] WARNING: CoreMotionActivityManager instance not found.";
    goto LABEL_10;
  }

  if (*(v3 + 8))
  {
    v4 = *(a1 + 32);
    sub_10000459C(buf, "motionState");
    v8[0] = 0;
    v9 = 0;
    sub_10000298C(v8);
    sub_10000298C(v8);
    sub_10001AAEC(v7);
  }

  v5 = qword_100192D98;
  if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    v6 = "[MotionStateResolver] WARNING: Operation queue instance not found.";
LABEL_10:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, v6, buf, 2u);
  }
}

void sub_10003A270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, char a17, uint64_t a18, char a19)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  _Unwind_Resume(exception_object);
}

void sub_10003A2CC(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[6];
  if (v4)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = a1[5];
      if (v7)
      {
        v8 = v3;
        v9 = sub_100006020((v7 + 24));
        operator new();
      }

      sub_10000786C(v6);
    }
  }
}

void sub_10003A3CC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10003A3E0(uint64_t result, uint64_t a2)
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

void sub_10003A3FC(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10003A40C(uint64_t a1)
{
  v13 = a1;
  v2 = *(a1 + 48);
  v3 = sub_100006020((a1 + 24));
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10003A638;
  handler[3] = &unk_100181510;
  handler[4] = a1;
  notify_register_dispatch("com.apple.backboardd.rawOrientation", (v2 + 60), v3, handler);

  sub_10003A644(&v13, *(*(a1 + 48) + 60));
  v11 = a1;
  v4 = *(a1 + 48);
  v5 = sub_100006020((a1 + 24));
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10003A860;
  v10[3] = &unk_100181510;
  v10[4] = a1;
  notify_register_dispatch("com.apple.backboardd.orientation", (v4 + 64), v5, v10);

  sub_10003A86C(&v11, *(*(a1 + 48) + 64));
  v9 = a1;
  v6 = *(a1 + 48);
  v7 = sub_100006020((a1 + 24));
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003AA88;
  v8[3] = &unk_100181510;
  v8[4] = a1;
  notify_register_dispatch("com.apple.backboardd.orientationlock", (v6 + 68), v7, v8);

  sub_10003AA94(&v9, *(*(a1 + 48) + 68), 1);
}

void sub_10003A644(uint64_t *a1, int token)
{
  v3 = *a1;
  state64 = 0;
  if (!notify_get_state(token, &state64))
  {
    notify_get_state(token, &state64);
    memset(&v9, 170, sizeof(v9));
    sub_10003BC00(state64, &v9);
    v4 = *(v3 + 32);
    sub_10000459C(&__p, "rawDeviceOrientation");
    v6[0] = 0;
    v7 = 0;
    sub_10000298C(v6);
    sub_10000298C(v6);
    sub_100006C9C(v5);
  }

  if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_ERROR))
  {
    sub_10011AE28();
  }
}

void sub_10003A80C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_10002C5F4(&a9);
  sub_10002C5F4(&a11);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

void sub_10003A86C(uint64_t *a1, int token)
{
  v3 = *a1;
  state64 = 0;
  if (!notify_get_state(token, &state64))
  {
    notify_get_state(token, &state64);
    memset(&v9, 170, sizeof(v9));
    sub_10003BC00(state64, &v9);
    v4 = *(v3 + 32);
    sub_10000459C(&__p, "deviceOrientation");
    v6[0] = 0;
    v7 = 0;
    sub_10000298C(v6);
    sub_10000298C(v6);
    sub_100006C9C(v5);
  }

  if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_ERROR))
  {
    sub_10011AF1C();
  }
}

void sub_10003AA34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_10002C5F4(&a9);
  sub_10002C5F4(&a11);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

void sub_10003AA94(uint64_t *a1, int token, uint64_t a3)
{
  v5 = *a1;
  state64 = 0;
  if (notify_get_state(token, &state64))
  {
    if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_ERROR))
    {
      sub_10011B010();
    }
  }

  else
  {
    notify_get_state(token, &state64);
    v6 = state64;
    v7 = state64 == 1;
    v8 = *(v5 + 32);
    sub_10000459C(__p, "deviceOrientationLock");
    v12[0] = 0;
    v13 = 0;
    sub_10000298C(v12);
    sub_10000298C(v12);
    v10[0] = 4;
    v11 = v7;
    sub_10000298C(v10);
    sub_10000298C(v10);
    (*(*v8 + 24))(v8, __p, v12, v10, -1, 1);
    sub_10000298C(v10);
    sub_1000048FC(&v11, v10[0]);
    sub_10000298C(v12);
    sub_1000048FC(&v13, v12[0]);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    v9 = qword_100192D98;
    if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_DEBUG))
    {
      sub_10011B088(v6 == 1, a3, v9);
    }
  }
}

void sub_10003AC5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_10002C5F4(&a10);
  sub_10002C5F4(&a12);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10003AC90(uint64_t a1)
{
  v1 = *(*(a1 + 48) + 56);
  if ((v1 - 2) >= 4)
  {
    if (v1 == 1)
    {
      sub_10003AE5C(a1);
    }

    else if (!*(*(a1 + 48) + 56))
    {
      sub_10003ACC0(a1);
    }
  }

  else
  {
    sub_10003B0E0(a1);
  }
}

void sub_10003ACC0(uint64_t a1)
{
  if (([*(*(a1 + 48) + 24) unknown] & 1) == 0)
  {
    if (sub_10003B4BC(a1))
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_10003B544(a1);
    }

    v3 = qword_100192D98;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_10003B5DC(*(*(a1 + 48) + 56), &v9);
      v4 = SHIBYTE(v9.__r_.__value_.__r.__words[2]);
      v5 = v9.__r_.__value_.__r.__words[0];
      sub_10003B5DC(v2, &__p);
      v6 = &v9;
      if (v4 < 0)
      {
        v6 = v5;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315394;
      v11 = v6;
      v12 = 2080;
      v13 = p_p;
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[MotionStateResolver] state is updated from %s to %s", buf, 0x16u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v9.__r_.__value_.__l.__data_);
      }
    }

    *(*(a1 + 48) + 56) = v2;
  }
}

void sub_10003AE2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10003AE5C(uint64_t a1)
{
  if ((sub_10003B4BC(a1) & 1) == 0 && sub_10003B65C(a1))
  {
    v2 = sub_10003B544(a1);
    if ([*(*(a1 + 48) + 24) confidence] <= 1)
    {
      if ((v2 & 6) == 4)
      {
        v4 = 60.0;
      }

      else
      {
        v4 = 30.0;
      }

      if ([*(*(a1 + 48) + 24) confidence] < 1)
      {
        if (([*(*(a1 + 48) + 24) confidence] & 0x8000000000000000) == 0)
        {

          sub_10003B93C(a1, v2, v4);
        }
      }

      else
      {

        sub_10003B6FC(a1, v2, v4);
      }
    }

    else
    {
      v3 = qword_100192D98;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        sub_10003B5DC(*(*(a1 + 48) + 56), &v10);
        v5 = SHIBYTE(v10.__r_.__value_.__r.__words[2]);
        v6 = v10.__r_.__value_.__r.__words[0];
        sub_10003B5DC(v2, &__p);
        v7 = &v10;
        if (v5 < 0)
        {
          v7 = v6;
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315394;
        v12 = v7;
        v13 = 2080;
        v14 = p_p;
        _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[MotionStateResolver] ConfidenceHigh, state is updated from %s to %s", buf, 0x16u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v10.__r_.__value_.__l.__data_);
        }
      }

      *(*(a1 + 48) + 56) = v2;
    }
  }
}

void sub_10003B0B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10003B0E0(uint64_t a1)
{
  if (sub_10003B4BC(a1))
  {
    if ([*(*(a1 + 48) + 24) confidence] > 1)
    {
      v2 = qword_100192D98;
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        sub_10003B5DC(*(*(a1 + 48) + 56), &v20);
        v11 = SHIBYTE(v20.__r_.__value_.__r.__words[2]);
        v12 = v20.__r_.__value_.__r.__words[0];
        sub_10003B5DC(1, &__p);
        v13 = &v20;
        if (v11 < 0)
        {
          v13 = v12;
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315394;
        v22 = v13;
        v23 = 2080;
        v24 = p_p;
        _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "[MotionStateResolver] ConfidenceHigh, state is updated from %s to %s", buf, 0x16u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v20.__r_.__value_.__l.__data_);
        }
      }

      *(*(a1 + 48) + 56) = 1;
      return;
    }

    if ([*(*(a1 + 48) + 24) confidence] >= 1)
    {
      v5 = 30.0;
      v6 = a1;
      v7 = 1;
LABEL_12:

      sub_10003B6FC(v6, v7, v5);
      return;
    }

    if (([*(*(a1 + 48) + 24) confidence] & 0x8000000000000000) != 0)
    {
      return;
    }

    v8 = 30.0;
    v9 = a1;
    v10 = 1;
LABEL_17:

    sub_10003B93C(v9, v10, v8);
    return;
  }

  if (!sub_10003B65C(a1) || !sub_10003BB98(a1))
  {
    return;
  }

  v3 = sub_10003B544(a1);
  if ([*(*(a1 + 48) + 24) confidence] <= 1)
  {
    if ([*(*(a1 + 48) + 24) confidence] >= 1)
    {
      v5 = 30.0;
      v6 = a1;
      v7 = v3;
      goto LABEL_12;
    }

    if (([*(*(a1 + 48) + 24) confidence] & 0x8000000000000000) != 0)
    {
      return;
    }

    v8 = 30.0;
    v9 = a1;
    v10 = v3;
    goto LABEL_17;
  }

  v4 = qword_100192D98;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10003B5DC(*(*(a1 + 48) + 56), &v20);
    v15 = SHIBYTE(v20.__r_.__value_.__r.__words[2]);
    v16 = v20.__r_.__value_.__r.__words[0];
    sub_10003B5DC(v3, &__p);
    v17 = &v20;
    if (v15 < 0)
    {
      v17 = v16;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &__p;
    }

    else
    {
      v18 = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315394;
    v22 = v17;
    v23 = 2080;
    v24 = v18;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[MotionStateResolver] ConfidenceHigh, state is updated from %s to %s", buf, 0x16u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }
  }

  *(*(a1 + 48) + 56) = v3;
}

void sub_10003B484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_10003B4BC(uint64_t a1)
{
  result = [*(*(a1 + 48) + 24) stationary];
  if (result)
  {
    if ([*(*(a1 + 48) + 24) walking] & 1) != 0 || (objc_msgSend(*(*(a1 + 48) + 24), "running") & 1) != 0 || (objc_msgSend(*(*(a1 + 48) + 24), "automotive") & 1) != 0 || (objc_msgSend(*(*(a1 + 48) + 24), "unknown"))
    {
      return 0;
    }

    else
    {
      return ([*(*(a1 + 48) + 24) cycling] ^ 1);
    }
  }

  return result;
}

uint64_t sub_10003B544(uint64_t a1)
{
  if ([*(*(a1 + 48) + 24) stationary])
  {
    return 1;
  }

  if ([*(*(a1 + 48) + 24) walking])
  {
    return 2;
  }

  if ([*(*(a1 + 48) + 24) running])
  {
    return 3;
  }

  if ([*(*(a1 + 48) + 24) automotive])
  {
    return 4;
  }

  if ([*(*(a1 + 48) + 24) cycling])
  {
    return 5;
  }

  return 0;
}

std::string *sub_10003B5DC@<X0>(int a1@<W0>, std::string *a2@<X8>)
{
  memset(a2, 170, sizeof(std::string));
  result = sub_10000459C(a2, "Unknown");
  if ((a1 - 1) < 5)
  {
    return std::string::assign(a2, off_100181C88[(a1 - 1)]);
  }

  return result;
}

void sub_10003B640(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10003B65C(uint64_t a1)
{
  if ([*(*(a1 + 48) + 24) stationary] & 1) != 0 || (objc_msgSend(*(*(a1 + 48) + 24), "unknown"))
  {
    return 0;
  }

  if ([*(*(a1 + 48) + 24) walking] & 1) != 0 || (objc_msgSend(*(*(a1 + 48) + 24), "running") & 1) != 0 || (objc_msgSend(*(*(a1 + 48) + 24), "automotive"))
  {
    return 1;
  }

  v3 = *(*(a1 + 48) + 24);

  return [v3 cycling];
}

void sub_10003B6FC(uint64_t a1, unsigned int a2, float a3)
{
  v26 = a2;
  v6 = time(0);
  v7 = *(a1 + 48);
  v10 = *(v7 + 40);
  v8 = v7 + 40;
  v9 = v10;
  if (v10)
  {
    v11 = v6;
    v12 = v8;
    do
    {
      v13 = *(v9 + 32);
      v14 = v13 >= a2;
      v15 = v13 < a2;
      if (v14)
      {
        v12 = v9;
      }

      v9 = *(v9 + 8 * v15);
    }

    while (v9);
    if (v12 != v8 && *(v12 + 32) <= a2)
    {
      v16 = sub_10003BC78(v8 - 8, &v26);
      v18 = *v16;
      v17 = v16[1];
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if ((v11 - *(v18 + 16)) < a3)
      {
        v19 = qword_100192D98;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          sub_10003B5DC(*(*(a1 + 48) + 56), &v25);
          v20 = SHIBYTE(v25.__r_.__value_.__r.__words[2]);
          v21 = v25.__r_.__value_.__r.__words[0];
          sub_10003B5DC(a2, &__p);
          v22 = &v25;
          if (v20 < 0)
          {
            v22 = v21;
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          *buf = 136315394;
          v28 = v22;
          v29 = 2080;
          v30 = p_p;
          _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "[MotionStateResolver] ConfidenceMedium, state is updated from %s to %s", buf, 0x16u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v25.__r_.__value_.__l.__data_);
          }
        }

        *(*(a1 + 48) + 56) = a2;
        *(v18 + 16) = 0;
        sub_10003BCD0();
      }

      *(v18 + 16) = v11;
      if (v17)
      {
        sub_10000786C(v17);
      }
    }
  }
}

void sub_10003B8F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (v18)
  {
    sub_10000786C(v18);
  }

  _Unwind_Resume(a1);
}

void sub_10003B93C(uint64_t a1, unsigned int a2, float a3)
{
  v28 = a2;
  v6 = time(0);
  v7 = *(a1 + 48);
  v10 = *(v7 + 40);
  v8 = v7 + 40;
  v9 = v10;
  if (v10)
  {
    v11 = v6;
    v12 = v8;
    do
    {
      v13 = *(v9 + 32);
      v14 = v13 >= a2;
      v15 = v13 < a2;
      if (v14)
      {
        v12 = v9;
      }

      v9 = *(v9 + 8 * v15);
    }

    while (v9);
    if (v12 != v8 && *(v12 + 32) <= a2)
    {
      v16 = sub_10003BC78(v8 - 8, &v28);
      v18 = *v16;
      v17 = v16[1];
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v19 = v18[1];
      v20 = (v11 - v19);
      if ((v11 - *v18) >= a3)
      {
        if (v20 >= a3)
        {
          v19 = v11;
          v11 = 0;
        }

        *v18 = v19;
      }

      else if (v20 < a3)
      {
        v21 = qword_100192D98;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          sub_10003B5DC(*(*(a1 + 48) + 56), &v27);
          v22 = SHIBYTE(v27.__r_.__value_.__r.__words[2]);
          v23 = v27.__r_.__value_.__r.__words[0];
          sub_10003B5DC(a2, &__p);
          v24 = &v27;
          if (v22 < 0)
          {
            v24 = v23;
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          *buf = 136315394;
          v30 = v24;
          v31 = 2080;
          v32 = p_p;
          _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "[MotionStateResolver] ConfidenceLow, state is updated from %s to %s", buf, 0x16u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v27.__r_.__value_.__l.__data_);
          }
        }

        *(*(a1 + 48) + 56) = a2;
        *v18 = 0;
        v18[1] = 0;
        sub_10003BCD0();
      }

      v18[1] = v11;
      if (v17)
      {
        sub_10000786C(v17);
      }
    }
  }
}

void sub_10003BB54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (v18)
  {
    sub_10000786C(v18);
  }

  _Unwind_Resume(a1);
}

BOOL sub_10003BB98(uint64_t a1)
{
  v2 = sub_10003B544(a1);
  v3 = *(*(a1 + 48) + 56);
  if (v3 == 2 && v2 != 2)
  {
    return 1;
  }

  if (v3 == 3 && v2 != 3)
  {
    return 1;
  }

  if (v3 == 4 && v2 != 4)
  {
    return 1;
  }

  return v3 == 5 && v2 != 5;
}

std::string *sub_10003BC00@<X0>(unsigned int a1@<W0>, std::string *a2@<X8>)
{
  memset(a2, 170, sizeof(std::string));
  result = sub_10000459C(a2, "<unknown>");
  if (a1 < 7)
  {
    return std::string::assign(a2, off_100181CB0[a1]);
  }

  return result;
}

void sub_10003BC5C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10003BC78(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    sub_10002EAC8("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 32);
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return (v2 + 5);
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_10003BF08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    sub_10003BF50(&a12, v12);
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_10003BF50(uint64_t a1, id *a2)
{
  v3 = sub_100006020(a2 + 3);
  dispatch_barrier_async_f(v3, a2, sub_10003C098);
}

void sub_10003BFB8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10003BFF0(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = sub_100006020(v1 + 3);
  dispatch_barrier_async_f(v2, v1, sub_10003C098);
}

uint64_t sub_10003C058(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10003C098(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_10003C0C4(void *a1)
{
  if (a1)
  {
    sub_10003C0C4(*a1);
    sub_10003C0C4(a1[1]);
    v2 = a1[6];
    if (v2)
    {
      sub_10000786C(v2);
    }

    operator delete(a1);
  }
}

void sub_10003C13C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100181C48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10003C198(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10003C250(result, a4);
  }

  return result;
}

void sub_10003C230(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v2 + 8) = v3;
  sub_10002DE40(va);
  _Unwind_Resume(a1);
}

void sub_10003C250(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_10002E2FC(a1, a2);
  }

  sub_10002C63C();
}

char *sub_10003C29C(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v9 = __dst;
  v10 = __dst;
  v11[0] = a1;
  v11[1] = &v9;
  v11[2] = &v10;
  v12 = 0xAAAAAAAAAAAAAA00;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_1000078D8(v4, *v6, *(v6 + 1));
        v4 = v10;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      v6 = (v6 + 24);
      v4 += 24;
      v10 = v4;
    }

    while (v6 != a3);
  }

  LOBYTE(v12) = 1;
  sub_10003C38C(v11);
  return v4;
}

void sub_10003C378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10003C38C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10003C38C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10003C3C4(a1);
  }

  return a1;
}

void sub_10003C3C4(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void sub_10003C40C(uint64_t **a1)
{
  v2 = a1;
  v1 = **a1;
  sub_10003A40C(v1);
  sub_100039FA4(v1);
  operator delete();
}

uint64_t *sub_10003C4C4(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {

    operator delete();
  }

  return result;
}

void sub_10003C514(id *a1)
{
  v3 = a1;
  v1 = *a1;
  objc_storeStrong((*(*a1 + 6) + 24), a1[1]);
  sub_10003AC90(v1);
  memset(&v8, 170, sizeof(v8));
  sub_10003B5DC(*(*(v1 + 48) + 56), &v8);
  if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_DEBUG))
  {
    sub_10011B130(&v8);
  }

  v2 = *(v1 + 32);
  sub_10000459C(&__p, "motionState");
  v5[0] = 0;
  v6 = 0;
  sub_10000298C(v5);
  sub_10000298C(v5);
  sub_100006C9C(v4);
}

void sub_10003C69C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  sub_10002C5F4(&a10);
  sub_10002C5F4(&a12);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  sub_10003C4C4(&a9);
  _Unwind_Resume(a1);
}

void sub_10003C720(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_10003C7D4(void *a1, uint64_t *a2, void *a3)
{
  v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v7 = dispatch_queue_create("analyticsd.TrialStateResolverQueue.myQueue", v6);
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = v7;

  *a1 = off_100181CF8;
  a1[4] = off_100181D38;
  v9 = *a2;
  v8 = a2[1];
  a1[5] = off_100181D78;
  a1[6] = v9;
  a1[7] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = a3[1];
  a1[8] = *a3;
  a1[9] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_10003C8F4(_Unwind_Exception *a1)
{
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

  sub_10002CDDC(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_10003C920@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = sub_10003D980(a1, off_100181D90);
  v3 = v2;
  v4 = a1[2];
  a1[1] = v2;
  if (v2 >= v4)
  {
    v5 = sub_10003D980(a1, off_100181D98);
  }

  else
  {
    sub_10000459C(v2, "trialDeployment");
    v5 = v3 + 24;
  }

  a1[1] = v5;
  if (v5 >= a1[2])
  {
    v6 = sub_10003D980(a1, off_100181DA0);
  }

  else
  {
    sub_10000459C(v5, "trialExperiment");
    v6 = v5 + 24;
  }

  a1[1] = v6;
  if (v6 >= a1[2])
  {
    result = sub_10003D980(a1, &off_100181DA8);
  }

  else
  {
    sub_10000459C(v6, "trialTreatment");
    result = (v6 + 24);
  }

  a1[1] = result;
  return result;
}

void sub_10003CA4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  a9 = v9;
  sub_10002DE40(&a9);
  _Unwind_Resume(a1);
}

void sub_10003CA78(uint64_t a1)
{
  v1[0] = 0xAAAAAAAAAAAAAAAALL;
  v1[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v1, (a1 + 8));
  operator new();
}

void sub_10003CB8C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_10003CBA4(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, dispatch_group_t *a7@<X8>)
{
  v14 = dispatch_group_create();
  *a7 = v14;
  v16[3] = a1;
  v15 = v14;
  v16[4] = v15;
  if (v15)
  {
    dispatch_group_enter(v15);
  }

  if (*(a3 + 23) < 0)
  {
    sub_1000078D8(v17, *a3, *(a3 + 8));
  }

  else
  {
    *v17 = *a3;
    v17[2] = *(a3 + 16);
  }

  if (*(a4 + 23) < 0)
  {
    sub_1000078D8(v18, *a4, *(a4 + 8));
  }

  else
  {
    *v18 = *a4;
    v18[2] = *(a4 + 16);
  }

  if (*(a5 + 23) < 0)
  {
    sub_1000078D8(v19, *a5, *(a5 + 8));
  }

  else
  {
    *v19 = *a5;
    v19[2] = *(a5 + 16);
  }

  if (*(a6 + 23) < 0)
  {
    sub_1000078D8(__p, *a6, *(a6 + 8));
  }

  else
  {
    *__p = *a6;
    __p[2] = *(a6 + 16);
  }

  v21 = a2;
  v16[0] = 0xAAAAAAAAAAAAAAAALL;
  v16[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v16, (a1 + 8));
  operator new();
}

void sub_10003CEB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a2)
  {
    if (*(v32 + 87) < 0)
    {
      operator delete(*(v32 + 64));
    }

    if (*(v32 + 63) < 0)
    {
      operator delete(*(v32 + 40));
    }

    if (*(v32 + 39) < 0)
    {
      operator delete(*(v32 + 16));
    }

    sub_1000278B4(v33);
    sub_10002C628(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10003CFE8(uint64_t a1)
{
  v1[0] = 0xAAAAAAAAAAAAAAAALL;
  v1[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v1, (a1 + 8));
  operator new();
}

void sub_10003D0FC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_10003D114(uint64_t a1)
{
  v1 = a1 - 32;
  [**(a1 + 48) unsubscribeAllUpdateHandlers];
  sub_10003CFE8(v1);
}

void *sub_10003D154(void *a1)
{
  *a1 = off_100181CF8;
  a1[4] = off_100181D38;
  a1[5] = off_100181D78;
  v2 = a1[10];
  a1[10] = 0;
  if (v2)
  {

    operator delete();
  }

  v3 = a1[9];
  if (v3)
  {
    sub_10000786C(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    sub_10000786C(v4);
  }

  sub_10002CDDC((a1 + 1));
  return a1;
}

void sub_10003D220(void *a1)
{
  *a1 = off_100181CF8;
  a1[4] = off_100181D38;
  a1[5] = off_100181D78;
  v2 = a1[10];
  a1[10] = 0;
  if (v2)
  {

    operator delete();
  }

  v3 = a1[9];
  if (v3)
  {
    sub_10000786C(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    sub_10000786C(v4);
  }

  sub_10002CDDC((a1 + 1));

  operator delete();
}

uint64_t sub_10003D30C(void *a1)
{
  *(a1 - 4) = off_100181CF8;
  *a1 = off_100181D38;
  a1[1] = off_100181D78;
  v2 = a1[6];
  a1[6] = 0;
  if (v2)
  {

    operator delete();
  }

  v3 = a1[5];
  if (v3)
  {
    sub_10000786C(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    sub_10000786C(v4);
  }

  return sub_10002CDDC((a1 - 3));
}

void sub_10003D3E0(void *a1)
{
  *(a1 - 4) = off_100181CF8;
  *a1 = off_100181D38;
  a1[1] = off_100181D78;
  v2 = a1[6];
  a1[6] = 0;
  if (v2)
  {

    operator delete();
  }

  v3 = a1[5];
  if (v3)
  {
    sub_10000786C(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    sub_10000786C(v4);
  }

  sub_10002CDDC((a1 - 3));

  operator delete();
}

dispatch_group_t sub_10003D4D4@<X0>(dispatch_group_t *a1@<X8>)
{
  result = dispatch_group_create();
  *a1 = result;
  return result;
}

dispatch_group_t sub_10003D4FC@<X0>(dispatch_group_t *a1@<X8>)
{
  result = dispatch_group_create();
  *a1 = result;
  return result;
}

dispatch_group_t sub_10003D524@<X0>(dispatch_group_t *a1@<X8>)
{
  result = dispatch_group_create();
  *a1 = result;
  return result;
}

uint64_t sub_10003D54C(void *a1)
{
  *(a1 - 5) = off_100181CF8;
  *(a1 - 1) = off_100181D38;
  *a1 = off_100181D78;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {

    operator delete();
  }

  v3 = a1[4];
  if (v3)
  {
    sub_10000786C(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    sub_10000786C(v4);
  }

  return sub_10002CDDC((a1 - 4));
}

void sub_10003D620(void *a1)
{
  *(a1 - 5) = off_100181CF8;
  *(a1 - 1) = off_100181D38;
  *a1 = off_100181D78;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {

    operator delete();
  }

  v3 = a1[4];
  if (v3)
  {
    sub_10000786C(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    sub_10000786C(v4);
  }

  sub_10002CDDC((a1 - 4));

  operator delete();
}

void sub_10003D7C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    sub_10003D810(&a12, v12);
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_10003D810(uint64_t a1, id *a2)
{
  v3 = sub_100006020(a2 + 3);
  dispatch_barrier_async_f(v3, a2, sub_10003D954);
}

void sub_10003D878(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10003D8B0(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = sub_100006020(v1 + 3);
  dispatch_barrier_async_f(v2, v1, sub_10003D954);
}

uint64_t sub_10003D914(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10003D954(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10003D980(uint64_t a1, char **a2)
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

  v16 = a1;
  if (v6)
  {
    sub_10002E2FC(a1, v6);
  }

  v13 = 0;
  v14 = 24 * v2;
  v15 = 24 * v2;
  sub_10000459C((24 * v2), *a2);
  v7 = 24 * v2 + 24;
  v8 = *(a1 + 8) - *a1;
  v9 = 24 * v2 - v8;
  memcpy((v14 - v8), *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  v11 = *(a1 + 16);
  *(a1 + 16) = *(&v15 + 1);
  *&v15 = v10;
  *(&v15 + 1) = v11;
  v13 = v10;
  v14 = v10;
  sub_10002E354(&v13);
  return v7;
}

void sub_10003DAD4(uint64_t **a1)
{
  v5 = a1;
  v1 = **a1;
  if (!**(v1 + 80))
  {
    v2 = [[TrialStateRelay alloc] initWithMonitoring:v1 + 40, v5];
    v3 = *(v1 + 80);
    v4 = *v3;
    *v3 = v2;
  }

  sub_10003CFE8(v1);
}

uint64_t *sub_10003DBB4(uint64_t *a1)
{
  v1 = *a1;
  v8 = a1;
  v9[0] = v1;
  v2 = *v1;
  if (*(v1 + 112) == 1)
  {
    v9[1] = 0xAAAAAAAAAAAAAAAALL;
    v9[2] = 0xAAAAAAAAAAAAAAAALL;
    sub_100022B0C(__p);
  }

  v3 = *(v2 + 48);
  sub_10000459C(__p, "trial");
  (*(*v3 + 32))(v3, __p);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  v4 = *(v2 + 48);
  sub_10000459C(__p, "trialExperiment");
  (*(*v4 + 32))(v4, __p);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  v5 = *(v2 + 48);
  sub_10000459C(__p, "trialDeployment");
  (*(*v5 + 32))(v5, __p);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  v6 = *(v2 + 48);
  sub_10000459C(__p, "trialTreatment");
  (*(*v6 + 32))(v6, __p);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  sub_10003E140(v9);
  return sub_1000120B8(&v8);
}

void sub_10003E05C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  sub_10002C5F4((v21 - 88));
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_10002C5F4(&a12);
  sub_10003E140(&a11);
  sub_1000120B8(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_10003E140(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 111) < 0)
    {
      operator delete(*(v1 + 88));
    }

    if (*(v1 + 87) < 0)
    {
      operator delete(*(v1 + 64));
    }

    if (*(v1 + 63) < 0)
    {
      operator delete(*(v1 + 40));
    }

    if (*(v1 + 39) < 0)
    {
      operator delete(*(v1 + 16));
    }

    sub_1000278B4((v1 + 8));
    operator delete();
  }

  return result;
}

unsigned __int8 *sub_10003E1D0(unsigned __int8 *a1)
{
  sub_10000298C(a1);
  sub_1000048FC(a1 + 1, *a1);
  return a1;
}

void sub_10003E260(std::runtime_error *a1)
{
  a1->__vftable = off_100181438;
  std::runtime_error::~runtime_error(a1 + 1);

  std::exception::~exception(a1);
}

void sub_10003E2B4(std::runtime_error *a1)
{
  a1->__vftable = off_100181438;
  std::runtime_error::~runtime_error(a1 + 1);
  std::exception::~exception(a1);

  operator delete();
}

void sub_10003E31C(uint64_t **a1)
{
  v3 = a1;
  v1 = **a1;
  memset(v6, 0, sizeof(v6));
  v7 = 0xAAAAAAAA3F800000;
  v2 = *(v1 + 64);
  sub_10000459C(__p, "queried_states");
  v8[0] = off_100181F00;
  v8[1] = v6;
  v8[2] = v1;
  v8[3] = v8;
  (*(*v2 + 224))(v2, __p, v8);
  sub_100029708(v8);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  sub_100043CD8(v6);
  operator delete();
}

void sub_10003E448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100043CD8(va);
  operator delete();
}

__n128 sub_10003E4E4(uint64_t a1, uint64_t a2)
{
  *a2 = off_100181F00;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_10003E514(uint64_t a1, uint64_t a2, uint64_t a3, char **a4)
{
  v5 = *a4;
  v6 = *(a1 + 16);
  v21 = 0xAAAAAAAAAAAAAAAALL;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  sub_10000459C(__p, v5);
  v24 = 0;
  sub_1000039AC(__p, v23, 1, &v21);
  sub_100004FBC(v23);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  v23[0] = &v21;
  v23[1] = 0;
  v23[2] = 0;
  v24 = 0;
  v25 = 0x8000000000000000;
  sub_10001D250(v23);
  __p[0] = &v21;
  __p[1] = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0x8000000000000000;
  sub_1000137F8(__p);
  while (!sub_100013878(v23, __p))
  {
    v7 = sub_10001CF44(v23);
    v16 = 0xAAAAAAAAAAAAAAAALL;
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v15[0] = v8;
    v15[1] = v8;
    v9 = sub_10003E814(v7, 2uLL);
    sub_10003EA28(v9, "namespace", v15);
    v10 = sub_10003E814(v7, 2uLL);
    v13 = 0;
    *&__s1.__r_.__value_.__r.__words[1] = 0uLL;
    __s1.__r_.__value_.__r.__words[0] = v10;
    v14 = 0x8000000000000000;
    sub_1000137F8(&__s1);
    if (!sub_100013878(v15, &__s1))
    {
      memset(&__s1, 170, sizeof(__s1));
      v11 = sub_10001CF44(v15);
      sub_100010390(v11, &__s1);
      if (((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x80000000) == 0 || __s1.__r_.__value_.__l.__size_ != 65 || memcmp(__s1.__r_.__value_.__l.__data_, "WIRELESS_DATA_ANALYTICS_CELLULAR_PRODUCT_EXPERIMENTATION_INTERNAL", 0x41uLL)) && !sub_10001E21C(*(a1 + 8), &__s1.__r_.__value_.__l.__data_))
      {
        sub_1000436B8(*(a1 + 8), &__s1.__r_.__value_.__l.__data_);
        sub_10003EA94(*(v6 + 80), &__s1);
      }

      if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s1.__r_.__value_.__l.__data_);
      }
    }

    sub_100012BFC(v23);
  }

  sub_10000298C(&v21);
  sub_1000048FC(&v22, v21);
}

void sub_10003E728(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32)
{
  sub_100004FBC(v32 - 128);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    a31 = 0;
    a32 = 0;
    sub_10000298C(&a31);
    sub_10000298C(&a31);
    __cxa_end_catch();
    JUMPOUT(0x10003E584);
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10003E7C8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10003E814(uint64_t a1, unint64_t a2)
{
  if (!*a1)
  {
    *a1 = 2;
    operator new();
  }

  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v11 = sub_10002CB3C(a1);
    sub_10000459C(&v14, v11);
    v12 = std::string::insert(&v14, 0, "cannot use operator[] with a numeric argument with ");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v16 = v12->__r_.__value_.__r.__words[2];
    v15 = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    sub_10002C9C4(305, &v15, exception);
  }

  v4 = *(a1 + 8);
  v5 = *v4;
  v6 = v4[1];
  v7 = &v6[-*v4] >> 4;
  if (v7 <= a2)
  {
    v8 = a2 - v7;
    LOBYTE(v15) = 0;
    *(&v15 + 1) = 0;
    sub_10000298C(&v15);
    sub_10000298C(&v15);
    sub_1000431A8(v4, v6, v8 + 1, &v15);
    sub_10000298C(&v15);
    sub_1000048FC(&v15 + 1, v15);
    v5 = **(a1 + 8);
  }

  return v5 + 16 * a2;
}

uint64_t sub_10003EA28@<X0>(uint64_t a1@<X0>, std::string::value_type *a2@<X1>, uint64_t a3@<X8>)
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
    result = sub_100015F78(*(a1 + 8), a2);
    *(a3 + 8) = result;
  }

  return result;
}

void sub_10003EA94(void **a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = [NSString stringWithUTF8String:v3];
  [v2 subscribeToTrialNamespace:?];
}

uint64_t sub_10003EB14(uint64_t a1)
{
  if (*(a1 + 16) != 117)
  {
    sub_10011B37C();
  }

  sub_10011B3A8(a1, (a1 + 16), &v2);
  return v2;
}

uint64_t sub_10003EB7C(uint64_t a1, uint64_t *a2)
{
  v35 = 0;
  v36 = 0;
  v37 = 0;
  while (1)
  {
LABEL_2:
    v4 = *(a1 + 32);
    if (v4 <= 5)
    {
      if (v4 > 2)
      {
        if (v4 == 3)
        {
          v32.__vftable = 0;
          sub_100041FAC(a2, &v32, 0);
        }

        else if (v4 == 4)
        {
          sub_100042594(a2);
        }

        else
        {
          v32.__vftable = *(a1 + 152);
          sub_100042878(a2, &v32, 0);
        }

        goto LABEL_28;
      }

      if (v4 == 1)
      {
        LOBYTE(v32.__vftable) = 1;
        sub_100041CB4(a2, &v32, 0);
        goto LABEL_28;
      }

      if (v4 == 2)
      {
        LOBYTE(v32.__vftable) = 0;
        sub_100041CB4(a2, &v32, 0);
        goto LABEL_28;
      }

      goto LABEL_53;
    }

    if (v4 <= 7)
    {
      if (v4 == 6)
      {
        v32.__vftable = *(a1 + 144);
        sub_10004229C(a2, &v32, 0);
      }

      else
      {
        if ((*(a1 + 160) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          v23 = *(a1 + 64);
          sub_10003F688(a1 + 40, &v34);
          sub_10003F688(a1 + 40, &v28);
          v24 = std::string::insert(&v28, 0, "number overflow parsing '");
          v25 = *&v24->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v25;
          v24->__r_.__value_.__l.__size_ = 0;
          v24->__r_.__value_.__r.__words[2] = 0;
          v24->__r_.__value_.__r.__words[0] = 0;
          v26 = std::string::append(&__p, "'");
          v27 = *&v26->__r_.__value_.__l.__data_;
          v31 = v26->__r_.__value_.__r.__words[2];
          *v30 = v27;
          v26->__r_.__value_.__l.__size_ = 0;
          v26->__r_.__value_.__r.__words[2] = 0;
          v26->__r_.__value_.__r.__words[0] = 0;
          sub_100040A24(406, v30, &v32);
          v13 = sub_10003F51C(a2, v23, &v34, &v32);
          sub_100040B9C(&v32);
          if (SHIBYTE(v31) < 0)
          {
            operator delete(v30[0]);
          }

          goto LABEL_55;
        }

        v32.__vftable = *(a1 + 160);
        sub_1000419B8(a2, &v32, 0);
      }

      goto LABEL_28;
    }

    if (v4 != 8)
    {
      break;
    }

    if (!sub_1000406D4(a2, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_61;
    }

    v7 = sub_100003740(a1 + 40);
    *(a1 + 32) = v7;
    if (v7 == 10)
    {
      v6 = sub_1000408CC(a2);
      goto LABEL_24;
    }

    LOBYTE(v32.__vftable) = 1;
    sub_1000077C4(&v35, &v32);
  }

  if (v4 != 9)
  {
    if (v4 == 14)
    {
      v15 = *(a1 + 64);
      sub_10003F688(a1 + 40, &v34);
      *v30 = *(a1 + 64);
      v31 = *(a1 + 80);
      sub_10000459C(&v28, "value");
      sub_10003FA40(a1, 0, &v28, &__p);
      sub_10003F76C(101, v30, &__p, &v32);
      v16 = sub_10003F51C(a2, v15, &v34, &v32);
LABEL_54:
      v13 = v16;
      v32.__vftable = off_100181438;
      std::runtime_error::~runtime_error(&v33);
      std::exception::~exception(&v32);
      goto LABEL_55;
    }

LABEL_53:
    v17 = *(a1 + 64);
    sub_10003F688(a1 + 40, &v34);
    *v30 = *(a1 + 64);
    v31 = *(a1 + 80);
    sub_10000459C(&v28, "value");
    sub_10003FA40(a1, 0x10u, &v28, &__p);
    sub_10003F76C(101, v30, &__p, &v32);
    v16 = sub_10003F51C(a2, v17, &v34, &v32);
    goto LABEL_54;
  }

  if ((sub_100040150(a2, 0xFFFFFFFFFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_61;
  }

  v5 = sub_100003740(a1 + 40);
  *(a1 + 32) = v5;
  if (v5 != 11)
  {
    if (v5 == 4)
    {
      sub_100040554();
    }

    goto LABEL_64;
  }

  v6 = sub_100040340(a2);
LABEL_24:
  if ((v6 & 1) == 0)
  {
LABEL_61:
    v13 = 0;
    goto LABEL_48;
  }

LABEL_28:
  v8 = v36;
  if (!v36)
  {
LABEL_47:
    v13 = 1;
    goto LABEL_48;
  }

  while (2)
  {
    if ((*&v35[((v8 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (v8 - 1)))
    {
      v9 = sub_100003740(a1 + 40);
      *(a1 + 32) = v9;
      if (v9 == 13)
      {
        *(a1 + 32) = sub_100003740(a1 + 40);
        goto LABEL_2;
      }

      if (v9 != 10)
      {
        v18 = *(a1 + 64);
        sub_10003F688(a1 + 40, &v34);
        *v30 = *(a1 + 64);
        v31 = *(a1 + 80);
        sub_10000459C(&v28, "array");
        sub_10003FA40(a1, 0xAu, &v28, &__p);
        sub_10003F76C(101, v30, &__p, &v32);
        v19 = sub_10003F51C(a2, v18, &v34, &v32);
        goto LABEL_65;
      }

      if (!sub_1000408CC(a2))
      {
        goto LABEL_61;
      }

      v10 = v36;
      if (!v36)
      {
        v20 = 383;
        goto LABEL_67;
      }

LABEL_39:
      v8 = v10 - 1;
      v36 = v8;
      if (!v8)
      {
        goto LABEL_47;
      }

      continue;
    }

    break;
  }

  v11 = sub_100003740(a1 + 40);
  *(a1 + 32) = v11;
  if (v11 != 13)
  {
    if (v11 != 11)
    {
      v21 = *(a1 + 64);
      sub_10003F688(a1 + 40, &v34);
      *v30 = *(a1 + 64);
      v31 = *(a1 + 80);
      sub_10000459C(&v28, "object");
      sub_10003FA40(a1, 0xBu, &v28, &__p);
      sub_10003F76C(101, v30, &__p, &v32);
      v19 = sub_10003F51C(a2, v21, &v34, &v32);
      goto LABEL_65;
    }

    if (!sub_100040340(a2))
    {
      goto LABEL_61;
    }

    v10 = v36;
    if (!v36)
    {
      v20 = 439;
LABEL_67:
      __assert_rtn("sax_parse_internal", "parser.hpp", v20, "not states.empty()");
    }

    goto LABEL_39;
  }

  v12 = sub_100003740(a1 + 40);
  *(a1 + 32) = v12;
  if (v12 == 4)
  {
    sub_100040554();
  }

LABEL_64:
  v22 = *(a1 + 64);
  sub_10003F688(a1 + 40, &v34);
  *v30 = *(a1 + 64);
  v31 = *(a1 + 80);
  sub_10000459C(&v28, "object key");
  sub_10003FA40(a1, 4u, &v28, &__p);
  sub_10003F76C(101, v30, &__p, &v32);
  v19 = sub_10003F51C(a2, v22, &v34, &v32);
LABEL_65:
  v13 = v19;
  sub_10003FE80(&v32);
LABEL_55:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

LABEL_48:
  if (v35)
  {
    operator delete(v35);
  }

  return v13;
}

void sub_10003F3D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, std::runtime_error a30)
{
  sub_10003FE80(&a30);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v30 - 65) < 0)
  {
    operator delete(*(v30 - 88));
  }

  v32 = *(v30 - 64);
  if (v32)
  {
    operator delete(v32);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10003F51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 88) = 1;
  if (*(a1 + 128) == 1)
  {
    v5 = *(a4 + 8) / 100 % 100;
    if (v5 <= 2)
    {
      if (v5 == 1)
      {
        exception = __cxa_allocate_exception(0x28uLL);
        v7 = sub_100042B70(exception, a4);
        v9 = sub_10003FE80;
      }

      else
      {
        if (v5 != 2)
        {
          goto LABEL_15;
        }

        v10 = __cxa_allocate_exception(0x20uLL);
        v7 = sub_100042C5C(v10, a4);
        v9 = sub_10002E9F4;
      }
    }

    else
    {
      switch(v5)
      {
        case 3:
          v11 = __cxa_allocate_exception(0x20uLL);
          v7 = sub_100042CCC(v11, a4);
          v9 = sub_10002CB64;
          break;
        case 4:
          v12 = __cxa_allocate_exception(0x20uLL);
          v7 = sub_100042BEC(v12, a4);
          v9 = sub_100040B9C;
          break;
        case 5:
          v6 = __cxa_allocate_exception(0x20uLL);
          v7 = sub_100042D3C(v6, a4);
          v9 = sub_10003E260;
          break;
        default:
LABEL_15:
          sub_10011B4E8();
      }
    }

    __cxa_throw(v7, v8, v9);
  }

  return 0;
}

void sub_10003F688(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v3 = *(a1 + 48);
  for (i = *(a1 + 56); v3 != i; ++v3)
  {
    v5 = *v3;
    if (v5 > 0x1F)
    {
      std::string::push_back(a2, v5);
    }

    else
    {
      v7 = 0;
      *__str = 0;
      snprintf(__str, 9uLL, "<U+%.4X>", v5);
      std::string::append(a2, __str);
    }
  }
}

void sub_10003F74C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10003F76C(int a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  memset(v30, 170, sizeof(v30));
  sub_10000459C(&v24, "parse_error");
  sub_10002C6E4(a1, &v26);
  v8 = std::string::append(&v26, "parse error");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  sub_100042E14(a2, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v12 = std::string::append(&v27, p_p, size);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v28, ": ");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = *(a3 + 23);
  if (v16 >= 0)
  {
    v17 = a3;
  }

  else
  {
    v17 = *a3;
  }

  if (v16 >= 0)
  {
    v18 = *(a3 + 23);
  }

  else
  {
    v18 = *(a3 + 8);
  }

  v19 = std::string::append(&v29, v17, v18);
  v20 = *&v19->__r_.__value_.__l.__data_;
  *&v30[16] = *(&v19->__r_.__value_.__l + 2);
  *v30 = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (v25 < 0)
  {
    operator delete(v24);
  }

  v21 = *a2;
  if (v30[23] >= 0)
  {
    v22 = v30;
  }

  else
  {
    v22 = *v30;
  }

  sub_10002C89C(a4, a1, v22);
  *a4 = off_100181FD8;
  a4[4] = v21;
  if ((v30[23] & 0x80000000) != 0)
  {
    operator delete(*v30);
  }
}

void sub_10003F990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
  }

  _Unwind_Resume(exception_object);
}

void sub_10003FA40(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  memset(a4, 170, sizeof(std::string));
  sub_10000459C(a4, "syntax error ");
  v8 = *(a3 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a3 + 8);
  }

  if (v8)
  {
    std::operator+<char>();
    v9 = std::string::append(&v38, " ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v40 = v9->__r_.__value_.__r.__words[2];
    v39 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if (v40 >= 0)
    {
      v11 = &v39;
    }

    else
    {
      v11 = v39;
    }

    if (v40 >= 0)
    {
      v12 = HIBYTE(v40);
    }

    else
    {
      v12 = *(&v39 + 1);
    }

    std::string::append(a4, v11, v12);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(v39);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }
  }

  std::string::append(a4, "- ");
  v13 = *(a1 + 32);
  if (v13 == 14)
  {
    sub_10000459C(&v36, *(a1 + 136));
    v14 = std::string::append(&v36, "; last read: '");
    v15 = *&v14->__r_.__value_.__l.__data_;
    v37.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v37.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    sub_10003F688(a1 + 40, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v18 = std::string::append(&v37, p_p, size);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v38.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v38.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v38, "'");
    v21 = *&v20->__r_.__value_.__l.__data_;
    v40 = v20->__r_.__value_.__r.__words[2];
    v39 = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    if (v40 >= 0)
    {
      v22 = &v39;
    }

    else
    {
      v22 = v39;
    }

    if (v40 >= 0)
    {
      v23 = HIBYTE(v40);
    }

    else
    {
      v23 = *(&v39 + 1);
    }

    std::string::append(a4, v22, v23);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(v39);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      v24 = v36.__r_.__value_.__r.__words[0];
      goto LABEL_49;
    }

LABEL_46:
    if (!a2)
    {
      return;
    }

    goto LABEL_50;
  }

  v25 = sub_100042FC4(v13);
  sub_10000459C(&v38, v25);
  v26 = std::string::insert(&v38, 0, "unexpected ");
  v27 = *&v26->__r_.__value_.__l.__data_;
  v40 = v26->__r_.__value_.__r.__words[2];
  v39 = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (v40 >= 0)
  {
    v28 = &v39;
  }

  else
  {
    v28 = v39;
  }

  if (v40 >= 0)
  {
    v29 = HIBYTE(v40);
  }

  else
  {
    v29 = *(&v39 + 1);
  }

  std::string::append(a4, v28, v29);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39);
  }

  if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_46;
  }

  v24 = v38.__r_.__value_.__r.__words[0];
LABEL_49:
  operator delete(v24);
  if (!a2)
  {
    return;
  }

LABEL_50:
  v30 = sub_100042FC4(a2);
  sub_10000459C(&v38, v30);
  v31 = std::string::insert(&v38, 0, "; expected ");
  v32 = *&v31->__r_.__value_.__l.__data_;
  v40 = v31->__r_.__value_.__r.__words[2];
  v39 = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  if (v40 >= 0)
  {
    v33 = &v39;
  }

  else
  {
    v33 = v39;
  }

  if (v40 >= 0)
  {
    v34 = HIBYTE(v40);
  }

  else
  {
    v34 = *(&v39 + 1);
  }

  std::string::append(a4, v33, v34);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }
}

void sub_10003FDA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v34 - 41) < 0)
  {
    operator delete(*(v34 - 64));
  }

  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v33 + 23) < 0)
  {
    operator delete(*v33);
  }

  _Unwind_Resume(exception_object);
}

void sub_10003FE80(std::runtime_error *a1)
{
  a1->__vftable = off_100181438;
  std::runtime_error::~runtime_error(a1 + 1);

  std::exception::~exception(a1);
}

uint64_t sub_10003FED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 40) = 1;
  if (*(a1 + 41) == 1)
  {
    v5 = *(a4 + 8) / 100 % 100;
    if (v5 <= 2)
    {
      if (v5 == 1)
      {
        exception = __cxa_allocate_exception(0x28uLL);
        v7 = sub_100042B70(exception, a4);
        v9 = sub_10003FE80;
      }

      else
      {
        if (v5 != 2)
        {
          goto LABEL_15;
        }

        v10 = __cxa_allocate_exception(0x20uLL);
        v7 = sub_100042C5C(v10, a4);
        v9 = sub_10002E9F4;
      }
    }

    else
    {
      switch(v5)
      {
        case 3:
          v11 = __cxa_allocate_exception(0x20uLL);
          v7 = sub_100042CCC(v11, a4);
          v9 = sub_10002CB64;
          break;
        case 4:
          v12 = __cxa_allocate_exception(0x20uLL);
          v7 = sub_100042BEC(v12, a4);
          v9 = sub_100040B9C;
          break;
        case 5:
          v6 = __cxa_allocate_exception(0x20uLL);
          v7 = sub_100042D3C(v6, a4);
          v9 = sub_10003E260;
          break;
        default:
LABEL_15:
          sub_10011B514();
      }
    }

    __cxa_throw(v7, v8, v9);
  }

  return 0;
}

uint64_t sub_100040040(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(a1 + 8) = 0u;
  *a1 = a2;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  sub_100003538(a1 + 96, a3);
  *(a1 + 136) = 9;
  *(a1 + 128) = a4;
  *(a1 + 144) = 0;
  sub_10000298C((a1 + 136));
  v7 = 1;
  sub_1000077C4(a1 + 32, &v7);
  return a1;
}

void sub_100040104(_Unwind_Exception *a1)
{
  sub_10002C5F4(v2);
  sub_100004FBC((v1 + 12));
  v5 = v1[7];
  if (v5)
  {
    operator delete(v5);
  }

  v6 = v1[4];
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[2] = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100040150(uint64_t *a1, unint64_t a2)
{
  v4 = a1 + 2;
  v5 = (a1 + 1);
  v19 = sub_100040BF0((a1 + 12), (a1[2] - a1[1]) >> 3, 0);
  sub_1000077C4((v4 + 2), &v19);
  LOBYTE(v15) = 1;
  v17 = sub_100040C78(a1, &v15, 1);
  v18 = v6;
  sub_100004654(v5, &v18);
  if (a2 != -1)
  {
    v7 = *(*v4 - 8);
    if (v7)
    {
      v8 = *v7;
      if (v8 > 2)
      {
        v9 = 1;
      }

      else
      {
        v9 = qword_100140D40[v8];
      }

      if (v9 < a2)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        std::to_string(&v14, a2);
        v12 = std::string::insert(&v14, 0, "excessive object size: ");
        v13 = *&v12->__r_.__value_.__l.__data_;
        v16 = v12->__r_.__value_.__r.__words[2];
        v15 = v13;
        v12->__r_.__value_.__l.__size_ = 0;
        v12->__r_.__value_.__r.__words[2] = 0;
        v12->__r_.__value_.__r.__words[0] = 0;
        sub_100040A24(408, &v15, exception);
      }
    }
  }

  return 1;
}

uint64_t sub_100040340(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (*(v2 - 8) && (sub_100040BF0(a1 + 96, ((v2 - *(a1 + 8)) >> 3) - 1, 1) & 1) == 0)
  {
    v3 = sub_10000FF70(v21, (a1 + 136));
    v4 = *(*(a1 + 16) - 8);
    sub_10000298C(v3);
    v5 = *v4;
    *v4 = v21[0];
    v21[0] = v5;
    v6 = *(v4 + 8);
    *(v4 + 8) = v22;
    v22 = v6;
    sub_10000298C(v4);
    sub_10000298C(v21);
    sub_1000048FC(&v22, v21[0]);
  }

  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v8 == v7)
  {
    sub_10011B56C();
  }

  v9 = *(a1 + 40);
  if (!v9)
  {
    sub_10011B540();
  }

  *(a1 + 16) = v7 - 8;
  *(a1 + 40) = v9 - 1;
  if (v8 != v7 - 8)
  {
    v10 = *(v7 - 16);
    if (v10)
    {
      if (*v10 - 1 <= 1)
      {
        *&v20[32] = 0xAAAAAAAAAAAAAAAALL;
        *&v11 = 0xAAAAAAAAAAAAAAAALL;
        *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *v20 = v11;
        *&v20[16] = v11;
        sub_100016ED8(v20, v10);
        sub_10001D250(v20);
        v12 = *(*(a1 + 16) - 8);
        *&v13 = 0xAAAAAAAAAAAAAAAALL;
        *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *v19 = v13;
        *&v19[16] = v13;
        *&v19[32] = 0xAAAAAAAAAAAAAAAALL;
        sub_100016ED8(v19, v12);
        sub_1000137F8(v19);
        if (!sub_100013878(v20, v19))
        {
          while (*sub_100040F6C(v20) != 9)
          {
            sub_100012BFC(v20);
            v14 = *(*(a1 + 16) - 8);
            *&v15 = 0xAAAAAAAAAAAAAAAALL;
            *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
            *v19 = v15;
            *&v19[16] = v15;
            *&v19[32] = 0xAAAAAAAAAAAAAAAALL;
            sub_100016ED8(v19, v14);
            sub_1000137F8(v19);
            if (sub_100013878(v20, v19))
            {
              return 1;
            }
          }

          v16 = *(*(a1 + 16) - 8);
          *v19 = *v20;
          *&v19[8] = *&v20[8];
          *&v19[24] = *&v20[24];
          sub_1000410CC(v16, v19, v18);
        }
      }
    }
  }

  return 1;
}

void sub_100040554()
{
  v0[0] = 0xAAAAAAAAAAAAAAAALL;
  v0[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006C9C(v0);
}

void sub_1000406A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  sub_10002C5F4(&a9);
  sub_10002C5F4(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_1000406D4(uint64_t *a1, unint64_t a2)
{
  v4 = a1 + 2;
  v5 = (a1 + 1);
  v19 = sub_100040BF0((a1 + 12), (a1[2] - a1[1]) >> 3, 2);
  sub_1000077C4((v4 + 2), &v19);
  LOBYTE(v15) = 2;
  v17 = sub_100040C78(a1, &v15, 1);
  v18 = v6;
  sub_100004654(v5, &v18);
  if (a2 != -1)
  {
    v7 = *(*v4 - 8);
    if (v7)
    {
      v8 = *v7;
      if (v8 > 2)
      {
        v9 = 1;
      }

      else
      {
        v9 = qword_100140D40[v8];
      }

      if (v9 < a2)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        std::to_string(&v14, a2);
        v12 = std::string::insert(&v14, 0, "excessive array size: ");
        v13 = *&v12->__r_.__value_.__l.__data_;
        v16 = v12->__r_.__value_.__r.__words[2];
        v15 = v13;
        v12->__r_.__value_.__l.__size_ = 0;
        v12->__r_.__value_.__r.__words[2] = 0;
        v12->__r_.__value_.__r.__words[0] = 0;
        sub_100040A24(408, &v15, exception);
      }
    }
  }

  return 1;
}

uint64_t sub_1000408CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (*(v2 - 8) && (sub_100040BF0(a1 + 96, ((v2 - *(a1 + 8)) >> 3) - 1, 3) & 1) == 0)
  {
    sub_10000FF70(v12, (a1 + 136));
    v4 = *(*(a1 + 16) - 8);
    sub_10000298C(v12);
    v5 = *v4;
    *v4 = v12[0];
    v12[0] = v5;
    v6 = *(v4 + 8);
    *(v4 + 8) = v13;
    v13 = v6;
    sub_10000298C(v4);
    sub_10000298C(v12);
    sub_1000048FC(&v13, v12[0]);
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v8 == v7)
  {
    sub_10011B5C4();
  }

  v9 = *(a1 + 40);
  if (!v9)
  {
    sub_10011B598();
  }

  *(a1 + 16) = v7 - 8;
  *(a1 + 40) = v9 - 1;
  if (v8 == v7 - 8)
  {
    v3 = 1;
  }

  if ((v3 & 1) == 0)
  {
    v10 = *(v7 - 16);
    if (*v10 == 2)
    {
      sub_100013F0C(*(v10 + 8), (*(*(v10 + 8) + 8) - 16));
    }
  }

  return 1;
}

void sub_100040A24(int a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_10000459C(&__p, "out_of_range");
  sub_10002C6E4(a1, &v14);
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  v9 = std::string::append(&v14, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v16 = v9->__r_.__value_.__r.__words[2];
  *v15 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (v13 < 0)
  {
    operator delete(__p);
  }

  if (v16 >= 0)
  {
    v11 = v15;
  }

  else
  {
    v11 = v15[0];
  }

  sub_10002C89C(a3, a1, v11);
  *a3 = off_100181F98;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_100040B4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100040B9C(std::runtime_error *a1)
{
  a1->__vftable = off_100181438;
  std::runtime_error::~runtime_error(a1 + 1);

  std::exception::~exception(a1);
}

uint64_t sub_100040BF0(uint64_t a1, int a2, char a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_10002B200();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t sub_100040C78(uint64_t *a1, unsigned __int8 *a2, char a3)
{
  v3 = a1[5];
  if (!v3)
  {
    sub_10011B5F0();
  }

  if ((*(a1[4] + (((v3 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v3 - 1)))
  {
    v30 = 0xAAAAAAAAAAAAAAAALL;
    v31 = 0xAAAAAAAAAAAAAAAALL;
    v6 = *a2;
    LOBYTE(v30) = v6;
    sub_100004EA8(&v31, v6);
    sub_10000298C(&v30);
    if (a3 & 1) != 0 || (sub_100040BF0((a1 + 12), (a1[2] - a1[1]) >> 3, 5))
    {
      v7 = a1[2];
      if (a1[1] == v7)
      {
        v28[0] = v30;
        v29 = v31;
        sub_10000298C(&v30);
        LOBYTE(v30) = 0;
        v31 = 0;
        sub_10000298C(v28);
        v12 = *a1;
        sub_10000298C(v28);
        v13 = *v12;
        *v12 = v28[0];
        v28[0] = v13;
        v14 = *(v12 + 8);
        *(v12 + 8) = v29;
        v29 = v14;
        sub_10000298C(v12);
        sub_10000298C(v28);
        sub_1000048FC(&v29, v28[0]);
        v15 = *a1;
        goto LABEL_16;
      }

      v8 = *(v7 - 8);
      if (v8)
      {
        v9 = *v8;
        if (v9 == 2)
        {
          sub_10000F8A4(*(v8 + 1), &v30);
          v10 = *(*(*(a1[2] - 8) + 8) + 8) - 16;
LABEL_16:
          v11 = 1;
LABEL_18:
          sub_10000298C(&v30);
          sub_1000048FC(&v31, v30);
          return v11;
        }

        if (v9 == 1)
        {
          v16 = a1[8];
          if (v16)
          {
            v17 = v16 - 1;
            v18 = *(a1[7] + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8));
            a1[8] = v17;
            if ((v18 >> v17))
            {
              if (!a1[10])
              {
                __assert_rtn("handle_value", "json_sax.hpp", 624, "object_element");
              }

              v26[0] = v30;
              v27 = v31;
              sub_10000298C(&v30);
              LOBYTE(v30) = 0;
              v31 = 0;
              sub_10000298C(v26);
              v19 = a1[10];
              sub_10000298C(v26);
              v20 = *v19;
              *v19 = v26[0];
              v26[0] = v20;
              v21 = *(v19 + 8);
              *(v19 + 8) = v27;
              v27 = v21;
              sub_10000298C(v19);
              sub_10000298C(v26);
              sub_1000048FC(&v27, v26[0]);
              v22 = a1[10];
              goto LABEL_16;
            }

            goto LABEL_17;
          }

          v24 = "not key_keep_stack.empty()";
          v25 = 615;
        }

        else
        {
          v24 = "ref_stack.back()->is_array() or ref_stack.back()->is_object()";
          v25 = 603;
        }

        __assert_rtn("handle_value", "json_sax.hpp", v25, v24);
      }
    }

LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  return 0;
}

void sub_100040F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10002C5F4(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_100040F6C(unsigned __int8 **a1)
{
  result = *a1;
  if (!result)
  {
    sub_10011B674();
  }

  v3 = *result;
  if (v3 == 2)
  {
    v5 = *(*(result + 1) + 8);
    result = a1[2];
    if (result == v5)
    {
      sub_10011B61C();
    }
  }

  else if (v3 == 1)
  {
    v4 = a1[1];
    if (v4 == (*(result + 1) + 8))
    {
      sub_10011B648();
    }

    return v4 + 56;
  }

  else if (a1[4])
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_10000459C(v7, "cannot get value");
    sub_10002E87C(214, v7, exception);
  }

  return result;
}

void sub_10004108C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

unsigned __int8 *sub_1000410CC@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 **a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 != a1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_10000459C(&v24, "iterator does not fit current value");
    sub_10002E87C(202, &v24, exception);
  }

  *(a3 + 32) = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *a3 = v6;
  *(a3 + 16) = v6;
  v7 = sub_100016ED8(a3, a1);
  sub_1000137F8(v7);
  v8 = *a1;
  if ((v8 - 3) < 6)
  {
    if (a2[4])
    {
      v18 = __cxa_allocate_exception(0x20uLL);
      sub_10000459C(&v24, "iterator out of range");
      sub_10002E87C(205, &v24, v18);
    }

    if (v8 == 8)
    {
      v10 = (a1 + 8);
      v9 = *(a1 + 1);
      v16 = *v9;
      if (*v9)
      {
        v9[1] = v16;
        v11 = v16;
        goto LABEL_13;
      }
    }

    else
    {
      if (v8 != 3)
      {
LABEL_15:
        *a1 = 0;

        return sub_10000298C(a1);
      }

      v10 = (a1 + 8);
      v9 = *(a1 + 1);
      if (*(v9 + 23) < 0)
      {
        v11 = *v9;
LABEL_13:
        operator delete(v11);
        v9 = *v10;
      }
    }

    operator delete(v9);
    *v10 = 0;
    goto LABEL_15;
  }

  if (v8 == 1)
  {
    result = sub_10004140C(*(a1 + 1), a2[1]);
    *(a3 + 8) = result;
  }

  else
  {
    if (v8 != 2)
    {
      v19 = __cxa_allocate_exception(0x20uLL);
      v20 = sub_10002CB3C(a1);
      sub_10000459C(&v23, v20);
      v21 = std::string::insert(&v23, 0, "cannot use erase() with ");
      v22 = *&v21->__r_.__value_.__l.__data_;
      v25 = v21->__r_.__value_.__r.__words[2];
      v24 = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      sub_10002C9C4(307, &v24, v19);
    }

    v12 = *(a1 + 1);
    v13 = a2[2];
    sub_100041858(&v24, v13 + 16, *(v12 + 8), v13);
    result = sub_100013F0C(v12, v14);
    *(a3 + 16) = v13;
  }

  return result;
}

void sub_10004138C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t *sub_10004140C(uint64_t **a1, uint64_t a2)
{
  v3 = sub_100041464(a1, a2);
  sub_10000298C((a2 + 56));
  sub_1000048FC((a2 + 64), *(a2 + 56));
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  operator delete(a2);
  return v3;
}

uint64_t *sub_100041464(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_1000414D8(v6, a2);
  return v3;
}

uint64_t *sub_1000414D8(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

uint64_t sub_100041858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v10[0] = *v5;
      v11 = *(v5 + 8);
      sub_10000298C(v5);
      *v5 = 0;
      *(v5 + 8) = 0;
      sub_10000298C(v10);
      sub_10000298C(v10);
      v7 = *a4;
      *a4 = v10[0];
      v10[0] = v7;
      v8 = *(a4 + 8);
      *(a4 + 8) = v11;
      v11 = v8;
      sub_10000298C(a4);
      sub_10000298C(v10);
      sub_1000048FC(&v11, v10[0]);
      v5 += 16;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_100041950(std::runtime_error *a1)
{
  a1->__vftable = off_100181438;
  std::runtime_error::~runtime_error(a1 + 1);
  std::exception::~exception(a1);

  operator delete();
}

uint64_t sub_1000419B8(uint64_t *a1, uint64_t *a2, char a3)
{
  v3 = a1[5];
  if (!v3)
  {
    sub_10011B5F0();
  }

  if ((*(a1[4] + (((v3 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v3 - 1)))
  {
    v30 = 0xAAAAAAAAAAAAAAAALL;
    v6 = *a2;
    LOBYTE(v30) = 7;
    v31 = v6;
    sub_10000298C(&v30);
    sub_10000298C(&v30);
    if (a3 & 1) != 0 || (sub_100040BF0((a1 + 12), (a1[2] - a1[1]) >> 3, 5))
    {
      v7 = a1[2];
      if (a1[1] == v7)
      {
        v28[0] = v30;
        v29 = v31;
        sub_10000298C(&v30);
        LOBYTE(v30) = 0;
        v31 = 0;
        sub_10000298C(v28);
        v12 = *a1;
        sub_10000298C(v28);
        v13 = *v12;
        *v12 = v28[0];
        v28[0] = v13;
        v14 = *(v12 + 8);
        *(v12 + 8) = v29;
        v29 = v14;
        sub_10000298C(v12);
        sub_10000298C(v28);
        sub_1000048FC(&v29, v28[0]);
        v15 = *a1;
        goto LABEL_16;
      }

      v8 = *(v7 - 8);
      if (v8)
      {
        v9 = *v8;
        if (v9 == 2)
        {
          sub_10000F8A4(*(v8 + 1), &v30);
          v10 = *(*(*(a1[2] - 8) + 8) + 8) - 16;
LABEL_16:
          v11 = 1;
LABEL_18:
          sub_10000298C(&v30);
          sub_1000048FC(&v31, v30);
          return v11;
        }

        if (v9 == 1)
        {
          v16 = a1[8];
          if (v16)
          {
            v17 = v16 - 1;
            v18 = *(a1[7] + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8));
            a1[8] = v17;
            if ((v18 >> v17))
            {
              if (!a1[10])
              {
                __assert_rtn("handle_value", "json_sax.hpp", 624, "object_element");
              }

              v26[0] = v30;
              v27 = v31;
              sub_10000298C(&v30);
              LOBYTE(v30) = 0;
              v31 = 0;
              sub_10000298C(v26);
              v19 = a1[10];
              sub_10000298C(v26);
              v20 = *v19;
              *v19 = v26[0];
              v26[0] = v20;
              v21 = *(v19 + 8);
              *(v19 + 8) = v27;
              v27 = v21;
              sub_10000298C(v19);
              sub_10000298C(v26);
              sub_1000048FC(&v27, v26[0]);
              v22 = a1[10];
              goto LABEL_16;
            }

            goto LABEL_17;
          }

          v24 = "not key_keep_stack.empty()";
          v25 = 615;
        }

        else
        {
          v24 = "ref_stack.back()->is_array() or ref_stack.back()->is_object()";
          v25 = 603;
        }

        __assert_rtn("handle_value", "json_sax.hpp", v25, v24);
      }
    }

LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  return 0;
}

void sub_100041C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10002C5F4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100041CB4(uint64_t *a1, unsigned __int8 *a2, char a3)
{
  v3 = a1[5];
  if (!v3)
  {
    sub_10011B5F0();
  }

  if ((*(a1[4] + (((v3 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v3 - 1)))
  {
    v6 = *a2;
    v30 = 0xAAAAAAAAAAAAAA04;
    v31 = v6;
    sub_10000298C(&v30);
    sub_10000298C(&v30);
    if (a3 & 1) != 0 || (sub_100040BF0((a1 + 12), (a1[2] - a1[1]) >> 3, 5))
    {
      v7 = a1[2];
      if (a1[1] == v7)
      {
        v28[0] = v30;
        v29 = v31;
        sub_10000298C(&v30);
        LOBYTE(v30) = 0;
        v31 = 0;
        sub_10000298C(v28);
        v12 = *a1;
        sub_10000298C(v28);
        v13 = *v12;
        *v12 = v28[0];
        v28[0] = v13;
        v14 = *(v12 + 8);
        *(v12 + 8) = v29;
        v29 = v14;
        sub_10000298C(v12);
        sub_10000298C(v28);
        sub_1000048FC(&v29, v28[0]);
        v15 = *a1;
        goto LABEL_16;
      }

      v8 = *(v7 - 8);
      if (v8)
      {
        v9 = *v8;
        if (v9 == 2)
        {
          sub_10000F8A4(*(v8 + 1), &v30);
          v10 = *(*(*(a1[2] - 8) + 8) + 8) - 16;
LABEL_16:
          v11 = 1;
LABEL_18:
          sub_10000298C(&v30);
          sub_1000048FC(&v31, v30);
          return v11;
        }

        if (v9 == 1)
        {
          v16 = a1[8];
          if (v16)
          {
            v17 = v16 - 1;
            v18 = *(a1[7] + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8));
            a1[8] = v17;
            if ((v18 >> v17))
            {
              if (!a1[10])
              {
                __assert_rtn("handle_value", "json_sax.hpp", 624, "object_element");
              }

              v26[0] = v30;
              v27 = v31;
              sub_10000298C(&v30);
              LOBYTE(v30) = 0;
              v31 = 0;
              sub_10000298C(v26);
              v19 = a1[10];
              sub_10000298C(v26);
              v20 = *v19;
              *v19 = v26[0];
              v26[0] = v20;
              v21 = *(v19 + 8);
              *(v19 + 8) = v27;
              v27 = v21;
              sub_10000298C(v19);
              sub_10000298C(v26);
              sub_1000048FC(&v27, v26[0]);
              v22 = a1[10];
              goto LABEL_16;
            }

            goto LABEL_17;
          }

          v24 = "not key_keep_stack.empty()";
          v25 = 615;
        }

        else
        {
          v24 = "ref_stack.back()->is_array() or ref_stack.back()->is_object()";
          v25 = 603;
        }

        __assert_rtn("handle_value", "json_sax.hpp", v25, v24);
      }
    }

LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  return 0;
}

void sub_100041F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10002C5F4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100041FAC(uint64_t *a1, uint64_t a2, char a3)
{
  v3 = a1[5];
  if (!v3)
  {
    sub_10011B5F0();
  }

  if ((*(a1[4] + (((v3 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v3 - 1)))
  {
    v29 = 0xAAAAAAAAAAAAAA00;
    v30 = 0;
    sub_10000298C(&v29);
    sub_10000298C(&v29);
    if (a3 & 1) != 0 || (sub_100040BF0((a1 + 12), (a1[2] - a1[1]) >> 3, 5))
    {
      v6 = a1[2];
      if (a1[1] == v6)
      {
        v27[0] = v29;
        v28 = v30;
        sub_10000298C(&v29);
        LOBYTE(v29) = 0;
        v30 = 0;
        sub_10000298C(v27);
        v11 = *a1;
        sub_10000298C(v27);
        v12 = *v11;
        *v11 = v27[0];
        v27[0] = v12;
        v13 = *(v11 + 8);
        *(v11 + 8) = v28;
        v28 = v13;
        sub_10000298C(v11);
        sub_10000298C(v27);
        sub_1000048FC(&v28, v27[0]);
        v14 = *a1;
        goto LABEL_16;
      }

      v7 = *(v6 - 8);
      if (v7)
      {
        v8 = *v7;
        if (v8 == 2)
        {
          sub_10000F8A4(*(v7 + 1), &v29);
          v9 = *(*(*(a1[2] - 8) + 8) + 8) - 16;
LABEL_16:
          v10 = 1;
LABEL_18:
          sub_10000298C(&v29);
          sub_1000048FC(&v30, v29);
          return v10;
        }

        if (v8 == 1)
        {
          v15 = a1[8];
          if (v15)
          {
            v16 = v15 - 1;
            v17 = *(a1[7] + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8));
            a1[8] = v16;
            if ((v17 >> v16))
            {
              if (!a1[10])
              {
                __assert_rtn("handle_value", "json_sax.hpp", 624, "object_element");
              }

              v25[0] = v29;
              v26 = v30;
              sub_10000298C(&v29);
              LOBYTE(v29) = 0;
              v30 = 0;
              sub_10000298C(v25);
              v18 = a1[10];
              sub_10000298C(v25);
              v19 = *v18;
              *v18 = v25[0];
              v25[0] = v19;
              v20 = *(v18 + 8);
              *(v18 + 8) = v26;
              v26 = v20;
              sub_10000298C(v18);
              sub_10000298C(v25);
              sub_1000048FC(&v26, v25[0]);
              v21 = a1[10];
              goto LABEL_16;
            }

            goto LABEL_17;
          }

          v23 = "not key_keep_stack.empty()";
          v24 = 615;
        }

        else
        {
          v23 = "ref_stack.back()->is_array() or ref_stack.back()->is_object()";
          v24 = 603;
        }

        __assert_rtn("handle_value", "json_sax.hpp", v24, v23);
      }
    }

LABEL_17:
    v10 = 0;
    goto LABEL_18;
  }

  return 0;
}

void sub_10004227C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10002C5F4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10004229C(uint64_t *a1, uint64_t *a2, char a3)
{
  v3 = a1[5];
  if (!v3)
  {
    sub_10011B5F0();
  }

  if ((*(a1[4] + (((v3 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v3 - 1)))
  {
    v6 = *a2;
    v30 = 0xAAAAAAAAAAAAAA05;
    v31 = v6;
    sub_10000298C(&v30);
    sub_10000298C(&v30);
    if (a3 & 1) != 0 || (sub_100040BF0((a1 + 12), (a1[2] - a1[1]) >> 3, 5))
    {
      v7 = a1[2];
      if (a1[1] == v7)
      {
        v28[0] = v30;
        v29 = v31;
        sub_10000298C(&v30);
        LOBYTE(v30) = 0;
        v31 = 0;
        sub_10000298C(v28);
        v12 = *a1;
        sub_10000298C(v28);
        v13 = *v12;
        *v12 = v28[0];
        v28[0] = v13;
        v14 = *(v12 + 8);
        *(v12 + 8) = v29;
        v29 = v14;
        sub_10000298C(v12);
        sub_10000298C(v28);
        sub_1000048FC(&v29, v28[0]);
        v15 = *a1;
        goto LABEL_16;
      }

      v8 = *(v7 - 8);
      if (v8)
      {
        v9 = *v8;
        if (v9 == 2)
        {
          sub_10000F8A4(*(v8 + 1), &v30);
          v10 = *(*(*(a1[2] - 8) + 8) + 8) - 16;
LABEL_16:
          v11 = 1;
LABEL_18:
          sub_10000298C(&v30);
          sub_1000048FC(&v31, v30);
          return v11;
        }

        if (v9 == 1)
        {
          v16 = a1[8];
          if (v16)
          {
            v17 = v16 - 1;
            v18 = *(a1[7] + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8));
            a1[8] = v17;
            if ((v18 >> v17))
            {
              if (!a1[10])
              {
                __assert_rtn("handle_value", "json_sax.hpp", 624, "object_element");
              }

              v26[0] = v30;
              v27 = v31;
              sub_10000298C(&v30);
              LOBYTE(v30) = 0;
              v31 = 0;
              sub_10000298C(v26);
              v19 = a1[10];
              sub_10000298C(v26);
              v20 = *v19;
              *v19 = v26[0];
              v26[0] = v20;
              v21 = *(v19 + 8);
              *(v19 + 8) = v27;
              v27 = v21;
              sub_10000298C(v19);
              sub_10000298C(v26);
              sub_1000048FC(&v27, v26[0]);
              v22 = a1[10];
              goto LABEL_16;
            }

            goto LABEL_17;
          }

          v24 = "not key_keep_stack.empty()";
          v25 = 615;
        }

        else
        {
          v24 = "ref_stack.back()->is_array() or ref_stack.back()->is_object()";
          v25 = 603;
        }

        __assert_rtn("handle_value", "json_sax.hpp", v25, v24);
      }
    }

LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  return 0;
}

void sub_100042574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10002C5F4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100042594(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (!v1)
  {
    sub_10011B5F0();
  }

  if ((*(*(a1 + 32) + (((v1 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v1 - 1)))
  {
    v3[0] = 0xAAAAAAAAAAAAAAAALL;
    v3[1] = 0xAAAAAAAAAAAAAAAALL;
    sub_100006C9C(v3);
  }

  return 0;
}

void sub_100042858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10002C5F4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100042878(uint64_t *a1, uint64_t *a2, char a3)
{
  v3 = a1[5];
  if (!v3)
  {
    sub_10011B5F0();
  }

  if ((*(a1[4] + (((v3 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v3 - 1)))
  {
    v6 = *a2;
    v30 = 0xAAAAAAAAAAAAAA06;
    v31 = v6;
    sub_10000298C(&v30);
    sub_10000298C(&v30);
    if (a3 & 1) != 0 || (sub_100040BF0((a1 + 12), (a1[2] - a1[1]) >> 3, 5))
    {
      v7 = a1[2];
      if (a1[1] == v7)
      {
        v28[0] = v30;
        v29 = v31;
        sub_10000298C(&v30);
        LOBYTE(v30) = 0;
        v31 = 0;
        sub_10000298C(v28);
        v12 = *a1;
        sub_10000298C(v28);
        v13 = *v12;
        *v12 = v28[0];
        v28[0] = v13;
        v14 = *(v12 + 8);
        *(v12 + 8) = v29;
        v29 = v14;
        sub_10000298C(v12);
        sub_10000298C(v28);
        sub_1000048FC(&v29, v28[0]);
        v15 = *a1;
        goto LABEL_16;
      }

      v8 = *(v7 - 8);
      if (v8)
      {
        v9 = *v8;
        if (v9 == 2)
        {
          sub_10000F8A4(*(v8 + 1), &v30);
          v10 = *(*(*(a1[2] - 8) + 8) + 8) - 16;
LABEL_16:
          v11 = 1;
LABEL_18:
          sub_10000298C(&v30);
          sub_1000048FC(&v31, v30);
          return v11;
        }

        if (v9 == 1)
        {
          v16 = a1[8];
          if (v16)
          {
            v17 = v16 - 1;
            v18 = *(a1[7] + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8));
            a1[8] = v17;
            if ((v18 >> v17))
            {
              if (!a1[10])
              {
                __assert_rtn("handle_value", "json_sax.hpp", 624, "object_element");
              }

              v26[0] = v30;
              v27 = v31;
              sub_10000298C(&v30);
              LOBYTE(v30) = 0;
              v31 = 0;
              sub_10000298C(v26);
              v19 = a1[10];
              sub_10000298C(v26);
              v20 = *v19;
              *v19 = v26[0];
              v26[0] = v20;
              v21 = *(v19 + 8);
              *(v19 + 8) = v27;
              v27 = v21;
              sub_10000298C(v19);
              sub_10000298C(v26);
              sub_1000048FC(&v27, v26[0]);
              v22 = a1[10];
              goto LABEL_16;
            }

            goto LABEL_17;
          }

          v24 = "not key_keep_stack.empty()";
          v25 = 615;
        }

        else
        {
          v24 = "ref_stack.back()->is_array() or ref_stack.back()->is_object()";
          v25 = 603;
        }

        __assert_rtn("handle_value", "json_sax.hpp", v25, v24);
      }
    }

LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  return 0;
}

void sub_100042B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10002C5F4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100042B70(uint64_t a1, uint64_t a2)
{
  *a1 = off_100181438;
  *(a1 + 8) = *(a2 + 8);
  std::runtime_error::runtime_error((a1 + 16), (a2 + 16));
  *a1 = off_100181FD8;
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t sub_100042BEC(uint64_t a1, uint64_t a2)
{
  *a1 = off_100181438;
  *(a1 + 8) = *(a2 + 8);
  std::runtime_error::runtime_error((a1 + 16), (a2 + 16));
  *a1 = off_100181F98;
  return a1;
}

uint64_t sub_100042C5C(uint64_t a1, uint64_t a2)
{
  *a1 = off_100181438;
  *(a1 + 8) = *(a2 + 8);
  std::runtime_error::runtime_error((a1 + 16), (a2 + 16));
  *a1 = off_1001816F0;
  return a1;
}

uint64_t sub_100042CCC(uint64_t a1, uint64_t a2)
{
  *a1 = off_100181438;
  *(a1 + 8) = *(a2 + 8);
  std::runtime_error::runtime_error((a1 + 16), (a2 + 16));
  *a1 = off_100181478;
  return a1;
}

uint64_t sub_100042D3C(uint64_t a1, uint64_t a2)
{
  *a1 = off_100181438;
  *(a1 + 8) = *(a2 + 8);
  std::runtime_error::runtime_error((a1 + 16), (a2 + 16));
  *a1 = off_100181ED8;
  return a1;
}

void sub_100042DAC(std::runtime_error *a1)
{
  a1->__vftable = off_100181438;
  std::runtime_error::~runtime_error(a1 + 1);
  std::exception::~exception(a1);

  operator delete();
}

void sub_100042E14(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::to_string(&v12, *(a1 + 16) + 1);
  v4 = std::string::insert(&v12, 0, " at line ");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v13, ", column ");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, *(a1 + 8));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v10 = std::string::append(&v14, p_p, size);
  *a2 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_100042F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v26 - 25) < 0)
  {
    operator delete(*(v26 - 48));
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

const char *sub_100042FC4(unsigned int a1)
{
  if (a1 > 0x10)
  {
    return "unknown token";
  }

  else
  {
    return off_100182000[a1];
  }
}

uint64_t sub_100042FE8(uint64_t a1)
{
  sub_10000298C((a1 + 136));
  sub_1000048FC((a1 + 144), *(a1 + 136));
  sub_100004FBC(a1 + 96);
  v2 = *(a1 + 56);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    *(a1 + 16) = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_100043050(uint64_t a1, unsigned __int8 *a2)
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
  *v8 = 4;
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

void sub_100043194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000BC60(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_1000431A8(void *a1, unsigned __int8 *a2, unint64_t a3, unsigned __int8 *a4)
{
  v4 = a2;
  if (a3)
  {
    v9 = a1[1];
    v8 = a1[2];
    if (a3 <= (v8 - v9) >> 4)
    {
      v16 = v9 - a2;
      v17 = a3;
      if (a3 <= (v9 - a2) >> 4)
      {
        goto LABEL_15;
      }

      v17 = v16 >> 4;
      v18 = v9 + 16 * (a3 - (v16 >> 4));
      v19 = 16 * a3 - 16 * (v16 >> 4);
      v20 = a1[1];
      do
      {
        sub_10000FF70(v20, a4);
        v20 += 16;
        v19 -= 16;
      }

      while (v19);
      a1[1] = v18;
      if (v9 != v4)
      {
LABEL_15:
        sub_100043408(a1, v4, v9, &v4[16 * a3]);
        if (v4 <= a4)
        {
          if (a1[1] <= a4)
          {
            v21 = 0;
          }

          else
          {
            v21 = a3;
          }

          a4 += 16 * v21;
        }

        v22 = 0;
        do
        {
          sub_10000FF70(&v30, a4);
          v23 = &v4[v22];
          sub_10000298C(&v30);
          v24 = v4[v22];
          *v23 = v30;
          LOBYTE(v30) = v24;
          v25 = *&v4[v22 + 8];
          *(v23 + 1) = *(&v30 + 1);
          *(&v30 + 1) = v25;
          sub_10000298C(&v4[v22]);
          sub_10000298C(&v30);
          sub_1000048FC(&v30 + 1, v30);
          v22 += 16;
          --v17;
        }

        while (v17);
      }
    }

    else
    {
      v10 = *a1;
      v30 = 0u;
      v31 = 0u;
      v11 = a3 + ((v9 - v10) >> 4);
      if (v11 >> 60)
      {
        sub_10002C63C();
      }

      v12 = &a2[-v10];
      v13 = v8 - v10;
      v14 = v13 >> 3;
      if (v13 >> 3 <= v11)
      {
        v14 = v11;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF0)
      {
        v15 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v14;
      }

      v32 = a1;
      if (v15)
      {
        sub_10000BC18(a1, v15);
      }

      v26 = (16 * (v12 >> 4));
      *&v30 = 0;
      *(&v30 + 1) = v26;
      v31 = v26;
      v27 = 16 * a3;
      v28 = &v26[16 * a3];
      do
      {
        sub_10000FF70(v26, a4);
        v26 += 16;
        v27 -= 16;
      }

      while (v27);
      *&v31 = v28;
      v4 = sub_1000434F0(a1, &v30, v4);
      sub_10000BC60(&v30);
    }
  }

  return v4;
}

uint64_t sub_100043408(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = a2 + v6 - a4;
    v8 = *(a1 + 8);
    do
    {
      *v8 = *v10;
      *(v8 + 8) = *(v10 + 8);
      sub_10000298C(v10);
      *v10 = 0;
      *(v10 + 8) = 0;
      sub_10000298C(v8);
      v10 += 16;
      v8 += 16;
    }

    while (v10 < a3);
  }

  *(a1 + 8) = v8;
  return sub_1000435AC(&v12, a2, v7, v6);
}

uint64_t sub_1000434F0(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  v6 = a2[1];
  sub_10000BB08(a1, a3, *(a1 + 8), a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = v8 + v7 - a3;
  sub_10000BB08(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t sub_1000435AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v12[0] = *(a3 + v7 - 16);
      v13 = *(a3 + v7 - 8);
      sub_10000298C((a3 + v7 - 16));
      *(a3 + v7 - 16) = 0;
      *(a3 + v7 - 8) = 0;
      sub_10000298C(v12);
      sub_10000298C(v12);
      v9 = *(a4 + v7 - 16);
      v8 = a4 + v7 - 16;
      *v8 = v12[0];
      v12[0] = v9;
      v10 = *(a4 + v7 - 8);
      *(v8 + 8) = v13;
      v13 = v10;
      sub_10000298C(v8);
      sub_10000298C(v12);
      sub_1000048FC(&v13, v12[0]);
      v7 -= 16;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

const void **sub_1000436B8(void *a1, const void **a2)
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
    sub_100043968();
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

void sub_100043940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **__p)
{
  if (__p)
  {
    sub_100043C74(v9 + 8, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100043A04(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100043C74(v3, v2);
  _Unwind_Resume(a1);
}

void sub_100043A20(uint64_t a1, size_t __n)
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

      sub_100043B10(a1, prime);
    }
  }
}

void sub_100043B10(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_100025BBC();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_100043C74(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_100043CD8(uint64_t a1)
{
  sub_100043D14(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_100043D14(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *sub_100043D60(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = sub_100084DA8(a1, a2, a3, a4, a5, a6, a7, a8);
  *result = off_1001820D0;
  return result;
}

void sub_100043DAC(void *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_10000459C(&__p, [kOSALogOptionOptInOverride UTF8String]);
  sub_100024C64(v2);
}

void sub_100043EF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_10003E1D0((v16 - 72));
  v18 = -64;
  v19 = v15;
  do
  {
    v19 = sub_10003E1D0(v19) - 32;
    v18 += 32;
  }

  while (v18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100043F84(void *a1)
{
  sub_100043FBC(a1);

  operator delete();
}

void *sub_100043FBC(void *a1)
{
  *a1 = off_100184F70;
  v2 = a1[13];
  if (v2)
  {
    sub_10000786C(v2);
  }

  v3 = a1[11];
  if (v3)
  {
    sub_10000786C(v3);
  }

  v4 = a1[9];
  if (v4)
  {
    sub_10000786C(v4);
  }

  v5 = a1[7];
  if (v5)
  {
    sub_10000786C(v5);
  }

  v6 = a1[5];
  if (v6)
  {
    sub_10000786C(v6);
  }

  v7 = a1[3];
  if (v7)
  {
    sub_10000786C(v7);
  }

  return a1;
}

uint64_t sub_100044118(uint64_t a1, uint64_t *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v16 = dispatch_queue_create("analyticsd.TransformManagerQueue", 0);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v16;
  if (v16)
  {
    v17 = v16;
    dispatch_retain(v16);
    dispatch_release(v17);
  }

  *a1 = off_100182128;
  *(a1 + 32) = off_100182180;
  v19 = *a2;
  v18 = a2[1];
  *(a1 + 40) = off_1001821A8;
  *(a1 + 48) = v19;
  *(a1 + 56) = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v20 = a3[1];
  *(a1 + 80) = *a3;
  *(a1 + 88) = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  v21 = a4[1];
  *(a1 + 96) = *a4;
  *(a1 + 104) = v21;
  if (v21)
  {
    atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
  }

  v22 = a5[1];
  *(a1 + 112) = *a5;
  *(a1 + 120) = v22;
  if (v22)
  {
    atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
  }

  v23 = a6[1];
  *(a1 + 128) = *a6;
  *(a1 + 136) = v23;
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
  }

  v24 = a7[1];
  *(a1 + 144) = *a7;
  *(a1 + 152) = v24;
  if (v24)
  {
    atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
  }

  v25 = a8[1];
  *(a1 + 160) = *a8;
  *(a1 + 168) = v25;
  if (v25)
  {
    atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
  }

  v26 = sub_1000D3EDC();
  v29[0] = off_1001822D8;
  v29[1] = sub_1000125D4;
  v29[3] = v29;
  v28[0] = off_100182388;
  v28[1] = sub_10001F500;
  v28[3] = v28;
  sub_100045CAC(a1 + 176, v26, v29, v28);
  sub_100045C2C(v28);
  sub_100045AC4(v29);
  *(a1 + 392) = std::chrono::system_clock::now().__d_.__rep_ + 60000000;
  *(a1 + 400) = 100000;
  return a1;
}

void sub_100044394(_Unwind_Exception *a1)
{
  sub_10004612C(v1 + 22);
  v4 = v1[21];
  if (v4)
  {
    sub_10000786C(v4);
  }

  v5 = v1[19];
  if (v5)
  {
    sub_10000786C(v5);
  }

  v6 = v1[17];
  if (v6)
  {
    sub_10000786C(v6);
  }

  v7 = v1[15];
  if (v7)
  {
    sub_10000786C(v7);
  }

  v8 = v1[13];
  if (v8)
  {
    sub_10000786C(v8);
  }

  v9 = v1[11];
  if (v9)
  {
    sub_10000786C(v9);
  }

  v10 = v1[9];
  if (v10)
  {
    sub_10000786C(v10);
  }

  v11 = v1[7];
  if (v11)
  {
    sub_10000786C(v11);
  }

  sub_100044430(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_100044430(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void *sub_10004446C(void *a1)
{
  *a1 = off_100182128;
  a1[4] = off_100182180;
  a1[5] = off_1001821A8;
  v2 = qword_100192D68;
  if (os_log_type_enabled(qword_100192D68, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[Transform Manager] Destructor called", v12, 2u);
  }

  sub_1000445EC(a1 + 22);
  sub_10004612C(a1 + 22);
  v3 = a1[21];
  if (v3)
  {
    sub_10000786C(v3);
  }

  v4 = a1[19];
  if (v4)
  {
    sub_10000786C(v4);
  }

  v5 = a1[17];
  if (v5)
  {
    sub_10000786C(v5);
  }

  v6 = a1[15];
  if (v6)
  {
    sub_10000786C(v6);
  }

  v7 = a1[13];
  if (v7)
  {
    sub_10000786C(v7);
  }

  v8 = a1[11];
  if (v8)
  {
    sub_10000786C(v8);
  }

  v9 = a1[9];
  if (v9)
  {
    sub_10000786C(v9);
  }

  v10 = a1[7];
  if (v10)
  {
    sub_10000786C(v10);
  }

  sub_100044430((a1 + 1));
  return a1;
}

void sub_1000445E0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_1000445EC(void *a1)
{
  sub_1000461B8((a1 + 22));
  while (a1[21])
  {
    sub_10001F480(a1, *(a1[20] + 16));
    v2 = a1[20];
    v3 = a1[21];
    v5 = *v2;
    v4 = v2[1];
    *(v5 + 8) = v4;
    *v4 = v5;
    a1[21] = v3 - 1;
    operator delete(v2);
  }

  a1[1] = 0;
}

void sub_100044664(void *a1)
{
  sub_10004446C(a1);

  operator delete();
}

void sub_10004469C(uint64_t a1)
{
  sub_10004446C((a1 - 32));

  operator delete();
}

void sub_1000446D8(uint64_t a1)
{
  sub_10004446C((a1 - 40));

  operator delete();
}

void sub_100044714(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  v4[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v4, (a1 + 8));
  operator new();
}

void sub_10004484C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10004485C(uint64_t a1@<X0>, NSObject **a2@<X8>)
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
  sub_100006028(v6, (a1 + 8));
  operator new();
}

void sub_10004497C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10004498C(uint64_t a1@<X0>, NSObject **a2@<X8>)
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
  sub_100006028(v6, (a1 + 8));
  operator new();
}

void sub_100044AAC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100044ABC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a1 + 8;
  v4 = a1;
  v3 = *(a1 + 24);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_100048020;
  v5[3] = &unk_1001827F8;
  v5[4] = v2;
  v5[5] = &v4;
  v6 = v5;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000482D4;
  block[3] = &unk_100182818;
  block[4] = a2;
  block[5] = &v6;
  dispatch_sync(v3, block);
}

uint64_t sub_100044BB4(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v5[0] = a1;
  v5[1] = a2;
  v3 = *(a1 + 24);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_100048404;
  v6[3] = &unk_100182838;
  v6[4] = v2;
  v6[5] = v5;
  v7 = v6;
  v9 = -86;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000087DC;
  block[3] = &unk_100182858;
  block[4] = &v9;
  block[5] = &v7;
  dispatch_sync(v3, block);
  return v9;
}

uint64_t sub_100044CB4(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v5[0] = a1;
  v5[1] = a2;
  v3 = *(a1 + 24);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_100048530;
  v6[3] = &unk_100182878;
  v6[4] = v2;
  v6[5] = v5;
  v7 = v6;
  v9 = -86;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000087DC;
  block[3] = &unk_100182858;
  block[4] = &v9;
  block[5] = &v7;
  dispatch_sync(v3, block);
  return v9;
}

void sub_100044DB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = a2;
  v7 = a4;
  v4 = a1 + 8;
  v6[0] = a1;
  v6[1] = &v9;
  v6[2] = a3;
  v6[3] = &v7;
  v5 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_10004862C;
  block[3] = &unk_100182898;
  block[4] = v4;
  block[5] = v6;
  dispatch_sync(v5, block);
}

void sub_100044E70(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5[0] = a1;
  v5[1] = a2;
  v4 = *(a1 + 24);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_100048644;
  v6[3] = &unk_1001828B8;
  v6[4] = a1 + 8;
  v6[5] = v5;
  v7 = v6;
  *a3 = 0xAAAAAAAAAAAAAA00;
  *(a3 + 8) = 0;
  sub_10000298C(a3);
  sub_10000298C(a3);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100021534;
  block[3] = &unk_1001828D8;
  block[4] = a3;
  block[5] = &v7;
  dispatch_sync(v4, block);
}

void sub_100044F94(uint64_t a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  v7 = a2;
  v3 = a1 + 8;
  v6[0] = a1;
  v6[1] = &v7;
  v4 = *(a1 + 24);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_10004902C;
  v8[3] = &unk_1001828F8;
  v8[4] = v3;
  v8[5] = v6;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  a3[1] = v5;
  a3[2] = v5;
  *a3 = v5;
  v9 = v8;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100049040;
  block[3] = &unk_100182918;
  block[4] = a3;
  block[5] = &v9;
  dispatch_sync(v4, block);
}

void sub_100045094(uint64_t a1)
{
  v1 = a1 + 8;
  v3 = a1;
  v2 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000490C4;
  block[3] = &unk_100182938;
  block[4] = v1;
  block[5] = &v3;
  dispatch_sync(v2, block);
}

void sub_10004513C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000078D8(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v4 = *(a2 + 16);
  }

  v5[0] = 0xAAAAAAAAAAAAAAAALL;
  v5[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v5, (a1 + 8));
  operator new();
}

void sub_1000452A8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1000452C0(uint64_t a1)
{
  v1 = a1 + 8;
  v3 = a1;
  v2 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100049268;
  block[3] = &unk_100182958;
  block[4] = v1;
  block[5] = &v3;
  dispatch_sync(v2, block);
}

uint64_t sub_100045370(uint64_t a1)
{
  v2 = qword_100192D68;
  if (os_log_type_enabled(qword_100192D68, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Transform Manager] re-enabling all budgeted transform", v4, 2u);
  }

  return (*(**(a1 + 80) + 160))(*(a1 + 80));
}

uint64_t sub_100045434(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = qword_100192D68;
  if (os_log_type_enabled(qword_100192D68, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[Transform Manager] cleanup expired transform state", v12, 2u);
    v7 = qword_100192D68;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[Transform Manager] purging all in-memory transforms", v12, 2u);
  }

  sub_1000445EC((a1 + 176));
  v8 = qword_100192D68;
  if (os_log_type_enabled(qword_100192D68, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Transform Manager] removing expired, persisted transform state", v12, 2u);
  }

  v9 = **(a1 + 96);
  if ((a2 & 0x100000000) != 0)
  {
    v9[20]();
  }

  else if (a4)
  {
    v9[18]();
  }

  else
  {
    v9[19]();
  }

  v10 = qword_100192D68;
  if (os_log_type_enabled(qword_100192D68, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[Transform Manager] resetting all budget usage", v12, 2u);
  }

  return sub_100045370(a1);
}

uint64_t sub_10004562C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 40) = 0xAAAAAAAAAAAAAAAALL;
  *a3 = vrev64_s32(*(a1 + 16));
  *(a3 + 8) = vextq_s8(*a1, *a1, 8uLL);
  result = sub_10001B5F0(a1);
  v7 = *(a1 + 168);
  *(a3 + 24) = result;
  *(a3 + 32) = v7;
  *(a3 + 40) = *(a1 + 24);
  if (a2)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
  }

  return result;
}

uint64_t sub_10004569C@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = result + 328;
  v5 = *(result + 336);
  if (v5 == result + 328)
  {
LABEL_15:
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    while (1)
    {
      v7 = *(v5 + 16);
      result = sub_10001C33C(*(v7 + 56));
      v8 = *(result + 23);
      if (v8 >= 0)
      {
        v9 = *(result + 23);
      }

      else
      {
        v9 = *(result + 8);
      }

      v10 = *(a2 + 23);
      v11 = v10;
      if ((v10 & 0x80u) != 0)
      {
        v10 = a2[1];
      }

      if (v9 == v10)
      {
        if (v8 < 0)
        {
          result = *result;
        }

        v12 = *a2;
        v13 = v11 >= 0 ? a2 : *a2;
        result = memcmp(result, v13, v9);
        if (!result)
        {
          break;
        }
      }

      v5 = *(v5 + 8);
      if (v5 == v4)
      {
        goto LABEL_15;
      }
    }

    v14 = *(v7 + 64);
    *a3 = *(v7 + 56);
    a3[1] = v14;
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

uint64_t sub_100045768@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = result + 328;
  v5 = *(result + 336);
  if (v5 == result + 328)
  {
LABEL_15:
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    while (1)
    {
      v7 = *(v5 + 16);
      result = sub_100016734(*(v7 + 56));
      v8 = *(result + 23);
      if (v8 >= 0)
      {
        v9 = *(result + 23);
      }

      else
      {
        v9 = *(result + 8);
      }

      v10 = *(a2 + 23);
      v11 = v10;
      if ((v10 & 0x80u) != 0)
      {
        v10 = a2[1];
      }

      if (v9 == v10)
      {
        if (v8 < 0)
        {
          result = *result;
        }

        v12 = *a2;
        v13 = v11 >= 0 ? a2 : *a2;
        result = memcmp(result, v13, v9);
        if (!result)
        {
          break;
        }
      }

      v5 = *(v5 + 8);
      if (v5 == v4)
      {
        goto LABEL_15;
      }
    }

    v14 = *(v7 + 64);
    *a3 = *(v7 + 56);
    a3[1] = v14;
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

dispatch_group_t sub_100045834@<X0>(dispatch_group_t *a1@<X8>)
{
  result = dispatch_group_create();
  *a1 = result;
  return result;
}

void sub_1000458DC(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1000459B0);
  __cxa_rethrow();
}

void sub_10004591C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100045970(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000459B0(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100045A4C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1001822D8;
  a2[1] = v2;
  return result;
}

uint64_t sub_100045A78(uint64_t a1, uint64_t a2)
{
  if (sub_10002E128(a2, &off_100182358))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100045AC4(uint64_t a1)
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

uint64_t sub_100045BB4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100182388;
  a2[1] = v2;
  return result;
}

uint64_t sub_100045BE0(uint64_t a1, uint64_t a2)
{
  if (sub_10002E128(a2, &off_100182408))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100045C2C(uint64_t a1)
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

uint64_t sub_100045CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = a2;
  *(a1 + 24) = 0;
  sub_100045DB4(a1 + 32, a4);
  sub_100045E34(a1 + 64, a3);
  *(a1 + 184) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = xmmword_100140DA0;
  *(a1 + 136) = xmmword_100140DB0;
  *(a1 + 152) = a1 + 152;
  *(a1 + 160) = a1 + 152;
  *(a1 + 200) = 0u;
  *(a1 + 192) = a1 + 184;
  *(a1 + 200) = a1 + 184;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  if (!a2)
  {
    __assert_rtn("LruCache", "LruCache.h", 115, "nodeCapacity > 0");
  }

  return a1;
}

void sub_100045D74(_Unwind_Exception *a1)
{
  if (*v4)
  {
    sub_10011B6CC(*v4);
  }

  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  sub_100045EB4(v3);
  sub_100045F18(v2);
  sub_100045AC4(v1 + 64);
  sub_100045C2C(v1 + 32);
  _Unwind_Resume(a1);
}

uint64_t sub_100045DB4(uint64_t a1, uint64_t a2)
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

uint64_t sub_100045E34(uint64_t a1, uint64_t a2)
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

void *sub_100045EB4(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void *sub_100045F18(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = a1[3];
    if (v3 <= 8)
    {
      v3 = 8;
    }

    v4 = v3 + 7;
    if (v3 == 0 || v3 >= 0xFFFFFFFFFFFFFFF9)
    {
      __assert_rtn("alloc_size", "pool.hpp", 353, "s >= min_alloc_size");
    }

    v5 = *a1;
    v6 = a1[2];
    v7 = v4 & 0xFFFFFFFFFFFFFFF8;
    v8 = *(v2 + v6 - 16);
    v9 = *(v2 + v6 - 8);
    if (v2 != v2 + v6 - 16)
    {
      v10 = v6 - 16;
      v11 = a1[1];
      do
      {
        if (v11 == v5)
        {
          v5 = *v5;
        }

        else
        {
          v12 = *(v11 + 64);
          if (v12)
          {
            sub_10000786C(v12);
          }

          if (*(v11 + 55) < 0)
          {
            operator delete(*(v11 + 32));
          }

          if (*v11)
          {
            __assert_rtn("destructor_impl", "generic_hook.hpp", 48, "!hook.is_linked()");
          }
        }

        v11 += v7;
        v10 -= v7;
      }

      while (v10);
    }

    operator delete[]();
  }

  sub_1000460B0(a1);
  return a1;
}

void *sub_10004606C(void *result)
{
  if (*result)
  {
    __assert_rtn("destructor_impl", "generic_hook.hpp", 48, "!hook.is_linked()");
  }

  return result;
}

uint64_t sub_1000460B0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v1 = *(a1 + 16);
    v2 = *(a1 + 8);
    v4 = *(v2 + v1 - 16);
    v3 = *(v2 + v1 - 8);
    operator delete[]();
  }

  return 0;
}

void *sub_10004612C(void *a1)
{
  sub_1000445EC(a1);
  v2 = a1[23];
  if (v2)
  {
    do
    {
      v3 = v2[1];
      if (v3)
      {
        v2[1] = v3[2];
        v3[2] = v2;
      }

      else
      {
        v3 = v2[2];
        *v2 = 0;
        v2[1] = 0;
        v2[2] = 0;
      }

      v2 = v3;
    }

    while (v3);
  }

  a1[23] = 0;
  a1[24] = 0;
  a1[25] = 0;
  sub_100045EB4(a1 + 19);
  sub_100045F18(a1 + 12);
  sub_100045AC4((a1 + 8));
  sub_100045C2C((a1 + 4));
  return a1;
}

uint64_t sub_1000461B8(uint64_t result)
{
  v1 = result + 8;
  v2 = *(result + 8);
  if (v2)
  {
    do
    {
      v3 = v2[1];
      if (v3)
      {
        v2[1] = v3[2];
        v3[2] = v2;
      }

      else
      {
        v3 = v2[2];
        *v2 = 0;
        v2[1] = 0;
        v2[2] = 0;
      }

      v2 = v3;
    }

    while (v3);
  }

  *(result + 16) = v1;
  *(result + 24) = v1;
  *(result + 32) = 0;
  *result = 0;
  *(result + 8) = 0;
  return result;
}

void sub_100046200(void **a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  v2 = *v1;
  operator new();
}

void sub_100046438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_10000786C(a13);
  }

  sub_100046468(&a11);
  sub_1000120B8(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_100046468(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      sub_10000786C(v2);
    }

    operator delete();
  }

  return result;
}

void sub_1000464DC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100182438;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10004655C(void *a1)
{
  sub_100046594(a1);

  operator delete();
}

void *sub_100046594(void *a1)
{
  *a1 = off_100182488;
  v2 = a1[12];
  if (v2)
  {
    sub_10000786C(v2);
  }

  v3 = a1[10];
  if (v3)
  {
    sub_10000786C(v3);
  }

  v4 = a1[8];
  if (v4)
  {
    sub_10000786C(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    sub_10000786C(v5);
  }

  v6 = a1[4];
  if (v6)
  {
    sub_10000786C(v6);
  }

  v7 = a1[2];
  if (v7)
  {
    sub_10000786C(v7);
  }

  return a1;
}

void sub_10004661C(uint64_t **a1)
{
  v6 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = qword_100192D78;
  if (os_log_type_enabled(qword_100192D78, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Transform Manager] Pre-configuration activation: inserting new aggregation sessions", buf, 2u);
  }

  (*(**(v2 + 112) + 72))(*(v2 + 112));
  v4 = v1[1];
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = v1[1];
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  operator delete();
}

uint64_t *sub_100046728(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v3 = qword_100192D78;
  if (*(*v1 + 80))
  {
    if (os_log_type_enabled(qword_100192D78, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Transform Manager] Pre-reconfiguration: Clearing transform cache before configuration conditions change", buf, 2u);
    }

    sub_1000445EC((v2 + 176));
  }

  else if (os_log_type_enabled(qword_100192D78, OS_LOG_TYPE_ERROR))
  {
    sub_10011B6FC(v3);
  }

  sub_100046828(&v6);
  return sub_1000120B8(&v5);
}

uint64_t *sub_100046828(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      dispatch_group_leave(v2);
      v3 = *(v1 + 8);
      if (v3)
      {
        dispatch_release(v3);
      }
    }

    operator delete();
  }

  return result;
}

__n128 sub_1000468FC(uint64_t a1, uint64_t a2)
{
  *a2 = off_1001824D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100046928(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000469E4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100182568;
  a2[1] = v2;
  return result;
}

uint64_t sub_100046A0C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100046AD4(uint64_t a1, uint64_t a2)
{
  *a2 = off_1001825E8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100046B08(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100046BE0(uint64_t a1, uint64_t a2)
{
  *a2 = off_100182678;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100046C24(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100046C70(uint64_t a1, uint64_t *a2)
{
  v35 = 0;
  v36 = 0;
  v37 = 0;
  while (1)
  {
LABEL_2:
    v4 = *(a1 + 32);
    if (v4 <= 5)
    {
      if (v4 > 2)
      {
        if (v4 == 3)
        {
          v32.__vftable = 0;
          sub_100041FAC(a2, &v32, 0);
        }

        else if (v4 == 4)
        {
          sub_100042594(a2);
        }

        else
        {
          v32.__vftable = *(a1 + 152);
          sub_100042878(a2, &v32, 0);
        }

        goto LABEL_28;
      }

      if (v4 == 1)
      {
        LOBYTE(v32.__vftable) = 1;
        sub_100041CB4(a2, &v32, 0);
        goto LABEL_28;
      }

      if (v4 == 2)
      {
        LOBYTE(v32.__vftable) = 0;
        sub_100041CB4(a2, &v32, 0);
        goto LABEL_28;
      }

      goto LABEL_53;
    }

    if (v4 <= 7)
    {
      if (v4 == 6)
      {
        v32.__vftable = *(a1 + 144);
        sub_10004229C(a2, &v32, 0);
      }

      else
      {
        if ((*(a1 + 160) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          v23 = *(a1 + 64);
          sub_100047610(a1 + 40, &v34);
          sub_100047610(a1 + 40, &v28);
          v24 = std::string::insert(&v28, 0, "number overflow parsing '");
          v25 = *&v24->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v25;
          v24->__r_.__value_.__l.__size_ = 0;
          v24->__r_.__value_.__r.__words[2] = 0;
          v24->__r_.__value_.__r.__words[0] = 0;
          v26 = std::string::append(&__p, "'");
          v27 = *&v26->__r_.__value_.__l.__data_;
          v31 = v26->__r_.__value_.__r.__words[2];
          *v30 = v27;
          v26->__r_.__value_.__l.__size_ = 0;
          v26->__r_.__value_.__r.__words[2] = 0;
          v26->__r_.__value_.__r.__words[0] = 0;
          sub_100040A24(406, v30, &v32);
          v13 = sub_10003F51C(a2, v23, &v34, &v32);
          sub_100040B9C(&v32);
          if (SHIBYTE(v31) < 0)
          {
            operator delete(v30[0]);
          }

          goto LABEL_55;
        }

        v32.__vftable = *(a1 + 160);
        sub_1000419B8(a2, &v32, 0);
      }

      goto LABEL_28;
    }

    if (v4 != 8)
    {
      break;
    }

    if (!sub_1000406D4(a2, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_61;
    }

    v7 = sub_10000AEB4(a1 + 40);
    *(a1 + 32) = v7;
    if (v7 == 10)
    {
      v6 = sub_1000408CC(a2);
      goto LABEL_24;
    }

    LOBYTE(v32.__vftable) = 1;
    sub_1000077C4(&v35, &v32);
  }

  if (v4 != 9)
  {
    if (v4 == 14)
    {
      v15 = *(a1 + 64);
      sub_100047610(a1 + 40, &v34);
      *v30 = *(a1 + 64);
      v31 = *(a1 + 80);
      sub_10000459C(&v28, "value");
      sub_1000476F4(a1, 0, &v28, &__p);
      sub_10003F76C(101, v30, &__p, &v32);
      v16 = sub_10003F51C(a2, v15, &v34, &v32);
LABEL_54:
      v13 = v16;
      v32.__vftable = off_100181438;
      std::runtime_error::~runtime_error(&v33);
      std::exception::~exception(&v32);
      goto LABEL_55;
    }

LABEL_53:
    v17 = *(a1 + 64);
    sub_100047610(a1 + 40, &v34);
    *v30 = *(a1 + 64);
    v31 = *(a1 + 80);
    sub_10000459C(&v28, "value");
    sub_1000476F4(a1, 0x10u, &v28, &__p);
    sub_10003F76C(101, v30, &__p, &v32);
    v16 = sub_10003F51C(a2, v17, &v34, &v32);
    goto LABEL_54;
  }

  if ((sub_100040150(a2, 0xFFFFFFFFFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_61;
  }

  v5 = sub_10000AEB4(a1 + 40);
  *(a1 + 32) = v5;
  if (v5 != 11)
  {
    if (v5 == 4)
    {
      sub_100040554();
    }

    goto LABEL_64;
  }

  v6 = sub_100040340(a2);
LABEL_24:
  if ((v6 & 1) == 0)
  {
LABEL_61:
    v13 = 0;
    goto LABEL_48;
  }

LABEL_28:
  v8 = v36;
  if (!v36)
  {
LABEL_47:
    v13 = 1;
    goto LABEL_48;
  }

  while (2)
  {
    if ((*&v35[((v8 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (v8 - 1)))
    {
      v9 = sub_10000AEB4(a1 + 40);
      *(a1 + 32) = v9;
      if (v9 == 13)
      {
        *(a1 + 32) = sub_10000AEB4(a1 + 40);
        goto LABEL_2;
      }

      if (v9 != 10)
      {
        v18 = *(a1 + 64);
        sub_100047610(a1 + 40, &v34);
        *v30 = *(a1 + 64);
        v31 = *(a1 + 80);
        sub_10000459C(&v28, "array");
        sub_1000476F4(a1, 0xAu, &v28, &__p);
        sub_10003F76C(101, v30, &__p, &v32);
        v19 = sub_10003F51C(a2, v18, &v34, &v32);
        goto LABEL_65;
      }

      if (!sub_1000408CC(a2))
      {
        goto LABEL_61;
      }

      v10 = v36;
      if (!v36)
      {
        v20 = 383;
        goto LABEL_67;
      }

LABEL_39:
      v8 = v10 - 1;
      v36 = v8;
      if (!v8)
      {
        goto LABEL_47;
      }

      continue;
    }

    break;
  }

  v11 = sub_10000AEB4(a1 + 40);
  *(a1 + 32) = v11;
  if (v11 != 13)
  {
    if (v11 != 11)
    {
      v21 = *(a1 + 64);
      sub_100047610(a1 + 40, &v34);
      *v30 = *(a1 + 64);
      v31 = *(a1 + 80);
      sub_10000459C(&v28, "object");
      sub_1000476F4(a1, 0xBu, &v28, &__p);
      sub_10003F76C(101, v30, &__p, &v32);
      v19 = sub_10003F51C(a2, v21, &v34, &v32);
      goto LABEL_65;
    }

    if (!sub_100040340(a2))
    {
      goto LABEL_61;
    }

    v10 = v36;
    if (!v36)
    {
      v20 = 439;
LABEL_67:
      __assert_rtn("sax_parse_internal", "parser.hpp", v20, "not states.empty()");
    }

    goto LABEL_39;
  }

  v12 = sub_10000AEB4(a1 + 40);
  *(a1 + 32) = v12;
  if (v12 == 4)
  {
    sub_100040554();
  }

LABEL_64:
  v22 = *(a1 + 64);
  sub_100047610(a1 + 40, &v34);
  *v30 = *(a1 + 64);
  v31 = *(a1 + 80);
  sub_10000459C(&v28, "object key");
  sub_1000476F4(a1, 4u, &v28, &__p);
  sub_10003F76C(101, v30, &__p, &v32);
  v19 = sub_10003F51C(a2, v22, &v34, &v32);
LABEL_65:
  v13 = v19;
  sub_10003FE80(&v32);
LABEL_55:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

LABEL_48:
  if (v35)
  {
    operator delete(v35);
  }

  return v13;
}

void sub_1000474C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, std::runtime_error a30)
{
  sub_10003FE80(&a30);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v30 - 65) < 0)
  {
    operator delete(*(v30 - 88));
  }

  v32 = *(v30 - 64);
  if (v32)
  {
    operator delete(v32);
  }

  _Unwind_Resume(a1);
}

void sub_100047610(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v3 = *(a1 + 48);
  for (i = *(a1 + 56); v3 != i; ++v3)
  {
    v5 = *v3;
    if (v5 > 0x1F)
    {
      std::string::push_back(a2, v5);
    }

    else
    {
      v7 = 0;
      *__str = 0;
      snprintf(__str, 9uLL, "<U+%.4X>", v5);
      std::string::append(a2, __str);
    }
  }
}

void sub_1000476D4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000476F4(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  memset(a4, 170, sizeof(std::string));
  sub_10000459C(a4, "syntax error ");
  v8 = *(a3 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a3 + 8);
  }

  if (v8)
  {
    std::operator+<char>();
    v9 = std::string::append(&v38, " ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v40 = v9->__r_.__value_.__r.__words[2];
    v39 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if (v40 >= 0)
    {
      v11 = &v39;
    }

    else
    {
      v11 = v39;
    }

    if (v40 >= 0)
    {
      v12 = HIBYTE(v40);
    }

    else
    {
      v12 = *(&v39 + 1);
    }

    std::string::append(a4, v11, v12);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(v39);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }
  }

  std::string::append(a4, "- ");
  v13 = *(a1 + 32);
  if (v13 == 14)
  {
    sub_10000459C(&v36, *(a1 + 136));
    v14 = std::string::append(&v36, "; last read: '");
    v15 = *&v14->__r_.__value_.__l.__data_;
    v37.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v37.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    sub_100047610(a1 + 40, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v18 = std::string::append(&v37, p_p, size);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v38.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v38.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v38, "'");
    v21 = *&v20->__r_.__value_.__l.__data_;
    v40 = v20->__r_.__value_.__r.__words[2];
    v39 = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    if (v40 >= 0)
    {
      v22 = &v39;
    }

    else
    {
      v22 = v39;
    }

    if (v40 >= 0)
    {
      v23 = HIBYTE(v40);
    }

    else
    {
      v23 = *(&v39 + 1);
    }

    std::string::append(a4, v22, v23);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(v39);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      v24 = v36.__r_.__value_.__r.__words[0];
      goto LABEL_49;
    }

LABEL_46:
    if (!a2)
    {
      return;
    }

    goto LABEL_50;
  }

  v25 = sub_100042FC4(v13);
  sub_10000459C(&v38, v25);
  v26 = std::string::insert(&v38, 0, "unexpected ");
  v27 = *&v26->__r_.__value_.__l.__data_;
  v40 = v26->__r_.__value_.__r.__words[2];
  v39 = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (v40 >= 0)
  {
    v28 = &v39;
  }

  else
  {
    v28 = v39;
  }

  if (v40 >= 0)
  {
    v29 = HIBYTE(v40);
  }

  else
  {
    v29 = *(&v39 + 1);
  }

  std::string::append(a4, v28, v29);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39);
  }

  if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_46;
  }

  v24 = v38.__r_.__value_.__r.__words[0];
LABEL_49:
  operator delete(v24);
  if (!a2)
  {
    return;
  }

LABEL_50:
  v30 = sub_100042FC4(a2);
  sub_10000459C(&v38, v30);
  v31 = std::string::insert(&v38, 0, "; expected ");
  v32 = *&v31->__r_.__value_.__l.__data_;
  v40 = v31->__r_.__value_.__r.__words[2];
  v39 = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  if (v40 >= 0)
  {
    v33 = &v39;
  }

  else
  {
    v33 = v39;
  }

  if (v40 >= 0)
  {
    v34 = HIBYTE(v40);
  }

  else
  {
    v34 = *(&v39 + 1);
  }

  std::string::append(a4, v33, v34);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }
}

void sub_100047A54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v34 - 41) < 0)
  {
    operator delete(*(v34 - 64));
  }

  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v33 + 23) < 0)
  {
    operator delete(*v33);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100047BB8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_100047C04(uint64_t a1, uint64_t a2)
{
  v11 = (a1 + 184);
  v12 = (a1 + 184);
  result = sub_10000C010(&v11, (a2 + 32), (a2 + 32), &v12, 1, 1);
  v6 = v5;
  if (result != v5)
  {
    do
    {
      v7 = result[2];
      v8 = result;
      if (v7)
      {
        do
        {
          v9 = v7;
          v7 = *(v7 + 8);
        }

        while (v7);
        if (!result)
        {
          goto LABEL_15;
        }
      }

      else
      {
        do
        {
          v10 = v8;
          v8 = *v8;
        }

        while (v10 == v8[2]);
        if (v10[2] == v8)
        {
          v9 = v10;
        }

        else
        {
          v9 = v8;
        }

        if (!result)
        {
LABEL_15:
          sub_10011B7C4();
        }
      }

      if (result == a2)
      {
        v12 = result;
        sub_10001E400((a1 + 176), &v12, &v11);
      }

      result = v9;
    }

    while (v9 != v6);
  }

  return result;
}

uint64_t sub_100047D7C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100182778;
  a2[1] = v2;
  return result;
}

uint64_t sub_100047DA4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100047DF0(void **a1)
{
  v1 = a1[3];
  v2 = 8;
  if (v1 > 8)
  {
    v2 = a1[3];
  }

  v3 = v2 + 7;
  if (v3 <= 7)
  {
    sub_10011B8A0();
  }

  v5 = v3 & 0xFFFFFFFFFFFFFFF8;
  v6 = a1[4];
  v7 = v6 * (v3 & 0xFFFFFFFFFFFFFFF8) + 16;
  result = operator new[](v7, &std::nothrow);
  if (result)
  {
    goto LABEL_5;
  }

  if (v6 < 5)
  {
    return 0;
  }

  v6 >>= 1;
  a1[4] = v6;
  v7 = v6 * v5 + 16;
  result = operator new[](v7, &std::nothrow);
  if (result)
  {
LABEL_5:
    v9 = result;
    v10 = a1[6];
    if (v10)
    {
      if (v6 * v5 / v1 >= v10)
      {
        goto LABEL_15;
      }

      v11 = v10 * v1 / v5;
      if (v11 >= 2 * v6)
      {
        v11 = 2 * v6;
      }
    }

    else
    {
      v11 = 2 * v6;
    }

    a1[4] = v11;
LABEL_15:
    sub_100047F64(a1, result, v7 - 16, v5);
    v13 = (a1 + 1);
    v12 = a1[1];
    if (v12 && v12 <= v9)
    {
      v14 = (a1 + 2);
      do
      {
        v15 = v12 + *v14;
        v12 = *(v15 - 2);
        v14 = (v15 - 8);
        if (v12)
        {
          v16 = v12 > v9;
        }

        else
        {
          v16 = 1;
        }
      }

      while (!v16);
      v13 = v15 - 16;
      v17 = *(v15 - 1);
      *(v9 + v7 - 16) = v12;
    }

    else
    {
      *(v9 + v7 - 16) = v12;
      v14 = (a1 + 2);
      v17 = a1[2];
    }

    *(v9 + v7 - 8) = v17;
    *v13 = v9;
    *v14 = v7;
    result = *a1;
    *a1 = **a1;
  }

  return result;
}

void **sub_100047F64(void **result, void *a2, uint64_t a3, unint64_t a4)
{
  v4 = *result;
  if (*result)
  {
    v5 = v4 > a2;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = (a2 + (a3 - a4) / a4 * a4);
    *v6 = v4;
    if (a3 - a4 != (a3 - a4) % a4)
    {
      for (i = (v6 - a4); i != a2; i = (i - a4))
      {
        *(v6 - a4) = v6;
        v6 = i;
      }

      goto LABEL_18;
    }
  }

  else
  {
    do
    {
      result = v4;
      v4 = *v4;
      if (v4)
      {
        v8 = v4 > a2;
      }

      else
      {
        v8 = 1;
      }
    }

    while (!v8);
    v6 = (a2 + (a3 - a4) / a4 * a4);
    *v6 = v4;
    if (a3 - a4 != (a3 - a4) % a4)
    {
      for (j = (v6 - a4); j != a2; j = (j - a4))
      {
        *(v6 - a4) = v6;
        v6 = j;
      }

LABEL_18:
      *a2 = v6;
    }
  }

  *result = a2;
  return result;
}

void sub_100048020(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = **(a1 + 40);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4 = v3 + 328;
  v5 = *(v3 + 336);
  if (v5 != v3 + 328)
  {
    do
    {
      v6 = *(v5 + 16);
      v7 = sub_100016734(*(v6 + 56));
      v8 = v7;
      if (*(v7 + 23) >= 0)
      {
        v9 = *(v7 + 23);
      }

      else
      {
        v9 = *(v7 + 8);
      }

      memset(&v33, 170, sizeof(v33));
      sub_100048378(&v33, v9 + 3);
      if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v33;
      }

      else
      {
        v10 = v33.__r_.__value_.__r.__words[0];
      }

      if (v9)
      {
        if (v8[23] >= 0)
        {
          v11 = v8;
        }

        else
        {
          v11 = *v8;
        }

        memmove(v10, v11, v9);
      }

      *(&v10->__r_.__value_.__l.__data_ + v9) = 2108704;
      v12 = sub_10001C33C(*(v6 + 56));
      v13 = *(v12 + 23);
      if (v13 >= 0)
      {
        v14 = v12;
      }

      else
      {
        v14 = *v12;
      }

      if (v13 >= 0)
      {
        v15 = *(v12 + 23);
      }

      else
      {
        v15 = *(v12 + 8);
      }

      v16 = std::string::append(&v33, v14, v15);
      v17 = v16->__r_.__value_.__r.__words[0];
      v35[0] = v16->__r_.__value_.__l.__size_;
      *(v35 + 7) = *(&v16->__r_.__value_.__r.__words[1] + 7);
      v18 = HIBYTE(v16->__r_.__value_.__r.__words[2]);
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      v19 = *(a2 + 8);
      v20 = *(a2 + 16);
      if (v19 >= v20)
      {
        v23 = 0xAAAAAAAAAAAAAAABLL * ((v19 - *a2) >> 3);
        v24 = v23 + 1;
        if (v23 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_10002C63C();
        }

        v25 = 0xAAAAAAAAAAAAAAABLL * ((v20 - *a2) >> 3);
        if (2 * v25 > v24)
        {
          v24 = 2 * v25;
        }

        if (v25 >= 0x555555555555555)
        {
          v26 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v26 = v24;
        }

        v34[4] = a2;
        if (v26)
        {
          sub_10002E2FC(a2, v26);
        }

        v27 = 24 * v23;
        v28 = v35[0];
        *v27 = v17;
        *(v27 + 8) = v28;
        *(v27 + 15) = *(v35 + 7);
        *(v27 + 23) = v18;
        v22 = 24 * v23 + 24;
        v29 = *(a2 + 8) - *a2;
        v30 = v27 - v29;
        memcpy((v27 - v29), *a2, v29);
        v31 = *a2;
        *a2 = v30;
        *(a2 + 8) = v22;
        v32 = *(a2 + 16);
        *(a2 + 16) = 0;
        v34[2] = v31;
        v34[3] = v32;
        v34[0] = v31;
        v34[1] = v31;
        sub_10002E354(v34);
      }

      else
      {
        v21 = v35[0];
        *v19 = v17;
        *(v19 + 8) = v21;
        *(v19 + 15) = *(v35 + 7);
        *(v19 + 23) = v18;
        v22 = v19 + 24;
      }

      *(a2 + 8) = v22;
      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }

      v5 = *(v5 + 8);
    }

    while (v5 != v4);
  }
}

void sub_10004828C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v16 < 0)
  {
    operator delete(v15);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10002DE40(&__p);
  _Unwind_Resume(a1);
}

void sub_1000482D4(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v3);
  v2 = *(a1 + 32);
  sub_1000336AC(v2);
  *v2 = v3;
  *(v2 + 16) = v4;
  v3 = 0uLL;
  v4 = 0;
  v5 = &v3;
  sub_10002DE40(&v5);
}

uint64_t sub_100048378(uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000173E4();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

uint64_t sub_100048404(uint64_t a1)
{
  v1 = *(a1 + 40);
  v12 = 0xAAAAAAAAAAAAAAAALL;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v2 = *v1;
  sub_10004569C(*v1, *(v1 + 8), &v12);
  v3 = v12;
  if (!v12)
  {
    sub_100045768(v2, *(v1 + 8), &v10);
    v3 = v10;
    v4 = v11;
    v5 = v13;
    v13 = v11;
    if (v5)
    {
      sub_10000786C(v5);
    }

    if (!v3)
    {
      v8 = 0;
      if (!v4)
      {
        return v8;
      }

      goto LABEL_9;
    }
  }

  sub_1000C9234(v3, &v10);
  v6 = v10;
  v7 = &v11->__vftable;
  while (v6 != v7)
  {
    sub_10001EA1C(v2 + 176, v6);
    v6 += 3;
  }

  v14 = &v10;
  sub_10002DE40(&v14);
  v8 = 1;
  v4 = v13;
  if (v13)
  {
LABEL_9:
    sub_10000786C(v4);
  }

  return v8;
}

void sub_100048508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void **a15)
{
  a15 = &a10;
  sub_10002DE40(&a15);
  if (a14)
  {
    sub_10000786C(a14);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100048530(uint64_t a1)
{
  v1 = *(a1 + 40);
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v2 = *v1;
  sub_10004569C(*v1, *(v1 + 8), &v9);
  v3 = v9;
  if (v9)
  {
    goto LABEL_5;
  }

  sub_100045768(v2, *(v1 + 8), &v7);
  v3 = v7;
  v4 = v8;
  v5 = v10;
  v10 = v8;
  if (v5)
  {
    sub_10000786C(v5);
  }

  if (v3)
  {
LABEL_5:
    v3 = (*(*v3 + 40))(v3);
    v4 = v10;
  }

  if (v4)
  {
    sub_10000786C(v4);
  }

  return v3;
}

void sub_100048614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_10000786C(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100048644(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 40);
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v4 = *v3;
  sub_10004569C(*v3, *(v3 + 8), &v9);
  v5 = v9;
  if (!v9)
  {
    sub_100045768(v4, *(v3 + 8), &v11);
    v6 = *(&v9 + 1);
    v7 = v11;
    v9 = v11;
    if (v6)
    {
      v8 = v11;
      sub_10000786C(v6);
      v7 = v8;
    }

    v5 = v7;
  }

  *a2 = 0xAAAAAAAAAAAAAA00;
  *(a2 + 8) = 0;
  sub_10000298C(a2);
  sub_10000298C(a2);
  if (v5)
  {
    sub_10001C33C(v5);
    sub_100016734(v5);
    sub_1000257AC(v10);
  }

  if (*(&v9 + 1))
  {
    sub_10000786C(*(&v9 + 1));
  }
}

void sub_100048C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unsigned __int8 a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, unsigned __int8 a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, unsigned __int8 a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, unsigned __int8 a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  v74 = -160;
  v75 = v72;
  do
  {
    v75 = sub_10003E1D0(v75) - 32;
    v74 += 32;
  }

  while (v74);
  sub_10003E1D0(&a23);
  v76 = &a19;
  v77 = -64;
  do
  {
    v76 = sub_10003E1D0(v76) - 32;
    v77 += 32;
  }

  while (v77);
  sub_10003E1D0(&a35);
  v78 = &a31;
  v79 = -64;
  do
  {
    v78 = sub_10003E1D0(v78) - 32;
    v79 += 32;
  }

  while (v79);
  sub_10003E1D0(&a47);
  v80 = &a43;
  v81 = -64;
  do
  {
    v80 = sub_10003E1D0(v80) - 32;
    v81 += 32;
  }

  while (v81);
  sub_10003E1D0(&a59);
  v82 = &a55;
  v83 = -64;
  do
  {
    v82 = sub_10003E1D0(v82) - 32;
    v83 += 32;
  }

  while (v83);
  sub_10003E1D0(&a71);
  for (i = 32; i != -32; i -= 32)
  {
    sub_10003E1D0(&a63 + i);
  }

  sub_10002C5F4(v71);
  if (a14)
  {
    sub_10000786C(a14);
  }

  _Unwind_Resume(a1);
}

void sub_100048E34(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  sub_100048E80();
}

void sub_100048EDC(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  sub_100048F28();
}

void sub_100048F84(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  sub_100048FD0();
}

__n128 sub_100049040(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(v5);
  v2 = *(a1 + 32);
  result = v5[0];
  v4 = v5[2];
  *(v2 + 16) = v5[1];
  *(v2 + 32) = v4;
  *v2 = result;
  return result;
}

uint64_t *sub_1000490D4(uint64_t **a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v3 = *v1++;
  v2 = v3;
  (*(**(v3 + 80) + 152))(*(v3 + 80), v1);
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v11 = 0xAAAAAAAAAAAAAAAALL;
  sub_100045768(v3, v1, &v10);
  if (v10)
  {
    sub_1000C9234(v10, v9);
    v4 = v9[0];
    v5 = v9[1];
    while (v4 != v5)
    {
      sub_10001EA1C(v2 + 176, v4);
      v4 += 3;
    }

    v12 = v9;
    sub_10002DE40(&v12);
  }

  if (v11)
  {
    sub_10000786C(v11);
  }

  sub_100049210(&v8);
  return sub_1000120B8(&v7);
}

void sub_1000491D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  *(v16 - 48) = &a12;
  sub_10002DE40((v16 - 48));
  if (a16)
  {
    sub_10000786C(a16);
  }

  sub_100049210(&a11);
  sub_1000120B8(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_100049210(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

uint64_t sub_100049308(uint64_t a1)
{
  sub_10000298C((a1 + 24));
  sub_1000048FC((a1 + 32), *(a1 + 24));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100049350(uint64_t result, uint64_t a2)
{
  for (i = (result + 24); ; result = (*(*v4 + 48))(v4, i + 2, i + 5, i + 7))
  {
    i = *i;
    if (!i)
    {
      break;
    }

    v4 = *(a2 + 24);
    if (!v4)
    {
      sub_10002B200();
    }
  }

  return result;
}

void sub_1000493C8(uint64_t a1, __int128 *a2, uint64_t a3)
{
  sub_10002249C(a2, a3, __p);
  __p[6] = __p;
  sub_100049850(a1 + 8, __p);
}

void sub_1000494F0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100049500(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v5 = 0;
    do
    {
      v6 = *(v2 + 39);
      if (v6 >= 0)
      {
        v7 = *(v2 + 39);
      }

      else
      {
        v7 = *(v2 + 24);
      }

      v8 = *(a2 + 23);
      v9 = v8;
      if (v8 < 0)
      {
        v8 = a2[1];
      }

      if (v7 == v8 && (v6 >= 0 ? (v10 = (v2 + 16)) : (v10 = *(v2 + 16)), (v11 = *a2, v9 >= 0) ? (v12 = a2) : (v12 = *a2), !memcmp(v10, v12, v7)))
      {
        v2 = sub_100049D9C((a1 + 8), v2);
        v5 = 1;
      }

      else
      {
        v2 = *v2;
      }
    }

    while (v2);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void *sub_1000495D8(void *a1)
{
  *a1 = off_100182988;
  sub_100049680((a1 + 1));
  return a1;
}

void sub_10004961C(void *a1)
{
  *a1 = off_100182988;
  sub_100049680((a1 + 1));

  operator delete();
}

uint64_t sub_100049680(uint64_t a1)
{
  sub_1000496BC(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1000496BC(uint64_t a1, unsigned __int8 *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_10000298C(v2 + 56);
      sub_1000048FC(v2 + 8, v2[56]);
      sub_10000298C(v2 + 40);
      sub_1000048FC(v2 + 6, v2[40]);
      if (v2[39] < 0)
      {
        operator delete(*(v2 + 2));
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_100049750(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100182A00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

BOOL sub_1000497CC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = **a2;
  v7 = *(*a2 + 8) - v6;
  return v7 == *(v5 + 8) - *v5 && !memcmp(v6, *v5, v7) && **(a2 + 8) == *a3[1] && **(a2 + 16) == *a3[2];
}

void sub_100049B44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    sub_100049D10(v11 + 8, a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_100049C28(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100049D10(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_100049C44(uint64_t a1, __int128 **a2)
{
  v3 = sub_100049C98(a1, *a2);
  *(v3 + 9) = 0;
  *(v3 + 56) = 0u;
  *(v3 + 40) = 0u;
  v4 = v3 + 40;
  sub_10000298C(v3 + 40);
  sub_10000298C(v4);
  *(a1 + 56) = 0;
  return a1;
}

_BYTE *sub_100049C98(_BYTE *__dst, __int128 *a2)
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

  sub_10000FF70(__dst + 24, a2 + 24);
  return __dst;
}

void sub_100049CF4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100049D10(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_10000298C((a2 + 56));
    sub_1000048FC((a2 + 64), *(a2 + 56));
    sub_10000298C((a2 + 40));
    sub_1000048FC((a2 + 48), *(a2 + 40));
    if (*(a2 + 39) < 0)
    {
      operator delete(*(a2 + 16));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t sub_100049D9C(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_100049E14(a1, a2, &v5);
  v3 = v5;
  v5 = 0;
  if (v3)
  {
    sub_100049D10(&v6, v3);
  }

  return v2;
}

void *sub_100049E14@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
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

void sub_100049F50(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_1000496BC(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void sub_100049FAC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (os_log_type_enabled(qword_100192D60, OS_LOG_TYPE_DEBUG))
  {
    sub_10011B8F8(a2, a3);
  }

  sub_10004A3F0();
}

uint64_t sub_10004A068(uint64_t a1, uint64_t *a2, __int128 *a3, void *a4)
{
  v7 = *a2;
  v6 = a2[1];
  *a1 = off_100182A50;
  *(a1 + 8) = v7;
  *(a1 + 16) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a3 + 23) < 0)
  {
    sub_1000078D8((a1 + 24), *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    *(a1 + 40) = *(a3 + 2);
    *(a1 + 24) = v8;
  }

  *(a1 + 48) = *a4;
  return a1;
}

void sub_10004A0F4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10004A10C(uint64_t a1)
{
  *a1 = off_100182A50;
  if (os_log_type_enabled(qword_100192D60, OS_LOG_TYPE_DEBUG))
  {
    sub_10011B984(a1);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10004A19C(uint64_t a1)
{
  sub_10004A10C(a1);

  operator delete();
}

void sub_10004A1D4(uint64_t a1, uint64_t *a2)
{
  v5[0] = 0xAAAAAAAAAAAAAA00;
  v5[1] = 0;
  sub_10000298C(v5);
  sub_10000298C(v5);
  v3 = *a2;
  sub_100006C9C(v4);
}

void sub_10004A3A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10000786C(v6);
  sub_10002C5F4(va);
  _Unwind_Resume(a1);
}

void *sub_10004A474(void *a1, uint64_t *a2, __int128 *a3, void *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100182AA0;
  v6 = -86;
  sub_10004A5BC(&v6, (a1 + 3), a2, a3, a4);
  return a1;
}

void sub_10004A540(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100182AA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10004A5BC(uint64_t a1, uint64_t a2, uint64_t *a3, __int128 *a4, void *a5)
{
  v5 = a3[1];
  v6[0] = *a3;
  v6[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10004A068(a2, v6, a4, a5);
  if (v5)
  {

    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_10004A678(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10004A73C(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, void *a5)
{
  *a1 = off_100182C48;
  *(a1 + 8) = off_100182C80;
  *(a1 + 16) = off_100182CB0;
  v10 = dispatch_queue_create("analyticsd.EventBrokerQueue", 0);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = v10;
  if (v10)
  {
    v11 = v10;
    dispatch_retain(v10);
    dispatch_release(v11);
  }

  *a1 = off_100182AF0;
  *(a1 + 8) = off_100182B40;
  *(a1 + 16) = off_100182B70;
  *(a1 + 48) = *a2;
  v12 = a2[1];
  *(a1 + 56) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *a3;
  v13 = a3[1];
  *(a1 + 72) = v13;
  *(a1 + 64) = v14;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v16 = *a4;
  v15 = a4[1];
  *(a1 + 104) = v15;
  *(a1 + 96) = v16;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 112) = *a5;
  v17 = a5[1];
  *(a1 + 120) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 1065353216;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  operator new();
}

void sub_10004A97C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  a9 = (v9 + 192);
  sub_100030E9C(&a9);
  sub_10004C36C(&a9);
  sub_10004C278(v14);
  v16 = *(v9 + 120);
  if (v16)
  {
    sub_10000786C(v16);
  }

  sub_10011BA24(v13, v9, v12, v11);
  sub_100044430(v10);
  _Unwind_Resume(a1);
}

void sub_10004A9DC(uint64_t a1, uint64_t *a2)
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

void sub_10004AB14(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10004AB24(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  v4 = a4;
  v6 = *(a3 + 23);
  if (v6 < 0)
  {
    if (*(a3 + 8) != 1)
    {
      goto LABEL_9;
    }

    v7 = *a3;
  }

  else
  {
    v7 = a3;
    if (v6 != 1)
    {
      goto LABEL_9;
    }
  }

  if (*v7 == 42)
  {
    v4 = 2;
  }

  else
  {
    v4 = a4;
  }

LABEL_9:
  v9 = *a2;
  v8 = a2[1];
  v10[3] = a1;
  v10[4] = v9;
  v10[5] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
    LOBYTE(v6) = *(a3 + 23);
  }

  if ((v6 & 0x80) != 0)
  {
    sub_1000078D8(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    __p[2] = *(a3 + 16);
  }

  v12 = v4;
  v10[0] = 0xAAAAAAAAAAAAAAAALL;
  v10[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v10, (a1 + 24));
  operator new();
}