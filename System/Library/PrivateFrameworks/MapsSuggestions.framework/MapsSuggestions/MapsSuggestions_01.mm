uint64_t sub_10003207C(uint64_t a1)
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

uint64_t sub_1000320CC(int64x2_t *a1)
{
  v2 = (*(a1->i64[1] + 8 * (a1[2].i64[0] / 0xAAuLL)) + 24 * (a1[2].i64[0] % 0xAAuLL));

  a1[2] = vaddq_s64(a1[2], xmmword_100056C80);

  return sub_100032154(a1, 1);
}

uint64_t sub_100032154(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0xAA)
  {
    a2 = 1;
  }

  if (v2 < 0x154)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 170;
  }

  return v4 ^ 1u;
}

void *sub_1000321B4(void *a1, void *a2)
{
  v2 = a2[2];
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_19;
  }

  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = a2[2];
    if (v2 >= *&v3)
    {
      v7 = v2 % *&v3;
    }
  }

  else
  {
    v7 = (*&v3 - 1) & v2;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_19:
    sub_10003241C();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v2)
    {
      break;
    }

    if (v6 > 1)
    {
      if (v10 >= *&v3)
      {
        v10 %= *&v3;
      }
    }

    else
    {
      v10 &= *&v3 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_19;
    }

LABEL_18:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_19;
    }
  }

  if (v9[2] != *a2 || (MapsSuggestionsAlmostSameLocation() & 1) == 0)
  {
    goto LABEL_18;
  }

  return v9;
}

void sub_1000323F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *a10, uint64_t a11)
{
  if (a10)
  {
    sub_10003272C(&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000324A4()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_1000324D8(uint64_t a1, size_t __n)
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

      sub_1000325C8(a1, prime);
    }
  }
}

void sub_1000325C8(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_1000324A4();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_10003272C(uint64_t a1, id *a2)
{
  if (*(a1 + 8) == 1)
  {
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void *sub_100032790(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v4 = a2[2];
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = a2[2];
    if (v4 >= *&v2)
    {
      v7 = v4 % *&v2;
    }
  }

  else
  {
    v7 = (*&v2 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  v9 = *v8;
  if (*v8)
  {
    do
    {
      v10 = v9[1];
      if (v4 == v10)
      {
        if (v9[2] == *a2 && (MapsSuggestionsAlmostSameLocation() & 1) != 0)
        {
          return v9;
        }
      }

      else
      {
        if (v6 > 1)
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

      v9 = *v9;
    }

    while (v9);
  }

  return v9;
}

id sub_100032890(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 170 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    sub_10003295C(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = (*(v4 + 8 * (v7 / 0xAA)) + 24 * (v7 % 0xAA));
  }

  *v8 = *a2;
  result = *(a2 + 8);
  v10 = *(a2 + 16);
  v8[1] = result;
  v8[2] = v10;
  ++a1[5];
  return result;
}

void *sub_10003295C(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
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
    sub_100032F58(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_100032B30(a1, &v10);
}

void sub_100032AE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_100032B30(void *result, void *a2)
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

      sub_100032F58(result, v11);
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

const void **sub_100032C38(const void **result, void *a2)
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

      sub_100032F58(result, v9);
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

void *sub_100032D44(void *result, void *a2)
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

      sub_100032F58(result[4], v11);
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

const void **sub_100032E4C(const void **result, void *a2)
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

      sub_100032F58(result[4], v9);
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

void sub_100032F58(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1000324A4();
}

void sub_100032FA0(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_100032FFC(a1, *(a1 + 16));
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

void sub_100032FFC(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_100033048(uint64_t a1)
{
  sub_100032FFC(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_100033084(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x26u);
}

void sub_10003344C(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100085648;
  qword_100085648 = v1;

  v3 = qword_100085648;

  [v3 setDateFormat:@"yyyy'-'MM'-'dd'T'HH':'mm':'ss"];
}

void sub_100033908(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_100033A1C(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_100033B30(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

id sub_100033E44()
{
  if (qword_100085660 != -1)
  {
    sub_10004D0D4();
  }

  v1 = qword_100085658;

  return v1;
}

void sub_100033E88(id a1)
{
  qword_100085658 = objc_alloc_init(DestinationDaemon);

  _objc_release_x1();
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = +[GEOPlatform sharedPlatform];
  if (![v1 isInternalInstall])
  {
    goto LABEL_4;
  }

  BOOL = GEOConfigGetBOOL();

  if (BOOL)
  {
    GEOConfigGetUint64();
    GEOConfigGetUint64();
    GEOGetApproximateTapewormIterations();
    v1 = GEOInsertTapewormOnDispatchTimer();
LABEL_4:
  }

  v3 = +[NSRunLoop currentRunLoop];
  [v3 performBlock:&stru_100076010];

  objc_autoreleasePoolPop(v0);
  v4 = +[NSRunLoop currentRunLoop];
  [v4 run];

  return 0;
}

void sub_100033FB0(id a1)
{
  v1 = sub_100033E44();
  [v1 start];
}

void sub_100034C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v16 - 120));

  _Unwind_Resume(a1);
}

void sub_100034CD8(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 addOrUpdateMySuggestionEntries:&__NSArray0__struct];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))();
  }

  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [v3 uniqueName];
    v8 = 138412546;
    v9 = v6;
    v10 = 2080;
    v11 = "updateSuggestionEntriesWithHandler";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v8, 0x16u);
  }

  v7 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v7))
  {
    LOWORD(v8) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "updateSuggestionEntriesWithHandler", "", &v8, 2u);
  }
}

void sub_100034E88(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 addOrUpdateMySuggestionEntries:&__NSArray0__struct];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))();
  }

  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [v3 uniqueName];
    v8 = 138412546;
    v9 = v6;
    v10 = 2080;
    v11 = "updateSuggestionEntriesWithHandler";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v8, 0x16u);
  }

  v7 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v7))
  {
    LOWORD(v8) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "updateSuggestionEntriesWithHandler", "", &v8, 2u);
  }
}

void sub_100035038(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 addOrUpdateMySuggestionEntries:&__NSArray0__struct];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))();
  }

  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [v3 uniqueName];
    v8 = 138412546;
    v9 = v6;
    v10 = 2080;
    v11 = "updateSuggestionEntriesWithHandler";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v8, 0x16u);
  }

  v7 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v7))
  {
    LOWORD(v8) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "updateSuggestionEntriesWithHandler", "", &v8, 2u);
  }
}

void sub_1000351E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v18 = "MapsSuggestionsWalletSource.mm";
      v19 = 1026;
      LODWORD(v20[0]) = 130;
      WORD2(v20[0]) = 2082;
      *(v20 + 6) = "[MapsSuggestionsWalletSource updateSuggestionEntriesWithHandler:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelfRequest went away in %{public}s", buf, 0x1Cu);
    }

    goto LABEL_8;
  }

  if (v5 && !v6)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100035578;
    v14[3] = &unk_100076060;
    v15 = v5;
    v16 = *(a1 + 32);
    sub_100007A5C(WeakRetained + 1, WeakRetained, v14);

    v8 = v15;
LABEL_8:

    goto LABEL_17;
  }

  v9 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Error while reading suggestions from Wallet: %@", buf, 0xCu);
  }

  [WeakRetained addOrUpdateMySuggestionEntries:&__NSArray0__struct];
  v10 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = [WeakRetained uniqueName];
    *buf = 138412546;
    v18 = v11;
    v19 = 2080;
    v20[0] = "updateSuggestionEntriesWithHandler";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", buf, 0x16u);
  }

  v12 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "updateSuggestionEntriesWithHandler", "", buf, 2u);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    (*(v13 + 16))();
  }

LABEL_17:
}

void sub_100035578(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 addOrUpdateMySuggestionEntries:*(a1 + 32)];
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))();
  }

  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [v3 uniqueName];
    v8 = 138412546;
    v9 = v6;
    v10 = 2080;
    v11 = "updateSuggestionEntriesWithHandler";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v8, 0x16u);
  }

  v7 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v7))
  {
    LOWORD(v8) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "updateSuggestionEntriesWithHandler", "", &v8, 2u);
  }
}

void sub_1000357D0(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = [a1 uniqueName];
      *buf = 138412546;
      v20 = v5;
      v21 = 2080;
      v22 = "_getAllUserCurrentBookingsWithHandler";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
    }

    v6 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_getAllUserCurrentBookingsWithHandler", "", buf, 2u);
    }

    objc_initWeak(buf, a1);
    if ((+[MapsSuggestionsSiri isEnabled]& 1) != 0)
    {
      v7 = objc_alloc_init(INGetUserCurrentRestaurantReservationBookingsIntent);
      GEOConfigGetDouble();
      v9 = [NSDate dateWithTimeIntervalSinceNow:-v8];
      [v7 setEarliestBookingDateForResults:v9];

      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100035D44;
      v12[3] = &unk_1000760B0;
      objc_copyWeak(&v14, buf);
      v13 = v3;
      sub_100035F80(a1, v7, v12);

      objc_destroyWeak(&v14);
    }

    else
    {
      v10 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "User turned off Siri: we're not using our suggestions", v18, 2u);
      }

      v11 = a1[1];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100035B28;
      block[3] = &unk_100075B88;
      objc_copyWeak(&v17, buf);
      v16 = v3;
      dispatch_async(v11, block);

      objc_destroyWeak(&v17);
    }

    objc_destroyWeak(buf);
  }
}

void sub_100035AF4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_100035B28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained addOrUpdateMySuggestionEntries:&__NSArray0__struct];
    v4 = *(a1 + 32);
    if (v4)
    {
      (*(v4 + 16))();
    }

    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [v3 uniqueName];
      v8 = 138412546;
      v9 = v6;
      v10 = 2080;
      v11[0] = "_getAllUserCurrentBookingsWithHandler";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v8, 0x16u);
    }

    v7 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v7))
    {
      LOWORD(v8) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_getAllUserCurrentBookingsWithHandler", "", &v8, 2u);
    }
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446722;
      v9 = "MapsSuggestionsReservationsSource.m";
      v10 = 1026;
      LODWORD(v11[0]) = 108;
      WORD2(v11[0]) = 2082;
      *(v11 + 6) = "[MapsSuggestionsReservationsSource _getAllUserCurrentBookingsWithHandler:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v8, 0x1Cu);
    }
  }
}

void sub_100035D44(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      if (([WeakRetained isSuspended] & 1) == 0)
      {
        [v5 addOrUpdateMySuggestionEntries:v3];
        v6 = *(a1 + 32);
        if (v6)
        {
          (*(v6 + 16))();
        }
      }
    }

    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = [v5 uniqueName];
      v10 = 138412546;
      v11 = v8;
      v12 = 2080;
      v13[0] = "_getAllUserCurrentBookingsWithHandler";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v10, 0x16u);
    }

    v9 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v9))
    {
      LOWORD(v10) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_getAllUserCurrentBookingsWithHandler", "", &v10, 2u);
    }
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446722;
      v11 = "MapsSuggestionsReservationsSource.m";
      v12 = 1026;
      LODWORD(v13[0]) = 120;
      WORD2(v13[0]) = 2082;
      *(v13 + 6) = "[MapsSuggestionsReservationsSource _getAllUserCurrentBookingsWithHandler:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v10, 0x1Cu);
    }
  }
}

void sub_100035F80(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    objc_initWeak(&location, a1);
    v7 = a1[1];
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [a1 uniqueName];
      *buf = 138412546;
      v23 = v9;
      v24 = 2080;
      v25 = "managerWithExtensionLookupPolicy";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
    }

    v10 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "managerWithExtensionLookupPolicy", "", buf, 2u);
    }

    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v21 = v12;
    v13 = [NSArray arrayWithObjects:&v21 count:1];
    v14 = [NSExtension _intents_extensionMatchingAttributesForIntents:v13];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100036260;
    v16[3] = &unk_100076128;
    v15 = v7;
    v17 = v15;
    objc_copyWeak(v19, &location);
    v19[1] = "_entriesForIntent:completion:";
    v18 = v6;
    [NSExtension extensionsWithMatchingAttributes:v14 completion:v16];

    objc_destroyWeak(v19);
    objc_destroyWeak(&location);
  }
}

void sub_100036260(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100036374;
  v11[3] = &unk_100076100;
  objc_copyWeak(v16, (a1 + 48));
  v8 = *(a1 + 56);
  v12 = v6;
  v16[1] = v8;
  v15 = *(a1 + 40);
  v13 = v5;
  v14 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, v11);

  objc_destroyWeak(v16);
}

void sub_100036374(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v4 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = NSStringFromSelector(*(a1 + 72));
        v6 = *(a1 + 32);
        *buf = 138412546;
        v19 = v5;
        v20 = 2112;
        v21[0] = v6;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%@ received error: %@", buf, 0x16u);
      }

      v7 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = [v3 uniqueName];
        *buf = 138412546;
        v19 = v8;
        v20 = 2080;
        v21[0] = "managerWithExtensionLookupPolicy";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", buf, 0x16u);
      }

      v9 = GEOFindOrCreateLog();
      if (!os_signpost_enabled(v9))
      {
        goto LABEL_18;
      }

      *buf = 0;
    }

    else
    {
      if (![WeakRetained isSuspended])
      {
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10003676C;
        v14[3] = &unk_1000760D8;
        v13 = *(a1 + 40);
        v15 = *(a1 + 48);
        v16 = v3;
        v17 = *(a1 + 56);
        sub_10004D0E8(v3, v13, v14);

        goto LABEL_19;
      }

      v11 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = [v3 uniqueName];
        *buf = 138412546;
        v19 = v12;
        v20 = 2080;
        v21[0] = "managerWithExtensionLookupPolicy";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
      }

      v9 = GEOFindOrCreateLog();
      if (!os_signpost_enabled(v9))
      {
        goto LABEL_18;
      }

      *buf = 0;
    }

    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "managerWithExtensionLookupPolicy", "", buf, 2u);
LABEL_18:

    (*(*(a1 + 56) + 16))();
    goto LABEL_19;
  }

  v10 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v19 = "MapsSuggestionsReservationsSource.m";
    v20 = 1026;
    LODWORD(v21[0]) = 143;
    WORD2(v21[0]) = 2082;
    *(v21 + 6) = "[MapsSuggestionsReservationsSource _entriesForIntent:completion:]_block_invoke_2";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
  }

LABEL_19:
}

void sub_10003676C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = [*(a1 + 40) uniqueName];
    v7 = 138412546;
    v8 = v5;
    v9 = 2080;
    v10 = "managerWithExtensionLookupPolicy";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v7, 0x16u);
  }

  v6 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v6))
  {
    LOWORD(v7) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "managerWithExtensionLookupPolicy", "", &v7, 2u);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1000368E0(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 count])
  {
    v3 = *(a1 + 32);
    objc_sync_enter(v3);
    [*(a1 + 32) addObjectsFromArray:v4];
    objc_sync_exit(v3);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_100036970(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    objc_initWeak(&location, a1);
    v7 = a1[1];
    v8 = objc_alloc_init(INGetUserCurrentRestaurantReservationBookingsIntent);
    GEOConfigGetDouble();
    v9 = MapsSuggestionsNowWithOffset();
    [v8 setEarliestBookingDateForResults:v9];

    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = [a1 uniqueName];
      *buf = 138412546;
      *&buf[4] = v11;
      *&buf[12] = 2080;
      *&buf[14] = "expectResponseClass";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
    }

    v12 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "expectResponseClass", "", buf, 2u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v26 = 0;
    v13 = sub_10004D34C(a1, v5);
    v14 = [v13 stringByReplacingOccurrencesOfString:@"com." withString:&stru_100078200];
    if (v13)
    {
      [a1[2] registerBundleID:v13 withSource:a1];
      if ([a1[2] isBundleIDLocked:v13 forSource:a1])
      {
        sub_10004E188(a1, v23, &location, v6);
LABEL_12:

        _Block_object_dispose(buf, 8);
        objc_destroyWeak(&location);
        goto LABEL_13;
      }

      if (([MapsSuggestionsSiri canLearnFromBundleID:v13]& 1) == 0)
      {
        sub_10004E0F8(a1, v22, &location, v6);
        goto LABEL_12;
      }
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000371A8;
    v15[3] = &unk_1000761A0;
    v16 = v7;
    v20 = buf;
    objc_copyWeak(&v21, &location);
    v19 = v6;
    v17 = v14;
    v18 = v13;
    sub_100037874(a1, v8, v5, v15);

    objc_destroyWeak(&v21);
    goto LABEL_12;
  }

LABEL_13:
}

void sub_100036D48(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2);
}

void sub_100036DA0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = GEOFindOrCreateLog();
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = [WeakRetained uniqueName];
      v9 = 138412546;
      v10 = v5;
      v11 = 2080;
      v12[0] = "expectResponseClass";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v9, 0x16u);
    }

    v6 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v6))
    {
      LOWORD(v9) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "expectResponseClass", "", &v9, 2u);
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      (*(v7 + 16))(v7, 0);
    }
  }

  else
  {
    v8 = v3;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 136446722;
      v10 = "MapsSuggestionsReservationsSource.m";
      v11 = 1026;
      LODWORD(v12[0]) = 249;
      WORD2(v12[0]) = 2082;
      *(v12 + 6) = "[MapsSuggestionsReservationsSource _entriesForExtension:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v9, 0x1Cu);
    }
  }
}

void sub_100036FA4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = GEOFindOrCreateLog();
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = [WeakRetained uniqueName];
      v9 = 138412546;
      v10 = v5;
      v11 = 2080;
      v12[0] = "expectResponseClass";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v9, 0x16u);
    }

    v6 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v6))
    {
      LOWORD(v9) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "expectResponseClass", "", &v9, 2u);
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      (*(v7 + 16))(v7, 0);
    }
  }

  else
  {
    v8 = v3;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 136446722;
      v10 = "MapsSuggestionsReservationsSource.m";
      v11 = 1026;
      LODWORD(v12[0]) = 253;
      WORD2(v12[0]) = 2082;
      *(v12 + 6) = "[MapsSuggestionsReservationsSource _entriesForExtension:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v9, 0x1Cu);
    }
  }
}

void sub_1000371A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  v9 = *(a1 + 32);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000372F8;
  v17[3] = &unk_100076178;
  v22 = *(a1 + 64);
  objc_copyWeak(&v23, (a1 + 72));
  v10 = *(a1 + 56);
  v18 = v7;
  v19 = v8;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  *&v13 = *(a1 + 32);
  *(&v13 + 1) = v10;
  *&v14 = v11;
  *(&v14 + 1) = v12;
  v20 = v14;
  v21 = v13;
  v15 = v8;
  v16 = v7;
  dispatch_async(v9, v17);

  objc_destroyWeak(&v23);
}

void sub_1000372F8(uint64_t a1)
{
  v1 = *(*(a1 + 80) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    WeakRetained = objc_loadWeakRetained((a1 + 88));
    v4 = WeakRetained;
    if (WeakRetained)
    {
      if ([WeakRetained isSuspended])
      {
        v5 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          v6 = [v4 uniqueName];
          *buf = 138412546;
          v20 = v6;
          v21 = 2080;
          v22[0] = "expectResponseClass";
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
        }

        v7 = GEOFindOrCreateLog();
        if (os_signpost_enabled(v7))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "expectResponseClass", "", buf, 2u);
        }

        (*(*(a1 + 72) + 16))();
      }

      else
      {
        v9 = *(a1 + 32);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && v9 && !*(a1 + 40))
        {
          v13 = *(a1 + 48);
          v14 = *(a1 + 56);
          v15[0] = _NSConcreteStackBlock;
          v15[1] = 3221225472;
          v15[2] = sub_100037700;
          v15[3] = &unk_1000760D8;
          v16 = *(a1 + 64);
          v17 = v4;
          v18 = *(a1 + 72);
          sub_10004D414(v4, v9, v13, v14, v15);
        }

        else
        {
          v10 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            v11 = [v4 uniqueName];
            *buf = 138412546;
            v20 = v11;
            v21 = 2080;
            v22[0] = "expectResponseClass";
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", buf, 0x16u);
          }

          v12 = GEOFindOrCreateLog();
          if (os_signpost_enabled(v12))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "expectResponseClass", "", buf, 2u);
          }

          (*(*(a1 + 72) + 16))();
        }
      }
    }

    else
    {
      v8 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v20 = "MapsSuggestionsReservationsSource.m";
        v21 = 1026;
        LODWORD(v22[0]) = 266;
        WORD2(v22[0]) = 2082;
        *(v22 + 6) = "[MapsSuggestionsReservationsSource _entriesForExtension:completion:]_block_invoke_2";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
      }
    }
  }
}

void sub_100037700(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = [*(a1 + 40) uniqueName];
    v7 = 138412546;
    v8 = v5;
    v9 = 2080;
    v10 = "expectResponseClass";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v7, 0x16u);
  }

  v6 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v6))
  {
    LOWORD(v7) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "expectResponseClass", "", &v7, 2u);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100037874(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (a1)
  {
    if (v9)
    {
      objc_initWeak(&location, v8);
      objc_initWeak(&from, a1);
      v11 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = [a1 uniqueName];
        *buf = 138412546;
        v23 = v12;
        v24 = 2080;
        v25 = "restaurantReservationIntentRequest";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
      }

      v13 = GEOFindOrCreateLog();
      if (os_signpost_enabled(v13))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "restaurantReservationIntentRequest", "", buf, 2u);
      }

      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100037B28;
      v14[3] = &unk_100076240;
      objc_copyWeak(&v18, &from);
      objc_copyWeak(&v19, &location);
      v17 = v10;
      v15 = v8;
      v16 = v7;
      [v15 beginExtensionRequestWithInputItems:0 completion:v14];

      objc_destroyWeak(&v19);
      objc_destroyWeak(&v18);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }

    else
    {
      sub_10004E218();
    }
  }
}

void sub_100037AE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, id a20)
{
  objc_destroyWeak(&location);
  objc_destroyWeak(&a20);
  _Unwind_Resume(a1);
}

void sub_100037B28(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained(a1 + 8);
    if (!v5 || v6)
    {
      (*(a1[6] + 2))();
      if (v5 && v8)
      {
        [v8 cancelExtensionRequestWithIdentifier:v5];
      }

      v15 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v31 = v6;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "failed because requestIdentifier == nil || error is %@", buf, 0xCu);
      }

      v16 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = [WeakRetained uniqueName];
        *buf = 138412546;
        v31 = v17;
        v32 = 2080;
        *v33 = "restaurantReservationIntentRequest";
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", buf, 0x16u);
      }

      v9 = GEOFindOrCreateLog();
      if (os_signpost_enabled(v9))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "restaurantReservationIntentRequest", "", buf, 2u);
      }
    }

    else
    {
      v9 = [a1[4] _extensionContextForUUID:v5];
      v10 = [v9 _auxiliaryConnection];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100037FDC;
      v24[3] = &unk_1000761C8;
      objc_copyWeak(&v29, a1 + 7);
      v28 = a1[6];
      v8 = v8;
      v25 = v8;
      v26 = v5;
      v27 = 0;
      v11 = [v10 remoteObjectProxyWithErrorHandler:v24];
      v12 = [a1[5] identifier];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10003827C;
      v18[3] = &unk_100076218;
      v13 = v11;
      v19 = v13;
      v20 = a1[5];
      objc_copyWeak(&v23, a1 + 7);
      v22 = a1[6];
      v14 = v12;
      v21 = v14;
      [v13 beginTransactionWithIntentIdentifier:v14 completion:v18];

      objc_destroyWeak(&v23);
      objc_destroyWeak(&v29);
    }
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v31 = "MapsSuggestionsReservationsSource.m";
      v32 = 1026;
      *v33 = 300;
      *&v33[4] = 2082;
      *&v33[6] = "[MapsSuggestionsReservationsSource _handleIntent:withExtension:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    v8 = v9;
  }
}

void sub_100037FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  objc_destroyWeak((v26 + 64));
  objc_destroyWeak(&a26);
  _Unwind_Resume(a1);
}

void sub_100037FDC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (!WeakRetained)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = 136446722;
      v12 = "MapsSuggestionsReservationsSource.m";
      v13 = 1026;
      LODWORD(v14[0]) = 316;
      WORD2(v14[0]) = 2082;
      *(v14 + 6) = "[MapsSuggestionsReservationsSource _handleIntent:withExtension:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf2 went away in %{public}s", &v11, 0x1Cu);
    }

    goto LABEL_13;
  }

  (*(*(a1 + 56) + 16))();
  v5 = *(a1 + 32);
  if (v5 && *(a1 + 40))
  {
    [v5 cancelExtensionRequestWithIdentifier:?];
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 48);
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "failed because error {%@} occured on the connection", &v11, 0xCu);
    }

    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [WeakRetained uniqueName];
      v11 = 138412546;
      v12 = v9;
      v13 = 2080;
      v14[0] = "restaurantReservationIntentRequest";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", &v11, 0x16u);
    }

    v10 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v10))
    {
      LOWORD(v11) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "restaurantReservationIntentRequest", "", &v11, 2u);
    }

LABEL_13:
  }
}

void sub_10003827C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100038368;
  v4[3] = &unk_1000761F0;
  objc_copyWeak(&v8, (a1 + 64));
  v7 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  [v2 handleIntent:v3 withCompletion:v4];

  objc_destroyWeak(&v8);
}

void sub_100038368(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    (*(*(a1 + 48) + 16))();
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10003852C;
    v17[3] = &unk_100075830;
    v17[4] = WeakRetained;
    [v14 completeTransactionWithIntentIdentifier:v15 completion:v17];
  }

  else
  {
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v19 = "MapsSuggestionsReservationsSource.m";
      v20 = 1026;
      v21 = 329;
      v22 = 2082;
      v23 = "[MapsSuggestionsReservationsSource _handleIntent:withExtension:completion:]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf2 went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_10003852C(uint64_t a1)
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = [*(a1 + 32) uniqueName];
    v5 = 138412546;
    v6 = v3;
    v7 = 2080;
    v8 = "restaurantReservationIntentRequest";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v5, 0x16u);
  }

  v4 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v4))
  {
    LOWORD(v5) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "restaurantReservationIntentRequest", "", &v5, 2u);
  }
}

void sub_100038678(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = *(a1 + 32);
    objc_sync_enter(v3);
    [*(a1 + 32) addObject:v4];
    objc_sync_exit(v3);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_100038704(id *a1, void *a2, void *a3, void *a4, void *a5)
{
  v43 = a2;
  v39 = a3;
  v41 = a4;
  v42 = a5;
  if (a1)
  {
    objc_initWeak(&location, a1);
    v9 = a1[1];
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = [a1 uniqueName];
      *buf = 138412546;
      v58 = v11;
      v59 = 2080;
      v60 = "ticketForExternalBusinessID";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
    }

    v12 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ticketForExternalBusinessID", "", buf, 2u);
    }

    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = [v43 restaurant];
      v15 = [v14 restaurantIdentifier];
      v16 = [v43 restaurant];
      v17 = [v16 vendorIdentifier];
      *buf = 138478083;
      v58 = v15;
      v59 = 2113;
      v60 = v17;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Looking for business '%{private}@' as known to '%{private}@'", buf, 0x16u);
    }

    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_100038E04;
    v50[3] = &unk_1000762B8;
    objc_copyWeak(&v55, &location);
    v18 = v42;
    v54 = v18;
    v19 = v43;
    v51 = v19;
    v52 = v41;
    v40 = v9;
    v53 = v40;
    v20 = objc_retainBlock(v50);
    v21 = [v19 restaurant];
    v22 = [v21 restaurantIdentifier];
    v23 = [v19 restaurant];
    v24 = [v23 vendorIdentifier];
    v25 = v22;
    v26 = v24;
    v27 = [[NSString alloc] initWithFormat:@"%@-%@", v25, v26];

    v28 = [a1[3] objectForKeyedSubscript:v27];
    if (v28)
    {
      v29 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v58 = v27;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "Found %@ in our cache!", buf, 0xCu);
      }

      (v20[2])(v20, v28);
    }

    else
    {
      v30 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v58 = v27;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "Didn't find %@ in our cache. Asking GeoServices...", buf, 0xCu);
      }

      v31 = +[GEOMapService sharedService];
      v38 = [v31 defaultTraits];

      v32 = +[GEOMapService sharedService];
      v33 = [v19 restaurant];
      v34 = [v33 restaurantIdentifier];
      v35 = [v19 restaurant];
      v36 = [v35 vendorIdentifier];
      v37 = [v32 ticketForExternalBusinessID:v34 contentProvider:v36 traits:v38];

      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_1000393FC;
      v44[3] = &unk_100076308;
      v45 = v40;
      objc_copyWeak(&v49, &location);
      v47 = v18;
      v46 = v27;
      v48 = v20;
      [v37 submitWithHandler:v44 networkActivity:0];

      objc_destroyWeak(&v49);
    }

    objc_destroyWeak(&v55);
    objc_destroyWeak(&location);
  }
}

void sub_100038D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35)
{
  objc_destroyWeak((v35 + 64));
  objc_destroyWeak(&a35);
  objc_destroyWeak((v36 - 152));
  _Unwind_Resume(a1);
}

void sub_100038DAC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2);
}

void sub_100038E04(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = WeakRetained;
  if (WeakRetained && ![WeakRetained isSuspended])
  {
    if (v3)
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000391DC;
      v15[3] = &unk_100076290;
      v16 = *(a1 + 48);
      objc_copyWeak(&v18, (a1 + 64));
      v17 = *(a1 + 56);
      sub_10004DA14(v5, v3, v10, v11, v15);

      objc_destroyWeak(&v18);
      v9 = v16;
      goto LABEL_18;
    }

    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Could not get a MapItem", buf, 2u);
    }

    (*(*(a1 + 56) + 16))();
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = [v5 uniqueName];
      *buf = 138412546;
      v20 = v14;
      v21 = 2080;
      v22 = "ticketForExternalBusinessID";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
    }

    v9 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v9))
    {
      *buf = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Suspended", buf, 2u);
    }

    (*(*(a1 + 56) + 16))();
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = [v5 uniqueName];
      *buf = 138412546;
      v20 = v8;
      v21 = 2080;
      v22 = "ticketForExternalBusinessID";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
    }

    v9 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v9))
    {
      *buf = 0;
LABEL_9:
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ticketForExternalBusinessID", "", buf, 2u);
    }
  }

LABEL_18:
}

void sub_1000391DC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    (*(*(a1 + 40) + 16))();
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [WeakRetained uniqueName];
      v8 = 138412546;
      v9 = v6;
      v10 = 2080;
      v11[0] = "ticketForExternalBusinessID";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v8, 0x16u);
    }

    v7 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v7))
    {
      LOWORD(v8) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ticketForExternalBusinessID", "", &v8, 2u);
    }
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446722;
      v9 = "MapsSuggestionsReservationsSource.m";
      v10 = 1026;
      LODWORD(v11[0]) = 439;
      WORD2(v11[0]) = 2082;
      *(v11 + 6) = "[MapsSuggestionsReservationsSource _createEntryForBooking:vendorID:bundleID:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf2 went away in %{public}s", &v8, 0x1Cu);
    }
  }
}

void sub_1000393FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100039518;
  v10[3] = &unk_1000762E0;
  objc_copyWeak(&v16, (a1 + 64));
  v11 = v5;
  v12 = v6;
  v14 = *(a1 + 48);
  v13 = *(a1 + 40);
  v15 = *(a1 + 56);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);

  objc_destroyWeak(&v16);
}

void sub_100039518(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    if ([*(a1 + 32) count] && !*(a1 + 40))
    {
      if ([WeakRetained isSuspended])
      {
        (*(*(a1 + 56) + 16))();
        v8 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v9 = [WeakRetained uniqueName];
          v13 = 138412546;
          v14 = v9;
          v15 = 2080;
          *v16 = "ticketForExternalBusinessID";
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v13, 0x16u);
        }

        v7 = GEOFindOrCreateLog();
        if (os_signpost_enabled(v7))
        {
          LOWORD(v13) = 0;
          goto LABEL_10;
        }
      }

      else
      {
        v10 = [*(a1 + 32) firstObject];
        v7 = MapsSuggestionsMapItemConvertIfNeeded();

        if (v7)
        {
          [WeakRetained[3] setObject:v7 forKeyedSubscript:*(a1 + 48)];
          v11 = *(*(a1 + 64) + 16);
        }

        else
        {
          v12 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
          {
            v13 = 136446978;
            v14 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsReservationsSource.m";
            v15 = 1024;
            *v16 = 477;
            *&v16[4] = 2082;
            *&v16[6] = "[MapsSuggestionsReservationsSource _createEntryForBooking:vendorID:bundleID:completion:]_block_invoke";
            v17 = 2082;
            v18 = "nil == (mapItem)";
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Could not convert MapItem", &v13, 0x26u);
          }

          v11 = *(*(a1 + 56) + 16);
        }

        v11();
      }
    }

    else
    {
      v3 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v4 = *(a1 + 40);
        v13 = 136315394;
        v14 = "[MapsSuggestionsReservationsSource _createEntryForBooking:vendorID:bundleID:completion:]_block_invoke";
        v15 = 2112;
        *v16 = v4;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s could not get MapItem: %@", &v13, 0x16u);
      }

      (*(*(a1 + 56) + 16))();
      v5 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = [WeakRetained uniqueName];
        v13 = 138412546;
        v14 = v6;
        v15 = 2080;
        *v16 = "ticketForExternalBusinessID";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", &v13, 0x16u);
      }

      v7 = GEOFindOrCreateLog();
      if (os_signpost_enabled(v7))
      {
        LOWORD(v13) = 0;
LABEL_10:
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ticketForExternalBusinessID", "", &v13, 2u);
      }
    }
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = 136446722;
      v14 = "MapsSuggestionsReservationsSource.m";
      v15 = 1026;
      *v16 = 461;
      *&v16[4] = 2082;
      *&v16[6] = "[MapsSuggestionsReservationsSource _createEntryForBooking:vendorID:bundleID:completion:]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v13, 0x1Cu);
    }
  }
}

void sub_1000399A4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "keysForSchemas received error: %@", buf, 0xCu);
    }

    goto LABEL_6;
  }

  if ([v5 count])
  {
    v7 = [v5 firstObject];
    [*(a1 + 32) setString:v7 forKey:@"MapsSuggestionsCoreSuggestionsOpaqueKey"];
LABEL_6:
  }

  objc_initWeak(buf, *(a1 + 40));
  v8 = *(a1 + 48);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100039B64;
  block[3] = &unk_100076330;
  objc_copyWeak(&v12, buf);
  v11 = *(a1 + 56);
  v10 = *(a1 + 32);
  dispatch_async(v8, block);

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

void sub_100039B64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = GEOFindOrCreateLog();
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = [WeakRetained uniqueName];
      v8 = 138412546;
      v9 = v5;
      v10 = 2080;
      v11[0] = "keysForSchemas";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v8, 0x16u);
    }

    v6 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v6))
    {
      LOWORD(v8) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "keysForSchemas", "", &v8, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = v3;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446722;
      v9 = "MapsSuggestionsReservationsSource.m";
      v10 = 1026;
      LODWORD(v11[0]) = 547;
      WORD2(v11[0]) = 2082;
      *(v11 + 6) = "[MapsSuggestionsReservationsSource _handleTicketResponseWithMapItem:booking:bundleID:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v8, 0x1Cu);
    }
  }
}

void sub_10003A1D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10003A1F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = GEOFindOrCreateLog();
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = [WeakRetained uniqueName];
      v6 = NSStringFromMapsSuggestionsCurrentBestLocation();
      v10 = 138412802;
      v11 = v5;
      v12 = 2112;
      *v13 = @"ALL";
      *&v13[8] = 2112;
      *&v13[10] = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "{MSgDebug} UPDATING SOURCE{%@} for TYPE{%@} at LATLONG{%@}", &v10, 0x20u);
    }

    if ([WeakRetained isSuspended])
    {
      v7 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Source was suspended.", &v10, 2u);
      }

      [WeakRetained addOrUpdateMySuggestionEntries:&__NSArray0__struct];
      v8 = *(a1 + 32);
      if (v8)
      {
        (*(v8 + 16))();
      }
    }

    else
    {
      sub_1000357D0(WeakRetained, *(a1 + 32));
    }
  }

  else
  {
    v9 = v3;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446722;
      v11 = "MapsSuggestionsReservationsSource.m";
      v12 = 1026;
      *v13 = 635;
      *&v13[4] = 2082;
      *&v13[6] = "[MapsSuggestionsReservationsSource updateSuggestionEntriesWithHandler:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v10, 0x1Cu);
    }
  }
}

void sub_10003B9E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id location, id a12)
{
  objc_destroyWeak(&location);
  objc_destroyWeak(&a12);
  _Unwind_Resume(a1);
}

void sub_10003BB4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = MapsSuggestionsSourceWrapper;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10003BC18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v26 = v3;
    if (!v3)
    {
      v14 = GEOFindOrCreateLog();
      sub_10004E45C(v14, buf);
      v15 = *buf;
LABEL_20:

      v4 = v26;
      goto LABEL_21;
    }

    if ([*(a1 + 8) containsObject:v3])
    {
      v5 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = v26;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "WARNING: already had connection %@", buf, 0xCu);
      }
    }

    v25 = MapsSuggestionsIPCPeerIdentifier();
    v6 = MapsSuggestionsIPCPayloadForNSString();
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      *&buf[4] = v25;
      v35 = 2048;
      v36 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Incoming connection comes from %@ (%llu)", buf, 0x16u);
    }

    [*(a1 + 8) addObject:v26];
    v8 = [*(a1 + 8) count];
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    if (WeakRetained)
    {
      if (v8 == 1)
      {
        v9 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "This is the first connection", buf, 2u);
        }

        v10 = objc_loadWeakRetained((a1 + 32));
        [v10 startLocationUpdatesForDelegate:a1];
        objc_claimAutoreleasedReturnValue();

        v11 = MapsSuggestionsBestLocation();
        v12 = *(a1 + 40);
        *(a1 + 40) = v11;

        [*(a1 + 48) start];
        if ([objc_opt_class() disposition] == 1)
        {
          [*(a1 + 48) updateSuggestionEntriesWithHandler:0];
        }

        v13 = [WeakRetained signalPipeline];
        [v13 start];

        operator new();
      }

      v16 = [v26 remoteObjectProxy];
      v17 = objc_opt_respondsToSelector();

      if ((v17 & 1) == 0)
      {
        v24 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v26;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "For some weird reason, our connection is not right: %@", buf, 0xCu);
        }

        sub_10003C1E4(a1, v26);
        [v26 invalidate];
        goto LABEL_19;
      }

      if (![WeakRetained hasSourceData])
      {
LABEL_19:

        v15 = v25;
        goto LABEL_20;
      }

      [WeakRetained sourceNames];
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      obj = v30 = 0u;
      v18 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v18)
      {
        v19 = *v30;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v30 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v29 + 1) + 8 * i);
            v22 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              *&buf[4] = v21;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "Already sending what we have on %@", buf, 0xCu);
            }

            v23 = [WeakRetained entriesForSourceName:v21];
            sub_10003C2E4(a1, v23, v21);
          }

          v18 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v18);
      }
    }

    else
    {
      obj = GEOFindOrCreateLog();
      sub_10004E30C(obj);
    }

    goto LABEL_19;
  }

LABEL_21:
}

void sub_10003C1E4(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 7);
    if (WeakRetained)
    {
      [a1[1] removeObject:v3];
      objc_storeWeak(a1 + 3, 0);
      if (![a1[1] count])
      {
        [a1[6] stop];
        v5 = objc_loadWeakRetained(a1 + 4);
        [v5 stopLocationUpdatesForDelegate:a1];

        v6 = [WeakRetained signalPipeline];
        [v6 stop];
      }
    }

    else
    {
      v7 = GEOFindOrCreateLog();
      sub_10004E534(v7);
    }
  }
}

void sub_10003C2B0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_10003C2E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v27 = a1;
  v28 = v6;
  if (!a1)
  {
    v23 = 0;
    goto LABEL_32;
  }

  if ([v6 length])
  {
    if (v5)
    {
      v32 = [v5 count];
      WeakRetained = objc_loadWeakRetained((a1 + 56));
      v29 = [WeakRetained destinationGraph];
      v7 = [v5 copy];

      v31 = v7;
      v8 = [v7 count];
      if (v8)
      {
        for (i = 0; i != v8; ++i)
        {
          v10 = [v7 objectAtIndexedSubscript:i];
          if ([v10 BOOLeanForKey:@"MapsSuggestionsIsNotADestinationKey" is:1])
          {
            v11 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Entry not a destination, skipping Graph and ETA", buf, 2u);
            }
          }

          else
          {
            [v29 addEntry:v10];
            v11 = MapsSuggestionsDestinationKey();
            v12 = [WeakRetained getETAForDestinationKey:v11];
            if (v12)
            {
              [v10 setETA:v12 forKey:@"MapsSuggestionsETAKey"];
              v13 = GEOFindOrCreateLog();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                *v44 = v11;
                _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Re-applied cached ETA for Entry with destination key '%@'", buf, 0xCu);
              }
            }
          }
        }
      }

      v14 = NSDataFromMapsSuggestionsEntries();
      v35 = [v28 dataUsingEncoding:4];
      v34 = v14;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      obj = *(v27 + 8);
      v15 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v15)
      {
        v16 = *v39;
        do
        {
          for (j = 0; j != v15; j = j + 1)
          {
            if (*v39 != v16)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v38 + 1) + 8 * j);
            v19 = [v18 remoteObjectProxyWithErrorHandler:&stru_100076418];
            v20 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              *buf = 67109378;
              *v44 = v32;
              *&v44[4] = 2112;
              *&v44[6] = v18;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Sending %u entries over to %@", buf, 0x12u);
            }

            [v19 addOrUpdateSuggestionEntriesData:v34 sourceNameData:v35 handler:&stru_100076438];
          }

          v15 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
        }

        while (v15);
      }

      v21 = *(v27 + 16);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10003E0E8;
      block[3] = &unk_100075B38;
      v22 = v29;
      v37 = v22;
      dispatch_async(v21, block);
      v23 = [v31 count];

      v5 = v31;
      goto LABEL_31;
    }

    v25 = GEOFindOrCreateLog();
    WeakRetained = v25;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      *v44 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSourceWrapper.mm";
      *&v44[8] = 1024;
      *&v44[10] = 303;
      v45 = 2082;
      v46 = "[MapsSuggestionsSourceWrapper _addOrUpdateSuggestionEntries:source:]";
      v47 = 2082;
      v48 = "nil == (entries)";
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires MapsSuggestionsEntries", buf, 0x26u);
    }

    v5 = 0;
  }

  else
  {
    v24 = GEOFindOrCreateLog();
    WeakRetained = v24;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      *v44 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSourceWrapper.mm";
      *&v44[8] = 1024;
      *&v44[10] = 302;
      v45 = 2082;
      v46 = "[MapsSuggestionsSourceWrapper _addOrUpdateSuggestionEntries:source:]";
      v47 = 2082;
      v48 = "0u == sourceName.length";
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a Source name", buf, 0x26u);
    }
  }

  v23 = 0;
LABEL_31:

LABEL_32:
  return v23;
}

void sub_10003CBAC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    sub_10003BC18(WeakRetained, *(a1 + 32));
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsSourceWrapper.mm";
      v7 = 1026;
      v8 = 148;
      v9 = 2082;
      v10 = "[MapsSuggestionsSourceWrapper addMonitoredXPCConnection:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

void sub_10003CFE4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (([*(WeakRetained + 1) containsObject:*(a1 + 32)] & 1) == 0)
    {
      sub_10003BC18(v3, *(a1 + 32));
    }

    v4 = v3[6];
    v5 = *(a1 + 56);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10003D1CC;
    v7[3] = &unk_100075780;
    objc_copyWeak(&v9, (a1 + 48));
    v8 = *(a1 + 40);
    [v4 updateSuggestionEntriesOfType:v5 handler:v7];

    objc_destroyWeak(&v9);
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v11 = "MapsSuggestionsSourceWrapper.mm";
      v12 = 1026;
      v13 = 189;
      v14 = 2082;
      v15 = "[MapsSuggestionsSourceWrapper forceEarlyUpdateForType:forXPCConnection:handler:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_10003D1CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[2];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003D340;
    block[3] = &unk_100076380;
    v7 = *(a1 + 32);
    dispatch_async(v4, block);
    v5 = v7;
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v9 = "MapsSuggestionsSourceWrapper.mm";
      v10 = 1026;
      v11 = 201;
      v12 = 2082;
      v13 = "[MapsSuggestionsSourceWrapper forceEarlyUpdateForType:forXPCConnection:handler:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: innerStrongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

uint64_t sub_10003D340(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10003D528(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (([WeakRetained[1] containsObject:*(a1 + 32)] & 1) == 0)
    {
      sub_10003BC18(v3, *(a1 + 32));
    }

    v4 = [MapsSuggestionsEntry entryWithData:*(a1 + 40)];
    if (![v3[6] removeEntry:v4 behavior:*(a1 + 64) handler:*(a1 + 48)])
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "MapsSuggestionsSourceWrapper.mm";
      v8 = 1026;
      v9 = 218;
      v10 = 2082;
      v11 = "[MapsSuggestionsSourceWrapper removeEntryData:behavior:forXPCConnection:handler:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
    }
  }
}

void sub_10003D87C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (([WeakRetained[1] containsObject:*(a1 + 32)] & 1) == 0)
    {
      sub_10003BC18(v3, *(a1 + 32));
    }

    v4 = [MapsSuggestionsEntry entryWithData:*(a1 + 40)];
    [v3[6] feedbackForEntry:v4 action:*(a1 + 56)];
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "MapsSuggestionsSourceWrapper.mm";
      v8 = 1026;
      v9 = 244;
      v10 = 2082;
      v11 = "[MapsSuggestionsSourceWrapper feedbackForEntryData:action:forXPCConnection:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
    }
  }
}

void sub_10003DBB8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (([WeakRetained[1] containsObject:*(a1 + 32)] & 1) == 0)
    {
      sub_10003BC18(v3, *(a1 + 32));
    }

    [v3[6] feedbackForMapItem:*(a1 + 40) action:*(a1 + 56)];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsSourceWrapper.mm";
      v7 = 1026;
      v8 = 265;
      v9 = 2082;
      v10 = "[MapsSuggestionsSourceWrapper feedbackForMapItem:action:forXPCConnection:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

void sub_10003DEC0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (([WeakRetained[1] containsObject:*(a1 + 32)] & 1) == 0)
    {
      sub_10003BC18(v3, *(a1 + 32));
    }

    [v3[6] feedbackForContact:*(a1 + 40) action:*(a1 + 56)];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsSourceWrapper.mm";
      v7 = 1026;
      v8 = 285;
      v9 = 2082;
      v10 = "[MapsSuggestionsSourceWrapper feedbackForContact:action:forXPCConnection:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

void sub_10003E00C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "XPC Error: %@", &v4, 0xCu);
  }
}

void sub_10003E230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v20 + 56));
  objc_destroyWeak((v20 + 48));
  objc_destroyWeak(&location);

  objc_destroyWeak((v21 - 56));
  _Unwind_Resume(a1);
}

void sub_10003E280(void **a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (!WeakRetained)
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "MapsSuggestionsSourceWrapper.mm";
      v8 = 1026;
      v9 = 372;
      v10 = 2082;
      v11 = "[MapsSuggestionsSourceWrapper addOrUpdateSuggestionEntries:source:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
    }

    v4 = v5;
    goto LABEL_10;
  }

  v3 = objc_loadWeakRetained(a1 + 7);
  v4 = v3;
  if (!v3)
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "MapsSuggestionsSourceWrapper.mm";
      v8 = 1026;
      v9 = 373;
      v10 = 2082;
      v11 = "[MapsSuggestionsSourceWrapper addOrUpdateSuggestionEntries:source:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongMemory went away in %{public}s", &v6, 0x1Cu);
    }

LABEL_10:
    goto LABEL_11;
  }

  [v3 replaceEntries:a1[4] sourceName:a1[5]];
  sub_10003C2E4(WeakRetained, a1[4], a1[5]);
LABEL_11:
}

void sub_10003E600(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = *(v1 + 48);
  v2 = (v1 + 48);
  if (v3)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v5 = 136446978;
      v6 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSourceWrapper.mm";
      v7 = 1024;
      v8 = 391;
      v9 = 2082;
      v10 = "[MapsSuggestionsSourceWrapper attachSource:]_block_invoke";
      v11 = 2082;
      v12 = "nil != self->_source";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. There is already a Source attached", &v5, 0x26u);
    }
  }

  else
  {
    objc_storeStrong(v2, *(a1 + 40));
  }
}

void sub_10003E7A8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v1 + 48);
  if (v2 == v3)
  {
    *(v1 + 48) = 0;
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v5 = 136446978;
      v6 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSourceWrapper.mm";
      v7 = 1024;
      v8 = 401;
      v9 = 2082;
      v10 = "[MapsSuggestionsSourceWrapper detachSource:]_block_invoke";
      v11 = 2082;
      v12 = "source != self->_source";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. The Source you want to detach is not attached", &v5, 0x26u);
    }
  }
}

void sub_10003E9B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (MapsSuggestionsLoggingIsVerbose())
    {
      v3 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v4 = *(a1 + 32);
        v7 = 138412290;
        v8 = v4;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Setting location: %@", &v7, 0xCu);
      }
    }

    MapsSuggestionsSetMostRecentLocation();
    v5 = MapsSuggestionsBestLocation();
    v6 = WeakRetained[5];
    WeakRetained[5] = v5;
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446722;
      v8 = "MapsSuggestionsSourceWrapper.mm";
      v9 = 1026;
      v10 = 415;
      v11 = 2082;
      v12 = "[MapsSuggestionsSourceWrapper didUpdateLocation:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v7, 0x1Cu);
    }
  }
}

void sub_10003EC10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (MapsSuggestionsLoggingIsVerbose())
    {
      v2 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v5) = 0;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Lost Location Permission", &v5, 2u);
      }
    }

    v3 = *(WeakRetained + 5);
    *(WeakRetained + 5) = 0;

    MapsSuggestionsResetCurrentLocation();
    v4 = objc_loadWeakRetained(WeakRetained + 7);
    [v4 clearETAs];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsSourceWrapper.mm";
      v7 = 1026;
      v8 = 426;
      v9 = 2082;
      v10 = "[MapsSuggestionsSourceWrapper didLoseLocationPermission]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

void sub_10003EE90(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_10003EEEC(exception, a1);
}

std::logic_error *sub_10003EEEC(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_10003EF20(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x1Cu);
}

void sub_10003F25C(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100085668;
  qword_100085668 = v1;

  [qword_100085668 setDateStyle:0];
  v3 = qword_100085668;

  [v3 setTimeStyle:1];
}

void sub_10003F7AC(id a1)
{
  qword_100085678 = objc_opt_new();

  _objc_release_x1();
}

void sub_10003F7E8()
{
  if (!qword_100085688)
  {
    v0 = [NSBundle bundleWithIdentifier:@"com.apple.MapsSuggestions"];
    v1 = qword_100085688;
    qword_100085688 = v0;

    if (!qword_100085688)
    {
      v2 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
      {
        v3 = 136446978;
        v4 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDefines.h";
        v5 = 1024;
        v6 = 341;
        v7 = 2082;
        v8 = "NSBundle * _Nonnull _MapsSuggestionsBundle(const char * _Nonnull)_block_invoke";
        v9 = 2082;
        v10 = "nil == s_bundleWithMapsSuggestionsIdentifier";
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires bundleWithIdentifier:@com.apple.MapsSuggestions", &v3, 0x26u);
      }
    }
  }
}

void sub_10004045C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100040480(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = GEOFindOrCreateLog();
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = [WeakRetained uniqueName];
      v6 = NSStringFromMapsSuggestionsCurrentBestLocation();
      *buf = 138412802;
      v13 = v5;
      v14 = 2112;
      *v15 = @"ALL";
      *&v15[8] = 2112;
      *&v15[10] = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "{MSgDebug} UPDATING SOURCE{%@} for TYPE{%@} at LATLONG{%@}", buf, 0x20u);
    }

    v7 = WeakRetained[1];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000406C8;
    v9[3] = &unk_100076870;
    objc_copyWeak(&v11, (a1 + 40));
    v10 = *(a1 + 32);
    [v7 fetchConnectionEntriesWithHandler:v9];

    objc_destroyWeak(&v11);
  }

  else
  {
    v8 = v3;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v13 = "MapsSuggestionsAppConnectionSource.m";
      v14 = 1026;
      *v15 = 121;
      *&v15[4] = 2082;
      *&v15[6] = "[MapsSuggestionsAppConnectionSource updateSuggestionEntriesWithHandler:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_1000406C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v6)
    {
      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [v6 localizedDescription];
        v16 = 138412290;
        v17 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Received an error inside getRecentAppConnection: %@", &v16, 0xCu);
      }
    }

    v11 = sub_10004E61C(WeakRetained, v5);

    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = &__NSArray0__struct;
    }

    [WeakRetained addOrUpdateMySuggestionEntries:v12];
    v13 = *(a1 + 32);
    if (v13)
    {
      (*(v13 + 16))();
    }

    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = [WeakRetained uniqueName];
      v16 = 138412546;
      v17 = v15;
      v18 = 2080;
      v19[0] = "updateSuggestionEntriesWithHandler";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v16, 0x16u);
    }

    v8 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v8))
    {
      LOWORD(v16) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "updateSuggestionEntriesWithHandler", "", &v16, 2u);
    }

    v5 = v11;
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v16 = 136446722;
      v17 = "MapsSuggestionsAppConnectionSource.m";
      v18 = 1026;
      LODWORD(v19[0]) = 124;
      WORD2(v19[0]) = 2082;
      *(v19 + 6) = "[MapsSuggestionsAppConnectionSource updateSuggestionEntriesWithHandler:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf2 went away in %{public}s", &v16, 0x1Cu);
    }
  }
}

void sub_100041908(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[MapsSuggestionsTransportModePrediction alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100041C08(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [MapsSuggestionsTransportModePredictionOutput alloc];
    v7 = [v14 featureValueForName:@"actualTransportMode"];
    v8 = [v7 stringValue];
    v9 = [v14 featureValueForName:@"actualTransportModeProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(MapsSuggestionsTransportModePredictionOutput *)v6 initWithActualTransportMode:v8 actualTransportModeProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void sub_100041E18(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [MapsSuggestionsTransportModePredictionOutput alloc];
    v7 = [v14 featureValueForName:@"actualTransportMode"];
    v8 = [v7 stringValue];
    v9 = [v14 featureValueForName:@"actualTransportModeProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(MapsSuggestionsTransportModePredictionOutput *)v6 initWithActualTransportMode:v8 actualTransportModeProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

uint64_t sub_100042274(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id MapsSuggestionsWeatherFeeler.init(delegate:locationUpdater:)(uint64_t a1, uint64_t a2)
{
  v5 = &unk_100085000;
  *&v2[OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__signalPack] = 0;
  v6 = &unk_100085000;
  *&v2[OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__weatherConditionsDataProvider] = 0;
  v7 = OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__weatherDataModel;
  v8 = sub_100042274(&qword_1000850A0);
  (*(*(v8 - 8) + 56))(&v2[v7], 1, 1, v8);
  *&v2[OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__locationUpdater] = 0;
  *&v2[OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__lastLocation] = 0;
  v2[OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__active] = 1;
  v9 = objc_allocWithZone(MapsSuggestionsQueue);
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 initSerialQueueWithName:v10];

  *&v2[OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__queue] = v11;
  GEOConfigGetDouble();
  *&v2[OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__distanceThreshold] = v12;
  GEOConfigGetDouble();
  v13 = &v2[OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__expireTimeDefault];
  *v13 = v14;
  v13[8] = 0;
  *&v2[OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__triggers] = &_swiftEmptyArrayStorage;
  v15 = type metadata accessor for MapsSuggestionsWeatherFeeler(0);
  v16 = [swift_getObjCClassFromMetadata() description];
  if (!v16)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = String._bridgeToObjectiveC()();
  }

  v38.receiver = v2;
  v38.super_class = v15;
  v17 = objc_msgSendSuper2(&v38, "initWithDelegate:name:", a1, v16);
  v18 = v17;

  if (v18)
  {

    v19 = OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__triggers;
    swift_beginAccess();
    v20 = *&v18[v19];
    if (v20 >> 62)
    {
      goto LABEL_15;
    }

    v21 = &unk_100085000;
    v5 = &unk_100085000;
    v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      do
      {
        v23 = 0;
        v6 = &stru_100081000;
        while (1)
        {
          swift_beginAccess();
          v24 = *&v18[v19];
          if ((v24 & 0xC000000000000001) != 0)
          {
            v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            goto LABEL_10;
          }

          if (v23 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            break;
          }

          v25 = *(v24 + 8 * v23 + 32);
          swift_unknownObjectRetain();
LABEL_10:
          ++v23;
          swift_endAccess();
          [v25 registerObserver:v18];
          swift_unknownObjectRelease();
          if (v22 == v23)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_15:
        v26 = _CocoaArrayWrapper.endIndex.getter();
        if (v26 < 0)
        {
          __break(1u);
        }

        v22 = v26;
        v21 = v5;
        v5 = v6;
      }

      while (v26);
    }

LABEL_18:
    if (a2)
    {
      *&v18[OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__locationUpdater] = a2;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
    }

    v27 = [objc_allocWithZone(MapsSuggestionsMutableSignalPack) initWithCapacity:7];
    attr = v21[10].attr;
    v29 = *&attr[v18];
    *&attr[v18] = v27;

    v30 = *&v18[OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__queue];
    v31 = *&v18[OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__distanceThreshold];
    v32 = objc_allocWithZone(type metadata accessor for MapsSuggestionsWeatherConditionsProvider(0));
    v33 = v30;
    v34 = sub_1000485FC(v33, v31);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    name = v5[11].name;
    v36 = *&name[v18];
    *&name[v18] = v34;
  }

  else
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return 0;
  }

  return v17;
}

id MapsSuggestionsWeatherConditionsProvider.__allocating_init(queue:locationRange:)(void *a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_1000485FC(a1, a2);

  return v6;
}

id sub_100042790(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__signalPack] = 0;
  *&v1[OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__weatherConditionsDataProvider] = 0;
  v3 = OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__weatherDataModel;
  v4 = sub_100042274(&qword_1000850A0);
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__locationUpdater] = 0;
  *&v1[OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__lastLocation] = 0;
  v5 = objc_allocWithZone(MapsSuggestionsQueue);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initSerialQueueWithName:v6];

  *&v1[OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__queue] = v7;
  v1[OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__active] = 1;
  GEOConfigGetDouble();
  *&v1[OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__distanceThreshold] = v8;
  GEOConfigGetDouble();
  v9 = &v1[OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__expireTimeDefault];
  *v9 = v10;
  v9[8] = 0;
  *&v1[OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__triggers] = &_swiftEmptyArrayStorage;
  v11 = type metadata accessor for MapsSuggestionsWeatherFeeler(0);
  v12 = [swift_getObjCClassFromMetadata() description];
  if (!v12)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = String._bridgeToObjectiveC()();
  }

  v15.receiver = v1;
  v15.super_class = v11;
  v13 = objc_msgSendSuper2(&v15, "initWithDelegate:name:", a1, v12);

  swift_unknownObjectRelease();
  if (v13)
  {
  }

  return v13;
}

Swift::Void __swiftcall MapsSuggestionsWeatherFeeler.didLoseLocationPermission()()
{
  v1 = v0;
  if (qword_100085090 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000029EC(v2, qword_100085698);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Lost Location Permission", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__queue);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9[4] = sub_100048748;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100002370;
  v9[3] = &unk_100076A40;
  v8 = _Block_copy(v9);

  [v6 asyncBlock:v8];
  _Block_release(v8);
}

void sub_100042BD4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__lastLocation];
    *&Strong[OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__lastLocation] = 0;
  }
}

void sub_100042C9C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v1 = Strong[OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__active], Strong, v1 == 1))
  {
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (!v2)
    {
      return;
    }

    v3 = v2;
    v4 = *(v2 + OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__queue);
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10[4] = sub_10004A678;
    v10[5] = v5;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_100002370;
    v10[3] = &unk_100076D90;
    v6 = _Block_copy(v10);

    [v4 asyncBlock:v6];
    _Block_release(v6);
  }

  else
  {
    if (qword_100085090 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000029EC(v7, qword_100085698);
    v3 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v3, v8, "Not continuing updateSignals. NOT active.", v9, 2u);
    }
  }
}

uint64_t sub_100042ED8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__queue);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9[4] = a1;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100002370;
  v9[3] = a2;
  v7 = _Block_copy(v9);

  [v5 asyncBlock:v7];
  _Block_release(v7);
  return 1;
}

void sub_100042FB8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_100085090 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000029EC(v2, qword_100085698);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "stopUpdatingSignals", v5, 2u);
    }

    *(&v1->isa + OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__active) = 0;
    v6 = *(&v1->isa + OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__locationUpdater);
    if (v6)
    {
      [v6 stopLocationUpdatesForDelegate:v1];
    }

    v7 = *(&v1->isa + OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__weatherConditionsDataProvider);
    if (v7)
    {
      v8 = *&v7[OBJC_IVAR____TtC12destinationd40MapsSuggestionsWeatherConditionsProvider__observers];
      v9 = v7;
      [v8 unregisterObserver:v1 handler:0];
    }
  }

  else
  {
    if (qword_100085090 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000029EC(v10, qword_100085698);
    v1 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v1, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v1, v11, "strongSelf could not be initialized", v12, 2u);
    }
  }
}

uint64_t sub_1000431FC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *&a1[OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__queue];
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12[4] = a3;
  v12[5] = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100002370;
  v12[3] = a4;
  v9 = _Block_copy(v12);
  v10 = a1;

  [v7 asyncBlock:v9];
  _Block_release(v9);

  return 1;
}

void MapsSuggestionsWeatherFeeler.triggerFired(_:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__queue);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4[4] = sub_100048760;
  v4[5] = v2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_100002370;
  v4[3] = &unk_100076AE0;
  v3 = _Block_copy(v4);

  [v1 asyncBlock:v3];
  _Block_release(v3);
}

void sub_1000433D4()
{
  if (qword_100085090 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000029EC(v0, qword_100085698);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "TriggerFired, start updating", v3, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong startUpdatingSignals];
  }

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    sub_100042274(&qword_100085358);
    v10 = String.init<A>(describing:)();
    v12 = sub_10004B5C0(v10, v11, &v13);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "hasStarted: %s", v8, 0xCu);
    sub_10004A2A0(v9);
  }
}

id sub_1000436F4(double a1)
{
  v2 = OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__signalPack;
  result = *(v1 + OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__signalPack);
  if (result)
  {
    LODWORD(a1) = 2143289344;
    [result writeSignalValue:38 forType:a1];
    result = *(v1 + v2);
    if (result)
    {
      LODWORD(v4) = 2143289344;
      [result writeSignalValue:8 forType:v4];
      result = *(v1 + v2);
      if (result)
      {
        LODWORD(v5) = 2143289344;
        [result writeSignalValue:9 forType:v5];
        result = *(v1 + v2);
        if (result)
        {
          LODWORD(v6) = 2143289344;
          [result writeSignalValue:7 forType:v6];
          result = *(v1 + v2);
          if (result)
          {
            LODWORD(v7) = 2143289344;
            [result writeSignalValue:6 forType:v7];
            result = *(v1 + v2);
            if (result)
            {
              LODWORD(v8) = 2143289344;
              [result writeSignalValue:26 forType:v8];
              result = *(v1 + v2);
              if (result)
              {
                LODWORD(v9) = 2143289344;
                [result writeSignalValue:25 forType:v9];
                result = *(v1 + v2);
                if (result)
                {
                  LODWORD(v10) = 2143289344;

                  return [result writeSignalValue:27 forType:v10];
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_100043820()
{
  v0 = sub_100042274(&qword_100085368);
  v169 = *(v0 - 8);
  v170 = v0;
  v1 = __chkstk_darwin(v0);
  v167 = &v158 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v168 = &v158 - v3;
  v4 = type metadata accessor for DayWeather();
  v165 = *(v4 - 8);
  v166 = v4;
  __chkstk_darwin(v4);
  v164 = &v158 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100042274(&qword_1000852E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v158 - v7;
  v9 = sub_100042274(&qword_100085108);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v158 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v158 - v13;
  v15 = sub_100042274(&qword_1000850A0);
  v16 = *(v15 - 1);
  v17 = __chkstk_darwin(v15);
  v19 = &v158 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v158 - v21;
  __chkstk_darwin(v20);
  v171 = &v158 - v23;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    v162 = v12;
    v26 = OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__weatherDataModel;
    swift_beginAccess();
    sub_100005DD8(v25 + v26, v14, &qword_100085108);

    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      v161 = v16;
      v27 = v171;
      sub_100005E40(v14, v171, &qword_1000850A0);
      sub_100005DD8(v27, v22, &qword_1000850A0);
      v28 = v15[12];
      v29 = v15[16];
      v163 = v15;
      sub_100005E40(&v22[v15[20]], v8, &qword_1000852E0);
      v30 = type metadata accessor for AirQuality();
      v31 = *(v30 - 8);
      if ((*(v31 + 48))(v8, 1, v30) == 1)
      {
        v32 = sub_100042274(&qword_100085118);
        (*(*(v32 - 8) + 8))(&v22[v29], v32);
        sub_100005EA8(&v22[v28], &qword_1000852E8);
        v33 = type metadata accessor for CurrentWeather();
        (*(*(v33 - 8) + 8))(v22, v33);
        sub_100005EA8(v8, &qword_1000852E0);
      }

      else
      {
        v49 = AirQuality.index.getter();
        (*(v31 + 8))(v8, v30);
        v50 = sub_100042274(&qword_100085118);
        (*(*(v50 - 8) + 8))(&v22[v29], v50);
        sub_100005EA8(&v22[v28], &qword_1000852E8);
        v51 = type metadata accessor for CurrentWeather();
        (*(*(v51 - 8) + 8))(v22, v51);
        swift_beginAccess();
        v52 = swift_unknownObjectWeakLoadStrong();
        if (v52)
        {
          v53 = *(v52 + OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__signalPack);
          v54 = v52;
          v55 = v53;

          if (v53)
          {
            *&v56 = v49;
            [v55 writeSignalValue:38 forType:v56];
          }
        }
      }

      swift_beginAccess();
      v57 = swift_unknownObjectWeakLoadStrong();
      v58 = v163;
      v59 = v161;
      if (v57)
      {
        v60 = *(v57 + OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__signalPack);
        v61 = v57;
        v62 = v60;

        if (v60)
        {
          swift_beginAccess();
          v63 = swift_unknownObjectWeakLoadStrong();
          if (v63)
          {
            v65 = v63;
            v66 = v162;
            sub_100005DD8(v171, v162, &qword_1000850A0);
            (*(v59 + 56))(v66, 0, 1, v58);
            sub_1000490B8(v66, sub_1000487EC);
            v68 = v67;

            sub_100005EA8(v66, &qword_100085108);
            *&v64 = v68 * 100.0;
          }

          else
          {
            LODWORD(v64) = 2143289344;
          }

          [v62 writeSignalValue:8 forType:v64];
        }
      }

      swift_beginAccess();
      v69 = swift_unknownObjectWeakLoadStrong();
      if (v69)
      {
        v70 = *(v69 + OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__signalPack);
        v71 = v69;
        v72 = v70;

        if (v70)
        {
          swift_beginAccess();
          v73 = swift_unknownObjectWeakLoadStrong();
          if (v73)
          {
            v75 = v73;
            v76 = v162;
            sub_100005DD8(v171, v162, &qword_1000850A0);
            (*(v59 + 56))(v76, 0, 1, v58);
            sub_1000490B8(v76, sub_100048C90);
            v78 = v77;

            sub_100005EA8(v76, &qword_100085108);
            *&v74 = v78 * 100.0;
          }

          else
          {
            LODWORD(v74) = 2143289344;
          }

          [v72 writeSignalValue:9 forType:v74];
        }
      }

      sub_100005DD8(v171, v19, &qword_1000850A0);
      v79 = v58[12];
      v80 = v58[16];
      v81 = v58[20];
      v82 = sub_100042274(&qword_100085118);
      v83 = v164;
      Forecast.subscript.getter();
      v84 = *(v82 - 8);
      v159 = *(v84 + 8);
      v160 = v82;
      v158 = v84 + 8;
      v159(&v19[v80], v82);
      DayWeather.precipitationChance.getter();
      v86 = v85;
      (*(v165 + 8))(v83, v166);
      sub_100005EA8(&v19[v81], &qword_1000852E0);
      sub_100005EA8(&v19[v79], &qword_1000852E8);
      v87 = type metadata accessor for CurrentWeather();
      v88 = *(*(v87 - 8) + 8);
      v88(v19, v87);
      swift_beginAccess();
      v89 = swift_unknownObjectWeakLoadStrong();
      if (v89)
      {
        v90 = *(v89 + OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__signalPack);
        v91 = v89;
        v92 = v90;

        if (v90)
        {
          *&v93 = v86;
          *&v93 = *&v93 * 100.0;
          [v92 writeSignalValue:7 forType:v93];
        }
      }

      sub_100005DD8(v171, v19, &qword_1000850A0);
      v94 = v163[12];
      v165 = v163[16];
      v166 = v94;
      v95 = v163[20];
      v96 = v167;
      CurrentWeather.temperature.getter();
      v88(v19, v87);
      v97 = [objc_opt_self() kelvin];
      v98 = v168;
      v99 = v170;
      Measurement<>.converted(to:)();

      v100 = *(v169 + 8);
      v100(v96, v99);
      sub_100005EA8(&v19[v95], &qword_1000852E0);
      v159(&v19[v165], v160);
      sub_100005EA8(&v19[v166], &qword_1000852E8);
      Measurement.value.getter();
      v102 = v101;
      v100(v98, v99);
      swift_beginAccess();
      v103 = swift_unknownObjectWeakLoadStrong();
      if (v103)
      {
        v104 = *(v103 + OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__signalPack);
        v105 = v103;
        v106 = v104;

        if (v104)
        {
          *&v107 = v102;
          [v106 writeSignalValue:6 forType:v107];
        }
      }

      swift_beginAccess();
      v108 = swift_unknownObjectWeakLoadStrong();
      v109 = v162;
      v110 = v163;
      if (v108)
      {
        v111 = *(v108 + OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__signalPack);
        v112 = v108;
        v113 = v111;

        if (v111)
        {
          swift_beginAccess();
          v114 = swift_unknownObjectWeakLoadStrong();
          if (v114)
          {
            v116 = v114;
            sub_100005DD8(v171, v109, &qword_1000850A0);
            (*(v161 + 56))(v109, 0, 1, v110);
            v117 = sub_1000487EC(v109);

            sub_100005EA8(v109, &qword_100085108);
          }

          else
          {
            v117 = NAN;
          }

          *&v115 = v117;
          [v113 writeSignalValue:26 forType:v115];
        }
      }

      swift_beginAccess();
      v118 = swift_unknownObjectWeakLoadStrong();
      if (v118)
      {
        v119 = *(v118 + OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__signalPack);
        v120 = v118;
        v121 = v119;

        if (v119)
        {
          swift_beginAccess();
          v122 = swift_unknownObjectWeakLoadStrong();
          if (v122)
          {
            v124 = v122;
            sub_100005DD8(v171, v109, &qword_1000850A0);
            (*(v161 + 56))(v109, 0, 1, v110);
            v125 = sub_100048C90(v109);

            sub_100005EA8(v109, &qword_100085108);
          }

          else
          {
            v125 = NAN;
          }

          *&v123 = v125;
          [v121 writeSignalValue:25 forType:v123];
        }
      }

      swift_beginAccess();
      v126 = swift_unknownObjectWeakLoadStrong();
      if (v126)
      {
        v127 = v126;
        sub_100005DD8(v171, v109, &qword_1000850A0);
        (*(v161 + 56))(v109, 0, 1, v110);
        v128 = sub_100049380(v109);

        sub_100005EA8(v109, &qword_100085108);
        v129 = v128;
      }

      else
      {
        v129 = 0.0;
      }

      swift_beginAccess();
      v130 = swift_unknownObjectWeakLoadStrong();
      if (v130)
      {
        v131 = *(v130 + OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__signalPack);
        v132 = v130;
        v133 = v131;

        if (v131)
        {
          *&v134 = v129;
          [v133 writeSignalValue:27 forType:v134];
        }
      }

      if (qword_100085090 != -1)
      {
        swift_once();
      }

      v135 = type metadata accessor for Logger();
      sub_1000029EC(v135, qword_100085698);

      v136 = Logger.logObject.getter();
      v137 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v136, v137))
      {
        v138 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        v172[0] = v139;
        *v138 = 136315138;
        swift_beginAccess();
        v140 = swift_unknownObjectWeakLoadStrong();
        if (v140)
        {
          v141 = *(v140 + OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__signalPack);
          v142 = v140;
          v143 = v141;

          if (v141)
          {
            v144 = [v143 description];

            v145 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v141 = v146;
          }

          else
          {
            v145 = 0;
          }
        }

        else
        {
          v145 = 0;
          v141 = 0;
        }

        v172[3] = v145;
        v172[4] = v141;
        sub_100042274(&qword_100085360);
        v147 = String.init<A>(describing:)();
        v149 = sub_10004B5C0(v147, v148, v172);

        *(v138 + 4) = v149;
        _os_log_impl(&_mh_execute_header, v136, v137, "Sending Signals from WeatherFeeler: %s", v138, 0xCu);
        sub_10004A2A0(v139);
      }

      swift_beginAccess();
      v150 = swift_unknownObjectWeakLoadStrong();
      if (!v150)
      {
        goto LABEL_74;
      }

      v151 = v150;
      v152 = [v150 delegate];

      if (v152)
      {
        swift_beginAccess();
        v153 = swift_unknownObjectWeakLoadStrong();
        swift_beginAccess();
        v154 = swift_unknownObjectWeakLoadStrong();
        if (v154)
        {
          v155 = *(v154 + OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__signalPack);
          v156 = v154;
          v157 = v155;

          if (v155)
          {
            v155 = [v157 copy];
          }
        }

        else
        {
          v155 = 0;
        }

        [v152 feeler:v153 sendsSignalPack:v155];
        swift_unknownObjectRelease();

LABEL_74:
        sub_100005EA8(v171, &qword_1000850A0);
        return;
      }

LABEL_77:
      __break(1u);
      return;
    }
  }

  else
  {
    (*(v16 + 56))(v14, 1, 1, v15);
  }

  sub_100005EA8(v14, &qword_100085108);
  if (qword_100085090 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_1000029EC(v34, qword_100085698);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "_weatherDataModel is nil. Clearing Signals", v37, 2u);
  }

  swift_beginAccess();
  v38 = swift_unknownObjectWeakLoadStrong();
  if (v38)
  {
    v40 = v38;
    sub_1000436F4(v39);
  }

  swift_beginAccess();
  v41 = swift_unknownObjectWeakLoadStrong();
  if (v41)
  {
    v42 = v41;
    v43 = [v41 delegate];

    if (!v43)
    {
      __break(1u);
      goto LABEL_77;
    }

    swift_beginAccess();
    v44 = swift_unknownObjectWeakLoadStrong();
    swift_beginAccess();
    v45 = swift_unknownObjectWeakLoadStrong();
    if (v45)
    {
      v46 = *(v45 + OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__signalPack);
      v47 = v45;
      v48 = v46;

      if (v46)
      {
        v46 = [v48 copy];
      }
    }

    else
    {
      v46 = 0;
    }

    [v43 feeler:v44 sendsSignalPack:v46];
    swift_unknownObjectRelease();
  }
}

void sub_100044B18(uint64_t a1, uint64_t a2)
{
  v3 = sub_100042274(&qword_100085108);
  __chkstk_darwin(v3 - 8);
  v5 = &v28[-v4];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v7 = Strong[OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__active], Strong, (v7 & 1) == 0))
  {
    if (qword_100085090 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000029EC(v18, qword_100085698);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Returning from MapsSuggestionsWeatherFeeler.didUpdate(weatherConditions:) because _active == NO", v21, 2u);
LABEL_18:
    }
  }

  else
  {
    if (qword_100085090 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000029EC(v8, qword_100085698);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "weatherConditionsDataProviderDidChangeWeatherConditions triggered", v11, 2u);
    }

    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      sub_100005DD8(a2, v5, &qword_100085108);
      v14 = OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__weatherDataModel;
      swift_beginAccess();
      sub_10004A590(v5, v13 + v14);
      swift_endAccess();
    }

    swift_beginAccess();
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v16 = v15;
      v17 = [v15 updateSignals];
    }

    else
    {
      v17 = 2;
    }

    v19 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v29 = v24;
      *v23 = 136315138;
      v28[15] = v17;
      sub_100042274(&qword_100085358);
      v25 = String.init<A>(describing:)();
      v27 = sub_10004B5C0(v25, v26, &v29);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v19, v22, "updateSignals on the weatherFeeler: %s", v23, 0xCu);
      sub_10004A2A0(v24);

      goto LABEL_18;
    }
  }
}

id MapsSuggestionsWeatherFeeler.__allocating_init(delegate:name:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithDelegate:a1 name:v6];
  swift_unknownObjectRelease();

  return v7;
}

id MITransportModePredictionManagerResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t _s12destinationd28MapsSuggestionsWeatherFeelerC17_weatherDataModel33_5533AEF279314228F5052FC52CD29EA1LL0D3Kit07CurrentD0V07currentD0_AF8ForecastVyAF04HourD0VGSg06hourlyQ0AKyAF03DayD0VG05dailyQ0AF10AirQualityVSg03airW0tSgvpfi_0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100042274(&qword_1000850A0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

id MapsSuggestionsWeatherConditionsProvider.init(queue:locationRange:)(void *a1, double a2)
{
  v3 = sub_1000485FC(a1, a2);

  return v3;
}

id MapsSuggestionsWeatherConditionsProvider.startProviding(forObserver:)(uint64_t a1)
{
  swift_getObjectType();

  return sub_1000485BC(a1, v1);
}

id MapsSuggestionsWeatherConditionsProvider.stopProviding(forObserver:)(uint64_t a1)
{
  swift_getObjectType();

  return sub_1000485DC(a1, v1);
}

void sub_1000452A8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, id, uint64_t))
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  v8 = a1;
  a4(a3, v8, ObjectType);
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall MapsSuggestionsWeatherConditionsProvider.didUpdateLocation()()
{
  if ([*(v0 + OBJC_IVAR____TtC12destinationd40MapsSuggestionsWeatherConditionsProvider__observers) count] >= 1)
  {
    v1 = *(v0 + OBJC_IVAR____TtC12destinationd40MapsSuggestionsWeatherConditionsProvider__queue);
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5[4] = sub_100048768;
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_100002370;
    v5[3] = &unk_100076B30;
    v3 = _Block_copy(v5);
    v4 = v1;

    [v4 asyncBlock:v3];
    _Block_release(v3);
  }
}

void sub_100045488(NSObject *a1)
{
  v116 = type metadata accessor for Date();
  v117 = *(v116 - 8);
  v2 = __chkstk_darwin(v116);
  v4 = &v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v115 = &v103 - v5;
  v6 = sub_100042274(&qword_1000852D8);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v118 = &v103 - v10;
  v11 = type metadata accessor for WeatherMetadata();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100042274(&qword_100085108);
  v16 = __chkstk_darwin(v15 - 8);
  v119 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v103 - v18;
  v20 = sub_100042274(&qword_1000850A0);
  v121 = *(v20 - 1);
  v21 = __chkstk_darwin(v20);
  v23 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v120 = &v103 - v24;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v26 = Strong[OBJC_IVAR____TtC12destinationd40MapsSuggestionsWeatherConditionsProvider__isRequesting], Strong, (v26 & 1) != 0))
  {
    if (qword_100085090 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000029EC(v27, qword_100085698);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Already getting an update, returning.", v30, 2u);
    }

    return;
  }

  v31 = MapsSuggestionsCurrentBestLocation();
  if (v31)
  {
    v114 = v31;
    swift_beginAccess();
    v32 = swift_unknownObjectWeakLoadStrong();
    if (v32)
    {
      *(v32 + OBJC_IVAR____TtC12destinationd40MapsSuggestionsWeatherConditionsProvider__isRequesting) = 1;
      v33 = v32;
    }

    else
    {
    }

    swift_beginAccess();
    v41 = swift_unknownObjectWeakLoadStrong();
    if (v41)
    {
      v42 = v41;
      sub_100005DD8(v41 + OBJC_IVAR____TtC12destinationd40MapsSuggestionsWeatherConditionsProvider__weatherDataModel, v19, &qword_100085108);

      if ((*(v121 + 48))(v19, 1, v20) != 1)
      {
        v43 = v19;
        v44 = v120;
        sub_100005E40(v43, v120, &qword_1000850A0);
        sub_100005DD8(v44, v23, &qword_1000850A0);
        v113 = v20[12];
        v112 = v20[16];
        v45 = v20[20];
        CurrentWeather.metadata.getter();
        v46 = type metadata accessor for CurrentWeather();
        v47 = *(v46 - 8);
        v48 = *(v47 + 8);
        v111 = v46;
        v110 = v48;
        v109 = v47 + 8;
        (v48)(v23);
        v49 = WeatherMetadata.location.getter();
        v108 = *(v12 + 8);
        v108(v14, v11);
        sub_100005EA8(&v23[v45], &qword_1000852E0);
        v50 = sub_100042274(&qword_100085118);
        v51 = *(v50 - 8);
        v52 = *(v51 + 8);
        v53 = &v23[v112];
        v112 = v50;
        v107 = v52;
        v106 = v51 + 8;
        (v52)(v53);
        sub_100005EA8(v113 + v23, &qword_1000852E8);
        v54 = v114;
        [v49 distanceFromLocation:v114];
        v56 = v55;
        swift_beginAccess();
        v57 = swift_unknownObjectWeakLoadStrong();
        if (!v57)
        {
          __break(1u);
          return;
        }

        v58 = *&v57[OBJC_IVAR____TtC12destinationd40MapsSuggestionsWeatherConditionsProvider__locationRange];

        if (v58 < v56)
        {
          v59 = v49;
          if (qword_100085090 != -1)
          {
            swift_once();
          }

          v60 = type metadata accessor for Logger();
          sub_1000029EC(v60, qword_100085698);
          v61 = Logger.logObject.getter();
          v62 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            *v63 = 0;
            _os_log_impl(&_mh_execute_header, v61, v62, "Updating current weather because location changed significantly", v63, 2u);
          }

          swift_beginAccess();
          v64 = swift_unknownObjectWeakLoadStrong();
          if (v64)
          {
            v65 = v64;
            v66 = v54;

            _s12destinationd40MapsSuggestionsWeatherConditionsProviderC07requestD010atLocation10completionySo10CLLocationCSg_y0D3Kit07CurrentD0V07currentD0_AJ8ForecastVyAJ04HourD0VGSg06hourlyO0AOyAJ03DayD0VG05dailyO0AJ10AirQualityVSg03airU0tSg_s5Error_pSgtcSgtF_0(v54, sub_10004A600, a1);
          }

          else
          {
          }

          goto LABEL_60;
        }

        v113 = v49;
        sub_100005DD8(v120, v23, &qword_1000850A0);
        v105 = v20[12];
        v104 = v20[16];
        v103 = v20[20];
        CurrentWeather.metadata.getter();
        v110(v23, v111);
        v76 = v118;
        WeatherMetadata.expirationDate.getter();
        v108(v14, v11);
        v77 = v117;
        v78 = v116;
        (*(v117 + 56))(v76, 0, 1, v116);
        sub_100005EA8(&v23[v103], &qword_1000852E0);
        v107(&v23[v104], v112);
        sub_100005EA8(&v23[v105], &qword_1000852E8);
        sub_100005DD8(v76, v9, &qword_1000852D8);
        if ((*(v77 + 48))(v9, 1, v78) == 1)
        {
          sub_100005EA8(v9, &qword_1000852D8);
        }

        else
        {
          v79 = v115;
          (*(v77 + 32))(v115, v9, v78);
          v80 = MapsSuggestionsNow();
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          LOBYTE(v80) = static Date.< infix(_:_:)();
          v83 = *(v77 + 8);
          v81 = v77 + 8;
          v82 = v83;
          v83(v4, v78);
          if (v80)
          {
            v117 = v81;
            v84 = v114;
            if (qword_100085090 != -1)
            {
              swift_once();
            }

            v85 = type metadata accessor for Logger();
            sub_1000029EC(v85, qword_100085698);
            v86 = Logger.logObject.getter();
            v87 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v86, v87))
            {
              v88 = swift_slowAlloc();
              *v88 = 0;
              _os_log_impl(&_mh_execute_header, v86, v87, "Current weather condition still valid, no need to update", v88, 2u);
            }

            swift_beginAccess();
            v89 = swift_unknownObjectWeakLoadStrong();
            if (v89)
            {
              v89[OBJC_IVAR____TtC12destinationd40MapsSuggestionsWeatherConditionsProvider__isRequesting] = 0;
            }

            swift_beginAccess();
            v90 = swift_unknownObjectWeakLoadStrong();
            if (v90)
            {
              v91 = v90;
              v92 = v78;
              v93 = v120;
              v94 = v119;
              sub_100005DD8(v120, v119, &qword_1000850A0);
              (*(v121 + 56))(v94, 0, 1, v20);
              MapsSuggestionsWeatherConditionsProvider.didUpdate(weatherConditions:)(v94);

              sub_100005EA8(v94, &qword_100085108);
              v82(v79, v92);
              sub_100005EA8(v118, &qword_1000852D8);
              sub_100005EA8(v93, &qword_1000850A0);
              return;
            }

            v82(v79, v78);
            goto LABEL_59;
          }

          v82(v79, v78);
        }

        v95 = v114;
        if (qword_100085090 != -1)
        {
          swift_once();
        }

        v96 = type metadata accessor for Logger();
        sub_1000029EC(v96, qword_100085698);
        v97 = Logger.logObject.getter();
        v98 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          *v99 = 0;
          _os_log_impl(&_mh_execute_header, v97, v98, "Current weather conditions expired, lets get new one", v99, 2u);
        }

        swift_beginAccess();
        v100 = swift_unknownObjectWeakLoadStrong();
        if (v100)
        {
          v101 = v100;
          v102 = v95;

          _s12destinationd40MapsSuggestionsWeatherConditionsProviderC07requestD010atLocation10completionySo10CLLocationCSg_y0D3Kit07CurrentD0V07currentD0_AJ8ForecastVyAJ04HourD0VGSg06hourlyO0AOyAJ03DayD0VG05dailyO0AJ10AirQualityVSg03airU0tSg_s5Error_pSgtcSgtF_0(v95, sub_10004A600, a1);
        }

        else
        {
        }

LABEL_59:
        sub_100005EA8(v118, &qword_1000852D8);
LABEL_60:
        sub_100005EA8(v120, &qword_1000850A0);
        return;
      }
    }

    else
    {
      (*(v121 + 56))(v19, 1, 1, v20);
    }

    sub_100005EA8(v19, &qword_100085108);
    if (qword_100085090 != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    sub_1000029EC(v67, qword_100085698);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.debug.getter();
    v70 = os_log_type_enabled(v68, v69);
    v71 = v114;
    if (v70)
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&_mh_execute_header, v68, v69, "weatherDataModel is uninitialized, so fetching weather for the first time", v72, 2u);
    }

    swift_beginAccess();
    v73 = swift_unknownObjectWeakLoadStrong();
    if (v73)
    {
      v74 = v73;
      v75 = v71;

      _s12destinationd40MapsSuggestionsWeatherConditionsProviderC07requestD010atLocation10completionySo10CLLocationCSg_y0D3Kit07CurrentD0V07currentD0_AJ8ForecastVyAJ04HourD0VGSg06hourlyO0AOyAJ03DayD0VG05dailyO0AJ10AirQualityVSg03airU0tSg_s5Error_pSgtcSgtF_0(v71, sub_10004A600, a1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_100085090 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_1000029EC(v34, qword_100085698);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "No location when trying to request weather. Calling back with nil.", v37, 2u);
    }

    swift_beginAccess();
    v38 = swift_unknownObjectWeakLoadStrong();
    if (v38)
    {
      v39 = v38;
      v40 = v119;
      (*(v121 + 56))(v119, 1, 1, v20);
      MapsSuggestionsWeatherConditionsProvider.didUpdate(weatherConditions:)(v40);

      sub_100005EA8(v40, &qword_100085108);
    }
  }
}

void sub_1000464F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100042274(&qword_100085108);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &aBlock[-1] - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = *(Strong + OBJC_IVAR____TtC12destinationd40MapsSuggestionsWeatherConditionsProvider__queue);

    sub_100005DD8(a1, v9, &qword_100085108);
    v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    *(v14 + 24) = a2;
    sub_100005E40(v9, v14 + v13, &qword_100085108);
    aBlock[4] = sub_10004A608;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100002370;
    aBlock[3] = &unk_100076D68;
    v15 = _Block_copy(aBlock);

    swift_errorRetain();

    [v12 asyncBlock:v15];
    _Block_release(v15);
  }
}

void sub_1000466FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100042274(&qword_100085108);
  __chkstk_darwin(v5 - 8);
  v7 = v24 - v6 + 24;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC12destinationd40MapsSuggestionsWeatherConditionsProvider__isRequesting] = 0;
  }

  if (a2)
  {
    if (qword_100085090 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000029EC(v9, qword_100085698);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v24[0] = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v24[1] = Error.localizedDescription.getter();
      v24[2] = v14;
      sub_100042274(&qword_100085360);
      v15 = String.init<A>(describing:)();
      v17 = sub_10004B5C0(v15, v16, v24);

      *(v12 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v10, v11, "Error %s while retrieving WeatherForecast", v12, 0xCu);
      sub_10004A2A0(v13);
    }

    swift_beginAccess();
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = v18;
      v20 = sub_100042274(&qword_1000850A0);
      (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
      MapsSuggestionsWeatherConditionsProvider.didUpdate(weatherConditions:)(v7);

      sub_100005EA8(v7, &qword_100085108);
    }
  }

  else
  {
    swift_beginAccess();
    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      v22 = v21;
      MapsSuggestionsWeatherConditionsProvider.didUpdate(weatherConditions:)(a3);
    }
  }
}

void MapsSuggestionsWeatherConditionsProvider.didUpdate(weatherConditions:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100042274(&qword_100085108);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = aBlock - v6;
  if (qword_100085090 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000029EC(v8, qword_100085698);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Current WeatherConditions are Updated. Inform observers", v11, 2u);
  }

  v12 = *(v2 + OBJC_IVAR____TtC12destinationd40MapsSuggestionsWeatherConditionsProvider__observers);
  sub_100005DD8(a1, v7, &qword_100085108);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_100005E40(v7, v14 + v13, &qword_100085108);
  aBlock[4] = sub_100048770;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100046E74;
  aBlock[3] = &unk_100076B80;
  v15 = _Block_copy(aBlock);
  v16 = v12;

  [v16 callBlock:v15];
  _Block_release(v15);
}

uint64_t sub_100046C58(uint64_t a1, uint64_t a2)
{
  v4 = sub_100042274(&qword_100085108);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = aBlock - v6;
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (a1)
    {
      v9 = *(a1 + OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__queue);
      v10 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100005DD8(a2, v7, &qword_100085108);
      v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
      v12 = swift_allocObject();
      *(v12 + 16) = v10;
      sub_100005E40(v7, v12 + v11, &qword_100085108);
      aBlock[4] = sub_10004A520;
      aBlock[5] = v12;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100002370;
      aBlock[3] = &unk_100076D18;
      v13 = _Block_copy(aBlock);
      swift_unknownObjectRetain();

      [v9 asyncBlock:v13];
      _Block_release(v13);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_100046E74(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_100046ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v8 = sub_100042274(&qword_1000852F8);
  v7[7] = v8;
  v7[8] = *(v8 - 8);
  v7[9] = swift_task_alloc();
  v9 = sub_100042274(&qword_100085300);
  v7[10] = v9;
  v7[11] = *(v9 - 8);
  v7[12] = swift_task_alloc();
  v10 = sub_100042274(&qword_100085308);
  v7[13] = v10;
  v7[14] = *(v10 - 8);
  v7[15] = swift_task_alloc();
  v11 = sub_100042274(&qword_100085310);
  v7[16] = v11;
  v7[17] = *(v11 - 8);
  v7[18] = swift_task_alloc();
  v7[19] = type metadata accessor for WeatherServiceCaching.Options();
  v7[20] = swift_task_alloc();
  sub_100042274(&qword_100085318);
  v7[21] = swift_task_alloc();
  sub_100042274(&qword_100085320);
  v7[22] = swift_task_alloc();
  sub_100042274(&qword_100085328);
  v7[23] = swift_task_alloc();
  Options = type metadata accessor for WeatherServiceFetchOptions();
  v7[24] = Options;
  v7[25] = *(Options - 8);
  v7[26] = swift_task_alloc();

  return _swift_task_switch(sub_100047214, 0, 0);
}

uint64_t sub_100047214()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v24 = v0[3];
  v4 = MapsSuggestionsTimeZone();
  static TimeZone._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = type metadata accessor for TimeZone();
  (*(*(v5 - 8) + 56))(v1, 0, 1, v5);
  v6 = type metadata accessor for WeatherServiceLocationOptions();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v7 = type metadata accessor for WeatherNetworkActivity();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  v0[2] = &_swiftEmptyArrayStorage;
  sub_10004A45C();
  sub_100042274(&qword_100085338);
  sub_10004A4B4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  WeatherServiceFetchOptions.init(countryCode:timeZone:locationOptions:cachingOptions:treatmentIdentifiers:networkActivity:needsMarineData:needsTwilightData:)();
  if (v24)
  {
    v16 = v0[18];
    v23 = v0[17];
    v25 = v0[16];
    v15 = v0[15];
    v21 = v0[14];
    v22 = v0[13];
    v8 = v0[12];
    v9 = v0[9];
    v19 = v0[11];
    v20 = v0[10];
    v18 = v0[7];
    v10 = v0[5];
    v11 = v0[6];
    v17 = v0[8];
    type metadata accessor for CurrentWeather();
    static WeatherQuery.current.getter();
    sub_100042274(&qword_100085110);
    static WeatherQuery.hourly.getter();
    sub_100042274(&qword_100085118);
    static WeatherQuery.daily.getter();
    sub_100042274(&qword_1000852E0);
    static WeatherQuery.airQuality.getter();
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    *(v12 + 24) = v11;
    sub_10004A290(v10);
    WeatherService.fetchWeather<A, B, C, D>(for:including:_:_:_:options:completion:)();

    (*(v17 + 8))(v9, v18);
    (*(v19 + 8))(v8, v20);
    (*(v21 + 8))(v15, v22);
    (*(v23 + 8))(v16, v25);
  }

  (*(v0[25] + 8))(v0[26], v0[24]);

  v13 = v0[1];

  return v13();
}

void sub_10004761C(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3)
{
  v90 = a3;
  v91 = a2;
  v4 = sub_100042274(&qword_100085108);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v72 - v8;
  v10 = sub_100042274(&qword_100085348);
  v11 = __chkstk_darwin(v10);
  v87 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v88 = &v72 - v14;
  v15 = __chkstk_darwin(v13);
  v89 = &v72 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v72 - v18;
  __chkstk_darwin(v17);
  v21 = &v72 - v20;
  v22 = sub_100042274(&qword_100085350);
  __chkstk_darwin(v22);
  v24 = (&v72 - v23);
  sub_100005DD8(a1, &v72 - v23, &qword_100085350);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100005E40(v24, v21, &qword_100085348);
    v36 = sub_100042274(&qword_1000850A0);
    v37 = v36[12];
    v38 = v36[20];
    v85 = v36[16];
    v86 = v38;
    v81 = v19;
    sub_100005DD8(v21, v19, &qword_100085348);
    v39 = v10[12];
    v83 = v10[16];
    v84 = v39;
    v82 = v10[20];
    v40 = type metadata accessor for CurrentWeather();
    v41 = *(v40 - 8);
    v77 = v40;
    v78 = v41;
    (*(v41 + 32))(v9, v19, v40);
    v42 = v89;
    sub_100005DD8(v21, v89, &qword_100085348);
    v43 = v10[12];
    v44 = v10[16];
    v79 = v10[20];
    v80 = v44;
    v45 = sub_100042274(&qword_100085110);
    v46 = *(v45 - 8);
    (*(v46 + 32))(&v9[v37], v42 + v43, v45);
    (*(v46 + 56))(&v9[v37], 0, 1, v45);
    v47 = v88;
    sub_100005DD8(v21, v88, &qword_100085348);
    v76 = v10[12];
    v48 = v10[16];
    v75 = v10[20];
    v49 = sub_100042274(&qword_100085118);
    v50 = *(v49 - 8);
    v51 = *(v50 + 32);
    v74 = v49;
    v51(&v9[v85], v47 + v48, v49);
    v85 = v21;
    v52 = v21;
    v53 = v87;
    sub_100005DD8(v52, v87, &qword_100085348);
    v72 = v10[12];
    v54 = v10[16];
    sub_100005E40(v53 + v10[20], &v9[v86], &qword_1000852E0);
    v55 = *(*(v36 - 1) + 56);
    v86 = v9;
    v55(v9, 0, 1, v36);
    v73 = *(v50 + 8);
    v73(v53 + v54, v49);
    v56 = *(v46 + 8);
    v56(v53 + v72, v45);
    v57 = *(v78 + 8);
    v58 = v53;
    v59 = v77;
    v57(v58, v77);
    sub_100005EA8(v47 + v75, &qword_1000852E0);
    v56(v47 + v76, v45);
    v57(v47, v59);
    v60 = v89;
    sub_100005EA8(v89 + v79, &qword_1000852E0);
    v61 = v74;
    v62 = v73;
    v73(v60 + v80, v74);
    v57(v60, v59);
    v63 = v81;
    sub_100005EA8(&v81[v82], &qword_1000852E0);
    v62(&v63[v83], v61);
    v56(&v63[v84], v45);
    if (qword_100085090 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_1000029EC(v64, qword_100085698);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.debug.getter();
    v67 = os_log_type_enabled(v65, v66);
    v68 = v91;
    if (v67)
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&_mh_execute_header, v65, v66, "Got a response from WeatherKit", v69, 2u);
    }

    v71 = v85;
    v70 = v86;
    if (v68)
    {
      v68(v86, 0);
      sub_100005EA8(v70, &qword_100085108);
      sub_100005EA8(v71, &qword_100085348);
      return;
    }

    goto LABEL_15;
  }

  v25 = v91;
  if (!v91)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v26 = *v24;
  v27 = sub_100042274(&qword_1000850A0);
  (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
  swift_errorRetain();
  v25(v7, v26);

  sub_100005EA8(v7, &qword_100085108);
  if (qword_100085090 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_1000029EC(v28, qword_100085698);
  swift_errorRetain();
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v92 = v32;
    *v31 = 136315138;
    swift_getErrorValue();
    v33 = Error.localizedDescription.getter();
    v35 = sub_10004B5C0(v33, v34, &v92);

    *(v31 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v29, v30, "Error: %s", v31, 0xCu);
    sub_10004A2A0(v32);
  }

  else
  {
  }
}

uint64_t sub_100047F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100042274(&qword_1000852F0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100005DD8(a3, v25 - v10, &qword_1000852F0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100005EA8(v11, &qword_1000852F0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100005EA8(a3, &qword_1000852F0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100005EA8(a3, &qword_1000852F0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id sub_1000482A8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100048354()
{
  v0 = type metadata accessor for Logger();
  sub_10004A680(v0, qword_100085698);
  sub_1000029EC(v0, qword_100085698);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000483CC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000484C4;

  return v6(a1);
}

uint64_t sub_1000484C4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id sub_1000485FC(void *a1, double a2)
{
  v5 = OBJC_IVAR____TtC12destinationd40MapsSuggestionsWeatherConditionsProvider__weatherDataModel;
  v6 = sub_100042274(&qword_1000850A0);
  (*(*(v6 - 8) + 56))(&v2[v5], 1, 1, v6);
  v2[OBJC_IVAR____TtC12destinationd40MapsSuggestionsWeatherConditionsProvider__isRequesting] = 0;
  *&v2[OBJC_IVAR____TtC12destinationd40MapsSuggestionsWeatherConditionsProvider__queue] = a1;
  *&v2[OBJC_IVAR____TtC12destinationd40MapsSuggestionsWeatherConditionsProvider__locationRange] = a2;
  v7 = [a1 innerQueue];
  v8 = objc_allocWithZone(MapsSuggestionsObservers);
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 initWithCallbackQueue:v7 name:v9];

  *&v2[OBJC_IVAR____TtC12destinationd40MapsSuggestionsWeatherConditionsProvider__observers] = v10;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for MapsSuggestionsWeatherConditionsProvider(0);
  return objc_msgSendSuper2(&v12, "init");
}

uint64_t sub_100048770(uint64_t a1)
{
  v3 = *(sub_100042274(&qword_100085108) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100046C58(a1, v4);
}

float sub_1000487EC(uint64_t a1)
{
  v2 = sub_100042274(&qword_100085108);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  v5 = sub_100042274(&qword_100085370);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v23 - v9;
  sub_100005DD8(a1, v4, &qword_100085108);
  v11 = sub_100042274(&qword_1000850A0);
  if ((*(*(v11 - 1) + 48))(v4, 1, v11) == 1)
  {
    sub_100005EA8(v4, &qword_100085108);
    v12 = type metadata accessor for WeatherCondition();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
LABEL_3:
    v13 = 0.0;
    goto LABEL_5;
  }

  v14 = v11[12];
  v15 = v11[16];
  v16 = v11[20];
  CurrentWeather.condition.getter();
  v17 = type metadata accessor for CurrentWeather();
  (*(*(v17 - 8) + 8))(v4, v17);
  v18 = type metadata accessor for WeatherCondition();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v10, 0, 1, v18);
  sub_100005EA8(&v4[v16], &qword_1000852E0);
  v20 = sub_100042274(&qword_100085118);
  (*(*(v20 - 8) + 8))(&v4[v15], v20);
  sub_100005EA8(&v4[v14], &qword_1000852E8);
  v13 = 0.0;
  if ((*(v19 + 48))(v10, 1, v18) != 1)
  {
    sub_100005DD8(v10, v8, &qword_100085370);
    v22 = (*(v19 + 88))(v8, v18);
    v13 = 1.0;
    if (v22 != enum case for WeatherCondition.drizzle(_:) && v22 != enum case for WeatherCondition.freezingRain(_:) && v22 != enum case for WeatherCondition.hail(_:) && v22 != enum case for WeatherCondition.heavyRain(_:) && v22 != enum case for WeatherCondition.hurricane(_:) && v22 != enum case for WeatherCondition.isolatedThunderstorms(_:) && v22 != enum case for WeatherCondition.rain(_:) && v22 != enum case for WeatherCondition.scatteredThunderstorms(_:) && v22 != enum case for WeatherCondition.sleet(_:) && v22 != enum case for WeatherCondition.strongStorms(_:) && v22 != enum case for WeatherCondition.sunShowers(_:) && v22 != enum case for WeatherCondition.thunderstorms(_:) && v22 != enum case for WeatherCondition.tropicalStorm(_:) && v22 != enum case for WeatherCondition.wintryMix(_:))
    {
      (*(v19 + 8))(v8, v18);
      goto LABEL_3;
    }
  }

LABEL_5:
  sub_100005EA8(v10, &qword_100085370);
  return v13;
}

float sub_100048C90(uint64_t a1)
{
  v2 = sub_100042274(&qword_100085108);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  v5 = sub_100042274(&qword_100085370);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v23 - v9;
  sub_100005DD8(a1, v4, &qword_100085108);
  v11 = sub_100042274(&qword_1000850A0);
  if ((*(*(v11 - 1) + 48))(v4, 1, v11) == 1)
  {
    sub_100005EA8(v4, &qword_100085108);
    v12 = type metadata accessor for WeatherCondition();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
LABEL_3:
    v13 = 0.0;
    goto LABEL_5;
  }

  v14 = v11[12];
  v15 = v11[16];
  v16 = v11[20];
  CurrentWeather.condition.getter();
  v17 = type metadata accessor for CurrentWeather();
  (*(*(v17 - 8) + 8))(v4, v17);
  v18 = type metadata accessor for WeatherCondition();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v10, 0, 1, v18);
  sub_100005EA8(&v4[v16], &qword_1000852E0);
  v20 = sub_100042274(&qword_100085118);
  (*(*(v20 - 8) + 8))(&v4[v15], v20);
  sub_100005EA8(&v4[v14], &qword_1000852E8);
  v13 = 0.0;
  if ((*(v19 + 48))(v10, 1, v18) != 1)
  {
    sub_100005DD8(v10, v8, &qword_100085370);
    v22 = (*(v19 + 88))(v8, v18);
    v13 = 1.0;
    if (v22 != enum case for WeatherCondition.blizzard(_:) && v22 != enum case for WeatherCondition.blowingSnow(_:) && v22 != enum case for WeatherCondition.flurries(_:) && v22 != enum case for WeatherCondition.freezingDrizzle(_:) && v22 != enum case for WeatherCondition.heavySnow(_:) && v22 != enum case for WeatherCondition.snow(_:) && v22 != enum case for WeatherCondition.sunFlurries(_:) && v22 != enum case for WeatherCondition.wintryMix(_:))
    {
      (*(v19 + 8))(v8, v18);
      goto LABEL_3;
    }
  }

LABEL_5:
  sub_100005EA8(v10, &qword_100085370);
  return v13;
}

void sub_1000490B8(uint64_t a1, float (*a2)(uint64_t))
{
  v4 = type metadata accessor for DayWeather();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100042274(&qword_100085108);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  sub_100005DD8(a1, &v16 - v9, &qword_100085108);
  v11 = sub_100042274(&qword_1000850A0);
  if ((*(*(v11 - 1) + 48))(v10, 1, v11) == 1)
  {
    sub_100005EA8(v10, &qword_100085108);
  }

  else
  {
    v17 = v11[12];
    v12 = v11[16];
    v13 = v11[20];
    v14 = sub_100042274(&qword_100085118);
    Forecast.subscript.getter();
    (*(*(v14 - 8) + 8))(&v10[v12], v14);
    DayWeather.precipitationChance.getter();
    (*(v5 + 8))(v7, v4);
    sub_100005EA8(&v10[v13], &qword_1000852E0);
    sub_100005EA8(&v10[v17], &qword_1000852E8);
    v15 = type metadata accessor for CurrentWeather();
    (*(*(v15 - 8) + 8))(v10, v15);
  }

  a2(a1);
}

uint64_t sub_100049380(uint64_t a1)
{
  v2 = sub_100042274(&qword_100085108);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  v5 = sub_100042274(&qword_100085370);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v23 - v9;
  sub_100005DD8(a1, v4, &qword_100085108);
  v11 = sub_100042274(&qword_1000850A0);
  if ((*(*(v11 - 1) + 48))(v4, 1, v11) == 1)
  {
    sub_100005EA8(v4, &qword_100085108);
    v12 = type metadata accessor for WeatherCondition();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  else
  {
    v14 = v11[12];
    v15 = v11[16];
    v16 = v11[20];
    CurrentWeather.condition.getter();
    v17 = type metadata accessor for CurrentWeather();
    (*(*(v17 - 8) + 8))(v4, v17);
    v18 = type metadata accessor for WeatherCondition();
    v19 = *(v18 - 8);
    (*(v19 + 56))(v10, 0, 1, v18);
    sub_100005EA8(&v4[v16], &qword_1000852E0);
    v20 = sub_100042274(&qword_100085118);
    (*(*(v20 - 8) + 8))(&v4[v15], v20);
    sub_100005EA8(&v4[v14], &qword_1000852E8);
    v13 = 0;
    if ((*(v19 + 48))(v10, 1, v18) == 1)
    {
      goto LABEL_71;
    }

    sub_100005DD8(v10, v8, &qword_100085370);
    v21 = (*(v19 + 88))(v8, v18);
    if (v21 == enum case for WeatherCondition.blizzard(_:))
    {
      v13 = 44;
      goto LABEL_71;
    }

    if (v21 == enum case for WeatherCondition.blowingDust(_:))
    {
      v13 = 20;
      goto LABEL_71;
    }

    if (v21 == enum case for WeatherCondition.blowingSnow(_:))
    {
      v13 = 16;
      goto LABEL_71;
    }

    if (v21 == enum case for WeatherCondition.breezy(_:))
    {
      goto LABEL_12;
    }

    if (v21 == enum case for WeatherCondition.clear(_:))
    {
      v13 = 33;
      goto LABEL_71;
    }

    if (v21 == enum case for WeatherCondition.cloudy(_:))
    {
      v13 = 27;
      goto LABEL_71;
    }

    if (v21 == enum case for WeatherCondition.drizzle(_:))
    {
      v13 = 10;
      goto LABEL_71;
    }

    if (v21 == enum case for WeatherCondition.flurries(_:))
    {
      goto LABEL_20;
    }

    if (v21 == enum case for WeatherCondition.foggy(_:))
    {
      v13 = 21;
      goto LABEL_71;
    }

    if (v21 == enum case for WeatherCondition.freezingDrizzle(_:))
    {
      v13 = 9;
      goto LABEL_71;
    }

    if (v21 == enum case for WeatherCondition.freezingRain(_:))
    {
      v13 = 11;
      goto LABEL_71;
    }

    if (v21 == enum case for WeatherCondition.frigid(_:))
    {
      v13 = 26;
      goto LABEL_71;
    }

    if (v21 == enum case for WeatherCondition.hail(_:))
    {
      v13 = 18;
      goto LABEL_71;
    }

    if (v21 == enum case for WeatherCondition.haze(_:))
    {
      v13 = 22;
      goto LABEL_71;
    }

    if (v21 == enum case for WeatherCondition.heavyRain(_:))
    {
      v13 = 41;
      goto LABEL_71;
    }

    if (v21 == enum case for WeatherCondition.heavySnow(_:))
    {
      v13 = 43;
      goto LABEL_71;
    }

    if (v21 == enum case for WeatherCondition.hot(_:))
    {
      v13 = 37;
      goto LABEL_71;
    }

    if (v21 == enum case for WeatherCondition.hurricane(_:))
    {
      v13 = 3;
      goto LABEL_71;
    }

    if (v21 == enum case for WeatherCondition.isolatedThunderstorms(_:))
    {
      v13 = 38;
      goto LABEL_71;
    }

    if (v21 == enum case for WeatherCondition.mostlyClear(_:))
    {
      v13 = 35;
      goto LABEL_71;
    }

    if (v21 == enum case for WeatherCondition.mostlyCloudy(_:))
    {
      v13 = 29;
      goto LABEL_71;
    }

    if (v21 == enum case for WeatherCondition.partlyCloudy(_:))
    {
      v13 = 31;
      goto LABEL_71;
    }

    if (v21 == enum case for WeatherCondition.rain(_:))
    {
      v13 = 13;
      goto LABEL_71;
    }

    if (v21 == enum case for WeatherCondition.scatteredThunderstorms(_:))
    {
      v13 = 39;
      goto LABEL_71;
    }

    if (v21 == enum case for WeatherCondition.sleet(_:))
    {
      v13 = 19;
      goto LABEL_71;
    }

    if (v21 == enum case for WeatherCondition.smoky(_:))
    {
      v13 = 23;
      goto LABEL_71;
    }

    if (v21 == enum case for WeatherCondition.snow(_:))
    {
      v13 = 17;
      goto LABEL_71;
    }

    if (v21 == enum case for WeatherCondition.strongStorms(_:))
    {
      v13 = 4;
      goto LABEL_71;
    }

    if (v21 == enum case for WeatherCondition.sunFlurries(_:))
    {
LABEL_20:
      v13 = 14;
      goto LABEL_71;
    }

    if (v21 == enum case for WeatherCondition.sunShowers(_:))
    {
      v13 = 12;
      goto LABEL_71;
    }

    if (v21 == enum case for WeatherCondition.thunderstorms(_:))
    {
      v13 = 5;
      goto LABEL_71;
    }

    if (v21 == enum case for WeatherCondition.tropicalStorm(_:))
    {
      v13 = 2;
      goto LABEL_71;
    }

    if (v21 == enum case for WeatherCondition.windy(_:))
    {
LABEL_12:
      v13 = 25;
      goto LABEL_71;
    }

    if (v21 == enum case for WeatherCondition.wintryMix(_:))
    {
      v13 = 7;
      goto LABEL_71;
    }

    (*(v19 + 8))(v8, v18);
  }

  v13 = 0;
LABEL_71:
  sub_100005EA8(v10, &qword_100085370);
  return v13;
}

void _s12destinationd40MapsSuggestionsWeatherConditionsProviderC07requestD010atLocation10completionySo10CLLocationCSg_y0D3Kit07CurrentD0V07currentD0_AJ8ForecastVyAJ04HourD0VGSg06hourlyO0AOyAJ03DayD0VG05dailyO0AJ10AirQualityVSg03airU0tSg_s5Error_pSgtcSgtF_0(void *a1, uint64_t a2, NSObject *a3)
{
  v6 = sub_100042274(&qword_1000852F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  if (a1)
  {
    v9 = qword_100085090;
    v10 = a1;
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000029EC(v11, qword_100085698);
    v12 = v10;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v30 = a3;
      v16 = v15;
      v17 = swift_slowAlloc();
      v31 = v17;
      *v16 = 136315138;
      v18 = [v12 description];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = sub_10004B5C0(v19, v21, &v31);

      *(v16 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v13, v14, "requestForecastWeather with location %s", v16, 0xCu);
      sub_10004A2A0(v17);

      a3 = v30;
    }

    type metadata accessor for WeatherService();
    v23 = static WeatherService.shared.getter();
    v24 = type metadata accessor for TaskPriority();
    (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v23;
    v25[5] = v12;
    v25[6] = a2;
    v25[7] = a3;
    sub_10004A290(a2);
    sub_100047F30(0, 0, v8, &unk_100056E60, v25);
  }

  else
  {
    if (qword_100085090 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000029EC(v26, qword_100085698);
    v30 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v30, v27, "location can't be nil!", v28, 2u);
    }

    v29 = v30;
  }
}

void sub_100049E30()
{
  sub_100049F0C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100049F0C()
{
  if (!qword_100085220)
  {
    sub_100049F70(&qword_1000850A0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100085220);
    }
  }
}

uint64_t sub_100049F70(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_100049FC0()
{
  sub_100049F0C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for GEOTransportType()
{
  if (!qword_1000852D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000852D0);
    }
  }
}

uint64_t sub_10004A0C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10004A19C;

  return sub_100046ED8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10004A19C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10004A290(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10004A2A0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_10004A2EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10004A730;

  return sub_1000483CC(a1, v4);
}

uint64_t sub_10004A3A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10004A19C;

  return sub_1000483CC(a1, v4);
}

unint64_t sub_10004A45C()
{
  result = qword_100085330;
  if (!qword_100085330)
  {
    type metadata accessor for WeatherServiceCaching.Options();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085330);
  }

  return result;
}

unint64_t sub_10004A4B4()
{
  result = qword_100085340;
  if (!qword_100085340)
  {
    sub_100049F70(&qword_100085338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085340);
  }

  return result;
}

void sub_10004A520()
{
  v1 = *(sub_100042274(&qword_100085108) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_100044B18(v2, v3);
}

uint64_t sub_10004A590(uint64_t a1, uint64_t a2)
{
  v4 = sub_100042274(&qword_100085108);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_10004A608()
{
  v1 = *(sub_100042274(&qword_100085108) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_1000466FC(v2, v3, v4);
}

uint64_t *sub_10004A680(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t MITransportModePredictionManagerResult.transportType.getter()
{
  v1 = OBJC_IVAR___MITransportModePredictionResult_transportType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MITransportModePredictionManagerResult.transportType.setter(int a1)
{
  v3 = OBJC_IVAR___MITransportModePredictionResult_transportType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *MITransportModePredictionManagerResult.metadata.getter()
{
  v1 = OBJC_IVAR___MITransportModePredictionResult_metadata;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MITransportModePredictionManagerResult.metadata.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___MITransportModePredictionResult_metadata;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id MITransportModePredictionManagerResult.__allocating_init(transportType:metadata:)(int a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR___MITransportModePredictionResult_metadata;
  *&v5[OBJC_IVAR___MITransportModePredictionResult_metadata] = 0;
  *&v5[OBJC_IVAR___MITransportModePredictionResult_transportType] = a1;
  swift_beginAccess();
  *&v5[v6] = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, "init");
}

id MITransportModePredictionManagerResult.init(transportType:metadata:)(int a1, uint64_t a2)
{
  v4 = OBJC_IVAR___MITransportModePredictionResult_metadata;
  *&v2[OBJC_IVAR___MITransportModePredictionResult_metadata] = 0;
  *&v2[OBJC_IVAR___MITransportModePredictionResult_transportType] = a1;
  swift_beginAccess();
  *&v2[v4] = a2;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for MITransportModePredictionManagerResult();
  return objc_msgSendSuper2(&v6, "init");
}

id MITransportModePredictionManagerWrapper.init()()
{
  v1 = objc_allocWithZone(type metadata accessor for MapsIntelligenceTransportModePredictionManager());
  *&v0[OBJC_IVAR___MITransportModePredictionManager__manager] = MapsIntelligenceTransportModePredictionManager.init()();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for MITransportModePredictionManagerWrapper();
  return objc_msgSendSuper2(&v3, "init");
}

id MITransportModePredictionManagerWrapper.transportMode(origin:destination:features:userHash4:)()
{
  v1 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v1 - 8);
  v2 = *(v0 + OBJC_IVAR___MITransportModePredictionManager__manager);
  if (!v2)
  {
    v28 = type metadata accessor for MITransportModePredictionManagerResult();
    v29 = objc_allocWithZone(v28);
    v30 = OBJC_IVAR___MITransportModePredictionResult_metadata;
    *&v29[OBJC_IVAR___MITransportModePredictionResult_metadata] = 0;
    *&v29[OBJC_IVAR___MITransportModePredictionResult_transportType] = 4;
    swift_beginAccess();
    *&v29[v30] = 0;
    v50.receiver = v29;
    v50.super_class = v28;
    return objc_msgSendSuper2(&v50, "init");
  }

  v3 = v2;
  v4 = dispatch thunk of MapsIntelligenceTransportModePredictionManager.transportMode(origin:destination:features:userHash4:)();
  v6 = v5;
  if (qword_100085098 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000029EC(v7, qword_1000856B8);
  v8 = v6;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v6;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "Meta Data is:%@", v11, 0xCu);
    sub_10004B68C(v12);
  }

  if (!v6)
  {
LABEL_34:
    v41 = type metadata accessor for MITransportModePredictionManagerResult();
    v42 = objc_allocWithZone(v41);
    v43 = OBJC_IVAR___MITransportModePredictionResult_metadata;
    *&v42[OBJC_IVAR___MITransportModePredictionResult_metadata] = 0;
    *&v42[OBJC_IVAR___MITransportModePredictionResult_transportType] = 4;
    swift_beginAccess();
    *&v42[v43] = v6;
    v49.receiver = v42;
    v49.super_class = v41;
    v44 = v8;
    v31 = objc_msgSendSuper2(&v49, "init");

    return v31;
  }

  v14 = objc_opt_self();
  v51[0] = 0;
  v15 = v8;
  v16 = [v14 dataWithJSONObject:v15 options:1 error:v51];
  v17 = v51[0];
  if (!v16)
  {
    v32 = v17;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    goto LABEL_34;
  }

  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  static String.Encoding.ascii.getter();
  v21 = String.init(data:encoding:)();
  if (!v22)
  {
    sub_10004B56C(v18, v20);

    goto LABEL_34;
  }

  v23 = v21;
  v24 = v22;

  v25 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v25, v48))
  {

    sub_10004B56C(v18, v20);
    swift_bridgeObjectRelease_n();
LABEL_33:

    goto LABEL_34;
  }

  v45 = v23;
  v26 = swift_slowAlloc();
  v51[0] = swift_slowAlloc();
  v46 = v26;
  *v26 = 136315394;
  if (v4 > 2)
  {
    if (v4 <= 4)
    {
      if (v4 == 3)
      {
        v27 = @"BICYCLE";
      }

      else
      {
        v27 = @"UNKNOWN_TRANSPORT_TYPE";
      }

      goto LABEL_30;
    }

    if (v4 == 5)
    {
      v27 = @"FERRY";
      goto LABEL_30;
    }

    if (v4 == 6)
    {
      v27 = @"RIDESHARE";
      goto LABEL_30;
    }

LABEL_26:
    v27 = [NSString stringWithFormat:@"(unknown: %i)", v4];
    goto LABEL_31;
  }

  if (!v4)
  {
    v27 = @"AUTOMOBILE";
    goto LABEL_30;
  }

  if (v4 == 1)
  {
    v27 = @"TRANSIT";
    goto LABEL_30;
  }

  if (v4 != 2)
  {
    goto LABEL_26;
  }

  v27 = @"WALKING";
LABEL_30:
  v33 = v27;
LABEL_31:
  v47 = v25;
  v34 = v27;

  if (v34)
  {
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39 = sub_10004B5C0(v36, v38, v51);

    *(v46 + 1) = v39;
    *(v46 + 6) = 2080;
    v40 = sub_10004B5C0(v45, v24, v51);

    *(v46 + 14) = v40;
    v25 = v47;
    _os_log_impl(&_mh_execute_header, v47, v48, "predicted %s with :%s", v46, 0x16u);
    swift_arrayDestroy();

    sub_10004B56C(v18, v20);
    goto LABEL_33;
  }

  __break(1u);
  return result;
}

id sub_10004B4A4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10004B4EC()
{
  v0 = type metadata accessor for Logger();
  sub_10004A680(v0, qword_1000856B8);
  sub_1000029EC(v0, qword_1000856B8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10004B56C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_10004B5C0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10004B6F4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10004B800(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10004A2A0(v11);
  return v7;
}

uint64_t sub_10004B68C(uint64_t a1)
{
  v2 = sub_100042274(&qword_100085378);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10004B6F4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10004B85C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_10004B800(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_10004B85C(uint64_t a1, unint64_t a2)
{
  v3 = sub_10004B8A8(a1, a2);
  sub_10004B9D8(&off_1000769A0);
  return v3;
}

char *sub_10004B8A8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10004BAC4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10004BAC4(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10004B9D8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10004BB38(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10004BAC4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100042274(&qword_100085508);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10004BB38(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100042274(&qword_100085508);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_10004BC34(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_FAULT))
  {
    v2 = 136446978;
    v3 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDestinationGraph.mm";
    v4 = 1024;
    v5 = 47;
    v6 = 2082;
    v7 = "[MapsSuggestionsDestinationGraph _addDestination:]";
    v8 = 2082;
    v9 = "nil == (destination)";
    _os_log_impl(&_mh_execute_header, a1, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an destination", &v2, 0x26u);
  }
}

BOOL sub_10004BD20(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      dispatch_source_set_timer(v2, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
      dispatch_source_cancel(*(a1 + 56));
      v3 = *(a1 + 56);
      *(a1 + 56) = 0;
    }
  }

  return a1 != 0;
}

uint64_t sub_10004BD78(uint64_t a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v13 = a2;
  v14 = a3;
  if (a1)
  {
    objc_initWeak(&location, a1);
    v15 = *(a1 + 8);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100010CF4;
    v18[3] = &unk_100075348;
    v16 = v15;
    objc_copyWeak(v21, &location);
    v19 = v13;
    v21[1] = *&a4;
    v21[2] = *&a5;
    v21[3] = *&a6;
    v21[4] = *&a7;
    v20 = v14;
    dispatch_async(v16, v18);

    objc_destroyWeak(v21);
    objc_destroyWeak(&location);
    a1 = 1;
  }

  return a1;
}

void sub_10004BEA0(NSObject *a1, NSObject **a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_FAULT))
  {
    sub_1000115F4();
    sub_100011654();
    sub_100011604();
    sub_100011678(&_mh_execute_header, v4, v5, "At %{public}s:%d, %{public}s forbids: %{public}s. Detected an unsupported MapsSuggestionsFeelerDisposition!", v6, v7, v8, v9, 2u);
  }

  *a2 = a1;
}

void sub_10004BF54(NSObject *a1, NSObject **a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_FAULT))
  {
    sub_1000115F4();
    sub_100011654();
    sub_100011604();
    sub_100011678(&_mh_execute_header, v4, v5, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a feeler", v6, v7, v8, v9, 2u);
  }

  *a2 = a1;
}

void sub_10004C008(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_FAULT))
  {
    v2[0] = 136446978;
    sub_1000115F4();
    sub_100011654();
    sub_100011604();
    v3 = "nil == (feeler)";
    _os_log_impl(&_mh_execute_header, a1, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a feeler", v2, 0x26u);
  }
}

void sub_10004C0CC()
{
  sub_100011624();
  if (sub_100011660(v0))
  {
    sub_1000115F4();
    sub_100011654();
    sub_100011604();
    sub_100011634(&_mh_execute_header, v1, v2, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a map item", v3, v4, v5, v6, 2u);
  }

  sub_100011614();
}

void sub_10004C178()
{
  sub_100011624();
  if (sub_100011660(v0))
  {
    sub_1000115F4();
    sub_100011654();
    sub_100011604();
    sub_100011634(&_mh_execute_header, v1, v2, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a handler", v3, v4, v5, v6, 2u);
  }

  sub_100011614();
}

void sub_10004C224()
{
  sub_100011624();
  if (sub_100011660(v0))
  {
    sub_1000115F4();
    sub_100011654();
    sub_100011604();
    sub_100011634(&_mh_execute_header, v1, v2, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a signal algorithm to be set", v3, v4, v5, v6, 2u);
  }

  sub_100011614();
}

void sub_10004C2D0()
{
  sub_100011624();
  if (sub_100011660(v0))
  {
    sub_1000115F4();
    sub_100011654();
    sub_100011604();
    sub_100011634(&_mh_execute_header, v1, v2, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entry", v3, v4, v5, v6, 2u);
  }

  sub_100011614();
}

void sub_10004C37C()
{
  sub_100011624();
  if (sub_100011660(v0))
  {
    sub_1000115F4();
    sub_100011654();
    sub_100011604();
    sub_100011634(&_mh_execute_header, v1, v2, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a handler", v3, v4, v5, v6, 2u);
  }

  sub_100011614();
}

void sub_10004C428()
{
  sub_100011624();
  if (sub_100011660(v0))
  {
    sub_1000115F4();
    sub_100011654();
    sub_100011604();
    sub_100011634(&_mh_execute_header, v1, v2, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a signal algorithm to be set", v3, v4, v5, v6, 2u);
  }

  sub_100011614();
}

uint64_t sub_10004C4D4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Polling Feelers done.", v6, 2u);
  }

  return sub_100006158(a3);
}

void sub_10004C55C(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "FEELER{%@} skip: too early", buf, 0xCu);
}

void sub_10004C5B4(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "FEELER{%@} is ready to poll", buf, 0xCu);
}

void sub_10004C60C()
{
  sub_100011624();
  if (sub_100011660(v0))
  {
    sub_1000115F4();
    sub_100011654();
    sub_100011604();
    sub_100011634(&_mh_execute_header, v1, v2, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a polling feeler", v3, v4, v5, v6, 2u);
  }

  sub_100011614();
}

void sub_10004C6F4(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    objc_initWeak(&location, a1);
    v4 = a1[5];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000125A0;
    v5[3] = &unk_1000753F0;
    objc_copyWeak(&v6, &location);
    dispatch_group_notify(v3, v4, v5);

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

double sub_10004C7C0(uint64_t a1, double a2, double a3)
{
  if (!a1)
  {
    return 0.0;
  }

  v5 = MapsSuggestionsCurrentBestLocation();
  if (v5)
  {
    v6 = [[CLLocation alloc] initWithLatitude:a2 longitude:a3];
    [v5 distanceFromLocation:v6];
    v8 = v7;
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Current Location is nil. Cannot calculate distance from CurrentLocation", v11, 2u);
    }

    v8 = NAN;
  }

  return v8;
}

void sub_10004C8AC()
{
  v0 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "User turned off Siri Suggestions for maps", v1, 2u);
  }
}

void sub_10004C928()
{
  v0 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    v1 = 136446978;
    v2 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutineFeeler.m";
    v3 = 1024;
    v4 = 149;
    v5 = 2082;
    v6 = "[MapsSuggestionsRoutineFeeler _fetchLocationsOfInterestOfType:group:]";
    v7 = 2082;
    v8 = "((type != RTLocationOfInterestTypeHome) && (type != RTLocationOfInterestTypeWork))";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Allowed types are only Home and Work", &v1, 0x26u);
  }
}

void sub_10004CA1C()
{
  v0 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "Current Location is nil. We can't request CR for tourist mode without it.", v1, 2u);
  }
}

void sub_10004CA8C(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "We cannot load payment cards from Wallet", v2, 2u);
  }
}

void sub_10004CB28(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2080;
  *(buf + 14) = "Loading ML model";
  _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
}

void sub_10004CBA8(void *a1, int a2)
{
  if (a1)
  {
    obj = a1;
    objc_sync_enter(obj);
    obj[15] = a2;
    objc_sync_exit(obj);
  }
}

void sub_10004CCF8(void *a1, unsigned int a2, void *a3)
{
  objc_sync_exit(a1);

  if (a2 < 3)
  {
    LODWORD(v6) = dword_100056C48[a2];
    [a3 writeSignalValue:39 forType:v6];
  }

  v7 = [a1 delegate];
  [v7 feeler:a1 sendsSignalPack:a3];
}

void sub_10004CE28(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "For some reason, MapsSuggestionsPortrait does not want to call back with future trips.", v2, 2u);
  }
}

float sub_10004CE88(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = a2;
  v3 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  v4 = MapsSuggestionsTimeZone();
  v5 = [v3 componentsInTimeZone:v4 fromDate:v2];

  v6 = [v5 weekday];
  return v6;
}

void sub_10004CF30(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_FAULT))
  {
    sub_100033084(&_mh_execute_header, v2, v3, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an end time", v4, v5, v6, v7, 2u);
  }
}

void sub_10004CFF8(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_FAULT))
  {
    sub_100033084(&_mh_execute_header, v2, v3, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a handler", v4, v5, v6, v7, 2u);
  }
}

void sub_10004D0E8(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    v18 = v6;
    v8 = objc_opt_new();
    v9 = dispatch_group_create();
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
LABEL_4:
      v14 = 0;
      while (1)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v25 + 1) + 8 * v14);
        if ([a1 isSuspended])
        {
          break;
        }

        if ([v15 optedIn])
        {
          dispatch_group_enter(v9);
          v22[0] = _NSConcreteStackBlock;
          v22[1] = 3221225472;
          v22[2] = sub_1000368E0;
          v22[3] = &unk_100076150;
          v23 = v8;
          v24 = v9;
          sub_100036970(a1, v15, v22);
        }

        if (v12 == ++v14)
        {
          v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v12)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v16 = a1[1];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100036D48;
    block[3] = &unk_100075BB0;
    v7 = v18;
    v20 = v8;
    v21 = v18;
    v17 = v8;
    dispatch_group_notify(v9, v16, block);
  }
}

id sub_10004D34C(uint64_t a1, void *a2)
{
  if (a1)
  {
    v2 = [a2 _plugIn];
    if (v2)
    {
      v3 = [LSApplicationExtensionRecord alloc];
      v4 = [v2 valueForKey:@"uuid"];
      v5 = [v3 initWithUUID:v4 error:0];

      v6 = [v5 containingBundleRecord];
      v7 = [v6 bundleIdentifier];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_10004D414(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v46 = a3;
  v45 = a4;
  v9 = a5;
  v10 = v9;
  v49 = a1;
  if (a1)
  {
    v42 = v9;
    v11 = [a2 userCurrentBookings];
    v43 = objc_opt_new();
    group = dispatch_group_create();
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = v11;
    v12 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
    if (v12)
    {
      v13 = v12;
      v41 = v54;
      v48 = *v58;
LABEL_4:
      v14 = 0;
      while (1)
      {
        if (*v58 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v57 + 1) + 8 * v14);
        if ([v49 isSuspended])
        {
          goto LABEL_30;
        }

        v16 = [NSString alloc];
        v17 = [v15 restaurant];
        v18 = [v17 name];
        v19 = [v15 bookingDate];
        v20 = [v16 initWithFormat:@"%@ at %@", v18, v19, v41];

        sub_10003A4C4();
        v21 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v63 = v20;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Treating reservation %@", buf, 0xCu);
        }

        v22 = [v15 bookingDate];
        v23 = v15;
        if (!v23)
        {
          break;
        }

        v24 = v23;
        v25 = [v23 status];

        if (v25 == 2)
        {
          goto LABEL_19;
        }

        v26 = v22;
        if (!v26)
        {
          sub_10003A4C4();
          v38 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
          {
            *buf = 136446978;
            v63 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsReservationsSource.m";
            v64 = 1024;
            v65 = 209;
            v66 = 2082;
            v67 = "BOOL _isOlderThanEarliestBookingDate(NSDate *__strong)";
            v68 = 2082;
            v69 = "nil == (date)";
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a data", buf, 0x26u);
          }

LABEL_24:
          sub_10003A4C4();
          v33 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v35 = v33;
            v36 = OS_LOG_TYPE_ERROR;
            v37 = "Is before the earliest booking date! Skipping.";
            goto LABEL_26;
          }

          goto LABEL_27;
        }

        v27 = v26;
        GEOConfigGetDouble();
        v28 = MapsSuggestionsNowWithOffset();
        v29 = [v28 earlierDate:v27];

        if (v29 == v27)
        {
          goto LABEL_24;
        }

        v30 = [v24 bookingDate];
        MapsSuggestionsSecondsTo();
        v32 = v31;

        if (v32 <= 43200.0)
        {
          dispatch_group_enter(group);
          v53[0] = _NSConcreteStackBlock;
          v53[1] = 3221225472;
          v54[0] = sub_100038678;
          v54[1] = &unk_100076268;
          v55 = v43;
          v56 = group;
          sub_100038704(v49, v24, v46, v45, v53);

          v33 = v55;
          goto LABEL_27;
        }

LABEL_28:

        if (v13 == ++v14)
        {
          v13 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
          if (v13)
          {
            goto LABEL_4;
          }

          goto LABEL_30;
        }
      }

      sub_10003A4C4();
      v34 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446978;
        v63 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsReservationsSource.m";
        v64 = 1024;
        v65 = 342;
        v66 = 2082;
        v67 = "BOOL _isDenied(INRestaurantReservationUserBooking *__strong)";
        v68 = 2082;
        v69 = "nil == (booking)";
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a booking", buf, 0x26u);
      }

LABEL_19:
      sub_10003A4C4();
      v33 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v35 = v33;
        v36 = OS_LOG_TYPE_DEBUG;
        v37 = "This one was actually denied! Skipping.";
LABEL_26:
        _os_log_impl(&_mh_execute_header, v35, v36, v37, buf, 2u);
      }

LABEL_27:

      goto LABEL_28;
    }

LABEL_30:

    v39 = v49[1];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100038DAC;
    block[3] = &unk_100075BB0;
    v10 = v42;
    v51 = v43;
    v52 = v42;
    v40 = v43;
    dispatch_group_notify(group, v39, block);
  }
}

void sub_10004DA14(id *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a1)
  {
    if (!v9)
    {
      v13 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446978;
        v57 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsReservationsSource.m";
        v58 = 1024;
        *v59 = 492;
        *&v59[4] = 2082;
        *&v59[6] = "[MapsSuggestionsReservationsSource _handleTicketResponseWithMapItem:booking:bundleID:completion:]";
        v60 = 2082;
        v61 = "nil == (mapItem)";
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a mapItem", buf, 0x26u);
      }

      goto LABEL_24;
    }

    v13 = a1[1];
    GEOConfigGetDouble();
    v15 = v14;
    v16 = [v10 bookingDate];
    GEOConfigGetDouble();
    v48 = [v16 dateByAddingTimeInterval:?];

    v17 = [v10 restaurant];
    v18 = [v17 name];
    if (v18)
    {
      v19 = v18;
      [v10 restaurant];
      v20 = v47 = v12;
      v21 = [v20 name];
      v22 = [v21 length];

      v12 = v47;
      if (v22)
      {
        v23 = [v10 restaurant];
        v24 = [v23 name];
        v25 = [MapsSuggestionsEntry entryWithType:8 title:v24 subtitle:0 weight:v48 expires:0 sourceSpecificInfo:v15];

        v26 = [v10 status];
        v27 = 0;
        if (v26 <= 2)
        {
          v27 = qword_100056CA0[v26];
        }

        [v25 setInteger:v27 forKey:@"MapsSuggestionsReservationsStatusKey"];
        v28 = [v9 timezone];
        v29 = [v28 name];
        [v25 setString:v29 forKey:@"MapsSuggestionsEventTimeZoneKey"];

        [v25 setNumber:&off_100079210 forKey:@"MapsSuggestionsGEOMapItemOriginKey"];
        [v25 setGeoMapItem:v9];
        v30 = [v10 bookingDate];
        [sub_10003A4D0() setDate:? forKey:?];

        v31 = [v10 bookingIdentifier];

        if (v31)
        {
          v32 = [v10 bookingIdentifier];
          [sub_10003A4D0() setString:? forKey:?];

          [v25 setString:@"MapsSuggestionsReservationsBookingIDKey" forKey:@"MapsSuggestionsPrimaryKey"];
          v33 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v10 partySize]);
          [sub_10003A4D0() setNumber:? forKey:?];

          v34 = [v10 restaurant];
          v35 = [v34 restaurantIdentifier];
          if (v35)
          {
            [v25 setString:v35 forKey:@"MapsSuggestionsReservationsRestaurantIDKey"];
          }

          else
          {
            v36 = +[NSUUID UUID];
            v37 = [v36 UUIDString];
            [v25 setString:v37 forKey:@"MapsSuggestionsReservationsRestaurantIDKey"];
          }

          [v25 setString:v11 forKey:@"MapsSuggestionsOriginBundleIDKey"];
          if (v11)
          {
            v38 = [NSSet alloc];
            v55 = v11;
            v39 = [NSArray arrayWithObjects:&v55 count:1];
            v40 = [v38 initWithArray:v39];

            [sub_10003A4D0() setSet:? forKey:?];
          }

          v41 = [v10 _maps_schemaOrgRepresentationWithGEOMapItem:v9];
          v46 = +[SGSuggestionsService serviceForEvents];
          v42 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
          {
            v43 = [a1 uniqueName];
            *buf = 138412546;
            v57 = v43;
            v58 = 2080;
            *v59 = "keysForSchemas";
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
          }

          v44 = GEOFindOrCreateLog();
          if (os_signpost_enabled(v44))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v44, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "keysForSchemas", "", buf, 2u);
          }

          v54 = v41;
          v45 = [NSArray arrayWithObjects:&v54 count:1];
          v49[0] = _NSConcreteStackBlock;
          v49[1] = 3221225472;
          v49[2] = sub_1000399A4;
          v49[3] = &unk_100076358;
          v25 = v25;
          v50 = v25;
          v51 = a1;
          v52 = v13;
          v12 = v47;
          v53 = v47;
          [v46 keysForSchemas:v45 completion:v49];
        }

LABEL_23:

LABEL_24:
        goto LABEL_25;
      }
    }

    else
    {
    }

    v25 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v57 = v10;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Could not create an entry for restaurant reservation %@ because the name of the restaurant is nil", buf, 0xCu);
    }

    goto LABEL_23;
  }

LABEL_25:
}

void sub_10004E0F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_10003A4A4(a1, a2);
  *(v7 + 8) = 3221225472;
  *(v7 + 16) = sub_100036FA4;
  *(v7 + 24) = &unk_100075B88;
  objc_copyWeak((v7 + 40), v8);
  *(a2 + 32) = a4;
  dispatch_async(v4, a2);

  objc_destroyWeak((a2 + 40));
}

void sub_10004E188(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_10003A4A4(a1, a2);
  *(v7 + 8) = 3221225472;
  *(v7 + 16) = sub_100036DA0;
  *(v7 + 24) = &unk_100075B88;
  objc_copyWeak((v7 + 40), v8);
  *(a2 + 32) = a4;
  dispatch_async(v4, a2);

  objc_destroyWeak((a2 + 40));
}

void sub_10004E218()
{
  v0 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    v1 = 136446978;
    v2 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsReservationsSource.m";
    v3 = 1024;
    v4 = 293;
    v5 = 2082;
    v6 = "[MapsSuggestionsReservationsSource _handleIntent:withExtension:completion:]";
    v7 = 2082;
    v8 = "nil == (completion)";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires completion block", &v1, 0x26u);
  }
}

void sub_10004E30C(void *a1)
{
  v1 = a1;
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_10003EF20(&_mh_execute_header, v2, v3, "%{public}s:%{public}d: strongMemory went away in %{public}s", v4, v5, v6, v7, 2u);
  }
}

void sub_10004E3C8(char *a1, uint64_t a2, char *__dst, uint64_t a4)
{
  *a2 = a1;
  *(a2 + 8) = xmmword_100056CD0;
  strcpy(a1, "com.apple.maps.destinationd.launched");
  sub_1000036FC(__dst, a2);
  sub_1000038F0(__dst, a4);
  if (__dst[23] < 0)
  {
    operator delete(*__dst);
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_10004E45C(NSObject *a1, NSObject **a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_FAULT))
  {
    v4 = 136446978;
    v5 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSourceWrapper.mm";
    v6 = 1024;
    v7 = 90;
    v8 = 2082;
    v9 = "[MapsSuggestionsSourceWrapper _addMonitoredXPCConnection:]";
    v10 = 2082;
    v11 = "nil == (connection)";
    _os_log_impl(&_mh_execute_header, a1, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Needs a connection", &v4, 0x26u);
  }

  *a2 = a1;
}

void sub_10004E534(void *a1)
{
  v1 = a1;
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_10003EF20(&_mh_execute_header, v2, v3, "%{public}s:%{public}d: strongMemory went away in %{public}s", v4, v5, v6, v7, 2u);
  }
}

id sub_10004E61C(uint64_t a1, void *a2)
{
  v3 = a2;
  v16 = v3;
  if (a1)
  {
    v4 = v3;
    v18 = [v3 mutableCopy];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (!v6)
    {
      goto LABEL_17;
    }

    v7 = v6;
    v8 = *v20;
    while (1)
    {
      v9 = 0;
      v17 = v7;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        v11 = [v10 stringForKey:@"MapsSuggestionsOriginBundleIDKey"];
        if ([v11 length])
        {
          [sub_100040DA8() registerBundleID:? withSource:?];
          if ([sub_100040DA8() isBundleIDLocked:? forSource:?])
          {
            v12 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              v13 = [v10 title];
              *buf = 138412546;
              v24 = v13;
              v25 = 2112;
              v26 = v11;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Entry %@ dropped because %@ is locked", buf, 0x16u);

              v7 = v17;
            }
          }

          else
          {
            if (([MapsSuggestionsSiri canLearnFromBundleID:v11]& 1) != 0)
            {
              goto LABEL_15;
            }

            v12 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "App prevents us from Learning. Returning.", buf, 2u);
            }
          }

          [v18 removeObjectIdenticalTo:v10];
        }

LABEL_15:

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (!v7)
      {
LABEL_17:

        v14 = [v18 copy];
        goto LABEL_18;
      }
    }
  }

  v14 = 0;
LABEL_18:

  return v14;
}

uint64_t MSg::jsonFor()
{
  return MSg::jsonFor();
}

{
  return MSg::jsonFor();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}