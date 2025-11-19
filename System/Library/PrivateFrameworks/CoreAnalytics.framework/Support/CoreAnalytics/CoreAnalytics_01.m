unsigned __int8 *sub_100011538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *v3;
  v5 = (*v3 + 184);
  if (*v5 || (sub_10007F8D4(*v3, "SELECT transform_value FROM transform_metadata_and_states WHERE (transform_uuid=?1 AND transform_key=?2 AND rollover_session_id=?3) ORDER BY transform_state_id LIMIT 1", 1, v13), v6 = v13[0], v13[0] = 0, sub_10007FC24(v5, v6), sub_10007FC24(v13, 0), *(v4 + 184)))
  {
    v12 = 0xAAAAAAAAAAAAAAAALL;
    sub_100016760(&v12, v5);
    sub_10000BE00(v4, v5, 1, v3[1]);
    memset(__p, 170, sizeof(__p));
    v7 = v3[2];
    sub_100017DF0(__p);
  }

  if (*(v4 + 32))
  {
    v8 = qword_100192D80;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = sqlite3_errmsg(*(v4 + 32));
      sub_100122620(v9, v13);
    }
  }

  else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
  {
    sub_100122658();
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  sub_10000298C(a2);
  return sub_10000298C(a2);
}

void sub_1000117DC(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  sub_10000298C(&v5);
  v3 = *v2;
  *v2 = v5;
  LOBYTE(v5) = v3;
  v4 = *(v2 + 8);
  *(v2 + 8) = v6;
  v6 = v4;
  sub_10000298C(v2);
  sub_10000298C(&v5);
  sub_1000048FC(&v6, v5);
}

void sub_100011894(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10[0] = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  v7 = sub_100006020((a1 + 24));
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100011538;
  v11[3] = &unk_100186FF8;
  v11[4] = a1 + 8;
  v11[5] = v10;
  v12 = objc_retainBlock(v11);
  v8 = v7;
  *a5 = 0xAAAAAAAAAAAAAA00;
  *(a5 + 8) = 0;
  v9 = v8;
  sub_10000298C(a5);
  sub_10000298C(a5);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000117DC;
  block[3] = &unk_1001818D8;
  block[4] = a5;
  block[5] = &v12;
  dispatch_sync(v9, block);
}

void sub_1000119FC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100011A08(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((*(*a1 + 72))(a1))
  {
    *a2 = 0xAAAAAAAAAAAAAAAALL;
    *(a2 + 8) = 0;
    *a2 = 0;
    sub_10000298C(a2);
    sub_10000298C(a2);
    sub_10000459C(__p, "loading single statistic from store");
    __p[6] = 0;
    operator new();
  }

  __assert_rtn("loadSingleStatisticFromStore", "AggregatingTransform.cpp", 140, "initialized()");
}

void sub_100011B4C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_100011B88(void *a1)
{
  v2 = a1[2];
  v3 = *(*(v2 + 40) + 72);
  v4 = sub_100016734(v2);
  (*(*v3 + 72))(&v8, v3, v4, a1[3], v2 + 72);
  v5 = a1[1];
  sub_10000298C(&v8);
  v6 = *v5;
  *v5 = v8;
  LOBYTE(v8) = v6;
  v7 = *(v5 + 8);
  *(v5 + 8) = v9;
  v9 = v7;
  sub_10000298C(v5);
  sub_10000298C(&v8);
  sub_1000048FC(&v9, v8);
}

void sub_100011C7C(IODataQueueEntry *a1)
{
  v2 = 92;
  Typed = CFAllocatorAllocateTyped();
  for (Typed->msgh_size = 92; ; Typed->msgh_size = v2)
  {
    Typed->msgh_bits = 0;
    size = a1[11].size;
    Typed->msgh_remote_port = 0;
    Typed->msgh_local_port = size;
    Typed->msgh_id = 0;
    v5 = mach_msg(Typed, 117440518, 0, v2, size, 0, 0);
    if (v5 != 268451844)
    {
      break;
    }

    v2 = (Typed->msgh_size + 71) & 0xFFFFFFFC;
    Typed = CFAllocatorReallocateTyped();
  }

  if (!v5)
  {
    sub_100011D84(a1);
  }

  CFAllocatorDeallocate(kCFAllocatorSystemDefault, Typed);
}

IODataQueueEntry *sub_100011D84(IODataQueueEntry *result)
{
  v1 = result[9];
  if (v1)
  {
    v2 = result;
    dataSize = -1431655766;
    result = IODataQueuePeek(v1);
    if (result)
    {
      v3 = result;
      do
      {
        size = v3->size;
        v5 = qword_100192DB8;
        if (v3->size)
        {
          if (os_log_type_enabled(qword_100192DB8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109120;
            v10 = size;
            _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[KernelClient] Got data from _queueAddr %u\n", buf, 8u);
          }

          if (v3->data[0] == 1)
          {
            (*(**&v2[39] + 32))(*&v2[39], v3->data, v3->size);
          }
        }

        else if (os_log_type_enabled(qword_100192DB8, OS_LOG_TYPE_ERROR))
        {
          sub_10011DA98(&v7, v8, v5);
        }

        dataSize = 0;
        IODataQueueDequeue(v1, 0, &dataSize);
        result = IODataQueuePeek(v1);
        v3 = result;
      }

      while (result);
    }
  }

  return result;
}

void sub_100011F18()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  memset(__b, 170, sizeof(__b));
  if (v2 < 0x1049)
  {
    memcpy(__b, v4, v2);
    v6[0] = 0xAAAAAAAAAAAAAAAALL;
    v6[1] = 0xAAAAAAAAAAAAAAAALL;
    sub_100006028(v6, (v5 + 8));
    operator new();
  }

  if (os_log_type_enabled(qword_100192D48, OS_LOG_TYPE_ERROR))
  {
    sub_10012461C();
  }
}

void sub_1000120A8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1000120B8(uint64_t *result)
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

void sub_100012114(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 88);
  if (v3)
  {
    v4 = *a2;
    v5 = (*(*v3 + 48))(v3, *a2 + 32, *a2 + 56);
    *(v2 + 8) += v5 - *(v4 + 72);
    *(v4 + 72) = v5;
    operator new();
  }

  sub_10002B200();
}

void sub_1000121E4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 8);
  ++**(a1 + 16);
  ++**(a1 + 24);
  (*(*v3 + 16))(v3, v5);
  if (v4)
  {

    sub_10000786C(v4);
  }
}

void sub_100012280(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000786C(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100012298(uint64_t a1, uint64_t *a2)
{
  v3 = *(*a1 + 24);
  if (!v3)
  {
    sub_10002B200();
  }

  v4 = *a2;
  v5 = *(*v3 + 48);

  return v5();
}

uint64_t sub_1000122FC(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_10002B200();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_10001237C(uint64_t a1, const void **a2, uint64_t a3)
{
  v4[0] = off_1001824D8;
  v4[1] = a1;
  v4[2] = a3;
  v4[3] = v4;
  sub_100012414(a1, a2, v4);
  return sub_10001DB04(v4);
}

void sub_100012400(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001DB04(va);
  _Unwind_Resume(a1);
}

void sub_100012414(uint64_t a1, const void **a2, uint64_t a3)
{
  v5 = sub_1000125DC(a1, a2);
  __p = 0;
  v23 = 0;
  v24 = 0;
  if (v5 != v6)
  {
    v7 = v5;
    v8 = v6;
    do
    {
      v9 = v7;
      v11 = v7 + 1;
      v7 = v7[1];
      v10 = v11[1];
      v12 = *v9;
      *(v12 + 8) = v7;
      *v7 = v12;
      --*(a1 + 168);
      operator delete(v9);
      v13 = v23;
      if (v23 >= v24)
      {
        v15 = (v23 - __p) >> 3;
        if ((v15 + 1) >> 61)
        {
          sub_10002C63C();
        }

        v16 = (v24 - __p) >> 2;
        if (v16 <= v15 + 1)
        {
          v16 = v15 + 1;
        }

        if (v24 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v17 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v16;
        }

        if (v17)
        {
          sub_100003C10(&__p, v17);
        }

        v18 = (8 * v15);
        *v18 = v10;
        v14 = (8 * v15 + 8);
        v19 = v18 - (v23 - __p);
        memcpy(v19, __p, v23 - __p);
        v20 = __p;
        __p = v19;
        v23 = v14;
        v24 = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v23 = v10;
        v14 = v13 + 1;
      }

      v23 = v14;
    }

    while (v7 != v8);
    v21 = __p;
    if (__p != v14)
    {
      do
      {
        sub_1000122FC(a3, *v21++);
      }

      while (v21 != v14);
      v21 = __p;
    }

    if (v21)
    {
      v23 = v21;
      operator delete(v21);
    }
  }
}

void sub_1000125B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000125DC(uint64_t a1, const void **a2)
{
  v3 = a1 + 152;
  v4 = *(a1 + 160);
  if (v4 != a1 + 152)
  {
    v5 = *(a2 + 23);
    if (v5 >= 0)
    {
      v6 = *(a2 + 23);
    }

    else
    {
      v6 = a2[1];
    }

    if (v5 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    while (1)
    {
      v8 = *(v4 + 16);
      v9 = *(v8 + 55);
      v10 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(v8 + 40);
      }

      if (v9 == v6)
      {
        v13 = *(v8 + 32);
        v11 = v8 + 32;
        v12 = v13;
        v14 = (v10 >= 0 ? v11 : v12);
        if (!memcmp(v14, v7, v6))
        {
          break;
        }
      }

      v4 = *(v4 + 8);
      if (v4 == v3)
      {
        return v3;
      }
    }
  }

  if (v4 != v3)
  {
    v15 = *(a2 + 23);
    if (v15 >= 0)
    {
      v16 = *(a2 + 23);
    }

    else
    {
      v16 = a2[1];
    }

    if (v15 >= 0)
    {
      v17 = a2;
    }

    else
    {
      v17 = *a2;
    }

    v18 = v4;
    do
    {
      v19 = *(v18 + 16);
      v20 = *(v19 + 55);
      v21 = v20;
      if ((v20 & 0x80u) != 0)
      {
        v20 = *(v19 + 40);
      }

      if (v20 != v16)
      {
        break;
      }

      v24 = *(v19 + 32);
      v22 = v19 + 32;
      v23 = v24;
      v25 = (v21 >= 0 ? v22 : v23);
      if (memcmp(v25, v17, v16))
      {
        break;
      }

      v18 = *(v18 + 8);
    }

    while (v18 != v3);
  }

  return v4;
}

uint64_t sub_10001270C(uint64_t a1)
{
  sub_10000AC58(a1);
  v3 = (a1 + 16);
  v2 = *(a1 + 16);
  if ((v2 - 49) >= 9)
  {
    if (v2 == 48)
    {
      std::string::push_back((a1 + 72), 48);
      v5 = 5;
    }

    else
    {
      if (v2 != 45)
      {
        sub_10011B324();
      }

      v4 = (a1 + 72);
      std::string::push_back((a1 + 72), 45);
      v16 = sub_100003460(a1);
      if ((v16 - 49) < 9)
      {
        v2 = *v3;
        v5 = 6;
        goto LABEL_3;
      }

      if (v16 != 48)
      {
        v19 = "invalid number; expected digit after '-'";
        goto LABEL_55;
      }

      std::string::push_back((a1 + 72), *v3);
      v5 = 6;
    }

    v17 = sub_100003460(a1);
    if (v17 == 101 || v17 == 69)
    {
      v6 = (a1 + 72);
      goto LABEL_42;
    }

    if (v17 != 46)
    {
      goto LABEL_9;
    }

    v6 = (a1 + 72);
    goto LABEL_34;
  }

  v4 = (a1 + 72);
  v5 = 5;
LABEL_3:
  std::string::push_back(v4, v2);
  v6 = (a1 + 72);
  while (1)
  {
    v7 = sub_100003460(a1);
    if ((v7 - 48) >= 0xA)
    {
      break;
    }

    std::string::push_back((a1 + 72), *v3);
  }

  if (v7 != 46)
  {
    if (v7 != 69 && v7 != 101)
    {
LABEL_9:
      sub_100004894(a1);
      v25 = 0;
      *__error() = 0;
      v8 = (a1 + 72);
      v9 = *(a1 + 95);
      v10 = (a1 + 72);
      if (v5 == 5)
      {
        if (v9 < 0)
        {
          v10 = *v8;
        }

        v11 = strtoull(v10, &v25, 10);
        v12 = *(a1 + 95);
        if (v12 < 0)
        {
          v8 = *(a1 + 72);
          v12 = *(a1 + 80);
        }

        if (v25 != v8 + v12)
        {
          sub_10011B2CC();
        }

        if (!*__error())
        {
          result = 5;
          v14 = 112;
LABEL_24:
          *(a1 + v14) = v11;
          return result;
        }
      }

      else
      {
        if (v9 < 0)
        {
          v10 = *v8;
        }

        v11 = strtoll(v10, &v25, 10);
        v15 = *(a1 + 95);
        if (v15 < 0)
        {
          v8 = *(a1 + 72);
          v15 = *(a1 + 80);
        }

        if (v25 != v8 + v15)
        {
          sub_10011B2A0();
        }

        if (!*__error())
        {
          result = 6;
          v14 = 104;
          goto LABEL_24;
        }
      }

      goto LABEL_46;
    }

    goto LABEL_42;
  }

LABEL_34:
  std::string::push_back(v6, *(a1 + 128));
  if (sub_100003460(a1) - 48 > 9)
  {
    v19 = "invalid number; expected digit after '.'";
    goto LABEL_55;
  }

  v6 = (a1 + 72);
  do
  {
    std::string::push_back((a1 + 72), *(a1 + 16));
    v18 = sub_100003460(a1);
  }

  while ((v18 - 48) < 0xA);
  if (v18 != 101 && v18 != 69)
  {
    goto LABEL_45;
  }

LABEL_42:
  std::string::push_back(v6, *(a1 + 16));
  v20 = sub_100003460(a1);
  if ((v20 - 48) >= 0xA)
  {
    if (v20 == 45 || v20 == 43)
    {
      v21 = (a1 + 72);
      std::string::push_back((a1 + 72), *(a1 + 16));
      if (sub_100003460(a1) - 48 < 0xA)
      {
        goto LABEL_44;
      }

      v19 = "invalid number; expected digit after exponent sign";
    }

    else
    {
      v19 = "invalid number; expected '+', '-', or digit after exponent";
    }

LABEL_55:
    *(a1 + 96) = v19;
    return 14;
  }

  v21 = (a1 + 72);
LABEL_44:
  sub_10002B07C(a1, (a1 + 16), v21);
LABEL_45:
  sub_100004894(a1);
  v25 = 0;
  *__error() = 0;
LABEL_46:
  v22 = (a1 + 72);
  v23 = (a1 + 72);
  if (*(a1 + 95) < 0)
  {
    v23 = *v22;
  }

  *(a1 + 120) = strtod(v23, &v25);
  v24 = *(a1 + 95);
  if (v24 < 0)
  {
    v22 = *(a1 + 72);
    v24 = *(a1 + 80);
  }

  if (v25 != v22 + v24)
  {
    sub_10011B2F8();
  }

  return 7;
}

void sub_100012A98(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100012AA4(uint64_t a1, uint64_t *a2)
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

void sub_100012BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000BC60(va);
  _Unwind_Resume(a1);
}

unsigned __int8 **sub_100012BFC(unsigned __int8 **result)
{
  if (!*result)
  {
    sub_1000173B8();
  }

  v1 = **result;
  if (v1 == 2)
  {
    result[2] += 16;
  }

  else if (v1 == 1)
  {
    v2 = result[1];
    v3 = *(v2 + 1);
    if (v3)
    {
      do
      {
        v4 = v3;
        v3 = *v3;
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

      while (!v5);
    }

    result[1] = v4;
  }

  else
  {
    ++result[4];
  }

  return result;
}

BOOL sub_100012C84(_DWORD *a1)
{
  if ((*(*a1 + 72))(a1))
  {
    return a1[31] >= a1[30];
  }

  v3 = qword_100192D68;
  result = os_log_type_enabled(qword_100192D68, OS_LOG_TYPE_FAULT);
  if (result)
  {
    sub_100125ED0(a1, v3);
    return 0;
  }

  return result;
}

void sub_100012D18(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((*(v1 + 184) & 1) == 0)
  {
    memset(v2, 0, sizeof(v2));
    sub_100016B00(v1 + 160, v2);
    v3 = v2;
    sub_100016A70(&v3);
  }
}

void sub_100012D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  sub_100016A70(&a13);
  _Unwind_Resume(a1);
}

void sub_100012DB4(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v23[0] = "expression";
  v29 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27 = v8;
  v28 = v8;
  sub_10000BD10(a2, v23, &v27);
  v24 = a2;
  v25 = 0uLL;
  v26 = 0x8000000000000000;
  sub_10000DCFC(&v24);
  if (sub_10000DD7C(&v27, &v24))
  {
    v9 = sub_100016CD8();
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v9 = sub_10000DB44(&v27);
  }

  if (*v9 == 2)
  {
    sub_100014BE0(*(*(a1 + 40) + 24), a3, v9, a4);
    return;
  }

LABEL_7:
  v23[0] = "field";
  v29 = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27 = v10;
  v28 = v10;
  sub_10000BD10(a2, v23, &v27);
  v24 = a2;
  v25 = 0uLL;
  v26 = 0x8000000000000000;
  sub_10000DCFC(&v24);
  if (sub_10000DD7C(&v27, &v24))
  {
    v11 = sub_100016CD8();
    if (!v11)
    {
LABEL_15:
      v23[0] = "name";
      v29 = 0xAAAAAAAAAAAAAAAALL;
      *&v16 = 0xAAAAAAAAAAAAAAAALL;
      *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v27 = v16;
      v28 = v16;
      sub_10000BD10(a2, v23, &v27);
      v24 = a2;
      v25 = 0uLL;
      v26 = 0x8000000000000000;
      sub_10000DCFC(&v24);
      if (sub_10000DD7C(&v27, &v24))
      {
        v17 = sub_100016CD8();
        if (!v17)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v17 = sub_10000DB44(&v27);
      }

      if (*v17 != 3)
      {
        goto LABEL_22;
      }

      v18 = *(v17 + 8);
      if (!v18)
      {
        goto LABEL_22;
      }

      v29 = 0xAAAAAAAAAAAAAAAALL;
      *&v19 = 0xAAAAAAAAAAAAAAAALL;
      *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v27 = v19;
      v28 = v19;
      sub_1000173FC(*a3 + 40, v18, &v27);
      v20 = *a3;
      *&v21 = 0xAAAAAAAAAAAAAAAALL;
      *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v24 = v21;
      v25 = v21;
      v26 = 0xAAAAAAAAAAAAAAAALL;
      sub_100016ED8(&v24, v20 + 40);
      sub_1000137F8(&v24);
      if (sub_100013878(&v27, &v24))
      {
        goto LABEL_22;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v11 = sub_10000DB44(&v27);
  }

  if (*v11 != 3)
  {
    goto LABEL_15;
  }

  v12 = *(v11 + 8);
  if (!v12)
  {
    goto LABEL_15;
  }

  v29 = 0xAAAAAAAAAAAAAAAALL;
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27 = v13;
  v28 = v13;
  sub_1000173FC(*a3 + 40, v12, &v27);
  v14 = *a3;
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24 = v15;
  v25 = v15;
  v26 = 0xAAAAAAAAAAAAAAAALL;
  sub_100016ED8(&v24, v14 + 40);
  sub_1000137F8(&v24);
  if (sub_100013878(&v27, &v24))
  {
LABEL_22:
    *a4 = 0;
    *(a4 + 8) = 0;
    sub_10000298C(a4);
    sub_10000298C(a4);
    return;
  }

LABEL_23:
  v22 = sub_10001CF44(&v27);
  sub_10000FF70(a4, v22);
}

void sub_1000130A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      sub_10000459C(&a25, "ExpressionError");
      sub_10000459C(&a10, "name");
      sub_10000F13C("<unknown>", v31, &a10, &__p);
      sub_1000C7E1C(v32, &a25, &__p, v30);
    }

    sub_10000459C(&a25, "ExpressionError");
    sub_10000459C(&a10, "name");
    sub_10000F13C("<unknown>", v31, &a10, &__p);
    sub_1000C8288(v32, &a25, &__p, v30);
  }

  _Unwind_Resume(a1);
}

void sub_1000131AC(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      sub_10000786C(v4);
    }
  }

  a1[1] = v2;
}

void sub_1000131F8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1000131AC(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

unsigned __int8 *sub_10001324C@<X0>(unsigned __int8 *a1@<X0>, const void **a2@<X1>, unsigned __int8 *a3@<X2>, unsigned __int8 *a4@<X8>)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v11 = sub_10002CB3C(a1);
    sub_10000459C(v14, v11);
    v12 = std::string::insert(v14, 0, "cannot use value() with ");
    v13 = *&v12->__r_.__value_.__l.__data_;
    *&v17 = *(&v12->__r_.__value_.__l + 2);
    v16 = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    sub_10002C9C4(306, &v16, exception);
  }

  v18 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v16 = v7;
  v17 = v7;
  sub_10000F1F4(a1, a2, &v16);
  v15 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14[0] = v8;
  v14[1] = v8;
  sub_10000DEC4(v14, a1);
  sub_10000DCFC(v14);
  if (!sub_10000DD7C(&v16, v14))
  {
    a3 = sub_10000DB44(&v16);
  }

  return sub_10000FF70(a4, a3);
}

std::string *sub_100013410(uint64_t a1, std::string *this)
{
  if (*a1 != 3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v8 = sub_10002CB3C(a1);
    sub_10000459C(&v11, v8);
    v9 = std::string::insert(&v11, 0, "type must be string, but is ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v13 = v9->__r_.__value_.__r.__words[2];
    v12 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    sub_10002C9C4(302, &v12, exception);
  }

  v3 = *(a1 + 8);
  v5 = *(a1 + 8);

  return std::string::operator=(this, v5);
}

void sub_10001351C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

unint64_t sub_10001357C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return sub_1000135F0(&v5, a2, v3);
}

void sub_1000135E4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

unint64_t sub_1000135F0(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return sub_100026250(a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return sub_10001C6FC(a2, a3);
  }

  else
  {
    return sub_100014E9C(a2, a3);
  }
}

unsigned __int8 **sub_1000137F8(unsigned __int8 **result)
{
  v1 = *result;
  if (!*result)
  {
    __assert_rtn("set_end", "iter_impl.hpp", 211, "m_object != nullptr");
  }

  v2 = *v1;
  if (v2 == 2)
  {
    result[2] = *(*(v1 + 1) + 8);
  }

  else if (v2 == 1)
  {
    result[1] = (*(v1 + 1) + 8);
  }

  else
  {
    result[4] = 1;
  }

  return result;
}

BOOL sub_100013878(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v2 = *a1;
  if (*a1 != *a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_10000459C(v8, "cannot compare iterators of different containers");
    sub_10002E87C(212, v8, exception);
  }

  if (!v2)
  {
    sub_10011A900();
  }

  v3 = *v2;
  if (v3 == 2)
  {
    v4 = a1[2];
    v5 = a2[2];
  }

  else if (v3 == 1)
  {
    v4 = a1[1];
    v5 = a2[1];
  }

  else
  {
    v4 = a1[4];
    v5 = a2[4];
  }

  return v4 == v5;
}

void sub_100013980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
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

uint64_t sub_1000139C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return sub_1000143CC(a1, a2);
}

uint64_t sub_100013AA8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100014894(result, a4);
  }

  return result;
}

void sub_100013B40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v2 + 8) = v3;
  sub_100004E54(va);
  _Unwind_Resume(a1);
}

void **sub_100013B60(void **result, __int128 *a2)
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
      sub_10002C63C();
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
      sub_10000BED4(result, v11);
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
    result = sub_10000BF70(v18);
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

void sub_100013CA0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a3)
  {
    v9 = 32 * a3;
    v10 = (a2 + 16);
    while (1)
    {
      v11 = *v10;
      if (**v10 != 2 || *(*(v11 + 1) + 8) - **(v11 + 1) != 32 || *sub_1000239C8(v11, 0) != 3)
      {
        break;
      }

      v10 += 4;
      v9 -= 32;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    v12 = 0;
    if ((a4 & 1) == 0)
    {
LABEL_11:
      if (a5 == 2)
      {
        v13 = 0;
      }

      else
      {
        v13 = v12;
      }

      if (a5 != 1)
      {
        LOBYTE(v12) = 1;
      }

      if ((v12 & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        sub_10000459C(&v15, "cannot create object from initializer list");
        sub_10002C9C4(301, &v15, exception);
      }

      if (!v13)
      {
LABEL_18:
        *a1 = 2;
        v15 = a2;
        sub_100013F70();
      }

LABEL_9:
      *a1 = 1;
      operator new();
    }
  }

  else
  {
LABEL_7:
    v12 = 1;
    if ((a4 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (!v12)
  {
    goto LABEL_18;
  }

  goto LABEL_9;
}

uint64_t sub_100013F0C(uint64_t result, unsigned __int8 *a2)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4 != a2)
  {
    v5 = v4 - 16;
    v6 = v4 - 16;
    do
    {
      sub_10000298C(v5);
      v7 = *v6;
      v6 -= 16;
      result = sub_1000048FC(v5 + 8, v7);
      v8 = v5 == a2;
      v5 = v6;
    }

    while (!v8);
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t sub_100013FEC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100014894(result, a4);
  }

  return result;
}

void sub_100014084(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v2 + 8) = v3;
  sub_100004E54(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000140A4(uint64_t a1, _BYTE *a2, __int128 *a3)
{
  if (*a2 == 2)
  {
    *&v15[32] = 0xAAAAAAAAAAAAAAAALL;
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v15 = v6;
    *&v15[16] = v6;
    sub_10000DEC4(v15, a2);
    sub_10000DF14(v15);
    *&v14[32] = 0xAAAAAAAAAAAAAAAALL;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v14 = v7;
    *&v14[16] = v7;
    sub_10000DEC4(v14, a2);
    sub_10000DCFC(v14);
    v19 = *v15;
    v20 = *&v15[8];
    v21 = *&v15[24];
    v16 = *v14;
    v17 = *&v14[8];
    v18 = *&v14[24];
    while (!sub_10000DD7C(&v19, &v16))
    {
      v8 = sub_10000DB44(&v19);
      v25 = "ignoreIf";
      v24 = 0xAAAAAAAAAAAAAAAALL;
      *&v9 = 0xAAAAAAAAAAAAAAAALL;
      *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v23[0] = v9;
      v23[1] = v9;
      sub_10000BD10(v8, &v25, v23);
      memset(&v22[1], 0, 24);
      v22[0] = v8;
      v22[4] = 0x8000000000000000;
      sub_10000DCFC(v22);
      if (sub_10000DD7C(v23, v22))
      {
        v10 = sub_100016CD8();
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v10 = sub_10000DB44(v23);
      }

      if (*v10 == 2)
      {
        *&v23[0] = 0xAAAAAAAAAAAAAAAALL;
        *(&v23[0] + 1) = 0xAAAAAAAAAAAAAAAALL;
        sub_100014BE0(*(*(a1 + 40) + 24), a3, v10, v23);
        v11 = 1;
        v12 = sub_1000C9A8C(v23, 1u);
        sub_10000298C(v23);
        sub_1000048FC(v23 + 1, LOBYTE(v23[0]));
        if (v12)
        {
          return v11;
        }
      }

LABEL_9:
      sub_100012BFC(&v19);
    }
  }

  return 0;
}

void sub_1000142A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      sub_10000459C((v37 - 144), "IgnoreIfError");
      sub_10000459C(&__p, "ignoreIf");
      sub_1000C7E1C(v36, (v37 - 144), &__p, v35);
    }

    sub_10000459C((v37 - 144), "IgnoreIfError");
    sub_10000459C(&__p, "ignoreIf");
    sub_1000C8288(v36, (v37 - 144), &__p, v35);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000143CC(uint64_t result, uint64_t *a2)
{
  v2 = result;
  if (*result != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v9 = sub_10002CB3C(v2);
    sub_10000459C(&v12, v9);
    v10 = std::string::insert(&v12, 0, "type must be array, but is ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v14 = v10->__r_.__value_.__r.__words[2];
    v13 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    sub_10002C9C4(302, &v13, exception);
  }

  v3 = *(result + 8);
  if (v3 != a2)
  {
    v4 = v3[1];
    v5 = &v4[-*v3] >> 4;
    v7 = *v3;

    return sub_100014748(a2, v7, v4, v5);
  }

  return result;
}

void sub_100014518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_100014578(uint64_t a1)
{
  if (*a1)
  {
    sub_100013F0C(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

const void *sub_1000145B8(void *a1, uint64_t *a2, const void **a3)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  v5[0] = 0xAAAAAAAAAAAAAAAALL;
  result = *sub_100017504(a1, a2, v5, &v4, a3);
  if (!result)
  {
    memset(&v5[1], 170, 24);
    sub_100014928();
  }

  return result;
}

uint64_t sub_100014674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v8 = a4;
  v9 = a4;
  v10[0] = a1;
  v10[1] = &v8;
  v10[2] = &v9;
  v11 = 0xAAAAAAAAAAAAAA00;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_10000FF70(v4, v6);
      v6 += 16;
      v4 = v9 + 16;
      v9 += 16;
    }

    while (v6 != a3);
  }

  LOBYTE(v11) = 1;
  sub_10000BCC4(v10);
  return v4;
}

void sub_100014734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10000BCC4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100014748(uint64_t *a1, unsigned __int8 *a2, unsigned __int8 *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    sub_100014578(a1);
    if (!(a4 >> 60))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 3;
      if (v9 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_100014894(a1, v11);
    }

    sub_10002C63C();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 4)
  {
    sub_100014B04(&v16, a2, a3, v8);
    return sub_100013F0C(a1, v14);
  }

  else
  {
    sub_100014B04(&v15, a2, &a2[v12], v8);
    result = sub_100014674(a1, &a2[v12], a3, a1[1]);
    a1[1] = result;
  }

  return result;
}

void sub_100014894(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_10000BC18(a1, a2);
  }

  sub_10002C63C();
}

void *sub_1000148D0(void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100016DD4(a1, *a2, a2 + 1);
  return a1;
}

void sub_1000149A0(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100030F3C(v3, v2);
  _Unwind_Resume(a1);
}

void sub_100014AD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10002C628(exception_object);
}

unsigned __int8 *sub_100014B04(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      sub_10000FF70(v10, v5);
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

void sub_100014BE0(void **a1@<X0>, __int128 *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = 0uLL;
  v8 = 0;
  sub_100013B60(&v7, a2);
  sub_1000171B8(a1, &v7, a3, a4);
  v9 = &v7;
  sub_1000131F8(&v9);
}

void sub_100014C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000131F8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100014C9C(void **a1, uint64_t a2, unsigned __int8 *a3)
{
  if (*a3 != 3)
  {
    goto LABEL_12;
  }

  v6 = sub_100016B80(a3);
  if (*(v6 + 23) < 0)
  {
    if (!*(v6 + 8))
    {
      goto LABEL_12;
    }

    v7 = *v6;
  }

  else
  {
    v7 = v6;
    if (!*(v6 + 23))
    {
      goto LABEL_12;
    }
  }

  if (*v7 != 58 || (v8 = sub_100014DA0(*a1, v6)) == 0)
  {
LABEL_12:
    v11 = *(a2 + 32);
    if (v11 >= *(a2 + 40))
    {
      result = sub_100016F28(a2 + 24, a3);
    }

    else
    {
      sub_10000FF70(*(a2 + 32), a3);
      result = v11 + 16;
      *(a2 + 32) = v11 + 16;
    }

    *(a2 + 32) = result;
    return result;
  }

  v9 = *(*v8[5] + 16);

  return v9();
}

const void **sub_100014DA0(void *a1, const void **a2)
{
  v4 = sub_10001357C(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (sub_10001706C(a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

unint64_t sub_100014E9C(_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

uint64_t sub_100014F94(unsigned __int8 *a1, unsigned __int8 *a2, std::string *this)
{
  v3 = a1[23];
  v4 = *a1;
  if (v3 >= 0)
  {
    v4 = a1;
  }

  if (v3 < 0)
  {
    v3 = *(a1 + 1);
  }

  v5 = a2[23];
  v6 = *a2;
  if (v5 >= 0)
  {
    v6 = a2;
  }

  if (v5 < 0)
  {
    v5 = *(a2 + 1);
  }

  if (v3)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v9 = v5 - 1;
    v10 = v3 - 1;
    v11 = v6;
    v12 = v4;
    while (*v12 == *v11)
    {
      ++v11;
      if (v10)
      {
        ++v12;
        v13 = v9--;
        --v10;
        if (v13)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    return 0;
  }

  v11 = v6;
LABEL_15:
  if (v11 != &v6[v5])
  {
    return 0;
  }

  if (v3 != v5)
  {
    v14 = &v4[v5];
    if (*v14 != 46)
    {
      return 0;
    }

    sub_10006B17C(this, v14 + 1, &v4[v3], &v4[v3] - (v14 + 1));
  }

  return 1;
}

uint64_t sub_100015070(uint64_t a1)
{
  v1 = (a1 + 56);
  v14 = "budget";
  v13 = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11 = v2;
  v12 = v2;
  sub_10000BD10(a1 + 56, &v14, &v11);
  v6 = v1;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0x8000000000000000;
  sub_10000DCFC(&v6);
  if (sub_10000DD7C(&v11, &v6))
  {
    v3 = sub_100016CD8();
    if (!v3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v3 = sub_10000DB44(&v11);
  }

  if (*v3 - 5 < 3)
  {
    goto LABEL_11;
  }

LABEL_6:
  v14 = "storage_budget";
  v13 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11 = v4;
  v12 = v4;
  sub_10000BD10(v1, &v14, &v11);
  v6 = v1;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0x8000000000000000;
  sub_10000DCFC(&v6);
  if (sub_10000DD7C(&v11, &v6))
  {
    v3 = sub_100016CD8();
    if (!v3)
    {
      return sub_1000161A4();
    }
  }

  else
  {
    v3 = sub_10000DB44(&v11);
  }

  if (*v3 - 5 <= 2)
  {
LABEL_11:
    LODWORD(v11) = -1431655766;
    sub_100029A4C(v3, &v11);
    return v11;
  }

  return sub_1000161A4();
}

void sub_1000151D0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

BOOL sub_1000151DC(uint64_t a1)
{
  v2 = (a1 + 56);
  v18 = "inputs";
  v17 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15 = v3;
  v16 = v3;
  sub_10000BD10(a1 + 56, &v18, &v15);
  v10 = v2;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0x8000000000000000;
  sub_10000DCFC(&v10);
  if (!sub_10000DD7C(&v15, &v10))
  {
    v4 = sub_10000DB44(&v15);
LABEL_5:
    if (*v4 == 2)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v4 = sub_100016CD8();
  if (v4)
  {
    goto LABEL_5;
  }

LABEL_6:
  v4 = 0;
LABEL_7:
  *(a1 + 24) = v4;
  v18 = "outputs";
  v17 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15 = v5;
  v16 = v5;
  sub_10000BD10(v2, &v18, &v15);
  v10 = v2;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0x8000000000000000;
  sub_10000DCFC(&v10);
  if (!sub_10000DD7C(&v15, &v10))
  {
    v6 = sub_10000DB44(&v15);
LABEL_11:
    if (*v6 == 2)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v6 = sub_100016CD8();
  if (v6)
  {
    goto LABEL_11;
  }

LABEL_12:
  v6 = 0;
LABEL_13:
  *(a1 + 32) = v6;
  v7 = *(a1 + 24);
  if (!v7)
  {
    return 0;
  }

  v8 = 0;
  if (v6 && *v7 == 2)
  {
    return *v6 == 2;
  }

  return v8;
}

void sub_100015360(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

BOOL sub_10001536C(void *a1)
{
  result = sub_1000151DC(a1);
  if (!result)
  {
    return result;
  }

  v30 = "dimensions";
  v29 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27 = v3;
  v28 = v3;
  sub_10000BD10((a1 + 7), &v30, &v27);
  v24 = (a1 + 7);
  v25 = 0uLL;
  v26 = 0x8000000000000000;
  sub_10000DCFC(&v24);
  if (sub_10000DD7C(&v27, &v24))
  {
    v4 = sub_100016CD8();
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v4 = sub_10000DB44(&v27);
  }

  if (*v4 != 2)
  {
LABEL_7:
    v4 = 0;
  }

  a1[18] = v4;
  v30 = "measures";
  v29 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27 = v5;
  v28 = v5;
  sub_10000BD10((a1 + 7), &v30, &v27);
  v24 = (a1 + 7);
  v25 = 0uLL;
  v26 = 0x8000000000000000;
  sub_10000DCFC(&v24);
  if (sub_10000DD7C(&v27, &v24))
  {
    v6 = sub_100016CD8();
    if (!v6)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v6 = sub_10000DB44(&v27);
  }

  if (*v6 != 2)
  {
LABEL_29:
    result = 0;
    a1[19] = 0;
    return result;
  }

  a1[19] = v6;
  if (!a1[18])
  {
    return 0;
  }

  v27 = v6;
  v28 = 0uLL;
  v29 = 0x8000000000000000;
  sub_10000DF14(&v27);
  v7 = a1[19];
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24 = v8;
  v25 = v8;
  v26 = 0xAAAAAAAAAAAAAAAALL;
  sub_10000DEC4(&v24, v7);
  sub_10000DCFC(&v24);
  while (!sub_10000DD7C(&v27, &v24))
  {
    v9 = sub_10000DB44(&v27);
    v10 = sub_100015634(v9);
    v12 = a1[25];
    v11 = a1[26];
    if (v12 >= v11)
    {
      v14 = a1[24];
      v15 = v12 - v14;
      v16 = (v12 - v14) >> 2;
      v17 = v16 + 1;
      if ((v16 + 1) >> 62)
      {
        sub_10002C63C();
      }

      v18 = v11 - v14;
      if (v18 >> 1 > v17)
      {
        v17 = v18 >> 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v19 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        sub_1000161DC((a1 + 24), v19);
      }

      v20 = (v12 - v14) >> 2;
      v21 = (4 * v16);
      v22 = (4 * v16 - 4 * v20);
      *v21 = v10;
      v13 = v21 + 1;
      memcpy(v22, v14, v15);
      v23 = a1[24];
      a1[24] = v22;
      a1[25] = v13;
      a1[26] = 0;
      if (v23)
      {
        operator delete(v23);
      }
    }

    else
    {
      *v12 = v10;
      v13 = v12 + 4;
    }

    a1[25] = v13;
    sub_100012BFC(&v27);
  }

  return 1;
}

void sub_10001561C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100015634(unsigned __int8 *a1)
{
  v46 = "function";
  v45 = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v43 = v2;
  v44 = v2;
  sub_10000BD10(a1, &v46, &v43);
  v38 = a1;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0x8000000000000000;
  sub_10000DCFC(&v38);
  if (sub_10000DD7C(&v43, &v38))
  {
    v3 = sub_100016CD8();
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v3 = sub_10000DB44(&v43);
  }

  if (*v3 == 3)
  {
    v4 = *(v3 + 8);
    goto LABEL_8;
  }

LABEL_7:
  v4 = 0;
LABEL_8:
  v46 = "type";
  v45 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v43 = v5;
  v44 = v5;
  sub_10000BD10(a1, &v46, &v43);
  v38 = a1;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0x8000000000000000;
  sub_10000DCFC(&v38);
  if (sub_10000DD7C(&v43, &v38))
  {
    v6 = sub_100016CD8();
    if (!v6)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v6 = sub_10000DB44(&v43);
  }

  if (*v6 == 3)
  {
    v7 = *(v6 + 8);
    if (v4)
    {
      goto LABEL_16;
    }

    return 0;
  }

LABEL_15:
  v7 = 0;
  if (!v4)
  {
    return 0;
  }

LABEL_16:
  v9 = *(v4 + 23);
  if ((*(v4 + 23) & 0x80000000) == 0)
  {
    if (v9 != 3)
    {
      if (v9 == 5)
      {
        v10 = *v4 == 1853189987 && *(v4 + 4) == 116;
        v11 = v4;
        if (!v10)
        {
LABEL_59:
          v18 = *v11;
          v19 = *(v11 + 4);
          if (v18 == 1936877926 && v19 == 116)
          {
            return 8;
          }

          goto LABEL_63;
        }

        return 1;
      }

LABEL_63:
      if (sub_100026CC4(v4, "last"))
      {
        return 9;
      }

      else
      {
        return 0;
      }
    }

    if (*v4 != 30067 || *(v4 + 2) != 109)
    {
      if (*v4 != 26989 || *(v4 + 2) != 110)
      {
        if (*v4 != 24941 || *(v4 + 2) != 120)
        {
          goto LABEL_63;
        }

        goto LABEL_93;
      }

LABEL_70:
      v22 = *(v7 + 23);
      if (v22 < 0)
      {
        if (*(v7 + 1) != 5)
        {
          return 3;
        }

        v7 = *v7;
      }

      else if (v22 != 5)
      {
        return 3;
      }

      v30 = bswap64(*v7 | (*(v7 + 4) << 32));
      v24 = v30 >= 0x666C6F6174000000;
      v31 = v30 > 0x666C6F6174000000;
      v32 = !v24;
      v27 = v31 == v32;
      v28 = 3;
      v29 = 6;
      goto LABEL_102;
    }

LABEL_67:
    v21 = *(v7 + 23);
    if (v21 < 0)
    {
      if (*(v7 + 1) != 5)
      {
        return 2;
      }

      v7 = *v7;
    }

    else if (v21 != 5)
    {
      return 2;
    }

    v23 = bswap64(*v7 | (*(v7 + 4) << 32));
    v24 = v23 >= 0x666C6F6174000000;
    v25 = v23 > 0x666C6F6174000000;
    v26 = !v24;
    v27 = v25 == v26;
    v28 = 2;
    v29 = 5;
    goto LABEL_102;
  }

  if (v4[1] == 5 && **v4 == 1853189987 && *(*v4 + 4) == 116)
  {
    return 1;
  }

  if (v4[1] == 3 && **v4 == 30067 && *(*v4 + 2) == 109)
  {
    goto LABEL_67;
  }

  if (v4[1] == 3 && **v4 == 26989 && *(*v4 + 2) == 110)
  {
    goto LABEL_70;
  }

  if (v4[1] != 3)
  {
LABEL_57:
    if (v4[1] == 5)
    {
      v11 = *v4;
      goto LABEL_59;
    }

    goto LABEL_63;
  }

  if (**v4 != 24941 || *(*v4 + 2) != 120)
  {
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_57;
  }

LABEL_93:
  v34 = *(v7 + 23);
  if (v34 < 0)
  {
    if (*(v7 + 1) != 5)
    {
      return 4;
    }

    v7 = *v7;
  }

  else if (v34 != 5)
  {
    return 4;
  }

  v35 = bswap64(*v7 | (*(v7 + 4) << 32));
  v24 = v35 >= 0x666C6F6174000000;
  v36 = v35 > 0x666C6F6174000000;
  v37 = !v24;
  v27 = v36 == v37;
  v28 = 4;
  v29 = 7;
LABEL_102:
  if (v27)
  {
    return v29;
  }

  else
  {
    return v28;
  }
}

uint64_t sub_100015A90(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_100015C48(uint64_t a1, uint64_t a2, __int128 *a3, void *a4, uint64_t a5, double a6)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_100188210;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  if (*a5 == 1)
  {
    *(a1 + 56) = 1;
    *(a1 + 64) = *(a5 + 8);
    sub_10000298C(a5);
    *a5 = 0;
    *(a5 + 8) = 0;
  }

  else
  {
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    sub_10000298C((a1 + 56));
  }

  sub_10000298C((a1 + 56));
  if (*(a3 + 23) < 0)
  {
    sub_1000078D8((a1 + 72), *a3, *(a3 + 1));
  }

  else
  {
    v11 = *a3;
    *(a1 + 88) = *(a3 + 2);
    *(a1 + 72) = v11;
  }

  *(a1 + 96) = a6;
  *(a1 + 104) = sub_100015E24(a1);
  *(a1 + 112) = *a4;
  *(a1 + 120) = sub_100015070(a1);
  *(a1 + 124) = 0;
  *(a1 + 128) = 0;
  *(a1 + 132) = 0;
  *(a1 + 136) = 0;
  return a1;
}

void sub_100015D5C(_Unwind_Exception *a1)
{
  sub_10002C5F4((v1 + 56));
  v3 = *(v1 + 48);
  if (v3)
  {
    sub_10000786C(v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100015D88(uint64_t a1, uint64_t a2, __int128 *a3, double *a4, void *a5, uint64_t a6)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_100189000;
  sub_100015C48(a1 + 24, a2, a3, a5, a6, *a4);
  *(a1 + 24) = off_100188F78;
  *(a1 + 208) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  return a1;
}

uint64_t sub_100015E24(uint64_t a1)
{
  sub_100015F0C(a1 + 56, "aggPeriod", &__p);
  v7 = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v6[0] = v2;
  v6[1] = v2;
  sub_10000DEC4(v6, a1 + 56);
  sub_10000DCFC(v6);
  if (sub_10000DD7C(&__p, v6))
  {
    return 0;
  }

  v4 = sub_10000DFA0(a1 + 56, "aggPeriod");
  sub_100010390(v4, &__p);
  v3 = sub_100015FF8(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v3;
}

void sub_100015F00(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_100015F0C@<X0>(uint64_t a1@<X0>, std::string::value_type *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *a3 = v6;
  *(a3 + 16) = v6;
  v7 = sub_10000DEC4(a3, a1);
  result = sub_10000DCFC(v7);
  if (*a1 == 1)
  {
    result = sub_100015F78(*(a1 + 8), a2);
    *(a3 + 8) = result;
  }

  return result;
}

uint64_t sub_100015F78(uint64_t a1, std::string::value_type *__s)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::string::compare((v3 + 32), __s);
    if (v6 >= 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 28) & 8));
  }

  while (v3);
  if (v5 == v2 || std::string::compare((v5 + 32), __s) >= 1)
  {
    return v2;
  }

  return v5;
}

uint64_t sub_100015FF8(unint64_t *a1)
{
  if (*(a1 + 23) < 0)
  {
    if (a1[1] == 5 && **a1 == 1818845508 && *(*a1 + 4) == 121)
    {
      return 0;
    }

    if (a1[1] == 6 && **a1 == 1801807191 && *(*a1 + 4) == 31084)
    {
      return 1;
    }

    if (a1[1] == 7 && **a1 == 1953394509 && *(*a1 + 3) == 2037147764)
    {
      return 2;
    }

    if (a1[1] != 9)
    {
      return 0;
    }

    a1 = *a1;
    goto LABEL_30;
  }

  v1 = 0;
  v2 = *(a1 + 23);
  if (v2 > 6)
  {
    if (v2 == 7)
    {
      v11 = *a1 == 1953394509 && *(a1 + 3) == 2037147764;
      return (2 * v11);
    }

    if (v2 != 9)
    {
      return v1;
    }

LABEL_30:
    v7 = bswap64(*a1);
    if (v7 == 0x517561727465726CLL)
    {
      v8 = *(a1 + 8) - 121;
    }

    else if (v7 < 0x517561727465726CLL)
    {
      v8 = -1;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  if (v2 == 5)
  {
    v9 = *(a1 + 4);
    *a1;
    return 0;
  }

  if (v2 == 6)
  {
    return *a1 == 1801807191 && *(a1 + 2) == 31084;
  }

  return v1;
}

uint64_t sub_1000161A4()
{
  if (qword_100192DD0 != -1)
  {
    sub_100126A98();
  }

  return dword_100192DC8;
}

void sub_1000161DC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_100025BBC();
}

uint64_t sub_10001622C(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_10001C368(result);

    operator delete();
  }

  return result;
}

void sub_100016278(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_100025BBC();
}

__n128 sub_1000162D0(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v8 = 1;
      }

      else
      {
        v8 = 0x5555555555555556 * ((v4 - *a1) >> 4);
      }

      v9 = a1[4];
      v12 = a1[4];
      sub_100016278(v9, v8);
    }

    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4) + 1;
    sub_1000E3E9C(&v11, v5, v4, v5 - 48 * (v6 / 2));
    v4 = v7;
    a1[1] -= 48 * (v6 / 2);
    a1[2] = v7;
  }

  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
  *v4 = *a2;
  v4[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  result = *(a2 + 24);
  *(v4 + 3) = result;
  v4[5] = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  a1[2] += 48;
  return result;
}

uint64_t sub_100016474(uint64_t a1, void **a2, void **a3, void *a4)
{
  v8 = a4;
  v9 = a4;
  v11[0] = a1;
  v11[1] = &v8;
  v11[2] = &v9;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  if (a2 == a3)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v6;
      a4[2] = v6[2];
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      a4[3] = 0;
      a4[4] = 0;
      a4[5] = 0;
      *(a4 + 3) = *(v6 + 3);
      a4[5] = v6[5];
      v6[3] = 0;
      v6[4] = 0;
      v6[5] = 0;
      v6 += 6;
      a4 += 6;
    }

    while (v6 != a3);
    v9 = a4;
    LOBYTE(v12) = 1;
    while (v5 != a3)
    {
      v10 = v5 + 3;
      sub_100004E54(&v10);
      v10 = v5;
      sub_100004E54(&v10);
      v5 += 6;
    }
  }

  return sub_1000166E8(v11);
}

uint64_t sub_100016588(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = *(a2 + 8);
  sub_100016474(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  sub_100016474(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

uint64_t sub_100016644(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 48);
    *(a1 + 16) = i - 48;
    v6 = (i - 24);
    sub_100004E54(&v6);
    v6 = v4;
    sub_100004E54(&v6);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1000166E8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000E3FA0(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

uint64_t sub_10001676C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v4 = sub_100006020((a1 + 24));
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000168B0;
  v9[3] = &unk_100187018;
  v9[4] = a1 + 8;
  v9[5] = v8;
  v5 = objc_retainBlock(v9);
  v12 = 0;
  v10 = v5;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015A90;
  block[3] = &unk_1001818D8;
  block[4] = &v12;
  block[5] = &v10;
  dispatch_sync(v4, block);
  v6 = v12;

  return v6;
}

void sub_1000168A4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

sqlite3_int64 sub_1000168B0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = (*v1 + 200);
  if (*v3 || (sub_10007F8D4(*v1, "SELECT transform_budget_used, transform_event_count FROM transform_metadata WHERE transform_uuid=?1 AND rollover_session_id=?2", 1, v11), v4 = v11[0], v11[0] = 0, sub_10007FC24(v3, v4), sub_10007FC24(v11, 0), *(v2 + 200)))
  {
    v11[0] = 0xAAAAAAAAAAAAAAAALL;
    sub_100016760(v11, v3);
    sub_10000BE00(v2, v3, 1, v1[1]);
    sub_10000BE00(v2, v3, 2, v1[2]);
    if (sub_10000BE48(v2, v3) == 100)
    {
      v5 = sub_100016AC4(v2, v3, 0);
      v6 = sub_100016AC4(v2, v3, 1) << 32;
      v7 = v5;
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }

    sub_100011B58(v11);
  }

  else
  {
    if (*(v2 + 32))
    {
      v9 = qword_100192D80;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = sqlite3_errmsg(*(v2 + 32));
        sub_1001227E8(v10, v11);
      }
    }

    else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      sub_100122820();
    }

    v7 = 0;
    v6 = 0;
  }

  return v6 | v7;
}

void sub_100016A70(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100024404(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

sqlite3_int64 sub_100016AC4(uint64_t a1, sqlite3_stmt **a2, int iCol)
{
  result = sqlite3_column_int64(*a2, iCol);
  *(a1 + 88) += 8;
  return result;
}

uint64_t sub_100016B00(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    sub_1000E3DFC(a1);
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
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
    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t sub_100016B80(uint64_t a1)
{
  if (*a1 != 3 || (result = *(a1 + 8)) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v4 = sub_10002CB3C(a1);
    sub_10000459C(&v7, v4);
    v5 = std::string::insert(&v7, 0, "incompatible ReferenceType for get_ref, actual type is ");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v9 = v5->__r_.__value_.__r.__words[2];
    v8 = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    sub_10002C9C4(303, &v8, exception);
  }

  return result;
}

void sub_100016C78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_100016CD8()
{
  if ((atomic_load_explicit(&qword_100192F00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100192F00))
  {
    operator new();
  }

  return qword_100192EF8;
}

void *sub_100016DD4(void *result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1000145B8(v5, v5 + 1, v4 + 4);
      v6 = v4[1];
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
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_100016E5C(_DWORD *a1)
{
  result = (*(*a1 + 72))(a1);
  if ((result & 1) == 0)
  {
    __assert_rtn("incrementEventCount", "Transform.cpp", 267, "initialized()");
  }

  ++a1[33];
  return result;
}

void *sub_100016ED8(void *result, uint64_t a2)
{
  *result = a2;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  result[4] = 0x8000000000000000;
  if (!a2)
  {
    __assert_rtn("iter_impl", "iter_impl.hpp", 88, "m_object != nullptr");
  }

  return result;
}

uint64_t sub_100016F28(uint64_t a1, unsigned __int8 *a2)
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

void sub_100017058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000BC60(va);
  _Unwind_Resume(a1);
}

BOOL sub_10001706C(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

uint64_t sub_1000170E4@<X0>(uint64_t a1@<X1>, std::string *a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = a1 + 24;
  if (*(a1 + 24) == v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1000E8F08(exception, "EvaluationContext Stack empty: expected string");
    goto LABEL_8;
  }

  v5 = *(v2 - 16);
  v4 = v2 - 16;
  if (v5 != 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1000E8F08(exception, "EvaluationContext Stack type mismatch: expected string");
LABEL_8:
  }

  memset(a2, 170, sizeof(std::string));
  sub_100010390(v4, a2);
  v7 = (*(a1 + 32) - 16);

  return sub_100013F0C(v3, v7);
}

void sub_1000171B8(void **a1@<X0>, __int128 *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v10 = *a2;
  v11 = *(a2 + 2);
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  memset(v12, 0, sizeof(v12));
  v13 = 0u;
  LODWORD(v14) = 0;
  sub_10000F91C(a1, &v10, a3);
  v5 = *&v12[0];
  if (*(&v12[0] + 1) - *&v12[0] != 16)
  {
    v6 = *(&v12[0] + 1);
    exception = __cxa_allocate_exception(0x10uLL);
    v8 = exception;
    if (v5 == v6)
    {
      std::runtime_error::runtime_error(exception, "Stack evaluation was empty but required one output value.");
    }

    else
    {
      std::runtime_error::runtime_error(exception, "Stack evaluation had multiple values remaining, but required exactly one output value.");
    }
  }

  *a4 = **&v12[0];
  *(a4 + 8) = *(v5 + 8);
  sub_10000298C(v5);
  *v5 = 0;
  *(v5 + 8) = 0;
  sub_10000298C(a4);
  if (*(&v13 + 1))
  {
    sub_10000786C(*(&v13 + 1));
  }

  v9 = v12;
  sub_100004E54(&v9);
  v9 = &v10;
  sub_1000131F8(&v9);
}

void sub_100017318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  __cxa_free_exception(v11);
  sub_1000358F0(&a11);
  _Unwind_Resume(a1);
}

char *sub_100017340(char *__dst, __int128 *a2)
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

void sub_10001739C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000173FC@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
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
    result = sub_10000F260(*(a1 + 8), a2);
    *(a3 + 8) = result;
  }

  return result;
}

uint64_t sub_100017468(uint64_t result)
{
  if (!*(result + 216))
  {
    operator new();
  }

  return result;
}

const void **sub_100017504(void *a1, uint64_t *a2, const void ***a3, uint64_t *a4, const void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 != a2 && !sub_10000BFA4(a1, a5, a2 + 4))
  {
    if (!sub_10000BFA4(a1, a2 + 4, a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!sub_10000BFA4(a1, a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (sub_10000BFA4(a1, v12 + 4, a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_100004728(a1, a3, a5);
}

void sub_1000176A8(__int128 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 1);
  v7 = *a1;
  if (*a1 != v6)
  {
    memset(&v17, 0, sizeof(v17));
    while ((sub_100014F94(a2, (*v7 + 16), &v17) & 1) == 0)
    {
      v7 += 16;
      if (v7 == v6)
      {
        v7 = v6;
        break;
      }
    }

    if (v7 != *(a1 + 1))
    {
      *a3 = v7;
      v9 = a3 + 1;
      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_1000078D8(v9, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
        goto LABEL_17;
      }

      goto LABEL_15;
    }

    sub_10000459C(__p, "event");
    v11 = sub_100014F94(a2, __p, &v17);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    *a3 = *a1;
    v9 = a3 + 1;
    if (v11)
    {
      if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_15:
        *v9 = *&v17.__r_.__value_.__l.__data_;
        v12 = v17.__r_.__value_.__r.__words[2];
LABEL_16:
        v9[2] = v12;
        goto LABEL_17;
      }

      sub_1000078D8(v9, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
    }

    else
    {
      if ((*(a2 + 23) & 0x80000000) == 0)
      {
        *v9 = *a2;
        v12 = *(a2 + 16);
        goto LABEL_16;
      }

      sub_1000078D8(v9, *a2, *(a2 + 8));
    }

LABEL_17:
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    return;
  }

  *a3 = v7;
  v10 = a3 + 1;
  if (*(a2 + 23) < 0)
  {
    v13 = *a2;
    v14 = *(a2 + 8);

    sub_1000078D8(v10, v13, v14);
  }

  else
  {
    *v10 = *a2;
    a3[3] = *(a2 + 16);
  }
}

void sub_100017888(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000178CC(uint64_t a1, uint64_t a2)
{
  memset(&v18, 170, sizeof(v18));
  sub_1000170E4(a2, &v18);
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v3;
  v17 = v3;
  sub_1000176A8(a2, &v18, __p);
  if (__p[0] == *(a2 + 8))
  {
    v14 = 0;
    v8 = *(a2 + 32);
    if (v8 >= *(a2 + 40))
    {
      v9 = sub_100026554(a2 + 24);
    }

    else
    {
      *v8 = 0;
      *(v8 + 8) = 0;
      sub_10000298C(v8);
      sub_10000298C(v8);
      v9 = v8 + 16;
    }

    goto LABEL_15;
  }

  v4 = HIBYTE(v17);
  if (v17 < 0)
  {
    v4 = v17;
  }

  if (!v4)
  {
    v10 = *__p[0];
    v11 = *(a2 + 32);
    if (v11 >= *(a2 + 40))
    {
      v9 = sub_1000DD9EC(a2 + 24, (v10 + 40));
    }

    else
    {
      sub_10000FF70(*(a2 + 32), (v10 + 40));
      v9 = v11 + 16;
      *(a2 + 32) = v11 + 16;
    }

LABEL_15:
    *(a2 + 32) = v9;
    goto LABEL_16;
  }

  v14 = 0xAAAAAAAAAAAAAAAALL;
  v15 = 0xAAAAAAAAAAAAAAAALL;
  v5 = *__p[0];
  v12[0] = 0;
  v13 = 0;
  sub_10000298C(v12);
  sub_10000298C(v12);
  sub_10001324C((v5 + 40), &__p[1], v12, &v14);
  sub_10000298C(v12);
  sub_1000048FC(&v13, v12[0]);
  v6 = *(a2 + 32);
  if (v6 >= *(a2 + 40))
  {
    v7 = sub_10001D0FC(a2 + 24, &v14);
  }

  else
  {
    *v6 = v14;
    *(v6 + 8) = v15;
    sub_10000298C(&v14);
    LOBYTE(v14) = 0;
    v15 = 0;
    sub_10000298C(v6);
    v7 = v6 + 16;
  }

  *(a2 + 32) = v7;
  sub_10000298C(&v14);
  sub_1000048FC(&v15, v14);
LABEL_16:
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }
}

void sub_100017AD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100017B44(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v5 = a1[1];
  v6 = a1[2];
  if (v5 >= v6)
  {
    v13 = *a1;
    v21 = 0u;
    v22 = 0u;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v13) >> 4) + 1;
    if (v14 > 0x555555555555555)
    {
      sub_10002C63C();
    }

    v15 = a2 - v13;
    v16 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v13) >> 4);
    v17 = 2 * v16;
    if (2 * v16 <= v14)
    {
      v17 = v14;
    }

    if (v16 >= 0x2AAAAAAAAAAAAAALL)
    {
      v18 = 0x555555555555555;
    }

    else
    {
      v18 = v17;
    }

    v23 = a1;
    if (v18)
    {
      sub_100016278(a1, v18);
    }

    *&v21 = 0;
    *(&v21 + 1) = 16 * (v15 >> 4);
    v22 = *(&v21 + 1);
    sub_1000162D0(&v21, a3);
    v3 = sub_100016588(a1, &v21, v3);
    sub_100016644(&v21);
  }

  else if (a2 == v5)
  {
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
    *v5 = *a3;
    v5[2] = *(a3 + 16);
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v5[3] = 0;
    v5[4] = 0;
    v5[5] = 0;
    *(v5 + 3) = *(a3 + 24);
    v5[5] = *(a3 + 40);
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *(a3 + 40) = 0;
    a1[1] = v5 + 6;
  }

  else
  {
    v7 = *a3;
    v9 = *(a3 + 16);
    v8 = *(a3 + 24);
    *&v10 = v9;
    *(&v10 + 1) = v8;
    *a3 = 0;
    *(a3 + 8) = 0;
    v20 = v7;
    v21 = v7;
    v22 = v10;
    v12 = *(a3 + 40);
    v23 = *(a3 + 32);
    v11 = v23;
    v24 = v12;
    v25 = a1;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *(a3 + 40) = 0;
    sub_1000260D8(a1, a2, a1[1], a2 + 48);
    sub_100014578(v3);
    *v3 = v20;
    *(v3 + 16) = v9;
    v21 = 0uLL;
    *&v22 = 0;
    sub_100014578(v3 + 24);
    *(v3 + 24) = v8;
    *(v3 + 32) = v11;
    *(v3 + 40) = v12;
    *(&v22 + 1) = 0;
    v23 = 0;
    v24 = 0;
    v26 = &v22 + 1;
    sub_100004E54(&v26);
    v26 = &v21;
    sub_100004E54(&v26);
  }

  return v3;
}

void sub_100017D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000E246C(va);
  _Unwind_Resume(a1);
}

void sub_100017D9C(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 2;
  sub_100013A3C();
}

void sub_100017DF0(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  memset(__b, 170, sizeof(__b));
  operator new();
}

void sub_100017F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100018868(va);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  _Unwind_Resume(a1);
}

void sub_100017F90(uint64_t a1, uint64_t a2, char a3)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v5 = localeconv();
  *(a1 + 80) = v5;
  thousands_sep = v5->thousands_sep;
  if (thousands_sep)
  {
    LOBYTE(thousands_sep) = *thousands_sep;
  }

  *(a1 + 88) = thousands_sep;
  decimal_point = v5->decimal_point;
  if (v5->decimal_point)
  {
    LOBYTE(decimal_point) = *decimal_point;
  }

  *(a1 + 90) = 0u;
  *(a1 + 89) = decimal_point;
  *(a1 + 106) = 0u;
  *(a1 + 122) = 0u;
  *(a1 + 138) = 0u;
  *(a1 + 154) = 0u;
  *(a1 + 170) = 0u;
  *(a1 + 186) = 0u;
  *(a1 + 202) = 0u;
  *(a1 + 218) = 0u;
  *(a1 + 234) = 0u;
  *(a1 + 250) = 0u;
  *(a1 + 266) = 0u;
  *(a1 + 282) = 0u;
  *(a1 + 298) = 0u;
  *(a1 + 314) = 0u;
  *(a1 + 330) = 0u;
  *(a1 + 346) = 0u;
  *(a1 + 362) = 0u;
  *(a1 + 378) = 0u;
  *(a1 + 394) = 0u;
  *(a1 + 410) = 0u;
  *(a1 + 426) = 0u;
  *(a1 + 442) = 0u;
  *(a1 + 458) = 0u;
  *(a1 + 474) = 0u;
  *(a1 + 490) = 0u;
  *(a1 + 506) = 0u;
  *(a1 + 522) = 0u;
  *(a1 + 538) = 0u;
  *(a1 + 554) = 0u;
  *(a1 + 570) = 0u;
  *(a1 + 586) = 0u;
  *(a1 + 602) = a3;
  operator new();
}

void sub_1000180D0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_10000786C(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000180F0(uint64_t result, uint64_t *a2, int a3)
{
  v45 = 0;
  v3 = *(a2 + 23);
  v4 = a2[1];
  if ((v3 & 0x80000000) == 0)
  {
    v4 = *(a2 + 23);
  }

  if (v4)
  {
    v7 = result;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = v3 >> 63;
    v46 = -1431655766;
    v13 = result + 90;
    while (1)
    {
      v14 = *a2;
      if ((v12 & 1) == 0)
      {
        v14 = a2;
      }

      v15 = *(v14 + v9);
      result = sub_1000187D8(&v45, &v46, v15);
      if (result == 1)
      {
        v17 = *(v7 + 158);
        if ((v17 - 1) >= 2)
        {
          if (!v17)
          {
            v43 = 0xAAAAAAAAAAAAAAAALL;
            v44 = 0x3AAAAAAAAAAAAAALL;
            *__str = 0xAAAAAAAA00000000;
            snprintf(__str, 3uLL, "%.2X", v15);
            exception = __cxa_allocate_exception(0x20uLL);
            std::to_string(&v37, v9);
            v27 = std::string::insert(&v37, 0, "invalid UTF-8 byte at index ");
            v28 = *&v27->__r_.__value_.__l.__data_;
            v38.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
            *&v38.__r_.__value_.__l.__data_ = v28;
            v27->__r_.__value_.__l.__size_ = 0;
            v27->__r_.__value_.__r.__words[2] = 0;
            v27->__r_.__value_.__r.__words[0] = 0;
            v29 = std::string::append(&v38, ": 0x");
            v30 = *&v29->__r_.__value_.__l.__data_;
            v39.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
            *&v39.__r_.__value_.__l.__data_ = v30;
            v29->__r_.__value_.__l.__size_ = 0;
            v29->__r_.__value_.__r.__words[2] = 0;
            v29->__r_.__value_.__r.__words[0] = 0;
            if (v44 >= 0)
            {
              v31 = __str;
            }

            else
            {
              v31 = *__str;
            }

            if (v44 >= 0)
            {
              v32 = HIBYTE(v44);
            }

            else
            {
              v32 = v43;
            }

            v33 = std::string::append(&v39, v31, v32);
            v34 = *&v33->__r_.__value_.__l.__data_;
            v41 = v33->__r_.__value_.__r.__words[2];
            v40 = v34;
            v33->__r_.__value_.__l.__size_ = 0;
            v33->__r_.__value_.__r.__words[2] = 0;
            v33->__r_.__value_.__r.__words[0] = 0;
            sub_10002C9C4(316, &v40, exception);
          }

          sub_10011A2A4();
        }

        v18 = v10 != 0;
        if (v17 == 1)
        {
          v19 = v13 + v11;
          if (a3)
          {
            *v19 = 1717990748;
            *(v19 + 4) = 25702;
            v11 += 6;
          }

          else
          {
            v11 += 3;
            *v19 = -16401;
            *(v19 + 2) = -67;
          }

          if ((v11 - 500) <= 0xC)
          {
            result = (*(**v7 + 8))(*v7, v13, v11);
            v11 = 0;
          }
        }

        v10 = 0;
        v9 -= v18;
        v45 = 0;
        goto LABEL_52;
      }

      if (result)
      {
        if ((a3 & 1) == 0)
        {
          if (*(a2 + 23) >= 0)
          {
            v20 = a2;
          }

          else
          {
            v20 = *a2;
          }

          *(v13 + v8++) = *(v20 + v9);
        }

        ++v10;
        goto LABEL_53;
      }

      if (v46 <= 11)
      {
        switch(v46)
        {
          case 8:
            v16 = 25180;
            goto LABEL_48;
          case 9:
            v16 = 29788;
            goto LABEL_48;
          case 10:
            v16 = 28252;
            goto LABEL_48;
        }
      }

      else if (v46 > 33)
      {
        if (v46 == 34)
        {
          v16 = 8796;
          goto LABEL_48;
        }

        if (v46 == 92)
        {
          v16 = 23644;
          goto LABEL_48;
        }
      }

      else
      {
        if (v46 == 12)
        {
          v16 = 26204;
          goto LABEL_48;
        }

        if (v46 == 13)
        {
          v16 = 29276;
LABEL_48:
          *(v13 + v8) = v16;
          v11 = v8 + 2;
          goto LABEL_49;
        }
      }

      if (v46 > 0x7E)
      {
        v21 = a3;
      }

      else
      {
        v21 = 0;
      }

      if (v46 < 0x20 || v21)
      {
        if (HIWORD(v46))
        {
          result = snprintf((v13 + v8), 0xDuLL, "\\u%04x\\u%04x", ((v46 >> 10) - 10304), v46 & 0x3FF | 0xDC00);
          v11 = v8 + 12;
        }

        else
        {
          result = snprintf((v13 + v8), 7uLL, "\\u%04x", v46);
          v11 = v8 + 6;
        }
      }

      else
      {
        if (*(a2 + 23) >= 0)
        {
          v22 = a2;
        }

        else
        {
          v22 = *a2;
        }

        v11 = v8 + 1;
        *(v13 + v8) = *(v22 + v9);
      }

LABEL_49:
      if ((v11 - 500) > 0xC)
      {
        v10 = 0;
LABEL_52:
        v8 = v11;
        goto LABEL_53;
      }

      result = (*(**v7 + 8))(*v7, v13, v11);
      v11 = 0;
      v10 = 0;
      v8 = 0;
LABEL_53:
      ++v9;
      v23 = *(a2 + 23);
      v12 = v23 >> 63;
      v24 = a2[1];
      if ((v23 & 0x80000000) == 0)
      {
        v24 = *(a2 + 23);
      }

      if (v9 >= v24)
      {
        if (v45)
        {
          v25 = *(v7 + 158);
          switch(v25)
          {
            case 1:
              (*(**v7 + 8))(*v7, v13, v11);
              return (*(**v7 + 8))();
            case 2:
              return (*(**v7 + 8))(*v7, v13, v11);
            case 0:
              v43 = 0xAAAAAAAAAAAAAAAALL;
              v44 = 0x3AAAAAAAAAAAAAALL;
              *__str = 0xAAAAAAAA00000000;
              if ((v23 & 0x80000000) == 0)
              {
                v35 = a2;
              }

              else
              {
                v35 = *a2;
              }

              snprintf(__str, 3uLL, "%.2X", *(v35 + v24 - 1));
              v36 = __cxa_allocate_exception(0x20uLL);
              std::operator+<char>();
              sub_10002C9C4(316, &v40, v36);
            default:
              sub_10011A2D0();
          }
        }

        else if (v8)
        {
          return (*(**v7 + 8))(*v7, v13, v8);
        }

        return result;
      }
    }
  }

  return result;
}

void sub_100018710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a39 < 0)
  {
    operator delete(__p);
    if ((v40 & 1) == 0)
    {
LABEL_6:
      if (*(v41 - 105) < 0)
      {
        operator delete(*(v41 - 128));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v40)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v39);
  goto LABEL_6;
}

uint64_t sub_1000187D8(_BYTE *a1, unsigned int *a2, int a3)
{
  v3 = byte_100141F6C[a3];
  if (*a1)
  {
    v4 = a3 & 0x3F | (*a2 << 6);
  }

  else
  {
    v4 = (0xFFu >> v3) & a3;
  }

  *a2 = v4;
  v5 = 16 * *a1 + v3 + 256;
  if (v5 >= 0x190)
  {
    __assert_rtn("decode", "serializer.hpp", 892, "index < 400");
  }

  v6 = byte_100141F6C[v5];
  *a1 = v6;
  return v6;
}

uint64_t sub_100018868(uint64_t a1)
{
  if (*(a1 + 631) < 0)
  {
    operator delete(*(a1 + 608));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    sub_10000786C(v2);
  }

  return a1;
}

void sub_1000188D4(void *a1, xpc_object_t a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (!a1[5])
      {
LABEL_21:
        sub_10000786C(v7);
        return;
      }

      type = xpc_get_type(a2);
      if (type != &_xpc_type_connection)
      {
        if (type == &_xpc_type_error)
        {
          if (a2 == &_xpc_error_connection_invalid)
          {
            v11 = qword_100192DA0;
            if (os_log_type_enabled(qword_100192DA0, OS_LOG_TYPE_DEFAULT))
            {
              v12 = (v5 + 32);
              if (*(v5 + 55) < 0)
              {
                v12 = *v12;
              }

              *object = 136446466;
              *&object[4] = v12;
              v15 = 2080;
              string = xpc_dictionary_get_string(&_xpc_error_connection_invalid, _xpc_error_key_description);
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%{public}s XPC Server] recieved connection invalidated: %s", object, 0x16u);
            }

            dispatch_group_leave(*(v5 + 64));
          }

          else
          {
            v9 = qword_100192DA0;
            if (a2 == &_xpc_error_connection_interrupted)
            {
              if (os_log_type_enabled(qword_100192DA0, OS_LOG_TYPE_DEFAULT))
              {
                v13 = (v5 + 32);
                if (*(v5 + 55) < 0)
                {
                  v13 = *v13;
                }

                *object = 136446466;
                *&object[4] = v13;
                v15 = 2080;
                string = xpc_dictionary_get_string(&_xpc_error_connection_interrupted, _xpc_error_key_description);
                _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%{public}s XPC Server] recieved connection interrupted: %s", object, 0x16u);
              }
            }

            else if (os_log_type_enabled(qword_100192DA0, OS_LOG_TYPE_ERROR))
            {
              if (*(v5 + 55) < 0)
              {
                v10 = *(v5 + 32);
              }

              xpc_dictionary_get_string(a2, _xpc_error_key_description);
              sub_1001245D8();
            }
          }
        }

        else if (os_log_type_enabled(qword_100192DA0, OS_LOG_TYPE_ERROR))
        {
          sub_100124558(v5);
        }

        goto LABEL_21;
      }

      if (a2)
      {
        xpc_retain(a2);
        *object = a2;
      }

      else
      {
        a2 = xpc_null_create();
        *object = a2;
        if (!a2)
        {
          goto LABEL_18;
        }
      }

      if (xpc_get_type(a2) == &_xpc_type_connection)
      {
        xpc_retain(a2);
        goto LABEL_20;
      }

LABEL_18:
      *object = xpc_null_create();
LABEL_20:
      sub_100018C14(v5, object);
      xpc_release(*object);
      *object = 0;
      xpc_release(a2);
      goto LABEL_21;
    }
  }
}

void sub_100018C14(uint64_t a1, xpc_object_t *a2)
{
  if (os_log_type_enabled(qword_100192DA0, OS_LOG_TYPE_DEBUG))
  {
    sub_100124374(a1);
  }

  v4 = *(a1 + 80);
  if (v4 >= *(a1 + 88))
  {
    v5 = sub_1000B33A8(a1 + 72, a2);
  }

  else
  {
    sub_100018E14(a1 + 72, *(a1 + 80), a2);
    v5 = v4 + 8;
    *(a1 + 80) = v4 + 8;
  }

  *(a1 + 80) = v5;
  dispatch_group_enter(*(a1 + 64));
  v6 = *a2;
  sub_100006028(&v12, (a1 + 8));
  v8 = v12;
  v7 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_10000786C(v7);
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 1174405120;
  handler[2] = sub_100001710;
  handler[3] = &unk_1001877E8;
  handler[4] = a1;
  handler[5] = v8;
  v10 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = v6;
  xpc_connection_set_event_handler(v6, handler);
  xpc_connection_set_target_queue(v6, *(a1 + 24));
  xpc_connection_resume(v6);
  (*(*a1 + 48))(a1, a2);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_100018E14(uint64_t a1, void *a2, xpc_object_t *a3)
{
  v4 = *a3;
  if (*a3)
  {
    xpc_retain(*a3);
  }

  else
  {
    v4 = xpc_null_create();
  }

  *a2 = v4;
  v5 = xpc_null_create();
  xpc_release(v5);
}

uint64_t sub_100018E68(uint64_t result, uint64_t a2)
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

void sub_100018EB0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = a3;
  v3 = a1 + 8;
  v5[0] = a1;
  v5[1] = a2;
  v5[2] = &v6;
  v4 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100018F64;
  block[3] = &unk_100187B80;
  block[4] = v3;
  block[5] = v5;
  dispatch_sync(v4, block);
}

void sub_100018F64(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = *v1;
  v2 = v1[1];
  v4 = (*(*v1 + 248) + 1);
  *(*v1 + 248) = v4;
  v11 = v4;
  LOBYTE(v12) = 0;
  v14 = 0;
  v5 = *v2;
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  v17 = v4;
  LOBYTE(__p) = 0;
  v20 = 0;
  memset(v21, 0, sizeof(v21));
  memset(v15, 0, sizeof(v15));
  sub_100019268((v3 + 208), &object);
  v7 = v6;
  v10 = v21;
  sub_1000131F8(&v10);
  if (v20 == 1 && v19 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  object = 0;
  v10 = v15;
  sub_1000131F8(&v10);
  if (v14 == 1 && v13 < 0)
  {
    operator delete(v12);
  }

  if (v7)
  {
    if (*v1[2] == 1)
    {
      object = 0xAAAAAAAAAAAAAAAALL;
      v17 = 0xAAAAAAAAAAAAAAAALL;
      object = xpc_null_create();
      v17 = 0;
      v9 = *(v3 + 264);
      if (v9)
      {
        sub_1000195BC(v9, &v11);
        sub_10001B110(&object, &v11);
        xpc_release(v11);
      }

      sub_100019614(v9, v1[1], v8, &object);
      xpc_release(object);
    }
  }

  else if (os_log_type_enabled(qword_100192D60, OS_LOG_TYPE_ERROR))
  {
    sub_10012546C();
  }
}

void sub_100019128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10002C628(exception_object);
}

uint64_t **sub_100019268(void *a1, xpc_object_t *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ (*a2 >> 32));
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * ((*a2 >> 32) ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * ((*a2 >> 32) ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v4);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * ((*a2 >> 32) ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * ((*a2 >> 32) ^ (v2 >> 47) ^ v2)) >> 47));
    if (v3 >= *&v4)
    {
      v8 = v3 % *&v4;
    }
  }

  else
  {
    v8 = v3 & (*&v4 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    sub_100019190();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v3)
    {
      break;
    }

    if (v7 > 1)
    {
      if (v11 >= *&v4)
      {
        v11 %= *&v4;
      }
    }

    else
    {
      v11 &= *&v4 - 1;
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

  if (!xpc_equal(v10[2], *a2))
  {
    goto LABEL_17;
  }

  return v10;
}

void sub_100019520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    sub_1000BB27C(v9 + 8, a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_100019548(uint64_t a1@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = *a1;
  if (v4 == -1)
  {
    *a2 = xpc_null_create();
    a2[1] = 0;
  }

  else
  {
    v5 = xpc_shmem_create(v4, *(a1 + 8));
    if (!v5)
    {
      v5 = xpc_null_create();
    }

    v6 = *(a1 + 8);
    *a2 = v5;
    v7 = xpc_null_create();
    a2[1] = v6;
    xpc_release(v7);
  }
}

void sub_1000195BC(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1 == -1)
  {
    *a2 = xpc_null_create();
    *(a2 + 8) = 0;
  }

  else
  {

    sub_100019548(a1, a2);
  }
}

void sub_100019614(uint64_t a1, xpc_connection_t *a2, uint64_t a3, uint64_t a4)
{
  v15 = 0xAAAAAAAAAAAAAAAALL;
  sub_10001B07C(&v15);
  object = xpc_string_create("configuration-change");
  if (!object)
  {
    object = xpc_null_create();
  }

  v11 = &v15;
  v12 = "notification";
  sub_10001B168(&v11, &object, &v14);
  xpc_release(v14);
  v14 = 0;
  xpc_release(object);
  object = 0;
  v6 = *a4;
  v9 = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    v9 = xpc_null_create();
  }

  v11 = &v15;
  v12 = "configuration";
  sub_10001B168(&v11, &v9, &v10);
  xpc_release(v10);
  v10 = 0;
  xpc_release(v9);
  v9 = 0;
  v7 = xpc_int64_create(*(a4 + 8));
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v11 = &v15;
  v12 = "configuration-size";
  sub_10001B168(&v11, &v7, &v8);
  xpc_release(v8);
  v8 = 0;
  xpc_release(v7);
  v7 = 0;
  xpc_connection_send_message(*a2, v15);
  xpc_release(v15);
}

void sub_100019788(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10002C628(exception_object);
}

void sub_1000198FC(char **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 264);
  if (v3 && (v4 = strlen(v1 + 16), (sub_100019BC4(v3, v1 + 16, v4) & 1) != 0))
  {
    v7 = 0xAAAAAAAAAAAAAAAALL;
    v8 = 0xAAAAAAAAAAAAAAAALL;
    sub_100019F28((v1 + 8), &v7);
    if (*(v2 + 48))
    {
      v5 = v7 == 1;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      if (!os_log_type_enabled(qword_100192D58, OS_LOG_TYPE_DEBUG))
      {
        sub_10000459C(&__p, v1 + 16);
        sub_100019D5C(&__p, &v7);
      }

      sub_100017DF0(&__p);
    }

    if (os_log_type_enabled(qword_100192D48, OS_LOG_TYPE_ERROR))
    {
      sub_100125384();
    }

    sub_10000298C(&v7);
    sub_1000048FC(&v8, v7);
  }

  else if (os_log_type_enabled(qword_100192D48, OS_LOG_TYPE_DEBUG))
  {
    sub_1001253F4();
  }

  operator delete();
}

uint64_t sub_100019BC4(uint64_t *a1, const void *a2, size_t a3)
{
  v3 = *a1;
  if (*a1 == -1)
  {
    v3 = 0;
  }

  v19 = v3;
  v4 = *(a1[2] + 8);
  __p[0] = 0;
  __p[1] = 0;
  v24 = 0;
  if (!v4)
  {
    return 0;
  }

  v7 = 1;
  while (1)
  {
    v8 = (v7 + v4) >> 1;
    sub_10000459C(&v21, (v19 + *(a1[2] + 4 * (v8 - 1) + 24)));
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v21;
    v9 = v21;
    v24 = v22;
    v10 = SHIBYTE(v22);
    v11 = v22 >= 0 ? HIBYTE(v22) : *(&v21 + 1);
    v12 = v22 >= 0 ? __p : v21;
    if (a3 == v11 && !memcmp(a2, v12, a3))
    {
      break;
    }

    if (v11 >= a3)
    {
      v13 = a3;
    }

    else
    {
      v13 = v11;
    }

    v14 = memcmp(a2, v12, v13);
    v15 = a3 < v11;
    if (a3 == v11 || v14 != 0)
    {
      v15 = v14 < 0;
    }

    if (v15)
    {
      v4 = v8 - 1;
    }

    else
    {
      v7 = v8 + 1;
    }

    if (v7 > v4)
    {
      v17 = 0;
      if ((v10 & 0x80000000) == 0)
      {
        return v17;
      }

      goto LABEL_31;
    }
  }

  v17 = 1;
  if ((v10 & 0x80000000) == 0)
  {
    return v17;
  }

LABEL_31:
  operator delete(v9);
  return v17;
}

void sub_100019D50(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_100019D5C(__int128 *a1, uint64_t a2)
{
  v4[0] = *a2;
  v5 = *(a2 + 8);
  sub_10000298C(a2);
  *a2 = 0;
  *(a2 + 8) = 0;
  sub_10000298C(v4);
  sub_100006F04(v6, a1, v4, 0, 0);
  sub_100006FC0();
}

void sub_100019E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, char a12)
{
  sub_1000B0E98(&a12);
  sub_10002C5F4(&a9);
  _Unwind_Resume(a1);
}

void sub_100019EDC(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 1;
  sub_10001AB38();
}

void sub_100019F28(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  errorString[0] = 0;
  v4 = IOCFUnserializeWithSize((a1 + 72), *(a1 + 4), kCFAllocatorDefault, 0, errorString);
  v5 = qword_100192DB8;
  if (v4)
  {
    if (os_log_type_enabled(qword_100192DB8, OS_LOG_TYPE_DEBUG))
    {
      sub_10002A3DC(a1, v4, v5);
    }

    *a2 = 0xAAAAAAAAAAAAAAAALL;
    *(a2 + 8) = 0xAAAAAAAAAAAAAAAALL;
    sub_10001AAE4(v4, a2);
  }

  else
  {
    if (os_log_type_enabled(qword_100192DB8, OS_LOG_TYPE_ERROR))
    {
      sub_10011BCAC(a1, errorString, v5);
    }

    *a2 = 0;
    *(a2 + 8) = 0;
    sub_10000298C(a2);
    sub_10000298C(a2);
  }
}

void sub_10001A148(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (![v5 UTF8String])
    {
      [NSException raise:NSInvalidArgumentException format:@"Invalid non-UTF8 character(s) in dictionary key"];
    }

    v7 = *(a1 + 32);
    sub_10001A460(&v8, v6, (*(a1 + 40) + 1));
    sub_10001A2AC();
  }

  [NSException raise:NSInvalidArgumentException format:@"Invalid (non-string) key in JSON dictionary"];
}

void sub_10001A278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  sub_10002C5F4(&a9);

  _Unwind_Resume(a1);
}

void sub_10001A378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    sub_100030F3C(v11 + 8, a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_10001A444(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100030F3C(v3, v2);
  _Unwind_Resume(a1);
}

void sub_10001A460(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = a1;
  if (a2 >= 0xB)
  {
    [NSException raise:NSInvalidArgumentException format:@"Object exceeded the max depth"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (![v5 UTF8String])
    {
      [NSException raise:NSInvalidArgumentException format:@"Invalid non-UTF8 character(s) in string value"];
    }

    sub_10001AAEC(a3);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = CFGetTypeID(v6);
    if (v7 == CFBooleanGetTypeID())
    {
      v8 = [v6 BOOLValue];
      *a3 = 4;
      *(a3 + 8) = v8;
LABEL_39:
      sub_10000298C(a3);
      sub_10000298C(a3);

      goto LABEL_40;
    }

    v9 = *[v6 objCType];
    if (v9 <= 0x50)
    {
      if (v9 > 72)
      {
        if (v9 == 73 || v9 == 76)
        {
          goto LABEL_37;
        }

        goto LABEL_41;
      }

      if (v9 != 66)
      {
        if (v9 == 67)
        {
LABEL_37:
          v12 = [v6 unsignedLongLongValue];
          v13 = 6;
          goto LABEL_38;
        }

LABEL_41:
        +[NSException raise:format:](NSException, "raise:format:", NSInvalidArgumentException, @"Invalid number type in JSON write (%c)", *[v6 objCType]);
        *a3 = 0;
        *(a3 + 8) = 0;
        goto LABEL_39;
      }
    }

    else
    {
      if ((v9 - 99) > 0x10)
      {
        goto LABEL_35;
      }

      if (((1 << (v9 - 99)) & 0x14241) == 0)
      {
        if (v9 == 100)
        {
          [v6 doubleValue];
          v15 = v14;
          if (fabs(v14) == INFINITY)
          {
            [NSException raise:NSInvalidArgumentException format:@"Invalid number value (infinite) in JSON write"];
          }

          *a3 = 7;
          *(a3 + 8) = v15;
          goto LABEL_39;
        }

        if (v9 == 102)
        {
          [v6 floatValue];
          v11 = v10;
          if (fabsf(v10) == INFINITY)
          {
            [NSException raise:NSInvalidArgumentException format:@"Invalid number value (infinite) in JSON conversion"];
          }

          *a3 = 7;
          *(a3 + 8) = v11;
          goto LABEL_39;
        }

LABEL_35:
        if (v9 == 81 || v9 == 83)
        {
          goto LABEL_37;
        }

        goto LABEL_41;
      }
    }

    v12 = [v6 longLongValue];
    v13 = 5;
LABEL_38:
    *a3 = v13;
    *(a3 + 8) = v12;
    goto LABEL_39;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *&v20.__r_.__value_.__r.__words[1] = 0uLL;
    v20.__r_.__value_.__r.__words[0] = &v20.__r_.__value_.__l.__size_;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10001A148;
    v18[3] = &unk_100185600;
    v18[4] = &v20;
    v19 = a2;
    [v5 enumerateKeysAndObjectsUsingBlock:v18];
    sub_100019EDC(a3);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    memset(&v20, 0, sizeof(v20));
    sub_10000F7BC(&v20, [v5 count]);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10008C758;
    v16[3] = &unk_100185620;
    v16[4] = &v20;
    v17 = a2;
    [v5 enumerateObjectsUsingBlock:v16];
    *(a3 + 8) = 0;
    *a3 = 2;
    operator new();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sub_1000E4758([v5 bytes], objc_msgSend(v5, "length"), &v20);
    *(a3 + 8) = 0;
    *a3 = 3;
    operator new();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [NSException raise:NSInvalidArgumentException format:@"Invalid type in JSON write (%@)", objc_opt_class()];
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  sub_10000298C(a3);
  sub_10000298C(a3);
LABEL_40:
}

void sub_10001AAEC(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  sub_100019E80();
}

uint64_t sub_10001ABA8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = sub_10000BE48(*v1, *(v1 + 8));
  if (v3 == 100)
  {
    **(v1 + 16) = sub_10000A5D0(v2, *(v1 + 8), 0);
    **(v1 + 24) = sub_10000A5D0(v2, *(v1 + 8), 1);
    **(v1 + 32) = sub_10000A5D0(v2, *(v1 + 8), 2);
    if (**(v1 + 16))
    {
      if (**(v1 + 32))
      {
        return 1;
      }

      v7 = qword_100192D80;
      v6 = 1;
      if (!os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_INFO))
      {
        return v6;
      }

      v11 = 0;
      v8 = "[Config Store] WARNING: modify-eventdef query weirdness: got a row but no definition?";
      v9 = &v11;
    }

    else
    {
      v7 = qword_100192D80;
      v6 = 1;
      if (!os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_INFO))
      {
        return v6;
      }

      v12 = 0;
      v8 = "[Config Store] WARNING: modify-eventdef query weirdness: got a row but no type?";
      v9 = &v12;
    }

    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, v8, v9, 2u);
    return v6;
  }

  if (v3 != 101)
  {
    v4 = *(v2 + 32);
    v5 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v4)
    {
      if (v5)
      {
        sub_10010E7A8(v4);
      }
    }

    else if (v5)
    {
      sub_10010E820();
    }
  }

  return 0;
}

void sub_10001AD60(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_100192F50, memory_order_acquire) & 1) == 0)
  {
    sub_100106EC8();
  }

  std::mutex::lock(&stru_100192A70);
  v10 = a1 + 136;
  v11 = a1;
  v12 = a2;
  v5 = *(a1 + 24);
  v18 = _NSConcreteStackBlock;
  v19 = 0x40000000;
  v20 = sub_10001B488;
  v21 = &unk_10018B848;
  v22 = a1 + 8;
  v23 = &v10;
  v24 = &v18;
  LOBYTE(v17) = -86;
  block = _NSConcreteStackBlock;
  v27 = 0x40000000;
  v28 = sub_100008890;
  v29 = &unk_10018B278;
  v30 = &v17;
  v31 = &v24;
  dispatch_sync(v5, &block);
  if (v17 == 1)
  {
    if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_DEBUG))
    {
      sub_10002A70C(a2);
    }

    do
    {
      v16 = 0;
      v17 = 0;
      v10 = a1;
      v11 = a1 + 136;
      v12 = &v17;
      v13 = &v16;
      v14 = &v15;
      v15 = 0;
      v6 = *(a1 + 24);
      v18 = _NSConcreteStackBlock;
      v19 = 0x40000000;
      v20 = sub_10001ABA8;
      v21 = &unk_10018B868;
      v22 = a1 + 8;
      v23 = &v10;
      v24 = &v18;
      v25 = -86;
      block = _NSConcreteStackBlock;
      v27 = 0x40000000;
      v28 = sub_100008890;
      v29 = &unk_10018B278;
      v30 = &v25;
      v31 = &v24;
      dispatch_sync(v6, &block);
      v7 = v25;
      if (v25 == 1 && v17 && v15)
      {
        sub_100020558(a3, v17, v16, v15);
      }
    }

    while ((v7 & 1) != 0);
  }

  v18 = (a1 + 136);
  v8 = *(a1 + 24);
  block = _NSConcreteStackBlock;
  v27 = 0x40000000;
  v28 = sub_1000296A0;
  v29 = &unk_10018B888;
  v30 = (a1 + 8);
  v31 = &v18;
  dispatch_sync(v8, &block);
  std::mutex::unlock(&stru_100192A70);
}

void sub_10001B06C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10001B07C(xpc_object_t *a1@<X8>)
{
  v2 = xpc_dictionary_create(0, 0, 0);
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

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
    goto LABEL_7;
  }

LABEL_5:
  *a1 = xpc_null_create();
LABEL_7:
  xpc_release(v3);
}

uint64_t sub_10001B110(uint64_t a1, xpc_object_t *a2)
{
  v4 = *a2;
  *a2 = xpc_null_create();
  v5 = *a1;
  *a1 = v4;
  xpc_release(v5);
  *(a1 + 8) = a2[1];
  return a1;
}

xpc_object_t sub_10001B168@<X0>(uint64_t a1@<X0>, xpc_object_t *a2@<X1>, xpc_object_t *a3@<X8>)
{
  xpc_dictionary_set_value(**a1, *(a1 + 8), *a2);
  *a3 = *a2;
  result = xpc_null_create();
  *a2 = result;
  return result;
}

sqlite3_stmt **sub_10001B1B4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = 0xAAAAAAAAAAAAAAAALL;
  sub_100016760(&v3, *v1);
  return sub_100011B58(&v3);
}

uint64_t sub_10001B21C(uint64_t a1)
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

uint64_t sub_10001B2A0(void *a1, uint64_t *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v10 = *a2;
    v21[0] = 7;
    v22 = v10;
    sub_10000298C(v21);
    sub_10000298C(v21);
    v11 = *a1;
    sub_10000298C(v21);
    v12 = *v11;
    *v11 = v21[0];
    v21[0] = v12;
    v13 = *(v11 + 8);
    *(v11 + 8) = v22;
    v22 = v13;
    sub_10000298C(v11);
    sub_10000298C(v21);
    sub_1000048FC(&v22, v21[0]);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 8);
    v5 = *v4;
    if (v5 == 2)
    {
      v6 = *(v4 + 1);
      v7 = *(v6 + 8);
      if (v7 >= *(v6 + 16))
      {
        v9 = sub_100025BF0(v6, a2);
      }

      else
      {
        *(v7 + 8) = 0;
        v8 = *a2;
        *v7 = 7;
        *(v7 + 8) = v8;
        sub_10000298C(v7);
        sub_10000298C(v7);
        v9 = v7 + 16;
      }

      *(v6 + 8) = v9;
      return *(*(*(a1[2] - 8) + 8) + 8) - 16;
    }

    else
    {
      if (v5 != 1)
      {
        sub_10011B6A0();
      }

      if (!a1[4])
      {
        sub_100025A08();
      }

      v15 = *a2;
      v19[0] = 7;
      v20 = v15;
      sub_10000298C(v19);
      sub_10000298C(v19);
      v16 = a1[4];
      sub_10000298C(v19);
      v17 = *v16;
      *v16 = v19[0];
      v19[0] = v17;
      v18 = *(v16 + 8);
      *(v16 + 8) = v20;
      v20 = v18;
      sub_10000298C(v16);
      sub_10000298C(v19);
      sub_1000048FC(&v20, v19[0]);
      return a1[4];
    }
  }
}

uint64_t sub_10001B488(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = *(v1 + 8);
  if (**v1 || (sub_10007F8D4(*(v1 + 8), "SELECT modify_event_type, modify_event_defType, modify_event_config FROM eligible_modify_eventdef_view WHERE modify_event_name = ?1;", 1, &v11), v4 = *v1, v5 = v11, v11 = 0, sub_10007FC24(v4, v5), sub_10007FC24(&v11, 0), v2 = *v1, **v1))
  {
    v6 = *(v1 + 16);
    v7 = 1;
    sub_10000BE00(v3, v2, 1, v6);
  }

  else
  {
    v9 = *(v3 + 32);
    v10 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v9)
    {
      if (v10)
      {
        sub_10010E6D0(v9);
      }
    }

    else if (v10)
    {
      sub_10010E748();
    }

    return 0;
  }

  return v7;
}

void sub_10001B590(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_10002C654(exception, a1);
}

uint64_t sub_10001B5F0(uint64_t a1)
{
  v1 = a1 + 152;
  v2 = *(a1 + 160);
  if (v2 == a1 + 152)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    memset(__p, 170, sizeof(__p));
    v4 = *(v2 + 16);
    if (*(v4 + 55) < 0)
    {
      sub_1000078D8(__p, *(v4 + 32), *(v4 + 40));
    }

    else
    {
      *__p = *(v4 + 32);
      __p[2] = *(v4 + 48);
    }

    v5 = HIBYTE(__p[2]);
    if (v2 != v1)
    {
      if (SHIBYTE(__p[2]) >= 0)
      {
        v6 = HIBYTE(__p[2]);
      }

      else
      {
        v6 = __p[1];
      }

      if (SHIBYTE(__p[2]) >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      do
      {
        v8 = *(v2 + 16);
        v9 = *(v8 + 55);
        v10 = v9;
        if ((v9 & 0x80u) != 0)
        {
          v9 = *(v8 + 40);
        }

        if (v9 != v6)
        {
          break;
        }

        v13 = *(v8 + 32);
        v11 = v8 + 32;
        v12 = v13;
        v14 = (v10 >= 0 ? v11 : v12);
        if (memcmp(v14, v7, v6))
        {
          break;
        }

        v2 = *(v2 + 8);
      }

      while (v2 != v1);
    }

    if (v5 < 0)
    {
      operator delete(__p[0]);
    }

    ++v3;
  }

  while (v2 != v1);
  return v3;
}

void sub_10001B738(_BYTE *a1@<X8>)
{
  v3 = +[OSASystemConfiguration sharedInstance];
  v2 = [v3 targetAudience];
  sub_10000459C(a1, [v2 UTF8String]);
}

BOOL sub_10001B7CC()
{
  sub_10001B738(v2);
  if (v3 < 0)
  {
    v0 = v2[1] == 8 && *v2[0] == 0x6C616E7265746E49;
    operator delete(v2[0]);
  }

  else
  {
    return v3 == 8 && v2[0] == 0x6C616E7265746E49;
  }

  return v0;
}

void sub_10001B898(int a1)
{
  if (sub_10001B7CC())
  {
    v2 = sub_10002A5A8();
    v3 = v2;
    v4 = HIDWORD(v2);
    v5 = qword_100192DA8;
    if (a1)
    {
      if (os_log_type_enabled(qword_100192DA8, OS_LOG_TYPE_DEBUG))
      {
        sub_10002A684(v3, v4, v5);
      }
    }

    else if (os_log_type_enabled(qword_100192DA8, OS_LOG_TYPE_INFO))
    {
      v6[0] = 67109376;
      v6[1] = v3;
      v7 = 1024;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[MemoryUtils] Memory Footprint: {Current: %d, Peak: %d}", v6, 0xEu);
    }
  }
}

uint64_t sub_10001B98C(uint64_t a1, __int128 *a2, void *a3, uint64_t a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (*(a2 + 23) < 0)
  {
    sub_1000078D8((a1 + 32), *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    *(a1 + 48) = *(a2 + 2);
    *(a1 + 32) = v7;
  }

  v8 = a3[1];
  *(a1 + 56) = *a3;
  *(a1 + 64) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = a4;
  return a1;
}

unsigned __int8 *sub_10001BA24(unsigned __int8 *result, unint64_t a2)
{
  v2 = (*(result + 1) - *result) >> 4;
  if (a2 > v2)
  {
    return sub_10001BBC4(result, a2 - v2);
  }

  if (a2 < v2)
  {
    return sub_100013F0C(result, (*result + 16 * a2));
  }

  return result;
}

uint64_t sub_10001BA54(uint64_t a1, unsigned __int8 **a2)
{
  if (((*(*a1 + 72))(a1) & 1) == 0)
  {
    sub_100127878();
  }

  v4 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v6 += sub_10001BDA4(v4);
      v4 += 16;
    }

    while (v4 != v5);
  }

  v8 = a2[3];
  v7 = a2[4];
  while (v8 != v7)
  {
    v6 += sub_10001BDA4(v8);
    v8 += 16;
  }

  v9 = *(*a1 + 80);

  return v9(a1, v6);
}

uint64_t sub_10001BB3C(_DWORD *a1, uint64_t a2)
{
  result = (*(*a1 + 72))(a1);
  if ((result & 1) == 0)
  {
    __assert_rtn("updateStorageBudget", "Transform.cpp", 262, "initialized()");
  }

  a1[31] = (a1[31] + a2) & ~((a1[31] + a2) >> 63);
  return result;
}

unsigned __int8 *sub_10001BBC4(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {

    return sub_1000E3E3C(a1, a2);
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      sub_10002C63C();
    }

    v8 = v6 >> 4;
    v9 = v4 - *a1;
    if (v9 >> 3 > v7)
    {
      v7 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v18 = a1;
    if (v10)
    {
      sub_10000BC18(a1, v10);
    }

    *&v16 = 0;
    *(&v16 + 1) = 16 * v8;
    v17 = (16 * v8);
    sub_10001BD44(&v16, a2);
    v12 = *(a1 + 8);
    v13 = *(&v16 + 1) + *a1 - v12;
    sub_10000BB08(a1, *a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    v15 = *(a1 + 16);
    *(a1 + 8) = v17;
    *&v17 = v14;
    *(&v17 + 1) = v15;
    *&v16 = v14;
    *(&v16 + 1) = v14;
    return sub_10000BC60(&v16);
  }
}

unsigned __int8 *sub_10001BD44(unsigned __int8 *result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 2);
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

  *(v2 + 2) = v3;
  return result;
}

uint64_t sub_10001BDA4(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 7u:
        return 8;
      case 4u:
        return 1;
      case 3u:
        sub_100010390(a1, __p);
        if ((SBYTE7(v16) & 0x80000000) == 0)
        {
          return BYTE7(v16) + 1;
        }

        i = (LODWORD(__p[1]) + 1);
        operator delete(__p[0]);
        return i;
    }

    return 8 * (v2 - 5 < 3);
  }

  if (v2 == 1)
  {
    v17 = 0xAAAAAAAAAAAAAAAALL;
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *__p = v8;
    v16 = v8;
    sub_10000DEC4(__p, a1);
    sub_10000DF14(__p);
    v14 = 0xAAAAAAAAAAAAAAAALL;
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v12 = v9;
    v13 = v9;
    sub_10000DEC4(&v12, a1);
    sub_10000DCFC(&v12);
    i = 0;
    if (!sub_10000DD7C(__p, &v12))
    {
      sub_100088A20(__p);
      sub_100006C9C(v11);
    }
  }

  else
  {
    if (v2 != 2)
    {
      return 8 * (v2 - 5 < 3);
    }

    v17 = 0xAAAAAAAAAAAAAAAALL;
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *__p = v4;
    v16 = v4;
    sub_10000DEC4(__p, a1);
    sub_10000DF14(__p);
    v14 = 0xAAAAAAAAAAAAAAAALL;
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v12 = v5;
    v13 = v5;
    sub_10000DEC4(&v12, a1);
    sub_10000DCFC(&v12);
    for (i = 0; !sub_10000DD7C(__p, &v12); i = (v7 + i))
    {
      v6 = sub_10000DB44(__p);
      v7 = sub_10001BDA4(v6);
      sub_100012BFC(__p);
    }
  }

  return i;
}

BOOL sub_10001BFF4(_DWORD *a1)
{
  sub_100016734(a1);
  sub_10001C33C(a1);
  result = sub_100012C84(a1);
  if (result)
  {
    v3 = 0xAAAAAAAAAAAAAAAALL;
    v4 = 0xAAAAAAAAAAAAAAAALL;
    sub_1000257AC(v5);
  }

  return result;
}

void sub_10001C330(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void **sub_10001C36C(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    os_release(v2);
  }

  return a1;
}

void sub_10001C3A0(uint64_t **a1)
{
  v1 = a1;
  sub_10001C450(**a1, 0);
  operator delete();
}

std::chrono::system_clock::time_point sub_10001C450(uint64_t a1, int a2)
{
  result.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  rep = result.__d_.__rep_;
  v6 = *(a1 + 392);
  v7 = *(a1 + 400);
  if ((a2 & 1) != 0 || (v6 >= result.__d_.__rep_ ? (v8 = v7 == 0) : (v8 = 1), v8))
  {
    if (a2)
    {
      v9 = qword_100192D70;
      if (!os_log_type_enabled(qword_100192D70, OS_LOG_TYPE_INFO))
      {
        goto LABEL_17;
      }

      *buf = 0;
      v10 = "[Transform Cache] Checkpoint initiated (forced)";
      v11 = v9;
      v12 = 2;
    }

    else
    {
      v13 = v6 - result.__d_.__rep_;
      if (v6 >= result.__d_.__rep_)
      {
        if (v7)
        {
          goto LABEL_17;
        }

        v15 = qword_100192D70;
        if (!os_log_type_enabled(qword_100192D70, OS_LOG_TYPE_INFO))
        {
          goto LABEL_17;
        }

        *buf = 134217984;
        *v22 = v13 / 1000000;
        v10 = "[Transform Cache] Checkpoint initiated. Persistence event countdown reached. Additional info {throttleTimeRemaining (s): %lld}";
        v11 = v15;
        v12 = 12;
      }

      else
      {
        v14 = qword_100192D70;
        if (!os_log_type_enabled(qword_100192D70, OS_LOG_TYPE_INFO))
        {
          goto LABEL_17;
        }

        *buf = 67109376;
        *v22 = 100000 - v7;
        *&v22[4] = 1024;
        *&v22[6] = 100000;
        v10 = "[Transform Cache] Checkpoint initiated. Persistence time throttle expired. Additional info {eventsSeen: %u, eventsRequired: %u}";
        v11 = v14;
        v12 = 14;
      }
    }

    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, v10, buf, v12);
LABEL_17:
    v16 = *(a1 + 336);
    if (v16 == a1 + 328)
    {
      v17 = 0;
    }

    else
    {
      v17 = 0;
      do
      {
        v17 += (*(**(*(v16 + 16) + 56) + 40))(*(*(v16 + 16) + 56)) ^ 1;
        v16 = *(v16 + 8);
      }

      while (v16 != a1 + 328);
    }

    v18 = qword_100192D70;
    if (os_log_type_enabled(qword_100192D70, OS_LOG_TYPE_INFO))
    {
      v19 = *(a1 + 344);
      *buf = 134218240;
      *v22 = v19;
      *&v22[8] = 1024;
      v23 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "[Transform Cache] Checkpoint %lu transforms attempted to persisted. %u failures.", buf, 0x12u);
    }

    *(a1 + 392) = rep + 60000000;
    *(a1 + 400) = 100000;
    sub_1000D4894();
    sub_1000C58EC(*(a1 + 128), &object);
  }

  *(a1 + 400) = v7 - 1;
  return result;
}

unint64_t sub_10001C6FC(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void sub_10001C7A8(void *a1, uint64_t a2)
{
  v3 = sub_10001E21C(a1 + 16, (*a2 + 16));
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = v3[5];
  v5 = v3[6];
  if (v4 == v5)
  {
    goto LABEL_11;
  }

  v6 = 0;
  do
  {
    v7 = v4[1];
    if (v7)
    {
      v8 = std::__shared_weak_count::lock(v7);
      if (v8)
      {
        v9 = v8;
        if (*v4)
        {
          (*(**v4 + 16))(*v4, a2);
          ++v6;
        }

        sub_10000786C(v9);
      }
    }

    v4 += 2;
  }

  while (v4 != v5);
  if (v6)
  {
    v21 = qword_100192D48;
    if (os_log_type_enabled(qword_100192D48, OS_LOG_TYPE_DEBUG))
    {
      sub_10011BB64(a2, v6, v21);
    }
  }

  else
  {
LABEL_11:
    v10 = a1[21];
    for (i = a1[22]; v10 != i; v10 += 80)
    {
      *&v11 = 0xAAAAAAAAAAAAAAAALL;
      *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v37 = v11;
      v36[6] = 0xAAAAAAAAAAAAAA00;
      v36[3] = 0xAAAAAAAAAAAAAAAALL;
      v36[4] = 0;
      v36[5] = 0;
      v36[7] = 0;
      v36[8] = 0;
      LOBYTE(v37) = 0;
      BYTE8(v37) = 0;
      v38 = 0;
      *v35 = 0u;
      memset(v36, 0, 24);
      v12 = *(*a2 + 39);
      if (v12 >= 0)
      {
        v13 = *a2 + 16;
      }

      else
      {
        v13 = *(*a2 + 16);
      }

      if (v12 >= 0)
      {
        v14 = *(*a2 + 39);
      }

      else
      {
        v14 = *(*a2 + 24);
      }

      v15 = sub_100056C18(v13, v13 + v14, v35, v10, 0);
      v16 = v35[0];
      if (v15 && 0xAAAAAAAAAAAAAAABLL * ((v35[1] - v35[0]) >> 3) >= 2)
      {
        v33 = 0xAAAAAAAAAAAAAAAALL;
        v34 = 0xAAAAAAAAAAAAAAAALL;
        sub_10000FF70(&v33, (*a2 + 40));
        if (0xAAAAAAAAAAAAAAABLL * ((v35[1] - v35[0]) >> 3) >= 2)
        {
          sub_10004BC58(v35, 1uLL, __p);
          v32 = 0;
          v31 = 3;
          operator new();
        }

        v17 = *a2;
        sub_10000459C(__p, "value");
        buf[0] = 0;
        v18 = sub_10004BCAC((v17 + 40), __p, buf);
        if (SHIBYTE(v30) < 0)
        {
          operator delete(__p[0]);
        }

        if (v18 >= 1 && os_log_type_enabled(qword_100192D48, OS_LOG_TYPE_DEBUG))
        {
          sub_100017DF0(__p);
        }

        v19 = *(v10 + 72);
        if (v19)
        {
          v20 = std::__shared_weak_count::lock(v19);
          if (v20)
          {
            if (*(v10 + 64))
            {
              sub_100019D5C((*a2 + 16), &v33);
            }

            sub_10000786C(v20);
          }
        }

        sub_10000298C(&v33);
        sub_1000048FC(&v34, v33);
        v16 = v35[0];
      }

      if (v16)
      {
        v35[1] = v16;
        operator delete(v16);
      }
    }
  }

  v22 = a1[24];
  v23 = a1[25];
  while (v22 != v23)
  {
    v24 = v22[1];
    if (v24)
    {
      v25 = std::__shared_weak_count::lock(v24);
      if (v25)
      {
        v26 = v25;
        if (*v22)
        {
          (*(**v22 + 16))(*v22, a2);
        }

        sub_10000786C(v26);
      }
    }

    v22 += 2;
  }
}

void sub_10001CE48(uint64_t a1)
{
  sub_10000298C((a1 + 64));
  sub_1000048FC((a1 + 72), *(a1 + 64));
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 32);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

__n128 sub_10001CEB8@<Q0>(uint64_t a1@<X1>, unsigned __int8 **a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  while (!sub_100013878(a1, a2))
  {
    v8 = sub_10001CF44(a1);
    sub_10000F8A4(a3, v8);
    sub_100012BFC(a1);
  }

  *a4 = *a1;
  *(a4 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  *(a4 + 24) = result;
  *(a4 + 40) = a3;
  return result;
}

unsigned __int8 *sub_10001CF44(unsigned __int8 **a1)
{
  result = *a1;
  if (!result)
  {
    sub_10011A984();
  }

  v3 = *result;
  if (v3 == 1)
  {
    v6 = a1[1];
    if (v6 == (*(result + 1) + 8))
    {
      sub_10011A958();
    }

    return v6 + 56;
  }

  else if (v3 == 2)
  {
    v5 = *(*(result + 1) + 8);
    result = a1[2];
    if (result == v5)
    {
      sub_10011A92C();
    }
  }

  else
  {
    if (!*result)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      sub_10000459C(v8, "cannot get value");
      sub_10002E87C(214, v8, exception);
    }

    if (a1[4])
    {
      v4 = __cxa_allocate_exception(0x20uLL);
      sub_10000459C(v8, "cannot get value");
      sub_10002E87C(214, v8, v4);
    }
  }

  return result;
}

void sub_10001D0BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15)
  {
    __cxa_free_exception(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10001D0FC(uint64_t a1, uint64_t a2)
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

  v18 = a1;
  if (v7)
  {
    sub_10000BC18(a1, v7);
  }

  v8 = 16 * v2;
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = *a2;
  *(v8 + 8) = *(a2 + 8);
  sub_10000298C(a2);
  *a2 = 0;
  *(a2 + 8) = 0;
  sub_10000298C(v8);
  *&v17 = v8 + 16;
  v9 = *(a1 + 8);
  v10 = v8 + *a1 - v9;
  sub_10000BB08(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_10000BC60(&v15);
  return v14;
}

void sub_10001D23C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000BC60(va);
  _Unwind_Resume(a1);
}

unsigned __int8 **sub_10001D250(unsigned __int8 **result)
{
  v1 = *result;
  if (!*result)
  {
    __assert_rtn("set_begin", "iter_impl.hpp", 174, "m_object != nullptr");
  }

  v2 = *v1;
  if (*v1)
  {
    if (v2 == 2)
    {
      result[2] = **(v1 + 1);
    }

    else if (v2 == 1)
    {
      result[1] = **(v1 + 1);
    }

    else
    {
      result[4] = 0;
    }
  }

  else
  {
    result[4] = 1;
  }

  return result;
}

void sub_10001D2DC(unint64_t *a1, const void **a2, void *a3)
{
  v4 = a1[11];
  if (v4)
  {
    v7 = (*(*v4 + 48))(v4);
    v10[0] = off_1001826F8;
    v10[3] = v10;
    sub_10001237C(a1, a2, v10);
    sub_10001DB04(v10);
    sub_10001E908(a1, a2, v7);
    v8 = (a1 + 12);
    v9 = a1[12];
    if (v9)
    {
      *v8 = *v9;
    }

    else
    {
      v9 = sub_100047DF0(v8);
    }

    sub_10001B98C(v9, a2, a3, v7);
    operator new();
  }

  sub_10002B200();
}

void sub_10001D45C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001DB04(va);
  _Unwind_Resume(a1);
}

void sub_10001D478(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v13 = 0;
  if (sub_10001D5DC(a2, &v13))
  {
    if (*a1 - 5 >= 3)
    {
      v3 = v11;
      v11[0] = 5;
      v12 = v13;
      sub_10000298C(v11);
      sub_10000298C(v11);
      sub_10000298C(v11);
      v7 = *a1;
      *a1 = v11[0];
      v11[0] = v7;
      v8 = *(a1 + 1);
      *(a1 + 1) = v12;
      v12 = v8;
      sub_10000298C(a1);
      sub_10000298C(v11);
      v6 = v11[0];
    }

    else
    {
      v14 = 0xAAAAAAAAAAAAAAAALL;
      sub_10001D684(a1, &v14);
      v3 = v9;
      v9[0] = 5;
      v10 = v13 + v14;
      sub_10000298C(v9);
      sub_10000298C(v9);
      sub_10000298C(v9);
      v4 = *a1;
      *a1 = v9[0];
      v9[0] = v4;
      v5 = *(a1 + 1);
      *(a1 + 1) = v10;
      v10 = v5;
      sub_10000298C(a1);
      sub_10000298C(v9);
      v6 = v9[0];
    }

    sub_1000048FC(v3 + 1, v6);
  }
}

uint64_t sub_10001D5DC(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  if ((v3 - 5) <= 2)
  {
    v6 = 0xAAAAAAAAAAAAAAAALL;
    sub_10001D684(a1, &v6);
    v4 = v6;
LABEL_5:
    *a2 = v4;
    return 1;
  }

  if (v3 == 4)
  {
    LOBYTE(v6) = -86;
    sub_100032734(a1, &v6);
    v4 = v6;
    goto LABEL_5;
  }

  return 0;
}

unsigned __int8 *sub_10001D684(unsigned __int8 *result, uint64_t *a2)
{
  v2 = result;
  v3 = *result;
  if (v3 != 5)
  {
    if (v3 == 7)
    {
      v4 = *(result + 1);
      goto LABEL_6;
    }

    if (v3 != 6)
    {
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
  }

  v4 = *(result + 1);
LABEL_6:
  *a2 = v4;
  return result;
}

void sub_10001D798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_10001D7F8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 != v4)
  {
    if (v3 == 5 && v4 == 7)
    {
      v15 = *(a1 + 1);
    }

    else
    {
      if (v3 == 7 && v4 == 5)
      {
        v17 = *(a1 + 1);
        v18 = *(a2 + 1);
        return v17 < v18;
      }

      if (v3 != 6 || v4 != 7)
      {
        if (v3 != 7 || v4 != 6)
        {
          if ((v3 != 5 || v4 != 6) && (v3 != 6 || v4 != 5))
          {
            result = 0;
            if (v3 > 8 || v4 > 8)
            {
              return result;
            }

            v16 = byte_1001446D5[v3] >= byte_1001446D5[*a2];
            return !v16;
          }

          return *(a1 + 1) < *(a2 + 1);
        }

        v17 = *(a1 + 1);
        v18 = *(a2 + 1);
        return v17 < v18;
      }

      v15 = *(a1 + 1);
    }

    return *(a2 + 1) > v15;
  }

  result = 0;
  if (v3 > 4)
  {
    if (v3 <= 6)
    {
      if (v3 != 5)
      {
        v16 = *(a1 + 1) >= *(a2 + 1);
        return !v16;
      }

      return *(a1 + 1) < *(a2 + 1);
    }

    if (v3 != 7)
    {
      if (v3 != 8)
      {
        return result;
      }

      v19 = *(a1 + 1);
      v20 = *(a2 + 1);
      v21 = *v19;
      v22 = *(v19 + 8);
      v23 = *v20;
      v24 = *(v20 + 8);
      v25 = v22 - v21;
      v26 = v24 - v23;
      if (v24 - v23 >= v22 - v21)
      {
        v27 = v22 - v21;
      }

      else
      {
        v27 = v24 - v23;
      }

      v28 = memcmp(v21, v23, v27);
      v29 = v25 < v26;
      goto LABEL_61;
    }

    v17 = *(a1 + 1);
    v18 = *(a2 + 1);
    return v17 < v18;
  }

  if (v3 > 2)
  {
    if (v3 != 3)
    {
      v16 = a1[8] >= a2[8];
      return !v16;
    }

    v30 = *(a1 + 1);
    v31 = *(a2 + 1);
    v32 = *(v31 + 23);
    v33 = *(v30 + 23);
    if (v33 >= 0)
    {
      v34 = *(v30 + 23);
    }

    else
    {
      v34 = v30[1];
    }

    if (v33 >= 0)
    {
      v35 = v30;
    }

    else
    {
      v35 = *v30;
    }

    if (v32 >= 0)
    {
      v36 = *(v31 + 23);
    }

    else
    {
      v36 = *(v31 + 8);
    }

    if (v32 >= 0)
    {
      v37 = *(a2 + 1);
    }

    else
    {
      v37 = *v31;
    }

    if (v36 >= v34)
    {
      v38 = v34;
    }

    else
    {
      v38 = v36;
    }

    v28 = memcmp(v35, v37, v38);
    v29 = v34 < v36;
LABEL_61:
    if (v28)
    {
      return v28 < 0;
    }

    else
    {
      return v29;
    }
  }

  if (v3 == 1)
  {
    return sub_10008AE28(**(a1 + 1), (*(a1 + 1) + 8), **(a2 + 1), (*(a2 + 1) + 8));
  }

  if (v3 == 2)
  {
    v6 = *(a2 + 1);
    v7 = *v6;
    v8 = v6[1];
    if (*v6 == v8)
    {
      return 0;
    }

    else
    {
      v9 = *(a1 + 1);
      v10 = *v9;
      v11 = v9[1];
      while (v10 != v11 && (sub_10001D7F8(v10, v7) & 1) == 0)
      {
        v12 = sub_10001D7F8(v7, v10);
        result = 0;
        if ((v12 & 1) == 0)
        {
          v10 += 16;
          v7 += 16;
          if (v7 != v8)
          {
            continue;
          }
        }

        return result;
      }

      return 1;
    }
  }

  return result;
}

void sub_10001DAF8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_10001DB04(uint64_t a1)
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

void sub_10001DB84(uint64_t a1)
{
  v1 = dword_100192B08++;
  HIDWORD(v2) = -1030792151 * v1 + 85899344;
  LODWORD(v2) = HIDWORD(v2);
  if ((v2 >> 1) <= 0x51EB850)
  {
    v5 = *(a1 + 192);
    v4 = *(a1 + 196);
    v6 = *(a1 + 184);
    sub_10001B5F0(a1 + 176);
    v7 = *(a1 + 344);
    v8 = v5 + v4;
    v9 = dword_100192B08 % 1000;
    v10 = qword_100192D70;
    if (dword_100192B08 % 1000)
    {
      if (os_log_type_enabled(qword_100192D70, OS_LOG_TYPE_DEBUG))
      {
        v11 = 67110400;
        v12 = v4;
        v13 = 2048;
        v14 = v8;
        v15 = 2048;
        v16 = v4 * 100.0 / v8;
        v17 = 2048;
        v18 = v7;
        v19 = 2048;
        v20 = v7;
        v21 = 2048;
        v22 = v6;
        _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[Transform Manager] Cache performance: {cacheHits: %d / %ld (%.2f%%), keyCount: %zu, nodeCount: %zu, cacheCost: %zu}", &v11, 0x3Au);
      }
    }

    else if (os_log_type_enabled(qword_100192D70, OS_LOG_TYPE_INFO))
    {
      v11 = 67110400;
      v12 = v4;
      v13 = 2048;
      v14 = v8;
      v15 = 2048;
      v16 = v4 * 100.0 / v8;
      v17 = 2048;
      v18 = v7;
      v19 = 2048;
      v20 = v7;
      v21 = 2048;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[Transform Manager] Cache performance: {cacheHits: %d / %ld (%.2f%%), keyCount: %zu, nodeCount: %zu, cacheCost: %zu}", &v11, 0x3Au);
    }

    sub_10001B898(v9 != 0);
  }
}

void sub_10001DD74(uint64_t a1)
{
  v1[0] = 0xAAAAAAAAAAAAAAAALL;
  v1[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v1, (a1 + 8));
  operator new();
}

void sub_10001DE70(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10001DE88(unsigned __int8 *a1)
{
  if (*a1 - 5 >= 2)
  {
    v2 = v10;
    v10[0] = 6;
    v11 = 1;
    sub_10000298C(v10);
    sub_10000298C(v10);
    sub_10000298C(v10);
    v6 = *a1;
    *a1 = v10[0];
    v10[0] = v6;
    v7 = *(a1 + 1);
    *(a1 + 1) = v11;
    v11 = v7;
    sub_10000298C(a1);
    sub_10000298C(v10);
    v5 = v10[0];
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAAALL;
    sub_10001E0A4(a1, &v12);
    v2 = v8;
    v8[0] = 6;
    v9 = v12 + 1;
    sub_10000298C(v8);
    sub_10000298C(v8);
    sub_10000298C(v8);
    v3 = *a1;
    *a1 = v8[0];
    v8[0] = v3;
    v4 = *(a1 + 1);
    *(a1 + 1) = v9;
    v9 = v4;
    sub_10000298C(a1);
    sub_10000298C(v8);
    v5 = v8[0];
  }

  sub_1000048FC(v2 + 1, v5);
}

void sub_10001DFD4(int a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a1 <= 4)
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        sub_1000E32C0(a2, a3);
      }

      else
      {
        sub_10002978C(a2, a3);
      }
    }

    else if (a1 == 1)
    {
      sub_10001DE88(a2);
    }

    else if (a1 == 2)
    {
      sub_10001D478(a2, a3);
    }
  }

  else if (a1 <= 6)
  {
    if (a1 == 5)
    {
      sub_100025D48(a2, a3);
    }

    else
    {
      sub_1000E3158(a2, a3);
    }
  }

  else
  {
    switch(a1)
    {
      case 7:
        sub_1000E3428(a2, a3);
        break;
      case 8:
        sub_1000E3590(a2, a3);
        break;
      case 9:
        sub_100026D48(a2, a3);
        break;
    }
  }
}

unsigned __int8 *sub_10001E0A4(unsigned __int8 *result, unint64_t *a2)
{
  v2 = result;
  v3 = *result;
  if (v3 != 5)
  {
    if (v3 == 7)
    {
      v4 = *(result + 1);
      goto LABEL_6;
    }

    if (v3 != 6)
    {
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
  }

  v4 = *(result + 1);
LABEL_6:
  *a2 = v4;
  return result;
}

void sub_10001E1B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

const void **sub_10001E21C(void *a1, const void **a2)
{
  v4 = sub_10001357C(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (sub_10001706C(a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t *sub_10001E318(uint64_t a1, const void **a2)
{
  v10 = (a1 + 184);
  v11 = (a1 + 184);
  result = sub_10000C010(&v10, a2, a2, &v11, 1, 1);
  v5 = v4;
  if (result != v4)
  {
    do
    {
      v6 = result[2];
      v7 = result;
      if (v6)
      {
        do
        {
          v8 = v6;
          v6 = *(v6 + 8);
        }

        while (v6);
      }

      else
      {
        do
        {
          v9 = v7;
          v7 = *v7;
        }

        while (v9 == v7[2]);
        if (v9[2] == v7)
        {
          v8 = v9;
        }

        else
        {
          v8 = v7;
        }
      }

      v11 = result;
      sub_10001E400((a1 + 176), &v11, &v10);
      result = v8;
    }

    while (v8 != v5);
  }

  return result;
}

uint64_t sub_10001E400@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *a2;
  v6 = *(*a2 + 16);
  if (v6)
  {
    do
    {
      v7 = v6;
      v6 = v6[1];
    }

    while (v6);
  }

  else
  {
    v8 = *a2;
    do
    {
      v9 = v8;
      v8 = *v8;
    }

    while (v9 == v8[2]);
    if (v9[2] == v8)
    {
      v7 = v9;
    }

    else
    {
      v7 = v8;
    }
  }

  if (!*v5)
  {
    __assert_rtn("erase", "bstree.hpp", 1418, "!safemode_or_autounlink || !node_algorithms::unique(to_erase)");
  }

  result = sub_10001E4C0(a1 + 1, *a2);
  --*a1;
  *v5 = 0;
  v5[1] = 0;
  v5[2] = 0;
  *a3 = v7;
  return result;
}

uint64_t sub_10001E4C0(uint64_t *a1, uint64_t a2)
{
  memset(v6, 170, sizeof(v6));
  sub_10001E570(a1, a2, v6);
  if (v6[2] == a2)
  {
    if (!*(a2 + 24))
    {
      return a2;
    }

    goto LABEL_3;
  }

  v4 = *(v6[2] + 6);
  *(v6[2] + 6) = *(a2 + 24);
  if (v4)
  {
LABEL_3:
    sub_10001F134(a1, v6[0], v6[1]);
  }

  return a2;
}

void sub_10001E564(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void *sub_10001E570(void *result, void *a2, void *a3)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = v4;
  if (v3 && (v5 = a2[1], v4))
  {
    v6 = a2[2];
    do
    {
      v7 = v6;
      v6 = v6[1];
    }

    while (v6);
    v5 = v7[2];
    v8 = *a2;
    v9 = (*a2 + 8);
    v10 = *v9;
    v11 = *v9 == a2;
    if (v7 != a2)
    {
      *v3 = v7;
      v7[1] = v3;
      v12 = v7;
      if (v7 != v4)
      {
        v7[2] = v4;
        *v4 = v7;
        v12 = *v7;
        if (*(*v7 + 8) != v7)
        {
          sub_10011B7F0();
        }

        if (v5)
        {
          *v5 = v12;
        }

        v12[1] = v5;
      }

      *v7 = v8;
      v13 = v8 + 2;
      if (v10 == a2)
      {
        v13 = v9;
      }

      if (v8 == result)
      {
        v14 = result;
      }

      else
      {
        v14 = v13;
      }

      *v14 = v7;
      v8 = v12;
      goto LABEL_35;
    }
  }

  else
  {
    v8 = *a2;
    v9 = (*a2 + 8);
    v11 = *v9 == a2;
    v7 = a2;
  }

  if (v5)
  {
    *v5 = v8;
  }

  if (!v11)
  {
    v9 = v8 + 2;
  }

  if (v8 == result)
  {
    v9 = result;
  }

  *v9 = v5;
  if (result[1] == a2)
  {
    if (v3)
    {
      sub_10011B81C();
    }

    v15 = v8;
    if (v4)
    {
      v16 = v4;
      do
      {
        v15 = v16;
        v16 = v16[1];
      }

      while (v16);
    }

    result[1] = v15;
  }

  if (result[2] == a2)
  {
    if (v4)
    {
      sub_10011B848();
    }

    for (i = v8; v3; v3 = v3[2])
    {
      i = v3;
    }

    result[2] = i;
  }

LABEL_35:
  *a3 = v5;
  a3[2] = v7;
  if (v5 && *v5 != v8)
  {
    sub_10011B874();
  }

  a3[1] = v8;
  return result;
}

uint64_t sub_10001E6DC(uint64_t (****a1)(void), unint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = a1 + 2;
    if ((v2 & 0x8000000000000000) != 0)
    {
      *v3 = 45;
      v2 = -v2;
      if (v2 >= 0xA)
      {
        v7 = 4;
        v11 = v2;
        while (1)
        {
          if (v11 <= 0x63)
          {
            v7 -= 2;
            goto LABEL_26;
          }

          if (v11 <= 0x3E7)
          {
            break;
          }

          if (v11 >> 4 < 0x271)
          {
            goto LABEL_26;
          }

          v7 += 4;
          v10 = v11 >= 0x186A0;
          v11 /= 0x2710uLL;
          if (!v10)
          {
            v7 -= 3;
            goto LABEL_26;
          }
        }

        --v7;
      }

      else
      {
        v7 = 1;
      }

LABEL_26:
      v8 = v7 + 1;
    }

    else
    {
      if (v2 < 0xA)
      {
        v4 = a1 + 17;
        goto LABEL_35;
      }

      v8 = 4;
      v9 = v2;
      while (1)
      {
        if (v9 <= 0x63)
        {
          v8 -= 2;
          goto LABEL_27;
        }

        if (v9 <= 0x3E7)
        {
          break;
        }

        if (v9 >> 4 < 0x271)
        {
          goto LABEL_27;
        }

        v8 += 4;
        v10 = v9 >= 0x186A0;
        v9 /= 0x2710uLL;
        if (!v10)
        {
          v8 -= 3;
          goto LABEL_27;
        }
      }

      --v8;
    }

LABEL_27:
    if (v8 >= 0x3F)
    {
      sub_10011A2FC();
    }

    v4 = &v3[v8];
    if (v2 < 0x64)
    {
      v12 = v2;
    }

    else
    {
      do
      {
        v12 = v2 / 0x64;
        *(v4 - 1) = *&a00010203040506[2 * (v2 % 0x64) + 200];
        v4 -= 2;
        v13 = v2 >> 4;
        v2 /= 0x64uLL;
      }

      while (v13 > 0x270);
    }

    if (v12 >= 0xA)
    {
      *(v4 - 1) = *&a00010203040506[2 * v12 + 200];
LABEL_36:
      v14 = (**a1)[1];

      return v14();
    }

    LOBYTE(v2) = v12;
LABEL_35:
    *(v4 - 1) = v2 | 0x30;
    goto LABEL_36;
  }

  v5 = ***a1;

  return v5();
}

uint64_t sub_10001E908(unint64_t *a1, const void **a2, uint64_t a3)
{
  v3 = *a1;
  v4 = a1[1] + a3;
  a1[1] = v4;
  if (v4 <= v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      if (!a1[21])
      {
        break;
      }

      v8 = a1[20];
      v9 = v8[2];
      v10 = (v9 + 32);
      v11 = *(a2 + 23);
      if (v11 >= 0)
      {
        v12 = *(a2 + 23);
      }

      else
      {
        v12 = a2[1];
      }

      v13 = *(v9 + 55);
      v14 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v13 = *(v9 + 40);
      }

      if (v12 == v13 && (v11 >= 0 ? (v15 = a2) : (v15 = *a2), (v16 = *v10, v14 >= 0) ? (v17 = (v9 + 32)) : (v17 = *v10), !memcmp(v15, v17, v12)))
      {
        sub_100047C04(a1, v9);
        v19 = *v8;
        v18 = v8[1];
        *(v19 + 8) = v18;
        *v18 = v19;
        --a1[21];
        operator delete(v8);
        sub_10001F480(a1, v9);
        v7 = 1;
      }

      else
      {
        sub_10001EA1C(a1, (v9 + 32));
      }
    }

    while (a1[1] > *a1);
  }

  return v7 & 1;
}

uint64_t sub_10001EA1C(uint64_t a1, const void **a2)
{
  sub_10001E318(a1, a2);
  v5[0] = off_100182778;
  v5[1] = a1;
  v5[3] = v5;
  sub_100012414(a1, a2, v5);
  return sub_10001DB04(v5);
}

void sub_10001EAB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001DB04(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10001EAC8(uint64_t a1)
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
    v4 = (a1 + 160);
    sub_100016A70(&v4);
  }

  sub_100024584(a1);
  return a1;
}

void *sub_10001EB78@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t **a3@<X8>)
{
  if (*a2)
  {
    sub_10011B8CC();
  }

  v6 = a1 + 1;
  v8 = a1 + 1;
  sub_10001EC24(a1 + 1, a2, &v8, 0);
  result = sub_10001EDC4(v6, a2);
  *a3 = a2;
  ++*a1;
  return result;
}

void *sub_10001EC24(const void **a1, void *a2, uint64_t *a3, void *a4)
{
  v8[0] = 0xAAAAAAAAAAAAAA00;
  v8[1] = 0;
  v7 = *a3;
  sub_10001ECB4(a1, a2, &v7, v8, a4);
  sub_10001F0A4(a1, a2, v8);
  return a2;
}

BOOL sub_10001ECB4(const void **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = *a1;
  if (*a1)
  {
    v10 = 0;
    do
    {
      if (!a2)
      {
        sub_10011B7C4();
      }

      v11 = v9;
      ++v10;
      if (sub_10000BFA4(&v14, (a2 + 32), v9 + 4))
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      v9 = v11[v12];
    }

    while (v9);
    if (a5)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
    v11 = a1;
    if (a5)
    {
LABEL_9:
      *a5 = v10;
    }
  }

  if (v11 == a1)
  {
    result = 1;
  }

  else
  {
    if (!a2)
    {
      sub_10011B7C4();
    }

    result = sub_10000BFA4(&v15, (a2 + 32), v11 + 4);
  }

  *a4 = result;
  *(a4 + 8) = v11;
  return result;
}

void *sub_10001EDC4(void *result, uint64_t *a2)
{
  *(a2 + 6) = 0;
  v2 = *a2;
  if (*a2 != result)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 6) == 1 || v3 == result)
      {
        break;
      }

      *(v3 + 6) = 0;
      v5 = v3[1];
      v6 = v5;
      if (v2 == v5)
      {
        v6 = v3[2];
      }

      if (!v6 || *(v6 + 6))
      {
        v7 = v2[1];
        if (v2 == v5)
        {
          if (v7 == a2)
          {
            a2 = v2;
          }

          else
          {
            v8 = a2[1];
            v2[2] = v8;
            if (v8)
            {
              *v8 = v2;
            }

            a2[1] = v2;
            *v2 = a2;
          }

          v10 = *v3;
          v14 = (*v3 + 8);
          v15 = *v14;
          v16 = a2[2];
          v3[1] = v16;
          if (v16)
          {
            *v16 = v3;
          }

          a2[2] = v3;
          *v3 = a2;
          *a2 = v10;
          if (v15 == v3)
          {
            v13 = v14;
          }

          else
          {
            v13 = v10 + 2;
          }
        }

        else
        {
          if (v7 == a2)
          {
            v9 = a2[2];
            v2[1] = v9;
            if (v9)
            {
              *v9 = v2;
            }

            a2[2] = v2;
            *v2 = a2;
            v7 = a2[1];
          }

          else
          {
            a2 = v2;
          }

          v10 = *v3;
          v11 = (*v3 + 8);
          v12 = *v11;
          v3[2] = v7;
          if (v7)
          {
            *v7 = v3;
          }

          *v3 = a2;
          *a2 = v10;
          a2[1] = v3;
          if (v12 == v3)
          {
            v13 = v11;
          }

          else
          {
            v13 = v10 + 2;
          }
        }

        if (v10 == result)
        {
          v13 = result;
        }

        *v13 = a2;
        *(a2 + 6) = 1;
        break;
      }

      *(v6 + 6) = 1;
      *(v2 + 6) = 1;
      v2 = *v3;
      a2 = v3;
    }

    while (*v3 != result);
  }

  *(*result + 24) = 1;
  return result;
}

uint64_t sub_10001EF14(uint64_t (****a1)(void), unint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    if (a2 >= 0xA)
    {
      v6 = 4;
      v7 = a2;
      while (1)
      {
        if (v7 <= 0x63)
        {
          v6 -= 2;
          goto LABEL_15;
        }

        if (v7 <= 0x3E7)
        {
          break;
        }

        if (v7 >> 4 < 0x271)
        {
          goto LABEL_15;
        }

        v8 = v7 >> 5;
        v7 /= 0x2710uLL;
        v6 += 4;
        if (v8 <= 0xC34)
        {
          v6 -= 3;
          goto LABEL_15;
        }
      }

      --v6;
LABEL_15:
      if (v6 >= 0x3F)
      {
        sub_10011A2FC();
      }

      v3 = a1 + v6 + 16;
      if (a2 < 0x64)
      {
        v9 = a2;
      }

      else
      {
        do
        {
          v9 = v2 / 0x64;
          *(v3 - 2) = *&a00010203040506[2 * (v2 % 0x64) + 400];
          v3 -= 2;
          v10 = v2 >> 4;
          v2 /= 0x64uLL;
        }

        while (v10 > 0x270);
      }

      if (v9 >= 0xA)
      {
        *(v3 - 2) = *&a00010203040506[2 * v9 + 400];
LABEL_24:
        v11 = (**a1)[1];

        return v11();
      }

      LOBYTE(v2) = v9;
    }

    else
    {
      v3 = a1 + 17;
    }

    *(v3 - 1) = v2 | 0x30;
    goto LABEL_24;
  }

  v4 = ***a1;

  return v4();
}

void *sub_10001F0A4(void *a1, void *a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (!v3)
  {
    __assert_rtn("insert_commit", "bstree_algorithms.hpp", 1774, "commit_data.node != node_ptr()");
  }

  if (v3 == a1)
  {
    *a1 = a2;
    a1[2] = a2;
    result = a1 + 1;
LABEL_8:
    *result = a2;
    goto LABEL_9;
  }

  if (*a3 == 1)
  {
    v3[1] = a2;
    v6 = a1[1];
    result = a1 + 1;
    v5 = v6;
  }

  else
  {
    v3[2] = a2;
    v7 = a1[2];
    result = a1 + 2;
    v5 = v7;
  }

  if (v3 == v5)
  {
    goto LABEL_8;
  }

LABEL_9:
  a2[1] = 0;
  a2[2] = 0;
  *a2 = v3;
  return result;
}

uint64_t *sub_10001F134(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  if (a3 == result)
  {
    v3 = a2;
    goto LABEL_77;
  }

  while (1)
  {
    v3 = a2;
    a2 = a3;
    if (v3 && *(v3 + 6) != 1)
    {
      a2 = v3;
      goto LABEL_78;
    }

    v4 = a3[1];
    if (v3 == v4)
    {
      break;
    }

    if (!*(v4 + 24))
    {
      *(v4 + 24) = 1;
      *(a3 + 6) = 0;
      v5 = *a3;
      v6 = (*a3 + 8);
      v7 = *v6;
      v8 = *(v4 + 16);
      a3[1] = v8;
      if (v8)
      {
        *v8 = a3;
      }

      *(v4 + 16) = a3;
      *a3 = v4;
      *v4 = v5;
      if (v7 != a3)
      {
        v6 = (v5 + 2);
      }

      v9 = v5 == result ? result : v6;
      *v9 = v4;
      v4 = a3[1];
      if (!v4)
      {
        v35 = 516;
        goto LABEL_83;
      }
    }

    v10 = *(v4 + 8);
    v11 = *(v4 + 16);
    if (v11 && *(v11 + 24) != 1)
    {
      if (v10 && *(v10 + 24) != 1)
      {
LABEL_49:
        *(v4 + 24) = *(a3 + 6);
        *(a3 + 6) = 1;
        goto LABEL_50;
      }

      *(v11 + 24) = 1;
      *(v4 + 24) = 0;
      v19 = *v4;
      v20 = (*v4 + 8);
      v21 = *v20;
      v22 = *(v11 + 8);
      *(v4 + 16) = v22;
      if (v22)
      {
        *v22 = v4;
      }

      *v4 = v11;
      *v11 = v19;
      *(v11 + 8) = v4;
      if (v21 == v4)
      {
        v23 = v20;
      }

      else
      {
        v23 = v19 + 2;
      }

      if (v19 == result)
      {
        v23 = result;
      }

      *v23 = v11;
      v4 = a3[1];
      if (v4)
      {
        v10 = *(v4 + 8);
        *(v4 + 24) = *(a3 + 6);
        *(a3 + 6) = 1;
        if (!v10)
        {
LABEL_51:
          v24 = *a3;
          v25 = (*a3 + 8);
          v26 = *v25;
          v27 = *(v4 + 16);
          a3[1] = v27;
          if (v27)
          {
            *v27 = a3;
          }

          *(v4 + 16) = a3;
          *a3 = v4;
          goto LABEL_71;
        }

LABEL_50:
        *(v10 + 24) = 1;
        goto LABEL_51;
      }

      v35 = 532;
      goto LABEL_83;
    }

    if (v10 && *(v10 + 24) != 1)
    {
      goto LABEL_49;
    }

LABEL_33:
    *(v4 + 24) = 0;
    a3 = *a3;
    if (*a2 == result)
    {
      goto LABEL_78;
    }
  }

  v4 = a3[2];
  if (!v4)
  {
    v35 = 475;
    goto LABEL_83;
  }

  if (!*(v4 + 24))
  {
    *(v4 + 24) = 1;
    *(a3 + 6) = 0;
    v12 = *a3;
    v13 = (*a3 + 8);
    v14 = *v13;
    v15 = *(v4 + 8);
    a3[2] = v15;
    if (v15)
    {
      *v15 = a3;
    }

    *a3 = v4;
    *v4 = v12;
    *(v4 + 8) = a3;
    if (v14 != a3)
    {
      v13 = (v12 + 2);
    }

    v16 = v12 == result ? result : v13;
    *v16 = v4;
    v4 = a3[2];
    if (!v4)
    {
      v35 = 481;
      goto LABEL_83;
    }
  }

  v18 = *(v4 + 8);
  v17 = *(v4 + 16);
  if (!v18 || *(v18 + 24) == 1)
  {
    if (v17 && *(v17 + 24) != 1)
    {
      goto LABEL_66;
    }

    goto LABEL_33;
  }

  if (!v17 || *(v17 + 24) == 1)
  {
    *(v18 + 24) = 1;
    *(v4 + 24) = 0;
    v28 = *v4;
    v29 = (*v4 + 8);
    v30 = *v29;
    v31 = *(v18 + 16);
    *(v4 + 8) = v31;
    if (v31)
    {
      *v31 = v4;
    }

    *(v18 + 16) = v4;
    *v4 = v18;
    *v18 = v28;
    if (v30 == v4)
    {
      v32 = v29;
    }

    else
    {
      v32 = v28 + 2;
    }

    if (v28 == result)
    {
      v32 = result;
    }

    *v32 = v18;
    v4 = a3[2];
    if (v4)
    {
      v17 = *(v4 + 16);
      *(v4 + 24) = *(a3 + 6);
      *(a3 + 6) = 1;
      if (!v17)
      {
        goto LABEL_68;
      }

      goto LABEL_67;
    }

    v35 = 497;
LABEL_83:
    __assert_rtn("rebalance_after_erasure_restore_invariants", "rbtree_algorithms.hpp", v35, "w");
  }

LABEL_66:
  *(v4 + 24) = *(a3 + 6);
  *(a3 + 6) = 1;
LABEL_67:
  *(v17 + 24) = 1;
LABEL_68:
  v24 = *a3;
  v25 = (*a3 + 8);
  v26 = *v25;
  v33 = *(v4 + 8);
  a3[2] = v33;
  if (v33)
  {
    *v33 = a3;
  }

  *a3 = v4;
  *(v4 + 8) = a3;
LABEL_71:
  *v4 = v24;
  if (v26 != a3)
  {
    v25 = (v24 + 2);
  }

  if (v24 == result)
  {
    v34 = result;
  }

  else
  {
    v34 = v25;
  }

  *v34 = v4;
LABEL_77:
  a2 = v3;
  if (v3)
  {
LABEL_78:
    *(a2 + 6) = 1;
  }

  return result;
}

uint64_t sub_10001F480(uint64_t a1, void *a2)
{
  v3 = *(a1 + 56);
  if (!v3)
  {
    sub_10002B200();
  }

  v5 = a2[9];
  (*(*v3 + 48))(v3, a2 + 4, a2 + 7);
  result = sub_100024534((a1 + 96), a2);
  *(a1 + 8) -= v5;
  return result;
}

uint64_t sub_10001F500(uint64_t a1, uint64_t *a2)
{
  v3 = qword_100192D68;
  if (os_log_type_enabled(qword_100192D68, OS_LOG_TYPE_DEBUG))
  {
    sub_10002A468(a2, v3);
  }

  return (*(**a2 + 40))();
}

uint64_t sub_10001F588(uint64_t a1)
{
  if ((*(*a1 + 72))(a1) && *(a1 + 216))
  {
    result = sub_10001F610(a1);
    if (!result)
    {
      return result;
    }

    sub_100024404(a1 + 160, *(a1 + 160));
    sub_10001622C((a1 + 216), 0);
  }

  return 1;
}

uint64_t sub_10001F610(uint64_t a1)
{
  if (((*(*a1 + 72))(a1) & 1) == 0)
  {
    __assert_rtn("persistToStore", "AggregatingTransform.cpp", 178, "initialized()");
  }

  v5 = 0;
  sub_10000459C(__p, "persisting to store");
  v6[0] = off_1001891D0;
  v6[1] = a1;
  v6[2] = &v5;
  v6[3] = v6;
  sub_10000F46C(a1, __p, v6);
  sub_10000E910(v6);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_10001F718(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_10001F724(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_100016734(v1);
  memset(v2, 170, sizeof(v2));
  sub_10001F95C(v1);
}

void sub_10001F93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, char a14)
{
  a11 = &a14;
  sub_100004E54(&a11);
  _Unwind_Resume(a1);
}

void sub_10001F95C(uint64_t a1)
{
  if ((*(*a1 + 72))(a1))
  {
    v1[0] = 0xAAAAAAAAAAAAAAAALL;
    v1[1] = 0xAAAAAAAAAAAAAAAALL;
    sub_100013CA0(v1, 0, 0, 0, 2);
  }

  __assert_rtn("serialize", "AggregatingTransform.cpp", 193, "initialized()");
}

void sub_10001FB0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10002C628(exception_object);
}

void sub_10001FB4C(uint64_t a1)
{
  if (!*a1)
  {
    *a1 = 2;
    operator new();
  }

  if (*a1 == 2)
  {
    v2 = *(a1 + 8);
    if (v2[1] < v2[2])
    {
      sub_100017D9C(v2[1]);
    }

    sub_10001FD28(v2);
  }

  exception = __cxa_allocate_exception(0x20uLL);
  v4 = sub_10002CB3C(a1);
  sub_10000459C(&v7, v4);
  v5 = std::string::insert(&v7, 0, "cannot use emplace_back() with ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v9 = v5->__r_.__value_.__r.__words[2];
  v8 = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  sub_10002C9C4(311, &v8, exception);
}

void sub_10001FD28(void *a1)
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
    sub_100017D9C(16 * v1);
  }

  sub_10002C63C();
}

void sub_10001FE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000BC60(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10001FE6C(uint64_t a1, uint64_t a2)
{
  if (!*a1)
  {
    *a1 = 2;
    operator new();
  }

  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = sub_10002CB3C(a1);
    sub_10000459C(&v9, v6);
    v7 = std::string::insert(&v9, 0, "cannot use push_back() with ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v11 = v7->__r_.__value_.__r.__words[2];
    v10 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    sub_10002C9C4(308, &v10, exception);
  }

  v3 = *(a1 + 8);

  return sub_10000F8A4(v3, a2);
}

void sub_10001FFB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_10002001C(uint64_t a1, int a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  v16 = a4;
  v17 = a2;
  v14 = a6;
  v15 = a5;
  v13[0] = a1;
  v13[1] = a3;
  v13[2] = &v17;
  v13[3] = &v16;
  v13[4] = &v15;
  v13[5] = &v14;
  v13[6] = a9;
  v13[7] = a7;
  v13[8] = a8;
  v10 = sub_100006020((a1 + 24));
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000201A4;
  v18[3] = &unk_1001818F8;
  v18[4] = v9 + 8;
  v18[5] = v13;
  v11 = objc_retainBlock(v18);
  v21 = -86;
  v19 = v11;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002051C;
  block[3] = &unk_1001818D8;
  block[4] = &v21;
  block[5] = &v19;
  dispatch_sync(v10, block);
  LOBYTE(v9) = v21;

  return v9 & 1;
}

void sub_100020188(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000201A4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  sub_100020468(&v12, (v2 + 32));
  if ((v13 & 0x100) == 0)
  {
    if (*(v2 + 32))
    {
      v5 = qword_100192D80;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = *(v1 + 8);
        if (*(v6 + 23) < 0)
        {
          v7 = *v6;
        }

        sqlite3_errmsg(*(v2 + 32));
        sub_100123BF8();
      }
    }

    else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      sub_100123C30(v1);
    }

    goto LABEL_20;
  }

  if (!sub_100023644(v2, **(v1 + 16), *(v1 + 8), **(v1 + 24), **(v1 + 32), **(v1 + 40), *(v1 + 48), *(v1 + 56)))
  {
    goto LABEL_19;
  }

  v3 = **(v1 + 16);
  switch(v3)
  {
    case 3:
      v9 = *(v1 + 64);
      v10 = *(v1 + 48);
      if (sub_1000A3A8C(v2, *(v1 + 8)))
      {
        break;
      }

      goto LABEL_19;
    case 2:
      if (sub_1000A36E8(v2, *(v1 + 8), *(v1 + 64), *(v1 + 48)))
      {
        break;
      }

LABEL_19:
      sub_10005D07C(&v12);
LABEL_20:
      v8 = 0;
      goto LABEL_21;
    case 1:
      v4 = *(v1 + 48);
      if (!sub_100023BE4(v2, *(v1 + 8), *(v1 + 64)))
      {
        goto LABEL_19;
      }

      break;
  }

  v8 = 1;
LABEL_21:
  sub_1000243D8(&v12);
  return v8;
}

BOOL sub_10002037C(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return 0;
  }

  if (sqlite3_exec(*a1, "BEGIN;", 0, 0, 0))
  {
    v3 = *a1;
    v4 = qword_100192D80;
    result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      if (result)
      {
        v12 = sqlite3_errmsg(v3);
        sub_10011BE44(v12, &v13, v4);
        return 0;
      }
    }

    else if (result)
    {
      sub_10011BE80(v4, v5, v6, v7, v8, v9, v10, v11);
      return 0;
    }
  }

  else
  {
    result = 1;
    *(a1 + 9) = 1;
  }

  return result;
}

void sub_10002045C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_100020468(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = 0;
  if (v3)
  {
    sub_10002037C(a1);
  }

  return a1;
}

uint64_t sub_1000204A4(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_1000204E0(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_10002051C(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_100020558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a3;
  v8 = a2;
  v6 = a4;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_10002B200();
  }

  return (*(*v4 + 48))(v4, &v8, &v7, &v6);
}

void sub_1000205E4(uint64_t a1, char **a2, char **a3, char **a4)
{
  v5 = *a2;
  v6 = *a3;
  v7 = *a4;
  v8 = *(a1 + 8);
  sub_10000459C(&v16, *a2);
  if (v17 < 0)
  {
    if (*(&v16 + 1) != 14)
    {
      operator delete(v16);
LABEL_22:
      v13 = qword_100192D48;
      if (os_log_type_enabled(qword_100192D48, OS_LOG_TYPE_ERROR))
      {
        sub_10011F408(v5, v13);
      }

      return;
    }

    v11 = *v16 != 0x5F64656972657571 || *(v16 + 6) != 0x7365746174735F64;
    operator delete(v16);
    if (v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v17 != 14)
    {
      goto LABEL_22;
    }

    if (v16 != 0x5F64656972657571 || *(&v16 + 6) != 0x7365746174735F64)
    {
      goto LABEL_22;
    }
  }

  v12 = *(a1 + 16);
  sub_10000459C(&v16, v6);
  sub_10000459C(__p, v7);
  sub_10002079C(v8, v12, &v16, __p);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (v17 < 0)
  {
    operator delete(v16);
  }
}

void sub_100020778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10002079C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v5 = *(a3 + 23);
  if (v5 < 0)
  {
    if (*(a3 + 8) != 13)
    {
      v7 = qword_100192D48;
      if (!os_log_type_enabled(qword_100192D48, OS_LOG_TYPE_ERROR))
      {
        return;
      }

LABEL_15:
      v4 = *v4;
LABEL_16:
      *buf = 136315138;
      *&buf[4] = v4;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[ModifyEventManager] ERROR: Invalid defType for queried state: %s", buf, 0xCu);
      return;
    }

    v6 = *a3;
  }

  else
  {
    v6 = a3;
    if (v5 != 13)
    {
      v7 = qword_100192D48;
      if (!os_log_type_enabled(qword_100192D48, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_16;
    }
  }

  v8 = *v6;
  v9 = *(v6 + 5);
  if (v8 != 0x6572707865627573 || v9 != 0x6E6F697373657270)
  {
    v7 = qword_100192D48;
    if (!os_log_type_enabled(qword_100192D48, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v15 = 0xAAAAAAAAAAAAAAAALL;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v18 = 0;
  sub_100020E24(a4, buf, 1, &v15);
  sub_100004FBC(buf);
  v14[0] = &v15;
  memset(&v14[1], 0, 24);
  v14[4] = 0x8000000000000000;
  sub_10001D250(v14);
  v13[0] = &v15;
  memset(&v13[1], 0, 24);
  v13[4] = 0x8000000000000000;
  sub_1000137F8(v13);
  if (!sub_100013878(v14, v13))
  {
    sub_10001CF44(v14);
    v11 = *(a1 + 72);
    sub_10000459C(buf, "");
    sub_100020F58();
  }

  sub_10000298C(&v15);
  sub_1000048FC(&v16, v15);
}

void sub_100020D48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  if (a2)
  {
    sub_100004FBC(v58 - 208);
    if (a2 == 2)
    {
      __cxa_begin_catch(exception_object);
      a26 = 0;
      a27 = 0;
      sub_10000298C(&a26);
      sub_10000298C(&a26);
      __cxa_end_catch();
      JUMPOUT(0x100020904);
    }

    sub_10002C628(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100020E24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = 0xAAAAAAAAAAAAAAAALL;
  *(a4 + 8) = 0;
  *a4 = 0;
  sub_10000298C(a4);
  sub_10000298C(a4);
  v8 = *(a1 + 23);
  v9 = *a1;
  v10 = *(a1 + 8);
  sub_100003538(v14, a2);
  if ((v8 & 0x80u) == 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = v9;
  }

  if ((v8 & 0x80u) == 0)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  sub_100003320(v11, v11 + v12, v14, a3, v15);
  sub_100005A24(v15, 1, a4);
  sub_10000797C(&v16);
  sub_100004FBC(v15);
  return sub_100004FBC(v14);
}

void sub_100020F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_10000797C(v14 + 40);
  sub_100004FBC(&a13);
  sub_100004FBC(&a9);
  sub_10002C5F4(v13);
  _Unwind_Resume(a1);
}

void sub_10002103C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, char a12)
{
  sub_1000B0E98(&a12);
  sub_10002C5F4(&a9);
  _Unwind_Resume(a1);
}

void sub_100021068(void **a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = 0uLL;
  v10 = 0;
  sub_100013B60(&v9, a2);
  sub_10002112C(a1, &v9, a3, a4, a5);
  v11 = &v9;
  sub_1000131F8(&v11);
}

void sub_100021114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000131F8(va);
  _Unwind_Resume(a1);
}

void sub_10002112C(void **a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *a2;
  v11 = *(a2 + 2);
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  memset(v12, 0, sizeof(v12));
  v6 = a3[1];
  v13 = *a3;
  v14 = v6;
  v15 = 0xAAAAAAAAAAAAAAAALL;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  LODWORD(v15) = 0;
  sub_10000F91C(a1, &v10, a4);
  if (*&v12[0] != *(&v12[0] + 1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Stack evaluation was expected to be empty");
  }

  v7 = *v10 + 40;
  *a5 = *v7;
  *(a5 + 8) = *(v7 + 8);
  sub_10000298C(v7);
  *v7 = 0;
  *(v7 + 8) = 0;
  sub_10000298C(a5);
  if (v14)
  {
    sub_10000786C(v14);
  }

  v9 = v12;
  sub_100004E54(&v9);
  v9 = &v10;
  sub_1000131F8(&v9);
}

void sub_100021284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  __cxa_free_exception(v11);
  sub_1000358F0(&a11);
  _Unwind_Resume(a1);
}

void sub_1000212A8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  v3 = *(a2 + 64);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = 0xAAAAAAAAAAAAAAAALL;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  sub_100022D90(a2, &v13);
  memset(&__p, 170, sizeof(__p));
  sub_1000170E4(a2, &__p);
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v11 = 0xAAAAAAAAAAAAAAAALL;
  (*(*v4 + 16))(&v10, v4, &__p, &v13);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v18 = p_p;
  v17 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v16[0] = v6;
  v16[1] = v6;
  sub_10000BD10(&v10, &v18, v16);
  v15[0] = &v10;
  memset(&v15[1], 0, 24);
  v15[4] = 0x8000000000000000;
  sub_10000DCFC(v15);
  if (sub_10000DD7C(v16, v15))
  {
    v7 = sub_100016CD8();
    if (!v7)
    {
      LOBYTE(v16[0]) = 0;
      *(&v16[0] + 1) = 0;
      sub_10000298C(v16);
      sub_10000298C(v16);
      sub_10000F8A4(a2 + 24, v16);
      sub_10000298C(v16);
      sub_1000048FC(v16 + 1, LOBYTE(v16[0]));
      goto LABEL_14;
    }
  }

  else
  {
    v7 = sub_10000DB44(v16);
  }

  v8 = *(a2 + 32);
  if (v8 >= *(a2 + 40))
  {
    v9 = sub_100016F28(a2 + 24, v7);
  }

  else
  {
    sub_10000FF70(*(a2 + 32), v7);
    v9 = v8 + 16;
    *(a2 + 32) = v8 + 16;
  }

  *(a2 + 32) = v9;
LABEL_14:
  sub_10000298C(&v10);
  sub_1000048FC(&v11, v10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_10000298C(&v13);
  sub_1000048FC(&v14, v13);
  if (v3)
  {
    sub_10000786C(v3);
  }
}

void sub_1000214C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  sub_10002C5F4(&a24);
  sub_10002C5F4(&a9);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_10002C5F4(&a17);
  if (v24)
  {
    sub_10000786C(v24);
  }

  _Unwind_Resume(a1);
}

void sub_100021534(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  sub_10000298C(&v5);
  v3 = *v2;
  *v2 = v5;
  LOBYTE(v5) = v3;
  v4 = *(v2 + 8);
  *(v2 + 8) = v6;
  v6 = v4;
  sub_10000298C(v2);
  sub_10000298C(&v5);
  sub_1000048FC(&v6, v5);
}

void sub_1000215EC(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  sub_10000298C(&v5);
  v3 = *v2;
  *v2 = v5;
  LOBYTE(v5) = v3;
  v4 = *(v2 + 8);
  *(v2 + 8) = v6;
  v6 = v4;
  sub_10000298C(v2);
  sub_10000298C(&v5);
  sub_1000048FC(&v6, v5);
}

void sub_1000216A4(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  sub_10000298C(&v5);
  v3 = *v2;
  *v2 = v5;
  LOBYTE(v5) = v3;
  v4 = *(v2 + 8);
  *(v2 + 8) = v6;
  v6 = v4;
  sub_10000298C(v2);
  sub_10000298C(&v5);
  sub_1000048FC(&v6, v5);
}

void sub_10002175C(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  sub_10000298C(&v5);
  v3 = *v2;
  *v2 = v5;
  LOBYTE(v5) = v3;
  v4 = *(v2 + 8);
  *(v2 + 8) = v6;
  v6 = v4;
  sub_10000298C(v2);
  sub_10000298C(&v5);
  sub_1000048FC(&v6, v5);
}

void sub_100021814(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1[1];
  v3 = v1[2];
  sub_100021824(*v1);
}

void sub_100021824(uint64_t a1)
{
  *&v1 = 0xAAAAAAAAAAAAAAAALL;
  *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v5 = v1;
  v6 = v1;
  v4 = v1;
  (*(**(a1 + 32) + 32))(&v4);
  if (BYTE8(v6))
  {
    v2.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (BYTE8(v6) == 1)
    {
      v3 = 0x7FFFFFFFFFFFFFFFLL;
      if (*(&v5 + 1) >= 1)
      {
        v3 = v5 + *(&v5 + 1);
      }

      if (v2.__d_.__rep_ < v3)
      {
        if (v4)
        {
          sub_100006C9C(v7);
        }

        sub_1000257AC(v7);
      }
    }

    sub_1000257AC(v7);
  }

  sub_1000257AC(v7);
}