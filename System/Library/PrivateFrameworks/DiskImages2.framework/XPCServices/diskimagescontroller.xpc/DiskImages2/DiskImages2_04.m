void sub_100064784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_1000647AC(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 546;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 546;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100064990(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10020B720;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_100064A40(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100064A58(uint64_t a1)
{
  *a1 = off_10020B720;
  sub_100064E98(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_100064BC4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100064A58(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100064C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100064C68(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_100064CD4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100064A58(v1);

  return std::ios::~ios();
}

void sub_100064D20(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100064A58(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100064D84(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100064A58(v1);

  return std::ios::~ios();
}

void sub_100064DE4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100064A58(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100064E60(uint64_t a1)
{
  sub_100064A58(a1);

  operator delete();
}

uint64_t sub_100064E98(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_10006500C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100064FE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10006500C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 551;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 551;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_1000651F0(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10006535C(a1, a2);
  *a1 = off_10020B7A8;
  a1[45] = &off_10020B8A8;
  a1[46] = &off_10020B8D0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020B7A8;
  a1[45] = off_10020B830;
  a1[46] = off_10020B858;
  return a1;
}

void sub_1000652F4(_Unwind_Exception *a1)
{
  sub_100065424(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100065318(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100065424(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10006535C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10020B940;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10006540C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100065424(uint64_t a1)
{
  *a1 = off_10020B940;
  sub_100065864(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_100065590(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100065424(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000655F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100065634(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_1000656A0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100065424(v1);

  return std::ios::~ios();
}

void sub_1000656EC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100065424(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100065750(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100065424(v1);

  return std::ios::~ios();
}

void sub_1000657B0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100065424(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10006582C(uint64_t a1)
{
  sub_100065424(a1);

  operator delete();
}

uint64_t sub_100065864(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_1000659D8((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1000659B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_1000659D8(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 596;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 596;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void sub_100065C58(void *a1, unsigned int *a2, _DWORD *a3, unsigned __int8 *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10020A1C0;
  v4 = *a4;
  sub_10004D9A0(a1 + 3, *a2, *a3 != 0);
}

void *sub_100065CC8(void *result, unint64_t a2)
{
  if (result[2] - *result < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = result[1] - *result;
      operator new();
    }

    sub_100036CAC();
  }

  return result;
}

uint64_t sub_100065D90(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_100036C5C(result, a4);
  }

  return result;
}

void sub_100065DF0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *sub_100065E0C(uint64_t a1, char *__dst, char *__src, char *a4, int64_t __len)
{
  v5 = __dst;
  if (__len < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 < __len)
  {
    v11 = *a1;
    v12 = &v10[__len - *a1];
    if (v12 < 0)
    {
      sub_100036CAC();
    }

    v13 = (__dst - v11);
    v14 = v9 - v11;
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      operator new();
    }

    v31 = (__dst - v11);
    memcpy(v13, __src, __len);
    v32 = &v13[__len];
    v33 = v10 - v5;
    memcpy(v32, v5, v10 - v5);
    *(a1 + 8) = v5;
    v34 = &v13[v11 - v5];
    memcpy(v34, v11, v31);
    *a1 = v34;
    *(a1 + 8) = &v32[v33];
    *(a1 + 16) = 0;
    if (v11)
    {
      operator delete(v11);
    }

    return v13;
  }

  v16 = v10 - __dst;
  if (v10 - __dst >= __len)
  {
    v27 = &__dst[__len];
    v28 = &v10[-__len];
    v29 = *(a1 + 8);
    if (v10 >= __len)
    {
      do
      {
        v30 = *v28++;
        *v29++ = v30;
      }

      while (v28 != v10);
    }

    *(a1 + 8) = v29;
    if (v10 != v27)
    {
      memmove(&__dst[__len], __dst, v10 - v27);
    }

    v24 = v5;
    v25 = __src;
    v26 = __len;
    goto LABEL_27;
  }

  v18 = a4 - &__src[v16];
  if (a4 != &__src[v16])
  {
    memmove(*(a1 + 8), &__src[v16], a4 - &__src[v16]);
  }

  v19 = &v10[v18];
  *(a1 + 8) = &v10[v18];
  if (v16 >= 1)
  {
    v20 = &v5[__len];
    v21 = &v10[v18];
    if (&v19[-__len] < v10)
    {
      v22 = v5 - &__src[__len];
      v23 = v5 - __src;
      do
      {
        a4[v23++] = a4[v22++];
      }

      while (&a4[v22] < v10);
      v21 = &a4[v23];
    }

    *(a1 + 8) = v21;
    if (v19 != v20)
    {
      memmove(&v5[__len], v5, v19 - v20);
    }

    v24 = v5;
    v25 = __src;
    v26 = v10 - v5;
LABEL_27:
    memmove(v24, v25, v26);
  }

  return v5;
}

void sub_10006605C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10020B9C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

_BYTE *sub_1000660D8@<X0>(const std::error_category *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100050B6C(a1, v15);
  if (v15[16])
  {
    result = sub_100066420(v15);
    if (*result == 1)
    {
      *&v11 = "diskimage_err> diskimage_uio::details::diskimage_open_params_impl::validate_unlocked() const";
      *(&v11 + 1) = 84;
      v12 = 16;
      sub_10006648C(v13, &v11);
      sub_1000026BC(v14, "Diskimageuio: image is locked", 29);
      std::ostream::~ostream();
      sub_100066F20(v13);
      std::ios::~ios();
      result = make_error_code(162);
      v4 = 0;
      *a2 = result;
      *(a2 + 8) = v5;
    }

    else
    {
      *a2 = 0;
      v4 = 1;
    }
  }

  else
  {
    *&v11 = "diskimage_err> diskimage_uio::details::diskimage_open_params_impl::validate_unlocked() const";
    *(&v11 + 1) = 84;
    v12 = 16;
    sub_1000662B4(v13, &v11);
    sub_1000026BC(v14, "Diskimageuio: can't get lock status ", 36);
    v6 = sub_10005034C(v15);
    v7 = (*(**(v6 + 1) + 16))(*(v6 + 1));
    v8 = strlen(v7);
    v9 = sub_1000026BC(v14, v7, v8);
    v16 = 58;
    sub_1000026BC(v9, &v16, 1);
    v10 = *v6;
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_1000666C0(v13);
    std::ios::~ios();
    result = sub_10005034C(v15);
    v4 = 0;
    *a2 = *result;
  }

  *(a2 + 16) = v4;
  return result;
}

void sub_100066290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000665B4(va);
  _Unwind_Resume(a1);
}

void *sub_1000662B4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000665F8(a1, a2);
  *a1 = off_10020BA18;
  a1[45] = &off_10020BB18;
  a1[46] = &off_10020BB40;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020BA18;
  a1[45] = off_10020BAA0;
  a1[46] = off_10020BAC8;
  return a1;
}

void sub_1000663B8(_Unwind_Exception *a1)
{
  sub_1000666C0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000663DC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000666C0(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100066420(uint64_t result)
{
  if (*(result + 16) != 1)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x18uLL);
    v3 = *v1;
    *exception = &off_100209CA8;
    *(exception + 8) = v3;
  }

  return result;
}

void *sub_10006648C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100066E58(a1, a2);
  *a1 = off_10020BC38;
  a1[45] = &off_10020BD38;
  a1[46] = &off_10020BD60;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020BC38;
  a1[45] = off_10020BCC0;
  a1[46] = off_10020BCE8;
  return a1;
}

void sub_100066590(_Unwind_Exception *a1)
{
  sub_100066F20(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000665B4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100066F20(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000665F8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10020BBB0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_1000666A8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000666C0(uint64_t a1)
{
  *a1 = off_10020BBB0;
  sub_100066B00(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_10006682C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000666C0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100066894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000668D0(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_10006693C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000666C0(v1);

  return std::ios::~ios();
}

void sub_100066988(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000666C0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000669EC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000666C0(v1);

  return std::ios::~ios();
}

void sub_100066A4C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000666C0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100066AC8(uint64_t a1)
{
  sub_1000666C0(a1);

  operator delete();
}

uint64_t sub_100066B00(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_100066C74((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100066C4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100066C74(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 630;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 630;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100066E58(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10020BDD0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_100066F08(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100066F20(uint64_t a1)
{
  *a1 = off_10020BDD0;
  sub_100067360(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_10006708C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100066F20(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000670F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100067130(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_10006719C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100066F20(v1);

  return std::ios::~ios();
}

void sub_1000671E8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100066F20(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10006724C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100066F20(v1);

  return std::ios::~ios();
}

void sub_1000672AC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100066F20(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100067328(uint64_t a1)
{
  sub_100066F20(a1);

  operator delete();
}

uint64_t sub_100067360(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_1000674D4((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1000674AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_1000674D4(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 635;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 635;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_1000676B8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100067824(a1, a2);
  *a1 = off_10020BE58;
  a1[45] = &off_10020BF58;
  a1[46] = &off_10020BF80;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020BE58;
  a1[45] = off_10020BEE0;
  a1[46] = off_10020BF08;
  return a1;
}

void sub_1000677BC(_Unwind_Exception *a1)
{
  sub_1000678EC(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000677E0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000678EC(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100067824(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10020BFF0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_1000678D4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000678EC(uint64_t a1)
{
  *a1 = off_10020BFF0;
  sub_100067D2C(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_100067A58(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000678EC(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100067AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100067AFC(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_100067B68(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000678EC(v1);

  return std::ios::~ios();
}

void sub_100067BB4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000678EC(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100067C18(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000678EC(v1);

  return std::ios::~ios();
}

void sub_100067C78(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000678EC(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100067CF4(uint64_t a1)
{
  sub_1000678EC(a1);

  operator delete();
}

uint64_t sub_100067D2C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_100067EA0((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100067E78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100067EA0(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 101;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 101;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_100068084(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000681F0(a1, a2);
  *a1 = off_10020C078;
  a1[45] = &off_10020C178;
  a1[46] = &off_10020C1A0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020C078;
  a1[45] = off_10020C100;
  a1[46] = off_10020C128;
  return a1;
}

void sub_100068188(_Unwind_Exception *a1)
{
  sub_1000682B8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000681AC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000682B8(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000681F0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10020C210;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_1000682A0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000682B8(uint64_t a1)
{
  *a1 = off_10020C210;
  sub_1000686F8(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_100068424(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000682B8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10006848C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000684C8(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_100068534(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000682B8(v1);

  return std::ios::~ios();
}

void sub_100068580(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000682B8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000685E4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000682B8(v1);

  return std::ios::~ios();
}

void sub_100068644(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000682B8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000686C0(uint64_t a1)
{
  sub_1000682B8(a1);

  operator delete();
}

uint64_t sub_1000686F8(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_10006886C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100068844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10006886C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 665;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 665;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

const std::error_category *sub_100068A50@<X0>(uint64_t a1@<X8>)
{
  *&v3 = "hdr_get_nr_blocks(const hdr_variant &)::(anonymous class)::operator()(const auto &) const [hdr:auto = std::monostate]";
  *(&v3 + 1) = 69;
  v4 = 16;
  sub_100068BC4(v5, &v3);
  sub_1000026BC(v6, "Diskimageuio: can't get Diskimage attribute, unknown header format", 66);
  std::ostream::~ostream();
  sub_100068DF8(v5);
  std::ios::~ios();
  result = std::generic_category();
  *a1 = 6;
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  return result;
}

void sub_100068AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100068CEC(va);
  _Unwind_Resume(a1);
}

void sub_100068B40(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_100050C00(*(*(*a1 + 8) - 8), &v3);
  *a2 = v3.n128_u64[0];
  *(a2 + 16) = 1;
}

uint64_t sub_100068B8C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = (*(*a1 + 16))();
  *a2 = result;
  *(a2 + 16) = 1;
  return result;
}

void *sub_100068BC4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100068D30(a1, a2);
  *a1 = off_10020C2C8;
  a1[45] = &off_10020C3C8;
  a1[46] = &off_10020C3F0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020C2C8;
  a1[45] = off_10020C350;
  a1[46] = off_10020C378;
  return a1;
}

void sub_100068CC8(_Unwind_Exception *a1)
{
  sub_100068DF8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100068CEC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100068DF8(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100068D30(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10020C460;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_100068DE0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100068DF8(uint64_t a1)
{
  *a1 = off_10020C460;
  sub_100069238(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_100068F64(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100068DF8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100068FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100069008(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_100069074(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100068DF8(v1);

  return std::ios::~ios();
}

void sub_1000690C0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100068DF8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100069124(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100068DF8(v1);

  return std::ios::~ios();
}

void sub_100069184(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100068DF8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100069200(uint64_t a1)
{
  sub_100068DF8(a1);

  operator delete();
}

uint64_t sub_100069238(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_1000693AC((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100069384(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_1000693AC(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 113;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 113;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100069590(uint64_t a1)
{
  sub_100157EC4((a1 + 504), &stru_10020C4F0);
  sub_100157D44((a1 + 624));
  sub_100069604((a1 + 576));
  std::mutex::~mutex((a1 + 512));
  sub_100157D44((a1 + 504));
  sub_100170D08(a1 + 304);
  sub_10006A664(a1 + 248);
  sub_10006A538(a1 + 120);
  return a1;
}

uint64_t sub_100069604(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_100029E48(a1);
}

void sub_1000696B0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_100038E68();
}

void *sub_10006977C(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100205A90;
  sub_1001884C8(a1 + 3);
  return a1;
}

void *sub_1000697D8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100069944(a1, a2);
  *a1 = off_10020C528;
  a1[45] = &off_10020C628;
  a1[46] = &off_10020C650;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020C528;
  a1[45] = off_10020C5B0;
  a1[46] = off_10020C5D8;
  return a1;
}

void sub_1000698DC(_Unwind_Exception *a1)
{
  sub_100069A0C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100069900(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100069A0C(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100069944(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10020C6C0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_1000699F4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100069A0C(uint64_t a1)
{
  *a1 = off_10020C6C0;
  sub_100069E4C(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_100069B78(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100069A0C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100069BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100069C1C(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_100069C88(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100069A0C(v1);

  return std::ios::~ios();
}

void sub_100069CD4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100069A0C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100069D38(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100069A0C(v1);

  return std::ios::~ios();
}

void sub_100069D98(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100069A0C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100069E14(uint64_t a1)
{
  sub_100069A0C(a1);

  operator delete();
}

uint64_t sub_100069E4C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_100069FC0((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100069F98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100069FC0(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 687;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 687;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10006A1A4(void *a1, unsigned __int8 *a2)
{
  sub_100051430(a1, v7);
  if (v7[1])
  {
    v4 = sub_1000B39EC(a1, v7, a2);
  }

  else
  {
    v4 = -12;
  }

  v5 = io_rings_return_status(a1[7], a2, v4, 0);
  sub_10006B6C8(v7);
  return v5;
}

void sub_10006A21C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10006B6C8(va);
  _Unwind_Resume(a1);
}

void sub_10006A230(std::exception *a1)
{
  sub_1000023D4(a1);

  operator delete();
}

void ***sub_10006A268(void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2;
    sub_10006A41C(&v3);
    operator delete();
  }

  return result;
}

void sub_10006A2BC(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v5;
    do
    {
      *v8 = *v7;
      *(v8 + 8) = *(v7 + 8);
      *(v7 + 8) = 0;
      v7 += 16;
      v8 += 16;
    }

    while (v7 != v5);
    do
    {
      diskimage_uio::diskimage_open_params::~diskimage_open_params((v4 + 8));
      v4 += 16;
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  a1[1] = v4;
  a2[1] = v4;
  v9 = a1[1];
  a1[1] = a2[2];
  a2[2] = v9;
  v10 = a1[2];
  a1[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
}

void sub_10006A380(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_100038E68();
}

uint64_t sub_10006A3C8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
    diskimage_uio::diskimage_open_params::~diskimage_open_params((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10006A41C(void ***a1)
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
        v6 = v4 - 16;
        diskimage_uio::diskimage_open_params::~diskimage_open_params((v4 - 8));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_10006A4A4(uint64_t a1)
{
  *a1 = off_100208488;
  std::condition_variable::~condition_variable((a1 + 240));
  std::condition_variable::~condition_variable((a1 + 192));
  std::mutex::~mutex((a1 + 128));
  std::mutex::~mutex((a1 + 64));
  sub_1000531B8((a1 + 16));
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  return a1;
}

void sub_10006A538(uint64_t a1)
{
  while (*(a1 + 104))
  {
    v2 = (*(*(a1 + 72) + ((*(a1 + 96) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 96) & 0x1FFLL));
    if (atomic_load(v2))
    {
      v4 = atomic_load(v2);
      if (v4)
      {
        (*(*v4 + 40))(v4);
      }
    }

    *(a1 + 96) = vaddq_s64(*(a1 + 96), xmmword_1001C7E60);
    sub_10006A604(a1 + 64, 1);
  }

  sub_100069604((a1 + 64));

  std::mutex::~mutex(a1);
}

uint64_t sub_10006A604(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x200)
  {
    a2 = 1;
  }

  if (v2 < 0x400)
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
    *(a1 + 32) -= 512;
  }

  return v4 ^ 1u;
}

uint64_t sub_10006A664(uint64_t a1)
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

uint64_t sub_10006A6E4(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    std::__shared_mutex_base::unlock_shared(*a1);
  }

  return a1;
}

unint64_t sub_10006A720(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v12 = (*(**(*(a2 + 8) + 8) + 24))(*(*(a2 + 8) + 8));
  v13 = (*(**(*(a2 + 8) + 8) + 24))(*(*(a2 + 8) + 8));
  sub_10006A90C(v13, a3, a4, a5, v23);
  if (!a6 || (v14 = sub_10006A9AC(a1, v24, a6), !v14))
  {
    v25 |= 2u;
    v27 |= 2u;
    v26 |= 2u;
    v15 = *(a2 + 8);
    sub_1000246F4(v24, v20);
    sub_100024448(v24, v17);
    v14 = sub_10000247C(v15);
    if (v19)
    {
      sub_10000367C(v19);
    }

    if (v18)
    {
      sub_10000367C(v18);
    }

    if (v22)
    {
      sub_10000367C(v22);
    }

    if (v21)
    {
      sub_10000367C(v21);
    }

    if ((v14 & 0x8000000000000000) == 0)
    {
      v14 /= v12;
    }
  }

  sub_1000036E8(v23);
  return v14;
}

void sub_10006A8CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_100002440(&a10);
  sub_100002440(&a38);
  sub_1000036E8(&a66);
  _Unwind_Resume(a1);
}

void sub_10006A90C(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = a3 * a1;
  v8 = a4 * a1;
  v9 = *(sub_10019E2E8() + 1);
  *&v10 = a2;
  *(&v10 + 1) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = v7;
  v12 = v8;
  v13 = v7;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  sub_10006AA50(a5, &v10);
  if (*(&v10 + 1))
  {
    sub_10000367C(*(&v10 + 1));
  }
}

void sub_10006A994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000367C(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10006A9AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 240);
  v6 = (*(**(v5 + 8) + 24))(*(v5 + 8));
  sub_1000E7E94((v5 + 16), a3, v6, v9);
  if (v9[56])
  {
    sub_1000257F4(a2, v9);
    return 0;
  }

  else
  {
    v8 = *sub_100050D74(v9);
    if (v8 < 0)
    {
      return v8;
    }

    else
    {
      return -v8;
    }
  }
}

uint64_t *sub_10006AA50(uint64_t *a1, __int128 *a2)
{
  v4 = *(a2 + 4);
  v5 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v16 = &v18;
  v19 = v4;
  v17 = xmmword_1001C6CB0;
  v18 = v5;
  sub_100026B84(a1, &v16);
  sub_100003780(&v16);
  v6 = a1[1];
  v16 = *a1;
  v7 = v16 + 24 * v6;
  v8 = a1[19];
  v14 = a1[18];
  v15 = v7;
  v13 = &v14[v8];
  sub_100024588((a1 + 26), &v16, &v15, &v14, &v13, *(a2 + 3), *(a2 + 2), *(a2 + 10));
  v11 = *(a2 + 12);
  v10 = (a2 + 3);
  v9 = v11;
  if (*(v10 + 56) == 1 && v9)
  {
    sub_1000257F4((a1 + 26), v10);
  }

  return a1;
}

void sub_10006AB44(_Unwind_Exception *a1)
{
  sub_100025620(v1 + 26);
  sub_100026C30(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10006AB78(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v12 = (*(**(*(a2 + 8) + 8) + 24))(*(*(a2 + 8) + 8));
  v13 = v12 * a4;
  if (!v13)
  {
    return 0;
  }

  v14 = v12;
  v15 = -1;
  v16 = 8;
  v17 = v12 * a4;
  do
  {
    v18 = *(a3 + v16);
    v19 = v17 >= v18;
    v17 -= v18;
    if (!v19)
    {
      return -22;
    }

    ++v15;
    v16 += 16;
  }

  while (v17);
  result = v15 + 1;
  if (v15 < 0x7FFFFFFFFFFFFFFFLL)
  {
    v26 = a3;
    v27 = (v15 + 1);
    sub_10006AD8C(&v26, v14 * a5, v13, 0, v29);
    if (!a6 || (v20 = sub_10006A9AC(a1, v30, a6), !v20))
    {
      v31 |= 2u;
      v33 |= 2u;
      v32 |= 2u;
      v21 = *(a2 + 8);
      sub_1000246F4(v30, &v26);
      sub_100024448(v30, v23);
      v20 = sub_10000247C(v21);
      if (v25)
      {
        sub_10000367C(v25);
      }

      if (v24)
      {
        sub_10000367C(v24);
      }

      if (v28)
      {
        sub_10000367C(v28);
      }

      if (v27)
      {
        sub_10000367C(v27);
      }

      if ((v20 & 0x8000000000000000) == 0)
      {
        v20 /= v14;
      }
    }

    sub_1000036E8(v29);
    return v20;
  }

  return result;
}

void sub_10006AD4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_100002440(&a10);
  sub_100002440(&a38);
  sub_1000036E8(&a66);
  _Unwind_Resume(a1);
}

uint64_t sub_10006AD8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v10 = sub_10019E2E8();
  v11 = v10;
  v13 = *a1;
  v12 = *(a1 + 8);
  v14 = (a5 + 24);
  *a5 = a5 + 24;
  v15 = xmmword_1001C6CC0;
  *(a5 + 8) = xmmword_1001C6CC0;
  v16 = (v12 - 1) & 0xFFFFFFFFFFFFFFFLL;
  if (v12)
  {
    v17 = v16 + 1;
  }

  else
  {
    v17 = 0;
  }

  if (v17 < 6)
  {
    if (v12)
    {
      v28 = v16 + 1;
      do
      {
        v29 = *v13;
        v30 = v10[1];
        if (v30)
        {
          atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
        }

        v31 = v13[1];
        *v14 = v29;
        v14[1] = v30;
        v14[2] = v31;
        v13 += 2;
        v14 += 3;
        --v28;
      }

      while (v28);
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v36 = a4;
    if (v17 >= 0x555555555555556)
    {
      sub_100026DEC("get_next_capacity, allocator's max size reached");
    }

    v18 = a2;
    v19 = a3;
    v20 = operator new(24 * v17);
    v21 = *a5;
    if (*a5)
    {
      sub_100026E48(a5);
      if (v14 != v21)
      {
        operator delete(v21);
      }
    }

    *(a5 + 8) = 0;
    *(a5 + 16) = v17;
    *a5 = v20;
    if (v12)
    {
      v22 = &v13[2 * v12];
      v23 = v20;
      a3 = v19;
      a2 = v18;
      a4 = v36;
      v15 = xmmword_1001C6CC0;
      do
      {
        v24 = *v13;
        v25 = v11[1];
        if (v25)
        {
          atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
        }

        v26 = v13[1];
        *v23 = v24;
        *(v23 + 1) = v25;
        *(v23 + 2) = v26;
        v13 += 2;
        v23 += 24;
      }

      while (v13 != v22);
      v27 = *(a5 + 8);
    }

    else
    {
      v27 = 0;
      v23 = v20;
      a3 = v19;
      a2 = v18;
      a4 = v36;
      v15 = xmmword_1001C6CC0;
    }

    v17 = v27 - 0x5555555555555555 * ((v23 - v20) >> 3);
  }

  *(a5 + 144) = a5 + 168;
  *(a5 + 8) = v17;
  *(a5 + 152) = v15;
  sub_100027018(a5 + 144, v17);
  v32 = *(a5 + 8);
  v40 = *a5;
  v33 = v40 + 24 * v32;
  v34 = *(a5 + 152);
  v38 = *(a5 + 144);
  v39 = v33;
  v37 = &v38[v34];
  return sub_100024588(a5 + 208, &v40, &v39, &v38, &v37, a2, a3, a4);
}

unint64_t sub_10006B004(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v12 = (*(**(*(a2 + 8) + 8) + 24))(*(*(a2 + 8) + 8));
  v13 = (*(**(*(a2 + 8) + 8) + 24))(*(*(a2 + 8) + 8));
  sub_10006A90C(v13, a3, a4, a5, v23);
  if (!a6 || (v14 = sub_10006A9AC(a1, v24, a6), !v14))
  {
    v25 |= 1u;
    v27 |= 1u;
    v26 |= 1u;
    v15 = *(a2 + 8);
    sub_1000246F4(v24, v20);
    sub_100024448(v24, v17);
    v14 = sub_1000037F0(v15);
    if (v19)
    {
      sub_10000367C(v19);
    }

    if (v18)
    {
      sub_10000367C(v18);
    }

    if (v22)
    {
      sub_10000367C(v22);
    }

    if (v21)
    {
      sub_10000367C(v21);
    }

    if ((v14 & 0x8000000000000000) == 0)
    {
      v14 /= v12;
    }
  }

  sub_1000036E8(v23);
  return v14;
}

void sub_10006B1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_100002440(&a10);
  sub_100002440(&a38);
  sub_1000036E8(&a66);
  _Unwind_Resume(a1);
}

uint64_t sub_10006B1F0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v12 = (*(**(*(a2 + 8) + 8) + 24))(*(*(a2 + 8) + 8));
  v13 = v12 * a4;
  if (!v13)
  {
    return 0;
  }

  v14 = v12;
  v15 = -1;
  v16 = 8;
  v17 = v12 * a4;
  do
  {
    v18 = *(a3 + v16);
    v19 = v17 >= v18;
    v17 -= v18;
    if (!v19)
    {
      return -22;
    }

    ++v15;
    v16 += 16;
  }

  while (v17);
  result = v15 + 1;
  if (v15 < 0x7FFFFFFFFFFFFFFFLL)
  {
    v26 = a3;
    v27 = (v15 + 1);
    sub_10006AD8C(&v26, v14 * a5, v13, 1, v29);
    if (!a6 || (v20 = sub_10006A9AC(a1, v30, a6), !v20))
    {
      v31 |= 1u;
      v33 |= 1u;
      v32 |= 1u;
      v21 = *(a2 + 8);
      sub_1000246F4(v30, &v26);
      sub_100024448(v30, v23);
      v20 = sub_1000037F0(v21);
      if (v25)
      {
        sub_10000367C(v25);
      }

      if (v24)
      {
        sub_10000367C(v24);
      }

      if (v28)
      {
        sub_10000367C(v28);
      }

      if (v27)
      {
        sub_10000367C(v27);
      }

      if ((v20 & 0x8000000000000000) == 0)
      {
        v20 /= v14;
      }
    }

    sub_1000036E8(v29);
    return v20;
  }

  return result;
}

void sub_10006B3C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_100002440(&a10);
  sub_100002440(&a38);
  sub_1000036E8(&a66);
  _Unwind_Resume(a1);
}

uint64_t sub_10006B404(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = sub_100039BA0(*(a2 + 8));
  if (v4 < 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = -v4;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return a3;
  }
}

uint64_t sub_10006B450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 > 1)
  {
    if (a3 == 3 || a3 == 2)
    {
      return sub_10000FE1C(*(a2 + 8));
    }

    return 4294967274;
  }

  if (!a3)
  {
    return a3;
  }

  if (a3 != 1)
  {
    return 4294967274;
  }

  return sub_10000FE1C(*(a2 + 8));
}

uint64_t sub_10006B4A0(uint64_t result)
{
  if (result)
  {
    sub_100069590(result);

    operator delete();
  }

  return result;
}

uint64_t sub_10006B4E0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_10006A664(result + 248);
    sub_10006A538(v1 + 120);

    operator delete();
  }

  return result;
}

uint64_t sub_10006B5AC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10020C768;
  a2[1] = v2;
  return result;
}

uint64_t sub_10006B5E4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006B630(uint64_t a1, uint64_t a2)
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

uint64_t sub_10006B6C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 == -2)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      (*(*v4 + 40))(v4);
    }
  }

  else if (v2 == -1)
  {
    if (*(a1 + 8))
    {
      v3 = *a1;
      std::mutex::lock(*a1);
      sub_10006B79C(*a1 + 64, (a1 + 8));
      std::mutex::unlock(v3);
    }
  }

  else if ((v2 & 0x8000000000000000) == 0)
  {
    atomic_store(*(a1 + 8), (*(*(*a1 + 72) + (((*(*a1 + 96) + v2) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(*a1 + 96) + v2) & 0x1FF)));
  }

  return a1;
}

uint64_t sub_10006B79C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v9 + v8;
  if (v7 == v9 + v8)
  {
    sub_10006B850(a1);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v6 = *(a1 + 8);
    v10 = v8 + v9;
  }

  *(*(v6 + ((v10 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v10 & 0x1FF)) = *a2;
  v11 = v9 + 1;
  *(a1 + 40) = v11;
  v12 = v8 + v11;
  v13 = (v6 + 8 * (v12 >> 9));
  v14 = v12 & 0x1FF;
  if (v14)
  {
    v15 = *v13 + 8 * v14;
  }

  else
  {
    v15 = *(v13 - 1) + 4096;
  }

  return v15 - 8;
}

void *sub_10006B850(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
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
    sub_100046D30(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_10006BA24(a1, &v10);
}

void sub_10006B9D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_10006BA24(void *result, void *a2)
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

      sub_100046D30(result, v11);
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

const void **sub_10006BB2C(const void **result, void *a2)
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

      sub_100046D30(result, v9);
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

void *sub_10006BC38(void *result, void *a2)
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

      sub_100046D30(result[4], v11);
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

const void **sub_10006BD40(const void **result, void *a2)
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

      sub_100046D30(result[4], v9);
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

std::string *sub_10006BE4C(std::string *a1, std::string *a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  v3 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  size = a2->__r_.__value_.__l.__size_;
  if (v3 < 0)
  {
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  if (v3 < 0)
  {
    v3 = size;
  }

  sub_10006BEB4(a1, a2, (a2 + v3));
  return a1;
}

void sub_10006BE98(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_10006BEB4(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v7 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v11 = this->__r_.__value_.__r.__words[2];
    v8 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v10 = this->__r_.__value_.__r.__words[0];
    v9 = HIBYTE(v11);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v8 = 22;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    v10 = this;
  }

  if (v10 > __src || (&v10->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v8 - size < v7)
    {
      std::string::__grow_by(this, v8, size - v8 + v7, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    }

    v14 = this;
    if ((v9 & 0x80) != 0)
    {
      v14 = this->__r_.__value_.__r.__words[0];
    }

    v15 = v14 + size;
    if (a3 != __src)
    {
      memmove(v14 + size, __src, v7);
    }

    v15[v7] = 0;
    v16 = v7 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v16;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v16 & 0x7F;
    }
  }

  else
  {
    sub_10006C02C(__p, __src, a3, v7);
    if ((v19 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v13 = v19;
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(this, v12, v13);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void sub_10006C010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_10006C02C(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100002A60();
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

__n128 sub_10006C0DC(diskimage_uio::diskimage_open_params *this, diskimage_uio::diskimage_open_params *a2)
{
  v4 = *(a2 + 16);
  if (*(this + 16) == 1)
  {
    if (*(a2 + 16))
    {
      v9[0] = *this;
      *this = 0;
      diskimage_uio::diskimage_open_params::operator=(this, a2);
      diskimage_uio::diskimage_open_params::operator=(a2, v9);
LABEL_6:
      diskimage_uio::diskimage_open_params::~diskimage_open_params(v9);
      return result;
    }

    *v9 = *a2;
    *a2 = *this;
    *this = 0;
    diskimage_uio::diskimage_open_params::~diskimage_open_params(this);
    result.n128_u64[0] = v9[0];
    *this = *v9;
    v8 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v8;
  }

  else
  {
    if (*(a2 + 16))
    {
      v5 = *a2;
      *a2 = 0;
      diskimage_uio::diskimage_open_params::~diskimage_open_params(a2);
      *a2 = *this;
      *this = v5;
      v9[0] = 0;
      v6 = *(this + 16);
      *(this + 16) = *(a2 + 16);
      *(a2 + 16) = v6;
      goto LABEL_6;
    }

    result = *this;
    *this = *a2;
    *a2 = result;
  }

  return result;
}

__n128 sub_10006C1D4(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u8[0] = 0;
  return result;
}

uint64_t sub_10006C1F0(uint64_t (***a1)(void))
{
  v3[0] = (**a1)(a1);
  v3[1] = v1;
  if (v1 == 0xFFFFFFFFLL)
  {
    sub_100036CC4();
  }

  v5 = &v4;
  return (off_10020CA00[v1])(&v5, v3);
}

uint64_t sub_10006C268(uint64_t (***a1)(void))
{
  v3[0] = (**a1)(a1);
  v3[1] = v1;
  if (v1 == 0xFFFFFFFFLL)
  {
    sub_100036CC4();
  }

  v5 = &v4;
  return (off_10020CA40[v1])(&v5, v3);
}

uint64_t sub_10006C2E0(_DWORD **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 208);
  v7 = (*(*a1 + 4))(a1);
  if (v6 > (*(*a1 + 3))(a1) * v7)
  {
    return -5;
  }

  if (*a1[2])
  {
    return -78;
  }

  v9 = *(a2 + 16);
  if (!(*(*(*v9)[1] + 40))((*v9)[1]) || *a1[2])
  {
    return -78;
  }

  return sub_1000037F0(*v9);
}

uint64_t sub_10006C3E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    return 4294967218;
  }

  v4 = 4294967218;
  do
  {
    if ((*(*(*v2)[1] + 40))((*v2)[1]))
    {
      v4 = sub_10000FE1C(*v2);
      if (v4)
      {
        break;
      }
    }

    v2 += 2;
  }

  while (v2 != v3);
  return v4;
}

uint64_t sub_10006C47C(uint64_t a1, void **a2, _BYTE *a3)
{
  *(a1 + 8) = 0;
  *a1 = off_10020C898;
  *(a1 + 16) = 0;
  v5 = (a1 + 16);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  v6 = a1 + 56;
  *(a1 + 144) = 0;
  *(a1 + 40) = (*(***a2 + 24))(**a2);
  *(a1 + 48) = 0;
  v7 = a2[1];
  v9 = *(v7 - 3);
  v8 = *(v7 - 2);
  v42 = v6;
  v43 = v5;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = a2[1];
  }

  v10 = v7 - 3;
  v11 = *a2;
  if (*a2 != v7 - 3)
  {
    do
    {
      v13 = *(v10 - 3);
      v12 = *(v10 - 2);
      v10 -= 3;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = (*v13)[3](v13);
      if (v14 != (*v9)[3](v9))
      {
        exception = __cxa_allocate_exception(0x40uLL);
        *exception = &off_100233158;
        v37 = std::generic_category();
        exception[1] = 166;
        exception[2] = v37;
        *(exception + 24) = 0;
        *(exception + 48) = 0;
        exception[7] = "Cannot stack images with different block sizes";
      }

      if ((*a3 & 2) != 0)
      {
        v15 = sub_10006C1F0(v9);
        v16 = v15;
        v47 = v15;
        v48 = v17;
        v18 = sub_10006C268(v13);
        v53 = v18;
        v54 = v19;
        if (v16)
        {
LABEL_9:
          if (v18)
          {
LABEL_10:
            if (v47 != v53 || v48 != v54)
            {
              v40 = __cxa_allocate_exception(0x40uLL);
              *v40 = &off_100233158;
              v41 = std::generic_category();
              v40[1] = 166;
              v40[2] = v41;
              *(v40 + 24) = 0;
              *(v40 + 48) = 0;
              v40[7] = "Corrupted shadow file(s) chain";
            }
          }

          else
          {
            v23 = 1;
            while (v23 != 16)
            {
              if (*(&v53 + v23++))
              {
                if ((v23 - 2) <= 0xE)
                {
                  goto LABEL_10;
                }

                break;
              }
            }
          }
        }

        else
        {
          v21 = 1;
          while (v21 != 16)
          {
            if (*(&v47 + v21++))
            {
              if ((v21 - 2) <= 0xE)
              {
                goto LABEL_9;
              }

              break;
            }
          }
        }
      }

      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v8)
      {
        sub_10000367C(v8);
      }

      if (v12)
      {
        sub_10000367C(v12);
      }

      v11 = *a2;
      v8 = v12;
      v9 = v13;
    }

    while (v10 != *a2);
    v7 = a2[1];
    v8 = v12;
  }

  if (v11 != v7)
  {
    v25 = 0;
    do
    {
      v26 = *(a1 + 40);
      if (v26 != (*(**v11 + 24))())
      {
        v38 = __cxa_allocate_exception(0x40uLL);
        *v38 = &off_100233158;
        v39 = std::generic_category();
        v38[1] = 4294967274;
        v38[2] = v39;
        *(v38 + 24) = 0;
        *(v38 + 48) = 0;
        v38[7] = "Block size mismatch in DiskImageStackable";
      }

      v28 = *v11;
      v27 = v11[1];
      v29 = *v11;
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
        v29 = *v11;
      }

      if ((*(*v29 + 104))(v29))
      {
        v46 = 1;
        sub_100071CF0();
      }

      LODWORD(v47) = *(v11 + 4);
      v48 = *v11;
      v30 = v11[1];
      v49 = v30;
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v50 = v28;
      v51 = v27;
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v52 = (*(**v11 + 32))();
      v31 = *(a1 + 24);
      if (v31 >= *(a1 + 32))
      {
        v34 = sub_1000700E4(v43, &v47);
      }

      else
      {
        *v31 = v47;
        *(v31 + 8) = v48;
        v32 = v49;
        *(v31 + 16) = v49;
        if (v32)
        {
          atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        *(v31 + 24) = v50;
        v33 = v51;
        *(v31 + 32) = v51;
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        *(v31 + 40) = v52;
        v34 = v31 + 48;
      }

      *(a1 + 24) = v34;
      if (*(v11 + 4) == 2)
      {
        v25 |= (*(**v11 + 40))();
      }

      if (v51)
      {
        sub_10000367C(v51);
      }

      if (v49)
      {
        sub_10000367C(v49);
      }

      if (v27)
      {
        sub_10000367C(v27);
      }

      v11 += 3;
    }

    while (v11 != v7);
    if (v25)
    {
      v45[0] = _NSConcreteStackBlock;
      v45[1] = 0x40000000;
      v45[2] = sub_10006CBE0;
      v45[3] = &unk_10020C968;
      v45[4] = a1;
      v47 = v45;
      sub_10006CB58(v42, &v47, &qword_1001C8DC8);
    }
  }

  if (v8)
  {
    sub_10000367C(v8);
  }

  return a1;
}

void sub_10006CAA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  if (v12)
  {
    sub_10000367C(v12);
  }

  sub_10007040C(v11);
  sub_10007046C(va);
  _Unwind_Resume(a1);
}

void *sub_10006CB58(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(a1 + 88) == 1)
  {
    sub_100046D1C(a1 + 64);
    v7 = (a1 + 24);
    sub_10000E990(&v7);
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 88) = 0;
  }

  result = sub_10006F48C(a1, *a2, *a3);
  *(a1 + 88) = 1;
  return result;
}

uint64_t sub_10006CBE8(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 24);
  while (v1 != v2)
  {
    result = (*(**(v1 + 8) + 40))(*(v1 + 8));
    if (result)
    {
      v3 = *v1 == 2;
    }

    else
    {
      v3 = 0;
    }

    if (v3)
    {
      v4 = (*(**(v1 + 8) + 144))(*(v1 + 8));
      result = sub_10000FE1C(v4);
      if (v4)
      {
        result = (*(*v4 + 40))(v4);
      }
    }

    v1 += 48;
  }

  return result;
}

void sub_10006CCB8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1001A35CC(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10006CCD4(uint64_t a1)
{
  *a1 = off_10020C898;
  sub_10006CBE8(a1);
  if (*(a1 + 144) == 1)
  {
    sub_100046D1C(a1 + 120);
    v3 = (a1 + 80);
    sub_10000E990(&v3);
    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }
  }

  v3 = (a1 + 16);
  sub_10007046C(&v3);
  return a1;
}

void sub_10006CD6C(uint64_t a1)
{
  sub_10006CCD4(a1);

  operator delete();
}

unint64_t sub_10006CDA4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t *a11)
{
  v16 = *(a1 + 40);
  v17 = *(a6 + 16);
  v18 = *a6;
  v19 = a6[1];
  if ((v17 & 2) != 0)
  {
    v20 = *a6;
  }

  else
  {
    v20 = v18 + 1;
  }

  v23[0] = v20 * v16;
  v23[1] = ((v17 & 1) + v19 - v18 + (((v17 >> 1) & 1) - 1) + v20) * v16;
  v24 = 2;
  sub_100024E40(a3, v23, a4, v25);
  v21 = sub_10006CEDC(a1, a2, v25, &v28, a5, a7, a8, a9, a10, a11);
  if (v30)
  {
    sub_10000367C(v30);
  }

  if (v29)
  {
    sub_10000367C(v29);
  }

  if (v27)
  {
    sub_10000367C(v27);
  }

  if (v26)
  {
    sub_10000367C(v26);
  }

  return v21;
}

void sub_10006CEC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10006D100(va);
  _Unwind_Resume(a1);
}

unint64_t sub_10006CEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t *a10)
{
  v16 = sub_10006E30C(a1);
  v18 = v16;
  v19 = v17;
  v38[0] = v16;
  v38[1] = v17;
  if ((v16 & 0x8000000000000000) == 0 || !v16)
  {
    v20 = *(a3 + 208);
    v21 = v17 < v20 || v16 > ((*(a4 + 208) - v20) & ~((*(a4 + 208) - v20) >> 63));
    v22 = 0;
    if (a5 && v21)
    {
      v23 = *(a1 + 40);
      v24 = *(a4 + 208) - v20;
      v25 = v24 & ~(v24 >> 63);
      if (v25 <= v23)
      {
        v25 = *(a1 + 40);
      }

      v26 = *(a4 + 208) == v20;
      if (v24 <= 0)
      {
        v27 = 0;
      }

      else
      {
        v27 = v25;
      }

      v36[0] = v20 / v23;
      v36[1] = (v20 + v23 + v27 - 1) / v23;
      v37 = 2;
      v22 = sub_10006D708(a1, a2, v38, v36, a5, a10);
    }

    sub_100026714(v33, a3);
    sub_100026714(v30, a4);
    v18 = sub_10006DD48(a1, a2, v33, v30, v38, a5, *a8);
    if (v32)
    {
      sub_10000367C(v32);
    }

    if (v31)
    {
      sub_10000367C(v31);
    }

    if (v35)
    {
      sub_10000367C(v35);
    }

    if (v34)
    {
      sub_10000367C(v34);
    }

    if ((v18 & 0x8000000000000000) == 0 || !v18)
    {
      v28 = *(a4 + 208);
      if (v22)
      {
        return sub_10019E460(a3, a4, (v28 - *(a3 + 208)) & ~((v28 - *(a3 + 208)) >> 63), v38);
      }

      else
      {
        return v28 - v19;
      }
    }
  }

  return v18;
}

void *sub_10006D100(void *a1)
{
  v2 = a1[51];
  if (v2)
  {
    sub_10000367C(v2);
  }

  v3 = a1[29];
  if (v3)
  {
    sub_10000367C(v3);
  }

  v4 = a1[23];
  if (v4)
  {
    sub_10000367C(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    sub_10000367C(v5);
  }

  return a1;
}

double sub_10006D154@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if ((*(a4 + 16) & 2) != 0)
  {
    v8 = *a4;
  }

  else
  {
    v8 = *a4 + 1;
  }

  v9 = (*(a4 + 16) & 1) + *(a4 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = (v10 + 48 * a3);
  v13 = v12[5];
  if (v13 < v9)
  {
    v9 = v12[5];
  }

  *&v26 = v8;
  *(&v26 + 1) = v9;
  LOBYTE(v27) = 2;
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v10) >> 4) - 1 <= a3 || v13 <= v12[11])
  {
    v18 = v12[1];
  }

  else
  {
    *&v24 = v12[11];
    *(&v24 + 1) = v13;
    LOBYTE(v25) = 2;
    if (sub_10006D428(&v24, &v26))
    {
      *v31 = v24;
      *&v31[16] = v25;
      sub_10006D5EC(v31, &v26, &v22);
      v15 = v26;
      if ((v27 & 2) == 0)
      {
        v15 = v26 + 1;
      }

      v16 = v22;
      if ((v23 & 2) == 0)
      {
        v16 = v22 + 1;
      }

      *&v26 = v15;
      *(&v26 + 1) = v16;
      LOBYTE(v27) = 2;
      v17 = *(*(a2 + 16) + 16 * a3);
      *v31 = *(*(a1 + 16) + 48 * a3 + 8);
      *&v31[8] = v26;
      v32 = v27;
      v33 = 0;
      v34 = v17;
      v35 = 6;
      v36[0] = off_100202578;
      v36[3] = v36;
      v28 = v22;
      v29 = v23;
      v30 = 1;
      memset(__p, 0, sizeof(__p));
      sub_1000704F0(__p, &v28, v31, 1uLL);
      sub_1000B5F3C(v31);
    }

    v18 = *(*(a1 + 16) + 48 * a3 + 8);
  }

  v19 = *(*(a2 + 16) + 16 * a3);
  *a5 = v18;
  result = *&v26;
  *(a5 + 8) = v26;
  *(a5 + 24) = v27;
  *(a5 + 32) = 0;
  *(a5 + 40) = v19;
  *(a5 + 48) = 6;
  *(a5 + 56) = off_100202578;
  *(a5 + 80) = a5 + 56;
  return result;
}

void sub_10006D3F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_100007AD4(&a25);
  _Unwind_Resume(a1);
}

BOOL sub_10006D428(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *a1;
  v4 = *(a1 + 8);
  if (*(a1 + 16))
  {
    if (v2 == 3)
    {
      if (v4 < v3)
      {
        return 0;
      }
    }

    else if (v3 >= v4)
    {
      return 0;
    }
  }

  else if (v3 >= v4 || v3 + 1 >= v4)
  {
    return 0;
  }

  v6 = *(a2 + 16);
  v8 = *a2;
  v7 = *(a2 + 8);
  if (*(a2 + 16))
  {
    if (v6 == 3)
    {
      if (v7 < v8)
      {
        return 0;
      }
    }

    else if (v8 >= v7)
    {
      return 0;
    }
  }

  else if (v8 >= v7 || v8 + 1 >= v7)
  {
    return 0;
  }

  if (v2)
  {
    if (*(a1 + 16) == 3)
    {
      if (v4 < v3)
      {
        return 0;
      }
    }

    else if (v3 >= v4)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v3 >= v4 || v3 + 1 >= v4)
    {
      return result;
    }
  }

  if (v6)
  {
    if (*(a2 + 16) == 3)
    {
      if (v7 < v8)
      {
        return 0;
      }
    }

    else if (v8 >= v7)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v8 >= v7 || v8 + 1 >= v7)
    {
      return result;
    }
  }

  if ((v6 & 2) != 0)
  {
    v11 = *a2;
  }

  else
  {
    v11 = v8 + 1;
  }

  if ((v2 & 1) + v4 - 1 < v11)
  {
    return 0;
  }

  if (v6)
  {
    if (*(a2 + 16) == 3)
    {
      if (v7 < v8)
      {
        return 0;
      }
    }

    else if (v8 >= v7)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v8 >= v7 || v8 + 1 >= v7)
    {
      return result;
    }
  }

  if (!v2)
  {
    result = 0;
    if (v3 >= v4 || v3 + 1 >= v4)
    {
      return result;
    }

    goto LABEL_60;
  }

  if (v2 == 3)
  {
    if (v4 >= v3)
    {
      goto LABEL_60;
    }

    return 0;
  }

  if (v3 >= v4)
  {
    return 0;
  }

LABEL_60:
  if ((v2 & 2) == 0)
  {
    ++v3;
  }

  return (v6 & 1) + v7 - 1 >= v3;
}

void sub_10006D5EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  v5 = *a1;
  v4 = *(a1 + 8);
  if (*(a1 + 16))
  {
    if (v3 == 3)
    {
      if (v4 < v5)
      {
        goto LABEL_15;
      }
    }

    else if (v5 >= v4)
    {
LABEL_15:
      if ((atomic_load_explicit(&qword_1002400A0, memory_order_acquire) & 1) == 0)
      {
        v17 = a3;
        sub_1001A35FC();
        a3 = v17;
      }

      *a3 = xmmword_100240088;
      *(a3 + 16) = qword_100240098;
      return;
    }
  }

  else if (v5 >= v4 || v5 + 1 >= v4)
  {
    goto LABEL_15;
  }

  v7 = *(a2 + 16);
  v9 = *a2;
  v8 = *(a2 + 8);
  if (*(a2 + 16))
  {
    if (v7 == 3)
    {
      if (v8 < v9)
      {
        goto LABEL_15;
      }
    }

    else if (v9 >= v8)
    {
      goto LABEL_15;
    }
  }

  else if (v9 >= v8 || v9 + 1 >= v8)
  {
    goto LABEL_15;
  }

  v11 = v3 & 2;
  if ((v3 & 2) != 0)
  {
    v12 = *a1;
  }

  else
  {
    v12 = v5 + 1;
  }

  v13 = v7 & 2;
  if ((v7 & 2) != 0)
  {
    v14 = *a2;
  }

  else
  {
    v14 = v9 + 1;
  }

  v15 = v3 & 1;
  v16 = v7 & 1;
  if (v12 < v14)
  {
    v5 = *a2;
    v11 = v13;
  }

  if (v4 + v15 - 1 >= v8 + v16 - 1)
  {
    v4 = *(a2 + 8);
    LOBYTE(v15) = v16;
  }

  *a3 = v5;
  *(a3 + 8) = v4;
  *(a3 + 16) = v15 | v11;
}

BOOL sub_10006D708(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t a5, uint64_t *a6)
{
  v6 = *(a1 + 40);
  v7 = a3[1];
  if (*a3 <= v6)
  {
    v8 = *(a1 + 40);
  }

  else
  {
    v8 = *a3;
  }

  if (*a3)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v31[0] = v7 / v6;
  v31[1] = (v7 + v9) / v6;
  v32 = 2;
  if (a5)
  {
    v15 = 0;
    v16 = 0;
    v17 = a5 - 1;
    v18 = 1;
    do
    {
      if (*(*(a1 + 16) + v15) != 2)
      {
        if (a6 && v17 == v16)
        {
          sub_1000705E8(v36, a6);
        }

        else
        {
          sub_10006D154(a1, a2, v16, a4, v36);
        }

        sub_10006D154(a1, a2, v16, v31, v33);
        sub_10005D16C(v33, v30);
        sub_10005D2EC(v33, v29);
        sub_10005D16C(v36, v28);
        sub_10005D2EC(v36, v27);
        v19 = sub_10006DAC0(v30, v29, v28, v27);
        v20 = v27[0];
        v27[0] = 0;
        if (v20)
        {
          (*(*v20 + 24))(v20);
        }

        v21 = v28[0];
        v28[0] = 0;
        if (v21)
        {
          (*(*v21 + 24))(v21);
        }

        v22 = v29[0];
        v29[0] = 0;
        if (v22)
        {
          (*(*v22 + 24))(v22);
        }

        v23 = v30[0];
        v30[0] = 0;
        if (v23)
        {
          (*(*v23 + 24))(v23);
        }

        sub_10000B95C(&v35);
        v24 = v34;
        v34 = 0;
        if (v24)
        {
          (*(*v24 + 40))(v24);
        }

        sub_10000B95C(&v38);
        v25 = v37;
        v37 = 0;
        if (v25)
        {
          (*(*v25 + 40))(v25);
        }

        if (!v19)
        {
          break;
        }
      }

      v18 = ++v16 < a5;
      v15 += 48;
    }

    while (a5 != v16);
  }

  else
  {
    return 0;
  }

  return v18;
}

void sub_10006D9D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  if (a22)
  {
    (*(*a22 + 24))(a22);
  }

  if (a28)
  {
    (*(*a28 + 24))(a28);
  }

  sub_100007AD4(&a37);
  sub_100007AD4(v37 - 184);
  _Unwind_Resume(a1);
}

BOOL sub_10006DAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100124E14(v16, a1);
  sub_100124E14(v15, a2);
  sub_100124E14(v14, a3);
  sub_100124E14(v13, a4);
  v7 = sub_100070A24(v16, v15, v14, v13);
  v8 = v13[0];
  v13[0] = 0;
  if (v8)
  {
    (*(*v8 + 24))(v8);
  }

  v9 = v14[0];
  v14[0] = 0;
  if (v9)
  {
    (*(*v9 + 24))(v9);
  }

  v10 = v15[0];
  v15[0] = 0;
  if (v10)
  {
    (*(*v10 + 24))(v10);
  }

  v11 = v16[0];
  v16[0] = 0;
  if (v11)
  {
    (*(*v11 + 24))(v11);
  }

  return v7;
}

void sub_10006DC04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a9)
  {
    sub_1001A3598(a9);
  }

  if (a15)
  {
    (*(*a15 + 24))(a15);
  }

  if (a21)
  {
    (*(*a21 + 24))(a21);
  }

  v23 = *(v21 - 80);
  *(v21 - 80) = 0;
  if (v23)
  {
    (*(*v23 + 24))(v23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10006DCC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 < 0)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 24) - v4) >> 4) - 1 == a4 && *(a2 + 40) == 1;
  if (v5 || *(v4 + 48 * a3) != 2)
  {
    return 0;
  }

  else
  {
    return (*(**(*(*(a2 + 16) + 16 * a3) + 8) + 40))();
  }
}

uint64_t sub_10006DD48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 40);
  v8 = *a5;
  v9 = a5[1] % v7;
  v10 = v9 == 0;
  v11 = v7 - v9;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  v13 = v8 - v12;
  if (v8 < v12)
  {
    return 0;
  }

  v49[0] = 0;
  v56 = 0;
  sub_100026714(v46, a3);
  v22 = v13 / v7 * v7;
  sub_100025558(v46, a4, a5[1] + v12, v22, 0xFFFFFFFFFFFFFFFFLL, &v57);
  sub_100056AB4(v49, &v57);
  if (v66)
  {
    sub_10000367C(v66);
  }

  if (v65)
  {
    sub_10000367C(v65);
  }

  if (v64)
  {
    sub_10000367C(v64);
  }

  if (v63)
  {
    sub_10000367C(v63);
  }

  if (v60)
  {
    sub_10000367C(v60);
  }

  if (v59)
  {
    sub_10000367C(v59);
  }

  if (v48)
  {
    sub_10000367C(v48);
  }

  if (v47)
  {
    sub_10000367C(v47);
  }

  sub_1000249F0(a3, v22);
  sub_1000240A0((a3 + 120));
  sub_1000246F4(v49, &v57);
  sub_100027250(a3, &v57);
  if (v61)
  {
    sub_10000367C(v61);
  }

  if (v57.n128_u64[1])
  {
    sub_10000367C(v57.n128_u64[1]);
  }

  sub_100024448(v49, &v57);
  sub_100027250(a4, &v57);
  if (v61)
  {
    sub_10000367C(v61);
  }

  if (v57.n128_u64[1])
  {
    sub_10000367C(v57.n128_u64[1]);
  }

  v23 = a6 - 1;
  if (!sub_10006DCC8(a1, a2, v23, a7))
  {
    goto LABEL_65;
  }

  v67 = &v69;
  v68 = xmmword_1001C6CC0;
  v24 = *(a3 + 24);
  v25 = *(a4 + 208) - *(a3 + 208);
  v26 = v25 & ~(v25 >> 63);
  while (!sub_1000242EC(a3, a4))
  {
    sub_1000266C4(a3 + 120);
    v27 = *(a3 + 184);
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v28 = *(a3 + 208);
    if (((*(a4 + 208) - v28) & ~((*(a4 + 208) - v28) >> 63)) >= *(a3 + 200))
    {
      v29 = *(a3 + 200);
    }

    else
    {
      v29 = (*(a4 + 208) - v28) & ~((*(a4 + 208) - v28) >> 63);
    }

    if (v27)
    {
      sub_10000367C(v27);
    }

    if (v29)
    {
      v30 = *a3;
      v31 = *(a3 + 8);
      v57.n128_u64[0] = *a3;
      v57.n128_u64[1] = v31;
      if (v31)
      {
        atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
      }

      v58 = v29;
      v32 = v68;
      v33 = &v67[3 * v68];
      if (v68 == *(&v68 + 1))
      {
        sub_100071AF8(&v67, v33, 1, &v57, &v40);
        if (v57.n128_u64[1])
        {
          sub_10000367C(v57.n128_u64[1]);
        }
      }

      else
      {
        v33->n128_u64[0] = v30;
        v33->n128_u64[1] = v57.n128_u64[1];
        v33[1].n128_u64[0] = v29;
        *&v68 = v32 + 1;
      }

      sub_1000249F0(a3, v29);
    }

    else
    {
      sub_10006E2C0(a3, v43);
      if (v45)
      {
        sub_10000367C(v45);
      }

      if (v44)
      {
        sub_10000367C(v44);
      }
    }
  }

  sub_100026AE8(&v57, &v67, v24, v26, 1);
  if (*(a3 + 104) == 1 && *(a3 + 48))
  {
    sub_1000257F4(v62, a3 + 48);
  }

  sub_1000246F4(v62, &v40);
  sub_100024448(v62, v37);
  v34 = sub_1000242EC(&v40, v37);
  if (v39)
  {
    sub_10000367C(v39);
  }

  if (v38)
  {
    sub_10000367C(v38);
  }

  if (v42)
  {
    sub_10000367C(v42);
  }

  if (v41)
  {
    sub_10000367C(v41);
  }

  if (v34)
  {
    goto LABEL_64;
  }

  v36 = *(*(a2 + 16) + 16 * v23);
  sub_1000246F4(v62, &v40);
  sub_100024448(v62, v37);
  v14 = sub_1000037F0(v36);
  if (v39)
  {
    sub_10000367C(v39);
  }

  if (v38)
  {
    sub_10000367C(v38);
  }

  if (v42)
  {
    sub_10000367C(v42);
  }

  if (v41)
  {
    sub_10000367C(v41);
  }

  if ((v14 & 0x8000000000000000) == 0 || !v14)
  {
LABEL_64:
    sub_1000036E8(&v57);
    sub_100003780(&v67);
LABEL_65:
    v14 = (*(a4 + 208) - *(a3 + 208)) & ~((*(a4 + 208) - *(a3 + 208)) >> 63);
    goto LABEL_66;
  }

  sub_1000036E8(&v57);
  sub_100003780(&v67);
LABEL_66:
  if (v56 == 1)
  {
    if (v55)
    {
      sub_10000367C(v55);
    }

    if (v54)
    {
      sub_10000367C(v54);
    }

    if (v53)
    {
      sub_10000367C(v53);
    }

    if (v52)
    {
      sub_10000367C(v52);
    }

    if (v51)
    {
      sub_10000367C(v51);
    }

    if (v50)
    {
      sub_10000367C(v50);
    }
  }

  return v14;
}

void sub_10006E200(_Unwind_Exception *a1)
{
  if (STACK[0x668])
  {
    sub_10000367C(STACK[0x668]);
  }

  sub_100003780((v1 - 240));
  sub_10002568C(&STACK[0x388]);
  _Unwind_Resume(a1);
}

unint64_t sub_10006E30C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6, BOOL a7, unint64_t *a8, uint64_t a9)
{
  v12 = a1;
  v124 = a5;
  v123 = a5;
  v13 = a1[5];
  v80 = *(a3 + 208);
  v14 = v80 % v13;
  v15 = v13 - v80 % v13;
  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  sub_100026714(&v118, a3);
  sub_100026714(v113, a4);
  v17 = v12[5];
  v77 = a4;
  v18 = *(a3 + 208);
  v19 = *(a4 + 208) - v18;
  v20 = v19 & ~(v19 >> 63);
  if (v20 <= v17)
  {
    v20 = v12[5];
  }

  v21 = *(a4 + 208) == v18;
  if (v19 <= 0)
  {
    v22 = 0;
  }

  else
  {
    v22 = v20;
  }

  *&v111 = v18 / v17;
  *(&v111 + 1) = (v17 + v18 + v22 - 1) / v17;
  LOBYTE(v112) = 2;
  sub_10006D154(v12, a2, a5, &v111, v157);
  if (0xAAAAAAAAAAAAAAABLL * ((v12[3] - v12[2]) >> 4) - 1 == a5)
  {
    v131 = v111;
    v132 = v112;
    v133 = 1;
    v129 = 0;
    __p = 0;
    v128 = 0;
    sub_1000704F0(&__p, &v131, v134, 1uLL);
    sub_1000B5F3C(v157);
  }

  sub_10005D16C(v157, &v107);
  sub_10005D2EC(v157, v106);
  v82 = 0;
  v79 = a5 + 1;
  v81 = v12;
  while (1)
  {
    if (!sub_100124F1C(&v107, v106))
    {
      v53 = 2;
      goto LABEL_145;
    }

    v23 = a2;
    v24 = v108;
    v25 = v109;
    v26 = v110;
    v27 = v122;
    v28 = v12[5];
    v29 = v122 / v28;
    if ((v110 & 2) != 0)
    {
      v30 = v108;
    }

    else
    {
      v30 = v108 + 1;
    }

    v104[0] = v122 / v28;
    v104[1] = v30;
    v105 = 2;
    v31 = v12;
    v32 = v30 - v29;
    if (v30 <= v29)
    {
      v33 = qword_10023FE60;
    }

    else
    {
      v33 = v30 - v29;
    }

    if (!v33)
    {
      v12 = v31;
      goto LABEL_75;
    }

    v34 = v124;
    if (v124 <= v79)
    {
      v34 = a5 + 1;
    }

    v124 = v34;
    v35 = sub_10006CDA4(v31, v23, &v118, v113, v79, v104, a6 & 1, a7, &v124, a9, v157);
    v125 = v35;
    v126 = v36;
    if ((v35 & 0x8000000000000000) != 0 && v35)
    {
      v53 = 1;
      v12 = v81;
      goto LABEL_144;
    }

    v37 = v80;
    if (v36 < v27)
    {
      v37 = v36;
    }

    v80 = v37;
    v38 = v122;
    if (v36 >= v122)
    {
      v40 = *(v77 + 208) - *(a3 + 208);
      v39 = v36 + v35 > v81[5] * (v30 - 1);
      if (v35 <= (v40 & ~(v40 >> 63)))
      {
        a7 = 0;
        goto LABEL_60;
      }
    }

    else
    {
      v39 = v36 + v35 > v81[5] * (v30 - 1);
    }

    sub_100026714(v101, &v118);
    v41 = v125;
    v42 = v126;
    sub_100026714(&v131, v101);
    sub_100025558(&v131, v113, v42, v41, 0xFFFFFFFFFFFFFFFFLL, &v141);
    if (v135)
    {
      sub_10000367C(v135);
    }

    if (*(&v131 + 1))
    {
      sub_10000367C(*(&v131 + 1));
    }

    sub_100056AB4(a9, &v141);
    if (v156)
    {
      sub_10000367C(v156);
    }

    if (v155)
    {
      sub_10000367C(v155);
    }

    if (v154)
    {
      sub_10000367C(v154);
    }

    if (v153)
    {
      sub_10000367C(v153);
    }

    if (*(&v147 + 1))
    {
      sub_10000367C(*(&v147 + 1));
    }

    if (v143)
    {
      sub_10000367C(v143);
    }

    if (v103)
    {
      sub_10000367C(v103);
    }

    if (v102)
    {
      sub_10000367C(v102);
    }

    sub_1000246F4(a9, &v141);
    sub_100027250(&v118, &v141);
    if (*(&v149 + 1))
    {
      sub_10000367C(*(&v149 + 1));
    }

    if (*(&v141 + 1))
    {
      sub_10000367C(*(&v141 + 1));
    }

    sub_100024448(a9, &v141);
    sub_100027250(v113, &v141);
    if (*(&v149 + 1))
    {
      sub_10000367C(*(&v149 + 1));
    }

    if (*(&v141 + 1))
    {
      sub_10000367C(*(&v141 + 1));
    }

    a7 = 1;
    v38 = v122;
LABEL_60:
    sub_100026714(&v91, &v118);
    v43 = v125;
    if (!a7)
    {
      v44 = v81[5] * v32;
      v45 = v44 - v126 + v93;
      if (v125 < v45)
      {
        v45 = v125;
      }

      if (v44)
      {
        v43 = v45;
      }
    }

    sub_1000249F0(&v91, v43);
    v12 = v81;
    sub_1000240A0(v95);
    sub_100026898(&v141, &v91);
    v144 = v94;
    v145 = v95[0];
    v146 = v95[1];
    v147 = v95[2];
    v148 = v96;
    v149 = v97;
    v97 = 0uLL;
    v150 = v98;
    v152 = v100;
    v151 = v99;
    sub_100027250(&v118, &v141);
    if (*(&v149 + 1))
    {
      sub_10000367C(*(&v149 + 1));
    }

    if (*(&v141 + 1))
    {
      sub_10000367C(*(&v141 + 1));
    }

    if (*(&v97 + 1))
    {
      sub_10000367C(*(&v97 + 1));
    }

    if (v92)
    {
      sub_10000367C(v92);
    }

    v27 = v122;
    v82 += v122 - v38;
    if (!v39)
    {
      break;
    }

    v16 = 0;
    a6 = 0;
    v28 = v81[5];
LABEL_75:
    v46 = (v26 & 1) + v25 - v24 + (((v26 >> 1) & 1) - 1);
    v47 = v28 * v46 - v16;
    if (v117 - v27 < v47)
    {
      v47 = v117 - v27;
    }

    if (v115 - v120 < v47)
    {
      goto LABEL_143;
    }

    *&v141 = v28 * v30;
    *(&v141 + 1) = v28 * (v46 + v30);
    LOBYTE(v142) = 2;
    sub_100024E40(&v118, &v141, v113, &v131);
    v125 = -78;
    a2 = v23;
    if (((*(v23 + 24) - *(v23 + 16)) >> 4) - 1 != a5 || a7 || (*(v23 + 44) & 1) == 0)
    {
LABEL_82:
      v50 = sub_10000247C(*(*(v23 + 16) + 16 * a5));
      v52 = v51;
      v125 = v50;
      v126 = v51;
      if ((v50 & 0x8000000000000000) == 0)
      {
        goto LABEL_90;
      }

      goto LABEL_83;
    }

    v48 = *(v12[2] + 48 * a5 + 24);
    v142 = 0u;
    v141 = 0u;
    (*(*v48 + 80))(&v141);
    if (v141)
    {
      v49 = v141 + ((v140 - v136) & ~((v140 - v136) >> 63)) - 1;
      if (v138 - v134[13] < 1 - (v141 + ((v140 - v136) & ~((v140 - v136) >> 63))) + v49 / v141 * v141 + *(&v141 + 1) * v141 + v49)
      {
        goto LABEL_82;
      }
    }

    else if ((a6 & 1) == 0)
    {
      goto LABEL_82;
    }

    v54 = sub_10000247C(*(*(*(v23 + 16) + 16 * a5) + 16));
    v50 = v54;
    v52 = v55;
    v125 = v54;
    v126 = v55;
    v56 = v55 < v136 || v54 > ((*(v77 + 208) - *(a3 + 208)) & ~((*(v77 + 208) - *(a3 + 208)) >> 63));
    a7 = v56;
    if ((v54 & 0x8000000000000000) == 0)
    {
      goto LABEL_90;
    }

LABEL_83:
    if (v50)
    {
      v53 = 1;
      goto LABEL_130;
    }

LABEL_90:
    v57 = v136;
    v58 = v140;
    if (a6)
    {
      if (a7)
      {
        v59 = *(a3 + 208);
        if (*(v77 + 208) - v59 <= v50)
        {
          v60 = v50;
        }

        else
        {
          v60 = *(v77 + 208) - v59;
        }

        sub_100026714(v88, &v118);
        sub_100026714(&__p, v88);
        sub_100025558(&__p, v113, v52, v60 & ~(v60 >> 63), 0xFFFFFFFFFFFFFFFFLL, &v141);
        if (v130)
        {
          sub_10000367C(v130);
        }

        if (v128)
        {
          sub_10000367C(v128);
        }

        sub_100056AB4(a9, &v141);
        if (v156)
        {
          sub_10000367C(v156);
        }

        if (v155)
        {
          sub_10000367C(v155);
        }

        if (v154)
        {
          sub_10000367C(v154);
        }

        if (v153)
        {
          sub_10000367C(v153);
        }

        if (*(&v147 + 1))
        {
          sub_10000367C(*(&v147 + 1));
        }

        if (v143)
        {
          sub_10000367C(v143);
        }

        if (v90)
        {
          sub_10000367C(v90);
        }

        if (v89)
        {
          sub_10000367C(v89);
        }

        sub_1000246F4(a9, &v141);
        sub_100027250(&v118, &v141);
        if (*(&v149 + 1))
        {
          sub_10000367C(*(&v149 + 1));
        }

        if (*(&v141 + 1))
        {
          sub_10000367C(*(&v141 + 1));
        }

        sub_100024448(a9, &v141);
        sub_100027250(v113, &v141);
        if (*(&v149 + 1))
        {
          sub_10000367C(*(&v149 + 1));
        }

        if (*(&v141 + 1))
        {
          sub_10000367C(*(&v141 + 1));
        }

        a7 = 1;
        v61 = v125;
      }

      else
      {
        a7 = 0;
        v61 = v50;
      }

      v80 = v52;
    }

    else if (v52 == v122)
    {
      v61 = v50;
    }

    else
    {
      v61 = sub_10019E460(&v118, v113, v81[5] * v46, &v125);
      v125 = v61;
      v126 = v62;
      a7 = v61 != v81[5] * v46;
    }

    sub_1000249F0(&v118, v61);
    v16 = 0;
    a6 = 0;
    v63 = v52 + v50 < ((v58 - v57) & ~((v58 - v57) >> 63)) + v57;
    v12 = v81;
    v82 += v125;
    v53 = 4 * v63;
LABEL_130:
    if (v139)
    {
      sub_10000367C(v139);
    }

    if (v137)
    {
      sub_10000367C(v137);
    }

    if (v135)
    {
      sub_10000367C(v135);
    }

    if (*(&v131 + 1))
    {
      sub_10000367C(*(&v131 + 1));
    }

    if (v53)
    {
      goto LABEL_145;
    }

    sub_1001251AC(&v107);
  }

  a6 = 0;
LABEL_143:
  v53 = 4;
LABEL_144:
  a2 = v23;
LABEL_145:
  v64 = v106[0];
  v106[0] = 0;
  if (v64)
  {
    (*(*v64 + 24))(v64);
  }

  v65 = v107;
  v107 = 0;
  if (v65)
  {
    (*(*v65 + 24))(v65);
  }

  if (v53 != 2)
  {
    if (v53 != 4)
    {
      goto LABEL_191;
    }

LABEL_190:
    v125 = v82;
    v126 = v80;
    goto LABEL_191;
  }

  if (sub_1000242EC(&v118, v113))
  {
    goto LABEL_190;
  }

  if (!sub_10006F240(v157))
  {
    sub_10012533C(v157, &v141);
    if (v12[5] * *(&v141 + 1) >= *(v77 + 208))
    {
      goto LABEL_190;
    }
  }

  v66 = v123;
  if (v123 <= v79)
  {
    v66 = a5 + 1;
  }

  v123 = v66;
  v67 = sub_10006CEDC(v12, a2, &v118, v113, v79, a6 & 1, a7, &v123, a9, v157);
  v68 = v67;
  v70 = v69;
  v125 = v67;
  v126 = v69;
  if ((v67 & 0x8000000000000000) == 0 || !v67)
  {
    if (a6)
    {
      sub_100026714(v85, &v118);
      v71 = v125;
      v72 = v126;
      sub_100026714(&v131, v85);
      sub_100025558(&v131, v113, v72, v71, 0xFFFFFFFFFFFFFFFFLL, &v141);
      if (v135)
      {
        sub_10000367C(v135);
      }

      if (*(&v131 + 1))
      {
        sub_10000367C(*(&v131 + 1));
      }

      sub_100056AB4(a9, &v141);
      if (v156)
      {
        sub_10000367C(v156);
      }

      if (v155)
      {
        sub_10000367C(v155);
      }

      if (v154)
      {
        sub_10000367C(v154);
      }

      if (v153)
      {
        sub_10000367C(v153);
      }

      if (*(&v147 + 1))
      {
        sub_10000367C(*(&v147 + 1));
      }

      if (v143)
      {
        sub_10000367C(v143);
      }

      if (v87)
      {
        sub_10000367C(v87);
      }

      if (v86)
      {
        sub_10000367C(v86);
      }

      sub_1000246F4(a9, &v141);
      sub_100027250(&v118, &v141);
      if (*(&v149 + 1))
      {
        sub_10000367C(*(&v149 + 1));
      }

      if (*(&v141 + 1))
      {
        sub_10000367C(*(&v141 + 1));
      }

      sub_100024448(a9, &v141);
      sub_100027250(v113, &v141);
      if (*(&v149 + 1))
      {
        sub_10000367C(*(&v149 + 1));
      }

      if (*(&v141 + 1))
      {
        sub_10000367C(*(&v141 + 1));
      }

      v68 = v125;
      v80 = v70;
    }

    sub_1000249F0(&v118, v68);
    v82 += v125;
    goto LABEL_190;
  }

LABEL_191:
  sub_10000B95C(&v159);
  v73 = v158;
  v158 = 0;
  if (v73)
  {
    (*(*v73 + 40))(v73);
  }

  if (v116)
  {
    sub_10000367C(v116);
  }

  if (v114)
  {
    sub_10000367C(v114);
  }

  if (v121)
  {
    sub_10000367C(v121);
  }

  if (v119)
  {
    sub_10000367C(v119);
  }

  v74 = v124;
  if (v124 <= v123)
  {
    v74 = v123;
  }

  *a8 = v74;
  return v125;
}

void sub_10006F018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t *a13)
{
  sub_100002440(&STACK[0x900]);
  sub_100007AD4(v13 - 184);
  sub_100002440(&STACK[0x480]);
  sub_100002440(&STACK[0x560]);
  v15 = STACK[0x648];
  if (STACK[0x648] <= STACK[0x640])
  {
    v15 = STACK[0x640];
  }

  *a13 = v15;
  _Unwind_Resume(a1);
}

BOOL sub_10006F240(uint64_t a1)
{
  sub_10005D16C(a1, v7);
  sub_10005D2EC(a1, v6);
  v2 = sub_100124E80(v7, v6);
  v3 = v6[0];
  v6[0] = 0;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v4 = v7[0];
  v7[0] = 0;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  return v2;
}

void sub_10006F2F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a9)
  {
    sub_1001A3598(a9);
  }

  if (a15)
  {
    (*(*a15 + 24))(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10006F344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v3 == v4)
  {
    return 1;
  }

  v7 = v3 + 48;
  do
  {
    result = (*(**(v7 - 40) + 64))(*(v7 - 40), a2, a3);
    if (result)
    {
      v9 = v7 == v4;
    }

    else
    {
      v9 = 1;
    }

    v7 += 48;
  }

  while (!v9);
  return result;
}

uint64_t sub_10006F3C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (*v2 || !(*(**(v2 + 8) + 88))(*(v2 + 8)) || **(a1 + 16))
  {
    return 0;
  }

  v6 = **(a2 + 16);

  return sub_100039BA0(v6);
}

void *sub_10006F48C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_100003410(&__p, "com.apple.di_stackable.cache.flusher");
  sub_100046794(a1);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  sub_100046AF0(a1, a2, a3, (a1 + 8));
  return a1;
}

double sub_10006F538@<D0>(uint64_t a1@<X0>, uint64x2_t *a2@<X8>)
{
  v2 = *(a1 + 24);
  v4.i64[0] = *(a1 + 40);
  v4.i64[1] = v2;
  v5 = 2;
  *&result = sub_10006F574(a1, &v4, 0, a2).n128_u64[0];
  return result;
}

__n128 sub_10006F574@<Q0>(uint64_t a1@<X0>, uint64x2_t *a2@<X1>, uint64_t a3@<X2>, uint64x2_t *a4@<X8>)
{
  v6 = *(a1 + 48);
  v7 = *(v6 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((*(v6 + 24) - v7) >> 4) == a3)
  {
    goto LABEL_37;
  }

  v10 = a2[1].u8[0];
  v12 = a2->i64[0];
  v11 = a2->u64[1];
  if (!a2[1].i8[0])
  {
    if (v12 < v11 && v12 + 1 < v11)
    {
      goto LABEL_36;
    }

LABEL_5:
    if (qword_10023FE60)
    {
      goto LABEL_6;
    }

LABEL_37:
    result = *a2;
    *a4 = *a2;
    a4[1].i64[0] = a2[1].i64[0];
    a4[1].i32[2] = 0;
    return result;
  }

  if (v10 != 3)
  {
    if (v12 < v11)
    {
      goto LABEL_36;
    }

    goto LABEL_5;
  }

  if (v11 < v12)
  {
    goto LABEL_5;
  }

LABEL_36:
  if (!(v11 + (v10 & 1) - v12 + (((v10 >> 1) & 1) - 1)))
  {
    goto LABEL_37;
  }

LABEL_6:
  v13 = *(a1 + 56);
  v14 = (*(**(v7 + 48 * a3 + 8) + 32))(*(v7 + 48 * a3 + 8));
  v15 = *(*(v13 + 16) + 16 * a3);
  v41 = *(*(v6 + 16) + 48 * a3 + 8);
  v16 = *a2;
  v17 = vdupq_n_s64(v14);
  v42 = vbslq_s8(vcgtq_u64(v17, *a2), *a2, v17);
  v43 = 2;
  v44 = 0;
  v45 = v15;
  v46 = 7;
  v47[0] = off_100202578;
  v47[3] = v47;
  if (v14 < v16.i64[1])
  {
    v34[0] = v14;
    v34[1] = v16.i64[1];
    v35 = 2;
    v36 = 2;
    v31 = 0;
    v32 = 0;
    __p = 0;
    sub_1000704F0(&__p, v34, &v37, 1uLL);
    sub_1000B5F3C(&v41);
  }

  if ((a2[1].i8[0] & 2) != 0)
  {
    v18 = v16.i64[0];
  }

  else
  {
    v18 = v16.i64[0] + 1;
  }

  sub_10005D16C(&v41, v38);
  v19 = v40;
  v20 = v38[0];
  v38[0] = 0;
  if (v20)
  {
    (*(*v20 + 24))(v20);
  }

  sub_10005D16C(&v41, v38);
  sub_10005D2EC(&v41, v34);
  while (sub_100124F1C(v38, v34))
  {
    v21 = v39;
    if (v40)
    {
      if (v40 != v19)
      {
        break;
      }
    }

    else
    {
      v28[0] = v18;
      v28[1] = v39;
      v29 = 2;
      sub_10006F574(&__p, a1, v28, a3 + 1);
      if (v19)
      {
        if (v33 != v19)
        {
          break;
        }
      }

      else
      {
        v19 = v33;
      }

      v18 = v31;
      if (v31 != v21)
      {
        break;
      }
    }

    sub_1001251AC(v38);
    v18 = v21;
  }

  v22 = v34[0];
  v34[0] = 0;
  if (v22)
  {
    (*(*v22 + 24))(v22);
  }

  v23 = v38[0];
  v38[0] = 0;
  if (v23)
  {
    (*(*v23 + 24))(v23);
  }

  v24 = a2->i64[0];
  if ((a2[1].i8[0] & 2) == 0)
  {
    ++v24;
  }

  a4->i64[0] = v24;
  a4->i64[1] = v18;
  a4[1].i8[0] = 2;
  a4[1].i32[2] = v19;
  sub_10000B95C(v47);
  v26 = v44;
  v44 = 0;
  if (v26)
  {
    (*(*v26 + 40))(v26);
  }

  return result;
}

void sub_10006F970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100007AD4(&a22);
  if (__p)
  {
    operator delete(__p);
  }

  sub_100007AD4(v22 - 176);
  _Unwind_Resume(a1);
}

CFIndex sub_10006FA28@<X0>(CFIndex result@<X0>, CFDictionaryRef *a2@<X8>)
{
  v3 = *(result + 16);
  if (v3 != *(result + 24))
  {
    v4 = result;
    do
    {
      (*(**(v3 + 24) + 112))(*(v3 + 24));
      result = CFDictionaryGetCount(*a2);
      if (result)
      {
        break;
      }

      v3 += 48;
      if (v3 == *(v4 + 24))
      {
        break;
      }

      result = sub_10000C8E0(a2);
    }

    while (v3 != *(v4 + 24));
  }

  return result;
}

uint64_t sub_10006FBCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = v1 + 48;
  do
  {
    LODWORD(result) = (*(**(v3 - 40) + 40))(*(v3 - 40));
    if (*(v3 - 48))
    {
      result = 0;
    }

    else
    {
      result = result;
    }

    if (result)
    {
      break;
    }

    v5 = v3 == v2;
    v3 += 48;
  }

  while (!v5);
  return result;
}

uint64_t sub_10006FD38(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = v1 + 48;
  do
  {
    LODWORD(result) = (*(**(v3 - 40) + 88))(*(v3 - 40));
    if (*(v3 - 48))
    {
      result = 0;
    }

    else
    {
      result = result;
    }

    if (result)
    {
      break;
    }

    v5 = v3 == v2;
    v3 += 48;
  }

  while (!v5);
  return result;
}

uint64_t sub_10006FEC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 208);
  v9 = (*(*a1 + 32))(a1);
  if (v8 > (*(*a1 + 24))(a1) * v9)
  {
    return -5;
  }

  v13[0] = 0;
  v20 = 0;
  v10 = sub_10006E30C(a1, a2, a3, a4, 0, 1, 0, &v12, v13);
  if (v20 == 1)
  {
    if (v19)
    {
      sub_10000367C(v19);
    }

    if (v18)
    {
      sub_10000367C(v18);
    }

    if (v17)
    {
      sub_10000367C(v17);
    }

    if (v16)
    {
      sub_10000367C(v16);
    }

    if (v15)
    {
      sub_10000367C(v15);
    }

    if (v14)
    {
      sub_10000367C(v14);
    }
  }

  return v10;
}

void sub_100070010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10002568C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100070054(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 560);
  result = *(v2 + 160);
  v4 = *(v2 + 168);
  return result;
}

uint64_t sub_100070064(uint64_t a1, uint64_t a2)
{
  result = *(*a2 + 72);
  v3 = *(*a2 + 80);
  return result;
}

uint64_t sub_1000700E4(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_100036CAC();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_100070254(a1, v6);
  }

  v13 = 0;
  v14 = 48 * v2;
  sub_100070210(48 * v2, a2);
  v15 = 48 * v2 + 48;
  v7 = a1[1];
  v8 = 48 * v2 + *a1 - v7;
  sub_1000702AC(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_100070380(&v13);
  return v12;
}

void sub_1000701FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100070380(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100070210(uint64_t result, uint64_t a2)
{
  *result = *a2;
  v2 = *(a2 + 16);
  *(result + 8) = *(a2 + 8);
  *(result + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = *(a2 + 32);
  *(result + 24) = *(a2 + 24);
  *(result + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 40) = *(a2 + 40);
  return result;
}

void sub_100070254(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_100038E68();
}

void sub_1000702AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 8) = *(v6 + 8);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(a4 + 24) = *(v6 + 24);
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(a4 + 40) = *(v6 + 40);
      v6 += 48;
      a4 += 48;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      sub_100070330(v5);
      v5 += 48;
    }
  }
}

void sub_100070330(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_10000367C(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    sub_10000367C(v3);
  }
}

uint64_t sub_100070380(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    sub_100070330(i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1000703D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_10000367C(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    sub_10000367C(v3);
  }

  return a1;
}

uint64_t sub_10007040C(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    sub_100046D1C(a1 + 64);
    v3 = (a1 + 24);
    sub_10000E990(&v3);
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

void sub_10007046C(void ***a1)
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
        sub_100070330(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1000704F0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100070564(result, a4);
  }

  return result;
}

void sub_100070548(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100070564(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_1000705A0(a1, a2);
  }

  sub_100036CAC();
}

void sub_1000705A0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_100038E68();
}

uint64_t sub_1000705E8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  v5 = *(a2 + 1);
  *(a1 + 24) = a2[3];
  *(a1 + 8) = v5;
  v6 = (*(*v4 + 144))(v4);
  *(a1 + 32) = v6;
  *(a1 + 40) = v6;
  *(a1 + 48) = *(a2 + 12);
  *(a1 + 56) = off_100202578;
  *(a1 + 80) = a1 + 56;
  sub_1000706B4((a1 + 56), (a2 + 7));
  return a1;
}

void sub_100070690(_Unwind_Exception *a1)
{
  sub_10000B95C(v2);
  v4 = *(v1 + 32);
  *(v1 + 32) = 0;
  if (v4)
  {
    sub_1001A30E8(v4);
  }

  _Unwind_Resume(a1);
}

void *sub_1000706B4(void *a1, uint64_t a2)
{
  sub_100070728(v4, a2);
  sub_1000707C0(v4, a1);
  sub_10000B95C(v4);
  return a1;
}

uint64_t sub_100070728(uint64_t a1, uint64_t a2)
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

void *sub_1000707C0(void *result, void *a2)
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

void sub_100070A18(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_100002A4C(a1);
}

BOOL sub_100070A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100124E14(v34, a1);
  sub_100124E14(&v39, v34);
  v35 = v39;
  v36 = v40;
  v37 = v41;
  v38 = v42;
  sub_100124E14(v29, a2);
  sub_100124E14(&v39, v29);
  v30 = v39;
  v31 = v40;
  v32 = v41;
  v33 = v42;
  sub_100124E14(v24, a3);
  sub_100124E14(&v39, v24);
  v25 = v39;
  v26 = v40;
  v27 = v41;
  v28 = v42;
  sub_100124E14(v19, a4);
  sub_100124E14(&v39, v19);
  v20 = v39;
  v21 = v40;
  v22 = v41;
  v23 = v42;
  if (sub_100124F1C(&v35, &v30))
  {
    while (sub_100124F1C(&v25, &v20))
    {
      v7 = sub_10000D4E4(&v36, &v26);
      if (DWORD2(v37) != DWORD2(v27) || !v7)
      {
        goto LABEL_10;
      }

      sub_1001251AC(&v35);
      sub_1001251AC(&v25);
      if (!sub_100124F1C(&v35, &v30))
      {
        break;
      }
    }
  }

  if (sub_100124E80(&v35, &v30))
  {
    v9 = sub_100124E80(&v25, &v20);
  }

  else
  {
LABEL_10:
    v9 = 0;
  }

  v10 = v20;
  v20 = 0;
  if (v10)
  {
    (*(*v10 + 24))(v10);
  }

  v11 = v19[0];
  v19[0] = 0;
  if (v11)
  {
    (*(*v11 + 24))(v11);
  }

  v12 = v25;
  v25 = 0;
  if (v12)
  {
    (*(*v12 + 24))(v12);
  }

  v13 = v24[0];
  v24[0] = 0;
  if (v13)
  {
    (*(*v13 + 24))(v13);
  }

  v14 = v30;
  v30 = 0;
  if (v14)
  {
    (*(*v14 + 24))(v14);
  }

  v15 = v29[0];
  v29[0] = 0;
  if (v15)
  {
    (*(*v15 + 24))(v15);
  }

  v16 = v35;
  v35 = 0;
  if (v16)
  {
    (*(*v16 + 24))(v16);
  }

  v17 = v34[0];
  v34[0] = 0;
  if (v17)
  {
    (*(*v17 + 24))(v17);
  }

  return v9;
}

void sub_100070D68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (a27)
  {
    (*(*a27 + 24))(a27);
  }

  if (a21)
  {
    (*(*a21 + 24))(a21);
  }

  if (a39)
  {
    (*(*a39 + 24))(a39);
  }

  if (a33)
  {
    (*(*a33 + 24))(a33);
  }

  v41 = *(v39 - 144);
  *(v39 - 144) = 0;
  if (v41)
  {
    (*(*v41 + 24))(v41);
  }

  v42 = *(v39 - 192);
  *(v39 - 192) = 0;
  if (v42)
  {
    (*(*v42 + 24))(v42);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100070F1C(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = off_10020CA90;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  v6 = a1 + 16;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = a3;
  if (a3 == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = (*(**(*(a2 + 24) - 24) + 104))(*(*(a2 + 24) - 24));
  }

  *(a1 + 44) = v7;
  v8 = *(a2 + 16);
  for (i = *(a2 + 24); v8 != i; v8 += 48)
  {
    if (a3 == 1 && 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 24) - *(a2 + 16)) >> 4) - 1 == (*(a1 + 24) - *(a1 + 16)) >> 4)
    {
      v10 = *(v8 + 24);
      v11 = *(v8 + 32);
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    v12 = (*(**(v8 + 8) + 144))(*(v8 + 8));
    v17 = v12;
    v13 = *(a1 + 24);
    if (v13 >= *(a1 + 32))
    {
      v14 = sub_1000718CC(v6, &v17);
      v15 = v17;
      *(a1 + 24) = v14;
      v17 = 0;
      if (v15)
      {
        (*(*v15 + 40))(v15);
      }
    }

    else
    {
      *v13 = v12;
      if (v12)
      {
        operator new();
      }

      v13[1] = 0;
      *(a1 + 24) = v13 + 2;
    }
  }

  return a1;
}

void sub_100071208(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10007182C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000712C0(uint64_t a1)
{
  *a1 = off_10020CA90;
  v3 = (a1 + 16);
  sub_10007182C(&v3);
  return a1;
}

void sub_100071318(uint64_t a1)
{
  *a1 = off_10020CA90;
  v1 = (a1 + 16);
  sub_10007182C(&v1);
  operator delete();
}

uint64_t sub_100071384(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_100036CAC();
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
    sub_1000715B0(a1, v7);
  }

  v14 = 0;
  v15 = 16 * v2;
  v16 = 16 * v2;
  v17 = 0;
  sub_100071484((16 * v2), a2);
  v8 = 16 * v2 + 16;
  v9 = *(a1 + 8) - *a1;
  v10 = 16 * v2 - v9;
  memcpy((v15 - v9), *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_1000715F8(&v14);
  return v8;
}

void sub_100071470(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000715F8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100071484(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void sub_100071508(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100071540(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

uint64_t sub_100071570(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1000715B0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_100038E68();
}

void **sub_1000715F8(void **a1)
{
  sub_10007162C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10007162C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      sub_10000367C(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

uint64_t sub_100071694(uint64_t a1)
{
  *a1 = off_10020CB48;
  v3 = (a1 + 16);
  sub_100071758(&v3);
  return a1;
}

void sub_1000716EC(uint64_t a1)
{
  *a1 = off_10020CB48;
  v1 = (a1 + 16);
  sub_100071758(&v1);
  operator delete();
}

void sub_100071758(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1000717AC(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1000717AC(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 168)
  {
    v4 = *(i - 8);
    if (v4)
    {
      sub_10000367C(v4);
    }

    v7 = (i - 40);
    sub_10007182C(&v7);
    v5 = *(i - 64);
    if (v5)
    {
      *(i - 56) = v5;
      operator delete(v5);
    }

    v6 = *(i - 72);
    if (v6)
    {
      sub_10000367C(v6);
    }
  }

  a1[1] = v2;
}

void sub_10007182C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100071880(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100071880(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      sub_10000367C(v4);
    }
  }

  a1[1] = v2;
}

uint64_t sub_1000718CC(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_100036CAC();
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
    sub_1000715B0(a1, v7);
  }

  v14 = 0;
  v15 = 16 * v2;
  v16 = 16 * v2;
  v17 = 0;
  sub_1000719CC((16 * v2), a2);
  v8 = 16 * v2 + 16;
  v9 = *(a1 + 8) - *a1;
  v10 = 16 * v2 - v9;
  memcpy((v15 - v9), *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_1000715F8(&v14);
  return v8;
}

void sub_1000719B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000715F8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1000719CC(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void sub_100071A50(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100071A88(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

uint64_t sub_100071AB8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100071AF8(uint64_t *a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X3>, void *a5@<X8>)
{
  v10 = *a1;
  v11 = sub_10005927C(a1, a3);
  if (v11 >= 0x555555555555556)
  {
    sub_100026DEC("get_next_capacity, allocator's max size reached");
  }

  v12 = v11;
  v13 = operator new(24 * v11);
  sub_100071BA8(a1, v13, v12, a2, a3, a4);
  *a5 = a2 + *a1 - v10;
}

void sub_100071BA8(uint64_t a1, __n128 *a2, uint64_t a3, __n128 *a4, uint64_t a5, __n128 *a6)
{
  v10 = *a1;
  sub_100071C7C(a1, *a1, a4, (*a1 + 24 * *(a1 + 8)), a2, a5, a6);
  if (v10)
  {
    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = &v10->n128_u64[1];
      do
      {
        if (*v12)
        {
          sub_10000367C(*v12);
        }

        v12 += 3;
        --v11;
      }

      while (v11);
    }

    if (a1 + 24 != *a1)
    {
      operator delete(*a1);
    }
  }

  v13 = *(a1 + 8) + a5;
  *a1 = a2;
  *(a1 + 8) = v13;
  *(a1 + 16) = a3;
}

void sub_100071C58(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if ((v2 + 24) != v1)
    {
      operator delete(v1);
    }
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_100071C7C(uint64_t a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, uint64_t a6, __n128 *a7)
{
  while (a2 != a3)
  {
    *a5 = *a2;
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a5[1].n128_u64[0] = a2[1].n128_u64[0];
    a2 = (a2 + 24);
    a5 = (a5 + 24);
  }

  result = *a7;
  *a5 = *a7;
  a7->n128_u64[0] = 0;
  a7->n128_u64[1] = 0;
  a5[1].n128_u64[0] = a7[1].n128_u64[0];
  if (a3 != a4)
  {
    v8 = (a5 + 24 * a6);
    do
    {
      result = *a3;
      *v8 = *a3;
      a3->n128_u64[0] = 0;
      a3->n128_u64[1] = 0;
      v8[1].n128_u64[0] = a3[1].n128_u64[0];
      a3 = (a3 + 24);
      v8 = (v8 + 24);
    }

    while (a3 != a4);
  }

  return result;
}

void sub_100071D64(uint64_t a1, uint64_t a2, char *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_10020CC00;
  v4 = *a3;
  *(a1 + 32) = 0;
  *(a1 + 24) = off_100205BA0;
  *(a1 + 40) = a2;
  (*(*a2 + 80))(a2);
  *(a1 + 80) = v4;
  sub_10000961C((a1 + 88));
}

void sub_100071E44(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10020CC00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100071EC0()
{
  v1 = &stru_10020CC60;
  if (atomic_load_explicit(&qword_100240B40, memory_order_acquire) != -1)
  {
    v3 = &v1;
    v2 = &v3;
    std::__call_once(&qword_100240B40, &v2, sub_10007AD94);
  }

  return qword_100240C40;
}

void sub_100071F90(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  std::mutex::lock((a1 + 24));
  v8 = sub_100077FB0(a1, a2);
  if (a1 + 8 == v8)
  {
    std::mutex::unlock((a1 + 24));
    if (a3 && ((os_variant_allows_internal_security_policies() & 1) != 0 || os_variant_is_darwinos()))
    {
      if ((atomic_load_explicit(&qword_100240B60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100240B60))
      {
        sub_100003410(v21, "com.apple.diskimage-test-plugin.raw");
        v21[3] = sub_10009E0D4;
        v21[4] = 0;
        sub_100003410(v22, "com.apple.diskimage-test-plugin.julio");
        v23 = sub_1000759C4;
        v24 = 0;
        sub_100003410(v25, "com.apple.diskimage-plugin.nbd");
        v26 = sub_100075A2C;
        v27 = 0;
        sub_100003410(v28, "com.apple.diskimage-plugin.amber");
        v29 = sub_100075A2C;
        v30 = 16;
        sub_100077A74(&qword_100240B48, v21, 4);
        for (i = 0; i != -160; i -= 40)
        {
          if (v28[i + 23] < 0)
          {
            operator delete(*&v28[i]);
          }
        }

        __cxa_atexit(sub_100075A94, &qword_100240B48, &_mh_execute_header);
        __cxa_guard_release(&qword_100240B60);
      }

      if (sub_100077FB0(&qword_100240B48, a2) != &unk_100240B50)
      {
        v21[0] = a2;
        v9 = sub_100078030(&qword_100240B48, a2);
        v11 = *(v9 + 56);
        v10 = *(v9 + 64);
        if (*(a2 + 23) >= 0)
        {
          v12 = a2;
        }

        else
        {
          v12 = *a2;
        }

        v13 = v11(v10);
        di_plugin_register(v12, v13);
      }

      sub_100071F90(a1, a2, 0);
    }

    else
    {
      *&v19 = "*, diskimage_uio::diskimage_err> PluginsManager::get_plugin_ptr(const std::string &, BOOL)";
      *(&v19 + 1) = 63;
      v20 = 16;
      sub_100068BC4(v21, &v19);
      sub_1000026BC(v31, "Plugin ", 7);
      v14 = *(a2 + 23);
      if (v14 >= 0)
      {
        v15 = a2;
      }

      else
      {
        v15 = *a2;
      }

      if (v14 >= 0)
      {
        v16 = *(a2 + 23);
      }

      else
      {
        v16 = *(a2 + 8);
      }

      sub_1000026BC(v31, v15, v16);
      sub_1000026BC(v31, " is not registered", 18);
      std::ostream::~ostream();
      sub_100068DF8(v21);
      std::ios::~ios();
      v17 = std::generic_category();
      *a4 = 45;
      *(a4 + 8) = v17;
      *(a4 + 16) = 0;
    }
  }

  else
  {
    *a4 = *(v8 + 56);
    *(a4 + 16) = 1;

    std::mutex::unlock((a1 + 24));
  }
}

void sub_1000722F0(_Unwind_Exception *a1)
{
  v3 = (v1 + 143);
  v4 = -160;
  v5 = (v1 + 143);
  while (1)
  {
    v6 = *v5;
    v5 -= 40;
    if (v6 < 0)
    {
      operator delete(*(v3 - 23));
    }

    v3 = v5;
    v4 += 40;
    if (!v4)
    {
      __cxa_guard_abort(&qword_100240B60);
      _Unwind_Resume(a1);
    }
  }
}

unsigned int *sub_100072394(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = *__error();
  if (sub_1000E044C())
  {
    v19[0] = 0;
    v8 = sub_1000E03D8();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    buf = 0x6704100402;
    v9 = "RO";
    v23 = "di_plugin_image_t *PluginsManager::create_plugin_image(const di_plugin_t &, int, const CFDictionaryRef)";
    v22 = 2080;
    if ((a3 & 3) != 0)
    {
      v9 = "RW";
    }

    v24 = 2080;
    v25 = v9;
    v26 = 2112;
    v27 = a4;
    v10 = _os_log_send_and_compose_impl();
    if (v10)
    {
      v11 = v10;
      fprintf(__stderrp, "%s\n", v10);
      free(v11);
    }
  }

  else
  {
    v12 = sub_1000E03D8();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = "RW";
      buf = 0x6704100402;
      v23 = "di_plugin_image_t *PluginsManager::create_plugin_image(const di_plugin_t &, int, const CFDictionaryRef)";
      v22 = 2080;
      if ((a3 & 3) == 0)
      {
        v13 = "RO";
      }

      v24 = 2080;
      v25 = v13;
      v26 = 2112;
      v27 = a4;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%.*s: Creating %s plugin instance with params: %@", &buf, 0x26u);
    }
  }

  *__error() = v7;
  v19[1] = a4;
  v20 = 0;
  LODWORD(v19[0]) = 16;
  HIDWORD(v19[0]) = a3;
  v14 = (*(a2 + 8))(v19, &v20);
  v15 = v14;
  if (v14 && *v14 <= 0x57)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100002148(&buf);
    sub_1000026BC(&buf, "Plugin image struct size ", 25);
    v18 = *v15;
    std::ostream::operator<<();
    sub_1000026BC(&buf, " is incompatible with the framework, expected at least ", 55);
    std::ostream::operator<<();
    sub_100004290(exception, &buf, 0xFFFFFFA9);
  }

  sub_1000726A0(v14, v20);
  return v15;
}

void sub_100072650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::ios::~ios();
  if (v8)
  {
    __cxa_free_exception(v7);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000726A0(uint64_t result, __CFError *a2)
{
  if (!result)
  {
    if (a2)
    {
      v7 = *__error();
      if (sub_1000E044C())
      {
        v8 = sub_1000E03D8();
        os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
        *buf = 68158210;
        v16 = 71;
        v17 = 2080;
        v18 = "di_plugin_image_t *verify_plugin_image(di_plugin_image_t *, CFErrorRef)";
        v19 = 2114;
        v20 = a2;
        v9 = _os_log_send_and_compose_impl();
        if (v9)
        {
          v10 = v9;
          fprintf(__stderrp, "%s\n", v9);
          free(v10);
        }
      }

      else
      {
        v11 = sub_1000E03D8();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 68158210;
          v16 = 71;
          v17 = 2080;
          v18 = "di_plugin_image_t *verify_plugin_image(di_plugin_image_t *, CFErrorRef)";
          v19 = 2114;
          v20 = a2;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%.*s: Failed initializing plugin: %{public}@", buf, 0x1Cu);
        }
      }

      *__error() = v7;
      v12 = a2;
      Code = CFErrorGetCode(a2);
      if (Code < 0)
      {
        v14 = Code;
      }

      else
      {
        v14 = -Code;
      }

      CFRelease(v12);
      exception = __cxa_allocate_exception(0x40uLL);
      v3 = "Plugin initialization failed";
      v4 = v14;
    }

    else
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v3 = "Plugin bug: returned init failure without supplying the error";
      v4 = -14;
    }

LABEL_11:
    v5 = sub_100001860(exception, v3, v4);
  }

  if (!*(result + 8) || !*(result + 16) || !*(result + 24) || (*result < 0x60u || !*(result + 88)) && !*(result + 48) || !*(result + 56) || !*(result + 64))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v3 = "Mandatory callbacks in the plugin's image struct are missing";
    v4 = -22;
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_100072908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *__error();
  if (sub_1000E044C())
  {
    v15 = 0;
    v8 = sub_1000E03D8();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    *buf = 68157954;
    *&buf[4] = 114;
    *&buf[8] = 2080;
    *&buf[10] = "di_plugin_image_t *PluginsManager::decode_plugin_image(const di_plugin_t &, const diskimage_decode_fn_t &, void *)";
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      *&buf[4] = 114;
      *&buf[8] = 2080;
      *&buf[10] = "di_plugin_image_t *PluginsManager::decode_plugin_image(const di_plugin_t &, const diskimage_decode_fn_t &, void *)";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%.*s: Decoding plugin instance", buf, 0x12u);
    }
  }

  *__error() = v7;
  v15 = 0;
  v12 = *(a2 + 16);
  *buf = *a3;
  *&buf[16] = *(a3 + 16);
  v13 = v12(buf, a4, &v15);
  return sub_1000726A0(v13, v15);
}

uint64_t sub_100072ACC(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  if (!a3)
  {
    return 4294967274;
  }

  if (a3[1] != 1)
  {
    *&v15 = "PluginsManager::register_plugin(const string &, di_plugin_t *)";
    *(&v15 + 1) = 31;
    v16 = 16;
    sub_100073010(__p, &v15);
    sub_1000026BC(v18, "Plugin version ", 15);
    v5 = a3[1];
    std::ostream::operator<<();
    sub_1000026BC(v18, " is incompatible with the framework, expected ", 46);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_100078418(__p);
    goto LABEL_6;
  }

  if (*a3 <= 0x27)
  {
    *&v15 = "PluginsManager::register_plugin(const string &, di_plugin_t *)";
    *(&v15 + 1) = 31;
    v16 = 16;
    sub_10007317C(__p, &v15);
    sub_1000026BC(v18, "Plugin struct size ", 19);
    v4 = *a3;
    std::ostream::operator<<();
    sub_1000026BC(v18, " is incompatible with the framework, expected at least ", 55);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_100078BB0(__p);
LABEL_6:
    std::ios::~ios();
    return 4294967209;
  }

  if (!*(a3 + 1) || !*(a3 + 2))
  {
    *&v15 = "PluginsManager::register_plugin(const string &, di_plugin_t *)";
    *(&v15 + 1) = 31;
    v16 = 16;
    sub_1000732E8(__p, &v15);
    sub_1000026BC(v18, "Mandatory callbacks in the plugin's struct are missing", 54);
    std::ostream::~ostream();
    sub_100079348(__p);
    std::ios::~ios();
    return 4294967274;
  }

  std::mutex::lock((a1 + 24));
  if (a1 + 8 == sub_100077FB0(a1, a2))
  {
    if (*(a2 + 23) < 0)
    {
      sub_1000093B4(v13, *a2, *(a2 + 8));
    }

    else
    {
      *v13 = *a2;
      v14 = *(a2 + 16);
    }

    operator new();
  }

  *&v15 = "PluginsManager::register_plugin(const string &, di_plugin_t *)";
  *(&v15 + 1) = 31;
  v16 = 16;
  sub_100073454(__p, &v15);
  sub_1000026BC(v18, "Plugin ", 7);
  v9 = *(a2 + 23);
  if (v9 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  if (v9 >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = *(a2 + 8);
  }

  sub_1000026BC(v18, v10, v11);
  sub_1000026BC(v18, " cannot be re-registered", 24);
  std::ostream::~ostream();
  sub_100079AE0(__p);
  std::ios::~ios();
  v6 = 4294967279;
  std::mutex::unlock((a1 + 24));
  return v6;
}

void sub_100072F08(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  std::__shared_weak_count::~__shared_weak_count(v23);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void sub_100072FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_100010248(va);
  std::mutex::unlock((v6 + 24));
  JUMPOUT(0x100073008);
}

void sub_100072FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100073410(va);
  _Unwind_Resume(a1);
}

void sub_100072FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10007357C(va);
  JUMPOUT(0x100072FD8);
}

void sub_100072FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000732A4(va);
  _Unwind_Resume(a1);
}

void *sub_100073010(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10007ADAC(a1, a2);
  *a1 = off_10020D4A8;
  a1[45] = &off_10020D5A8;
  a1[46] = &off_10020D5D0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020D4A8;
  a1[45] = off_10020D530;
  a1[46] = off_10020D558;
  return a1;
}

void sub_100073114(_Unwind_Exception *a1)
{
  sub_100078418(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100073138(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100078418(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10007317C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10007AE74(a1, a2);
  *a1 = off_10020D6C8;
  a1[45] = &off_10020D7C8;
  a1[46] = &off_10020D7F0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020D6C8;
  a1[45] = off_10020D750;
  a1[46] = off_10020D778;
  return a1;
}

void sub_100073280(_Unwind_Exception *a1)
{
  sub_100078BB0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000732A4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100078BB0(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000732E8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10007AF3C(a1, a2);
  *a1 = off_10020D8E8;
  a1[45] = &off_10020D9E8;
  a1[46] = &off_10020DA10;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020D8E8;
  a1[45] = off_10020D970;
  a1[46] = off_10020D998;
  return a1;
}

void sub_1000733EC(_Unwind_Exception *a1)
{
  sub_100079348(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100073410(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100079348(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100073454(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10007B004(a1, a2);
  *a1 = off_10020DB08;
  a1[45] = &off_10020DC08;
  a1[46] = &off_10020DC30;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020DB08;
  a1[45] = off_10020DB90;
  a1[46] = off_10020DBB8;
  return a1;
}

void sub_100073558(_Unwind_Exception *a1)
{
  sub_100079AE0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10007357C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100079AE0(a1);
  std::ios::~ios();
  return a1;
}

CFStringRef sub_1000735C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100071F90(a1, a2, 1, &v10);
  if (v11 == 1)
  {
    if (*v10 >= 0x30u)
    {
      v5 = *(v10 + 40);
      if (v5)
      {

        return v5(a3);
      }
    }

    v7 = *(v10 + 24);
    if (v7)
    {
      v8 = v7(a3);
      CFRetain(v8);
      return v8;
    }
  }

  if (*(a2 + 23) >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  return CFStringCreateWithCString(0, v9, 0x8000100u);
}

void sub_100073698(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (*(a2 + 23) < 0)
  {
    sub_1000093B4((a1 + 16), *a2, *(a2 + 8));
  }

  else
  {
    v11 = *a2;
    *(a1 + 32) = *(a2 + 16);
    *(a1 + 16) = v11;
  }

  v12 = sub_100071EC0();
  sub_100071F90(v12, a2, 1, v20);
  if (v21)
  {
    v24[0] = off_10020DFF8;
    v24[3] = v24;
    if (a6)
    {
      v13 = sub_100071EC0();
      v14 = sub_100072908(v13, v20[0], a5, a6);
      sub_10007B660(v23, v24);
      sub_10007B6F8(&v19, v14);
    }

    v15 = sub_100071EC0();
    v16 = sub_100072394(v15, v20[0], a4, a3);
    sub_10007B660(v22, v24);
    sub_10007B6F8(&v19, v16);
  }

  exception = __cxa_allocate_exception(0x40uLL);
  v18 = *sub_10005034C(v20);
  *exception = &off_100233158;
  *(exception + 8) = v18;
  exception[24] = 0;
  exception[48] = 0;
  *(exception + 7) = "Failed to get plugin instance";
}

void sub_1000738BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10007B5E0(va);
  sub_10007B5E0(v7 - 88);
  if (*(v6 + 39) < 0)
  {
    operator delete(*(v6 + 16));
  }

  v9 = *(v6 + 8);
  if (v9)
  {
    sub_10000367C(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100073930(uint64_t *a1)
{
  v1 = *a1;
  if (*v1 >= 0x60u && (v2 = *(v1 + 88)) != 0)
  {
    v3 = v2();
  }

  else
  {
    v3 = (*(v1 + 48))();
    CFRetain(v3);
  }

  v6 = v3;
  v4 = *&CFUUIDGetUUIDBytes(v3);
  sub_100023A5C(&v6);
  return v4;
}

void sub_1000739AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100023A5C(va);
  _Unwind_Resume(a1);
}

void sub_1000739C0(uint64_t a1)
{
  v2 = (a1 + 264);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_100073A64;
  v3[3] = &unk_10020CC80;
  v3[4] = a1;
  v4 = v3;
  if (atomic_load_explicit(v2, memory_order_acquire) != -1)
  {
    v6 = &v4;
    v5 = &v6;
    std::__call_once(v2, &v5, sub_10007AD94);
  }
}

uint64_t sub_100073A64(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  v4 = v1;
  v5 = v2;
  return sub_100073AAC(v1 + 56, &v5, sub_100073B08, &v4);
}

uint64_t sub_100073AAC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  if (*(a1 + 200) == 1)
  {
    *(sub_100170D08() + 200) = 0;
  }

  v6 = *a2;
  v7 = *a4;
  result = sub_100170C9C();
  *(result + 200) = 1;
  return result;
}

uint64_t sub_100073B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100170E18(a1 + 56, a2);
  *(a2 + 16) = a3 + 16;
  v6 = io_rings_enter(*(a1 + 104), 1, 0);
  if (v6)
  {
    v7 = v6;
    *&v9 = "DiskImagePlugin::sync_enter_and_wait(io_rings_sqe_t *, Context &)";
    *(&v9 + 1) = 36;
    v10 = 16;
    sub_100073C08(v11, &v9);
    sub_1000026BC(v12, "failed to enter SQE to the ring, ret code ", 42);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_10007A278(v11);
    std::ios::~ios();
  }

  else
  {
    sub_100157F70((a3 + 24), 0xFFFFFFFFFFFFFFFFLL);
    return *(a3 + 16);
  }

  return v7;
}

void sub_100073BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100073D30(va);
  _Unwind_Resume(a1);
}

void *sub_100073C08(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10007BA4C(a1, a2);
  *a1 = off_10020DD28;
  a1[45] = &off_10020DE28;
  a1[46] = &off_10020DE50;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020DD28;
  a1[45] = off_10020DDB0;
  a1[46] = off_10020DDD8;
  return a1;
}

void sub_100073D0C(_Unwind_Exception *a1)
{
  sub_10007A278(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100073D30(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10007A278(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100073D74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_100170D0C((a1 + 7));
  if (!v8)
  {
    return -35;
  }

  v10 = v8;
  __p = 0;
  v45 = 0;
  v46 = 0;
  v11 = *(a4 + 136);
  v39 = a3;
  v12 = *(a3 + 136);
  v38 = (*(*a1 + 24))(a1, v9);
  memset(v43, 0, sizeof(v43));
  (*(*a1 + 80))(v43, a1);
  v13 = *(v39 + 208);
  v14 = (*(a4 + 208) - v13) & ~((*(a4 + 208) - v13) >> 63);
  if (*&v43[0] && (*(v39 + 104) != 1 || !*(v39 + 48)) && v11 - v12 >= *(&v43[0] + 1) * *&v43[0] + (v14 - 1 + *&v43[0]) / *&v43[0] * *&v43[0])
  {
    v15 = *(a1[2] + 32);
    if (v15)
    {
      v16 = v15();
      v17 = v13;
      if (v16)
      {
        v17 = v13 / v16 * v16;
      }
    }

    else
    {
      v17 = *(v39 + 208);
    }

    v14 = (v14 - 1 + v13 - v17 + *&v43[0]) / *&v43[0] * *&v43[0];
    v13 = v17;
  }

  v37 = v13;
  v35 = a4;
  sub_100026714(&v47, v39);
  v36 = v14 / v38;
  while (!sub_100024E30(&v47))
  {
    sub_1000266C4(v49);
    v20 = v49[7];
    v19 = v50;
    if (v50)
    {
      atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
      if (v14 >= v51)
      {
        v21 = v51;
      }

      else
      {
        v21 = v14;
      }

      if (!v21)
      {
        sub_10000367C(v19);
        break;
      }
    }

    else
    {
      if (v14 >= v51)
      {
        v21 = v51;
      }

      else
      {
        v21 = v14;
      }

      if (!v21)
      {
        break;
      }
    }

    v22 = v45;
    if (v45 >= v46)
    {
      v24 = (v45 - __p) >> 4;
      v25 = v24 + 1;
      if ((v24 + 1) >> 60)
      {
        sub_100036CAC();
      }

      v26 = v46 - __p;
      if ((v46 - __p) >> 3 > v25)
      {
        v25 = v26 >> 3;
      }

      if (v26 >= 0x7FFFFFFFFFFFFFF0)
      {
        v27 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v27 = v25;
      }

      if (v27)
      {
        sub_10007A778(&__p, v27);
      }

      v28 = (16 * v24);
      *v28 = v20;
      v28[1] = v21;
      v23 = 16 * v24 + 16;
      v29 = v28 - (v45 - __p);
      memcpy(v29, __p, v45 - __p);
      v30 = __p;
      __p = v29;
      v45 = v23;
      v46 = 0;
      if (v30)
      {
        operator delete(v30);
      }
    }

    else
    {
      *v45 = v20;
      *(v22 + 1) = v21;
      v23 = (v22 + 16);
    }

    v45 = v23;
    if (v19)
    {
      sub_10000367C(v19);
    }

    sub_10006E2C0(&v47, v40);
    if (v42)
    {
      sub_10000367C(v42);
    }

    v14 -= v21;
    if (v41)
    {
      sub_10000367C(v41);
    }
  }

  if (v50)
  {
    sub_10000367C(v50);
  }

  if (v48)
  {
    sub_10000367C(v48);
  }

  v31 = __p;
  *v10 = 2;
  *(v10 + 24) = v31;
  *(v10 + 32) = v37 / v38;
  *(v10 + 40) = 0;
  *(v10 + 48) = v36;
  v32 = sub_100073B10(a1, v10, a2);
  v33 = v32;
  if (v32 == v36)
  {
    sub_100026714(&v47, v39);
    v18 = v38 * v33;
    sub_100024AB4(&v47, v38 * v33);
    if (v50)
    {
      sub_10000367C(v50);
    }

    if (v48)
    {
      sub_10000367C(v48);
    }
  }

  else if (v32 < 0)
  {
    v18 = v32;
  }

  else
  {
    v18 = -5;
  }

  if (*(v39 + 104) == 1 && *(v39 + 48))
  {
    sub_1000742A0(v39, 0, v55);
    sub_100027480(v53, v55);
    v54 = v38;
    sub_10019A650(v52);
    v52[0] = off_1002080A8;
    v52[3] = -1;
    v52[5] = 0;
    v52[4] = 0;
    sub_10007BB14(&v47, v53, v52, v39, v35, 0, 0);
  }

  if (__p)
  {
    v45 = __p;
    operator delete(__p);
  }

  return v18;
}

void sub_1000741F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1000742A0(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = a2 == 0;
  v6 = *(a1 + 48);
  if (v6 == 3)
  {
    sub_10014E08C(v10, a2 == 0, a1 + 56, *(a1 + 88));
    sub_10014E140(a3);
    *(a3 + 144) = 2;
    sub_10014E200(v10);
  }

  else if (v6 == 2)
  {
    sub_10014DCB8(v10, a2 == 0, a1 + 56, a1 + 72, *(a1 + 88));
    sub_10014DDF4(a3);
    *(a3 + 144) = 1;
    v10[0] = off_100228258;
    sub_100027454(&v13);
    v10[0] = off_100204580;
    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }
  }

  else
  {
    sub_10014E4B8(&v9, a1 + 72);
    sub_10014D72C(v10, v5, a1 + 56, &v9, *(a1 + 88));
    sub_10014D880(a3);
    *(a3 + 144) = 0;
    v10[0] = off_100228230;
    sub_1000273B4(v14);
    v7 = v13;
    v13 = 0;
    if (v7)
    {
      operator delete[]();
    }

    v10[0] = off_100204580;
    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }

    v8 = v9;
    v9 = 0;
    if (v8)
    {
      operator delete[]();
    }
  }
}

void sub_1000744A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100027320(va);
  if (a2)
  {
    operator delete[]();
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100074504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = sub_100170D0C(a1 + 56);
  if (!v9)
  {
    return -35;
  }

  v11 = v9;
  __p = 0;
  v67 = 0;
  v68 = 0;
  v12 = (*(*a1 + 24))(a1, v10);
  v13 = v12;
  v14 = *(a3 + 104) != 1 || *(a3 + 48) == 0;
  v43 = a2;
  v42 = v12;
  if (!v14)
  {
    sub_100026714(v69, a3);
    v35 = *(a4 + 208) - *(a3 + 208);
    sub_100024AB4(v69, v35 & ~(v35 >> 63));
    sub_1000742A0(a3, 1, &v97);
    sub_100027480(v108, &v97);
    v109 = v13;
    sub_10019A650(&v83);
    v83 = off_1002080A8;
    v85 = -1;
    v87 = 0;
    v86 = 0;
    sub_10007BB14(v75, v108, &v83, a3, a4, 1, 0);
  }

  sub_100026714(v55, a3);
  sub_100026714(v44, a4);
  sub_100026898(&v97, v55);
  v99 = v57;
  v100 = v58;
  v101 = v59;
  v102 = v60;
  v103 = v61;
  v15 = v62;
  v62 = 0uLL;
  v104 = v15;
  v105 = v63;
  v107 = v65;
  v106 = v64;
  sub_100026898(&v83, v44);
  v16 = 0;
  v88 = v46;
  v89 = v47;
  v90 = v48;
  v91 = v49;
  v92 = v50;
  v17 = v51;
  v51 = 0uLL;
  v93 = v17;
  v94 = v52;
  v18 = v53;
  v96 = v54;
  v95 = v53;
  v75[0] = 0;
  v82 = 0;
  while (!sub_1000242EC(&v97, &v83))
  {
    if (v106 >= v18 || v16 == -1)
    {
      break;
    }

    if (sub_1000E0464())
    {
      *&v72 = "details::for_each_sg_in_vec_internal(Fn &&, sg_vec_ref::iterator, sg_vec::iterator, size_t, BOOL) [Fn = (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/app/disk_images/formats/plugin_async_di.cpp:370:34)]";
      *(&v72 + 1) = 104;
      LODWORD(v73) = 2;
      sub_10002A1D4(v69, &v72);
      sub_1000026BC(v71, "sg: ", 4);
      sub_10019A3A8(v71, &v97);
      std::ostream::~ostream();
      sub_10002A44C(v69);
      std::ios::~ios();
    }

    v69[0] = 0;
    v69[1] = v18;
    v70 = 2;
    sub_10008A3F4(&v97, v69, &v72);
    v20 = v73;
    v21 = v67;
    if (v67 >= v68)
    {
      v23 = (v67 - __p) >> 4;
      v24 = v23 + 1;
      if ((v23 + 1) >> 60)
      {
        sub_100036CAC();
      }

      v25 = v68 - __p;
      if ((v68 - __p) >> 3 > v24)
      {
        v24 = v25 >> 3;
      }

      if (v25 >= 0x7FFFFFFFFFFFFFF0)
      {
        v26 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = v24;
      }

      if (v26)
      {
        sub_10007A778(&__p, v26);
      }

      v27 = (16 * v23);
      *v27 = v72;
      v27[1] = v20;
      v22 = 16 * v23 + 16;
      v28 = (16 * v23 - (v67 - __p));
      memcpy(v28, __p, v67 - __p);
      v29 = __p;
      __p = v28;
      v67 = v22;
      v68 = 0;
      if (v29)
      {
        operator delete(v29);
      }
    }

    else
    {
      *v67 = v72;
      *(v21 + 1) = v20;
      v22 = (v21 + 16);
    }

    v67 = v22;
    if (v73 >= 0)
    {
      v30 = v73;
    }

    else
    {
      v30 = v73;
    }

    v31 = v30 >= 0 || v30 == 0;
    v32 = v31;
    if (v31)
    {
      v33 = v74;
      if (sub_100025604(&v97, &v83, v74, v30))
      {
        sub_100026714(v108, &v97);
        sub_100025558(v108, &v83, v33, v30, 0xFFFFFFFFFFFFFFFFLL, v69);
        sub_10002A340(v75, v69);
        sub_100025620(v69);
        sub_100002440(v108);
        sub_1000246F4(v75, v69);
        sub_100027250(&v97, v69);
        sub_100002440(v69);
        sub_100024448(v75, v69);
        sub_100027250(&v83, v69);
        sub_100002440(v69);
      }

      sub_100024AB4(&v97, v30);
      v16 += v30;
    }

    else if (v73 < 0)
    {
      v4 = v73;
    }

    else
    {
      v4 = -v73;
    }

    if (*(&v72 + 1))
    {
      sub_10000367C(*(&v72 + 1));
    }

    if ((v32 & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  v4 = v16;
LABEL_50:
  if (v82 == 1)
  {
    if (v81)
    {
      sub_10000367C(v81);
    }

    if (v80)
    {
      sub_10000367C(v80);
    }

    if (v79)
    {
      sub_10000367C(v79);
    }

    if (v78)
    {
      sub_10000367C(v78);
    }

    if (v77)
    {
      sub_10000367C(v77);
    }

    if (v76)
    {
      sub_10000367C(v76);
    }
  }

  if (*(&v93 + 1))
  {
    sub_10000367C(*(&v93 + 1));
  }

  if (v84)
  {
    sub_10000367C(v84);
  }

  if (*(&v104 + 1))
  {
    sub_10000367C(*(&v104 + 1));
  }

  if (v98)
  {
    sub_10000367C(v98);
  }

  if (*(&v51 + 1))
  {
    sub_10000367C(*(&v51 + 1));
  }

  if (v45)
  {
    sub_10000367C(v45);
  }

  if (*(&v62 + 1))
  {
    sub_10000367C(*(&v62 + 1));
  }

  if (v56)
  {
    sub_10000367C(v56);
  }

  v36 = __p;
  v37 = *(a3 + 208) / v42;
  *v11 = 4;
  *(v11 + 24) = v36;
  *(v11 + 32) = v37;
  *(v11 + 40) = 0;
  *(v11 + 48) = v4 / v42;
  v38 = sub_100073B10(a1, v11, v43);
  v39 = -5;
  if (v38 < 0)
  {
    v39 = v38;
  }

  if (v38 == (v4 / v42))
  {
    v34 = v42 * v38;
  }

  else
  {
    v34 = v39;
  }

  v40 = *(a3 + 208);
  if (__p)
  {
    v67 = __p;
    operator delete(__p);
  }

  return v34;
}

void sub_100074C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_100002440(&STACK[0x200]);
  if (STACK[0x4D8])
  {
    sub_10000367C(STACK[0x4D8]);
  }

  sub_10002568C(&STACK[0x540]);
  sub_100002440(&STACK[0x8D0]);
  sub_100002440(&STACK[0x9B0]);
  sub_100002440(&a14);
  sub_100002440(&a42);
  if (__p)
  {
    a71 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100074D6C(uint64_t a1, uint64_t a2, int a3)
{
  sub_100170D0C(a1 + 56);
  if (!v6)
  {
    return 4294967261;
  }

  *v6 = 5;
  *(v6 + 24) = a3 + 1;

  return sub_100073B10(a1, v6, a2);
}

uint64_t sub_100074DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v4 = a4;
  for (i = (a3 + 8); ; i += 2)
  {
    sub_100170D0C(a1 + 56);
    if (!v8)
    {
      break;
    }

    v9 = *(i - 1);
    v10 = *i;
    *v8 = 6;
    *(v8 + 24) = v9;
    *(v8 + 32) = v10;
    result = sub_100073B10(a1, v8, a2);
    if (result)
    {
      return result;
    }

    if (!--v4)
    {
      return 0;
    }
  }

  return 4294967261;
}

void sub_100074E80(uint64_t a1)
{
  sub_100170D78(a1 + 56, &v4);
  if (v6)
  {
    v2 = v4;
    v3 = v5;
    do
    {
      *v2 = v3;
      sub_100157F78((v2 + 8));
      sub_100170D78(a1 + 56, &v4);
      v2 = v4;
      v3 = v5;
    }

    while ((v6 & 1) != 0);
  }
}

unint64_t sub_100074EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *__src = 0u;
  memset(v92, 0, 24);
  v89 = 0u;
  memset(v90, 0, sizeof(v90));
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  sub_100026714(v74, a3);
  sub_100026714(v63, a4);
  sub_100026898(&v104, v74);
  v59 = a3;
  v60 = a1;
  v61 = a2;
  v106 = v76;
  v107 = v77;
  v108 = v78;
  v109 = v79;
  v110 = v80;
  v8 = v81;
  v81 = 0uLL;
  v111 = v8;
  v112 = v82;
  v114 = v84;
  v113 = v83;
  sub_100026898(v93, v63);
  v9 = 0;
  v10 = 0;
  v95 = v65;
  v96 = v66;
  v97 = v67;
  v98 = v68;
  v99 = v69;
  v11 = v70;
  v70 = 0uLL;
  v100 = v11;
  v101 = v71;
  v12 = v72;
  v103 = v73;
  v102 = v72;
  LOBYTE(v125[0]) = 0;
  v132 = 0;
  while (!sub_1000242EC(&v104, v93))
  {
    if (v113 >= v12 || v10 == -1)
    {
      break;
    }

    if (sub_1000E0464())
    {
      *&v122 = "details::for_each_sg_in_vec_internal(Fn &&, sg_vec_ref::iterator, sg_vec::iterator, size_t, BOOL) [Fn = (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/app/disk_images/formats/plugin_async_di.cpp:450:45)]";
      *(&v122 + 1) = 104;
      LODWORD(v123) = 2;
      sub_10002A1D4(&v116, &v122);
      sub_1000026BC(v121, "sg: ", 4);
      sub_10019A3A8(v121, &v104);
      std::ostream::~ostream();
      sub_10002A44C(&v116);
      std::ios::~ios();
    }

    v116 = 0;
    v117 = v12;
    LOBYTE(v118) = 2;
    sub_10008A3F4(&v104, &v116, &v122);
    v14 = __src[1];
    if (__src[1] >= *&v92[0])
    {
      v18 = (__src[1] - __src[0]) >> 4;
      v19 = v18 + 1;
      if ((v18 + 1) >> 60)
      {
        sub_100036CAC();
      }

      v20 = *&v92[0] - __src[0];
      if ((*&v92[0] - __src[0]) >> 3 > v19)
      {
        v19 = v20 >> 3;
      }

      if (v20 >= 0x7FFFFFFFFFFFFFF0)
      {
        v21 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v19;
      }

      v120 = __src;
      if (v21)
      {
        sub_10007C890(__src, v21);
      }

      v22 = 16 * v18;
      v23 = *(&v122 + 1);
      *(16 * v18) = v122;
      if (v23)
      {
        atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
      }

      v17 = (v22 + 16);
      v24 = (v22 - (__src[1] - __src[0]));
      memcpy(v24, __src[0], __src[1] - __src[0]);
      v25 = __src[0];
      v26 = *&v92[0];
      __src[0] = v24;
      __src[1] = v17;
      *&v92[0] = 0;
      v118 = v25;
      v119 = v26;
      v117 = v25;
      v116 = v25;
      sub_1000715F8(&v116);
      v15 = v122;
    }

    else
    {
      v15 = v122;
      *__src[1] = v122;
      v16 = *(&v122 + 1);
      v14[1] = *(&v122 + 1);
      if (v16)
      {
        atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
      }

      v17 = v14 + 2;
    }

    __src[1] = v17;
    v27 = v123;
    v28 = *&v90[2];
    if (*&v90[2] >= *(&v90[2] + 1))
    {
      v30 = (*&v90[2] - *(&v90[1] + 1)) >> 4;
      v31 = v30 + 1;
      if ((v30 + 1) >> 60)
      {
        sub_100036CAC();
      }

      v32 = *(&v90[2] + 1) - *(&v90[1] + 1);
      if ((*(&v90[2] + 1) - *(&v90[1] + 1)) >> 3 > v31)
      {
        v31 = v32 >> 3;
      }

      if (v32 >= 0x7FFFFFFFFFFFFFF0)
      {
        v33 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v33 = v31;
      }

      if (v33)
      {
        sub_10007A778(&v90[1] + 8, v33);
      }

      v34 = (16 * v30);
      *v34 = v15;
      v34[1] = v27;
      v29 = 16 * v30 + 16;
      v35 = (16 * v30 - (*&v90[2] - *(&v90[1] + 1)));
      memcpy(v35, *(&v90[1] + 1), *&v90[2] - *(&v90[1] + 1));
      v36 = *(&v90[1] + 1);
      *(&v90[1] + 1) = v35;
      v90[2] = v29;
      if (v36)
      {
        operator delete(v36);
      }
    }

    else
    {
      **&v90[2] = v15;
      *(v28 + 8) = v27;
      v29 = v28 + 16;
    }

    *&v90[2] = v29;
    v37 = v123;
    if (v123 >= 0)
    {
      v38 = v123;
    }

    else
    {
      v38 = v123;
    }

    v39 = v38 >= 0 || v38 == 0;
    v40 = v39;
    if (v39)
    {
      v41 = v124;
      if ((v9 & 1) == 0)
      {
        v9 = 1;
      }

      if (sub_100025604(&v104, v93, v124, v38))
      {
        sub_100026714(v115, &v104);
        sub_100025558(v115, v93, v41, v38, 0xFFFFFFFFFFFFFFFFLL, &v116);
        sub_10002A340(v125, &v116);
        sub_100025620(&v116);
        sub_100002440(v115);
        sub_1000246F4(v125, &v116);
        sub_100027250(&v104, &v116);
        sub_100002440(&v116);
        sub_100024448(v125, &v116);
        sub_100027250(v93, &v116);
        sub_100002440(&v116);
      }

      sub_100024AB4(&v104, v38);
      v10 += v38;
    }

    else
    {
      if (v123 >= 0)
      {
        v37 = -v123;
      }

      v62 = v37;
    }

    if (*(&v122 + 1))
    {
      sub_10000367C(*(&v122 + 1));
    }

    if ((v40 & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  v62 = v10;
LABEL_60:
  if (v132 == 1)
  {
    if (v131)
    {
      sub_10000367C(v131);
    }

    if (v130)
    {
      sub_10000367C(v130);
    }

    if (v129)
    {
      sub_10000367C(v129);
    }

    if (v128)
    {
      sub_10000367C(v128);
    }

    if (v127)
    {
      sub_10000367C(v127);
    }

    if (v126)
    {
      sub_10000367C(v126);
    }
  }

  if (*(&v100 + 1))
  {
    sub_10000367C(*(&v100 + 1));
  }

  if (v94)
  {
    sub_10000367C(v94);
  }

  if (*(&v111 + 1))
  {
    sub_10000367C(*(&v111 + 1));
  }

  if (v105)
  {
    sub_10000367C(v105);
  }

  if (*(&v70 + 1))
  {
    sub_10000367C(*(&v70 + 1));
  }

  if (v64)
  {
    sub_10000367C(v64);
  }

  if (*(&v81 + 1))
  {
    sub_10000367C(*(&v81 + 1));
  }

  if (v75)
  {
    sub_10000367C(v75);
  }

  v42 = (v59 + 48);
  if (*(v59 + 104) == 1 && *(v59 + 48))
  {
    if (*(a2 + 96) == 1)
    {
      v43 = *v42;
      v44 = *(v59 + 64);
      v45 = *(v59 + 80);
      *(a2 + 88) = *(v59 + 96);
      *(a2 + 72) = v45;
      *(a2 + 56) = v44;
      *(a2 + 40) = v43;
    }

    else
    {
      sub_10008A2D0(a2 + 40, v42);
      *(a2 + 96) = 1;
    }
  }

  v46 = *(&v90[1] + 1);
  v47 = *(v59 + 208);
  v48 = (*(*v60 + 24))(v60);
  v49 = (*(*v60 + 24))(v60);
  LOBYTE(v85) = 2;
  *(&v86 + 1) = v46;
  v87 = v47 / v48;
  v50 = v62;
  LODWORD(v88) = v62 / v49;
  v51 = v61[3];
  if (v51 >= v61[4])
  {
    v56 = sub_10007A7C0(v61 + 2, &v85);
    v57 = *&v92[1];
    v61[3] = v56;
    v50 = v62;
    if (v57)
    {
      sub_10000367C(v57);
    }
  }

  else
  {
    v52 = v86;
    *v51 = v85;
    *(v51 + 16) = v52;
    v53 = v87;
    v54 = v88;
    v55 = v89;
    *(v51 + 80) = *&v90[0];
    *(v51 + 48) = v54;
    *(v51 + 64) = v55;
    *(v51 + 32) = v53;
    *(v51 + 88) = *(v90 + 8);
    *&v90[1] = 0;
    *(&v90[0] + 1) = 0;
    *(v51 + 104) = 0;
    *(v51 + 112) = 0;
    *(v51 + 120) = 0;
    *(v51 + 128) = 0;
    *(v51 + 104) = *(&v90[1] + 8);
    *(v51 + 120) = *(&v90[2] + 1);
    memset(&v90[1] + 8, 0, 24);
    *(v51 + 136) = 0;
    *(v51 + 144) = 0;
    *(v51 + 128) = *__src;
    *(v51 + 144) = *&v92[0];
    __src[0] = 0;
    __src[1] = 0;
    *&v92[0] = 0;
    *(v51 + 152) = *(v92 + 8);
    *&v92[1] = 0;
    *(&v92[0] + 1) = 0;
    v61[3] = v51 + 168;
  }

  v125[0] = __src;
  sub_10007182C(v125);
  if (*(&v90[1] + 1))
  {
    *&v90[2] = *(&v90[1] + 1);
    operator delete(*(&v90[1] + 1));
  }

  if (*&v90[1])
  {
    sub_10000367C(*&v90[1]);
  }

  return v50;
}

void sub_100075644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_100002440(&STACK[0x530]);
  if (STACK[0x808])
  {
    sub_10000367C(STACK[0x808]);
  }

  sub_10002568C(&STACK[0x878]);
  sub_100002440(&STACK[0x290]);
  sub_100002440(&STACK[0x370]);
  sub_100002440(&a13);
  sub_100002440(&a41);
  sub_10007AC20(&a69);
  _Unwind_Resume(a1);
}

uint64_t sub_100075720(uint64_t a1)
{
  *a1 = off_10020CCB0;
  if (*(a1 + 256) == 1)
  {
    sub_100170D08(a1 + 56);
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    sub_10000367C(v2);
  }

  return a1;
}

void sub_100075790(uint64_t a1)
{
  *a1 = off_10020CCB0;
  if (*(a1 + 256) == 1)
  {
    sub_100170D08(a1 + 56);
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    sub_10000367C(v2);
  }

  operator delete();
}