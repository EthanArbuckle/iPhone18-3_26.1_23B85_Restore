void sub_100165B44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100165B70(uint64_t a1)
{
  sub_10016588C(a1);

  operator delete();
}

int *sub_100165BA8(uint64_t *a1, uint64_t *a2)
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
    v21 = 552;
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
      v21 = 552;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100165D8C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100166024(v1);

  return std::ios::~ios();
}

uint64_t sub_100165DD8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100166024(v1);

  return std::ios::~ios();
}

void sub_100165E38(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100166024(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100165EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100165EDC(_BYTE *a1, int a2)
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

void sub_100165F48(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100166024(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100165FAC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100166024(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100166024(uint64_t a1)
{
  *a1 = off_10022B318;
  sub_100166190(a1);
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

uint64_t sub_100166190(uint64_t a1)
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
        sub_100166340((a1 + 72), __p);
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

void sub_1001662DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100166308(uint64_t a1)
{
  sub_100166024(a1);

  operator delete();
}

int *sub_100166340(uint64_t *a1, uint64_t *a2)
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
    v21 = 563;
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
      v21 = 563;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100166524(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001667BC(v1);

  return std::ios::~ios();
}

uint64_t sub_100166570(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001667BC(v1);

  return std::ios::~ios();
}

void sub_1001665D0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001667BC(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100166638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100166674(_BYTE *a1, int a2)
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

void sub_1001666E0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001667BC(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100166744(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001667BC(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001667BC(uint64_t a1)
{
  *a1 = off_10022B538;
  sub_100166928(a1);
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

uint64_t sub_100166928(uint64_t a1)
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
        sub_100166AD8((a1 + 72), __p);
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

void sub_100166A74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100166AA0(uint64_t a1)
{
  sub_1001667BC(a1);

  operator delete();
}

int *sub_100166AD8(uint64_t *a1, uint64_t *a2)
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
    v21 = 570;
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
      v21 = 570;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100166CBC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100166F54(v1);

  return std::ios::~ios();
}

uint64_t sub_100166D08(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100166F54(v1);

  return std::ios::~ios();
}

void sub_100166D68(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100166F54(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100166DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100166E0C(_BYTE *a1, int a2)
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

void sub_100166E78(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100166F54(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100166EDC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100166F54(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100166F54(uint64_t a1)
{
  *a1 = off_10022B758;
  sub_1001670C0(a1);
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

uint64_t sub_1001670C0(uint64_t a1)
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
        sub_100167270((a1 + 72), __p);
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

void sub_10016720C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100167238(uint64_t a1)
{
  sub_100166F54(a1);

  operator delete();
}

int *sub_100167270(uint64_t *a1, uint64_t *a2)
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
    v21 = 580;
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
      v21 = 580;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100167454(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001676EC(v1);

  return std::ios::~ios();
}

uint64_t sub_1001674A0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001676EC(v1);

  return std::ios::~ios();
}

void sub_100167500(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001676EC(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100167568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1001675A4(_BYTE *a1, int a2)
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

void sub_100167610(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001676EC(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100167674(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001676EC(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001676EC(uint64_t a1)
{
  *a1 = off_10022B978;
  sub_100167858(a1);
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

uint64_t sub_100167858(uint64_t a1)
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
        sub_100167A08((a1 + 72), __p);
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

void sub_1001679A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001679D0(uint64_t a1)
{
  sub_1001676EC(a1);

  operator delete();
}

int *sub_100167A08(uint64_t *a1, uint64_t *a2)
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
    v21 = 593;
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
      v21 = 593;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100167BEC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100167E84(v1);

  return std::ios::~ios();
}

uint64_t sub_100167C38(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100167E84(v1);

  return std::ios::~ios();
}

void sub_100167C98(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100167E84(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100167D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100167D3C(_BYTE *a1, int a2)
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

void sub_100167DA8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100167E84(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100167E0C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100167E84(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100167E84(uint64_t a1)
{
  *a1 = off_10022BB98;
  sub_100167FF0(a1);
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

uint64_t sub_100167FF0(uint64_t a1)
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
        sub_1001681A0((a1 + 72), __p);
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

void sub_10016813C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100168168(uint64_t a1)
{
  sub_100167E84(a1);

  operator delete();
}

int *sub_1001681A0(uint64_t *a1, uint64_t *a2)
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
    v21 = 606;
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
      v21 = 606;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100168384(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016861C(v1);

  return std::ios::~ios();
}

uint64_t sub_1001683D0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016861C(v1);

  return std::ios::~ios();
}

void sub_100168430(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016861C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100168498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1001684D4(_BYTE *a1, int a2)
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

void sub_100168540(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016861C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001685A4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016861C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016861C(uint64_t a1)
{
  *a1 = off_10022BDB8;
  sub_100168788(a1);
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

uint64_t sub_100168788(uint64_t a1)
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
        sub_100168938((a1 + 72), __p);
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

void sub_1001688D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100168900(uint64_t a1)
{
  sub_10016861C(a1);

  operator delete();
}

int *sub_100168938(uint64_t *a1, uint64_t *a2)
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
    v21 = 614;
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
      v21 = 614;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100168B1C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100168DB4(v1);

  return std::ios::~ios();
}

uint64_t sub_100168B68(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100168DB4(v1);

  return std::ios::~ios();
}

void sub_100168BC8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100168DB4(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100168C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100168C6C(_BYTE *a1, int a2)
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

void sub_100168CD8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100168DB4(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100168D3C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100168DB4(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100168DB4(uint64_t a1)
{
  *a1 = off_10022BFD8;
  sub_100168F20(a1);
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

uint64_t sub_100168F20(uint64_t a1)
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
        sub_1001690D0((a1 + 72), __p);
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

void sub_10016906C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100169098(uint64_t a1)
{
  sub_100168DB4(a1);

  operator delete();
}

int *sub_1001690D0(uint64_t *a1, uint64_t *a2)
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
    v21 = 623;
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
      v21 = 623;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1001692B4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016954C(v1);

  return std::ios::~ios();
}

uint64_t sub_100169300(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016954C(v1);

  return std::ios::~ios();
}

void sub_100169360(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016954C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001693C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100169404(_BYTE *a1, int a2)
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

void sub_100169470(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016954C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001694D4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016954C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016954C(uint64_t a1)
{
  *a1 = off_10022C1F8;
  sub_1001696B8(a1);
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

uint64_t sub_1001696B8(uint64_t a1)
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
        sub_100169868((a1 + 72), __p);
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

void sub_100169804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100169830(uint64_t a1)
{
  sub_10016954C(a1);

  operator delete();
}

int *sub_100169868(uint64_t *a1, uint64_t *a2)
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
    v21 = 631;
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
      v21 = 631;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100169A4C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100169CE4(v1);

  return std::ios::~ios();
}

uint64_t sub_100169A98(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100169CE4(v1);

  return std::ios::~ios();
}

void sub_100169AF8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100169CE4(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100169B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100169B9C(_BYTE *a1, int a2)
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

void sub_100169C08(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100169CE4(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100169C6C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100169CE4(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100169CE4(uint64_t a1)
{
  *a1 = off_10022C418;
  sub_100169E50(a1);
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

uint64_t sub_100169E50(uint64_t a1)
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
        sub_10016A000((a1 + 72), __p);
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

void sub_100169F9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100169FC8(uint64_t a1)
{
  sub_100169CE4(a1);

  operator delete();
}

int *sub_10016A000(uint64_t *a1, uint64_t *a2)
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
    v21 = 671;
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
      v21 = 671;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10016A1E4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016A47C(v1);

  return std::ios::~ios();
}

uint64_t sub_10016A230(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016A47C(v1);

  return std::ios::~ios();
}

void sub_10016A290(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016A47C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016A2F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10016A334(_BYTE *a1, int a2)
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

void sub_10016A3A0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016A47C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10016A404(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016A47C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016A47C(uint64_t a1)
{
  *a1 = off_10022C638;
  sub_10016A5E8(a1);
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

uint64_t sub_10016A5E8(uint64_t a1)
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
        sub_10016A798((a1 + 72), __p);
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

void sub_10016A734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10016A760(uint64_t a1)
{
  sub_10016A47C(a1);

  operator delete();
}

int *sub_10016A798(uint64_t *a1, uint64_t *a2)
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
    v21 = 684;
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
      v21 = 684;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10016A97C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016AC14(v1);

  return std::ios::~ios();
}

uint64_t sub_10016A9C8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016AC14(v1);

  return std::ios::~ios();
}

void sub_10016AA28(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016AC14(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016AA90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10016AACC(_BYTE *a1, int a2)
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

void sub_10016AB38(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016AC14(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10016AB9C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016AC14(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016AC14(uint64_t a1)
{
  *a1 = off_10022C858;
  sub_10016AD80(a1);
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

uint64_t sub_10016AD80(uint64_t a1)
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
        sub_10016AF30((a1 + 72), __p);
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

void sub_10016AECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10016AEF8(uint64_t a1)
{
  sub_10016AC14(a1);

  operator delete();
}

int *sub_10016AF30(uint64_t *a1, uint64_t *a2)
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
    v21 = 844;
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
      v21 = 844;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10016B114(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016B3AC(v1);

  return std::ios::~ios();
}

uint64_t sub_10016B160(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016B3AC(v1);

  return std::ios::~ios();
}

void sub_10016B1C0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016B3AC(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016B228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10016B264(_BYTE *a1, int a2)
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

void sub_10016B2D0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016B3AC(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10016B334(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016B3AC(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016B3AC(uint64_t a1)
{
  *a1 = off_10022CA78;
  sub_10016B518(a1);
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

uint64_t sub_10016B518(uint64_t a1)
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
        sub_10016B6C8((a1 + 72), __p);
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

void sub_10016B664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10016B690(uint64_t a1)
{
  sub_10016B3AC(a1);

  operator delete();
}

int *sub_10016B6C8(uint64_t *a1, uint64_t *a2)
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
    v21 = 847;
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
      v21 = 847;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10016B8AC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016BB44(v1);

  return std::ios::~ios();
}

uint64_t sub_10016B8F8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016BB44(v1);

  return std::ios::~ios();
}

void sub_10016B958(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016BB44(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016B9C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10016B9FC(_BYTE *a1, int a2)
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

void sub_10016BA68(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016BB44(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10016BACC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016BB44(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016BB44(uint64_t a1)
{
  *a1 = off_10022CC98;
  sub_10016BCB0(a1);
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

uint64_t sub_10016BCB0(uint64_t a1)
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
        sub_10016BE60((a1 + 72), __p);
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

void sub_10016BDFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10016BE28(uint64_t a1)
{
  sub_10016BB44(a1);

  operator delete();
}

int *sub_10016BE60(uint64_t *a1, uint64_t *a2)
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
    v21 = 851;
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
      v21 = 851;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_10016C0C8(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10020A1C0;
  sub_10016C124(a1 + 3, a2);
  return a1;
}

double sub_10016C124(void *a1, uint64_t a2)
{
  v3 = sub_10019A650(a1);
  *v3 = off_1002295E0;
  v3[3] = off_1002296D0;
  v4 = *(a2 + 40);
  v5 = *(a2 + 48);
  v3[4] = off_100229708;
  v3[5] = v4;
  v3[6] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = v3[5];
  }

  v3[7] = v4 + 8;
  result = 0.0;
  *(v3 + 4) = 0u;
  *(v3 + 5) = 0u;
  *(v3 + 6) = 0u;
  return result;
}

uint64_t sub_10016C1D4(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 4 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    sub_10016C2C0(a1);
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
    v8 = *(v4 + ((v7 >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((v7 & 0x1F) << 7);
  }

  v9 = sub_100026898(v8, a2);
  v10 = *(a2 + 112);
  v9[15] = *(a2 + 120);
  v9 += 15;
  *(v9 - 2) = v10;
  *(a2 + 120) = 0;
  *(*v9 + 16) = v9;
  v11 = a1[4];
  v12 = a1[5] + 1;
  a1[5] = v12;
  v13 = v11 + v12;
  v14 = a1[1];
  v15 = (v14 + 8 * (v13 >> 5));
  v16 = *v15 + ((v13 & 0x1F) << 7);
  if (a1[2] == v14)
  {
    v16 = 0;
  }

  if (v16 == *v15)
  {
    v16 = *(v15 - 1) + 4096;
  }

  return v16 - 128;
}

void *sub_10016C2C0(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x20;
  v3 = v1 - 32;
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

void sub_10016C448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10016C494(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100229998;
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

void sub_10016C544(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016C55C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100229BB8;
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

void sub_10016C60C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016C624(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100229DD8;
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

void sub_10016C6D4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016C6EC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100229FF8;
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

void sub_10016C79C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_10016C7B4(uint64_t a1, char *a2)
{
  if (a2 >> 59)
  {
    sub_100026DEC("get_next_capacity, allocator's max size reached");
  }

  v4 = operator new(16 * a2);
  v5 = (*a1 + 16 * *(a1 + 8));

  sub_1001A3CF0(a1, v4, a2, v5, 0, 0);
}

uint64_t sub_10016C820(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10022A218;
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

void sub_10016C8D0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016C8E8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10022A438;
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

void sub_10016C998(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_10016C9B0(uint64_t ***a1)
{
  v1 = **a1;
  v2 = *v1;
  if (fstatfs(*(*v1 + 8), &v16) < 0)
  {
    *&v17 = "FileLocal::shared_state_t::init_unmap_zeros()::(anonymous class)::operator()() const";
    *(&v17 + 1) = 76;
    v18 = 16;
    sub_10016CC00(&v13, &v17);
    sub_1000026BC(v15, "fstatfs failed with err code ", 29);
    v7 = *__error();
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_10016CE98(&v13);
    std::ios::~ios();
    v8 = *__error();
    v9 = std::generic_category();
    v10 = *(v2 + 96);
    *(v2 + 80) = v8;
    *(v2 + 88) = v9;
    if (v10 == 1)
    {
      *(v2 + 96) = 0;
    }

    v11 = *__error();
    if (*(v2 + 144) == 1)
    {
      sub_10004DE34(v2 + 104);
      *(v2 + 104) = v11;
      *(v2 + 112) = v9;
      *(v2 + 144) = 0;
    }

    else
    {
      *(v2 + 104) = v11;
      *(v2 + 112) = v9;
    }
  }

  else
  {
    f_bsize = v16.f_bsize;
    if ((*(v2 + 96) & 1) == 0)
    {
      *(v2 + 96) = 1;
    }

    *(v2 + 80) = f_bsize;
    if (f_bsize)
    {
      v4 = malloc_type_valloc(f_bsize, 0x8B7C732DuLL);
      if (!v4)
      {
        exception = __cxa_allocate_exception(8uLL);
        v6 = std::bad_alloc::bad_alloc(exception);
      }
    }

    else
    {
      v4 = 0;
    }

    *&v17 = off_10022CF38;
    v19 = &v17;
    v13 = v4;
    sub_1000DF1F8(v14, &v17);
    sub_1000298F0(&v17);
    sub_10016CD6C(v2 + 104, &v13);
    sub_10002986C(&v13, 0);
    sub_1000298F0(v14);
    v12 = *(v2 + 80);
    if (v12 >= 1)
    {
      bzero(*(v2 + 104), v12);
    }
  }
}

void sub_10016CBC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  sub_10002986C(va, 0);
  sub_1000298F0(va1);
  _Unwind_Resume(a1);
}

void *sub_10016CC00(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10016CDD0(a1, a2);
  *a1 = off_10022CD20;
  a1[45] = &off_10022CE20;
  a1[46] = &off_10022CE48;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022CD20;
  a1[45] = off_10022CDA8;
  a1[46] = off_10022CDD0;
  return a1;
}

void sub_10016CD04(_Unwind_Exception *a1)
{
  sub_10016CE98(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10016CD28(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016CE98(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10016CD6C(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 40) == 1)
  {
    sub_10016D70C(a1, a2);
  }

  else
  {
    sub_10004DE34(a1);
    v4 = *a2;
    *a2 = 0;
    *a1 = v4;
    sub_1000DF1F8(a1 + 8, (a2 + 1));
    *(a1 + 40) = 1;
  }

  return a1;
}

uint64_t sub_10016CDD0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10022CEB8;
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

void sub_10016CE80(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016CE98(uint64_t a1)
{
  *a1 = off_10022CEB8;
  sub_10016D2D8(a1);
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

void sub_10016D004(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016CE98(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016D06C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10016D0A8(_BYTE *a1, int a2)
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

uint64_t sub_10016D114(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016CE98(v1);

  return std::ios::~ios();
}

void sub_10016D160(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016CE98(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016D1C4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016CE98(v1);

  return std::ios::~ios();
}

void sub_10016D224(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016CE98(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10016D2A0(uint64_t a1)
{
  sub_10016CE98(a1);

  operator delete();
}

uint64_t sub_10016D2D8(uint64_t a1)
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
        sub_10016D44C((a1 + 72), __p);
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

void sub_10016D424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10016D44C(uint64_t *a1, uint64_t *a2)
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
    v21 = 420;
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
      v21 = 420;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10016D6C0(uint64_t a1, uint64_t a2)
{
  if (sub_100009720(a2, &off_10022CF98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10016D70C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  sub_10002986C(a1, v4);
  sub_10016D750((a1 + 1), (a2 + 1));
  return a1;
}

uint64_t sub_10016D750(uint64_t a1, uint64_t a2)
{
  sub_10016D7D4(a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_10016D7D4(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t sub_10016D858(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10022A658;
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

void sub_10016D908(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016D920(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10022A878;
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

void sub_10016D9D0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016D9E8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10022AA98;
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

void sub_10016DA98(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016DAB0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10022ACB8;
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

void sub_10016DB60(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016DB78(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10022AED8;
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

void sub_10016DC28(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016DC40(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10022B0F8;
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

void sub_10016DCF0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016DD08(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10022B318;
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

void sub_10016DDB8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016DDD0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10022B538;
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

void sub_10016DE80(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016DE98(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10022B758;
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

void sub_10016DF48(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016DF60(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10022B978;
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

void sub_10016E010(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016E028(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10022BB98;
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

void sub_10016E0D8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016E0F0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10022BDB8;
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

void sub_10016E1A0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016E1B8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10022BFD8;
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

void sub_10016E268(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016E280(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10022C1F8;
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

void sub_10016E330(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016E348(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10022C418;
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

void sub_10016E3F8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016E410(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10022C638;
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

void sub_10016E4C0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_10016E4D8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 16);
  sub_100026638(&v5, v4);
  v7 += *v3;
  if (v8 == 1)
  {
    v8 = 0;
  }

  sub_100026898(a2, &v5);
  *(a2 + 112) = v4 + 120;
  if (v6)
  {
    sub_10000367C(v6);
  }
}

void sub_10016E55C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000367C(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10016E574(void *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v6 = a2[1];
  v7 = a2[2];
  v8 = *(a3 + 8);
  v9 = *(a3 + 16);
  v10 = *a4;
  v11 = *a5;
  v25 = *a2;
  v26 = v6;
  v27 = v7;
  v28 = v10;
  if (v9 == v7)
  {
    v12 = 0;
  }

  else
  {
    v12 = ((v9 - *v8) >> 7) + 4 * (v8 - v6) - ((v7 - *v6) >> 7);
  }

  v13 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v10) >> 3);
  if (v13 >= v12)
  {
    v13 = v12;
  }

  if (v13)
  {
    v14 = v13 + ((v7 - *v6) >> 7);
    if (v14 < 1)
    {
      v15 = *&v6[-8 * ((31 - v14) >> 5)] + ((~(31 - v14) & 0x1F) << 7);
    }

    else
    {
      v15 = *&v6[(v14 >> 2) & 0x3FFFFFFFFFFFFFF8] + ((v14 & 0x1F) << 7);
    }

    v16 = 24 * v13 - 24;
    do
    {
      v17 = v16;
      sub_10016E4D8(&v25, v29);
      sub_100026898(&v20, v29);
      v23 = v31;
      v24 = v10;
      v18 = v10;
      if (v30)
      {
        sub_10000367C(v30);
        v18 = v24;
      }

      v19 = sub_10014FEB0(a1, &v20, v18);
      if (v19 != v22)
      {
        sub_100150200(a1, &v20, v19, v18);
      }

      if (v21)
      {
        sub_10000367C(v21);
      }

      v7 += 128;
      v27 = v7;
      if (v7 - *v6 == 4096)
      {
        v26 = v6 + 8;
        v7 = *(v6 + 1);
        v27 = v7;
        v6 += 8;
      }

      v10 += 24;
      v28 = v10;
      v16 = v17 - 24;
    }

    while (v7 != v15 || v17);
  }
}

void sub_10016E730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31)
{
  if (a31)
  {
    sub_10000367C(a31);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10016E7E0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  result = *a2;
  v4 = *a3;
  return result;
}

uint64_t sub_10016E7EC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const void *sub_10016E8C0(uint64_t a1, void **a2, const void **a3, size_t *a4)
{
  v4 = *a3;
  memcpy(*a2, *a3, *a4);
  return v4;
}

uint64_t sub_10016E8FC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10016E948(uint64_t a1, int a2)
{
  *(a1 + 80) = a2;
  if (*(a1 + 72) != *(a1 + 48))
  {
    do
    {
      sub_10016E4D8(a1 + 56, &v9);
      v3 = v11;
      if (v10)
      {
        sub_10000367C(v10);
      }

      if ((*(*v3 + 4) & 1) == 0)
      {
        *&v7 = "crypto::details::unset_futures_errors_reporter<std::ranges::transform_view<std::ranges::ref_view<container_it<std::__deque_iterator<FileLocal::promise_io_t, FileLocal::promise_io_t *, FileLocal::promise_io_t &, FileLocal::promise_io_t **, long>>>, (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/app/backends/file.cpp:755:24)>::__iterator<false>>::report_errors(int) [It = std::ranges::transform_view<std::ranges::ref_view<container_it<std::__deque_iterator<FileLocal::promise_io_t, FileLocal::promise_io_t *, FileLocal::promise_io_t &, FileLocal::promise_io_t **, long>>>, (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/app/backends/file.cpp:755:24)>::__iterator<false>]";
        *(&v7 + 1) = 587;
        v8 = 16;
        sub_10016EAA8(&v9, &v7);
        sub_1000026BC(v12, "diskimageuio: report err ", 25);
        std::ostream::operator<<();
        std::ostream::~ostream();
        sub_10016ECDC(&v9);
        std::ios::~ios();
        v4 = *v3;
        *v4 = *(a1 + 80);
        *(v4 + 4) = 1;
        sub_10002967C(v3);
      }

      v5 = *(a1 + 64);
      v6 = *(a1 + 72) + 128;
      *(a1 + 72) = v6;
      if (v6 - *v5 == 4096)
      {
        *(a1 + 64) = v5 + 1;
        v6 = v5[1];
        *(a1 + 72) = v6;
      }
    }

    while (v6 != *(a1 + 48));
  }
}

void sub_10016EA94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10016EBD0(va);
  _Unwind_Resume(a1);
}

void *sub_10016EAA8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10016EC14(a1, a2);
  *a1 = off_10022D0C0;
  a1[45] = &off_10022D1C0;
  a1[46] = &off_10022D1E8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022D0C0;
  a1[45] = off_10022D148;
  a1[46] = off_10022D170;
  return a1;
}

void sub_10016EBAC(_Unwind_Exception *a1)
{
  sub_10016ECDC(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10016EBD0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016ECDC(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10016EC14(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10022D258;
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

void sub_10016ECC4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016ECDC(uint64_t a1)
{
  *a1 = off_10022D258;
  sub_10016F11C(a1);
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

void sub_10016EE48(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016ECDC(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016EEB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10016EEEC(_BYTE *a1, int a2)
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

uint64_t sub_10016EF58(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016ECDC(v1);

  return std::ios::~ios();
}

void sub_10016EFA4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016ECDC(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016F008(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016ECDC(v1);

  return std::ios::~ios();
}

void sub_10016F068(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016ECDC(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10016F0E4(uint64_t a1)
{
  sub_10016ECDC(a1);

  operator delete();
}

uint64_t sub_10016F11C(uint64_t a1)
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
        sub_10016F290((a1 + 72), __p);
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

void sub_10016F268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10016F290(uint64_t *a1, uint64_t *a2)
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
    v21 = 60;
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
      v21 = 60;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10016F474(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10022C858;
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

void sub_10016F524(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016F53C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10022CA78;
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

void sub_10016F5EC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016F604(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10022CC98;
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

void sub_10016F6B4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void *sub_10016F6CC(void *__dst, __int128 *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000093B4(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v10 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v10;
  }

  v12 = *a4;
  v11 = a4[1];
  __dst[3] = a3;
  __dst[4] = v12;
  __dst[5] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = *(a2 + 23);
  if (v13 >= 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = *a2;
  }

  if (v13 >= 0)
  {
    v15 = *(a2 + 23);
  }

  else
  {
    v15 = *(a2 + 1);
  }

  __dst[6] = sub_10019E174(v14, v15);
  __dst[7] = v16;
  __dst[8] = a5;
  return __dst;
}

void sub_10016F778(_Unwind_Exception *a1)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    sub_10000367C(v3);
  }

  sub_1001A3928(v1);
  _Unwind_Resume(a1);
}

void sub_10016F798(uint64_t a1, char *a2, uint64_t a3, uint8_t **a4)
{
  if (a2[23] >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  *&v6 = AAS3DownloadStreamOpen(v5, 0, 0, 0);
  sub_100139D08(&v9, &v6);
  sub_100139DE8(&v8, &v9);
  sub_100139E1C(&v8, *a4, 0x20uLL);
  sub_100139D3C(&v9, &v8, 0xFFFFFFFFFFFFFFFFLL, 0x4000000000000000uLL, 0, &v7);
  sub_100156DD4();
}

void sub_10016F880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, AAByteStream);
  va_copy(va2, va1);
  v6 = va_arg(va2, AEAContext);
  sub_100139D0C(va);
  sub_100139DEC(va1);
  sub_100139D0C(va2);
  _Unwind_Resume(a1);
}

void sub_10016F8B8(void *a1, char **a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10019A650(a1);
  *v7 = off_10022D2D8;
  *(v7 + 3) = 0u;
  *(v7 + 5) = 0u;
  v9 = *a2;
  v10 = *(a4 + 8);
  v11[0] = *a4;
  v11[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10016F798(a1, v9, v8, v11);
}

void sub_10016F9B0(_Unwind_Exception *exception_object)
{
  v3 = v1[6];
  if (v3)
  {
    sub_10000367C(v3);
  }

  v4 = v1[4];
  if (v4)
  {
    sub_10000367C(v4);
  }

  v5 = v1[2];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_10016FA28(void *a1)
{
  sub_10016FAEC(a1);

  operator delete();
}

uint64_t sub_10016FAE0(uint64_t a1)
{
  v1 = *(a1 + 24);
  result = *(v1 + 48);
  v3 = *(v1 + 56);
  return result;
}

void *sub_10016FAEC(void *a1)
{
  *a1 = off_10022D2D8;
  v2 = a1[6];
  if (v2)
  {
    sub_10000367C(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    sub_10000367C(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void *sub_10016FBD4(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10021B178;
  sub_10016FC30(a1 + 3, a2);
  return a1;
}

void *sub_10016FC30(void *a1, void *a2)
{
  v4 = sub_10019A650(a1);
  *v4 = off_10022D2D8;
  *(v4 + 3) = 0u;
  *(v4 + 5) = 0u;
  v6 = a2[3];
  v5 = a2[4];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v7 = a1[4];
    a1[3] = v6;
    a1[4] = v5;
    if (v7)
    {
      sub_10000367C(v7);
    }
  }

  else
  {
    a1[3] = v6;
    a1[4] = 0;
  }

  v9 = a2[5];
  v8 = a2[6];
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = a1[6];
  a1[5] = v9;
  a1[6] = v8;
  if (v10)
  {
    sub_10000367C(v10);
  }

  return a1;
}

void *sub_10016FD60(void *a1, __int128 *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10022D3C0;
  sub_10016F6CC(a1 + 3, a2, *a3, a4, *a5);
  return a1;
}

void sub_10016FDE4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10022D3C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10016FE44(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_10000367C(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void sub_10016FE98(void *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v5 = a1;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v14 = v5;
  v6 = [v5 activeNode];
  if (v6)
  {
    if ([v6 isCache])
    {
      v7 = 1;
    }

    else
    {
      v8 = [v6 parent];
      if (v8)
      {
        v7 = 3;
      }

      else
      {
        v7 = 0;
      }
    }

    if (*a3 != a3[1] || (a2 & 1) != 0 || !v7 || v7 == 3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v6 filePath];
        [objc_claimAutoreleasedReturnValue() path];
        v15 = [objc_claimAutoreleasedReturnValue() UTF8String];
        sub_100089184(&v16, &v15);
        if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_1000093B4(&__dst, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
        }

        else
        {
          __dst = v16;
        }

        operator new();
      }

      v9 = v6;
      v10 = [v9 pluginName];
      sub_100003410(&__dst, [v10 UTF8String]);

      [v9 pluginParams];
      operator new();
    }

    exception = __cxa_allocate_exception(0x40uLL);
    error_code = make_error_code(150);
    *exception = &off_100233158;
    exception[1] = error_code;
    exception[2] = v13;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = "Stack with cache as top image cannot be opened for writing.";
  }
}

void sub_10017033C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  sub_100051F10(&a11);

  _Unwind_Resume(a1);
}

void sub_100170484(uint64_t a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v7 = [[NSFileHandle alloc] initWithFileDescriptor:a1 closeOnDealloc:0];
  v36 = 0;
  v37 = 0;
  v8 = [DiskImageGraph loadPlistDictFromFileHandle:v7 dict:&v37 error:&v36];
  v9 = v37;
  v10 = v36;
  v11 = v10;
  if ((v8 & 1) == 0)
  {
    v12 = [v10 domain];
    if ([v12 isEqualToString:@"com.apple.DiskImages2.ErrorDomain"])
    {
      v13 = [v11 code] == 167;

      if (v13)
      {
        *a4 = 0;
        a4[1] = 0;
        a4[2] = 0;
        goto LABEL_12;
      }
    }

    else
    {
    }

    *&v34 = "create_stack_vector_from_single_fd(int, const std::filesystem::path &, BOOL)";
    *(&v34 + 1) = 34;
    v35 = 16;
    sub_10008B80C(buf, &v34);
    std::ostream::operator<<();
    sub_10008B934(buf);
    exception = __cxa_allocate_exception(0x40uLL);
    v22 = [v11 code];
    if (v22 >= 0)
    {
      LODWORD(v23) = v22;
    }

    else
    {
      v23 = -v22;
    }

    v21 = std::generic_category();
    v20 = v23;
    v19 = "Failed to read file for pstack parsing";
LABEL_14:
    *exception = &off_100233158;
    exception[1] = v20;
    exception[2] = v21;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = v19;
  }

  if (*(a2 + 23) < 0)
  {
    if (!a2[1])
    {
LABEL_13:
      exception = __cxa_allocate_exception(0x40uLL);
      v19 = "Cannot initialize pstack disk image without path.";
      v20 = 22;
      v21 = std::generic_category();
      goto LABEL_14;
    }

    a2 = *a2;
  }

  else if (!*(a2 + 23))
  {
    goto LABEL_13;
  }

  v14 = [NSString stringWithUTF8String:a2];
  v15 = [NSURL fileURLWithPath:v14];

  v33 = v11;
  v16 = [[SerializedDiskImageGraph alloc] initWithGraphDB:v9 pstackURL:v15 error:&v33];
  v17 = v33;

  if (!v16)
  {
    v24 = *__error();
    if (sub_1000E044C())
    {
      *&v34 = 0;
      v25 = sub_1000E03D8();
      os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
      v26 = [v17 description];
      *buf = 68158210;
      *&buf[4] = 127;
      v39 = 2080;
      v40 = "std::vector<diskimage_uio::stack_image_node_ptr_t> create_stack_vector_from_single_fd(int, const std::filesystem::path &, BOOL)";
      v41 = 2112;
      v42 = v26;
      v27 = _os_log_send_and_compose_impl();

      if (v27)
      {
        fprintf(__stderrp, "%s\n", v27);
        free(v27);
      }
    }

    else
    {
      v28 = sub_1000E03D8();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = [v17 description];
        *buf = 0x7F04100302;
        v39 = 2080;
        v40 = "std::vector<diskimage_uio::stack_image_node_ptr_t> create_stack_vector_from_single_fd(int, const std::filesystem::path &, BOOL)";
        v41 = 2112;
        v42 = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%.*s: Failed to create graph from plist: %@.", buf, 0x1Cu);
      }
    }

    *__error() = v24;
    v30 = __cxa_allocate_exception(0x40uLL);
    error_code = make_error_code(161);
    *v30 = &off_100233158;
    v30[1] = error_code;
    v30[2] = v32;
    *(v30 + 24) = 0;
    *(v30 + 48) = 0;
    v30[7] = "Failed to create graph from plist.";
  }

  sub_10016FE98(v16, a3, a4);

  v11 = v17;
LABEL_12:
}

void sub_100170924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  __cxa_free_exception(v19);

  _Unwind_Resume(a1);
}

uint64_t sub_100170A44(uint64_t a1)
{
  io_rings_unsubscribe_dest_object(*a1, *(a1 + 8));
  io_rings_release(*a1);
  return a1;
}

uint64_t sub_100170CA0(uint64_t a1)
{
  io_rings_suspend(*(a1 + 48));
  io_rings_cancel(*(a1 + 48));
  std::mutex::~mutex((a1 + 136));
  std::condition_variable::~condition_variable((a1 + 88));
  sub_100170A44(a1 + 56);
  sub_100173EC0((a1 + 8), 0);
  sub_100175F50(a1 + 16);
  return a1;
}

double sub_100170D0C(uint64_t a1)
{
  v1 = atomic_load((a1 + 76));
  v2 = atomic_load((a1 + 72));
  if (v2 - v1 < *(*(a1 + 8) + 8))
  {
    v3 = v2;
    while (1)
    {
      atomic_compare_exchange_strong((a1 + 72), &v3, v2 + 1);
      if (v3 == v2)
      {
        break;
      }

      v4 = atomic_load((a1 + 76));
      v5 = v3 - v4;
      v2 = v3;
      if (v5 >= *(*(a1 + 8) + 8))
      {
        return result;
      }
    }

    return io_rings_sqe_allocate(*(a1 + 48));
  }

  return result;
}

void sub_100170D78(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  cqe = io_rings_get_cqe(*(a1 + 48));
  if ((v5 & 0x100000000) != 0)
  {
    v7 = cqe;
    v8 = v5;
    add = atomic_fetch_add((a1 + 76), 1u);
    if (atomic_load((a1 + 80)))
    {
      v11 = atomic_load((a1 + 72));
      if (add + 1 == v11)
      {
        std::mutex::lock((a1 + 136));
        std::condition_variable::notify_all((a1 + 88));
        std::mutex::unlock((a1 + 136));
      }
    }

    *a2 = v7;
    *(a2 + 8) = v8;
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *a2 = 0;
  }

  *(a2 + 16) = v6;
}

void sub_100170E24(void *a1, uint64_t (*a2)(uint64_t a1, unsigned __int8 *a2), uint64_t a3)
{
  v6[0] = off_10022DE70;
  v6[1] = a1;
  v6[3] = v6;
  sub_100051420(a1, a2, a3, v6);
  sub_10006A664(v6);
  a1[35] = sub_10017101C(a1);
  v4 = *(*(sub_100051424(a1) + 24) - 24);
  a1[36] = v4;
  a1[37] = (*(*v4 + 24))(v4);
  v5 = *(a1[36] + 16);
  sub_100170A80();
}

void sub_100170FC0(_Unwind_Exception *a1)
{
  sub_100069604((v1 + 576));
  std::mutex::~mutex((v1 + 512));
  sub_100157D44((v1 + 504));
  sub_100170CA0(v1 + 304);
  sub_10006A664(v1 + 248);
  sub_10006A538(v1 + 120);
  _Unwind_Resume(a1);
}

uint64_t sub_10017101C(uint64_t a1)
{
  v1 = sub_100051424(a1);
  if (0xAAAAAAAAAAAAAAABLL * ((*(v1 + 24) - *(v1 + 16)) >> 4) >= 2 && (v2 = *(v1 + 24), *(v2 - 96) == 2) && (*(**(v2 - 88) + 40))(*(v2 - 88)))
  {
    return *(v2 - 88);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001710B0(void *a1, unsigned __int8 *a2)
{
  sub_100051430(a1, v8);
  if (v8[1])
  {
    v4 = sub_1000B39EC(a1, v8, a2);
    if (*a2 - 1 > 1)
    {
      v5 = io_rings_return_status(a1[7], a2, v4, 0);
    }

    else
    {
      v5 = sub_100171174(a1, a2, v8, v4);
    }
  }

  else
  {
    v5 = io_rings_return_status(a1[7], a2, 0xFFFFFFF4, 0);
  }

  v6 = v5;
  sub_10006B6C8(v8);
  return v6;
}

void sub_100171160(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10006B6C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100171174(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v7 = *(*(*(a3 + 8) + 24) - 16);
  v10 = *(v7 + 16);
  v9 = v7 + 16;
  v8 = v10;
  if (v10 != *(*(*(*(a3 + 8) + 24) - 16) + 24))
  {
    if ((a4 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_1001755B0(v9, v8);
  }

  v11 = *(a1 + 56);

  return io_rings_return_status(v11, a2, a4, 0);
}

void sub_1001718B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a23)
  {
    sub_10000367C(a23);
  }

  v24 = *(v23 + 48);
  if (v24)
  {
    sub_10000367C(v24);
  }

  JUMPOUT(0x1001718E4);
}

uint64_t sub_1001718F4(uint64_t a1, unsigned __int8 *a2)
{
  if (sub_1000B3768(a2))
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 0x40000000;
    v6[2] = sub_1001719DC;
    v6[3] = &unk_10022D420;
    v6[4] = a1;
    v6[5] = a2;
    sub_100157EBC((a1 + 624), v6);
  }

  else
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 0x40000000;
    v5[2] = sub_100171B70;
    v5[3] = &unk_10022D440;
    v5[4] = a1;
    v5[5] = a2;
    sub_100157E0C((a1 + 624), v5);
  }

  return 0;
}

void sub_1001719DC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = atomic_load((v2 + 632));
  if (v3 == 1)
  {
    v4 = *(a1 + 40);
    v5 = *(v2 + 56);

    io_rings_return_status(v5, v4, 0xFFFFFFA7, 0);
  }

  else
  {
    sub_100171AA8(v2 + 304);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 0x40000000;
    v7[2] = sub_100171B5C;
    v7[3] = &unk_10022D400;
    v6 = *(a1 + 40);
    v7[4] = v2;
    v7[5] = v6;
    sub_100157E0C((v2 + 624), v7);
  }
}

void sub_100171AA8(uint64_t a1)
{
  v1 = (a1 + 72);
  v2 = atomic_load((a1 + 72));
  v3 = (a1 + 76);
  v4 = atomic_load((a1 + 76));
  if (v2 != v4)
  {
    atomic_fetch_add((a1 + 80), 1uLL);
    v8.__m_ = (a1 + 136);
    v8.__owns_ = 1;
    std::mutex::lock((a1 + 136));
    v6 = atomic_load(v1);
    for (i = atomic_load(v3); v6 != i; i = atomic_load((a1 + 76)))
    {
      std::condition_variable::wait((a1 + 88), &v8);
      v6 = atomic_load((a1 + 72));
    }

    if (v8.__owns_)
    {
      std::mutex::unlock(v8.__m_);
    }

    atomic_fetch_add((a1 + 80), 0xFFFFFFFFFFFFFFFFLL);
  }
}

uint64_t sub_100171B5C(uint64_t a1)
{
  v1 = *(a1 + 32);
  __dmb(9u);
  return sub_1001710B0(v1, *(a1 + 40));
}

uint64_t sub_100171B70(uint64_t a1)
{
  v1 = *(a1 + 32);
  __dmb(9u);
  return sub_1001710B0(v1, *(a1 + 40));
}

uint64_t sub_100171B84(uint64_t result)
{
  v1 = 2;
  atomic_compare_exchange_strong((result + 632), &v1, 0);
  if (v1 == 2)
  {
    v2 = result;
    sub_100157ECC((result + 624));
    io_rings_suspend(*(v2 + 352));
    *&v3 = "di_hybrid_subscriber_t::suspend()";
    *(&v3 + 1) = 31;
    v4 = 0;
    sub_100171C58(v5, &v3);
    sub_1000026BC(v6, "Plugin's ring suspended, ret code ", 34);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_10017420C(v5);
    return std::ios::~ios();
  }

  return result;
}

void sub_100171C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100171D80(va);
  _Unwind_Resume(a1);
}

void *sub_100171C58(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10017618C(a1, a2);
  *a1 = off_10022D728;
  a1[45] = &off_10022D828;
  a1[46] = &off_10022D850;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022D728;
  a1[45] = off_10022D7B0;
  a1[46] = off_10022D7D8;
  return a1;
}

void sub_100171D5C(_Unwind_Exception *a1)
{
  sub_10017420C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100171D80(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10017420C(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100171DC4(uint64_t result)
{
  v1 = 0;
  atomic_compare_exchange_strong((result + 632), &v1, 2u);
  if (!v1)
  {
    v2 = result;
    sub_100157ED4((result + 624));
    io_rings_resume(*(v2 + 352));
    *&v3 = "di_hybrid_subscriber_t::resume()";
    *(&v3 + 1) = 30;
    v4 = 0;
    sub_100171E9C(v5, &v3);
    sub_1000026BC(v6, "Plugin's ring resumed, ret code ", 32);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_1001749A4(v5);
    return std::ios::~ios();
  }

  return result;
}

void sub_100171E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100171FC4(va);
  _Unwind_Resume(a1);
}

void *sub_100171E9C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100176254(a1, a2);
  *a1 = off_10022D948;
  a1[45] = &off_10022DA48;
  a1[46] = &off_10022DA70;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022D948;
  a1[45] = off_10022D9D0;
  a1[46] = off_10022D9F8;
  return a1;
}

void sub_100171FA0(_Unwind_Exception *a1)
{
  sub_1001749A4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100171FC4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001749A4(a1);
  std::ios::~ios();
  return a1;
}

void sub_100172008(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_100172108();
  }
}

void sub_100172244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000367C(a10);
  }

  _Unwind_Resume(exception_object);
}

char *sub_10017225C(uint64_t a1, uint64_t a2)
{
  sub_100174FE4((a1 + 128), *(a1 + 136), *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 4);
  result = sub_100175390((a1 + 104), *(a1 + 112), *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 4);
  *(a1 + 48) += *(a2 + 48);
  return result;
}

void sub_1001722C0(uint64_t *a1@<X0>, unsigned int a2@<W1>, unint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  if (*a1 == v7)
  {
    *a6 = v8;
    a6[1] = v7;
    a6[2] = a1[2];
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    return;
  }

  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  v10 = a4;
  v11 = a2;
  v42 = a3 - 1;
  v43 = a4 * a5;
  do
  {
    v12 = *(v8 + 32) * v10;
    v13 = v12 / v11 * v11;
    v14 = a6[1];
    if (*a6 != v14)
    {
      v15 = *(v14 - 120) * a4 + *(v14 - 136) * v10;
      LODWORD(v16) = v12 - v15;
      v17 = v12 >= v15 && v15 + a3 > v13;
      if (v17 && (((*(v14 - 56) - *(v14 - 64)) >> 4) + ((*(v8 + 112) - *(v8 + 104)) >> 4) + 1) < 0x400)
      {
        goto LABEL_26;
      }

      v18 = v14 - 168;
      v19 = (v42 + v15) / a3 * a3;
      if (v43 < v19)
      {
        LODWORD(v19) = v43;
      }

      sub_100172008(v18, v19 - v15);
    }

    memset(v53, 0, sizeof(v53));
    *__p = 0u;
    v21 = *(v8 + 152);
    v20 = *(v8 + 160);
    if (v20)
    {
      atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
    }

    *&v54 = v21;
    *(&v54 + 1) = v20;
    v23 = *(v8 + 88);
    v22 = *(v8 + 96);
    v24 = *(v8 + 16);
    v45 = *v8;
    v46 = v24;
    v26 = *(v8 + 48);
    v25 = *(v8 + 64);
    v27 = *(v8 + 32);
    v50 = *(v8 + 80);
    v48 = v26;
    v49 = v25;
    v47 = v27;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
    }

    *&v51 = v23;
    *(&v51 + 1) = v22;
    LODWORD(v48) = 0;
    *&v47 = v13 / v10;
    v28 = a6[1];
    if (v28 >= a6[2])
    {
      v33 = sub_10007A7C0(a6, &v45);
      v34 = *(&v54 + 1);
      a6[1] = v33;
      if (v34)
      {
        sub_10000367C(v34);
      }
    }

    else
    {
      v29 = v46;
      *v28 = v45;
      *(v28 + 16) = v29;
      v30 = v47;
      v31 = v48;
      v32 = v49;
      *(v28 + 80) = v50;
      *(v28 + 48) = v31;
      *(v28 + 64) = v32;
      *(v28 + 32) = v30;
      *(v28 + 88) = v51;
      v51 = 0uLL;
      *(v28 + 104) = 0;
      *(v28 + 112) = 0;
      *(v28 + 120) = 0;
      *(v28 + 128) = 0;
      *(v28 + 104) = *__p;
      *(v28 + 120) = v53[0];
      __p[0] = 0;
      __p[1] = 0;
      v53[0] = 0;
      *(v28 + 136) = 0;
      *(v28 + 144) = 0;
      *(v28 + 128) = *&v53[1];
      *(v28 + 144) = v53[3];
      memset(&v53[1], 0, 24);
      *(v28 + 152) = v54;
      v54 = 0uLL;
      a6[1] = v28 + 168;
    }

    v55 = &v53[1];
    sub_10007182C(&v55);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (*(&v51 + 1))
    {
      sub_10000367C(*(&v51 + 1));
    }

    v16 = v12 % v11;
    v14 = a6[1];
LABEL_26:
    v35 = v14 - 168;
    sub_100172008(v14 - 168, v16);
    sub_10017225C(v35, v8);
    v8 += 168;
  }

  while (v8 != v7);
  v36 = a6[1];
  v37 = v36 - 168;
  v38 = *(v36 - 120) * a4 + *(v36 - 136) * v10;
  v39 = (v42 + v38) / a3 * a3;
  if (v43 < v39)
  {
    LODWORD(v39) = v43;
  }

  sub_100172008(v37, v39 - v38);
  v40 = *a6;
  v41 = a6[1];
  while (v40 != v41)
  {
    if (*v40 == 2)
    {
      *(v40 + 24) = *(v40 + 104);
    }

    v40 += 168;
  }
}

void sub_1001725BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100071758(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001725EC(uint64_t a1, void *a2)
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
    sub_100178278(a1);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v6 = *(a1 + 8);
    v10 = v8 + v9;
  }

  *(*(v6 + ((v10 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v10 & 0x1FF)) = *a2;
  *(a1 + 40) = v9 + 1;
  v11 = v8 + v9 + 1;
  v12 = *(a1 + 8);
  v13 = (v12 + 8 * (v11 >> 9));
  v14 = *v13 + 8 * (v11 & 0x1FF);
  if (*(a1 + 16) == v12)
  {
    v14 = 0;
  }

  if (v14 == *v13)
  {
    v14 = *(v13 - 1) + 4096;
  }

  return v14 - 8;
}

void sub_1001726AC(uint64_t a1)
{
  if (*(a1 + 616))
  {
    std::mutex::lock((a1 + 512));
    for (i = 0; *(a1 + 616); --i)
    {
      sub_100170D0C(a1 + 304);
      if (!v3)
      {
        break;
      }

      v4 = *(*(*(a1 + 584) + ((*(a1 + 608) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 608) & 0x1FFLL));
      v5 = *(v4 + 32);
      v6 = *(v4 + 48);
      v7 = *(v4 + 64);
      *(v3 + 80) = *(v4 + 80);
      *(v3 + 48) = v6;
      *(v3 + 64) = v7;
      *(v3 + 32) = v5;
      v8 = *(v4 + 16);
      *v3 = *v4;
      *(v3 + 16) = v8;
      *(v3 + 8) = *(a1 + 368);
      *(a1 + 608) = vaddq_s64(*(a1 + 608), xmmword_1001C7E60);
      sub_10006A604(a1 + 576, 1);
    }

    std::mutex::unlock((a1 + 512));
    if (i)
    {
      v9 = *(a1 + 352);

      io_rings_enter(v9, -i, 0);
    }
  }
}

uint64_t sub_1001727C0(uint64_t result)
{
  v1 = atomic_load((result + 632));
  if (v1 != 1)
  {
    v2 = result;
    if (atomic_exchange((result + 632), 1u) == 2)
    {
      sub_100157ECC((result + 624));
    }

    sub_100157ED4((v2 + 624));
    sub_100157EC4((v2 + 624), &stru_10022D480);
    if (io_rings_cancel(*(v2 + 352)) < 0)
    {
      goto LABEL_32;
    }

    std::mutex::lock((v2 + 512));
    v3 = *(v2 + 584);
    v4 = *(v2 + 592);
    if (v4 == v3)
    {
      v8 = (v2 + 616);
    }

    else
    {
      v5 = *(v2 + 608);
      v6 = &v3[v5 >> 9];
      v7 = (*v6 + 8 * (v5 & 0x1FF));
      v8 = (v2 + 616);
      v9 = *(v3 + (((*(v2 + 616) + v5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(v2 + 616) + v5) & 0x1FF);
      if (v7 != v9)
      {
        do
        {
          v10 = *v7;
          v21 = 0u;
          memset(v22, 0, sizeof(v22));
          memset(v20, 0, sizeof(v20));
          *(v10 + 80) = 0;
          *(v10 + 48) = 0u;
          *(v10 + 64) = 0u;
          *(v10 + 16) = 0u;
          *(v10 + 32) = 0u;
          *v10 = 0u;
          v11 = *(&v20[5] + 8);
          *(&v20[5] + 1) = 0;
          *&v20[6] = 0;
          v12 = *(v10 + 96);
          *(v10 + 88) = v11;
          if (v12)
          {
            sub_10000367C(v12);
          }

          v13 = *(v10 + 104);
          if (v13)
          {
            *(v10 + 112) = v13;
            operator delete(v13);
            *(v10 + 104) = 0;
            *(v10 + 112) = 0;
            *(v10 + 120) = 0;
          }

          *(v10 + 104) = *(&v20[6] + 8);
          *(v10 + 120) = *(&v20[7] + 1);
          memset(&v20[6] + 8, 0, 24);
          sub_1000B2A24((v10 + 128));
          *(v10 + 128) = v21;
          *(v10 + 144) = v22[0];
          v21 = 0uLL;
          memset(v22, 0, sizeof(v22));
          v14 = *(v10 + 160);
          *(v10 + 152) = *&v22[1];
          if (v14)
          {
            sub_10000367C(v14);
          }

          if (v22[2])
          {
            sub_10000367C(v22[2]);
          }

          *&v18 = &v21;
          sub_10007182C(&v18);
          if (*(&v20[6] + 1))
          {
            *&v20[7] = *(&v20[6] + 1);
            operator delete(*(&v20[6] + 1));
          }

          if (*&v20[6])
          {
            sub_10000367C(*&v20[6]);
          }

          if (++v7 - *v6 == 4096)
          {
            v15 = v6[1];
            ++v6;
            v7 = v15;
          }
        }

        while (v7 != v9);
        v3 = *(v2 + 584);
        v4 = *(v2 + 592);
        v8 = (v2 + 616);
      }
    }

    *v8 = 0;
    v16 = v4 - v3;
    if (v16 >= 3)
    {
      do
      {
        operator delete(*v3);
        v3 = (*(v2 + 584) + 8);
        *(v2 + 584) = v3;
        v16 = (*(v2 + 592) - v3) >> 3;
      }

      while (v16 > 2);
    }

    if (v16 == 1)
    {
      v17 = 256;
    }

    else
    {
      if (v16 != 2)
      {
LABEL_31:
        std::mutex::unlock((v2 + 512));
LABEL_32:
        *&v18 = "di_hybrid_subscriber_t::cancel()";
        *(&v18 + 1) = 30;
        v19 = 0;
        sub_100172AC8(v20, &v18);
        sub_1000026BC(v23, "Plugin's async ring cancelled, ret code ", 40);
        std::ostream::operator<<();
        std::ostream::~ostream();
        sub_100175970(v20);
        return std::ios::~ios();
      }

      v17 = 512;
    }

    *(v2 + 608) = v17;
    goto LABEL_31;
  }

  return result;
}

void sub_100172AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100172BF0(va);
  _Unwind_Resume(a1);
}

void *sub_100172AC8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10017844C(a1, a2);
  *a1 = off_10022DBC8;
  a1[45] = &off_10022DCC8;
  a1[46] = &off_10022DCF0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022DBC8;
  a1[45] = off_10022DC50;
  a1[46] = off_10022DC78;
  return a1;
}

void sub_100172BCC(_Unwind_Exception *a1)
{
  sub_100175970(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100172BF0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100175970(a1);
  std::ios::~ios();
  return a1;
}

void sub_100172C34(uint64_t a1)
{
  v2 = *(a1 + 280) != 0;
  sub_100170D78(a1 + 304, &v18);
  v3 = v19;
  if (v19)
  {
    v4 = v18;
    do
    {
      v5 = *(v4 + 152);
      v6 = *(v4 + 160);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        v8 = _NSConcreteStackBlock;
        v9 = 1174405120;
        v10 = sub_100172E30;
        v11 = &unk_10022D4A0;
        v12 = a1;
        v13 = v4;
        v14 = v4;
        v15 = v3;
        v16 = v5;
        v17 = v6;
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v8 = _NSConcreteStackBlock;
        v9 = 1174405120;
        v10 = sub_100172E30;
        v11 = &unk_10022D4A0;
        v12 = a1;
        v13 = v4;
        v14 = v4;
        v15 = v3;
        v16 = v5;
        v17 = 0;
      }

      if (*(a1 + 280) || *(v5 + 104) == 1)
      {
        sub_100157E0C((a1 + 504), &v8);
        v2 = 1;
      }

      else
      {
        v10(&v8);
      }

      if (v17)
      {
        sub_10000367C(v17);
      }

      if (v6)
      {
        sub_10000367C(v6);
      }

      sub_100170D78(a1 + 304, &v18);
      v4 = v18;
      v3 = v19;
    }

    while ((v19 & 1) != 0);
  }

  if (v2)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 0x40000000;
    v7[2] = sub_1001733AC;
    v7[3] = &unk_10022D4D0;
    v7[4] = a1;
    sub_100157E0C((a1 + 504), v7);
  }

  else
  {
    sub_1001726AC(a1);
  }
}

void sub_100172E0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a24)
  {
    sub_10000367C(a24);
  }

  if (v24)
  {
    sub_10000367C(v24);
  }

  _Unwind_Resume(exception_object);
}

void sub_100172E30(uint64_t a1)
{
  v2 = sub_100172F40(*(a1 + 32), *(a1 + 40), *(a1 + 56));
  if (v2)
  {
    v3 = 0;
    atomic_compare_exchange_strong((*(a1 + 72) + 16), &v3, v2);
  }

  v4 = *(a1 + 40);
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  v5 = *(v4 + 96);
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  if (v5)
  {
    sub_10000367C(v5);
  }

  v6 = *(v4 + 104);
  if (v6)
  {
    *(v4 + 112) = v6;
    operator delete(v6);
  }

  *(v4 + 104) = 0;
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  sub_1000B2A24((v4 + 128));
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v7 = *(v4 + 160);
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  if (v7)
  {
    sub_10000367C(v7);
  }

  v10 = v8;
  sub_10007182C(&v10);
}

uint64_t sub_100172F40(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 48);
  if (a3 == v3)
  {
    v5 = *(a1 + 280);
    if (v5)
    {
      v33 = *(a2 + 32);
      v6 = *(a1 + 296);
      v7 = sub_10019E2E8();
      v8 = v7;
      v10 = *(a2 + 104);
      v9 = *(a2 + 112);
      v11 = v44;
      __p = v44;
      v43 = xmmword_1001C6CC0;
      v12 = (v9 - v10 - 16) >> 4;
      if (v9 == v10)
      {
        v13 = 0;
      }

      else
      {
        v13 = v12 + 1;
      }

      if (v13 < 6)
      {
        if (v10 == v9)
        {
          v13 = 0;
        }

        else
        {
          v23 = v12 + 1;
          do
          {
            v24 = *v10;
            v25 = v7[1];
            if (v25)
            {
              atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
            }

            v26 = *(v10 + 1);
            *v11 = v24;
            v11[1] = v25;
            v11[2] = v26;
            v10 += 16;
            v11 += 3;
            --v23;
          }

          while (v23);
        }
      }

      else
      {
        if (v13 >= 0x555555555555556)
        {
          sub_100026DEC("get_next_capacity, allocator's max size reached");
        }

        v14 = operator new(24 * v13);
        v15 = v14;
        if (__p)
        {
          v31 = v14;
          v32 = v5;
          v16 = v43;
          if (v43)
          {
            v17 = (__p + 8);
            do
            {
              if (*v17)
              {
                sub_10000367C(*v17);
              }

              v17 += 3;
              --v16;
            }

            while (v16);
          }

          *&v43 = 0;
          v15 = v31;
          v5 = v32;
          if (v44 != __p)
          {
            operator delete(__p);
          }
        }

        *(&v43 + 1) = v13;
        __p = v15;
        *&v43 = 0;
        if (v10 == v9)
        {
          v22 = 0;
          v18 = v15;
        }

        else
        {
          v18 = v15;
          do
          {
            v19 = *v10;
            v20 = v8[1];
            if (v20)
            {
              atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
            }

            v21 = *(v10 + 1);
            *v18 = v19;
            *(v18 + 1) = v20;
            *(v18 + 2) = v21;
            v10 += 16;
            v18 += 24;
          }

          while (v10 != v9);
          v22 = v43;
        }

        v13 = v22 - 0x5555555555555555 * ((v18 - v15) >> 3);
      }

      *&v43 = v13;
      v45 = &v47;
      v46 = xmmword_1001C6CC0;
      sub_100027018(&v45, v13);
      v37 = __p;
      v34 = __p + 24 * v13;
      v41 = v45;
      v40 = &v45[v46];
      sub_100024588(v48, &v37, &v34, &v41, &v40, v6 * v33, v6 * v3, 1);
      v27 = (*(*v5 + 144))(v5);
      sub_1000246F4(v48, &v37);
      sub_100024448(v48, &v34);
      v28 = sub_1000037F0(v27);
      if (v36)
      {
        sub_10000367C(v36);
      }

      if (v35)
      {
        sub_10000367C(v35);
      }

      if (v39)
      {
        sub_10000367C(v39);
      }

      if (v38)
      {
        sub_10000367C(v38);
      }

      if (v27)
      {
        (*(*v27 + 40))(v27);
      }

      if (v28 < 0)
      {
        v5 = v28;
      }

      else
      {
        v5 = 0;
      }

      sub_1000036E8(&__p);
    }

    v29 = *(a2 + 88);
    if (v29)
    {
      sub_10014F738(v29 + 248);
    }
  }

  else if (a3 < 0)
  {
    return a3;
  }

  else
  {
    return 4294967291;
  }

  return v5;
}

void sub_1001732D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  sub_100002440(&a15);
  sub_100002440(&a43);
  if (v43)
  {
    (*(*v43 + 40))(v43);
  }

  sub_1000036E8(&STACK[0x200]);
  _Unwind_Resume(a1);
}

uint64_t sub_100173380(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 80);
  *(result + 72) = *(a2 + 72);
  *(result + 80) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10017339C(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1)
  {
    sub_10000367C(v1);
  }
}

uint64_t sub_1001733B4(uint64_t a1)
{
  io_rings_cq_get_overruns(a1);
  *&v3 = "di_plugin_cq_event_callback(io_uhandle_t, void *, enum io_rings_event_type_t, struct io_rings_event_type_data_t *)";
  *(&v3 + 1) = 27;
  v4 = 16;
  sub_100173474(v5, &v3);
  std::ostream::operator<<();
  sub_1000026BC(v6, " overrun events occurred in the plugin's ring!", 46);
  std::ostream::~ostream();
  sub_1001736A8(v5);
  std::ios::~ios();
  return io_rings_cq_clear_overruns(a1);
}

void sub_100173460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10017359C(va);
  _Unwind_Resume(a1);
}

void *sub_100173474(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1001735E0(a1, a2);
  *a1 = off_10022D508;
  a1[45] = &off_10022D608;
  a1[46] = &off_10022D630;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022D508;
  a1[45] = off_10022D590;
  a1[46] = off_10022D5B8;
  return a1;
}

void sub_100173578(_Unwind_Exception *a1)
{
  sub_1001736A8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10017359C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001736A8(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1001735E0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10022D6A0;
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

void sub_100173690(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001736A8(uint64_t a1)
{
  *a1 = off_10022D6A0;
  sub_100173AE8(a1);
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

void sub_100173814(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001736A8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10017387C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1001738B8(_BYTE *a1, int a2)
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

uint64_t sub_100173924(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001736A8(v1);

  return std::ios::~ios();
}

void sub_100173970(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001736A8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001739D4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001736A8(v1);

  return std::ios::~ios();
}

void sub_100173A34(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001736A8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100173AB0(uint64_t a1)
{
  sub_1001736A8(a1);

  operator delete();
}

uint64_t sub_100173AE8(uint64_t a1)
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
        sub_100173C5C((a1 + 72), __p);
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

void sub_100173C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100173C5C(uint64_t *a1, uint64_t *a2)
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
    v21 = 57;
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
      v21 = 57;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100173E40(uint64_t a1, uint64_t a2)
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

uint64_t *sub_100173EC0(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return sub_100173EF0((result + 1), v3);
  }

  return result;
}

uint64_t sub_100173EF0(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_10002870C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_100173F74(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10017420C(v1);

  return std::ios::~ios();
}

uint64_t sub_100173FC0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10017420C(v1);

  return std::ios::~ios();
}

void sub_100174020(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10017420C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100174088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1001740C4(_BYTE *a1, int a2)
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

void sub_100174130(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10017420C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100174194(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10017420C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10017420C(uint64_t a1)
{
  *a1 = off_10022D8C0;
  sub_100174378(a1);
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

uint64_t sub_100174378(uint64_t a1)
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
        sub_100174528((a1 + 72), __p);
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

void sub_1001744C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001744F0(uint64_t a1)
{
  sub_10017420C(a1);

  operator delete();
}

int *sub_100174528(uint64_t *a1, uint64_t *a2)
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
    v21 = 250;
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
      v21 = 250;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10017470C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001749A4(v1);

  return std::ios::~ios();
}

uint64_t sub_100174758(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001749A4(v1);

  return std::ios::~ios();
}

void sub_1001747B8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001749A4(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100174820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10017485C(_BYTE *a1, int a2)
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

void sub_1001748C8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001749A4(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10017492C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001749A4(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001749A4(uint64_t a1)
{
  *a1 = off_10022DAE0;
  sub_100174B10(a1);
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

uint64_t sub_100174B10(uint64_t a1)
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
        sub_100174CC0((a1 + 72), __p);
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

void sub_100174C5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100174C88(uint64_t a1)
{
  sub_1001749A4(a1);

  operator delete();
}

int *sub_100174CC0(uint64_t *a1, uint64_t *a2)
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
    v21 = 259;
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
      v21 = 259;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void sub_100174F0C(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    operator delete[]();
  }

  __cxa_rethrow();
}

void sub_100174F4C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100174F84(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    operator delete[]();
  }

  return result;
}

uint64_t sub_100174FA4(uint64_t a1, uint64_t a2)
{
  if (sub_100009720(a2, &off_10022DBA0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_100174FE4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 4)
    {
      v16 = v10 - a2;
      v17 = (v10 - a2) >> 4;
      if (v17 >= a5)
      {
        sub_1001751B0(a1, a2, a1[1], &a2[2 * a5]);
        v18 = (v7 + 16 * a5);
      }

      else
      {
        a1[1] = sub_100175214(a1, v16 + a3, a4, a1[1]);
        if (v17 < 1)
        {
          return v5;
        }

        sub_1001751B0(a1, v5, v10, &v5[2 * a5]);
        v18 = (v16 + v7);
      }

      sub_100175324(v30, v7, v18, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 4);
    if (v12 >> 60)
    {
      sub_100036CAC();
    }

    v13 = a2 - v11;
    v14 = v9 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v32 = a1;
    if (v15)
    {
      sub_10007C890(a1, v15);
    }

    v19 = 16 * (v13 >> 4);
    v31 = 0;
    v20 = 16 * a5;
    v21 = v19;
    v22 = (v19 + 16 * a5);
    do
    {
      *v21++ = *v7;
      *v7 = 0;
      *(v7 + 8) = 0;
      v7 += 16;
      v20 -= 16;
    }

    while (v20);
    memcpy(v22, v5, a1[1] - v5);
    v23 = *a1;
    v24 = &v22[a1[1] - v5];
    a1[1] = v5;
    v25 = v5 - v23;
    v26 = (v19 - (v5 - v23));
    memcpy(v26, v23, v25);
    v27 = *a1;
    *a1 = v26;
    a1[1] = v24;
    v28 = a1[2];
    a1[2] = v31;
    v30[2] = v27;
    v31 = v28;
    v30[0] = v27;
    v30[1] = v27;
    sub_1000715F8(v30);
    return v19;
  }

  return v5;
}

void *sub_1001751B0(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = (a2 + v6 - a4);
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8++ = *v9;
      *v9 = 0;
      v9[1] = 0;
      v9 += 2;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_1001752C0(&v11, a2, v7, v6);
}

_OWORD *sub_100175214(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v4 = a4;
  v9 = a4;
  v8 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  if (a2 != a3)
  {
    do
    {
      *v4++ = *a2;
      *a2 = 0;
      *(a2 + 8) = 0;
      a2 += 16;
    }

    while (a2 != a3);
    v9 = v4;
  }

  v7 = 1;
  sub_100175288(v6);
  return v4;
}

uint64_t sub_100175288(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000B2B60(a1);
  }

  return a1;
}

void *sub_1001752C0(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(v7 - 1);
      v7 -= 2;
      *v7 = 0;
      v7[1] = 0;
      v9 = *(a4 - 8);
      *(a4 - 16) = v8;
      a4 -= 16;
      if (v9)
      {
        sub_10000367C(v9);
      }
    }

    while (v7 != a2);
  }

  return a3;
}

__int128 *sub_100175324(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
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
        sub_10000367C(v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

char *sub_100175390(void *a1, char *__src, __int128 *a3, __int128 *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return __src;
  }

  v7 = a3;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 <= (v9 - v10) >> 4)
  {
    v16 = (v10 - __src) >> 4;
    if (v16 >= a5)
    {
      v20 = &__src[16 * a5];
      v21 = &v10[-a5];
      v22 = a1[1];
      while (v21 < v10)
      {
        v23 = *v21++;
        *v22++ = v23;
      }

      a1[1] = v22;
      if (v10 != v20)
      {
        memmove(&__src[16 * a5], __src, v10 - v20);
      }

      v24 = &v7[a5];
      v25 = __src;
      do
      {
        v26 = *v7++;
        *v25++ = v26;
      }

      while (v7 != v24);
    }

    else
    {
      v17 = (a3 + v10 - __src);
      v18 = a1[1];
      if (v17 == a4)
      {
        v19 = a1[1];
      }

      else
      {
        v36 = (a3 + v10 - __src);
        v19 = a1[1];
        do
        {
          v37 = *v36++;
          *v19 = v37;
          v19 += 16;
          ++v18;
        }

        while (v36 != a4);
      }

      a1[1] = v18;
      if (v16 >= 1)
      {
        v38 = &__src[16 * a5];
        v39 = &v18[-a5];
        v40 = v18;
        while (v39 < v10)
        {
          v41 = *v39++;
          *v40++ = v41;
        }

        a1[1] = v40;
        if (v19 != v38)
        {
          memmove(&__src[16 * a5], __src, v18 - v38);
        }

        if (v10 != __src)
        {
          v42 = __src;
          do
          {
            v43 = *v7++;
            *v42++ = v43;
          }

          while (v7 != v17);
        }
      }
    }

    return __src;
  }

  v11 = *a1;
  v12 = a5 + ((v10 - *a1) >> 4);
  if (v12 >> 60)
  {
    sub_100036CAC();
  }

  v13 = __src - v11;
  v14 = v9 - v11;
  if (v14 >> 3 > v12)
  {
    v12 = v14 >> 3;
  }

  if (v14 >= 0x7FFFFFFFFFFFFFF0)
  {
    v15 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    sub_10007A778(a1, v15);
  }

  v27 = 16 * (v13 >> 4);
  v28 = 16 * a5;
  v29 = v27;
  do
  {
    v30 = *v7++;
    *v29++ = v30;
    v28 -= 16;
  }

  while (v28);
  memcpy((v27 + 16 * a5), __src, a1[1] - __src);
  v31 = *a1;
  v32 = v27 + 16 * a5 + a1[1] - __src;
  a1[1] = __src;
  v33 = (__src - v31);
  v34 = (v27 - (__src - v31));
  memcpy(v34, v31, v33);
  v35 = *a1;
  *a1 = v34;
  a1[1] = v32;
  a1[2] = 0;
  if (v35)
  {
    operator delete(v35);
  }

  return v27;
}

void sub_1001755B0(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; sub_10007AAB4(a1, i))
  {
    i -= 168;
  }

  *(a1 + 8) = a2;
}

uint64_t sub_100175604(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  *(a1 + 20) = a4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = *a5;
  *(a1 + 40) = *(a5 + 16);
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *(a1 + 48) = 0;
  v7 = a1 + 48;
  *(v7 + 56) = 0;
  if (*(a6 + 56) == 1)
  {
    sub_10008A2D0(v7, a6);
    *(a1 + 104) = 1;
  }

  return a1;
}

void sub_100175680(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100071758(va);
  _Unwind_Resume(a1);
}

void sub_100175698(uint64_t *a1)
{
  if (*a1)
  {
    sub_1001755B0(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_1001756D8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100175970(v1);

  return std::ios::~ios();
}

uint64_t sub_100175724(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100175970(v1);

  return std::ios::~ios();
}

void sub_100175784(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100175970(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001757EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100175828(_BYTE *a1, int a2)
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

void sub_100175894(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100175970(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001758F8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100175970(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100175970(uint64_t a1)
{
  *a1 = off_10022DD60;
  sub_100175ADC(a1);
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

uint64_t sub_100175ADC(uint64_t a1)
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
        sub_100175C8C((a1 + 72), __p);
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

void sub_100175C28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100175C54(uint64_t a1)
{
  sub_100175970(a1);

  operator delete();
}

int *sub_100175C8C(uint64_t *a1, uint64_t *a2)
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
    v21 = 610;
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
      v21 = 610;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100175F04(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100175F50(uint64_t a1)
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

uint64_t sub_100176040(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10022DE70;
  a2[1] = v2;
  return result;
}

uint64_t sub_1001760CC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10017618C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10022D8C0;
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

void sub_10017623C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100176254(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10022DAE0;
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

void sub_100176304(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_10017631C(uint64_t a1)
{
  v2 = atomic_load((a1 + 16));
  if (!v2)
  {
    v2 = *(a1 + 20);
  }

  io_rings_return_status(*(*a1 + 56), *(a1 + 8), v2, 0);
  v3 = (a1 + 24);
  sub_100071758(&v3);
  operator delete();
}

void sub_100176390(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1001763C8(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = atomic_load((v1 + 16));
  if (!v2)
  {
    v2 = *(v1 + 20);
  }

  io_rings_return_status(*(*v1 + 56), *(v1 + 8), v2, 0);
  v3 = (v1 + 24);
  sub_100071758(&v3);
  operator delete();
}

uint64_t sub_10017643C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100176508(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10022DF50;
  sub_10017664C(a1 + 3, a2, a3, a4, *a5);
}

void sub_100176588(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10022DF50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1001765DC(uint64_t a1)
{
  v5 = (a1 + 520);
  sub_10007182C(&v5);
  v2 = *(a1 + 496);
  if (v2)
  {
    *(a1 + 504) = v2;
    operator delete(v2);
  }

  sub_100027DE8(a1 + 272);
  sub_100029C30(a1 + 240);
  v3 = *(a1 + 200);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return sub_10002752C(a1 + 24);
}

void sub_10017664C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v8;
  v10 = *(a2 + 32);
  sub_100026638(&v11, a2 + 40);
  sub_1001768C8(a1, v9, a3, a5);
}

void sub_100176868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  a9 = (v9 + 496);
  sub_10007182C(&a9);
  v12 = *v10;
  if (*v10)
  {
    *(v9 + 480) = v12;
    operator delete(v12);
  }

  sub_100176E64(v9);
  _Unwind_Resume(a1);
}

void sub_1001768C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100176EAC(a2, v30);
  if (v32 == 3)
  {
    sub_10014E08C(v22, a4 == 0, v33, v35);
    sub_10014E140(v28);
    v29 = 2;
    sub_10014E200(v22);
  }

  else if (v32 == 2)
  {
    sub_10014DCB8(v22, a4 == 0, v33, v34, v35);
    sub_10014DDF4(v28);
    v29 = 1;
    v22[0] = off_100228258;
    sub_100027454(&v25);
    v22[0] = off_100204580;
    if (__p)
    {
      v24 = __p;
      operator delete(__p);
    }
  }

  else
  {
    sub_10014E4B8(&v20, v34);
    sub_10014D72C(v22, a4 == 0, v33, &v20, v35);
    sub_10014D880(v28);
    v29 = 0;
    v22[0] = off_100228230;
    sub_1000273B4(v26);
    v8 = v25;
    v25 = 0;
    if (v8)
    {
      operator delete[]();
    }

    v22[0] = off_100204580;
    if (__p)
    {
      v24 = __p;
      operator delete(__p);
    }

    v9 = v20;
    v20 = 0;
    if (v9)
    {
      operator delete[]();
    }
  }

  v10 = *(sub_100176E00(a2) + 22);
  sub_100027480(a1, v28);
  a1[19] = v10;
  sub_10002752C(v28);
  if (v31)
  {
    sub_10000367C(v31);
  }

  sub_10019A650(a1 + 20);
  a1[20] = off_1002080A8;
  a1[24] = 0;
  a1[25] = 0;
  a1[23] = -1;
  v11 = sub_100176E00(a2)[12];
  a1[26] = v11 - sub_100176E00(a2)[3];
  a1[27] = off_10022DFA0;
  a1[28] = a1;
  a1[30] = a1 + 27;
  v12 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v12;
  v18 = *(a2 + 32);
  sub_100026638(&v19, a2 + 40);
  sub_100029AA4(v27, (a1 + 27));
  sub_100029AA4(v22, v27);
  sub_10017715C(v28, v17, v22);
  sub_100029C30(v22);
  v13 = *(a3 + 16);
  v14[0] = *a3;
  v14[1] = v13;
  v15 = *(a3 + 32);
  sub_100026638(&v16, a3 + 40);
  sub_100029AA4(v21, (a1 + 27));
  sub_100029AA4(v30, v21);
  sub_10017715C(v22, v14, v30);
  sub_100029C30(v30);
  sub_1001771C4((a1 + 31), a1, (a1 + 20), v28, v22, a4, 0);
}

void sub_100176CBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  sub_100027320(&a54);
  if (a49)
  {
    operator delete[]();
  }

  v56 = *(v54 - 176);
  if (v56)
  {
    sub_10000367C(v56);
  }

  _Unwind_Resume(a1);
}

uint64_t **sub_100176E00(uint64_t **a1)
{
  sub_100176EAC(a1, &v3);
  sub_1000254A0((a1 + 5), &v3);
  if (v4)
  {
    sub_10000367C(v4);
  }

  return a1 + 5;
}

void sub_100176E4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000367C(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100176E64(uint64_t a1)
{
  sub_100027DE8(a1 + 248);
  sub_100029C30(a1 + 216);
  v2 = *(a1 + 176);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_10002752C(a1);
  return a1;
}

void sub_100176EAC(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v6 = **a1;
  v5 = (*a1)[1];
  if (v5 >= a1[2])
  {
    v7 = a1[2];
  }

  else
  {
    v7 = (*a1)[1];
  }

  v8 = *(sub_10019E2E8() + 1);
  v13 = v6;
  v14 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = v7;
  v16 = v4;
  v17 = v5;
  v19 = 0;
  v20 = 0;
  v18 = 1 << *(a1 + 8);
  sub_100026638(a2, &v13);
  if (v14)
  {
    sub_10000367C(v14);
  }

  v9 = a1[3];
  if (v9)
  {
    if (*(a2 + 104) == 1)
    {
      v10 = *v9;
      v11 = *(v9 + 16);
      v12 = *(v9 + 32);
      *(a2 + 96) = *(v9 + 48);
      *(a2 + 64) = v11;
      *(a2 + 80) = v12;
      *(a2 + 48) = v10;
    }

    else
    {
      sub_10008A2D0(a2 + 48, v9);
      *(a2 + 104) = 1;
    }
  }
}

void sub_100176F90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v12 = *(v10 + 8);
  if (v12)
  {
    sub_10000367C(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100176FB8(uint64_t a1)
{
  sub_100029C30(a1 + 152);
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_10000367C(v2);
  }

  return a1;
}

uint64_t sub_100177060(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10022DFA0;
  a2[1] = v2;
  return result;
}

void sub_10017708C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 8);
  sub_100026638(&v5, a2);
  v7 += *(v4 + 208);
  if (v8 == 1)
  {
    v8 = 0;
  }

  sub_100026638(a3, &v5);
  if (v6)
  {
    sub_10000367C(v6);
  }
}

void sub_1001770F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000367C(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100177110(uint64_t a1, uint64_t a2)
{
  if (sub_100009720(a2, &off_10022E000))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10017715C(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = a2[1];
  *(a1 + 32) = *(a2 + 8);
  *a1 = v5;
  *(a1 + 16) = v6;
  sub_100026638(a1 + 40, a2 + 40);
  sub_100029AA4(a1 + 152, a3);
  return a1;
}

void sub_1001771AC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    sub_10000367C(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001771C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v14 = vm_page_size;
  v15 = *(a2 + 152);
  sub_1001501BC(a6, v20);
  v16 = sub_100177708(a4, a5, v14, v15, v20);
  sub_10014FD78(a1, v16);
  sub_1000287DC(v20);
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  *(a1 + 80) = v8;
  *(a1 + 88) = a7;
  v17 = *(a4 + 16);
  v26[0] = *a4;
  v26[1] = v17;
  v27 = *(a4 + 32);
  sub_100026638(&v28, a4 + 40);
  sub_100029AA4(v30, a4 + 152);
  v18 = *(a5 + 16);
  v21[0] = *a5;
  v21[1] = v18;
  v22 = *(a5 + 32);
  sub_100026638(&v23, a5 + 40);
  sub_100029AA4(v25, a5 + 152);
  v19 = sub_100177A74(v26, v21);
  sub_100029C30(v25);
  if (v24)
  {
    sub_10000367C(v24);
  }

  sub_100029C30(v30);
  if (v29)
  {
    sub_10000367C(v29);
  }

  *(a1 + 96) = v19;
  is_mul_ok(3 * v19, 0x18uLL);
  operator new[]();
}

void sub_100177600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10002893C(v12 + 32);
  sub_1000287DC(va);
  sub_100028ACC(v11 + 25);
  sub_1000296FC(v11 + 22);
  sub_100028504(v11 + 19);
  sub_1000297B0(v11 + 16);
  sub_100028558(v11 + 13);
  sub_10002986C(v11, 0);
  sub_1000298F0((v11 + 1));
  _Unwind_Resume(a1);
}

void sub_1001776F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1000287DC(va);
  JUMPOUT(0x1001776F0);
}

uint64_t sub_100177708(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32))
  {
    return 0;
  }

  sub_100177F3C(a1);
  sub_100026898(v28, v42);
  if (v43)
  {
    sub_10000367C(v43);
  }

  v11 = v30 / a3 * a3;
  sub_100177FD0(v42, a1, a2);
  sub_100177E14(v42, &v35);
  sub_100177E80(v42, v31);
  v10 = 0;
  v12 = v35;
  while (v12 != v31[0] || v36 != v31[1] || v38 != v31[3] || v39 != v32)
  {
    sub_100177F3C(&v35);
    sub_100026638(v22, v26);
    v13 = *(a5 + 24);
    if (!v13)
    {
      sub_10002870C();
    }

    if ((*(*v13 + 48))(v13, v22))
    {
      v14 = v25 - v11 + v24;
      if (v14 % a3)
      {
        v15 = a3 - v14 % a3;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15 + v14;
      v10 += v16;
      v11 += v16;
    }

    else
    {
      v17 = a3;
      if (!(v25 % a4))
      {
        if (!(v24 % a4))
        {
          v11 = v24 + v25;
          goto LABEL_26;
        }

        v17 = 0;
      }

      v18 = v17 + v10;
      if ((v24 + v25) % a4)
      {
        v19 = a3;
      }

      else
      {
        v19 = 0;
      }

      v10 = v18 + v19;
      v11 = (a4 - 1 + v24 + v25) / a4 * a4;
    }

LABEL_26:
    if (v23)
    {
      sub_10000367C(v23);
    }

    if (v27)
    {
      sub_10000367C(v27);
    }

    v20 = *(v35 + 8);
    if (v20 >= v37)
    {
      v20 = v37;
    }

    v37 -= v20;
    v12 = v35 + 16;
    v36 += v20;
    v35 += 16;
  }

  sub_100029C30(&v34);
  if (v33)
  {
    sub_10000367C(v33);
  }

  sub_100029C30(&v41);
  if (v40)
  {
    sub_10000367C(v40);
  }

  sub_100029C30(&v47);
  if (v46)
  {
    sub_10000367C(v46);
  }

  sub_100029C30(&v45);
  if (v44)
  {
    sub_10000367C(v44);
  }

  if (v29)
  {
    sub_10000367C(v29);
  }

  return v10;
}

void sub_100177A00(_Unwind_Exception *a1)
{
  if (STACK[0x2D0])
  {
    sub_10000367C(STACK[0x2D0]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100177A74(__int128 *a1, __int128 *a2)
{
  v4 = a1[1];
  v20 = *a1;
  v21 = v4;
  v22 = *(a1 + 8);
  sub_100026638(&v23, a1 + 40);
  sub_100029AA4(v25, a1 + 152);
  v14 = *a2;
  v15 = a2[1];
  v16 = *(a2 + 8);
  sub_100026638(&v17, a2 + 40);
  sub_100029AA4(v19, a2 + 152);
  v5 = *(&v20 + 1);
  if (v20 == v14 && __PAIR128__(*(&v21 + 1), *(&v20 + 1)) == __PAIR128__(*(&v15 + 1), *(&v14 + 1)) && v22 == v16)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = v21;
    v8 = v20 + 16;
    while (1)
    {
      v9 = v8;
      ++v6;
      v10 = *(v8 - 8);
      if (v10 >= v7)
      {
        v10 = v7;
      }

      v5 += v10;
      v7 -= v10;
      *&v21 = v7;
      v8 = v9 + 16;
      if (v9 == v14)
      {
        v11 = v5 == *(&v14 + 1) && *(&v21 + 1) == *(&v15 + 1);
        if (v11 && v22 == v16)
        {
          break;
        }
      }
    }

    *&v20 = v9;
    *(&v20 + 1) = v5;
  }

  sub_100029C30(v19);
  if (v18)
  {
    sub_10000367C(v18);
  }

  sub_100029C30(v25);
  if (v24)
  {
    sub_10000367C(v24);
  }

  return v6;
}

void sub_100177BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (a15)
  {
    sub_10000367C(a15);
  }

  sub_100176FB8(&a33);
  _Unwind_Resume(a1);
}

void sub_100177C2C(void *a1, __int128 *a2, __int128 *a3)
{
  sub_100177FD0(v23, a2, a3);
  sub_100177E14(v23, &v16);
  sub_100177E80(v23, v12);
  v4 = v16;
  while (v4 != v12[0] || v17 != v12[1] || v19 != v12[3] || v20 != v13)
  {
    sub_100177F3C(&v16);
    sub_100026638(&v7, v10);
    v5 = sub_10014FEB0(a1, &v7, 0);
    if (v5 != v9)
    {
      sub_100150200(a1, &v7, v5, 0);
    }

    if (v8)
    {
      sub_10000367C(v8);
    }

    if (v11)
    {
      sub_10000367C(v11);
    }

    v6 = *(v16 + 8);
    if (v6 >= v18)
    {
      v6 = v18;
    }

    v17 += v6;
    v18 -= v6;
    v4 = v16 + 16;
    v16 += 16;
  }

  sub_100029C30(&v15);
  if (v14)
  {
    sub_10000367C(v14);
  }

  sub_100029C30(&v22);
  if (v21)
  {
    sub_10000367C(v21);
  }

  sub_100029C30(&v27);
  if (v26)
  {
    sub_10000367C(v26);
  }

  sub_100029C30(&v25);
  if (v24)
  {
    sub_10000367C(v24);
  }
}

void sub_100177DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  sub_100176FB8(&a38);
  sub_100176FB8(&a61);
  sub_100177EF0(&STACK[0x258]);
  _Unwind_Resume(a1);
}

uint64_t sub_100177E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = *(a1 + 32);
  sub_100026638(a2 + 40, a1 + 40);
  return sub_100029AA4(a2 + 152, a1 + 152);
}

void sub_100177E60(void *a1)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    sub_10000367C(v3);
  }

  sub_100002A4C(a1);
}

uint64_t sub_100177E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 200);
  *a2 = *(a1 + 184);
  *(a2 + 16) = v4;
  *(a2 + 32) = *(a1 + 216);
  sub_100026638(a2 + 40, a1 + 224);
  return sub_100029AA4(a2 + 152, a1 + 336);
}

void sub_100177ED0(void *a1)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    sub_10000367C(v3);
  }

  sub_100002A4C(a1);
}

uint64_t sub_100177EF0(uint64_t a1)
{
  sub_100029C30(a1 + 336);
  v2 = *(a1 + 232);
  if (v2)
  {
    sub_10000367C(v2);
  }

  sub_100029C30(a1 + 152);
  v3 = *(a1 + 48);
  if (v3)
  {
    sub_10000367C(v3);
  }

  return a1;
}

void sub_100177F3C(uint64_t a1)
{
  sub_100176EAC(a1, &v3);
  v2 = *(a1 + 176);
  if (!v2)
  {
    sub_10002870C();
  }

  (*(*v2 + 48))(v2, &v3);
  if (v4)
  {
    sub_10000367C(v4);
  }
}

void sub_100177FB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000367C(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100177FD0(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v6 = *a2;
  v7 = a2[1];
  *(a1 + 32) = *(a2 + 8);
  *a1 = v6;
  *(a1 + 16) = v7;
  sub_100026638(a1 + 40, a2 + 40);
  sub_100029AA4(a1 + 152, a2 + 152);
  v8 = *a3;
  v9 = a3[1];
  *(a1 + 216) = *(a3 + 8);
  *(a1 + 200) = v9;
  *(a1 + 184) = v8;
  sub_100026638(a1 + 224, a3 + 40);
  sub_100029AA4(a1 + 336, a3 + 152);
  return a1;
}

void sub_100178058(void *a1)
{
  v3 = *(v1 + 232);
  if (v3)
  {
    sub_10000367C(v3);
  }

  sub_100002A4C(a1);
}

uint64_t sub_100178110(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  result = *a2;
  v4 = *a3;
  return result;
}

uint64_t sub_10017811C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const void *sub_1001781F0(uint64_t a1, void **a2, const void **a3, size_t *a4)
{
  v4 = *a3;
  memcpy(*a2, *a3, *a4);
  return v4;
}

uint64_t sub_10017822C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100178278(void *a1)
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
    sub_1001177FC(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_1001173D4(a1, &v10);
}

void sub_100178400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10017844C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10022DD60;
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

void sub_1001784FC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100178514(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = v4 + v3;
  if (__CFADD__(v4, v3))
  {
    v6 = -1;
  }

  else
  {
    v6 = v4 + v3;
  }

  if (__CFADD__(v4, v3))
  {
    v5 = v6;
  }

  if (v5 > *(a1 + 72))
  {
    *&v10 = "int Ram::_write(const sg_entry &)";
    *(&v10 + 1) = 15;
    v11 = 16;
    sub_10017861C(v12, &v10);
    sub_1000026BC(v13, "Trying to write @ ", 18);
    v8 = *(a2 + 24);
    std::ostream::operator<<();
    sub_1000026BC(v13, " ", 1);
    v9 = *(a2 + 16);
    std::ostream::operator<<();
    sub_1000026BC(v13, "bytes, which is after end of ramdisk", 36);
    sub_100178744(v12);
    return 4294967274;
  }

  else
  {
    memcpy((*(a1 + 64) + v4), *a2, v3);
    return *(a2 + 16);
  }
}

void sub_100178600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100178744(va);
  _Unwind_Resume(a1);
}

void *sub_10017861C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100179A2C(a1, a2);
  *a1 = off_10022E210;
  a1[45] = &off_10022E310;
  a1[46] = &off_10022E338;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022E210;
  a1[45] = off_10022E298;
  a1[46] = off_10022E2C0;
  return a1;
}

void sub_100178720(_Unwind_Exception *a1)
{
  sub_100178D38(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100178744(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100178D38(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100178788(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = v4 + v3;
  if (__CFADD__(v4, v3))
  {
    v6 = -1;
  }

  else
  {
    v6 = v4 + v3;
  }

  if (__CFADD__(v4, v3))
  {
    v5 = v6;
  }

  if (v5 > *(a1 + 72))
  {
    *&v10 = "int Ram::_read(const sg_entry &)";
    *(&v10 + 1) = 14;
    v11 = 16;
    sub_100178894(v12, &v10);
    sub_1000026BC(v13, "Trying to read @ ", 17);
    v8 = *(a2 + 24);
    std::ostream::operator<<();
    sub_1000026BC(v13, " ", 1);
    v9 = *(a2 + 16);
    std::ostream::operator<<();
    sub_1000026BC(v13, "bytes, which is after end of ramdisk", 36);
    sub_1001789BC(v12);
    return 4294967274;
  }

  else
  {
    memcpy(*a2, (*(a1 + 64) + v4), v3);
    return *(a2 + 16);
  }
}

void sub_100178878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1001789BC(va);
  _Unwind_Resume(a1);
}

void *sub_100178894(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100179AF4(a1, a2);
  *a1 = off_10022E430;
  a1[45] = &off_10022E530;
  a1[46] = &off_10022E558;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022E430;
  a1[45] = off_10022E4B8;
  a1[46] = off_10022E4E0;
  return a1;
}

void sub_100178998(_Unwind_Exception *a1)
{
  sub_1001794D0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1001789BC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001794D0(a1);
  std::ios::~ios();
  return a1;
}

void sub_100178A04(void *a1)
{
  sub_1001799D0(a1);

  operator delete();
}

uint64_t sub_100178A5C(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 72) < a2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 72) = a2;
  return result;
}

uint64_t sub_100178AA0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100178D38(v1);

  return std::ios::~ios();
}

uint64_t sub_100178AEC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100178D38(v1);

  return std::ios::~ios();
}

void sub_100178B4C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100178D38(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100178BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100178BF0(_BYTE *a1, int a2)
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

void sub_100178C5C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100178D38(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100178CC0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100178D38(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100178D38(uint64_t a1)
{
  *a1 = off_10022E3A8;
  sub_100178EA4(a1);
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

uint64_t sub_100178EA4(uint64_t a1)
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
        sub_100179054((a1 + 72), __p);
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

void sub_100178FF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10017901C(uint64_t a1)
{
  sub_100178D38(a1);

  operator delete();
}

int *sub_100179054(uint64_t *a1, uint64_t *a2)
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
    v21 = 30;
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
      v21 = 30;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100179238(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001794D0(v1);

  return std::ios::~ios();
}

uint64_t sub_100179284(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001794D0(v1);

  return std::ios::~ios();
}

void sub_1001792E4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001794D0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10017934C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100179388(_BYTE *a1, int a2)
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

void sub_1001793F4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001794D0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100179458(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001794D0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001794D0(uint64_t a1)
{
  *a1 = off_10022E5C8;
  sub_10017963C(a1);
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

uint64_t sub_10017963C(uint64_t a1)
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
        sub_1001797EC((a1 + 72), __p);
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

void sub_100179788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001797B4(uint64_t a1)
{
  sub_1001794D0(a1);

  operator delete();
}

int *sub_1001797EC(uint64_t *a1, uint64_t *a2)
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
    v21 = 42;
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
      v21 = 42;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_1001799D0(void *a1)
{
  *a1 = off_10022E120;
  sub_10002986C(a1 + 3, 0);
  sub_1000298F0((a1 + 4));
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t sub_100179A2C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10022E3A8;
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

void sub_100179ADC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100179AF4(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10022E5C8;
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

void sub_100179BA4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100179BC4@<X0>(const char **a1@<X0>, _BYTE *a2@<X8>)
{
  sub_100009110(v17);
  v4 = strlen(a1[3]);
  v5 = sub_1000026BC(&v18, a1[3], v4);
  v6 = sub_1000026BC(v5, ": ", 2);
  v7 = strlen(a1[1]);
  v8 = sub_1000026BC(v6, a1[1], v7);
  v9 = sub_1000026BC(v8, " - ", 3);
  v10 = a1[2];
  v11 = strlen(v10);
  sub_1000026BC(v9, v10, v11);
  if ((v25 & 0x10) != 0)
  {
    v13 = v24;
    if (v24 < v21)
    {
      v24 = v21;
      v13 = v21;
    }

    locale = v20[4].__locale_;
  }

  else
  {
    if ((v25 & 8) == 0)
    {
      v12 = 0;
      a2[23] = 0;
      goto LABEL_14;
    }

    locale = v20[1].__locale_;
    v13 = v20[3].__locale_;
  }

  v12 = v13 - locale;
  if ((v13 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100002A60();
  }

  if (v12 >= 0x17)
  {
    operator new();
  }

  a2[23] = v12;
  if (v12)
  {
    memmove(a2, locale, v12);
  }

LABEL_14:
  a2[v12] = 0;
  v18 = v15;
  if (v23 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}