double sub_10007584C@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 + 32);
  if (v5)
  {
    v6 = v5();
    v4 = *(a1 + 16);
  }

  else
  {
    v6 = 0;
  }

  v8 = *(v4 + 40);
  if (v8 && (v9 = v8()) != 0 || (v9 = v6) != 0)
  {
    if (v6 <= v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = v6;
    }

    *a2 = v10;
    a2[1] = v6 != 0;
    a2[2] = v9 + v9 * ((v6 - 1 + v9) / v9);
    a2[3] = 0;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    *(a2 + 1) = 0u;
  }

  return result;
}

BOOL sub_1000758E8(uint64_t a1)
{
  (*(*a1 + 80))(v4);
  if (v4[0])
  {
    v1 = 0;
  }

  else
  {
    v1 = v4[1] == 0;
  }

  return !v1 || v4[2] != 0 || v4[3] != 0;
}

uint64_t sub_1000759C4(uint64_t a1)
{
  if (qword_100240B70 != -1)
  {
    sub_1001A365C();
  }

  v2 = off_100240B68;
  if (!off_100240B68)
  {
    return 0;
  }

  return v2(a1);
}

uint64_t sub_100075A2C(uint64_t a1)
{
  if (qword_100240B80 != -1)
  {
    sub_1001A3670();
  }

  v2 = off_100240B78;
  if (!off_100240B78)
  {
    return 0;
  }

  return v2(a1);
}

void sub_100075AC0(id a1)
{
  v1 = dlopen("/AppleInternal/System/Library/libtest_plugin_shared_object.dylib", 5);
  if (v1)
  {
    off_100240B68 = dlsym(v1, "ramTestPluginCreate");
    if (off_100240B68)
    {
      return;
    }

    *&v2 = "*JulioTestPluginCreate(uint64_t)_block_invoke";
    *(&v2 + 1) = 22;
    v3 = 16;
    sub_100075BE8(v4, &v2);
    sub_1000026BC(v5, "Cannot find rawTestPluginCreate in libtest_plugin_shared_object.dylib ", 70);
    std::ostream::~ostream();
    sub_100075E1C(v4);
  }

  else
  {
    *&v2 = "*JulioTestPluginCreate(uint64_t)_block_invoke";
    *(&v2 + 1) = 22;
    v3 = 16;
    sub_1000438EC(v4, &v2);
    sub_1000026BC(v5, "Cannot load libTestPlugin", 25);
    std::ostream::~ostream();
    sub_1000448CC(v4);
  }

  std::ios::~ios();
}

void sub_100075BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100075D10(va);
  _Unwind_Resume(a1);
}

void *sub_100075BE8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100075D54(a1, a2);
  *a1 = off_10020CE08;
  a1[45] = &off_10020CF08;
  a1[46] = &off_10020CF30;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020CE08;
  a1[45] = off_10020CE90;
  a1[46] = off_10020CEB8;
  return a1;
}

void sub_100075CEC(_Unwind_Exception *a1)
{
  sub_100075E1C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100075D10(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100075E1C(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100075D54(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10020CFA0;
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

void sub_100075E04(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100075E1C(uint64_t a1)
{
  *a1 = off_10020CFA0;
  sub_10007625C(a1);
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

void sub_100075F88(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100075E1C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100075FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10007602C(_BYTE *a1, int a2)
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

uint64_t sub_100076098(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100075E1C(v1);

  return std::ios::~ios();
}

void sub_1000760E4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100075E1C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100076148(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100075E1C(v1);

  return std::ios::~ios();
}

void sub_1000761A8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100075E1C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100076224(uint64_t a1)
{
  sub_100075E1C(a1);

  operator delete();
}

uint64_t sub_10007625C(uint64_t a1)
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
        sub_1000763D0((a1 + 72), __p);
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

void sub_1000763A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_1000763D0(uint64_t *a1, uint64_t *a2)
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
    v21 = 77;
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
      v21 = 77;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void sub_1000765B4(id a1)
{
  v1 = dlopen("/usr/lib/libAmber.dylib", 5);
  if (v1)
  {
    off_100240B78 = dlsym(v1, "AmberDiskImagePluginCreate");
    if (off_100240B78)
    {
      return;
    }

    *&v2 = "*amberPluginCreate(uint64_t)_block_invoke";
    *(&v2 + 1) = 18;
    v3 = 16;
    sub_100076848(v4, &v2);
    sub_1000026BC(v5, "Cannot find AmberDiskImagePluginCreate in libAmber", 50);
    std::ostream::~ostream();
    sub_1000772DC(v4);
  }

  else
  {
    *&v2 = "*amberPluginCreate(uint64_t)_block_invoke";
    *(&v2 + 1) = 18;
    v3 = 16;
    sub_1000766DC(v4, &v2);
    sub_1000026BC(v5, "Cannot load libAmber", 20);
    std::ostream::~ostream();
    sub_100076A7C(v4);
  }

  std::ios::~ios();
}

void sub_1000766B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100076970(va);
  _Unwind_Resume(a1);
}

void *sub_1000766DC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000769B4(a1, a2);
  *a1 = off_10020D068;
  a1[45] = &off_10020D168;
  a1[46] = &off_10020D190;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020D068;
  a1[45] = off_10020D0F0;
  a1[46] = off_10020D118;
  return a1;
}

void sub_1000767E0(_Unwind_Exception *a1)
{
  sub_100076A7C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100076804(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100076A7C(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100076848(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100077214(a1, a2);
  *a1 = off_10020D288;
  a1[45] = &off_10020D388;
  a1[46] = &off_10020D3B0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020D288;
  a1[45] = off_10020D310;
  a1[46] = off_10020D338;
  return a1;
}

void sub_10007694C(_Unwind_Exception *a1)
{
  sub_1000772DC(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100076970(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000772DC(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000769B4(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10020D200;
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

void sub_100076A64(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100076A7C(uint64_t a1)
{
  *a1 = off_10020D200;
  sub_100076EBC(a1);
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

void sub_100076BE8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100076A7C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100076C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100076C8C(_BYTE *a1, int a2)
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

uint64_t sub_100076CF8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100076A7C(v1);

  return std::ios::~ios();
}

void sub_100076D44(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100076A7C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100076DA8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100076A7C(v1);

  return std::ios::~ios();
}

void sub_100076E08(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100076A7C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100076E84(uint64_t a1)
{
  sub_100076A7C(a1);

  operator delete();
}

uint64_t sub_100076EBC(uint64_t a1)
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
        sub_100077030((a1 + 72), __p);
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

void sub_100077008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100077030(uint64_t *a1, uint64_t *a2)
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
    v21 = 52;
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
      v21 = 52;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100077214(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10020D420;
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

void sub_1000772C4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000772DC(uint64_t a1)
{
  *a1 = off_10020D420;
  sub_10007771C(a1);
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

void sub_100077448(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000772DC(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000774B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000774EC(_BYTE *a1, int a2)
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

uint64_t sub_100077558(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000772DC(v1);

  return std::ios::~ios();
}

void sub_1000775A4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000772DC(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100077608(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000772DC(v1);

  return std::ios::~ios();
}

void sub_100077668(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000772DC(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000776E4(uint64_t a1)
{
  sub_1000772DC(a1);

  operator delete();
}

uint64_t sub_10007771C(uint64_t a1)
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
        sub_100077890((a1 + 72), __p);
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

void sub_100077868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100077890(uint64_t *a1, uint64_t *a2)
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
    v21 = 58;
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
      v21 = 58;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_100077A74(void *a1, void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 40 * a3;
    do
    {
      sub_100077AF8(a1, v4, a2);
      a2 += 5;
      v6 -= 40;
    }

    while (v6);
  }

  return a1;
}

void *sub_100077AF8(void *a1, uint64_t a2, void **a3)
{
  result = *sub_100077B7C(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_100077D10();
  }

  return result;
}

void **sub_100077B7C(void *a1, uint64_t a2, void ***a3, uint64_t *a4, void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 == a2 || (sub_100077E50(a5, (a2 + 32)) & 0x80) != 0)
  {
    if (*a1 == a2)
    {
      v12 = a2;
    }

    else
    {
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

      if ((sub_100077E50(v12 + 4, a5) & 0x80) == 0)
      {
        goto LABEL_17;
      }
    }

    if (*a2)
    {
      *a3 = v12;
      return (v12 + 1);
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  if ((sub_100077E50((a2 + 32), a5) & 0x80) == 0)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  a4 = (a2 + 8);
  v13 = *(a2 + 8);
  if (v13)
  {
    v14 = *(a2 + 8);
    do
    {
      v15 = v14;
      v14 = *v14;
    }

    while (v14);
  }

  else
  {
    v19 = a2;
    do
    {
      v15 = v19[2];
      v17 = *v15 == v19;
      v19 = v15;
    }

    while (!v17);
  }

  if (v15 == v9)
  {
LABEL_29:
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

  if ((sub_100077E50(a5, v15 + 4) & 0x80) != 0)
  {
    v13 = *a4;
    goto LABEL_29;
  }

LABEL_17:

  return sub_100077DC8(a1, a3, a5);
}

void sub_100077DAC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100077EE8(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_100077DC8(uint64_t a1, void *a2, void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((sub_100077E50(a3, (v4 + 32)) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((sub_100077E50(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t sub_100077E50(void *a1, void **a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  return sub_100077E88(a1, v2, v5, v6);
}

uint64_t sub_100077E88(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

void sub_100077EE8(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_100077F4C(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_100077F4C(a1, *a2);
    sub_100077F4C(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t sub_100077FB0(uint64_t a1, void **a2)
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
    v6 = sub_100077E50((v3 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (sub_100077E50(a2, (v5 + 32)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

uint64_t sub_100078030(uint64_t a1, void **a2)
{
  result = *sub_100077DC8(a1, &v3, a2);
  if (!result)
  {
    sub_1000780C8();
  }

  return result;
}

void sub_100078164(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100077EE8(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_100078180(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100078418(v1);

  return std::ios::~ios();
}

uint64_t sub_1000781CC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100078418(v1);

  return std::ios::~ios();
}

void sub_10007822C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100078418(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100078294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000782D0(_BYTE *a1, int a2)
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

void sub_10007833C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100078418(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000783A0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100078418(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100078418(uint64_t a1)
{
  *a1 = off_10020D640;
  sub_100078584(a1);
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

uint64_t sub_100078584(uint64_t a1)
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
        sub_100078734((a1 + 72), __p);
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

void sub_1000786D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000786FC(uint64_t a1)
{
  sub_100078418(a1);

  operator delete();
}

int *sub_100078734(uint64_t *a1, uint64_t *a2)
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
    v21 = 167;
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
      v21 = 167;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100078918(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100078BB0(v1);

  return std::ios::~ios();
}

uint64_t sub_100078964(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100078BB0(v1);

  return std::ios::~ios();
}

void sub_1000789C4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100078BB0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100078A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100078A68(_BYTE *a1, int a2)
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

void sub_100078AD4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100078BB0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100078B38(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100078BB0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100078BB0(uint64_t a1)
{
  *a1 = off_10020D860;
  sub_100078D1C(a1);
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

uint64_t sub_100078D1C(uint64_t a1)
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
        sub_100078ECC((a1 + 72), __p);
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

void sub_100078E68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100078E94(uint64_t a1)
{
  sub_100078BB0(a1);

  operator delete();
}

int *sub_100078ECC(uint64_t *a1, uint64_t *a2)
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
    v21 = 172;
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
      v21 = 172;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000790B0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100079348(v1);

  return std::ios::~ios();
}

uint64_t sub_1000790FC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100079348(v1);

  return std::ios::~ios();
}

void sub_10007915C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100079348(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000791C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100079200(_BYTE *a1, int a2)
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

void sub_10007926C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100079348(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000792D0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100079348(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100079348(uint64_t a1)
{
  *a1 = off_10020DA80;
  sub_1000794B4(a1);
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

uint64_t sub_1000794B4(uint64_t a1)
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
        sub_100079664((a1 + 72), __p);
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

void sub_100079600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10007962C(uint64_t a1)
{
  sub_100079348(a1);

  operator delete();
}

int *sub_100079664(uint64_t *a1, uint64_t *a2)
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
    v21 = 177;
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
      v21 = 177;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100079848(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100079AE0(v1);

  return std::ios::~ios();
}

uint64_t sub_100079894(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100079AE0(v1);

  return std::ios::~ios();
}

void sub_1000798F4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100079AE0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10007995C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100079998(_BYTE *a1, int a2)
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

void sub_100079A04(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100079AE0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100079A68(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100079AE0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100079AE0(uint64_t a1)
{
  *a1 = off_10020DCA0;
  sub_100079C4C(a1);
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

uint64_t sub_100079C4C(uint64_t a1)
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
        sub_100079DFC((a1 + 72), __p);
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

void sub_100079D98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100079DC4(uint64_t a1)
{
  sub_100079AE0(a1);

  operator delete();
}

int *sub_100079DFC(uint64_t *a1, uint64_t *a2)
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
    v21 = 183;
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
      v21 = 183;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100079FE0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10007A278(v1);

  return std::ios::~ios();
}

uint64_t sub_10007A02C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10007A278(v1);

  return std::ios::~ios();
}

void sub_10007A08C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10007A278(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10007A0F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10007A130(_BYTE *a1, int a2)
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

void sub_10007A19C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10007A278(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10007A200(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10007A278(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10007A278(uint64_t a1)
{
  *a1 = off_10020DEC0;
  sub_10007A3E4(a1);
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

uint64_t sub_10007A3E4(uint64_t a1)
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
        sub_10007A594((a1 + 72), __p);
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

void sub_10007A530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10007A55C(uint64_t a1)
{
  sub_10007A278(a1);

  operator delete();
}

int *sub_10007A594(uint64_t *a1, uint64_t *a2)
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
    v21 = 282;
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
      v21 = 282;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void sub_10007A778(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_100038E68();
}

uint64_t sub_10007A7C0(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCF3CF3CF3CF3CF3DLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x186186186186186)
  {
    sub_100036CAC();
  }

  if (0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCF3CF3CF3CF3CF3DLL * ((a1[2] - *a1) >> 3) >= 0xC30C30C30C30C3)
  {
    v6 = 0x186186186186186;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_10007A988(a1, v6);
  }

  v13 = 0;
  v14 = 168 * v2;
  sub_10007A90C(a1, 168 * v2, a2);
  v15 = 168 * v2 + 168;
  v7 = a1[1];
  v8 = 168 * v2 + *a1 - v7;
  sub_10007A9E4(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_10007ABA0(&v13);
  return v12;
}

void sub_10007A8F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10007ABA0(va);
  _Unwind_Resume(a1);
}

__n128 sub_10007A90C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v3;
  v4 = *(a3 + 32);
  v5 = *(a3 + 48);
  v6 = *(a3 + 64);
  *(a2 + 80) = *(a3 + 80);
  *(a2 + 48) = v5;
  *(a2 + 64) = v6;
  *(a2 + 32) = v4;
  *(a2 + 88) = *(a3 + 88);
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 104) = *(a3 + 104);
  *(a2 + 120) = *(a3 + 120);
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 128) = *(a3 + 128);
  *(a2 + 144) = *(a3 + 144);
  *(a3 + 128) = 0;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  result = *(a3 + 152);
  *(a2 + 152) = result;
  *(a3 + 152) = 0;
  *(a3 + 160) = 0;
  return result;
}

void sub_10007A988(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x186186186186187)
  {
    operator new();
  }

  sub_100038E68();
}

uint64_t sub_10007A9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      sub_10007A90C(a1, a4, v7);
      v7 += 168;
      a4 = v12 + 168;
      v12 += 168;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_10007AAB4(a1, v5);
      v5 += 168;
    }
  }

  return sub_10007AB14(v9);
}

void sub_10007AAB4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 160);
  if (v3)
  {
    sub_10000367C(v3);
  }

  v6 = (a2 + 128);
  sub_10007182C(&v6);
  v4 = *(a2 + 104);
  if (v4)
  {
    *(a2 + 112) = v4;
    operator delete(v4);
  }

  v5 = *(a2 + 96);
  if (v5)
  {
    sub_10000367C(v5);
  }
}

uint64_t sub_10007AB14(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10007AB4C(a1);
  }

  return a1;
}

void sub_10007AB4C(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 168;
      sub_10007AAB4(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_10007ABA0(uint64_t a1)
{
  sub_10007ABD8(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10007ABD8(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 168;
    sub_10007AAB4(v5, v4 - 168);
  }
}

uint64_t sub_10007AC20(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (v2)
  {
    sub_10000367C(v2);
  }

  v6 = (a1 + 128);
  sub_10007182C(&v6);
  v3 = *(a1 + 104);
  if (v3)
  {
    *(a1 + 112) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 96);
  if (v4)
  {
    sub_10000367C(v4);
  }

  return a1;
}

uint64_t sub_10007AC84(uint64_t a1, uint64_t a2)
{
  *a1 = off_10020DF40;
  *(a1 + 8) = a2;
  sub_100157F40((a1 + 24), 0);
  sub_1000739C0(a2);
  return a1;
}

uint64_t sub_10007ACEC(uint64_t a1)
{
  *a1 = off_10020DF40;
  sub_100157D44((a1 + 24));
  return a1;
}

void sub_10007AD30(uint64_t a1)
{
  *a1 = off_10020DF40;
  sub_100157D44((a1 + 24));

  operator delete();
}

uint64_t sub_10007ADAC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10020D640;
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

void sub_10007AE5C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10007AE74(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10020D860;
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

void sub_10007AF24(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10007AF3C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10020DA80;
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

void sub_10007AFEC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10007B004(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10020DCA0;
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

void sub_10007B0B4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10007B0CC(uint64_t a1, void **a2)
{
  v2 = *sub_100077DC8(a1, &v4, a2);
  if (!v2)
  {
    sub_10007B174();
  }

  return v2;
}

uint64_t sub_10007B214(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10007B260(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_10007B260(uint64_t a1)
{
  v2 = *(a1 + 32);
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

uint64_t sub_10007B2B4(uint64_t a1, uint64_t a2)
{
  *&v9 = "PluginsManager::register_plugin(const string &, di_plugin_t *)::(anonymous class)::operator()(di_plugin_t *) const";
  *(&v9 + 1) = 93;
  v10 = 0;
  sub_1000565D8(v11, &v9);
  sub_1000026BC(v12, "Unregistering plugin ", 21);
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = *(a1 + 8);
  }

  sub_1000026BC(v12, v5, v6);
  std::ostream::~ostream();
  sub_1000577C0(v11);
  result = std::ios::~ios();
  v8 = *(a2 + 32);
  if (v8)
  {
    return v8(a2);
  }

  return result;
}

void sub_10007B374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100056700(va);
  _Unwind_Resume(a1);
}

void sub_10007B388(std::__shared_weak_count *this)
{
  this->__vftable = off_10020DF98;
  if (SHIBYTE(this[2].__vftable) < 0)
  {
    operator delete(this[1].__shared_owners_);
  }

  std::__shared_weak_count::~__shared_weak_count(this);
}

void sub_10007B3E8(std::__shared_weak_count *this)
{
  this->__vftable = off_10020DF98;
  if (SHIBYTE(this[2].__vftable) < 0)
  {
    operator delete(this[1].__shared_owners_);
  }

  std::__shared_weak_count::~__shared_weak_count(this);

  operator delete();
}

void sub_10007B45C(uint64_t a1)
{
  sub_10007B2B4(a1 + 32, *(a1 + 24));
  if (*(a1 + 55) < 0)
  {
    v2 = *(a1 + 32);

    operator delete(v2);
  }
}

uint64_t sub_10007B4B4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10007B580(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  v3 = *(*a2 + 72);
  if (v3)
  {
    return v3();
  }

  return result;
}

uint64_t sub_10007B594(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10007B5E0(uint64_t a1)
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

uint64_t sub_10007B660(uint64_t a1, uint64_t a2)
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

void sub_10007B7C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    sub_10007BA04(v9);
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10007B810(uint64_t a1, uint64_t a2)
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

void sub_10007B890(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10020E088;
  sub_10007B5E0(&a1[1].__shared_owners_);

  std::__shared_weak_count::~__shared_weak_count(a1);
}

void sub_10007B8E4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10020E088;
  sub_10007B5E0(&a1[1].__shared_owners_);
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10007B94C(uint64_t a1)
{
  v4 = *(a1 + 24);
  v2 = *(a1 + 56);
  if (!v2)
  {
    sub_10002870C();
  }

  (*(*v2 + 48))(v2, &v4);
  return sub_10007B5E0(a1 + 32);
}

uint64_t sub_10007B9C0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10007BA04(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_10002870C();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_10007BA4C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10020DEC0;
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

void sub_10007BAFC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_10007BB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v14 = vm_page_size;
  v15 = *(a2 + 152);
  sub_1001501BC(a6, v24);
  v16 = sub_10007C064(a4, a5, v14, v15, v24);
  sub_10014FD78(a1, v16);
  sub_1000287DC(v24);
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  *(a1 + 80) = v8;
  *(a1 + 88) = a7;
  sub_100026714(v21, a4);
  sub_100026714(v18, a5);
  v17 = sub_10007C2CC(v21, v18);
  if (v20)
  {
    sub_10000367C(v20);
  }

  if (v19)
  {
    sub_10000367C(v19);
  }

  if (v23)
  {
    sub_10000367C(v23);
  }

  if (v22)
  {
    sub_10000367C(v22);
  }

  *(a1 + 96) = v17;
  is_mul_ok(3 * v17, 0x18uLL);
  operator new[]();
}

void sub_10007BF84(_Unwind_Exception *a1)
{
  sub_10002893C(v2 + 32);
  sub_1000287DC(v3 - 208);
  sub_100028ACC(v1 + 25);
  sub_1000296FC(v1 + 22);
  sub_100028504(v1 + 19);
  sub_1000297B0(v1 + 16);
  sub_100028558(v1 + 13);
  sub_10002986C(v1, 0);
  sub_1000298F0((v1 + 1));
  _Unwind_Resume(a1);
}

uint64_t sub_10007C064(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if (sub_1000242EC(a1, a2))
  {
    return 0;
  }

  sub_100026638(v37, a1);
  v11 = v39;
  sub_10007C4F4(v31, a1, a2);
  sub_100026714(v28, v31);
  sub_100026714(v25, &v34);
  v10 = 0;
  v12 = v11 / a3 * a3;
  while (!sub_1000242EC(v28, v25))
  {
    sub_100026638(&v21, v28);
    v13 = *(a5 + 24);
    if (!v13)
    {
      sub_10002870C();
    }

    if ((*(*v13 + 48))(v13, &v21))
    {
      v14 = v24 - v12 + v23;
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
      v12 += v16;
    }

    else
    {
      v17 = a3;
      if (v24 % a4)
      {
        goto LABEL_14;
      }

      if (v23 % a4)
      {
        v17 = 0;
LABEL_14:
        v18 = v17 + v10;
        if ((v23 + v24) % a4)
        {
          v19 = a3;
        }

        else
        {
          v19 = 0;
        }

        v10 = v18 + v19;
        v12 = (a4 - 1 + v23 + v24) / a4 * a4;
        goto LABEL_18;
      }

      v12 = v23 + v24;
    }

LABEL_18:
    if (v22)
    {
      sub_10000367C(v22);
    }

    sub_100024C18(v28);
  }

  if (v27)
  {
    sub_10000367C(v27);
  }

  if (v26)
  {
    sub_10000367C(v26);
  }

  if (v30)
  {
    sub_10000367C(v30);
  }

  if (v29)
  {
    sub_10000367C(v29);
  }

  if (v36)
  {
    sub_10000367C(v36);
  }

  if (v35)
  {
    sub_10000367C(v35);
  }

  if (v33)
  {
    sub_10000367C(v33);
  }

  if (v32)
  {
    sub_10000367C(v32);
  }

  if (v38)
  {
    sub_10000367C(v38);
  }

  return v10;
}

void sub_10007C280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  if (a10)
  {
    sub_10000367C(a10);
  }

  sub_100002440(&a23);
  sub_100002440(&a51);
  sub_10006D100(&STACK[0x230]);
  v53 = *(v51 - 168);
  if (v53)
  {
    sub_10000367C(v53);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10007C2CC(uint64_t a1, uint64_t a2)
{
  sub_100026714(v8, a1);
  sub_100026714(&v5, a2);
  for (i = 0; !sub_1000242EC(v8, &v5); ++i)
  {
    sub_100024C18(v8);
  }

  if (v7)
  {
    sub_10000367C(v7);
  }

  if (v6)
  {
    sub_10000367C(v6);
  }

  if (v10)
  {
    sub_10000367C(v10);
  }

  if (v9)
  {
    sub_10000367C(v9);
  }

  return i;
}

void sub_10007C370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_100002440(&a9);
  sub_100002440(&a37);
  _Unwind_Resume(a1);
}

void sub_10007C398(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10007C4F4(v14, a2, a3);
  sub_100026714(v11, v14);
  sub_100026714(v8, &v17);
  while (!sub_1000242EC(v11, v8))
  {
    sub_100026638(&v5, v11);
    v4 = sub_10014FEB0(a1, &v5, 0);
    if (v4 != v7)
    {
      sub_100150200(a1, &v5, v4, 0);
    }

    if (v6)
    {
      sub_10000367C(v6);
    }

    sub_100024C18(v11);
  }

  if (v10)
  {
    sub_10000367C(v10);
  }

  if (v9)
  {
    sub_10000367C(v9);
  }

  if (v13)
  {
    sub_10000367C(v13);
  }

  if (v12)
  {
    sub_10000367C(v12);
  }

  if (v19)
  {
    sub_10000367C(v19);
  }

  if (v18)
  {
    sub_10000367C(v18);
  }

  if (v16)
  {
    sub_10000367C(v16);
  }

  if (v15)
  {
    sub_10000367C(v15);
  }
}

void sub_10007C4B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  sub_100002440(&a23);
  sub_100002440(&a51);
  sub_10006D100(&STACK[0x230]);
  _Unwind_Resume(a1);
}

uint64_t sub_10007C4F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100026714(a1, a2);
  sub_100026714(a1 + 224, a3);
  return a1;
}

uint64_t sub_10007C5B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  result = *a2;
  v4 = *a3;
  return result;
}

uint64_t sub_10007C5C4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const void *sub_10007C698(uint64_t a1, void **a2, const void **a3, size_t *a4)
{
  v4 = *a3;
  memcpy(*a2, *a3, *a4);
  return v4;
}

uint64_t sub_10007C6D4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10007C720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *a1 = a2;
  v9 = a1 + 232;
  sub_100026714(a1 + 8, a3);
  sub_100026714(v9, a4);
  sub_100026714(a1 + 456, a3);
  *(a1 + 680) = a5;
  return a1;
}

void sub_10007C790(_Unwind_Exception *a1)
{
  sub_100002440(v2);
  sub_100002440(v1 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10007C7B4(void *a1)
{
  sub_10014F6E8(a1);
  sub_10007C7F8(a1 + 28);

  return sub_100027DE8(a1);
}

void *sub_10007C7F8(void *a1)
{
  (*(**a1 + 152))(*a1);
  v2 = a1[80];
  if (v2)
  {
    sub_10000367C(v2);
  }

  v3 = a1[58];
  if (v3)
  {
    sub_10000367C(v3);
  }

  v4 = a1[52];
  if (v4)
  {
    sub_10000367C(v4);
  }

  v5 = a1[30];
  if (v5)
  {
    sub_10000367C(v5);
  }

  v6 = a1[24];
  if (v6)
  {
    sub_10000367C(v6);
  }

  v7 = a1[2];
  if (v7)
  {
    sub_10000367C(v7);
  }

  return a1;
}

void sub_10007C890(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_100038E68();
}

uint64_t sub_10007C8D8(std::string *a1)
{
  v16 = a1;
  sub_100089184(&v15, &v16);
  sub_100003410(&__ec, "Info.bckup");
  *&v17.__pn_.__r_.__value_.__l.__data_ = __ec;
  v17.__pn_.__r_.__value_.__r.__words[2] = v11;
  __ec.__cat_ = 0;
  v11 = 0;
  *&__ec.__val_ = 0;
  sub_100003410(__p, "Info.plist");
  v18 = *__p;
  v19[0] = v9;
  __p[1] = 0;
  v9 = 0;
  __p[0] = 0;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  sub_100080C30(&v12, &v17, &v20, 2uLL);
  for (i = 0; i != -6; i -= 3)
  {
    if (SHIBYTE(v19[i]) < 0)
    {
      operator delete(*(&v17 + i * 8 + 24));
    }
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(*&__ec.__val_);
  }

  v2 = v12;
  v3 = v13;
  if (v12 == v13)
  {
LABEL_19:
    v6 = 0;
    goto LABEL_23;
  }

  v4 = std::system_category();
  while (1)
  {
    __ec.__val_ = 0;
    __ec.__cat_ = v4;
    sub_10007CB8C(v2, &v15, &v17);
    std::__fs::filesystem::__status(&v17, &__ec);
    if (LOBYTE(__p[0]))
    {
      break;
    }

    v5 = __ec.__val_ == 0;
LABEL_15:
    if (SHIBYTE(v17.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__pn_.__r_.__value_.__l.__data_);
    }

    if (!v5)
    {
      goto LABEL_22;
    }

    if (++v2 == v3)
    {
      goto LABEL_19;
    }
  }

  __ec.__val_ = 0;
  __ec.__cat_ = v4;
  if (LOBYTE(__p[0]) == 255)
  {
    v5 = 1;
    goto LABEL_15;
  }

  if (SHIBYTE(v17.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__pn_.__r_.__value_.__l.__data_);
  }

LABEL_22:
  v6 = 1;
LABEL_23:
  v17.__pn_.__r_.__value_.__r.__words[0] = &v12;
  sub_100080E9C(&v17);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v6;
}

void sub_10007CAC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  v32 = (v30 + 47);
  v33 = -48;
  v34 = v32;
  while (1)
  {
    v35 = *v34;
    v34 -= 24;
    if (v35 < 0)
    {
      operator delete(*(v32 - 23));
    }

    v32 = v34;
    v33 += 24;
    if (!v33)
    {
      if (a15 < 0)
      {
        operator delete(__p);
      }

      if (a21 < 0)
      {
        operator delete(a16);
      }

      if (a30 < 0)
      {
        operator delete(a25);
      }

      _Unwind_Resume(exception_object);
    }
  }
}

std::__fs::filesystem::path *sub_10007CB8C@<X0>(std::__fs::filesystem::path *this@<X1>, uint64_t a2@<X0>, std::__fs::filesystem::path *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000093B4(a3, *a2, *(a2 + 8));
  }

  else
  {
    *&a3->__pn_.__r_.__value_.__l.__data_ = *a2;
    a3->__pn_.__r_.__value_.__r.__words[2] = *(a2 + 16);
  }

  return sub_100080F40(a3, this);
}

void sub_10007CBE4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10007CC00(uint64_t a1, uint64_t a2, __int16 a3, unint64_t a4, _OWORD *a5)
{
  v9 = sub_10007CDCC(a2, a3);
  sub_10007CFDC(a1, v9, (a3 & 3) != 0);
  *(a1 + 96) = 0;
  *a1 = off_10020E248;
  *(a1 + 24) = off_10020E330;
  *(a1 + 72) = off_10020E358;
  *(a1 + 80) = off_10020E390;
  *(a1 + 88) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 160) = *a5;
  if ((a3 & 0x200) != 0)
  {
    sub_10007D074(a1, a4);
    sub_10007D174(a1);
  }

  v10 = *(a1 + 36) == 1 && faccessat(*(a1 + 32), "mapped", 0, 0) != 0;
  if (!*(a1 + 136))
  {
    sub_10007D3EC(a1);
  }

  if (v10)
  {
    sub_10007D6EC(a1, (a3 & 0x200) != 0);
  }

  return a1;
}

void sub_10007CD94(_Unwind_Exception *a1)
{
  v6 = *(v1 + 136);
  *(v1 + 136) = 0;
  if (v6)
  {
    sub_1001A371C(v6);
  }

  sub_1001A36A4(v1, v3, v2, v4);
  sub_10007D99C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10007CDCC(uint64_t a1, __int16 a2)
{
  v2 = a1;
  if ((a2 & 0x200) != 0)
  {
    if (*(a1 + 23) < 0)
    {
      a1 = *a1;
    }

    if (mkdir(a1, 0x1FFu) != -1)
    {
      return sub_100158764(v2, 0);
    }

    exception = __cxa_allocate_exception(0x40uLL);
    v7 = *__error();
    v8 = "Failed creating sparsebundle folder";
LABEL_16:
    v9 = sub_100001860(exception, v8, v7);
  }

  if ((a2 & 3) == 0 || geteuid())
  {
    return sub_100158764(v2, 0);
  }

  if (*(v2 + 23) >= 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = *v2;
  }

  if (stat(v3, &v11))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v7 = *__error();
    v8 = "stat failed";
    goto LABEL_16;
  }

  if (!v11.st_uid)
  {
    return sub_100158764(v2, 0);
  }

  sub_100081808(v10, v11.st_uid);
  v4 = sub_100158764(v2, 0);
  sub_10008232C(v10);
  return v4;
}

void *sub_10007CFDC(void *a1, int a2, char a3)
{
  v6 = sub_10019A650(a1);
  sub_100159364((v6 + 3), a2, a3);
  *a1 = off_10020E430;
  a1[3] = &off_10020E500;
  return a1;
}

void sub_10007D05C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10007D074(uint64_t result, unint64_t a2)
{
  if (a2 < 0x100000 || a2 > 0x200000000 || (a2 & 0xFFF) != 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100002148(v3);
    sub_1000026BC(v3, "Invalid band size (", 19);
    std::ostream::operator<<();
    sub_1000026BC(v3, " bytes)", 7);
    sub_100004290(exception, v3, 0x16u);
  }

  *(result + 152) = a2;
  return result;
}

void sub_10007D140(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000022B4(va);
  _Unwind_Resume(a1);
}

void sub_10007D174(uint64_t a1)
{
  if (mkdirat(*(a1 + 32), "bands", 0x1FFu) != -1)
  {
    sub_10007DF9C(a1);
  }

  exception = __cxa_allocate_exception(0x40uLL);
  v3 = __error();
  v4 = sub_100001860(exception, "Failed creating bands folder", *v3);
}

void sub_10007D488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, int a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v64 = __cxa_begin_catch(exception_object);
    *&a11 = "SparseBundleBackend::read_info()";
    *(&a11 + 1) = 30;
    a12 = 16;
    sub_10007EB20(&__p, &a11);
    sub_1000026BC(&a61, "Failed to read ", 15);
    sub_1000026BC(&a61, "Info.plist", 10);
    sub_1000026BC(&a61, ", ", 2);
    v65 = (*(*v64 + 16))(v64);
    v66 = strlen(v65);
    sub_1000026BC(&a61, v65, v66);
    sub_1000026BC(&a61, " (errno ", 8);
    v67 = v64[2];
    std::ostream::operator<<();
    sub_1000026BC(&a61, "), reading from backup", 22);
    sub_10007EC48(&__p);
    __cxa_end_catch();
    sub_100003410(&__p, "Info.bckup");
    sub_10007E174(v61);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10007D6EC(uint64_t a1, char a2)
{
  result = mkdirat(*(a1 + 32), "mapped", 0x1FFu);
  if (result == -1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100002148(v12);
    sub_1000026BC(v12, "Failed creating ", 16);
    sub_1000026BC(v12, "mapped", 6);
    sub_1000026BC(v12, " folder", 7);
    v6 = __error();
    sub_100004290(exception, v12, *v6);
  }

  if ((a2 & 1) == 0)
  {
    memset(&v11, 0, sizeof(v11));
    sub_100159764(a1 + 24, &v11);
    if (fchmodat(*(a1 + 32), "mapped", v11.st_mode & 0x1FF, 0) == -1)
    {
      v7 = __cxa_allocate_exception(0x40uLL);
      sub_100002148(v12);
      sub_1000026BC(v12, "fchmodat failed for ", 20);
      sub_1000026BC(v12, "mapped", 6);
      sub_1000026BC(v12, " folder", 7);
      v8 = __error();
      sub_100004290(v7, v12, *v8);
    }

    result = geteuid();
    if (!result && v11.st_uid)
    {
      result = fchownat(*(a1 + 32), "mapped", v11.st_uid, 0xFFFFFFFF, 0);
      if (result == -1)
      {
        v9 = __cxa_allocate_exception(0x40uLL);
        sub_100002148(v12);
        sub_1000026BC(v12, "fchownat failed for ", 20);
        sub_1000026BC(v12, "mapped", 6);
        sub_1000026BC(v12, " folder", 7);
        v10 = __error();
        sub_100004290(v9, v12, *v10);
      }
    }
  }

  return result;
}

uint64_t sub_10007D99C(uint64_t a1)
{
  sub_1001590D0(a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10007D9D8(void *a1, int a2, char a3, void *a4, void *a5)
{
  v8 = sub_10007CFDC(a1, a2, a3);
  v8[9] = &off_10020E528;
  v8[10] = off_10020E560;
  v8[11] = *a5;
  v9 = a5[1];
  v8[12] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *a1 = off_10020E248;
  a1[3] = off_10020E330;
  a1[9] = off_10020E358;
  a1[10] = off_10020E390;
  a1[13] = *a4;
  v10 = a4[1];
  a1[14] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  a1[15] = 0;
  a1[16] = 0;
  a1[17] = 0;
  sub_10007D3EC(a1);
}

void sub_10007DC34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10007DDE8(va);
  v7 = v4[17];
  v4[17] = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = v4[16];
  if (v8)
  {
    sub_10000367C(v8);
  }

  v9 = v4[14];
  if (v9)
  {
    sub_10000367C(v9);
  }

  v4[10] = v5;
  v10 = v4[12];
  if (v10)
  {
    sub_10000367C(v10);
  }

  sub_10007D99C(v4);
  _Unwind_Resume(a1);
}

void *sub_10007DCC0(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000891E4(a1, a2);
  *a1 = off_10020E588;
  a1[45] = &off_10020E688;
  a1[46] = &off_10020E6B0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020E588;
  a1[45] = off_10020E610;
  a1[46] = off_10020E638;
  return a1;
}

void sub_10007DDC4(_Unwind_Exception *a1)
{
  sub_100081308(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10007DDE8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100081308(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10007DE30(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000892AC(a1, a2);
  *a1 = off_10020EBE8;
  a1[45] = &off_10020ECE8;
  a1[46] = &off_10020ED10;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020EBE8;
  a1[45] = off_10020EC70;
  a1[46] = off_10020EC98;
  return a1;
}

void sub_10007DF34(_Unwind_Exception *a1)
{
  sub_100083050(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10007DF58(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100083050(a1);
  std::ios::~ios();
  return a1;
}

void sub_10007DF9C(uint64_t a1)
{
  *&__p = "SparseBundleBackend::write_info_plists()";
  *(&__p + 1) = 38;
  v6 = 0;
  sub_10007F504(v7, &__p);
  sub_1000026BC(v8, "Updating ", 9);
  sub_1000026BC(v8, "Info.bckup", 10);
  sub_1000026BC(v8, ", disk size: ", 13);
  v2 = *(a1 + 144);
  std::ostream::operator<<();
  std::ostream::~ostream();
  sub_10008573C(v7);
  std::ios::~ios();
  v3 = *(a1 + 32);
  sub_100003410(&__p, "Info.bckup");
  v4 = sub_100158C4C(v3, &__p, 9730);
  sub_10004D9A0(v7, v4, 1);
}

void sub_10007E82C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  sub_1000022B4(&a16);
  if (__p)
  {
    operator delete(__p);
  }

  v23 = *v21;
  *v21 = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  _Unwind_Resume(a1);
}

void *sub_10007E9B4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100089374(a1, a2);
  *a1 = off_10020EE08;
  a1[45] = &off_10020EF08;
  a1[46] = &off_10020EF30;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020EE08;
  a1[45] = off_10020EE90;
  a1[46] = off_10020EEB8;
  return a1;
}

void sub_10007EAB8(_Unwind_Exception *a1)
{
  sub_1000837E8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10007EADC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000837E8(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10007EB20(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100089744(a1, a2);
  *a1 = off_10020F028;
  a1[45] = &off_10020F128;
  a1[46] = &off_10020F150;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020F028;
  a1[45] = off_10020F0B0;
  a1[46] = off_10020F0D8;
  return a1;
}

void sub_10007EC24(_Unwind_Exception *a1)
{
  sub_100083FF4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10007EC48(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100083FF4(a1);
  std::ios::~ios();
  return a1;
}

void sub_10007EC8C(uint64_t a1)
{
  *&v8 = "SparseBundleBackend::write_primary_info_plist()";
  *(&v8 + 1) = 45;
  v9 = 0;
  sub_10007F398(__p, &v8);
  sub_1000026BC(v11, "Updating ", 9);
  sub_1000026BC(v11, "Info.plist", 10);
  std::ostream::~ostream();
  sub_100084FA4(__p);
  std::ios::~ios();
  v2 = *(a1 + 136);
  if (v2)
  {
    v3 = (*(*v2 + 56))(v2, 0);
    if (v3)
    {
      v4 = v3;
      exception = __cxa_allocate_exception(0x40uLL);
      v6 = sub_100001860(exception, "Failed truncating plist", v4);
    }

    v7 = *(a1 + 136);
    sub_10007EFEC(a1);
  }

  sub_100003410(__p, "Info.plist");
  operator new();
}

void sub_10007EE34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10007EE80(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10008980C(a1, a2);
  *a1 = off_10020F248;
  a1[45] = &off_10020F348;
  a1[46] = &off_10020F370;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020F248;
  a1[45] = off_10020F2D0;
  a1[46] = off_10020F2F8;
  return a1;
}

void sub_10007EF84(_Unwind_Exception *a1)
{
  sub_10008478C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10007EFA8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10008478C(a1);
  std::ios::~ios();
  return a1;
}

void sub_10007EFEC(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionarySetValue(Mutable, @"diskimage-bundle-type", @"com.apple.diskimage.sparsebundle");
  CFDictionarySetValue(Mutable, kCFBundleInfoDictionaryVersionKey, @"6.0");
  sub_10014CC9C(Mutable, @"bundle-backingstore-version", 2);
  sub_10014CC9C(Mutable, @"size", *(a1 + 144));
  sub_10014CC9C(Mutable, @"band-size", *(a1 + 152));
  operator new();
}

void sub_10007F2F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  sub_1000022B4(&__p);
  sub_10008943C((v14 - 72));
  sub_1000898D4((v14 - 64));
  sub_1000043E8((v14 - 56));
  _Unwind_Resume(a1);
}

void *sub_10007F398(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100089908(a1, a2);
  *a1 = off_10020F468;
  a1[45] = &off_10020F568;
  a1[46] = &off_10020F590;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020F468;
  a1[45] = off_10020F4F0;
  a1[46] = off_10020F518;
  return a1;
}

void sub_10007F49C(_Unwind_Exception *a1)
{
  sub_100084FA4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10007F4C0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100084FA4(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10007F504(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000899D0(a1, a2);
  *a1 = off_10020F688;
  a1[45] = &off_10020F788;
  a1[46] = &off_10020F7B0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020F688;
  a1[45] = off_10020F710;
  a1[46] = off_10020F738;
  return a1;
}

void sub_10007F608(_Unwind_Exception *a1)
{
  sub_10008573C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10007F62C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10008573C(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10007F7BC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100089A98(a1, a2);
  *a1 = off_10020F8A8;
  a1[45] = &off_10020F9A8;
  a1[46] = &off_10020F9D0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020F8A8;
  a1[45] = off_10020F930;
  a1[46] = off_10020F958;
  return a1;
}

void sub_10007F8C0(_Unwind_Exception *a1)
{
  sub_100085ED4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10007F8E4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100085ED4(a1);
  std::ios::~ios();
  return a1;
}

void sub_10007F928(uint64_t a1)
{
  if ((*(*a1 + 48))(a1))
  {
    v1 = 2;
  }

  else
  {
    v1 = 0;
  }

  v3 = v1;
  sub_100003410(&__p, "token");
  sub_100089B60();
}

void sub_10007F9C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10007F9DC(uint64_t a1)
{
  if (((*(*a1 + 208))(a1) & 1) == 0)
  {
    if ((*(*a1 + 48))(a1))
    {
      v2 = 550;
    }

    else
    {
      v2 = 20;
    }

    v5 = v2;
    sub_100003410(&__p, "lock");
    sub_100089B60();
  }

  return 0;
}

void sub_10007FB94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, int a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  if (a2 == 1)
  {
    v60 = __cxa_begin_catch(exception_object);
    v61 = v60[2];
    if (v61 < 0)
    {
      v61 = -v61;
    }

    v62 = v61 == 45 || v61 == 2;
    *&a9 = "int SparseBundleBackend::lock()";
    *(&a9 + 1) = 29;
    if (v62)
    {
      a10 = 0;
      sub_100053FA0(&__p, &a9);
      sub_1000026BC(&a60, "Cannot lock bundle, ignoring: ", 30);
      sub_10019E1D0(&a60, v60);
      sub_1000540C8(&__p);
    }

    else
    {
      a10 = 16;
      sub_10007FE40(&__p, &a9);
      sub_10019E1D0(&a60, v60);
      sub_10007FF68(&__p);
      v63 = v60[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x10007FB7CLL);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10007FCD4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100089C84(a1, a2);
  *a1 = off_10020FAC8;
  a1[45] = &off_10020FBC8;
  a1[46] = &off_10020FBF0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020FAC8;
  a1[45] = off_10020FB50;
  a1[46] = off_10020FB78;
  return a1;
}

void sub_10007FDD8(_Unwind_Exception *a1)
{
  sub_10008666C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10007FDFC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10008666C(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10007FE40(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100089D4C(a1, a2);
  *a1 = off_10020FCE8;
  a1[45] = &off_10020FDE8;
  a1[46] = &off_10020FE10;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020FCE8;
  a1[45] = off_10020FD70;
  a1[46] = off_10020FD98;
  return a1;
}

void sub_10007FF44(_Unwind_Exception *a1)
{
  sub_100086E04(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10007FF68(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100086E04(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10007FFB4(void *a1)
{
  if ((*(*a1 + 208))(a1))
  {
    v2 = a1[14];
    a1[13] = 0;
    a1[14] = 0;
    if (v2)
    {
      sub_10000367C(v2);
    }

    *&v4 = "int SparseBundleBackend::unlock_all()";
    *(&v4 + 1) = 35;
    v5 = 0;
    sub_100080084(v6, &v4);
    sub_1000026BC(v7, "Bundle's lock file is closed", 28);
    std::ostream::~ostream();
    sub_10008759C(v6);
    std::ios::~ios();
  }

  return 0;
}

void sub_100080070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000801AC(va);
  _Unwind_Resume(a1);
}

void *sub_100080084(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100089E14(a1, a2);
  *a1 = off_10020FF08;
  a1[45] = &off_100210008;
  a1[46] = &off_100210030;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020FF08;
  a1[45] = off_10020FF90;
  a1[46] = off_10020FFB8;
  return a1;
}

void sub_100080188(_Unwind_Exception *a1)
{
  sub_10008759C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000801AC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10008759C(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000803F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  sub_100003410(__p, "bands");
  v4 = sub_100158C4C(v3, __p, 0);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  sub_100087A9C(&v8, v4);
  while (1)
  {
    v5 = readdir(v8);
    if (!v5)
    {
      break;
    }

    *__error() = 0;
    v6 = strtoll(v5->d_name, 0, 16);
    if (!*__error())
    {
      sub_100003410(__p, v5->d_name);
      sub_100080528(a2, __p, v6);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  return closedir(v8);
}

void sub_1000804D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, DIR *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100080528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_10002870C();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

void sub_100080760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v14 = *(v12 - 104);
  *(v12 - 104) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000807E8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100089EDC(a1, a2);
  *a1 = off_100210200;
  a1[45] = &off_100210300;
  a1[46] = &off_100210328;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100210200;
  a1[45] = off_100210288;
  a1[46] = off_1002102B0;
  return a1;
}

void sub_1000808EC(_Unwind_Exception *a1)
{
  sub_1000883C0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100080910(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000883C0(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100080954(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10008A1D4(a1, a2);
  *a1 = off_100210420;
  a1[45] = &off_100210520;
  a1[46] = &off_100210548;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100210420;
  a1[45] = off_1002104A8;
  a1[46] = off_1002104D0;
  return a1;
}

void sub_100080A58(_Unwind_Exception *a1)
{
  sub_100088B58(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100080A7C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100088B58(a1);
  std::ios::~ios();
  return a1;
}

void sub_100080AC4(void *a1)
{
  sub_100089058(a1);

  operator delete();
}

void sub_100080B6C(uint64_t a1)
{
  sub_100089058((a1 - 24));

  operator delete();
}

void sub_100080BB0(uint64_t a1)
{
  sub_100089058((a1 - 72));

  operator delete();
}

void sub_100080BF4(uint64_t a1)
{
  sub_100089058((a1 - 80));

  operator delete();
}

uint64_t sub_100080C30(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100080CB8(result, a4);
  }

  return result;
}

void sub_100080C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100080E9C(&a9);
  _Unwind_Resume(a1);
}

void sub_100080CB8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_100080D04(a1, a2);
  }

  sub_100036CAC();
}

void sub_100080D04(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100038E68();
}

char *sub_100080D5C(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_1000093B4(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      v6 = (v6 + 24);
      v4 += 24;
      v12 = v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_100080E1C(v9);
  return v4;
}

uint64_t sub_100080E1C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100080E54(a1);
  }

  return a1;
}

void sub_100080E54(uint64_t a1)
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

void sub_100080E9C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100080EF0(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100080EF0(void ***a1)
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

std::__fs::filesystem::path *sub_100080F40(std::__fs::filesystem::path *a1, std::__fs::filesystem::path *this)
{
  if (std::__fs::filesystem::path::__root_directory(this).__size_)
  {
    std::string::operator=(&a1->__pn_, &this->__pn_);
  }

  else
  {
    if (std::__fs::filesystem::path::__filename(a1).__size_)
    {
      std::string::push_back(&a1->__pn_, 47);
    }

    v4 = SHIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    if (v4 >= 0)
    {
      v5 = this;
    }

    else
    {
      v5 = this->__pn_.__r_.__value_.__r.__words[0];
    }

    if (v4 >= 0)
    {
      size = HIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = this->__pn_.__r_.__value_.__l.__size_;
    }

    std::string::append(&a1->__pn_, v5, size);
  }

  return a1;
}

void *sub_100080FB8(void *a1)
{
  *a1 = off_10020E560;
  v2 = a1[2];
  if (v2)
  {
    sub_10000367C(v2);
  }

  return a1;
}

void sub_100081004(void *a1)
{
  *a1 = off_10020E560;
  v1 = a1[2];
  if (v1)
  {
    sub_10000367C(v1);
  }

  operator delete();
}

uint64_t sub_100081070(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100081308(v1);

  return std::ios::~ios();
}

uint64_t sub_1000810BC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100081308(v1);

  return std::ios::~ios();
}

void sub_10008111C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100081308(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100081184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000811C0(_BYTE *a1, int a2)
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

void sub_10008122C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100081308(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100081290(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100081308(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100081308(uint64_t a1)
{
  *a1 = off_10020E720;
  sub_100081474(a1);
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

uint64_t sub_100081474(uint64_t a1)
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
        sub_100081624((a1 + 72), __p);
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

void sub_1000815C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000815EC(uint64_t a1)
{
  sub_100081308(a1);

  operator delete();
}

int *sub_100081624(uint64_t *a1, uint64_t *a2)
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
    v21 = 111;
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
      v21 = 111;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100081808(uint64_t a1, uid_t a2)
{
  if (seteuid(a2))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100002148(v7);
    sub_1000026BC(v7, "failed to set euid to ", 22);
    std::ostream::operator<<();
    sub_100004290(exception, v7, 1u);
  }

  *&v5 = "set_euid_wrapper::set_euid_wrapper(uid_t)";
  *(&v5 + 1) = 34;
  v6 = 0;
  sub_100081960(v7, &v5);
  sub_1000026BC(v8, "uid temporarily set to ", 23);
  std::ostream::operator<<();
  std::ostream::~ostream();
  sub_100081B94(v7);
  std::ios::~ios();
  return a1;
}

void sub_10008191C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000022B4(va);
  _Unwind_Resume(a1);
}

void *sub_100081960(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100081ACC(a1, a2);
  *a1 = off_10020E7A8;
  a1[45] = &off_10020E8A8;
  a1[46] = &off_10020E8D0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020E7A8;
  a1[45] = off_10020E830;
  a1[46] = off_10020E858;
  return a1;
}

void sub_100081A64(_Unwind_Exception *a1)
{
  sub_100081B94(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100081A88(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100081B94(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100081ACC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10020E940;
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

void sub_100081B7C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100081B94(uint64_t a1)
{
  *a1 = off_10020E940;
  sub_100081FD4(a1);
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

void sub_100081D00(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100081B94(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100081D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100081DA4(_BYTE *a1, int a2)
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

uint64_t sub_100081E10(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100081B94(v1);

  return std::ios::~ios();
}

void sub_100081E5C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100081B94(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100081EC0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100081B94(v1);

  return std::ios::~ios();
}

void sub_100081F20(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100081B94(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100081F9C(uint64_t a1)
{
  sub_100081B94(a1);

  operator delete();
}

uint64_t sub_100081FD4(uint64_t a1)
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
        sub_100082148((a1 + 72), __p);
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

void sub_100082120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100082148(uint64_t *a1, uint64_t *a2)
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
    v21 = 146;
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
      v21 = 146;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10008232C(uint64_t a1)
{
  seteuid(0);
  *&v3 = "set_euid_wrapper::~set_euid_wrapper()";
  *(&v3 + 1) = 35;
  v4 = 0;
  sub_1000823EC(v5, &v3);
  sub_1000026BC(v6, "uid restored to 0 (res=", 23);
  std::ostream::operator<<();
  sub_1000026BC(v6, ")", 1);
  std::ostream::~ostream();
  sub_100082620(v5);
  std::ios::~ios();
  return a1;
}

void *sub_1000823EC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100082558(a1, a2);
  *a1 = off_10020E9C8;
  a1[45] = &off_10020EAC8;
  a1[46] = &off_10020EAF0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020E9C8;
  a1[45] = off_10020EA50;
  a1[46] = off_10020EA78;
  return a1;
}

void sub_1000824F0(_Unwind_Exception *a1)
{
  sub_100082620(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100082514(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100082620(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100082558(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10020EB60;
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

void sub_100082608(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100082620(uint64_t a1)
{
  *a1 = off_10020EB60;
  sub_100082A60(a1);
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

void sub_10008278C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100082620(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000827F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100082830(_BYTE *a1, int a2)
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

uint64_t sub_10008289C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100082620(v1);

  return std::ios::~ios();
}

void sub_1000828E8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100082620(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10008294C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100082620(v1);

  return std::ios::~ios();
}

void sub_1000829AC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100082620(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100082A28(uint64_t a1)
{
  sub_100082620(a1);

  operator delete();
}

uint64_t sub_100082A60(uint64_t a1)
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
        sub_100082BD4((a1 + 72), __p);
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

void sub_100082BAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100082BD4(uint64_t *a1, uint64_t *a2)
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
    v21 = 151;
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
      v21 = 151;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100082DB8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100083050(v1);

  return std::ios::~ios();
}

uint64_t sub_100082E04(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100083050(v1);

  return std::ios::~ios();
}

void sub_100082E64(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100083050(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100082ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100082F08(_BYTE *a1, int a2)
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

void sub_100082F74(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100083050(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100082FD8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100083050(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100083050(uint64_t a1)
{
  *a1 = off_10020ED80;
  sub_1000831BC(a1);
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

uint64_t sub_1000831BC(uint64_t a1)
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
        sub_10008336C((a1 + 72), __p);
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

void sub_100083308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100083334(uint64_t a1)
{
  sub_100083050(a1);

  operator delete();
}

int *sub_10008336C(uint64_t *a1, uint64_t *a2)
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
    v21 = 179;
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
      v21 = 179;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100083550(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000837E8(v1);

  return std::ios::~ios();
}

uint64_t sub_10008359C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000837E8(v1);

  return std::ios::~ios();
}

void sub_1000835FC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000837E8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100083664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000836A0(_BYTE *a1, int a2)
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

void sub_10008370C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000837E8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100083770(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000837E8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000837E8(uint64_t a1)
{
  *a1 = off_10020EFA0;
  sub_100083954(a1);
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

uint64_t sub_100083954(uint64_t a1)
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
        sub_100083B04((a1 + 72), __p);
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

void sub_100083AA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100083ACC(uint64_t a1)
{
  sub_1000837E8(a1);

  operator delete();
}

int *sub_100083B04(uint64_t *a1, uint64_t *a2)
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
    v21 = 225;
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
      v21 = 225;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_100083CE8(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_100036C5C(result, a2);
  }

  return result;
}

void sub_100083D40(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100083D5C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100083FF4(v1);

  return std::ios::~ios();
}

uint64_t sub_100083DA8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100083FF4(v1);

  return std::ios::~ios();
}

void sub_100083E08(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100083FF4(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100083E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100083EAC(_BYTE *a1, int a2)
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

void sub_100083F18(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100083FF4(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100083F7C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100083FF4(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100083FF4(uint64_t a1)
{
  *a1 = off_10020F1C0;
  sub_100084160(a1);
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

uint64_t sub_100084160(uint64_t a1)
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
        sub_100084310((a1 + 72), __p);
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

void sub_1000842AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000842D8(uint64_t a1)
{
  sub_100083FF4(a1);

  operator delete();
}

int *sub_100084310(uint64_t *a1, uint64_t *a2)
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
    v21 = 281;
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
      v21 = 281;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000844F4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10008478C(v1);

  return std::ios::~ios();
}

uint64_t sub_100084540(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10008478C(v1);

  return std::ios::~ios();
}

void sub_1000845A0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10008478C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100084608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100084644(_BYTE *a1, int a2)
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

void sub_1000846B0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10008478C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100084714(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10008478C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10008478C(uint64_t a1)
{
  *a1 = off_10020F3E0;
  sub_1000848F8(a1);
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

uint64_t sub_1000848F8(uint64_t a1)
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
        sub_100084AA8((a1 + 72), __p);
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

void sub_100084A44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100084A70(uint64_t a1)
{
  sub_10008478C(a1);

  operator delete();
}

int *sub_100084AA8(uint64_t *a1, uint64_t *a2)
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
    v21 = 286;
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
      v21 = 286;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

_BYTE *sub_100084C8C(uint64_t a1, _BYTE *a2)
{
  for (i = 0; i != 16; ++i)
  {
    v3 = a2;
    if (*(a1 + i) >= 0xA0u)
    {
      v4 = (*(a1 + i) >> 4) + 87;
    }

    else
    {
      v4 = (*(a1 + i) >> 4) | 0x30;
    }

    *a2 = v4;
    a2 += 2;
    v5 = *(a1 + i) & 0xF;
    v6 = v5 + 87;
    if (v5 < 0xA)
    {
      v6 = *(a1 + i) & 0xF | 0x30;
    }

    v3[1] = v6;
    if (i <= 9 && ((1 << i) & 0x2A8) != 0)
    {
      a2 = v3 + 3;
      v3[2] = 45;
    }
  }

  return a2;
}

uint64_t sub_100084D0C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100084FA4(v1);

  return std::ios::~ios();
}

uint64_t sub_100084D58(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100084FA4(v1);

  return std::ios::~ios();
}

void sub_100084DB8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100084FA4(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100084E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100084E5C(_BYTE *a1, int a2)
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

void sub_100084EC8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100084FA4(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100084F2C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100084FA4(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100084FA4(uint64_t a1)
{
  *a1 = off_10020F600;
  sub_100085110(a1);
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

uint64_t sub_100085110(uint64_t a1)
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
        sub_1000852C0((a1 + 72), __p);
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

void sub_10008525C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100085288(uint64_t a1)
{
  sub_100084FA4(a1);

  operator delete();
}

int *sub_1000852C0(uint64_t *a1, uint64_t *a2)
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
    v21 = 319;
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
      v21 = 319;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000854A4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10008573C(v1);

  return std::ios::~ios();
}

uint64_t sub_1000854F0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10008573C(v1);

  return std::ios::~ios();
}

void sub_100085550(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10008573C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000855B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000855F4(_BYTE *a1, int a2)
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

void sub_100085660(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10008573C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000856C4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10008573C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10008573C(uint64_t a1)
{
  *a1 = off_10020F820;
  sub_1000858A8(a1);
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

uint64_t sub_1000858A8(uint64_t a1)
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
        sub_100085A58((a1 + 72), __p);
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

void sub_1000859F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100085A20(uint64_t a1)
{
  sub_10008573C(a1);

  operator delete();
}

int *sub_100085A58(uint64_t *a1, uint64_t *a2)
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
    v21 = 337;
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
      v21 = 337;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100085C3C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100085ED4(v1);

  return std::ios::~ios();
}

uint64_t sub_100085C88(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100085ED4(v1);

  return std::ios::~ios();
}

void sub_100085CE8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100085ED4(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100085D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100085D8C(_BYTE *a1, int a2)
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

void sub_100085DF8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100085ED4(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100085E5C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100085ED4(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100085ED4(uint64_t a1)
{
  *a1 = off_10020FA40;
  sub_100086040(a1);
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

uint64_t sub_100086040(uint64_t a1)
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
        sub_1000861F0((a1 + 72), __p);
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

void sub_10008618C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000861B8(uint64_t a1)
{
  sub_100085ED4(a1);

  operator delete();
}

int *sub_1000861F0(uint64_t *a1, uint64_t *a2)
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
    v21 = 355;
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
      v21 = 355;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000863D4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10008666C(v1);

  return std::ios::~ios();
}

uint64_t sub_100086420(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10008666C(v1);

  return std::ios::~ios();
}

void sub_100086480(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10008666C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000864E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100086524(_BYTE *a1, int a2)
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

void sub_100086590(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10008666C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000865F4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10008666C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10008666C(uint64_t a1)
{
  *a1 = off_10020FC60;
  sub_1000867D8(a1);
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

uint64_t sub_1000867D8(uint64_t a1)
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
        sub_100086988((a1 + 72), __p);
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

void sub_100086924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100086950(uint64_t a1)
{
  sub_10008666C(a1);

  operator delete();
}

int *sub_100086988(uint64_t *a1, uint64_t *a2)
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
    v21 = 376;
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
      v21 = 376;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100086B6C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100086E04(v1);

  return std::ios::~ios();
}

uint64_t sub_100086BB8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100086E04(v1);

  return std::ios::~ios();
}

void sub_100086C18(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100086E04(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100086C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100086CBC(_BYTE *a1, int a2)
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

void sub_100086D28(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100086E04(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100086D8C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100086E04(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100086E04(uint64_t a1)
{
  *a1 = off_10020FE80;
  sub_100086F70(a1);
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

uint64_t sub_100086F70(uint64_t a1)
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
        sub_100087120((a1 + 72), __p);
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

void sub_1000870BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000870E8(uint64_t a1)
{
  sub_100086E04(a1);

  operator delete();
}

int *sub_100087120(uint64_t *a1, uint64_t *a2)
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
    v21 = 385;
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
      v21 = 385;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100087304(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10008759C(v1);

  return std::ios::~ios();
}

uint64_t sub_100087350(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10008759C(v1);

  return std::ios::~ios();
}

void sub_1000873B0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10008759C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100087418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100087454(_BYTE *a1, int a2)
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

void sub_1000874C0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10008759C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100087524(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10008759C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10008759C(uint64_t a1)
{
  *a1 = off_1002100A0;
  sub_100087708(a1);
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

uint64_t sub_100087708(uint64_t a1)
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
        sub_1000878B8((a1 + 72), __p);
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

void sub_100087854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100087880(uint64_t a1)
{
  sub_10008759C(a1);

  operator delete();
}

int *sub_1000878B8(uint64_t *a1, uint64_t *a2)
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
    v21 = 394;
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
      v21 = 394;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

DIR **sub_100087A9C(DIR **a1, int a2)
{
  v3 = fdopendir(a2);
  *a1 = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v6 = sub_100001860(exception, "Failed opening folder for entries reading", 0x13u);
  }

  return a1;
}

void *sub_100087B04(void *a1, uint64_t a2, char a3)
{
  a1[2] = a2;
  *a1 = off_100210120;
  v5 = ((a2 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8;
  sub_100087C58(a1 + 3, v5);
  v6 = a1[3];
  a1[8] = v6;
  a1[9] = v5;
  if ((a3 & 1) == 0 && v5)
  {
    bzero(v6, 8 * v5);
  }

  a1[1] = v6;
  return a1;
}

void *sub_100087B88(void *a1)
{
  *a1 = off_100210120;
  v2 = (a1 + 4);
  sub_100087F1C(a1 + 3, 0);
  sub_1000880A8(v2);
  return a1;
}

void sub_100087BE0(void *a1)
{
  *a1 = off_100210120;
  v1 = (a1 + 4);
  sub_100087F1C(a1 + 3, 0);
  sub_1000880A8(v1);

  operator delete();
}

uint64_t *sub_100087C58(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[4] = 0;
  v3 = malloc_type_valloc(8 * a2, 0x100004000313F17uLL);
  if (!v3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v6 = std::bad_alloc::bad_alloc(exception);
  }

  v7[0] = off_100210168;
  v7[3] = v7;
  v8 = v3;
  sub_100087E9C(v9, v7);
  sub_100087D7C(a1, &v8);
  sub_100087F1C(&v8, 0);
  sub_1000880A8(v9);
  sub_1000880A8(v7);
  return a1;
}

void sub_100087D5C(_Unwind_Exception *a1)
{
  sub_100087F1C(v1, 0);
  sub_1000880A8((v1 + 1));
  _Unwind_Resume(a1);
}

uint64_t *sub_100087D7C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  sub_100087F1C(a1, v4);
  sub_100087FA0((a1 + 1), (a2 + 1));
  return a1;
}

uint64_t sub_100087E50(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100087E9C(uint64_t a1, uint64_t a2)
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

uint64_t *sub_100087F1C(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return sub_100087F4C((result + 1), v3);
  }

  return result;
}

uint64_t sub_100087F4C(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_10002870C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_100087FA0(uint64_t a1, uint64_t a2)
{
  sub_100088024(a1);
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

uint64_t sub_100088024(uint64_t a1)
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

uint64_t sub_1000880A8(uint64_t a1)
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

uint64_t sub_100088128(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000883C0(v1);

  return std::ios::~ios();
}

uint64_t sub_100088174(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000883C0(v1);

  return std::ios::~ios();
}

void sub_1000881D4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000883C0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10008823C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100088278(_BYTE *a1, int a2)
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

void sub_1000882E4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000883C0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100088348(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000883C0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000883C0(uint64_t a1)
{
  *a1 = off_100210398;
  sub_10008852C(a1);
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

uint64_t sub_10008852C(uint64_t a1)
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
        sub_1000886DC((a1 + 72), __p);
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

void sub_100088678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000886A4(uint64_t a1)
{
  sub_1000883C0(a1);

  operator delete();
}

int *sub_1000886DC(uint64_t *a1, uint64_t *a2)
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
    v21 = 452;
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
      v21 = 452;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000888C0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100088B58(v1);

  return std::ios::~ios();
}

uint64_t sub_10008890C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100088B58(v1);

  return std::ios::~ios();
}

void sub_10008896C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100088B58(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000889D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100088A10(_BYTE *a1, int a2)
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

void sub_100088A7C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100088B58(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100088AE0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100088B58(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100088B58(uint64_t a1)
{
  *a1 = off_1002105B8;
  sub_100088CC4(a1);
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

uint64_t sub_100088CC4(uint64_t a1)
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
        sub_100088E74((a1 + 72), __p);
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

void sub_100088E10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100088E3C(uint64_t a1)
{
  sub_100088B58(a1);

  operator delete();
}

int *sub_100088E74(uint64_t *a1, uint64_t *a2)
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
    v21 = 461;
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
      v21 = 461;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_100089058(void *a1)
{
  *a1 = off_10020E248;
  v2 = (a1 + 3);
  a1[3] = off_10020E330;
  a1[9] = off_10020E358;
  a1[10] = off_10020E390;
  v3 = a1[17];
  a1[17] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[16];
  if (v4)
  {
    sub_10000367C(v4);
  }

  v5 = a1[14];
  if (v5)
  {
    sub_10000367C(v5);
  }

  a1[10] = off_10020E560;
  v6 = a1[12];
  if (v6)
  {
    sub_10000367C(v6);
  }

  sub_1001590D0(v2);
  v7 = a1[2];
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  return a1;
}

std::string *sub_100089184(std::string *this, std::string **a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = *a2;
  v4 = (v3 - 1);
  do
  {
    v5 = v4->__r_.__value_.__s.__data_[1];
    v4 = (v4 + 1);
  }

  while (v5);
  sub_10006BEB4(this, v3, v4);
  return this;
}

void sub_1000891C8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000891E4(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10020E720;
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

void sub_100089294(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000892AC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10020ED80;
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

void sub_10008935C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100089374(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10020EFA0;
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

void sub_100089424(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

const void **sub_10008943C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_100089470(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    goto LABEL_31;
  }

  v5 = (a2 + 1);
  v6 = *a2;
  if (v6 == 123)
  {
    if (v5 == a3)
    {
      goto LABEL_31;
    }

    v5 = (a2 + 2);
    v7 = a2[1];
  }

  else
  {
    v7 = *a2;
  }

  v8 = 0;
  v9 = 0;
  while (1)
  {
    do
    {
      if (v8 == 4)
      {
        if (v7 != 45)
        {
          v9 = 0;
          goto LABEL_23;
        }
      }

      else
      {
        v12 = v8 == 6 || (v8 & 0x7FFFFFFD) == 8;
        if ((v12 & v9) != 1)
        {
          goto LABEL_23;
        }

        if (v7 != 45)
        {
          goto LABEL_31;
        }
      }

      if (v5 == a3)
      {
        goto LABEL_31;
      }

      v13 = *v5++;
      v7 = v13;
      v9 = 1;
LABEL_23:
      v14 = sub_100089670(a1, v7);
      *(&v18 + v8) = v14;
      if (v5 == a3)
      {
        goto LABEL_31;
      }

      v15 = *v5++;
      v7 = v15;
      *(&v18 + v8++) = sub_100089670(a1, v15) | (16 * v14);
    }

    while (!v8);
    if (v8 == 16)
    {
      break;
    }

    if (v5 == a3)
    {
      goto LABEL_31;
    }

    v10 = *v5++;
    v7 = v10;
  }

  if (v6 == 123 && (v5 == a3 || (v16 = *v5, ++v5, v16 != 125)) || v5 != a3)
  {
LABEL_31:
    sub_100089608();
  }

  return v18;
}

uint64_t sub_100089670(uint64_t a1, int a2)
{
  if ((atomic_load_explicit(&qword_1002400B8, memory_order_acquire) & 1) == 0)
  {
    v7 = a2;
    sub_1001A3740();
    a2 = v7;
  }

  v2 = qword_1002400B0;
  v3 = memchr("0123456789abcdefABCDEF", a2, qword_1002400B0 - "0123456789abcdefABCDEF");
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  v5 = v4 - "0123456789abcdefABCDEF";
  if (v5 >= off_1002400A8)
  {
    sub_100089608();
  }

  return byte_1001CA34E[v5];
}

void sub_100089704(const std::runtime_error *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  v3 = std::runtime_error::runtime_error(exception, a1);
}

uint64_t sub_100089744(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10020F1C0;
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

void sub_1000897F4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10008980C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10020F3E0;
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

void sub_1000898BC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

const void **sub_1000898D4(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_100089908(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10020F600;
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

void sub_1000899B8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000899D0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10020F820;
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

void sub_100089A80(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100089A98(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10020FA40;
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

void sub_100089B48(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_100089BFC(void *a1, int *a2, uint64_t a3, int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10020A1C0;
  v5 = *a4;
  v6 = sub_100158C4C(*a2, a3, *a4 | 0x2000u);
  sub_10004D9A0(a1 + 3, v6, (v5 & 3) != 0);
}

uint64_t sub_100089C84(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10020FC60;
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

void sub_100089D34(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100089D4C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10020FE80;
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

void sub_100089DFC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100089E14(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1002100A0;
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

void sub_100089EC4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100089EDC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100210398;
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

void sub_100089F8C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

__n128 sub_10008A020(uint64_t a1, uint64_t a2)
{
  *a2 = off_100210638;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

BOOL sub_10008A058(void **a1, uint64_t a2, unint64_t *a3)
{
  if (*a1[1] <= *a3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100002148(v10);
    sub_1000026BC(v10, "Bands folder contains an out of range band (", 44);
    v7 = *(a2 + 23);
    if (v7 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    if (v7 >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      v9 = *(a2 + 8);
    }

    sub_1000026BC(v10, v8, v9);
    sub_1000026BC(v10, ")", 1);
    sub_100004290(exception, v10, 0x16u);
  }

  result = sub_1000B2014(*a1[2], *a3, 1);
  ++*a1[3];
  return result;
}

void sub_10008A154(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000022B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10008A188(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10008A1D4(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1002105B8;
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

void sub_10008A284(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

__n128 sub_10008A29C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *a1;
  *(a4 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  *(a4 + 24) = result;
  *(a4 + 40) = *(a1 + 40);
  *(a4 + 48) = a3 - a2 + *(a1 + 48);
  return result;
}

__n128 sub_10008A2D0(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  return result;
}

__n128 sub_10008A308(uint64_t a1, int a2, _OWORD *a3, __n128 *a4, int a5, uint64_t a6)
{
  *a1 = a2;
  *(a1 + 8) = *a3;
  result = *a4;
  *(a1 + 24) = *a4;
  *(a1 + 40) = a5;
  *(a1 + 48) = a6;
  return result;
}

BOOL sub_10008A328(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 8);
    v4 = *(a2 + 8);
    while (*v3 == *v4)
    {
      ++v3;
      ++v4;
      if (!--v2)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(a1 + 24);
      v7 = *(a2 + 24);
      while (*v6 == *v7)
      {
        ++v6;
        ++v7;
        if (!--v5)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      if (*(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48))
      {
        return *a1 == *a2;
      }
    }
  }

  return 0;
}

uint64_t sub_10008A3C4(uint64_t a1)
{
  bzero(*a1, *(a1 + 16));
  result = *(a1 + 16);
  v3 = *(a1 + 24);
  return result;
}

void *sub_10008A3F4@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[3];
  v4 = *(a2 + 16);
  v5 = *(a2 + 8);
  if (v3 > (v4 & 1) + v5 - 1 || ((v6 = result[2], v7 = v6 + v3, v8 = *a2, (v4 & 2) != 0) ? (v9 = *a2) : (v9 = v8 + 1), v7 <= v9))
  {
    *(a3 + 48) = 0;
    *(a3 + 104) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 28) = 0u;
    return result;
  }

  v10 = v9 - v3;
  if (v9 < v3)
  {
    if (*(a2 + 16))
    {
      if (v4 == 3)
      {
        if (v5 < v8)
        {
          goto LABEL_23;
        }
      }

      else if (v8 >= v5)
      {
LABEL_23:
        v11 = qword_10023FE60;
        goto LABEL_24;
      }
    }

    else if (v8 >= v5 || v8 + 1 >= v5)
    {
      goto LABEL_23;
    }

    v11 = v5 + (v4 & 1) + (((v4 >> 1) & 1) - 1) - v8;
LABEL_24:
    v13 = v11 + v9;
    if (v13 >= v7)
    {
      v13 = v6 + v3;
    }

    return sub_10008A548(a3, result, v13 - v3, 0, v3, result[4]);
  }

  if (*(a2 + 16))
  {
    if (v4 == 3)
    {
      if (v5 < v8)
      {
        goto LABEL_28;
      }
    }

    else if (v8 >= v5)
    {
LABEL_28:
      v12 = qword_10023FE60;
      goto LABEL_29;
    }
  }

  else if (v8 >= v5 || v8 + 1 >= v5)
  {
    goto LABEL_28;
  }

  v12 = v5 + (v4 & 1) + (((v4 >> 1) & 1) - 1) - v8;
LABEL_29:
  if (v6 - v10 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v6 - v10;
  }

  return sub_10008A548(a3, result, v14, v10, v9, result[4] - v10);
}

uint64_t sub_10008A548(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  *result = *a2 + a4;
  *(result + 8) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 16) = a3;
  *(result + 24) = a5;
  *(result + 32) = a6;
  *(result + 40) = *(a2 + 40);
  if (*(a2 + 104))
  {
    v7 = *(a2 + 48);
    *(result + 72) = *(a2 + 72);
    v8 = *(a2 + 88);
    v9 = *(a2 + 96) + a4;
    *(result + 48) = v7;
    *(result + 56) = *(a2 + 56);
    *(result + 88) = v8;
    *(result + 96) = v9;
    v10 = 1;
  }

  else
  {
    v10 = 0;
    *(result + 48) = 0;
  }

  *(result + 104) = v10;
  return result;
}

uint64_t sub_10008A5C0(uint64_t a1, void *a2, unint64_t a3, void *a4)
{
  *(a1 + 8) = 0;
  *a1 = off_1002106B8;
  v5 = a2[1];
  *(a1 + 16) = *a2;
  *(a1 + 24) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  *(a1 + 68) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 96) = 850045863;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  v6 = a4[4];
  *(a1 + 160) = a4[3];
  *(a1 + 168) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 176) = 0;
  v7 = a4[40];
  if (v7)
  {
    sub_1000B2014(v7, a3, 1);
  }

  return a1;
}

void sub_10008A688(_Unwind_Exception *a1)
{
  sub_10008E3EC(v2);
  v4 = *(v1 + 24);
  if (v4)
  {
    sub_10000367C(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10008A6A8(uint64_t a1, uint64_t a2, void *a3)
{
  if (sub_1000E0464())
  {
    *&v13 = "io_result_t sparse_bundles::Band::read(DiskImage::Context &, const sg_entry &)";
    *(&v13 + 1) = 38;
    LODWORD(v14) = 2;
    sub_10008A9B0(v15, &v13);
    sub_1000026BC(v16, "Reading ", 8);
    sub_10019A3A8(v16, a3);
    sub_1000026BC(v16, " to ", 4);
    sub_10008CB14(v16, a1);
    std::ostream::~ostream();
    sub_10008E6D8(v15);
    std::ios::~ios();
  }

  v6 = (*(**(a2 + 16) + 40))(*(a2 + 16));
  v7 = a3[3];
  if (v6 >= a3[2] + v7)
  {
    v8 = (*(**(a2 + 16) + 128))(*(a2 + 16), a3);
  }

  else if (v6 <= v7)
  {
    if (sub_1000E0464())
    {
      *&v13 = "io_result_t sparse_bundles::Band::read(DiskImage::Context &, const sg_entry &)";
      *(&v13 + 1) = 38;
      LODWORD(v14) = 2;
      sub_10008AB1C(v15, &v13);
      sub_1000026BC(v16, "Band data doesn't exist, zeroing", 32);
      std::ostream::~ostream();
      sub_10008EE70(v15);
      std::ios::~ios();
    }

    bzero(*a3, a3[2]);
    v8 = *(a3 + 4);
  }

  else
  {
    sub_10008A548(&v13, a3, v6 - v7, 0, v7, a3[4]);
    if (sub_1000E0464())
    {
      *&v11 = "io_result_t sparse_bundles::Band::read(DiskImage::Context &, const sg_entry &)";
      *(&v11 + 1) = 38;
      v12 = 2;
      sub_10003B870(v15, &v11);
      sub_1000026BC(v16, "Band data is partial, reading ", 30);
      sub_10019A3A8(v16, &v13);
      std::ostream::~ostream();
      sub_10003DBBC(v15);
      std::ios::~ios();
    }

    v8 = (*(**(a2 + 16) + 128))(*(a2 + 16), &v13);
    bzero((*a3 + v14), a3[2] - v14);
    if (v14 == v8)
    {
      v8 = *(a3 + 4);
    }

    if (*(&v13 + 1))
    {
      sub_10000367C(*(&v13 + 1));
    }
  }

  v9 = a3[3];
  if (v8 >= 0)
  {
    return a3[2];
  }

  else
  {
    return v8;
  }
}

void sub_10008A964(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a13)
  {
    sub_10000367C(a13);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10008A9B0(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000986C8(a1, a2);
  *a1 = off_1002107F8;
  a1[45] = &off_1002108F8;
  a1[46] = &off_100210920;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002107F8;
  a1[45] = off_100210880;
  a1[46] = off_1002108A8;
  return a1;
}

void sub_10008AAB4(_Unwind_Exception *a1)
{
  sub_10008E6D8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10008AAD8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10008E6D8(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10008AB1C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100098790(a1, a2);
  *a1 = off_100210A18;
  a1[45] = &off_100210B18;
  a1[46] = &off_100210B40;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100210A18;
  a1[45] = off_100210AA0;
  a1[46] = off_100210AC8;
  return a1;
}

void sub_10008AC20(_Unwind_Exception *a1)
{
  sub_10008EE70(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10008AC44(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10008EE70(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10008AC88(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (sub_1000E0464())
  {
    *&v9 = "io_result_t sparse_bundles::Band::write(DiskImage::Context &, const sg_entry &)";
    *(&v9 + 1) = 39;
    v10 = 2;
    sub_10008ADC4(v11, &v9);
    sub_1000026BC(v12, "Writing ", 8);
    sub_10019A3A8(v12, a3);
    sub_1000026BC(v12, " to ", 4);
    sub_10008CB14(v12, a1);
    std::ostream::~ostream();
    sub_10008F608(v11);
    std::ios::~ios();
  }

  v6 = sub_10008AF30(a1);
  sub_1001962E0(v6, a3);
  LODWORD(result) = (*(**(a2 + 16) + 120))(*(a2 + 16), a3);
  *(a1 + 68) = 1;
  v8 = a3[3];
  if (result >= 0)
  {
    return a3[2];
  }

  else
  {
    return result;
  }
}

void sub_10008ADB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10008AEEC(va);
  _Unwind_Resume(a1);
}

void *sub_10008ADC4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100098858(a1, a2);
  *a1 = off_100210C38;
  a1[45] = &off_100210D38;
  a1[46] = &off_100210D60;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100210C38;
  a1[45] = off_100210CC0;
  a1[46] = off_100210CE8;
  return a1;
}