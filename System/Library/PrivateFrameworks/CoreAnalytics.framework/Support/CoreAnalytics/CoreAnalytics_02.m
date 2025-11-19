void sub_100021FAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  v37 = -96;
  v38 = v34;
  do
  {
    v38 = sub_10003E1D0(v38) - 32;
    v37 += 32;
  }

  while (v37);
  v39 = &a30;
  v40 = -64;
  do
  {
    v39 = sub_10003E1D0(v39) - 32;
    v40 += 32;
  }

  while (v40);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v41 = (v35 - 152);
  v42 = -64;
  do
  {
    v41 = sub_10003E1D0(v41) - 32;
    v42 += 32;
  }

  while (v42);
  for (i = 32; i != -32; i -= 32)
  {
    sub_10003E1D0((v35 - 120 + i));
  }

  sub_100072584(&a16);
  _Unwind_Resume(a1);
}

void sub_100022490(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_10002249C(__int128 *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (*a2 == 1 && *(*(a2 + 8) + 16))
  {
    sub_10000FF70(v5, a2);
  }

  else
  {
    v5[0] = 0;
    v6 = 0;
    sub_10000298C(v5);
    sub_10000298C(v5);
  }

  sub_10002257C(a3, a1, v5);
  sub_10000298C(v5);
  sub_1000048FC(&v6, v5[0]);
}

_BYTE *sub_10002257C(_BYTE *__dst, __int128 *a2, unsigned __int8 *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000078D8(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  sub_10000FF70(__dst + 24, a3);
  return __dst;
}

void sub_1000225DC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1000227F8(_BYTE *__dst, __int128 *a2)
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

void sub_100022854(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100022870(uint64_t a1, char *a2)
{
  v2 = -86;
  sub_10000DAE8(&v2, a2);
  sub_10002292C();
}

uint64_t sub_1000229BC(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 40) = 0;
  if (*(a2 + 40) == 1)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    sub_10000298C(a2);
    *a2 = 0;
    *(a2 + 8) = 0;
    sub_10000298C(a1);
    v4 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v4;
    *(a1 + 40) = 1;
  }

  return a1;
}

uint64_t sub_100022A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      sub_10002315C(v4, v6);
      v6 += 32;
      v4 = v9 + 16;
      v9 += 16;
    }

    while (v6 != a3);
  }

  LOBYTE(v11) = 1;
  sub_10000BCC4(v10);
  return v4;
}

void sub_100022AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10000BCC4(va);
  _Unwind_Resume(a1);
}

void sub_100022B0C(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  sub_100023200();
}

void sub_100022B58(uint64_t a1, uint64_t a2)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  sub_100024E50(a2, &v13);
  memset(&v12, 170, sizeof(v12));
  sub_1000170E4(a2, &v12);
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v3;
  v11 = v3;
  sub_1000176A8(a2, &v12, __p);
  if (__p[0] == *(a2 + 8))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Operation 'setEventField' tried to set field on non-existent event");
  }

  v8[0] = v13;
  v9 = v14;
  sub_10000298C(&v13);
  LOBYTE(v13) = 0;
  v14 = 0;
  sub_10000298C(v8);
  v4 = sub_10002325C(*__p[0] + 40, &__p[1]);
  sub_10000298C(v8);
  v5 = *v4;
  *v4 = v8[0];
  v8[0] = v5;
  v6 = *(v4 + 8);
  *(v4 + 8) = v9;
  v9 = v6;
  sub_10000298C(v4);
  sub_10000298C(v8);
  sub_1000048FC(&v9, v8[0]);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  sub_10000298C(&v13);
  sub_1000048FC(&v14, v13);
}

void sub_100022D24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  sub_10002C5F4((v23 - 56));
  _Unwind_Resume(a1);
}

uint64_t sub_100022D90@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v3 = a1 + 24;
  if (*(a1 + 24) == v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1000E8F08(exception, "EvaluationContext Stack empty: expected map or null");
    goto LABEL_8;
  }

  v5 = *(v4 - 16);
  if (v5 >= 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1000E8F08(exception, "EvaluationContext Stack type mismatch: expected map or null");
LABEL_8:
  }

  *a2 = 0xAAAAAAAAAAAAAAAALL;
  *a2 = v5;
  *(a2 + 8) = *(v4 - 8);
  sub_10000298C((v4 - 16));
  *(v4 - 16) = 0;
  *(v4 - 8) = 0;
  sub_10000298C(a2);
  v7 = (*(a1 + 32) - 16);

  return sub_100013F0C(v3, v7);
}

void sub_100022E8C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6[0] = a1;
  v6[1] = a2;
  v5 = *(a1 + 24);
  v6[2] = a3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_100021814;
  v7[3] = &unk_1001843F8;
  v7[4] = a1 + 8;
  v7[5] = v6;
  v8 = v7;
  *a4 = 0xAAAAAAAAAAAAAA00;
  *(a4 + 8) = 0;
  sub_10000298C(a4);
  sub_10000298C(a4);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000215EC;
  block[3] = &unk_100184418;
  block[4] = a4;
  block[5] = &v8;
  dispatch_sync(v5, block);
}

void sub_100022FB0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10[1] = v8;
  v11 = v8;
  v10[0] = v8;
  (*(**(a1 + 8) + 32))(v10);
  if (BYTE8(v11) == 1)
  {
    sub_1000229BC(a4, v10);
  }

  else
  {
    v9 = *(a1 + 24);
    if (v9)
    {
      (*(*v9 + 32))(v9, a2, a3);
    }

    else
    {
      *a4 = 0;
      a4[40] = 0;
    }
  }

  if (BYTE8(v11) == 1)
  {
    sub_10000298C(v10);
    sub_1000048FC(v10 + 1, LOBYTE(v10[0]));
  }
}

unsigned __int8 *sub_1000230D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (*(a1 + 24) == 1)
  {
    *a2 = *v3;
    *(a2 + 8) = *(v3 + 8);
    sub_10000298C(v3);
    *v3 = 0;
    *(v3 + 8) = 0;

    return sub_10000298C(a2);
  }

  else
  {

    return sub_10000FF70(a2, v3);
  }
}

uint64_t sub_10002315C(uint64_t a1, uint64_t a2)
{
  sub_1000230D4(a2, v4);
  *a1 = v4[0];
  *(a1 + 8) = v5;
  sub_10000298C(v4);
  v4[0] = 0;
  v5 = 0;
  sub_10000298C(a1);
  sub_10000298C(v4);
  sub_1000048FC(&v5, v4[0]);
  return a1;
}

uint64_t sub_10002325C(uint64_t a1, const void **a2)
{
  if (!*a1)
  {
    *a1 = 1;
    operator new();
  }

  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = sub_10002CB3C(a1);
    sub_10000459C(&v9, v6);
    v7 = std::string::insert(&v9, 0, "cannot use operator[] with a string argument with ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v11 = v7->__r_.__value_.__r.__words[2];
    v10 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    sub_10002C9C4(305, &v10, exception);
  }

  v3 = *(a1 + 8);
  *&v10 = a2;
  return sub_100005F50(v3, a2) + 56;
}

uint64_t sub_100023420@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v6[0] = v4;
  v6[1] = v4;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  sub_100016ED8(v6, v3);
  sub_10001D250(v6);
  return sub_1000234A4(a2, v6);
}

uint64_t sub_1000234A4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v3;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_10000459C((a1 + 56), "0");
  sub_10000459C((a1 + 80), "");
  return a1;
}

uint64_t sub_100023508@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v6[0] = v4;
  v6[1] = v4;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  sub_100016ED8(v6, v3);
  sub_1000137F8(v6);
  return sub_1000234A4(a2, v6);
}

BOOL sub_100023644(uint64_t a1, int a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6, uint64_t a7, std::chrono::duration<long long, std::ratio<1, 1000000>>::rep *a8)
{
  v16 = (a1 + 176);
  if (*(a1 + 176) || (sub_10007F8D4(a1, "INSERT INTO transform_metadata (transform_uuid, transform_type, transform_budget_used, transform_event_count, rollover_session_id, agg_session_id) VALUES (?1, ?2, ?3, ?4, ?5, (SELECT agg_session_id FROM agg_session WHERE agg_session_period=?6 AND is_active = 1 ORDER BY agg_session_start_timestamp ASC LIMIT 1)) ON CONFLICT(transform_uuid, rollover_session_id) DO UPDATE SET transform_budget_used=?3, transform_event_count=?4 WHERE transform_uuid=?1 AND rollover_session_id=?5", 1, __p), v17 = __p[0], __p[0] = 0, sub_10007FC24(v16, v17), sub_10007FC24(__p, 0), *(a1 + 176)))
  {
    v29 = 0xAAAAAAAAAAAAAAAALL;
    sub_100016760(&v29, v16);
    v28 = 0;
    sub_100023980(a1, v16, 1, a3, &v28);
    __p[0] = a2;
    sub_100023B24(a1, v16, 2, __p, &v28);
    __p[0] = a4;
    sub_100023B24(a1, v16, 3, __p, &v28);
    __p[0] = a5;
    sub_100023B24(a1, v16, 4, __p, &v28);
    sub_100023980(a1, v16, 5, a7, &v28);
    __p[0] = a6;
    sub_100023B24(a1, v16, 6, __p, &v28);
    memset(__p, 170, sizeof(__p));
    sub_100024608(*a8);
    sub_100023980(a1, v16, 7, __p, &v28);
    v18 = sub_100023B68(a1, v16, &v28);
    v19 = v18 == 101;
    if (v18 != 101)
    {
      if (*(a1 + 32))
      {
        v20 = qword_100192D80;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v23 = *(a3 + 23);
          v24 = *a3;
          v25 = sqlite3_errmsg(*(a1 + 32));
          if (v23 >= 0)
          {
            v26 = a3;
          }

          else
          {
            v26 = v24;
          }

          *buf = 136315394;
          v31 = v26;
          v32 = 2080;
          v33 = v25;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "[State Store] Failed to insert transform metadata for uuid='%s'; %s", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_10011FAFC(a3);
      }
    }

    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    sub_100011B58(&v29);
  }

  else
  {
    if (*(a1 + 32))
    {
      v22 = qword_100192D80;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v27 = sqlite3_errmsg(*(a1 + 32));
        sub_10011FB6C(v27, __p);
      }
    }

    else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      sub_10011FBA4();
    }

    return 0;
  }

  return v19;
}

void sub_100023974(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_100023980(int a1, sqlite3_stmt **a2, int a3, uint64_t a4, void *a5)
{
  result = sub_10000BE00(a1, a2, a3, a4);
  v8 = *(a4 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  *a5 += v8;
  return result;
}

uint64_t sub_1000239C8(uint64_t a1, uint64_t a2)
{
  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v5 = sub_10002CB3C(a1);
    sub_10000459C(&v8, v5);
    v6 = std::string::insert(&v8, 0, "cannot use operator[] with a numeric argument with ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v10 = v6->__r_.__value_.__r.__words[2];
    v9 = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    sub_10002C9C4(305, &v9, exception);
  }

  return **(a1 + 8) + 16 * a2;
}

void sub_100023AC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_100023B24(int a1, sqlite3_stmt **a2, int a3, sqlite3_int64 *a4, void *a5)
{
  result = sqlite3_bind_int64(*a2, a3, *a4);
  *a5 += 8;
  return result;
}

uint64_t sub_100023B68(uint64_t a1, sqlite3_stmt **a2, void *a3)
{
  v6 = sqlite3_expanded_sql(*a2);
  sqlite3_free(v6);
  v7 = sqlite3_step(*a2);
  if (v7 == 101)
  {
    *(a1 + 104) += sqlite3_changes64(*(a1 + 32));
    *(a1 + 80) += *a3;
  }

  return v7;
}

BOOL sub_100023BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13[0] = v6;
  v13[1] = v6;
  sub_10000DEC4(v13, a3);
  sub_10000DF14(v13);
  v12 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11[0] = v7;
  v11[1] = v7;
  sub_10000DEC4(v11, a3);
  sub_10000DCFC(v11);
  while (1)
  {
    v8 = sub_10000DD7C(v13, v11);
    if (v8)
    {
      break;
    }

    v9 = sub_10000DB44(v13);
    sub_1000239C8(v9, 0);
    if (!sub_100023D2C(a1, a2))
    {
      break;
    }

    sub_1000239C8(v9, 0);
    sub_1000239C8(v9, 1);
    if (!sub_100023FD0(a1, a2))
    {
      break;
    }

    sub_100012BFC(v13);
  }

  return v8;
}

void sub_100023D20(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_100023D2C(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 216);
  if (*(a1 + 216) || (sub_10007F8D4(a1, "DELETE FROM transform_states WHERE  rollover_session_id=?3 AND transform_metadata_id IN (SELECT transform_metadata_id FROM transform_metadata WHERE (transform_uuid=?1 AND rollover_session_id=?3) LIMIT 1) AND (transform_key=?2)", 1, __p), v5 = __p[0], __p[0] = 0, sub_10007FC24(v4, v5), sub_10007FC24(__p, 0), *(a1 + 216)))
  {
    v10 = 0xAAAAAAAAAAAAAAAALL;
    sub_100016760(&v10, v4);
    v9 = 0;
    sub_100023980(a1, v4, 1, a2, &v9);
    memset(__p, 170, sizeof(__p));
    sub_100017DF0(__p);
  }

  if (*(a1 + 32))
  {
    v7 = qword_100192D80;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = sqlite3_errmsg(*(a1 + 32));
      sub_10011F854(v8, __p);
    }
  }

  else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
  {
    sub_10011F88C();
  }

  return 0;
}

void sub_100023FC4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_100023FD0(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 168);
  if (*(a1 + 168) || (sub_10007F8D4(a1, "INSERT INTO transform_states (transform_metadata_id, transform_key, transform_value, rollover_session_id) VALUES ((SELECT transform_metadata_id FROM transform_metadata WHERE transform_uuid=?1 AND rollover_session_id=?4 LIMIT 1), ?2, ?3, ?4)", 1, v11), v5 = v11[0], v11[0] = 0, sub_10007FC24(v4, v5), sub_10007FC24(v11, 0), *(a1 + 168)))
  {
    v10 = 0xAAAAAAAAAAAAAAAALL;
    sub_100016760(&v10, v4);
    v9 = 0;
    sub_100023980(a1, v4, 1, a2, &v9);
    memset(v11, 170, sizeof(v11));
    sub_100017DF0(v11);
  }

  if (*(a1 + 32))
  {
    v7 = qword_100192D80;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = sqlite3_errmsg(*(a1 + 32));
      sub_10011F95C(v8, v11);
    }
  }

  else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
  {
    sub_10011F994();
  }

  return 0;
}

void sub_1000242D8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

BOOL sub_1000242E4(uint64_t a1)
{
  if (*(a1 + 9) != 1 || (*(a1 + 8) & 1) != 0)
  {
    return 0;
  }

  if (!sqlite3_exec(*a1, "END;", 0, 0, 0))
  {
    result = 1;
    *(a1 + 8) = 1;
    return result;
  }

  v3 = *a1;
  v4 = qword_100192D80;
  result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
  if (v3)
  {
    if (result)
    {
      v12 = sqlite3_errmsg(v3);
      sub_10011BF84(v12, &v13, v4);
      return 0;
    }
  }

  else if (result)
  {
    sub_10011BFC0(v4, v5, v6, v7, v8, v9, v10, v11);
    return 0;
  }

  return result;
}

void sub_1000243CC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_100024404(uint64_t a1, void **a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    do
    {
      v5 = v4 - 6;
      v6 = v4 - 3;
      sub_100004E54(&v6);
      v6 = v5;
      sub_100004E54(&v6);
      v4 = v5;
    }

    while (v5 != a2);
  }

  *(a1 + 8) = a2;
}

uint64_t sub_1000244C4(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_10000786C(v2);
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*a1)
  {
    __assert_rtn("destructor_impl", "generic_hook.hpp", 48, "!hook.is_linked()");
  }

  return a1;
}

uint64_t sub_100024534(void **a1, void *a2)
{
  result = sub_1000244C4(a2);
  for (i = *a1; i && i <= a2; i = *i)
  {
    a1 = i;
  }

  *a2 = i;
  *a1 = a2;
  return result;
}

uint64_t sub_100024584(uint64_t a1)
{
  *a1 = off_100188210;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  sub_10000298C((a1 + 56));
  sub_1000048FC((a1 + 64), *(a1 + 56));
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_10000786C(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

uint64_t sub_100024608(std::chrono::duration<long long, std::ratio<1, 1000000>>::rep a1)
{
  __t.__d_.__rep_ = a1;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  *&v1 = 0xAAAAAAAAAAAAAAAALL;
  *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v17 = v1;
  v18 = v1;
  v15 = v1;
  v16 = v1;
  v13 = v1;
  v14 = v1;
  v11 = v1;
  v12 = v1;
  v9 = v1;
  v10 = v1;
  *__p = v1;
  v8 = v1;
  v6[1] = v1;
  v6[2] = v1;
  v5 = v1;
  v6[0] = v1;
  sub_100024800(&v5);
  v3 = std::chrono::system_clock::to_time_t(&__t);
  gmtime(&v3);
  sub_100024A28(&v5);
  std::stringbuf::str();
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v6);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1000247CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void (__cdecl ***sub_100024800(void (__cdecl ***a1)(std::ostringstream *__hidden this)))(std::ostringstream *__hidden this)
{
  a1[20] = 0;
  *a1 = v3;
  *(*(v3 - 3) + a1) = v2;
  v4 = (*(*a1 - 3) + a1);
  std::ios_base::init(v4, a1 + 1);
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  sub_10002496C((a1 + 1), 16);
  return a1;
}

void sub_100024944(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10002496C(uint64_t a1, int a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_100008C60(a1);
  return a1;
}

void sub_100024A00(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_100024A28(uint64_t a1)
{
  std::ostream::sentry::sentry();
  std::ostream::sentry::~sentry();
  return a1;
}

void sub_100024BD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::locale a11)
{
  if (a2)
  {
    std::ostream::sentry::~sentry();
    __cxa_begin_catch(exception_object);
    std::ios_base::__set_badbit_and_consider_rethrow((v11 + *(*v11 - 24)));
    __cxa_end_catch();
    JUMPOUT(0x100024B94);
  }

  _Unwind_Resume(exception_object);
}

void sub_100024C64(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

uint64_t sub_100024CE8(uint64_t a1, const void **a2)
{
  v3[0] = 0xAAAAAAAAAAAAAAAALL;
  result = *sub_100004728(a1, v3, a2);
  if (!result)
  {
    memset(&v3[1], 170, 24);
    sub_100024DB0();
  }

  return result;
}

uint64_t sub_100024E50@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v3 = a1 + 24;
  if (*(a1 + 24) == v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1000E8F08(exception, "EvaluationContext Stack empty: expected array");
  }

  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v7 = *(v4 - 16);
  v6 = v4 - 16;
  *a2 = v7;
  *(a2 + 8) = *(v6 + 8);
  sub_10000298C(v6);
  *v6 = 0;
  *(v6 + 8) = 0;
  sub_10000298C(a2);
  v8 = (*(a1 + 32) - 16);

  return sub_100013F0C(v3, v8);
}

uint64_t sub_100024F24(unsigned __int8 **a1)
{
  if (!*a1)
  {
    sub_100025780();
  }

  v2 = **a1;
  if (v2 == 1)
  {

    return sub_100024FAC(a1);
  }

  else if (v2 == 2)
  {
    v3 = a1[5];
    if (v3 != a1[6])
    {
      sub_10008CA78((a1 + 7), v3);
      a1[6] = a1[5];
    }

    return (a1 + 7);
  }

  else
  {
    return (a1 + 10);
  }
}

uint64_t sub_100024FAC(void *a1)
{
  if (!*a1)
  {
    sub_10011E1D4();
  }

  if (**a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_10000459C(v3, "cannot use key() for non-object iterators");
    sub_10002E87C(207, v3, exception);
  }

  return a1[1] + 32;
}

void sub_100025080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
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

void sub_1000250C0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9[0] = a1;
  v9[1] = a2;
  v9[2] = a3;
  v6 = sub_100006020((a1 + 24));
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100025228;
  v10[3] = &unk_100186FD8;
  v10[4] = a1 + 8;
  v10[5] = v9;
  v11 = objc_retainBlock(v10);
  v7 = v6;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(a4 + 16) = v8;
  *(a4 + 32) = v8;
  *a4 = v8;
  *a4 = 0;
  *(a4 + 40) = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100025580;
  block[3] = &unk_1001818D8;
  block[4] = a4;
  block[5] = &v11;
  dispatch_sync(v7, block);
}

void sub_100025214(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100025228(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *v3;
  v5 = (*v3 + 152);
  if (*v5 || (sub_10007F8D4(*v3, "SELECT queried_state_value, queried_state_last_modified, queried_state_ttl FROM queried_states WHERE queried_state_name=?1 AND (queried_state_params = '' OR queried_state_params IS NULL OR  queried_state_params=?2) LIMIT 1;", 1, &v12), v6 = v12, v12 = 0, sub_10007FC24(v5, v6), sub_10007FC24(&v12, 0), *(v4 + 152)))
  {
    v11 = 0xAAAAAAAAAAAAAAAALL;
    sub_100016760(&v11, v5);
    sub_10000BE00(v4, v5, 1, v3[1]);
    memset(&v10, 170, sizeof(v10));
    v7 = v3[2];
    sub_100017DF0(&v10);
  }

  if (*(v4 + 32))
  {
    v8 = qword_100192D80;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = sqlite3_errmsg(*(v4 + 32));
      sub_100122270(v9, &v12);
    }
  }

  else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
  {
    sub_1001222A8();
  }

  *a2 = 0;
  a2[40] = 0;
}

void sub_100025580(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v2);
  sub_100025628(*(a1 + 32), &v2);
  if (v3 == 1)
  {
    sub_10000298C(&v2);
    sub_1000048FC(&v2.n128_i64[1], v2.n128_u8[0]);
  }
}

void sub_10002561C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

__n128 sub_100025628(__n128 *a1, __n128 *a2)
{
  if (a1[2].n128_u8[8] == a2[2].n128_u8[8])
  {
    if (a1[2].n128_u8[8])
    {
      v7[0] = a2->n128_u8[0];
      v8 = a2->n128_i64[1];
      sub_10000298C(a2);
      a2->n128_u8[0] = 0;
      a2->n128_u64[1] = 0;
      sub_10000298C(v7);
      sub_10000298C(v7);
      v4 = a1->n128_u8[0];
      a1->n128_u8[0] = v7[0];
      v7[0] = v4;
      v5 = a1->n128_i64[1];
      a1->n128_u64[1] = v8;
      v8 = v5;
      sub_10000298C(a1);
      sub_10000298C(v7);
      sub_1000048FC(&v8, v7[0]);
      result = a2[1];
      a1[2].n128_u8[0] = a2[2].n128_u8[0];
      a1[1] = result;
    }
  }

  else if (a1[2].n128_u8[8])
  {
    sub_10000298C(a1);
    sub_1000048FC(&a1->n128_i64[1], a1->n128_u8[0]);
    a1[2].n128_u8[8] = 0;
  }

  else
  {
    a1->n128_u8[0] = a2->n128_u8[0];
    a1->n128_u64[1] = a2->n128_u64[1];
    sub_10000298C(a2);
    a2->n128_u8[0] = 0;
    a2->n128_u64[1] = 0;
    sub_10000298C(a1);
    result = a2[1];
    a1[2].n128_u8[0] = a2[2].n128_u8[0];
    a1[1] = result;
    a1[2].n128_u8[8] = 1;
  }

  return result;
}

void sub_1000257AC(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  sub_10002358C();
}

void sub_1000257F8(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  sub_1000235E8();
}

uint64_t sub_100025844(void *a1)
{
  v2 = a1[2];
  if (a1[1] == v2)
  {
    v17[0] = 0;
    v18 = 0;
    sub_10000298C(v17);
    sub_10000298C(v17);
    v8 = *a1;
    sub_10000298C(v17);
    v9 = *v8;
    *v8 = v17[0];
    v17[0] = v9;
    v10 = *(v8 + 8);
    *(v8 + 8) = v18;
    v18 = v10;
    sub_10000298C(v8);
    sub_10000298C(v17);
    sub_1000048FC(&v18, v17[0]);
    return *a1;
  }

  else
  {
    v3 = *(v2 - 8);
    v4 = *v3;
    if (v4 == 2)
    {
      v5 = *(v3 + 1);
      v6 = *(v5 + 8);
      if (v6 >= *(v5 + 16))
      {
        v7 = sub_100026554(v5);
      }

      else
      {
        *v6 = 0;
        *(v6 + 8) = 0;
        sub_10000298C(v6);
        sub_10000298C(v6);
        v7 = v6 + 16;
      }

      *(v5 + 8) = v7;
      return *(*(*(a1[2] - 8) + 8) + 8) - 16;
    }

    else
    {
      if (v4 != 1)
      {
        sub_10011B6A0();
      }

      if (!a1[4])
      {
        sub_100025A08();
      }

      v15[0] = 0;
      v16 = 0;
      sub_10000298C(v15);
      sub_10000298C(v15);
      v12 = a1[4];
      sub_10000298C(v15);
      v13 = *v12;
      *v12 = v15[0];
      v15[0] = v13;
      v14 = *(v12 + 8);
      *(v12 + 8) = v16;
      v16 = v14;
      sub_10000298C(v12);
      sub_10000298C(v15);
      sub_1000048FC(&v16, v15[0]);
      return a1[4];
    }
  }
}

void sub_100025BBC()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

uint64_t sub_100025BF0(uint64_t a1, uint64_t *a2)
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

void sub_100025D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000BC60(va);
  _Unwind_Resume(a1);
}

void sub_100025D48(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v13 = 0.0;
  if (sub_100025EAC(a2, &v13))
  {
    if (*a1 - 5 >= 3)
    {
      v3 = v11;
      v11[0] = 7;
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
      v14 = NAN;
      sub_100025F58(a1, &v14);
      v3 = v9;
      v9[0] = 7;
      v10 = v14 + v13;
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

uint64_t sub_100025EAC(unsigned __int8 *a1, double *a2)
{
  v3 = *a1;
  if ((v3 - 5) <= 2)
  {
    v7 = -1;
    sub_100025F58(a1, &v7);
    v4 = *&v7;
LABEL_5:
    *a2 = v4;
    return 1;
  }

  if (v3 == 4)
  {
    LOBYTE(v7) = -86;
    sub_100032734(a1, &v7);
    LOBYTE(v5) = v7;
    v4 = v5;
    goto LABEL_5;
  }

  return 0;
}

unsigned __int8 *sub_100025F58(unsigned __int8 *result, double *a2)
{
  v2 = result;
  v3 = *result;
  switch(v3)
  {
    case 5:
      v4 = *(result + 1);
      break;
    case 7:
      v4 = *(result + 1);
      break;
    case 6:
      v4 = *(result + 1);
      break;
    default:
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

  *a2 = v4;
  return result;
}

void sub_100026078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_1000260D8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
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
      *v8 = 0;
      v8[1] = 0;
      v8[2] = 0;
      *v8 = *v9;
      v8[2] = *(v9 + 16);
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      v8[3] = 0;
      v8[4] = 0;
      v8[5] = 0;
      *(v8 + 3) = *(v9 + 24);
      v8[5] = *(v9 + 40);
      *(v9 + 24) = 0;
      *(v9 + 32) = 0;
      *(v9 + 40) = 0;
      v9 += 48;
      v8 += 6;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_1000261A8(&v11, a2, v7, v6);
}

uint64_t sub_1000261A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v8 = a3 + v7;
      v9 = a4 + v7;
      sub_100014578(a4 + v7 - 48);
      *(v9 - 48) = *(a3 + v7 - 48);
      *(v9 - 32) = *(a3 + v7 - 32);
      *(v8 - 48) = 0;
      *(v8 - 40) = 0;
      *(v8 - 32) = 0;
      sub_100014578(a4 + v7 - 24);
      *(v9 - 24) = *(a3 + v7 - 24);
      *(v9 - 8) = *(a3 + v7 - 8);
      *(v8 - 24) = 0;
      *(v8 - 16) = 0;
      *(v8 - 8) = 0;
      v7 -= 48;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

unint64_t sub_100026250(void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

void sub_100026310(uint64_t a1, uint64_t a2)
{
  v17 = 0xAAAAAAAAAAAAAAAALL;
  v18 = 0xAAAAAAAAAAAAAAAALL;
  sub_100026694(a2, &v17);
  v15 = 0xAAAAAAAAAAAAAAAALL;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  sub_100026890(a2, &v15);
  if (v17)
  {
    v14 = 0xAAAAAAAAAAAAAAAALL;
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v13[0] = v3;
    v13[1] = v3;
    v10 = &v15;
    v11 = 0uLL;
    *&v12 = 0;
    *(&v12 + 1) = 0x8000000000000000;
    sub_10001D250(&v10);
    v7 = &v15;
    v8 = 0uLL;
    *&v9 = 0;
    *(&v9 + 1) = 0x8000000000000000;
    sub_1000137F8(&v7);
    v4 = v10;
    v26 = v11;
    v27 = v12;
    v23 = v8;
    v24 = v9;
    v21 = 0;
    v19 = v11;
    v20 = v12;
    v25 = v10;
    v22 = v7;
    v5 = sub_100026990(&v25, &v22);
    v25 = v4;
    v26 = v19;
    v27 = v20;
    sub_100026A40(&v25, &v17, v5, v13);
    v25 = &v15;
    v26 = 0uLL;
    *&v27 = 0;
    *(&v27 + 1) = 0x8000000000000000;
    sub_10001D250(&v25);
    v6 = sub_100026B94(v13, &v25);
    LOBYTE(v25) = 6;
    *&v26 = v6;
    sub_10000298C(&v25);
    sub_10000298C(&v25);
    sub_10000F8A4(a2 + 24, &v25);
  }

  else
  {
    LOBYTE(v25) = 0;
    *&v26 = 0;
    sub_10000298C(&v25);
    sub_10000298C(&v25);
    sub_10000F8A4(a2 + 24, &v25);
  }

  sub_10000298C(&v25);
  sub_1000048FC(&v26, v25);
  sub_10000298C(&v15);
  sub_1000048FC(&v16, v15);
  sub_10000298C(&v17);
  sub_1000048FC(&v18, v17);
}

void sub_100026510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unsigned __int8 a25, uint64_t a26, unsigned __int8 a27)
{
  sub_10002C5F4((v27 - 96));
  sub_10002C5F4(&a25);
  sub_10002C5F4(&a27);
  _Unwind_Resume(a1);
}

uint64_t sub_100026554(uint64_t a1)
{
  v1 = (*(a1 + 8) - *a1) >> 4;
  v2 = v1 + 1;
  if ((v1 + 1) >> 60)
  {
    sub_10002C63C();
  }

  v4 = *(a1 + 16) - *a1;
  if (v4 >> 3 > v2)
  {
    v2 = v4 >> 3;
  }

  if (v4 >= 0x7FFFFFFFFFFFFFF0)
  {
    v5 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = v2;
  }

  v16 = a1;
  if (v5)
  {
    sub_10000BC18(a1, v5);
  }

  v6 = 16 * v1;
  v13 = 0;
  v14 = v6;
  *(&v15 + 1) = 0;
  *v6 = 0;
  *(v6 + 8) = 0;
  sub_10000298C(v6);
  sub_10000298C(v6);
  *&v15 = v6 + 16;
  v7 = *(a1 + 8);
  v8 = v6 + *a1 - v7;
  sub_10000BB08(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_10000BC60(&v13);
  return v12;
}

void sub_100026680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000BC60(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_100026694@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  v4 = a1 + 24;
  if (*(a1 + 24) == v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1000E8F08(exception, "EvaluationContext Stack empty: expected number type");
    goto LABEL_13;
  }

  v8 = *(v3 - 16);
  v6 = (v3 - 16);
  v7 = v8;
  if ((v8 - 5) <= 2)
  {
    *a2 = 0xAAAAAAAAAAAAAAAALL;
    *(a2 + 8) = 0xAAAAAAAAAAAAAAAALL;
    sub_10000FF70(a2, v6);
    v9 = (*(a1 + 32) - 16);

    return sub_100013F0C(v4, v9);
  }

  if (v7)
  {
    if (v7 == 4)
    {
      v13 = -86;
      sub_100032734(v6, &v13);
      v11 = v13;
      sub_100013F0C(v4, (*(a1 + 32) - 16));
      *a2 = 5;
      *(a2 + 8) = v11;
      sub_10000298C(a2);
      return sub_10000298C(a2);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_1000E8F08(exception, "EvaluationContext Stack type mismatch: expected number/null type");
LABEL_13:
  }

  sub_100013F0C(a1 + 24, v6);
  *a2 = 0;
  *(a2 + 8) = 0;
  sub_10000298C(a2);

  return sub_10000298C(a2);
}

uint64_t sub_100026890@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v3 = a1 + 24;
  if (*(a1 + 24) == v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1000E8F08(exception, "EvaluationContext Stack empty: expected array");
    goto LABEL_8;
  }

  if (*(v4 - 16) != 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1000E8F08(exception, "EvaluationContext Stack type mismatch: expected array");
LABEL_8:
  }

  *a2 = 0xAAAAAAAAAAAAAAAALL;
  *a2 = 2;
  *(a2 + 8) = *(v4 - 8);
  sub_10000298C((v4 - 16));
  *(v4 - 16) = 0;
  *(v4 - 8) = 0;
  sub_10000298C(a2);
  v6 = (*(a1 + 32) - 16);

  return sub_100013F0C(v3, v6);
}

uint64_t sub_100026990(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 24);
  v3 = *a2;
  v4 = *(a2 + 24);
  v8 = *(a2 + 8);
  v9 = v4;
  v10 = v2;
  v7 = v3;
  v5 = 0;
  while (!sub_100013878(&v10, &v7))
  {
    ++v5;
    sub_100012BFC(&v10);
  }

  return v5;
}

__n128 sub_100026A40@<Q0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    v6 = a3;
    do
    {
      v8 = v6 >> 1;
      v13 = *a1;
      v14 = *(a1 + 8);
      v15 = *(a1 + 24);
      sub_100026B3C(&v13, v6 >> 1);
      v9 = sub_10001CF44(&v13);
      if (sub_10001D7F8(v9, a2))
      {
        v10 = sub_100012BFC(&v13);
        *a1 = *v10;
        v11 = *(v10 + 1);
        *(a1 + 24) = *(v10 + 3);
        *(a1 + 8) = v11;
        v8 = v6 + ~v8;
      }

      v6 = v8;
    }

    while (v8);
  }

  *a4 = *a1;
  *(a4 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  *(a4 + 24) = result;
  return result;
}

unsigned __int8 **sub_100026B3C(unsigned __int8 **result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  if (a2 < 0)
  {
    do
    {
      result = sub_1000DDB30(v3);
    }

    while (!__CFADD__(v2++, 1));
  }

  else if (a2)
  {
    v4 = a2 + 1;
    do
    {
      result = sub_100012BFC(v3);
      --v4;
    }

    while (v4 > 1);
  }

  return result;
}

uint64_t sub_100026B94(unsigned __int8 **a1, uint64_t a2)
{
  if (!*a1)
  {
    sub_1000F7D90();
  }

  v2 = **a1;
  if (v2 == 2)
  {
    return &a1[2][-*(a2 + 16)] >> 4;
  }

  if (v2 == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_10000459C(v5, "cannot use offsets with object iterators");
    sub_10002E87C(209, v5, exception);
  }

  return &a1[4][-*(a2 + 32)];
}

void sub_100026C88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
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

BOOL sub_100026CC4(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      sub_10002EAB0();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

void sub_100026D48(uint64_t a1, unsigned __int8 *a2)
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

void sub_100026DEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100026EB4(&v6);
  v2 = v6;
  v3 = v7;
  if (v6 != v7)
  {
    do
    {
      sub_100027044(v1, *v2, &v5);
      v4 = v5;
      v5 = 0;

      ++v2;
    }

    while (v2 != v3);
    v2 = v6;
  }

  if (v2)
  {
    v7 = v2;
    operator delete(v2);
  }
}

uint64_t sub_100026EB4@<X0>(void *a1@<X8>)
{
  v1 = a1;
  if ((atomic_load_explicit(&qword_100192CD0, memory_order_acquire) & 1) == 0)
  {
    v3 = __cxa_guard_acquire(&qword_100192CD0);
    v1 = a1;
    if (v3)
    {
      v5 = 0;
      qword_100192CC0 = 0;
      unk_100192CC8 = 0;
      qword_100192CB8 = 0;
      sub_1000CE108(&qword_100192CB8, &v5, &v6, 1uLL);
      __cxa_atexit(sub_1000CB3E8, &qword_100192CB8, &_mh_execute_header);
      __cxa_guard_release(&qword_100192CD0);
      v1 = a1;
    }
  }

  *v1 = 0;
  v1[1] = 0;
  v1[2] = 0;
  return sub_100026FC8(v1, qword_100192CB8, qword_100192CC0, (qword_100192CC0 - qword_100192CB8) >> 2);
}

void sub_100026FBC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_100026FC8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1000326F8(result, a4);
  }

  return result;
}

void sub_100027028(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100027044(uint64_t a1@<X0>, uint64_t a2@<X1>, id *a3@<X8>)
{
  *a3 = dispatch_group_create();
  v27 = 0xAAAAAAAAAAAAAAAALL;
  v28 = 0xAAAAAAAAAAAAAAAALL;
  sub_10002722C(a1, a2, &v27);
  if (sub_1000272FC(a1))
  {
    v6 = sub_100006020(a3);
    dispatch_group_enter(v6);

    v7 = v27;
    v8 = *(v27 + 96);
    if (v8 >= *(v27 + 104))
    {
      v9 = sub_1000CD070(v27 + 88, a3);
    }

    else
    {
      *v8 = *a3;
      v9 = (v8 + 1);
    }

    *(v7 + 96) = v9;
    if (v9 - *(v7 + 88) == 8)
    {
      v17 = qword_100192D98;
      if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_DEBUG))
      {
        sub_10002A780(a2, v17, v18, v19, v20, v21, v22, v23);
      }

      [*v7 requestLocation];
    }

    v24 = qword_100192D98;
    if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_DEBUG))
    {
      v25 = kCLLocationAccuracyAggressivePrecisionReduction;
      if (a2)
      {
        v25 = 0xBFF0000000000000;
      }

      v26 = (*(v7 + 96) - *(v7 + 88)) >> 3;
      *buf = 134218240;
      v30 = v25;
      v31 = 2048;
      v32 = v26;
      _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "[LocationManager] Location requests in queue for accuracy %f: %lu", buf, 0x16u);
    }
  }

  else
  {
    v10 = qword_100192D98;
    if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_DEBUG))
    {
      sub_100126020(a2, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  if (v28)
  {
    sub_10000786C(v28);
  }
}

void sub_100027220(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_10002722C(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  if (a2)
  {
    v5 = "AccuracyUnknown";
  }

  else
  {
    v5 = "AccuracyDefault";
  }

  sub_10000459C(__p, v5);
  v6 = sub_100014DA0((a1 + 40), __p);
  if (!v6)
  {
    sub_10002EAC8("unordered_map::at: key not found");
  }

  v7 = v6[6];
  *a3 = v6[5];
  a3[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1000272EC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000272FC(uint64_t a1)
{
  v3 = 0xAAAAAAAAAAAAAAAALL;
  v4 = 0xAAAAAAAAAAAAAAAALL;
  sub_10002722C(a1, 0, &v3);
  v1 = [*v3 authorizationStatus];
  if (v4)
  {
    sub_10000786C(v4);
  }

  return (v1 < 5) & (0x18u >> v1);
}

void sub_100027390(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_10002739C(void *a1, uint64_t *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v10 = *a2;
    v21[0] = 5;
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
        v9 = sub_1000298F4(v6, a2);
      }

      else
      {
        *(v7 + 8) = 0;
        v8 = *a2;
        *v7 = 5;
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
      v19[0] = 5;
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

uint64_t sub_10002757C(char *a1, double a2)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    sub_1000277AC(a1 + 16, (a1 + 80), a2);
  }

  else
  {
    v3 = *a1;
  }

  v4 = *(**a1 + 8);

  return v4();
}

void sub_10002762C(uint64_t a1@<X0>, __int128 *a2@<X1>, dispatch_group_t *a3@<X8>)
{
  v6 = dispatch_group_create();
  *a3 = v6;
  v8 = *a2;
  v9 = a2[1];
  v7 = v6;
  if (v7)
  {
    dispatch_group_enter(v7);
  }

  v10[0] = 0xAAAAAAAAAAAAAAAALL;
  v10[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v10, (a1 + 8));
  operator new();
}

void sub_100027794(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

char *sub_1000277AC(char *a1, uint64_t a2, double a3)
{
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    sub_10011A3D8();
  }

  v3 = a1;
  if ((*&a3 & 0x8000000000000000) != 0)
  {
    a3 = -a3;
    *a1 = 45;
    v3 = a1 + 1;
  }

  if (a3 == 0.0)
  {
    *v3 = 11824;
    result = v3 + 3;
    v3[2] = 48;
  }

  else
  {
    v5 = a2 - v3;
    if (a2 - v3 <= 16)
    {
      sub_10011A3AC();
    }

    v6 = 0;
    sub_100028994(v3, &v6 + 1, &v6, a3);
    if (SHIDWORD(v6) >= 18)
    {
      sub_10011A380();
    }

    if (v5 <= 0x15)
    {
      sub_10011A354();
    }

    if (v5 == 22)
    {
      sub_10011A328();
    }

    return sub_10002929C(v3, SHIDWORD(v6), v6, -4, 15);
  }

  return result;
}

id *sub_1000278B4(id *a1)
{
  v2 = sub_100006020(a1);

  if (v2)
  {
    v3 = sub_100006020(a1);
    dispatch_group_leave(v3);
  }

  v4 = *a1;
  *a1 = 0;

  return a1;
}

uint64_t *sub_10002791C(uint64_t *a1)
{
  v1 = *a1;
  v12 = a1;
  v13 = v1;
  v2 = *v1;
  v21 = *(v1 + 8);
  v22 = *(v1 + 24);
  sub_100028170(v2, &v21);
  v3 = *(v2 + 96);
  if (*(v1 + 8) == 1)
  {
    sub_10000459C(&v21, off_100192800[0]);
    LOBYTE(v19) = 0;
    v20 = 0;
    sub_10000298C(&v19);
    sub_10000298C(&v19);
    v4 = *(v1 + 16);
    v17[0] = 7;
    v18 = v4;
    sub_10000298C(v17);
    sub_10000298C(v17);
    (*(*v3 + 24))(v3, &v21, &v19, v17, 1800, 1);
    sub_10000298C(v17);
    sub_1000048FC(&v18, v17[0]);
    sub_10000298C(&v19);
    sub_1000048FC(&v20, v19);
    if (SBYTE7(v22) < 0)
    {
      operator delete(v21);
    }

    v5 = *(v2 + 96);
    sub_10000459C(&v21, off_100192808[0]);
    LOBYTE(v19) = 0;
    v20 = 0;
    sub_10000298C(&v19);
    sub_10000298C(&v19);
    v6 = *(v1 + 24);
    v17[0] = 7;
    v18 = v6;
    sub_10000298C(v17);
    sub_10000298C(v17);
    (*(*v5 + 24))(v5, &v21, &v19, v17, 1800, 1);
    sub_10000298C(v17);
    sub_1000048FC(&v18, v17[0]);
    sub_10000298C(&v19);
    sub_1000048FC(&v20, v19);
    if (SBYTE7(v22) < 0)
    {
      operator delete(v21);
    }

    v7 = *(v2 + 96);
    sub_10000459C(&__p, "location");
    v14[0] = 0;
    v15 = 0;
    sub_10000298C(v14);
    sub_10000298C(v14);
    sub_10001AAEC(&v19);
  }

  sub_10000459C(&v21, off_100192800[0]);
  (*(*v3 + 32))(v3, &v21);
  if (SBYTE7(v22) < 0)
  {
    operator delete(v21);
  }

  v8 = *(v2 + 96);
  sub_10000459C(&v21, off_100192808[0]);
  (*(*v8 + 32))(v8, &v21);
  if (SBYTE7(v22) < 0)
  {
    operator delete(v21);
  }

  v9 = *(v2 + 96);
  sub_10000459C(&v21, "location");
  (*(*v9 + 32))(v9, &v21);
  if (SBYTE7(v22) < 0)
  {
    operator delete(v21);
  }

  if (!*(v1 + 36))
  {
    v10 = *(v2 + 96);
    sub_10000459C(&v21, "signalEnvironment");
    (*(*v10 + 32))(v10, &v21);
    if (SBYTE7(v22) < 0)
    {
      operator delete(v21);
    }
  }

  sub_1000294E4(v2, *(v1 + 36));
  sub_100029650(&v13);
  return sub_1000120B8(&v12);
}

void sub_100028004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  sub_10002C5F4(&a18);
  if (a37 < 0)
  {
    operator delete(__p);
  }

  sub_10002C5F4(&a24);
  if (*(v37 - 137) < 0)
  {
    operator delete(*(v37 - 160));
  }

  sub_100029650(&a11);
  sub_1000120B8(&a10);
  _Unwind_Resume(a1);
}

void sub_100028170(uint64_t a1, uint64_t a2)
{
  v6 = 0xAAAAAAAAAAAAAAAALL;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  sub_10002722C(a1, *(a2 + 28), &v6);
  v3 = *(a2 + 16);
  v5 = v6;
  v4 = v7;
  *(v6 + 16) = *a2;
  *(v5 + 32) = v3;
  if (v4)
  {

    sub_10000786C(v4);
  }
}

void sub_100028220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v10 = a5;
  v9 = a6;
  v6 = a1 + 8;
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = &v10;
  v8[5] = &v9;
  v7 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000283F0;
  block[3] = &unk_100184438;
  block[4] = v6;
  block[5] = v8;
  dispatch_sync(v7, block);
}

void sub_1000282E0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, char a6)
{
  v14 = 0xAAAAAAAAAAAAAAAALL;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12 = v11;
  v13 = v11;
  sub_10000FF70(&v12, a4);
  *&v13 = std::chrono::system_clock::now();
  *(&v13 + 1) = 1000000 * a5;
  LOBYTE(v14) = a6;
  (*(**(a1 + 32) + 16))(*(a1 + 32), a2, a3, &v12);
  sub_10000298C(&v12);
  sub_1000048FC(&v12 + 1, v12);
}

uint64_t sub_10002840C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v5 = sub_100006020((a1 + 24));
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100028598;
  v9[3] = &unk_1001818F8;
  v9[4] = v4 + 8;
  v9[5] = v8;
  v6 = objc_retainBlock(v9);
  v12 = -86;
  v10 = v6;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002051C;
  block[3] = &unk_1001818D8;
  block[4] = &v12;
  block[5] = &v10;
  dispatch_sync(v5, block);
  LOBYTE(v4) = v12;

  return v4 & 1;
}

void sub_100028548(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100028554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 24);
  if (!v5 || (*(a4 + 32) & 1) == 0)
  {
    v5 = *(a1 + 8);
  }

  return (*(*v5 + 16))();
}

uint64_t sub_100028598(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = (*v1 + 144);
  if (*v3 || (sub_10007F8D4(*v1, "INSERT OR REPLACE INTO queried_states (queried_state_name, queried_state_params, queried_state_value, queried_state_error, queried_state_ttl) VALUES (?1, ?2, ?3, ?4, ?5)", 1, buf), v4 = *buf, *buf = 0, sub_10007FC24(v3, v4), sub_10007FC24(buf, 0), *(v2 + 144)))
  {
    v11 = 0xAAAAAAAAAAAAAAAALL;
    sub_100016760(&v11, v3);
    v10 = 0;
    sub_100023980(v2, v3, 1, v1[1], &v10);
    memset(&v9, 170, sizeof(v9));
    v5 = v1[2];
    sub_100017DF0(&v9);
  }

  if (*(v2 + 32))
  {
    v7 = qword_100192D80;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = sqlite3_errmsg(*(v2 + 32));
      sub_1001221D8(v8, buf);
    }
  }

  else if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
  {
    sub_100122210();
  }

  return 0;
}

uint64_t sub_100028994(uint64_t a1, int *a2, _DWORD *a3, double a4)
{
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    sub_10011A430();
  }

  if (a4 <= 0.0)
  {
    sub_10011A404();
  }

  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11 = v7;
  v12 = v7;
  v10 = v7;
  sub_100028A50(&v10, a4);
  return sub_100028C68(a1, a2, a3, v11, *(&v11 + 1), v10, *(&v10 + 1), v8, v12, *(&v12 + 1));
}

uint64_t sub_100028A50@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    sub_10011A564();
  }

  if (a2 <= 0.0)
  {
    sub_10011A538();
  }

  v3 = (*&a2 & 0xFFFFFFFFFFFFFLL) == 0;
  if (*&a2 >> 52)
  {
    v4 = ((*&a2 >> 52) - 1075) | 0xAAAAAAAA00000000;
  }

  else
  {
    v4 = 0xAAAAAAAAFFFFFBCELL;
  }

  if (*&a2 >> 52)
  {
    v5 = *&a2 & 0xFFFFFFFFFFFFFLL | 0x10000000000000;
  }

  else
  {
    v5 = *&a2 & 0xFFFFFFFFFFFFFLL;
  }

  v6 = *&a2 >> 53 != 0;
  v7 = !v6 || !v3;
  if (v6 && v3)
  {
    v8 = 4 * v5;
  }

  else
  {
    v8 = 2 * v5;
  }

  if (v7)
  {
    v9 = v4 - 1;
  }

  else
  {
    v9 = v4 - 2;
  }

  v18 = v8 - 1;
  v20 = -1431655766;
  v19 = v9;
  v10 = sub_100028BA0((2 * (v5 & 0x3FFFFFFFFFFFFFFFLL)) | 1, (v4 - 1) | 0xAAAAAAAA00000000);
  v12 = v11;
  v13 = sub_100028BF8(&v18, v11);
  v15 = v14;
  result = sub_100028BA0(v5, v4);
  *a1 = result;
  *(a1 + 8) = v17;
  *(a1 + 16) = v13;
  *(a1 + 24) = v15;
  *(a1 + 32) = v10;
  *(a1 + 40) = v12;
  return result;
}

uint64_t sub_100028BA0(uint64_t result, unint64_t a2)
{
  if (!result)
  {
    __assert_rtn("normalize", "to_chars.hpp", 143, "x.f != 0");
  }

  for (; (result & 0x8000000000000000) == 0; a2 = (a2 - 1) | a2 & 0xFFFFFFFF00000000)
  {
    result *= 2;
  }

  return result;
}

unint64_t sub_100028BF8(uint64_t *a1, int a2)
{
  v2 = *(a1 + 2) - a2;
  if (v2 < 0)
  {
    v5 = "delta >= 0";
    v6 = 162;
    goto LABEL_6;
  }

  v3 = *a1;
  result = *a1 << v2;
  if (result >> v2 != v3)
  {
    v5 = "((x.f << delta) >> delta) == x.f";
    v6 = 163;
LABEL_6:
    __assert_rtn("normalize_to", "to_chars.hpp", v6, v5);
  }

  return result;
}

uint64_t sub_100028C68(uint64_t a1, int *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v32[0] = a4;
  v32[1] = a5;
  v31[0] = a6;
  v31[1] = a7;
  v30[0] = a9;
  v30[1] = a10;
  if (a10 != a5)
  {
    sub_10011A590();
  }

  if (a10 != a7)
  {
    sub_10011A5BC();
  }

  v13 = sub_100028DA4(a10);
  v15 = v14;
  v27 = v13;
  v29 = -1431655766;
  v28 = v16;
  v17 = sub_100028E5C(v31, &v27);
  v19 = v18 | 0xAAAAAAAA00000000;
  v20 = sub_100028E5C(v32, &v27);
  v22 = v21;
  v23 = sub_100028E5C(v30, &v27);
  *a3 = -v15;
  return sub_100028EBC(a1, a2, a3, v20 + 1, v22 | 0xAAAAAAAA00000000, v17, v19, v25, v23 - 1, v24 | 0xAAAAAAAA00000000);
}

uint64_t sub_100028DA4(int a1)
{
  if (a1 <= -1501)
  {
    sub_10011A6C4();
  }

  if (a1 >= 1501)
  {
    sub_10011A698();
  }

  v1 = 78913 * (-61 - a1) / 0x40000;
  if (a1 < -61)
  {
    ++v1;
  }

  if (v1 <= -315)
  {
    sub_10011A66C();
  }

  v2 = ((v1 + 307 + (((v1 + 307) >> 28) & 7)) << 16) >> 19;
  if (v2 >= 0x4F)
  {
    sub_10011A5E8();
  }

  v3 = (&unk_10013FBD0 + 16 * v2);
  v4 = v3[1] + a1;
  if (v4 <= -125)
  {
    sub_10011A640();
  }

  if (v4 >= -95)
  {
    sub_10011A614();
  }

  return *v3;
}

unint64_t sub_100028E5C(uint64_t a1, uint64_t a2)
{
  v2 = HIDWORD(*a1);
  v3 = HIDWORD(*a2);
  v4 = v3 * *a1;
  v5 = *a2 * v2;
  v6 = ((*a2 * *a1) >> 32) + v4 + v5;
  v7 = (*(a1 + 8) + *(a2 + 8) + 64);
  return HIDWORD(v5) + v3 * v2 + HIDWORD(v4) + ((v6 + 0x80000000) >> 32);
}

uint64_t sub_100028EBC(uint64_t a1, int *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10)
{
  v47[0] = a4;
  v47[1] = a5;
  v46[0] = a6;
  v46[1] = a7;
  v44 = a9;
  v45 = a10;
  if (a10 <= -61)
  {
    sub_10011A7F8();
  }

  if (a10 >= -31)
  {
    sub_10011A7CC();
  }

  v13 = sub_100029180(&v44, v47);
  v14 = sub_100029180(&v44, v46);
  v15 = -v45;
  v16 = v44 >> -v45;
  if (!v16)
  {
    sub_10011A7A0();
  }

  v17 = v14;
  v18 = 1 << v15;
  v19 = (1 << v15) - 1;
  v20 = v19 & v44;
  if (v16 <= 0x3B9AC9FF)
  {
    if (v16 <= 0x5F5E0FF)
    {
      if (v16 <= 0x98967F)
      {
        if (v16 <= 0xF423F)
        {
          v23 = v16 >> 5;
          v24 = v16 >> 4;
          if (v16 <= 9)
          {
            v25 = 1;
          }

          else
          {
            v25 = 10;
          }

          if (v16 <= 9)
          {
            v26 = 1;
          }

          else
          {
            v26 = 2;
          }

          if (v16 <= 0x63)
          {
            v27 = v26;
          }

          else
          {
            v27 = 3;
          }

          if (v16 <= 0x63)
          {
            v28 = v25;
          }

          else
          {
            v28 = 100;
          }

          if (v16 <= 0x3E7)
          {
            v29 = v27;
          }

          else
          {
            v29 = 4;
          }

          if (v16 <= 0x3E7)
          {
            v30 = v28;
          }

          else
          {
            v30 = 1000;
          }

          if (v24 <= 0x270)
          {
            v31 = v29;
          }

          else
          {
            v31 = 5;
          }

          if (v24 <= 0x270)
          {
            v32 = v30;
          }

          else
          {
            v32 = 10000;
          }

          if (v23 <= 0xC34)
          {
            v22 = v31;
          }

          else
          {
            v22 = 6;
          }

          if (v23 > 0xC34)
          {
            v21 = 100000;
          }

          else
          {
            v21 = v32;
          }
        }

        else
        {
          v21 = 1000000;
          v22 = 7;
        }
      }

      else
      {
        v21 = 10000000;
        v22 = 8;
      }
    }

    else
    {
      v21 = 100000000;
      v22 = 9;
    }
  }

  else
  {
    v21 = 1000000000;
    v22 = 10;
  }

  v33 = v22 + 1;
  do
  {
    v34 = v16 / v21;
    if (v16 / v21 >= 0xA)
    {
      sub_10011A774();
    }

    v16 = v16 % v21;
    v35 = *a2;
    *a2 = v35 + 1;
    *(a1 + v35) = v34 | 0x30;
    if ((v16 << v15) + v20 <= v13)
    {
      *a3 = *a3 + v33 - 2;
      v18 = v21 << v15;
      v40 = *a2;
      v41 = a1;
      v42 = v13;
      v20 += v16 << v15;
      return sub_1000291F0(v41, v40, v17, v42, v20, v18);
    }

    v21 /= 0xAu;
    --v33;
  }

  while (v33 > 1);
  if (v20 <= v13)
  {
    sub_10011A6F0();
  }

  v36 = 0;
  do
  {
    if (v20 >= 0x199999999999999ALL)
    {
      sub_10011A748();
    }

    v37 = (10 * v20) >> v15;
    if (v37 >= 0xA)
    {
      sub_10011A71C();
    }

    v38 = *a2;
    *a2 = v38 + 1;
    *(a1 + v38) = v37 | 0x30;
    v39 = 5 * v13;
    v20 = (10 * v20) & v19;
    v13 *= 10;
    v17 *= 10;
    --v36;
  }

  while (v20 > 2 * v39);
  *a3 += v36;
  v40 = *a2;
  v41 = a1;
  v42 = v13;
  return sub_1000291F0(v41, v40, v17, v42, v20, v18);
}

uint64_t sub_100029180(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    v4 = "x.e == y.e";
    v5 = 66;
LABEL_6:
    __assert_rtn("sub", "to_chars.hpp", v5, v4);
  }

  v2 = *a1 >= *a2;
  result = *a1 - *a2;
  if (!v2)
  {
    v4 = "x.f >= y.f";
    v5 = 67;
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1000291F0(uint64_t result, int a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  if (a2 <= 0)
  {
    sub_10011A8D4();
  }

  if (a3 > a4)
  {
    sub_10011A8A8();
  }

  if (a4 < a5)
  {
    sub_10011A87C();
  }

  if (!a6)
  {
    sub_10011A850();
  }

  v6 = a3 - a5;
  if (a3 > a5 && a4 - a5 >= a6)
  {
    v7 = result - 1;
    v8 = a6 + a5;
    v9 = a4 - (a6 + a5);
    do
    {
      if (v8 >= a3 && v6 <= v8 - a3)
      {
        break;
      }

      v10 = *(v7 + a2);
      if (v10 == 48)
      {
        sub_10011A824();
      }

      *(v7 + a2) = v10 - 1;
      if (v8 >= a3)
      {
        break;
      }

      v6 -= a6;
      v8 += a6;
      v11 = v9 >= a6;
      v9 -= a6;
    }

    while (v11);
  }

  return result;
}

char *sub_10002929C(char *__src, int a2, int a3, int a4, int a5)
{
  if ((a4 & 0x80000000) == 0)
  {
    sub_10011A50C();
  }

  if (a5 <= 0)
  {
    sub_10011A4E0();
  }

  v5 = __src;
  v6 = a2;
  v7 = a3 + a2;
  if ((a3 & 0x80000000) == 0 && v7 <= a5)
  {
    memset(&__src[a2], 48, a3);
    *&v5[v7] = 12334;
    return &v5[v7 + 2];
  }

  if (v7 < 1 || v7 > a5)
  {
    if (v7 > a4 && v7 <= 0)
    {
      v10 = -v7;
      memmove(&__src[v10 + 2], __src, a2);
      *v5 = 11824;
      memset(v5 + 2, 48, v10);
      return &v5[v10 + 2 + v6];
    }

    if (a2 != 1)
    {
      memmove(__src + 2, __src + 1, a2 - 1);
      v5[1] = 46;
      v5 += v6;
    }

    v5[1] = 101;
    if (v7 <= -999)
    {
      sub_10011A4B4();
    }

    if (v7 >= 1001)
    {
      sub_10011A488();
    }

    if (v7 >= 1)
    {
      v11 = 43;
    }

    else
    {
      v11 = 45;
    }

    if (v7 - 1 >= 0)
    {
      v12 = v7 - 1;
    }

    else
    {
      v12 = 1 - v7;
    }

    v5[2] = v11;
    if (v12 > 9)
    {
      if (v12 > 0x63)
      {
        v5[3] = v12 / 0x64u + 48;
        v15 = v12 % 0x64u;
        v13 = v5 + 5;
        v5[4] = (v15 / 0xAu) | 0x30;
        LOBYTE(v12) = v15 % 0xAu;
        v14 = 4;
        goto LABEL_29;
      }

      v13 = v5 + 4;
      v5[3] = (v12 / 0xAu) | 0x30;
      LOBYTE(v12) = v12 % 0xAu;
    }

    else
    {
      v13 = v5 + 4;
      v5[3] = 48;
    }

    v14 = 3;
LABEL_29:
    result = &v5[v14 + 2];
    *v13 = v12 | 0x30;
    return result;
  }

  if ((a3 & 0x80000000) == 0)
  {
    sub_10011A45C();
  }

  v9 = &__src[v7];
  memmove(v9 + 1, v9, a2 - v7);
  *v9 = 46;
  return &v5[v6 + 1];
}

uint64_t sub_1000294A8(int a1, sqlite3_stmt **a2, int a3, void *a4)
{
  result = sqlite3_bind_null(*a2, a3);
  ++*a4;
  return result;
}

void sub_1000294E4(uint64_t a1, uint64_t a2)
{
  v4 = qword_100192D98;
  if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_DEBUG))
  {
    sub_10002AFF8(a2, v4, v5, v6, v7, v8, v9, v10);
  }

  v16 = 0xAAAAAAAAAAAAAAAALL;
  v17 = 0xAAAAAAAAAAAAAAAALL;
  sub_10002722C(a1, a2, &v16);
  v11 = v16;
  [*v16 stopUpdatingLocation];
  v13 = v11[11];
  v14 = v11[12];
  v12 = (v11 + 11);
  if (v13 != v14)
  {
    do
    {
      v15 = sub_100006020(v13);
      dispatch_group_leave(v15);

      ++v13;
    }

    while (v13 != v14);
    v13 = *v12;
  }

  sub_1000295F8(v12, v13);
  if (v17)
  {
    sub_10000786C(v17);
  }
}

void sub_1000295E4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1000295F8(uint64_t a1, id *a2)
{
  for (i = *(a1 + 8); i != a2; *i)
  {
    v5 = *--i;
    *i = 0;
  }

  *(a1 + 8) = a2;
}

uint64_t *sub_100029650(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_1000278B4((v1 + 40));
    operator delete();
  }

  return result;
}

sqlite3_stmt **sub_1000296A0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = 0xAAAAAAAAAAAAAAAALL;
  sub_100016760(&v3, *v1);
  return sub_100011B58(&v3);
}

uint64_t sub_100029708(uint64_t a1)
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

void sub_10002978C(unsigned __int8 *a1, unsigned __int8 *a2)
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
      if (v15 <= v14)
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

uint64_t sub_1000298F4(uint64_t a1, uint64_t *a2)
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

void sub_100029A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000BC60(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_100029A4C(unsigned __int8 *result, unsigned int *a2)
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

void sub_100029B78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_100029BD8(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = a2;
  v5 = [obj countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (v5)
  {
    v6 = *v24;
    v7 = kSCEntNetLinkQuality;
    do
    {
      v8 = 0;
      do
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v23 + 1) + 8 * v8) componentsSeparatedByString:@"/"];
        v10 = [NSMutableArray arrayWithArray:v9];

        if ([v10 count] == 5)
        {
          v11 = [v10 objectAtIndex:4];
          v12 = [v11 isEqualToString:v7];

          if (v12)
          {
            v13 = [v10 objectAtIndex:3];
            if (v4)
            {
              [v4 getQueue];
              v14 = v21;
            }

            else
            {
              v14 = 0;
              v21 = 0;
            }

            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100029EDC;
            block[3] = &unk_100184D00;
            v19 = v4;
            v20 = v13;
            v15 = v13;
            dispatch_async(v14, block);
            v16 = v21;
            v21 = 0;
          }
        }

        v8 = v8 + 1;
      }

      while (v5 != v8);
      v5 = [obj countByEnumeratingWithState:&v23 objects:v22 count:16];
    }

    while (v5);
  }
}

void sub_100029EE8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (*(v5 + 112))
  {
    v6 = nw_path_get_status(v3) & 0xFFFFFFFD;
    v7 = v6 == 1;
    v8 = *(v5 + 112);
    v9 = *(v8 + 8);
    *(v8 + 8) = v7;
    if (v9 != v7)
    {
      v10 = qword_100192D98;
      if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_INFO))
      {
        v11 = "unsatisfied";
        if (v9)
        {
          v12 = "satisfied";
        }

        else
        {
          v12 = "unsatisfied";
        }

        if (v6 == 1)
        {
          v11 = "satisfied";
        }

        *buf = 136446466;
        *&buf[4] = v12;
        *&buf[12] = 2082;
        *&buf[14] = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[LocationManager::NetworkObserver] Network changed detected (prior: %{public}s, current: %{public}s)", buf, 0x16u);
      }

      if (v6 == 1 && sub_1000272FC(v5))
      {
        *&v17 = 0xAAAAAAAAAAAAAAAALL;
        sub_1000CBC40(v5, 0, &v17);
        if ((v17 & 1) == 0)
        {
          v13 = qword_100192D98;
          if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[LocationManager::NetworkObserver] Network newly satisfied and no prior location available. Restarting location timers.", buf, 2u);
          }

          sub_1000CA500(v5);
          sub_1000CB5B0(v5);
        }

        v20 = 0xAAAAAAAAAAAAAAAALL;
        *&v14 = 0xAAAAAAAAAAAAAAAALL;
        *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *buf = v14;
        *&buf[16] = v14;
        sub_1000CBCEC(v5, buf);
        if ((buf[0] & 1) == 0)
        {
          v15 = qword_100192D98;
          if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_INFO))
          {
            *v18 = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[LocationManager::NetworkObserver] Network newly satisfied and no prior market available. Restarting market timer.", v18, 2u);
          }

          sub_1000CA564(v5);
          sub_1000CB6E0(v5);
        }

        if ((buf[31] & 0x80000000) != 0)
        {
          operator delete(*&buf[8]);
        }
      }
    }
  }

  else
  {
    v16 = qword_100192D98;
    if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[LocationManager::NetworkObserver] Network path update handler called after network observer cancelled. Returning early.", buf, 2u);
    }
  }
}

void sub_10002A1AC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t *sub_10002A1C8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 23);
  v4 = *result;
  return result;
}

void sub_10002A1DC(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

uint64_t sub_10002A1F8(uint64_t a1, void *a2, void *a3)
{

  return __cxa_atexit(&std::string::~string, a2, a3);
}

void sub_10002A224(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t *sub_10002A244@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  if (*(result + 23) < 0)
  {
    v3 = *result;
  }

  return result;
}

uint64_t sub_10002A25C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 55);
  return result;
}

uint64_t sub_10002A290@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(*result + 31);
  return result;
}

int *sub_10002A2A4()
{

  return __error();
}

void sub_10002A2BC(uint64_t *a1)
{
  sub_10002A244(a1, __stack_chk_guard);
  sub_10002A330();
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "[Config Store] Retrieving transforms for event with name '%s'", v2, 0xCu);
}

char *sub_10002A33C@<X0>(char *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 8) = a3;
  if (*result < 0)
  {
    v4 = *a2;
  }

  return result;
}

void sub_10002A354(uint64_t *a1, NSObject *a2)
{
  if (*(a1 + 23) >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  v3 = 136315138;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[RolloverSessionManager::processEventHandlers] Open Session ID: %s", &v3, 0xCu);
}

void sub_10002A3DC(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 136315394;
  v4 = a1 + 8;
  v5 = 2114;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[KernelEventToJson] Successfully deserialized: %s - %{public}@", &v3, 0x16u);
}

void sub_10002A468(uint64_t *a1, NSObject *a2)
{
  v4 = sub_10001C33C(*a1);
  if (*(v4 + 23) >= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = *v4;
  }

  v6 = sub_100016734(*a1);
  if (*(v6 + 23) >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = *v6;
  }

  v8 = 136315394;
  v9 = v5;
  v10 = 2080;
  v11 = v7;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[Transform Cache] Eviction callback for transform %s - %s", &v8, 0x16u);
}

unint64_t sub_10002A5A8()
{
  v26 = -1431655766;
  *&v0 = 0xAAAAAAAAAAAAAAAALL;
  *(&v0 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24 = v0;
  v25 = v0;
  v22 = v0;
  v23 = v0;
  v20 = v0;
  v21 = v0;
  v18 = v0;
  v19 = v0;
  v16 = v0;
  v17 = v0;
  v14 = v0;
  v15 = v0;
  v12 = v0;
  v13 = v0;
  v11 = v0;
  v9 = v0;
  v10 = v0;
  v7 = v0;
  v8 = v0;
  v5 = v0;
  v6 = v0;
  *task_info_out = v0;
  v4 = v0;
  task_info_outCnt = 93;
  if (task_info(mach_task_self_, 0x16u, task_info_out, &task_info_outCnt))
  {
    return -1;
  }

  else
  {
    return ((*(&v13 + 1) + (v13 < 0 ? 0x3FFuLL : 0)) << 22) & 0xFFFFFFFF00000000 | (v12 >> 10);
  }
}

void sub_10002A684(int a1, int a2, os_log_t log)
{
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[MemoryUtils] Memory Footprint: {Current: %d, Peak: %d}", v3, 0xEu);
}

void sub_10002A70C(uint64_t *a1)
{
  sub_10002A244(a1, __stack_chk_guard);
  sub_10002A330();
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "[Config Store] Retrieving modify-eventdefs for event with name '%s'", v2, 0xCu);
}

void sub_10002A834(uint64_t a1, ...)
{
  va_start(va, a1);

  sub_100017DF0(va);
}

uint64_t sub_10002A874(uint64_t a1, void *a2, void *a3)
{

  return __cxa_atexit(&std::mutex::~mutex, a2, a3);
}

uint64_t *sub_10002A894(uint64_t *result)
{
  v1 = *(result + 23);
  v2 = *result;
  return result;
}

uint64_t sub_10002A8BC(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2080;
  *(a3 + 14) = a2;
  return result;
}

void sub_10002A8D4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_10002A8F0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

uint64_t *sub_10002A910(uint64_t *result)
{
  if (*(result + 23) < 0)
  {
    v1 = *result;
  }

  return result;
}

uint64_t sub_10002A940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_100115440(a1, v5, v4, a4);
}

void sub_10002A958()
{
  exception = __cxa_allocate_exception(8uLL);
}

void sub_10002A9A4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002ADF0(a1, a2);
  v35 = 0xAAAAAAAAAAAAAAAALL;
  v36 = -3.72066208e-103;
  sub_100026694(a2, &v35);
  if (v3 <= 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Sigdig with negative amount is not legal");
  }

  if (v35)
  {
    if (v35 == 6)
    {
      v37 = 0xAAAAAAAAAAAAAAAALL;
      sub_10001E0A4(&v35, &v37);
      v6 = (floor(log10(v37)) + 1.0);
      v7 = v6 > v3;
      v8 = v6 - v3;
      if (v7)
      {
        v9 = __exp10(v8);
        if (v9)
        {
          v37 = 0xAAAAAAAAAAAAAAAALL;
          sub_10001E0A4(&v35, &v37);
          v10 = sub_10002AF08(v37, v9);
          v11 = v31;
          v31[0] = 6;
          v32 = v10;
          sub_10000298C(v31);
          sub_10000298C(v31);
          sub_10000298C(v31);
          v12 = v35;
          LOBYTE(v35) = v31[0];
          v31[0] = v12;
          v13 = *&v36;
          v36 = *&v32;
          v32 = v13;
          sub_10000298C(&v35);
          sub_10000298C(v31);
          v14 = v31[0];
LABEL_26:
          sub_1000048FC(v11 + 1, v14);
        }
      }
    }

    else if (v35 == 7)
    {
      v37 = -1;
      sub_100025F58(&v35, &v37);
      v4 = fabs(*&v37);
      if (v4 >= 2.22044605e-16)
      {
        v5 = (floor(log10(v4)) + 1.0);
      }

      else
      {
        v5 = 0;
      }

      v18 = __exp10((v5 - v3));
      if (v18 > 0.0)
      {
        v19 = v18;
        v37 = -1;
        sub_100025F58(&v35, &v37);
        v11 = v33;
        v33[0] = 7;
        v34 = sub_1000F61E0(*&v37, v19);
        sub_10000298C(v33);
        sub_10000298C(v33);
        sub_10000298C(v33);
        v20 = v35;
        LOBYTE(v35) = v33[0];
        v33[0] = v20;
        *&v21 = v36;
        v36 = v34;
        v34 = *&v21;
        sub_10000298C(&v35);
        sub_10000298C(v33);
        v14 = v33[0];
        goto LABEL_26;
      }
    }

    else
    {
      if (sub_1000F633C(&v35, 0))
      {
        goto LABEL_27;
      }

      if (sub_1000F63DC(&v35, 0x8000000000000000))
      {
        v37 = 0xAAAAAAAAAAAAAAAALL;
        sub_10001E0A4(&v35, &v37);
        v15 = (floor(log10(v37)) + 1.0);
        v7 = v15 > v3;
        v16 = v15 - v3;
        if (!v7)
        {
          goto LABEL_27;
        }

        v17 = __exp10(v16);
      }

      else
      {
        v37 = 0xAAAAAAAAAAAAAAAALL;
        sub_10001D684(&v35, &v37);
        v22 = v37;
        if (v37 < 0)
        {
          v22 = -v37;
        }

        v23 = (floor(log10(v22)) + 1.0);
        v7 = v23 > v3;
        v24 = v23 - v3;
        if (!v7)
        {
          goto LABEL_27;
        }

        v17 = __exp10(v24);
      }

      if (v17 >= 1)
      {
        v37 = 0xAAAAAAAAAAAAAAAALL;
        sub_10001D684(&v35, &v37);
        v25 = sub_1000F627C(v37, v17);
        v11 = v29;
        v29[0] = 5;
        v30 = v25;
        sub_10000298C(v29);
        sub_10000298C(v29);
        sub_10000298C(v29);
        v26 = v35;
        LOBYTE(v35) = v29[0];
        v29[0] = v26;
        v27 = *&v36;
        v36 = *&v30;
        v30 = v27;
        sub_10000298C(&v35);
        sub_10000298C(v29);
        v14 = v29[0];
        goto LABEL_26;
      }
    }
  }

LABEL_27:
  sub_10002AFA4(a2 + 24, &v35);
  sub_10000298C(&v35);
  sub_1000048FC(&v36, v35);
}

void sub_10002ADAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10002C5F4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10002ADF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = a2 + 24;
  if (*(a2 + 24) == v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1000E8F08(exception, "EvaluationContext Stack empty: expected integer");
    goto LABEL_6;
  }

  v5 = *(v2 - 16);
  v4 = (v2 - 16);
  if ((v5 - 5) >= 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1000E8F08(exception, "EvaluationContext Stack type mismatch: expected integer");
LABEL_6:
  }

  v10 = 0xAAAAAAAAAAAAAAAALL;
  sub_10001D684(v4, &v10);
  v7 = v10;
  sub_100013F0C(v3, (*(a2 + 32) - 16));
  return v7;
}

uint64_t sub_10002AF08(unint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1000E8F08(exception, "Truncation with negative modulus is not legal");
  }

  result = -1;
  if (!__CFADD__(~(0xFFFFFFFFFFFFFFFFLL / a2 * a2), a1))
  {
    result = a1;
    if (a1 % a2)
    {
      return a2 + a2 * (a1 / a2);
    }
  }

  return result;
}

uint64_t sub_10002AFA4(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_100016F28(a1, a2);
  }

  else
  {
    sub_10000FF70(*(a1 + 8), a2);
    result = v3 + 16;
    *(a1 + 8) = v3 + 16;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10002B07C(std::string *a1, std::string::value_type *a2, std::string *this)
{
  std::string::push_back(this, *a2);
  result = sub_100003460(a1);
  if ((result - 48) <= 9)
  {
    do
    {
      std::string::push_back(a1 + 3, *a2);
      result = sub_100003460(a1);
    }

    while ((result - 48) < 0xA);
  }

  return result;
}

void sub_10002B0E0(_DWORD *a1, uint64_t a2, std::string *a3, uint64_t a4, char *a5)
{
  std::string::push_back(a3 + 3, a3->__r_.__value_.__s.__data_[16]);
  v9 = &a1[a4];
  while (1)
  {
    sub_100003460(a3);
    v10 = a3->__r_.__value_.__r.__words[2];
    if (*a1 > v10 || v10 > a1[1])
    {
      break;
    }

    std::string::push_back(a3 + 3, v10);
    a1 += 2;
    if (a1 == v9)
    {
      v11 = 1;
      goto LABEL_6;
    }
  }

  v11 = 0;
  a3[4].__r_.__value_.__r.__words[0] = "invalid string: ill-formed UTF-8 byte";
LABEL_6:
  *a5 = v11;
}

uint64_t sub_10002B17C(std::string *a1, _DWORD *a2, unint64_t a3)
{
  if (a3 > 6 || ((1 << a3) & 0x54) == 0)
  {
    sub_10011B4BC();
  }

  sub_10002B0E0(a2, a3, a1, a3, &v4);
  return v4;
}

void sub_10002B200()
{
  exception = __cxa_allocate_exception(8uLL);
}

void sub_10002B820(uint64_t a1@<X8>)
{
  v2 = qword_100192D38;
  if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[HeartBeatActivity] Will fetch ScreenLocked events from Biome.", buf, 2u);
  }

  *a1 = 0xAAAAAAAAAAAAAAAALL;
  *(a1 + 8) = 0;
  *a1 = 0;
  sub_10000298C(a1);
  sub_10000298C(a1);
  *buf = 0;
  v56 = buf;
  v57 = 0x2020000000;
  v58 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v3 = +[NSDate now];
  [v3 timeIntervalSince1970];
  v5 = v4;

  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = v5 + -7200.0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v41 = -1;
  if (objc_opt_class() && objc_opt_class())
  {
    v6 = BiomeLibrary();
    v7 = [v6 Device];
    v8 = [v7 ScreenLocked];

    v9 = [BMPublisherOptions alloc];
    v10 = [[NSDate alloc] initWithTimeIntervalSince1970:v5 + -7200.0];
    v11 = [[NSDate alloc] initWithTimeIntervalSince1970:v5];
    v12 = [v9 initWithStartDate:v10 endDate:v11 maxEvents:0 lastN:0 reversed:0];

    v13 = [v8 publisherWithOptions:v12];
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_10002BED8;
    v39[3] = &unk_100181378;
    v39[4] = v40;
    v39[5] = &v50;
    *&v39[8] = v5;
    v39[6] = &v46;
    v39[7] = buf;
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_10002C084;
    v38[3] = &unk_1001813A0;
    v38[4] = &v42;
    v38[5] = buf;
    v38[6] = v40;
    v38[7] = &v50;
    v38[8] = &v46;
    v14 = [v13 sinkWithCompletion:v39 receiveInput:v38];
    if (v43[3])
    {
      v15 = v12;
    }

    else
    {
      v16 = qword_100192D38;
      if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_DEFAULT))
      {
        *v54 = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[HeartBeatActivity] Found no events in the last 2 hour window. Checking the previous 2 hour window.", v54, 2u);
      }

      v17 = [BMPublisherOptions alloc];
      v18 = [[NSDate alloc] initWithTimeIntervalSince1970:v5 + -14400.0];
      v19 = [NSDate alloc];
      v20 = [v19 initWithTimeIntervalSince1970:v47[3]];
      v15 = [v17 initWithStartDate:v18 endDate:v20 maxEvents:1 lastN:1 reversed:0];

      v21 = [v8 publisherWithOptions:v15];

      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_10002C2A4;
      v37[3] = &unk_1001813C8;
      v37[4] = buf;
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_10002C40C;
      v36[3] = &unk_1001813F0;
      v36[4] = buf;
      v36[5] = &v50;
      v13 = v21;
      v22 = [v21 sinkWithCompletion:v37 receiveInput:v36];
    }

    if (v56[24] == 1)
    {
      v23 = vcvtmd_s64_f64(v51[3]);
      v24 = v34;
      v34[0] = 5;
      v35 = v23;
      sub_10000298C(v34);
      sub_10000298C(v34);
      v25 = sub_1000071E4(a1, "activeTime");
      sub_10000298C(v34);
      v26 = *v25;
      *v25 = v34[0];
      v34[0] = v26;
      v27 = *(v25 + 8);
      *(v25 + 8) = v35;
      v35 = v27;
      sub_10000298C(v25);
      sub_10000298C(v34);
      v28 = v34[0];
    }

    else
    {
      v24 = v32;
      v32[0] = 5;
      v33 = 0;
      sub_10000298C(v32);
      sub_10000298C(v32);
      v29 = sub_1000071E4(a1, "activeTime");
      sub_10000298C(v32);
      v30 = *v29;
      *v29 = v32[0];
      v32[0] = v30;
      v31 = *(v29 + 8);
      *(v29 + 8) = v33;
      v33 = v31;
      sub_10000298C(v29);
      sub_10000298C(v32);
      v28 = v32[0];
    }

    sub_1000048FC(v24 + 1, v28);
  }

  _Block_object_dispose(v40, 8);
  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(buf, 8);
}

void sub_10002BDD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_10002C5F4(&a10);

  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose((v51 - 240), 8);
  _Block_object_dispose((v51 - 208), 8);
  _Block_object_dispose((v51 - 160), 8);
  sub_10002C5F4(v47);
  _Unwind_Resume(a1);
}

void sub_10002BED8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = qword_100192D38;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = [v3 error];
      v7 = [v6 description];
      v8 = 136315138;
      v9 = [v7 UTF8String];
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[HeartBeatActivity] Error: %s\n", &v8, 0xCu);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  else
  {
    if (!*(*(*(a1 + 32) + 8) + 24))
    {
      *(*(*(a1 + 40) + 8) + 24) = *(a1 + 64) - *(*(*(a1 + 48) + 8) + 24) + *(*(*(a1 + 40) + 8) + 24);
    }

    v5 = qword_100192D38;
    if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_DEBUG))
    {
      sub_100119898(v5);
    }
  }
}

void sub_10002C084(void *a1, void *a2)
{
  v3 = a2;
  *(*(a1[4] + 8) + 24) = 1;
  *(*(a1[5] + 8) + 24) = 1;
  v4 = [v3 eventBody];
  v5 = [v4 hasStarting];

  if (v5)
  {
    v6 = [NSDate alloc];
    [v3 timestamp];
    v7 = [v6 initWithTimeIntervalSinceReferenceDate:?];
    [v7 timeIntervalSince1970];
    v9 = v8;

    v10 = [v3 eventBody];
    *(*(a1[6] + 8) + 24) = [v10 starting];

    v11 = *(a1[8] + 8);
    if (*(*(a1[6] + 8) + 24) == 1)
    {
      *(*(a1[7] + 8) + 24) = v9 - *(v11 + 24) + *(*(a1[7] + 8) + 24);
    }

    else
    {
      *(v11 + 24) = v9;
    }

    v12 = qword_100192D38;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = [v3 eventBody];
      v14 = 134218240;
      v15 = v9;
      v16 = 1024;
      v17 = [v13 starting];
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "[HeartBeatActivity] Processed event in window: eventTimestamp:%f, starting: %d", &v14, 0x12u);
    }
  }

  else
  {
    *(*(a1[5] + 8) + 24) = 0;
  }
}

void sub_10002C254(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10002C2A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 state];
  v5 = qword_100192D38;
  if (v4)
  {
    v6 = qword_100192D38;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [v3 error];
      v8 = [v7 description];
      v9 = 136315138;
      v10 = [v8 UTF8String];
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[HeartBeatActivity] Error: %s\n", &v9, 0xCu);
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  else if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_DEBUG))
  {
    sub_100119898(v5);
  }
}

void sub_10002C40C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [v4 hasStarting];

  if (v5)
  {
    v6 = [NSDate alloc];
    [v3 timestamp];
    v7 = [v6 initWithTimeIntervalSinceReferenceDate:?];
    [v7 timeIntervalSince1970];
    v9 = v8;

    v10 = [v3 eventBody];
    v11 = [v10 starting];

    v12 = 7200.0;
    if (v11)
    {
      v12 = 0.0;
    }

    *(*(*(a1 + 40) + 8) + 24) = v12;
    *(*(*(a1 + 32) + 8) + 24) = 1;
    v13 = qword_100192D38;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v3 eventBody];
      v15 = 134218240;
      v16 = v9;
      v17 = 1024;
      v18 = [v14 starting];
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[HeartBeatActivity] No event inside window: eventTimestamp:%f, starting: %d", &v15, 0x12u);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void sub_10002C5A4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

unsigned __int8 *sub_10002C5F4(unsigned __int8 *a1)
{
  sub_10000298C(a1);
  sub_1000048FC(a1 + 1, *a1);
  return a1;
}

std::logic_error *sub_10002C654(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

uint64_t sub_10002C688(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, unsigned __int8 *a5)
{
  if (a3 != a5)
  {
    v6 = a3 - 16;
    v7 = a3 - 16;
    do
    {
      sub_10000298C(v6);
      v8 = *v7;
      v7 -= 16;
      result = sub_1000048FC(v6 + 8, v8);
      v10 = v6 == a5;
      v6 = v7;
    }

    while (!v10);
  }

  return result;
}

void sub_10002C6E4(int a1@<W1>, std::string *a2@<X8>)
{
  std::operator+<char>();
  v4 = std::string::append(&v12, ".");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, a1);
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

  v8 = std::string::append(&v13, p_p, size);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v14, "] ");
  *a2 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
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

void sub_10002C830(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 - 41) < 0)
  {
    operator delete(*(v26 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
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

uint64_t sub_10002C89C(uint64_t a1, int a2, char *a3)
{
  *a1 = off_100181438;
  *(a1 + 8) = a2;
  std::runtime_error::runtime_error((a1 + 16), a3);
  return a1;
}

void sub_10002C908(std::runtime_error *a1)
{
  a1->__vftable = off_100181438;
  std::runtime_error::~runtime_error(a1 + 1);

  std::exception::~exception(a1);
}

void sub_10002C95C(std::runtime_error *a1)
{
  a1->__vftable = off_100181438;
  std::runtime_error::~runtime_error(a1 + 1);
  std::exception::~exception(a1);

  operator delete();
}

void sub_10002C9C4(int a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_10000459C(&__p, "type_error");
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
  *a3 = off_100181478;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_10002CAEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const char *sub_10002CB3C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 9)
  {
    return "number";
  }

  else
  {
    return off_100181490[v1];
  }
}

void sub_10002CB64(std::runtime_error *a1)
{
  a1->__vftable = off_100181438;
  std::runtime_error::~runtime_error(a1 + 1);

  std::exception::~exception(a1);
}

void sub_10002CBB8(std::runtime_error *a1)
{
  a1->__vftable = off_100181438;
  std::runtime_error::~runtime_error(a1 + 1);
  std::exception::~exception(a1);

  operator delete();
}

void sub_10002CCC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10002C628(exception_object);
}

void sub_10002CD14(void *a1)
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v3 = dispatch_queue_create("analyticsd.PowerStateResolverQueue", v2);
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = v3;

  *a1 = off_1001814F0;
  operator new();
}

uint64_t sub_10002CDDC(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;

  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void *sub_10002CE20(void *a1)
{
  *a1 = off_1001814F0;
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 removeObserver:*(a1[4] + 16)];

  v3 = a1[6];
  if (v3)
  {
    sub_10000786C(v3);
  }

  v4 = a1[4];
  a1[4] = 0;
  if (v4)
  {

    operator delete();
  }

  sub_10002CDDC((a1 + 1));
  return a1;
}

void sub_10002CECC(void *a1)
{
  sub_10002CE20(a1);

  operator delete();
}

uint64_t sub_10002CF04@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = sub_10002E1A8(a1, &off_100191D10);
  v3 = v2;
  v4 = a1[2];
  a1[1] = v2;
  if (v2 >= v4)
  {
    v5 = sub_10002E1A8(a1, &off_100191D18);
  }

  else
  {
    sub_10000459C(v2, off_100191D18);
    v5 = v3 + 24;
  }

  a1[1] = v5;
  if (v5 >= a1[2])
  {
    v6 = sub_10002E1A8(a1, &off_100191D20);
  }

  else
  {
    sub_10000459C(v5, off_100191D20);
    v6 = v5 + 24;
  }

  a1[1] = v6;
  if (v6 >= a1[2])
  {
    result = sub_10002E1A8(a1, &off_100191D28);
  }

  else
  {
    sub_10000459C(v6, off_100191D28);
    result = (v6 + 24);
  }

  a1[1] = result;
  return result;
}

void sub_10002D030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  a9 = v9;
  sub_10002DE40(&a9);
  _Unwind_Resume(a1);
}

void sub_10002D05C(uint64_t a1)
{
  v1[0] = 0xAAAAAAAAAAAAAAAALL;
  v1[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v1, (a1 + 8));
  operator new();
}

void sub_10002D170(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_10002D188(uint64_t a1)
{
  v5 = a1;
  v2 = *(a1 + 32);
  v3 = sub_100006020((a1 + 24));
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10002D290;
  handler[3] = &unk_100181510;
  handler[4] = a1;
  notify_register_dispatch(kOSThermalNotificationPressureLevelName, v2, v3, handler);

  sub_10002D29C(&v5, **(a1 + 32));
}

void sub_10002D29C(uint64_t *a1, int token)
{
  v2 = *a1;
  state64 = 0;
  if (!notify_get_state(token, &state64))
  {
    memset(v8, 170, sizeof(v8));
    sub_10002D4AC(state64, v8);
    v3 = *(v2 + 40);
    sub_10000459C(&__p, off_100191D10);
    v5[0] = 0;
    v6 = 0;
    sub_10000298C(v5);
    sub_10000298C(v5);
    sub_100006C9C(v4);
  }

  if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_ERROR))
  {
    sub_100119908();
  }
}

void sub_10002D458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

_BYTE *sub_10002D4AC@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  if (a1 > 29)
  {
    switch(a1)
    {
      case 30:
        v2 = "Heavy";
        return sub_10000459C(a2, v2);
      case 40:
        v2 = "Trapping";
        return sub_10000459C(a2, v2);
      case 50:
        v2 = "Sleeping";
        return sub_10000459C(a2, v2);
    }

LABEL_13:
    v2 = "<unknown>";
    return sub_10000459C(a2, v2);
  }

  if (!a1)
  {
    v2 = "Nominal";
    return sub_10000459C(a2, v2);
  }

  if (a1 == 10)
  {
    v2 = "Light";
    return sub_10000459C(a2, v2);
  }

  if (a1 != 20)
  {
    goto LABEL_13;
  }

  v2 = "Moderate";
  return sub_10000459C(a2, v2);
}

void sub_10002D538(uint64_t a1)
{
  v5 = a1;
  v2 = *(a1 + 32);
  v3 = sub_100006020((a1 + 24));
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10002D63C;
  handler[3] = &unk_100181510;
  handler[4] = a1;
  notify_register_dispatch("com.apple.springboard.pluggedin", (v2 + 4), v3, handler);

  sub_10002D648(&v5, *(*(a1 + 32) + 4));
}

void sub_10002D648(uint64_t *a1, int token)
{
  v2 = *a1;
  state64 = 0;
  if (notify_get_state(token, &state64))
  {
    if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_ERROR))
    {
      sub_100119A28();
    }
  }

  else
  {
    v3 = state64 == 1;
    v4 = *(v2 + 40);
    sub_10000459C(__p, off_100191D18);
    v7[0] = 0;
    v8 = 0;
    sub_10000298C(v7);
    sub_10000298C(v7);
    v5[0] = 4;
    v6 = v3;
    sub_10000298C(v5);
    sub_10000298C(v5);
    (*(*v4 + 24))(v4, __p, v7, v5, -1, 1);
    sub_10000298C(v5);
    sub_1000048FC(&v6, v5[0]);
    sub_10000298C(v7);
    sub_1000048FC(&v8, v7[0]);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_DEBUG))
    {
      sub_100119AA0();
    }
  }
}

void sub_10002D804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_10002C5F4(&a10);
  sub_10002C5F4(&a12);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10002D838(uint64_t a1)
{
  v8 = a1;
  v2 = +[NSNotificationCenter defaultCenter];
  v3 = +[NSOperationQueue currentQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002D974;
  v7[3] = &unk_100181530;
  v7[4] = a1;
  v4 = [v2 addObserverForName:NSProcessInfoPowerStateDidChangeNotification object:0 queue:v3 usingBlock:v7];
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  *(v5 + 16) = v4;

  sub_10002D980(&v8);
}

void sub_10002D980(uint64_t *a1)
{
  v1 = *a1;
  v2 = +[NSProcessInfo processInfo];
  v3 = [v2 isLowPowerModeEnabled];

  v4 = *(v1 + 40);
  sub_10000459C(__p, off_100191D20);
  v7[0] = 0;
  v8 = 0;
  sub_10000298C(v7);
  sub_10000298C(v7);
  v5[0] = 4;
  v6 = v3;
  sub_10000298C(v5);
  sub_10000298C(v5);
  (*(*v4 + 24))(v4, __p, v7, v5, -1, 1);
  sub_10000298C(v5);
  sub_1000048FC(&v6, v5[0]);
  sub_10000298C(v7);
  sub_1000048FC(&v8, v7[0]);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_DEBUG))
  {
    sub_100119B24();
  }
}

void sub_10002DB00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_10002C5F4(&a9);
  sub_10002C5F4(&a11);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10002DB40(uint64_t a1)
{
  v5 = a1;
  v2 = *(a1 + 32);
  v3 = sub_100006020((a1 + 24));
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10002DC44;
  handler[3] = &unk_100181510;
  handler[4] = a1;
  notify_register_dispatch("com.apple.springboard.hasBlankedScreen", (v2 + 8), v3, handler);

  sub_10002DC50(&v5, *(*(a1 + 32) + 8));
}

void sub_10002DC50(uint64_t *a1, int token)
{
  v2 = *a1;
  state64 = 0;
  if (notify_get_state(token, &state64))
  {
    if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_ERROR))
    {
      sub_100119BA8();
    }
  }

  else
  {
    v3 = state64 != 1;
    v4 = *(v2 + 40);
    sub_10000459C(__p, off_100191D28);
    v7[0] = 0;
    v8 = 0;
    sub_10000298C(v7);
    sub_10000298C(v7);
    v5[0] = 4;
    v6 = v3;
    sub_10000298C(v5);
    sub_10000298C(v5);
    (*(*v4 + 24))(v4, __p, v7, v5, -1, 0);
    sub_10000298C(v5);
    sub_1000048FC(&v6, v5[0]);
    sub_10000298C(v7);
    sub_1000048FC(&v8, v7[0]);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_DEBUG))
    {
      sub_100119C20();
    }
  }
}

void sub_10002DE0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_10002C5F4(&a10);
  sub_10002C5F4(&a12);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10002DE40(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10002DE94(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10002DE94(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void sub_10002DF98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    sub_10002DFE0(&a12, v12);
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_10002DFE0(uint64_t a1, id *a2)
{
  v3 = sub_100006020(a2 + 3);
  dispatch_barrier_async_f(v3, a2, sub_10002E17C);
}

void sub_10002E048(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10002E080(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = sub_100006020(v1 + 3);
  dispatch_barrier_async_f(v2, v1, sub_10002E17C);
}

uint64_t sub_10002E0E8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_10002E128(uint64_t a1, uint64_t a2)
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

uint64_t sub_10002E17C(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10002E1A8(uint64_t a1, char **a2)
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

void sub_10002E2FC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100025BBC();
}

uint64_t sub_10002E354(uint64_t a1)
{
  sub_10002E38C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10002E38C(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void sub_10002E3E8(uint64_t **a1)
{
  v3 = a1;
  v1 = **a1;
  v2 = qword_100192D98;
  if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[PowerResolver] Initializing notification states", buf, 2u);
    v2 = qword_100192D98;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100119CA4();
  }

  sub_10002D188(v1);
  if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_DEBUG))
  {
    sub_100119D04();
  }

  sub_10002D538(v1);
  if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_DEBUG))
  {
    sub_100119D64();
  }

  sub_10002D838(v1);
  if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_DEBUG))
  {
    sub_100119DC4();
  }

  sub_10002DB40(v1);
  operator delete();
}

void sub_10002E578(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

void sub_10002E598(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

uint64_t sub_10002E5B4(uint64_t a1)
{
  v1 = 1 << -__clz((a1 >> 30) - 1);
  if (a1 >= 1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

double sub_10002E5D8(uint64_t a1)
{
  result = vcvtd_n_f64_u64((a1 + 0x10000000) >> 29, 1uLL);
  if (!a1)
  {
    return 0.0;
  }

  return result;
}

void sub_10002E5F8(_OWORD *a1)
{
  *a1 = 0u;
  a1[1] = 0u;
  sub_10002EB58();
}

void sub_10002E688(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    sub_10000786C(v3);
  }

  v4 = *(v1 + 8);
  if (v4)
  {
    sub_10000786C(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_10002E6FC(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 8);
  *a1 = v3;
  if (v4)
  {
    sub_10000786C(v4);
  }
}

void sub_10002E73C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100181630;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10002E7A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return (***a1)(*a1, 48);
  }

  LOBYTE(v2) = a2;
  if (a2 >= 0xA)
  {
    if (a2 >= 0x64)
    {
      *(a1 + 17) = *&a00010203040506[2 * (a2 - 100 * ((41 * a2) >> 12))];
      v5 = a1 + 17;
      v2 = (41 * a2) >> 12;
      goto LABEL_10;
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v5 = a1 + 16 + v3;
  if (a2 < 0xA)
  {
LABEL_10:
    *(v5 - 1) = v2 | 0x30;
    return (*(**a1 + 8))();
  }

  *(v5 - 2) = *&a00010203040506[2 * a2];
  return (*(**a1 + 8))();
}

void sub_10002E87C(int a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_10000459C(&__p, "invalid_iterator");
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
  *a3 = off_1001816F0;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_10002E9A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10002E9F4(std::runtime_error *a1)
{
  a1->__vftable = off_100181438;
  std::runtime_error::~runtime_error(a1 + 1);

  std::exception::~exception(a1);
}

void sub_10002EA48(std::runtime_error *a1)
{
  a1->__vftable = off_100181438;
  std::runtime_error::~runtime_error(a1 + 1);
  std::exception::~exception(a1);

  operator delete();
}

void sub_10002EAC8(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_10002EB24(exception, a1);
}

std::logic_error *sub_10002EB24(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void *sub_10002EBB4(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100181718;
  sub_10005CE84(a1 + 3);
  return a1;
}

void sub_10002EC30(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100181718;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10002ED08(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_100181768;
  sub_10002E5F8((a1 + 24));
}

void sub_10002ED84(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100181768;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10002EE3C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    sub_10000786C(v3);
  }

  v4 = *(a2 + 8);
  if (v4)
  {

    sub_10000786C(v4);
  }
}

void sub_10002EE8C(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_error_impl(a1, v13, OS_LOG_TYPE_ERROR, a4, &buf, 0xCu);
}

uint64_t sub_10002EEB8(int a1)
{
  if ((a1 - 1) >= 9)
  {
    return 0;
  }

  else
  {
    return a1;
  }
}

void sub_10002EFD0(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  v18 = dispatch_queue_create("analyticsd.RolloverManagerQueue", 0);
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = v18;
  *a1 = &off_1001817B8;
  v19 = a2[1];
  a1[4] = *a2;
  a1[5] = v19;
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  v20 = a3[1];
  a1[6] = *a3;
  a1[7] = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  v21 = a4[1];
  a1[8] = *a4;
  a1[9] = v21;
  if (v21)
  {
    atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
  }

  v22 = a6[1];
  a1[10] = *a6;
  a1[11] = v22;
  if (v22)
  {
    atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
  }

  v23 = a7[1];
  a1[12] = *a7;
  a1[13] = v23;
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
  }

  v24 = a8[1];
  a1[14] = *a8;
  a1[15] = v24;
  if (v24)
  {
    atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
  }

  v25 = a9[1];
  a1[16] = *a9;
  a1[17] = v25;
  if (v25)
  {
    atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
  }

  v26 = a10[1];
  a1[18] = *a10;
  a1[19] = v26;
  if (v26)
  {
    atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
  }

  v27 = a5[1];
  a1[20] = *a5;
  a1[21] = v27;
  if (v27)
  {
    atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10005C578();
}

void *sub_10002F334(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = v1[9];
    if (v2)
    {
      sub_10000786C(v2);
    }

    v3 = v1[7];
    if (v3)
    {
      sub_10000786C(v3);
    }

    v4 = v1[5];
    if (v4)
    {
      sub_10000786C(v4);
    }

    v5 = v1[3];
    if (v5)
    {
      sub_10000786C(v5);
    }

    v6 = v1[1];
    if (v6)
    {
      sub_10000786C(v6);
    }

    operator delete();
  }

  return result;
}

void sub_10002F3B8(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v4[0] = a1;
  v4[1] = a2;
  v3 = sub_100006020((a1 + 24));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100031368;
  block[3] = &unk_1001818D8;
  block[4] = v2;
  block[5] = v4;
  dispatch_sync(v3, block);
}

void sub_10002F478(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, id *a4@<X8>)
{
  *a4 = dispatch_group_create();
  v8 = sub_100006020(a4);
  dispatch_group_enter(v8);

  if (*(a2 + 23) < 0)
  {
    sub_1000078D8(v10, *a2, *(a2 + 8));
  }

  else
  {
    *v10 = *a2;
    v11 = *(a2 + 16);
  }

  sub_10000FF70(v12, a3);
  if (*(a1 + 231) < 0)
  {
    sub_1000078D8(__p, *(a1 + 208), *(a1 + 216));
  }

  else
  {
    *__p = *(a1 + 208);
    v14 = *(a1 + 224);
  }

  v9 = *a4;
  v16[1] = 0xAAAAAAAAAAAAAAAALL;
  v15 = v9;
  v16[0] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v16, (a1 + 8));
  operator new();
}

void sub_10002F6EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_10002C5F4((v16 + 32));
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10002F764(v15);
  _Unwind_Resume(a1);
}

id *sub_10002F764(id *a1)
{
  v2 = *a1;
  *a1 = 0;

  return a1;
}

void sub_10002F79C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1 + 8;
  v5[0] = a1;
  v5[1] = a2;
  v5[2] = a3;
  v4 = sub_100006020((a1 + 24));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100033084;
  block[3] = &unk_1001818D8;
  block[4] = v3;
  block[5] = v5;
  dispatch_sync(v4, block);
}

void sub_10002F860(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a3;
  v8 = a2;
  v5 = a1 + 8;
  v7[0] = a1;
  v7[1] = &v8;
  v7[2] = &v10;
  v7[3] = a4;
  v7[4] = a5;
  v6 = sub_100006020((a1 + 24));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100033134;
  block[3] = &unk_1001818D8;
  block[4] = v5;
  block[5] = v7;
  dispatch_sync(v6, block);
}

void sub_10002F938(uint64_t a1)
{
  v1[0] = 0xAAAAAAAAAAAAAAAALL;
  v1[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v1, (a1 + 8));
  operator new();
}

void sub_10002FA4C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_10002FA64(uint64_t a1)
{
  v1 = a1 + 8;
  v6 = a1;
  v2 = sub_100006020((a1 + 24));
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100033360;
  v7[3] = &unk_1001818F8;
  v7[4] = v1;
  v7[5] = &v6;
  v3 = objc_retainBlock(v7);
  v10 = -86;
  v8 = v3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000204A4;
  block[3] = &unk_1001818D8;
  block[4] = &v10;
  block[5] = &v8;
  dispatch_sync(v2, block);
  v4 = v10;

  return v4;
}

void sub_10002FB98(uint64_t a1)
{
  v11 = 0xAAAAAAAAAAAAAAAALL;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  sub_1000D3B68("rollover", &v11);
  if (v11)
  {
    v2 = qword_100192D40;
    if (os_log_type_enabled(qword_100192D40, OS_LOG_TYPE_ERROR))
    {
      sub_10011A9B0(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  else if ((*(**(a1 + 144) + 112))(*(a1 + 144), a1 + 208))
  {
    v10 = qword_100192D40;
    if (os_log_type_enabled(qword_100192D40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[RolloverManager::_initializeRolloverState] Found no rollover state in db.", buf, 2u);
    }
  }

  else
  {
    (*(**(a1 + 144) + 104))(*(a1 + 144), a1 + 208);
    if (os_log_type_enabled(qword_100192D40, OS_LOG_TYPE_DEBUG))
    {
      sub_10011AA14(a1, (a1 + 208));
    }
  }

  sub_10000298C(&v11);
  sub_1000048FC(&v12, v11);
}

void sub_10002FD2C(uint64_t a1, uint64_t a2)
{
  v26 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v24[32] = v4;
  v25 = v4;
  *v24 = v4;
  *&v24[16] = v4;
  *__dst = v4;
  if (*(a1 + 231) < 0)
  {
    sub_1000078D8(__dst, *(a1 + 208), *(a1 + 216));
  }

  else
  {
    *__dst = *(a1 + 208);
    *v24 = *(a1 + 224);
  }

  *&v24[8] = *(a1 + 232);
  if (*(a1 + 271) < 0)
  {
    sub_1000078D8(&v24[24], *(a1 + 248), *(a1 + 256));
  }

  else
  {
    *&v24[24] = *(a1 + 248);
    *&v24[40] = *(a1 + 264);
  }

  sub_10000FF70(&v25, (a1 + 272));
  LODWORD(v26) = *(a1 + 288);
  std::string::operator=((a1 + 208), a2);
  *(a1 + 232) = *(a2 + 24);
  std::string::operator=((a1 + 248), (a2 + 40));
  sub_10000FF70(__p, (a2 + 64));
  sub_10000298C(__p);
  v5 = *(a1 + 272);
  *(a1 + 272) = __p[0];
  LOBYTE(__p[0]) = v5;
  v6 = *(a1 + 280);
  *(a1 + 280) = __p[1];
  __p[1] = v6;
  sub_10000298C((a1 + 272));
  sub_10000298C(__p);
  sub_1000048FC(&__p[1], LOBYTE(__p[0]));
  *(a1 + 288) = *(a2 + 80);
  *(a1 + 240) = std::chrono::system_clock::now();
  if ((*(**(a1 + 144) + 136))(*(a1 + 144), a1 + 208))
  {
    v7 = *&v24[8];
    if (*&v24[8] != *(a2 + 24))
    {
      v8 = *(a1 + 296);
      v9 = *(a1 + 304);
      if (v8 != v9)
      {
        do
        {
          v10 = v8[1];
          if (v10)
          {
            v10 = std::__shared_weak_count::lock(v10);
            v11 = v10;
            if (v10)
            {
              v10 = *v8;
            }
          }

          else
          {
            v11 = 0;
          }

          (v10->__on_zero_shared)(v10, *(a2 + 24));
          if (v11)
          {
            sub_10000786C(v11);
          }

          v8 += 2;
        }

        while (v8 != v9);
        v7 = *&v24[8];
      }
    }

    if (v7)
    {
      v22[0] = 0xAAAAAAAAAAAAAA00;
      v22[1] = 0;
      sub_10000298C(v22);
      sub_10000298C(v22);
      sub_100033378(v21);
    }
  }

  else
  {
    v12 = qword_100192D40;
    if (os_log_type_enabled(qword_100192D40, OS_LOG_TYPE_ERROR))
    {
      sub_10011AA94(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  sub_10000298C(&v25);
  sub_1000048FC(&v25 + 1, v25);
  if ((v24[47] & 0x80000000) != 0)
  {
    operator delete(*&v24[24]);
  }

  if ((v24[7] & 0x80000000) != 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_1000302E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, std::__shared_weak_count *a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a12)
  {
    sub_10000786C(a12);
  }

  sub_10002C5F4(&a25);
  sub_1000303B8(&a28);
  _Unwind_Resume(a1);
}

uint64_t sub_1000303B8(uint64_t a1)
{
  sub_10000298C((a1 + 64));
  sub_1000048FC((a1 + 72), *(a1 + 64));
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100030410(uint64_t a1, int a2)
{
  v4 = sub_10002EEB8(a2);
  v32 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v30[32] = v5;
  v31 = v5;
  *v30 = v5;
  *&v30[16] = v5;
  *__dst = v5;
  if (*(a1 + 231) < 0)
  {
    sub_1000078D8(__dst, *(a1 + 208), *(a1 + 216));
  }

  else
  {
    *__dst = *(a1 + 208);
    *v30 = *(a1 + 224);
  }

  *&v30[8] = *(a1 + 232);
  if (*(a1 + 271) < 0)
  {
    sub_1000078D8(&v30[24], *(a1 + 248), *(a1 + 256));
  }

  else
  {
    *&v30[24] = *(a1 + 248);
    *&v30[40] = *(a1 + 264);
  }

  sub_10000FF70(&v31, (a1 + 272));
  v6 = *(a1 + 288);
  LODWORD(v32) = v6;
  v7 = sub_10002EEB8(*(a1 + 232));
  if (a2 && v4 <= v7)
  {
    if (v4 != v7)
    {
      v17 = qword_100192D40;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        sub_10002EECC(a2, __p);
        v19 = v28;
        v20 = __p[0];
        sub_10002EECC(*(a1 + 232), buf);
        v21 = __p;
        if (v19 < 0)
        {
          v21 = v20;
        }

        if (v36 >= 0)
        {
          v22 = buf;
        }

        else
        {
          v22 = *buf;
        }

        *v37 = 136446466;
        v38 = v21;
        v39 = 2082;
        v40 = v22;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[RolloverManager::RolloverStep] Skipping rollover step %{public}s as it has already successfuly completed (current step: %{public}s)", v37, 0x16u);
        if (v36 < 0)
        {
          operator delete(*buf);
        }

        goto LABEL_36;
      }

      goto LABEL_38;
    }

    v17 = qword_100192D40;
    v8 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
    if (v6 >= 2)
    {
      if (v8)
      {
        sub_10002EECC(*(a1 + 232), __p);
        if (v28 >= 0)
        {
          v9 = __p;
        }

        else
        {
          v9 = __p[0];
        }

        v10 = *(a1 + 288);
        *buf = 136446466;
        *&buf[4] = v9;
        v34 = 1026;
        v35 = v10;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[RolloverManager::RolloverStep] Exceeded max retries for rollover step %{public}s (retries: %{public}d). Skipping step", buf, 0x12u);
LABEL_36:
        if (v28 < 0)
        {
          operator delete(__p[0]);
        }
      }

LABEL_38:

      v23 = 0;
      goto LABEL_47;
    }

    if (v8)
    {
      sub_10002EECC(*(a1 + 232), __p);
      v24 = v28 >= 0 ? __p : __p[0];
      v25 = *(a1 + 288);
      *buf = 136446466;
      *&buf[4] = v24;
      v34 = 1026;
      v35 = v25;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[RolloverManager::RolloverStep] Retrying rollover step %{public}s (retries: %{public}d)", buf, 0x12u);
      if (v28 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v16 = v32 + 1;
  }

  else
  {
    v11 = qword_100192D40;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      sub_10002EECC(*(a1 + 232), __p);
      v12 = v28;
      v13 = __p[0];
      sub_10002EECC(a2, buf);
      v14 = __p;
      if (v12 < 0)
      {
        v14 = v13;
      }

      if (v36 >= 0)
      {
        v15 = buf;
      }

      else
      {
        v15 = *buf;
      }

      *v37 = 136446466;
      v38 = v14;
      v39 = 2082;
      v40 = v15;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[RolloverManager::RolloverStep] Executing new rollover step. Progressing from %{public}s --> %{public}s", v37, 0x16u);
      if (v36 < 0)
      {
        operator delete(*buf);
      }

      if (v28 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v16 = 0;
    *&v30[8] = a2;
  }

  LODWORD(v32) = v16;
  sub_10002FD2C(a1, __dst);
  v23 = 1;
LABEL_47:
  sub_10000298C(&v31);
  sub_1000048FC(&v31 + 1, v31);
  if ((v30[47] & 0x80000000) != 0)
  {
    operator delete(*&v30[24]);
  }

  if ((v30[7] & 0x80000000) != 0)
  {
    operator delete(__dst[0]);
  }

  return v23;
}

void sub_1000308E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100045094(*(a1 + 48));
  v18 = 0uLL;
  v19 = 0;
  if (*(a4 + 24) == 1)
  {
    (*(**(a1 + 144) + 128))(buf);
    sub_1000336AC(&v18);
    v18 = *buf;
    v19 = v23;
    v23 = 0;
    memset(buf, 0, sizeof(buf));
    v16 = buf;
    sub_10002DE40(&v16);
    v7 = *(&v18 + 1);
    for (i = v18; i != v7; i = (i + 24))
    {
      v8 = qword_100192D40;
      if (os_log_type_enabled(qword_100192D40, OS_LOG_TYPE_DEBUG))
      {
        sub_10011AAF8(v20, i, &v21, v8);
      }

      v9 = *(a1 + 96);
      if (*(i + 23) < 0)
      {
        sub_1000078D8(__p, *i, *(i + 1));
      }

      else
      {
        v10 = *i;
        v15 = *(i + 2);
        *__p = v10;
      }

      (*(*v9 + 112))(&v16, v9, __p);
      if (SHIBYTE(v15) < 0)
      {
        operator delete(__p[0]);
      }

      v11 = qword_100192D40;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_100017DF0(buf);
      }

      if (v16)
      {
        if (v16 == 2)
        {
          if (*v17 != v17[1])
          {
            goto LABEL_20;
          }
        }

        else if (v16 != 1 || v17[2])
        {
LABEL_20:
          memset(buf, 170, sizeof(buf));
          sub_10005C6B8(*(a1 + 176), &v16);
        }
      }

      v12 = qword_100192D40;
      if (os_log_type_enabled(qword_100192D40, OS_LOG_TYPE_ERROR))
      {
        v13 = i;
        if (*(i + 23) < 0)
        {
          v13 = *i;
        }

        *buf = 136315138;
        *&buf[4] = v13;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[RolloverManager] ERROR: found empty header for config uuid: %s", buf, 0xCu);
      }

      sub_10000298C(&v16);
      sub_1000048FC(&v17, v16);
    }
  }

  *buf = &v18;
  sub_10002DE40(buf);
}

void sub_100030C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25)
{
  a25 = &a17;
  sub_10002DE40(&a25);
  _Unwind_Resume(a1);
}

void sub_100030C90(uint64_t a1)
{
  sub_100030CC8(a1);

  operator delete();
}

uint64_t sub_100030CC8(uint64_t a1)
{
  *a1 = &off_1001817B8;
  sub_100030E1C(a1 + 320);
  v13 = (a1 + 296);
  sub_100030E9C(&v13);
  sub_10000298C((a1 + 272));
  sub_1000048FC((a1 + 280), *(a1 + 272));
  if (*(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  sub_10001622C((a1 + 200), 0);
  sub_10002F334((a1 + 192));
  v2 = *(a1 + 184);
  if (v2)
  {
    sub_10000786C(v2);
  }

  v3 = *(a1 + 168);
  if (v3)
  {
    sub_10000786C(v3);
  }

  v4 = *(a1 + 152);
  if (v4)
  {
    sub_10000786C(v4);
  }

  v5 = *(a1 + 136);
  if (v5)
  {
    sub_10000786C(v5);
  }

  v6 = *(a1 + 120);
  if (v6)
  {
    sub_10000786C(v6);
  }

  v7 = *(a1 + 104);
  if (v7)
  {
    sub_10000786C(v7);
  }

  v8 = *(a1 + 88);
  if (v8)
  {
    sub_10000786C(v8);
  }

  v9 = *(a1 + 72);
  if (v9)
  {
    sub_10000786C(v9);
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    sub_10000786C(v10);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    sub_10000786C(v11);
  }

  sub_10002CDDC(a1 + 8);
  return a1;
}

uint64_t sub_100030E1C(uint64_t a1)
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

void sub_100030E9C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100030EF0(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100030EF0(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  a1[1] = v2;
}

void sub_100030F3C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_10000298C((a2 + 56));
    sub_1000048FC((a2 + 64), *(a2 + 56));
    if (*(a2 + 55) < 0)
    {
      operator delete(*(a2 + 32));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t sub_100031024(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_1000310A0(result, a4);
  }

  return result;
}

void sub_100031084(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000310A0(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_10002C63C();
}

void sub_1000311A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    sub_1000311EC(&a12, v12);
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1000311EC(uint64_t a1, id *a2)
{
  v3 = sub_100006020(a2 + 3);
  dispatch_barrier_async_f(v3, a2, sub_100031330);
}

void sub_100031254(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10003128C(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = sub_100006020(v1 + 3);
  dispatch_barrier_async_f(v2, v1, sub_100031330);
}

uint64_t sub_1000312F0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100031330(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void **sub_100031368(void **result)
{
  v1 = result[5];
  v3 = *v1;
  v2 = v1[1];
  v4 = *(*v1 + 304);
  v5 = v3[39];
  if (v4 >= v5)
  {
    v8 = v3[37];
    v9 = (v4 - v8) >> 4;
    v10 = v9 + 1;
    if ((v9 + 1) >> 60)
    {
      sub_10002C63C();
    }

    v11 = v5 - v8;
    if (v11 >> 3 > v10)
    {
      v10 = v11 >> 3;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF0)
    {
      v12 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    v20[4] = v3 + 37;
    if (v12)
    {
      sub_10000BED4((v3 + 37), v12);
    }

    v13 = 16 * v9;
    v14 = *v2;
    *(16 * v9) = *v2;
    if (*(&v14 + 1))
    {
      atomic_fetch_add_explicit((*(&v14 + 1) + 16), 1uLL, memory_order_relaxed);
    }

    v7 = (v13 + 16);
    v15 = v3[37];
    v16 = v3[38] - v15;
    v17 = v13 - v16;
    memcpy((v13 - v16), v15, v16);
    v18 = v3[37];
    v3[37] = v17;
    v3[38] = v7;
    v19 = v3[39];
    v3[39] = 0;
    v20[2] = v18;
    v20[3] = v19;
    v20[0] = v18;
    v20[1] = v18;
    result = sub_1000314A8(v20);
  }

  else
  {
    v6 = *(v2 + 1);
    *v4 = *v2;
    v4[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 2;
  }

  v3[38] = v7;
  return result;
}

void **sub_1000314A8(void **a1)
{
  sub_1000314DC(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1000314DC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void sub_100031530(uint64_t **a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v3 = qword_100192D40;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v1 + 31) < 0)
    {
      v4 = v1[1];
    }

    sub_100017DF0(__p);
  }

  operator new();
}

void sub_1000324D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_1000325F4(&a10);
  sub_1000120B8(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1000325F4(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 72);
    *(v1 + 72) = 0;

    if (*(v1 + 71) < 0)
    {
      operator delete(*(v1 + 48));
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

uint64_t sub_100032684(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1000326F8(result, a4);
  }

  return result;
}

void sub_1000326DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000326F8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_1000161DC(a1, a2);
  }

  sub_10002C63C();
}

unsigned __int8 *sub_100032734(unsigned __int8 *result, _BYTE *a2)
{
  v2 = result;
  if (*result != 4)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v4 = sub_10002CB3C(v2);
    sub_10000459C(&v7, v4);
    v5 = std::string::insert(&v7, 0, "type must be BOOLean, but is ");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v9 = v5->__r_.__value_.__r.__words[2];
    v8 = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    sub_10002C9C4(302, &v8, exception);
  }

  *a2 = result[8];
  return result;
}

void sub_10003282C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t *sub_10003288C(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *(v1 + 88);
  if (sub_100030410(v2, 8))
  {
    if (*(v1 + 23) < 0)
    {
      sub_1000078D8(__p, *v1, *(v1 + 8));
    }

    else
    {
      v3 = *v1;
      v8 = *(v1 + 16);
      *__p = v3;
    }

    v9 = 1;
    sub_1000308E8(v2, v1 + 40, v1 + 64, __p);
    if (v9 == 1 && SHIBYTE(v8) < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_1000329A8(&v6);
  return sub_1000120B8(&v5);
}

void sub_100032968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  sub_1000329A8(&a10);
  sub_1000120B8(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1000329A8(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10000298C((v1 + 64));
    sub_1000048FC((v1 + 72), *(v1 + 64));
    if (*(v1 + 63) < 0)
    {
      operator delete(*(v1 + 40));
    }

    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_100032A24(uint64_t *a1)
{
  v1 = *a1;
  v26 = a1;
  v27 = v1;
  v2 = *(v1 + 88);
  if (sub_100030410(v2, 9))
  {
    v36 = "preserveState";
    v35 = 0xAAAAAAAAAAAAAAAALL;
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *__p = v3;
    v34 = v3;
    sub_10000BD10(v1 + 64, &v36, __p);
    v28 = (v1 + 64);
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0x8000000000000000;
    sub_10000DCFC(&v28);
    if (sub_10000DD7C(__p, &v28))
    {
      v4 = sub_100016CD8();
      if (!v4)
      {
        v5 = 0;
        goto LABEL_9;
      }
    }

    else
    {
      v4 = sub_10000DB44(__p);
    }

    v7 = *v4;
    v6 = v4 + 8;
    if (v7 == 4)
    {
      v5 = v6;
    }

    else
    {
      v5 = 0;
    }

LABEL_9:
    v36 = "aggPeriod";
    v35 = 0xAAAAAAAAAAAAAAAALL;
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *__p = v8;
    v34 = v8;
    sub_10000BD10(v1 + 64, &v36, __p);
    v28 = (v1 + 64);
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0x8000000000000000;
    sub_10000DCFC(&v28);
    v9 = -1431655936;
    if (sub_10000DD7C(__p, &v28))
    {
      v10 = sub_100016CD8();
      if (!v10)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v10 = sub_10000DB44(__p);
    }

    if (*v10 == 3)
    {
      v11 = *(v10 + 8);
      if (v11)
      {
        if (v11[23] < 0)
        {
          v11 = *v11;
        }

        sub_10000459C(__p, v11);
        v12 = sub_100015FF8(__p);
        v13 = v12;
        v9 = v12 & 0xFFFFFF00;
        if (SBYTE7(v34) < 0)
        {
          operator delete(__p[0]);
        }

        v14 = v13;
        v15 = 1;
        if (!v5)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }
    }

LABEL_21:
    v15 = 0;
    v14 = 0;
    if (!v5)
    {
      goto LABEL_23;
    }

LABEL_22:
    if (*v5)
    {
      goto LABEL_45;
    }

LABEL_23:
    v16 = (v1 + 40);
    v17 = *(v1 + 63);
    if (v17 < 0)
    {
      if (*(v1 + 48) != 3)
      {
LABEL_32:
        v21 = (v2 + 248);
        v22 = *(v2 + 271);
        if (v22 < 0)
        {
          if (*(v2 + 256) != 8)
          {
LABEL_38:
            v23 = 0;
            goto LABEL_40;
          }

          v21 = *v21;
        }

        else if (v22 != 8)
        {
          goto LABEL_38;
        }

        if (*v21 != 0x657461647055736FLL)
        {
          goto LABEL_38;
        }

LABEL_39:
        v23 = 1;
LABEL_40:
        sub_100044DB4(*(v2 + 48), v14 | v9 | (v15 << 32) | 0xAAAAAA0000000000, v1, v23);
        v24 = **(v2 + 128);
        if (v15)
        {
          v24[15]();
        }

        else if (v23)
        {
          v24[14]();
        }

        else
        {
          v24[12]();
        }

        goto LABEL_45;
      }

      v16 = *v16;
    }

    else if (v17 != 3)
    {
      goto LABEL_32;
    }

    v18 = *v16;
    v19 = *(v16 + 2);
    if (v18 == 28769 && v19 == 105)
    {
      goto LABEL_39;
    }

    goto LABEL_32;
  }

LABEL_45:
  sub_1000329A8(&v27);
  return sub_1000120B8(&v26);
}

void sub_100032D30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  sub_1000329A8(va1);
  sub_1000120B8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100032D4C(uint64_t *a1)
{
  v1 = *a1;
  v10 = a1;
  v11 = v1;
  v2 = *v1;
  sub_100030410(*v1, 0);
  sub_1000D3D98("rollover");
  (*(**(v2 + 144) + 144))(*(v2 + 144));
  sub_10001B898(0);
  sub_10001622C((v2 + 200), 0);
  notify_post("com.apple.coreanalytics.dailylogging");
  if (*(v1 + 32) == 1 && *(v1 + 40) + 8 != sub_100015F78(*(v1 + 40), "writeLogsSynchronously") && (v3 = sub_10000DFA0(v1 + 32, "writeLogsSynchronously"), buf[0] = -86, sub_100032734(v3, buf), buf[0] == 1))
  {
    v4 = qword_100192D40;
    if (os_log_type_enabled(qword_100192D40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[RolloverManager] Finished writing rollover logs synchronously", buf, 2u);
    }

    v5 = sub_100006020((v1 + 48));
    dispatch_group_leave(v5);
  }

  else
  {
    v6 = qword_100192D40;
    if (os_log_type_enabled(qword_100192D40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[RolloverManager] Finished writing rollover logs asynchronously", buf, 2u);
    }
  }

  v7 = qword_100192D40;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v1 + 31) < 0)
    {
      v8 = *(v1 + 8);
    }

    sub_100017DF0(buf);
  }

  sub_100033004(&v11);
  return sub_1000120B8(&v10);
}

void sub_100032FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100033004(&a10);
  sub_1000120B8(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100033004(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 48);
    *(v1 + 48) = 0;

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

void sub_100033084(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  LOBYTE(__p) = 0;
  v7 = 0;
  sub_1000308E8(v2, v3, v4, &__p);
  if (v7 == 1 && v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_10003310C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a16 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100033134(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  (*(**(*v1 + 48) + 56))(*(*v1 + 48));
  (*(**(v2 + 96) + 96))(v4);
  if (v4[0] != v4[1])
  {
    v3[0] = 0xAAAAAAAAAAAAAAAALL;
    v3[1] = 0xAAAAAAAAAAAAAAAALL;
    sub_10005C6B8(*(v2 + 176), v4[0]);
  }

  v3[0] = v4;
  sub_100004E54(v3);
}

void sub_100033254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  a9 = &a11;
  sub_100004E54(&a9);
  _Unwind_Resume(a1);
}

void sub_100033284(uint64_t **a1)
{
  v2 = a1;
  v1 = **a1;
  sub_1000D3D98("rollover");
  (*(**(v1 + 144) + 144))(*(v1 + 144));
  operator delete();
}

void sub_100033378(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  sub_1000333C4();
}

void *sub_1000334AC(void *a1, char *a2, unsigned __int8 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100181928;
  v5 = -86;
  sub_1000335C8(&v5, (a1 + 3), a2, a3);
  return a1;
}

void sub_100033574(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100181928;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1000335C8(int a1, uint64_t a2, char *__s, unsigned __int8 *a4)
{
  sub_10000459C(__p, __s);
  sub_10000FF70(v6, a4);
  sub_100006F04(a2, __p, v6, 0, 0);
  sub_10000298C(v6);
  sub_1000048FC(&v7, v6[0]);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100033678(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  sub_10002C5F4(&a9);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1000336AC(uint64_t a1)
{
  if (*a1)
  {
    sub_10002DE94(a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

__n128 sub_1000337AC(uint64_t a1, __int128 *a2, __n128 *a3)
{
  *a1 = off_1001819C8;
  v3 = *a2;
  *(a1 + 24) = *(a2 + 2);
  *(a1 + 8) = v3;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  result = *a3;
  *(a1 + 48) = a3[1].n128_u64[0];
  *(a1 + 32) = result;
  a3->n128_u64[1] = 0;
  a3[1].n128_u64[0] = 0;
  a3->n128_u64[0] = 0;
  return result;
}

void sub_1000337FC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = 0;
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  (*(*a1 + 16))(a2);
  if (!*a2)
  {
    v4 = qword_100192BA0;
    if (os_log_type_enabled(qword_100192BA0, OS_LOG_TYPE_ERROR))
    {
      sub_10011AD0C(&v5, a1, v4);
    }
  }
}

void sub_1000338C8(void *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100013CA0(a1, 0, 0, 0, 1);
}

void sub_100033C14(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_100033C20(uint64_t a1@<X0>, const char **a2@<X1>, void *a3@<X8>)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  v6 = 0xAAAAAAAAAAAAAAAALL;
  sub_1000C1670((a1 + 32), a2, &v5);
  if (v5)
  {
    v4 = v6;
    *a3 = v5;
    a3[1] = v4;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    if (v6)
    {
      sub_10000786C(v6);
    }
  }
}

void sub_100033CAC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_100033CBC(uint64_t a1)
{
  sub_100033CF4(a1);

  operator delete();
}

uint64_t sub_100033CF4(uint64_t a1)
{
  *a1 = off_1001819C8;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_100033D74(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100181A00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100033DF0(uint64_t a1)
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

void sub_100033E70(uint64_t a1@<X8>)
{
  sub_10000459C(&__p, "rollover");
  sub_10005F9A0();
  sub_10005FA3C();
  sub_100033F28(a1);
}

void sub_100033F28(uint64_t a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  *(a1 + 8) = 0;
  *a1 = 0;
  sub_10000298C(a1);
  sub_10000298C(a1);
  sub_100006C9C(v2);
}

void sub_100034144(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002C5F4(va);
  sub_10002C5F4(v2);
  _Unwind_Resume(a1);
}

void sub_100034220(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100034244(uint64_t a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  *(a1 + 8) = 0;
  *a1 = 0;
  sub_10000298C(a1);
  sub_10000298C(a1);
  v2 = sub_1000AD128();
  if ((v2 & 0x100) != 0)
  {
    v11[0] = 4;
    v12 = v2;
    sub_10000298C(v11);
    sub_10000298C(v11);
    v3 = sub_1000071E4(a1, "IHAOptIn");
    sub_10000298C(v11);
    v4 = *v3;
    *v3 = v11[0];
    v11[0] = v4;
    v5 = *(v3 + 8);
    *(v3 + 8) = v12;
    v12 = v5;
    sub_10000298C(v3);
    sub_10000298C(v11);
    sub_1000048FC(&v12, v11[0]);
  }

  v9[0] = 4;
  v10 = sub_10005FC24();
  sub_10000298C(v9);
  sub_10000298C(v9);
  v6 = sub_1000071E4(a1, "OptIn");
  sub_10000298C(v9);
  v7 = *v6;
  *v6 = v9[0];
  v9[0] = v7;
  v8 = *(v6 + 8);
  *(v6 + 8) = v10;
  v10 = v8;
  sub_10000298C(v6);
  sub_10000298C(v9);
  sub_1000048FC(&v10, v9[0]);
}

void sub_1000343C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10002C5F4(va);
  sub_10002C5F4(v4);
  _Unwind_Resume(a1);
}

void sub_1000343F4(uint64_t a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  *(a1 + 8) = 0;
  *a1 = 0;
  sub_10000298C(a1);
  sub_10000298C(a1);
  sub_100006C9C(v2);
}

void sub_1000345CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002C5F4(va);
  sub_10002C5F4(v2);
  _Unwind_Resume(a1);
}

void sub_100034608(uint64_t a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  *(a1 + 8) = 0;
  *a1 = 0;
  sub_10000298C(a1);
  sub_10000298C(a1);
  sub_100006C9C(v2);
}

void sub_1000347E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002C5F4(va);
  sub_10002C5F4(v2);
  _Unwind_Resume(a1);
}

void sub_100034814(int *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0xAAAAAAAAAAAAAAAALL;
  *(a4 + 8) = 0;
  *a4 = 0;
  sub_10000298C(a4);
  sub_10000298C(a4);
  v8 = *a1;
  v9 = a1[1] + *a1;
  if (v9 >= 1)
  {
    v126[0] = 5;
    v127 = llround((100 * v8 / v9));
    sub_10000298C(v126);
    sub_10000298C(v126);
    v10 = sub_1000071E4(a4, "cacheHitPercent");
    sub_10000298C(v126);
    v11 = *v10;
    *v10 = v126[0];
    v126[0] = v11;
    v12 = *(v10 + 8);
    *(v10 + 8) = v127;
    v127 = v12;
    sub_10000298C(v10);
    sub_10000298C(v126);
    sub_1000048FC(&v127, v126[0]);
  }

  v13 = *(a1 + 1);
  v124[0] = 6;
  v125 = v13;
  sub_10000298C(v124);
  sub_10000298C(v124);
  v14 = sub_1000071E4(a4, "cacheSize");
  sub_10000298C(v124);
  v15 = *v14;
  *v14 = v124[0];
  v124[0] = v15;
  v16 = *(v14 + 8);
  *(v14 + 8) = v125;
  v125 = v16;
  sub_10000298C(v14);
  sub_10000298C(v124);
  sub_1000048FC(&v125, v124[0]);
  v17 = *(a1 + 2);
  v122[0] = 6;
  v123 = v17;
  sub_10000298C(v122);
  sub_10000298C(v122);
  v18 = sub_1000071E4(a4, "cacheCapacity");
  sub_10000298C(v122);
  v19 = *v18;
  *v18 = v122[0];
  v122[0] = v19;
  v20 = *(v18 + 8);
  *(v18 + 8) = v123;
  v123 = v20;
  sub_10000298C(v18);
  sub_10000298C(v122);
  sub_1000048FC(&v123, v122[0]);
  v21 = *(a1 + 3);
  v120[0] = 6;
  v121 = v21;
  sub_10000298C(v120);
  sub_10000298C(v120);
  v22 = sub_1000071E4(a4, "cacheEventsCount");
  sub_10000298C(v120);
  v23 = *v22;
  *v22 = v120[0];
  v120[0] = v23;
  v24 = *(v22 + 8);
  *(v22 + 8) = v121;
  v121 = v24;
  sub_10000298C(v22);
  sub_10000298C(v120);
  sub_1000048FC(&v121, v120[0]);
  v25 = *(a1 + 4);
  v118[0] = 6;
  v119 = v25;
  sub_10000298C(v118);
  sub_10000298C(v118);
  v26 = sub_1000071E4(a4, "cacheXformCount");
  sub_10000298C(v118);
  v27 = *v26;
  *v26 = v118[0];
  v118[0] = v27;
  v28 = *(v26 + 8);
  *(v26 + 8) = v119;
  v119 = v28;
  sub_10000298C(v26);
  sub_10000298C(v118);
  sub_1000048FC(&v119, v118[0]);
  v29 = *a1;
  v116[0] = 5;
  v117 = v29;
  sub_10000298C(v116);
  sub_10000298C(v116);
  v30 = sub_1000071E4(a4, "cacheHits");
  sub_10000298C(v116);
  v31 = *v30;
  *v30 = v116[0];
  v116[0] = v31;
  v32 = *(v30 + 8);
  *(v30 + 8) = v117;
  v117 = v32;
  sub_10000298C(v30);
  sub_10000298C(v116);
  sub_1000048FC(&v117, v116[0]);
  v33 = a1[1];
  v114[0] = 5;
  v115 = v33;
  sub_10000298C(v114);
  sub_10000298C(v114);
  v34 = sub_1000071E4(a4, "cacheMisses");
  sub_10000298C(v114);
  v35 = *v34;
  *v34 = v114[0];
  v114[0] = v35;
  v36 = *(v34 + 8);
  *(v34 + 8) = v115;
  v115 = v36;
  sub_10000298C(v34);
  sub_10000298C(v114);
  sub_1000048FC(&v115, v114[0]);
  v37 = a1[10];
  v112[0] = 5;
  v113 = v37;
  sub_10000298C(v112);
  sub_10000298C(v112);
  v38 = sub_1000071E4(a4, "XformsInserted");
  sub_10000298C(v112);
  v39 = *v38;
  *v38 = v112[0];
  v112[0] = v39;
  v40 = *(v38 + 8);
  *(v38 + 8) = v113;
  v113 = v40;
  sub_10000298C(v38);
  sub_10000298C(v112);
  sub_1000048FC(&v113, v112[0]);
  v41 = sub_10002A5A8();
  v110[0] = 5;
  v111 = v41;
  sub_10000298C(v110);
  sub_10000298C(v110);
  v42 = sub_1000071E4(a4, "physFootprint");
  sub_10000298C(v110);
  v43 = *v42;
  *v42 = v110[0];
  v110[0] = v43;
  v44 = *(v42 + 8);
  *(v42 + 8) = v111;
  v111 = v44;
  sub_10000298C(v42);
  sub_10000298C(v110);
  sub_1000048FC(&v111, v110[0]);
  v108[0] = 5;
  v109 = v41 >> 32;
  sub_10000298C(v108);
  sub_10000298C(v108);
  v45 = sub_1000071E4(a4, "physFootprintPeak");
  sub_10000298C(v108);
  v46 = *v45;
  *v45 = v108[0];
  v108[0] = v46;
  v47 = *(v45 + 8);
  *(v45 + 8) = v109;
  v109 = v47;
  sub_10000298C(v45);
  sub_10000298C(v108);
  sub_1000048FC(&v109, v108[0]);
  v48 = sub_10005F8C8();
  if (v48 != -1)
  {
    v106[0] = 5;
    v107 = std::chrono::system_clock::from_time_t(v48).__d_.__rep_ / 3600000000;
    sub_10000298C(v106);
    sub_10000298C(v106);
    v49 = sub_1000071E4(a4, "procUptime");
    sub_10000298C(v106);
    v50 = *v49;
    *v49 = v106[0];
    v106[0] = v50;
    v51 = *(v49 + 8);
    *(v49 + 8) = v107;
    v107 = v51;
    sub_10000298C(v49);
    sub_10000298C(v106);
    sub_1000048FC(&v107, v106[0]);
  }

  v52 = sub_10005FA3C();
  if (v52 != -1)
  {
    v104[0] = 5;
    v105 = std::chrono::system_clock::from_time_t(v52).__d_.__rep_ / 3600000000;
    sub_10000298C(v104);
    sub_10000298C(v104);
    v53 = sub_1000071E4(a4, "cpuUptime");
    sub_10000298C(v104);
    v54 = *v53;
    *v53 = v104[0];
    v104[0] = v54;
    v55 = *(v53 + 8);
    *(v53 + 8) = v105;
    v105 = v55;
    sub_10000298C(v53);
    sub_10000298C(v104);
    sub_1000048FC(&v105, v104[0]);
  }

  v56 = *a2;
  v102[0] = 6;
  v103 = v56;
  sub_10000298C(v102);
  sub_10000298C(v102);
  v57 = sub_1000071E4(a4, "configEstimatedBytesWritten");
  sub_10000298C(v102);
  v58 = *v57;
  *v57 = v102[0];
  v102[0] = v58;
  v59 = *(v57 + 8);
  *(v57 + 8) = v103;
  v103 = v59;
  sub_10000298C(v57);
  sub_10000298C(v102);
  sub_1000048FC(&v103, v102[0]);
  v60 = a2[1];
  v100[0] = 6;
  v101 = v60;
  sub_10000298C(v100);
  sub_10000298C(v100);
  v61 = sub_1000071E4(a4, "configEstimatedBytesRead");
  sub_10000298C(v100);
  v62 = *v61;
  *v61 = v100[0];
  v100[0] = v62;
  v63 = *(v61 + 8);
  *(v61 + 8) = v101;
  v101 = v63;
  sub_10000298C(v61);
  sub_10000298C(v100);
  sub_1000048FC(&v101, v100[0]);
  v64 = a2[2];
  v98[0] = 5;
  v99 = v64;
  sub_10000298C(v98);
  sub_10000298C(v98);
  v65 = sub_1000071E4(a4, "configRowsWritten");
  sub_10000298C(v98);
  v66 = *v65;
  *v65 = v98[0];
  v98[0] = v66;
  v67 = *(v65 + 8);
  *(v65 + 8) = v99;
  v99 = v67;
  sub_10000298C(v65);
  sub_10000298C(v98);
  sub_1000048FC(&v99, v98[0]);
  v68 = a2[3];
  v96[0] = 5;
  v97 = v68;
  sub_10000298C(v96);
  sub_10000298C(v96);
  v69 = sub_1000071E4(a4, "configRowsRead");
  sub_10000298C(v96);
  v70 = *v69;
  *v69 = v96[0];
  v96[0] = v70;
  v71 = *(v69 + 8);
  *(v69 + 8) = v97;
  v97 = v71;
  sub_10000298C(v69);
  sub_10000298C(v96);
  sub_1000048FC(&v97, v96[0]);
  v72 = *a3;
  v94[0] = 6;
  v95 = v72;
  sub_10000298C(v94);
  sub_10000298C(v94);
  v73 = sub_1000071E4(a4, "stateEstimatedBytesWritten");
  sub_10000298C(v94);
  v74 = *v73;
  *v73 = v94[0];
  v94[0] = v74;
  v75 = *(v73 + 8);
  *(v73 + 8) = v95;
  v95 = v75;
  sub_10000298C(v73);
  sub_10000298C(v94);
  sub_1000048FC(&v95, v94[0]);
  v76 = a3[1];
  v92[0] = 6;
  v93 = v76;
  sub_10000298C(v92);
  sub_10000298C(v92);
  v77 = sub_1000071E4(a4, "stateEstimatedBytesRead");
  sub_10000298C(v92);
  v78 = *v77;
  *v77 = v92[0];
  v92[0] = v78;
  v79 = *(v77 + 8);
  *(v77 + 8) = v93;
  v93 = v79;
  sub_10000298C(v77);
  sub_10000298C(v92);
  sub_1000048FC(&v93, v92[0]);
  v80 = a3[2];
  v90[0] = 5;
  v91 = v80;
  sub_10000298C(v90);
  sub_10000298C(v90);
  v81 = sub_1000071E4(a4, "stateRowsWritten");
  sub_10000298C(v90);
  v82 = *v81;
  *v81 = v90[0];
  v90[0] = v82;
  v83 = *(v81 + 8);
  *(v81 + 8) = v91;
  v91 = v83;
  sub_10000298C(v81);
  sub_10000298C(v90);
  sub_1000048FC(&v91, v90[0]);
  v84 = a3[3];
  v88[0] = 5;
  v89 = v84;
  sub_10000298C(v88);
  sub_10000298C(v88);
  v85 = sub_1000071E4(a4, "stateRowsRead");
  sub_10000298C(v88);
  v86 = *v85;
  *v85 = v88[0];
  v88[0] = v86;
  v87 = *(v85 + 8);
  *(v85 + 8) = v89;
  v89 = v87;
  sub_10000298C(v85);
  sub_10000298C(v88);
  sub_1000048FC(&v89, v88[0]);
}

void sub_1000352A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, unsigned __int8 a26)
{
  sub_10002C5F4(&a26);
  sub_10002C5F4(v26);
  _Unwind_Resume(a1);
}

void sub_1000353B0(uint64_t a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  *(a1 + 8) = 0;
  *a1 = 0;
  sub_10000298C(a1);
  sub_10000298C(a1);
  sub_100006C9C(v2);
}

void sub_100035500(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002C5F4(va);
  sub_10002C5F4(v2);
  _Unwind_Resume(a1);
}

void sub_100035530(uint64_t a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  *(a1 + 8) = 0;
  *a1 = 0;
  sub_10000298C(a1);
  sub_10000298C(a1);
  sub_100006C9C(v2);
}

void sub_100035718(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002C5F4(va);
  sub_10002C5F4(v2);
  _Unwind_Resume(a1);
}

void **sub_100035754(uint64_t a1)
{
  v4 = a1;
  v5 = &off_10018A9A8;
  v7 = -1431655766;
  memset(v6, 0, sizeof(v6));
  LOBYTE(v3) = 5;
  sub_10000298C(&v3);
  sub_10000298C(&v3);
  sub_10000F8A4(&v6[24], &v3);
  sub_10000298C(&v3);
  sub_1000048FC(&v4, v3);
  LOBYTE(v3) = 5;
  v4 = 2;
  sub_10000298C(&v3);
  sub_10000298C(&v3);
  sub_10000F8A4(&v6[24], &v3);
  sub_10000298C(&v3);
  sub_1000048FC(&v4, v3);
  sub_10002A9A4(&v5, v6);
  v3 = 0xAAAAAAAAAAAAAAAALL;
  sub_10001D684(*&v6[24], &v3);
  v1 = v3;
  if (*&v6[64])
  {
    sub_10000786C(*&v6[64]);
  }

  v3 = &v6[24];
  sub_100004E54(&v3);
  v3 = v6;
  sub_1000131F8(&v3);
  nullsub_13(&v5);
  return v1;
}

void sub_1000358C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  sub_10002C5F4(va);
  sub_1000358F0(va2);
  nullsub_13(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000358F0(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_10000786C(v2);
  }

  v4 = (a1 + 24);
  sub_100004E54(&v4);
  v4 = a1;
  sub_1000131F8(&v4);
  return a1;
}

void sub_100035A90(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100035AA0(uint64_t a1, void *a2)
{
  v4 = dispatch_queue_create("analyticsd.CadenceManagerQueue", 0);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  v5 = a2[1];
  *(a1 + 280) = *a2;
  *(a1 + 288) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 296) = 0;
  *(a1 + 328) = 0;
  return a1;
}

unint64_t sub_100035B3C(uint64_t a1)
{
  v6 = a1;
  v2 = sub_100006020((a1 + 16));
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100037FD0;
  v7[3] = &unk_100181AB0;
  v7[4] = a1;
  v7[5] = &v6;
  v3 = objc_retainBlock(v7);
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v8 = v3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003808C;
  block[3] = &unk_1001818D8;
  block[4] = &v10;
  block[5] = &v8;
  dispatch_sync(v2, block);
  v4 = v10;

  return v4;
}

void sub_100035C70(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100035C7C(void *a1, uint64_t a2)
{
  v3[3] = a1;
  sub_1000380C8(&v4, a2);
  v3[0] = 0xAAAAAAAAAAAAAAAALL;
  v3[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v3, a1);
  operator new();
}

void sub_100035DBC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_100035DD4(void *a1, uint64_t a2)
{
  v3[3] = a1;
  sub_1000385A4(&v4, a2);
  v3[0] = 0xAAAAAAAAAAAAAAAALL;
  v3[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v3, a1);
  operator new();
}

void sub_100035F14(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_100035F2C(uint64_t a1)
{
  v1 = a1;
  v5 = a1;
  v2 = sub_100006020((a1 + 16));
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000387E4;
  v6[3] = &unk_1001818F8;
  v6[4] = v1;
  v6[5] = &v5;
  v3 = objc_retainBlock(v6);
  v9 = -86;
  v7 = v3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000204E0;
  block[3] = &unk_1001818D8;
  block[4] = &v9;
  block[5] = &v7;
  dispatch_sync(v2, block);
  LOBYTE(v1) = v9;

  return v1 & 1;
}

void sub_100036060(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10003606C(uint64_t a1)
{
  v6 = a1;
  v2 = sub_100006020((a1 + 16));
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000387F4;
  v7[3] = &unk_100181AD0;
  v7[4] = a1;
  v7[5] = &v6;
  v3 = objc_retainBlock(v7);
  v10 = 0;
  v8 = v3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D834;
  block[3] = &unk_1001818D8;
  block[4] = &v10;
  block[5] = &v8;
  dispatch_sync(v2, block);
  v4 = v10;

  return v4;
}

void sub_10003619C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1000361A8(void *a1)
{
  v1[0] = 0xAAAAAAAAAAAAAAAALL;
  v1[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v1, a1);
  operator new();
}

void sub_1000362BC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_1000362D4(void *a1)
{
  v1[0] = 0xAAAAAAAAAAAAAAAALL;
  v1[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v1, a1);
  operator new();
}

void sub_1000363E8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_100036400(void *a1)
{
  v1[0] = 0xAAAAAAAAAAAAAAAALL;
  v1[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v1, a1);
  operator new();
}

void sub_100036514(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_10003652C(void *a1)
{
  v1[0] = 0xAAAAAAAAAAAAAAAALL;
  v1[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v1, a1);
  operator new();
}

void sub_100036640(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_100036658(uint64_t a1)
{
  v3 = a1;
  v2 = sub_100006020((a1 + 16));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100038F2C;
  block[3] = &unk_1001818D8;
  block[4] = a1;
  block[5] = &v3;
  dispatch_sync(v2, block);
}

void sub_10003671C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_100036728(uint64_t a1)
{
  v1 = a1;
  v5 = a1;
  v2 = sub_100006020((a1 + 16));
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100038F60;
  v6[3] = &unk_1001818F8;
  v6[4] = v1;
  v6[5] = &v5;
  v3 = objc_retainBlock(v6);
  v9 = -86;
  v7 = v3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000204E0;
  block[3] = &unk_1001818D8;
  block[4] = &v9;
  block[5] = &v7;
  dispatch_sync(v2, block);
  LOBYTE(v1) = v9;

  return v1 & 1;
}

void sub_10003685C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100036868(uint64_t a1)
{
  v1 = a1;
  v5 = a1;
  v2 = sub_100006020((a1 + 16));
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100038F6C;
  v6[3] = &unk_1001818F8;
  v6[4] = v1;
  v6[5] = &v5;
  v3 = objc_retainBlock(v6);
  v9 = -86;
  v7 = v3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000204E0;
  block[3] = &unk_1001818D8;
  block[4] = &v9;
  block[5] = &v7;
  dispatch_sync(v2, block);
  LOBYTE(v1) = v9;

  return v1 & 1;
}

void sub_10003699C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000369A8(uint64_t a1)
{
  v1 = a1;
  v5 = a1;
  v2 = sub_100006020((a1 + 16));
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100038FB4;
  v6[3] = &unk_1001818F8;
  v6[4] = v1;
  v6[5] = &v5;
  v3 = objc_retainBlock(v6);
  v9 = -86;
  v7 = v3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000204E0;
  block[3] = &unk_1001818D8;
  block[4] = &v9;
  block[5] = &v7;
  dispatch_sync(v2, block);
  LOBYTE(v1) = v9;

  return v1 & 1;
}

void sub_100036ADC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100036AE8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7[0] = a2;
  v7[1] = a1;
  v5 = sub_100006020((a1 + 16));
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100039004;
  v8[3] = &unk_100181AF0;
  v8[4] = a1;
  v8[5] = v7;
  v9 = objc_retainBlock(v8);
  v6 = v5;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000390D0;
  block[3] = &unk_1001818D8;
  block[4] = a3;
  block[5] = &v9;
  dispatch_sync(v6, block);
}

void sub_100036C28(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100036C34(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = a1;
  v4 = sub_100006020((a1 + 16));
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100039160;
  v7[3] = &unk_100181AF0;
  v7[4] = a1;
  v7[5] = &v6;
  v8 = objc_retainBlock(v7);
  v5 = v4;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000390D0;
  block[3] = &unk_1001818D8;
  block[4] = a2;
  block[5] = &v8;
  dispatch_sync(v5, block);
}

void sub_100036D74(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100036D80(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = a1;
  v4 = sub_100006020((a1 + 16));
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100039190;
  v7[3] = &unk_100181AF0;
  v7[4] = a1;
  v7[5] = &v6;
  v8 = objc_retainBlock(v7);
  v5 = v4;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000390D0;
  block[3] = &unk_1001818D8;
  block[4] = a2;
  block[5] = &v8;
  dispatch_sync(v5, block);
}

void sub_100036EC0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100036ECC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = a1;
  v4 = sub_100006020((a1 + 16));
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000391C0;
  v7[3] = &unk_100181AF0;
  v7[4] = a1;
  v7[5] = &v6;
  v8 = objc_retainBlock(v7);
  v5 = v4;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000390D0;
  block[3] = &unk_1001818D8;
  block[4] = a2;
  block[5] = &v8;
  dispatch_sync(v5, block);
}

void sub_10003700C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100037018(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = a1;
  v4 = sub_100006020((a1 + 16));
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000391F0;
  v7[3] = &unk_100181AF0;
  v7[4] = a1;
  v7[5] = &v6;
  v8 = objc_retainBlock(v7);
  v5 = v4;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000390D0;
  block[3] = &unk_1001818D8;
  block[4] = a2;
  block[5] = &v8;
  dispatch_sync(v5, block);
}

void sub_100037158(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100037164(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = a1;
  v4 = sub_100006020((a1 + 16));
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003930C;
  v7[3] = &unk_100181AF0;
  v7[4] = a1;
  v7[5] = &v6;
  v8 = objc_retainBlock(v7);
  v5 = v4;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000390D0;
  block[3] = &unk_1001818D8;
  block[4] = a2;
  block[5] = &v8;
  dispatch_sync(v5, block);
}

void sub_1000372A4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1000372B0(uint64_t a1, __int128 *a2)
{
  v4 = a1;
  if (*(a2 + 23) < 0)
  {
    sub_1000078D8(&__p, *a2, *(a2 + 1));
  }

  else
  {
    __p = *a2;
    v6 = *(a2 + 2);
  }

  v3 = sub_100006020((a1 + 16));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003933C;
  block[3] = &unk_1001818D8;
  block[4] = a1;
  block[5] = &v4;
  dispatch_sync(v3, block);

  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p);
  }
}

void sub_1000373B0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_1000373BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005972C();
  memset(&__str, 170, sizeof(__str));
  (*(**(a1 + 280) + 40))(&__str);
  v5 = *(a2 + 31);
  if (v5 >= 0)
  {
    v6 = *(a2 + 31);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (v6 == size)
  {
    if (v5 >= 0)
    {
      v8 = (a2 + 8);
    }

    else
    {
      v8 = *(a2 + 8);
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    v10 = memcmp(v8, p_str, v6) != 0;
  }

  else
  {
    v10 = 1;
  }

  if (*(a2 + 240) == 0 || v10)
  {
    v11 = v4;
  }

  else
  {
    v11 = *(a2 + 240);
  }

  v12 = sub_100037684(a1, a2);
  v13 = v12;
  if (*(a2 + 248))
  {
    v14 = 0;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    *(a1 + 272) = 1;
  }

  *(a1 + 24) = (*(**(a1 + 280) + 32))(*(a1 + 280));
  std::string::operator=((a1 + 56), (a2 + 8));
  std::string::operator=((a1 + 32), &__str);
  std::string::operator=((a1 + 104), (a2 + 56));
  std::string::assign((a1 + 80), "");
  std::string::operator=((a1 + 152), (a2 + 104));
  sub_10005F394(&v20);
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  *(a1 + 128) = v20;
  *(a1 + 144) = v21;
  *(a1 + 176) = *(a2 + 152);
  *(a1 + 184) = (*(**(a1 + 280) + 48))(*(a1 + 280));
  *(a1 + 192) = *(a2 + 168);
  std::string::operator=((a1 + 200), (a2 + 176));
  std::string::operator=((a1 + 224), (a2 + 200));
  *(a1 + 248) = *(a2 + 224);
  if (*(a2 + 232))
  {
    v15 = 1;
  }

  else
  {
    v15 = *a2 == 0;
  }

  if (v15)
  {
    v16 = *(a2 + 232);
  }

  else
  {
    v16 = v4 - v13;
  }

  *(a1 + 256) = v16;
  *(a1 + 264) = v11;
  rep = *(a1 + 176);
  if (!rep)
  {
    rep = std::chrono::system_clock::now().__d_.__rep_;
  }

  *(a1 + 296) = rep;
  v18 = sub_100037788(a1, a2);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v13 | (v18 << 32);
}

void sub_100037654(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100037684(uint64_t a1, uint64_t a2)
{
  v3 = (*(**(a1 + 280) + 48))(*(a1 + 280));
  v4 = *(a2 + 160);
  v5 = qword_100192D38;
  v6 = os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_DEFAULT);
  if (v4 == v3)
  {
    if (v6)
    {
      v10 = 0;
      v7 = "[CadenceManager] ==== STARTUP ROLLOVER PERIOD: RESUME (same period) ====";
      v8 = &v10;
      goto LABEL_6;
    }
  }

  else if (v6)
  {
    v11 = 0;
    v7 = "[CadenceManager] ==== STARTUP ROLLOVER PERIOD: PAST DUE ====";
    v8 = &v11;
LABEL_6:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
  }

  return v4 != v3;
}

uint64_t sub_100037788(uint64_t a1, uint64_t *a2)
{
  v4 = qword_100192D38;
  if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v5 = *v5;
    }

    v23 = 136446210;
    v24 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[CadenceManager] ==== OS BUILD: %{public}s ====", &v23, 0xCu);
  }

  v6 = *a2;
  if (*a2)
  {
    v7 = (a1 + 32);
    v8 = *(a2 + 31);
    if (v8 >= 0)
    {
      v9 = *(a2 + 31);
    }

    else
    {
      v9 = a2[2];
    }

    v10 = *(a1 + 55);
    v11 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a1 + 40);
    }

    if (v9 == v10 && (v8 >= 0 ? (v12 = a2 + 1) : (v12 = a2[1]), (v13 = *v7, v11 >= 0) ? (v14 = (a1 + 32)) : (v14 = *v7), !memcmp(v12, v14, v9)))
    {
      v19 = *(a1 + 24);
      v20 = qword_100192D38;
      v21 = os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_DEFAULT);
      if (v6 == v19)
      {
        if (v21)
        {
          LOWORD(v23) = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[CadenceManager] ==== BOOT STATE: AFTER RESTART ====", &v23, 2u);
        }

        return 3;
      }

      else if (v21)
      {
        LOWORD(v23) = 0;
        v17 = 2;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[CadenceManager] ==== BOOT STATE: AFTER REBOOT ====", &v23, 2u);
      }

      else
      {
        return 2;
      }
    }

    else
    {
      v15 = qword_100192D38;
      if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 31) >= 0)
        {
          v16 = a2 + 1;
        }

        else
        {
          v16 = a2[1];
        }

        if (*(a1 + 55) < 0)
        {
          v7 = *v7;
        }

        v23 = 136446466;
        v24 = v16;
        v25 = 2082;
        v26 = v7;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[CadenceManager] ==== BOOT STATE: OS UPDATE (previous: %{public}s, current: %{public}s) ====", &v23, 0x16u);
      }

      return 1;
    }
  }

  else
  {
    v18 = qword_100192D38;
    v17 = 0;
    if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[CadenceManager] ==== BOOT STATE: NO DATA ====", &v23, 2u);
      return 0;
    }
  }

  return v17;
}

uint64_t sub_100037A00(uint64_t a1)
{
  if (*(a1 + 272) == 1)
  {
    return 1;
  }

  v3 = *(a1 + 328);
  if (!v3)
  {
    sub_10002B200();
  }

  (*(*v3 + 48))(__p);
  v4 = *(a1 + 223);
  if (v4 >= 0)
  {
    v5 = *(a1 + 223);
  }

  else
  {
    v5 = *(a1 + 208);
  }

  v6 = v12;
  v7 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  if (v5 != v6)
  {
    v1 = 1;
    if ((v12 & 0x80000000) == 0)
    {
      return v1;
    }

LABEL_19:
    operator delete(__p[0]);
    return v1;
  }

  if (v4 >= 0)
  {
    v8 = (a1 + 200);
  }

  else
  {
    v8 = *(a1 + 200);
  }

  if ((v12 & 0x80u) == 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  v1 = memcmp(v8, v9, v5) != 0;
  if (v7 < 0)
  {
    goto LABEL_19;
  }

  return v1;
}

uint64_t sub_100037B1C(uint64_t a1)
{
  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_100037BC0(uint64_t a1)
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

uint64_t sub_100037C40(uint64_t a1)
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

uint64_t *sub_100037CC0(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100037BC0(v1 + 304);
    v2 = *(v1 + 288);
    if (v2)
    {
      sub_10000786C(v2);
    }

    sub_100037B1C(v1 + 24);
    sub_10002CDDC(v1);
    operator delete();
  }

  return result;
}

void sub_100037DD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    sub_100037E1C(&a12, v12);
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_100037E1C(uint64_t a1, id *a2)
{
  v3 = sub_100006020(a2 + 2);
  dispatch_barrier_async_f(v3, a2, sub_100037F64);
}

void sub_100037E84(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100037EBC(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = sub_100006020(v1 + 2);
  dispatch_barrier_async_f(v2, v1, sub_100037F64);
}

uint64_t sub_100037F24(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100037F64(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_100037BC0(result + 304);
    v2 = *(v1 + 288);
    if (v2)
    {
      sub_10000786C(v2);
    }

    sub_100037B1C(v1 + 24);
    sub_10002CDDC(v1);

    operator delete();
  }

  return result;
}

unint64_t sub_100037FD0(uint64_t a1)
{
  v1 = **(a1 + 40);
  (*(**(v1 + 280) + 16))(v4);
  v2 = sub_1000373BC(v1, v4);
  sub_100037B1C(v4);
  return v2;
}

void sub_100038070(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100037B1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10003808C(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_1000380C8(uint64_t a1, uint64_t a2)
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

uint64_t *sub_100038148(uint64_t *a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  sub_100038228((*v1 + 304), v1 + 8);
  sub_1000381D8(&v4);
  return sub_1000120B8(&v3);
}

void sub_1000381BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  sub_1000381D8(va1);
  sub_1000120B8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1000381D8(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100037BC0(v1 + 8);
    operator delete();
  }

  return result;
}

void *sub_100038228(void *a1, uint64_t a2)
{
  sub_10003829C(v4, a2);
  sub_100038334(v4, a1);
  sub_100037BC0(v4);
  return a1;
}

uint64_t sub_10003829C(uint64_t a1, uint64_t a2)
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

void *sub_100038334(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        memset(v5, 170, sizeof(v5));
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_100038598(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_1000385A4(uint64_t a1, uint64_t a2)
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

uint64_t *sub_100038624(uint64_t *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *(*v1 + 280);
  sub_10003874C(v6, v1 + 8);
  (*(*v2 + 56))(v2, v6);
  sub_100037C40(v6);
  sub_1000386FC(&v5);
  return sub_1000120B8(&v4);
}

void sub_1000386D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  va_copy(va2, va1);
  v5 = va_arg(va2, void);
  sub_100037C40(va2);
  sub_1000386FC(va1);
  sub_1000120B8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1000386FC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100037C40(v1 + 8);
    operator delete();
  }

  return result;
}

uint64_t sub_10003874C(uint64_t a1, uint64_t a2)
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