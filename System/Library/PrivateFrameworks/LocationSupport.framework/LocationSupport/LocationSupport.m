double sub_1DF7FF29C(unint64_t a1)
{
  v2 = *&qword_1ED5FAD78;
  if (*&qword_1ED5FAD78 == 0.0)
  {
    info = 0;
    mach_timebase_info(&info);
    numer = info.numer;
    if (info.denom)
    {
      denom = info.denom;
      v5 = info.numer;
      do
      {
        numer = denom;
        denom = v5 % denom;
        v5 = numer;
      }

      while (denom);
    }

    v6 = info.numer / numer;
    v7 = 1000000000;
    v8 = v6;
    do
    {
      v9 = v8;
      v8 = v7;
      v7 = v9 % v7;
    }

    while (v7);
    v2 = (v6 / v8) / (0x3B9ACA00 / v8 * (info.denom / numer));
    *&qword_1ED5FAD78 = v2;
  }

  return v2 * a1;
}

void CLProfilingIdentifySiloInvocation(uint64_t a1, void *a2)
{
  if (qword_1ED5FAE50 != -1)
  {
    dispatch_once(&qword_1ED5FAE50, &unk_1F5AC6400);
  }

  if (byte_1ED5FAE38 == 1)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"[%@ %@]", a1, NSStringFromSelector(objc_msgSend(a2, "selector"))];
    v4 = [v5 UTF8String];
    off_1EED20BE8(v4);
  }
}

void sub_1DF7FF4D8(void *a1)
{
  v1 = a1;
  if ((atomic_load_explicit(&qword_1ED5FAE30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED5FAE30))
  {
    operator new();
  }

  os_unfair_lock_lock(&unk_1ED5FAE00);
  v1[2](v1, qword_1ED5FAE28);
  os_unfair_lock_unlock(&unk_1ED5FAE00);
}

void sub_1DF7FF5A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  __cxa_guard_abort(&qword_1ED5FAE30);

  _Unwind_Resume(a1);
}

void *sub_1DF7FF5D0(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a3 & 0x1FFFFFFF) + 8) ^ HIDWORD(a3));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(a2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= a2)
    {
      v7 = v5 % a2;
    }
  }

  else
  {
    v7 = v5 & (a2 - 1);
  }

  v8 = *(a1 + 8 * v7);
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
        if (result[2] == a3)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= a2)
          {
            v10 %= a2;
          }
        }

        else
        {
          v10 &= a2 - 1;
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

__CFString *sub_1DF7FF70C(void *a1, int a2, void *a3)
{
  v5 = a3;
  v6 = [a1 objectForKey:v5];
  if (!v6)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v6 = @"_CLUnSupportedService";
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = v5;
    }
  }

  return v6;
}

void CLProfilingIdentify(uint64_t a1)
{
  if (qword_1ED5FAE50 != -1)
  {
    dispatch_once(&qword_1ED5FAE50, &unk_1F5AC6400);
  }

  if (byte_1ED5FAE38 == 1)
  {
    v2 = off_1EED20BE8;

    v2(a1);
  }
}

void sub_1DF7FFDAC(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = _Block_copy(a1);
  v3[2]();

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1DF7FFEB4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 64);
  *(result + 56) = *(a2 + 56);
  *(result + 64) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1DF7FFED0(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t sub_1DF7FFFD4(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1DF800130;
  v3[3] = &unk_1E86C83E0;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 async:v3];
}

void sub_1DF800048(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    sub_1DF7FFED0(v1);
  }
}

void sub_1DF800058(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1DF7FFFD4;
  v8[3] = &unk_1E86C85E8;
  v5 = v3;
  v9 = v5;
  v10 = v2;
  [v4 async:v8];
  v6 = *(a1 + 24);
  *(a1 + 24) = 0;

  v7 = *(a1 + 32);
  *(a1 + 32) = 0;
}

uint64_t CLConnection::getRemotePid(dispatch_queue_t *this)
{
  dispatch_assert_queue_V2(this[1]);
  v2 = *this;

  return xpc_connection_get_pid(v2);
}

void CLConnection::getName(CLConnection *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 119);
  if (v4 < 0)
  {
    v5 = *(this + 13);
  }

  else
  {
    v5 = *(this + 119);
  }

  v6 = (this + 96);
  if (!v5)
  {
    dispatch_assert_queue_V2(*(this + 1));
    v7 = *this;
    xpc_connection_get_audit_token();
    sub_1DF806E1C(&v11);
    if (*(this + 119) < 0)
    {
      operator delete(*v6);
    }

    *v6 = *&v11.__r_.__value_.__l.__data_;
    *(this + 14) = *(&v11.__r_.__value_.__l + 2);
    v4 = *(this + 119);
    if ((v4 & 0x8000000000000000) == 0)
    {
      if (*(this + 119))
      {
        goto LABEL_9;
      }

LABEL_12:
      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
      }

      v8 = qword_1ED5FAD60;
      if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_1DF7FE000, v8, OS_LOG_TYPE_DEFAULT, "#Warning The client name could not be determined.", v10, 2u);
      }

      if (*(this + 119) < 0)
      {
        *(this + 13) = 15;
        v9 = *(this + 12);
      }

      else
      {
        *(this + 119) = 15;
        v9 = this + 96;
      }

      strcpy(v9, "<Indeterminate>");
      if ((*(this + 119) & 0x80) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_20;
    }

    if (!*(this + 13))
    {
      goto LABEL_12;
    }
  }

LABEL_9:
  if ((v4 & 0x80) == 0)
  {
LABEL_10:
    *a2 = *v6;
    *(a2 + 16) = *(this + 14);
    return;
  }

LABEL_20:
  sub_1DF802ED0(a2, *(this + 12), *(this + 13));
}

void sub_1DF800460(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (*(*(a1[7] + 8) + 24) != 1)
  {
    goto LABEL_23;
  }

  v5 = MEMORY[0x1E12E05B0](a2);
  if (v5 != MEMORY[0x1E69E9E98])
  {
    if (v5 == MEMORY[0x1E69E9E80])
    {
      operator new();
    }

    if (qword_1ED5FAD68 != -1)
    {
      dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
    }

    v6 = qword_1ED5FAD60;
    if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DF7FE000, v6, OS_LOG_TYPE_FAULT, "Got unexpected location event", buf, 2u);
    }

    goto LABEL_23;
  }

  if (a2 != MEMORY[0x1E69E9E18])
  {
    if (a2 != MEMORY[0x1E69E9E20])
    {
      goto LABEL_23;
    }

    if (qword_1ED5FAD68 != -1)
    {
      dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
    }

    v7 = qword_1ED5FAD60;
    if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DF7FE000, v7, OS_LOG_TYPE_DEFAULT, "#Warning Location connection invalid!", buf, 2u);
    }

    v8 = a1[5];
    if (!v8)
    {
      goto LABEL_23;
    }

LABEL_22:
    (*(v8 + 16))();
    goto LABEL_23;
  }

  if (qword_1ED5FAD68 != -1)
  {
    dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
  }

  v9 = qword_1ED5FAD60;
  if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF7FE000, v9, OS_LOG_TYPE_DEFAULT, "#Warning Connection interrupted!", buf, 2u);
  }

  v8 = a1[4];
  if (v8)
  {
    goto LABEL_22;
  }

LABEL_23:
  objc_autoreleasePoolPop(v4);
}

void sub_1DF800714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1DF7FFED0(a10);
  }

  sub_1DF7FFED0(v10);
  _Unwind_Resume(a1);
}

uint64_t CLConnectionMessage::CLConnectionMessage(uint64_t a1, xpc_object_t xdict, void *a3)
{
  *(a1 + 40) = 0u;
  v5 = (a1 + 40);
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 56) = 0u;
  v6 = a3[1];
  *(a1 + 72) = *a3;
  *(a1 + 80) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  string = xpc_dictionary_get_string(xdict, "kCLConnectionMessageNameKey");
  if (string)
  {
    sub_1DF800930(a1, string);
  }

  int64 = xpc_dictionary_get_int64(xdict, "kCLConnectionMessageReplyHandlerIdentifierKey");
  if (int64)
  {
    *(a1 + 24) = int64;
  }

  *(a1 + 32) = xpc_dictionary_get_BOOL(xdict, "kCLConnectionMessageIsReplyingKey");
  value = xpc_dictionary_get_value(xdict, "kCLConnectionMessageInfoKey");
  *(a1 + 56) = value;
  v10 = value;
  *(a1 + 64) = xpc_dictionary_get_value(xdict, "kCLConnectionMessageFileDescriptorKey");
  remote_connection = xpc_dictionary_get_remote_connection(xdict);
  reply = xpc_dictionary_create_reply(xdict);
  *(a1 + 48) = reply;
  if (reply || *(a1 + 24) && (*(a1 + 32) & 1) == 0)
  {
    *v5 = xpc_retain(remote_connection);
  }

  if (remote_connection && !*(a1 + 72))
  {
    xpc_connection_get_audit_token();
    operator new();
  }

  return a1;
}

void sub_1DF8008F8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 80);
  if (v3)
  {
    sub_1DF7FFED0(v3);
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1DF800930(std::string *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_1DF800978(a1, __s, v4);
}

std::string *sub_1DF800978(std::string *__dst, const std::string::value_type *__src, size_t __len)
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

void sub_1DF800A34(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 8);
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  CLConnection::handleMessage(v2, v4);
  if (v3)
  {

    sub_1DF7FFED0(v3);
  }
}

void sub_1DF800AA4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1DF7FFED0(v1);
  }

  _Unwind_Resume(exception_object);
}

void CLConnection::handleMessage(uint64_t a1, const char **a2)
{
  v37 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(*(a1 + 8));
  v4 = *a2;
  if ((*a2)[32] == 1 && *(v4 + 3))
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v4 + 3)];
    v6 = [*(a1 + 24) objectForKeyedSubscript:v5];
    if (v6)
    {
      v7 = v6;
      v8 = _os_activity_create(&dword_1DF7FE000, "CL: Invoking reply-handler", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
      os_activity_scope_enter(v8, &state);

      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
      }

      v9 = qword_1ED5FAD60;
      if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_DEBUG))
      {
        v10 = *a2;
        if ((*a2)[23] < 0)
        {
          v10 = *v10;
        }

        v11 = [v5 intValue];
        *buf = 68289794;
        *v30 = 0;
        *&v30[4] = 2082;
        *&v30[6] = &unk_1DF8255EF;
        v31 = 2082;
        v32 = "activity";
        v33 = 2082;
        v34 = v10;
        v35 = 1026;
        v36 = v11;
        _os_log_impl(&dword_1DF7FE000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Invoking reply-handler, event:%{public, location:escape_only}s, MessageName:%{public, location:escape_only}s, ReplyHandlerIdentifier:%{public}u}", buf, 0x2Cu);
      }

      v12 = a2[1];
      v26 = *a2;
      v27 = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(v7 + 16))(v7, &v26);
      if (v27)
      {
        sub_1DF7FFED0(v27);
      }

      [*(a1 + 24) removeObjectForKey:v5];
      os_activity_scope_leave(&state);
    }

    else
    {
      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
      }

      v18 = qword_1ED5FAD60;
      if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_FAULT))
      {
        v19 = *a2;
        if ((*a2)[23] < 0)
        {
          v19 = *v19;
        }

        *buf = 68289538;
        *v30 = 0;
        *&v30[4] = 2082;
        *&v30[6] = &unk_1DF8255EF;
        v31 = 2082;
        v32 = v19;
        v33 = 1026;
        LODWORD(v34) = [v5 intValue];
        _os_log_impl(&dword_1DF7FE000, v18, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:No ReplyHandler found, Message Name:%{public, location:escape_only}s, ReplyHandlerIdentifier:%{public}u}", buf, 0x22u);
        if (qword_1ED5FAD68 != -1)
        {
          dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
        }
      }

      v20 = qword_1ED5FAD60;
      if (os_signpost_enabled(qword_1ED5FAD60))
      {
        v21 = *a2;
        if (v21[23] < 0)
        {
          v21 = *v21;
        }

        v22 = [v5 intValue];
        *buf = 68289538;
        *v30 = 0;
        *&v30[4] = 2082;
        *&v30[6] = &unk_1DF8255EF;
        v31 = 2082;
        v32 = v21;
        v33 = 1026;
        LODWORD(v34) = v22;
        _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "No ReplyHandler found", "{msg%{public}.0s:No ReplyHandler found, Message Name:%{public, location:escape_only}s, ReplyHandlerIdentifier:%{public}u}", buf, 0x22u);
      }
    }
  }

  else
  {
    v13 = *(a1 + 56);
    if (v4[23] < 0)
    {
      v4 = *v4;
    }

    v14 = [*(a1 + 16) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", v4)}];
    if (!v14)
    {
      v14 = v13;
    }

    if (v14)
    {
      v15 = a2[1];
      v24 = *a2;
      v25 = v15;
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(v14 + 16))(v14, &v24);
      if (v25)
      {
        sub_1DF7FFED0(v25);
      }
    }

    else
    {
      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
      }

      v16 = qword_1ED5FAD60;
      if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *a2;
        if ((*a2)[23] < 0)
        {
          v17 = *v17;
        }

        *buf = 136315138;
        *v30 = v17;
        _os_log_impl(&dword_1DF7FE000, v16, OS_LOG_TYPE_DEFAULT, "#Warning Unhandled message %s", buf, 0xCu);
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

void sub_1DF800F60(uint64_t a1, uint64_t *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3321888768;
  v6 = sub_1DF80102C;
  v7 = &unk_1F5AC6660;
  v3 = *a2;
  v2 = a2[1];
  v8 = *(a1 + 32);
  v9 = v3;
  v10 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 48);
  if (v4 && *(v4 + 8) != -1)
  {
    v6(v5);
  }

  if (v10)
  {
    sub_1DF7FFED0(v10);
  }
}

void sub_1DF801014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_1DF7FFED0(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DF80102C(void *a1)
{
  v2 = a1[4];
  v4 = a1[5];
  v3 = a1[6];
  v5 = v4;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(v2 + 16))(v2, &v5);
  if (v6)
  {
    sub_1DF7FFED0(v6);
  }
}

void sub_1DF80108C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1DF7FFED0(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CLConnectionMessage::getDictionaryOfClasses(CLConnectionMessage *this, NSSet *a2)
{
  if (qword_1ED5FAE78 != -1)
  {
    dispatch_once(&qword_1ED5FAE78, &unk_1F5AC6548);
  }

  v4 = [qword_1ED5FAE70 setByAddingObjectsFromSet:a2];

  return CLConnectionMessage::getObjectOfClasses(this, v4);
}

uint64_t CLConnectionMessage::getObjectOfClasses(CLConnectionMessage *this, NSSet *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = *(this + 7);
  if (v3)
  {
    bytes_ptr = xpc_data_get_bytes_ptr(v3);
    length = xpc_data_get_length(*(this + 7));
    if (bytes_ptr)
    {
      bytes_ptr = [MEMORY[0x1E695DEF0] dataWithBytes:bytes_ptr length:length];
    }

    v7 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:bytes_ptr error:0];
    v12 = 0;
    v8 = [v7 decodeTopLevelObjectOfClasses:a2 forKey:*MEMORY[0x1E696A508] error:&v12];

    if (v12)
    {
      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
      }

      v9 = qword_1ED5FAD60;
      if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_FAULT))
      {
        *buf = 138477827;
        v14 = v12;
        _os_log_impl(&dword_1DF7FE000, v9, OS_LOG_TYPE_FAULT, "The received data object is invalid: %{private}@", buf, 0xCu);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_1DF801280(char *a1)
{
  if (a1)
  {
    sub_1DF801280(*a1);
    sub_1DF801280(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

BOOL CLConnection::sendMessage(uint64_t a1, const char **a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(*(a1 + 8));
  if (a3)
  {
    v6 = *(a1 + 32) + 1;
    *(a1 + 32) = v6;
    v7 = [a3 copy];
    [*(a1 + 24) setObject:v7 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLongLong:", v6)}];
    v8 = _os_activity_create(&dword_1DF7FE000, "CL: ReplyHandler cached", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1ED5FAD68 != -1)
    {
      dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
    }

    v9 = qword_1ED5FAD60;
    if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_DEBUG))
    {
      v10 = *a2;
      if ((*a2)[23] < 0)
      {
        v10 = *v10;
      }

      *buf = 68289794;
      v31 = 0;
      v32 = 2082;
      v33 = &unk_1DF8255EF;
      v34 = 2082;
      v35 = "activity";
      v36 = 2082;
      v37 = v10;
      v38 = 1026;
      v39 = v6;
      _os_log_impl(&dword_1DF7FE000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:ReplyHandler cached, event:%{public, location:escape_only}s, MessageName:%{public, location:escape_only}s, ReplyHandlerIdentifier:%{public}u}", buf, 0x2Cu);
    }

    os_activity_scope_leave(&state);
  }

  else
  {
    v6 = 0;
  }

  v11 = *a2;
  if ((*a2)[23] < 0)
  {
    sub_1DF802ED0(__p, *v11, *(v11 + 1));
    v11 = *a2;
  }

  else
  {
    v12 = *v11;
    v28 = *(v11 + 2);
    *__p = v12;
  }

  v13 = sub_1DF80191C(__p, *(v11 + 7), *(v11 + 8), v6, 0);
  v14 = v13;
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p[0]);
    if (v14)
    {
      goto LABEL_15;
    }
  }

  else if (v13)
  {
LABEL_15:
    if (*(a1 + 73) == 1)
    {
      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
      }

      v15 = qword_1ED5FAD60;
      if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_DEBUG))
      {
        v16 = *a2;
        if ((*a2)[23] < 0)
        {
          v16 = *v16;
        }

        *buf = 68289282;
        v31 = 0;
        v32 = 2082;
        v33 = &unk_1DF8255EF;
        v34 = 2082;
        v35 = v16;
        _os_log_impl(&dword_1DF7FE000, v15, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLConnection::sendMessage, name:%{public, location:escape_only}s}", buf, 0x1Cu);
      }

      v17 = *a1;
      xpc_connection_send_notification();
    }

    else
    {
      v22 = _os_activity_create(&dword_1DF7FE000, "CL: CLConnection::sendMessage", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
      os_activity_scope_enter(v22, &state);

      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
      }

      v23 = qword_1ED5FAD60;
      if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_DEBUG))
      {
        v24 = *a2;
        if ((*a2)[23] < 0)
        {
          v24 = *v24;
        }

        *buf = 68289538;
        v31 = 0;
        v32 = 2082;
        v33 = &unk_1DF8255EF;
        v34 = 2082;
        v35 = "activity";
        v36 = 2082;
        v37 = v24;
        _os_log_impl(&dword_1DF7FE000, v23, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLConnection::sendMessage, event:%{public, location:escape_only}s, name:%{public, location:escape_only}s}", buf, 0x26u);
      }

      xpc_connection_send_message(*a1, v14);
      os_activity_scope_leave(&state);
    }

    xpc_release(v14);
    goto LABEL_43;
  }

  if (qword_1ED5FAD68 != -1)
  {
    dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
  }

  v18 = qword_1ED5FAD60;
  if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_FAULT))
  {
    v19 = *a2;
    if ((*a2)[23] < 0)
    {
      v19 = *v19;
    }

    *buf = 68289282;
    v31 = 0;
    v32 = 2082;
    v33 = &unk_1DF8255EF;
    v34 = 2082;
    v35 = v19;
    _os_log_impl(&dword_1DF7FE000, v18, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Couldn't create XPC message, name:%{public, location:escape_only}s}", buf, 0x1Cu);
    if (qword_1ED5FAD68 != -1)
    {
      dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
    }
  }

  v20 = qword_1ED5FAD60;
  if (os_signpost_enabled(qword_1ED5FAD60))
  {
    v21 = *a2;
    if ((*a2)[23] < 0)
    {
      v21 = *v21;
    }

    *buf = 68289282;
    v31 = 0;
    v32 = 2082;
    v33 = &unk_1DF8255EF;
    v34 = 2082;
    v35 = v21;
    _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Couldn't create XPC message", "{msg%{public}.0s:Couldn't create XPC message, name:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

LABEL_43:
  result = v14 != 0;
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

void CLConnectionMessage::~CLConnectionMessage(CLConnectionMessage *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    xpc_release(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    xpc_release(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    sub_1DF7FFED0(v4);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

BOOL CLConnection::sendMessage(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v5[0] = *a2;
  v5[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = CLConnection::sendMessage(a1, v5, 0);
  if (v2)
  {
    sub_1DF7FFED0(v2);
  }

  return v3;
}

void sub_1DF801904(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1DF7FFED0(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1DF80191C(const char *a1, void *a2, void *a3, int64_t a4, BOOL a5)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v9 = xpc_string_create(a1);
  *keys = xmmword_1E86C8470;
  v14[0] = v9;
  v14[1] = a2;
  v10 = xpc_dictionary_create(keys, v14, 2uLL);
  v11 = v10;
  if (a3)
  {
    xpc_dictionary_set_value(v10, "kCLConnectionMessageFileDescriptorKey", a3);
  }

  if (a4)
  {
    xpc_dictionary_set_int64(v11, "kCLConnectionMessageReplyHandlerIdentifierKey", a4);
  }

  xpc_dictionary_set_BOOL(v11, "kCLConnectionMessageIsReplyingKey", a5);
  if (v9)
  {
    xpc_release(v9);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t sub_1DF801A20(uint64_t result, uint64_t a2)
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

void CLConnectionClient::setHandlerForMessage(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*(a2 + 23) >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_1DF7FFED0(v9);
  }

  if (a3)
  {
    if (qword_1ED5FAD68 != -1)
    {
      dispatch_once(&qword_1ED5FAD68, &unk_1F5AC68B0);
    }

    v11 = qword_1ED5FAD60;
    if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v24 = [v6 UTF8String];
      _os_log_impl(&dword_1DF7FE000, v11, OS_LOG_TYPE_DEBUG, "Setting handler for message %s", buf, 0xCu);
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3321888768;
    v19[2] = sub_1DF8075E0;
    v19[3] = &unk_1F5AC6698;
    v21 = v10;
    v22 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v20 = a3;
      std::__shared_weak_count::__release_weak(v9);
    }

    else
    {
      v20 = a3;
    }

    v12 = v19;
  }

  else
  {
    v12 = 0;
  }

  v13 = *a1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = sub_1DF80354C;
  block[3] = &unk_1F5AC6708;
  block[6] = v10;
  v16 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = v8;
  v18 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v6;
  block[5] = v12;
  dispatch_async(v13, block);
  if (v18)
  {
    sub_1DF7FFED0(v18);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  if (v7)
  {
    sub_1DF7FFED0(v7);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1DF801CAC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (v1)
  {
    sub_1DF7FFED0(v1);
  }

  _Unwind_Resume(exception_object);
}

void CLConnectionClient::setInterruptionHandler(NSObject **a1, uint64_t a2)
{
  v5 = a1[2];
  v4 = a1[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_1DF7FFED0(v4);
  }

  v6 = a1[4];
  v7 = a1[5];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *a1;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3321888768;
  v14[2] = sub_1DF80A2DC;
  v14[3] = &unk_1F5AC6708;
  v14[6] = v5;
  v15 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v14[4] = v8;
  v16 = v6;
  v17 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14[5] = a2;
  v9 = *a1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = sub_1DF803820;
  block[3] = &unk_1F5AC6778;
  block[5] = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = v6;
  v13 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v14;
  dispatch_async(v9, block);
  if (v13)
  {
    sub_1DF7FFED0(v13);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  if (v17)
  {
    sub_1DF7FFED0(v17);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  if (v7)
  {
    sub_1DF7FFED0(v7);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void *sub_1DF801E7C(void *result, void *a2)
{
  v2 = a2[7];
  result[6] = a2[6];
  result[7] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[9];
  result[8] = a2[8];
  result[9] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_1DF801EB0(void *result, void *a2)
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

void CLConnectionClient::start(CLConnectionClient *this)
{
  v3 = *(this + 4);
  v2 = *(this + 5);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(this + 2);
  v4 = *(this + 3);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_1DF7FFED0(v4);
  }

  v6 = *this;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3321888768;
  v7[2] = sub_1DF803A00;
  v7[3] = &unk_1F5AC6628;
  v7[4] = v5;
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = v3;
  v10 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_async(v6, v7);
  if (v10)
  {
    sub_1DF7FFED0(v10);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  if (v2)
  {
    sub_1DF7FFED0(v2);
  }
}

void sub_1DF801FFC(void *a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3321888768;
  v4 = sub_1DF8022F4;
  v5 = &unk_1F5AC65F8;
  v1 = a1[7];
  v6 = a1[6];
  v7 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v2 = a1[5];
  if (v2 && *(v2 + 8) != -1)
  {
    v4(v3);
  }

  if (v7)
  {
    sub_1DF7FFED0(v7);
  }
}

void sub_1DF8020A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_1DF7FFED0(a14);
  }

  _Unwind_Resume(exception_object);
}

os_unfair_lock_s *sub_1DF8020C0(os_unfair_lock_s *result)
{
  if (!*&result->_os_unfair_lock_opaque)
  {
    v1 = result;
    if (qword_1ED5FAD68 != -1)
    {
      dispatch_once(&qword_1ED5FAD68, &unk_1F5AC68B0);
    }

    v2 = qword_1ED5FAD60;
    if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1DF7FE000, v2, OS_LOG_TYPE_DEBUG, "Creating connection", buf, 2u);
    }

    os_unfair_lock_lock(v1 + 25);
    operator new();
  }

  return result;
}

void CLConnection::initializeConnection_nl(dispatch_queue_t *this)
{
  v23 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(this[1]);
  v2 = this[1];
  if (v2)
  {
    dispatch_retain(v2);
    xpc_connection_set_context(*this, this);
    xpc_connection_set_finalizer_f(*this, CLConnection::connectionFinalizer);
    v11[4] = this;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1DF800A34;
    v12[3] = &unk_1E86C8428;
    v12[4] = this;
    v10[4] = this;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1DF80A26C;
    v11[3] = &unk_1E86C83E0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1DF8051A4;
    v10[3] = &unk_1E86C83E0;
    v3 = *this;
    v4 = this[10];
    v5 = this[11];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x2020000000;
    v15 = 1;
    handler = MEMORY[0x1E69E9820];
    *handler_8 = 3321888768;
    *&handler_8[8] = sub_1DF800460;
    *&handler_8[16] = &unk_1F5AC64C8;
    *&handler_8[24] = v11;
    v18 = v10;
    v20 = v14;
    v21 = v4;
    v22 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v19 = v12;
    xpc_connection_set_event_handler(v3, &handler);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_1DF813B94;
    aBlock[3] = &unk_1E86C8450;
    aBlock[4] = v14;
    this[8] = _Block_copy(aBlock);
    if (v22)
    {
      sub_1DF7FFED0(v22);
    }

    _Block_object_dispose(v14, 8);
    if (v5)
    {
      sub_1DF7FFED0(v5);
    }

    dispatch_assert_queue_V2(this[1]);
    v6 = *this;
    xpc_connection_get_audit_token();
    operator new();
  }

  if (qword_1ED5FAD68 != -1)
  {
    dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
  }

  v7 = qword_1ED5FAD60;
  if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_FAULT))
  {
    handler = 68289539;
    *handler_8 = 2082;
    *&handler_8[2] = &unk_1DF8255EF;
    *&handler_8[10] = 2082;
    *&handler_8[12] = "assert";
    *&handler_8[20] = 2081;
    *&handler_8[22] = "fEventQueue";
    _os_log_impl(&dword_1DF7FE000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CLConnections must always have event queues, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &handler, 0x26u);
    if (qword_1ED5FAD68 != -1)
    {
      dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
    }
  }

  v8 = qword_1ED5FAD60;
  if (os_signpost_enabled(qword_1ED5FAD60))
  {
    handler = 68289539;
    *handler_8 = 2082;
    *&handler_8[2] = &unk_1DF8255EF;
    *&handler_8[10] = 2082;
    *&handler_8[12] = "assert";
    *&handler_8[20] = 2081;
    *&handler_8[22] = "fEventQueue";
    _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CLConnections must always have event queues", "{msg%{public}.0s:CLConnections must always have event queues, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &handler, 0x26u);
    if (qword_1ED5FAD68 != -1)
    {
      dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
    }
  }

  v9 = qword_1ED5FAD60;
  if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_INFO))
  {
    handler = 68289539;
    *handler_8 = 2082;
    *&handler_8[2] = &unk_1DF8255EF;
    *&handler_8[10] = 2082;
    *&handler_8[12] = "assert";
    *&handler_8[20] = 2081;
    *&handler_8[22] = "fEventQueue";
    _os_log_impl(&dword_1DF7FE000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CLConnections must always have event queues, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &handler, 0x26u);
  }

  abort_report_np();
  __break(1u);
}

void sub_1DF8027FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  v36 = *(v34 - 120);
  if (v36)
  {
    sub_1DF7FFED0(v36);
  }

  _Block_object_dispose(&a33, 8);
  if (v33)
  {
    sub_1DF7FFED0(v33);
  }

  _Unwind_Resume(a1);
}

void CLConnection::CLConnection(uint64_t a1, const char *a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = a3;
  *(a1 + 16) = objc_alloc_init(MEMORY[0x1E695DF90]);
  *(a1 + 24) = objc_alloc_init(MEMORY[0x1E695DF90]);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  *a1 = xpc_connection_create_mach_service(a2, *(a1 + 8), 0);
  CLConnection::initializeConnection_nl(a1);
}

void sub_1DF8028CC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  v3 = *(v1 + 88);
  if (v3)
  {
    sub_1DF7FFED0(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1DF8028F4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 72);
  *(result + 64) = *(a2 + 64);
  *(result + 72) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1DF802910(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_1DF7FE000, "CL: Sending cached messages to daemon", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v2, &state);

  if (qword_1ED5FAD68 != -1)
  {
    dispatch_once(&qword_1ED5FAD68, &unk_1F5AC68B0);
  }

  v3 = qword_1ED5FAD60;
  if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289282;
    *v17 = 2082;
    *&v17[2] = &unk_1DF8255EF;
    *&v17[10] = 2082;
    *&v17[12] = "activity";
    _os_log_impl(&dword_1DF7FE000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Sending cached messages to daemon, event:%{public, location:escape_only}s}", &buf, 0x1Cu);
  }

  dispatch_assert_queue_V2(*(a1 + 8));
  v4 = *(a1 + 48);
  for (i = *(a1 + 56); v4 != i; v4 += 24)
  {
    sub_1DF80A3B0(&buf, v4);
    sub_1DF80A3B0(&v10, &buf);
    dispatch_assert_queue_V2(*(a1 + 8));
    v6 = *a1;
    if (*a1)
    {
      v7 = v12;
      if (v12)
      {
        v14 = v10;
        v15 = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          v7 = v12;
        }

        CLConnection::sendMessage(v6, &v14, v7);
        v8 = v15;
      }

      else
      {
        v8 = v11;
        v14 = v10;
        v15 = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        CLConnection::sendMessage(v6, &v14);
      }

      if (v8)
      {
        sub_1DF7FFED0(v8);
      }
    }

    if (v11)
    {
      sub_1DF7FFED0(v11);
    }

    if (*v17)
    {
      sub_1DF7FFED0(*v17);
    }
  }

  os_activity_scope_leave(&state);
  v9 = *MEMORY[0x1E69E9840];
}

void CLConnectionClient::CLConnectionClient(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a3;
  a1[1] = &unk_1F5AC62A8;
  operator new();
}

void sub_1DF802E58(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  sub_1DF807D4C(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v16);
  operator delete(v17);
  sub_1DF807A90(v15);
}

void *sub_1DF802ED0(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_1DF80C81C();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void CLConnectionClient::createConnection(CLConnectionClient *this)
{
  v3 = *(this + 4);
  v2 = *(this + 5);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(this + 2);
  v4 = *(this + 3);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_1DF7FFED0(v4);
  }

  v6 = *this;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3321888768;
  v7[2] = sub_1DF801FFC;
  v7[3] = &unk_1F5AC6628;
  v7[4] = v5;
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = v3;
  v10 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_async(v6, v7);
  if (v10)
  {
    sub_1DF7FFED0(v10);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  if (v2)
  {
    sub_1DF7FFED0(v2);
  }
}

void *sub_1DF803090(void *result, void *a2)
{
  v2 = a2[5];
  result[4] = a2[4];
  result[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  result[6] = a2[6];
  result[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

char *CLConnectionMessage::CLConnectionMessage(char *__dst, __int128 *a2, void *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_1DF802ED0(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  *(__dst + 3) = 0;
  __dst[32] = 0;
  *(__dst + 40) = 0u;
  *(__dst + 56) = 0u;
  *(__dst + 72) = 0u;
  *(__dst + 7) = CLConnectionMessage::createXPCObject(a3);
  return __dst;
}

void sub_1DF80313C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 80);
  if (v3)
  {
    sub_1DF7FFED0(v3);
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

xpc_object_t CLConnectionMessage::createXPCObject(void *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v1 requiringSecureCoding:1 error:0];
    v1 = v3;
    if (v3)
    {
      v1 = xpc_data_create([v3 bytes], objc_msgSend(v3, "length"));
    }

    objc_autoreleasePoolPop(v2);
  }

  return v1;
}

void CLConnectionClient::setDefaultMessageHandler(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_1DF7FFED0(v6);
  }

  if (a2)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3321888768;
    v14[2] = sub_1DF800F60;
    v14[3] = &unk_1F5AC6698;
    v16 = v7;
    v17 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v15 = a2;
      std::__shared_weak_count::__release_weak(v6);
    }

    else
    {
      v15 = a2;
    }

    v8 = v14;
  }

  else
  {
    v8 = 0;
  }

  v9 = *a1;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3321888768;
  v10[2] = sub_1DF80365C;
  v10[3] = &unk_1F5AC6778;
  v10[5] = v7;
  v11 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = v5;
  v13 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10[4] = v8;
  dispatch_async(v9, v10);
  if (v13)
  {
    sub_1DF7FFED0(v13);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  if (v4)
  {
    sub_1DF7FFED0(v4);
  }
}

os_log_t sub_1DF80341C()
{
  result = os_log_create("com.apple.LocationSupport", "Connection");
  qword_1ED5FAD60 = result;
  return result;
}

os_log_t sub_1DF80344C()
{
  result = os_log_create("com.apple.LocationSupport", "Connection");
  qword_1ED5FAD60 = result;
  return result;
}

os_log_t sub_1DF80347C()
{
  result = os_log_create("com.apple.LocationSupport", "Connection");
  qword_1ED5FAD60 = result;
  return result;
}

void sub_1DF8034AC(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    sub_1DF7FFED0(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1DF8034FC(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_1DF7FFED0(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1DF80354C(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3321888768;
  v4 = sub_1DF80395C;
  v5 = &unk_1F5AC66D0;
  v1 = *(a1 + 72);
  v7 = *(a1 + 64);
  v8 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 32);
  v2 = *(a1 + 56);
  if (v2 && *(v2 + 8) != -1)
  {
    v4(v3);
  }

  if (v8)
  {
    sub_1DF7FFED0(v8);
  }
}

void sub_1DF803600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_1DF7FFED0(a16);
  }

  _Unwind_Resume(exception_object);
}

void *CLConnection::setDefaultMessageHandler(uint64_t a1, const void *a2)
{
  dispatch_assert_queue_V2(*(a1 + 8));
  v4 = *(a1 + 56);
  if (v4)
  {
    _Block_release(v4);
  }

  result = _Block_copy(a2);
  *(a1 + 56) = result;
  return result;
}

void sub_1DF80365C(void *a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3321888768;
  v4 = sub_1DF803728;
  v5 = &unk_1F5AC6740;
  v1 = a1[8];
  v7 = a1[7];
  v8 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = a1[4];
  v2 = a1[6];
  if (v2 && *(v2 + 8) != -1)
  {
    v4(v3);
  }

  if (v8)
  {
    sub_1DF7FFED0(v8);
  }
}

void sub_1DF803710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_1DF7FFED0(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DF803728(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = v2[3];
  v2[3] = _Block_copy(v1);
  if (*v2)
  {
    CLConnection::setDefaultMessageHandler(*v2, v1);
  }

  if (v3)
  {

    _Block_release(v3);
  }
}

void *CLConnection::setInterruptionHandler(uint64_t a1, const void *a2)
{
  dispatch_assert_queue_V2(*(a1 + 8));
  v4 = *(a1 + 48);
  if (v4)
  {
    _Block_release(v4);
  }

  result = _Block_copy(a2);
  *(a1 + 48) = result;
  return result;
}

void *CLConnection::setDisconnectionHandler(uint64_t a1, const void *a2)
{
  dispatch_assert_queue_V2(*(a1 + 8));
  v4 = *(a1 + 40);
  if (v4)
  {
    _Block_release(v4);
  }

  result = _Block_copy(a2);
  *(a1 + 40) = result;
  return result;
}

void sub_1DF803820(void *a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3321888768;
  v4 = sub_1DF8038EC;
  v5 = &unk_1F5AC6740;
  v1 = a1[8];
  v7 = a1[7];
  v8 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = a1[4];
  v2 = a1[6];
  if (v2 && *(v2 + 8) != -1)
  {
    v4(v3);
  }

  if (v8)
  {
    sub_1DF7FFED0(v8);
  }
}

void sub_1DF8038D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_1DF7FFED0(a16);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1DF8038EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v2 + 32);
  *(v2 + 32) = _Block_copy(v1);
  if (v3)
  {
    _Block_release(v3);
  }

  result = *v2;
  if (*v2)
  {

    return CLConnection::setInterruptionHandler(result, v1);
  }

  return result;
}

uint64_t sub_1DF80395C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v1)
  {
    [*(v2 + 16) setObject:objc_msgSend(*(a1 + 40) forKeyedSubscript:{"copy"), v3}];
    result = *v2;
    if (*v2)
    {

      return CLConnection::setHandlerForMessage(result, v3, v1);
    }
  }

  else
  {
    v5 = *(v2 + 16);

    return [v5 removeObjectForKey:v3];
  }

  return result;
}

void sub_1DF803A00(void *a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3321888768;
  v4 = sub_1DF803E10;
  v5 = &unk_1F5AC65F8;
  v1 = a1[7];
  v6 = a1[6];
  v7 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v2 = a1[5];
  if (v2 && *(v2 + 8) != -1)
  {
    v4(v3);
  }

  if (v7)
  {
    sub_1DF7FFED0(v7);
  }
}

void sub_1DF803AAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_1DF7FFED0(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CLConnection::setHandlerForMessage(uint64_t a1, uint64_t a2, void *a3)
{
  dispatch_assert_queue_V2(*(a1 + 8));
  result = [*(a1 + 16) removeObjectForKey:a2];
  if (a3)
  {
    v7 = [a3 copy];
    v8 = *(a1 + 16);

    return [v8 setObject:v7 forKeyedSubscript:a2];
  }

  return result;
}

void sub_1DF803B44(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_1DF7FFED0(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void CLConnection::start(dispatch_queue_t *this)
{
  v14 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(this[1]);
  if ((this[9] & 1) == 0)
  {
    if (qword_1ED5FAD68 != -1)
    {
      dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
    }

    v3 = qword_1ED5FAD60;
    if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v7 = 0;
      v8 = 2082;
      v9 = &unk_1DF8255EF;
      v10 = 2082;
      v11 = "assert";
      v12 = 2081;
      v13 = "fPaused";
      _os_log_impl(&dword_1DF7FE000, v3, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Cannot call start() on an unpaused CLConnection., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
      }
    }

    v4 = qword_1ED5FAD60;
    if (os_signpost_enabled(qword_1ED5FAD60))
    {
      *buf = 68289539;
      v7 = 0;
      v8 = 2082;
      v9 = &unk_1DF8255EF;
      v10 = 2082;
      v11 = "assert";
      v12 = 2081;
      v13 = "fPaused";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Cannot call start() on an unpaused CLConnection.", "{msg%{public}.0s:Cannot call start() on an unpaused CLConnection., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
      }
    }

    v5 = qword_1ED5FAD60;
    if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v7 = 0;
      v8 = 2082;
      v9 = &unk_1DF8255EF;
      v10 = 2082;
      v11 = "assert";
      v12 = 2081;
      v13 = "fPaused";
      _os_log_impl(&dword_1DF7FE000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Cannot call start() on an unpaused CLConnection., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
  }

  xpc_connection_resume(*this);
  *(this + 72) = 0;
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1DF803E10(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  dispatch_assert_queue_V2(*(v1 + 8));
  if ((*(v1 + 97) & 1) == 0)
  {
    if (qword_1ED5FAD68 != -1)
    {
      dispatch_once(&qword_1ED5FAD68, &unk_1F5AC68B0);
    }

    v5 = qword_1ED5FAD60;
    if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = &unk_1DF8255EF;
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "fPaused";
      _os_log_impl(&dword_1DF7FE000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Cannot call start() on an unpaused CLConnectionClient, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC68B0);
      }
    }

    v6 = qword_1ED5FAD60;
    if (os_signpost_enabled(qword_1ED5FAD60))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = &unk_1DF8255EF;
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "fPaused";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Cannot call start() on an unpaused CLConnectionClient", "{msg%{public}.0s:Cannot call start() on an unpaused CLConnectionClient, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC68B0);
      }
    }

    v7 = qword_1ED5FAD60;
    if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = &unk_1DF8255EF;
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "fPaused";
      _os_log_impl(&dword_1DF7FE000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Cannot call start() on an unpaused CLConnectionClient, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
  }

  *(v1 + 97) = 0;
  v2 = *v1;
  if (*v1)
  {
    v3 = *MEMORY[0x1E69E9840];

    CLConnection::start(v2);
  }

  else
  {
    v4 = *MEMORY[0x1E69E9840];
  }
}

void sub_1DF8040D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = *(a1 + 48);
  v2 = *(a1 + 56);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *(a1 + 64);
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v4 = *(a1 + 64);
  }

  v8[0] = v3;
  v8[1] = v2;
  sub_1DF80443C(v1, v8, v4 & 1, 0);
  if (v2)
  {
    sub_1DF7FFED0(v2);
    v5 = *v1;
    if (!*v1)
    {
      goto LABEL_11;
    }

    v6 = v3;
    v7 = v2;
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v5 = *v1;
    if (!*v1)
    {
      return;
    }

    v6 = v3;
    v7 = 0;
  }

  CLConnection::sendMessage(v5, &v6);
  if (!v2)
  {
    return;
  }

  sub_1DF7FFED0(v2);
LABEL_11:

  sub_1DF7FFED0(v2);
}

void sub_1DF8041AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1DF7FFED0(v1);
    sub_1DF7FFED0(v1);
  }

  _Unwind_Resume(exception_object);
}

void CLConnectionClient::sendMessage(uint64_t a1, uint64_t *a2, char a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_1DF7FE000, "CL: CLConnectionClient::sendMessage(cache)", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v6, &state);

  if (qword_1ED5FAD68 != -1)
  {
    dispatch_once(&qword_1ED5FAD68, &unk_1F5AC68B0);
  }

  v7 = qword_1ED5FAD60;
  if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289282;
    v21 = 0;
    v22 = 2082;
    v23 = &unk_1DF8255EF;
    v24 = 2082;
    v25 = "activity";
    _os_log_impl(&dword_1DF7FE000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLConnectionClient::sendMessage(cache), event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 24);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_1DF7FFED0(v10);
  }

  v11 = *a1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = sub_1DF8040D0;
  block[3] = &unk_1F5AC67A8;
  block[4] = v9;
  v15 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = a2[1];
  v16 = *a2;
  v17 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = a3;
  dispatch_async(v11, block);
  if (v17)
  {
    sub_1DF7FFED0(v17);
  }

  if (v15)
  {
    sub_1DF7FFED0(v15);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  if (v8)
  {
    sub_1DF7FFED0(v8);
  }

  os_activity_scope_leave(&state);
  v13 = *MEMORY[0x1E69E9840];
}

void *sub_1DF804408(void *result, void *a2)
{
  v2 = a2[5];
  result[4] = a2[4];
  result[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  result[6] = a2[6];
  result[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1DF80443C(uint64_t a1, uint64_t **a2, int a3, void *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(*(a1 + 8));
  if (*a1)
  {
    v9 = *(a1 + 48);
    v8 = *(a1 + 56);
    if (v9 == v8)
    {
LABEL_17:
      if (!a3)
      {
        goto LABEL_62;
      }

      goto LABEL_34;
    }

    v10 = *a2;
    v11 = *(*a2 + 23);
    if (v11 >= 0)
    {
      v12 = *(*a2 + 23);
    }

    else
    {
      v12 = (*a2)[1];
    }

    while (1)
    {
      v13 = *(*v9 + 23);
      v14 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v13 = *(*v9 + 8);
      }

      if (v13 == v12)
      {
        v15 = v14 >= 0 ? *v9 : **v9;
        v16 = *v10;
        v17 = v11 >= 0 ? v10 : *v10;
        if (!memcmp(v15, v17, v12))
        {
          break;
        }
      }

      v9 += 24;
      if (v9 == v8)
      {
        goto LABEL_17;
      }
    }

    v23 = (v9 + 24);
    if (v9 + 24 != v8)
    {
      do
      {
        v24 = *v23;
        *v23 = 0;
        *(v23 + 1) = 0;
        v25 = *(v23 - 2);
        *(v23 - 24) = v24;
        if (v25)
        {
          sub_1DF7FFED0(v25);
        }

        v26 = *(v23 - 1);
        *(v23 - 1) = *(v23 + 2);
        *(v23 + 2) = 0;

        v23 = (v23 + 24);
      }

      while (v23 != v8);
      v8 = *(a1 + 56);
      v9 = v23 - 24;
    }

    while (v8 != v9)
    {
      v8 -= 24;
      sub_1DF804D4C(v8);
    }

    *(a1 + 56) = v9;
    if (a3)
    {
LABEL_34:
      v27 = *a2;
      if ((*a2)[6])
      {
        if (qword_1ED5FAD68 != -1)
        {
          dispatch_once(&qword_1ED5FAD68, &unk_1F5AC68B0);
        }

        v28 = qword_1ED5FAD60;
        if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_FAULT))
        {
          v29 = *a2;
          if (*(*a2 + 23) < 0)
          {
            v29 = **a2;
          }

          *v39 = 68289282;
          *&v39[8] = 2082;
          *&v39[10] = &unk_1DF8255EF;
          *&v39[18] = 2082;
          *&v39[20] = v29;
          _os_log_impl(&dword_1DF7FE000, v28, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Trying to cache a reply message, messageName:%{public, location:escape_only}s}", v39, 0x1Cu);
          if (qword_1ED5FAD68 != -1)
          {
            dispatch_once(&qword_1ED5FAD68, &unk_1F5AC68B0);
          }
        }

        v30 = qword_1ED5FAD60;
        if (os_signpost_enabled(qword_1ED5FAD60))
        {
          v31 = *a2;
          if (*(*a2 + 23) < 0)
          {
            v31 = **a2;
          }

          *v39 = 68289282;
          *&v39[8] = 2082;
          *&v39[10] = &unk_1DF8255EF;
          *&v39[18] = 2082;
          *&v39[20] = v31;
          _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v30, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Trying to cache a reply message", "{msg%{public}.0s:Trying to cache a reply message, messageName:%{public, location:escape_only}s}", v39, 0x1Cu);
        }
      }

      else if (a4)
      {
        v32 = [a4 copy];
        v33 = v32;
        v34 = a2[1];
        *v39 = *a2;
        *&v39[8] = v34;
        if (v34)
        {
          atomic_fetch_add_explicit(v34 + 1, 1uLL, memory_order_relaxed);
        }

        *&v39[16] = v32;
        sub_1DF804950((a1 + 48), v39);

        if (*&v39[8])
        {
          sub_1DF7FFED0(*&v39[8]);
        }
      }

      else
      {
        v37 = a2[1];
        if (v37)
        {
          atomic_fetch_add_explicit(v37 + 1, 1uLL, memory_order_relaxed);
        }

        *v39 = v27;
        *&v39[8] = v37;
        *&v39[16] = 0;
        sub_1DF804950((a1 + 48), v39);

        if (*&v39[8])
        {
          sub_1DF7FFED0(*&v39[8]);
        }
      }

      goto LABEL_62;
    }

    if (qword_1ED5FAD68 != -1)
    {
      dispatch_once(&qword_1ED5FAD68, &unk_1F5AC68B0);
    }

    v35 = qword_1ED5FAD60;
    if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_DEFAULT))
    {
      v36 = *a2;
      if (*(*a2 + 23) < 0)
      {
        v36 = **a2;
      }

      *v39 = 136446210;
      *&v39[4] = v36;
      v20 = "#Warning Sending an un-cached message '%{public}s' without first clearing the previously cached value";
      v21 = v35;
      v22 = 12;
LABEL_25:
      _os_log_impl(&dword_1DF7FE000, v21, OS_LOG_TYPE_DEFAULT, v20, v39, v22);
    }
  }

  else
  {
    if (qword_1ED5FAD68 != -1)
    {
      dispatch_once(&qword_1ED5FAD68, &unk_1F5AC68B0);
    }

    v18 = qword_1ED5FAD60;
    if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *a2;
      if (*(*a2 + 23) < 0)
      {
        v19 = **a2;
      }

      *v39 = 68289282;
      *&v39[8] = 2082;
      *&v39[10] = &unk_1DF8255EF;
      *&v39[18] = 2082;
      *&v39[20] = v19;
      v20 = "{msg%{public}.0s:No connection fConnection, messageName:%{public, location:escape_only}s}";
      v21 = v18;
      v22 = 28;
      goto LABEL_25;
    }
  }

LABEL_62:
  v38 = *MEMORY[0x1E69E9840];
}

void sub_1DF8048D4(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1DF80AEC0(exception_object);
}

uint64_t *sub_1DF804950(uint64_t *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 3);
    v7 = v6 + 1;
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1DF817524();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
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

    v27 = result;
    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1DF80C8C4();
    }

    v10 = *a2;
    v11 = 24 * v6;
    *a2 = 0;
    *(a2 + 1) = 0;
    v12 = *result;
    v13 = result[1];
    v14 = v13 - *result;
    v23 = 0;
    v24 = v11;
    v15 = 0;
    *v11 = v10;
    *(v11 + 16) = *(a2 + 2);
    *(a2 + 2) = 0;
    v5 = 24 * v6 + 24;
    v25 = v5;
    v26 = 0;
    if (v13 != v12)
    {
      v16 = 0;
      v22 = v14;
      v17 = 24 * v6 - 8 * ((v13 - v12) >> 3);
      do
      {
        v18 = v12 + v16;
        v19 = (v17 + v16);
        v20 = *(v12 + v16 + 8);
        *v19 = *(v12 + v16);
        v19[1] = v20;
        if (v20)
        {
          atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
        }

        v19[2] = 0;
        v19[2] = *(v18 + 16);
        v16 += 24;
      }

      while (v18 + 24 != v13);
      do
      {
        sub_1DF804D4C(v12);
        v12 += 24;
      }

      while (v12 != v13);
      v12 = *v2;
      v5 = v25;
      v15 = v26;
      v14 = v22;
    }

    *v2 = v11 - v14;
    v2[1] = v5;
    v21 = v2[2];
    v2[2] = v15;
    v25 = v12;
    v26 = v21;
    v23 = v12;
    v24 = v12;
    result = sub_1DF804BA4(&v23);
  }

  else
  {
    *v3 = *a2;
    *a2 = 0;
    *(a2 + 1) = 0;
    *(v3 + 16) = 0;
    *(v3 + 16) = *(a2 + 2);
    *(a2 + 2) = 0;
    v5 = v3 + 24;
  }

  v2[1] = v5;
  return result;
}

uint64_t sub_1DF804BA4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    sub_1DF804D4C(i - 24);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1DF804D4C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {

    sub_1DF7FFED0(v2);
  }
}

void sub_1DF804DC4()
{
  v0 = dispatch_queue_create("CLServiceVendorQueue", MEMORY[0x1E69E96A8]);
  v1 = qword_1ED5FADA0;
  qword_1ED5FADA0 = v0;

  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = qword_1ED5FADA8;
  qword_1ED5FADA8 = v2;

  v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, qword_1ED5FADA0);
  v5 = qword_1ED5FADB0;
  qword_1ED5FADB0 = v4;

  dispatch_source_set_timer(qword_1ED5FADB0, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_source_set_event_handler(qword_1ED5FADB0, &unk_1F5AC6B28);
  if (*&qword_1ED5FAD58 > 0.0)
  {
    dispatch_resume(qword_1ED5FADB0);
  }

  v6 = objc_opt_class();

  sub_1DF804EAC(v6, @"_CLMainService");
}

void sub_1DF804EAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_1ED5FADA0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1DF8072CC;
  v6[3] = &unk_1E86C8610;
  v7 = v3;
  v8 = a1;
  v5 = v3;
  dispatch_barrier_async(v4, v6);
}

uint64_t sub_1DF804F48()
{
  qword_1ED5FADC8 = objc_alloc_init(CLServiceVendor);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1DF804F84(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    sub_1DF7FFED0(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    sub_1DF7FFED0(v3);
  }
}

uint64_t CLConnection::resetAllHandlers(dispatch_queue_t *this)
{
  dispatch_assert_queue_V2(this[1]);
  v2 = this[5];
  if (v2)
  {
    _Block_release(v2);
    this[5] = 0;
  }

  v3 = this[6];
  if (v3)
  {
    _Block_release(v3);
    this[6] = 0;
  }

  v4 = this[7];
  if (v4)
  {
    _Block_release(v4);
    this[7] = 0;
  }

  v5 = this[2];

  return [v5 removeAllObjects];
}

void CLConnection::handleDisconnection(dispatch_queue_t *this)
{
  v13 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(this[1]);
  v2 = _os_activity_create(&dword_1DF7FE000, "CL: CLConnection::handleDisconnection", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v2, &v6);

  if (qword_1ED5FAD68 != -1)
  {
    dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
  }

  v3 = qword_1ED5FAD60;
  if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v8 = 0;
    v9 = 2082;
    v10 = &unk_1DF8255EF;
    v11 = 2082;
    v12 = "activity";
    _os_log_impl(&dword_1DF7FE000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLConnection::handleDisconnection, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  CLConnection::resetReplyHandlers(this);
  v4 = this[5];
  if (v4)
  {
    (v4[2].isa)();
  }

  os_activity_scope_leave(&v6);
  v5 = *MEMORY[0x1E69E9840];
}

uint64_t CLConnection::resetReplyHandlers(CLConnection *this)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(this + 3);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(this + 3) objectForKeyedSubscript:*(*(&v11 + 1) + 8 * i)];
        v9 = 0;
        v10 = 0;
        (*(v6 + 16))(v6, &v9);
        if (v10)
        {
          sub_1DF7FFED0(v10);
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }

  result = [*(this + 3) removeAllObjects];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DF8052C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1DF7FFED0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DF8052E0(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 8));
  if (*a1)
  {
    os_unfair_lock_lock((a1 + 100));
    if (qword_1ED5FAD68 != -1)
    {
      dispatch_once(&qword_1ED5FAD68, &unk_1F5AC68B0);
    }

    v2 = qword_1ED5FAD60;
    if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_impl(&dword_1DF7FE000, v2, OS_LOG_TYPE_DEBUG, "Invalidating connection", v4, 2u);
    }

    v3 = *a1;
    *a1 = 0;
    os_unfair_lock_unlock((a1 + 100));
    CLConnection::deferredDelete(v3);
  }
}

void CLConnection::deferredDelete(CLConnection *this)
{
  dispatch_assert_queue_V2(*(this + 1));
  if (*(this + 72) == 1)
  {
    CLConnection::start(this);
  }

  CLConnection::resetAllHandlers(this);
  v2 = *(this + 8);
  if (v2)
  {
    (*(v2 + 16))();
    _Block_release(*(this + 8));
    *(this + 8) = 0;
  }

  v3 = *this;
  if (*this)
  {
    barrier[0] = MEMORY[0x1E69E9820];
    barrier[1] = 3221225472;
    barrier[2] = sub_1DF80547C;
    barrier[3] = &unk_1E86C83E0;
    barrier[4] = this;
    xpc_connection_send_barrier(v3, barrier);
  }
}

void sub_1DF80546C(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1)
  {
    sub_1DF7FFED0(v1);
  }
}

void sub_1DF80547C(uint64_t a1)
{
  v1 = *(a1 + 32);
  xpc_connection_cancel(*v1);
  xpc_release(*v1);
  *v1 = 0;
}

void CLConnection::~CLConnection(CLConnection *this)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*this)
  {
    if (qword_1ED5FAD68 != -1)
    {
      dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
    }

    v5 = qword_1ED5FAD60;
    if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v13 = 0;
      v14 = 2082;
      v15 = &unk_1DF8255EF;
      v16 = 2082;
      v17 = "assert";
      v18 = 2081;
      v19 = "__null == fConnection";
      _os_log_impl(&dword_1DF7FE000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:deferredDelete() should have nulled out connection, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
      }
    }

    v6 = qword_1ED5FAD60;
    if (os_signpost_enabled(qword_1ED5FAD60))
    {
      *buf = 68289539;
      v13 = 0;
      v14 = 2082;
      v15 = &unk_1DF8255EF;
      v16 = 2082;
      v17 = "assert";
      v18 = 2081;
      v19 = "__null == fConnection";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "deferredDelete() should have nulled out connection", "{msg%{public}.0s:deferredDelete() should have nulled out connection, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
      }
    }

    v7 = qword_1ED5FAD60;
    if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v13 = 0;
      v14 = 2082;
      v15 = &unk_1DF8255EF;
      v16 = 2082;
      v17 = "assert";
      v18 = 2081;
      v19 = "__null == fConnection";
      _os_log_impl(&dword_1DF7FE000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:deferredDelete() should have nulled out connection, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

LABEL_29:
    abort_report_np();
    __break(1u);
  }

  if (*(this + 8))
  {
    if (qword_1ED5FAD68 != -1)
    {
      dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
    }

    v8 = qword_1ED5FAD60;
    if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v13 = 0;
      v14 = 2082;
      v15 = &unk_1DF8255EF;
      v16 = 2082;
      v17 = "assert";
      v18 = 2081;
      v19 = "__null == fDestructionHandler";
      _os_log_impl(&dword_1DF7FE000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:deferredDelete() should have nulled out handler, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
      }
    }

    v9 = qword_1ED5FAD60;
    if (os_signpost_enabled(qword_1ED5FAD60))
    {
      *buf = 68289539;
      v13 = 0;
      v14 = 2082;
      v15 = &unk_1DF8255EF;
      v16 = 2082;
      v17 = "assert";
      v18 = 2081;
      v19 = "__null == fDestructionHandler";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "deferredDelete() should have nulled out handler", "{msg%{public}.0s:deferredDelete() should have nulled out handler, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
      }
    }

    v10 = qword_1ED5FAD60;
    if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v13 = 0;
      v14 = 2082;
      v15 = &unk_1DF8255EF;
      v16 = 2082;
      v17 = "assert";
      v18 = 2081;
      v19 = "__null == fDestructionHandler";
      _os_log_impl(&dword_1DF7FE000, v10, OS_LOG_TYPE_INFO, "{msg%{public}.0s:deferredDelete() should have nulled out handler, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    goto LABEL_29;
  }

  v2 = *(this + 1);
  *(this + 1) = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1DF805A08;
  block[3] = &unk_1E86C8408;
  block[4] = v2;
  dispatch_async(v2, block);

  *(this + 3) = 0;
  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  v3 = *(this + 11);
  if (v3)
  {
    sub_1DF7FFED0(v3);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1DF8059BC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1DF80AEC0(a1);
}

CLConnection *CLConnection::connectionFinalizer(CLConnection *this, void *a2)
{
  if (this)
  {
    CLConnection::~CLConnection(this);

    JUMPOUT(0x1E12DFAD0);
  }

  return this;
}

void sub_1DF805A10(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = objc_autoreleasePoolPush();
  if (a2 != MEMORY[0x1E69E9E20])
  {
    CLConnectionServer::handleEvent(v3, a2);
  }

  objc_autoreleasePoolPop(v4);
}

void CLConnectionServer::handleEvent(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E12E05B0](a2);
  if (v3 == MEMORY[0x1E69E9E68])
  {
    v7 = *MEMORY[0x1E69E9840];

    CLConnectionServer::handleConnection();
  }

  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E98])
  {
    string = xpc_dictionary_get_string(a2, *MEMORY[0x1E69E9E28]);
    if (qword_1ED5FAD68 != -1)
    {
      dispatch_once(&qword_1ED5FAD68, &unk_1F5AC6320);
    }

    v9 = qword_1ED5FAD60;
    if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_FAULT))
    {
      v13 = 136446210;
      v14 = string;
      v10 = "Got error: %{public}s";
      v11 = v9;
LABEL_41:
      _os_log_impl(&dword_1DF7FE000, v11, OS_LOG_TYPE_FAULT, v10, &v13, 0xCu);
    }
  }

  else
  {
    if (qword_1ED5FAD68 != -1)
    {
      dispatch_once(&qword_1ED5FAD68, &unk_1F5AC6320);
    }

    v5 = qword_1ED5FAD60;
    if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_FAULT))
    {
      if (v4 == MEMORY[0x1E69E9ED0])
      {
        v6 = "XPC_TYPE_NULL";
      }

      else if (v4 == MEMORY[0x1E69E9E58])
      {
        v6 = "XPC_TYPE_BOOL";
      }

      else if (v4 == MEMORY[0x1E69E9EB0])
      {
        v6 = "XPC_TYPE_INT64";
      }

      else if (v4 == MEMORY[0x1E69E9F18])
      {
        v6 = "XPC_TYPE_UINT64";
      }

      else if (v4 == MEMORY[0x1E69E9E88])
      {
        v6 = "XPC_TYPE_DOUBLE";
      }

      else if (v4 == MEMORY[0x1E69E9E78])
      {
        v6 = "XPC_TYPE_DATE";
      }

      else if (v4 == MEMORY[0x1E69E9E70])
      {
        v6 = "XPC_TYPE_DATA";
      }

      else if (v4 == MEMORY[0x1E69E9F10])
      {
        v6 = "XPC_TYPE_STRING";
      }

      else if (v4 == MEMORY[0x1E69E9F20])
      {
        v6 = "XPC_TYPE_UUID";
      }

      else if (v4 == MEMORY[0x1E69E9EA0])
      {
        v6 = "XPC_TYPE_FD";
      }

      else if (v4 == MEMORY[0x1E69E9F08])
      {
        v6 = "XPC_TYPE_SHMEM";
      }

      else if (v4 == MEMORY[0x1E69E9E50])
      {
        v6 = "XPC_TYPE_ARRAY";
      }

      else if (v4 == MEMORY[0x1E69E9E80])
      {
        v6 = "XPC_TYPE_DICTIONARY";
      }

      else
      {
        v6 = "Unknown type";
      }

      v13 = 136446210;
      v14 = v6;
      v10 = "Unexpected event type %{public}s";
      v11 = v5;
      goto LABEL_41;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1DF805F10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  _Unwind_Resume(exception_object);
}

void CLConnection::CLConnection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = objc_alloc_init(MEMORY[0x1E695DF90]);
  *(a1 + 24) = objc_alloc_init(MEMORY[0x1E695DF90]);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 257;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  xpc_retain(*a1);
  xpc_connection_set_target_queue(*a1, *(a1 + 8));
  CLConnection::initializeConnection_nl(a1);
}

void sub_1DF805FC4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  v3 = *(v1 + 88);
  if (v3)
  {
    sub_1DF7FFED0(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1DF805FEC()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  result = [v0 initWithObjects:{v1, v2, v3, v4, v5, objc_opt_class(), 0}];
  qword_1ED5FAE70 = result;
  return result;
}

void sub_1DF8060AC(void *a1, uint64_t *a2)
{
  v2 = a1[4];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3321888768;
  v7 = sub_1DF80617C;
  v8 = &unk_1F5AC6238;
  v3 = a1[7];
  v9 = v2;
  v10 = v3;
  v4 = a2[1];
  v11 = *a2;
  v12 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = a1[6];
  if (v5 && *(v5 + 8) != -1)
  {
    v7(v6);
  }

  if (v12)
  {
    sub_1DF7FFED0(v12);
  }
}

void sub_1DF806164(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_1DF7FFED0(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DF80617C(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[7];
  v5[0] = a1[6];
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  CLConnectionServer::handleMessage(v2, v3, v5);
  if (v4)
  {

    sub_1DF7FFED0(v4);
  }
}

void sub_1DF8061F4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1DF7FFED0(v1);
  }

  _Unwind_Resume(exception_object);
}

void CLConnectionServer::handleMessage(uint64_t a1, dispatch_queue_t *this, uint64_t *a3)
{
  if (this)
  {
    CLConnection::pause(this);
    CLConnection::resetAllHandlers(this);
    v6 = *(a1 + 16);
    v7 = a3[1];
    v9 = *a3;
    v10 = v7;
    v11 = this;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(v6 + 16))(v6, &v11, &v9);
    if (v10)
    {
      sub_1DF7FFED0(v10);
    }

    v8 = v11;
    v11 = 0;
    if (v8)
    {
      CLConnection::deferredDelete(v8);
    }
  }
}

void sub_1DF8062AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    sub_1DF7FFED0(a4);
  }

  sub_1DF80AFD0(va);
  _Unwind_Resume(a1);
}

uint64_t CLConnectionMessage::getDictionary(CLConnectionMessage *this)
{
  if (qword_1ED5FAE78 != -1)
  {
    dispatch_once(&qword_1ED5FAE78, &unk_1F5AC6548);
  }

  v2 = qword_1ED5FAE70;

  return CLConnectionMessage::getObjectOfClasses(this, v2);
}

void CLConnection::pause(dispatch_queue_t *this)
{
  v14 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(this[1]);
  if (*(this + 72) == 1)
  {
    if (qword_1ED5FAD68 != -1)
    {
      dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
    }

    v3 = qword_1ED5FAD60;
    if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v7 = 0;
      v8 = 2082;
      v9 = &unk_1DF8255EF;
      v10 = 2082;
      v11 = "assert";
      v12 = 2081;
      v13 = "!fPaused";
      _os_log_impl(&dword_1DF7FE000, v3, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Cannot call pause() on a paused CLConnection., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
      }
    }

    v4 = qword_1ED5FAD60;
    if (os_signpost_enabled(qword_1ED5FAD60))
    {
      *buf = 68289539;
      v7 = 0;
      v8 = 2082;
      v9 = &unk_1DF8255EF;
      v10 = 2082;
      v11 = "assert";
      v12 = 2081;
      v13 = "!fPaused";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Cannot call pause() on a paused CLConnection.", "{msg%{public}.0s:Cannot call pause() on a paused CLConnection., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
      }
    }

    v5 = qword_1ED5FAD60;
    if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v7 = 0;
      v8 = 2082;
      v9 = &unk_1DF8255EF;
      v10 = 2082;
      v11 = "assert";
      v12 = 2081;
      v13 = "!fPaused";
      _os_log_impl(&dword_1DF7FE000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Cannot call pause() on a paused CLConnection., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
  }

  xpc_connection_suspend(*this);
  *(this + 72) = 1;
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1DF8065B4(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t CLConnection::getAuditToken(dispatch_queue_t *this)
{
  dispatch_assert_queue_V2(this[1]);
  v2 = *this;

  return xpc_connection_get_audit_token();
}

uint64_t CLConnectionEntitlementCache::isEntitled(uint64_t a1, uint64_t *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 56));
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = a1 + 8;
  do
  {
    v7 = sub_1DF806D9C((v4 + 32), a2);
    if ((v7 & 0x80u) == 0)
    {
      v6 = v4;
    }

    v4 = *(v4 + ((v7 >> 4) & 8));
  }

  while (v4);
  if (v6 == v5 || (sub_1DF806D9C(a2, (v6 + 32)) & 0x80) != 0)
  {
LABEL_9:
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
    if (v10)
    {
      error = 0;
      v11 = *MEMORY[0x1E695E480];
      v12 = *(a1 + 40);
      *token.val = *(a1 + 24);
      *&token.val[4] = v12;
      v13 = SecTaskCreateWithAuditToken(v11, &token);
      v14 = v13;
      if (v13)
      {
        v15 = SecTaskCopyValueForEntitlement(v13, v10, &error);
        v16 = error;
        if (error)
        {
          if (qword_1ED5FAD68 != -1)
          {
            dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
          }

          v17 = qword_1ED5FAD60;
          if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_DEFAULT))
          {
            sub_1DF81265C(&__p, a1 + 24);
            v18 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
            Domain = CFErrorGetDomain(error);
            Code = CFErrorGetCode(error);
            token.val[0] = 136315650;
            *&token.val[1] = v18;
            LOWORD(token.val[3]) = 2112;
            *(&token.val[3] + 2) = Domain;
            HIWORD(token.val[5]) = 2048;
            *&token.val[6] = Code;
            _os_log_impl(&dword_1DF7FE000, v17, OS_LOG_TYPE_DEFAULT, "#Warning SecTaskCopyValueForEntitlement failed for token '%s' with error '%@' (%ld)", &token, 0x20u);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          CFRelease(error);
        }

        if (v15)
        {
          v21 = CFGetTypeID(v15);
          v8 = v21 == CFBooleanGetTypeID() && CFBooleanGetValue(v15) != 0;
          CFRelease(v15);
        }

        else
        {
          v8 = 0;
        }

        if (v16)
        {
          if (qword_1ED5FAD68 != -1)
          {
            dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
          }

          v25 = qword_1ED5FAD60;
          if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_DEFAULT))
          {
            v26 = *(a2 + 23);
            v27 = *a2;
            v28 = *(a1 + 44);
            sub_1DF806E1C(&__p);
            if (v26 >= 0)
            {
              v29 = a2;
            }

            else
            {
              v29 = v27;
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            token.val[0] = 136315650;
            *&token.val[1] = v29;
            LOWORD(token.val[3]) = 1024;
            *(&token.val[3] + 2) = v28;
            HIWORD(token.val[4]) = 2080;
            *&token.val[5] = p_p;
            _os_log_impl(&dword_1DF7FE000, v25, OS_LOG_TYPE_DEFAULT, "#Warning Issue retrieving entitlement, '%s', pid, %d, executable or bundle, '%s'", &token, 0x1Cu);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }

        CFRelease(v14);
      }

      else
      {
        if (qword_1ED5FAD68 != -1)
        {
          dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
        }

        v23 = qword_1ED5FAD60;
        v8 = 0;
        if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_DEFAULT))
        {
          sub_1DF81265C(&token, a1 + 24);
          if ((token.val[5] & 0x80000000) == 0)
          {
            p_token = &token;
          }

          else
          {
            p_token = *token.val;
          }

          LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
          *(__p.__r_.__value_.__r.__words + 4) = p_token;
          _os_log_impl(&dword_1DF7FE000, v23, OS_LOG_TYPE_DEFAULT, "#Warning SecTaskCreateWithAuditToken failed for token '%s'", &__p, 0xCu);
          if (SHIBYTE(token.val[5]) < 0)
          {
            operator delete(*token.val);
          }

          v8 = 0;
        }
      }

      v31 = *v5;
      if (!*v5)
      {
LABEL_65:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v32 = v31;
          if ((sub_1DF806D9C(a2, v31 + 4) & 0x80) == 0)
          {
            break;
          }

          v31 = *v32;
          if (!*v32)
          {
            goto LABEL_65;
          }
        }

        if ((sub_1DF806D9C(v32 + 4, a2) & 0x80) == 0)
        {
          break;
        }

        v31 = v32[1];
        if (!v31)
        {
          goto LABEL_65;
        }
      }

      *(v32 + 56) = v8;
    }

    else
    {
      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
      }

      v22 = qword_1ED5FAD60;
      if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_FAULT))
      {
        LOWORD(token.val[0]) = 0;
        _os_log_impl(&dword_1DF7FE000, v22, OS_LOG_TYPE_FAULT, "Couldn't get CFString for entitlement", &token, 2u);
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = *(v6 + 56);
  }

  os_unfair_lock_unlock((a1 + 56));
  v33 = *MEMORY[0x1E69E9840];
  return v8 & 1;
}

uint64_t CLConnection::getUniqueRemotePid(dispatch_queue_t *this)
{
  dispatch_assert_queue_V2(this[1]);
  if (MEMORY[0x1EEE83EC8])
  {
    dispatch_assert_queue_V2(this[1]);
    v2 = *this;
    xpc_connection_get_audit_token();
    return BSVersionedPIDForAuditToken();
  }

  else
  {
    dispatch_assert_queue_V2(this[1]);
    return xpc_connection_get_pid(*this);
  }
}

uint64_t sub_1DF806D9C(void *a1, void *a2)
{
  v2 = a1[1];
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  if (v5 >= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (v3 == v5)
    {
      return 0;
    }

    if (v3 >= v5)
    {
      return 1;
    }
  }

  return 255;
}

void sub_1DF806E1C(std::string *a1)
{
  memset(&v11, 0, sizeof(v11));
  sub_1DF806FBC();
  v2 = *MEMORY[0x1E695E480];
  if (v13 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v4 = CFStringCreateWithCString(*MEMORY[0x1E695E480], p_p, 0x8000100u);
  if (v4)
  {
    v5 = CFURLCreateWithFileSystemPath(v2, v4, kCFURLPOSIXPathStyle, 0);
    if (v5)
    {
      v6 = _CFBundleCopyBundleURLForExecutableURL();
      if (v6)
      {
        v7 = CFBundleCreate(v2, v6);
        v8 = v7;
        if (v7)
        {
          Identifier = CFBundleGetIdentifier(v7);
          if (Identifier)
          {
            sub_1DF800930(&v11, [(__CFString *)Identifier UTF8String]);
          }

          CFRelease(v8);
        }

        CFRelease(v6);
      }

      CFRelease(v5);
    }

    CFRelease(v4);
  }

  if (v13 < 0)
  {
    operator delete(__p);
  }

  size = HIBYTE(v11.__r_.__value_.__r.__words[2]);
  if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v11.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    *a1 = v11;
  }

  else
  {
    sub_1DF806FBC();
    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1DF806F74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1DF806FBC()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v5 = *MEMORY[0x1E69E9840];
  v0->__r_.__value_.__r.__words[0] = 0;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  result = proc_pidpath_audittoken(v1, buffer, 0x1000u);
  if (result >= 1)
  {
    result = sub_1DF800930(v0, buffer);
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DF807064(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1DF807138()
{
  qword_1ED5FADB8 = +[CLSilo main];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1DF807178()
{
  qword_1ED5FADE0 = [[CLDispatchSilo alloc] initMain];

  return MEMORY[0x1EEE66BB8]();
}

void sub_1DF8072CC(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED5FADA8;
  v3 = [*(a1 + 40) getSilo];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    [v4 setResidentCount:{objc_msgSend(v4, "residentCount") + 1}];
  }

  else
  {
    v5 = [CLSiloHeartbeatRecord alloc];
    v6 = [(CLSiloHeartbeatRecord *)v5 initTrackingServiceClass:*(a1 + 40) name:*(a1 + 32)];

    v7 = qword_1ED5FADA8;
    v8 = [v6 silo];
    [v7 setObject:v6 forKey:v8];

    if (qword_1ED5FAD40 != -1)
    {
      dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
    }

    v9 = qword_1ED5FAD48;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [v6 silo];
      v11 = [v10 identifier];
      v13[0] = 68289282;
      v13[1] = 0;
      v14 = 2082;
      v15 = &unk_1DF8255EF;
      v16 = 2114;
      v17 = v11;
      _os_log_impl(&dword_1DF7FE000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Heartbeat tracking commenced, silo:%{public, location:escape_only}@}", v13, 0x1Cu);
    }

    v4 = v6;
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1DF8074DC()
{
  qword_1ED5FAD48 = os_log_create("com.apple.LocationSupport", "Intersilo");

  return MEMORY[0x1EEE66BB8]();
}

os_log_t sub_1DF807520()
{
  result = os_log_create("com.apple.LocationSupport", "Intersilo");
  qword_1ED5FAD48 = result;
  return result;
}

uint64_t sub_1DF807550()
{
  qword_1ED5FAD48 = os_log_create("com.apple.LocationSupport", "Intersilo");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1DF807594()
{
  qword_1ED5FAD48 = os_log_create("com.apple.LocationSupport", "Intersilo");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1DF8075E0(uint64_t a1, uint64_t *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3321888768;
  v6 = sub_1DF8076AC;
  v7 = &unk_1F5AC6660;
  v3 = *a2;
  v2 = a2[1];
  v8 = *(a1 + 32);
  v9 = v3;
  v10 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 48);
  if (v4 && *(v4 + 8) != -1)
  {
    v6(v5);
  }

  if (v10)
  {
    sub_1DF7FFED0(v10);
  }
}

void sub_1DF807694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_1DF7FFED0(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DF8076AC(void *a1)
{
  v2 = a1[4];
  v4 = a1[5];
  v3 = a1[6];
  v5 = v4;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(v2 + 16))(v2, &v5);
  if (v6)
  {
    sub_1DF7FFED0(v6);
  }
}

void sub_1DF80770C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1DF7FFED0(a10);
  }

  _Unwind_Resume(exception_object);
}

void CLConnectionClient::~CLConnectionClient(const void **this)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, this[6]);
  v3 = this[6];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1DF807B88;
  block[3] = &unk_1E86C83E0;
  block[4] = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v4 = this[4];
  v5 = this[5];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *this;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3321888768;
  v10[2] = sub_1DF807C00;
  v10[3] = &unk_1F5AC65F8;
  v10[4] = v4;
  v11 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_async(v6, v10);
  v7 = *this;
  *this = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1DF807DD4;
  v9[3] = &unk_1E86C8408;
  v9[4] = v7;
  dispatch_async(v7, v9);
  if (v11)
  {
    sub_1DF7FFED0(v11);
  }

  if (v5)
  {
    sub_1DF7FFED0(v5);
  }

  v8 = this[5];
  if (v8)
  {
    sub_1DF7FFED0(v8);
  }

  sub_1DF807A90(this + 1);
}

uint64_t sub_1DF807A74(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t CLConnectionMessage::isEntitled(uint64_t a1, uint64_t *a2)
{
  result = *(a1 + 72);
  if (result)
  {
    return CLConnectionEntitlementCache::isEntitled(result, a2);
  }

  return result;
}

uint64_t sub_1DF807B88(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    dispatch_release(*v1);
    v2 = *(v1 + 32);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    v3 = *(v1 + 16);
    if (v3)
    {
      sub_1DF7FFED0(v3);
    }

    JUMPOUT(0x1E12DFAD0);
  }

  return result;
}

void sub_1DF807C00(uint64_t a1)
{
  v1 = *(a1 + 32);
  dispatch_assert_queue_V2(*(v1 + 8));
  sub_1DF8052E0(v1);
  v2 = *(v1 + 16);
  if (v2)
  {

    *(v1 + 16) = 0;
  }

  v3 = *(v1 + 24);
  if (v3)
  {
    _Block_release(v3);
    *(v1 + 24) = 0;
  }

  v4 = *(v1 + 32);
  if (v4)
  {
    _Block_release(v4);
    *(v1 + 32) = 0;
  }

  *(v1 + 96) = 0;
}

void sub_1DF807C68(uint64_t a1)
{
  if (*(a1 + 120) == 1)
  {
    __assert_rtn("~CLConnectionClientInternal", "CLConnectionClient.mm", 73, "!fIsValid");
  }

  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1DF807DDC;
  v3[3] = &unk_1E86C8408;
  v3[4] = v2;
  dispatch_async(v2, v3);
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v4 = (a1 + 72);
  sub_1DF807D4C(&v4);
}

void sub_1DF807D3C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_1DF7FFED0(v1);
  }
}

void sub_1DF807D4C(void ***a1)
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
        v4 -= 24;
        sub_1DF804D4C(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

BOOL sub_1DF807DE4(id *a1, void *a2, void *a3)
{
  v5 = a3;
  *a1 = 0;
  *a2 = 0;
  Class = *a1;
  if (!*a1)
  {
    Class = objc_getClass([v5 UTF8String]);
    *a1 = Class;
    if (!Class)
    {
      v7 = [v5 stringByAppendingString:@"Adapter"];
      *a1 = objc_getClass([v7 UTF8String]);

      Class = *a1;
      if (!*a1)
      {
        goto LABEL_8;
      }
    }
  }

  if ([(objc_class *)Class isSupported])
  {
    *a2 = [*a1 getSilo];
  }

  if (*a1)
  {
    v8 = *a2 != 0;
  }

  else
  {
LABEL_8:
    v8 = 0;
  }

  return v8;
}

uint64_t sub_1DF807EDC()
{
  qword_1ED5FAE18 = objc_alloc_init(CLIntersiloInterface);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1DF807F18(void *a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = a2;
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v30 count:16];
  if (v5)
  {
    v6 = *v22;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if (protocol_isEqual(v3, *(*(&v21 + 1) + 8 * i)))
        {

LABEL_21:
          v13 = 1;
          goto LABEL_24;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v21 objects:v30 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  outCount = 0;
  Name = protocol_getName(v3);
  if (qword_1ED5FAE08 != -1)
  {
    dispatch_once(&qword_1ED5FAE08, &unk_1F5AC6380);
  }

  v9 = qword_1ED5FAE10;
  if (os_log_type_enabled(qword_1ED5FAE10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v26 = 2082;
    v27 = &unk_1DF8255EF;
    v28 = 2082;
    v29 = Name;
    _os_log_impl(&dword_1DF7FE000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#registerSelectorInfosAndValidateProtocolRecursively , protocolName:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v10 = protocol_copyMethodDescriptionList(v3, 0, 1, &outCount);
  v11 = sub_1DF80821C(v10, outCount, Name);
  free(v10);
  if (!v11)
  {
    goto LABEL_23;
  }

  v12 = protocol_copyMethodDescriptionList(v3, 1, 1, &outCount);
  v13 = sub_1DF80821C(v12, outCount, Name);
  free(v12);
  if (v13)
  {
    v14 = protocol_copyProtocolList(v3, &outCount);
    if (outCount)
    {
      v15 = v14;
      v16 = 0;
      while (1)
      {
        v17 = v15[v16];
        if ((sub_1DF807F18() & 1) == 0)
        {
          break;
        }

        if (++v16 >= outCount)
        {
          free(v15);
          goto LABEL_21;
        }
      }

      free(v15);
    }

LABEL_23:
    v13 = 0;
  }

LABEL_24:

  v18 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t sub_1DF8081D8()
{
  qword_1ED5FAE10 = os_log_create("com.apple.locationd.Core", "Core");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1DF80821C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v64 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
LABEL_44:
    result = 1;
    goto LABEL_47;
  }

  v3 = 0;
  v41 = a2;
  while (1)
  {
    v4 = (a1 + 16 * v3);
    v5 = MEMORY[0x1E696AEC0];
    v6 = NSStringFromSelector(*v4);
    v7 = [v5 stringWithFormat:@"%s::%@", a3, v6];

    v8 = v4[1];
    v9 = strlen(v8);
    v47 = v7;
    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1DF80C81C();
    }

    v10 = v9;
    v45 = v3;
    v46 = (a1 + 16 * v3);
    if (v9 >= 0x17)
    {
      operator new();
    }

    BYTE3(v59) = v9;
    if (v9)
    {
      memcpy(&__dst, v8, v9);
    }

    v11 = 0;
    v57[v10 - 8] = 0;
    v12 = SBYTE3(v59);
    __p = __dst;
    v13 = (v59 & 0x80000000) == 0 ? &__dst : __dst;
    v14 = (v59 & 0x80000000) == 0 ? BYTE3(v59) : *v57;
    v15 = v13 + v14;
    while (1)
    {
      v16 = aBasicString_0[v11 + 23];
      v17 = v16 >= 0 ? &aBasicString_0[v11] : *&aBasicString_0[v11];
      v18 = v16 >= 0 ? aBasicString_0[v11 + 23] : *&aBasicString_0[v11 + 8];
      if (!v18)
      {
        break;
      }

      if (v14 >= v18)
      {
        v19 = *v17;
        v20 = v14;
        v21 = v13;
        do
        {
          v22 = v20 - v18;
          if (v22 == -1)
          {
            break;
          }

          v23 = memchr(v21, v19, v22 + 1);
          if (!v23)
          {
            break;
          }

          v24 = v23;
          if (!memcmp(v23, v17, v18))
          {
            if (v24 == v15 || v24 - v13 == -1)
            {
              break;
            }

            goto LABEL_34;
          }

          v21 = (v24 + 1);
          v20 = v15 - (v24 + 1);
        }

        while (v20 >= v18);
      }

      v11 += 24;
      if (v11 == 120)
      {
        v25 = 0;
        goto LABEL_35;
      }
    }

LABEL_34:
    v25 = 1;
LABEL_35:
    if (v12 < 0)
    {
      operator delete(__p);
    }

    if (v25)
    {
      v32 = sub_1DF80C018();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
      {
        v33 = v47;
        v34 = [v47 UTF8String];
        __dst = 68289795;
        *v57 = 2082;
        *&v57[2] = &unk_1DF8255EF;
        v58 = 2082;
        v59 = v34;
        v60 = 2082;
        v61 = "assert";
        v62 = 2081;
        v63 = "!containsCppTypesToAvoid(pDesc->types)";
        _os_log_impl(&dword_1DF7FE000, v32, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Method potentially contains a non POD or non Obj-C type in its arguments, methodName:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__dst, 0x30u);
      }

      v35 = sub_1DF80C018();
      if (os_signpost_enabled(v35))
      {
        v36 = v47;
        v37 = [v47 UTF8String];
        __dst = 68289795;
        *v57 = 2082;
        *&v57[2] = &unk_1DF8255EF;
        v58 = 2082;
        v59 = v37;
        v60 = 2082;
        v61 = "assert";
        v62 = 2081;
        v63 = "!containsCppTypesToAvoid(pDesc->types)";
        _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v35, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Method potentially contains a non POD or non Obj-C type in its arguments", "{msg%{public}.0s:Method potentially contains a non POD or non Obj-C type in its arguments, methodName:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__dst, 0x30u);
      }

      v38 = sub_1DF80C018();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = v47;
        v40 = [v47 UTF8String];
        __dst = 68289795;
        *v57 = 2082;
        *&v57[2] = &unk_1DF8255EF;
        v58 = 2082;
        v59 = v40;
        v60 = 2082;
        v61 = "assert";
        v62 = 2081;
        v63 = "!containsCppTypesToAvoid(pDesc->types)";
        _os_log_impl(&dword_1DF7FE000, v38, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Method potentially contains a non POD or non Obj-C type in its arguments, methodName:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__dst, 0x30u);
      }

      abort_report_np();
      __break(1u);
    }

    v52 = 0;
    v53 = &v52;
    v54 = 0x2020000000;
    v55 = 0;
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = sub_1DF808AB4;
    v51[3] = &unk_1E86C82A8;
    v51[4] = &v52;
    v51[5] = v46;
    sub_1DF7FF4D8(v51);
    if (*(v53 + 24) != 1)
    {
      break;
    }

    _Block_object_dispose(&v52, 8);
    v26 = v45;
LABEL_43:

    v3 = v26 + 1;
    if (v3 == v41)
    {
      goto LABEL_44;
    }
  }

  v27 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:v46[1]];
  if (!v27)
  {
    goto LABEL_46;
  }

  v28 = [[CLIntersiloInterfaceSelectorInfo alloc] initWithSelector:*v46 andMethodSignature:v27];
  if (v28)
  {
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = sub_1DF808BF8;
    v48[3] = &unk_1E86C82D0;
    v50 = v46;
    v29 = v28;
    v49 = v29;
    sub_1DF7FF4D8(v48);

    v26 = v45;
    _Block_object_dispose(&v52, 8);
    goto LABEL_43;
  }

LABEL_46:
  _Block_object_dispose(&v52, 8);

  result = 0;
LABEL_47:
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DF80880C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);

  _Unwind_Resume(a1);
}

void *sub_1DF808AB4(uint64_t a1, uint64_t a2)
{
  result = sub_1DF7FF5D0(*a2, *(a2 + 8), **(a1 + 40));
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_1DF808BF8(uint64_t a1, void *a2)
{
  v2 = **(a1 + 40);
  v3 = 0x9DDFEA08EB382D69 * ((8 * (v2 & 0x1FFFFFFF) + 8) ^ HIDWORD(v2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(v2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = a2[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a2 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != v2)
  {
    goto LABEL_17;
  }

  objc_storeStrong(v10 + 3, *(a1 + 32));
}

void sub_1DF80905C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1DF809070(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1DF809070(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1DF8090BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1DF8090CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1DF8090DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1DF8090EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void CLConnection::sendMessageSync(uint64_t a1@<X0>, CLConnectionMessage **a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  XPCMessage = CLConnectionMessage::createXPCMessage(*a2);
  *a4 = 0;
  a4[1] = 0;
  v21 = a4;
  if (a3)
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  key = *MEMORY[0x1E69E9E28];
  v9 = MEMORY[0x1E69E9E98];
  v10 = *a1;
  do
  {
    v11 = xpc_connection_send_message_with_reply_sync(v10, XPCMessage);
    v12 = MEMORY[0x1E12E05B0]();
    if (v12 == v9)
    {
      string = xpc_dictionary_get_string(v11, key);
      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
      }

      v15 = qword_1ED5FAD60;
      if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_ERROR))
      {
        v16 = *a2;
        if (*(*a2 + 23) < 0)
        {
          v16 = *v16;
        }

        buf[0] = 136446466;
        *&buf[1] = v16;
        v27 = 2082;
        v28 = string;
        _os_log_impl(&dword_1DF7FE000, v15, OS_LOG_TYPE_ERROR, "Error on message reply (sync) for %{public}s (%{public}s)", buf, 0x16u);
      }

      if (v11 == MEMORY[0x1E69E9E18])
      {
        if (v8)
        {
          v19 = v8;
          goto LABEL_24;
        }

        v17 = *(a1 + 8);
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = sub_1DF812F4C;
        v25[3] = &unk_1E86C83E0;
        v25[4] = a1;
        v18 = v25;
      }

      else
      {
        v17 = *(a1 + 8);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_1DF81308C;
        block[3] = &unk_1E86C83E0;
        block[4] = a1;
        v18 = block;
      }

      dispatch_async(v17, v18);
    }

    else
    {
      if (v12 == MEMORY[0x1E69E9E80])
      {
        operator new();
      }

      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
      }

      v13 = qword_1ED5FAD60;
      if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_FAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1DF7FE000, v13, OS_LOG_TYPE_FAULT, "Dropping unexpected response (not a dictionary)", buf, 2u);
      }
    }

    v19 = 0;
LABEL_24:
    xpc_release(v11);
    v10 = *a1;
    if (!*a1)
    {
      break;
    }

    v8 = v19 - 1;
  }

  while (v19);
  *v21 = 0;
  v21[1] = 0;
  xpc_release(XPCMessage);
  v20 = *MEMORY[0x1E69E9840];
}

void sub_1DF809598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (v15)
  {
    sub_1DF7FFED0(v15);
  }

  _Unwind_Resume(exception_object);
}

void *CLConnectionMessage::createXPCMessage(CLConnectionMessage *this)
{
  if (*(this + 23) < 0)
  {
    sub_1DF802ED0(__p, *this, *(this + 1));
  }

  else
  {
    *__p = *this;
    v5 = *(this + 2);
  }

  v2 = sub_1DF80191C(__p, *(this + 7), *(this + 8), 0, 0);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1DF80966C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CLConnectionClient::sendMessageSync(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a4 = 0;
  a4[1] = 0;
  os_unfair_lock_lock((v6 + 100));
  v9 = *v6;
  if (*v6)
  {
    v11 = v8;
    v12 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    CLConnection::sendMessageSync(v9, &v11, a3, &v13);
    v10 = v13;
    v13 = 0uLL;
    *a4 = v10;
    if (v12)
    {
      sub_1DF7FFED0(v12);
    }
  }

  os_unfair_lock_unlock((v6 + 100));
  if (v7)
  {
    sub_1DF7FFED0(v7);
  }
}

void sub_1DF809740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1DF7FFED0(a10);
  }

  if (v10)
  {
    sub_1DF7FFED0(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DF809764()
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1DF8090EC;
  v10 = sub_1DF809114;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1DF8099D8;
  v5[3] = &unk_1E86C8660;
  v5[4] = &v6;
  [qword_1ED5FADA8 enumerateKeysAndObjectsUsingBlock:v5];
  v0 = v7[5];
  if (v0)
  {
    if (byte_1ED5FAD50 == 1)
    {
      CLWriteStackshot("locationd: Heartbeat underflow", 0);
      v0 = v7[5];
    }

    [v0 sortUsingComparator:&unk_1F5AC6AE8];
    [v7[5] addObject:objc_opt_class()];
    if (byte_1ED5FAD99 == 1)
    {
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
      }

      v1 = qword_1ED5FAD48;
      if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEFAULT))
      {
        v2 = v7[5];
        buf = 68289282;
        v13 = 2082;
        v14 = &unk_1DF8255EF;
        v15 = 2114;
        v16 = v2;
        _os_log_impl(&dword_1DF7FE000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:locationd remains non-fatally blocked because internal install, ImplicatedServicesCurrently:%{public, location:escape_only}@}", &buf, 0x1Cu);
      }
    }

    else
    {
      byte_1ED5FAD99 = 1;
      v3 = [v7[5] objectAtIndexedSubscript:0];
      [v3 becameFatallyBlocked:v7[5] index:0];
    }
  }

  _Block_object_dispose(&v6, 8);

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1DF8099A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  v21 = v20;

  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

void sub_1DF8099D8(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 synCount];
  v8 = v7 - [v6 ackCount];
  if (v8 < 0)
  {
    v20 = sub_1DF81E1BC();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v30 = 0;
      v31 = 2082;
      v32 = &unk_1DF8255EF;
      v33 = 2082;
      v34 = "assert";
      v35 = 2081;
      v36 = "0 <= dewrappedDeficit";
      _os_log_impl(&dword_1DF7FE000, v20, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Deltafied deficit should be non-negative, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v21 = sub_1DF81E1BC();
    if (os_signpost_enabled(v21))
    {
      *buf = 68289539;
      v30 = 0;
      v31 = 2082;
      v32 = &unk_1DF8255EF;
      v33 = 2082;
      v34 = "assert";
      v35 = 2081;
      v36 = "0 <= dewrappedDeficit";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Deltafied deficit should be non-negative", "{msg%{public}.0s:Deltafied deficit should be non-negative, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v22 = sub_1DF81E1BC();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v30 = 0;
      v31 = 2082;
      v32 = &unk_1DF8255EF;
      v33 = 2082;
      v34 = "assert";
      v35 = 2081;
      v36 = "0 <= dewrappedDeficit";
      _os_log_impl(&dword_1DF7FE000, v22, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Deltafied deficit should be non-negative, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v23 = 192;
LABEL_33:

    v27 = v23;
    v28 = "validateTrackedSilos_block_invoke";
    v26 = "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLServiceVendor.mm";
    abort_report_np();
    __break(1u);
LABEL_34:
    dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
    goto LABEL_13;
  }

  if (v8 >= 3)
  {
    if (qword_1ED5FAD40 != -1)
    {
      dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
    }

    v9 = qword_1ED5FAD48;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v5 identifier];
      *buf = 68289282;
      v30 = 0;
      v31 = 2082;
      v32 = &unk_1DF8255EF;
      v33 = 2114;
      v34 = v10;
      _os_log_impl(&dword_1DF7FE000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning Heartbeat underflow; going to crash now!, silo:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    if (!*(*(*(a1 + 32) + 8) + 40))
    {
      v11 = [MEMORY[0x1E695DF70] array];
      v12 = *(*(a1 + 32) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }

    if ([v6 svcClass])
    {
      [*(*(*(a1 + 32) + 8) + 40) addObject:{objc_msgSend(v6, "svcClass")}];
      goto LABEL_16;
    }

    v24 = sub_1DF81E1BC();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v30 = 0;
      v31 = 2082;
      v32 = &unk_1DF8255EF;
      v33 = 2082;
      v34 = "assert";
      v35 = 2081;
      v36 = "record.svcClass";
      _os_log_impl(&dword_1DF7FE000, v24, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Only living, non-nil services should be heart-beaten, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v25 = sub_1DF81E1BC();
    if (os_signpost_enabled(v25))
    {
      *buf = 68289539;
      v30 = 0;
      v31 = 2082;
      v32 = &unk_1DF8255EF;
      v33 = 2082;
      v34 = "assert";
      v35 = 2081;
      v36 = "record.svcClass";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Only living, non-nil services should be heart-beaten", "{msg%{public}.0s:Only living, non-nil services should be heart-beaten, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v22 = sub_1DF81E1BC();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v30 = 0;
      v31 = 2082;
      v32 = &unk_1DF8255EF;
      v33 = 2082;
      v34 = "assert";
      v35 = 2081;
      v36 = "record.svcClass";
      _os_log_impl(&dword_1DF7FE000, v22, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Only living, non-nil services should be heart-beaten, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v23 = 208;
    goto LABEL_33;
  }

  if (v8 != 2)
  {
    goto LABEL_16;
  }

  if (qword_1ED5FAD40 != -1)
  {
    goto LABEL_34;
  }

LABEL_13:
  v14 = qword_1ED5FAD48;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v5 identifier];
    *buf = 68289538;
    v30 = 0;
    v31 = 2082;
    v32 = &unk_1DF8255EF;
    v33 = 2114;
    v34 = v15;
    v35 = 1026;
    LODWORD(v36) = 2;
    _os_log_impl(&dword_1DF7FE000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning Heartbeat underflow, silo:%{public, location:escape_only}@, deficit:%{public}d}", buf, 0x22u);
  }

LABEL_16:
  v16 = [v6 silo];
  v17 = [v16 isSuspended];

  if ((v17 & 1) == 0)
  {
    [v6 syn];
    v18 = [v6 silo];
    [v18 heartBeat:v6];
  }

  v19 = *MEMORY[0x1E69E9840];
}

void CLConnection::handleInterruption(dispatch_queue_t *this)
{
  v13 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(this[1]);
  v2 = _os_activity_create(&dword_1DF7FE000, "CL: CLConnection::handleInterruption", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v2, &v6);

  if (qword_1ED5FAD68 != -1)
  {
    dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
  }

  v3 = qword_1ED5FAD60;
  if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v8 = 0;
    v9 = 2082;
    v10 = &unk_1DF8255EF;
    v11 = 2082;
    v12 = "activity";
    _os_log_impl(&dword_1DF7FE000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLConnection::handleInterruption, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  CLConnection::resetReplyHandlers(this);
  v4 = this[6];
  if (v4)
  {
    (v4[2].isa)();
  }

  os_activity_scope_leave(&v6);
  v5 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1DF80A274(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 32));
  v2 = *(a1 + 48);
  if (*(v2 + 40) == 1)
  {
    sub_1DF802910(v2);
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_1DF80A2DC(void *a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3321888768;
  v5 = sub_1DF80A274;
  v6 = &unk_1F5AC66D0;
  v2 = a1[8];
  v1 = a1[9];
  v7 = a1[4];
  v9 = v2;
  v10 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = a1[5];
  v3 = a1[7];
  if (v3 && *(v3 + 8) != -1)
  {
    v5(v4);
  }

  if (v10)
  {
    sub_1DF7FFED0(v10);
  }
}

void sub_1DF80A398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_1DF7FFED0(a16);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1DF80A3B0(void *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  a1[2] = 0;
  a1[2] = *(a2 + 16);
  return a1;
}

void sub_1DF80A3FC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_1DF7FFED0(v3);
  }

  _Unwind_Resume(exception_object);
}

void CLConnectionServer::CLConnectionServer(void *a1, void *a2, void *a3, const void *a4)
{
  v7 = *MEMORY[0x1E69E9840];
  *a1 = a3;
  a1[1] = a2;
  a1[2] = _Block_copy(a4);
  a1[3] = &unk_1F5AC62A8;
  operator new();
}

void CLConnectionServer::initializeService(CLConnectionServer *this)
{
  v2 = *(this + 1);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_1DF805A10;
  handler[3] = &unk_1E86C8240;
  handler[4] = this;
  xpc_connection_set_event_handler(v2, handler);
  xpc_connection_resume(*(this + 1));
}

void CLConnectionServer::CLConnectionServer(void *a1, uint64_t a2, void *a3, const void *a4)
{
  *a1 = a3;
  a1[2] = _Block_copy(a4);
  a1[3] = &unk_1F5AC62A8;
  operator new();
}

void CLConnectionServer::handleDisconnection(CLConnectionServer *this, CLConnection *a2)
{
  if (a2)
  {
    CLConnection::deferredDelete(a2);
  }
}

void sub_1DF80AEE8(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    CLConnection::deferredDelete(v1);
  }
}

uint64_t sub_1DF80AEF8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1DF80AF14(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    sub_1DF7FFED0(v1);
  }
}

void sub_1DF80AF7C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5AC62E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12DFAD0);
}

void sub_1DF80AFD0(CLConnection **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    CLConnection::deferredDelete(v2);
  }
}

id sub_1DF80C018()
{
  if (qword_1ED5FAD40 != -1)
  {
    dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6360);
  }

  v1 = qword_1ED5FAD48;

  return v1;
}

void sub_1DF80C488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1DF80C4A8(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = sub_1DF7FF5D0(*a2, *(a2 + 8), *(a1 + 40));
  if (!v3)
  {
    v5 = sub_1DF80C018();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = &unk_1DF8255EF;
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "iter != selectorMap.end()";
      _os_log_impl(&dword_1DF7FE000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:getInfoForSelector called on a missing selector, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v6 = sub_1DF80C018();
    if (os_signpost_enabled(v6))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = &unk_1DF8255EF;
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "iter != selectorMap.end()";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "getInfoForSelector called on a missing selector", "{msg%{public}.0s:getInfoForSelector called on a missing selector, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v7 = sub_1DF80C018();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = &unk_1DF8255EF;
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "iter != selectorMap.end()";
      _os_log_impl(&dword_1DF7FE000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:getInfoForSelector called on a missing selector, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), v3[3]);
  v4 = *MEMORY[0x1E69E9840];
}

void sub_1DF80C7A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1DF80C7C0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DF7FF5D0(*a2, *(a2 + 8), *(a1 + 40));
  if (v3)
  {
    v4 = v3[3];
    v5 = (*(*(a1 + 32) + 8) + 40);

    objc_storeStrong(v5, v4);
  }
}

void sub_1DF80C834(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1DF80C890(exception, a1);
  __cxa_throw(exception, off_1E86C8238, MEMORY[0x1E69E5278]);
}

std::logic_error *sub_1DF80C890(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void sub_1DF80C8C4()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

uint64_t sub_1DF80F204()
{
  qword_1ED5FAD48 = os_log_create("com.apple.LocationSupport", "Intersilo");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1DF80F248()
{
  qword_1ECE5D3F8 = os_log_create("com.apple.locationd.Support", "Support");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1DF80F28C(uint64_t a1)
{
  if (qword_1ED5FAE40 != -1)
  {
    dispatch_once(&qword_1ED5FAE40, &unk_1F5AC63E0);
  }

  v2 = dlsym(qword_1ED5FAE48, "cprofile_set_current_identifier");
  off_1EED20BE8 = v2;

  return (v2)(a1);
}

void *sub_1DF80F308()
{
  result = dlopen("/System/Library/PrivateFrameworks/CProfileRuntime.framework/CProfileRuntime", 2);
  qword_1ED5FAE48 = result;
  return result;
}

char *sub_1DF80F334()
{
  result = getenv("CPROFILE_ENABLE");
  byte_1ED5FAE38 = result != 0;
  return result;
}

CLDispatchSilo *sub_1DF80F418()
{
  result = [[CLDispatchSilo alloc] initWithIdentifier:@"CLSettingsManagerInternalSilo"];
  qword_1ED5FAD88 = result;
  return result;
}

void sub_1DF80F910(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained prepareAndRunBlock:0];

  v4 = objc_loadWeakRetained((a1 + 40));
  v3 = [v4 timer];
  [v3 shouldFire];
}

void sub_1DF80FD3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF80FD54(uint64_t a1)
{
  *(*(a1 + 32) + 8) = pthread_self();
  v2 = [MEMORY[0x1E695DFD0] currentRunLoop];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));

  CFRunLoopRun();
}

id sub_1DF80FDC0()
{
  if (qword_1ED5FAD40 != -1)
  {
    dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6440);
  }

  v1 = qword_1ED5FAD48;

  return v1;
}

void sub_1DF80FFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_1DF810000(uint64_t a1)
{
  *(*(a1 + 32) + 8) = pthread_self();
  v2 = [MEMORY[0x1E696AF00] currentThread];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  v5 = [MEMORY[0x1E695DFD0] currentRunLoop];
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  *(v6 + 16) = v5;

  v8 = *(*(*(a1 + 40) + 8) + 40);

  return dispatch_semaphore_signal(v8);
}

void sub_1DF810454(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 objectForKeyedSubscript:*(a1 + 40)];
  v4 = *(a1 + 32);
  v5 = *(v4 + 56);
  *(v4 + 56) = v3;

  if (!*(*(a1 + 32) + 56))
  {
    v6 = objc_alloc_init(CLRunLoopSiloThread);
    v7 = *(a1 + 32);
    v8 = *(v7 + 56);
    *(v7 + 56) = v6;

    if (v6)
    {
      [v9 setObject:*(*(a1 + 32) + 56) forKeyedSubscript:*(a1 + 40)];
    }
  }
}

uint64_t sub_1DF8112A0(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 40);

  return MEMORY[0x1EEE74158](v2, 0);
}

_BYTE *sub_1DF8114C8(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) ack];
  result = *(a1 + 40);
  if ((result[16] & 1) == 0)
  {
    result = [result shouldBeIdled];
    if (result)
    {
      *(*(a1 + 40) + 16) = 1;
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6440);
      }

      v3 = qword_1ED5FAD48;
      if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(*(a1 + 40) + 8);
        v6 = 138412290;
        v7 = v4;
        _os_log_impl(&dword_1DF7FE000, v3, OS_LOG_TYPE_DEFAULT, "#Idleness: Silo is being idled: %@", &v6, 0xCu);
      }

      result = [*(a1 + 40) runIdleHandlers];
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DF8115C8()
{
  qword_1ED5FAD48 = os_log_create("com.apple.LocationSupport", "Intersilo");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1DF81160C()
{
  qword_1ED5FAE60 = [MEMORY[0x1E695DF90] dictionary];

  return MEMORY[0x1EEE66BB8]();
}

id sub_1DF81194C()
{
  if (qword_1ECE5D588 != -1)
  {
    dispatch_once(&qword_1ECE5D588, &unk_1F5AC6480);
  }

  v1 = qword_1ECE5D590;

  return v1;
}

uint64_t sub_1DF811B6C()
{
  qword_1ECE5D590 = os_log_create("com.apple.LocationSupport", "Timer");

  return MEMORY[0x1EEE66BB8]();
}

void CLConnectionUsernameCache::CLConnectionUsernameCache(CLConnectionUsernameCache *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  *(this + 10) = 0;
  *(this + 7) = 150000000000;
  mach_timebase_info((this + 44));
}

void CLConnectionUsernameCache::storeUsernameForToken(os_unfair_lock_s *this, const unsigned int *a2, NSString *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 10);
  v6 = mach_absolute_time();
  if (!a3)
  {
    if (qword_1ED5FAD68 != -1)
    {
      goto LABEL_35;
    }

    while (1)
    {
      v18 = qword_1ED5FAD60;
      if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_FAULT))
      {
        __p = 68289539;
        *v23 = 2082;
        *&v23[2] = &unk_1DF8255EF;
        *&v23[10] = 2082;
        *&v23[12] = "assert";
        v24 = 2081;
        v25 = "username != nullptr";
        _os_log_impl(&dword_1DF7FE000, v18, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Attempting to store a nil username in our cache, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__p, 0x26u);
        if (qword_1ED5FAD68 != -1)
        {
          dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
        }
      }

      v19 = qword_1ED5FAD60;
      if (os_signpost_enabled(qword_1ED5FAD60))
      {
        __p = 68289539;
        *v23 = 2082;
        *&v23[2] = &unk_1DF8255EF;
        *&v23[10] = 2082;
        *&v23[12] = "assert";
        v24 = 2081;
        v25 = "username != nullptr";
        _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Attempting to store a nil username in our cache", "{msg%{public}.0s:Attempting to store a nil username in our cache, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__p, 0x26u);
        if (qword_1ED5FAD68 != -1)
        {
          dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
        }
      }

      v20 = qword_1ED5FAD60;
      if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_INFO))
      {
        __p = 68289539;
        *v23 = 2082;
        *&v23[2] = &unk_1DF8255EF;
        *&v23[10] = 2082;
        *&v23[12] = "assert";
        v24 = 2081;
        v25 = "username != nullptr";
        _os_log_impl(&dword_1DF7FE000, v20, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Attempting to store a nil username in our cache, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__p, 0x26u);
      }

      abort_report_np();
      __break(1u);
LABEL_35:
      dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
    }
  }

  v7 = v6;
  sub_1DF812360(&__p, [(NSString *)a3 UTF8String]);
  v8 = __p;
  *v21 = *v23;
  *&v21[7] = *&v23[7];
  v9 = v23[15];
  *v23 = 0;
  *&v23[8] = 0;
  __p = 0;
  v10 = *a2;
  v11 = *&this[2]._os_unfair_lock_opaque;
  if (!*&v11)
  {
    goto LABEL_19;
  }

  v12 = vcnt_s8(v11);
  v12.i16[0] = vaddlv_u8(v12);
  if (v12.u32[0] > 1uLL)
  {
    v13 = *a2;
    if (*&v11 <= v10)
    {
      v13 = v10 % v11.i32[0];
    }
  }

  else
  {
    v13 = (v11.i32[0] - 1) & v10;
  }

  v14 = *(*&this->_os_unfair_lock_opaque + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v16 = v15[1];
    if (v16 == v10)
    {
      break;
    }

    if (v12.u32[0] > 1uLL)
    {
      if (v16 >= *&v11)
      {
        v16 %= *&v11;
      }
    }

    else
    {
      v16 &= *&v11 - 1;
    }

    if (v16 != v13)
    {
      goto LABEL_19;
    }

LABEL_18:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_19;
    }
  }

  if (*(v15 + 4) != v10)
  {
    goto LABEL_18;
  }

  if (*(v15 + 47) < 0)
  {
    operator delete(v15[3]);
  }

  v15[3] = v8;
  v15[4] = *v21;
  *(v15 + 39) = *&v21[7];
  *(v15 + 47) = v9;
  v15[6] = v7;
  if ((v23[15] & 0x80000000) != 0)
  {
    operator delete(__p);
  }

  os_unfair_lock_unlock(this + 10);
  v17 = *MEMORY[0x1E69E9840];
}

void sub_1DF812310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  sub_1DF813DD4(1, v22);
  if (v23 < 0)
  {
    operator delete(v21);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  os_unfair_lock_unlock(v20 + 10);
  _Unwind_Resume(a1);
}

_BYTE *sub_1DF812360(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1DF80C81C();
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

void *CLConnectionUsernameCache::operator[](uint64_t a1, unsigned int *a2)
{
  os_unfair_lock_lock((a1 + 40));
  v4 = *(a1 + 8);
  if (!*&v4)
  {
    goto LABEL_20;
  }

  v5 = *a2;
  v6 = vcnt_s8(v4);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v4 <= v5)
    {
      v7 = v5 % v4.i32[0];
    }
  }

  else
  {
    v7 = (v4.i32[0] - 1) & v5;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
LABEL_20:
    v9 = 0;
    goto LABEL_21;
  }

  v9 = *v8;
  if (*v8)
  {
    do
    {
      v10 = v9[1];
      if (v10 == v5)
      {
        if (*(v9 + 4) == v5)
        {
          if ((mach_absolute_time() - v9[6]) * *(a1 + 44) / *(a1 + 48) > *(a1 + 56))
          {
            sub_1DF813E30(a1, v9);
            goto LABEL_20;
          }

          v12 = v9 + 3;
          if (*(v9 + 47) < 0)
          {
            v12 = *v12;
          }

          v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v12];
          break;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v4)
          {
            v10 %= *&v4;
          }
        }

        else
        {
          v10 &= *&v4 - 1;
        }

        if (v10 != v7)
        {
          goto LABEL_20;
        }
      }

      v9 = *v9;
    }

    while (v9);
  }

LABEL_21:
  os_unfair_lock_unlock((a1 + 40));
  return v9;
}

void CLConnectionUsernameCache::purgeExpired(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 10);
  v2 = mach_absolute_time();
  v3 = *&this[4]._os_unfair_lock_opaque;
  if (v3)
  {
    v4 = v2;
    do
    {
      while ((v4 - v3[6]) * this[11]._os_unfair_lock_opaque / this[12]._os_unfair_lock_opaque > *&this[14]._os_unfair_lock_opaque)
      {
        v3 = sub_1DF813E30(this, v3);
        if (!v3)
        {
          goto LABEL_7;
        }
      }

      v3 = *v3;
    }

    while (v3);
  }

LABEL_7:

  os_unfair_lock_unlock(this + 10);
}

void CLConnectionEntitlementCache::CLConnectionEntitlementCache(CLConnectionEntitlementCache *this, audit_token_t *a2)
{
  *(this + 2) = 0;
  *(this + 1) = 0;
  *this = this + 8;
  v2 = *a2->val;
  *(this + 40) = *&a2->val[4];
  *(this + 24) = v2;
  *(this + 14) = 0;
}

{
  *(this + 2) = 0;
  *(this + 1) = 0;
  *this = this + 8;
  v2 = *a2->val;
  *(this + 40) = *&a2->val[4];
  *(this + 24) = v2;
  *(this + 14) = 0;
}

uint64_t sub_1DF81265C(_BYTE *a1, uint64_t a2)
{
  v46[6] = 0;
  v3 = MEMORY[0x1E69E5560] + 104;
  v46[0] = MEMORY[0x1E69E5560] + 104;
  v4 = MEMORY[0x1E69E5560] + 64;
  v34 = MEMORY[0x1E69E5560] + 64;
  v5 = MEMORY[0x1E69E54D8];
  v6 = *(MEMORY[0x1E69E54D8] + 24);
  v33[0] = *(MEMORY[0x1E69E54D8] + 16);
  *(v33 + *(v33[0] - 24)) = v6;
  v33[1] = 0;
  v7 = (v33 + *(v33[0] - 24));
  std::ios_base::init(v7, &v35);
  v8 = MEMORY[0x1E69E5560] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  v9 = v5[5];
  v34 = v5[4];
  *(&v34 + *(v34 - 24)) = v9;
  v33[0] = v5[1];
  *(v33 + *(v33[0] - 24)) = v5[6];
  v46[0] = v3;
  v33[0] = v8;
  v31 = MEMORY[0x1E69E5538] + 16;
  v34 = v4;
  v35 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1E12DFA50](&v36);
  __src = 0;
  v41 = 0;
  v42 = 0;
  memset(&__p, 0, sizeof(__p));
  v45 = 24;
  v30 = MEMORY[0x1E69E5548] + 16;
  v35 = MEMORY[0x1E69E5548] + 16;
  p_p = &__p;
  v38 = &__p;
  v39 = &__p;
  v44 = &__p;
  std::string::resize(&__p, 0x16uLL, 0);
  v10 = 0;
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  __src = &__p;
  v41 = &__p;
  v42 = &__p + size;
  while (1)
  {
    MEMORY[0x1E12DFA10](&v34, *(a2 + v10));
    if (v10 == 28)
    {
      break;
    }

    v47 = 124;
    MEMORY[0x1E12DF9F0](v48, &v34);
    if (v48[0] == 1)
    {
      v12 = &v34 + *(v34 - 24);
      v13 = *(v12 + 5);
      v14 = *(v12 + 2);
      v15 = *(v12 + 36);
      if (v15 == -1)
      {
        std::ios_base::getloc((&v34 + *(v34 - 24)));
        v16 = std::locale::use_facet(&v49, MEMORY[0x1E69E5318]);
        v15 = (v16->__vftable[2].~facet_0)(v16, 32);
        std::locale::~locale(&v49);
        *(v12 + 36) = v15;
      }

      if ((v14 & 0xB0) == 0x20)
      {
        v17 = v48;
      }

      else
      {
        v17 = &v47;
      }

      if (!v13)
      {
        goto LABEL_31;
      }

      v18 = *(v12 + 3);
      v19 = v18 <= 1;
      v20 = v18 - 1;
      v21 = v19 ? 0 : v20;
      if (v17 - &v47 >= 1 && (*(*v13 + 96))(v13, &v47, v17 - &v47) != v17 - &v47)
      {
        goto LABEL_31;
      }

      if (v21 >= 1)
      {
        if (v21 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1DF80C81C();
        }

        if (v21 >= 0x17)
        {
          operator new();
        }

        v51 = v21;
        memset(&__b, v15, v21);
        *(&__b + v21) = 0;
        if (v51 >= 0)
        {
          p_b = &__b;
        }

        else
        {
          p_b = __b;
        }

        v23 = (*(*v13 + 96))(v13, p_b, v21);
        if (v51 < 0)
        {
          operator delete(__b);
        }

        if (v23 != v21)
        {
          goto LABEL_31;
        }
      }

      if (v48 - v17 < 1 || (*(*v13 + 96))(v13, v17, v48 - v17) == v48 - v17)
      {
        *(v12 + 3) = 0;
      }

      else
      {
LABEL_31:
        std::ios_base::clear((&v34 + *(v34 - 24)), *(&v38 + *(v34 - 24)) | 5);
      }
    }

    MEMORY[0x1E12DFA00](v48);
    v10 += 4;
  }

  if ((v45 & 0x10) != 0)
  {
    v26 = v44;
    v24 = a1;
    if (v44 < v41)
    {
      v44 = v41;
      v26 = v41;
    }

    v27 = __src;
  }

  else
  {
    v24 = a1;
    if ((v45 & 8) == 0)
    {
      v25 = 0;
      a1[23] = 0;
      goto LABEL_47;
    }

    v27 = p_p;
    v26 = v39;
  }

  v25 = v26 - v27;
  if ((v26 - v27) > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1DF80C81C();
  }

  if (v25 >= 0x17)
  {
    operator new();
  }

  v24[23] = v25;
  if (v25)
  {
    memmove(v24, v27, v25);
  }

LABEL_47:
  v24[v25] = 0;
  v33[0] = *MEMORY[0x1E69E54D8];
  v28 = *(MEMORY[0x1E69E54D8] + 72);
  *(v33 + *(v33[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v34 = v28;
  v35 = v30;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v35 = v31;
  std::locale::~locale(&v36);
  std::iostream::~basic_iostream();
  return MEMORY[0x1E12DFAA0](v46);
}

void sub_1DF812E50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  __cxa_end_catch();
  sub_1DF813C18(&a16);
  MEMORY[0x1E12DFAA0](a14);
  _Unwind_Resume(a1);
}

uint64_t CLConnection::setHandlerForMessage(uint64_t a1, uint64_t *a2, void *a3)
{
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];

  return CLConnection::setHandlerForMessage(a1, v5, a3);
}

void sub_1DF812F4C(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = _os_activity_create(&dword_1DF7FE000, "CL: CLConnection calling interruption handler in sendMessageSync", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v2, &v5);

  if (qword_1ED5FAD68 != -1)
  {
    dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
  }

  v3 = qword_1ED5FAD60;
  if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v7 = 0;
    v8 = 2082;
    v9 = &unk_1DF8255EF;
    v10 = 2082;
    v11 = "activity";
    _os_log_impl(&dword_1DF7FE000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLConnection calling interruption handler in sendMessageSync, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  CLConnection::handleInterruption(v1);
  os_activity_scope_leave(&v5);
  v4 = *MEMORY[0x1E69E9840];
}

void sub_1DF81308C(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = _os_activity_create(&dword_1DF7FE000, "CL: CLConnection calling disconnection handler in sendMessageSync", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v2, &v5);

  if (qword_1ED5FAD68 != -1)
  {
    dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
  }

  v3 = qword_1ED5FAD60;
  if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v7 = 2082;
    v8 = &unk_1DF8255EF;
    v9 = 2082;
    v10 = "activity";
    _os_log_impl(&dword_1DF7FE000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLConnection calling disconnection handler in sendMessageSync, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  CLConnection::handleDisconnection(v1);
  os_activity_scope_leave(&v5);
  v4 = *MEMORY[0x1E69E9840];
}

void CLConnection::getUserName(dispatch_queue_t *this@<X0>, _BYTE *a2@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(this[1]);
  v4 = _os_activity_create(&dword_1DF7FE000, "CL: #MultiUser CLConnection::getUserName", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v4, &v8);

  if (qword_1ED5FAD68 != -1)
  {
    dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
  }

  v5 = qword_1ED5FAD60;
  if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289282;
    v10 = 2082;
    v11 = &unk_1DF8255EF;
    v12 = 2082;
    v13 = "activity";
    _os_log_impl(&dword_1DF7FE000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#MultiUser CLConnection::getUserName, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  dispatch_assert_queue_V2(this[1]);
  v6 = *this;
  xpc_connection_get_audit_token();
  sub_1DF812360(a2, "mobile");
  os_activity_scope_leave(&v8);
  v7 = *MEMORY[0x1E69E9840];
}

uint64_t CLConnectionMessage::CLConnectionMessage(uint64_t a1, void *a2)
{
  v3[0] = 0;
  v3[1] = 0;
  return CLConnectionMessage::CLConnectionMessage(a1, a2, v3);
}

{
  v3[0] = 0;
  v3[1] = 0;
  return CLConnectionMessage::CLConnectionMessage(a1, a2, v3);
}

char *CLConnectionMessage::CLConnectionMessage(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_1DF802ED0(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v3;
  }

  *(__dst + 3) = 0;
  __dst[32] = 0;
  *(__dst + 40) = 0u;
  *(__dst + 56) = 0u;
  *(__dst + 72) = 0u;
  return __dst;
}

uint64_t CLConnectionMessage::getObjectOfClass(CLConnectionMessage *this, objc_class *a2)
{
  v3 = [MEMORY[0x1E695DFD8] setWithObject:a2];

  return CLConnectionMessage::getObjectOfClasses(this, v3);
}

void CLConnectionMessage::setFileDescriptors(id *this, int *a2, int a3)
{
  LODWORD(v3) = a3;

  this[8] = xpc_array_create(0, 0);
  if (v3 >= 1)
  {
    v3 = v3;
    do
    {
      v6 = *a2++;
      xpc_array_set_fd(this[8], 0xFFFFFFFFFFFFFFFFLL, v6);
      --v3;
    }

    while (v3);
  }
}

uint64_t CLConnectionMessage::copyFileDescriptor(CLConnectionMessage *this, size_t a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return xpc_array_dup_fd(v2, a2);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

BOOL CLConnectionMessage::sendReply(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
  }

  else
  {
    v5 = 0;
  }

  if (*(a1 + 48) || *(a1 + 24))
  {
    if (v5)
    {
      v6 = xpc_data_create([v5 bytes], objc_msgSend(v5, "length"));
    }

    else
    {
      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
      }

      v7 = qword_1ED5FAD60;
      if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DF7FE000, v7, OS_LOG_TYPE_FAULT, "Attempting to send nil/null data. An error should be sent instead.", buf, 2u);
      }

      v6 = xpc_data_create(0, 0);
    }

    v8 = v6;
    v9 = *(a1 + 48);
    v10 = *(a2 + 23);
    if (v9)
    {
      if (v10 >= 0)
      {
        v11 = a2;
      }

      else
      {
        v11 = *a2;
      }

      xpc_dictionary_set_string(v9, "kCLConnectionMessageNameKey", v11);
      xpc_dictionary_set_value(*(a1 + 48), "kCLConnectionMessageInfoKey", v8);
      xpc_dictionary_set_BOOL(*(a1 + 48), "kCLConnectionMessageIsReplyingKey", 1);
      xpc_connection_send_message(*(a1 + 40), *(a1 + 48));
      xpc_release(*(a1 + 48));
      *(a1 + 48) = 0;
    }

    else
    {
      if (v10 < 0)
      {
        sub_1DF802ED0(__p, *a2, *(a2 + 8));
      }

      else
      {
        *__p = *a2;
        v22 = *(a2 + 16);
      }

      v19 = sub_1DF80191C(__p, v8, *(a1 + 64), *(a1 + 24), 1);
      if (SHIBYTE(v22) < 0)
      {
        operator delete(__p[0]);
      }

      xpc_connection_send_message(*(a1 + 40), v19);
      xpc_release(v19);
    }

    if (v8)
    {
      xpc_release(v8);
    }

    result = 1;
  }

  else
  {
    if (qword_1ED5FAD68 != -1)
    {
      dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
    }

    v12 = qword_1ED5FAD60;
    if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_FAULT))
    {
      v13 = *(a2 + 23) >= 0 ? a2 : *a2;
      v14 = *(a1 + 24);
      *buf = 68289538;
      v24 = 0;
      v25 = 2082;
      v26 = &unk_1DF8255EF;
      v27 = 2082;
      v28 = v13;
      v29 = 2050;
      v30 = v14;
      _os_log_impl(&dword_1DF7FE000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unable to send reply message, MessageName:%{public, location:escape_only}s, ReplyHanlderIdentifier:%{public}ld}", buf, 0x26u);
      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
      }
    }

    v15 = qword_1ED5FAD60;
    result = os_signpost_enabled(qword_1ED5FAD60);
    if (result)
    {
      if (*(a2 + 23) >= 0)
      {
        v17 = a2;
      }

      else
      {
        v17 = *a2;
      }

      v18 = *(a1 + 24);
      *buf = 68289538;
      v24 = 0;
      v25 = 2082;
      v26 = &unk_1DF8255EF;
      v27 = 2082;
      v28 = v17;
      v29 = 2050;
      v30 = v18;
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unable to send reply message", "{msg%{public}.0s:Unable to send reply message, MessageName:%{public, location:escape_only}s, ReplyHanlderIdentifier:%{public}ld}", buf, 0x26u);
      result = 0;
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DF813884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CLConnectionMessage::sendReply(uint64_t a1, uint64_t a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 48);
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    xpc_dictionary_set_string(v6, "kCLConnectionMessageNameKey", v7);
    xpc_dictionary_set_value(*(a1 + 48), "kCLConnectionMessageInfoKey", a3);
    v8 = 1;
    xpc_dictionary_set_BOOL(*(a1 + 48), "kCLConnectionMessageIsReplyingKey", 1);
    xpc_connection_send_message(*(a1 + 40), *(a1 + 48));
    xpc_release(*(a1 + 48));
    *(a1 + 48) = 0;
  }

  else
  {
    v9 = *(a1 + 24);
    if (v9)
    {
      if (*(a2 + 23) < 0)
      {
        sub_1DF802ED0(__p, *a2, *(a2 + 8));
        v9 = *(a1 + 24);
      }

      else
      {
        *__p = *a2;
        v20 = *(a2 + 16);
      }

      v16 = sub_1DF80191C(__p, a3, *(a1 + 64), v9, 1);
      if (SHIBYTE(v20) < 0)
      {
        operator delete(__p[0]);
      }

      xpc_connection_send_message(*(a1 + 40), v16);
      xpc_release(v16);
      v8 = 1;
    }

    else
    {
      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
      }

      v10 = qword_1ED5FAD60;
      if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_FAULT))
      {
        v11 = *(a2 + 23) >= 0 ? a2 : *a2;
        v12 = *(a1 + 24);
        *buf = 68289538;
        v22 = 0;
        v23 = 2082;
        v24 = &unk_1DF8255EF;
        v25 = 2082;
        v26 = v11;
        v27 = 2050;
        v28 = v12;
        _os_log_impl(&dword_1DF7FE000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unable to send reply message with raw data, MessageName:%{public, location:escape_only}s, ReplyHanlderIdentifier:%{public}ld}", buf, 0x26u);
        if (qword_1ED5FAD68 != -1)
        {
          dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
        }
      }

      v13 = qword_1ED5FAD60;
      if (os_signpost_enabled(qword_1ED5FAD60))
      {
        if (*(a2 + 23) >= 0)
        {
          v14 = a2;
        }

        else
        {
          v14 = *a2;
        }

        v15 = *(a1 + 24);
        *buf = 68289538;
        v22 = 0;
        v23 = 2082;
        v24 = &unk_1DF8255EF;
        v25 = 2082;
        v26 = v14;
        v27 = 2050;
        v28 = v15;
        _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unable to send reply message with raw data", "{msg%{public}.0s:Unable to send reply message with raw data, MessageName:%{public, location:escape_only}s, ReplyHanlderIdentifier:%{public}ld}", buf, 0x26u);
      }

      v8 = 0;
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_1DF813B60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DF813BC4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5AC6508;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12DFAD0);
}

uint64_t sub_1DF813C18(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54D8];
  v3 = *MEMORY[0x1E69E54D8];
  *a1 = *MEMORY[0x1E69E54D8];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t sub_1DF813D6C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

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

void sub_1DF813DD4(char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 47) < 0)
    {
      operator delete(__p[3]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *sub_1DF813E30(void *a1, void **a2)
{
  v2 = a1[1];
  v4 = *a2;
  v3 = a2[1];
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v6 = *(*a1 + 8 * v3);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 != a1 + 2)
  {
    v8 = v7[1];
    if (v5.u32[0] > 1uLL)
    {
      if (v8 >= *&v2)
      {
        v8 %= *&v2;
      }
    }

    else
    {
      v8 &= *&v2 - 1;
    }

    v9 = *a2;
    if (v8 == v3)
    {
LABEL_20:
      if (!v9)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }
  }

  if (!v4)
  {
    goto LABEL_19;
  }

  v10 = v4[1];
  if (v5.u32[0] > 1uLL)
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

  v9 = *a2;
  if (v10 != v3)
  {
LABEL_19:
    *(*a1 + 8 * v3) = 0;
    v9 = *a2;
    goto LABEL_20;
  }

LABEL_21:
  v11 = v9[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v11 >= *&v2)
    {
      v11 %= *&v2;
    }
  }

  else
  {
    v11 &= *&v2 - 1;
  }

  if (v11 != v3)
  {
    *(*a1 + 8 * v11) = v7;
    v9 = *a2;
  }

LABEL_27:
  *v7 = v9;
  *a2 = 0;
  --a1[3];
  sub_1DF813DD4(1, a2);
  return v4;
}

void sub_1DF813FA0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5AC6578;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12DFAD0);
}

id sub_1DF814218()
{
  if (qword_1ED5FAD40 != -1)
  {
    dispatch_once(&qword_1ED5FAD40, &unk_1F5AC65B8);
  }

  v1 = qword_1ED5FAD48;

  return v1;
}

uint64_t sub_1DF815DF4()
{
  qword_1ED5FAD48 = os_log_create("com.apple.LocationSupport", "Intersilo");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1DF815F74(uint64_t a1)
{
  if (qword_1ECE5D3F0 != -1)
  {
    dispatch_once(&qword_1ECE5D3F0, &unk_1F5AC65D8);
  }

  v2 = qword_1ECE5D400;
  if (os_log_type_enabled(qword_1ECE5D400, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DF7FE000, v2, OS_LOG_TYPE_DEBUG, "#SettingsMirror Received NSUserDefaultsDidChangeNotification", v4, 2u);
  }

  return [*(a1 + 32) refresh];
}

os_log_t sub_1DF816184()
{
  result = os_log_create("com.apple.LocationSupport", "Internal");
  qword_1ECE5D400 = result;
  return result;
}

void sub_1DF8161B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (qword_1ED5FAD68 != -1)
  {
    dispatch_once(&qword_1ED5FAD68, &unk_1F5AC68B0);
  }

  v5 = qword_1ED5FAD60;
  if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v17 = a3;
    _os_log_impl(&dword_1DF7FE000, v5, OS_LOG_TYPE_DEBUG, "received daemon start notification for service %@", buf, 0xCu);
  }

  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *a2;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3321888768;
  v12[2] = sub_1DF817410;
  v12[3] = &unk_1F5AC6628;
  v12[4] = v8;
  v13 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = v6;
  v15 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_async(v10, v12);
  if (v15)
  {
    sub_1DF7FFED0(v15);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  if (v7)
  {
    sub_1DF7FFED0(v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void CLConnectionClient::pause(CLConnectionClient *this)
{
  v3 = *(this + 4);
  v2 = *(this + 5);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(this + 2);
  v4 = *(this + 3);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_1DF7FFED0(v4);
  }

  v6 = *this;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3321888768;
  v7[2] = sub_1DF816470;
  v7[3] = &unk_1F5AC6628;
  v7[4] = v5;
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = v3;
  v10 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_async(v6, v7);
  if (v10)
  {
    sub_1DF7FFED0(v10);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  if (v2)
  {
    sub_1DF7FFED0(v2);
  }
}

void sub_1DF816470(void *a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3321888768;
  v4 = sub_1DF816534;
  v5 = &unk_1F5AC65F8;
  v1 = a1[7];
  v6 = a1[6];
  v7 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v2 = a1[5];
  if (v2 && *(v2 + 8) != -1)
  {
    v4(v3);
  }

  if (v7)
  {
    sub_1DF7FFED0(v7);
  }
}

void sub_1DF81651C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_1DF7FFED0(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DF816534(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  dispatch_assert_queue_V2(*(v1 + 8));
  if ((*(v1 + 97) & 1) == 0)
  {
    if (qword_1ED5FAD68 != -1)
    {
      dispatch_once(&qword_1ED5FAD68, &unk_1F5AC68B0);
    }

    v5 = qword_1ED5FAD60;
    if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = &unk_1DF8255EF;
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "fPaused";
      _os_log_impl(&dword_1DF7FE000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Cannot call pause() on a paused CLConnectionClient, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC68B0);
      }
    }

    v6 = qword_1ED5FAD60;
    if (os_signpost_enabled(qword_1ED5FAD60))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = &unk_1DF8255EF;
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "fPaused";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Cannot call pause() on a paused CLConnectionClient", "{msg%{public}.0s:Cannot call pause() on a paused CLConnectionClient, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC68B0);
      }
    }

    v7 = qword_1ED5FAD60;
    if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = &unk_1DF8255EF;
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "fPaused";
      _os_log_impl(&dword_1DF7FE000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Cannot call pause() on a paused CLConnectionClient, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
  }

  *(v1 + 97) = 1;
  v2 = *v1;
  if (*v1)
  {
    v3 = *MEMORY[0x1E69E9840];

    CLConnection::pause(v2);
  }

  else
  {
    v4 = *MEMORY[0x1E69E9840];
  }
}

uint64_t sub_1DF8167F8(uint64_t result, uint64_t a2)
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

void sub_1DF816814(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_1DF7FFED0(v1);
  }
}

uint64_t sub_1DF816824(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1DF816840(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    sub_1DF7FFED0(v1);
  }
}

uint64_t sub_1DF816850(uint64_t result, uint64_t a2)
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

void sub_1DF81686C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_1DF7FFED0(v1);
  }
}

void CLConnectionClient::sendMessage(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_1DF7FFED0(v6);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3321888768;
  v16[2] = sub_1DF816A08;
  v16[3] = &unk_1F5AC6698;
  v16[5] = v7;
  v17 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v16[4] = a3;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *a1;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3321888768;
  v12[2] = sub_1DF816B4C;
  v12[3] = &unk_1F5AC67E0;
  v12[5] = v8;
  v13 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = a2[1];
  v14 = *a2;
  v15 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12[4] = v16;
  dispatch_async(v10, v12);
  if (v15)
  {
    sub_1DF7FFED0(v15);
  }

  if (v13)
  {
    sub_1DF7FFED0(v13);
  }

  if (v9)
  {
    sub_1DF7FFED0(v9);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }
}

void sub_1DF816A08(uint64_t a1, uint64_t *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3321888768;
  v6 = sub_1DF816AD4;
  v7 = &unk_1F5AC6660;
  v3 = *a2;
  v2 = a2[1];
  v8 = *(a1 + 32);
  v9 = v3;
  v10 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 48);
  if (v4 && *(v4 + 8) != -1)
  {
    v6(v5);
  }

  if (v10)
  {
    sub_1DF7FFED0(v10);
  }
}

void sub_1DF816ABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_1DF7FFED0(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DF816AD4(void *a1)
{
  v2 = a1[4];
  v4 = a1[5];
  v3 = a1[6];
  v5 = v4;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(v2 + 16))(v2, &v5);
  if (v6)
  {
    sub_1DF7FFED0(v6);
  }
}

void sub_1DF816B34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1DF7FFED0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DF816B4C(void *a1)
{
  v2 = a1[5];
  v3 = a1[7];
  v4 = a1[8];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = a1[4];
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v5 = a1[4];
  }

  v6[0] = v3;
  v6[1] = v4;
  sub_1DF817060(v2, v6, 0, v5);
  if (v4)
  {
    sub_1DF7FFED0(v4);

    sub_1DF7FFED0(v4);
  }
}

void sub_1DF816BDC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1DF7FFED0(v1);
    sub_1DF7FFED0(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1DF816BFC(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
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

void sub_1DF816C30(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_1DF7FFED0(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    sub_1DF7FFED0(v3);
  }
}

void CLConnectionClient::sendMessageWithCompletion(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_1DF7FFED0(v6);
  }

  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 1;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3321888768;
  v16[2] = sub_1DF816E34;
  v16[3] = &unk_1F5AC6850;
  v16[6] = v7;
  v17 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v16[4] = a3;
  v16[5] = v18;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *a1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = sub_1DF816FCC;
  block[3] = &unk_1F5AC67E0;
  block[5] = v8;
  v13 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = a2[1];
  v14 = *a2;
  v15 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v16;
  dispatch_async(v10, block);
  if (v15)
  {
    sub_1DF7FFED0(v15);
  }

  if (v13)
  {
    sub_1DF7FFED0(v13);
  }

  if (v9)
  {
    sub_1DF7FFED0(v9);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  _Block_object_dispose(v18, 8);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }
}

void sub_1DF816E34(void *a1, uint64_t *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3321888768;
  v6 = sub_1DF816F08;
  v7 = &unk_1F5AC6818;
  v3 = *a2;
  v2 = a2[1];
  v9 = a1[5];
  v10 = v3;
  v11 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = a1[4];
  v4 = a1[7];
  if (v4 && *(v4 + 8) != -1)
  {
    v6(v5);
  }

  if (v11)
  {
    sub_1DF7FFED0(v11);
  }
}

void sub_1DF816EF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_1DF7FFED0(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DF816F08(void *a1)
{
  v1 = *(a1[5] + 8);
  if (*(v1 + 24) == 1)
  {
    v3 = a1[6];
    if (v3)
    {
      *(v1 + 24) = 0;
      v4 = a1[4];
      v5 = a1[7];
      v6 = v3;
      v7 = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(v4 + 16))(v4, &v6);
      if (v7)
      {
        sub_1DF7FFED0(v7);
      }
    }
  }
}

void sub_1DF816F88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1DF7FFED0(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1DF816FA0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1DF816FBC(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1DF816FCC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 64);
  v4[0] = *(a1 + 56);
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1DF817060(v2, v4, 1, *(a1 + 32));
  if (v3)
  {

    sub_1DF7FFED0(v3);
  }
}

void sub_1DF817048(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1DF7FFED0(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DF817060(uint64_t *a1, uint64_t a2, int a3, void (**a4)(void, void))
{
  v7 = *(a2 + 8);
  v15[0] = *a2;
  v15[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1DF80443C(a1, v15, a3, a4);
  if (v7)
  {
    sub_1DF7FFED0(v7);
  }

  v8 = *a1;
  if (!*a1)
  {
    v11 = 0;
    v12 = 0;
    (a4)[2](a4, &v11);
    v10 = v12;
    if (!v12)
    {
      return;
    }

    goto LABEL_9;
  }

  v9 = *(a2 + 8);
  v13 = *a2;
  v14 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  CLConnection::sendMessage(v8, &v13, a4);
  v10 = v14;
  if (v14)
  {
LABEL_9:
    sub_1DF7FFED0(v10);
  }
}

void sub_1DF817128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    sub_1DF7FFED0(a10);
  }

  _Unwind_Resume(exception_object);
}

void CLConnectionClient::setRequireManualCachedMessageSend(CLConnectionClient *this, char a2)
{
  v2 = *(this + 4);
  v3 = *(this + 5);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *this;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = sub_1DF817218;
  block[3] = &unk_1F5AC6880;
  block[4] = v2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = a2;
  dispatch_async(v4, block);
  if (v6)
  {
    sub_1DF7FFED0(v6);
  }

  if (v3)
  {
    sub_1DF7FFED0(v3);
  }
}

void CLConnectionClient::sendCachedMessages(CLConnectionClient *this)
{
  v3 = *(this + 4);
  v2 = *(this + 5);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(this + 2);
  v4 = *(this + 3);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_1DF7FFED0(v4);
  }

  v6 = *this;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3321888768;
  v7[2] = sub_1DF817344;
  v7[3] = &unk_1F5AC6628;
  v7[4] = v5;
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = v3;
  v10 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_async(v6, v7);
  if (v10)
  {
    sub_1DF7FFED0(v10);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  if (v2)
  {
    sub_1DF7FFED0(v2);
  }
}

void sub_1DF817344(void *a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3321888768;
  v4 = sub_1DF817408;
  v5 = &unk_1F5AC65F8;
  v1 = a1[7];
  v6 = a1[6];
  v7 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v2 = a1[5];
  if (v2 && *(v2 + 8) != -1)
  {
    v4(v3);
  }

  if (v7)
  {
    sub_1DF7FFED0(v7);
  }
}

void sub_1DF8173F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_1DF7FFED0(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DF817410(void *a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3321888768;
  v4 = sub_1DF8174D4;
  v5 = &unk_1F5AC65F8;
  v1 = a1[7];
  v6 = a1[6];
  v7 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v2 = a1[5];
  if (v2 && *(v2 + 8) != -1)
  {
    v4(v3);
  }

  if (v7)
  {
    sub_1DF7FFED0(v7);
  }
}

void sub_1DF8174BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_1DF7FFED0(a14);
  }

  _Unwind_Resume(exception_object);
}

os_unfair_lock_s *sub_1DF8174D4(uint64_t a1)
{
  result = *(a1 + 32);
  if (!*&result->_os_unfair_lock_opaque)
  {
    return sub_1DF8020C0(result);
  }

  return result;
}

uint64_t sub_1DF8174E8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_1DF7FFED0(v2);
  }

  return a1;
}

void sub_1DF817568(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5AC68E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12DFAD0);
}

uint64_t CLWriteStackshot(uint64_t a1, int a2)
{
  v4 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if (qword_1ED5FAE90)
  {
    goto LABEL_2;
  }

  v13 = dlopen("/System/Library/PrivateFrameworks/CrashReporterSupport.framework/CrashReporterSupport", 1);
  qword_1ED5FAE90 = v13;
  if (v13)
  {
    off_1ED5FAE88 = dlsym(v13, "WriteStackshotReport");
    v14 = dlsym(qword_1ED5FAE90, "SimulateCrash");
    off_1ED5FAE80 = v14;
    if (off_1ED5FAE88)
    {
      if (v14)
      {
        goto LABEL_2;
      }
    }

    else
    {
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC6920);
      }

      v20 = qword_1ECE5D3F8;
      if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_FAULT))
      {
        *v21 = 0;
        _os_log_impl(&dword_1DF7FE000, v20, OS_LOG_TYPE_FAULT, "CLWriteStackshotReport is NULL", v21, 2u);
      }

      if (off_1ED5FAE80)
      {
        goto LABEL_2;
      }
    }

    if (qword_1ECE5D3E8 != -1)
    {
      dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC6920);
    }

    v18 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_FAULT))
    {
      *v21 = 0;
      v19 = "CLSimulateCrash is NULL";
      goto LABEL_53;
    }
  }

  else
  {
    if (qword_1ECE5D3E8 != -1)
    {
      dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC6920);
    }

    v18 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_FAULT))
    {
      *v21 = 0;
      v19 = "Unable to load CrashReporterSupport framework.";
LABEL_53:
      _os_log_impl(&dword_1DF7FE000, v18, OS_LOG_TYPE_FAULT, v19, v21, 2u);
    }
  }

LABEL_2:
  v5 = [MEMORY[0x1E696AEC0] stringWithCString:a1 encoding:{4, *v21}];
  v6 = v5;
  if (a2)
  {
    v7 = off_1ED5FAE80;
    if (off_1ED5FAE80)
    {
      v8 = getpid();
      if (v7(v8, 3511749773, v6))
      {
        if (qword_1ECE5D3E8 != -1)
        {
          dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC6920);
        }

        v9 = qword_1ECE5D3F8;
        if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_DEBUG))
        {
          *v21 = 0;
          v10 = "Simulated a crash";
LABEL_15:
          v11 = v9;
          v12 = OS_LOG_TYPE_DEBUG;
LABEL_38:
          _os_log_impl(&dword_1DF7FE000, v11, v12, v10, v21, 2u);
          return [v4 drain];
        }

        return [v4 drain];
      }

      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC6920);
      }

      v16 = qword_1ECE5D3F8;
      if (!os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_DEFAULT))
      {
        return [v4 drain];
      }

      *v21 = 0;
      v10 = "#Warning Failed to simulate a crash";
LABEL_37:
      v11 = v16;
      v12 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_38;
    }

    if (qword_1ECE5D3E8 != -1)
    {
      dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC6920);
    }

    v15 = qword_1ECE5D3F8;
    if (!os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_FAULT))
    {
      return [v4 drain];
    }

    *v21 = 0;
    v10 = "CLSimulateCrash is NULL";
LABEL_28:
    v11 = v15;
    v12 = OS_LOG_TYPE_FAULT;
    goto LABEL_38;
  }

  if (!off_1ED5FAE88)
  {
    if (qword_1ECE5D3E8 != -1)
    {
      dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC6920);
    }

    v15 = qword_1ECE5D3F8;
    if (!os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_FAULT))
    {
      return [v4 drain];
    }

    *v21 = 0;
    v10 = "CLWriteStackshotReport is NULL";
    goto LABEL_28;
  }

  if (!off_1ED5FAE88(v5, 3511749773))
  {
    if (qword_1ECE5D3E8 != -1)
    {
      dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC6920);
    }

    v16 = qword_1ECE5D3F8;
    if (!os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_DEFAULT))
    {
      return [v4 drain];
    }

    *v21 = 0;
    v10 = "#Warning Failed to write a stackshot";
    goto LABEL_37;
  }

  if (qword_1ECE5D3E8 != -1)
  {
    dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC6920);
  }

  v9 = qword_1ECE5D3F8;
  if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_DEBUG))
  {
    *v21 = 0;
    v10 = "Wrote a stackshot";
    goto LABEL_15;
  }

  return [v4 drain];
}

os_log_t sub_1DF817A20()
{
  result = os_log_create("com.apple.locationd.Support", "Support");
  qword_1ECE5D3F8 = result;
  return result;
}

uint64_t getActivityModelingZone()
{
  if (qword_1ED5FAEA0 != -1)
  {
    dispatch_once(&qword_1ED5FAEA0, &unk_1F5AC6940);
  }

  return qword_1ED5FAE98;
}

void sub_1DF817A98()
{
  zone = malloc_create_zone(0, 0);
  qword_1ED5FAE98 = zone;

  malloc_set_zone_name(zone, "ActivityModelingTokenZone");
}

_BYTE *placeActivityModelingToken(const char *a1, char a2)
{
  if (qword_1ED5FAEA0 != -1)
  {
    dispatch_once(&qword_1ED5FAEA0, &unk_1F5AC6940);
  }

  v4 = malloc_type_zone_malloc(qword_1ED5FAE98, 0x10uLL, 0x100004077774924uLL);
  *v4 = a2;
  strncpy(v4 + 1, a1, 0xFuLL);
  v4[15] = 0;
  return v4;
}

uint64_t sub_1DF8186C4(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:{objc_msgSend(*(a1 + 32), "stringByAppendingPathComponent:", @"syncget_addenda"}];
  qword_1ECE5D908 = v1;

  return [CLAutoCohortUtilities createDirectoryAtPath:v1];
}

uint64_t sub_1DF8199E0()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = +[CLAutoCohortUtilities getUnsafeEdges];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if (![v0 objectForKeyedSubscript:{objc_msgSend(v6, "objectAtIndexedSubscript:", 0)}])
        {
          [v0 setObject:objc_msgSend(MEMORY[0x1E695DFA8] forKeyedSubscript:{"set"), objc_msgSend(v6, "objectAtIndexedSubscript:", 0)}];
        }

        [objc_msgSend(v0 objectForKeyedSubscript:{objc_msgSend(v6, "objectAtIndexedSubscript:", 0)), "addObject:", objc_msgSend(v6, "objectAtIndexedSubscript:", 1)}];
      }

      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  result = [v0 copy];
  qword_1ED5FAEA8 = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DF81A310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_1DF81A33C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained prepareAndRunBlock:0];

  v4 = objc_loadWeakRetained((a1 + 40));
  v3 = [v4 timer];
  [v3 shouldFire];
}

void sub_1DF81A8DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF81A900(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 objectForKeyedSubscript:*(a1 + 32)];
  if (!v3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cohort:%@", *(a1 + 32)];
    v3 = dispatch_queue_create_with_target_V2([v4 UTF8String], 0, *(*(*(a1 + 40) + 8) + 40));

    [v7 setObject:v3 forKeyedSubscript:*(a1 + 32)];
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

id sub_1DF81A9CC()
{
  if (qword_1ED5FAD40 != -1)
  {
    dispatch_once(&qword_1ED5FAD40, &unk_1F5AC69E0);
  }

  v1 = qword_1ED5FAD48;

  return v1;
}

_BYTE *sub_1DF81B328(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) ack];
  result = *(a1 + 40);
  if ((result[16] & 1) == 0)
  {
    result = [result shouldBeIdled];
    if (result)
    {
      *(*(a1 + 40) + 16) = 1;
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC69E0);
      }

      v3 = qword_1ED5FAD48;
      if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(*(a1 + 40) + 8);
        v6 = 138412290;
        v7 = v4;
        _os_log_impl(&dword_1DF7FE000, v3, OS_LOG_TYPE_DEFAULT, "#Idleness, Silo is being idled: %@", &v6, 0xCu);
      }

      result = [*(a1 + 40) runIdleHandlers];
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_1DF81B878(uint64_t a1, void *a2)
{
  v3 = [a2 timer];
  [v3 nextFireDelayRaw];
  if (v3)
  {
    v5 = v4;
    if (v4 != 1.79769313e308)
    {
      v6 = *(a1 + 40);
      if (v6 >= v5)
      {
        [v3 fireInterval];
        v8 = v7;
        v9 = 1.79769313e308;
        if (v8 != 1.79769313e308)
        {
          v9 = v8 - fmod(*(a1 + 40) - v5, v8);
        }

        [v3 setNextFireDelay:v9];
        [*(a1 + 32) addObject:v3];
      }

      else
      {
        [v3 setNextFireDelay:v5 - v6];
      }
    }
  }

  return v3 != 0;
}

uint64_t sub_1DF81BA20(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 setHandler:0];
}

uint64_t sub_1DF81BBBC()
{
  qword_1ED5FADF0 = [MEMORY[0x1E695DF90] dictionary];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1DF81BBFC()
{
  qword_1ED5FAD48 = os_log_create("com.apple.LocationSupport", "Intersilo");

  return MEMORY[0x1EEE66BB8]();
}

id sub_1DF81C298()
{
  if (qword_1ED5FAD40 != -1)
  {
    dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6A38);
  }

  v1 = qword_1ED5FAD48;

  return v1;
}

void sub_1DF81D77C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _Block_copy(*(a1 + 48));
  [v3 setTarget:v4];

  [v3 retainArguments];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1DF81D888;
  v7[3] = &unk_1E86C8598;
  v5 = *(a1 + 32);
  v8 = *(a1 + 40);
  v6 = v3;
  v9 = v6;
  [v5 async:v7];
}

uint64_t sub_1DF81D888(uint64_t a1)
{
  result = [*(a1 + 32) valid];
  if (result)
  {
    v3 = *(a1 + 40);

    return MEMORY[0x1EEE66B58](v3, sel_invoke);
  }

  return result;
}

uint64_t sub_1DF81D8D4(uint64_t a1)
{
  result = [*(a1 + 32) valid];
  if (result)
  {
    result = [*(a1 + 40) offsiloHandleInvocation:*(a1 + 48) selectorInfo:*(a1 + 56) peer:*(a1 + 64)];
    if (result)
    {
      v3 = [*(a1 + 64) delegateSilo];
      v4 = [v3 identifier];
      CLProfilingIdentifySiloInvocation(v4, *(a1 + 48));

      v5 = *(a1 + 48);
      v6 = *(a1 + 32);

      return MEMORY[0x1EEE66B58](v5, sel_invokeWithTarget_);
    }
  }

  return result;
}

void sub_1DF81DEE4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5AC6A68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12DFAD0);
}

id sub_1DF81E1BC()
{
  if (qword_1ED5FAD40 != -1)
  {
    dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
  }

  v1 = qword_1ED5FAD48;

  return v1;
}

void sub_1DF81E634(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [qword_1ED5FADA8 objectForKey:*(a1 + 32)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 residentCount] - 1;
    [v3 setResidentCount:v4];
    if (!v4)
    {
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
      }

      v5 = qword_1ED5FAD48;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = [*(a1 + 32) identifier];
        v8[0] = 68289282;
        v8[1] = 0;
        v9 = 2082;
        v10 = &unk_1DF8255EF;
        v11 = 2114;
        v12 = v6;
        _os_log_impl(&dword_1DF7FE000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Heartbeat tracking terminated, silo:%{public, location:escape_only}@}", v8, 0x1Cu);
      }

      [qword_1ED5FADA8 removeObjectForKey:*(a1 + 32)];
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1DF81E7B4(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 description];
  v6 = [v4 description];
  v7 = [v5 compare:v6];

  return v7;
}

void sub_1DF81E824(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1DF81E998(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = *&qword_1ED5FAD58;
  byte_1ED5FAD50 = *(a1 + 40);
  v2 = *(a1 + 32);
  qword_1ED5FAD58 = *&v2;
  byte_1ED5FAD98 = *(a1 + 41);
  if (*(a1 + 42))
  {
    if (v2 > 0.0)
    {
      v3 = (v2 * 1000000000.0);
      v4 = qword_1ED5FADB0;
      v5 = dispatch_time(0, v3);
      dispatch_source_set_timer(v4, v5, v3, v3);
      if (v1 <= 0.0)
      {
        if (qword_1ED5FAD40 != -1)
        {
          dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
        }

        v12 = qword_1ED5FAD48;
        if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEBUG))
        {
          v14 = 68289282;
          v15 = 0;
          v16 = 2082;
          v17 = &unk_1DF8255EF;
          v18 = 2050;
          v19 = qword_1ED5FAD58;
          _os_log_impl(&dword_1DF7FE000, v12, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Heartbeat tracking resumed, interval:%{public}f}", &v14, 0x1Cu);
        }

        dispatch_resume(qword_1ED5FADB0);
      }

      else
      {
        if (qword_1ED5FAD40 != -1)
        {
          dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
        }

        v6 = qword_1ED5FAD48;
        if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEBUG))
        {
          v14 = 68289282;
          v15 = 0;
          v16 = 2082;
          v17 = &unk_1DF8255EF;
          v18 = 2050;
          v19 = qword_1ED5FAD58;
          v7 = "{msg%{public}.0s:Heartbeat tracking already enabled, interval:%{public}f}";
          v8 = v6;
          v9 = 28;
LABEL_19:
          _os_log_impl(&dword_1DF7FE000, v8, OS_LOG_TYPE_DEBUG, v7, &v14, v9);
          goto LABEL_25;
        }
      }

      goto LABEL_25;
    }
  }

  else
  {
    qword_1ED5FAD58 = 0;
  }

  if (v1 <= 0.0)
  {
    if (qword_1ED5FAD40 != -1)
    {
      dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
    }

    v11 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEBUG))
    {
      v14 = 68289026;
      v15 = 0;
      v16 = 2082;
      v17 = &unk_1DF8255EF;
      v7 = "{msg%{public}.0s:Heartbeat tracking already disabled}";
      v8 = v11;
      v9 = 18;
      goto LABEL_19;
    }
  }

  else
  {
    if (qword_1ED5FAD40 != -1)
    {
      dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
    }

    v10 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEBUG))
    {
      v14 = 68289026;
      v15 = 0;
      v16 = 2082;
      v17 = &unk_1DF8255EF;
      _os_log_impl(&dword_1DF7FE000, v10, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Heartbeat tracking suspended}", &v14, 0x12u);
    }

    dispatch_suspend(qword_1ED5FADB0);
  }

LABEL_25:
  v13 = *MEMORY[0x1E69E9840];
}

void sub_1DF81F47C(void *a1)
{
  v67 = *MEMORY[0x1E69E9840];
  if (!a1[4])
  {
    v43 = sub_1DF81E1BC();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v55 = 0;
      v56 = 2082;
      v57 = &unk_1DF8255EF;
      v58 = 2082;
      v59 = "assert";
      v60 = 2081;
      v61 = "remapping";
      _os_log_impl(&dword_1DF7FE000, v43, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Service replacement map must be non-nil if set, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v44 = sub_1DF81E1BC();
    if (os_signpost_enabled(v44))
    {
      *buf = 68289539;
      v55 = 0;
      v56 = 2082;
      v57 = &unk_1DF8255EF;
      v58 = 2082;
      v59 = "assert";
      v60 = 2081;
      v61 = "remapping";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v44, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Service replacement map must be non-nil if set", "{msg%{public}.0s:Service replacement map must be non-nil if set, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v45 = sub_1DF81E1BC();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v55 = 0;
      v56 = 2082;
      v57 = &unk_1DF8255EF;
      v58 = 2082;
      v59 = "assert";
      v60 = 2081;
      v61 = "remapping";
      _os_log_impl(&dword_1DF7FE000, v45, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Service replacement map must be non-nil if set, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v47 = 451;
    v48 = "[CLServiceVendor setServiceReplacementMap:missBehavior:]_block_invoke";
    v46 = "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLServiceVendor.mm";
    abort_report_np();
    goto LABEL_67;
  }

  v1 = a1;
  v2 = MEMORY[0x1E695DFA8];
  v3 = [*(a1[5] + 8) allKeys];
  v4 = [v2 setWithArray:v3];

  [v4 unionSet:*(*(v1 + 5) + 24)];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v50 objects:v66 count:16];
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = *v51;
  while (2)
  {
    v7 = 0;
    do
    {
      if (*v51 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v50 + 1) + 8 * v7);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
      }

      v9 = qword_1ED5FAD48;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = v8;
        v11 = [v8 UTF8String];
        v12 = *(v1 + 12);
        *buf = 68289538;
        v55 = 0;
        v56 = 2082;
        v57 = &unk_1DF8255EF;
        v58 = 2082;
        v59 = v11;
        v60 = 1026;
        LODWORD(v61) = v12;
        _os_log_impl(&dword_1DF7FE000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:service replacement mapping, literalSvcName:%{public, location:escape_only}s, MissBehavior:%{public}d}", buf, 0x22u);
      }

      v13 = sub_1DF7FF70C(*(v1 + 4), *(v1 + 12), v8);
      v14 = sub_1DF7FF70C(*(*(v1 + 5) + 16), *(*(v1 + 5) + 40), v8);
      v15 = v14;
      if (!v13)
      {
        if (qword_1ED5FAD40 != -1)
        {
          dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
        }

        v23 = qword_1ED5FAD48;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
        {
          *buf = 68289539;
          v55 = 0;
          v56 = 2082;
          v57 = &unk_1DF8255EF;
          v58 = 2082;
          v59 = "assert";
          v60 = 2081;
          v61 = "newEffectiveSvcName";
          _os_log_impl(&dword_1DF7FE000, v23, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Existing services must not fail to map under new mapping and behavior, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        if (qword_1ED5FAD40 != -1)
        {
          dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
        }

        v24 = qword_1ED5FAD48;
        if (os_signpost_enabled(v24))
        {
          *buf = 68289539;
          v55 = 0;
          v56 = 2082;
          v57 = &unk_1DF8255EF;
          v58 = 2082;
          v59 = "assert";
          v60 = 2081;
          v61 = "newEffectiveSvcName";
          _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Existing services must not fail to map under new mapping and behavior", "{msg%{public}.0s:Existing services must not fail to map under new mapping and behavior, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        if (qword_1ED5FAD40 != -1)
        {
          dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
        }

        v1 = qword_1ED5FAD48;
        if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
        {
          *buf = 68289539;
          v55 = 0;
          v56 = 2082;
          v57 = &unk_1DF8255EF;
          v58 = 2082;
          v59 = "assert";
          v60 = 2081;
          v61 = "newEffectiveSvcName";
          _os_log_impl(&dword_1DF7FE000, v1, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Existing services must not fail to map under new mapping and behavior, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        v25 = 464;
        goto LABEL_33;
      }

      if (!v14)
      {
        if (qword_1ED5FAD40 != -1)
        {
          dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
        }

        v26 = qword_1ED5FAD48;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          *buf = 68289539;
          v55 = 0;
          v56 = 2082;
          v57 = &unk_1DF8255EF;
          v58 = 2082;
          v59 = "assert";
          v60 = 2081;
          v61 = "oldEffectiveSvcName";
          _os_log_impl(&dword_1DF7FE000, v26, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Should be impossible for an existing service to fail to map under existing mapping and behavior, and must be non-nil for next test, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        if (qword_1ED5FAD40 != -1)
        {
          dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
        }

        v27 = qword_1ED5FAD48;
        if (os_signpost_enabled(v27))
        {
          *buf = 68289539;
          v55 = 0;
          v56 = 2082;
          v57 = &unk_1DF8255EF;
          v58 = 2082;
          v59 = "assert";
          v60 = 2081;
          v61 = "oldEffectiveSvcName";
          _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v27, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Should be impossible for an existing service to fail to map under existing mapping and behavior, and must be non-nil for next test", "{msg%{public}.0s:Should be impossible for an existing service to fail to map under existing mapping and behavior, and must be non-nil for next test, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        if (qword_1ED5FAD40 != -1)
        {
          dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
        }

        v28 = qword_1ED5FAD48;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 68289539;
          v55 = 0;
          v56 = 2082;
          v57 = &unk_1DF8255EF;
          v58 = 2082;
          v59 = "assert";
          v60 = 2081;
          v61 = "oldEffectiveSvcName";
          _os_log_impl(&dword_1DF7FE000, v28, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Should be impossible for an existing service to fail to map under existing mapping and behavior, and must be non-nil for next test, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        v47 = 465;
        v48 = "[CLServiceVendor setServiceReplacementMap:missBehavior:]_block_invoke";
        v46 = "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLServiceVendor.mm";
        abort_report_np();
LABEL_67:
        __break(1u);
LABEL_68:
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
        goto LABEL_17;
      }

      if (([v14 isEqual:v13] & 1) == 0)
      {
        if (qword_1ED5FAD40 != -1)
        {
          dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
        }

        v29 = qword_1ED5FAD48;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
        {
          v30 = v15;
          v31 = [v15 UTF8String];
          v32 = v13;
          v33 = [v13 UTF8String];
          *buf = 68290051;
          v55 = 0;
          v56 = 2082;
          v57 = &unk_1DF8255EF;
          v58 = 2082;
          v59 = v31;
          v60 = 2082;
          v61 = v33;
          v62 = 2082;
          v63 = "assert";
          v64 = 2081;
          v65 = "[oldEffectiveSvcName isEqual:newEffectiveSvcName]";
          _os_log_impl(&dword_1DF7FE000, v29, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Old and new mappings and behaviors must agree about any service which has started, oldEffectiveSvcName:%{public, location:escape_only}s, newEffectiveSvcName:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
        }

        if (qword_1ED5FAD40 != -1)
        {
          dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
        }

        v34 = qword_1ED5FAD48;
        if (os_signpost_enabled(v34))
        {
          v35 = v15;
          v36 = [v15 UTF8String];
          v37 = v13;
          v38 = [v13 UTF8String];
          *buf = 68290051;
          v55 = 0;
          v56 = 2082;
          v57 = &unk_1DF8255EF;
          v58 = 2082;
          v59 = v36;
          v60 = 2082;
          v61 = v38;
          v62 = 2082;
          v63 = "assert";
          v64 = 2081;
          v65 = "[oldEffectiveSvcName isEqual:newEffectiveSvcName]";
          _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v34, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Old and new mappings and behaviors must agree about any service which has started", "{msg%{public}.0s:Old and new mappings and behaviors must agree about any service which has started, oldEffectiveSvcName:%{public, location:escape_only}s, newEffectiveSvcName:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
        }

        if (qword_1ED5FAD40 != -1)
        {
          dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
        }

        v1 = qword_1ED5FAD48;
        if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
        {
          v39 = v15;
          v40 = [v15 UTF8String];
          v41 = v13;
          v42 = [v13 UTF8String];
          *buf = 68290051;
          v55 = 0;
          v56 = 2082;
          v57 = &unk_1DF8255EF;
          v58 = 2082;
          v59 = v40;
          v60 = 2082;
          v61 = v42;
          v62 = 2082;
          v63 = "assert";
          v64 = 2081;
          v65 = "[oldEffectiveSvcName isEqual:newEffectiveSvcName]";
          _os_log_impl(&dword_1DF7FE000, v1, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Old and new mappings and behaviors must agree about any service which has started, oldEffectiveSvcName:%{public, location:escape_only}s, newEffectiveSvcName:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
        }

        v25 = 466;
LABEL_33:

        v47 = v25;
        v48 = "[CLServiceVendor setServiceReplacementMap:missBehavior:]_block_invoke";
        v46 = "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLServiceVendor.mm";
        abort_report_np();
        goto LABEL_67;
      }

      ++v7;
    }

    while (v5 != v7);
    v5 = [obj countByEnumeratingWithState:&v50 objects:v66 count:16];
    if (v5)
    {
      continue;
    }

    break;
  }

LABEL_16:

  if (qword_1ED5FAD40 != -1)
  {
    goto LABEL_68;
  }

LABEL_17:
  v16 = qword_1ED5FAD48;
  if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(v1 + 4);
    v18 = *(v1 + 12);
    *buf = 68289538;
    v55 = 0;
    v56 = 2082;
    v57 = &unk_1DF8255EF;
    v58 = 2114;
    v59 = v17;
    v60 = 1026;
    LODWORD(v61) = v18;
    _os_log_impl(&dword_1DF7FE000, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Configuring service replacement map, ReplacementMap:%{public, location:escape_only}@, MissBehavior:%{public}d}", buf, 0x22u);
  }

  v19 = [*(v1 + 4) copy];
  v20 = *(v1 + 5);
  v21 = *(v20 + 16);
  *(v20 + 16) = v19;

  *(*(v1 + 5) + 40) = *(v1 + 12);
  v22 = *MEMORY[0x1E69E9840];
}

void sub_1DF820918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id a42)
{
  _Block_object_dispose(&a31, 8);

  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v43 - 176), 8);

  _Unwind_Resume(a1);
}

void sub_1DF82097C(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 24) containsObject:*(a1 + 40)])
  {
    if (qword_1ED5FAD40 != -1)
    {
      dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
    }

    v2 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(a1 + 40);
      v17[0] = 68289282;
      v17[1] = 0;
      v18 = 2082;
      v19 = &unk_1DF8255EF;
      v20 = 2114;
      v21 = v3;
      _os_log_impl(&dword_1DF7FE000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Unavailable service requested, RequestedServiceName:%{public, location:escape_only}@}", v17, 0x1Cu);
    }

    goto LABEL_8;
  }

  v4 = [*(*(a1 + 32) + 8) objectForKey:*(a1 + 40)];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  if (!v8 || (sub_1DF7FF70C(v8, *(v7 + 40), *(a1 + 40)), v9 = objc_claimAutoreleasedReturnValue(), v10 = *(*(a1 + 56) + 8), v11 = *(v10 + 40), *(v10 + 40) = v9, v11, *(*(*(a1 + 56) + 8) + 40)))
  {
LABEL_8:
    v12 = *MEMORY[0x1E69E9840];
    return;
  }

  v13 = [*(*(a1 + 32) + 16) copy];
  v14 = *(*(a1 + 64) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;
  v16 = *MEMORY[0x1E69E9840];

  MEMORY[0x1EEE66BB8]();
}

void sub_1DF820B34(uint64_t a1)
{
  v62 = *MEMORY[0x1E69E9840];
  if (*(a1 + 80))
  {
    if ([*(*(a1 + 40) + 24) containsObject:*(a1 + 32)])
    {
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
      }

      v2 = qword_1ED5FAD48;
      if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEBUG))
      {
        v3 = *(a1 + 32);
        v4 = *(*(a1 + 40) + 24);
        *buf = 68289538;
        v52 = 0;
        v53 = 2082;
        v54 = &unk_1DF8255EF;
        v55 = 2114;
        v56 = v3;
        v57 = 2114;
        v58 = v4;
        _os_log_impl(&dword_1DF7FE000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Trying to start an unavailable service, RequestedServiceName:%{public, location:escape_only}@, UnavailableServices:%{public, location:escape_only}@}", buf, 0x26u);
      }
    }

    else
    {
      v8 = [*(*(a1 + 40) + 8) objectForKey:*(a1 + 32)];
      v9 = *(*(a1 + 64) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      if (!*(*(*(a1 + 64) + 8) + 40))
      {
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v11 = *(*(a1 + 40) + 8);
        v12 = [v11 countByEnumeratingWithState:&v47 objects:v61 count:16];
        if (v12)
        {
          v13 = *v48;
          while (2)
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v48 != v13)
              {
                objc_enumerationMutation(v11);
              }

              v15 = *(*(&v47 + 1) + 8 * i);
              v16 = [*(*(a1 + 40) + 8) objectForKey:v15];
              if ([*(a1 + 72) isEqual:objc_opt_class()])
              {
                objc_storeStrong((*(*(a1 + 64) + 8) + 40), v16);
                if (qword_1ED5FAD40 != -1)
                {
                  dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
                }

                v17 = qword_1ED5FAD48;
                if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEBUG))
                {
                  v18 = *(a1 + 32);
                  v19 = *(*(*(a1 + 56) + 8) + 40);
                  *buf = 68289794;
                  v52 = 0;
                  v53 = 2082;
                  v54 = &unk_1DF8255EF;
                  v55 = 2114;
                  v56 = v18;
                  v57 = 2114;
                  v58 = v19;
                  v59 = 2114;
                  v60 = v15;
                  _os_log_impl(&dword_1DF7FE000, v17, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Reusing replacement service under new name, RequestedServiceName:%{public, location:escape_only}@, EffectiveServiceName:%{public, location:escape_only}@, ReusedFromServiceName:%{public, location:escape_only}@}", buf, 0x30u);
                }

                goto LABEL_27;
              }
            }

            v12 = [v11 countByEnumeratingWithState:&v47 objects:v61 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

LABEL_27:

        v20 = *(*(*(a1 + 64) + 8) + 40);
        if (v20)
        {
          [*(*(a1 + 40) + 8) setObject:v20 forKey:*(a1 + 32)];
        }

        else
        {
          v21 = _os_activity_create(&dword_1DF7FE000, "CL: #Manufacturing service", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
          os_activity_scope_enter(v21, &state);
          if (qword_1ED5FAD40 != -1)
          {
            dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
          }

          v22 = qword_1ED5FAD48;
          if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEFAULT))
          {
            v23 = *(a1 + 32);
            v24 = *(*(*(a1 + 56) + 8) + 40);
            *buf = 68289794;
            v52 = 0;
            v53 = 2082;
            v54 = &unk_1DF8255EF;
            v55 = 2082;
            v56 = "activity";
            v57 = 2114;
            v58 = v23;
            v59 = 2114;
            v60 = v24;
            _os_log_impl(&dword_1DF7FE000, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Manufacturing service, event:%{public, location:escape_only}s, RequestedServiceName:%{public, location:escape_only}@, EffectiveServiceName:%{public, location:escape_only}@}", buf, 0x30u);
          }

          v25 = *(a1 + 48);
          if (*(*(a1 + 40) + 32))
          {
            v26 = [*(a1 + 48) getTimeCoercibleVariantInstance];

            v43[0] = MEMORY[0x1E69E9820];
            v43[1] = 3221225472;
            v43[2] = sub_1DF821300;
            v43[3] = &unk_1E86C8598;
            v25 = v26;
            v27 = *(a1 + 40);
            v44 = v25;
            v45 = v27;
            [v25 async:v43];
            [*(*(a1 + 40) + 32) addObject:v25];
          }

          v28 = objc_alloc_init(*(a1 + 72));
          v29 = *(*(a1 + 64) + 8);
          v30 = *(v29 + 40);
          *(v29 + 40) = v28;

          v31 = *(*(*(a1 + 64) + 8) + 40);
          if (v31)
          {
            [v31 setSilo:v25];
            [*(*(*(a1 + 64) + 8) + 40) setVendor:*(a1 + 40)];
            v41[0] = MEMORY[0x1E69E9820];
            v41[1] = 3221225472;
            v41[2] = sub_1DF821310;
            v41[3] = &unk_1E86C8718;
            v42 = vextq_s8(*(a1 + 56), *(a1 + 56), 8uLL);
            [v25 async:v41];
            [*(*(a1 + 40) + 8) setObject:*(*(*(a1 + 64) + 8) + 40) forKey:*(a1 + 32)];
            v32 = *(*(*(a1 + 64) + 8) + 40);
            v33 = objc_opt_class();
            sub_1DF804EAC(v33, *(a1 + 32));
          }

          else
          {
            v34 = sub_1DF81E1BC();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
            {
              v35 = *(a1 + 32);
              v36 = *(*(*(a1 + 56) + 8) + 40);
              *buf = 68289538;
              v52 = 0;
              v53 = 2082;
              v54 = &unk_1DF8255EF;
              v55 = 2114;
              v56 = v35;
              v57 = 2114;
              v58 = v36;
              _os_log_impl(&dword_1DF7FE000, v34, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Failed to alloc and init key class for service, RequestedServiceName:%{public, location:escape_only}@, EffectiveServiceName:%{public, location:escape_only}@}", buf, 0x26u);
            }

            v37 = sub_1DF81E1BC();
            if (os_signpost_enabled(v37))
            {
              v38 = *(a1 + 32);
              v39 = *(*(*(a1 + 56) + 8) + 40);
              *buf = 68289538;
              v52 = 0;
              v53 = 2082;
              v54 = &unk_1DF8255EF;
              v55 = 2114;
              v56 = v38;
              v57 = 2114;
              v58 = v39;
              _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v37, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to alloc and init key class for service", "{msg%{public}.0s:Failed to alloc and init key class for service, RequestedServiceName:%{public, location:escape_only}@, EffectiveServiceName:%{public, location:escape_only}@}", buf, 0x26u);
            }
          }

          os_activity_scope_leave(&state);
        }
      }
    }
  }

  else
  {
    if (qword_1ED5FAD40 != -1)
    {
      dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
    }

    v5 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 32);
      v7 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 68289538;
      v52 = 0;
      v53 = 2082;
      v54 = &unk_1DF8255EF;
      v55 = 2114;
      v56 = v6;
      v57 = 2114;
      v58 = v7;
      _os_log_impl(&dword_1DF7FE000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Requested service not isSupported, RequestedServiceName:%{public, location:escape_only}@, EffectiveServiceName:%{public, location:escape_only}@}", buf, 0x26u);
    }

    [*(*(a1 + 40) + 24) addObject:*(a1 + 32)];
  }

  v40 = *MEMORY[0x1E69E9840];
}

void sub_1DF82129C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, os_activity_scope_state_s state)
{
  os_activity_scope_leave(&state);

  _Unwind_Resume(a1);
}

void sub_1DF821310(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  [*(*(*(a1 + 32) + 8) + 40) setValid:1];
  [*(*(*(a1 + 32) + 8) + 40) beginService];
  if (qword_1ED5FAD40 != -1)
  {
    dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
  }

  v2 = qword_1ED5FAD48;
  if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);
    v5[0] = 68289282;
    v5[1] = 0;
    v6 = 2082;
    v7 = &unk_1DF8255EF;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_1DF7FE000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Manufacturing service complete, EffectiveServiceName:%{public, location:escape_only}@}", v5, 0x1Cu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1DF821654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  v28 = v27;

  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1DF821698(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1[6] + 8) + 40);
  v6 = objc_opt_class();
  if (v6)
  {
    v7 = [v6 getSilo];
    v8 = qword_1ED5FADA0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1DF81E634;
    block[3] = &unk_1E86C8638;
    v14 = v7;
    v9 = v7;
    dispatch_barrier_async(v8, block);
  }

  [*(a1[4] + 8) removeObjectForKey:a1[5]];
  v10 = a1[5];
  v11 = *(a1[4] + 24);

  return [v11 addObject:v10];
}

uint64_t sub_1DF82179C(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 40) endService];
  v2 = *(*(*(a1 + 32) + 8) + 40);

  return [v2 setValid:0];
}

void sub_1DF821918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1DF821944(uint64_t a1)
{
  v2 = sub_1DF7FF70C(*(*(a1 + 32) + 16), *(*(a1 + 32) + 40), *(a1 + 40));
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void sub_1DF821A68(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKey:a1[5]];
  *(*(a1[6] + 8) + 24) = v2 != 0;
}

void sub_1DF821C90(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
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