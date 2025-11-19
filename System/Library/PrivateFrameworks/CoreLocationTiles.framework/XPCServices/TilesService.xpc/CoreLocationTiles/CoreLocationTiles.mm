void sub_100000EA8()
{
  sub_100003374(v2);
  sub_100003374((v0 + 5));
  sub_100003328(v1, 0);
  sub_100003158(v0);
}

void CLTilesService::startService(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a1 + 24))
    {
      operator new();
    }

    sub_1000064F4();
  }

  sub_100006664();
}

void sub_1000010A0()
{
  sub_100003374(v2);
  sub_100003374((v0 + 5));
  sub_100003328(v1, 0);
  sub_100003158(v0);
}

void sub_1000011E8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = *a2;
  *a2 = 0;
  sub_1000033F8(&v4, v3);
}

void sub_1000014A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, uint64_t a30, std::__shared_weak_count *a31)
{
  if (v33)
  {
    sub_1000030EC(v33);
  }

  if (a13)
  {
    sub_1000030EC(a13);
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
      sub_1000030EC(v38);
    }

    _Unwind_Resume(exception_object);
  }

LABEL_18:
  std::__shared_weak_count::__release_weak(v31);
  goto LABEL_19;
}

void sub_100001560(void *a1, uint64_t *a2)
{
  v2 = a1[4];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3321888768;
  v8 = sub_10000165C;
  v9 = &unk_10000C378;
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
    sub_1000030EC(v14);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_100001638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_1000030EC(a18);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000165C(void *a1)
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

        CLTilesService::handleMessage(v3, &v9, v8);
        if (v7)
        {
          sub_1000030EC(v7);
        }

        if (v10)
        {
          sub_1000030EC(v10);
        }
      }

      sub_1000030EC(v5);
    }
  }
}

void sub_100001704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (v13)
  {
    sub_1000030EC(v13);
  }

  if (a12)
  {
    sub_1000030EC(a12);
  }

  sub_1000030EC(v12);
  _Unwind_Resume(a1);
}

void CLTilesService::handleMessage(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  v6 = objc_alloc_init(NSAutoreleasePool);
  if (!*(a1 + 120))
  {
    *(a1 + 120) = os_transaction_create();
  }

  sub_100003580((a1 + 40), a2);
  v7 = CLConnectionMessage::name(*a3);
  if (*(v7 + 23) < 0)
  {
    sub_1000031DC(__s1, *v7, *(v7 + 8));
  }

  else
  {
    v8 = *v7;
    v26 = *(v7 + 16);
    *__s1 = v8;
  }

  v9 = _os_activity_create(&_mh_execute_header, "CL: #TilesService handling message", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v9, &state);

  if (qword_1000108A0 != -1)
  {
    sub_1000067D4();
  }

  v10 = qword_1000108A8;
  if (os_log_type_enabled(qword_1000108A8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = __s1;
    if (v26 < 0)
    {
      v11 = __s1[0];
    }

    *buf = 68289538;
    *&buf[4] = 0;
    v28 = 2082;
    v29 = "";
    v30 = 2082;
    v31 = "activity";
    v32 = 2082;
    v33 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TilesService handling message, event:%{public, location:escape_only}s, messageName:%{public, location:escape_only}s}", buf, 0x26u);
  }

  if (SHIBYTE(v26) < 0 && __s1[1] == 34)
  {
    if (!memcmp(__s1[0], "kCLConnectionDownloadAndDecompress", 0x22uLL))
    {
      v12 = *a2;
      v13 = a2[1];
      v23[0] = v12;
      v23[1] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = *a3;
      v15 = *(a3 + 8);
      v22[0] = v14;
      v22[1] = v15;
      if (v15)
      {
        atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
      }

      CLTilesService::handleDownloadRequest(a1, v23, v22);
      if (v15)
      {
        sub_1000030EC(v15);
      }

LABEL_38:
      if (v13)
      {
        sub_1000030EC(v13);
      }

      goto LABEL_40;
    }
  }

  else if (SHIBYTE(v26) < 0 && __s1[1] == 40 && !memcmp(__s1[0], "kCLConnectionDownloadAndDecompressCancel", 0x28uLL))
  {
    v20 = *a2;
    v13 = a2[1];
    v21[0] = v20;
    v21[1] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    CLTilesService::handleDownloadRequestCancellation(a1, v21);
    goto LABEL_38;
  }

  if (qword_1000108A0 != -1)
  {
    sub_1000067D4();
  }

  v16 = qword_1000108A8;
  if (os_log_type_enabled(qword_1000108A8, OS_LOG_TYPE_FAULT))
  {
    v17 = __s1;
    if (v26 < 0)
    {
      v17 = __s1[0];
    }

    *buf = 68289282;
    v28 = 2082;
    v29 = "";
    v30 = 2082;
    v31 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#TilesService received unknown message, messageName:%{public, location:escape_only}s}", buf, 0x1Cu);
    if (qword_1000108A0 != -1)
    {
      sub_1000067D4();
    }
  }

  v18 = qword_1000108A8;
  if (os_signpost_enabled(qword_1000108A8))
  {
    v19 = __s1;
    if (v26 < 0)
    {
      v19 = __s1[0];
    }

    *buf = 68289282;
    v28 = 2082;
    v29 = "";
    v30 = 2082;
    v31 = v19;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#TilesService received unknown message", "{msg%{public}.0s:#TilesService received unknown message, messageName:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

LABEL_40:
  os_activity_scope_leave(&state);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__s1[0]);
  }
}

void *sub_100001B74(void *result, void *a2)
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

void sub_100001BA8(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_1000030EC(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void *sub_100001BF8(void *result, void *a2)
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

void sub_100001C2C(uint64_t a1)
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

void sub_100001C7C(void *a1)
{
  v1 = a1[4];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3321888768;
  v6 = sub_100001D48;
  v7 = &unk_10000C3D8;
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

void sub_100001D30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_100001D48(void *a1)
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
        CLTilesService::handleConnectionDisconnection(v3, &v6);
        if (v7)
        {
          sub_1000030EC(v7);
        }
      }

      sub_1000030EC(v5);
    }
  }
}

void sub_100001DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1000030EC(a10);
  }

  sub_1000030EC(v10);
  _Unwind_Resume(a1);
}

void CLTilesService::handleConnectionDisconnection(uint64_t a1, uint64_t *a2)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  if (qword_1000108A0 != -1)
  {
    sub_1000067FC();
  }

  v4 = qword_1000108A8;
  if (os_log_type_enabled(qword_1000108A8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    v6 = *(a1 + 64);
    *buf = 68289538;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2050;
    v15 = v5;
    v16 = 2050;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TilesService removing connection from activeConnections due to client disconnection, connection:%{public}p, numActiveConnections:%{public}lu}", buf, 0x26u);
  }

  sub_100003AC4((a1 + 40), a2);
  v7 = a2[1];
  v8 = *a2;
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  CLTilesService::removeDownloadRequestForConnection(a1, &v8);
  if (v9)
  {
    sub_1000030EC(v9);
  }

  if (!*(a1 + 64))
  {

    *(a1 + 120) = 0;
  }
}

void sub_100001F34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1000030EC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100001F54(uint64_t result, uint64_t a2)
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

void sub_100001F70(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100001F80(void *a1)
{
  v1 = a1[4];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3321888768;
  v6 = sub_10000204C;
  v7 = &unk_10000C3D8;
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

void sub_100002034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000204C(void *a1)
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
        CLTilesService::handleConnectionDisconnection(v3, &v6);
        if (v7)
        {
          sub_1000030EC(v7);
        }
      }

      sub_1000030EC(v5);
    }
  }
}

void sub_1000020CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1000030EC(a10);
  }

  sub_1000030EC(v10);
  _Unwind_Resume(a1);
}

void CLTilesService::handleDownloadRequest(uint64_t a1, uint64_t *a2, CLConnectionMessage **a3)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  v6 = *a2;
  sub_100002A0C(buf, "com.apple.location.tilesservice.downloads");
  isEntitled = CLConnection::isEntitled();
  v8 = isEntitled;
  if ((v37[15] & 0x80000000) == 0)
  {
    if (isEntitled)
    {
      goto LABEL_3;
    }

LABEL_19:
    if (qword_1000108A0 != -1)
    {
      sub_1000067D4();
    }

    v28 = qword_1000108A8;
    if (os_log_type_enabled(qword_1000108A8, OS_LOG_TYPE_ERROR))
    {
      v29 = *a2;
      *buf = 68289282;
      *&buf[4] = 0;
      *v37 = 2082;
      *&v37[2] = "";
      *&v37[10] = 2050;
      *&v37[12] = v29;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#TilesService connection lacks proper entitlement., connection:%{public}p}", buf, 0x1Cu);
      if (qword_1000108A0 != -1)
      {
        sub_1000067D4();
      }
    }

    v30 = qword_1000108A8;
    if (os_signpost_enabled(qword_1000108A8))
    {
      v31 = *a2;
      *buf = 68289282;
      *&buf[4] = 0;
      *v37 = 2082;
      *&v37[2] = "";
      *&v37[10] = 2050;
      *&v37[12] = v31;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#TilesService connection lacks proper entitlement.", "{msg%{public}.0s:#TilesService connection lacks proper entitlement., connection:%{public}p}", buf, 0x1Cu);
    }

    v32 = [NSError errorWithDomain:@"kCLTileErrorDomain" code:3 userInfo:0];
    v50 = @"kCLConnectionDownloadAndDecompressErrorKey";
    v51 = v32;
    *buf = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
    v33 = *a2;
    sub_100003D70();
  }

  operator delete(*buf);
  if ((v8 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_3:
  v9 = *a3;
  v10 = objc_opt_class();
  v11 = [NSSet setWithObjects:v10, objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(v9, v11);
  v13 = DictionaryOfClasses;
  if (!DictionaryOfClasses)
  {
    sub_100006AF0();
  }

  v14 = [DictionaryOfClasses objectForKey:@"kCLConnectionDownloadAndDecompressDestinationURLKey"];
  if (!v14)
  {
    sub_100006980();
  }

  v15 = [v13 objectForKey:@"kCLConnectionDownloadAndDecompressRequestKey"];
  if (!v15)
  {
    sub_100006810();
  }

  v16 = [[CLTileDownloadRequest alloc] initWithQueue:*(a1 + 24)];
  v17 = v16;
  v18 = a2[1];
  *buf = *a2;
  *v37 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  *&v37[8] = v16;
  sub_100003F34((a1 + 80), buf);
  if (*v37)
  {
    sub_1000030EC(*v37);
  }

  if (qword_1000108A0 != -1)
  {
    sub_1000067D4();
  }

  v19 = qword_1000108A8;
  if (os_log_type_enabled(qword_1000108A8, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *a2;
    [v15 timeoutInterval];
    v22 = v21;
    v23 = [v15 allowsCellularAccess];
    v24 = [objc_msgSend(objc_msgSend(v15 "URL")];
    v25 = *(a1 + 104);
    *buf = 68290819;
    *v37 = 2082;
    *&v37[2] = "";
    *&v37[10] = 2050;
    *&v37[12] = v20;
    v38 = 2050;
    v39 = v22;
    v40 = 1026;
    v41 = v23;
    v42 = 2082;
    v43 = v24;
    v44 = 2114;
    v45 = v15;
    v46 = 2113;
    v47 = v14;
    v48 = 2050;
    v49 = v25;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TilesService starting download request, connection:%{public}p, timeout:%{public}f, allowsCellular:%{public}hhd, source:%{public, location:escape_only}s, request:%{public, location:escape_only}@, destination:%{private, location:escape_only}@, numCurrentDownloads:%{public}lu}", buf, 0x54u);
  }

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3321888768;
  v34[2] = sub_100002AC4;
  v34[3] = &unk_10000C458;
  v27 = *a2;
  v26 = a2[1];
  v34[4] = a1;
  v34[5] = v27;
  v35 = v26;
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [(CLTileDownloadRequest *)v17 downloadWithURLRequest:v15 withDecompressionURL:v14 completionHandler:v34];
  if (v35)
  {
    sub_1000030EC(v35);
  }
}

void sub_10000259C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a17)
  {
    sub_1000030EC(a17);
  }

  _Unwind_Resume(exception_object);
}

void CLTilesService::handleDownloadRequestCancellation(uint64_t a1, uint64_t *a2)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  v4 = *a2;
  sub_100002A0C(&__p, "com.apple.location.tilesservice.downloads");
  isEntitled = CLConnection::isEntitled();
  v6 = isEntitled;
  if ((SBYTE3(v21) & 0x80000000) == 0)
  {
    if (isEntitled)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (qword_1000108A0 != -1)
    {
      sub_1000067D4();
    }

    v8 = qword_1000108A8;
    if (os_log_type_enabled(qword_1000108A8, OS_LOG_TYPE_ERROR))
    {
      v9 = *a2;
      __p = 68289282;
      v18 = 2082;
      v19 = "";
      v20 = 2050;
      v21 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#TilesService connection lacks proper entitlement., connection:%{public}p}", &__p, 0x1Cu);
      if (qword_1000108A0 != -1)
      {
        sub_1000067D4();
      }
    }

    v10 = qword_1000108A8;
    if (os_signpost_enabled(qword_1000108A8))
    {
      v11 = *a2;
      __p = 68289282;
      v18 = 2082;
      v19 = "";
      v20 = 2050;
      v21 = v11;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#TilesService connection lacks proper entitlement.", "{msg%{public}.0s:#TilesService connection lacks proper entitlement., connection:%{public}p}", &__p, 0x1Cu);
    }

    v15 = @"kCLConnectionDownloadAndDecompressErrorKey";
    v16 = [NSError errorWithDomain:@"kCLTileErrorDomain" code:3 userInfo:0];
    __p = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v12 = *a2;
    sub_100003D70();
  }

  operator delete(__p);
  if ((v6 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v7 = a2[1];
  v13 = *a2;
  v14 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  CLTilesService::removeDownloadRequestForConnection(a1, &v13);
  if (v14)
  {
    sub_1000030EC(v14);
  }
}

void sub_10000285C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a13)
  {
    sub_1000030EC(a13);
  }

  _Unwind_Resume(exception_object);
}

void CLTilesService::removeDownloadRequestForConnection(uint64_t a1, uint64_t *a2)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  v4 = sub_100003AFC((a1 + 80), a2);
  if (v4)
  {
    v5 = v4;
    v6 = v4[3];
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = v4[4];
    if (qword_1000108A0 != -1)
    {
      sub_1000067FC();
    }

    v8 = qword_1000108A8;
    if (os_log_type_enabled(qword_1000108A8, OS_LOG_TYPE_DEBUG))
    {
      v9 = *a2;
      v10[0] = 68289282;
      v10[1] = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2050;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#TilesService removing connection from fDownloadRequestsMap, connection:%{public}p}", v10, 0x1Cu);
    }

    [v7 cancel];

    sub_100003BE8((a1 + 80), v5);
    if (v6)
    {
      sub_1000030EC(v6);
    }
  }
}

_BYTE *sub_100002A0C(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100003280();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void sub_100002AC4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a1[4];
  v7 = a1[5];
  v6 = a1[6];
  v8 = v7;
  v9 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  CLTilesService::handleDownloadRequestCallback(v5, &v8, a2, a3, a4);
  if (v9)
  {
    sub_1000030EC(v9);
  }
}

void sub_100002B28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1000030EC(a10);
  }

  _Unwind_Resume(exception_object);
}

void CLTilesService::handleDownloadRequestCallback(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  if (sub_100003AFC((a1 + 40), a2))
  {
    if (a5)
    {
      v16 = +[NSMutableDictionary dictionary];
      [v16 setObject:a5 forKeyedSubscript:@"kCLConnectionDownloadAndDecompressErrorKey"];
      if (a4)
      {
        [v16 setObject:a4 forKeyedSubscript:@"kCLConnectionDownloadAndDecompressURLResponseKey"];
      }

      sub_1000041CC();
    }

    v19[0] = @"kCLConnectionDownloadAndDecompressFileKey";
    v19[1] = @"kCLConnectionDownloadAndDecompressURLResponseKey";
    v20[0] = a3;
    v20[1] = a4;
    [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
    sub_100004310();
  }

  if (qword_1000108A0 != -1)
  {
    sub_1000067FC();
  }

  v10 = qword_1000108A8;
  if (os_log_type_enabled(qword_1000108A8, OS_LOG_TYPE_ERROR))
  {
    v11 = *a2;
    *buf = 68290051;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v22 = 2050;
    v23 = v11;
    v24 = 2113;
    v25 = a3;
    v26 = 2113;
    v27 = a4;
    v28 = 2113;
    v29 = [a5 description];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#TilesService dropping response to connection due to it not being active anymore, connection:%{public}p, decompressedFile:%{private, location:escape_only}@, response:%{private, location:escape_only}@, error:%{private, location:escape_only}@}", buf, 0x3Au);
    if (qword_1000108A0 != -1)
    {
      sub_1000067D4();
    }
  }

  v12 = qword_1000108A8;
  if (os_signpost_enabled(qword_1000108A8))
  {
    v13 = *a2;
    v14 = [a5 description];
    *buf = 68290051;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v22 = 2050;
    v23 = v13;
    v24 = 2113;
    v25 = a3;
    v26 = 2113;
    v27 = a4;
    v28 = 2113;
    v29 = v14;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#TilesService dropping response to connection due to it not being active anymore", "{msg%{public}.0s:#TilesService dropping response to connection due to it not being active anymore, connection:%{public}p, decompressedFile:%{private, location:escape_only}@, response:%{private, location:escape_only}@, error:%{private, location:escape_only}@}", buf, 0x3Au);
  }

  v15 = a2[1];
  v17 = *a2;
  v18 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  CLTilesService::removeDownloadRequestForConnection(a1, &v17);
  if (v18)
  {
    sub_1000030EC(v18);
  }
}

uint64_t sub_100002FD8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100002FF4(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_1000030EC(v1);
  }
}

void sub_10000303C()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_100003090(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10000C4D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1000030EC(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void *sub_1000031DC(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_100003280();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void sub_100003298(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1000032F4(exception, a1);
}

std::logic_error *sub_1000032F4(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

CLConnectionServer *sub_100003328(CLConnectionServer **a1, CLConnectionServer *a2)
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

uint64_t sub_100003374(uint64_t a1)
{
  sub_1000033B0(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1000033B0(int a1, void *__p)
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
        sub_1000030EC(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_100003460(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    CLConnection::deferredDelete(v1);
  }

  __cxa_rethrow();
}

void sub_100003490(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

CLConnection *sub_1000034C8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return CLConnection::deferredDelete(result);
  }

  return result;
}

uint64_t sub_1000034EC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_10000352C(uint64_t a1, uint64_t a2)
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

void *sub_100003580(void *a1, void *a2)
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

void sub_100003810(uint64_t a1, size_t __n)
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

      sub_100003900(a1, prime);
    }
  }
}

void sub_100003900(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_10000303C();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_100003A64(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[3];
    if (v3)
    {
      sub_1000030EC(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *sub_100003AC4(void *a1, void *a2)
{
  result = sub_100003AFC(a1, a2);
  if (result)
  {
    sub_100003BE8(a1, result);
    return 1;
  }

  return result;
}

void *sub_100003AFC(void *a1, void *a2)
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

uint64_t sub_100003BE8(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_100003C34(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    sub_100003A64(&v6, v3);
  }

  return v2;
}

void *sub_100003C34@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
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

void *sub_100003DE4(void *a1, char *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10000C5C0;
  sub_100003EC0((a1 + 3), a2, a3);
  return a1;
}

void sub_100003E60(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10000C5C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100003EC0(uint64_t a1, char *a2, uint64_t *a3)
{
  sub_100002A0C(&__p, a2);
  v5 = *a3;
  CLConnectionMessage::CLConnectionMessage();
  if (v8 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_100003F18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100003F34(void *a1, void *a2)
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

void *sub_100004240(void *a1, char *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10000C5C0;
  sub_10000429C((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_10000429C(uint64_t a1, char *a2, uint64_t *a3)
{
  sub_100002A0C(&__p, a2);
  v5 = *a3;
  CLConnectionMessage::CLConnectionMessage();
  if (v8 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_1000042F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100004384(void *a1, char *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10000C5C0;
  sub_1000043E0((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_1000043E0(uint64_t a1, char *a2, uint64_t *a3)
{
  sub_100002A0C(&__p, a2);
  v5 = *a3;
  CLConnectionMessage::CLConnectionMessage();
  if (v8 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_100004438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100004480(void *a1, int a2, int a3, int a4, const char *a5, const char *a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_signpost_emit_with_name_impl(a1, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, a5, a6, &buf, 0x26u);
}

void sub_1000044D8(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_FAULT, a4, &buf, 0x26u);
}

void sub_1000044F8(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_INFO, a4, &buf, 0x26u);
}

BOOL sub_100004518()
{
  v1 = qword_1000108A8;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

BOOL sub_100004538()
{
  v2 = *(v0 + 2216);

  return os_log_type_enabled(v2, OS_LOG_TYPE_INFO);
}

BOOL sub_10000456C()
{
  v2 = *(v0 + 2216);

  return os_signpost_enabled(v2);
}

void sub_1000045B0(id a1)
{
  v1[0] = @"gsp10-ssl.apple.com";
  v2[0] = +[NSNull null];
  v1[1] = @"gs-loc.apple.com";
  v2[1] = +[NSNull null];
  v2[2] = @"1.2.840.113635.100.6.27.35";
  v1[2] = @"iphone-ld.apple.com";
  v1[3] = @"configuration.apple.com";
  v2[3] = +[NSNull null];
  v1[4] = @"cl5.apple.com";
  v2[4] = +[NSNull null];
  v1[5] = @"cl4.apple.com";
  v2[5] = +[NSNull null];
  v1[6] = @"cl3.apple.com";
  v2[6] = +[NSNull null];
  v1[7] = @"cl2.apple.com";
  v2[7] = +[NSNull null];
  v1[8] = @"ingest.apple-studies.com";
  v2[8] = +[NSNull null];
  v1[9] = @"ingest.stg.apple-studies.com";
  v2[9] = +[NSNull null];
  qword_100011288 = [NSDictionary dictionaryWithObjects:v2 forKeys:v1 count:10];
}

uint64_t getSharedSessionInQueue(NSObject *a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004E94;
  block[3] = &unk_10000C650;
  block[4] = a1;
  if (qword_100011298 != -1)
  {
    dispatch_once(&qword_100011298, block);
  }

  if (qword_1000112A0 != a1)
  {
    sub_100006E70(a1);
  }

  return qword_100011290;
}

NSURLSession *sub_100004E94(uint64_t a1)
{
  v2 = +[NSURLSessionConfiguration defaultSessionConfiguration];
  v3 = objc_alloc_init(NSOperationQueue);
  [v3 setUnderlyingQueue:*(a1 + 32)];
  qword_1000112A0 = *(a1 + 32);
  v4 = [NSURLSession sessionWithConfiguration:v2 delegate:objc_alloc_init(CLTileDownloadTaskDelegate) delegateQueue:v3];
  qword_100011290 = v4;

  return v4;
}

uint64_t decompress(const char *a1, const char *a2)
{
  v4 = malloc_type_malloc(0x4000uLL, 0x100004077774924uLL);
  v5 = &CLCertificatePinningHelper__metaData;
  v6 = &CLCertificatePinningHelper__metaData;
  if (!v4)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v11 = 0;
    goto LABEL_50;
  }

  v7 = v4;
  v50 = 0;
  v8 = [+[NSFileManager defaultManager](NSFileManager attributesOfItemAtPath:"attributesOfItemAtPath:error:" error:[NSString stringWithUTF8String:a1], &v50];
  if (v50)
  {
    if (qword_1000108A0 != -1)
    {
      sub_1000070C4();
    }

    v9 = qword_1000108A8;
    if (os_log_type_enabled(qword_1000108A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289538;
      *&buf[4] = 0;
      v52 = 2082;
      v53 = "";
      v54 = 2082;
      v55 = a1;
      v56 = 2114;
      *v57 = v50;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#TilesService, attributesOfItemAtPath returned an error, file_path_from:%{public, location:escape_only}s, attributesError:%{public, location:escape_only}@}", buf, 0x26u);
      if (qword_1000108A0 != -1)
      {
        sub_1000070C4();
      }
    }

    v10 = qword_1000108A8;
    if (os_signpost_enabled(qword_1000108A8))
    {
      *buf = 68289538;
      *&buf[4] = 0;
      v52 = 2082;
      v53 = "";
      v54 = 2082;
      v55 = a1;
      v56 = 2114;
      *v57 = v50;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#TilesService, attributesOfItemAtPath returned an error", "{msg%{public}.0s:#TilesService, attributesOfItemAtPath returned an error, file_path_from:%{public, location:escape_only}s, attributesError:%{public, location:escape_only}@}", buf, 0x26u);
    }

    v11 = 0;
    v12 = 0;
    v5 = &CLCertificatePinningHelper__metaData;
    goto LABEL_47;
  }

  v16 = [-[NSDictionary objectForKey:](v8 objectForKey:{NSFileSize), "unsignedLongLongValue"}];
  if (!v16)
  {
    if (qword_1000108A0 != -1)
    {
      sub_1000070C4();
    }

    v32 = qword_1000108A8;
    if (os_log_type_enabled(qword_1000108A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289282;
      v52 = 2082;
      v53 = "";
      v54 = 2082;
      v55 = a1;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#TilesService, file is empty or inaccessible, file_path_from:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1000108A0 != -1)
      {
        sub_1000070C4();
      }
    }

    v33 = qword_1000108A8;
    if (os_signpost_enabled(qword_1000108A8))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      v52 = 2082;
      v53 = "";
      v54 = 2082;
      v55 = a1;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#TilesService, file is empty or inaccessible", "{msg%{public}.0s:#TilesService, file is empty or inaccessible, file_path_from:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    v11 = 0;
    goto LABEL_46;
  }

  v11 = v16;
  if (qword_1000108A0 != -1)
  {
    sub_1000070C4();
  }

  v17 = qword_1000108A8;
  if (os_log_type_enabled(qword_1000108A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68290050;
    v52 = 2082;
    v53 = "";
    v54 = 2082;
    v55 = a1;
    v56 = 2082;
    *v57 = a2;
    *&v57[8] = 2050;
    *&v57[10] = v11;
    *&v57[18] = 1026;
    *&v57[20] = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#TilesService, file_path_from:%{public, location:escape_only}s, file_path_to:%{public, location:escape_only}s, fileSize:%{public}llu, isOK:%{public}hhd}", buf, 0x36u);
  }

  v18 = fopen(a2, "wb");
  if (!v18)
  {
    if (qword_1000108A0 != -1)
    {
      sub_1000070C4();
    }

    v34 = qword_1000108A8;
    if (os_log_type_enabled(qword_1000108A8, OS_LOG_TYPE_FAULT))
    {
      v35 = *__error();
      *buf = 68289538;
      *&buf[4] = 0;
      v52 = 2082;
      v53 = "";
      v54 = 2082;
      v55 = a2;
      v56 = 1026;
      *v57 = v35;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#TilesService, can't open file_path_to, file_path_to:%{public, location:escape_only}s, errno:%{public}d}", buf, 0x22u);
      if (qword_1000108A0 != -1)
      {
        sub_1000070C4();
      }
    }

    v36 = qword_1000108A8;
    if (os_signpost_enabled(qword_1000108A8))
    {
      v37 = *__error();
      *buf = 68289538;
      *&buf[4] = 0;
      v52 = 2082;
      v53 = "";
      v54 = 2082;
      v55 = a2;
      v56 = 1026;
      *v57 = v37;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v36, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#TilesService, can't open file_path_to", "{msg%{public}.0s:#TilesService, can't open file_path_to, file_path_to:%{public, location:escape_only}s, errno:%{public}d}", buf, 0x22u);
    }

LABEL_46:
    v12 = 0;
    goto LABEL_47;
  }

  v12 = v18;
  v19 = gzopen(a1, "rb");
  if (v19)
  {
    v20 = v19;
    v14 = 0;
    v15 = 0;
    if (gzeof(v19))
    {
LABEL_20:
      v13 = 1;
    }

    else
    {
      while (1)
      {
        v22 = gzread(v20, v7, 0x4000u);
        v23 = v22;
        if (v22 <= 0)
        {
          if (qword_1000108A0 != -1)
          {
            sub_1000070C4();
          }

          v24 = qword_1000108A8;
          if (os_log_type_enabled(qword_1000108A8, OS_LOG_TYPE_FAULT))
          {
            v25 = *__error();
            *buf = 68289794;
            v52 = 2082;
            v53 = "";
            v54 = 2082;
            v55 = a1;
            v56 = 1026;
            *v57 = v25;
            *&v57[4] = 1026;
            *&v57[6] = v23;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#TilesService, error reading source file, file_path_from:%{public, location:escape_only}s, errno:%{public}d, read:%{public}d}", buf, 0x28u);
            if (qword_1000108A0 != -1)
            {
              sub_1000070C4();
            }
          }

          v26 = qword_1000108A8;
          if (os_signpost_enabled(qword_1000108A8))
          {
            v27 = *__error();
            *buf = 68289794;
            v52 = 2082;
            v53 = "";
            v54 = 2082;
            v55 = a1;
            v56 = 1026;
            *v57 = v27;
            *&v57[4] = 1026;
            *&v57[6] = v23;
            v28 = "#TilesService, error reading source file";
            v29 = "{msg%{public}.0s:#TilesService, error reading source file, file_path_from:%{public, location:escape_only}s, errno:%{public}d, read:%{public}d}";
            v30 = v26;
            v31 = 40;
LABEL_73:
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v28, v29, buf, v31);
            goto LABEL_74;
          }

          goto LABEL_74;
        }

        v15 += v22;
        v21 = fwrite(v7, 1uLL, v22, v12);
        if (v21 != v23)
        {
          break;
        }

        v14 += v23;
        v6 = &CLCertificatePinningHelper__metaData;
        if (gzeof(v20))
        {
          goto LABEL_20;
        }
      }

      v45 = v21;
      if (qword_1000108A0 != -1)
      {
        sub_1000070C4();
      }

      v46 = qword_1000108A8;
      if (os_log_type_enabled(qword_1000108A8, OS_LOG_TYPE_FAULT))
      {
        v47 = *__error();
        *buf = 68289794;
        v52 = 2082;
        v53 = "";
        v54 = 2082;
        v55 = a2;
        v56 = 1026;
        *v57 = v47;
        *&v57[4] = 2050;
        *&v57[6] = v45;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#TilesService, can't write to file_path_to, file_path_to:%{public, location:escape_only}s, errno:%{public}d, write:%{public}llu}", buf, 0x2Cu);
        if (qword_1000108A0 != -1)
        {
          sub_1000070C4();
        }
      }

      v48 = qword_1000108A8;
      if (os_signpost_enabled(qword_1000108A8))
      {
        v49 = *__error();
        *buf = 68289794;
        v52 = 2082;
        v53 = "";
        v54 = 2082;
        v55 = a2;
        v56 = 1026;
        *v57 = v49;
        *&v57[4] = 2050;
        *&v57[6] = v45;
        v28 = "#TilesService, can't write to file_path_to";
        v29 = "{msg%{public}.0s:#TilesService, can't write to file_path_to, file_path_to:%{public, location:escape_only}s, errno:%{public}d, write:%{public}llu}";
        v30 = v48;
        v31 = 44;
        goto LABEL_73;
      }

LABEL_74:
      v13 = 0;
      v6 = &CLCertificatePinningHelper__metaData;
    }

    gzclose(v20);
    v5 = &CLCertificatePinningHelper__metaData;
    goto LABEL_48;
  }

  if (qword_1000108A0 != -1)
  {
    sub_1000070C4();
  }

  v41 = qword_1000108A8;
  if (os_log_type_enabled(qword_1000108A8, OS_LOG_TYPE_FAULT))
  {
    v42 = *__error();
    *buf = 68289538;
    *&buf[4] = 0;
    v52 = 2082;
    v53 = "";
    v54 = 2082;
    v55 = a1;
    v56 = 1026;
    *v57 = v42;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#TilesService, can't open file_path_from, file_path_from:%{public, location:escape_only}s, errno:%{public}d}", buf, 0x22u);
    if (qword_1000108A0 != -1)
    {
      sub_1000070C4();
    }
  }

  v43 = qword_1000108A8;
  if (os_signpost_enabled(qword_1000108A8))
  {
    v44 = *__error();
    *buf = 68289538;
    *&buf[4] = 0;
    v52 = 2082;
    v53 = "";
    v54 = 2082;
    v55 = a1;
    v56 = 1026;
    *v57 = v44;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v43, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#TilesService, can't open file_path_from", "{msg%{public}.0s:#TilesService, can't open file_path_from, file_path_from:%{public, location:escape_only}s, errno:%{public}d}", buf, 0x22u);
  }

  v5 = &CLCertificatePinningHelper__metaData;
LABEL_47:
  v13 = 0;
  v14 = 0;
  v15 = 0;
  if (v12)
  {
LABEL_48:
    fclose(v12);
  }

  free(v7);
LABEL_50:
  if (v5[30].ivars != -1)
  {
    sub_1000070C4();
  }

  weak_ivar_lyt = v6[30].weak_ivar_lyt;
  if (os_log_type_enabled(weak_ivar_lyt, OS_LOG_TYPE_DEBUG))
  {
    if (v14)
    {
      v39 = v11 / v14;
    }

    else
    {
      v39 = 0.0;
    }

    *buf = 68290818;
    v52 = 2082;
    v53 = "";
    v54 = 2082;
    v55 = a1;
    v56 = 2082;
    *v57 = a2;
    *&v57[8] = 1026;
    *&v57[10] = v13;
    *&v57[14] = 2050;
    *&v57[16] = v11;
    v58 = 1026;
    v59 = v15;
    v60 = 1026;
    v61 = v14;
    v62 = 2050;
    v63 = v39;
    _os_log_impl(&_mh_execute_header, weak_ivar_lyt, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#TilesService, file_path_from:%{public, location:escape_only}s, file_path_to:%{public, location:escape_only}s, isOK:%{public}hhd, fileSize:%{public}llu, totalReadBytes:%{public}d, totalWrittenBytes:%{public}d, compression:%{public}.4f}", buf, 0x4Cu);
  }

  return v13;
}

void sub_100005B10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  _Unwind_Resume(exception_object);
}

id sub_100005B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  if (v6)
  {
    if (*(v6 + 8) != -1)
    {
      return [result onDownloadCompleted:a2 withResponse:a3 withError:{a4, _NSConcreteStackBlock, 3221225472, sub_100005BC8, &unk_10000C678, result, a2, a3, a4}];
    }
  }

  return result;
}

uint64_t sub_100005BD8(uint64_t result, uint64_t a2)
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

void sub_100005BF4(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

int main(int argc, const char **argv, const char **envp)
{
  unsetenv("TMPDIR");
  _set_user_dir_suffix();
  NSTemporaryDirectory();
  sub_10000648C();
}

void sub_100006C60(char a1)
{
  if ((a1 & 1) == 0)
  {
    dispatch_once(&qword_1000108A0, &stru_10000C530);
  }

  v1 = qword_1000108A8;
  if (os_log_type_enabled(qword_1000108A8, OS_LOG_TYPE_FAULT))
  {
    sub_1000044AC();
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#TilesService replyMessage can't be NULL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, 0x26u);
    if (qword_1000108A0 != -1)
    {
      dispatch_once(&qword_1000108A0, &stru_10000C530);
    }
  }

  v2 = qword_1000108A8;
  if (os_signpost_enabled(qword_1000108A8))
  {
    sub_1000044AC();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#TilesService replyMessage can't be NULL", "{msg%{public}.0s:#TilesService replyMessage can't be NULL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, 0x26u);
    if (qword_1000108A0 != -1)
    {
      dispatch_once(&qword_1000108A0, &stru_10000C530);
    }
  }

  v3 = qword_1000108A8;
  if (os_log_type_enabled(qword_1000108A8, OS_LOG_TYPE_INFO))
  {
    sub_1000044AC();
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#TilesService replyMessage can't be NULL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, 0x26u);
  }
}

void sub_100006E70(NSObject *label)
{
  if (qword_1000108A0 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v2 = qword_1000108A8;
    if (os_log_type_enabled(qword_1000108A8, OS_LOG_TYPE_FAULT))
    {
      dispatch_queue_get_label(label);
      dispatch_queue_get_label(qword_1000112A0);
      *buf = 68290051;
      sub_100006420();
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:The passed queue in getSharedSessionInQueue is different to the one that had been statically set., queue:%{public, location:escape_only}s, sharedSessionQueue:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (qword_1000108A0 != -1)
      {
        dispatch_once(&qword_1000108A0, &stru_10000C6D0);
      }
    }

    v3 = qword_1000108A8;
    if (os_signpost_enabled(qword_1000108A8))
    {
      dispatch_queue_get_label(label);
      dispatch_queue_get_label(qword_1000112A0);
      *buf = 68290051;
      *&buf[4] = 0;
      sub_100006420();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "The passed queue in getSharedSessionInQueue is different to the one that had been statically set.", "{msg%{public}.0s:The passed queue in getSharedSessionInQueue is different to the one that had been statically set., queue:%{public, location:escape_only}s, sharedSessionQueue:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (qword_1000108A0 != -1)
      {
        dispatch_once(&qword_1000108A0, &stru_10000C6D0);
      }
    }

    v4 = qword_1000108A8;
    if (os_log_type_enabled(qword_1000108A8, OS_LOG_TYPE_INFO))
    {
      label = dispatch_queue_get_label(label);
      v5 = dispatch_queue_get_label(qword_1000112A0);
      *buf = 68290051;
      *&buf[4] = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2082;
      v10 = label;
      v11 = 2082;
      v12 = v5;
      v13 = 2082;
      v14 = "assert";
      v15 = 2081;
      v16 = "queue == sharedSessionQueue";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:The passed queue in getSharedSessionInQueue is different to the one that had been statically set., queue:%{public, location:escape_only}s, sharedSessionQueue:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1000108A0, &stru_10000C6D0);
  }
}

void sub_100007100()
{
  if (qword_1000108A0 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = qword_1000108A8;
    if (os_log_type_enabled(qword_1000108A8, OS_LOG_TYPE_FAULT))
    {
      sub_1000063E8();
      _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Nothing was downloaded to #TilesService? Was it successful?, error:%{private, location:escape_only}@, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      if (qword_1000108A0 != -1)
      {
        dispatch_once(&qword_1000108A0, &stru_10000C6D0);
      }
    }

    v1 = qword_1000108A8;
    if (os_signpost_enabled(qword_1000108A8))
    {
      sub_1000063E8();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Nothing was downloaded to #TilesService? Was it successful?", "{msg%{public}.0s:Nothing was downloaded to #TilesService? Was it successful?, error:%{private, location:escape_only}@, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      if (qword_1000108A0 != -1)
      {
        dispatch_once(&qword_1000108A0, &stru_10000C6D0);
      }
    }

    v2 = qword_1000108A8;
    if (os_log_type_enabled(qword_1000108A8, OS_LOG_TYPE_INFO))
    {
      sub_1000063E8();
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Nothing was downloaded to #TilesService? Was it successful?, error:%{private, location:escape_only}@, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1000108A0, &stru_10000C6D0);
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