uint64_t sub_1000CF688(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100003368(v2, __p);
        sub_1000CF838((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
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

void sub_1000CF7D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000CF800(uint64_t a1)
{
  sub_1000CF51C(a1);

  operator delete();
}

int *sub_1000CF838(uint64_t *a1, uint64_t *a2)
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
    v21 = 511;
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
      v21 = 511;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000CFA1C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000CFCB4(v1);

  return std::ios::~ios();
}

uint64_t sub_1000CFA68(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000CFCB4(v1);

  return std::ios::~ios();
}

void sub_1000CFAC8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000CFCB4(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000CFB30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000CFB6C(_BYTE *a1, int a2)
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

void sub_1000CFBD8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000CFCB4(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000CFC3C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000CFCB4(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000CFCB4(uint64_t a1)
{
  *a1 = off_10021A430;
  sub_1000CFE20(a1);
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

uint64_t sub_1000CFE20(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100003368(v2, __p);
        sub_1000CFFD0((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
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

void sub_1000CFF6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000CFF98(uint64_t a1)
{
  sub_1000CFCB4(a1);

  operator delete();
}

int *sub_1000CFFD0(uint64_t *a1, uint64_t *a2)
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
    v21 = 523;
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
      v21 = 523;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_1000D01B4(void *a1, uint64_t a2)
{
  *a1 = off_10021A4B0;
  a1[1] = a2;
  sub_1000D0468(a1 + 2, 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 720) - *(a2 + 712)) >> 3));
  if (sub_1000E0464())
  {
    *&v4 = "DiskImageSparseBundle::ContextSparseBundle::ContextSparseBundle(DiskImageSparseBundle &)";
    *(&v4 + 1) = 63;
    v5 = 2;
    sub_1000D02C0(v6, &v4);
    sub_1000026BC(v7, "Constructing sb context", 23);
    std::ostream::~ostream();
    sub_1000D05B0(v6);
    std::ios::~ios();
  }

  return a1;
}

void sub_1000D0294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000D03E8(va);
  sub_10007182C(va);
  _Unwind_Resume(a1);
}

void *sub_1000D02C0(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000D04E8(a1, a2);
  *a1 = off_10021A510;
  a1[45] = &off_10021A610;
  a1[46] = &off_10021A638;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021A510;
  a1[45] = off_10021A598;
  a1[46] = off_10021A5C0;
  return a1;
}

void sub_1000D03C4(_Unwind_Exception *a1)
{
  sub_1000D05B0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000D03E8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000D05B0(a1);
  std::ios::~ios();
  return a1;
}

void sub_1000D0430(uint64_t a1)
{
  sub_1000D0D48(a1);

  operator delete();
}

void *sub_1000D0468(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_1000B2A64(result, a2);
  }

  return result;
}

uint64_t sub_1000D04E8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021A6A8;
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

void sub_1000D0598(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D05B0(uint64_t a1)
{
  *a1 = off_10021A6A8;
  sub_1000D09F0(a1);
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

void sub_1000D071C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000D05B0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000D0784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000D07C0(_BYTE *a1, int a2)
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

uint64_t sub_1000D082C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000D05B0(v1);

  return std::ios::~ios();
}

void sub_1000D0878(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000D05B0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000D08DC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000D05B0(v1);

  return std::ios::~ios();
}

void sub_1000D093C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000D05B0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000D09B8(uint64_t a1)
{
  sub_1000D05B0(a1);

  operator delete();
}

uint64_t sub_1000D09F0(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100003368(v2, __p);
        sub_1000D0B64((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
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

void sub_1000D0B3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_1000D0B64(uint64_t *a1, uint64_t *a2)
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
    v21 = 37;
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
      v21 = 37;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000D0D48(uint64_t a1)
{
  *a1 = off_10021A4B0;
  if (sub_1000E0464())
  {
    *&v3 = "DiskImageSparseBundle::ContextSparseBundle::~ContextSparseBundle()";
    *(&v3 + 1) = 64;
    v4 = 2;
    sub_1000D0E14(v5, &v3);
    sub_1000026BC(v6, "Destructing sb context", 22);
    std::ostream::~ostream();
    sub_1000D1048(v5);
    std::ios::~ios();
  }

  v5[0] = (a1 + 16);
  sub_10007182C(v5);
  return a1;
}

void *sub_1000D0E14(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000D0F80(a1, a2);
  *a1 = off_10021A730;
  a1[45] = &off_10021A830;
  a1[46] = &off_10021A858;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021A730;
  a1[45] = off_10021A7B8;
  a1[46] = off_10021A7E0;
  return a1;
}

void sub_1000D0F18(_Unwind_Exception *a1)
{
  sub_1000D1048(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000D0F3C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000D1048(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000D0F80(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021A8C8;
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

void sub_1000D1030(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D1048(uint64_t a1)
{
  *a1 = off_10021A8C8;
  sub_1000D1488(a1);
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

void sub_1000D11B4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000D1048(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000D121C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000D1258(_BYTE *a1, int a2)
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

uint64_t sub_1000D12C4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000D1048(v1);

  return std::ios::~ios();
}

void sub_1000D1310(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000D1048(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000D1374(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000D1048(v1);

  return std::ios::~ios();
}

void sub_1000D13D4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000D1048(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000D1450(uint64_t a1)
{
  sub_1000D1048(a1);

  operator delete();
}

uint64_t sub_1000D1488(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100003368(v2, __p);
        sub_1000D15FC((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
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

void sub_1000D15D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_1000D15FC(uint64_t *a1, uint64_t *a2)
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
    v21 = 41;
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
      v21 = 41;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000D17E0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100216F10;
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

void sub_1000D1890(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D18A8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100217130;
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

void sub_1000D1958(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D1970(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100217350;
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

void sub_1000D1A20(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D1A38(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100217570;
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

void sub_1000D1AE8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D1B00(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100217790;
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

void sub_1000D1BB0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D1BC8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1002179B0;
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

void sub_1000D1C78(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D1C90(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100217BD0;
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

void sub_1000D1D40(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_1000D1D58(void **a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, void *a5@<X8>)
{
  v10 = *a1;
  v11 = sub_1000D1DF8(a1, a3);
  if (v11 >> 59)
  {
    sub_100026DEC("get_next_capacity, allocator's max size reached");
  }

  v12 = v11;
  v13 = operator new(16 * v11);
  sub_1001A384C(a1, v13, v12, a2, a3, a4);
  *a5 = *a1 + a2 - v10;
}

unint64_t sub_1000D1DF8(uint64_t a1, uint64_t a2)
{
  v2 = 0x7FFFFFFFFFFFFFFLL;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x7FFFFFFFFFFFFFFLL - v4 < a2 - v4 + v3)
  {
    sub_100026DEC("get_next_capacity, allocator's max size reached");
  }

  v5 = v4 >> 61;
  v6 = 8 * v4;
  if (v5 > 4)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  v8 = v6 / 5;
  if (v5)
  {
    v8 = v7;
  }

  v9 = v3 + a2;
  if (v8 < 0x7FFFFFFFFFFFFFFLL)
  {
    v2 = v8;
  }

  if (v9 <= v2)
  {
    return v2;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_1000D1E6C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100217DF0;
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

void sub_1000D1F1C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D1F34(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100218010;
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

void sub_1000D1FE4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D1FFC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100218230;
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

void sub_1000D20AC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D20C4(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100218450;
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

void sub_1000D2174(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D218C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100218670;
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

void sub_1000D223C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D2254(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100218890;
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

void sub_1000D2304(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D231C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100218AB0;
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

void sub_1000D23CC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_1000D23E4(uint64_t ***a1)
{
  v1 = **a1;
  v2 = *v1;
  v3 = *(*v1 + 560);
  *(v3 + 160) = sub_10019E294();
  *(v3 + 168) = v4;
  sub_10007DF9C(*(v2 + 560));
}

void sub_1000D2430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  if (a2 == 1)
  {
    v58 = __cxa_begin_catch(exception_object);
    *&a9 = "DiskImageSparseBundle::void_stackable_identifier()::(anonymous class)::operator()() const";
    *(&a9 + 1) = 81;
    a10 = 16;
    sub_1000D24C8(&a12, &a9);
    sub_10019E1D0(&a57, v58);
    sub_1000D25F0(&a12);
    v59 = v58[2];
    if (v59 >= 0)
    {
      v59 = -v59;
    }

    **(v57 + 8) = v59;
    __cxa_end_catch();
    JUMPOUT(0x1000D241CLL);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000D24C8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000D2634(a1, a2);
  *a1 = off_10021A950;
  a1[45] = &off_10021AA50;
  a1[46] = &off_10021AA78;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021A950;
  a1[45] = off_10021A9D8;
  a1[46] = off_10021AA00;
  return a1;
}

void sub_1000D25CC(_Unwind_Exception *a1)
{
  sub_1000D26FC(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000D25F0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000D26FC(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000D2634(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021AAE8;
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

void sub_1000D26E4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D26FC(uint64_t a1)
{
  *a1 = off_10021AAE8;
  sub_1000D2B3C(a1);
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

void sub_1000D2868(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000D26FC(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000D28D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000D290C(_BYTE *a1, int a2)
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

uint64_t sub_1000D2978(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000D26FC(v1);

  return std::ios::~ios();
}

void sub_1000D29C4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000D26FC(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000D2A28(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000D26FC(v1);

  return std::ios::~ios();
}

void sub_1000D2A88(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000D26FC(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000D2B04(uint64_t a1)
{
  sub_1000D26FC(a1);

  operator delete();
}

uint64_t sub_1000D2B3C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100003368(v2, __p);
        sub_1000D2CB0((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
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

void sub_1000D2C88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_1000D2CB0(uint64_t *a1, uint64_t *a2)
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
    v21 = 307;
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
      v21 = 307;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000D2E94(void *a1)
{
  v1 = qword_10023FE58;
  v2 = a1 + 1;
  v3 = *a1;
  if (*a1 != a1 + 1)
  {
    do
    {
      v4 = sub_100009458((v3 + 4));
      v5 = v3[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v3[2];
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v1 += v4;
      v3 = v6;
    }

    while (v6 != v2);
  }

  return v1;
}

uint64_t sub_1000D2F18(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100218EF0;
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

void sub_1000D2FC8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D2FE0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100219110;
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

void sub_1000D3090(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D30A8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100219330;
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

void sub_1000D3158(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D3170(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100219550;
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

void sub_1000D3220(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D3238(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100219770;
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

void sub_1000D32E8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void *sub_1000D3300(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1000D3358(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1000D3358(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_10000D818(v5, (v5 + 8), (v4 + 4));
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

uint64_t sub_1000D33E0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100219990;
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

void sub_1000D3490(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D34A8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100219BB0;
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

void sub_1000D3558(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D3570(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100219DD0;
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

void sub_1000D3620(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D3638(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100219FF0;
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

void sub_1000D36E8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D3700(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021A210;
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

void sub_1000D37B0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D37C8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021A430;
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

void sub_1000D3878(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_1000D3BD4(_Unwind_Exception *a1, int a2)
{
  v6 = v5;

  if (a2 == 1)
  {
    v9 = [DIError errorWithDIException:__cxa_begin_catch(a1) description:0 prefix:0 error:0];
    v10 = v3[6];
    v3[6] = v9;

    __cxa_end_catch();
    JUMPOUT(0x1000D3BB4);
  }

  _Unwind_Resume(a1);
}

void sub_1000D41D4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    v7 = [objc_begin_catch(a1) reason];
    [DIError failWithEnumValue:150 verboseInfo:v7 error:v2];

    objc_end_catch();
    JUMPOUT(0x1000D4194);
  }

  _Unwind_Resume(a1);
}

void sub_1000D49CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, uint8_t buf, int a14, __int16 a15, uint64_t a16, __int16 a17, uint64_t a18, __int16 a19, uint64_t a20, __int16 a21, int a22)
{
  if (a2 == 1)
  {
    [DIError failWithDIException:__cxa_begin_catch(a1) prefix:@"Failed opening the shadow/cache file(s)" error:v23];
    __cxa_end_catch();
    JUMPOUT(0x1000D4988);
  }

  _Unwind_Resume(a1);
}

void sub_1000D4FE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (v12)
  {
    sub_10000367C(v12);
  }

  if (a12)
  {
    sub_10000367C(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D51E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = DIBaseParams;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1000D63AC(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = v5;
  v7 = 514;
  if (*(a1 + 40) == 1)
  {
    if (*(a1 + 41))
    {
      v7 = 514;
    }

    else
    {
      v7 = 2562;
    }
  }

  if ([v5 isCache])
  {
    [v6 createBackendWithFlags:v7];
    v8 = *__error();
    if (sub_1000E044C())
    {
      v9 = sub_1000E03D8();
      os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      v10 = [v6 URL];
      [v10 path];
      *buf = 68158211;
      v29 = 61;
      v30 = 2080;
      v31 = "[DIShadowChain openWritable:createNonExisting:]_block_invoke";
      v33 = v32 = 2113;
      v11 = _os_log_send_and_compose_impl();

      if (v11)
      {
        fprintf(__stderrp, "%s\n", v11);
        free(v11);
      }
    }

    else
    {
      v17 = sub_1000E03D8();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v6 URL];
        v19 = [v18 path];
        *buf = 68158211;
        v29 = 61;
        v30 = 2080;
        v31 = "[DIShadowChain openWritable:createNonExisting:]_block_invoke";
        v32 = 2113;
        v33 = v19;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%.*s: Cache file %{private}@ opened with RW access", buf, 0x1Cu);
      }
    }

    goto LABEL_33;
  }

  if (*(a1 + 40) == 1)
  {
    v12 = [*(a1 + 32) nodes];
    if ([v12 count] - 1 == a3)
    {
      v13 = v7;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  [v6 createBackendWithFlags:v13];
  if ((v13 & 3) != 0)
  {
    v8 = *__error();
    if (sub_1000E044C())
    {
      v14 = sub_1000E03D8();
      os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      v15 = [v6 URL];
      [v15 path];
      *buf = 68158211;
      v29 = 61;
      v30 = 2080;
      v31 = "[DIShadowChain openWritable:createNonExisting:]_block_invoke";
      v33 = v32 = 2113;
      v16 = _os_log_send_and_compose_impl();

      if (!v16)
      {
        goto LABEL_33;
      }

      goto LABEL_25;
    }

    v22 = sub_1000E03D8();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v6 URL];
      v24 = [v23 path];
      *buf = 68158211;
      v29 = 61;
      v30 = 2080;
      v31 = "[DIShadowChain openWritable:createNonExisting:]_block_invoke";
      v32 = 2113;
      v33 = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%.*s: Shadow file %{private}@ opened with RW access", buf, 0x1Cu);
    }
  }

  else
  {
    v8 = *__error();
    if (sub_1000E044C())
    {
      v20 = sub_1000E03D8();
      os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      v21 = [v6 URL];
      [v21 path];
      *buf = 68158211;
      v29 = 61;
      v30 = 2080;
      v31 = "[DIShadowChain openWritable:createNonExisting:]_block_invoke";
      v33 = v32 = 2113;
      v16 = _os_log_send_and_compose_impl();

      if (!v16)
      {
        goto LABEL_33;
      }

LABEL_25:
      fprintf(__stderrp, "%s\n", v16);
      free(v16);
      goto LABEL_33;
    }

    v25 = sub_1000E03D8();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [v6 URL];
      v27 = [v26 path];
      *buf = 68158211;
      v29 = 61;
      v30 = 2080;
      v31 = "[DIShadowChain openWritable:createNonExisting:]_block_invoke";
      v32 = 2113;
      v33 = v27;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%.*s: Using an existing shadow file: %{private}@", buf, 0x1Cu);
    }
  }

LABEL_33:
  *__error() = v8;
}

void sub_1000D78A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  if (a19 == 1)
  {
    diskimage_uio::diskimage_open_params::~diskimage_open_params(&a17);
  }

  if (v20)
  {
    sub_10000367C(v20);
  }

  _Unwind_Resume(a1);
}

void sub_1000D7A84(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1000D7D38(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10021ABD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1000D7DB4(void *a1)
{
  *a1 = off_1002064C0;
  v2 = a1[4];
  if (v2)
  {
    sub_10000367C(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_1000D7E0C(void *a1)
{
  *a1 = off_1002064C0;
  v2 = a1[4];
  if (v2)
  {
    sub_10000367C(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

void sub_1000D8758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    operator delete();
  }

  _Unwind_Resume(a1);
}

void sub_1000D879C(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1;
  v6 = 0;
  if ([v3 decodeBytesForKey:@"crypto_header" returnedLength:&v6])
  {
    if (v6 == 76)
    {
      operator new();
    }

    exception = __cxa_allocate_exception(0x40uLL);
    sub_100002148(v5);
    sub_1000026BC(v5, "Unexpected crypto header length (", 33);
    std::ostream::operator<<();
    sub_1000026BC(v5, ")", 1);
    sub_100004290(exception, v5, 0x9Au);
  }

  *a2 = 0;
}

void sub_1000D88D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::ios::~ios();
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

void sub_1000D8A4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_10000367C(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D8CD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, char a13)
{
  if (a10)
  {
    operator delete();
  }

  if (v13)
  {
    sub_10000367C(v13);
  }

  if (a13 == 1)
  {
    if (a12)
    {
      sub_10000367C(a12);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D8DB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000367C(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D94F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_10000367C(a14);
  }

  if (a12)
  {
    sub_10000367C(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1000D95F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_10000367C(a10);
  }

  if (a12)
  {
    sub_10000367C(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1000D9628(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  lpsrc[0] = *a1;
  lpsrc[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  while (1)
  {
    v4 = lpsrc[0];
    if (lpsrc[0])
    {
      v5 = **lpsrc[0];
      if (v6)
      {
        break;
      }
    }

    *a2 = 0;
    a2[1] = 0;
    v7 = lpsrc[1];
    if (lpsrc[1])
    {
      atomic_fetch_add_explicit(lpsrc[1] + 1, 1uLL, memory_order_relaxed);
    }

    if (v3)
    {
      sub_10000367C(v3);
    }

    sub_10019AD28(lpsrc, &v12);
    v8 = v12;
    v12 = 0uLL;
    v9 = lpsrc[1];
    *lpsrc = v8;
    if (v9)
    {
      sub_10000367C(v9);
      v10 = lpsrc[0];
      if (*(&v12 + 1))
      {
        sub_10000367C(*(&v12 + 1));
      }

      v3 = v7;
      if (v10 == v4)
      {
LABEL_15:
        *a2 = 0;
        a2[1] = 0;
        if (!v7)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v3 = v7;
      if (v8 == v4)
      {
        goto LABEL_15;
      }
    }
  }

  v11 = lpsrc[1];
  *a2 = v6;
  a2[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  v7 = v3;
  if (v3)
  {
LABEL_16:
    sub_10000367C(v7);
  }

LABEL_17:
  if (lpsrc[1])
  {
    sub_10000367C(lpsrc[1]);
  }
}

void sub_1000D9790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (v12)
  {
    sub_10000367C(v12);
  }

  if (a12)
  {
    sub_10000367C(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D98C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_10000367C(a12);
  }

  if (a10)
  {
    sub_10000367C(a10);
  }

  _Unwind_Resume(a1);
}

void sub_1000D9A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_10000367C(a14);
  }

  _Unwind_Resume(a1);
}

void sub_1000D9CE0(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1;
  v13 = 0;
  v12 = 0;
  v4 = [v3 decodeBytesForKey:@"encKeys" returnedLength:&v13];
  v5 = [v3 decodeBytesForKey:@"secondaryKey" returnedLength:&v12];
  if (v4)
  {
    v6 = v5;
    if (v5)
    {
      __p = 0;
      __dst = 0;
      v11 = 0;
      sub_100065CC8(&__p, v12 + v13);
      sub_1000DD9CC(&__p, v4, &v4[v13], v13);
      sub_1000DDB00(&__p, __dst, v6, &v6[v12], v12);
      v7[0] = __p;
      v7[1] = __dst - __p;
      sub_10017F8D0(v8, v7, 1, 8 * v13, 8 * v12);
      sub_100069708();
    }
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_1000D9E1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  sub_100036760(&a10);
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1000DA014(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_10000367C(v2);
  }

  _Unwind_Resume(a1);
}

void sub_1000DA06C(void *a1, void *a2)
{
  v3 = a1;
  [v3 encodeBytes:*a2 length:76 forKey:@"crypto_header"];
  [v3 encodeBytes:a2[2] length:a2[3] - a2[2] forKey:@"encKeys"];
  [v3 encodeBytes:a2[5] length:a2[6] - a2[5] forKey:@"secondaryKey"];
}

void sub_1000DA1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_10000367C(a14);
  }

  if (a12)
  {
    sub_10000367C(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1000DA2D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_10000367C(a14);
  }

  if (a12)
  {
    sub_10000367C(a12);
  }

  _Unwind_Resume(a1);
}

void *sub_1000DA414(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000DEC60(a1, a2);
  *a1 = off_10021AD40;
  a1[45] = &off_10021AE40;
  a1[46] = &off_10021AE68;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021AD40;
  a1[45] = off_10021ADC8;
  a1[46] = off_10021ADF0;
  return a1;
}

void sub_1000DA518(_Unwind_Exception *a1)
{
  sub_1000DDFC0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000DA53C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000DDFC0(a1);
  std::ios::~ios();
  return a1;
}

void sub_1000DA65C(_Unwind_Exception *a1)
{
  if (v3)
  {
    sub_10000367C(v3);
  }

  if (v2)
  {
    sub_10000367C(v2);
  }

  _Unwind_Resume(a1);
}

void sub_1000DA7C8(_Unwind_Exception *a1, int a2)
{
  v7 = v5;
  if (v7)
  {
    sub_10000367C(v7);
  }

  if (v4)
  {
    sub_10000367C(v4);
  }

  if (a2 == 1)
  {
    [DIError nilWithDIException:__cxa_begin_catch(a1) prefix:@"Error creating crypto format" error:v2];
    objc_claimAutoreleasedReturnValue();
    __cxa_end_catch();
    JUMPOUT(0x1000DA7ACLL);
  }

  _Unwind_Resume(a1);
}

void sub_1000DAA64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_10000367C(a12);
  }

  if (a10)
  {
    sub_10000367C(a10);
  }

  _Unwind_Resume(a1);
}

void sub_1000DAF90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_10000367C(a12);
  }

  if (a10)
  {
    sub_10000367C(a10);
  }

  _Unwind_Resume(a1);
}

void sub_1000DB0B4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1000DB54C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    sub_10000367C(a17);
  }

  _Unwind_Resume(a1);
}

void sub_1000DB670(_Unwind_Exception *a1)
{
  v4 = v3;

  if (v2)
  {
    sub_10000367C(v2);
  }

  _Unwind_Resume(a1);
}

void sub_1000DB750(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_10000367C(v2);
  }

  _Unwind_Resume(a1);
}

void sub_1000DC140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_10000367C(a16);
  }

  if (a14)
  {
    sub_10000367C(a14);
  }

  if (a12)
  {
    sub_10000367C(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1000DC398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14)
  {
    sub_10000367C(a14);
  }

  if (a12)
  {
    sub_10000367C(a12);
  }

  if (a16)
  {
    sub_10000367C(a16);
  }

  _Unwind_Resume(a1);
}

void sub_1000DC718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a12)
  {
    sub_10000367C(a12);
  }

  if (a10)
  {
    sub_10000367C(a10);
  }

  if (a16)
  {
    sub_10000367C(a16);
  }

  _Unwind_Resume(a1);
}

void sub_1000DC968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a16)
  {
    sub_10000367C(a16);
  }

  if (a14)
  {
    sub_10000367C(a14);
  }

  if (a22)
  {
    sub_10000367C(a22);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000DC9E4(void *a1, uint64_t a2, void *a3)
{
  if (a1 && a2 && a3)
  {
    v5 = a1;
    v6 = [NSString stringWithUTF8String:a2];
    v7 = [v5 objectForKeyedSubscript:v6];
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 length])
      {
        v8 = malloc_type_malloc([v7 length], 0x33C27994uLL);
        *a3 = v8;
        if (v8)
        {
          memcpy(v8, [v7 bytes], objc_msgSend(v7, "length"));
          v9 = [v7 length];
        }

        else
        {
          v19 = *__error();
          if (sub_1000E044C())
          {
            v20 = sub_1000E03D8();
            os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
            *buf = 68158466;
            *&buf[4] = 59;
            v24 = 2080;
            v25 = "ssize_t plugin_decode_buffer(void *, const char *, void **)";
            v26 = 2048;
            v27 = [v7 length];
            v28 = 2112;
            v29 = v6;
            v21 = _os_log_send_and_compose_impl();

            if (v21)
            {
              fprintf(__stderrp, "%s\n", v21);
              free(v21);
            }
          }

          else
          {
            v22 = sub_1000E03D8();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 68158466;
              *&buf[4] = 59;
              v24 = 2080;
              v25 = "ssize_t plugin_decode_buffer(void *, const char *, void **)";
              v26 = 2048;
              v27 = [v7 length];
              v28 = 2112;
              v29 = v6;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%.*s: Out of memory, failed to allocated %zu bytes for key %@", buf, 0x26u);
            }
          }

          *__error() = v19;
          v9 = -12;
        }
      }

      else
      {
        v14 = *__error();
        if (sub_1000E044C())
        {
          v15 = sub_1000E03D8();
          os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
          *buf = 0x3B04100302;
          v24 = 2080;
          v25 = "ssize_t plugin_decode_buffer(void *, const char *, void **)";
          v26 = 2112;
          v27 = v6;
          v16 = _os_log_send_and_compose_impl();

          if (v16)
          {
            fprintf(__stderrp, "%s\n", v16);
            free(v16);
          }
        }

        else
        {
          v17 = sub_1000E03D8();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 0x3B04100302;
            v24 = 2080;
            v25 = "ssize_t plugin_decode_buffer(void *, const char *, void **)";
            v26 = 2112;
            v27 = v6;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%.*s: Invalid key: %@", buf, 0x1Cu);
          }
        }

        *__error() = v14;
        v9 = -22;
      }
    }

    else
    {
      v9 = -2;
    }
  }

  else
  {
    v10 = *__error();
    if (sub_1000E044C())
    {
      v11 = sub_1000E03D8();
      os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
      *buf = 68157954;
      *&buf[4] = 59;
      v24 = 2080;
      v25 = "ssize_t plugin_decode_buffer(void *, const char *, void **)";
      v12 = _os_log_send_and_compose_impl();

      if (v12)
      {
        fprintf(__stderrp, "%s\n", v12);
        free(v12);
      }
    }

    else
    {
      v13 = sub_1000E03D8();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 68157954;
        *&buf[4] = 59;
        v24 = 2080;
        v25 = "ssize_t plugin_decode_buffer(void *, const char *, void **)";
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%.*s: Missing parameters", buf, 0x12u);
      }
    }

    *__error() = v10;
    return -22;
  }

  return v9;
}

void sub_1000DCF3C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t sub_1000DCF98(void *a1, uint64_t a2)
{
  if (a1 && a2)
  {
    v3 = a1;
    v4 = [NSString stringWithUTF8String:a2];
    v5 = [v3 objectForKeyedSubscript:v4];
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = dup([v5 fileDescriptor]);
        if ((v6 & 0x80000000) != 0)
        {
          v6 = -*__error();
        }
      }

      else
      {
        v11 = *__error();
        if (sub_1000E044C())
        {
          v12 = sub_1000E03D8();
          os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
          *buf = 68158210;
          *&buf[4] = 42;
          v17 = 2080;
          v18 = "int plugin_decode_fd(void *, const char *)";
          v19 = 2112;
          v20 = v4;
          v13 = _os_log_send_and_compose_impl();

          if (v13)
          {
            fprintf(__stderrp, "%s\n", v13);
            free(v13);
          }
        }

        else
        {
          v14 = sub_1000E03D8();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 0x2A04100302;
            v17 = 2080;
            v18 = "int plugin_decode_fd(void *, const char *)";
            v19 = 2112;
            v20 = v4;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%.*s: Invalid key: %@", buf, 0x1Cu);
          }
        }

        *__error() = v11;
        v6 = 4294967274;
      }
    }

    else
    {
      v6 = 4294967294;
    }
  }

  else
  {
    v7 = *__error();
    if (sub_1000E044C())
    {
      v8 = sub_1000E03D8();
      os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
      *buf = 68157954;
      *&buf[4] = 42;
      v17 = 2080;
      v18 = "int plugin_decode_fd(void *, const char *)";
      v9 = _os_log_send_and_compose_impl();

      if (v9)
      {
        fprintf(__stderrp, "%s\n", v9);
        free(v9);
      }
    }

    else
    {
      v10 = sub_1000E03D8();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 68157954;
        *&buf[4] = 42;
        v17 = 2080;
        v18 = "int plugin_decode_fd(void *, const char *)";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%.*s: Missing parameters", buf, 0x12u);
      }
    }

    *__error() = v7;
    return 4294967274;
  }

  return v6;
}

void sub_1000DD480(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 && a2 && a3 && a4)
  {
    v13 = a1;
    v7 = [NSString stringWithUTF8String:a2];
    v8 = [NSData dataWithBytes:a3 length:a4];
    [v13 setObject:v8 forKeyedSubscript:v7];
  }

  else
  {
    v9 = *__error();
    if (sub_1000E044C())
    {
      v10 = sub_1000E03D8();
      os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
      *buf = 68157954;
      v15 = 69;
      v16 = 2080;
      v17 = "void plugin_encode_buffer(void *, const char *, const void *, size_t)";
      v11 = _os_log_send_and_compose_impl();

      if (v11)
      {
        fprintf(__stderrp, "%s\n", v11);
        free(v11);
      }
    }

    else
    {
      v12 = sub_1000E03D8();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 68157954;
        v15 = 69;
        v16 = 2080;
        v17 = "void plugin_encode_buffer(void *, const char *, const void *, size_t)";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%.*s: Missing parameters", buf, 0x12u);
      }
    }

    *__error() = v9;
  }
}

void sub_1000DD6F4(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2 && (a3 & 0x80000000) == 0)
  {
    v11 = a1;
    v5 = [NSString stringWithUTF8String:a2];
    v6 = [[NSFileHandle alloc] initWithFileDescriptor:a3];
    [v11 setObject:v6 forKeyedSubscript:v5];
  }

  else
  {
    v7 = *__error();
    if (sub_1000E044C())
    {
      v8 = sub_1000E03D8();
      os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
      *buf = 68157954;
      v13 = 48;
      v14 = 2080;
      v15 = "void plugin_encode_fd(void *, const char *, int)";
      v9 = _os_log_send_and_compose_impl();

      if (v9)
      {
        fprintf(__stderrp, "%s\n", v9);
        free(v9);
      }
    }

    else
    {
      v10 = sub_1000E03D8();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 68157954;
        v13 = 48;
        v14 = 2080;
        v15 = "void plugin_encode_fd(void *, const char *, int)";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%.*s: Missing parameters", buf, 0x12u);
      }
    }

    *__error() = v7;
  }
}

void sub_1000DD928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void *sub_1000DD9CC(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (v8 - *result < a4)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      v10 = 2 * v8;
      if (2 * v8 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_100036C5C(v7, v11);
    }

    sub_100036CAC();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (v12 - v9 >= a4)
  {
    v19 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v19);
    }

    v18 = &v9[v19];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = v12;
    if (&__src[v13] != a3)
    {
      v15 = v12;
      v16 = v12;
      do
      {
        v17 = *v14++;
        *v16++ = v17;
        ++v15;
      }

      while (v14 != a3);
    }

    v18 = v15;
  }

  v7[1] = v18;
  return result;
}

char *sub_1000DDB00(uint64_t a1, char *__dst, _BYTE *__src, char *a4, int64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 >= a5)
  {
    v16 = v10 - __dst;
    if (v10 - __dst >= a5)
    {
      v21 = &__dst[a5];
      v22 = &v10[-a5];
      v23 = *(a1 + 8);
      if (v10 >= a5)
      {
        do
        {
          v24 = *v22++;
          *v23++ = v24;
        }

        while (v22 != v10);
      }

      *(a1 + 8) = v23;
      if (v10 != v21)
      {
        memmove(&__dst[a5], __dst, v10 - v21);
      }

      v25 = v5;
      v26 = __src;
      v27 = a5;
    }

    else
    {
      v17 = &__src[v16];
      if (&__src[v16] == a4)
      {
        v18 = *(a1 + 8);
        v19 = v18;
      }

      else
      {
        v18 = &a4[__dst] - __src;
        v19 = *(a1 + 8);
        do
        {
          v20 = *v17++;
          *v19++ = v20;
        }

        while (v17 != a4);
      }

      *(a1 + 8) = v18;
      if (v16 < 1)
      {
        return v5;
      }

      v32 = &__dst[a5];
      v33 = (v18 - a5);
      v34 = v18;
      if (v18 - a5 < v10)
      {
        do
        {
          v35 = *v33++;
          *v34++ = v35;
        }

        while (v33 != v10);
      }

      *(a1 + 8) = v34;
      if (v19 != v32)
      {
        memmove(&__dst[a5], __dst, v18 - v32);
      }

      v25 = v5;
      v26 = __src;
      v27 = v10 - v5;
    }

    memmove(v25, v26, v27);
    return v5;
  }

  v11 = *a1;
  v12 = &v10[a5 - *a1];
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

  v28 = (__dst - v11);
  memcpy(v13, __src, a5);
  v29 = &v13[a5];
  v30 = v10 - v5;
  memcpy(v29, v5, v10 - v5);
  *(a1 + 8) = v5;
  v31 = &v13[v11 - v5];
  memcpy(v31, v11, v28);
  *a1 = v31;
  *(a1 + 8) = &v29[v30];
  *(a1 + 16) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v13;
}

uint64_t sub_1000DDD28(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000DDFC0(v1);

  return std::ios::~ios();
}

uint64_t sub_1000DDD74(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000DDFC0(v1);

  return std::ios::~ios();
}

void sub_1000DDDD4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000DDFC0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000DDE3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000DDE78(_BYTE *a1, int a2)
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

void sub_1000DDEE4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000DDFC0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000DDF48(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000DDFC0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000DDFC0(uint64_t a1)
{
  *a1 = off_10021AED8;
  sub_1000DE12C(a1);
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

uint64_t sub_1000DE12C(uint64_t a1)
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
        sub_1000DE2DC((a1 + 72), __p);
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

void sub_1000DE278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000DE2A4(uint64_t a1)
{
  sub_1000DDFC0(a1);

  operator delete();
}

int *sub_1000DE2DC(uint64_t *a1, uint64_t *a2)
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
    v16 = v4;
    v17 = 2080;
    v18 = v7;
    v19 = 2048;
    v20 = 336;
    v21 = 2082;
    v22 = v8;
    v9 = _os_log_send_and_compose_impl();

    if (v9)
    {
      fprintf(__stderrp, "%s\n", v9);
      free(v9);
    }
  }

  else
  {
    v10 = sub_1000E03D8();
    v11 = *(a1 + 4);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      *buf = 68158466;
      v16 = v4;
      v17 = 2080;
      v18 = v12;
      v19 = 2048;
      v20 = 336;
      v21 = 2082;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v10, v11, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void sub_1000DE55C(void *a1, char **a2, _DWORD *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10020A1C0;
  sub_1000DE5B8(a1 + 3, a2, a3);
}

void sub_1000DE5B8(void *a1, char **a2, _DWORD *a3)
{
  sub_100003410(__p, *a2);
  LODWORD(a3) = *a3;
  v5 = sub_100158764(__p, a3);
  sub_10004D9A0(a1, v5, (a3 & 3) != 0);
}

void sub_1000DE62C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000DE6E4(void *a1, unsigned int *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10020A1C0;
  v4 = *a4;
  sub_10004D9A0(a1 + 3, *a2, *a3);
}

void *sub_1000DE7F0(void *a1, unsigned int *a2, unsigned __int8 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10021AF58;
  sub_10007DE2C(a1 + 3, *a2, *a3);
  return a1;
}

void sub_1000DE874(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10021AF58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1000DE98C(void *a1, char **a2, _DWORD *a3, unint64_t *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10021AF58;
  sub_1000DE9E8((a1 + 3), a2, a3, a4);
  return a1;
}

uint64_t sub_1000DE9E8(uint64_t a1, char **a2, _DWORD *a3, unint64_t *a4)
{
  sub_100003410(__p, *a2);
  LODWORD(a3) = *a3;
  v7 = *a4;
  *&v12 = sub_10019E294();
  *(&v12 + 1) = v8;
  sub_10007D9D4(a1, __p, a3, v7, &v12);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void *sub_1000DEB44(void *a1, char **a2, _DWORD *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10021AF58;
  sub_1000DEBA0((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_1000DEBA0(uint64_t a1, char **a2, _DWORD *a3)
{
  sub_100003410(__p, *a2);
  LODWORD(a3) = *a3;
  *&v9 = sub_10019E294();
  *(&v9 + 1) = v5;
  sub_10007D9D4(a1, __p, a3, 0, &v9);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

uint64_t sub_1000DEC60(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021AED8;
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

void sub_1000DED10(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void *sub_1000DEDAC(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100208058;
  v3 = *a2;
  v4 = sub_10019E294();
  v6 = v5;
  sub_10019A650(a1 + 3);
  a1[3] = off_1002080A8;
  a1[6] = v3;
  a1[7] = v4;
  a1[8] = v6;
  return a1;
}

void *sub_1000DEED4(void *a1, size_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10021AFA8;
  sub_1000DEFD8(a1 + 3, *a2, *a3, a3[1]);
  return a1;
}

void sub_1000DEF5C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10021AFA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1000DEFD8(void *a1, size_t size, uint64_t a3, uint64_t a4)
{
  if (size)
  {
    v8 = malloc_type_valloc(size, 0x8B7C732DuLL);
    if (!v8)
    {
      exception = __cxa_allocate_exception(8uLL);
      v10 = std::bad_alloc::bad_alloc(exception);
    }
  }

  else
  {
    v8 = 0;
  }

  v14[0] = off_10021AFF8;
  v14[3] = v14;
  v12 = v8;
  sub_1000DF1F8(v13, v14);
  sub_1000298F0(v14);
  sub_1000DF278(a1, &v12, size, a3, a4);
  sub_10002986C(&v12, 0);
  sub_1000298F0(v13);
  return a1;
}

void sub_1000DF0FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10002986C(&a9, 0);
  sub_1000298F0(v9 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DF1AC(uint64_t a1, uint64_t a2)
{
  if (sub_100009720(a2, &off_10021B068))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000DF1F8(uint64_t a1, uint64_t a2)
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

void *sub_1000DF278(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10019A650(a1);
  *v10 = off_10022E120;
  v11 = *a2;
  *a2 = 0;
  v10[3] = v11;
  sub_1000DF1F8((v10 + 4), (a2 + 1));
  a1[8] = a1[3];
  a1[9] = a3;
  a1[10] = a4;
  a1[11] = a5;
  a1[12] = getpagesize();
  return a1;
}

void *sub_1000DF398(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100208058;
  v4 = *a2;
  v5 = *a3;
  v6 = a3[1];
  sub_10019A650(a1 + 3);
  a1[3] = off_1002080A8;
  a1[6] = v4;
  a1[7] = v5;
  a1[8] = v6;
  return a1;
}

void *sub_1000DF4B4(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10020B9C0;
  v5 = 0;
  sub_10018B89C(a1 + 3, a2, a3, &v5);
  return a1;
}

void *sub_1000DF5AC(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10020B9C0;
  v5 = 0;
  sub_10018B89C(a1 + 3, a2, a3, &v5);
  return a1;
}

void *sub_1000DF69C(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10021B088;
  sub_10013A770(a1 + 3);
  return a1;
}

void sub_1000DF718(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10021B088;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1000DF818(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10021B088;
  sub_10013A770(a1 + 3);
  return a1;
}

void *sub_1000DF900(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10021B0D8;
  sub_100156850(a1 + 3);
  return a1;
}

void sub_1000DF97C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10021B0D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000DFA64(uint64_t a1, char **a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_10021B128;
  sub_100003410((a1 + 24), *a2);
  return a1;
}

void sub_1000DFAE4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10021B128;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1000DFB38(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

void *sub_1000DFBEC(void *a1, uint64_t a2, int *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10021B178;
  sub_10016F9F8(a1 + 3, a2, *a3);
  return a1;
}

void sub_1000DFC6C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10021B178;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1000DFD6C(void *a1, char **a2, uint64_t *a3, unsigned int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10021B1C8;
  sub_1000DFE48((a1 + 3), a2, a3, a4);
  return a1;
}

void sub_1000DFDE8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10021B1C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000DFE48(uint64_t a1, char **a2, uint64_t *a3, unsigned int *a4)
{
  sub_100003410(__p, *a2);
  v7 = *a3;
  v8 = *a4;
  memset(v10, 0, sizeof(v10));
  sub_10007392C(a1, __p, v7, v8 | &_mh_execute_header, v10, 0);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1000DFEC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000DFEE4(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v2 = *(a1 + 8);
  if (v2)
  {

    sub_10000367C(v2);
  }
}

void *sub_1000DFFBC(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10021B218;
  sub_10019A650(a1 + 3);
  a1[3] = off_10021B268;
  v4 = a2[1];
  a1[6] = *a2;
  a1[7] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_1000E0070(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10021B218;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1000E00EC(void *a1)
{
  *a1 = off_10021B268;
  v2 = a1[4];
  if (v2)
  {
    sub_10000367C(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_1000E0144(void *a1)
{
  *a1 = off_10021B268;
  v2 = a1[4];
  if (v2)
  {
    sub_10000367C(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

void *sub_1000E02EC(void *a1, char **a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10021B1C8;
  sub_1000E0348((a1 + 3), a2, a3, a4, a5, a6);
  return a1;
}

uint64_t sub_1000E0348(uint64_t a1, char **a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  sub_100003410(__p, *a2);
  sub_10007392C(a1, __p, 0, 0, a5, *a6);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1000E03BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000E03D8()
{
  if (qword_100240B90 != -1)
  {
    sub_1001A3944();
  }

  return qword_100240B88;
}

const void **sub_1000E0470@<X0>(uint64_t a1@<X1>, char a2@<W2>, const __CFArray **a3@<X8>)
{
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 24) - *(a1 + 16)) >> 4), &kCFTypeArrayCallBacks);
  theArray = Mutable;
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  if (v7 != v8)
  {
    do
    {
      (*(**(v7 + 3) + 56))(&v22);
      Count = CFArrayGetCount(theArray);
      v10 = @"Base";
      if (Count != -1 - 0x5555555555555555 * ((*(a1 + 24) - *(a1 + 16)) >> 4))
      {
        v10 = off_10021C0E0[*v7];
      }

      v21 = v10;
      v11 = theArray;
      if ((a2 & 4) != 0)
      {
        v24 = @"Role";
        v25 = v10;
        CFRetain(v10);
        (*(*&v22[*(*v22 - 96)] + 16))(&v17);
        v26 = @"Image";
        v27 = v17;
        v17 = 0;
        v18 = &v24;
        v19 = 2;
        sub_10014D3C0(&v18, &value);
        CFArrayAppendValue(v11, value);
        sub_1000043E8(&value);
        for (i = 24; i != -8; i -= 16)
        {
          sub_100004450((&v24 + i));
        }

        sub_10000C8E0(&v17);
      }

      else
      {
        v24 = @"Role";
        v25 = v10;
        CFRetain(v10);
        v12 = (*(*&v22[*(*v22 - 96)] + 24))(&v22[*(*v22 - 96)]);
        v26 = @"Image Format";
        v27 = v12;
        v18 = &v24;
        v19 = 2;
        sub_10014D3C0(&v18, &value);
        CFArrayAppendValue(v11, value);
        sub_1000043E8(&value);
        for (j = 24; j != -8; j -= 16)
        {
          sub_100004450((&v24 + j));
        }
      }

      sub_100023024(&v21);
      v15 = v22;
      v22 = 0;
      if (v15)
      {
        (*(*v15 + 8))(v15);
      }

      v7 += 12;
    }

    while (v7 != v8);
    Mutable = theArray;
  }

  *a3 = Mutable;
  theArray = 0;
  return sub_100023A28(&theArray);
}

void sub_1000E075C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, const void *);
  v11 = va_arg(va1, void);
  sub_100023024(va);
  v8 = v11;
  v11 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  sub_100023A28(va1);
  _Unwind_Resume(a1);
}

CFTypeRef *sub_1000E0840(CFTypeRef *a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRetain(*a2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  *a1 = *a2;
  return a1;
}

uint64_t *sub_1000E0888(uint64_t *a1, uint64_t a2, char a3)
{
  a1[5] = off_100204010;
  a1[6] = off_100204040;
  a1[7] = off_100204070;
  a1[8] = off_1002040A0;
  *a1 = off_10021BAE0;
  a1[3] = off_10021BB28;
  a1[4] = off_10021BB70;
  a1[5] = off_10021BBB8;
  *(a1 + *(*a1 - 48)) = off_10021BC00;
  *(a1 + *(*a1 - 56)) = off_10021BC48;
  *(a1 + *(*a1 - 64)) = off_10021BC90;
  *a1 = off_10021B8B8;
  a1[3] = off_10021B900;
  a1[4] = off_10021B948;
  a1[5] = off_10021B990;
  *(a1 + *(*a1 - 48)) = off_10021B9D8;
  *(a1 + *(*a1 - 56)) = off_10021BA20;
  *(a1 + *(*a1 - 64)) = off_10021BA68;
  a1[9] = off_10021BCF0;
  a1[3] = off_10021BD48;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  a1[17] = off_10021BE38;
  a1[18] = 0;
  a1[5] = off_10021BE90;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  a1[21] = 0;
  sub_1000E10DC(a1 + 22, &off_10021B838, a2);
  *a1 = off_10021B400;
  a1[3] = off_10021B448;
  a1[4] = off_10021B490;
  a1[5] = off_10021B4D8;
  a1[6] = off_10021B520;
  a1[7] = off_10021B568;
  a1[8] = off_10021B5B0;
  a1[9] = off_10021B610;
  a1[17] = off_10021B680;
  a1[22] = off_10021B6F0;
  a1[1] = 0;
  v5 = (a1 + 1);
  a1[2] = 0;
  v6 = (a1 + 2);
  v7 = *(a2 + 16);
  v8 = *(v7 + 24);
  v9 = *(v7 + 32);
  v10 = a2;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v8 + 56))(&v23);
  v11 = (*(*&v23[*(*v23 - 24)] + 16))(&v23[*(*v23 - 24)]);
  v12 = *a1;
  *(a1 + *(*a1 - 112) + 16) = *(v11 + 16);
  *(a1 + *(v12 - 112) + 8) = *(v11 + 8);
  *(a1 + *(v12 - 112) + 56) = *(v11 + 56);
  v13 = a1 + *(v12 - 112);
  v14 = *(v11 + 40);
  *(v13 + 48) = *(v11 + 48);
  *(v13 + 40) = v14;
  v15 = a1 + *(*a1 - 112);
  v16 = *(v11 + 24);
  *(v15 + 32) = *(v11 + 32);
  *(v15 + 24) = v16;
  v17 = (*(*&v23[*(*v23 - 64)] + 16))(&v23[*(*v23 - 64)]);
  sub_1000E0840((a1 + *(*a1 - 128) + 16), (v17 + 16));
  sub_1000E0840((a1 + *(*a1 - 128) + 24), (v17 + 24));
  sub_1000E0470(v10, a3, &v22);
  if (*v5)
  {
    CFRelease(*v5);
  }

  *v5 = v22;
  v22 = 0;
  sub_1000BB260(&v22);
  v18 = (*(*&v23[*(*v23 - 96)] + 24))(&v23[*(*v23 - 96)]);
  v22 = v18;
  if (*v6)
  {
    CFRelease(*v6);
    v18 = v22;
  }

  *v6 = v18;
  v22 = 0;
  sub_100023024(&v22);
  v19 = v23;
  v23 = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  if (v9)
  {
    sub_10000367C(v9);
  }

  return a1;
}

void sub_1000E1028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11, uint64_t a12)
{
  sub_100023024(&a11);
  v18 = a12;
  a12 = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  if (v14)
  {
    sub_10000367C(v14);
  }

  sub_100023024(v15);
  sub_1000BB260(v16);
  sub_100020A3C(v13, &off_10021B838);
  sub_100020BC4(v12, &off_10021B818);
  _Unwind_Resume(a1);
}

uint64_t *sub_1000E10DC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = off_1002044F0;
  v4 = a2[1];
  *a1 = v4;
  *(a1 + *(v4 - 24)) = a2[2];
  v5 = *a2;
  *a1 = *a2;
  *(a1 + *(v5 - 24)) = a2[3];
  a1[1] = 0;
  a1[2] = 0;
  v6 = (a1 + 1);
  a1[3] = 0;
  v7 = sub_10006C1F0(*(*(a3 + 16) + 24));
  v9 = v8;
  *&v14.byte0 = v7;
  *&v14.byte8 = v9;
  v13 = CFUUIDCreateFromUUIDBytes(kCFAllocatorDefault, v14);
  v10 = CFUUIDCreateString(kCFAllocatorDefault, v13);
  v12 = v10;
  if (*v6)
  {
    CFRelease(*v6);
    v10 = v12;
  }

  a1[1] = v10;
  v12 = 0;
  sub_100023024(&v12);
  sub_100023A5C(&v13);
  return a1;
}

void sub_1000E12A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_100023024(&a9);
  sub_100023A5C(&a10);
  sub_100023024((v10 + 24));
  sub_100023024((v10 + 16));
  sub_100023024(v11);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E12F0(uint64_t a1)
{
  v2 = sub_1000E2964(a1, off_10021B720);
  *(v2 + 176) = off_10021BF80;
  *(v2 + 64) = off_10021BFD8;
  sub_100023024((v2 + 200));
  sub_100023024((a1 + 192));
  sub_100023024((a1 + 184));
  *(a1 + 136) = off_10021BE38;
  *(a1 + 40) = off_10021BE90;
  sub_100023024((a1 + 168));
  return a1;
}

void sub_1000E13C0(uint64_t a1)
{
  v2 = sub_1000E2964(a1, off_10021B720);
  *(v2 + 176) = off_10021BF80;
  *(v2 + 64) = off_10021BFD8;
  sub_100023024((v2 + 200));
  sub_100023024((a1 + 192));
  sub_100023024((a1 + 184));
  *(a1 + 136) = off_10021BE38;
  *(a1 + 40) = off_10021BE90;
  sub_100023024((a1 + 168));

  operator delete();
}

const void **sub_1000E14B0@<X0>(CFArrayRef *a1@<X0>, void *a2@<X8>)
{
  v4 = (*(*a1 + 3))(a1);
  v13[0] = @"Image Format";
  v13[1] = v4;
  v13[2] = @"Format Description";
  v13[3] = @"Stackable image";
  sub_1000213FC(a1 + *(*a1 - 14), &valuePtr);
  v13[4] = @"Size Info";
  v13[5] = valuePtr;
  valuePtr = 0;
  sub_10000C8E0(&valuePtr);
  sub_100021798(a1 + *(*a1 - 15), &valuePtr);
  v13[6] = @"Encryption Info";
  v13[7] = valuePtr;
  valuePtr = 0;
  sub_10000C8E0(&valuePtr);
  sub_100022198((a1 + *(*a1 - 16)), &valuePtr);
  v13[8] = @"Identity Info";
  v13[9] = valuePtr;
  valuePtr = 0;
  sub_10000C8E0(&valuePtr);
  valuePtr = CFArrayGetCount(a1[1]);
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongType, &valuePtr);
  v13[10] = @"Images Count";
  v13[11] = v5;
  v9 = 0;
  v6 = a1[1];
  v13[12] = @"Stack Info";
  v13[13] = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  v10[0] = v13;
  v10[1] = 7;
  sub_10014D3C0(v10, &v11);
  *a2 = v11;
  v11 = 0;
  sub_1000043E8(&v11);
  for (i = 13; i != -1; i -= 2)
  {
    sub_100004450(&v13[i]);
  }

  return sub_10000441C(&v9);
}

void sub_1000E16C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_10000441C(&a9);
  do
  {
    sub_100004450(v14 - 1);
    v14 -= 2;
  }

  while (v14 != &a14);
  _Unwind_Resume(a1);
}

const void **sub_1000E1734(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  sub_1000E2964(v1, off_10021B720);
  *(v1 + 176) = off_10021BF80;
  *(v1 + 64) = off_10021BFD8;
  sub_100023024((v1 + 200));
  sub_100023024((v1 + 192));
  sub_100023024((v1 + 184));
  *(v1 + 136) = off_10021BE38;
  *(v1 + 40) = off_10021BE90;

  return sub_100023024((v1 + 168));
}

void sub_1000E1824(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  sub_1000E2964(v1, off_10021B720);
  *(v1 + 176) = off_10021BF80;
  *(v1 + 64) = off_10021BFD8;
  sub_100023024((v1 + 200));
  sub_100023024((v1 + 192));
  sub_100023024((v1 + 184));
  *(v1 + 136) = off_10021BE38;
  *(v1 + 40) = off_10021BE90;
  sub_100023024((v1 + 168));

  operator delete();
}

const void **sub_1000E192C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  sub_1000E2964(v1, off_10021B720);
  *(v1 + 176) = off_10021BF80;
  *(v1 + 64) = off_10021BFD8;
  sub_100023024((v1 + 200));
  sub_100023024((v1 + 192));
  sub_100023024((v1 + 184));
  *(v1 + 136) = off_10021BE38;
  *(v1 + 40) = off_10021BE90;

  return sub_100023024((v1 + 168));
}

void sub_1000E1A1C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  sub_1000E2964(v1, off_10021B720);
  *(v1 + 176) = off_10021BF80;
  *(v1 + 64) = off_10021BFD8;
  sub_100023024((v1 + 200));
  sub_100023024((v1 + 192));
  sub_100023024((v1 + 184));
  *(v1 + 136) = off_10021BE38;
  *(v1 + 40) = off_10021BE90;
  sub_100023024((v1 + 168));

  operator delete();
}

const void **sub_1000E1B24(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  sub_1000E2964(v1, off_10021B720);
  *(v1 + 176) = off_10021BF80;
  *(v1 + 64) = off_10021BFD8;
  sub_100023024((v1 + 200));
  sub_100023024((v1 + 192));
  sub_100023024((v1 + 184));
  *(v1 + 136) = off_10021BE38;
  *(v1 + 40) = off_10021BE90;

  return sub_100023024((v1 + 168));
}

void sub_1000E1C14(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  sub_1000E2964(v1, off_10021B720);
  *(v1 + 176) = off_10021BF80;
  *(v1 + 64) = off_10021BFD8;
  sub_100023024((v1 + 200));
  sub_100023024((v1 + 192));
  sub_100023024((v1 + 184));
  *(v1 + 136) = off_10021BE38;
  *(v1 + 40) = off_10021BE90;
  sub_100023024((v1 + 168));

  operator delete();
}

const void **sub_1000E1D1C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  sub_1000E2964(v1, off_10021B720);
  *(v1 + 176) = off_10021BF80;
  *(v1 + 64) = off_10021BFD8;
  sub_100023024((v1 + 200));
  sub_100023024((v1 + 192));
  sub_100023024((v1 + 184));
  *(v1 + 136) = off_10021BE38;
  *(v1 + 40) = off_10021BE90;

  return sub_100023024((v1 + 168));
}

void sub_1000E1E0C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  sub_1000E2964(v1, off_10021B720);
  *(v1 + 176) = off_10021BF80;
  *(v1 + 64) = off_10021BFD8;
  sub_100023024((v1 + 200));
  sub_100023024((v1 + 192));
  sub_100023024((v1 + 184));
  *(v1 + 136) = off_10021BE38;
  *(v1 + 40) = off_10021BE90;
  sub_100023024((v1 + 168));

  operator delete();
}

const void **sub_1000E1F14(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  sub_1000E2964(v1, off_10021B720);
  *(v1 + 176) = off_10021BF80;
  *(v1 + 64) = off_10021BFD8;
  sub_100023024((v1 + 200));
  sub_100023024((v1 + 192));
  sub_100023024((v1 + 184));
  *(v1 + 136) = off_10021BE38;
  *(v1 + 40) = off_10021BE90;

  return sub_100023024((v1 + 168));
}

void sub_1000E2004(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  sub_1000E2964(v1, off_10021B720);
  *(v1 + 176) = off_10021BF80;
  *(v1 + 64) = off_10021BFD8;
  sub_100023024((v1 + 200));
  sub_100023024((v1 + 192));
  sub_100023024((v1 + 184));
  *(v1 + 136) = off_10021BE38;
  *(v1 + 40) = off_10021BE90;
  sub_100023024((v1 + 168));

  operator delete();
}

const void **sub_1000E210C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  sub_1000E2964(v1, off_10021B720);
  *(v1 + 176) = off_10021BF80;
  *(v1 + 64) = off_10021BFD8;
  sub_100023024((v1 + 200));
  sub_100023024((v1 + 192));
  sub_100023024((v1 + 184));
  *(v1 + 136) = off_10021BE38;
  *(v1 + 40) = off_10021BE90;

  return sub_100023024((v1 + 168));
}

void sub_1000E21FC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  sub_1000E2964(v1, off_10021B720);
  *(v1 + 176) = off_10021BF80;
  *(v1 + 64) = off_10021BFD8;
  sub_100023024((v1 + 200));
  sub_100023024((v1 + 192));
  sub_100023024((v1 + 184));
  *(v1 + 136) = off_10021BE38;
  *(v1 + 40) = off_10021BE90;
  sub_100023024((v1 + 168));

  operator delete();
}

const void **sub_1000E2304(void *a1)
{
  v1 = a1 + *(*a1 - 32);
  sub_1000E2964(v1, off_10021B720);
  *(v1 + 176) = off_10021BF80;
  *(v1 + 64) = off_10021BFD8;
  sub_100023024((v1 + 200));
  sub_100023024((v1 + 192));
  sub_100023024((v1 + 184));
  *(v1 + 136) = off_10021BE38;
  *(v1 + 40) = off_10021BE90;

  return sub_100023024((v1 + 168));
}

void sub_1000E23F4(void *a1)
{
  v1 = a1 + *(*a1 - 32);
  sub_1000E2964(v1, off_10021B720);
  *(v1 + 176) = off_10021BF80;
  *(v1 + 64) = off_10021BFD8;
  sub_100023024((v1 + 200));
  sub_100023024((v1 + 192));
  sub_100023024((v1 + 184));
  *(v1 + 136) = off_10021BE38;
  *(v1 + 40) = off_10021BE90;
  sub_100023024((v1 + 168));

  operator delete();
}

const void **sub_1000E2524(void *a1)
{
  v1 = a1 + *(*a1 - 32);
  sub_1000E2964(v1, off_10021B720);
  *(v1 + 176) = off_10021BF80;
  *(v1 + 64) = off_10021BFD8;
  sub_100023024((v1 + 200));
  sub_100023024((v1 + 192));
  sub_100023024((v1 + 184));
  *(v1 + 136) = off_10021BE38;
  *(v1 + 40) = off_10021BE90;

  return sub_100023024((v1 + 168));
}

void sub_1000E2614(void *a1)
{
  v1 = a1 + *(*a1 - 32);
  sub_1000E2964(v1, off_10021B720);
  *(v1 + 176) = off_10021BF80;
  *(v1 + 64) = off_10021BFD8;
  sub_100023024((v1 + 200));
  sub_100023024((v1 + 192));
  sub_100023024((v1 + 184));
  *(v1 + 136) = off_10021BE38;
  *(v1 + 40) = off_10021BE90;
  sub_100023024((v1 + 168));

  operator delete();
}

const void **sub_1000E2744(void *a1)
{
  v1 = a1 + *(*a1 - 32);
  sub_1000E2964(v1, off_10021B720);
  *(v1 + 176) = off_10021BF80;
  *(v1 + 64) = off_10021BFD8;
  sub_100023024((v1 + 200));
  sub_100023024((v1 + 192));
  sub_100023024((v1 + 184));
  *(v1 + 136) = off_10021BE38;
  *(v1 + 40) = off_10021BE90;

  return sub_100023024((v1 + 168));
}

void sub_1000E2834(void *a1)
{
  v1 = a1 + *(*a1 - 32);
  sub_1000E2964(v1, off_10021B720);
  *(v1 + 176) = off_10021BF80;
  *(v1 + 64) = off_10021BFD8;
  sub_100023024((v1 + 200));
  sub_100023024((v1 + 192));
  sub_100023024((v1 + 184));
  *(v1 + 136) = off_10021BE38;
  *(v1 + 40) = off_10021BE90;
  sub_100023024((v1 + 168));

  operator delete();
}

uint64_t sub_1000E2964(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 104)) = a2[1];
  *(a1 + *(*a1 - 96)) = a2[2];
  *(a1 + *(*a1 - 24)) = a2[3];
  *(a1 + *(*a1 - 32)) = a2[4];
  *(a1 + *(*a1 - 40)) = a2[5];
  *(a1 + *(*a1 - 48)) = a2[6];
  *(a1 + *(*a1 - 56)) = a2[7];
  *(a1 + *(*a1 - 64)) = a2[8];
  *(a1 + *(*a1 - 112)) = a2[9];
  *(a1 + *(*a1 - 120)) = a2[10];
  *(a1 + *(*a1 - 128)) = a2[11];
  sub_100023024((a1 + 16));
  sub_1000BB260((a1 + 8));
  return a1;
}

void sub_1000E2D14(uint64_t *a1, uint64_t a2)
{
  if (*sub_1000E6A90(a2 + 32, *(a2 + 208)))
  {
    v4 = *(a2 + 664);
    v5 = *(a2 + 672);
    v21 = 0u;
    v22 = 0u;
    sub_1000EADE8(a2 + 504, v19);
    v6 = a1 + 2;
    if (v4 == v5)
    {
      v11 = 0;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = *(v4 + 8 * v8) * *(a2 + 96);
        if (v9)
        {
          ++*(v6 + *(*a1 - 136));
          sub_1000F3458((a2 + 504), v19, v8, v9, 0, 1, buf);
          if (*buf && (*(*buf + 520) & 1) == 0)
          {
            if (*(*buf + 400))
            {
              v10 = (*buf + 40);
            }

            else
            {
              v10 = 0;
            }

            sub_1000E43A0(a1, v10, v19, &v21);
          }

          sub_1000E6B5C(buf);
        }

        v8 = (v8 + 1);
        v7 += 8;
      }

      while (v4 + v7 != v5);
      v11 = *(&v21 + 1);
    }

    v12 = *v6;
    *(a1 + *(*a1 - 112) + 56) -= v12 + (*(*a2 + 24))(a2) * v11;
    v13 = *(&v22 + 1);
    if (*(&v22 + 1) && sub_1000E0464())
    {
      v14 = *__error();
      if (sub_1000E044C())
      {
        v15 = sub_1000E03D8();
        os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
        *buf = 68158210;
        *&buf[4] = 71;
        v24 = 2080;
        v25 = "void info::DiskImageInfoASIF::count_used_extents(const DiskImageASIF &)";
        v26 = 2048;
        v27 = v13;
        v16 = _os_log_send_and_compose_impl();
        if (v16)
        {
          v17 = v16;
          fprintf(__stderrp, "%s\n", v16);
          free(v17);
        }
      }

      else
      {
        v18 = sub_1000E03D8();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 68158210;
          *&buf[4] = 71;
          v24 = 2080;
          v25 = "void info::DiskImageInfoASIF::count_used_extents(const DiskImageASIF &)";
          v26 = 2048;
          v27 = v13;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%.*s: WARNING: Found %llu sectors with invalid flags (has_bitmap)", buf, 0x1Cu);
        }
      }

      *__error() = v14;
    }

    v19[0] = off_10021D0C0;
    if (v20)
    {
      sub_10000367C(v20);
    }
  }
}

void sub_1000E3040(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a16)
  {
    sub_10000367C(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E30B4(void *a1, uint64_t a2)
{
  v3 = a1[1];
  *&v9 = *a1;
  *(&v9 + 1) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  do
  {
    while (1)
    {
      (*(*v9 + 176))(v9, a2);
      v4 = v9;
      if (*(&v9 + 1))
      {
        atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      if (v3)
      {
        sub_10000367C(v3);
      }

      sub_10019AD28(&v9, &v8);
      v5 = v8;
      v8 = 0uLL;
      v6 = *(&v9 + 1);
      v9 = v5;
      if (v6)
      {
        break;
      }

      v3 = *(&v4 + 1);
      if (v5 == v4)
      {
        goto LABEL_13;
      }
    }

    sub_10000367C(v6);
    v7 = v9;
    if (*(&v8 + 1))
    {
      sub_10000367C(*(&v8 + 1));
    }

    v3 = *(&v4 + 1);
  }

  while (v7 != v4);
LABEL_13:
  if (*(&v4 + 1))
  {
    sub_10000367C(*(&v4 + 1));
  }

  if (*(&v9 + 1))
  {
    sub_10000367C(*(&v9 + 1));
  }
}

void sub_1000E31BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (v12)
  {
    sub_10000367C(v12);
  }

  if (a12)
  {
    sub_10000367C(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E31EC(void *a1, uint64_t a2)
{
  v4 = sub_1000FDD24(a2);
  v9[4] = v4;
  v9[5] = v5;
  if (v4 | v5)
  {
    *&v10.byte8 = v5;
    *&v10.byte0 = v4;
    v9[0] = CFUUIDCreateFromUUIDBytes(kCFAllocatorDefault, v10);
    v6 = CFUUIDCreateString(kCFAllocatorDefault, v9[0]);
    v8 = v6;
    v7 = (a1 + *(*a1 - 128));
    if (v7[3])
    {
      CFRelease(v7[3]);
      v6 = v8;
    }

    v7[3] = v6;
    v8 = 0;
    sub_100023024(&v8);
    sub_100023A5C(v9);
  }

  sub_1000FDD18(a2);
}

void sub_1000E335C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  sub_100023024(va);
  sub_100023A5C(va1);
  _Unwind_Resume(a1);
}

void sub_1000E33A4(void *a1, const void *a2)
{
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v35[0] = Mutable;
  v5 = (a1 + *(*a1 - 136));
  if (v5[10])
  {
    CFRelease(v5[10]);
    Mutable = v35[0];
  }

  v5[10] = Mutable;
  v35[0] = 0;
  sub_100023A28(v35);
  sub_1000EADE8(a2 + 504, v28);
  v6 = *(a1 + *(*a1 - 112) + 16);
  v35[0] = a2;
  v35[1] = 0;
  v35[2] = v6;
  v36 = 2;
  v37 = 0;
  v38 = v28;
  v39 = 2;
  v40[0] = off_100202578;
  v40[3] = v40;
  sub_10005D16C(v35, &v23);
  sub_10005D2EC(v35, v22);
  while (sub_100124F1C(&v23, v22))
  {
    if (v27 == 3)
    {
      v15 = *__error();
      if (sub_1000E044C())
      {
        v16 = sub_1000E03D8();
        os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
        value = 0x4B04100302;
        v31 = 2080;
        v32 = "void info::DiskImageInfoASIF::examine_mapped_extents(const DiskImageASIF &)";
        v33 = 2048;
        v34 = v24;
        v17 = _os_log_send_and_compose_impl();
        if (v17)
        {
          v18 = v17;
          fprintf(__stderrp, "%s\n", v17);
          free(v18);
        }
      }

      else
      {
        v19 = sub_1000E03D8();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          value = 0x4B04100302;
          v31 = 2080;
          v32 = "void info::DiskImageInfoASIF::examine_mapped_extents(const DiskImageASIF &)";
          v33 = 2048;
          v34 = v24;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%.*s: Failed during ASIF extents enumeration on offset: %llu", &value, 0x1Cu);
        }
      }

      *__error() = v15;
      exception = __cxa_allocate_exception(0x40uLL);
      *exception = &off_100233158;
      v21 = std::generic_category();
      exception[1] = 22;
      exception[2] = v21;
      *(exception + 24) = 0;
      *(exception + 48) = 0;
      exception[7] = "Failed during ASIF extents enumeration.";
    }

    v8 = v24;
    v7 = v25;
    v9 = v26;
    v10 = CFArrayCreateMutable(kCFAllocatorDefault, 2, &kCFTypeArrayCallBacks);
    value = v10;
    if ((v9 & 2) != 0)
    {
      v11 = v8;
    }

    else
    {
      v11 = v8 + 1;
    }

    sub_10014CC14(v10, v11);
    sub_10014CC14(value, (v9 & 1) + v7 - 1);
    CFArrayAppendValue(*(a1 + *(*a1 - 136) + 80), value);
    sub_100023A28(&value);
    sub_1001251AC(&v23);
  }

  v12 = v22[0];
  v22[0] = 0;
  if (v12)
  {
    (*(*v12 + 24))(v12);
  }

  v13 = v23;
  v23 = 0;
  if (v13)
  {
    (*(*v13 + 24))(v13);
  }

  sub_10000B95C(v40);
  v14 = v37;
  v37 = 0;
  if (v14)
  {
    (*(*v14 + 40))(v14);
  }

  v28[0] = off_10021D0C0;
  if (v29)
  {
    sub_10000367C(v29);
  }
}

void sub_1000E38FC(uint64_t *a1, uint64_t a2)
{
  a1[7] = off_100204010;
  a1[8] = off_100204040;
  a1[9] = off_100204070;
  a1[10] = off_1002040A0;
  *a1 = off_10021C8F8;
  a1[5] = off_10021C940;
  a1[6] = off_10021C988;
  a1[7] = off_10021C9D0;
  *(a1 + *(*a1 - 48)) = off_10021CA18;
  *(a1 + *(*a1 - 56)) = off_10021CA60;
  *(a1 + *(*a1 - 64)) = off_10021CAA8;
  *a1 = off_10021C6D0;
  a1[5] = off_10021C718;
  a1[6] = off_10021C760;
  a1[7] = off_10021C7A8;
  *(a1 + *(*a1 - 48)) = off_10021C7F0;
  *(a1 + *(*a1 - 56)) = off_10021C838;
  *(a1 + *(*a1 - 64)) = off_10021C880;
  a1[11] = off_10021CB08;
  a1[5] = off_10021CB60;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  a1[19] = off_10021CC50;
  a1[20] = 0;
  a1[7] = off_10021CCA8;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  a1[23] = 0;
  sub_1000E40E0(a1 + 24, &off_10021C630, a2);
  a1[30] = 0;
  a1[38] = 0;
  *(a1 + 16) = 0u;
  *(a1 + 17) = 0u;
  *a1 = off_10021C180;
  a1[5] = off_10021C1C8;
  a1[6] = off_10021C210;
  a1[7] = off_10021C258;
  a1[8] = off_10021C2A0;
  a1[9] = off_10021C2E8;
  a1[10] = off_10021C330;
  a1[11] = off_10021C390;
  a1[19] = off_10021C400;
  a1[24] = off_10021C470;
  a1[28] = off_10021C4E0;
  *(a1 + 1) = 0u;
  *(a1 + 3) = 0u;
  v4 = (*(*a2 + 32))(a2);
  v5 = *a1;
  *(a1 + *(*a1 - 112) + 16) = v4;
  v6 = *(a1 + *(v5 - 112) + 16);
  v7 = (*(*a2 + 24))(a2);
  v8 = *a1;
  v9 = *a1;
  *(a1 + *(v8 - 112) + 8) = v7 * v6;
  v10 = *(a2 + 96);
  *(a1 + *(v8 - 136) + 24) = v10;
  *(a1 + *(v9 - 136) + 64) = *(a2 + 88);
  *(a1 + *(v9 - 136) + 8) = *(a2 + 4120);
  *(a1 + *(v9 - 112) + 56) = *(a1 + *(v9 - 112) + 8);
  v11 = *(a2 + 104);
  if (v11)
  {
    v12 = v11 * v10;
  }

  else
  {
    v13 = *(a2 + 88);
    v12 = (*(*a2 + 24))(a2) * v13;
    v8 = *a1;
  }

  v14 = a1 + *(v8 - 112);
  *(v14 + 40) = v12;
  *(v14 + 48) = 1;
  v15 = *a1;
  v16 = a1 + *(*a1 - 112);
  v17 = *(a2 + 96);
  if ((*(v16 + 32) & 1) == 0)
  {
    *(v16 + 32) = 1;
  }

  *(v16 + 24) = v17;
  *(a1 + *(v15 - 136) + 72) = *(a2 + 44) & 1;
  sub_1000E2D14(a1, a2);
  sub_1000E30B4((a2 + 16), a1 + *(*a1 - 104));
  sub_1000E31EC(a1, a2);
}

void sub_1000E4090(_Unwind_Exception *a1)
{
  sub_1000E42F0(v2, &off_10021C650);
  sub_100020A3C(v3, &off_10021C630);
  sub_100020BC4(v1, &off_10021C610);
  _Unwind_Resume(a1);
}

uint64_t *sub_1000E40E0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = off_1002044F0;
  v4 = a2[1];
  *a1 = v4;
  *(a1 + *(v4 - 24)) = a2[2];
  v5 = *a2;
  *a1 = *a2;
  *(a1 + *(v5 - 24)) = a2[3];
  a1[1] = 0;
  a1[2] = 0;
  v6 = (a1 + 1);
  a1[3] = 0;
  v7 = sub_1000FDD94(a3);
  v9 = v8;
  *&v14.byte0 = v7;
  *&v14.byte8 = v9;
  v13 = CFUUIDCreateFromUUIDBytes(kCFAllocatorDefault, v14);
  v10 = CFUUIDCreateString(kCFAllocatorDefault, v13);
  v12 = v10;
  if (*v6)
  {
    CFRelease(*v6);
    v10 = v12;
  }

  a1[1] = v10;
  v12 = 0;
  sub_100023024(&v12);
  sub_100023A5C(&v13);
  return a1;
}

void sub_1000E42A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_100023024(&a9);
  sub_100023A5C(&a10);
  sub_100023024((v10 + 24));
  sub_100023024((v10 + 16));
  sub_100023024(v11);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E42F0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  sub_100023A28((a1 + 80));
  return a1;
}

uint64_t sub_1000E43A0(uint64_t *a1, uint64_t *a2, uint64_t a3, void *a4)
{
  result = sub_1000E8B2C(a2, a2, v23);
  v8 = a1 + 1;
  v9 = a1 + 3;
  v10 = a2[44];
  v11 = a1 + 4;
  while (v23[0] != v23[5] || v23[1] != v23[6])
  {
    v12 = sub_1000E81B4(v23);
    sub_1000EC31C(a2, v12, v22);
    while (v22[0] != v22[5] || v22[1] != v22[6])
    {
      *v21 = *sub_1000E81B4(v22);
      v13 = sub_1000E90AC(v21);
      v14 = *a1;
      v15 = *a1;
      v16 = *(v8 + *(*a1 - 112));
      v17 = v16 > v10;
      v18 = v16 - v10;
      if (v17)
      {
        if (v18 >= *(v9 + *(v15 - 136)))
        {
          v19 = *(v9 + *(v15 - 136));
        }

        else
        {
          v19 = v18;
        }
      }

      else
      {
        v19 = 0;
      }

      if (v13 > 1)
      {
        if (v13 == 2)
        {
          ++*(a1 + *(v15 - 136) + 48);
          *v11 += v19;
        }

        else if (v13 == 3)
        {
          ++*(a1 + *(v15 - 136) + 56);
          *v9 += v19;
          if (v19)
          {
            sub_1000E4640(a1, a2, a3, v21[0], v21[1], a4, v19);
            v14 = *a1;
          }
        }
      }

      else if (v13)
      {
        if (v13 == 1)
        {
          ++*(a1 + *(v15 - 136) + 40);
          a1[2] += v19;
        }
      }

      else
      {
        ++*(v11 + *(v15 - 136));
        *v8 += v19;
      }

      v10 += *(v9 + *(v14 - 136));
      sub_1000E8388(v22, v21);
    }

    result = sub_1000E8270(v23, v22);
  }

  return result;
}

void *sub_1000E45F4(void *a1)
{
  *a1 = off_10021D0C0;
  v2 = a1[3];
  if (v2)
  {
    sub_10000367C(v2);
  }

  return a1;
}

atomic_ullong *sub_1000E4640(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v28[0] = a4;
  v28[1] = a5;
  v12 = sub_1000E9390(v28);
  sub_1000E90C8(a2, a3, v12, 0, &v27);
  v13 = a1 + *(*a1 - 112);
  v14 = *(v13 + 1);
  v15 = *(v13 + 2);
  if (v15 > v14)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    *exception = &off_100233158;
    v26 = std::generic_category();
    exception[1] = 22;
    exception[2] = v26;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = "Corrupted ASIF image.";
  }

  v16 = sub_1000E94D4(v28);
  v17 = v16 + a7;
  if (v16 < v17)
  {
    v18 = 0;
    v19 = v14 / v15;
    do
    {
      while (1)
      {
        if (v27)
        {
          v20 = *(v27 + 224) ? (v27 + 40) : 0;
        }

        else
        {
          v20 = 0;
        }

        v21 = sub_1000E95A4(v20, a2, v18, v16, v17);
        v22 = a6;
        v23 = (v21 - v16) / v19;
        if (v18)
        {
          v22 = a6 + 1;
          if (v18 == 2)
          {
            break;
          }
        }

        *v22 += v23;
        ++v18;
        v16 = v21;
      }

      v18 = 0;
      a6[2] += v23;
      v16 = v21;
    }

    while (v21 < v17);
  }

  return sub_1000E7978(&v27);
}

void sub_1000E4800(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000E7978(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E481C(uint64_t a1)
{
  *a1 = off_10021D340;
  *(a1 + 88) = off_10021D398;
  sub_100023A28((a1 + 80));
  return a1;
}

void sub_1000E4884(uint64_t a1)
{
  *a1 = off_10021D340;
  *(a1 + 88) = off_10021D398;
  sub_100023A28((a1 + 80));

  operator delete();
}

const void **sub_1000E490C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  valuePtr = *(a1 + 8);
  v11 = @"Dir Pointer Version";
  v12 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
  v13 = @"Num Tables";
  valuePtr = *(a1 + 16);
  v14 = 0;
  v14 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
  v15 = @"Chunk Size";
  valuePtr = *(a1 + 24);
  v16 = 0;
  v16 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
  v17 = @"Uninitialized Entries";
  valuePtr = *(a1 + 32);
  v18 = 0;
  v18 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
  v19 = @"Full Entries";
  valuePtr = *(a1 + 40);
  v20 = 0;
  v20 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
  v21 = @"Unmapped Entries";
  valuePtr = *(a1 + 48);
  v22 = 0;
  v22 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
  v23 = @"Bitmapped Entries";
  valuePtr = *(a1 + 56);
  v24 = 0;
  v24 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
  v25 = @"Max Sector Count";
  valuePtr = *(a1 + 64);
  v26 = 0;
  v4 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
  v5 = *(a1 + 72);
  v26 = v4;
  v27 = @"Is Cache";
  valuePtr = v5;
  v28 = 0;
  v28 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
  v29 = &v11;
  v30 = 9;
  sub_10014D3C0(&v29, &v9);
  for (i = 17; i != -1; i -= 2)
  {
    sub_100004450(&(&v11)[i]);
  }

  v7 = *(a1 + 80);
  if (v7)
  {
    v29 = @"Mapped Sectors";
    v30 = v7;
    CFRetain(v7);
    v11 = &v29;
    v12 = 1;
    sub_10014D370(&v9, &v11);
    sub_100004450(&v30);
  }

  *a2 = v9;
  v9 = 0;
  return sub_1000043E8(&v9);
}

void sub_1000E4B90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100004450((v2 + 8));
  sub_1000043E8(va);
  _Unwind_Resume(a1);
}

const void **sub_1000E4C30(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *v1 = off_10021D340;
  *(v1 + 11) = off_10021D398;
  return sub_100023A28(v1 + 10);
}

void sub_1000E4C8C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *v1 = off_10021D340;
  *(v1 + 11) = off_10021D398;
  sub_100023A28(v1 + 10);

  operator delete();
}

uint64_t sub_1000E4D60(uint64_t a1)
{
  *(a1 + 224) = off_10021CEE0;
  *(a1 + 72) = off_10021CF38;
  sub_100023A28((a1 + 304));
  *(a1 + 192) = off_10021CD98;
  *(a1 + 80) = off_10021CDF0;
  sub_100023024((a1 + 216));
  sub_100023024((a1 + 208));
  sub_100023024((a1 + 200));
  *(a1 + 152) = off_10021CC50;
  *(a1 + 56) = off_10021CCA8;
  sub_100023024((a1 + 184));
  return a1;
}

void sub_1000E4E6C(uint64_t a1)
{
  *(a1 + 224) = off_10021CEE0;
  *(a1 + 72) = off_10021CF38;
  sub_100023A28((a1 + 304));
  *(a1 + 192) = off_10021CD98;
  *(a1 + 80) = off_10021CDF0;
  sub_100023024((a1 + 216));
  sub_100023024((a1 + 208));
  sub_100023024((a1 + 200));
  *(a1 + 152) = off_10021CC50;
  *(a1 + 56) = off_10021CCA8;
  sub_100023024((a1 + 184));

  operator delete();
}

const void **sub_1000E4F98@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (*(*a1 + 24))(a1);
  v10[0] = @"Image Format";
  v10[1] = v4;
  v10[2] = @"Format Description";
  v10[3] = @"Apple sparse image";
  sub_1000213FC(a1 + *(*a1 - 112), &v9);
  v10[4] = @"Size Info";
  v10[5] = v9;
  v9 = 0;
  sub_10000C8E0(&v9);
  sub_100021798(a1 + *(*a1 - 120), &v9);
  v10[6] = @"Encryption Info";
  v10[7] = v9;
  v9 = 0;
  sub_10000C8E0(&v9);
  sub_1000E490C(a1 + *(*a1 - 136), &v9);
  v10[8] = @"ASIF Info";
  v10[9] = v9;
  v9 = 0;
  sub_10000C8E0(&v9);
  sub_100022198((a1 + *(*a1 - 128)), &v9);
  v10[10] = @"Identity Info";
  v10[11] = v9;
  v9 = 0;
  sub_10000C8E0(&v9);
  v7[0] = v10;
  v7[1] = 6;
  sub_10014D3C0(v7, &v8);
  *a2 = v8;
  v8 = 0;
  sub_1000043E8(&v8);
  for (i = 11; i != -1; i -= 2)
  {
    result = sub_100004450(&v10[i]);
  }

  return result;
}

void sub_1000E5190(_Unwind_Exception *a1)
{
  v3 = (v1 + 88);
  v4 = -96;
  do
  {
    v3 = sub_100004450(v3) - 2;
    v4 += 16;
  }

  while (v4);
  _Unwind_Resume(a1);
}

const void **sub_1000E51E0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 28) = off_10021CEE0;
  *(v1 + 9) = off_10021CF38;
  sub_100023A28(v1 + 38);
  *(v1 + 24) = off_10021CD98;
  *(v1 + 10) = off_10021CDF0;
  sub_100023024(v1 + 27);
  sub_100023024(v1 + 26);
  sub_100023024(v1 + 25);
  *(v1 + 19) = off_10021CC50;
  *(v1 + 7) = off_10021CCA8;

  return sub_100023024(v1 + 23);
}

void sub_1000E5308(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 28) = off_10021CEE0;
  *(v1 + 9) = off_10021CF38;
  sub_100023A28(v1 + 38);
  *(v1 + 24) = off_10021CD98;
  *(v1 + 10) = off_10021CDF0;
  sub_100023024(v1 + 27);
  sub_100023024(v1 + 26);
  sub_100023024(v1 + 25);
  *(v1 + 19) = off_10021CC50;
  *(v1 + 7) = off_10021CCA8;
  sub_100023024(v1 + 23);

  operator delete();
}

const void **sub_1000E5448(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 28) = off_10021CEE0;
  *(v1 + 9) = off_10021CF38;
  sub_100023A28(v1 + 38);
  *(v1 + 24) = off_10021CD98;
  *(v1 + 10) = off_10021CDF0;
  sub_100023024(v1 + 27);
  sub_100023024(v1 + 26);
  sub_100023024(v1 + 25);
  *(v1 + 19) = off_10021CC50;
  *(v1 + 7) = off_10021CCA8;

  return sub_100023024(v1 + 23);
}

void sub_1000E5570(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 28) = off_10021CEE0;
  *(v1 + 9) = off_10021CF38;
  sub_100023A28(v1 + 38);
  *(v1 + 24) = off_10021CD98;
  *(v1 + 10) = off_10021CDF0;
  sub_100023024(v1 + 27);
  sub_100023024(v1 + 26);
  sub_100023024(v1 + 25);
  *(v1 + 19) = off_10021CC50;
  *(v1 + 7) = off_10021CCA8;
  sub_100023024(v1 + 23);

  operator delete();
}

const void **sub_1000E56B0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 28) = off_10021CEE0;
  *(v1 + 9) = off_10021CF38;
  sub_100023A28(v1 + 38);
  *(v1 + 24) = off_10021CD98;
  *(v1 + 10) = off_10021CDF0;
  sub_100023024(v1 + 27);
  sub_100023024(v1 + 26);
  sub_100023024(v1 + 25);
  *(v1 + 19) = off_10021CC50;
  *(v1 + 7) = off_10021CCA8;

  return sub_100023024(v1 + 23);
}

void sub_1000E57D8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 28) = off_10021CEE0;
  *(v1 + 9) = off_10021CF38;
  sub_100023A28(v1 + 38);
  *(v1 + 24) = off_10021CD98;
  *(v1 + 10) = off_10021CDF0;
  sub_100023024(v1 + 27);
  sub_100023024(v1 + 26);
  sub_100023024(v1 + 25);
  *(v1 + 19) = off_10021CC50;
  *(v1 + 7) = off_10021CCA8;
  sub_100023024(v1 + 23);

  operator delete();
}

const void **sub_1000E5918(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 28) = off_10021CEE0;
  *(v1 + 9) = off_10021CF38;
  sub_100023A28(v1 + 38);
  *(v1 + 24) = off_10021CD98;
  *(v1 + 10) = off_10021CDF0;
  sub_100023024(v1 + 27);
  sub_100023024(v1 + 26);
  sub_100023024(v1 + 25);
  *(v1 + 19) = off_10021CC50;
  *(v1 + 7) = off_10021CCA8;

  return sub_100023024(v1 + 23);
}

void sub_1000E5A40(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 28) = off_10021CEE0;
  *(v1 + 9) = off_10021CF38;
  sub_100023A28(v1 + 38);
  *(v1 + 24) = off_10021CD98;
  *(v1 + 10) = off_10021CDF0;
  sub_100023024(v1 + 27);
  sub_100023024(v1 + 26);
  sub_100023024(v1 + 25);
  *(v1 + 19) = off_10021CC50;
  *(v1 + 7) = off_10021CCA8;
  sub_100023024(v1 + 23);

  operator delete();
}

const void **sub_1000E5B80(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 28) = off_10021CEE0;
  *(v1 + 9) = off_10021CF38;
  sub_100023A28(v1 + 38);
  *(v1 + 24) = off_10021CD98;
  *(v1 + 10) = off_10021CDF0;
  sub_100023024(v1 + 27);
  sub_100023024(v1 + 26);
  sub_100023024(v1 + 25);
  *(v1 + 19) = off_10021CC50;
  *(v1 + 7) = off_10021CCA8;

  return sub_100023024(v1 + 23);
}

void sub_1000E5CA8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 28) = off_10021CEE0;
  *(v1 + 9) = off_10021CF38;
  sub_100023A28(v1 + 38);
  *(v1 + 24) = off_10021CD98;
  *(v1 + 10) = off_10021CDF0;
  sub_100023024(v1 + 27);
  sub_100023024(v1 + 26);
  sub_100023024(v1 + 25);
  *(v1 + 19) = off_10021CC50;
  *(v1 + 7) = off_10021CCA8;
  sub_100023024(v1 + 23);

  operator delete();
}

const void **sub_1000E5DE8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 28) = off_10021CEE0;
  *(v1 + 9) = off_10021CF38;
  sub_100023A28(v1 + 38);
  *(v1 + 24) = off_10021CD98;
  *(v1 + 10) = off_10021CDF0;
  sub_100023024(v1 + 27);
  sub_100023024(v1 + 26);
  sub_100023024(v1 + 25);
  *(v1 + 19) = off_10021CC50;
  *(v1 + 7) = off_10021CCA8;

  return sub_100023024(v1 + 23);
}

void sub_1000E5F10(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 28) = off_10021CEE0;
  *(v1 + 9) = off_10021CF38;
  sub_100023A28(v1 + 38);
  *(v1 + 24) = off_10021CD98;
  *(v1 + 10) = off_10021CDF0;
  sub_100023024(v1 + 27);
  sub_100023024(v1 + 26);
  sub_100023024(v1 + 25);
  *(v1 + 19) = off_10021CC50;
  *(v1 + 7) = off_10021CCA8;
  sub_100023024(v1 + 23);

  operator delete();
}

const void **sub_1000E6050(void *a1)
{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 28) = off_10021CEE0;
  *(v1 + 9) = off_10021CF38;
  sub_100023A28(v1 + 38);
  *(v1 + 24) = off_10021CD98;
  *(v1 + 10) = off_10021CDF0;
  sub_100023024(v1 + 27);
  sub_100023024(v1 + 26);
  sub_100023024(v1 + 25);
  *(v1 + 19) = off_10021CC50;
  *(v1 + 7) = off_10021CCA8;

  return sub_100023024(v1 + 23);
}

void sub_1000E6178(void *a1)
{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 28) = off_10021CEE0;
  *(v1 + 9) = off_10021CF38;
  sub_100023A28(v1 + 38);
  *(v1 + 24) = off_10021CD98;
  *(v1 + 10) = off_10021CDF0;
  sub_100023024(v1 + 27);
  sub_100023024(v1 + 26);
  sub_100023024(v1 + 25);
  *(v1 + 19) = off_10021CC50;
  *(v1 + 7) = off_10021CCA8;
  sub_100023024(v1 + 23);

  operator delete();
}

const void **sub_1000E62E0(void *a1)
{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 28) = off_10021CEE0;
  *(v1 + 9) = off_10021CF38;
  sub_100023A28(v1 + 38);
  *(v1 + 24) = off_10021CD98;
  *(v1 + 10) = off_10021CDF0;
  sub_100023024(v1 + 27);
  sub_100023024(v1 + 26);
  sub_100023024(v1 + 25);
  *(v1 + 19) = off_10021CC50;
  *(v1 + 7) = off_10021CCA8;

  return sub_100023024(v1 + 23);
}

void sub_1000E6408(void *a1)
{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 28) = off_10021CEE0;
  *(v1 + 9) = off_10021CF38;
  sub_100023A28(v1 + 38);
  *(v1 + 24) = off_10021CD98;
  *(v1 + 10) = off_10021CDF0;
  sub_100023024(v1 + 27);
  sub_100023024(v1 + 26);
  sub_100023024(v1 + 25);
  *(v1 + 19) = off_10021CC50;
  *(v1 + 7) = off_10021CCA8;
  sub_100023024(v1 + 23);

  operator delete();
}

const void **sub_1000E6570(void *a1)
{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 28) = off_10021CEE0;
  *(v1 + 9) = off_10021CF38;
  sub_100023A28(v1 + 38);
  *(v1 + 24) = off_10021CD98;
  *(v1 + 10) = off_10021CDF0;
  sub_100023024(v1 + 27);
  sub_100023024(v1 + 26);
  sub_100023024(v1 + 25);
  *(v1 + 19) = off_10021CC50;
  *(v1 + 7) = off_10021CCA8;

  return sub_100023024(v1 + 23);
}

void sub_1000E6698(void *a1)
{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 28) = off_10021CEE0;
  *(v1 + 9) = off_10021CF38;
  sub_100023A28(v1 + 38);
  *(v1 + 24) = off_10021CD98;
  *(v1 + 10) = off_10021CDF0;
  sub_100023024(v1 + 27);
  sub_100023024(v1 + 26);
  sub_100023024(v1 + 25);
  *(v1 + 19) = off_10021CC50;
  *(v1 + 7) = off_10021CCA8;
  sub_100023024(v1 + 23);

  operator delete();
}

const void **sub_1000E6800(void *a1)
{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 28) = off_10021CEE0;
  *(v1 + 9) = off_10021CF38;
  sub_100023A28(v1 + 38);
  *(v1 + 24) = off_10021CD98;
  *(v1 + 10) = off_10021CDF0;
  sub_100023024(v1 + 27);
  sub_100023024(v1 + 26);
  sub_100023024(v1 + 25);
  *(v1 + 19) = off_10021CC50;
  *(v1 + 7) = off_10021CCA8;

  return sub_100023024(v1 + 23);
}

void sub_1000E6928(void *a1)
{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 28) = off_10021CEE0;
  *(v1 + 9) = off_10021CF38;
  sub_100023A28(v1 + 38);
  *(v1 + 24) = off_10021CD98;
  *(v1 + 10) = off_10021CDF0;
  sub_100023024(v1 + 27);
  sub_100023024(v1 + 26);
  sub_100023024(v1 + 25);
  *(v1 + 19) = off_10021CC50;
  *(v1 + 7) = off_10021CCA8;
  sub_100023024(v1 + 23);

  operator delete();
}

uint64_t sub_1000E6A90(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (a2 != 1)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v5 = sub_100001860(exception, "ASIF: invalid dir index to header", 0x16u);
    }

    v2 = 24;
  }

  else
  {
    v2 = 16;
  }

  return a1 + v2;
}

void sub_1000E6AF0(void *a1)
{
  *a1 = off_10021D0C0;
  v1 = a1[3];
  if (v1)
  {
    sub_10000367C(v1);
  }

  operator delete();
}

atomic_ullong *sub_1000E6B5C(atomic_ullong *a1)
{
  result = atomic_exchange(a1, 0);
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFFFFFFFFFFLL) == 1)
    {
      v2 = result[4];
      result[4] = -1;
      return sub_1000E6B88(result, v2, 1u);
    }
  }

  return result;
}

uint64_t sub_1000E6B88(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = a3;
  if ((*(a1 + 520) & 1) != 0 || (v6 = atomic_load((a1 + 24)), v6 != 2))
  {
    v7 = (a3 >> 1) & 2;
  }

  else
  {
    v7 = (a3 >> 1) & 2;
    if (sub_1000E6D74(a1))
    {
      if ((v3 & 2) == 0)
      {
        if (v3)
        {
          sub_1000E6F30(a1 + 408, a1, a2, v7 | 1);
        }

        return 0;
      }

      *&v10 = "ref::details::ctrl_blk<di_asif::details::table, unsigned long long>::reset_val(tag_t, details::reset_val_option_set) [T = di_asif::details::table, tag_t = unsigned long long]";
      *(&v10 + 1) = 78;
      v11 = 16;
      sub_1000E6DC4(v12, &v10);
      sub_1000026BC(v13, "Got error when trying to close ", 31);
      std::ostream::operator<<();
      sub_1000026BC(v13, " with ret ", 10);
      std::ostream::operator<<();
      sub_1000026BC(v13, ", Force closing.", 16);
      std::ostream::~ostream();
      sub_1000E7058(v12);
      std::ios::~ios();
    }
  }

  atomic_store(0, (a1 + 24));
  if (*(a1 + 400) == 1)
  {
    std::mutex::~mutex((a1 + 320));
    sub_100069604((a1 + 272));
    std::mutex::~mutex((a1 + 208));
    std::mutex::~mutex((a1 + 144));
    v9 = *(a1 + 112);
    if (v9)
    {
      *(a1 + 120) = v9;
      operator delete(v9);
    }

    sub_1000E7874((a1 + 56), 0);
    sub_1000E78F8(a1 + 64);
    *(a1 + 400) = 0;
  }

  sub_1000E6F30(a1 + 408, a1, a2, v7);
  std::__cxx_atomic_notify_all((a1 + 24));
  return 1;
}

void sub_1000E6D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000E6EEC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E6D74(uint64_t a1)
{
  if (*(a1 + 400) != 1)
  {
    return 0;
  }

  v1 = *(a1 + 496);
  if (v1)
  {
    return (*(*v1 + 48))(*(a1 + 496), a1 + 40);
  }

  else
  {
    return sub_1000F1FA4(a1 + 40);
  }
}

void *sub_1000E6DC4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000E6F90(a1, a2);
  *a1 = off_10021D120;
  a1[45] = &off_10021D220;
  a1[46] = &off_10021D248;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021D120;
  a1[45] = off_10021D1A8;
  a1[46] = off_10021D1D0;
  return a1;
}

void sub_1000E6EC8(_Unwind_Exception *a1)
{
  sub_1000E7058(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000E6EEC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000E7058(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000E6F30(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = a4;
  v6 = a3;
  v7 = a2;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_10002870C();
  }

  return (*(*v4 + 48))(v4, &v7, &v6, &v8);
}

uint64_t sub_1000E6F90(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021D2B8;
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

void sub_1000E7040(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E7058(uint64_t a1)
{
  *a1 = off_10021D2B8;
  sub_1000E7498(a1);
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

void sub_1000E71C4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000E7058(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000E722C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000E7268(_BYTE *a1, int a2)
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

uint64_t sub_1000E72D4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000E7058(v1);

  return std::ios::~ios();
}

void sub_1000E7320(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000E7058(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000E7384(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000E7058(v1);

  return std::ios::~ios();
}

void sub_1000E73E4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000E7058(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000E7460(uint64_t a1)
{
  sub_1000E7058(a1);

  operator delete();
}

uint64_t sub_1000E7498(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v10 >= 1)
      {
        v5 = sub_1000034C8(a1 + 104);
        if (v6 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_100002A60();
        }

        v7 = v6;
        if (v6 >= 0x17)
        {
          operator new();
        }

        v9 = v6;
        if (v6)
        {
          memmove(__p, v5, v6);
        }

        *(__p + v7) = 0;
        sub_1000E7690((a1 + 72), __p);
        if (v9 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        v9 = 0;
        LOBYTE(__p[0]) = 0;
        sub_100003514(a1 + 104, __p);
        if (v9 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1000E7668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_1000E7690(uint64_t *a1, uint64_t *a2)
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
    v21 = 210;
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
      v21 = 210;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t *sub_1000E7874(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return sub_1000E78A4((result + 1), v3);
  }

  return result;
}

uint64_t sub_1000E78A4(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_10002870C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_1000E78F8(uint64_t a1)
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

atomic_ullong *sub_1000E7978(atomic_ullong *a1)
{
  result = atomic_exchange(a1, 0);
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFFFFFFFFFFLL) == 1)
    {
      v2 = result[4];
      result[4] = -1;
      return sub_1000E79A4(result, v2, 1u);
    }
  }

  return result;
}

uint64_t sub_1000E79A4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = a3;
  if ((*(a1 + 344) & 1) == 0 && (v6 = atomic_load((a1 + 24)), v6 == 2) && *(a1 + 224) == 1 && (v7 = *(a1 + 320)) != 0)
  {
    v8 = (a3 >> 1) & 2;
    if ((*(*v7 + 48))(v7, a1 + 40))
    {
      if ((v3 & 2) == 0)
      {
        if (v3)
        {
          sub_1000E7BB8(a1 + 232, a1, a2, v8 | 1);
        }

        return 0;
      }

      *&v10 = "ref::details::ctrl_blk<di_asif::details::map_element, unsigned long long>::reset_val(tag_t, details::reset_val_option_set) [T = di_asif::details::map_element, tag_t = unsigned long long]";
      *(&v10 + 1) = 84;
      v11 = 16;
      sub_1000E6DC4(v12, &v10);
      sub_1000026BC(v13, "Got error when trying to close ", 31);
      std::ostream::operator<<();
      sub_1000026BC(v13, " with ret ", 10);
      std::ostream::operator<<();
      sub_1000026BC(v13, ", Force closing.", 16);
      std::ostream::~ostream();
      sub_1000E7058(v12);
      std::ios::~ios();
    }
  }

  else
  {
    v8 = (a3 >> 1) & 2;
  }

  atomic_store(0, (a1 + 24));
  if (*(a1 + 224) == 1)
  {
    std::mutex::~mutex((a1 + 160));
    *(a1 + 72) = off_100210120;
    sub_100087F1C((a1 + 96), 0);
    sub_1000880A8(a1 + 104);
    *(a1 + 224) = 0;
  }

  sub_1000E7BB8(a1 + 232, a1, a2, v8);
  std::__cxx_atomic_notify_all((a1 + 24));
  return 1;
}

void sub_1000E7BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000E6EEC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E7BB8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = a4;
  v6 = a3;
  v7 = a2;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_10002870C();
  }

  return (*(*v4 + 48))(v4, &v7, &v6, &v8);
}

BOOL sub_1000E7C18()
{
  v0 = open("/dev/tty", 2);
  v1 = v0;
  if (v0 != -1)
  {
    close(v0);
  }

  return v1 != -1;
}

const std::error_category *sub_1000E7CB4@<X0>(void *a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1[4];
  v5 = a1[1];
  v6 = a1[2];
  v7 = (v5 + 8 * (v4 >> 8));
  if (v6 == v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = *v7 + 16 * v4;
  }

  v9 = a1[5] + v4;
  v10 = v9 >> 8;
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  v14 = a2[3];
LABEL_5:
  result = v8;
  while (1)
  {
    v16 = v6 == v5 ? 0 : *(v5 + 8 * v10) + 16 * v9;
    if (result == v16 || LODWORD(result->__vftable) == v11 && HIDWORD(result->__vftable) == v12 && LODWORD(result[1].__vftable) == v13 && HIDWORD(result[1].__vftable) == v14)
    {
      break;
    }

    result += 2;
    v8 += 16;
    if (*v7 + 4096 == v8)
    {
      v17 = v7[1];
      ++v7;
      v8 = v17;
      goto LABEL_5;
    }
  }

  if (v6 == v5)
  {
    v18 = 0;
  }

  else
  {
    v18 = *(v5 + 8 * v10) + 16 * v9;
  }

  if (result == v18)
  {
    result = std::generic_category();
    v19 = 0;
    *(a3 + 8) = result;
    v8 = 22;
  }

  else
  {
    v19 = 1;
  }

  *a3 = v8;
  *(a3 + 16) = v19;
  return result;
}

const std::error_category *sub_1000E7DC8@<X0>(const std::error_category *result@<X0>, uint64_t a2@<X8>)
{
  if (HIDWORD(result->__vftable))
  {
    goto LABEL_2;
  }

  v4 = result[1].__vftable;
  if (!v4)
  {
    goto LABEL_2;
  }

  v5 = HIDWORD(result[1].__vftable);
  v6 = result->__vftable;
  if (v4 != v5 && v6 != 3)
  {
    goto LABEL_2;
  }

  if (v6 > 1)
  {
    if (v6 == 2)
    {
      if ((v4 | 2) != 3)
      {
        goto LABEL_2;
      }

      v8 = 2;
    }

    else
    {
      if (v6 != 3 || v4 != 3 || v5)
      {
        goto LABEL_2;
      }

      v8 = 3;
    }

    *a2 = v8;
LABEL_24:
    v3 = 1;
    goto LABEL_3;
  }

  if (!v6)
  {
    *a2 = 0;
    goto LABEL_24;
  }

  if (v6 == 1 && (v4 | 2) == 3)
  {
    v3 = 1;
    *a2 = 1;
    goto LABEL_3;
  }

LABEL_2:
  result = std::generic_category();
  v3 = 0;
  *a2 = 45;
  *(a2 + 8) = result;
LABEL_3:
  *(a2 + 16) = v3;
  return result;
}

__n128 sub_1000E7E94@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  sub_1000E7CB4(a1, *a2, v18);
  if ((v19 & 1) == 0)
  {
    v12 = sub_10005034C(v18);
LABEL_12:
    result = *v12;
    *a4 = *v12;
    *(a4 + 56) = 0;
    return result;
  }

  v7 = v18[0];
  sub_1000E7DC8(v18[0], v16);
  if ((v17 & 1) == 0)
  {
    v12 = sub_10005034C(v16);
    goto LABEL_12;
  }

  v8 = HIDWORD(v7[1].__vftable);
  if ((LODWORD(v7[1].__vftable) - 1) >= 3)
  {
    v9 = 0;
  }

  else
  {
    v9 = 8 * (LODWORD(v7[1].__vftable) - 1) + 16;
  }

  *&v14 = a2 + 8;
  *(&v14 + 1) = v9;
  if ((v8 - 1) >= 3)
  {
    v10 = 0;
  }

  else
  {
    v10 = 8 * (v8 - 1) + 16;
  }

  v13.n128_u64[0] = a2 + 8 + v9;
  v13.n128_u64[1] = v10;
  sub_10008A308(v15, v16[0], &v14, &v13, a3, *(a2 + 72) * a3);
  result.n128_u64[0] = sub_10008A2D0(a4, v15).n128_u64[0];
  *(a4 + 56) = 1;
  return result;
}

uint64_t sub_1000E7F90(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1 % (*(a1 + 56) + 1);
  result = v1 - v2;
  if (v1 == v2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v5 = sub_100001860(exception, "Invalid chunk size", 0xFFFFFFEA);
  }

  return result;
}

unint64_t sub_1000E7FF0(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1[7];
  v3 = v2 * *v1;
  v4 = a1[5];
  v5 = v3 + v4;
  v6 = v1[1] * v2;
  if (v4 >= v6)
  {
    v4 = 0;
    a1[5] = 0;
    v7 = *a1;
    v8 = a1[1];
    if (v8 > (v1 - *a1) >> 4)
    {
      a1[2] = (v1 + 2);
      if (v8 == (v1 - v7 + 16) >> 4)
      {
        return 0;
      }

      v3 = v1[2] * v2;
      if (v3 >= a1[9])
      {
        return 0;
      }

      v4 = 0;
      v6 = v1[3] * v2;
      v5 = v1[2] * v2;
    }
  }

  v9 = a1[9] - v3;
  if (v9 >= v6)
  {
    v9 = v6;
  }

  if (a1[6] + v5 / a1[6] * a1[6] - v5 < v9 - v4)
  {
    v10 = a1[6] + v5 / a1[6] * a1[6] - v5;
  }

  return v5 / v2;
}

uint64_t *sub_1000E80AC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8)
{
  *a1 = a2;
  a1[1] = a3;
  a1[5] = 0;
  a1[6] = a4;
  a1[7] = a5;
  a1[8] = a6;
  v9 = (a2 + 16 * a8);
  a1[9] = a7;
  if (a8 == a3)
  {
LABEL_6:
    a1[2] = v9;
  }

  else
  {
    v10 = 16 * a3 - 16 * a8;
    while (1)
    {
      v11 = *v9;
      if ((v9[1] + *v9) * a5 >= a6)
      {
        break;
      }

      v9 += 2;
      v10 -= 16;
      if (!v10)
      {
        v9 = (a2 + 16 * a3);
        goto LABEL_6;
      }
    }

    a1[2] = v9;
    v13 = v11 * a5;
    if (v11 * a5 < a7)
    {
      v14 = a6 >= v13;
      v15 = a6 - v13;
      if (v15 != 0 && v14)
      {
        a1[5] = v15;
      }

      a1[3] = sub_1000E7FF0(a1);
      a1[4] = v16;
    }
  }

  return a1;
}

uint64_t sub_1000E814C(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  sub_1000FFF2C(&v4, a1, *(v2 + 56) + (*(v2 + 56) + 1) * ((a2 / *(v2 + 26) - *(a1 + 352) / *(v2 + 26)) / (*(v2 + 56) * (*(v2 + 28) / *(v2 + 26)))));
  return v4;
}

uint64_t sub_1000E81BC(uint64_t a1)
{
  v2 = *a1;
  v3 = *(v2 + 8);
  v4 = *(a1 + 8) + *(v3 + 26) * (*(v3 + 28) / *(v3 + 26)) * *(v3 + 56);
  *(a1 + 8) = v4;
  if (v4 >= *(v2 + 352) + *(v3 + 88))
  {
    v7 = 0;
    v6 = 0;
    v8 = 0;
  }

  else
  {
    v5 = sub_1000E814C(v2, v4);
    v6 = v5 & 0xFFFFFFFFFFFFFF00;
    v7 = v5;
    v8 = 1;
  }

  if (*(a1 + 32) == v8)
  {
    if (*(a1 + 32))
    {
      *(a1 + 24) = v4;
    }
  }

  else if (*(a1 + 32))
  {
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 16) = v6 | v7;
    *(a1 + 24) = v4;
    *(a1 + 32) = 1;
  }

  return a1;
}

uint64_t sub_1000E8270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = *(a1 + 32);
  return sub_1000E81BC(a1);
}

uint64_t sub_1000E8284(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 26);
  sub_1000FFEB4(&v5, a1, ((a2 / v3 - *(a1 + 352) / v3) / (*(v2 + 28) / v3) + (a2 / v3 - *(a1 + 352) / v3) / (*(v2 + 28) / v3) * *(v2 + 56)) / *(v2 + 56));
  return v5;
}

uint64_t sub_1000E82E4(uint64_t a1)
{
  v2 = *a1;
  v3 = *(v2 + 8);
  v4 = *(a1 + 8) + *(v3 + 28);
  *(a1 + 8) = v4;
  if (v4 >= *(v2 + 352) + *(v3 + 88))
  {
    v7 = 0;
    v6 = 0;
    v8 = 0;
  }

  else
  {
    v5 = sub_1000E8284(v2, v4);
    v6 = v5 & 0xFFFFFFFFFFFFFF00;
    v7 = v5;
    v8 = 1;
  }

  if (*(a1 + 32) == v8)
  {
    if (*(a1 + 32))
    {
      *(a1 + 24) = v4;
    }
  }

  else if (*(a1 + 32))
  {
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 16) = v6 | v7;
    *(a1 + 24) = v4;
    *(a1 + 32) = 1;
  }

  return a1;
}

uint64_t sub_1000E8388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = *(a1 + 32);
  return sub_1000E82E4(a1);
}

void sub_1000E839C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  *a1 = 0;
  *(a1 + 8) = a2;
  sub_10011835C((a1 + 16), *(a2 + 64), a6);
  sub_1000FE790((a1 + 72), *(a2 + 72));
  *(a1 + 104) = 850045863;
  *(a1 + 96) = 0;
  *(a1 + 101) = 1;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 168) = 850045863;
  *(a1 + 160) = 0;
  *(a1 + 280) = 850045863;
  *(a1 + 272) = 0;
  *(a1 + 256) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0;
  *(a1 + 344) = a4;
  *(a1 + 352) = a5;
  if (a4)
  {
    if (a4 % *(a2 + 28))
    {
      exception = __cxa_allocate_exception(0x40uLL);
      *exception = &off_100233158;
      v12 = std::generic_category();
      exception[1] = 4294967274;
      exception[2] = v12;
      *(exception + 24) = 0;
      *(exception + 48) = 0;
      exception[7] = "ASIF: table is not aligned to chunk size";
    }
  }

  v10 = *(a2 + 28);
  operator new[]();
}

void sub_1000E8920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    sub_10000367C(a20);
  }

  operator delete[]();
}

uint64_t sub_1000E895C(uint64_t result, unint64_t a2)
{
  v2 = *(result + 80);
  v3 = v2;
  atomic_compare_exchange_strong_explicit((result + 80), &v3, &_mh_execute_header + (v2 & 0xFFFFFFFF00000000 | (v2 + 1)), memory_order_relaxed, memory_order_relaxed);
  if (v3 != v2)
  {
    v4 = v3;
    do
    {
      atomic_compare_exchange_strong_explicit((result + 80), &v4, &_mh_execute_header + (v3 & 0xFFFFFFFF00000000 | (v3 + 1)), memory_order_relaxed, memory_order_relaxed);
      v5 = v4 == v3;
      v3 = v4;
    }

    while (!v5);
  }

  atomic_fetch_add_explicit((result + 152), a2, memory_order_relaxed);
  v6 = *(result + 80);
  v7 = v6;
  atomic_compare_exchange_strong_explicit((result + 80), &v7, (v6 & 0xFFFFFFFF00000000 | (v6 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
  if (v7 != v6)
  {
    v8 = v7;
    do
    {
      atomic_compare_exchange_strong_explicit((result + 80), &v8, (v7 & 0xFFFFFFFF00000000 | (v7 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
      v5 = v8 == v7;
      v7 = v8;
    }

    while (!v5);
  }

  return result;
}

void sub_1000E8A0C(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a2)
  {
    std::mutex::lock((a1 + 280));
    sub_1000E8A78(a1 + 232, &v3);
    atomic_store(1u, (a1 + 96));
    std::mutex::unlock((a1 + 280));
  }
}

uint64_t sub_1000E8A78(uint64_t a1, void *a2)
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
    sub_10011877C(a1);
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

uint64_t sub_1000E8B2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 352);
  v6 = *(*(a1 + 8) + 88) + v5;
  if (v5 >= v6)
  {
    v8 = 0;
    result = 0;
  }

  else
  {
    result = sub_1000E814C(a1, *(a1 + 352));
    v6 = *(*(a1 + 8) + 88) + *(a1 + 352);
    v8 = 1;
  }

  *a3 = a1;
  *(a3 + 8) = v5;
  *(a3 + 16) = result;
  *(a3 + 24) = a2;
  *(a3 + 32) = v8;
  *(a3 + 40) = a1;
  *(a3 + 48) = v6;
  *(a3 + 56) = 0;
  *(a3 + 72) = 0;
  return result;
}

uint64_t sub_1000E8BB4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = atomic_load((*(*a3 + 56) + 16 * a3[1] + 8));
  if (v3 >> 62 != 3)
  {
    return 0;
  }

  sub_1000F2424(*(*a3 + 56) + 16 * a3[1], 0, v50);
  if ((v50[16] & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    *exception = &off_100233158;
    v48 = std::generic_category();
    exception[1] = 4294967291;
    exception[2] = v48;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = "Can't take exclusive lock on entry";
  }

  v7 = atomic_load((*(*a3 + 56) + 16 * a3[1] + 8));
  if (v7 >> 62 != 3)
  {
    v9 = 0;
    v10 = 0;
    v12 = 1;
    v11 = 1;
    goto LABEL_54;
  }

  v8 = *(*a3 + 8);
  sub_1000E90C8(a1, a2, (*(*a3 + 352) + (*(v8 + 56) + *(v8 + 56) * a3[1]) / (*(v8 + 56) + 1) * *(v8 + 28)) / *(v8 + 26), 0, &v49);
  if (!v49 || (*(v49 + 344) & 1) != 0)
  {
    v9 = 0;
    v10 = 0;
    v11 = 1;
    v12 = 1;
    goto LABEL_53;
  }

  if (*(v49 + 224))
  {
    v14 = v49 + 40;
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_1000E9450(a3);
  v16 = sub_1000E93C0(v14, v15);
  v10 = v16;
  v17 = *(*a3 + 8);
  v18 = *(v17 + 56);
  v19 = *(v17 + 28);
  v20 = *(*a3 + 352) + (v18 + v18 * a3[1]) / (v18 + 1) * v19;
  v21 = v20 + v19;
  v22 = *(*(*(a1 + 8) + 32) + 216);
  if (v22 != 1 || v16 == 1)
  {
    if (v49)
    {
      if (*(v49 + 224))
      {
        v24 = (v49 + 40);
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }

    v25 = sub_1000E95A4(v24, a1, v10, v20, v21);
  }

  else
  {
    if (v49)
    {
      if (*(v49 + 224))
      {
        v23 = (v49 + 40);
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }

    v25 = sub_1000E94FC(v23, a1, 1u, v20, v21);
  }

  v26 = v25 == v21;
  if (v25 == v21)
  {
    v27 = a3[1];
    v28 = *(*a3 + 56);
    v29 = *(v28 + 16 * v27 + 8);
    v30 = *(*(*a3 + 8) + 28);
    v12 = (v10 & 0xFFFFFFFD) != 0;
    v31 = *(a1 + 8);
    v32 = *(v31 + 16);
    if (*(v32 + 160) == 1)
    {
      sub_1000E9654(v32, v10, *(v31 + 48));
      v27 = a3[1];
      v28 = *(*a3 + 56);
    }

    v9 = (v29 & 0x7FFFFFFFFFFFFFLL) * v30;
    v33 = (v28 + 16 * v27 + 8);
    v34 = *v33;
    v35 = *v33;
    atomic_compare_exchange_strong(v33, &v35, (v10 << 62) | *v33 & 0x3FFFFFFFFFFFFFFFLL);
    if (v35 != v34)
    {
      v36 = v35;
      do
      {
        atomic_compare_exchange_strong(v33, &v36, v35 & 0x3FFFFFFFFFFFFFFFLL | (v10 << 62));
        v37 = v36 == v35;
        v35 = v36;
      }

      while (!v37);
    }

    if (v10 == 1)
    {
      goto LABEL_52;
    }

    v38 = (*(*a3 + 56) + 16 * a3[1] + 8);
    if (!*(*(*a3 + 8) + 28))
    {
      v39 = *v38;
      v40 = *v38;
      atomic_compare_exchange_strong_explicit(v38, &v40, *v38 & 0xFF80000000000000, memory_order_relaxed, memory_order_relaxed);
      if (v40 != v39)
      {
        v41 = v40;
        do
        {
          atomic_compare_exchange_strong_explicit(v38, &v41, v40 & 0xFF80000000000000, memory_order_relaxed, memory_order_relaxed);
          v37 = v41 == v40;
          v40 = v41;
        }

        while (!v37);
      }

      v10 = 1;
      goto LABEL_52;
    }

LABEL_51:
    atomic_fetch_and_explicit(v38, 0xFF80000000000000, memory_order_relaxed);
    v10 = v26;
LABEL_52:
    v11 = 0;
    atomic_store(1u, (a1 + 96));
    goto LABEL_53;
  }

  v9 = 0;
  v11 = 0;
  v12 = 1;
  if (v10 == 1)
  {
    v10 = 0;
    goto LABEL_53;
  }

  v10 = 0;
  if ((v22 & 1) == 0)
  {
    if (v49)
    {
      if (*(v49 + 224))
      {
        v42 = (v49 + 40);
      }

      else
      {
        v42 = 0;
      }
    }

    else
    {
      v42 = 0;
    }

    if (sub_1000E94FC(v42, a1, 1u, *(*a3 + 352) + (*(*(*a3 + 8) + 56) + *(*(*a3 + 8) + 56) * a3[1]) / (*(*(*a3 + 8) + 56) + 1) * *(*(*a3 + 8) + 28), v21) != v21)
    {
      v11 = 0;
      v9 = 0;
      v10 = 0;
      goto LABEL_53;
    }

    v38 = (*(*a3 + 56) + 16 * a3[1] + 8);
    v43 = *(*(*a3 + 8) + 28);
    v9 = (*v38 & 0x7FFFFFFFFFFFFFLL) * v43;
    if (!v43)
    {
      v44 = *v38;
      v45 = *v38;
      atomic_compare_exchange_strong_explicit(v38, &v45, *v38 & 0xFF80000000000000, memory_order_relaxed, memory_order_relaxed);
      if (v45 != v44)
      {
        v46 = v45;
        do
        {
          atomic_compare_exchange_strong_explicit(v38, &v46, v45 & 0xFF80000000000000, memory_order_relaxed, memory_order_relaxed);
          v37 = v46 == v45;
          v45 = v46;
        }

        while (!v37);
      }

      v12 = 0;
      v10 = 0;
      goto LABEL_52;
    }

    v12 = 0;
    goto LABEL_51;
  }

LABEL_53:
  sub_1000E7978(&v49);
LABEL_54:
  sub_10019A264(v50);
  result = v10 & (v11 ^ 1);
  if ((v11 & 1) == 0 && !v12)
  {
    sub_1000E8A0C(a1, v9);
    return v10;
  }

  return result;
}

void sub_1000E9070(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  sub_1000E7978(va);
  sub_10019A264(va1);
  _Unwind_Resume(a1);
}

void sub_1000E90C8(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, unint64_t *a5@<X8>)
{
  v10 = (a3 - a1[44] / *(a1[1] + 26)) / (*(a1[1] + 56) * (*(a1[1] + 28) / *(a1[1] + 26)));
  v11 = sub_1000E972C(a1, v10);
  sub_1000E979C((a1[9] + 8 * v10), v11, a5);
  if (!*a5 || (*(*a5 + 344) & 1) != 0)
  {
    v12 = a1[1];
    v26 = *(v12 + 56) + (*(v12 + 56) + 1) * ((a3 - a1[44] / *(v12 + 26)) / (*(v12 + 56) * (*(v12 + 28) / *(v12 + 26))));
    sub_1000FFF2C(&v23, a1, v26);
    v13 = v23;
    v14 = v24;
    if (a4)
    {
      LOBYTE(v23) = 0;
      v25 = 0;
    }

    else
    {
      v15 = (*(v23 + 56) + 16 * v24);
      v16 = sub_100108E9C(v15);
      v21[0] = off_1002326B0;
      v21[1] = v15;
      v22 = v16;
      sub_10019A024(&v23, v21);
      v25 = 1;
      sub_10019A0BC(v21);
    }

    (*(*a1[1] + 32))(v21);
    sub_1000E9838(a5, v21);
    sub_1000E7978(v21);
    if (*a5)
    {
      if ((*(*a5 + 344) & 1) == 0)
      {
        if (!*a5 || (v17 = atomic_load((*a5 + 24)), v17 != 2))
        {
          v18 = atomic_load(a5);
          v21[0] = v18;
          atomic_store(atomic_exchange(v21, 0), (a1[9] + 8 * v10));
          v21[0] = (*(*(v13 + 56) + 16 * v14 + 8) & 0x7FFFFFFFFFFFFFLL) * *(*(v13 + 8) + 28);
          if (v21[0])
          {
            sub_1000E9878(a5, a2, a1, &v26, v21);
          }

          else
          {
            v20 = sub_1000E98DC(a1[1], a2, 1);
            v19 = 1;
            sub_1000E99DC(a5, a2, a1, &v26, &v20, &v19);
          }
        }
      }
    }

    if (v25 == 1)
    {
      sub_10019A0BC(&v23);
    }
  }
}

void sub_1000E933C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a17 == 1)
  {
    sub_10019A0BC(&a14);
  }

  sub_1000E7978(v17);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E93C0(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000B1EE8(a1 + 32, a2);
  if (sub_1000B1EE8(a1 + 32, a2 + 1))
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  result = v5 | v4;
  if (result == 3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v8 = sub_100001860(exception, "bitmap flag value invalid", 0xFFFFFFEA);
  }

  return result;
}

unint64_t sub_1000E9450(void *a1)
{
  v1 = *(*a1 + 352);
  v2 = *(*a1 + 8);
  v3 = *(v2 + 56);
  v4 = *(v2 + 28);
  v5 = (v3 + v3 * a1[1]) / (v3 + 1) * v4;
  v6 = *(v2 + 26);
  return ((2 * (((v5 - ((v5 + v1) / v6 - v1 / v6) / (v3 * (v4 / v6)) * v3 * v4) / v6) & 0x7FFFFFFF)) | (((v4 - v6 + v5 - ((v4 - v6 + v5 + v1) / v6 - v1 / v6) / (v3 * (v4 / v6)) * v3 * v4) / v6) << 33)) + 0x200000000;
}

unint64_t sub_1000E94FC(void *a1, uint64_t a2, unsigned int a3, unint64_t a4, uint64_t a5)
{
  v8 = sub_1000EDAB0(a2, a4, a5 - a4);
  v9 = HIDWORD(v8);
  if (v8 != HIDWORD(v8))
  {
    v11 = a3 & 1 | (((a3 >> 1) & 1) << 8);
    v9 = sub_1000B1BBC((a1 + 4), v8, v9, &v11);
  }

  return *(a2 + 352) + *a1 / (*(*(a2 + 8) + 56) + 1) * *(*(a2 + 8) + 56) * *(*(a2 + 8) + 28) + ((v9 * *(*(a2 + 8) + 26)) >> 1);
}

unint64_t sub_1000E95A4(void *a1, uint64_t a2, unsigned int a3, unint64_t a4, uint64_t a5)
{
  if (a5 != a4)
  {
    v8 = sub_1000EDAB0(a2, a4, a5 - a4);
    v9 = HIDWORD(v8);
    if (v8 != HIDWORD(v8))
    {
      v11 = a3 & 1 | (((a3 >> 1) & 1) << 8);
      v9 = sub_1000B1980((a1 + 4), v8, v9, &v11);
    }

    return *(a2 + 352) + *a1 / (*(*(a2 + 8) + 56) + 1) * *(*(a2 + 8) + 56) * *(*(a2 + 8) + 28) + ((v9 * *(*(a2 + 8) + 26)) >> 1);
  }

  return a4;
}

atomic_ullong *sub_1000E9654(atomic_ullong *a1, int a2, uint64_t a3)
{
  result = sub_1000ED99C(a1, 3, a2);
  v7 = a1 + 15;
  v8 = a1 + 17;
  if (a2 != 2)
  {
    v8 = a1 + 18;
  }

  if (a2)
  {
    v7 = a1 + 16;
  }

  if (a2 > 1)
  {
    v7 = v8;
  }

  atomic_fetch_add_explicit(v7, -a3, memory_order_relaxed);
  return result;
}

void *sub_1000E96C0(void *result, unint64_t a2)
{
  v2 = *(*(*result + 8) + 28);
  v3 = (*(*result + 56) + 16 * result[1] + 8);
  if (v2 <= a2)
  {
    v4 = a2 / v2;
    v5 = *v3;
    v6 = *v3;
    atomic_compare_exchange_strong_explicit(v3, &v6, *v3 & 0xFF80000000000000 | v4, memory_order_relaxed, memory_order_relaxed);
    if (v6 != v5)
    {
      v7 = v6;
      do
      {
        atomic_compare_exchange_strong_explicit(v3, &v7, v6 & 0xFF80000000000000 | v4, memory_order_relaxed, memory_order_relaxed);
        v8 = v7 == v6;
        v6 = v7;
      }

      while (!v8);
    }
  }

  else
  {
    atomic_fetch_and_explicit(v3, 0xFF80000000000000, memory_order_relaxed);
  }

  return result;
}

unint64_t sub_1000E972C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 72);
  if ((v3 & (v3 - 1)) != 0)
  {
    v4 = 0;
    v5 = 2 * v3;
    do
    {
      v5 >>= 1;
      ++v4;
    }

    while (v5 != 1);
    v3 = 1 << v4;
  }

  v6 = *(v2 + 88);
  if (v3 == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      v3 >>= 1;
      ++v7;
    }

    while (v3 != 1);
  }

  return ((*(a1 + 352) / v6) << v7) | a2;
}

unint64_t *sub_1000E979C@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = atomic_load(result);
  if (v4 && *(v4 + 32) == a2)
  {
    v6 = atomic_load(result);
    sub_100116FBC(&v8, v6, 1);
    if (v8 && (*(v8 + 344) & 1) == 0)
    {
      v7 = *(v8 + 32);
      *a3 = 0;
      if (v7 == a2)
      {
        atomic_store(atomic_exchange(&v8, 0), a3);
      }
    }

    else
    {
      *a3 = 0;
    }

    return sub_1000E7978(&v8);
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

atomic_ullong *sub_1000E9838(atomic_ullong *a1, atomic_ullong *a2)
{
  if (a2 != a1)
  {
    v3 = atomic_exchange(a2, 0);
    sub_1000E7978(a1);
    atomic_store(v3, a1);
  }

  return a1;
}

void sub_1000E98A0(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  if (*v1)
  {
    if (*(v2 + 288))
    {
      sub_10011934C(v2 + 264, v2);
    }
  }

  __cxa_rethrow();
}

uint64_t sub_1000E98DC(uint64_t a1, uint64_t a2, int a3)
{
  atomic_fetch_add((a1 + 8), 1uLL);
  v6 = (*(*a1 + 16))(a1);
  if (a3)
  {
    v7 = *(a1 + 28);
    v10[0] = off_10021D5F0;
    v10[1] = a2;
    v10[2] = v7;
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v8 = sub_1000FE844(v6, v10);
  sub_100118264(v10);
  return v8;
}

void sub_1000E99C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100118264(va);
  _Unwind_Resume(a1);
}

void sub_1000E9A04(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  if (*v1)
  {
    if (*(v2 + 288))
    {
      sub_10011934C(v2 + 264, v2);
    }
  }

  __cxa_rethrow();
}

uint64_t sub_1000E9A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(*(a3 + 56) + 16 * a4 + 8) & 0x7FFFFFFFFFFFFFLL) * *(*(a3 + 8) + 28))
  {
    return 0;
  }

  v8 = sub_1000E98DC(*(a1 + 8), a2, 0);
  if (v8)
  {
    v9 = *(a3 + 56) + 16 * a4;
    v10 = *(v9 + 8);
    if ((v10 & 0x7FFFFFFFFFFFFFLL) != 0)
    {
LABEL_7:
      sub_1000E9B08(*(a1 + 8), v8, a2);
    }

    else
    {
      v11 = (v9 + 8);
      v12 = v10;
      v13 = v8 / *(*(a3 + 8) + 28);
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v11, &v12, v10 & 0xFF80000000000000 | v13, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v10)
        {
          break;
        }

        v10 = v12;
        if ((v12 & 0x7FFFFFFFFFFFFFLL) != 0)
        {
          goto LABEL_7;
        }
      }
    }

    return 0;
  }

  return 4294967268;
}

uint64_t sub_1000E9B08(atomic_ullong *a1, unint64_t a2, uint64_t a3)
{
  v6 = (*(*a1 + 16))(a1);
  v8[0] = off_10021D680;
  v8[1] = a3;
  v8[3] = v8;
  sub_1000FEE2C(v6, a2, v8);
  result = sub_100118264(v8);
  atomic_fetch_add(a1 + 1, 0xFFFFFFFFFFFFFFFFLL);
  return result;
}

void sub_1000E9BD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100118264(va);
  _Unwind_Resume(a1);
}

atomic_ullong *sub_1000E9BE8(uint64_t a1, uint64_t a2, void *a3, unsigned int *a4, unsigned int a5, uint64_t a6)
{
  v11 = *(*a3 + 8);
  sub_1000E90C8(a1, a2, (*(*a3 + 352) + (*(v11 + 56) + *(v11 + 56) * a3[1]) / (*(v11 + 56) + 1) * *(v11 + 28)) / *(v11 + 26), 0, &v36);
  if (!v36 || (*(v36 + 344) & 1) != 0)
  {
    *&v39 = "di_asif::details::table::set_entry_bitmap_range(ContextASIF &, data_entry_t &, const bits_range_t &, data_entry_t::flags, std::optional<data_entry_t::flags>)";
    *(&v39 + 1) = 47;
    v40 = 16;
    sub_1000EA0DC(v41, &v39);
    sub_1000026BC(v42, "Can't load bitmap while setting range", 37);
    sub_1000EA204(v41);
    exception = __cxa_allocate_exception(0x40uLL);
    *exception = &off_100233158;
    v33 = std::generic_category();
    exception[1] = 5;
    exception[2] = v33;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = "Can't load bitmap while setting range";
  }

  v12 = (a4[1] - *a4) >> 1;
  if ((a6 & 0x100000000) != 0)
  {
    if (a6 == 3)
    {
      v13 = *(a1 + 8);
      v14 = *(v13 + 16);
      if ((*(v14 + 160) & 1) == 0)
      {
        goto LABEL_21;
      }

      if (*(v36 + 224))
      {
        v15 = v36 + 40;
      }

      else
      {
        v15 = 0;
      }

      v19 = *(v13 + 56);
      sub_1000EA32C(v15, *(a1 + 352) + v19 * *(v13 + 28) * (*(v36 + 40) / (v19 + 1)) + ((*(v13 + 26) * *a4) >> 1), *(a1 + 352) + v19 * *(v13 + 28) * (*(v36 + 40) / (v19 + 1)) + ((a4[1] * *(v13 + 26)) >> 1), a1, v41);
      sub_1000EA454(v14, v41);
      goto LABEL_20;
    }

    v16 = sub_1000E9450(a3);
    *&v41[0] = v16;
    v17 = *(*(a1 + 8) + 16);
    if (*(v17 + 160) == 1)
    {
      sub_1000EA248(v17, a6, ((HIDWORD(v16) - v16) >> 1) - v12);
    }

    if (v36)
    {
      if (*(v36 + 224))
      {
        v18 = v36 + 40;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }

    sub_1000EA2AC(v18, a1, v41, a6);
  }

  v14 = *(*(a1 + 8) + 16);
  if (*(v14 + 160))
  {
LABEL_20:
    LODWORD(v41[0]) = a5;
    *(&v41[0] + 1) = v12;
    sub_1000EA534(v14, v41);
  }

LABEL_21:
  if (v36)
  {
    if (*(v36 + 224))
    {
      v20 = v36 + 40;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  sub_1000EA2AC(v20, a1, a4, a5);
  result = sub_1000E7978(&v36);
  if ((a6 & 0x100000000) != 0 && a6 != 3)
  {
    v22 = *(*a3 + 8);
    v23 = *(a1 + 8);
    v24 = *(v23 + 56);
    sub_1000FFF2C(v41, a1, v24 + (v24 + 1) * (((*(*a3 + 352) + (*(v22 + 56) + *(v22 + 56) * a3[1]) / (*(v22 + 56) + 1) * *(v22 + 28)) / *(v22 + 26) - *(a1 + 352) / *(v23 + 26)) / (v24 * (*(v23 + 28) / *(v23 + 26)))));
    v38 = v41[0];
    v25 = (*(*&v41[0] + 56) + 16 * *(&v41[0] + 1));
    v26 = sub_100108E9C(v25);
    *&v39 = off_1002326B0;
    *(&v39 + 1) = v25;
    LOBYTE(v40) = v26;
    if ((v26 & 1) == 0)
    {
      *&v36 = "di_asif::details::table::set_entry_bitmap_range(ContextASIF &, data_entry_t &, const bits_range_t &, data_entry_t::flags, std::optional<data_entry_t::flags>)";
      *(&v36 + 1) = 47;
      v37 = 16;
      sub_1000EA614(v41, &v36);
      sub_1000026BC(v42, "Couldn't lock entry ", 20);
      sub_1000ECB94(v42, &v38);
      sub_1000EA73C(v41);
      v34 = __cxa_allocate_exception(0x40uLL);
      *v34 = &off_100233158;
      v35 = std::generic_category();
      v34[1] = 4294967282;
      v34[2] = v35;
      *(v34 + 24) = 0;
      *(v34 + 48) = 0;
      v34[7] = "Couldn't lock entry";
    }

    v27 = (*(*a3 + 56) + 16 * a3[1] + 8);
    v28 = *v27;
    v29 = *v27;
    atomic_compare_exchange_strong(v27, &v29, *v27 | 0xC000000000000000);
    if (v29 != v28)
    {
      v30 = v29;
      do
      {
        atomic_compare_exchange_strong(v27, &v30, v29 | 0xC000000000000000);
        v31 = v30 == v29;
        v29 = v30;
      }

      while (!v31);
    }

    atomic_store(1u, (a1 + 96));
    return sub_10019A0BC(&v39);
  }

  return result;
}

void sub_1000EA074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10019A0BC(va);
  _Unwind_Resume(a1);
}

void *sub_1000EA0DC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100118F64(a1, a2);
  *a1 = off_10021D708;
  a1[45] = &off_10021D808;
  a1[46] = &off_10021D830;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021D708;
  a1[45] = off_10021D790;
  a1[46] = off_10021D7B8;
  return a1;
}

void sub_1000EA1E0(_Unwind_Exception *a1)
{
  sub_1000FF21C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000EA204(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000FF21C(a1);
  std::ios::~ios();
  return a1;
}

atomic_ullong *sub_1000EA248(atomic_ullong *a1, int a2, unint64_t a3)
{
  result = sub_1000ED99C(a1, a2, 3);
  v7 = a1 + 15;
  v8 = a1 + 17;
  if (a2 != 2)
  {
    v8 = a1 + 18;
  }

  if (a2)
  {
    v7 = a1 + 16;
  }

  if (a2 > 1)
  {
    v7 = v8;
  }

  atomic_fetch_add_explicit(v7, a3, memory_order_relaxed);
  return result;
}

void *sub_1000EA2AC(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int a4)
{
  v6 = *a3;
  v7 = a3[1];
  LOWORD(v9[0]) = a4 & 1 | (((a4 >> 1) & 1) << 8);
  result = sub_1000B175C(a1 + 32, v6, v7, v9);
  if (result)
  {
    *(a1 + 113) = 1;
    result = sub_1000FFF2C(v9, a2, *a1);
    atomic_fetch_or((*(v9[0] + 56) + 16 * v9[1] + 8), 0x8000000000000000);
  }

  return result;
}

unint64_t sub_1000EA32C@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  *a5 = 0u;
  a5[1] = 0u;
  if (a2 < a3)
  {
    v7 = a2;
    v8 = result;
    v10 = a5 + 3;
    v11 = a5 + 1;
    v12 = a5 + 1;
    v13 = *(a4 + 8);
    v14 = *(v13 + 26);
    do
    {
      v15 = sub_1000E93C0(v8, 2 * ((v7 - (*(a4 + 352) + *(v13 + 56) * *(v13 + 28) * ((v7 / v14 - *(a4 + 352) / v14) / (*(v13 + 56) * (*(v13 + 28) / v14))))) / v14));
      result = sub_1000E95A4(v8, a4, v15, v7, a3);
      if (v15 > 1)
      {
        v16 = v11;
        if (v15 != 2)
        {
          v16 = v10;
        }
      }

      else
      {
        v16 = a5;
        if (v15)
        {
          v16 = v12;
        }
      }

      v13 = *(a4 + 8);
      v14 = *(v13 + 26);
      *v16 += (result - v7) / v14;
      v7 = result;
    }

    while (result < a3);
  }

  return result;
}

atomic_ullong *sub_1000EA454(atomic_ullong *result, void *a2)
{
  v2 = result[10];
  v3 = v2;
  atomic_compare_exchange_strong_explicit(result + 10, &v3, &_mh_execute_header + (v2 & 0xFFFFFFFF00000000 | (v2 + 1)), memory_order_relaxed, memory_order_relaxed);
  if (v3 != v2)
  {
    v4 = v3;
    do
    {
      atomic_compare_exchange_strong_explicit(result + 10, &v4, &_mh_execute_header + (v3 & 0xFFFFFFFF00000000 | (v3 + 1)), memory_order_relaxed, memory_order_relaxed);
      v5 = v4 == v3;
      v3 = v4;
    }

    while (!v5);
  }

  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  atomic_fetch_add_explicit(result + 15, -*a2, memory_order_relaxed);
  atomic_fetch_add_explicit(result + 16, -v6, memory_order_relaxed);
  atomic_fetch_add_explicit(result + 17, -v7, memory_order_relaxed);
  atomic_fetch_add_explicit(result + 18, -v8, memory_order_relaxed);
  v9 = result[10];
  v10 = v9;
  atomic_compare_exchange_strong_explicit(result + 10, &v10, (v9 & 0xFFFFFFFF00000000 | (v9 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
  if (v10 != v9)
  {
    v11 = v10;
    do
    {
      atomic_compare_exchange_strong_explicit(result + 10, &v11, (v10 & 0xFFFFFFFF00000000 | (v10 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
      v5 = v11 == v10;
      v10 = v11;
    }

    while (!v5);
  }

  return result;
}

atomic_ullong *sub_1000EA534(atomic_ullong *result, uint64_t a2)
{
  v2 = result[10];
  v3 = v2;
  atomic_compare_exchange_strong_explicit(result + 10, &v3, &_mh_execute_header + (v2 & 0xFFFFFFFF00000000 | (v2 + 1)), memory_order_relaxed, memory_order_relaxed);
  if (v3 != v2)
  {
    v4 = v3;
    do
    {
      atomic_compare_exchange_strong_explicit(result + 10, &v4, &_mh_execute_header + (v3 & 0xFFFFFFFF00000000 | (v3 + 1)), memory_order_relaxed, memory_order_relaxed);
      v5 = v4 == v3;
      v3 = v4;
    }

    while (!v5);
  }

  v6 = *a2;
  v7 = result + 15;
  v8 = result + 17;
  if (*a2 != 2)
  {
    v8 = result + 18;
  }

  if (v6)
  {
    v7 = result + 16;
  }

  if (v6 <= 1)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  atomic_fetch_add_explicit(v9, *(a2 + 8), memory_order_relaxed);
  v10 = result[10];
  v11 = v10;
  atomic_compare_exchange_strong_explicit(result + 10, &v11, (v10 & 0xFFFFFFFF00000000 | (v10 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
  if (v11 != v10)
  {
    v12 = v11;
    do
    {
      atomic_compare_exchange_strong_explicit(result + 10, &v12, (v11 & 0xFFFFFFFF00000000 | (v11 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
      v5 = v12 == v11;
      v11 = v12;
    }

    while (!v5);
  }

  return result;
}

void *sub_1000EA614(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10011902C(a1, a2);
  *a1 = off_10021D928;
  a1[45] = &off_10021DA28;
  a1[46] = &off_10021DA50;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021D928;
  a1[45] = off_10021D9B0;
  a1[46] = off_10021D9D8;
  return a1;
}

void sub_1000EA718(_Unwind_Exception *a1)
{
  sub_1000FF9B4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000EA73C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000FF9B4(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000EA780(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = sub_1000FFF2C(v13, a1, a2);
  v6 = *(*(v13[0] + 8) + 28);
  v7 = (*(v13[0] + 56) + 16 * v13[1] + 8);
  if (v6 <= a3)
  {
    v8 = a3 / v6;
    v9 = *v7;
    v10 = *v7;
    atomic_compare_exchange_strong_explicit(v7, &v10, *v7 & 0xFF80000000000000 | v8, memory_order_relaxed, memory_order_relaxed);
    if (v10 != v9)
    {
      v11 = v10;
      do
      {
        atomic_compare_exchange_strong_explicit(v7, &v11, v10 & 0xFF80000000000000 | v8, memory_order_relaxed, memory_order_relaxed);
        v12 = v11 == v10;
        v10 = v11;
      }

      while (!v12);
    }
  }

  else
  {
    atomic_fetch_and_explicit(v7, 0xFF80000000000000, memory_order_relaxed);
  }

  atomic_store(1u, (a1 + 96));
  return result;
}

__n128 sub_1000EA830@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_1000E80AC(v15, a1, a2, a3, a4, a5, a6, 0);
  sub_1000E80AC((a7 + 80), a1, a2, a3, a4, a6, a6, 0);
  v13 = v15[3];
  *(a7 + 32) = v15[2];
  *(a7 + 48) = v13;
  *(a7 + 64) = v15[4];
  result = v15[1];
  *a7 = v15[0];
  *(a7 + 16) = result;
  return result;
}

void sub_1000EA8DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v19[0] = off_10021D0C0;
  v19[1] = v3;
  (*(**(v3 + 16) + 80))(&v20);
  if (*(a1 + 24))
  {
    goto LABEL_46;
  }

  do
  {
    __lk.__m_ = (a1 + 3688);
    __lk.__owns_ = 1;
    std::mutex::lock((a1 + 3688));
    if ((*(a1 + 24) & 1) == 0)
    {
      do
      {
        if (*(a1 + 3680))
        {
          break;
        }

        std::condition_variable::wait((a1 + 3632), &__lk);
      }

      while (*(a1 + 24) != 1);
    }

    v4.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 2000000000;
    while ((*(a1 + 24) & 1) == 0 && v4.__d_.__rep_ > std::chrono::steady_clock::now().__d_.__rep_)
    {
      v5.__d_.__rep_ = v4.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
      if (v5.__d_.__rep_ >= 1)
      {
        std::chrono::steady_clock::now();
        v6.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
        if (v6.__d_.__rep_)
        {
          if (v6.__d_.__rep_ < 1)
          {
            if (v6.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
            {
              goto LABEL_16;
            }

            v7 = 0x8000000000000000;
          }

          else
          {
            if (v6.__d_.__rep_ > 0x20C49BA5E353F7)
            {
              v7 = 0x7FFFFFFFFFFFFFFFLL;
              goto LABEL_17;
            }

LABEL_16:
            v7 = 1000 * v6.__d_.__rep_;
LABEL_17:
            if (v7 > (v5.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
            {
              v8.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_20:
              std::condition_variable::__do_timed_wait((a1 + 3632), &__lk, v8);
              std::chrono::steady_clock::now();
              goto LABEL_21;
            }
          }
        }

        else
        {
          v7 = 0;
        }

        v8.__d_.__rep_ = v7 + v5.__d_.__rep_;
        goto LABEL_20;
      }

LABEL_21:
      if (std::chrono::steady_clock::now().__d_.__rep_ >= v4.__d_.__rep_)
      {
        break;
      }
    }

    *(a1 + 3680) = 0;
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }

    if (*(a1 + 168) != *(a1 + 160))
    {
      v9 = 0;
      v10 = 0;
      do
      {
        if (*(a1 + 24) == 1)
        {
          break;
        }

        if (!sub_1000EAE44(a1, v19, v9))
        {
          ++v10;
        }

        sub_1000EB1E4(a1, v19, v9, 0, 1, &__lk);
        if (__lk.__m_ && (__lk.__m_[8].__m_.__opaque[0] & 1) == 0)
        {
          if (__lk.__m_[6].__m_.__opaque[8])
          {
            v11 = &__lk.__m_->__m_.__opaque[32];
          }

          else
          {
            v11 = 0;
          }

          v10 += sub_1000EB2DC(v11, v19);
        }

        sub_1000E6B5C(&__lk);
        ++v9;
      }

      while (v9 < (*(a1 + 168) - *(a1 + 160)) >> 3);
      if (v10)
      {
        if ((*(*v20 + 16))(v20, 0))
        {
          *&v15 = "di_asif::details::dir::defrag(std::function<int (ContextASIF &)>)";
          *(&v15 + 1) = 48;
          v16 = 16;
          sub_1000EB680(&__lk, &v15);
          sub_1000026BC(v18, "Barrier failed after defrag, error ", 35);
          std::ostream::operator<<();
          std::ostream::~ostream();
          sub_1001009BC(&__lk);
          std::ios::~ios();
          sub_1000EB7EC(v19);
        }

        if (*(*(a1 + 16) + 160) == 1)
        {
          v12 = *(a1 + 32);
          if (*(v12 + 496) == 1)
          {
            sub_1000FC524(v12 + 400);
          }
        }

        v13 = *(a2 + 24);
        if (!v13)
        {
          sub_10002870C();
        }

        if ((*(*v13 + 48))(v13, v19))
        {
          *&v15 = "di_asif::details::dir::defrag(std::function<int (ContextASIF &)>)";
          *(&v15 + 1) = 48;
          v16 = 16;
          sub_1000EB8C4(&__lk, &v15);
          sub_1000026BC(v18, "Flush failed after defrag, ignoring. Error ", 43);
          std::ostream::operator<<();
          std::ostream::~ostream();
          sub_100101154(&__lk);
          std::ios::~ios();
        }
      }
    }
  }

  while (*(a1 + 24) != 1);
LABEL_46:
  v19[0] = off_10021D0C0;
  if (v21)
  {
    sub_10000367C(v21);
  }
}

void sub_1000EAD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1000EB63C(va);
  __cxa_end_catch();
  JUMPOUT(0x1000EADC8);
}

void sub_1000EADA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1000EB7A8(va);
  JUMPOUT(0x1000EADC8);
}

void sub_1000EADB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1000EB9EC(va);
  JUMPOUT(0x1000EADC8);
}

void sub_1000EADC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(v12 - 120) = a12;
  v14 = *(v12 - 96);
  if (v14)
  {
    sub_10000367C(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000EADE8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 32);
  *a2 = off_10021D0C0;
  a2[1] = v2;
  return (*(**(v2 + 16) + 80))(*(v2 + 16));
}

uint64_t sub_1000EAE44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = atomic_load((a1 + 8));
  v4 = *(a1 + 28);
  v5 = *(*(a1 + 160) + 8 * a3) * v4;
  v23 = v5;
  if (!v5 || 3 * v5 <= 4 * v3 * v4)
  {
    return 4294967274;
  }

  v9 = (*(a1 + 136) + 8 * a3);
  sub_1000F3964(v9, a3, &v22);
  if (v22 && (*(v22 + 520) & 1) == 0)
  {
    if (*(v22 + 464))
    {
      sub_10011D8C8(v22 + 440, v22);
    }

    sub_1000F3964(v9, a3, &v24);
    sub_1000F385C(&v22, &v24);
    sub_1000E6B5C(&v24);
    if (v22)
    {
      if ((*(v22 + 520) & 1) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  sub_1000F35E0(a1 + 288, a3, 1, &v24);
  sub_1000F385C(&v22, &v24);
  sub_1000E6B5C(&v24);
  if (v22)
  {
    if ((*(v22 + 520) & 1) == 0)
    {
      v10 = atomic_load((v22 + 24));
      if (v10 != 2)
      {
        v13 = *(a1 + 28);
        if (v13)
        {
          v14 = malloc_type_valloc(v13, 0x8B7C732DuLL);
          if (!v14)
          {
            exception = __cxa_allocate_exception(8uLL);
            v16 = std::bad_alloc::bad_alloc(exception);
          }
        }

        else
        {
          v14 = 0;
        }

        v26[0] = off_10021E1A0;
        v26[3] = v26;
        v24 = v14;
        sub_1000DF1F8(v25, v26);
        sub_1000298F0(v26);
        v17 = *(a1 + 28);
        v18 = (*(**(a2 + 16) + 40))(*(a2 + 16));
        if (v18 - v23 >= v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = v18 - v23;
        }

        v11 = sub_1000EBCA0(a1, a2, v24, v19, v23);
        v21 = v20;
        if (v22 && *(v22 + 464))
        {
          sub_10011D8C8(v22 + 440, v22);
        }

        if ((v11 & 0x8000000000000000) == 0)
        {
          (*(*a1 + 40))(a1, *(a1 + 88) * a3, v21);
          std::mutex::lock((a1 + 3800));
          sub_1000E8A78(a1 + 3752, &v23);
          atomic_store(1u, (a1 + 3600));
          std::mutex::unlock((a1 + 3800));
          v11 = 0;
        }

        sub_10002986C(&v24, 0);
        sub_1000298F0(v25);
        goto LABEL_16;
      }
    }
  }

  if (v22 && (*(v22 + 520) & 1) == 0)
  {
LABEL_14:
    (*(*a1 + 24))(a1);
  }

  v11 = 4294967248;
LABEL_16:
  sub_1000E6B5C(&v22);
  return v11;
}

void sub_1000EB168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, atomic_ullong a9, uint64_t a10, uint64_t a11)
{
  std::mutex::unlock((v11 + 3800));
  sub_10002986C(&a11, 0);
  sub_1000298F0(v12 + 8);
  sub_1000E6B5C(&a9);
  _Unwind_Resume(a1);
}

void *sub_1000EB1E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, char a5@<W4>, unint64_t *a6@<X8>)
{
  result = sub_1000F3964((*(a1 + 136) + 8 * a3), a3, a6);
  if (!*a6 || (*(*a6 + 520) & 1) != 0)
  {
    sub_1000F3458(a1, a2, a3, *(*(a1 + 160) + 8 * a3) * *(a1 + 28), a4, a5, &v14);
    sub_1000F385C(a6, &v14);
    result = sub_1000E6B5C(&v14);
    if (*a6)
    {
      if ((*(*a6 + 520) & 1) == 0)
      {
        v13 = atomic_load(a6);
        v14 = v13;
        atomic_store(atomic_exchange(&v14, 0), (*(a1 + 136) + 8 * a3));
      }
    }
  }

  return result;
}

uint64_t sub_1000EB2DC(uint64_t a1, uint64_t a2)
{
  v4 = atomic_load((*(a1 + 8) + 8));
  v5 = *(a1 + 8);
  v6 = *(v5 + 28);
  if (v6)
  {
    v7 = malloc_type_valloc(*(v5 + 28), 0x8B7C732DuLL);
    if (!v7)
    {
      exception = __cxa_allocate_exception(8uLL);
      v9 = std::bad_alloc::bad_alloc(exception);
    }
  }

  else
  {
    v7 = 0;
  }

  v17[0] = off_10021E1A0;
  v18[1] = v17;
  v19 = v7;
  sub_1000DF1F8(v20, v17);
  sub_1000298F0(v17);
  sub_1000E8B2C(a1, v10, v17);
  v11 = 0;
  v12 = v4 * v6;
  while ((v17[0] != v18[3] || v17[1] != v18[4]) && (*(*(a1 + 8) + 24) & 1) == 0)
  {
    v13 = sub_1000EBF60(a1, a2, v18, v12, v19);
    sub_1000EC31C(a1, v18, v15);
    while (1)
    {
      if (!v13)
      {
        ++v11;
      }

      if (v15[0] == v16[3] && v15[1] == v16[4] || (*(*(a1 + 8) + 24) & 1) != 0)
      {
        break;
      }

      v13 = sub_1000EBA88(a1, a2, v16, v12, v19);
      sub_1000E82E4(v15);
    }

    sub_1000E81BC(v17);
  }

  sub_10002986C(&v19, 0);
  sub_1000298F0(v20);
  return v11;
}

void sub_1000EB4E0(_Unwind_Exception *a1)
{
  sub_10002986C((v2 - 128), 0);
  sub_1000298F0(v1 + 8);
  _Unwind_Resume(a1);
}

void *sub_1000EB514(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1001190F4(a1, a2);
  *a1 = off_10021DB48;
  a1[45] = &off_10021DC48;
  a1[46] = &off_10021DC70;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021DB48;
  a1[45] = off_10021DBD0;
  a1[46] = off_10021DBF8;
  return a1;
}

void sub_1000EB618(_Unwind_Exception *a1)
{
  sub_100100224(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000EB63C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100100224(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000EB680(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1001191BC(a1, a2);
  *a1 = off_10021DD68;
  a1[45] = &off_10021DE68;
  a1[46] = &off_10021DE90;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021DD68;
  a1[45] = off_10021DDF0;
  a1[46] = off_10021DE18;
  return a1;
}

void sub_1000EB784(_Unwind_Exception *a1)
{
  sub_1001009BC(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000EB7A8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001009BC(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000EB7EC(uint64_t a1)
{
  v1 = *(a1 + 8);
  *&v3 = "DiskImage::terminate()";
  *(&v3 + 1) = 20;
  v4 = 16;
  sub_1000CA338(v5, &v3);
  sub_1000026BC(v6, "Encountered an inrecoverable I/O error, all future I/Os will be invalidated", 75);
  std::ostream::~ostream();
  sub_1000CA56C(v5);
  std::ios::~ios();
  atomic_store(1u, v1 + 8);
  (*(*v1 + 200))(v1);
  return sub_10019E398();
}

void sub_1000EB8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000CA460(va);
  _Unwind_Resume(a1);
}

void *sub_1000EB8C4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100119284(a1, a2);
  *a1 = off_10021DF88;
  a1[45] = &off_10021E088;
  a1[46] = &off_10021E0B0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021DF88;
  a1[45] = off_10021E010;
  a1[46] = off_10021E038;
  return a1;
}

void sub_1000EB9C8(_Unwind_Exception *a1)
{
  sub_100101154(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000EB9EC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100101154(a1);
  std::ios::~ios();
  return a1;
}

void sub_1000EBA30(uint64_t a1)
{
  if (*(a1 + 3624))
  {
    std::mutex::lock((a1 + 3688));
    *(a1 + 3680) = 1;
    std::condition_variable::notify_one((a1 + 3632));

    std::mutex::unlock((a1 + 3688));
  }
}

uint64_t sub_1000EBA88(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = (*(*a3 + 56) + 16 * a3[1]);
  v6 = (v5[1] & 0x7FFFFFFFFFFFFFLL) * *(*(*a3 + 8) + 28);
  if (!v6 || 3 * v6 <= (4 * a4))
  {
    return 4294967274;
  }

  if (*v5)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v11 = 0;
    atomic_compare_exchange_strong(v5, &v11, 0xFFFFFFFFFFFFFFFFLL);
    v8 = v11 == 0;
  }

  v13[1] = v5;
  v14 = v8;
  v13[0] = off_1002326D0;
  v15 = 0;
  if (v8)
  {
    v12 = (*(*(*a3 + 56) + 16 * a3[1] + 8) & 0x7FFFFFFFFFFFFFLL) * *(*(*a3 + 8) + 28);
    v9 = sub_1000EBBF0(a1, a2, a3, v12, a5);
    sub_10019A264(v13);
    if ((v9 & 0x80000000) == 0)
    {
      atomic_store(1u, (a1 + 96));
      sub_1000E8A0C(a1, v12);
    }
  }

  else
  {
    (*(**(a1 + 8) + 24))(*(a1 + 8));
    sub_10019A264(v13);
    return 4294967282;
  }

  return v9;
}

uint64_t sub_1000EBBF0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (!a4)
  {
    return 0;
  }

  v10 = *(*(a1 + 8) + 28);
  v11 = (*(**(a2 + 16) + 40))(*(a2 + 16));
  if (v11 - a4 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11 - a4;
  }

  result = sub_1000EBCA0(*(a1 + 8), a2, a5, v12, a4);
  if ((result & 0x8000000000000000) == 0)
  {
    sub_1000E96C0(a3, v14);
    return 0;
  }

  return result;
}

uint64_t sub_1000EBCA0(atomic_ullong *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(sub_10019E2E8() + 1);
  v27 = a3;
  v28 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v29 = a4;
  v30 = a5;
  v31 = a4;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v11 = (*(**(a2 + 16) + 128))(*(a2 + 16), &v27);
  if (v11 != a4)
  {
    *&v17 = "di_asif::details::dir_base::move_realloc_chunk(ContextASIF &, char *, size_t, uint64_t)";
    *(&v17 + 1) = 46;
    v18 = 16;
    sub_1000F3A00(&v19, &v17);
    sub_1000026BC(v26, "Can't read for defrag", 21);
    std::ostream::~ostream();
    sub_100109A8C(&v19);
    std::ios::~ios();
    if (v11 < 0)
    {
      v15 = v11;
    }

    else
    {
      v15 = -5;
    }

    goto LABEL_16;
  }

  v12 = sub_1000E98DC(a1, a2, 0);
  if (v12)
  {
    v13 = *(sub_10019E2E8() + 1);
    *&v19 = a3;
    *(&v19 + 1) = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    v20 = a4;
    v21 = v12;
    v22 = a4;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    sub_100024B78(&v27, &v19);
    if (*(&v19 + 1))
    {
      sub_10000367C(*(&v19 + 1));
    }

    v14 = (*(**(a2 + 16) + 120))(*(a2 + 16), &v27);
    if (v14 != a4)
    {
      *&v17 = "di_asif::details::dir_base::move_realloc_chunk(ContextASIF &, char *, size_t, uint64_t)";
      *(&v17 + 1) = 46;
      v18 = 16;
      sub_1000F3B6C(&v19, &v17);
      sub_1000026BC(v26, "Can't write table for defrag", 28);
      std::ostream::~ostream();
      sub_10010A224(&v19);
      std::ios::~ios();
      sub_1000E9B08(a1, v12, a2);
      if (v14 < 0)
      {
        v15 = v14;
      }

      else
      {
        v15 = -5;
      }

LABEL_16:
      a4 = --v15;
    }
  }

  else
  {
    a4 = -28;
  }

  if (v28)
  {
    sub_10000367C(v28);
  }

  return a4;
}

void sub_1000EBF04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000F3C94(va);
  v6 = *(v4 - 152);
  if (v6)
  {
    sub_10000367C(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000EBF60(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = (*(*a3 + 56) + 16 * a3[1]);
  v6 = (v5[1] & 0x7FFFFFFFFFFFFFLL) * *(*(*a3 + 8) + 28);
  if (!v6 || 3 * v6 <= (4 * a4))
  {
    return 4294967274;
  }

  if (*v5)
  {
    LOBYTE(v11) = 0;
  }

  else
  {
    v12 = 0;
    atomic_compare_exchange_strong(v5, &v12, 0xFFFFFFFFFFFFFFFFLL);
    v11 = v12 == 0;
  }

  v23[1] = v5;
  v24 = v11;
  v23[0] = off_1002326D0;
  v25 = 0;
  if (!v11)
  {
    (*(**(a1 + 8) + 24))(*(a1 + 8));
    sub_10019A264(v23);
    return 4294967274;
  }

  v13 = *(a1 + 8);
  v14 = *(v13 + 26);
  v15 = ((*(*a3 + 352) + a3[1] / (*(*(*a3 + 8) + 56) + 1) * *(*(*a3 + 8) + 56) * *(*(*a3 + 8) + 28)) / v14 - *(a1 + 352) / v14) / (*(v13 + 56) * (*(v13 + 28) / v14));
  v16 = sub_1000E972C(a1, v15);
  sub_1000E979C((*(a1 + 72) + 8 * v15), v16, &v22);
  if (!v22 || (*(v22 + 344) & 1) != 0)
  {
    goto LABEL_13;
  }

  if (*(v22 + 288))
  {
    sub_10011934C(v22 + 264, v22);
  }

  sub_1000E979C((*(a1 + 72) + 8 * v15), v16, &v21);
  sub_1000E9838(&v22, &v21);
  sub_1000E7978(&v21);
  if (v22 && (*(v22 + 344) & 1) == 0)
  {
    (*(**(a1 + 8) + 24))(*(a1 + 8));
    v20 = 0;
    v18 = 4294967274;
  }

  else
  {
LABEL_13:
    (*(**(a1 + 8) + 32))(&v21);
    sub_1000E9838(&v22, &v21);
    sub_1000E7978(&v21);
    if (!v22 || (*(v22 + 344) & 1) != 0 || (v17 = atomic_load((v22 + 24)), v17 == 2))
    {
      if (v22 && (*(v22 + 344) & 1) == 0)
      {
        (*(**(a1 + 8) + 24))(*(a1 + 8));
        v18 = 4294967248;
      }

      else
      {
        v18 = 4294967274;
      }
    }

    else
    {
      v6 = (*(*(*a3 + 56) + 16 * a3[1] + 8) & 0x7FFFFFFFFFFFFFLL) * *(*(*a3 + 8) + 28);
      v18 = sub_1000EBBF0(a1, a2, a3, v6, a5);
    }

    if (v22 && (*(v22 + 344) & 1) == 0 && *(v22 + 288))
    {
      sub_10011934C(v22 + 264, v22);
    }

    v20 = 1;
  }

  sub_1000E7978(&v22);
  sub_10019A264(v23);
  if (!v20)
  {
    return 4294967248;
  }

  if (!v18)
  {
    atomic_store(1u, (a1 + 96));
    sub_1000E8A0C(a1, v6);
  }

  return v18;
}

void sub_1000EC2E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  sub_1000E7978(va);
  sub_10019A264(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000EC31C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(*a2 + 352) + a2[1] / (*(*(*a2 + 8) + 56) + 1) * *(*(*a2 + 8) + 56) * *(*(*a2 + 8) + 28);
  v7 = *(a1 + 8);
  v8 = *(a1 + 352) + *(v7 + 88);
  if (v6 >= v8)
  {
    v12 = 0;
    v11 = 0;
    v17 = 0;
    v16 = *(*a2 + 352) + a2[1] / (*(*(*a2 + 8) + 56) + 1) * *(*(*a2 + 8) + 56) * *(*(*a2 + 8) + 28);
  }

  else
  {
    v10 = sub_1000E8284(a1, v6);
    v3 = a2;
    v11 = v10 & 0xFFFFFFFFFFFFFF00;
    v12 = v10;
    v13 = *(*a2 + 8);
    v14 = *(v13 + 56);
    v15 = *(v13 + 28);
    v7 = *(a1 + 8);
    v16 = *(*a2 + 352) + a2[1] / (v14 + 1) * v14 * v15;
    v8 = *(a1 + 352) + *(v7 + 88);
    v17 = 1;
  }

  v18 = *(v7 + 26);
  v19 = *(v7 + 28) / v18;
  v20 = *(v7 + 56);
  v21 = v16 + v18 * v19 * v20;
  if (v21 >= v8)
  {
    v23 = 0;
    result = 0;
  }

  else
  {
    result = sub_1000E8284(a1, v16 + v18 * v19 * v20);
    v23 = 1;
  }

  *a3 = a1;
  *(a3 + 8) = v6;
  *(a3 + 16) = v11 | v12;
  *(a3 + 24) = v3;
  *(a3 + 32) = v17;
  *(a3 + 40) = a1;
  *(a3 + 48) = v21;
  *(a3 + 56) = result;
  *(a3 + 64) = a2;
  *(a3 + 72) = v23;
  return result;
}

uint64_t sub_1000EC454(uint64_t a1)
{
  *a1 = off_10021D3C8;
  v2 = *(a1 + 32);
  if (*(v2 + 496) == 1)
  {
    sub_1000FC37C(v2 + 400);
    *(v2 + 496) = 0;
  }

  if (*(a1 + 3624))
  {
    std::mutex::lock((a1 + 3688));
    *(a1 + 24) = 1;
    std::condition_variable::notify_one((a1 + 3632));
    std::mutex::unlock((a1 + 3688));
    std::thread::join((a1 + 3624));
  }

  std::mutex::~mutex((a1 + 3800));
  sub_100069604((a1 + 3752));
  std::mutex::~mutex((a1 + 3688));
  std::condition_variable::~condition_variable((a1 + 3632));
  std::thread::~thread((a1 + 3624));
  std::mutex::~mutex((a1 + 3536));
  sub_10011A260(a1 + 2088);
  sub_100119420(a1 + 288);
  sub_1000085B4(a1 + 256, *(a1 + 264));
  std::mutex::~mutex((a1 + 192));
  v3 = *(a1 + 160);
  if (v3)
  {
    *(a1 + 168) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 136);
  if (v4)
  {
    *(a1 + 144) = v4;
    operator delete(v4);
  }

  sub_1001193A0(a1 + 96);
  return a1;
}

uint64_t sub_1000EC560(uint64_t a1)
{
  sub_1000085B4(a1 + 72, *(a1 + 80));
  std::mutex::~mutex((a1 + 8));
  return a1;
}

void sub_1000EC59C(uint64_t a1)
{
  sub_1000EC454(a1);

  operator delete();
}

__n128 sub_1000EC5D4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1000E80AC(v10, a2, a3, *(a1 + 88), *(a1 + 26), 0, *(a1 + 128), 0);
  sub_1000E80AC((a4 + 80), a2, a3, *(a1 + 88), *(a1 + 26), *(a1 + 128), *(a1 + 128), 0);
  v8 = v10[3];
  *(a4 + 32) = v10[2];
  *(a4 + 48) = v8;
  *(a4 + 64) = v10[4];
  result = v10[1];
  *a4 = v10[0];
  *(a4 + 16) = result;
  return result;
}

void sub_1000EC668(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_1000FFF2C(&v29, a1, a3);
  v33 = v29;
  if ((*(*(v29 + 56) + 16 * *(&v29 + 1) + 8) & 0x7FFFFFFFFFFFFFLL) * *(*(v29 + 8) + 28))
  {
    sub_1000EC31C(a1, &v33, &v29);
    v26 = v29;
    v27 = v30;
    v28 = v31;
    while (v26 != v32)
    {
      v5 = atomic_load((*(v27 + 56) + 16 * *(&v27 + 1) + 8));
      if (v5 >> 62 == 3)
      {
        return;
      }

      sub_1000E82E4(&v26);
    }

    if ((*(*(v33 + 56) + 16 * *(&v33 + 1) + 8) & 0x7FFFFFFFFFFFFFLL) * *(*(v33 + 8) + 28))
    {
      v26 = v29;
      if (v28 == v31)
      {
        if (v28)
        {
          *(&v27 + 1) = *(&v30 + 1);
        }
      }

      else if (v28)
      {
        LOBYTE(v28) = 0;
      }

      else
      {
        v27 = v30;
        LOBYTE(v28) = 1;
      }

      v23 = 0;
      v24 = 0;
      v25 = 0;
      while (v26 != v32)
      {
        sub_1000F2424(*(v27 + 56) + 16 * *(&v27 + 1), 0, v22);
        v6 = v24;
        if (v24 >= v25)
        {
          v7 = sub_100101730(&v23, v22);
        }

        else
        {
          sub_10019A024(v24, v22);
          *v6 = off_1002326D0;
          *(v6 + 24) = v22[3];
          v7 = v6 + 32;
        }

        v24 = v7;
        sub_10019A264(v22);
        v8 = atomic_load((*(v27 + 56) + 16 * *(&v27 + 1) + 8));
        if (v8 >> 62 == 3)
        {
          goto LABEL_34;
        }

        sub_1000E82E4(&v26);
      }

      v9 = v33;
      v10 = *(v33 + 56) + 16 * *(&v33 + 1);
      if ((*(v10 + 8) & 0x7FFFFFFFFFFFFFLL) * *(*(v33 + 8) + 28))
      {
        sub_1000F2424(v10, 0, v22);
        v11 = *(v9 + 8);
        v12 = *(v11 + 28);
        if ((*(*(v9 + 56) + 16 * *(&v9 + 1) + 8) & 0x7FFFFFFFFFFFFFLL) * v12)
        {
          sub_1000E90C8(a1, a2, (*(v9 + 352) + *(v11 + 56) * v12 * (*(&v9 + 1) / (*(v11 + 56) + 1))) / *(a1[1] + 26), 1, &v21);
          if (v21 && (*(v21 + 344) & 1) == 0)
          {
            atomic_fetch_and((*(v9 + 56) + 16 * *(&v9 + 1) + 8), 0xBFFFFFFFFFFFFFFFLL);
            if (*(v21 + 224))
            {
              v13 = v21 + 40;
            }

            else
            {
              v13 = 0;
            }

            v14 = *(v13 + 16);
            *(v13 + 16) = 0;
            *(v13 + 24) = v14;
            *(v13 + 112) = 0;
            if (v21 && *(v21 + 288))
            {
              sub_10011934C(v21 + 264, v21);
            }

            v15 = a1[1];
            v16 = ((*(v33 + 352) + *(&v33 + 1) / (*(*(v33 + 8) + 56) + 1) * *(*(v33 + 8) + 56) * *(*(v33 + 8) + 28)) / *(v15 + 26) - a1[44] / *(v15 + 26)) / (*(v15 + 56) * (*(v15 + 28) / *(v15 + 26)));
            v20 = 0;
            atomic_store(atomic_exchange(&v20, 0), (a1[9] + 8 * v16));
            v17 = a1[1];
            v18 = *(v17 + 16);
            if (*(v18 + 160) == 1)
            {
              v19 = *(v30 + 8);
              sub_1000B2014(v18, ((*(v30 + 352) + (*(v19 + 56) + *(v19 + 56) * *(&v30 + 1)) / (*(v19 + 56) + 1) * *(v19 + 28)) / *(v19 + 26) - a1[44] / *(v17 + 26)) / (*(v17 + 56) * (*(v17 + 28) / *(v17 + 26))) + *(v17 + 72) * (a1[44] / *(v17 + 88)), 0);
            }
          }

          sub_1000E7978(&v21);
        }

        sub_10019A264(v22);
      }

LABEL_34:
      v22[0] = &v23;
      sub_100101A08(v22);
    }
  }
}