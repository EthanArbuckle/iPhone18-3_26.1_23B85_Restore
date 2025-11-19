void sub_248F73D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void set_euid_wrapper::~set_euid_wrapper(set_euid_wrapper *this)
{
  v1 = seteuid(0);
  *&v2 = "set_euid_wrapper::~set_euid_wrapper()";
  *(&v2 + 1) = 35;
  v3 = 0;
  di_log::logger<di_log::log_printer<151ul>>::logger(v4, &v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "uid restored to 0 (res=", 23);
  MEMORY[0x24C1ED390](&v5, v1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, ")", 1);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<151ul>>::~logger_buf(v4);
  MEMORY[0x24C1ED6A0](&v6);
}

void *di_log::logger<di_log::log_printer<151ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<151ul>>::logger_buf(a1, a2);
  *a1 = &unk_285C02498;
  a1[45] = &unk_285C02598;
  a1[46] = &unk_285C025C0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285C02498;
  a1[45] = &unk_285C02520;
  a1[46] = &unk_285C02548;
  return a1;
}

void sub_248F73FA0(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<151ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<151ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<151ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<151ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285C02630;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F740B8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<151ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285C02630;
  di_log::logger_buf<di_log::log_printer<151ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void di_log::logger<di_log::log_printer<151ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<151ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<151ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<151ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<151ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<151ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<151ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<151ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<151ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<151ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<151ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<151ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<151ul>>::_sync(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v8 >= 1)
      {
        std::ostringstream::str[abi:ne200100](v2, __p);
        di_log::log_printer<151ul>::log((a1 + 72), __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_248F7465C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<151ul>::log(uint64_t *a1, uint64_t *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  if (DIForwardLogs())
  {
    DIOSLog = getDIOSLog();
    os_log_type_enabled(DIOSLog, *(a1 + 16));
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
    v18 = v4;
    v19 = 2080;
    v20 = v7;
    v21 = 2048;
    v22 = 151;
    v23 = 2082;
    v24 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = getDIOSLog();
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
      v18 = v4;
      v19 = 2080;
      v20 = v13;
      v21 = 2048;
      v22 = 151;
      v23 = 2082;
      v24 = v14;
      _os_log_impl(&dword_248DE0000, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<179ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<179ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<179ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<179ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<179ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<179ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<179ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<179ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<179ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<179ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<179ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285C02850;
  di_log::logger_buf<di_log::log_printer<179ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<179ul>>::_sync(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v8 >= 1)
      {
        std::ostringstream::str[abi:ne200100](v2, __p);
        di_log::log_printer<179ul>::log((a1 + 72), __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_248F74DB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<179ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<179ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<179ul>::log(uint64_t *a1, uint64_t *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  if (DIForwardLogs())
  {
    DIOSLog = getDIOSLog();
    os_log_type_enabled(DIOSLog, *(a1 + 16));
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
    v18 = v4;
    v19 = 2080;
    v20 = v7;
    v21 = 2048;
    v22 = 179;
    v23 = 2082;
    v24 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = getDIOSLog();
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
      v18 = v4;
      v19 = 2080;
      v20 = v13;
      v21 = 2048;
      v22 = 179;
      v23 = 2082;
      v24 = v14;
      _os_log_impl(&dword_248DE0000, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<225ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<225ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<225ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<225ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<225ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<225ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<225ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<225ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<225ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<225ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<225ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285C02A70;
  di_log::logger_buf<di_log::log_printer<225ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<225ul>>::_sync(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v8 >= 1)
      {
        std::ostringstream::str[abi:ne200100](v2, __p);
        di_log::log_printer<225ul>::log((a1 + 72), __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_248F75550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<225ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<225ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<225ul>::log(uint64_t *a1, uint64_t *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  if (DIForwardLogs())
  {
    DIOSLog = getDIOSLog();
    os_log_type_enabled(DIOSLog, *(a1 + 16));
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
    v18 = v4;
    v19 = 2080;
    v20 = v7;
    v21 = 2048;
    v22 = 225;
    v23 = 2082;
    v24 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = getDIOSLog();
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
      v18 = v4;
      v19 = 2080;
      v20 = v13;
      v21 = 2048;
      v22 = 225;
      v23 = 2082;
      v24 = v14;
      _os_log_impl(&dword_248DE0000, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void *std::vector<unsigned char>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_248F757F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk todi_log::logger<di_log::log_printer<281ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<281ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<281ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<281ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<281ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<281ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<281ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<281ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<281ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<281ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<281ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285C02C90;
  di_log::logger_buf<di_log::log_printer<281ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<281ul>>::_sync(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v8 >= 1)
      {
        std::ostringstream::str[abi:ne200100](v2, __p);
        di_log::log_printer<281ul>::log((a1 + 72), __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_248F75D5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<281ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<281ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<281ul>::log(uint64_t *a1, uint64_t *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  if (DIForwardLogs())
  {
    DIOSLog = getDIOSLog();
    os_log_type_enabled(DIOSLog, *(a1 + 16));
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
    v18 = v4;
    v19 = 2080;
    v20 = v7;
    v21 = 2048;
    v22 = 281;
    v23 = 2082;
    v24 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = getDIOSLog();
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
      v18 = v4;
      v19 = 2080;
      v20 = v13;
      v21 = 2048;
      v22 = 281;
      v23 = 2082;
      v24 = v14;
      _os_log_impl(&dword_248DE0000, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<286ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<286ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<286ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<286ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<286ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<286ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<286ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<286ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<286ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<286ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<286ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285C02EB0;
  di_log::logger_buf<di_log::log_printer<286ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<286ul>>::_sync(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v8 >= 1)
      {
        std::ostringstream::str[abi:ne200100](v2, __p);
        di_log::log_printer<286ul>::log((a1 + 72), __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_248F764F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<286ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<286ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<286ul>::log(uint64_t *a1, uint64_t *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  if (DIForwardLogs())
  {
    DIOSLog = getDIOSLog();
    os_log_type_enabled(DIOSLog, *(a1 + 16));
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
    v18 = v4;
    v19 = 2080;
    v20 = v7;
    v21 = 2048;
    v22 = 286;
    v23 = 2082;
    v24 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = getDIOSLog();
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
      v18 = v4;
      v19 = 2080;
      v20 = v13;
      v21 = 2048;
      v22 = 286;
      v23 = 2082;
      v24 = v14;
      _os_log_impl(&dword_248DE0000, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<319ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<319ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<319ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<319ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<319ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<319ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<319ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<319ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<319ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<319ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<319ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285C030D0;
  di_log::logger_buf<di_log::log_printer<319ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<319ul>>::_sync(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v8 >= 1)
      {
        std::ostringstream::str[abi:ne200100](v2, __p);
        di_log::log_printer<319ul>::log((a1 + 72), __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_248F76C8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<319ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<319ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<319ul>::log(uint64_t *a1, uint64_t *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  if (DIForwardLogs())
  {
    DIOSLog = getDIOSLog();
    os_log_type_enabled(DIOSLog, *(a1 + 16));
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
    v18 = v4;
    v19 = 2080;
    v20 = v7;
    v21 = 2048;
    v22 = 319;
    v23 = 2082;
    v24 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = getDIOSLog();
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
      v18 = v4;
      v19 = 2080;
      v20 = v13;
      v21 = 2048;
      v22 = 319;
      v23 = 2082;
      v24 = v14;
      _os_log_impl(&dword_248DE0000, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<337ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<337ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<337ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<337ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<337ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<337ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<337ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<337ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<337ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<337ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<337ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285C032F0;
  di_log::logger_buf<di_log::log_printer<337ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<337ul>>::_sync(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v8 >= 1)
      {
        std::ostringstream::str[abi:ne200100](v2, __p);
        di_log::log_printer<337ul>::log((a1 + 72), __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_248F77424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<337ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<337ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<337ul>::log(uint64_t *a1, uint64_t *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  if (DIForwardLogs())
  {
    DIOSLog = getDIOSLog();
    os_log_type_enabled(DIOSLog, *(a1 + 16));
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
    v18 = v4;
    v19 = 2080;
    v20 = v7;
    v21 = 2048;
    v22 = 337;
    v23 = 2082;
    v24 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = getDIOSLog();
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
      v18 = v4;
      v19 = 2080;
      v20 = v13;
      v21 = 2048;
      v22 = 337;
      v23 = 2082;
      v24 = v14;
      _os_log_impl(&dword_248DE0000, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<376ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<376ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<376ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<376ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<376ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<376ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<376ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<376ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<376ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<376ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<376ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285C03510;
  di_log::logger_buf<di_log::log_printer<376ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<376ul>>::_sync(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v8 >= 1)
      {
        std::ostringstream::str[abi:ne200100](v2, __p);
        di_log::log_printer<376ul>::log((a1 + 72), __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_248F77BBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<376ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<376ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<376ul>::log(uint64_t *a1, uint64_t *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  if (DIForwardLogs())
  {
    DIOSLog = getDIOSLog();
    os_log_type_enabled(DIOSLog, *(a1 + 16));
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
    v18 = v4;
    v19 = 2080;
    v20 = v7;
    v21 = 2048;
    v22 = 376;
    v23 = 2082;
    v24 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = getDIOSLog();
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
      v18 = v4;
      v19 = 2080;
      v20 = v13;
      v21 = 2048;
      v22 = 376;
      v23 = 2082;
      v24 = v14;
      _os_log_impl(&dword_248DE0000, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<385ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<385ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<385ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<385ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<385ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<385ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<385ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<385ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<385ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<385ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<385ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285C03730;
  di_log::logger_buf<di_log::log_printer<385ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<385ul>>::_sync(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v8 >= 1)
      {
        std::ostringstream::str[abi:ne200100](v2, __p);
        di_log::log_printer<385ul>::log((a1 + 72), __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_248F78354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<385ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<385ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<385ul>::log(uint64_t *a1, uint64_t *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  if (DIForwardLogs())
  {
    DIOSLog = getDIOSLog();
    os_log_type_enabled(DIOSLog, *(a1 + 16));
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
    v18 = v4;
    v19 = 2080;
    v20 = v7;
    v21 = 2048;
    v22 = 385;
    v23 = 2082;
    v24 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = getDIOSLog();
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
      v18 = v4;
      v19 = 2080;
      v20 = v13;
      v21 = 2048;
      v22 = 385;
      v23 = 2082;
      v24 = v14;
      _os_log_impl(&dword_248DE0000, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void dirEntries_t::dirEntries_t(dirEntries_t *this, int a2)
{
  v3 = fdopendir(a2);
  *this = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, "Failed opening folder for entries reading", 0x13u);
  }
}

void non-virtual thunk todi_log::logger<di_log::log_printer<452ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<452ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<452ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<452ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<452ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<452ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<452ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<452ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<452ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<452ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<452ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285C03950;
  di_log::logger_buf<di_log::log_printer<452ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<452ul>>::_sync(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v8 >= 1)
      {
        std::ostringstream::str[abi:ne200100](v2, __p);
        di_log::log_printer<452ul>::log((a1 + 72), __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_248F78B54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<452ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<452ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<452ul>::log(uint64_t *a1, uint64_t *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  if (DIForwardLogs())
  {
    DIOSLog = getDIOSLog();
    os_log_type_enabled(DIOSLog, *(a1 + 16));
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
    v18 = v4;
    v19 = 2080;
    v20 = v7;
    v21 = 2048;
    v22 = 452;
    v23 = 2082;
    v24 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = getDIOSLog();
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
      v18 = v4;
      v19 = 2080;
      v20 = v13;
      v21 = 2048;
      v22 = 452;
      v23 = 2082;
      v24 = v14;
      _os_log_impl(&dword_248DE0000, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<461ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<461ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<461ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<461ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<461ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<461ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<461ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<461ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<461ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<461ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<461ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285C03B70;
  di_log::logger_buf<di_log::log_printer<461ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<461ul>>::_sync(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v8 >= 1)
      {
        std::ostringstream::str[abi:ne200100](v2, __p);
        di_log::log_printer<461ul>::log((a1 + 72), __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_248F792EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<461ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<461ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<461ul>::log(uint64_t *a1, uint64_t *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  if (DIForwardLogs())
  {
    DIOSLog = getDIOSLog();
    os_log_type_enabled(DIOSLog, *(a1 + 16));
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
    v18 = v4;
    v19 = 2080;
    v20 = v7;
    v21 = 2048;
    v22 = 461;
    v23 = 2082;
    v24 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = getDIOSLog();
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
      v18 = v4;
      v19 = 2080;
      v20 = v13;
      v21 = 2048;
      v22 = 461;
      v23 = 2082;
      v24 = v14;
      _os_log_impl(&dword_248DE0000, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t di_log::logger_buf<di_log::log_printer<179ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285C02850;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F79710(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<225ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285C02A70;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F797D8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<281ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285C02C90;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F798A0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<286ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285C02EB0;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F79968(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<319ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285C030D0;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F79A30(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<337ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285C032F0;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F79AF8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<FileLocal>::__shared_ptr_emplace[abi:ne200100]<int &,std::string,int &,std::allocator<FileLocal>,0>(void *a1, int *a2, uint64_t a3, int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BD6C38;
  v5 = *a4;
  v6 = FileDescriptorWrapper::open_from(*a2, a3, *a4 | 0x2000u);
  FileLocal::FileLocal((a1 + 3), v6, (v5 & 3) != 0);
}

uint64_t di_log::logger_buf<di_log::log_printer<376ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285C03510;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F79CE4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<385ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285C03730;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F79DAC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<452ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285C03950;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F79E74(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<SparseBundleBackend::get_existing_bands(void)::$_0,std::allocator<SparseBundleBackend::get_existing_bands(void)::$_0>,void ()(std::string const&,unsigned long long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285C03BF0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

BOOL std::__function::__func<SparseBundleBackend::get_existing_bands(void)::$_0,std::allocator<SparseBundleBackend::get_existing_bands(void)::$_0>,void ()(std::string const&,unsigned long long)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  if (**(a1 + 8) <= *a3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::ostringstream::basic_ostringstream[abi:ne200100](v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Bands folder contains an out of range band (", 44);
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

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v8, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ")", 1);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, v10, 0x16u);
  }

  result = lock_free::bitmap_t::set_bit(**(a1 + 16), *a3, 1);
  ++**(a1 + 24);
  return result;
}

void sub_248F7A03C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<SparseBundleBackend::get_existing_bands(void)::$_0,std::allocator<SparseBundleBackend::get_existing_bands(void)::$_0>,void ()(std::string const&,unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t di_log::logger_buf<di_log::log_printer<461ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285C03B70;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F7A16C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

const void **info::DiskImageStackableInfo::get_layers@<X0>(const DiskImageStackable *a1@<X1>, char a2@<W2>, const __CFArray **a3@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 3) - *(a1 + 2)) >> 4), MEMORY[0x277CBF128]);
  theArray = Mutable;
  v8 = *(a1 + 2);
  v9 = *(a1 + 3);
  if (v8 != v9)
  {
    do
    {
      (*(**(v8 + 3) + 56))(&v24);
      Count = CFArrayGetCount(theArray);
      v11 = @"Base";
      if (Count != -1 - 0x5555555555555555 * ((*(a1 + 3) - *(a1 + 2)) >> 4))
      {
        v11 = off_278F81550[*v8];
      }

      v23 = v11;
      v12 = theArray;
      if ((a2 & 4) != 0)
      {
        v26 = @"Role";
        v27 = v11;
        CFRetain(v11);
        (*(*&v24[*(*v24 - 96)] + 16))(&v19);
        v28 = @"Image";
        v29 = v19;
        v19 = 0;
        v20 = &v26;
        v21 = 2;
        cf::create_dict_from_list(&v20, &value);
        CFArrayAppendValue(v12, value);
        CFAutoRelease<__CFDictionary *>::~CFAutoRelease(&value);
        for (i = 24; i != -8; i -= 16)
        {
          CFAutoRelease<void const*>::~CFAutoRelease((&v26 + i));
        }

        CFAutoRelease<__CFDictionary const*>::~CFAutoRelease(&v19);
      }

      else
      {
        v26 = @"Role";
        v27 = v11;
        CFRetain(v11);
        v13 = (*(*&v24[*(*v24 - 96)] + 24))(&v24[*(*v24 - 96)]);
        v28 = @"Image Format";
        v29 = v13;
        v20 = &v26;
        v21 = 2;
        cf::create_dict_from_list(&v20, &value);
        CFArrayAppendValue(v12, value);
        CFAutoRelease<__CFDictionary *>::~CFAutoRelease(&value);
        for (j = 24; j != -8; j -= 16)
        {
          CFAutoRelease<void const*>::~CFAutoRelease((&v26 + j));
        }
      }

      CFAutoRelease<__CFString const*>::~CFAutoRelease(&v23);
      v16 = v24;
      v24 = 0;
      if (v16)
      {
        (*(*v16 + 8))(v16);
      }

      v8 += 12;
    }

    while (v8 != v9);
    Mutable = theArray;
  }

  *a3 = Mutable;
  theArray = 0;
  result = CFAutoRelease<__CFArray *>::~CFAutoRelease(&theArray);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248F7A470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, const void *);
  v11 = va_arg(va1, void);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(va);
  v8 = v11;
  v11 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  CFAutoRelease<__CFArray *>::~CFAutoRelease(va1);
  _Unwind_Resume(a1);
}

CFTypeRef *CFAutoRelease<__CFString const*>::operator=(CFTypeRef *a1, CFTypeRef *a2)
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

info::DiskImageStackableInfo *info::DiskImageStackableInfo::DiskImageStackableInfo(info::DiskImageStackableInfo *this, const DiskImageStackable *a2, char a3)
{
  *(this + 5) = &unk_285BE2560;
  *(this + 6) = &unk_285BE2590;
  *(this + 7) = &unk_285BD9A98;
  *(this + 8) = &unk_285BD9AC8;
  *this = off_285C043C0;
  *(this + 3) = off_285C04408;
  *(this + 4) = off_285C04450;
  *(this + unk_285C04398) = off_285C04498;
  *(this + *(*this - 48)) = off_285C044E0;
  *(this + *(*this - 56)) = off_285C04528;
  *(this + *(*this - 64)) = off_285C04570;
  *this = off_285C04198;
  *(this + 3) = off_285C041E0;
  *(this + 4) = off_285C04228;
  *(this + unk_285C04170) = off_285C04270;
  *(this + *(*this - 48)) = off_285C042B8;
  *(this + *(*this - 56)) = off_285C04300;
  *(this + *(*this - 64)) = off_285C04348;
  *(this + 9) = &off_285C045D0;
  *(this + 3) = &off_285C04628;
  *(this + 96) = 0;
  *(this + 104) = 0;
  *(this + 112) = 0;
  *(this + 120) = 0;
  *(this + 17) = off_285C04718;
  *(this + 18) = 0;
  *(this + 5) = off_285C04770;
  *(this + 152) = 0;
  *(this + 160) = 0;
  *(this + 21) = 0;
  info::IdentityInfo::IdentityInfo<DiskImageStackable>(this + 22, &off_285C04118, a2);
  *this = &unk_285C03CE0;
  *(this + 3) = &unk_285C03D28;
  *(this + 4) = &unk_285C03D70;
  *(this + 5) = &unk_285C03DB8;
  *(this + 6) = &unk_285C03E00;
  *(this + 7) = &unk_285C03E48;
  *(this + 8) = &unk_285C03E90;
  *(this + 9) = &unk_285C03EF0;
  *(this + 17) = &unk_285C03F60;
  *(this + 22) = &unk_285C03FD0;
  *(this + 1) = 0;
  v5 = (this + 8);
  *(this + 2) = 0;
  v6 = (this + 16);
  v7 = *(a2 + 2);
  v8 = *(v7 + 24);
  v9 = *(v7 + 32);
  v10 = a2;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v8 + 56))(&v23);
  v11 = (*(*&v23[*(*v23 - 24)] + 16))(&v23[*(*v23 - 24)]);
  v12 = *this;
  *(this + *(*this - 112) + 16) = *(v11 + 16);
  *(this + *(v12 - 112) + 8) = *(v11 + 8);
  *(this + *(v12 - 112) + 56) = *(v11 + 56);
  v13 = this + *(v12 - 112);
  v14 = *(v11 + 40);
  v13[48] = *(v11 + 48);
  *(v13 + 5) = v14;
  v15 = this + *(*this - 112);
  v16 = *(v11 + 24);
  v15[32] = *(v11 + 32);
  *(v15 + 3) = v16;
  v17 = (*(*&v23[*(*v23 - 64)] + 16))(&v23[*(*v23 - 64)]);
  CFAutoRelease<__CFString const*>::operator=((this + *(*this - 128) + 16), (v17 + 16));
  CFAutoRelease<__CFString const*>::operator=((this + *(*this - 128) + 24), (v17 + 24));
  info::DiskImageStackableInfo::get_layers(v10, a3, &v22);
  if (*v5)
  {
    CFRelease(*v5);
  }

  *v5 = v22;
  v22 = 0;
  CFAutoRelease<__CFArray const*>::~CFAutoRelease(&v22);
  v18 = (*(*&v23[*(*v23 - 96)] + 24))(&v23[*(*v23 - 96)]);
  v22 = v18;
  if (*v6)
  {
    CFRelease(*v6);
    v18 = v22;
  }

  *v6 = v18;
  v22 = 0;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(&v22);
  v19 = v23;
  v23 = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return this;
}

void sub_248F7AD3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11, uint64_t a12)
{
  CFAutoRelease<__CFString const*>::~CFAutoRelease(&a11);
  v18 = a12;
  a12 = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  CFAutoRelease<__CFString const*>::~CFAutoRelease(v15);
  CFAutoRelease<__CFArray const*>::~CFAutoRelease(v16);
  info::IdentityInfo::~IdentityInfo(v13, &off_285C04118);
  info::EncryptionInfo::~EncryptionInfo(v12, &off_285C040F8);
  _Unwind_Resume(a1);
}

void *info::IdentityInfo::IdentityInfo<DiskImageStackable>(void *a1, DiskImage *a2, uint64_t a3)
{
  *a1 = &unk_285BE3380;
  v4 = *(a2 + 1);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = *(a2 + 2);
  v5 = *a2;
  *a1 = *a2;
  *(a1 + *(v5 - 24)) = *(a2 + 3);
  a1[1] = 0;
  a1[2] = 0;
  v6 = (a1 + 1);
  a1[3] = 0;
  identifier = di_stackable::get_identifier(*(*(a3 + 16) + 24), a2);
  v9 = v8;
  v10 = *MEMORY[0x277CBECE8];
  *&v15.byte0 = identifier;
  *&v15.byte8 = v9;
  v14 = CFUUIDCreateFromUUIDBytes(*MEMORY[0x277CBECE8], v15);
  v11 = CFUUIDCreateString(v10, v14);
  v13 = v11;
  if (*v6)
  {
    CFRelease(*v6);
    v11 = v13;
  }

  a1[1] = v11;
  v13 = 0;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(&v13);
  CFAutoRelease<__CFUUID const*>::~CFAutoRelease(&v14);
  return a1;
}

void sub_248F7AFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  CFAutoRelease<__CFString const*>::~CFAutoRelease(&a9);
  CFAutoRelease<__CFUUID const*>::~CFAutoRelease(&a10);
  CFAutoRelease<__CFString const*>::~CFAutoRelease((v10 + 24));
  CFAutoRelease<__CFString const*>::~CFAutoRelease((v10 + 16));
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v11);
  _Unwind_Resume(a1);
}

void info::DiskImageStackableInfo::~DiskImageStackableInfo(const void **this)
{
  *(v2 + 176) = off_285C04860;
  *(v2 + 64) = off_285C048B8;
  CFAutoRelease<__CFString const*>::~CFAutoRelease((v2 + 200));
  CFAutoRelease<__CFString const*>::~CFAutoRelease(this + 24);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(this + 23);
  this[17] = off_285C04718;
  this[5] = off_285C04770;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(this + 21);
}

{
  *(v2 + 176) = off_285C04860;
  *(v2 + 64) = off_285C048B8;
  CFAutoRelease<__CFString const*>::~CFAutoRelease((v2 + 200));
  CFAutoRelease<__CFString const*>::~CFAutoRelease(this + 24);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(this + 23);
  this[17] = off_285C04718;
  this[5] = off_285C04770;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(this + 21);

  JUMPOUT(0x24C1ED730);
}

const void **info::DiskImageStackableInfo::serialize_to_dict@<X0>(CFArrayRef *this@<X0>, void *a2@<X8>)
{
  v14[14] = *MEMORY[0x277D85DE8];
  v4 = (*(*this + 3))(this);
  v14[0] = @"Image Format";
  v14[1] = v4;
  v14[2] = @"Format Description";
  v14[3] = @"Stackable image";
  info::SizeInfo::serialize_to_dict((this + *(*this - 14)), &valuePtr);
  v14[4] = @"Size Info";
  v14[5] = valuePtr;
  valuePtr = 0;
  CFAutoRelease<__CFDictionary const*>::~CFAutoRelease(&valuePtr);
  info::EncryptionInfo::serialize_to_dict((this + *(*this - 15)), &valuePtr);
  v14[6] = @"Encryption Info";
  v14[7] = valuePtr;
  valuePtr = 0;
  CFAutoRelease<__CFDictionary const*>::~CFAutoRelease(&valuePtr);
  info::IdentityInfo::serialize_to_dict((this + *(*this - 16)), &valuePtr);
  v14[8] = @"Identity Info";
  v14[9] = valuePtr;
  valuePtr = 0;
  CFAutoRelease<__CFDictionary const*>::~CFAutoRelease(&valuePtr);
  valuePtr = CFArrayGetCount(this[1]);
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberLongType, &valuePtr);
  v14[10] = @"Images Count";
  v14[11] = v5;
  v10 = 0;
  v6 = this[1];
  v14[12] = @"Stack Info";
  v14[13] = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  v11[0] = v14;
  v11[1] = 7;
  cf::create_dict_from_list(v11, &v12);
  *a2 = v12;
  v12 = 0;
  CFAutoRelease<__CFDictionary *>::~CFAutoRelease(&v12);
  for (i = 13; i != -1; i -= 2)
  {
    CFAutoRelease<void const*>::~CFAutoRelease(&v14[i]);
  }

  result = CFAutoRelease<__CFNumber const*>::~CFAutoRelease(&v10);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248F7B3D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  CFAutoRelease<__CFNumber const*>::~CFAutoRelease(&a9);
  do
  {
    CFAutoRelease<void const*>::~CFAutoRelease(v14 - 1);
    v14 -= 2;
  }

  while (v14 != &a14);
  _Unwind_Resume(a1);
}

const void **virtual thunk toinfo::DiskImageStackableInfo::~DiskImageStackableInfo(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v1[22] = off_285C04860;
  v1[8] = off_285C048B8;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 25);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 24);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);
  v1[17] = off_285C04718;
  v1[5] = off_285C04770;

  return CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 21);
}

{
  v1 = (a1 + *(*a1 - 24));
  v1[22] = off_285C04860;
  v1[8] = off_285C048B8;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 25);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 24);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);
  v1[17] = off_285C04718;
  v1[5] = off_285C04770;

  return CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 21);
}

{
  v1 = (a1 + *(*a1 - 24));
  v1[22] = off_285C04860;
  v1[8] = off_285C048B8;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 25);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 24);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);
  v1[17] = off_285C04718;
  v1[5] = off_285C04770;

  return CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 21);
}

{
  v1 = (a1 + *(*a1 - 24));
  v1[22] = off_285C04860;
  v1[8] = off_285C048B8;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 25);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 24);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);
  v1[17] = off_285C04718;
  v1[5] = off_285C04770;

  return CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 21);
}

{
  v1 = (a1 + *(*a1 - 24));
  v1[22] = off_285C04860;
  v1[8] = off_285C048B8;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 25);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 24);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);
  v1[17] = off_285C04718;
  v1[5] = off_285C04770;

  return CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 21);
}

{
  v1 = (a1 + *(*a1 - 32));
  v1[22] = off_285C04860;
  v1[8] = off_285C048B8;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 25);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 24);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);
  v1[17] = off_285C04718;
  v1[5] = off_285C04770;

  return CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 21);
}

{
  v1 = (a1 + *(*a1 - 32));
  v1[22] = off_285C04860;
  v1[8] = off_285C048B8;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 25);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 24);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);
  v1[17] = off_285C04718;
  v1[5] = off_285C04770;

  return CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 21);
}

{
  v1 = (a1 + *(*a1 - 32));
  v1[22] = off_285C04860;
  v1[8] = off_285C048B8;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 25);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 24);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);
  v1[17] = off_285C04718;
  v1[5] = off_285C04770;

  return CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 21);
}

void virtual thunk toinfo::DiskImageStackableInfo::~DiskImageStackableInfo(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v1[22] = off_285C04860;
  v1[8] = off_285C048B8;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 25);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 24);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);
  v1[17] = off_285C04718;
  v1[5] = off_285C04770;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 21);

  JUMPOUT(0x24C1ED730);
}

{
  v1 = (a1 + *(*a1 - 24));
  v1[22] = off_285C04860;
  v1[8] = off_285C048B8;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 25);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 24);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);
  v1[17] = off_285C04718;
  v1[5] = off_285C04770;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 21);

  JUMPOUT(0x24C1ED730);
}

{
  v1 = (a1 + *(*a1 - 24));
  v1[22] = off_285C04860;
  v1[8] = off_285C048B8;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 25);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 24);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);
  v1[17] = off_285C04718;
  v1[5] = off_285C04770;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 21);

  JUMPOUT(0x24C1ED730);
}

{
  v1 = (a1 + *(*a1 - 24));
  v1[22] = off_285C04860;
  v1[8] = off_285C048B8;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 25);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 24);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);
  v1[17] = off_285C04718;
  v1[5] = off_285C04770;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 21);

  JUMPOUT(0x24C1ED730);
}

{
  v1 = (a1 + *(*a1 - 24));
  v1[22] = off_285C04860;
  v1[8] = off_285C048B8;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 25);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 24);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);
  v1[17] = off_285C04718;
  v1[5] = off_285C04770;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 21);

  JUMPOUT(0x24C1ED730);
}

{
  v1 = (a1 + *(*a1 - 32));
  v1[22] = off_285C04860;
  v1[8] = off_285C048B8;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 25);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 24);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);
  v1[17] = off_285C04718;
  v1[5] = off_285C04770;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 21);

  JUMPOUT(0x24C1ED730);
}

{
  v1 = (a1 + *(*a1 - 32));
  v1[22] = off_285C04860;
  v1[8] = off_285C048B8;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 25);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 24);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);
  v1[17] = off_285C04718;
  v1[5] = off_285C04770;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 21);

  JUMPOUT(0x24C1ED730);
}

{
  v1 = (a1 + *(*a1 - 32));
  v1[22] = off_285C04860;
  v1[8] = off_285C048B8;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 25);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 24);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);
  v1[17] = off_285C04718;
  v1[5] = off_285C04770;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 21);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk toinfo::DiskImageStackableInfo::~DiskImageStackableInfo(info::DiskImageStackableInfo *this)
{
  v1 = (this + *(*this - 24));
  v1[22] = off_285C04860;
  v1[8] = off_285C048B8;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 25);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 24);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);
  v1[17] = off_285C04718;
  v1[5] = off_285C04770;

  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 21);
}

{
  v1 = (this + *(*this - 24));
  v1[22] = off_285C04860;
  v1[8] = off_285C048B8;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 25);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 24);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);
  v1[17] = off_285C04718;
  v1[5] = off_285C04770;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 21);

  JUMPOUT(0x24C1ED730);
}

const void **virtual thunk toinfo::DiskImageStackableInfo::serialize_to_dict@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  return info::DiskImageStackableInfo::serialize_to_dict((a1 + *(*a1 - 40)), a2);
}

{
  return info::DiskImageStackableInfo::serialize_to_dict((a1 + *(*a1 - 40)), a2);
}

__CFString *virtual thunk toinfo::DiskImageStackableInfo::get_category()
{
  return @"STCK";
}

{
  return @"STCK";
}

void info::DiskImageStackableInfo::~DiskImageStackableInfo(const void **this, const void **a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 13)) = a2[1];
  *(this + *(*this - 12)) = a2[2];
  *(this + *(*this - 3)) = a2[3];
  *(this + *(*this - 4)) = a2[4];
  *(this + *(*this - 5)) = a2[5];
  *(this + *(*this - 6)) = a2[6];
  *(this + *(*this - 7)) = a2[7];
  *(this + *(*this - 8)) = a2[8];
  *(this + *(*this - 14)) = a2[9];
  *(this + *(*this - 15)) = a2[10];
  *(this + *(*this - 16)) = a2[11];
  CFAutoRelease<__CFString const*>::~CFAutoRelease(this + 2);
  CFAutoRelease<__CFArray const*>::~CFAutoRelease(this + 1);
}

void KnoxbackendData::KnoxbackendData(std::string *this, __int128 *a2, std::string::size_type a3, std::string::size_type *a4, std::string::size_type a5)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v10 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v10;
  }

  v12 = *a4;
  v11 = a4[1];
  this[1].__r_.__value_.__r.__words[0] = a3;
  this[1].__r_.__value_.__l.__size_ = v12;
  this[1].__r_.__value_.__r.__words[2] = v11;
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

  this[2].__r_.__value_.__r.__words[0] = di_utils::buffer_to_uuid(v14, v15);
  this[2].__r_.__value_.__l.__size_ = v16;
  this[2].__r_.__value_.__r.__words[2] = a5;
}

void sub_248F7CAD4(_Unwind_Exception *a1)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void Knoxbackend::KnoxCreateStreams(uint64_t a1, char *a2, uint64_t a3, uint8_t **a4)
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
  AEAwrapper::ByteStream::ByteStream(&v9, &v6);
  AEAwrapper::Context::Context(&v8, &v9);
  AEAwrapper::Context::setSymmetricKey(&v8, *a4, 0x20uLL);
  AEAwrapper::ByteStream::make_DecryptionRandomAccessInputStream(&v9, &v8, 0xFFFFFFFFFFFFFFFFLL, 0x4000000000000000uLL, 0, &v7);
  std::allocate_shared[abi:ne200100]<AEAwrapper::DecryptionStream,std::allocator<AEAwrapper::DecryptionStream>,AEAwrapper::ByteStream,AEAwrapper::Context,AEAwrapper::ByteStream,0>();
}

void sub_248F7CBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, AAByteStream);
  va_copy(va2, va1);
  v6 = va_arg(va2, AEAContext);
  AEAwrapper::ByteStream::~ByteStream(va);
  AEAwrapper::Context::~Context(va1);
  AEAwrapper::ByteStream::~ByteStream(va2);
  _Unwind_Resume(a1);
}

void Knoxbackend::Knoxbackend(Backend *a1, char **a2, uint64_t a3, uint64_t a4)
{
  Backend::Backend(a1);
  *v8 = &unk_285C049D0;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 0u;
  v9 = *a2;
  v10 = *(a4 + 8);
  v11[0] = *a4;
  v11[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  Knoxbackend::KnoxCreateStreams(a1, v9, v7, v11);
}

void sub_248F7CD0C(_Unwind_Exception *exception_object)
{
  v3 = v1[6];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = v1[4];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = v1[2];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(exception_object);
}

void Knoxbackend::~Knoxbackend(Knoxbackend *this)
{
  Knoxbackend::~Knoxbackend(this);

  JUMPOUT(0x24C1ED730);
}

{
  *this = &unk_285C049D0;
  v2 = *(this + 6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t Knoxbackend::get_identifier(Knoxbackend *this)
{
  v1 = *(this + 3);
  result = *(v1 + 48);
  v3 = *(v1 + 56);
  return result;
}

void *std::__shared_ptr_emplace<Knoxbackend>::__shared_ptr_emplace[abi:ne200100]<Knoxbackend&,std::allocator<Knoxbackend>,0>(void *a1, const Knoxbackend *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BD6F48;
  Knoxbackend::Knoxbackend((a1 + 3), a2);
  return a1;
}

void Knoxbackend::Knoxbackend(Knoxbackend *this, const Knoxbackend *a2)
{
  Backend::Backend(this);
  *v4 = &unk_285C049D0;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0u;
  v6 = *(a2 + 3);
  v5 = *(a2 + 4);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v7 = *(this + 4);
    *(this + 3) = v6;
    *(this + 4) = v5;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  else
  {
    *(this + 3) = v6;
    *(this + 4) = 0;
  }

  v9 = *(a2 + 5);
  v8 = *(a2 + 6);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(this + 6);
  *(this + 5) = v9;
  *(this + 6) = v8;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

std::string *std::__shared_ptr_emplace<KnoxbackendData>::__shared_ptr_emplace[abi:ne200100]<std::string &,unsigned long long,std::shared_ptr<unsigned char> const&,unsigned long,std::allocator<KnoxbackendData>,0>(std::string *a1, __int128 *a2, std::string::size_type *a3, std::string::size_type *a4, std::string::size_type *a5)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_285C04AB8;
  KnoxbackendData::KnoxbackendData(a1 + 1, a2, *a3, a4, *a5);
  return a1;
}

void std::__shared_ptr_emplace<KnoxbackendData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285C04AB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

void std::__destroy_at[abi:ne200100]<KnoxbackendData,0>(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void readSynchronizer::readSynchronizer(Backend *a1, void *a2)
{
  BackendInternalBackend::BackendInternalBackend(a1, a2);
  *v2 = &unk_285C04B08;
  *(v2 + 40) = 0u;
  *(v2 + 72) = 0;
  *(v2 + 56) = 0u;
  resources = system_properties::get_resources(v2);
  v4 = *(resources + 2);
  if (v4 == 1)
  {
    v5 = (*resources)();
  }

  else
  {
    if (v4)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v5 = *resources;
  }

  LODWORD(v6) = v5 + 1;
  v7 = 0;
  std::allocate_shared[abi:ne200100]<ref::Allocator<CurrentReader,unsigned long long>,std::allocator<ref::Allocator<CurrentReader,unsigned long long>>,unsigned int,int,0>();
}

void sub_248F7D3CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  ref::tagged_ptr<CurrentReader,unsigned long long>::reset(v13);
  readSynchronizer::readSynchronizer(v12);
  BackendInternalBackend::~BackendInternalBackend(v12);
  _Unwind_Resume(a1);
}

atomic_ullong *ref::Allocator<CurrentReader,unsigned long long>::allocate@<X0>(uint64_t a1@<X0>, std::unique_lock<std::mutex>::mutex_type *a2@<X1>, char a3@<W2>, unint64_t *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v22 = a2;
  ref::Allocator<CurrentReader,unsigned long long>::add_tag(a1, a2, a3, &v19);
  if (v19 && (*(v19 + 312) & 1) == 0 || v19 && (*(v19 + 312) & 1) != 0)
  {
LABEL_5:
    *a4 = 0;
    v7 = atomic_exchange(&v19, 0);
  }

  else
  {
    v8 = *(a1 + 704);
    if ((v8 & 1) == 0 || v20 == (a1 + 728))
    {
      *a4 = 0;
      goto LABEL_16;
    }

    while ((v8 & 2) == 0)
    {
      ref::Allocator<CurrentReader,unsigned long long>::allocate_from_empty_pool(a1, a2, &v17);
      v21 = v17;
      ref::tagged_ptr<CurrentReader,unsigned long long>::operator=(&v19, &v18);
      ref::tagged_ptr<CurrentReader,unsigned long long>::reset(&v18);
      if (v19 && (*(v19 + 312) & 1) == 0)
      {
        goto LABEL_23;
      }

      min = ref::Allocator<CurrentReader,unsigned long long>::extract_min(a1);
      if (min)
      {
        v21 = min;
        ref::Allocator<CurrentReader,unsigned long long>::insert_elem(a1, min, a2, &v17);
        ref::tagged_ptr<CurrentReader,unsigned long long>::operator=(&v19, &v17);
        ref::tagged_ptr<CurrentReader,unsigned long long>::reset(&v17);
LABEL_23:
        std::mutex::lock((a1 + 744));
        v14 = std::__tree<std::__value_type<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *>>>::__emplace_hint_unique_key_args<unsigned long long,unsigned long long const&,ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *&>((a1 + 720), v20, &v22);
        if ((v15 & 1) == 0)
        {
          *(v14 + 40) = v21;
        }

        std::condition_variable::notify_all((a1 + 808));
        std::mutex::unlock((a1 + 744));
        v23[0] = 0;
        v24 = 0;
        ref::Allocator<CurrentReader,unsigned long long>::run_failed_dtors_list(a1, 0, v23);
        if (v24 == 1)
        {
          std::__function::__value_func<BOOL ()(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,unsigned long long)>::~__value_func[abi:ne200100](v23);
        }

        goto LABEL_5;
      }

      v8 = *(a1 + 704);
      if ((v8 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    v7 = (a1 + 104);
    *a4 = 0;
    v12 = atomic_load((a1 + 104));
    if (v12)
    {
      v13 = v12;
      while (1)
      {
        atomic_compare_exchange_strong(v7, &v13, v12 + 1);
        if (v13 == v12)
        {
          break;
        }

        v12 = v13;
        if (!v13)
        {
          goto LABEL_21;
        }
      }

      v16 = *(a1 + 400);
      if (v16)
      {
        *(a1 + 408) = atomic_fetch_add_explicit(v16, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
LABEL_21:
      v7 = 0;
    }
  }

  atomic_store(v7, a4);
LABEL_16:
  result = ref::tagged_ptr<CurrentReader,unsigned long long>::reset(&v19);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248F7D640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

atomic_ullong *ref::tagged_ptr<CurrentReader,unsigned long long>::operator=(atomic_ullong *a1, atomic_ullong *a2)
{
  if (a2 != a1)
  {
    v3 = atomic_exchange(a2, 0);
    ref::tagged_ptr<CurrentReader,unsigned long long>::reset(a1);
    atomic_store(v3, a1);
  }

  return a1;
}

void sub_248F7D71C(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  if (*v1)
  {
    if (*(v2 + 256))
    {
      std::function<void ()(ref::details::ctrl_blk<CurrentReader,unsigned long long> *,ref::tagged_ptr<CurrentReader,unsigned long long> &)>::operator()(v2 + 232, v2);
    }
  }

  __cxa_rethrow();
}

atomic_ullong *readSynchronizer::get_reader_ptr@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[3];
  v7 = *(a1 + 40);
  v8 = *v7;
  v9 = v7[1];
  while (v8 != v9)
  {
    ref::tagged_weak_ptr<CurrentReader,unsigned long long>::lock_if_tag(v8, v6, &v20);
    if (v20 && (*(v20 + 312) & 1) == 0)
    {
      ref::tagged_ptr<CurrentReader,unsigned long long>::tagged_ptr(&v18, &v20);
      v19 = -2;
      *a3 = 0;
      atomic_store(atomic_exchange(&v18, 0), a3);
      *(a3 + 8) = v19;
      ref::tagged_ptr<CurrentReader,unsigned long long>::reset(&v18);
      return ref::tagged_ptr<CurrentReader,unsigned long long>::reset(&v20);
    }

    ref::tagged_ptr<CurrentReader,unsigned long long>::reset(&v20);
    ++v8;
  }

  ref::Allocator<CurrentReader,unsigned long long>::allocate(*(a1 + 56), v6, 1, &v20);
  if (v20 && (v10 = atomic_load((v20 + 24)), v10 == 2))
  {
    ref::tagged_ptr<CurrentReader,unsigned long long>::tagged_ptr(&v18, &v20);
    v19 = -2;
    *a3 = 0;
    atomic_store(atomic_exchange(&v18, 0), a3);
    *(a3 + 8) = v19;
    ref::tagged_ptr<CurrentReader,unsigned long long>::reset(&v18);
  }

  else
  {
    v18 = a2[3];
    ref::tagged_ptr<CurrentReader,unsigned long long>::make_value<std::shared_ptr<char> const&,unsigned long long>(&v20, a2, &v18);
    v11 = *(a1 + 40);
    v12 = *v11;
    v13 = v11[1];
    if (*v11 == v13)
    {
      v14 = 0;
    }

    else
    {
      v14 = 0;
      do
      {
        ref::tagged_weak_ptr<CurrentReader,unsigned long long>::replace_if_tag_match(v12, -2, &v20, &v18);
        if (v18)
        {
          v15 = *(v18 + 312) ^ 1;
        }

        else
        {
          v15 = 0;
        }

        if (v20)
        {
          v16 = *(v20 + 312) ^ 1;
        }

        else
        {
          v16 = 0;
        }

        ref::tagged_ptr<CurrentReader,unsigned long long>::reset(&v18);
        if (((v15 ^ v16) & 1) == 0)
        {
          break;
        }

        ++v14;
        ++v12;
      }

      while (v12 != v13);
    }

    ref::tagged_ptr<CurrentReader,unsigned long long>::tagged_ptr(a3, &v20);
    *(a3 + 8) = v14;
  }

  return ref::tagged_ptr<CurrentReader,unsigned long long>::reset(&v20);
}

void sub_248F7D944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ref::tagged_ptr<CurrentReader,unsigned long long>::reset(va);
  _Unwind_Resume(a1);
}

unint64_t *ref::tagged_weak_ptr<CurrentReader,unsigned long long>::lock_if_tag@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = atomic_load(result);
  if (v4 && *(v4 + 32) == a2)
  {
    v6 = atomic_load(result);
    ref::tagged_ptr<CurrentReader,unsigned long long>::tagged_ptr(&v8, v6, 1);
    if (v8 && (*(v8 + 312) & 1) == 0)
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

    return ref::tagged_ptr<CurrentReader,unsigned long long>::reset(&v8);
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void sub_248F7DA5C(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  if (*v1)
  {
    if (*(v2 + 256))
    {
      std::function<void ()(ref::details::ctrl_blk<CurrentReader,unsigned long long> *,ref::tagged_ptr<CurrentReader,unsigned long long> &)>::operator()(v2 + 232, v2);
    }
  }

  __cxa_rethrow();
}

unint64_t *ref::tagged_weak_ptr<CurrentReader,unsigned long long>::replace_if_tag_match@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, unint64_t *a4@<X8>)
{
  v6 = result;
  LOBYTE(v8) = 0;
  v9 = atomic_load(result);
  do
  {
    if (v8)
    {
      return ref::tagged_ptr<CurrentReader,unsigned long long>::tagged_ptr(a4, a3);
    }

    if (v9)
    {
      if (v9[4] != a2)
      {
        goto LABEL_22;
      }

      v16 = 0;
      v10 = atomic_load(v9);
      if (v10)
      {
        v11 = v10;
        while (1)
        {
          atomic_compare_exchange_strong(v9, &v11, v10 + 1);
          if (v11 == v10)
          {
            break;
          }

          v10 = v11;
          if (!v11)
          {
            goto LABEL_14;
          }
        }

        v12 = v9[37];
        v11 = v9;
        if (v12)
        {
          v9[38] = atomic_fetch_add_explicit(v12, 1uLL, memory_order_relaxed);
          v11 = v9;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
      v16 = 0;
    }

LABEL_14:
    atomic_store(v11, &v16);
    v13 = v9[4];
    if (v13 == a2)
    {
      v14 = atomic_load(a3);
      v15 = v9;
      atomic_compare_exchange_strong(v6, &v15, v14);
      if (v15 == v9)
      {
        v8 = 1;
      }

      else
      {
        v9 = v15;
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    result = ref::tagged_ptr<CurrentReader,unsigned long long>::reset(&v16);
  }

  while (v13 == a2);
  if (v8)
  {
    return ref::tagged_ptr<CurrentReader,unsigned long long>::tagged_ptr(a4, a3);
  }

LABEL_22:
  *a4 = 0;
  atomic_store(0, a4);
  return result;
}

uint64_t readSynchronizer::try_copy(uint64_t a1, uint64_t *a2, int *a3, void **a4)
{
  if (*(*a2 + 192))
  {
    v4 = *a2 + 40;
  }

  else
  {
    v4 = 0;
  }

  v5 = atomic_load((v4 + 140));
  if (v5)
  {
    v7 = *(*a2 + 192) ? *a2 + 40 : 0;
    v8 = atomic_load((v7 + 144));
    *a3 = v8;
    if ((v8 & 0x80000000) == 0)
    {
      v9 = *a4;
      if (*(*a2 + 192))
      {
        v10 = *a2 + 40;
      }

      else
      {
        v10 = 0;
      }

      v11 = *v10;
      v12 = *(v10 + 8);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        memcpy(v9, v11, *a3);
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      else
      {
        memcpy(v9, v11, v8);
      }

      v13 = *a2;
      if (*a2)
      {
        if (*(v13 + 192))
        {
          v13 += 40;
        }

        else
        {
          v13 = 0;
        }
      }

      atomic_fetch_add((v13 + 136), 0xFFFFFFFF);
    }
  }

  return v5 & 1;
}

void readSynchronizer::try_notify(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    if (*(v3 + 192))
    {
      v4 = v3 + 40;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  std::mutex::lock((v4 + 72));
  if (*(*a2 + 192))
  {
    v5 = *a2 + 40;
  }

  else
  {
    v5 = 0;
  }

  if (atomic_load((v5 + 136)))
  {
    if (*(*a2 + 192))
    {
      v7 = *a2 + 40;
    }

    else
    {
      v7 = 0;
    }

    std::condition_variable::notify_all((v7 + 24));
  }

  std::mutex::unlock((v4 + 72));
}

uint64_t readSynchronizer::_private_read(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  if (*a2)
  {
    if (*(v6 + 192))
    {
      v7 = v6 + 40;
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

  std::mutex::lock((v7 + 72));
  v8 = (*(**(a1 + 24) + 128))(*(a1 + 24), a3);
  v9 = v8;
  if (*(*a2 + 192))
  {
    v10 = *a2 + 40;
  }

  else
  {
    v10 = 0;
  }

  atomic_store(v8, (v10 + 144));
  if (*(*a2 + 192))
  {
    v11 = *a2 + 40;
  }

  else
  {
    v11 = 0;
  }

  atomic_store(1u, (v11 + 140));
  std::mutex::unlock((v7 + 72));
  return v9;
}

std::__shared_weak_count *readSynchronizer::read(uint64_t a1, uint64_t *a2)
{
  v2 = a2;
  v23 = 0;
  reader_ptr = readSynchronizer::get_reader_ptr(a1, a2, &v21);
  v5 = v22;
  if (v22 != -2)
  {
    v11 = readSynchronizer::_private_read(a1, &v21, v2);
    v23 = v11;
    readSynchronizer::try_notify(v11, &v21);
    if (v5 < (*(*(a1 + 40) + 8) - **(a1 + 40)) >> 3)
    {
      __lk.__m_ = 0;
      v12 = atomic_load((a1 + 72));
      atomic_store(v12, &__lk);
      atomic_store(atomic_exchange(&__lk, 0), (**(a1 + 40) + 8 * v5));
    }

    if (v21 && *(v21 + 256))
    {
      std::function<void ()(ref::details::ctrl_blk<CurrentReader,unsigned long long> *,ref::tagged_ptr<CurrentReader,unsigned long long> &)>::operator()(v21 + 232, v21);
    }

    goto LABEL_33;
  }

  v6 = v21;
  if (v21)
  {
    if (*(v21 + 192))
    {
      v6 = v21 + 40;
    }

    else
    {
      v6 = 0;
    }
  }

  atomic_fetch_add((v6 + 136), 1u);
  if (readSynchronizer::try_copy(reader_ptr, &v21, &v23, &v2->__vftable))
  {
    goto LABEL_33;
  }

  v7 = *(v21 + 192) ? v21 + 40 : 0;
  __lk.__m_ = (v7 + 72);
  __lk.__owns_ = 1;
  std::mutex::lock((v7 + 72));
  v9 = readSynchronizer::try_copy(v8, &v21, &v23, &v2->__vftable);
  v10 = v9;
  if (v9)
  {
    v2 = v23;
  }

  else
  {
    if (*(v21 + 192))
    {
      v13 = v21 + 40;
    }

    else
    {
      v13 = 0;
    }

    std::condition_variable::wait((v13 + 24), &__lk);
    if (*(v21 + 192))
    {
      v14 = v21 + 40;
    }

    else
    {
      v14 = 0;
    }

    v15 = atomic_load((v14 + 144));
    v23 = v15;
    if (v15 >= 1)
    {
      v16 = v2->__vftable;
      if (*(v21 + 192))
      {
        v17 = v21 + 40;
      }

      else
      {
        v17 = 0;
      }

      v18 = *v17;
      v2 = *(v17 + 8);
      if (v2)
      {
        atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
        memcpy(v16, v18, v15);
        std::__shared_weak_count::__release_shared[abi:ne200100](v2);
      }

      else
      {
        memcpy(v16, v18, v15);
      }
    }
  }

  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }

  if ((v10 & 1) == 0)
  {
LABEL_33:
    v2 = v23;
  }

  ref::tagged_ptr<CurrentReader,unsigned long long>::reset(&v21);
  return v2;
}

void sub_248F7E018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ref::tagged_ptr<CurrentReader,unsigned long long>::reset(va);
  _Unwind_Resume(a1);
}

void readSynchronizer::~readSynchronizer(atomic_ullong *this)
{
  readSynchronizer::~readSynchronizer(this);

  JUMPOUT(0x24C1ED730);
}

{
  *this = &unk_285C04B08;
  ref::tagged_ptr<CurrentReader,unsigned long long>::reset(this + 9);
  v2 = this[8];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[6];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *this = &unk_285BD4DB0;
  v4 = this[4];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = this[2];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void *std::vector<ref::tagged_weak_ptr<CurrentReader,unsigned long long>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<ref::tagged_weak_ptr<di_asif::details::map_element,unsigned long long>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_248F7E128(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *ref::tagged_ptr<CurrentReader,unsigned long long>::tagged_ptr(unint64_t *a1, unint64_t *a2)
{
  *a1 = 0;
  v3 = atomic_load(a2);
  if (v3)
  {
    v4 = atomic_load(v3);
    if (!v4)
    {
LABEL_12:
      v3 = 0;
      goto LABEL_13;
    }

    v5 = v4;
    while (1)
    {
      atomic_compare_exchange_strong(v3, &v5, v4 + 1);
      if (v5 == v4)
      {
        break;
      }

      v4 = v5;
      if (!v5)
      {
        goto LABEL_12;
      }
    }

    v6 = v3[37];
    if (v6)
    {
      v3[38] = atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
    }

    if (!ref::details::ctrl_blk<CurrentReader,unsigned long long>::wait_for_ready(v3))
    {
      if (atomic_fetch_add(v3, 0xFFFFFFFFFFFFFFFFLL) == 1)
      {
        v7 = v3[4];
        v3[4] = -1;
        ref::details::ctrl_blk<CurrentReader,unsigned long long>::reset_val(v3, v7, 1u);
      }

      goto LABEL_12;
    }
  }

LABEL_13:
  atomic_store(v3, a1);
  return a1;
}

BOOL ref::details::ctrl_blk<CurrentReader,unsigned long long>::wait_for_ready(uint64_t a1)
{
  v2 = (a1 + 24);
  v3 = atomic_load((a1 + 24));
  if (v3 == 2)
  {
    v4 = atomic_load(a1);
    return v4 > 1;
  }

  else
  {
    atomic_fetch_add((a1 + 8), 1uLL);
    v6 = atomic_load(v2);
    if (v6 != 2 && (*(a1 + 312) & 1) == 0)
    {
      v10 = 1;
      v9 = &v10;
      v14 = 5;
      v12[0] = (a1 + 24);
      v12[1] = &v10;
      v13 = 5;
      v11[0] = a1 + 24;
      v11[1] = &v14;
      v11[2] = &v9;
      std::__libcpp_thread_poll_with_backoff[abi:ne200100]<void std::__atomic_wait_unless[abi:ne200100]<std::__atomic_base<ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state,false>,void std::__atomic_wait[abi:ne200100]<std::__atomic_base<ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state,false> const,ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state>(std::__atomic_base<ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state,false> const &,ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state,std::memory_order)::{lambda(ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state const&)#1}>(std::__atomic_base<ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state,false> const const&,std::memory_order,ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state&&)::{lambda(void)#1},std::__atomic_wait_backoff_impl<std::__atomic_base<ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state,false>,void std::__atomic_wait[abi:ne200100]<std::__atomic_base<ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state,false> const,ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state>(std::__atomic_base<ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state,false> const &,ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state,std::memory_order)::{lambda(ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state const&)#1}> &>(v11, v12, 0);
    }

    atomic_fetch_add((a1 + 8), 0xFFFFFFFFFFFFFFFFLL);
    v7 = atomic_load(a1);
    if (v7 < 2)
    {
      return 0;
    }

    else
    {
      v8 = atomic_load(v2);
      return v8 == 2;
    }
  }
}

uint64_t ref::details::ctrl_blk<CurrentReader,unsigned long long>::reset_val(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if ((*(a1 + 312) & 1) == 0 && (v6 = atomic_load((a1 + 24)), v6 == 2) && *(a1 + 192) == 1 && (v7 = *(a1 + 288)) != 0)
  {
    v8 = (*(*v7 + 48))(v7, a1 + 40);
    v9 = (a3 >> 1) & 2;
    if (v8)
    {
      if ((a3 & 2) == 0)
      {
        if (a3)
        {
          std::function<void ()(ref::details::ctrl_blk<CurrentReader,unsigned long long> *,unsigned long long,diskimage_uio::option_set_ns::option_set<ref::details::deleter_options>)>::operator()(a1 + 200, a1, a2, v9 | 1);
        }

        return 0;
      }

      *&v11 = "ref::details::ctrl_blk<CurrentReader, unsigned long long>::reset_val(tag_t, details::reset_val_option_set) [T = CurrentReader, tag_t = unsigned long long]";
      *(&v11 + 1) = 68;
      v12 = 16;
      di_log::logger<di_log::log_printer<210ul>>::logger(v13, &v11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "Got error when trying to close ", 31);
      MEMORY[0x24C1ED3E0](&v14, a2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, " with ret ", 10);
      MEMORY[0x24C1ED390](&v14, v8);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, ", Force closing.", 16);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<210ul>>::~logger_buf(v13);
      MEMORY[0x24C1ED6A0](&v15);
    }
  }

  else
  {
    v9 = (a3 >> 1) & 2;
  }

  atomic_store(0, (a1 + 24));
  if (*(a1 + 192) == 1)
  {
    CurrentReader::~CurrentReader((a1 + 40));
    *(a1 + 192) = 0;
  }

  std::function<void ()(ref::details::ctrl_blk<CurrentReader,unsigned long long> *,unsigned long long,diskimage_uio::option_set_ns::option_set<ref::details::deleter_options>)>::operator()(a1 + 200, a1, a2, v9);
  std::__cxx_atomic_notify_all((a1 + 24));
  return 1;
}

void sub_248F7E490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<210ul>>::~logger(va);
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(ref::details::ctrl_blk<CurrentReader,unsigned long long> *,unsigned long long,diskimage_uio::option_set_ns::option_set<ref::details::deleter_options>)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = a4;
  v6 = a3;
  v7 = a2;
  v4 = *(a1 + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v4 + 48))(v4, &v7, &v6, &v8);
}

void CurrentReader::~CurrentReader(CurrentReader *this)
{
  std::mutex::~mutex((this + 72));
  std::condition_variable::~condition_variable((this + 24));
  v2 = *(this + 1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

atomic_ullong *ref::tagged_ptr<CurrentReader,unsigned long long>::reset(atomic_ullong *a1)
{
  result = atomic_exchange(a1, 0);
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFFFFFFFFFFLL) == 1)
    {
      v2 = result[4];
      result[4] = -1;
      return ref::details::ctrl_blk<CurrentReader,unsigned long long>::reset_val(result, v2, 1u);
    }
  }

  return result;
}

void std::__shared_ptr_emplace<ref::Allocator<CurrentReader,unsigned long long>>::__shared_ptr_emplace[abi:ne200100]<unsigned int,int,std::allocator<ref::Allocator<CurrentReader,unsigned long long>>,0>(void *a1, unsigned int *a2, int *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285C04BF8;
  std::construct_at[abi:ne200100]<ref::Allocator<CurrentReader,unsigned long long>,unsigned int,int,ref::Allocator<CurrentReader,unsigned long long>*>((a1 + 3), a2, a3);
}

void std::__shared_ptr_emplace<ref::Allocator<CurrentReader,unsigned long long>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285C04BF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

void std::construct_at[abi:ne200100]<ref::Allocator<CurrentReader,unsigned long long>,unsigned int,int,ref::Allocator<CurrentReader,unsigned long long>*>(uint64_t a1, unsigned int *a2, int *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *a3;
  v6 = 0;
  ref::Allocator<CurrentReader,unsigned long long>::Allocator(a1, v3, v4, v5);
}

void sub_248F7E7C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<int ()(CurrentReader &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ref::Allocator<CurrentReader,unsigned long long>::Allocator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = ref::Allocator<CurrentReader,unsigned long long>::error_ctrl_blk_t::error_ctrl_blk_t(a1);
  *(v8 + 424) = a2;
  *(v8 + 432) = a3;
  *(v8 + 440) = 0u;
  *(v8 + 456) = 0u;
  *(v8 + 472) = 0u;
  *(v8 + 488) = 850045863;
  *(v8 + 496) = 0u;
  *(v8 + 512) = 0u;
  *(v8 + 528) = 0u;
  *(v8 + 544) = 0;
  *(v8 + 560) = 0u;
  *(v8 + 576) = 0u;
  *(v8 + 592) = 850045863;
  *(v8 + 600) = 0u;
  *(v8 + 616) = 0u;
  *(v8 + 632) = 0u;
  *(v8 + 648) = 0;
  *(v8 + 656) = 1018212795;
  *(v8 + 696) = 0;
  *(v8 + 664) = 0u;
  *(v8 + 680) = 0u;
  *(v8 + 704) = 1;
  gcd::gcd_queue::gcd_queue(v8 + 712, "dealloc_queue", 2);
  *(a1 + 728) = 0u;
  *(a1 + 720) = a1 + 728;
  *(a1 + 744) = 850045863;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0;
  *(a1 + 808) = 1018212795;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0;
  *(a1 + 856) = 850045863;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 912) = 0;
  *(a1 + 920) = a1 + 920;
  *(a1 + 928) = a1 + 920;
  *(a1 + 936) = 0;
  std::__function::__value_func<int ()(CurrentReader &)>::__value_func[abi:ne200100](a1 + 944, a4);
  ref::details::tagged_allocated_type<CurrentReader,unsigned long long>::tagged_allocated_type(a1 + 976, a1);
  *(a1 + 1320) = &unk_285C04EF8;
  *(a1 + 1328) = a1;
  *(a1 + 1344) = a1 + 1320;
  *(a1 + 1352) = &unk_285C04F88;
  *(a1 + 1360) = a1;
  *(a1 + 1376) = a1 + 1352;
  operator new[]();
}

void sub_248F7EA04(_Unwind_Exception *a1)
{
  std::__function::__value_func<int ()(CurrentReader &)>::~__value_func[abi:ne200100](v1 + 944);
  std::__list_imp<std::pair<ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,unsigned long long>>::clear(v3);
  std::mutex::~mutex((v1 + 856));
  std::condition_variable::~condition_variable((v1 + 808));
  std::mutex::~mutex((v1 + 744));
  std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>>>::destroy(v1 + 720, *v4);
  gcd::gcd_group::~gcd_group((v1 + 712));
  std::condition_variable::~condition_variable((v1 + 656));
  std::mutex::~mutex((v1 + 592));
  std::mutex::~mutex((v1 + 488));
  std::deque<std::atomic<DiskImage::Context *>>::~deque[abi:ne200100](v2);
  ref::Allocator<CurrentReader,unsigned long long>::error_ctrl_blk_t::~error_ctrl_blk_t(v1);
  _Unwind_Resume(a1);
}

uint64_t std::deque<ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,std::allocator<ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *>>::emplace_back<ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *>(uint64_t a1, void *a2)
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
    std::deque<ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,std::allocator<ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *>>::__add_back_capacity(a1);
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

uint64_t ref::Allocator<CurrentReader,unsigned long long>::error_ctrl_blk_t::error_ctrl_blk_t(uint64_t a1)
{
  *a1 = &unk_285C04C48;
  *(a1 + 24) = a1;
  *(a1 + 32) = &unk_285C04CD8;
  *(a1 + 56) = a1 + 32;
  *(a1 + 64) = &unk_285C04D68;
  *(a1 + 88) = a1 + 64;
  *(a1 + 96) = 0;
  ref::details::ctrl_blk<CurrentReader,unsigned long long>::ctrl_blk(a1 + 104, a1, a1 + 32, a1 + 64, a1 + 96);
  ref::details::ctrl_blk<CurrentReader,unsigned long long>::init(a1 + 104, -1);
  atomic_store(0, (a1 + 128));
  *(a1 + 416) = 1;
  return a1;
}

void sub_248F7EC4C(_Unwind_Exception *a1)
{
  std::__function::__value_func<int ()(CurrentReader &)>::~__value_func[abi:ne200100](v3);
  std::__function::__value_func<void ()(ref::details::ctrl_blk<CurrentReader,unsigned long long> *,ref::tagged_ptr<CurrentReader,unsigned long long> &)>::~__value_func[abi:ne200100](v2);
  std::__function::__value_func<void ()(ref::details::ctrl_blk<CurrentReader,unsigned long long> *,unsigned long long,diskimage_uio::option_set_ns::option_set<ref::details::deleter_options>)>::~__value_func[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void ref::details::ctrl_blk<CurrentReader,unsigned long long>::init(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = a2;
  *(a1 + 312) = 0;
  atomic_store(1uLL, a1);
  atomic_store(0, (a1 + 8));
  atomic_store(0, (a1 + 16));
  if (*(a1 + 192) == 1)
  {
    CurrentReader::~CurrentReader((a1 + 40));
    *(a1 + 192) = 0;
  }

  v3 = *(a1 + 296);
  if (v3)
  {
    *(a1 + 304) = atomic_fetch_add_explicit(v3, 1uLL, memory_order_relaxed);
  }

  atomic_store(1u, (a1 + 24));
  __dmb(0xBu);
}

uint64_t std::__function::__func<ref::Allocator<CurrentReader,unsigned long long>::error_ctrl_blk_t::{lambda(ref::details::ctrl_blk<CurrentReader,unsigned long long> *,unsigned long long,diskimage_uio::option_set_ns::option_set<ref::details::deleter_options>)#1},std::allocator<ref::Allocator<CurrentReader,unsigned long long>::error_ctrl_blk_t::{lambda(ref::details::ctrl_blk<CurrentReader,unsigned long long> *,unsigned long long,diskimage_uio::option_set_ns::option_set<ref::details::deleter_options>)#1}>,void ()(ref::details::ctrl_blk<CurrentReader,unsigned long long> *,unsigned long long,diskimage_uio::option_set_ns::option_set<ref::details::deleter_options>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<ref::Allocator<CurrentReader,unsigned long long>::error_ctrl_blk_t::{lambda(ref::details::ctrl_blk<CurrentReader,unsigned long long> *,ref::tagged_ptr<CurrentReader,unsigned long long> &)#1},std::allocator<ref::Allocator<CurrentReader,unsigned long long>::error_ctrl_blk_t::{lambda(ref::details::ctrl_blk<CurrentReader,unsigned long long> *,ref::tagged_ptr<CurrentReader,unsigned long long> &)#1}>,void ()(ref::details::ctrl_blk<CurrentReader,unsigned long long> *,ref::tagged_ptr<CurrentReader,unsigned long long> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<ref::Allocator<CurrentReader,unsigned long long>::error_ctrl_blk_t::{lambda(CurrentReader&)#1},std::allocator<ref::Allocator<CurrentReader,unsigned long long>::error_ctrl_blk_t::{lambda(CurrentReader&)#1}>,int ()(CurrentReader&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t ref::details::ctrl_blk<CurrentReader,unsigned long long>::ctrl_blk(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = -1;
  *(a1 + 40) = 0;
  *(a1 + 192) = 0;
  std::__function::__value_func<void ()(ref::details::ctrl_blk<CurrentReader,unsigned long long> *,unsigned long long,diskimage_uio::option_set_ns::option_set<ref::details::deleter_options>)>::__value_func[abi:ne200100](a1 + 200, a2);
  std::__function::__value_func<void ()(ref::details::ctrl_blk<CurrentReader,unsigned long long> *,ref::tagged_ptr<CurrentReader,unsigned long long> &)>::__value_func[abi:ne200100](a1 + 232, a3);
  std::__function::__value_func<int ()(CurrentReader &)>::__value_func[abi:ne200100](a1 + 264, a4);
  *(a1 + 296) = a5;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  return a1;
}

void sub_248F7F000(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(ref::details::ctrl_blk<CurrentReader,unsigned long long> *,ref::tagged_ptr<CurrentReader,unsigned long long> &)>::~__value_func[abi:ne200100](v1 + 232);
  std::__function::__value_func<void ()(ref::details::ctrl_blk<CurrentReader,unsigned long long> *,unsigned long long,diskimage_uio::option_set_ns::option_set<ref::details::deleter_options>)>::~__value_func[abi:ne200100](v1 + 200);
  if (*(v1 + 192) == 1)
  {
    CurrentReader::~CurrentReader(v2);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(ref::details::ctrl_blk<CurrentReader,unsigned long long> *,unsigned long long,diskimage_uio::option_set_ns::option_set<ref::details::deleter_options>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(ref::details::ctrl_blk<CurrentReader,unsigned long long> *,ref::tagged_ptr<CurrentReader,unsigned long long> &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t ref::details::ctrl_blk<CurrentReader,unsigned long long>::~ctrl_blk(uint64_t a1)
{
  std::__function::__value_func<int ()(CurrentReader &)>::~__value_func[abi:ne200100](a1 + 264);
  std::__function::__value_func<void ()(ref::details::ctrl_blk<CurrentReader,unsigned long long> *,ref::tagged_ptr<CurrentReader,unsigned long long> &)>::~__value_func[abi:ne200100](a1 + 232);
  std::__function::__value_func<void ()(ref::details::ctrl_blk<CurrentReader,unsigned long long> *,unsigned long long,diskimage_uio::option_set_ns::option_set<ref::details::deleter_options>)>::~__value_func[abi:ne200100](a1 + 200);
  if (*(a1 + 192) == 1)
  {
    CurrentReader::~CurrentReader((a1 + 40));
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ref::details::ctrl_blk<CurrentReader,unsigned long long> *,ref::tagged_ptr<CurrentReader,unsigned long long> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(ref::details::ctrl_blk<CurrentReader,unsigned long long> *,unsigned long long,diskimage_uio::option_set_ns::option_set<ref::details::deleter_options>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<int ()(CurrentReader &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t ref::details::tagged_allocated_type<CurrentReader,unsigned long long>::tagged_allocated_type(uint64_t a1, uint64_t a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  *a1 = a2;
  v6[0] = &unk_285C04DF8;
  v6[1] = a1;
  v6[3] = v6;
  v5[0] = &unk_285C04E78;
  v5[1] = a1;
  v5[3] = v5;
  ref::details::ctrl_blk<CurrentReader,unsigned long long>::ctrl_blk(a1 + 8, v6, v5, a2 + 944, a2 + 568);
  std::__function::__value_func<void ()(ref::details::ctrl_blk<CurrentReader,unsigned long long> *,ref::tagged_ptr<CurrentReader,unsigned long long> &)>::~__value_func[abi:ne200100](v5);
  std::__function::__value_func<void ()(ref::details::ctrl_blk<CurrentReader,unsigned long long> *,unsigned long long,diskimage_uio::option_set_ns::option_set<ref::details::deleter_options>)>::~__value_func[abi:ne200100](v6);
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_248F7F430(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<void ()(ref::details::ctrl_blk<CurrentReader,unsigned long long> *,ref::tagged_ptr<CurrentReader,unsigned long long> &)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(ref::details::ctrl_blk<CurrentReader,unsigned long long> *,unsigned long long,diskimage_uio::option_set_ns::option_set<ref::details::deleter_options>)>::~__value_func[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ref::details::tagged_allocated_type<CurrentReader,unsigned long long>::tagged_allocated_type(ref::Allocator<CurrentReader,unsigned long long> &)::{lambda(ref::details::ctrl_blk<CurrentReader,unsigned long long> *,unsigned long long,diskimage_uio::option_set_ns::option_set<ref::details::deleter_options>)#1},std::allocator<ref::details::tagged_allocated_type<CurrentReader,unsigned long long>::tagged_allocated_type(ref::Allocator<CurrentReader,unsigned long long> &)::{lambda(ref::details::ctrl_blk<CurrentReader,unsigned long long> *,unsigned long long,diskimage_uio::option_set_ns::option_set<ref::details::deleter_options>)#1}>,void ()(ref::details::ctrl_blk<CurrentReader,unsigned long long> *,unsigned long long,diskimage_uio::option_set_ns::option_set<ref::details::deleter_options>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285C04DF8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<ref::details::tagged_allocated_type<CurrentReader,unsigned long long>::tagged_allocated_type(ref::Allocator<CurrentReader,unsigned long long> &)::{lambda(ref::details::ctrl_blk<CurrentReader,unsigned long long> *,unsigned long long,diskimage_uio::option_set_ns::option_set<ref::details::deleter_options>)#1},std::allocator<ref::details::tagged_allocated_type<CurrentReader,unsigned long long>::tagged_allocated_type(ref::Allocator<CurrentReader,unsigned long long> &)::{lambda(ref::details::ctrl_blk<CurrentReader,unsigned long long> *,unsigned long long,diskimage_uio::option_set_ns::option_set<ref::details::deleter_options>)#1}>,void ()(ref::details::ctrl_blk<CurrentReader,unsigned long long> *,unsigned long long,diskimage_uio::option_set_ns::option_set<ref::details::deleter_options>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::function<void ()(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,unsigned long long,diskimage_uio::option_set_ns::option_set<ref::details::deleter_options>)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = a4;
  v6 = a3;
  v7 = a2;
  v4 = *(a1 + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v4 + 48))(v4, &v7, &v6, &v8);
}

uint64_t std::__function::__func<ref::details::tagged_allocated_type<CurrentReader,unsigned long long>::tagged_allocated_type(ref::Allocator<CurrentReader,unsigned long long> &)::{lambda(ref::details::ctrl_blk<CurrentReader,unsigned long long> *,ref::tagged_ptr<CurrentReader,unsigned long long> &)#1},std::allocator<ref::details::tagged_allocated_type<CurrentReader,unsigned long long>::tagged_allocated_type(ref::Allocator<CurrentReader,unsigned long long> &)::{lambda(ref::details::ctrl_blk<CurrentReader,unsigned long long> *,ref::tagged_ptr<CurrentReader,unsigned long long> &)#1}>,void ()(ref::details::ctrl_blk<CurrentReader,unsigned long long> *,ref::tagged_ptr<CurrentReader,unsigned long long> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285C04E78;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<ref::details::tagged_allocated_type<CurrentReader,unsigned long long>::tagged_allocated_type(ref::Allocator<CurrentReader,unsigned long long> &)::{lambda(ref::details::ctrl_blk<CurrentReader,unsigned long long> *,ref::tagged_ptr<CurrentReader,unsigned long long> &)#1},std::allocator<ref::details::tagged_allocated_type<CurrentReader,unsigned long long>::tagged_allocated_type(ref::Allocator<CurrentReader,unsigned long long> &)::{lambda(ref::details::ctrl_blk<CurrentReader,unsigned long long> *,ref::tagged_ptr<CurrentReader,unsigned long long> &)#1}>,void ()(ref::details::ctrl_blk<CurrentReader,unsigned long long> *,ref::tagged_ptr<CurrentReader,unsigned long long> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::function<void ()(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,ref::tagged_ptr<CurrentReader,unsigned long long> &)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__function::__func<ref::Allocator<CurrentReader,unsigned long long>::{lambda(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,unsigned long long,diskimage_uio::option_set_ns::option_set<ref::details::deleter_options>)#1},std::allocator<ref::Allocator<CurrentReader,unsigned long long>::{lambda(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,unsigned long long,diskimage_uio::option_set_ns::option_set<ref::details::deleter_options>)#1}>,void ()(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,unsigned long long,diskimage_uio::option_set_ns::option_set<ref::details::deleter_options>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285C04EF8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<ref::Allocator<CurrentReader,unsigned long long>::{lambda(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,unsigned long long,diskimage_uio::option_set_ns::option_set<ref::details::deleter_options>)#1},std::allocator<ref::Allocator<CurrentReader,unsigned long long>::{lambda(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,unsigned long long,diskimage_uio::option_set_ns::option_set<ref::details::deleter_options>)#1}>,void ()(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,unsigned long long,diskimage_uio::option_set_ns::option_set<ref::details::deleter_options>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ref::Allocator<CurrentReader,unsigned long long>::deleter(uint64_t a1, unint64_t a2, unint64_t a3, char a4)
{
  if ((*(a2 + 336) & 1) == 0)
  {
    if ((a4 & 3) == 1)
    {
      std::mutex::lock((a1 + 856));
      operator new();
    }

    ref::Allocator<CurrentReader,unsigned long long>::delete_tag(a1, a3);
    ref::tagged_ptr<CurrentReader,unsigned long long>::reset((a2 + 328));
    if ((atomic_fetch_or((a2 + 336), 1u) & 2) == 0)
    {
      ref::Allocator<CurrentReader,unsigned long long>::add_to_free_pool(a1, a2);
    }

    if (atomic_fetch_add((a1 + 576), 0xFFFFFFFFFFFFFFFFLL) == 1)
    {
      if (atomic_load((a1 + 584)))
      {
        std::mutex::lock((a1 + 592));
        if (atomic_load((a1 + 584)))
        {
          std::condition_variable::notify_all((a1 + 656));
        }

        std::mutex::unlock((a1 + 592));
      }
    }

    v9 = (a1 + 560);
    if (atomic_load(v9))
    {
      tagged_ptr_lock = ref::details::_get_tagged_ptr_lock(a2, v6);
      std::mutex::lock(tagged_ptr_lock);
      if (atomic_load(v9))
      {
        tagged_ptr_cond = ref::details::_get_tagged_ptr_cond(a2, v12);
        std::condition_variable::notify_all(tagged_ptr_cond);
      }

      std::mutex::unlock(tagged_ptr_lock);
    }
  }
}

void ref::Allocator<CurrentReader,unsigned long long>::delete_tag(uint64_t a1, unint64_t a2)
{
  v3 = a2;
  std::mutex::lock((a1 + 744));
  std::__tree<std::__value_type<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *>>>::__erase_unique<unsigned long long>((a1 + 720), &v3);
  std::condition_variable::notify_all((a1 + 808));
  std::mutex::unlock((a1 + 744));
}

void ref::Allocator<CurrentReader,unsigned long long>::add_to_free_pool(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  std::mutex::lock((a1 + 488));
  std::deque<ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,std::allocator<ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *>>::push_back((a1 + 440), &v3);
  std::mutex::unlock((a1 + 488));
}

void *std::deque<ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,std::allocator<ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *>>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = std::deque<ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,std::allocator<ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *>>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *std::deque<ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,std::allocator<ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *>>::__add_back_capacity(void *a1)
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
    std::allocator<di_async_sub_transaction_t **>::allocate_at_least[abi:ne200100](a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<di_async_sub_transaction_t **>::emplace_back<di_async_sub_transaction_t **&>(a1, &v10);
}

void sub_248F7FC74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ref::Allocator<CurrentReader,unsigned long long>::{lambda(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,ref::tagged_ptr<CurrentReader,unsigned long long> &)#1},std::allocator<ref::Allocator<CurrentReader,unsigned long long>::{lambda(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,ref::tagged_ptr<CurrentReader,unsigned long long> &)#1}>,void ()(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,ref::tagged_ptr<CurrentReader,unsigned long long> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285C04F88;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<ref::Allocator<CurrentReader,unsigned long long>::{lambda(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,ref::tagged_ptr<CurrentReader,unsigned long long> &)#1},std::allocator<ref::Allocator<CurrentReader,unsigned long long>::{lambda(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,ref::tagged_ptr<CurrentReader,unsigned long long> &)#1}>,void ()(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,ref::tagged_ptr<CurrentReader,unsigned long long> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ref::Allocator<CurrentReader,unsigned long long>::deallocate(uint64_t a1, unint64_t a2, atomic_ullong *a3)
{
  v3 = *(a1 + 424);
  if (v3 >= 1)
  {
    v6 = 0;
    v7 = *(a1 + 552);
    v8 = &v7[v3];
    while (!v7 || *v7 != a2)
    {
      ++v7;
      v6 -= 8;
      if (v7 >= v8)
      {
        return;
      }
    }

    if (v6 <= 0)
    {
      v9 = a2;
      atomic_compare_exchange_strong(v7, &v9, 0);
      if (v9 == a2)
      {
        ref::Allocator<CurrentReader,unsigned long long>::drop_elem(a1, a2, 1uLL, a3);

        ref::Allocator<CurrentReader,unsigned long long>::add_to_free_pool(a1, a2);
      }
    }
  }
}

uint64_t ref::Allocator<CurrentReader,unsigned long long>::drop_elem(uint64_t a1, unint64_t a2, unint64_t a3, atomic_ullong *a4)
{
  v38 = *MEMORY[0x277D85DE8];
  atomic_fetch_add((a1 + 576), 1uLL);
  if (a3)
  {
    atomic_fetch_add((a1 + 560), 1uLL);
  }

  atomic_fetch_or((a2 + 336), 2u);
  ref::tagged_ptr<CurrentReader,unsigned long long>::reset((a2 + 328));
  if (a4)
  {
    ref::tagged_ptr<CurrentReader,unsigned long long>::reset(a4);
  }

  if (a3)
  {
    v8 = atomic_load((a2 + 336));
    if ((v8 & 4) == 0)
    {
      v9 = (a3 & 0x100) >> 8;
      do
      {
        if (*(a2 + 336))
        {
          break;
        }

        if (v9)
        {
          std::mutex::lock((a1 + 488));
          v10 = *(a1 + 480);
          std::mutex::unlock((a1 + 488));
          if (v10)
          {
            break;
          }
        }

        v36[0] = 0;
        v37 = 0;
        v12 = ref::Allocator<CurrentReader,unsigned long long>::run_failed_dtors_list(a1, (a3 >> 16) & 1, v36);
        if (v37 == 1)
        {
          std::__function::__value_func<BOOL ()(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,unsigned long long)>::~__value_func[abi:ne200100](v36);
        }

        if (v12 == -1)
        {
          v32.__m_ = ref::details::_get_tagged_ptr_lock(a2, v11);
          v32.__owns_ = 1;
          std::mutex::lock(v32.__m_);
          tagged_ptr_cond = ref::details::_get_tagged_ptr_cond(a2, v20);
          v22.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
          v30 = a1;
          v31 = v22.__d_.__rep_ + 200000;
          v29.__m_ = a2;
          v29.__owns_ = (a3 & 0x100) >> 8;
          *(&v29.__owns_ + 1) = *v33;
          *(&v29.__owns_ + 1) = *&v33[3];
          std::condition_variable::wait_until<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>,ref::Allocator<CurrentReader,unsigned long long>::drop_elem(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,ref::Allocator<CurrentReader,unsigned long long>::drop_elem_options,ref::tagged_ptr<CurrentReader,unsigned long long> *)::{lambda(void)#1}>(tagged_ptr_cond, &v32, &v31, &v29);
          if (!v32.__owns_)
          {
            goto LABEL_25;
          }

          m = v32.__m_;
        }

        else
        {
          v29.__m_ = ref::details::_get_tagged_ptr_lock(a2, v11);
          v29.__owns_ = 1;
          std::mutex::lock(v29.__m_);
          v14 = ref::details::_get_tagged_ptr_cond(a2, v13);
          v15 = atomic_load((a2 + 336));
          if ((v15 & 4) == 0)
          {
            v16 = v14;
            do
            {
              if (*(a2 + 336))
              {
                break;
              }

              if (v9)
              {
                std::mutex::lock((a1 + 488));
                v17 = *(a1 + 480);
                std::mutex::unlock((a1 + 488));
                if (v17)
                {
                  break;
                }
              }

              std::condition_variable::wait(v16, &v29);
              v18 = atomic_load((a2 + 336));
            }

            while ((v18 & 4) == 0);
          }

          if (!v29.__owns_)
          {
            goto LABEL_25;
          }

          m = v29.__m_;
        }

        std::mutex::unlock(m);
LABEL_25:
        v23 = *(a2 + 336);
        if (a3 & 0x100) == 0 || (v23)
        {
          if (v23)
          {
            goto LABEL_35;
          }
        }

        else if (*(a1 + 480))
        {
          goto LABEL_35;
        }

        v24 = atomic_load((a2 + 336));
      }

      while ((v24 & 4) == 0);
    }
  }

  v25 = atomic_load((a2 + 336));
  if ((v25 & 4) != 0 && (a3 & 0x10000) != 0)
  {
    v34[0] = &unk_285C05008;
    v34[1] = a2;
    v34[3] = v34;
    v35 = 1;
    ref::Allocator<CurrentReader,unsigned long long>::run_failed_dtors_list(a1, 1, v34);
    if (v35 == 1)
    {
      std::__function::__value_func<BOOL ()(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,unsigned long long)>::~__value_func[abi:ne200100](v34);
    }
  }

LABEL_35:
  if (a3)
  {
    atomic_fetch_add((a1 + 560), 0xFFFFFFFFFFFFFFFFLL);
  }

  v26 = atomic_fetch_and((a2 + 336), 0xFFFFFFFD);
  v27 = *MEMORY[0x277D85DE8];
  return v26 & 1;
}

void sub_248F80134(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, std::mutex *a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a20 == 1)
  {
    std::__function::__value_func<BOOL ()(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,unsigned long long)>::~__value_func[abi:ne200100](&a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ref::Allocator<CurrentReader,unsigned long long>::run_failed_dtors_list(uint64_t a1, int a2, uint64_t a3)
{
  if (!*(a1 + 936))
  {
    return 0;
  }

  std::mutex::lock((a1 + 856));
  if (*(a1 + 936))
  {
    v6 = *(a1 + 928);
    if (v6 == (a1 + 920))
    {
      v8 = 1;
    }

    else
    {
      if (a2)
      {
        v7 = 6;
      }

      else
      {
        v7 = 4;
      }

      v8 = 1;
      do
      {
        v9 = v6[2];
        if ((ref::details::ctrl_blk<CurrentReader,unsigned long long>::reset_val(v9 + 8, v6[3], v7) & 1) != 0 || a2 && (*(a3 + 32) != 1 || std::function<BOOL ()(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,unsigned long long)>::operator()(a3, v9, v6[3])))
        {
          tagged_ptr_lock = ref::details::_get_tagged_ptr_lock(v9, v10);
          std::mutex::lock(tagged_ptr_lock);
          atomic_fetch_and((v9 + 336), 0xFFFFFFFB);
          std::mutex::unlock(tagged_ptr_lock);
          v12 = *v6;
          v13 = v6[1];
          *(v12 + 8) = v13;
          *v13 = v12;
          --*(a1 + 936);
          operator delete(v6);
          v6 = v13;
        }

        else
        {
          if (*(a3 + 32) != 1 || std::function<BOOL ()(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,unsigned long long)>::operator()(a3, v9, v6[3]))
          {
            v8 = 0xFFFFFFFFLL;
          }

          v6 = v6[1];
        }
      }

      while (v6 != (a1 + 920));
    }
  }

  else
  {
    v8 = 0;
  }

  std::mutex::unlock((a1 + 856));
  return v8;
}

uint64_t std::condition_variable::wait_until<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>,ref::Allocator<CurrentReader,unsigned long long>::drop_elem(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,ref::Allocator<CurrentReader,unsigned long long>::drop_elem_options,ref::tagged_ptr<CurrentReader,unsigned long long> *)::{lambda(void)#1}>(std::condition_variable *a1, std::unique_lock<std::mutex> *a2, uint64_t *a3, uint64_t a4)
{
  do
  {
    v8 = *(a4 + 16);
    v9 = atomic_load((*a4 + 336));
    if ((v9 & 4) != 0)
    {
      return 1;
    }

    if (*(*a4 + 336))
    {
      return 1;
    }

    if (*(a4 + 8) == 1)
    {
      std::mutex::lock((v8 + 488));
      v10 = *(v8 + 480);
      std::mutex::unlock((v8 + 488));
      if (v10)
      {
        return 1;
      }
    }

    v11.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v12 = *a3;
    if (*a3 <= v11.__d_.__rep_)
    {
      break;
    }

    if (!v12)
    {
      v13.__d_.__rep_ = 0;
      goto LABEL_14;
    }

    if (v12 < 1)
    {
      if (v12 < 0xFFDF3B645A1CAC09)
      {
        v13.__d_.__rep_ = 0x8000000000000000;
        goto LABEL_14;
      }
    }

    else if (v12 > 0x20C49BA5E353F7)
    {
      v13.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_14;
    }

    v13.__d_.__rep_ = 1000 * v12;
LABEL_14:
    std::condition_variable::__do_timed_wait(a1, a2, v13);
  }

  while (std::chrono::system_clock::now().__d_.__rep_ < *a3);
  v14 = *(a4 + 16);
  v15 = atomic_load((*a4 + 336));
  if (v15 & 4) != 0 || (*(*a4 + 336))
  {
    return 1;
  }

  if (*(a4 + 8) != 1)
  {
    return 0;
  }

  std::mutex::lock((v14 + 488));
  v16 = *(v14 + 480) != 0;
  std::mutex::unlock((v14 + 488));
  return v16;
}

uint64_t std::function<BOOL ()(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,unsigned long long)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t std::__function::__value_func<BOOL ()(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,unsigned long long)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<ref::Allocator<CurrentReader,unsigned long long>::drop_elem(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,ref::Allocator<CurrentReader,unsigned long long>::drop_elem_options,ref::tagged_ptr<CurrentReader,unsigned long long> *)::{lambda(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,unsigned long long)#1},std::allocator<ref::Allocator<CurrentReader,unsigned long long>::drop_elem(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,ref::Allocator<CurrentReader,unsigned long long>::drop_elem_options,ref::tagged_ptr<CurrentReader,unsigned long long> *)::{lambda(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,unsigned long long)#1}>,BOOL ()(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,unsigned long long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285C05008;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<ref::Allocator<CurrentReader,unsigned long long>::drop_elem(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,ref::Allocator<CurrentReader,unsigned long long>::drop_elem_options,ref::tagged_ptr<CurrentReader,unsigned long long> *)::{lambda(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,unsigned long long)#1},std::allocator<ref::Allocator<CurrentReader,unsigned long long>::drop_elem(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,ref::Allocator<CurrentReader,unsigned long long>::drop_elem_options,ref::tagged_ptr<CurrentReader,unsigned long long> *)::{lambda(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,unsigned long long)#1}>,BOOL ()(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,ref::tagged_ptr<CurrentReader,unsigned long long> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,unsigned long long,diskimage_uio::option_set_ns::option_set<ref::details::deleter_options>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t ref::details::tagged_allocated_type<CurrentReader,unsigned long long>::~tagged_allocated_type(uint64_t a1)
{
  ref::tagged_ptr<CurrentReader,unsigned long long>::reset((a1 + 328));
  ref::details::ctrl_blk<CurrentReader,unsigned long long>::~ctrl_blk(a1 + 8);
  return a1;
}

uint64_t ref::Allocator<CurrentReader,unsigned long long>::error_ctrl_blk_t::~error_ctrl_blk_t(uint64_t a1)
{
  v2 = a1 + 104;
  if (atomic_fetch_add((a1 + 104), 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    v3 = *(a1 + 136);
    *(a1 + 136) = -1;
    ref::details::ctrl_blk<CurrentReader,unsigned long long>::reset_val(a1 + 104, v3, 1u);
  }

  ref::details::ctrl_blk<CurrentReader,unsigned long long>::~ctrl_blk(v2);
  std::__function::__value_func<int ()(CurrentReader &)>::~__value_func[abi:ne200100](a1 + 64);
  std::__function::__value_func<void ()(ref::details::ctrl_blk<CurrentReader,unsigned long long> *,ref::tagged_ptr<CurrentReader,unsigned long long> &)>::~__value_func[abi:ne200100](a1 + 32);

  return std::__function::__value_func<void ()(ref::details::ctrl_blk<CurrentReader,unsigned long long> *,unsigned long long,diskimage_uio::option_set_ns::option_set<ref::details::deleter_options>)>::~__value_func[abi:ne200100](a1);
}

uint64_t std::__function::__value_func<int ()(CurrentReader &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t ref::Allocator<CurrentReader,unsigned long long>::~Allocator(uint64_t a1)
{
  *(a1 + 704) &= ~1u;
  if (*(a1 + 424))
  {
    v3 = 0;
    do
    {
      v4 = atomic_exchange((*(a1 + 552) + 8 * v3), 0);
      if (v4)
      {
        v1 = v1 & 0xFFFFFFFFFF000000 | 0x10001;
        ref::Allocator<CurrentReader,unsigned long long>::drop_elem(a1, v4, v1, 0);
        ref::tagged_ptr<CurrentReader,unsigned long long>::reset((v4 + 328));
        ref::details::ctrl_blk<CurrentReader,unsigned long long>::~ctrl_blk(v4 + 8);
        MEMORY[0x24C1ED730](v4, 0x1072C408B028EDDLL);
      }

      ++v3;
    }

    while (*(a1 + 424) > v3);
  }

  gcd::gcd_queue::barrier_sync((a1 + 712), &__block_literal_global_9);
  v5 = *(a1 + 552);
  if (v5)
  {
    MEMORY[0x24C1ED710](v5, 0x20C8093837F09);
  }

  std::mutex::lock((a1 + 488));
  v6 = *(a1 + 448);
  if (*(a1 + 456) != v6)
  {
    v7 = *(a1 + 472);
    v8 = (v6 + 8 * (v7 >> 9));
    v9 = (*v8 + 8 * (v7 & 0x1FF));
    v10 = *(v6 + (((*(a1 + 480) + v7) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a1 + 480) + v7) & 0x1FF);
    while (v9 != v10)
    {
      v11 = *v9;
      if (*v9)
      {
        ref::tagged_ptr<CurrentReader,unsigned long long>::reset((v11 + 328));
        ref::details::ctrl_blk<CurrentReader,unsigned long long>::~ctrl_blk(v11 + 8);
        MEMORY[0x24C1ED730](v11, 0x1072C408B028EDDLL);
      }

      if ((++v9 - *v8) == 4096)
      {
        v12 = v8[1];
        ++v8;
        v9 = v12;
      }
    }
  }

  std::mutex::unlock((a1 + 488));
  std::__function::__value_func<void ()(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,ref::tagged_ptr<CurrentReader,unsigned long long> &)>::~__value_func[abi:ne200100](a1 + 1352);
  std::__function::__value_func<void ()(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,unsigned long long,diskimage_uio::option_set_ns::option_set<ref::details::deleter_options>)>::~__value_func[abi:ne200100](a1 + 1320);
  ref::tagged_ptr<CurrentReader,unsigned long long>::reset((a1 + 1304));
  ref::details::ctrl_blk<CurrentReader,unsigned long long>::~ctrl_blk(a1 + 984);
  std::__function::__value_func<int ()(CurrentReader &)>::~__value_func[abi:ne200100](a1 + 944);
  std::__list_imp<std::pair<ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,unsigned long long>>::clear((a1 + 920));
  std::mutex::~mutex((a1 + 856));
  std::condition_variable::~condition_variable((a1 + 808));
  std::mutex::~mutex((a1 + 744));
  std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>>>::destroy(a1 + 720, *(a1 + 728));
  gcd::gcd_group::~gcd_group((a1 + 712));
  std::condition_variable::~condition_variable((a1 + 656));
  std::mutex::~mutex((a1 + 592));
  std::mutex::~mutex((a1 + 488));
  std::deque<std::atomic<DiskImage::Context *>>::~deque[abi:ne200100]((a1 + 440));

  return ref::Allocator<CurrentReader,unsigned long long>::error_ctrl_blk_t::~error_ctrl_blk_t(a1);
}

void sub_248F80B24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    std::default_delete<std::vector<ref::tagged_weak_ptr<CurrentReader,unsigned long long>>>::operator()[abi:ne200100](&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<std::vector<ref::tagged_weak_ptr<CurrentReader,unsigned long long>> *,std::shared_ptr<std::vector<ref::tagged_weak_ptr<CurrentReader,unsigned long long>>>::__shared_ptr_default_delete<std::vector<ref::tagged_weak_ptr<CurrentReader,unsigned long long>>,std::vector<ref::tagged_weak_ptr<CurrentReader,unsigned long long>>>,std::allocator<std::vector<ref::tagged_weak_ptr<CurrentReader,unsigned long long>>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t std::__shared_ptr_pointer<std::vector<ref::tagged_weak_ptr<CurrentReader,unsigned long long>> *,std::shared_ptr<std::vector<ref::tagged_weak_ptr<CurrentReader,unsigned long long>>>::__shared_ptr_default_delete<std::vector<ref::tagged_weak_ptr<CurrentReader,unsigned long long>>,std::vector<ref::tagged_weak_ptr<CurrentReader,unsigned long long>>>,std::allocator<std::vector<ref::tagged_weak_ptr<CurrentReader,unsigned long long>>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::default_delete<std::vector<ref::tagged_weak_ptr<CurrentReader,unsigned long long>>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x24C1ED730);
  }
}

void ref::Allocator<CurrentReader,unsigned long long>::add_tag(uint64_t a1@<X0>, std::unique_lock<std::mutex>::mutex_type *a2@<X1>, char a3@<W2>, unint64_t *a4@<X8>)
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = (a1 + 744);
  v9 = (a1 + 728);
  v10 = a1 + 976;
  v35 = (a1 + 104);
  do
  {
    v38.__m_ = v8;
    v38.__owns_ = 1;
    std::mutex::lock(v8);
    if ((a3 & 1) == 0)
    {
      v15 = *v9;
      if (!*v9)
      {
        goto LABEL_14;
      }

      v16 = v9;
      do
      {
        v17 = v15[4];
        v18 = v17 >= a2;
        v19 = v17 < a2;
        if (v18)
        {
          v16 = v15;
        }

        v15 = v15[v19];
      }

      while (v15);
      if (v16 == v9 || v16[4] > a2 || v16[5] == v10)
      {
LABEL_14:
        __lk.__m_ = 0;
        *a4 = 0;
        a4[1] = v9;
        atomic_store(atomic_exchange(&__lk, 0), a4);
        ref::tagged_ptr<CurrentReader,unsigned long long>::reset(&__lk);
LABEL_15:
        v14 = 1;
        goto LABEL_16;
      }
    }

    __lk.__m_ = a2;
    *&__lk.__owns_ = v10;
    v11 = std::__tree<std::__value_type<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *>>(a1 + 720, &__lk);
    v12 = v11;
    if (v13)
    {
      __lk.__m_ = 0;
      *a4 = 0;
      a4[1] = v11;
      atomic_store(atomic_exchange(&__lk, 0), a4);
      ref::tagged_ptr<CurrentReader,unsigned long long>::reset(&__lk);
      v14 = 1;
      goto LABEL_16;
    }

    v20 = v11[5];
    if (v20 != v10)
    {
      if (!v38.__owns_)
      {
        std::__throw_system_error(1, "unique_lock::unlock: not locked");
        __break(1u);
      }

      std::mutex::unlock(v38.__m_);
      v38.__owns_ = 0;
      ref::tagged_ptr<CurrentReader,unsigned long long>::tagged_ptr(&__lk, (v20 + 328));
      if (!__lk.__m_ || (__lk.__m_[4].__m_.__opaque[48] & 1) != 0)
      {
        if ((a3 & 1) == 0)
        {
          goto LABEL_59;
        }

        goto LABEL_26;
      }

      if (*&__lk.__m_->__m_.__opaque[24] == a2)
      {
        *a4 = 0;
        a4[1] = v12;
        atomic_store(atomic_exchange(&__lk, 0), a4);
      }

      else
      {
        if (*&__lk.__m_->__m_.__opaque[24] != -1 || (a3 & 1) != 0)
        {
LABEL_26:
          ref::tagged_ptr<CurrentReader,unsigned long long>::reset(&__lk);
          v39[0] = &unk_285C05140;
          v39[1] = a2;
          v39[3] = v39;
          v40 = 1;
          v22 = ref::Allocator<CurrentReader,unsigned long long>::run_failed_dtors_list(a1, 0, v39);
          if (v40 == 1)
          {
            std::__function::__value_func<BOOL ()(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,unsigned long long)>::~__value_func[abi:ne200100](v39);
          }

          if (v22 == -1)
          {
            __lk.__m_ = 0;
            v31 = atomic_load(v35);
            if (v31)
            {
              v32 = v31;
              while (1)
              {
                atomic_compare_exchange_strong(v35, &v32, v31 + 1);
                if (v32 == v31)
                {
                  break;
                }

                v31 = v32;
                if (!v32)
                {
                  goto LABEL_64;
                }
              }

              v33 = *(a1 + 400);
              v32 = v35;
              if (v33)
              {
                *(a1 + 408) = atomic_fetch_add_explicit(v33, 1uLL, memory_order_relaxed);
                v32 = v35;
              }
            }

            else
            {
              v32 = 0;
            }

LABEL_64:
            atomic_store(v32, &__lk);
            *a4 = 0;
            a4[1] = v9;
            atomic_store(atomic_exchange(&__lk, 0), a4);
            ref::tagged_ptr<CurrentReader,unsigned long long>::reset(&__lk);
            goto LABEL_15;
          }

          atomic_fetch_add((a1 + 560), 1uLL);
          __lk.__m_ = ref::details::_get_tagged_ptr_lock(v20, v21);
          __lk.__owns_ = 1;
          std::mutex::lock(__lk.__m_);
          if ((*(v20 + 336) & 1) == 0 && *(v20 + 40) == -1)
          {
            tagged_ptr_cond = ref::details::_get_tagged_ptr_cond(v20, v23);
            std::condition_variable::wait(tagged_ptr_cond, &__lk);
          }

          atomic_fetch_add((a1 + 560), 0xFFFFFFFFFFFFFFFFLL);
          if (__lk.__owns_)
          {
            std::mutex::unlock(__lk.__m_);
          }

          goto LABEL_47;
        }

LABEL_59:
        v36 = 0;
        *a4 = 0;
        a4[1] = v9;
        atomic_store(atomic_exchange(&v36, 0), a4);
        ref::tagged_ptr<CurrentReader,unsigned long long>::reset(&v36);
      }

      ref::tagged_ptr<CurrentReader,unsigned long long>::reset(&__lk);
      goto LABEL_15;
    }

    v25 = *v9;
    if (*v9)
    {
      v26 = v9;
      while (1)
      {
        v27 = v25[4];
        v18 = v27 >= a2;
        v28 = v27 < a2;
        if (v18)
        {
          v26 = v25;
        }

        v25 = v25[v28];
        if (!v25)
        {
          if (v26 == v9)
          {
            break;
          }

          if (v26[4] > a2)
          {
            break;
          }

          v29 = v26[5];
          if (v29 != v10)
          {
            v30 = *(v29 + 328);
            if (v30)
            {
              if ((*(v30 + 312) & 1) == 0)
              {
                break;
              }
            }
          }

          if ((*(a1 + 704) & 1) == 0)
          {
            break;
          }

          std::condition_variable::wait((a1 + 808), &v38);
          v25 = *v9;
          v26 = v9;
          if (!*v9)
          {
            break;
          }
        }
      }

LABEL_47:
      v14 = 0;
      goto LABEL_16;
    }

    v14 = 0;
LABEL_16:
    if (v38.__owns_)
    {
      std::mutex::unlock(v38.__m_);
    }

    if (v14)
    {
      goto LABEL_65;
    }
  }

  while ((*(a1 + 704) & 1) != 0);
  v38.__m_ = 0;
  *a4 = 0;
  a4[1] = v9;
  atomic_store(atomic_exchange(&v38, 0), a4);
  ref::tagged_ptr<CurrentReader,unsigned long long>::reset(&v38);
LABEL_65:
  v34 = *MEMORY[0x277D85DE8];
}

void sub_248F81060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12, std::mutex *a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  if (a14 == 1)
  {
    std::mutex::unlock(a13);
  }

  _Unwind_Resume(exception_object);
}

atomic_ullong *ref::Allocator<CurrentReader,unsigned long long>::allocate_from_empty_pool@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t **a3@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  v11 = 0;
  std::mutex::lock((a1 + 488));
  v6 = *(a1 + 480);
  if (v6)
  {
    v7 = *(*(*(a1 + 448) + ((*(a1 + 472) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 472) & 0x1FFLL));
    ++*(a1 + 472);
    *(a1 + 480) = v6 - 1;
    std::deque<std::atomic<DiskImage::Context *>>::__maybe_remove_front_spare[abi:ne200100](a1 + 440, 1);
    ref::Allocator<CurrentReader,unsigned long long>::insert_elem(a1, v7, a2, v12);
    ref::tagged_ptr<CurrentReader,unsigned long long>::operator=(&v11, v12);
    ref::tagged_ptr<CurrentReader,unsigned long long>::reset(v12);
  }

  else
  {
    v7 = 0;
  }

  std::mutex::unlock((a1 + 488));
  v8 = atomic_load((a1 + 576));
  if (v8 + v6 >= *(a1 + 432))
  {
    v13[0] = 0;
    v14 = 0;
    ref::Allocator<CurrentReader,unsigned long long>::run_failed_dtors_list(a1, 0, v13);
    if (v14 == 1)
    {
      std::__function::__value_func<BOOL ()(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,unsigned long long)>::~__value_func[abi:ne200100](v13);
    }
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 0x40000000;
    v12[2] = ___ZN3ref9AllocatorI13CurrentReaderyE9evict_lruEv_block_invoke;
    v12[3] = &__block_descriptor_tmp_162;
    v12[4] = a1;
    gcd::gcd_queue::async((a1 + 712), v12);
  }

  *a3 = v7;
  a3[1] = 0;
  atomic_store(atomic_exchange(&v11, 0), a3 + 1);
  result = ref::tagged_ptr<CurrentReader,unsigned long long>::reset(&v11);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248F8129C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, atomic_ullong a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a19 == 1)
  {
    std::__function::__value_func<BOOL ()(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,unsigned long long)>::~__value_func[abi:ne200100](&a15);
  }

  ref::tagged_ptr<CurrentReader,unsigned long long>::reset(&a9);
  _Unwind_Resume(a1);
}

unint64_t ref::Allocator<CurrentReader,unsigned long long>::extract_min(void *a1)
{
  v1 = atomic_load(a1 + 71);
  v2 = a1[53];
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  v7 = -1;
  do
  {
    v6 = a1[69];
    v8 = *(v6 + 8 * v3);
    if (v8 && v1 - *(v8 + 312) < v7)
    {
      v5 = *(v6 + 8 * v3);
      v7 = v1 - *(v8 + 312);
      v4 = v3;
    }

    ++v3;
  }

  while (v2 != v3);
  if (!v5)
  {
    return 0;
  }

  v9 = v5;
  atomic_compare_exchange_strong((a1[69] + 8 * v4), &v9, 0);
  if (v9 != v5 || (ref::Allocator<CurrentReader,unsigned long long>::drop_elem(a1, v5, 0x101uLL, 0) & 1) == 0)
  {
    return 0;
  }

  return v5;
}

atomic_ullong *ref::Allocator<CurrentReader,unsigned long long>::insert_elem@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  ref::details::tagged_allocated_type<CurrentReader,unsigned long long>::mark_used(a2, a3);
  v7 = (a2 + 1);
  v14 = 0;
  v8 = atomic_load(a2 + 1);
  if (v8)
  {
    v9 = v8;
    while (1)
    {
      atomic_compare_exchange_strong(v7, &v9, v8 + 1);
      if (v9 == v8)
      {
        break;
      }

      v8 = v9;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v10 = a2[38];
    if (v10)
    {
      a2[39] = atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_5:
    v7 = 0;
  }

  atomic_store(v7, &v14);
  if (*(a1 + 424))
  {
    v11 = 0;
    while (1)
    {
      v12 = 0;
      atomic_compare_exchange_strong((*(a1 + 552) + 8 * v11), &v12, a2);
      if (!v12)
      {
        break;
      }

      if (*(a1 + 424) <= ++v11)
      {
        goto LABEL_12;
      }
    }

    *a4 = 0;
    atomic_store(atomic_exchange(&v14, 0), a4);
  }

  else
  {
LABEL_12:
    *a4 = 0;
  }

  return ref::tagged_ptr<CurrentReader,unsigned long long>::reset(&v14);
}

uint64_t std::__function::__func<ref::Allocator<CurrentReader,unsigned long long>::add_tag(unsigned long long,BOOL)::{lambda(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,unsigned long long)#1},std::allocator<ref::Allocator<CurrentReader,unsigned long long>::add_tag(unsigned long long,BOOL)::{lambda(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,unsigned long long)#1}>,BOOL ()(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,unsigned long long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285C05140;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<ref::Allocator<CurrentReader,unsigned long long>::add_tag(unsigned long long,BOOL)::{lambda(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,unsigned long long)#1},std::allocator<ref::Allocator<CurrentReader,unsigned long long>::add_tag(unsigned long long,BOOL)::{lambda(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,unsigned long long)#1}>,BOOL ()(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t *ref::tagged_ptr<CurrentReader,unsigned long long>::tagged_ptr(unint64_t *a1, unint64_t *a2, int a3)
{
  v3 = a2;
  *a1 = 0;
  if (a2)
  {
    v5 = atomic_load(a2);
    if (!v5)
    {
LABEL_6:
      v3 = 0;
      goto LABEL_7;
    }

    v6 = v5;
    while (1)
    {
      atomic_compare_exchange_strong(a2, &v6, v5 + 1);
      if (v6 == v5)
      {
        break;
      }

      v5 = v6;
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    v8 = a2[37];
    if (v8)
    {
      a2[38] = atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
    }

    if (a3 && !ref::details::ctrl_blk<CurrentReader,unsigned long long>::wait_for_ready(a2))
    {
      if (atomic_fetch_add(v3, 0xFFFFFFFFFFFFFFFFLL) == 1)
      {
        v9 = v3[4];
        v3[4] = -1;
        ref::details::ctrl_blk<CurrentReader,unsigned long long>::reset_val(v3, v9, 1u);
      }

      goto LABEL_6;
    }
  }

LABEL_7:
  atomic_store(v3, a1);
  return a1;
}

uint64_t ___ZN3ref9AllocatorI13CurrentReaderyE9evict_lruEv_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  min = ref::Allocator<CurrentReader,unsigned long long>::extract_min(v1);
  if (min)
  {
    ref::Allocator<CurrentReader,unsigned long long>::add_to_free_pool(v1, min);
  }

  v5[0] = 0;
  v6 = 0;
  result = ref::Allocator<CurrentReader,unsigned long long>::run_failed_dtors_list(v1, 0, v5);
  if (v6 == 1)
  {
    result = std::__function::__value_func<BOOL ()(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,unsigned long long)>::~__value_func[abi:ne200100](v5);
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248F816D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a13 == 1)
  {
    std::__function::__value_func<BOOL ()(ref::details::tagged_allocated_type<CurrentReader,unsigned long long> *,unsigned long long)>::~__value_func[abi:ne200100](&a9);
  }

  _Unwind_Resume(exception_object);
}

atomic_ullong *ref::details::tagged_allocated_type<CurrentReader,unsigned long long>::mark_used(uint64_t a1, uint64_t a2)
{
  atomic_store(0, (a1 + 336));
  v3 = (a1 + 8);
  ref::details::ctrl_blk<CurrentReader,unsigned long long>::init(a1 + 8, a2);
  v9 = 0;
  v4 = atomic_load(v3);
  if (v4)
  {
    v5 = v4;
    while (1)
    {
      atomic_compare_exchange_strong(v3, &v5, v4 + 1);
      if (v5 == v4)
      {
        break;
      }

      v4 = v5;
      if (!v5)
      {
        goto LABEL_9;
      }
    }

    v6 = *(a1 + 304);
    v5 = v3;
    if (v6)
    {
      *(a1 + 312) = atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
      v5 = v3;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_9:
  atomic_store(v5, &v9);
  ref::tagged_ptr<CurrentReader,unsigned long long>::operator=((a1 + 328), &v9);
  result = ref::tagged_ptr<CurrentReader,unsigned long long>::reset(&v9);
  if (atomic_fetch_add(v3, 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    v8 = *(a1 + 40);
    *(a1 + 40) = -1;
    return ref::details::ctrl_blk<CurrentReader,unsigned long long>::reset_val(v3, v8, 1u);
  }

  return result;
}

void ref::details::ctrl_blk<CurrentReader,unsigned long long>::make_value<std::shared_ptr<char>,unsigned long long>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *(a1 + 304) = **(a1 + 296);
  std::optional<CurrentReader>::emplace[abi:ne200100]<std::shared_ptr<char>,unsigned long long,void>((a1 + 40), a2, a3);
  atomic_store(2u, (a1 + 24));
  if (atomic_load((a1 + 8)))
  {

    std::__cxx_atomic_notify_all((a1 + 24));
  }
}

void sub_248F81828(void *a1)
{
  __cxa_begin_catch(a1);
  atomic_store(0, (v1 + 24));
  *(v1 + 312) = 1;
  if (atomic_load((v1 + 8)))
  {
    std::__cxx_atomic_notify_all((v1 + 24));
  }

  __cxa_rethrow();
}

CurrentReader *std::optional<CurrentReader>::emplace[abi:ne200100]<std::shared_ptr<char>,unsigned long long,void>(CurrentReader *this, uint64_t *a2, uint64_t *a3)
{
  if (*(this + 152) == 1)
  {
    CurrentReader::~CurrentReader(this);
    *(this + 152) = 0;
  }

  std::construct_at[abi:ne200100]<CurrentReader,std::shared_ptr<char>,unsigned long long,CurrentReader*>(this, a2, a3);
  *(this + 152) = 1;
  return this;
}

uint64_t std::construct_at[abi:ne200100]<CurrentReader,std::shared_ptr<char>,unsigned long long,CurrentReader*>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a2;
  v4 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v6 = *a3;
  *a1 = v5;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = v6;
  *(a1 + 24) = 1018212795;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 850045863;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 125) = 0u;
  *(a1 + 144) = -1;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return a1;
}

void ref::details::ctrl_blk<CurrentReader,unsigned long long>::make_value<std::shared_ptr<char> const&,unsigned long long>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *(a1 + 304) = **(a1 + 296);
  std::optional<CurrentReader>::emplace[abi:ne200100]<std::shared_ptr<char> const&,unsigned long long,void>((a1 + 40), a2, a3);
  atomic_store(2u, (a1 + 24));
  if (atomic_load((a1 + 8)))
  {

    std::__cxx_atomic_notify_all((a1 + 24));
  }
}

void sub_248F819B4(void *a1)
{
  __cxa_begin_catch(a1);
  atomic_store(0, (v1 + 24));
  *(v1 + 312) = 1;
  if (atomic_load((v1 + 8)))
  {
    std::__cxx_atomic_notify_all((v1 + 24));
  }

  __cxa_rethrow();
}

CurrentReader *std::optional<CurrentReader>::emplace[abi:ne200100]<std::shared_ptr<char> const&,unsigned long long,void>(CurrentReader *this, uint64_t *a2, uint64_t *a3)
{
  if (*(this + 152) == 1)
  {
    CurrentReader::~CurrentReader(this);
    *(this + 152) = 0;
  }

  std::construct_at[abi:ne200100]<CurrentReader,std::shared_ptr<char> const&,unsigned long long,CurrentReader*>(this, a2, a3);
  *(this + 152) = 1;
  return this;
}

uint64_t std::construct_at[abi:ne200100]<CurrentReader,std::shared_ptr<char> const&,unsigned long long,CurrentReader*>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *a3;
    *a1 = v5;
    *(a1 + 8) = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v6 = *a3;
    *a1 = v5;
    *(a1 + 8) = 0;
  }

  *(a1 + 16) = v6;
  *(a1 + 24) = 1018212795;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 850045863;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 125) = 0u;
  *(a1 + 144) = -1;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return a1;
}

uint64_t std::function<void ()(ref::details::ctrl_blk<CurrentReader,unsigned long long> *,ref::tagged_ptr<CurrentReader,unsigned long long> &)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void *std::__shared_ptr_emplace<readSynchronizer>::__shared_ptr_emplace[abi:ne200100]<readSynchronizer&,std::shared_ptr<Backend> const&,std::allocator<readSynchronizer>,0>(void *a1, void *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BD6E58;
  readSynchronizer::readSynchronizer((a1 + 3), a2, a3);
  return a1;
}

uint64_t readSynchronizer::readSynchronizer(uint64_t a1, void *a2, void *a3)
{
  BackendInternalBackend::BackendInternalBackend(a1, a3);
  *v5 = &unk_285C04B08;
  v6 = a2[6];
  v5[5] = a2[5];
  v5[6] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = a2[8];
  *(a1 + 56) = a2[7];
  *(a1 + 64) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  ref::tagged_ptr<CurrentReader,unsigned long long>::tagged_ptr((a1 + 72), a2 + 9);
  return a1;
}

void sub_248F81CA8(_Unwind_Exception *a1)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(v1 + 6);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  BackendInternalBackend::~BackendInternalBackend(v1);
  _Unwind_Resume(a1);
}

uint64_t sg_vec_ns::details::buffer_iterator::make_value@<X0>(uint64_t this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (*(this + 24) == *(this + 16))
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return this;
  }

  v3 = **this + *(this + 32);
  if (*(this + 56))
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    v5 = *(*this + 8);
    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v5 = *(this + 64);
  if (v5)
  {
LABEL_10:
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_11:
  *a3 = v3;
  *(a3 + 8) = v5;
  v6 = *(this + 32);
  v7 = *(*this + 16) - v6;
  if (v7 >= *(this + 24) - *(this + 16))
  {
    v7 = *(this + 24) - *(this + 16);
  }

  v8 = **(this + 8);
  v9 = v8 >= v6;
  v10 = v8 - v6;
  if (!v9)
  {
    v10 = 0;
  }

  *(a3 + 16) = v7;
  *(a3 + 24) = v10;
  return this;
}

sg_vec_ns::details::buffer_iterator *sg_vec_ns::details::buffer_iterator::buffer_iterator(sg_vec_ns::details::buffer_iterator *this, void *a2, unint64_t **a3, unint64_t a4, unint64_t a5, unint64_t a6, char a7)
{
  v8 = 0;
  *this = *a2;
  *(this + 1) = *a3;
  *(this + 2) = a4;
  *(this + 3) = a5;
  *(this + 4) = a6;
  *(this + 48) = a7;
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (a4 < a5)
  {
    v8 = **a3;
    if (v8 >= a6)
    {
      v8 = a6;
    }
  }

  *(this + 5) = v8;
  sg_vec_ns::details::buffer_iterator::make_value(this, 1, v11);
  v9 = *(this + 8);
  *(this + 56) = v11[0];
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  *(this + 72) = v11[1];
  return this;
}

sg_vec_ns::details::buffer_iterator *sg_vec_ns::details::buffer_iterator::operator++(sg_vec_ns::details::buffer_iterator *this)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
  if (v2 != v3)
  {
    v4 = *(this + 1);
    v5 = *(*this + 16) + v2 - *(this + 4);
    v6 = *this + 24;
    *(this + 4) = 0;
    *(this + 5) = 0;
    *this = v6;
    *(this + 1) = v4 + 8;
    *(this + 2) = v5;
  }

  sg_vec_ns::details::buffer_iterator::make_value(this, v2 != v3, v9);
  v7 = *(this + 8);
  *(this + 56) = v9[0];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  *(this + 72) = v9[1];
  return this;
}

sg_vec_ns::details::buffer_iterator *sg_vec_ns::details::buffer_iterator::operator+=(sg_vec_ns::details::buffer_iterator *this, unint64_t a2)
{
  if (a2)
  {
    v3 = *(this + 2);
    v4 = *(this + 3) - v3;
    if (*(*this + 16) - *(this + 4) < v4)
    {
      v4 = *(*this + 16) - *(this + 4);
    }

    v5 = v4 <= a2;
    if (v4 <= a2)
    {
      v6 = *(this + 48);
      v7 = *(this + 1) + 8;
      v8 = *this + 24;
      do
      {
        v9 = v7;
        v10 = v8;
        if (v6)
        {
          *(v7 - 8) = *(this + 5) + v4;
          v3 = *(this + 2);
        }

        *(this + 4) = 0;
        *(this + 5) = 0;
        v3 += v4;
        *(this + 2) = v3;
        a2 -= v4;
        if (!a2)
        {
          break;
        }

        v4 = *(v8 + 16);
        if (v4 >= *(this + 3) - v3)
        {
          v4 = *(this + 3) - v3;
        }

        v7 += 8;
        v8 += 24;
        v11 = v4 > a2;
        if (v4 >= a2)
        {
          v4 = a2;
        }
      }

      while (!v11);
      *this = v10;
      *(this + 1) = v9;
    }
  }

  else
  {
    v5 = 0;
  }

  v12 = *(this + 5) + a2;
  *(this + 5) = v12;
  if (v12 && *(this + 48) == 1)
  {
    **(this + 1) = v12;
  }

  *(this + 2) += a2;
  *(this + 4) += a2;
  sg_vec_ns::details::buffer_iterator::make_value(this, v5, v15);
  v13 = *(this + 8);
  *(this + 56) = v15[0];
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  *(this + 72) = v15[1];
  return this;
}

{
  v3 = 0;
  if (a2)
  {
    v4 = *(this + 4);
    v5 = *(this + 2);
    v6 = *(this + 3);
    v7 = *(this + 1) + 8;
    v8 = *this + 24;
    while (1)
    {
      v9 = v6 - v5;
      if (*(v8 - 8) - v4 < v6 - v5)
      {
        v9 = *(v8 - 8) - v4;
      }

      v10 = *(v7 - 8);
      v11 = v10 >= v4;
      v12 = v10 - v4;
      v13 = v11 ? v12 : 0;
      v14 = v13 >= v9 ? v9 : v13;
      if (v14 >= a2 && (v9 > v13 || a2 != v14))
      {
        break;
      }

      v4 = 0;
      v5 += v9;
      *(this + 1) = v7;
      *(this + 2) = v5;
      *this = v8;
      if (a2 >= v14)
      {
        v16 = a2 - v14;
      }

      else
      {
        v16 = 0;
      }

      v7 += 8;
      *(this + 4) = 0;
      *(this + 5) = 0;
      v3 = 1;
      v8 += 24;
      v11 = v14 >= a2;
      a2 = v16;
      if (v11)
      {
        goto LABEL_22;
      }
    }

    v17 = *(this + 5) + a2;
    *(this + 2) = v5 + a2;
    *(this + 4) = v4 + a2;
    *(this + 5) = v17;
  }

LABEL_22:
  sg_vec_ns::details::buffer_iterator::make_value(this, v3 & 1, v20);
  v18 = *(this + 8);
  *(this + 56) = v20[0];
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  *(this + 72) = v20[1];
  return this;
}

void *sg_vec_ns::details::buffer_iterator::rtrim_written(void *this)
{
  v1 = this[2];
  if (v1 != this[3])
  {
    v2 = this[4];
    v3 = this[1];
    v4 = (*this + 16);
    do
    {
      *v3++ = v2;
      v5 = *v4;
      v4 += 3;
      v6 = this[3];
      v7 = v5 - v2;
      if (v7 >= v6 - v1)
      {
        v7 = v6 - v1;
      }

      v1 += v7;
      v2 = 0;
    }

    while (v1 != v6);
  }

  return this;
}

void sg_vec_ns::details::sg_vec_iterator::make_val(sg_vec_ns::details::sg_vec_iterator *this@<X0>, const sg_vec_ns::details::sg_vec_iterator *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(this + 14);
  if (!sg_vec_ns::details::sg_vec_iterator::operator==(this, a2))
  {
    sg_vec_ns::details::buffer_iterator::sync((this + 120));
    v8 = *(this + 22);
    v9 = *(this + 23);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = *(this + 24);
    v11 = *(this + 26);
    v12 = *(a2 + 26) - v11;
    if (v12 >= v10)
    {
      v12 = v10;
    }

    *v15 = v8;
    *&v15[8] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *&v15[16] = v12;
    *&v15[24] = v11;
    *&v15[32] = v10;
    LOBYTE(v16[0]) = 0;
    v17 = 0;
    *&v15[40] = *(v6 + 264) & 3;
    sg_entry::sg_entry(a3, v15);
    if (*&v15[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v15[8]);
    }

    if (*(v6 + 256) == 1 && *(v6 + 200))
    {
      sg_per_io_crypto::clone_with_offset((v6 + 200), *(v6 + 184), v11, v15);
      if (*(a3 + 104) != 1)
      {
        sg_per_io_crypto::sg_per_io_crypto((a3 + 48), v15);
        *(a3 + 104) = 1;
        if (!v9)
        {
          return;
        }

        goto LABEL_19;
      }

      v13 = *&v15[16];
      *(a3 + 48) = *v15;
      *(a3 + 64) = v13;
      *(a3 + 80) = *&v15[32];
      *(a3 + 96) = v16[0];
    }

    if (!v9)
    {
      return;
    }

LABEL_19:
    v7 = v9;
    goto LABEL_20;
  }

  if (*(v6 + 256) == 1 && *(v6 + 200))
  {
    LOBYTE(v16[0]) = 0;
    v17 = 0;
    memset(v15, 0, 44);
    sg_per_io_crypto::clone_with_offset((v6 + 200), *(v6 + 184), *(this + 26), v14);
    sg_per_io_crypto::sg_per_io_crypto(v16, v14);
    v17 = 1;
    sg_entry::sg_entry(a3, v15);
    v7 = *&v15[8];
    if (!*&v15[8])
    {
      return;
    }

LABEL_20:
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    return;
  }

  *(a3 + 48) = 0;
  *(a3 + 104) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 28) = 0u;
}

void sub_248F822D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v21 = *(v18 + 8);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  _Unwind_Resume(exception_object);
}

BOOL sg_vec_ns::details::sg_vec_iterator::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  if (v2 != *(a2 + 112))
  {
    return 0;
  }

  if (*(a1 + 216) != 1 || (*(a2 + 216) & 1) == 0)
  {
    return *(a1 + 208) == *(a2 + 208);
  }

  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(&v12, (v2 + 272));
  v6 = *(a1 + 120);
  v7 = v6 == v14 && *(a1 + 128) == v15 && *(a1 + 136) == v16;
  v8 = *(a2 + 120);
  if (v8 == v14 && (v9 = *(a2 + 128), v9 == v15))
  {
    v3 = 0;
    if (v6 != v14 || v7 == (*(a2 + 136) != v16))
    {
      goto LABEL_21;
    }
  }

  else
  {
    v10 = v6 != v8 || v7;
    if (v10)
    {
      goto LABEL_20;
    }

    v9 = *(a2 + 128);
  }

  if (*(a1 + 128) != v9 || *(a1 + 136) != *(a2 + 136))
  {
LABEL_20:
    v3 = 0;
    goto LABEL_21;
  }

  v3 = *(a1 + 208) == *(a2 + 208);
LABEL_21:
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  return v3;
}

sg_vec_ref *sg_vec_ref::sg_vec_ref(sg_vec_ref *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = *(a3 + 16);
  *(a1 + 1) = *a2;
  v8 = (a1 + 8);
  v9 = *(a2 + 8);
  *a1 = v7 - *(a2 + 16);
  *(a1 + 2) = v9;
  v10 = *(a2 + 16);
  v11 = *(a2 + 32);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 40) = v11;
  *(a1 + 24) = v10;
  v12 = *(a2 + 64);
  *(a1 + 8) = *(a2 + 56);
  *(a1 + 9) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 5) = *(a2 + 72);
  *(a1 + 12) = *a3;
  *(a1 + 13) = *(a3 + 8);
  v13 = *(a3 + 16);
  v14 = *(a3 + 32);
  *(a1 + 144) = *(a3 + 48);
  *(a1 + 7) = v13;
  *(a1 + 8) = v14;
  v15 = *(a3 + 64);
  *(a1 + 19) = *(a3 + 56);
  *(a1 + 20) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 168) = *(a3 + 72);
  *(a1 + 23) = a4;
  *(a1 + 24) = a5;
  *(a1 + 200) = 0;
  *(a1 + 256) = 0;
  *(a1 + 66) = a6;
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator((a1 + 272), a1, (a1 + 96), 0);
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator((a1 + 496), a1, v8, 1);
  return a1;
}

{
  return sg_vec_ref::sg_vec_ref(a1, a2, a3, a4, a5, a6);
}

void sub_248F82578(_Unwind_Exception *a1)
{
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator((v1 + 34));
  v3 = v1[20];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = v1[9];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sg_vec_ref::sg_vec_ref(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t **a4, unint64_t **a5, uint64_t a6, uint64_t a7, int a8)
{
  v13 = *a2;
  v14 = *a3;
  if (*a2 == *a3)
  {
    v15 = 0;
  }

  else
  {
    v15 = 0;
    do
    {
      v16 = *(v13 + 8);
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        v17 = *(v13 + 16);
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      else
      {
        v17 = *(v13 + 16);
      }

      v15 += v17;
      v13 += 24;
    }

    while (v13 != v14);
  }

  *a1 = v15;
  sg_vec_ns::details::buffer_iterator::buffer_iterator((a1 + 8), a2, a4, 0, v15, 0, 1);
  sg_vec_ns::details::buffer_iterator::buffer_iterator((a1 + 96), a3, a5, *a1, *a1, 0, 1);
  *(a1 + 184) = a6;
  *(a1 + 192) = a7;
  *(a1 + 200) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = a8;
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator((a1 + 272), a1, (a1 + 96), 0);
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator((a1 + 496), a1, (a1 + 8), 1);
  return a1;
}

void sub_248F826F0(_Unwind_Exception *a1)
{
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator((v1 + 34));
  v3 = v1[20];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = v1[9];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

void sg_vec_ref::subvec(sg_vec_ref *this@<X0>, const sg_vec_ns::details::sg_vec_iterator *a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, sg_vec_ns::details::sg_vec_iterator *a5@<X8>)
{
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(&v26, (this + 272));
  v10 = sg_vec_ns::details::sg_vec_iterator::operator==(a2, &v26);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (v10)
  {
    goto LABEL_6;
  }

  v11 = *(this + 24);
  if (v11 + *(this + 23) < a3)
  {
    a3 = v11 + *(this + 23);
  }

  if (a3 < *(a2 + 26))
  {
LABEL_6:
    sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(&v26, (this + 272));
    sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(&v17, (this + 272));
    std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>::pair[abi:ne200100]<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator,0>(a5, &v26, &v17);
  }

  else
  {
    sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(&v26, a2);
    if (a4)
    {
      v12 = *(this + 14);
      if (v29 <= v12)
      {
        v17 = v28;
        v18 = v29;
        v19 = v30;
        v20 = v31;
        v21 = v32;
        v22 = v33;
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
          v12 = *(this + 14);
        }

        v23 = v34;
        if (v18 >= v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = 0;
          do
          {
            sg_vec_ns::details::buffer_iterator::sync(&v17);
            if (*(this + 14) - v29 >= *(&v23 + 1))
            {
              v15 = *(&v23 + 1);
            }

            else
            {
              v15 = *(this + 14) - v29;
            }

            if (v15)
            {
              sg_vec_ns::details::buffer_iterator::operator+=(&v17, v15);
            }

            else
            {
              sg_vec_ns::details::buffer_iterator::operator++(&v17);
            }

            v14 += v15;
          }

          while (v18 < *(this + 14));
        }

        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }

        if (v14 >= a4)
        {
          v13 = a4;
        }

        else
        {
          v13 = v14;
        }

        if (v14)
        {
          sg_vec_ns::details::sg_vec_iterator::operator+=(&v26, v13);
        }
      }

      else
      {
        v13 = 0;
        v14 = 0;
      }

      if (v14 < a4)
      {
        sg_vec_ns::details::sg_vec_iterator::operator+=(&v26, a4 - v13);
      }
    }

    sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(&v17, (this + 272));
    v25 = a3;
    sg_vec_ns::details::sg_vec_iterator::make_val(&v26, &v17, v16);
    sg_entry::operator=(&v26, v16);
    if (*(&v16[0] + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v16[0] + 1));
    }

    std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>::pair[abi:ne200100]<sg_vec_ns::details::sg_vec_iterator&,sg_vec_ns::details::sg_vec_iterator&,0>(a5, &v26, &v17);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (*(&v17 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v17 + 1));
  }

  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }
}

void *sg_vec_ns::details::sg_vec_iterator::operator+=(void *a1, unint64_t a2)
{
  a1[26] += a2;
  sg_vec_ns::details::buffer_iterator::operator+=((a1 + 15), a2);
  if (a1[18] != a1[17])
  {
    sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(&v4, (a1[14] + 272));
    sg_vec_ns::details::sg_vec_iterator::make_val(a1, &v4, v7);
    sg_entry::operator=(a1, v7);
    if (*(&v7[0] + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v7[0] + 1));
    }

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  return a1;
}

{
  a1[26] += a2;
  sg_vec_ns::details::buffer_iterator::operator+=((a1 + 15), a2);
  if (a1[18] != a1[17])
  {
    sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(&v4, (a1[14] + 272));
    sg_vec_ns::details::sg_vec_iterator::make_val(a1, &v4, v7);
    sg_entry::operator=(a1, v7);
    if (*(&v7[0] + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v7[0] + 1));
    }

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  return a1;
}

void sub_248F82ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(v9 - 120);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a9);
  _Unwind_Resume(a1);
}

void sub_248F82B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(v9 - 120);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a9);
  _Unwind_Resume(a1);
}

uint64_t sg_vec_ns::details::sg_vec_iterator::operator++(uint64_t a1)
{
  v2 = (a1 + 144);
  v3 = *(a1 + 136);
  if (*(a1 + 144) != v3)
  {
    v4 = (a1 + 120);
    v13 = *(a1 + 120);
    v23[0] = *v2;
    *(v23 + 9) = *(v2 + 9);
    v6 = *(a1 + 176);
    v5 = *(a1 + 184);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v22 = *(a1 + 192);
    sg_vec_ns::details::buffer_iterator::operator++(v4);
    v7 = *(a1 + 136);
    if (v3 <= v7)
    {
      v14 = v13;
      v15 = v3;
      v16[0] = v23[0];
      *(v16 + 9) = *(v23 + 9);
      v17 = v6;
      v18 = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        v7 = *(a1 + 136);
        v9 = v15;
      }

      else
      {
        v9 = v3;
      }

      v19 = v22;
      if (v9 >= v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = 0;
        do
        {
          sg_vec_ns::details::buffer_iterator::sync(&v14);
          if (*(a1 + 136) - v3 >= *(&v19 + 1))
          {
            v10 = *(&v19 + 1);
          }

          else
          {
            v10 = *(a1 + 136) - v3;
          }

          if (v10)
          {
            sg_vec_ns::details::buffer_iterator::operator+=(&v14, v10);
          }

          else
          {
            sg_vec_ns::details::buffer_iterator::operator++(&v14);
          }

          v8 += v10;
        }

        while (v15 < *(a1 + 136));
      }

      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }
    }

    else
    {
      v8 = 0;
    }

    v11 = *(a1 + 16);
    if (v11 >= v8)
    {
      v11 = v8;
    }

    *(a1 + 208) += v11;
    sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(&v14, (*(a1 + 112) + 272));
    sg_vec_ns::details::sg_vec_iterator::make_val(a1, &v14, v21);
    sg_entry::operator=(a1, v21);
    if (*(&v21[0] + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v21[0] + 1));
    }

    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    if (*(&v14 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v14 + 1));
    }

    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  return a1;
}

void sub_248F82D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v6 = *(v4 - 200);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(va);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

void sg_vec_ns::details::sg_vec_iterator::subvec(sg_vec_ns::details::sg_vec_iterator *a1@<X0>, uint64_t a2@<X1>, const sg_vec_ns::details::sg_vec_iterator *a3@<X2>, sg_vec_ns::details::sg_vec_iterator *a4@<X8>)
{
  v6 = *(a1 + 3);
  v7 = *(a2 + 16);
  if (v6 < (v7 & 1) + *(a2 + 8) - 1)
  {
    v10 = *(a1 + 2) + v6;
    v11 = v7 & 2;
    v12 = *a2;
    if ((v7 & 2) != 0)
    {
      v13 = *a2;
    }

    else
    {
      v13 = v12 + 1;
    }

    if (v10 <= v13)
    {
      v14 = *(a1 + 14);
      sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v34, a1);
      while (!sg_vec_ns::details::sg_vec_iterator::operator==(v34, a3))
      {
        v10 += v36;
        v15 = *a2;
        if ((*(a2 + 16) & 2) == 0)
        {
          ++v15;
        }

        if (v10 >= v15)
        {
          break;
        }

        sg_vec_ns::details::sg_vec_iterator::operator++(v34);
      }

      sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v31, (v14 + 272));
      v16 = sg_vec_ns::details::sg_vec_iterator::operator==(v34, v31);
      if (v33)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
      }

      if (v32)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v32);
      }

      if (v16)
      {
        sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v31, (v14 + 272));
        sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(&v28, (v14 + 272));
        std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>::pair[abi:ne200100]<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator,0>(a4, v31, &v28);
        if (v30)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v30);
        }

        if (v29)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v29);
        }

        if (v33)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v33);
        }

        if (v32)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v32);
        }

        if (v37)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v37);
        }

        if (v35)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v35);
        }

        return;
      }

      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      }

      v7 = *(a2 + 16);
      v12 = *a2;
      v6 = *(a1 + 3);
      v11 = v7 & 2;
    }

    if (v11)
    {
      v17 = v12;
    }

    else
    {
      v17 = v12 + 1;
    }

    v18 = *(a2 + 8);
    v19 = v17 - v6;
    if (v17 < v6)
    {
      if (v7)
      {
        if (v7 == 3)
        {
          if (v18 < v12)
          {
            goto LABEL_56;
          }
        }

        else if (v12 >= v18)
        {
LABEL_56:
          v20 = boost::icl::identity_element<unsigned long long>::value(void)::_value;
          goto LABEL_57;
        }
      }

      else if (v12 >= v18 || v12 + 1 >= v18)
      {
        goto LABEL_56;
      }

      v20 = (v7 & 1) - v12 + (((v7 >> 1) & 1) - 1) + v18;
LABEL_57:
      v22 = v20 + v17;
      v23 = *(a1 + 14);
      if (*(a3 + 26) >= v22)
      {
        v24 = v22;
      }

      else
      {
        v24 = *(a3 + 26);
      }

      v25 = a4;
      v26 = a1;
      v19 = 0;
LABEL_67:
      sg_vec_ref::subvec(v23, v26, v24, v19, v25);
      return;
    }

    if (v7)
    {
      if (v7 == 3)
      {
        if (v18 < v12)
        {
          goto LABEL_62;
        }
      }

      else if (v12 >= v18)
      {
LABEL_62:
        v21 = boost::icl::identity_element<unsigned long long>::value(void)::_value;
        goto LABEL_63;
      }
    }

    else if (v12 >= v18 || v12 + 1 >= v18)
    {
      goto LABEL_62;
    }

    v21 = (v7 & 1) - v12 + (((v7 >> 1) & 1) - 1) + v18;
LABEL_63:
    v27 = v21 + v17;
    v23 = *(a1 + 14);
    if (*(a3 + 26) >= v27)
    {
      v24 = v27;
    }

    else
    {
      v24 = *(a3 + 26);
    }

    v25 = a4;
    v26 = a1;
    goto LABEL_67;
  }

  std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>::pair[abi:ne200100]<true,0>(a4, a3, a3);
}

void sub_248F830C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a9);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a37);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a65);
  _Unwind_Resume(a1);
}

void sg_vec_ns::details::sg_vec_iterator::subvec(sg_vec_ns::details::sg_vec_iterator *this@<X0>, const sg_vec_ns::details::sg_vec_iterator *a2@<X2>, unint64_t a3@<X1>, unint64_t a4@<X3>, sg_vec_ns::details::sg_vec_iterator *a5@<X8>)
{
  v6 = *(this + 14);
  if (*(a2 + 26) >= a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = *(a2 + 26);
  }

  sg_vec_ref::subvec(v6, this, v7, a4, a5);
}

sg_vec_ns::details::sg_vec_iterator *sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(sg_vec_ns::details::sg_vec_iterator *this, sg_vec_ref *a2, const sg_vec_ns::details::buffer_iterator *a3, char a4)
{
  *(this + 48) = 0;
  *(this + 104) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 28) = 0u;
  *(this + 14) = a2;
  *(this + 15) = *a3;
  *(this + 16) = *(a3 + 1);
  v6 = *(a3 + 1);
  v7 = *(a3 + 2);
  *(this + 168) = *(a3 + 48);
  *(this + 152) = v7;
  *(this + 136) = v6;
  *(this + 22) = *(a3 + 7);
  v8 = *(a3 + 8);
  *(this + 23) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 12) = *(a3 + 72);
  *(this + 216) = a4;
  v9 = *a3;
  if (*a3 == *(a2 + 6) && *(a3 + 2) == *(a2 + 14))
  {
    v10 = *(a2 + 23);
    v11 = v10 + *(a2 + 24);
    *(this + 26) = v11;
    v14 = *(a2 + 50);
    v13 = (a2 + 200);
    v12 = v14;
    if (*(v13 + 56) != 1 || !v12)
    {
      return this;
    }

    v29[0] = 0;
    v30 = 0;
    memset(v28, 0, 44);
    sg_per_io_crypto::clone_with_offset(v13, v10, v11, v32);
    sg_per_io_crypto::sg_per_io_crypto(v29, v32);
    v30 = 1;
    sg_entry::operator=(this, v28);
  }

  else
  {
    v15 = *(a2 + 8);
    v16 = *(a2 + 24);
    *v33 = v15;
    *&v33[16] = v16;
    v34 = *(a2 + 40);
    v35 = *(a2 + 56);
    v17 = *(a2 + 9);
    v36 = *(a2 + 8);
    v37 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = *a3;
    }

    v38 = *(a2 + 5);
    v18 = *(a3 + 1);
    v19 = *(a3 + 2);
    v20 = *(a3 + 8);
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v15 == v9 && *&v33[8] == __PAIR128__(v19, v18))
    {
      v21 = 0;
    }

    else
    {
      v22 = 0;
      do
      {
        sg_vec_ns::details::buffer_iterator::sync(v33);
        v23 = v37;
        if (v37)
        {
          atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
          v24 = DWORD2(v38);
          std::__shared_weak_count::__release_shared[abi:ne200100](v23);
        }

        else
        {
          v24 = DWORD2(v38);
        }

        v22 += v24;
        sg_vec_ns::details::buffer_iterator::operator++(v33);
      }

      while (*v33 != v9 || *&v33[8] != v18 || *&v33[16] != v19);
      v21 = v22;
    }

    *(this + 26) = *(a2 + 23) + v21;
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    if (v37)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v37);
    }

    sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v28, (a2 + 272));
    sg_vec_ns::details::sg_vec_iterator::make_val(this, v28, v32);
    sg_entry::operator=(this, v32);
    if (*(&v32[0] + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v32[0] + 1));
    }

    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }
  }

  if (*(&v28[0] + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v28[0] + 1));
  }

  return this;
}

void sub_248F833B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  v40 = *(v38 + 184);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  v41 = *(v38 + 8);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  _Unwind_Resume(exception_object);
}

sg_vec_ref *sg_vec_ns::generate_vec_ref@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, sg_vec_ref *a6@<X8>)
{
  v9 = *(a2 + 208) - a3;
  if (v9 <= a4)
  {
    v9 = a4;
  }

  if (v9 < a5)
  {
    a5 = v9;
  }

  sg_vec_ref::sg_vec_ref(a6, a1 + 120, a2 + 120, a3, a5, *(*(a1 + 112) + 264));
  result = sg_vec_ns::details::sg_vec_iterator::operator==(a1, a2);
  if ((result & 1) == 0)
  {
    v13 = *(a1 + 48);
    v12 = (a1 + 48);
    v11 = v13;
    if (*(v12 + 56) == 1 && v11 != 0)
    {
      return sg_vec_ref::attach_per_io_crypto(a6, v12);
    }
  }

  return result;
}

void *sg_vec_ns::make@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v15[15] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v4 = a1[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a1[3];
  v7 = a1[4];
  v13 = v15;
  v15[0] = v5;
  v15[1] = v4;
  v15[2] = v7;
  v14 = xmmword_248F9C7F0;
  sg_vec::sg_vec(a2, &v13, v6, a1[2], *(a1 + 10));
  v10 = *(a1 + 12);
  v9 = (a1 + 6);
  v8 = v10;
  if (*(v9 + 56) == 1 && v8)
  {
    sg_vec_ref::attach_per_io_crypto((a2 + 208), v9);
  }

  result = boost::container::vector<std::pair<std::shared_ptr<char>,unsigned long>,boost::container::small_vector_allocator<std::pair<std::shared_ptr<char>,unsigned long>,boost::container::new_allocator<void>,void>,void>::~vector(&v13);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248F835D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  sg_vec::~sg_vec(v10);
  boost::container::vector<std::pair<std::shared_ptr<char>,unsigned long>,boost::container::small_vector_allocator<std::pair<std::shared_ptr<char>,unsigned long>,boost::container::new_allocator<void>,void>,void>::~vector(&a10);
  _Unwind_Resume(a1);
}

unint64_t fill_written_zeros(const sg_vec_ns::details::sg_vec_iterator *a1, const sg_vec_ns::details::sg_vec_iterator *a2)
{
  if (!sg_vec_ns::details::sg_vec_iterator::operator==(a1, a2) && *(a1 + 104) == 1 && *(a1 + 12) != 0)
  {
    fill_vectorized_zeros(a1, a2);
  }

  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v10, a1);
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(&v7, a2);
  v5 = for_each_written_sg_in_vec<io_result_t (&)(sg_entry const&)>(zero_sg_entry, v10, &v7, 0xFFFFFFFFFFFFFFFFLL);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return v5;
}

void sub_248F836C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a9);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a37);
  _Unwind_Resume(a1);
}

void fill_vectorized_zeros(const sg_vec_ns::details::sg_vec_iterator *a1, const sg_vec_ns::details::sg_vec_iterator *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 12);
  if (v4 == 3)
  {
    crypto::context::aes_xts_ans_kdf2::aes_xts_ans_kdf2(v19, 0, a1 + 56, *(a1 + 22));
    crypto::context::aes_xts_ans_kdf2::aes_xts_ans_kdf2(v27);
    v28 = 2;
    crypto::context::aes_xts_ans_kdf2::~aes_xts_ans_kdf2(v19);
  }

  else if (v4 == 2)
  {
    crypto::context::aes_xts::aes_xts(v19, 0, a1 + 56, a1 + 72, *(a1 + 22));
    crypto::context::aes_xts::aes_xts(v27, v19);
    v28 = 1;
    v19[0] = &unk_285BD82F8;
    std::unique_ptr<ccxts_ctx [],crypto::context::aes::cc_mode_deleter<ccxts_ctx,ccmode_xts>>::reset[abi:ne200100](&v22);
    v19[0] = &unk_285BD3848;
    if (__p)
    {
      v21 = __p;
      operator delete(__p);
    }
  }

  else
  {
    crypto::context::aes_iv::aes_iv(&v18, a1 + 72);
    crypto::context::aes_cbc::aes_cbc(v19, 0, a1 + 56, &v18, *(a1 + 22));
    crypto::context::aes_cbc::aes_cbc(v27, v19);
    v28 = 0;
    v19[0] = &unk_285BD82D0;
    std::unique_ptr<cccbc_ctx [],crypto::context::aes::cc_mode_deleter<cccbc_ctx,ccmode_cbc>>::reset[abi:ne200100](v23);
    v5 = v22;
    v22 = 0;
    if (v5)
    {
      MEMORY[0x24C1ED710](v5, 0x1000C8015230203);
    }

    v19[0] = &unk_285BD3848;
    if (__p)
    {
      v21 = __p;
      operator delete(__p);
    }

    v6 = v18;
    v18 = 0;
    if (v6)
    {
      MEMORY[0x24C1ED710](v6, 0x1000C8015230203);
    }
  }

  v7 = *(a1 + 22);
  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<crypto::context::aes_cbc,crypto::context::aes_xts,crypto::context::aes_xts_ans_kdf2>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v25, v27);
  v26 = v7;
  v8 = *(a1 + 12) - *(a1 + 26);
  v24[0] = &unk_285C051C0;
  v24[1] = v8;
  v24[3] = v24;
  Backend::Backend(v11);
  v11[0] = &unk_285BD8420;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v10, a1);
  std::__function::__value_func<sg_entry ()(sg_entry const&)>::__value_func[abi:ne200100](v17, v24);
  std::__function::__value_func<sg_entry ()(sg_entry const&)>::__value_func[abi:ne200100](v16, v17);
  boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default>::transform_iterator(&v18, v10, v16);
  std::__function::__value_func<sg_entry ()(sg_entry const&)>::~__value_func[abi:ne200100](v16);
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v9, a2);
  std::__function::__value_func<sg_entry ()(sg_entry const&)>::__value_func[abi:ne200100](v15, v24);
  std::__function::__value_func<sg_entry ()(sg_entry const&)>::__value_func[abi:ne200100](v29, v15);
  boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default>::transform_iterator(v16, v9, v29);
  std::__function::__value_func<sg_entry ()(sg_entry const&)>::~__value_func[abi:ne200100](v29);
  crypto::crypt_op::crypt_consecutive_vector_with_futures<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default>>::crypt_consecutive_vector_with_futures(v19, v25, v11, &v18, v16, 0, 0);
}

void sub_248F83ADC(_Unwind_Exception *a1)
{
  crypto::context::aes_cbc::~aes_cbc(&STACK[0x450]);
  v2 = STACK[0x350];
  STACK[0x350] = 0;
  if (v2)
  {
    MEMORY[0x24C1ED710](v2, 0x1000C8015230203);
  }

  _Unwind_Resume(a1);
}

unint64_t for_each_written_sg_in_vec<io_result_t (&)(sg_entry const&)>(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  sg_entry::sg_entry(v26, a2);
  v28 = *(a2 + 112);
  v29 = *(a2 + 120);
  v30 = *(a2 + 136);
  v31 = *(a2 + 152);
  v32 = *(a2 + 168);
  v8 = *(a2 + 176);
  v9 = *(a2 + 192);
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  v33 = v8;
  v34 = v9;
  v36 = *(a2 + 216);
  v35 = *(a2 + 208);
  sg_entry::sg_entry(&v15, a3);
  v17 = *(a3 + 112);
  v18 = *(a3 + 120);
  v19 = *(a3 + 136);
  v20 = *(a3 + 152);
  v21 = *(a3 + 168);
  v10 = *(a3 + 176);
  v11 = *(a3 + 192);
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  v22 = v10;
  v23 = v11;
  v12 = *(a3 + 208);
  v25 = *(a3 + 216);
  v24 = v12;
  v13 = details::for_each_sg_in_vec_internal<io_result_t (&)(sg_entry const&)>(a1, v26, &v15, a4, 1);
  if (*(&v22 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v22 + 1));
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (*(&v33 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v33 + 1));
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  return v13;
}

void sub_248F83D48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a9);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a37);
  _Unwind_Resume(a1);
}

unint64_t fill_zeros(const sg_vec_ns::details::sg_vec_iterator *a1, const sg_vec_ns::details::sg_vec_iterator *a2)
{
  if (!sg_vec_ns::details::sg_vec_iterator::operator==(a1, a2) && *(a1 + 104) == 1 && *(a1 + 12) != 0)
  {
    sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v33, a1);
    sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v22, a2);
    sg_entry::sg_entry(&v55, v33);
    v57 = v35;
    v58 = v36;
    v59 = v37;
    v60 = v38;
    v61 = v39;
    v6 = v40;
    v40 = 0uLL;
    v62 = v6;
    v63 = v41;
    v65 = v43;
    v64 = v42;
    sg_entry::sg_entry(v44, v22);
    v7 = 0;
    v46 = v24;
    v47 = v25;
    v48 = v26;
    v49 = v27;
    v50 = v28;
    v8 = v29;
    v29 = 0uLL;
    v51 = v8;
    v52 = v30;
    v9 = v31;
    v54 = v32;
    v53 = v31;
    v74[0] = 0;
    v83 = 0;
    do
    {
      if (sg_vec_ns::details::sg_vec_iterator::operator==(&v55, v44))
      {
        break;
      }

      if (v64 >= v9 || v7 == -1)
      {
        break;
      }

      if (DIDebugLogsEnabled())
      {
        *&v71 = "details::for_each_sg_in_vec_internal(Fn &&, sg_vec_ref::iterator, sg_vec::iterator, size_t, BOOL) [Fn = (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/app/backends/sg_vec.cpp:455:28)]";
        *(&v71 + 1) = 104;
        LODWORD(v72) = 2;
        di_log::logger<di_log::log_printer<624ul>>::logger(v67, &v71);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v69, "sg: ", 4);
        operator<<(&v69, &v55);
        std::ostream::~ostream();
        di_log::logger_buf<di_log::log_printer<624ul>>::~logger_buf(v67);
        MEMORY[0x24C1ED6A0](&v70);
      }

      v67[0] = 0;
      v67[1] = v9;
      v68 = 2;
      trim_sg_to_interval(&v55, v67, &v71);
      v11 = v72;
      v12 = v72 >= 0 || v72 == 0;
      v13 = v12;
      if (v12)
      {
        v14 = v73;
        if (v64 > v73 || v53 - v64 < v72)
        {
          sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v66, &v55);
          sg_vec_ns::generate_vec_ref(v66, v44, v14, v11, 0xFFFFFFFFFFFFFFFFLL, v67);
          std::optional<sg_vec_ref>::operator=[abi:ne200100]<sg_vec_ref,void>(v74, v67);
          sg_vec_ref::~sg_vec_ref(v67);
          sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(v66);
          sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v67, &v80);
          sg_vec_ns::details::sg_vec_iterator::operator=(&v55, v67);
          sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(v67);
          sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v67, &v77);
          sg_vec_ns::details::sg_vec_iterator::operator=(v44, v67);
          sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(v67);
        }

        sg_vec_ns::details::sg_vec_iterator::operator+=(&v55, v11);
        v7 += v11;
      }

      if (*(&v71 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v71 + 1));
      }
    }

    while ((v13 & 1) != 0);
    if (v83 == 1)
    {
      if (v82)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v82);
      }

      if (v81)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v81);
      }

      if (v79)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v79);
      }

      if (v78)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v78);
      }

      if (v76)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v76);
      }

      if (v75)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v75);
      }
    }

    if (*(&v51 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v51 + 1));
    }

    if (v45)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v45);
    }

    if (*(&v62 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v62 + 1));
    }

    if (v56)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v56);
    }

    if (*(&v29 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v29 + 1));
    }

    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    if (*(&v40 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v40 + 1));
    }

    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }

    fill_vectorized_zeros(a1, a2);
  }

  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v19, a1);
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(&v16, a2);
  v5 = for_each_sg_in_vec<io_result_t (&)(sg_entry const&)>(zero_sg_entry, v19, &v16, 0xFFFFFFFFFFFFFFFFLL);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  return v5;
}

void sub_248F84198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&STACK[0x620]);
  if (STACK[0x8F8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x8F8]);
  }

  std::optional<sg_vec_ref>::~optional(&STACK[0x960]);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&STACK[0x380]);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&STACK[0x460]);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a65);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&STACK[0x2A0]);
  _Unwind_Resume(a1);
}

unint64_t for_each_sg_in_vec<io_result_t (&)(sg_entry const&)>(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  sg_entry::sg_entry(v26, a2);
  v28 = *(a2 + 112);
  v29 = *(a2 + 120);
  v30 = *(a2 + 136);
  v31 = *(a2 + 152);
  v32 = *(a2 + 168);
  v8 = *(a2 + 176);
  v9 = *(a2 + 192);
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  v33 = v8;
  v34 = v9;
  v36 = *(a2 + 216);
  v35 = *(a2 + 208);
  sg_entry::sg_entry(&v15, a3);
  v17 = *(a3 + 112);
  v18 = *(a3 + 120);
  v19 = *(a3 + 136);
  v20 = *(a3 + 152);
  v21 = *(a3 + 168);
  v10 = *(a3 + 176);
  v11 = *(a3 + 192);
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  v22 = v10;
  v23 = v11;
  v12 = *(a3 + 208);
  v25 = *(a3 + 216);
  v24 = v12;
  v13 = details::for_each_sg_in_vec_internal<io_result_t (&)(sg_entry const&)>(a1, v26, &v15, a4, 0);
  if (*(&v22 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v22 + 1));
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (*(&v33 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v33 + 1));
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  return v13;
}

void sub_248F843AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a9);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a37);
  _Unwind_Resume(a1);
}

uint64_t std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>::pair[abi:ne200100]<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sg_entry::sg_entry(a1, a2);
  *(v6 + 112) = *(a2 + 112);
  *(v6 + 120) = *(a2 + 120);
  *(v6 + 128) = *(a2 + 128);
  v7 = *(a2 + 136);
  v8 = *(a2 + 152);
  *(v6 + 168) = *(a2 + 168);
  *(v6 + 152) = v8;
  *(v6 + 136) = v7;
  *(v6 + 176) = *(a2 + 176);
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(v6 + 192) = *(a2 + 192);
  v9 = *(a2 + 208);
  *(v6 + 216) = *(a2 + 216);
  *(v6 + 208) = v9;
  sg_entry::sg_entry(v6 + 224, a3);
  *(a1 + 336) = *(a3 + 112);
  *(a1 + 344) = *(a3 + 120);
  *(a1 + 352) = *(a3 + 128);
  v10 = *(a3 + 136);
  v11 = *(a3 + 152);
  *(a1 + 392) = *(a3 + 168);
  *(a1 + 360) = v10;
  *(a1 + 376) = v11;
  *(a1 + 400) = *(a3 + 176);
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  *(a1 + 416) = *(a3 + 192);
  v12 = *(a3 + 208);
  *(a1 + 440) = *(a3 + 216);
  *(a1 + 432) = v12;
  return a1;
}

sg_vec_ns::details::sg_vec_iterator *std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>::pair[abi:ne200100]<sg_vec_ns::details::sg_vec_iterator&,sg_vec_ns::details::sg_vec_iterator&,0>(sg_vec_ns::details::sg_vec_iterator *a1, const sg_vec_ns::details::sg_vec_iterator *a2, const sg_vec_ns::details::sg_vec_iterator *a3)
{
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(a1, a2);
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator((v5 + 224), a3);
  return a1;
}

uint64_t boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default>::~transform_iterator(uint64_t a1)
{
  std::__function::__value_func<sg_entry ()(sg_entry const&)>::~__value_func[abi:ne200100](a1 + 224);
  v2 = *(a1 + 184);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t std::__function::__func<fill_vectorized_zeros(sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::$_0,std::allocator<fill_vectorized_zeros(sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::$_0>,sg_entry ()(sg_entry const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285C051C0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<fill_vectorized_zeros(sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::$_0,std::allocator<fill_vectorized_zeros(sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::$_0>,sg_entry ()(sg_entry const&)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sg_entry::sg_entry(&v5, a2);
  v7 += *(a1 + 8);
  if (v8 == 1)
  {
    v8 = 0;
  }

  sg_entry::sg_entry(a3, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_248F84668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<fill_vectorized_zeros(sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::$_0,std::allocator<fill_vectorized_zeros(sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::$_0>,sg_entry ()(sg_entry const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void crypto::crypt_op::crypt_consecutive_vector::crypt_consecutive_vector<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default>>(uint64_t a1, uint64_t a2, uint64_t a3, const sg_vec_ns::details::sg_vec_iterator *a4, const sg_vec_ns::details::sg_vec_iterator *a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v27[4] = *MEMORY[0x277D85DE8];
  v14 = MEMORY[0x277D85FA0];
  v15 = *MEMORY[0x277D85FA0];
  v16 = *(a2 + 152);
  crypto::details::buffer_aligner::backend_op_to_different_buffer_fn(a6, v19);
  v17 = crypto::details::buffer_aligner::calc_total_sg_size<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default>>(a4, a5, v15, v16, v19);
  crypto::details::sg_allocator::sg_allocator(a1, v17, *v14);
  std::__function::__value_func<BOOL ()(sg_entry const&)>::~__value_func[abi:ne200100](v19);
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  *(a1 + 80) = v8;
  *(a1 + 88) = a7;
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v24, a4);
  std::__function::__value_func<sg_entry ()(sg_entry const&)>::__value_func[abi:ne200100](v27, a4 + 224);
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v20, a5);
  std::__function::__value_func<sg_entry ()(sg_entry const&)>::__value_func[abi:ne200100](v23, a5 + 224);
  v18 = std::distance[abi:ne200100]<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default>>(v24, v20);
  std::__function::__value_func<sg_entry ()(sg_entry const&)>::~__value_func[abi:ne200100](v23);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  std::__function::__value_func<sg_entry ()(sg_entry const&)>::~__value_func[abi:ne200100](v27);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  *(a1 + 96) = v18;
  is_mul_ok(3 * v18, 0x18uLL);
  operator new[]();
}

void sub_248F84B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__function::__value_func<crypto::details::buffer_aligner::inout_t ()(char *,char *,unsigned long)>::~__value_func[abi:ne200100](v12 + 32);
  std::__function::__value_func<BOOL ()(sg_entry const&)>::~__value_func[abi:ne200100](va);
  fixed_size_vector_t<crypto::crypt_op::crypt_consecutive_vector_base::micro_copy_op>::~fixed_size_vector_t(v11 + 25, v14);
  fixed_size_vector_t<crypto::crypt_op::crypt_consecutive_vector_base::micro_crypt_op>::~fixed_size_vector_t(v11 + 22, v15);
  fixed_size_vector_t<lw_future_managed_setter<int,0>>::~fixed_size_vector_t(v11 + 19);
  fixed_size_vector_t<sg_entry>::~fixed_size_vector_t(v11 + 16);
  fixed_size_vector_t<lw_future<int>>::~fixed_size_vector_t(v11 + 13);
  std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100](v11, 0);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100]((v11 + 1));
  _Unwind_Resume(a1);
}

void sub_248F84C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<BOOL ()(sg_entry const&)>::~__value_func[abi:ne200100](va);
  JUMPOUT(0x248F84C54);
}

uint64_t crypto::details::buffer_aligner::calc_total_sg_size<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default>>(const sg_vec_ns::details::sg_vec_iterator *a1, const sg_vec_ns::details::sg_vec_iterator *a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v44[4] = *MEMORY[0x277D85DE8];
  if (sg_vec_ns::details::sg_vec_iterator::operator==(a1, a2))
  {
    v10 = 0;
    goto LABEL_44;
  }

  boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default>::dereference(a1);
  sg_entry::sg_entry(v27, v38);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  v11 = v29 / a3 * a3;
  container_it<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default>>::container_it(v38, a1, a2);
  container_it<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default>>::begin(v38, v34);
  container_it<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default>>::end(v38, v30);
  v10 = 0;
  while (!sg_vec_ns::details::sg_vec_iterator::operator==(v34, v30))
  {
    boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default>::dereference(v34);
    sg_entry::sg_entry(v21, v25);
    v12 = *(a5 + 24);
    if (!v12)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    if ((*(*v12 + 48))(v12, v21))
    {
      v13 = v24 - v11 + v23;
      if (v13 % a3)
      {
        v14 = a3 - v13 % a3;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14 + v13;
      v10 += v15;
      v11 += v15;
    }

    else
    {
      v16 = a3;
      if (!(v24 % a4))
      {
        if (!(v23 % a4))
        {
          v11 = v23 + v24;
          goto LABEL_20;
        }

        v16 = 0;
      }

      v17 = v16 + v10;
      if ((v23 + v24) % a4)
      {
        v18 = a3;
      }

      else
      {
        v18 = 0;
      }

      v10 = v17 + v18;
      v11 = (a4 - 1 + v23 + v24) / a4 * a4;
    }

LABEL_20:
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    sg_vec_ns::details::sg_vec_iterator::operator++(v34);
  }

  std::__function::__value_func<sg_entry ()(sg_entry const&)>::~__value_func[abi:ne200100](&v33);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  std::__function::__value_func<sg_entry ()(sg_entry const&)>::~__value_func[abi:ne200100](&v37);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  std::__function::__value_func<sg_entry ()(sg_entry const&)>::~__value_func[abi:ne200100](v44);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  std::__function::__value_func<sg_entry ()(sg_entry const&)>::~__value_func[abi:ne200100](&v41);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

LABEL_44:
  v19 = *MEMORY[0x277D85DE8];
  return v10;
}

void sub_248F84F08(_Unwind_Exception *a1)
{
  if (STACK[0x360])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x360]);
  }

  _Unwind_Resume(a1);
}

uint64_t std::distance[abi:ne200100]<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default>>(sg_vec_ns::details::sg_vec_iterator *a1, const sg_vec_ns::details::sg_vec_iterator *a2)
{
  v14[4] = *MEMORY[0x277D85DE8];
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v11, a1);
  std::__function::__value_func<sg_entry ()(sg_entry const&)>::__value_func[abi:ne200100](v14, a1 + 224);
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v7, a2);
  std::__function::__value_func<sg_entry ()(sg_entry const&)>::__value_func[abi:ne200100](v10, a2 + 224);
  for (i = 0; !sg_vec_ns::details::sg_vec_iterator::operator==(v11, v7); ++i)
  {
    sg_vec_ns::details::sg_vec_iterator::operator++(v11);
  }

  std::__function::__value_func<sg_entry ()(sg_entry const&)>::~__value_func[abi:ne200100](v10);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  std::__function::__value_func<sg_entry ()(sg_entry const&)>::~__value_func[abi:ne200100](v14);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v5 = *MEMORY[0x277D85DE8];
  return i;
}

void sub_248F8508C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default>::~transform_iterator(&a10);
  boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default>::~transform_iterator(&a42);
  _Unwind_Resume(a1);
}

void crypto::details::buffer_aligner::operator()<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default>>(void *a1, const sg_vec_ns::details::sg_vec_iterator *a2, const sg_vec_ns::details::sg_vec_iterator *a3)
{
  v25[4] = *MEMORY[0x277D85DE8];
  container_it<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default>>::container_it(v19, a2, a3);
  container_it<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default>>::begin(v19, v15);
  container_it<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default>>::end(v19, v11);
  while (!sg_vec_ns::details::sg_vec_iterator::operator==(v15, v11))
  {
    boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default>::dereference(v15);
    sg_entry::sg_entry(&v6, v9);
    v4 = crypto::details::buffer_aligner::try_append_to_last_sg(a1, &v6, 0);
    if (v4 != v8)
    {
      crypto::details::buffer_aligner::handle_unaligned_sg(a1, &v6, v4, 0);
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    sg_vec_ns::details::sg_vec_iterator::operator++(v15);
  }

  std::__function::__value_func<sg_entry ()(sg_entry const&)>::~__value_func[abi:ne200100](&v14);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__function::__value_func<sg_entry ()(sg_entry const&)>::~__value_func[abi:ne200100](&v18);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  std::__function::__value_func<sg_entry ()(sg_entry const&)>::~__value_func[abi:ne200100](v25);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  std::__function::__value_func<sg_entry ()(sg_entry const&)>::~__value_func[abi:ne200100](&v22);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_248F8525C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default>::~transform_iterator(&a38);
  boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default>::~transform_iterator(&a70);
  container_it<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default>>::~container_it(&STACK[0x2E8]);
  _Unwind_Resume(a1);
}

void *container_it<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default>>::~container_it(void *a1)
{
  std::__function::__value_func<sg_entry ()(sg_entry const&)>::~__value_func[abi:ne200100]((a1 + 60));
  v2 = a1[55];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[33];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::__function::__value_func<sg_entry ()(sg_entry const&)>::~__value_func[abi:ne200100]((a1 + 28));
  v4 = a1[23];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = a1[1];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return a1;
}

uint64_t boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default>::dereference(uint64_t a1)
{
  v2 = *(a1 + 248);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t container_it<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default>>::container_it(uint64_t a1, const sg_vec_ns::details::sg_vec_iterator *a2, const sg_vec_ns::details::sg_vec_iterator *a3)
{
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(a1, a2);
  std::__function::__value_func<sg_entry ()(sg_entry const&)>::__value_func[abi:ne200100](a1 + 224, a2 + 224);
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator((a1 + 256), a3);
  std::__function::__value_func<sg_entry ()(sg_entry const&)>::__value_func[abi:ne200100](a1 + 480, a3 + 224);
  return a1;
}

uint64_t std::__function::__func<crypto::crypt_op::crypt_consecutive_vector::crypt_consecutive_vector<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default>>(crypto::crypt_op&,Backend &,boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default> const&,boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default> const&,Backend::op,long long)::{lambda(char *,char *,unsigned long)#1},std::allocator<crypto::crypt_op::crypt_consecutive_vector::crypt_consecutive_vector<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default>>(crypto::crypt_op&,Backend &,boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default> const&,boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default> const&,Backend::op,long long)::{lambda(char *,char *,unsigned long)#1}>,crypto::details::buffer_aligner::inout_t ()(char *,char *,unsigned long)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  result = *a2;
  v4 = *a3;
  return result;
}

uint64_t std::__function::__func<crypto::crypt_op::crypt_consecutive_vector::crypt_consecutive_vector<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default>>(crypto::crypt_op&,Backend &,boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default> const&,boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default> const&,Backend::op,long long)::{lambda(char *,char *,unsigned long)#1},std::allocator<crypto::crypt_op::crypt_consecutive_vector::crypt_consecutive_vector<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default>>(crypto::crypt_op&,Backend &,boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default> const&,boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default> const&,Backend::op,long long)::{lambda(char *,char *,unsigned long)#1}>,crypto::details::buffer_aligner::inout_t ()(char *,char *,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const void *std::__function::__func<crypto::crypt_op::crypt_consecutive_vector::crypt_consecutive_vector<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default>>(crypto::crypt_op&,Backend &,boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default> const&,boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default> const&,Backend::op,long long)::{lambda(char *,char *,unsigned long)#2},std::allocator<crypto::crypt_op::crypt_consecutive_vector::crypt_consecutive_vector<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default>>(crypto::crypt_op&,Backend &,boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default> const&,boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default> const&,Backend::op,long long)::{lambda(char *,char *,unsigned long)#2}>,crypto::details::buffer_aligner::inout_t ()(char *,char *,unsigned long)>::operator()(uint64_t a1, void **a2, const void **a3, size_t *a4)
{
  v4 = *a3;
  memcpy(*a2, *a3, *a4);
  return v4;
}

uint64_t std::__function::__func<crypto::crypt_op::crypt_consecutive_vector::crypt_consecutive_vector<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default>>(crypto::crypt_op&,Backend &,boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default> const&,boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default> const&,Backend::op,long long)::{lambda(char *,char *,unsigned long)#2},std::allocator<crypto::crypt_op::crypt_consecutive_vector::crypt_consecutive_vector<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default>>(crypto::crypt_op&,Backend &,boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default> const&,boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default> const&,Backend::op,long long)::{lambda(char *,char *,unsigned long)#2}>,crypto::details::buffer_aligner::inout_t ()(char *,char *,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t crypto::details::unset_futures_errors_reporter<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default>>::unset_futures_errors_reporter(uint64_t a1, uint64_t a2, sg_vec_ns::details::sg_vec_iterator *a3, const sg_vec_ns::details::sg_vec_iterator *a4, int a5)
{
  *a1 = a2;
  v9 = a1 + 232;
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator((a1 + 8), a3);
  std::__function::__value_func<sg_entry ()(sg_entry const&)>::__value_func[abi:ne200100](v9, a3 + 224);
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator((a1 + 264), a4);
  std::__function::__value_func<sg_entry ()(sg_entry const&)>::__value_func[abi:ne200100](a1 + 488, a4 + 224);
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator((a1 + 520), a3);
  std::__function::__value_func<sg_entry ()(sg_entry const&)>::__value_func[abi:ne200100](a1 + 744, a3 + 224);
  *(a1 + 776) = a5;
  return a1;
}

void sub_248F85714(_Unwind_Exception *a1)
{
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator((v1 + 520));
  boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default>::~transform_iterator(v1 + 264);
  boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default>::~transform_iterator(v1 + 8);
  _Unwind_Resume(a1);
}

sg_vec_ns::details::sg_vec_iterator *boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default>::transform_iterator(sg_vec_ns::details::sg_vec_iterator *a1, const sg_vec_ns::details::sg_vec_iterator *a2, uint64_t a3)
{
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(a1, a2);
  std::__function::__value_func<sg_entry ()(sg_entry const&)>::__value_func[abi:ne200100](v5 + 224, a3);
  return a1;
}

void crypto::crypt_op::crypt_consecutive_vector_with_futures<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default>>::~crypt_consecutive_vector_with_futures(crypto::crypt_op::crypt_consecutive_vector *a1, const void *a2)
{
  crypto::crypt_op::crypt_consecutive_vector::reset(a1, a2);
  crypto::details::unset_futures_errors_reporter<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default>>::~unset_futures_errors_reporter(a1 + 28);

  crypto::crypt_op::crypt_consecutive_vector::~crypt_consecutive_vector(a1);
}

void *crypto::details::unset_futures_errors_reporter<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sg_vec_ns::details::sg_vec_iterator,boost::use_default,boost::use_default>>::~unset_futures_errors_reporter(void *a1)
{
  (*(**a1 + 152))(*a1);
  std::__function::__value_func<sg_entry ()(sg_entry const&)>::~__value_func[abi:ne200100]((a1 + 93));
  v2 = a1[88];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[66];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::__function::__value_func<sg_entry ()(sg_entry const&)>::~__value_func[abi:ne200100]((a1 + 61));
  v4 = a1[56];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = a1[34];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::__function::__value_func<sg_entry ()(sg_entry const&)>::~__value_func[abi:ne200100]((a1 + 29));
  v6 = a1[24];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = a1[2];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return a1;
}

unint64_t details::for_each_sg_in_vec_internal<io_result_t (&)(sg_entry const&)>(uint64_t (*a1)(__int128 *), const sg_vec_ns::details::sg_vec_iterator *a2, uint64_t a3, unint64_t a4, char a5)
{
  v8 = 0;
  v9 = 0;
  v10 = *(a3 + 208);
  v31[0] = 0;
  v40 = 0;
  while (!sg_vec_ns::details::sg_vec_iterator::operator==(a2, a3))
  {
    if (*(a2 + 26) >= v10 || v9 >= a4)
    {
      break;
    }

    if (DIDebugLogsEnabled())
    {
      *&v29 = "details::for_each_sg_in_vec_internal(Fn &&, sg_vec_ref::iterator, sg_vec::iterator, size_t, BOOL) [Fn = io_result_t (&)(const sg_entry &)]";
      *(&v29 + 1) = 119;
      v30 = 2;
      di_log::logger<di_log::log_printer<624ul>>::logger(v25, &v29);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, "sg: ", 4);
      operator<<(&v27, a2);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<624ul>>::~logger_buf(v25);
      MEMORY[0x24C1ED6A0](&v28);
    }

    v25[0] = 0;
    v25[1] = v10;
    v26 = 2;
    trim_sg_to_interval(a2, v25, &v29);
    v12 = a1(&v29);
    v14 = v12;
    v15 = v12 >= 0 || v12 == 0;
    v16 = v15;
    if (v15)
    {
      v17 = v13;
      if ((v8 & 1) == 0)
      {
        v8 = 1;
      }

      v18 = *(a2 + 26);
      if (v18 > v13 || *(a3 + 208) - v18 < v12)
      {
        sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v24, a2);
        sg_vec_ns::generate_vec_ref(v24, a3, v17, v14, a4, v25);
        std::optional<sg_vec_ref>::operator=[abi:ne200100]<sg_vec_ref,void>(v31, v25);
        sg_vec_ref::~sg_vec_ref(v25);
        sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(v24);
        sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v25, &v37);
        sg_vec_ns::details::sg_vec_iterator::operator=(a2, v25);
        sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(v25);
        sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v25, &v34);
        sg_vec_ns::details::sg_vec_iterator::operator=(a3, v25);
        sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(v25);
      }

      if (a5)
      {
        sg_vec_ns::details::sg_vec_iterator::operator+=(a2, v14);
      }

      else
      {
        sg_vec_ns::details::sg_vec_iterator::operator+=(a2, v14);
      }

      v9 += v14;
    }

    else
    {
      if (v12 >= 0)
      {
        v19 = v12;
      }

      else
      {
        v19 = -v12;
      }

      v21 = -v19;
    }

    if (*(&v29 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v29 + 1));
    }

    if ((v16 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  v21 = v9;
LABEL_35:
  if (v40 == 1)
  {
    if (v39)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v39);
    }

    if (v38)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v38);
    }

    if (v36)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    }

    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }

    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    }

    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }
  }

  return v21;
}

void sub_248F85B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a41);
  if (STACK[0x3D8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x3D8]);
  }

  std::optional<sg_vec_ref>::~optional(&STACK[0x440]);
  _Unwind_Resume(a1);
}

__n128 sg_per_io_crypto::clone_with_offset@<Q0>(sg_per_io_crypto *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *this;
  *(a4 + 8) = *(this + 8);
  result = *(this + 24);
  *(a4 + 24) = result;
  *(a4 + 40) = *(this + 10);
  *(a4 + 48) = a3 - a2 + *(this + 6);
  return result;
}

void sg_per_io_crypto::sg_per_io_crypto(sg_per_io_crypto *this, const sg_per_io_crypto *a2)
{
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *this = *a2;
  *(this + 8) = *(a2 + 8);
  *(this + 24) = *(a2 + 24);
  *(this + 10) = *(a2 + 10);
  *(this + 6) = *(a2 + 6);
}

__n128 sg_per_io_crypto::sg_per_io_crypto(uint64_t a1, int a2, _OWORD *a3, __n128 *a4, int a5, uint64_t a6)
{
  *a1 = a2;
  *(a1 + 8) = *a3;
  result = *a4;
  *(a1 + 24) = *a4;
  *(a1 + 40) = a5;
  *(a1 + 48) = a6;
  return result;
}

BOOL sg_per_io_crypto::operator==(uint64_t a1, uint64_t a2)
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

uint64_t zero_sg_entry(uint64_t a1)
{
  bzero(*a1, *(a1 + 16));
  result = *(a1 + 16);
  v3 = *(a1 + 24);
  return result;
}

void *trim_sg_to_interval@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
        v11 = boost::icl::identity_element<unsigned long long>::value(void)::_value;
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

    return sg_entry::sg_entry<sg_entry const&,void>(a3, result, v13 - v3, 0, v3, result[4]);
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
      v12 = boost::icl::identity_element<unsigned long long>::value(void)::_value;
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

  return sg_entry::sg_entry<sg_entry const&,void>(a3, result, v14, v10, v9, result[4] - v10);
}

void gcd::gcd_group::~gcd_group(NSObject **this)
{
  v1 = *this;
  if (v1)
  {
    dispatch_release(v1);
  }
}

dispatch_queue_t *gcd::gcd_queue::gcd_queue(dispatch_queue_t *a1, char *label, int a3)
{
  switch(a3)
  {
    case 2:
      v6 = MEMORY[0x277D85CD8];
      v5 = label;
      goto LABEL_7;
    case 1:
      global_queue = dispatch_get_global_queue(21, 0);
      v8 = dispatch_queue_create_with_target_V2(label, 0, global_queue);
LABEL_8:
      *a1 = v8;
      return a1;
    case 0:
      v5 = label;
      v6 = 0;
LABEL_7:
      v8 = dispatch_queue_create(v5, v6);
      goto LABEL_8;
  }

  return a1;
}

void *gcd::gcd_queue::gcd_queue(void *result, void *a2)
{
  *result = *a2;
  *a2 = 0;
  return result;
}

void gcd::gcd_queue::async(NSObject **a1, void **a2, uint64_t a3)
{
  v4 = *a2;
  if (v4)
  {
    if (a3)
    {
      v6 = dispatch_time(0, 1000 * a3);
      v7 = *a1;
      v8 = *a2;

      dispatch_after(v6, v7, v8);
    }

    else
    {
      v9 = *a1;

      dispatch_async(v9, v4);
    }
  }
}

uint64_t gcd::gcd_queue::set_target_priority(dispatch_object_t *a1, int a2)
{
  if ((a2 - 1) > 2)
  {
    v3 = 5;
  }

  else
  {
    v3 = *&asc_248FADD28[8 * (a2 - 1)];
  }

  global_queue = dispatch_get_global_queue(v3, 0);
  if (!global_queue)
  {
    return 22;
  }

  dispatch_set_target_queue(*a1, global_queue);
  return 0;
}

void gcd::gcd_block::cancel(void **this)
{
  v1 = *this;
  if (v1)
  {
    dispatch_block_cancel(v1);
  }
}

void gcd::gcd_block::~gcd_block(const void **this)
{
  v2 = *this;
  if (v2)
  {
    dispatch_block_cancel(v2);
    if (*this)
    {
      _Block_release(*this);
    }
  }
}

void gcd::gcd_timer_source::resume(dispatch_object_t *this)
{
  if ((this[4] & 1) == 0)
  {
    dispatch_resume(*this);
    *(this + 32) = 1;
  }
}

void gcd::gcd_timer_source::~gcd_timer_source(dispatch_object_t *this)
{
  v2 = *this;
  if (v2)
  {
    dispatch_source_cancel(v2);
    if ((this[4] & 1) == 0)
    {
      dispatch_resume(*this);
      *(this + 32) = 1;
    }

    dispatch_release(*this);
  }
}

void sub_248F86564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (*(v16 - 104) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::auth_table_entry::public_key,diskimage_uio::crypto::auth_table_entry::symmetric_key,diskimage_uio::crypto::auth_table_entry::unknown,diskimage_uio::crypto::auth_table_entry::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v16 - 128);
  }

  if (*(v16 - 72) == 1)
  {
    diskimage_uio::crypto::auth_table::~auth_table((v16 - 88));
  }

  _Unwind_Resume(exception_object);
}

void *di_log::logger<di_log::log_printer<75ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<75ul>>::logger_buf(a1, a2);
  *a1 = &unk_285C05370;
  a1[45] = &unk_285C05470;
  a1[46] = &unk_285C05498;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285C05370;
  a1[45] = &unk_285C053F8;
  a1[46] = &unk_285C05420;
  return a1;
}

void sub_248F866FC(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<75ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<75ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<75ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void sub_248F869B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, diskimage_uio::diskimage *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, char a22)
{
  std::unique_ptr<diskimage_uio::diskimage>::reset[abi:ne200100](&a10, 0);
  if (a22 == 1)
  {
    diskimage_uio::diskimage_open_params::~diskimage_open_params(&a20);
  }

  _Unwind_Resume(a1);
}

void std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<-[DIOpenParams unlockImageWithOpenParams:]::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,diskimage_uio::crypto::auth_table_entry::passphrase,diskimage_uio::crypto::public_key,diskimage_uio::crypto::symmetric_key,diskimage_uio::crypto::unknown,diskimage_uio::crypto::error> const&>(id **a1@<X0>, diskimage_uio::crypto::details::auth_table_entry_symmetric_key_impl_t **a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  v6 = [**a1 mutableSymmetricKey];

  if (v6)
  {
    v7 = [*v5 mutableSymmetricKey];
    diskimage_uio::crypto::auth_table_entry::symmetric_key::unlock(a2, v7, a3);
  }

  else
  {
    *a3 = 0;
    a3[16] = 1;
  }
}

void non-virtual thunk todi_log::logger<di_log::log_printer<75ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<75ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<75ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<75ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<75ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<75ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<75ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<75ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<75ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<75ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<75ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285C05508;
  di_log::logger_buf<di_log::log_printer<75ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<75ul>>::_sync(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v11 >= 1)
      {
        v6 = std::stringbuf::view[abi:ne200100](a1 + 104);
        if (v7 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v8 = v7;
        if (v7 >= 0x17)
        {
          operator new();
        }

        v10 = v7;
        if (v7)
        {
          memmove(__p, v6, v7);
        }

        *(__p + v8) = 0;
        di_log::log_printer<75ul>::log((a1 + 72), __p);
        if (v10 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        v10 = 0;
        LOBYTE(__p[0]) = 0;
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v10 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_248F871F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<75ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<75ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<75ul>::log(uint64_t *a1, uint64_t *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  if (DIForwardLogs())
  {
    v6 = getDIOSLog();
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
    v21 = 75;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();

    if (v9)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v9);
      free(v9);
    }
  }

  else
  {
    v10 = getDIOSLog();
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
      v17 = v4;
      v18 = 2080;
      v19 = v12;
      v20 = 2048;
      v21 = 75;
      v22 = 2082;
      v23 = v13;
      _os_log_impl(&dword_248DE0000, v10, v11, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t di_log::logger_buf<di_log::log_printer<75ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285C05508;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F87500(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

std::string *workqueue::workqueue::workqueue(std::string *this, __int128 *a2, unint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  *&this[1].__r_.__value_.__l.__data_ = 0u;
  *&this[1].__r_.__value_.__r.__words[2] = 0u;
  this[2].__r_.__value_.__s.__data_[8] = a3 != 0;
  if (a3)
  {
    std::vector<gcd::gcd_queue>::reserve(this[1].__r_.__value_.__r.__words, a3);
    do
    {
      v6 = this;
      if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
      {
        v6 = this->__r_.__value_.__r.__words[0];
      }

      gcd::gcd_queue::gcd_queue(&v13, v6, 0);
      size = this[1].__r_.__value_.__l.__size_;
      if (size >= this[1].__r_.__value_.__r.__words[2])
      {
        v8 = std::vector<gcd::gcd_queue>::__emplace_back_slow_path<gcd::gcd_queue>(&this[1], &v13);
      }

      else
      {
        v8 = gcd::gcd_queue::gcd_queue(size, &v13) + 1;
      }

      this[1].__r_.__value_.__l.__size_ = v8;
      gcd::gcd_group::~gcd_group(&v13);
      --a3;
    }

    while (a3);
  }

  else
  {
    v9 = this;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      v9 = this->__r_.__value_.__r.__words[0];
    }

    gcd::gcd_queue::gcd_queue(&v13, v9, 2);
    v10 = this[1].__r_.__value_.__l.__size_;
    if (v10 >= this[1].__r_.__value_.__r.__words[2])
    {
      v11 = std::vector<gcd::gcd_queue>::__emplace_back_slow_path<gcd::gcd_queue>(&this[1], &v13);
    }

    else
    {
      v11 = gcd::gcd_queue::gcd_queue(v10, &v13) + 1;
    }

    this[1].__r_.__value_.__l.__size_ = v11;
    gcd::gcd_group::~gcd_group(&v13);
  }

  return this;
}

void sub_248F87654(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  gcd::gcd_group::~gcd_group(va);
  std::vector<gcd::gcd_queue>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

void *std::vector<gcd::gcd_queue>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::allocator<std::atomic<DiskImage::Context *> *>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<iovec>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_248F87740(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<gcd::gcd_queue>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t workqueue::workqueue::set_target_priority(uint64_t result, int a2)
{
  v2 = *(result + 24);
  for (i = *(result + 32); v2 != i; ++v2)
  {
    result = gcd::gcd_queue::set_target_priority(v2, a2);
  }

  return result;
}

void workqueue::concurrent_limit::get(std::condition_variable *this)
{
  v5.__m_ = &this[1];
  v5.__owns_ = 1;
  std::mutex::lock(&this[1]);
  v2 = *&this[2].__cv_.__opaque[8];
  if (v2)
  {
    *&this[2].__cv_.__opaque[8] = v2 - 1;
LABEL_5:
    std::mutex::unlock(v5.__m_);
    return;
  }

  do
  {
    std::condition_variable::wait(this, &v5);
    v3 = *&this[2].__cv_.__opaque[8];
  }

  while (!v3);
  owns = v5.__owns_;
  *&this[2].__cv_.__opaque[8] = v3 - 1;
  if (owns)
  {
    goto LABEL_5;
  }
}

void workqueue::concurrent_limit::put(workqueue::concurrent_limit *this)
{
  std::mutex::lock((this + 48));
  ++*(this + 14);
  std::condition_variable::notify_one(this);

  std::mutex::unlock((this + 48));
}

void workqueue::transaction::add(dispatch_group_t *a1, void *a2)
{
  if (*(a1 + 136) == 1)
  {
    workqueue::concurrent_limit::get((a1 + 2));
    v4 = *a1;
    add = atomic_fetch_add(&(*a1)[6], 1uLL);
    v7 = v4 + 3;
    isa = v4[3].isa;
    v8 = add % ((v7[1].isa - isa) >> 3);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 0x40000000;
    v11[2] = ___ZN9workqueue11transaction3addEU13block_pointerFvvE_block_invoke;
    v11[3] = &unk_278F815B0;
    v11[4] = a2;
    v11[5] = a1;
    gcd::gcd_queue::async(isa + v8, a1 + 1, v11);
  }

  else
  {
    v9 = *a1;
    v10 = (v9[3].isa + 8 * (atomic_fetch_add(&(*a1)[6], 1uLL) % ((v9[4].isa - v9[3].isa) >> 3)));

    gcd::gcd_queue::async(v10, a1 + 1, a2);
  }
}

void ___ZN9workqueue11transaction3addEU13block_pointerFvvE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  (*(*(a1 + 32) + 16))();

  workqueue::concurrent_limit::put((v1 + 16));
}

void workqueue::transaction::~transaction(workqueue::transaction *this)
{
  gcd::gcd_group::wait(this + 1, 0xFFFFFFFFFFFFFFFFLL);
  if (*(this + 136) == 1)
  {
    std::mutex::~mutex(this + 1);
    std::condition_variable::~condition_variable((this + 16));
  }

  gcd::gcd_group::~gcd_group(this + 1);
}

uint64_t workqueue::transaction::transaction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  gcd::gcd_group::gcd_group((a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 136) = 0;
  if (a3)
  {
    std::__optional_destruct_base<workqueue::concurrent_limit,false>::reset[abi:ne200100](a1 + 16);
    *(a1 + 16) = 1018212795;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0;
    *(a1 + 64) = 850045863;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 120) = 0;
    *(a1 + 128) = a3;
    *(a1 + 136) = 1;
  }

  return a1;
}

uint64_t workqueue::recurrent_block::recurrent_block(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = a2[3] + 8 * (atomic_fetch_add(a2 + 6, 1uLL) % ((a2[4] - a2[3]) >> 3));
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 0x40000000;
  v7[2] = ___ZN9workqueue15recurrent_blockC2ERNS_9workqueueEU13block_pointerFvvEy_block_invoke;
  v7[3] = &unk_278F815D8;
  v7[4] = a3;
  v7[5] = a1;
  v7[6] = a4;
  gcd::gcd_block::gcd_block((a1 + 16), v7);
  if (*(a1 + 16) && *(*a1 + 56) == 1)
  {
    gcd::gcd_queue::async(*(a1 + 8), (a1 + 16), a4);
  }

  return a1;
}

void ___ZN9workqueue15recurrent_blockC2ERNS_9workqueueEU13block_pointerFvvEy_block_invoke(void *a1)
{
  v2 = a1[5];
  (*(a1[4] + 16))();
  v3 = *(v2 + 8);
  v4 = a1[6];

  gcd::gcd_queue::async(v3, (v2 + 16), v4);
}

void workqueue::recurrent_block::cancel(workqueue::recurrent_block *this)
{
  if (*(this + 2))
  {
    if (*(*this + 56) == 1)
    {
      v2 = *(this + 1);
      v3[0] = MEMORY[0x277D85DD0];
      v3[1] = 0x40000000;
      v3[2] = ___ZN9workqueue15recurrent_block6cancelEv_block_invoke;
      v3[3] = &__block_descriptor_tmp_2_0;
      v3[4] = this;
      gcd::gcd_queue::async(v2, v3);
      gcd::gcd_queue::sync(*(this + 1), &__block_literal_global_10);
    }
  }
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<gcd::gcd_queue>,gcd::gcd_queue*>(uint64_t a1, NSObject **a2, NSObject **a3, void *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = gcd::gcd_queue::gcd_queue(a4, v7++);
      a4 = v8 + 1;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      gcd::gcd_group::~gcd_group(v6++);
    }
  }
}

uint64_t std::__split_buffer<gcd::gcd_queue>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    gcd::gcd_group::~gcd_group((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<gcd::gcd_queue>::__emplace_back_slow_path<gcd::gcd_queue>(uint64_t a1, void *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<iovec>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::allocator<std::atomic<DiskImage::Context *> *>::allocate_at_least[abi:ne200100](a1, v7);
  }

  v14 = 0;
  v15 = 8 * v2;
  gcd::gcd_queue::gcd_queue((8 * v2), a2);
  v16 = (8 * v2 + 8);
  v8 = *(a1 + 8);
  v9 = (8 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<gcd::gcd_queue>,gcd::gcd_queue*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<gcd::gcd_queue>::~__split_buffer(&v14);
  return v13;
}

void sub_248F87EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<gcd::gcd_queue>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__optional_destruct_base<workqueue::concurrent_limit,false>::reset[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 120) == 1)
  {
    std::mutex::~mutex((a1 + 48));
    std::condition_variable::~condition_variable(a1);
    *(a1 + 120) = 0;
  }
}

void waitForDevCB(uint64_t a1, uint64_t a2)
{
  v9 = [[DIIOIterator alloc] initWithIOIterator:a2 retain:1];
  v3 = [[DIIOObject alloc] initWithIteratorNext:v9];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    do
    {
      v6 = [(DIIOObject *)v4 newIteratorWithOptions:3 error:0];
      if (v6)
      {
        while (1)
        {
          v7 = v5;
          v5 = [[DIIOObject alloc] initWithIteratorNext:v6];

          if (!v5 || IOObjectConformsTo([(DIIOObject *)v5 ioObj], "IOMedia"))
          {
            break;
          }

          if (IOObjectIsEqualTo([(DIIOObject *)v5 ioObj], *(a1 + 8)))
          {
            **a1 = 1;

            goto LABEL_9;
          }
        }
      }

      v8 = [[DIIOObject alloc] initWithIteratorNext:v9];
      v4 = v8;
    }

    while (v8);
LABEL_9:
  }
}

uint64_t DiskImages2_Attach(uint64_t a1, void *a2, void *a3)
{
  v11 = 0;
  v12 = 0;
  v5 = [DICommonAttach defaultDiskImageAttach:a1 BSDName:&v12 error:&v11];
  v6 = v12;
  v7 = v11;
  v8 = v7;
  if (v5)
  {
    v9 = 0;
    if (a2)
    {
      *a2 = v6;
    }
  }

  else
  {
    if (a3)
    {
      *a3 = v7;
    }

    v9 = [v8 code];
  }

  return v9;
}

void sub_248F8A158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

iokit_utils::di_io_obj_t *iokit_utils::di_io_obj_t::di_io_obj_t(iokit_utils::di_io_obj_t *this, const char *bsdName)
{
  *this = 0;
  v4 = *MEMORY[0x277CD2898];
  v5 = IOBSDNameMatching(*MEMORY[0x277CD2898], 0, bsdName);
  MatchingService = IOServiceGetMatchingService(v4, v5);
  *this = MatchingService;
  if (!MatchingService)
  {
    v8 = bsdName;
    exception = __cxa_allocate_exception(0x40uLL);
    std::ostringstream::basic_ostringstream[abi:ne200100](v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "device with dev name ", 21);
    v10 = strlen(v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v8, v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " not found in registry", 22);
    v11 = *__error();
    v12 = std::generic_category();
    v13 = DiskImagesRuntimeException::DiskImagesRuntimeException(exception, v14, v11, v12);
  }

  return this;
}

void sub_248F8AA80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  iokit_utils::di_io_obj_base_t<unsigned int>::~di_io_obj_base_t(v2);
  _Unwind_Resume(a1);
}

io_object_t *iokit_utils::di_io_obj_base_t<unsigned int>::~di_io_obj_base_t(io_object_t *a1)
{
  IOObjectRelease(*a1);
  return a1;
}

{
  IOObjectRelease(*a1);
  return a1;
}

iokit_utils::di_io_obj_t *iokit_utils::di_io_obj_t::di_io_obj_t(iokit_utils::di_io_obj_t *this, uint64_t entryID)
{
  *this = 0;
  v4 = IORegistryEntryIDMatching(entryID);
  MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD2898], v4);
  *this = MatchingService;
  if (!MatchingService)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::ostringstream::basic_ostringstream[abi:ne200100](v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "device with registry entry ID 0x", 32);
    *(&v11[1] + *(v11[0] - 24)) = *(&v11[1] + *(v11[0] - 24)) & 0xFFFFFFB5 | 8;
    MEMORY[0x24C1ED3E0](v11, entryID);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " not found in registry", 22);
    v8 = *__error();
    v9 = std::generic_category();
    v10 = DiskImagesRuntimeException::DiskImagesRuntimeException(exception, v11, v8, v9);
  }

  return this;
}

void sub_248F8AC18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  iokit_utils::di_io_obj_base_t<unsigned int>::~di_io_obj_base_t(v2);
  _Unwind_Resume(a1);
}

io_object_t *iokit_utils::di_io_obj_iterator::di_io_obj_iterator(io_object_t *this, uint64_t a2, io_object_t *a3)
{
  v5 = iokit_utils::di_io_obj_base_t<unsigned int>::di_io_obj_base_t(this, a3);
  v5[1] = 0;
  v6 = v5 + 1;
  v7 = *v5;
  if (v7)
  {
    v13 = 0;
    v8 = MEMORY[0x24C1ECFC0](v7, "IOService", a2, &v13);
    if (v8)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      error_code = std::make_error_code(v8);
      *exception = &unk_285BF4E60;
      exception[1] = error_code;
      exception[2] = v12;
      *(exception + 24) = 0;
      *(exception + 48) = 0;
      exception[7] = "Unable to create ioreg iterator";
    }

    *v6 = v13;
    IOObjectRelease(0);
  }

  return this;
}

void sub_248F8AD50(_Unwind_Exception *a1)
{
  iokit_utils::di_io_obj_base_t<unsigned int>::~di_io_obj_base_t(v2);
  iokit_utils::di_io_obj_t::~di_io_obj_t(v1);
  _Unwind_Resume(a1);
}

uint64_t std::make_error_code(uint64_t result)
{
  {
    v1 = result;
    std::make_error_code();
    LODWORD(result) = v1;
  }

  return result;
}

BOOL iokit_utils::di_io_obj_iterator::operator==(io_object_t *a1, io_object_t *a2)
{
  if (IOIteratorIsValid(a1[1]) && *a1)
  {
    v4 = !IOIteratorIsValid(a2[1]) || *a2 == 0;
    if (!v4 && iokit_utils::di_io_obj_base_t<unsigned int>::operator==(a1, a2))
    {
      return 1;
    }
  }

  if (IOIteratorIsValid(a1[1]) && *a1)
  {
    return 0;
  }

  return !IOIteratorIsValid(a2[1]) || *a2 == 0;
}

io_object_t *iokit_utils::di_io_obj_iterator::operator++(io_object_t *a1)
{
  *a1 = IOIteratorNext(a1[1]);
  IOObjectRelease(0);
  return a1;
}

uint64_t iokit_utils::di_io_obj_view::di_io_obj_view(uint64_t this, int a2, const iokit_utils::di_io_obj_t *a3)
{
  *this = a2;
  *(this + 8) = a3;
  return this;
}

uint64_t iokit_utils::di_io_obj_view::begin@<X0>(io_object_t **this@<X0>, void *a2@<X8>)
{
  add_create_expected<iokit_utils::di_io_obj_iterator>::create<unsigned int const&,iokit_utils::di_io_obj_t const&>(this[1], this, &v4);
  unwrap_expected<iokit_utils::di_io_obj_iterator,std::error_code>(&v4, "could not create iterator (begin)", a2);
  return std::expected<iokit_utils::di_io_obj_iterator,std::error_code>::~expected[abi:ne200100](&v4);
}

void sub_248F8AF98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::expected<iokit_utils::di_io_obj_iterator,std::error_code>::~expected[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t add_create_expected<iokit_utils::di_io_obj_iterator>::create<unsigned int const&,iokit_utils::di_io_obj_t const&>@<X0>(io_object_t *a1@<X1>, unsigned int *a2@<X0>, uint64_t a3@<X8>)
{
  iokit_utils::di_io_obj_iterator::di_io_obj_iterator(object, *a2, a1);
  *a3 = *object;
  *object = 0;
  *(a3 + 16) = 1;
  IOObjectRelease(0);
  return IOObjectRelease(object[0]);
}

double unwrap_expected<iokit_utils::di_io_obj_iterator,std::error_code>@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if ((a1[1] & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v7 = *a1;
    *exception = &unk_285BF4E60;
    *(exception + 8) = v7;
    exception[24] = 0;
    exception[48] = 0;
    *(exception + 7) = a2;
  }

  result = *a1;
  *a3 = *a1;
  *a1 = 0;
  return result;
}

uint64_t std::expected<iokit_utils::di_io_obj_iterator,std::error_code>::~expected[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    IOObjectRelease(*(a1 + 4));
    IOObjectRelease(*a1);
  }

  return a1;
}

uint64_t iokit_utils::di_io_obj_view::end@<X0>(iokit_utils::di_io_obj_view *this@<X0>, void *a2@<X8>)
{
  object = 0;
  add_create_expected<iokit_utils::di_io_obj_iterator>::create<unsigned int const&,iokit_utils::di_io_obj_t>(&object, this, &v5);
  IOObjectRelease(object);
  unwrap_expected<iokit_utils::di_io_obj_iterator,std::error_code>(&v5, "could not create iterator (end)", a2);
  return std::expected<iokit_utils::di_io_obj_iterator,std::error_code>::~expected[abi:ne200100](&v5);
}

uint64_t add_create_expected<iokit_utils::di_io_obj_iterator>::create<unsigned int const&,iokit_utils::di_io_obj_t>@<X0>(io_object_t *a1@<X1>, unsigned int *a2@<X0>, uint64_t a3@<X8>)
{
  iokit_utils::di_io_obj_iterator::di_io_obj_iterator(object, *a2, a1);
  *a3 = *object;
  *object = 0;
  *(a3 + 16) = 1;
  IOObjectRelease(0);
  return IOObjectRelease(object[0]);
}

uint64_t DiskImagesRuntimeException::DiskImagesRuntimeException(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_285BF4E60;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  v5 = std::stringbuf::view[abi:ne200100](a2 + 8);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v10) = v6;
  if (v6)
  {
    memmove(&__dst, v5, v6);
  }

  *(&__dst + v7) = 0;
  *(a1 + 24) = __dst;
  *(a1 + 40) = v10;
  *(a1 + 48) = 1;
  return a1;
}

void iokit_utils::di_kern_ret_err_category::~di_kern_ret_err_category(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x24C1ED730);
}

void iokit_utils::di_kern_ret_err_category::message(int __val@<W1>, std::string *a2@<X8>)
{
  std::to_string(&v5, __val);
  v4 = std::string::insert(&v5, 0, "kern_return_t was ", 0x12uLL);
  *a2 = *v4;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_248F8B3CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *diskimage_uio::small_vector_ns::llvm::safe_malloc(size_t this)
{
  while (1)
  {
    v1 = this;
    result = malloc_type_malloc(this, 0x5FF7D6E0uLL);
    if (result)
    {
      break;
    }

    this = 1;
    if (v1)
    {
      abort();
    }
  }

  return result;
}

void *diskimage_uio::small_vector_ns::llvm::safe_calloc(diskimage_uio::small_vector_ns::llvm *this, size_t a2)
{
  result = malloc_type_calloc(this, a2, 0x9DFB66FCuLL);
  if (!result && (this && a2 || (result = malloc_type_malloc(1uLL, 0x5FF7D6E0uLL)) == 0))
  {
    abort();
  }

  return result;
}

void *diskimage_uio::small_vector_ns::llvm::safe_realloc(diskimage_uio::small_vector_ns::llvm *this, size_t a2)
{
  result = malloc_type_realloc(this, a2, 0xB8ADC5CuLL);
  if (!result && (a2 || (result = malloc_type_malloc(1uLL, 0x5FF7D6E0uLL)) == 0))
  {
    abort();
  }

  return result;
}

void diskimage_uio::small_vector_ns::report_size_overflow(diskimage_uio::small_vector_ns *this, unint64_t a2)
{
  std::to_string(&v15, this);
  v3 = std::string::insert(&v15, 0, "SmallVector unable to grow. Requested capacity (", 0x30uLL);
  v4 = *&v3->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  v5 = std::string::append(&v16, ") is larger than maximum value for size type (", 0x2EuLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, a2);
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

  v9 = std::string::append(&v17, p_p, size);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v18, ")", 1uLL);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v19.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v19.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, &v19);
  exception->__vftable = (MEMORY[0x277D828E0] + 16);
  __cxa_throw(exception, off_278F808A0, MEMORY[0x277D825F0]);
}

void sub_248F8B658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 25) < 0)
  {
    operator delete(*(v33 - 48));
  }

  _Unwind_Resume(exception_object);
}

void diskimage_uio::small_vector_ns::report_at_maximum_capacity(diskimage_uio::small_vector_ns *this)
{
  std::to_string(&v4, this);
  v1 = std::string::insert(&v4, 0, "SmallVector capacity unable to grow. Already at maximum size ", 0x3DuLL);
  v2 = *&v1->__r_.__value_.__l.__data_;
  v5.__r_.__value_.__r.__words[2] = v1->__r_.__value_.__r.__words[2];
  *&v5.__r_.__value_.__l.__data_ = v2;
  v1->__r_.__value_.__l.__size_ = 0;
  v1->__r_.__value_.__r.__words[2] = 0;
  v1->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, &v5);
  exception->__vftable = (MEMORY[0x277D828E0] + 16);
  __cxa_throw(exception, off_278F808A0, MEMORY[0x277D825F0]);
}

void sub_248F8B7A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _FSGetLocationFromStatfs(uint64_t a1, char *a2, size_t a3)
{
  v6 = malloc_type_calloc(1uLL, 0x400uLL, 0xC37FC7BBuLL);
  if (v6)
  {
    v7 = v6;
    if (check_mntfromname((a1 + 72)))
    {
      v8 = strstr((a1 + 1112), "://");
      if (!v8 || (v9 = v8 + 3, (v10 = strchr(v8 + 3, 47)) == 0))
      {
        v12 = 22;
LABEL_17:
        free(v7);
        return v12;
      }

      if (v10 - v9 >= 1023)
      {
        v11 = 1023;
      }

      else
      {
        v11 = v10 - v9;
      }

      __memcpy_chk();
      *(v7 + v11) = 0;
      if (!a2)
      {
LABEL_16:
        v12 = 0;
        goto LABEL_17;
      }
    }

    else
    {
      if (strncmp((a1 + 1112), "/dev/disk", 9uLL))
      {
        strncmp((a1 + 1112), "/dev/rdisk", 0xAuLL);
      }

      __strlcpy_chk();
      if (!a2)
      {
        goto LABEL_16;
      }
    }

    strlcpy(a2, v7, a3);
    goto LABEL_16;
  }

  return 12;
}

uint64_t aaS3ContextClone(uint64_t a1)
{
  v2 = malloc(0xAF8uLL);
  v3 = v2;
  if (!v2)
  {
    v7 = 192;
LABEL_26:
    v24 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Context.c", "aaS3ContextClone", v7, 80, *v24, "malloc", v25, v26, v46);
    AAS3ContextDestroy(v3);
    return 0;
  }

  memset_s(v2, 0xAF8uLL, 0, 0xAF8uLL);
  if (*a1)
  {
    *v3 = 1;
    memcpy((v3 + 4), (a1 + 4), 0xAC4uLL);
  }

  v4 = *(a1 + 2760);
  if (v4)
  {
    v5 = strlen(*(a1 + 2760));
    v6 = v5 + 1;
    if (v5 + 1 > 0x2000000000)
    {
      v7 = 198;
      v8 = 2760;
LABEL_24:
      *__error() = 12;
      goto LABEL_25;
    }

    v9 = malloc(v5 + 1);
    if (!v9)
    {
      v7 = 198;
      v8 = 2760;
LABEL_25:
      *(v3 + v8) = 0;
      goto LABEL_26;
    }

    v10 = v9;
    memcpy(v9, v4, v6);
    *(v3 + 2760) = v10;
  }

  v11 = *(a1 + 2768);
  if (v11)
  {
    v12 = strlen(*(a1 + 2768));
    v13 = v12 + 1;
    if (v12 + 1 > 0x2000000000)
    {
      v7 = 199;
      v8 = 2768;
      goto LABEL_24;
    }

    v14 = malloc(v12 + 1);
    if (!v14)
    {
      v7 = 199;
      v8 = 2768;
      goto LABEL_25;
    }

    v15 = v14;
    memcpy(v14, v11, v13);
    *(v3 + 2768) = v15;
  }

  v16 = *(a1 + 2776);
  if (v16)
  {
    v17 = strlen(*(a1 + 2776));
    v18 = v17 + 1;
    if (v17 + 1 > 0x2000000000)
    {
      v7 = 200;
      v8 = 2776;
      goto LABEL_24;
    }

    v19 = malloc(v17 + 1);
    if (!v19)
    {
      v7 = 200;
      v8 = 2776;
      goto LABEL_25;
    }

    v20 = v19;
    memcpy(v19, v16, v18);
    *(v3 + 2776) = v20;
  }

  v21 = *(a1 + 2784);
  if (v21)
  {
    v22 = strlen(*(a1 + 2784));
    v23 = v22 + 1;
    if (v22 + 1 > 0x2000000000)
    {
      v7 = 201;
      v8 = 2784;
      goto LABEL_24;
    }

    v28 = malloc(v22 + 1);
    if (!v28)
    {
      v7 = 201;
      v8 = 2784;
      goto LABEL_25;
    }

    v29 = v28;
    memcpy(v28, v21, v23);
    *(v3 + 2784) = v29;
  }

  v30 = *(a1 + 2792);
  if (v30)
  {
    list = 0;
    p_list = &list;
    while (1)
    {
      v32 = malloc(0x10uLL);
      if (!v32)
      {
        break;
      }

      p_data = &v32->data;
      v32->data = 0;
      v32->next = 0;
      *p_list = v32;
      v34 = strdup(*v30);
      *p_data = v34;
      if (!v34)
      {
        break;
      }

      p_list = (p_data + 1);
      v30 = *(v30 + 8);
      if (!v30)
      {
        v35 = 1;
        v36 = list;
        goto LABEL_38;
      }
    }

    curl_slist_free_all(list);
    v36 = 0;
    v35 = *(a1 + 2792) != 0;
LABEL_38:
    *(v3 + 2792) = v36;
    if (v35 && v36 == 0)
    {
      v7 = 202;
      goto LABEL_26;
    }
  }

  else
  {
    *(v3 + 2792) = 0;
  }

  v38 = *(a1 + 2800);
  if (!v38)
  {
    *(v3 + 2800) = 0;
    return v3;
  }

  list = 0;
  v39 = &list;
  while (1)
  {
    v40 = malloc(0x10uLL);
    if (!v40)
    {
      break;
    }

    v41 = &v40->data;
    v40->data = 0;
    v40->next = 0;
    *v39 = v40;
    v42 = strdup(*v38);
    *v41 = v42;
    if (!v42)
    {
      break;
    }

    v39 = (v41 + 1);
    v38 = *(v38 + 8);
    if (!v38)
    {
      v43 = 1;
      v44 = list;
      goto LABEL_53;
    }
  }

  curl_slist_free_all(list);
  v44 = 0;
  v43 = *(a1 + 2800) != 0;
LABEL_53:
  *(v3 + 2800) = v44;
  if (v43 && v44 == 0)
  {
    v7 = 203;
    goto LABEL_26;
  }

  return v3;
}

void AAS3ContextDestroy(uint64_t a1)
{
  if (a1)
  {
    free(*(a1 + 2760));
    free(*(a1 + 2768));
    free(*(a1 + 2776));
    free(*(a1 + 2784));
    curl_slist_free_all(*(a1 + 2792));
    curl_slist_free_all(*(a1 + 2800));
    memset_s(a1, 0xAF8uLL, 0, 0xAF8uLL);

    free(a1);
  }
}

void *AAS3ContextCreate()
{
  v0 = malloc(0xAF8uLL);
  v1 = v0;
  if (!v0)
  {
    v9 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Context.c", "AAS3ContextCreate", 370, 80, *v9, "malloc", v10, v11, v13);
    goto LABEL_5;
  }

  memset_s(v0, 0xAF8uLL, 0, 0xAF8uLL);
  if ((AAS3ContextSetFieldString(v1, 5, "Not A Ninja/1.0", v2, v3, v4, v5, v6) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Context.c", "AAS3ContextCreate", 373, 80, 0, "set context", v7, v8, v13);
    memset_s(v1, 0xAF8uLL, 0, 0xAF8uLL);
LABEL_5:
    free(v1);
    return 0;
  }

  return v1;
}

uint64_t AAS3ContextSetFieldString(uint64_t a1, int a2, char *__s, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 <= 2)
  {
    switch(a2)
    {
      case 0:
        v10 = 2760;
        if (!__s)
        {
          goto LABEL_21;
        }

        goto LABEL_18;
      case 1:
        v10 = 2768;
        if (!__s)
        {
          goto LABEL_21;
        }

        goto LABEL_18;
      case 2:
        v10 = 2776;
        if (!__s)
        {
          goto LABEL_21;
        }

LABEL_18:
        if (*__s)
        {
          v12 = strlen(__s);
          v13 = v12 + 1;
          if (v12 + 1 < 0x2000000001)
          {
            v18 = malloc(v12 + 1);
            if (v18)
            {
              v14 = v18;
              memcpy(v18, __s, v13);
              goto LABEL_22;
            }
          }

          else
          {
            *__error() = 12;
          }

          v19 = *__error();
          v22 = 414;
LABEL_32:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Context.c", "AAS3ContextSetFieldString", v22, 80, v19, "malloc", v20, v21, v23);
          return 0xFFFFFFFFLL;
        }

LABEL_21:
        v14 = 0;
LABEL_22:
        free(*(a1 + v10));
        result = 0;
        *(a1 + v10) = v14;
        return result;
    }

    goto LABEL_16;
  }

  switch(a2)
  {
    case 3:
      v11 = 2792;
      if (!__s)
      {
        return 0;
      }

LABEL_24:
      if (*__s)
      {
        v16 = curl_slist_append(*(a1 + v11), __s);
        if (v16)
        {
          v17 = v16;
          result = 0;
          *(a1 + v11) = v17;
          return result;
        }

        v19 = *__error();
        v22 = 422;
        goto LABEL_32;
      }

      return 0;
    case 4:
      v11 = 2800;
      if (!__s)
      {
        return 0;
      }

      goto LABEL_24;
    case 5:
      v10 = 2784;
      if (!__s)
      {
        goto LABEL_21;
      }

      goto LABEL_18;
  }

LABEL_16:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Context.c", "AAS3ContextSetFieldString", 406, 80, 0, "invalid field %u", a7, a8, a2);
  return 0xFFFFFFFFLL;
}

uint64_t downloadStreamClose_curl(uint64_t a1)
{
  if (a1)
  {
    if (*a1 >> 62)
    {
      v10.tv_sec = 0;
      *&v10.tv_usec = 0;
      gettimeofday(&v10, 0);
      v2 = v10.tv_sec + v10.tv_usec * 0.000001 - *(a1 + 40);
      v3 = MEMORY[0x277D85DF8];
      fwrite("AAS3DownloadStream (curl)\n", 0x1AuLL, 1uLL, *MEMORY[0x277D85DF8]);
      v4 = *v3;
      v5 = atomic_load((a1 + 32));
      v6 = atomic_load((a1 + 32));
      fprintf(v4, "%12llu bytes downloaded (%.2f MB)\n", v5, vcvtd_n_f64_u64(v6, 0x14uLL));
      v7 = *v3;
      v8 = atomic_load((a1 + 32));
      fprintf(v7, "%12.2f MB/s download speed\n", v8 / v2 * 0.000000953674316);
    }

    s3StreamBaseRelease(a1);
    memset_s(a1, 0x30uLL, 0, 0x30uLL);
    free(a1);
  }

  return 0;
}

AAByteStream_impl *s3DownloadStreamOpen_curl(char *a1, uint64_t a2, uint64_t a3)
{
  curl_global_init(3);
  v6 = AACustomByteStreamOpen();
  v7 = malloc(0x30uLL);
  if (!v7 || (v8 = v7, memset_s(v7, 0x30uLL, 0, 0x30uLL), !v6))
  {
    perror("malloc");
    goto LABEL_7;
  }

  if ((s3StreamBaseInit(v8, a1, a2, a3) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamCurl.c", "s3DownloadStreamOpen_curl", 132, 83, 0, "s3StreamBaseInit", v9, v10, v12.tv_sec);
LABEL_7:
    AAByteStreamClose(v6);
    return 0;
  }

  v12.tv_sec = 0;
  *&v12.tv_usec = 0;
  gettimeofday(&v12, 0);
  v8[5] = v12.tv_sec + v12.tv_usec * 0.000001;
  AACustomByteStreamSetData(v6, v8);
  AACustomByteStreamSetCloseProc(v6, downloadStreamClose_curl);
  AACustomByteStreamSetPReadProc(v6, downloadStreamPRead);
  AACustomByteStreamSetReadProc(v6, downloadStreamRead);
  return v6;
}

uint64_t downloadStreamPRead(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  *&v20 = a2;
  *(&v20 + 1) = a3;
  v21 = 0;
  v5 = a2;
  if (a3)
  {
    v17 = a2;
    v6 = a4 + a3;
    v7 = a4 + a3 - 1;
    while (1)
    {
      snprintf(__str, 0xC8uLL, "Range: bytes=%llu-%llu", v6 - a3, v7);
      v11 = 0;
      v22[0] = __str;
      v22[1] = 0;
      v18 = v20;
      v19 = v21;
      v12 = 125000;
      do
      {
        if (v11)
        {
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamCurl.c", "downloadStreamPRead", 65, 83, "s3Perform retry after %u ms", v8, v9, v10, v12 / 0x3E8);
          usleep(v12);
          v12 *= 2;
        }

        v20 = v18;
        v21 = v19;
        v13 = s3Perform(1u, *(a1 + 8), a1, 0, &v20, 0, v22);
        if ((v13 & 0x80000000) == 0)
        {
          break;
        }
      }

      while (v11++ < 3);
      if (v13 < 0)
      {
        break;
      }

      a3 = *(&v20 + 1);
      if (!*(&v20 + 1))
      {
        v5 = v20;
        a2 = v17;
        goto LABEL_12;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamCurl.c", "downloadStreamPRead", 81, 83, 0, "s3Perform failed (after retry), %s", v9, v10, __str);
    result = -1;
  }

  else
  {
LABEL_12:
    result = v5 - a2;
    atomic_fetch_add_explicit((a1 + 32), v5 - a2, memory_order_relaxed);
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t s3HMAC_SHA256(_DWORD *a1, unsigned int *a2, const void *a3, size_t a4)
{
  memset(&v8, 0, sizeof(v8));
  CCHmacInit(&v8, 2u, a2 + 1, *a2);
  CCHmacUpdate(&v8, a3, a4);
  CCHmacFinal(&v8, a1 + 1);
  *a1 = 32;
  memset_s(a1 + 9, 0xE0uLL, 0, 0xE0uLL);
  memset_s(&v8, 0x180uLL, 0, 0x180uLL);
  return 0;
}

uint64_t s3SHA256(uint64_t a1, const void *a2, CC_LONG a3)
{
  memset(&v7, 0, sizeof(v7));
  CC_SHA256_Init(&v7);
  CC_SHA256_Update(&v7, a2, a3);
  CC_SHA256_Final((a1 + 4), &v7);
  *a1 = 32;
  memset_s((a1 + 36), 0xE0uLL, 0, 0xE0uLL);
  return memset_s(&v7, 0x68uLL, 0, 0x68uLL);
}

size_t s3BufWrite(char *__src, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __src;
  v5 = a3 * a2;
  v6 = *(a4 + 16);
  if (v6)
  {
    if (*(v6 + 24))
    {
      v7 = 0;
      if (v5)
      {
        while (1)
        {
          v8 = (*(v6 + 24))(*v6, v4, v5);
          if (v8 < 1)
          {
            break;
          }

          v4 += v8;
          v7 += v8;
          v5 -= v8;
          if (!v5)
          {
            return v7 & ~(v7 >> 63);
          }
        }

        v7 = v8;
      }
    }

    else
    {
      v7 = -1;
    }

    return v7 & ~(v7 >> 63);
  }

  else
  {
    if (v5 >= *(a4 + 8))
    {
      v5 = *(a4 + 8);
    }

    memcpy(*a4, __src, v5);
    v10 = *(a4 + 8) - v5;
    *a4 += v5;
    *(a4 + 8) = v10;
    return v5;
  }
}

size_t s3BufRead(char *__dst, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __dst;
  v5 = a3 * a2;
  v6 = *(a4 + 16);
  if (v6)
  {
    if (*(v6 + 16))
    {
      v7 = 0;
      if (v5)
      {
        while (1)
        {
          v8 = (*(v6 + 16))(*v6, v4, v5);
          if (v8 < 0)
          {
            break;
          }

          if (v8)
          {
            v4 += v8;
            v7 += v8;
            v5 -= v8;
            if (v5)
            {
              continue;
            }
          }

          return v7 & ~(v7 >> 63);
        }

        v7 = v8;
      }
    }

    else
    {
      v7 = -1;
    }

    return v7 & ~(v7 >> 63);
  }

  else
  {
    if (v5 >= *(a4 + 8))
    {
      v5 = *(a4 + 8);
    }

    memcpy(__dst, *a4, v5);
    v10 = *(a4 + 8) - v5;
    *a4 += v5;
    *(a4 + 8) = v10;
    return v5;
  }
}

uint64_t s3HeaderAppendWithFormat(curl_slist **a1, char *__format, ...)
{
  va_start(va, __format);
  v4 = vsnprintf(0, 0, __format, va);
  if (v4 < 0)
  {
    v11 = 0;
LABEL_8:
    v12 = "vsnprintf";
    v13 = 156;
    v14 = 0;
LABEL_12:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Common.c", "s3HeaderAppendWithFormat", v13, 84, v14, v12, v5, v6, v20);
    v18 = 0xFFFFFFFFLL;
    v7 = v11;
  }

  else
  {
    v7 = 0;
    v8 = 1;
    while ((v8 & 1) != 0)
    {
      v9 = (v4 + 1);
      v10 = realloc(v7, v9);
      v11 = v10;
      if (!v10)
      {
        free(v7);
        v14 = *__error();
        v12 = "malloc";
        v13 = 161;
        goto LABEL_12;
      }

      v4 = vsnprintf(v10, v9, __format, va);
      v8 = 0;
      v7 = v11;
      if (v4 < 0)
      {
        goto LABEL_8;
      }
    }

    v15 = curl_slist_append(*a1, v7);
    if (v15)
    {
      v18 = 0;
      *a1 = v15;
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Common.c", "s3HeaderAppendWithFormat", 168, 84, 0, "curl_slist_append failed\n", v16, v17, v20);
      v18 = 0xFFFFFFFFLL;
    }
  }

  free(v7);
  return v18;
}

uint64_t s3HeaderAppend(curl_slist **a1, const char *a2)
{
  v3 = curl_slist_append(*a1, a2);
  v6 = v3;
  if (v3)
  {
    *a1 = v3;
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Common.c", "s3HeaderAppend", 182, 84, 0, "curl_slist_append failed\n", v4, v5, v8);
  }

  if (v6)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

unint64_t curlWriteData(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3 * a2;
  if ((*(a4 + 8) & 0x80000000) != 0)
  {
    v11 = 499;
    curl_easy_getinfo(*a4, CURLINFO_RESPONSE_CODE, &v11);
    v7 = v11;
    *(a4 + 8) = v11;
    if (v7 == 200)
    {
      if (*(a4 + 12))
      {
        *(a4 + 24) = *(a4 + 16);
      }
    }
  }

  v8 = *(a4 + 24);
  v9 = v6 - v8;
  if (v6 >= v8)
  {
    if (v8)
    {
      a1 += v8;
      *(a4 + 24) = 0;
    }

    else
    {
      v9 = v6;
    }

    s3BufWrite(a1, v9, 1, *(a4 + 32));
  }

  else
  {
    *(a4 + 24) = v8 - v6;
  }

  return v6;
}

uint64_t s3Perform(unsigned int a1, char *a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, const char **a7)
{
  v14 = *(a3 + 16);
  v61 = 0;
  if (a4)
  {
    v15 = *(a4 + 8);
  }

  else
  {
    v15 = -1;
  }

  v59 = 0uLL;
  v60 = 0;
  if (a5)
  {
    v59 = *a5;
    v60 = *(a5 + 2);
  }

  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  v16 = curl_easy_init();
  if (!v16)
  {
    v26 = *MEMORY[0x277D85DF8];
    v27 = "curl_easy_init failed\n";
    v28 = 22;
LABEL_42:
    fwrite(v27, v28, 1uLL, v26);
    goto LABEL_43;
  }

  if ((s3HeaderAppend(&v61, "Content-Type:") & 0x80000000) != 0 || (s3HeaderAppend(&v61, "Transfer-Encoding:") & 0x80000000) != 0 || (s3HeaderAppend(&v61, "Accept: application/xml") & 0x80000000) != 0 || (v15 & 0x8000000000000000) == 0 && (s3HeaderAppendWithFormat(&v61, "Content-Length: %zd", v15) & 0x80000000) != 0)
  {
    goto LABEL_43;
  }

  v17 = *(*(a3 + 16) + 2792);
  if (v17)
  {
    while ((s3HeaderAppend(&v61, *v17) & 0x80000000) == 0)
    {
      v17 = *(v17 + 8);
      if (!v17)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_43;
  }

LABEL_15:
  if (a7)
  {
    v18 = *a7;
    if (*a7)
    {
      v19 = a7 + 1;
      while ((s3HeaderAppend(&v61, v18) & 0x80000000) == 0)
      {
        v20 = *v19++;
        v18 = v20;
        if (!v20)
        {
          goto LABEL_20;
        }
      }

      goto LABEL_43;
    }
  }

LABEL_20:
  if (*v14 && (s3Sign(&v61, a1, a2, v14, a4) & 0x80000000) != 0)
  {
    v26 = *MEMORY[0x277D85DF8];
    v27 = "Failed to sign request\n";
    v28 = 23;
    goto LABEL_42;
  }

  v21 = curl_easy_setopt(v16, CURLOPT_URL, a2);
  v22 = curl_easy_setopt(v16, CURLOPT_HTTPHEADER, v61);
  v23 = curl_easy_setopt(v16, CURLOPT_BUFFERSIZE, 102400);
  v24 = (curl_easy_setopt(v16, CURLOPT_TCP_KEEPALIVE, 1) | v23 | v22 | v21) == 0;
  if (*(v14 + 2784) && curl_easy_setopt(v16, CURLOPT_USERAGENT, *(v14 + 2784)))
  {
    v24 = 0;
  }

  if (*(v14 + 2760) && curl_easy_setopt(v16, CURLOPT_PROXY, *(v14 + 2760)))
  {
    v24 = 0;
  }

  if (*(v14 + 2768) && curl_easy_setopt(v16, CURLOPT_PINNEDPUBLICKEY, *(v14 + 2768)))
  {
    v24 = 0;
  }

  if (*(v14 + 2776) && curl_easy_setopt(v16, CURLOPT_PROXY_PINNEDPUBLICKEY, *(v14 + 2776)))
  {
    v24 = 0;
  }

  if (*(v14 + 2800) && curl_easy_setopt(v16, CURLOPT_PROXYHEADER, *(v14 + 2800)))
  {
    v24 = 0;
  }

  if (a1 != 2)
  {
    if (a1 == 1)
    {
      v31 = curl_easy_setopt(v16, CURLOPT_CUSTOMREQUEST, "GET");
      v25 = (curl_easy_setopt(v16, CURLOPT_FOLLOWLOCATION, 1) | v31) == 0;
    }

    else
    {
      if (a1)
      {
        goto LABEL_49;
      }

      v25 = curl_easy_setopt(v16, CURLOPT_PUT, 1) == CURLE_OK;
    }

    if (!v25)
    {
      v24 = 0;
    }

LABEL_49:
    if (!a4)
    {
      goto LABEL_57;
    }

    goto LABEL_54;
  }

  if (curl_easy_setopt(v16, CURLOPT_POST, 1))
  {
    v24 = 0;
  }

  if (a4)
  {
LABEL_54:
    v32 = curl_easy_setopt(v16, CURLOPT_READFUNCTION, s3BufRead);
    v33 = curl_easy_setopt(v16, CURLOPT_READDATA, a4) | v32;
    goto LABEL_55;
  }

  v54 = curl_easy_setopt(v16, CURLOPT_POSTFIELDS, "");
  v33 = curl_easy_setopt(v16, CURLOPT_POSTFIELDSIZE, 0) | v54;
LABEL_55:
  if (v33)
  {
    v24 = 0;
  }

LABEL_57:
  if (a5)
  {
    *&v56 = v16;
    v58 = a5;
    DWORD2(v56) = -1;
    if (a7)
    {
      v34 = *a7;
      if (*a7)
      {
        v35 = 0;
        v36 = MEMORY[0x277D85DE0];
        do
        {
          if (!strncmp(v34, "Range:", 6uLL))
          {
            v39 = *(v34 + 6);
            v38 = v34 + 6;
            v37 = v39;
            if (v39)
            {
              do
              {
                if (v37 < 0)
                {
                  if (!__maskrune(v37, 0x4000uLL))
                  {
                    break;
                  }
                }

                else if ((*(v36 + 4 * v37 + 60) & 0x4000) == 0)
                {
                  break;
                }

                v40 = *++v38;
                v37 = v40;
              }

              while (v40);
            }

            if (!strncmp(v38, "bytes=", 6uLL))
            {
              v43 = *(v38 + 6);
              v42 = v38 + 6;
              v41 = v43;
              if (v43)
              {
                do
                {
                  if (v41 < 0)
                  {
                    if (!__maskrune(v41, 0x4000uLL))
                    {
                      break;
                    }
                  }

                  else if ((*(v36 + 4 * v41 + 60) & 0x4000) == 0)
                  {
                    break;
                  }

                  v44 = *++v42;
                  v41 = v44;
                }

                while (v44);
              }

              HIDWORD(v56) = 1;
              *&v57 = strtoull(v42, 0, 0);
            }
          }

          v34 = a7[++v35];
        }

        while (v34);
      }
    }

    v45 = curl_easy_setopt(v16, CURLOPT_WRITEFUNCTION, curlWriteData);
    if (curl_easy_setopt(v16, CURLOPT_WRITEDATA, &v56) | v45)
    {
      v24 = 0;
    }
  }

  if (a6)
  {
    if (curl_easy_setopt(v16, CURLOPT_HEADERFUNCTION, s3BufWrite))
    {
      v24 = 0;
    }

    if (curl_easy_setopt(v16, CURLOPT_HEADERDATA, a6))
    {
      goto LABEL_86;
    }
  }

  if (!v24)
  {
LABEL_86:
    v26 = *MEMORY[0x277D85DF8];
    v27 = "curl_easy_setopt failed\n";
    v28 = 24;
    goto LABEL_42;
  }

  v46 = curl_easy_perform(v16);
  if (v46 == CURLE_OK)
  {
    v55 = 499;
    curl_easy_getinfo(v16, CURLINFO_RESPONSE_CODE, &v55);
    if ((v55 - 400) <= 0xC7)
    {
      if (a1 != 1 || v55 != 416)
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Common.c", "s3Perform", 407, 84, "HTTP %u\n", v51, v52, v53, v55);
        goto LABEL_43;
      }

      if (a5)
      {
        v29 = 0;
        *a5 = v59;
        *(a5 + 2) = v60;
        goto LABEL_44;
      }
    }

    v29 = 0;
    goto LABEL_44;
  }

  v47 = v46;
  curl_easy_strerror(v46);
  pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Common.c", "s3Perform", 385, 84, "> %d %s\n", v48, v49, v50, v47);
LABEL_43:
  v29 = 0xFFFFFFFFLL;
LABEL_44:
  curl_slist_free_all(v61);
  curl_easy_cleanup(v16);
  return v29;
}

uint64_t s3Sign(curl_slist **a1, unsigned int a2, char *__s, uint64_t a4, uint64_t a5)
{
  v141 = *MEMORY[0x277D85DE8];
  v118[0] = 0;
  v118[1] = 0;
  v119 = 0;
  v116[0] = 0;
  v116[1] = 0;
  v117 = 0;
  v114[0] = 0;
  v114[1] = 0;
  v115 = 0;
  v112[0] = 0;
  v112[1] = 0;
  v113 = 0;
  v123 = 0;
  memset(__sa, 0, sizeof(__sa));
  v10 = strlen(__s);
  if (v10 < 7)
  {
    goto LABEL_8;
  }

  if (*__s == 1886680168 && *(__s + 3) == 791624304)
  {
    v20 = 7;
  }

  else
  {
    if (v10 == 7 || *__s != 0x2F2F3A7370747468)
    {
LABEL_8:
      v14 = "Invalid URL";
      v15 = 492;
LABEL_9:
      v16 = 0;
LABEL_10:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Common.c", "s3Sign", v15, 84, v16, v14, v11, v12, v100);
LABEL_11:
      v17 = 0xFFFFFFFFLL;
      goto LABEL_12;
    }

    v20 = 8;
  }

  v21 = &__s[v20];
  v22 = strchr(&__s[v20], 47);
  if (!v22)
  {
    v14 = "Invalid URL";
    v15 = 494;
    goto LABEL_9;
  }

  v23 = v22;
  v110 = v21;
  v108 = a2;
  v24 = strchr(v22, 63);
  v25 = "/";
  v109 = v23;
  if (!v24)
  {
    v31 = strlen(v23);
    if (v31 <= 1)
    {
      v30 = 1;
    }

    else
    {
      v30 = v31;
    }

    if (v31)
    {
      v25 = v23;
    }

    goto LABEL_30;
  }

  v26 = v24;
  v27 = v24 + 1;
  v28 = strlen(v24 + 1);
  v29 = v26 == v23;
  if (v26 == v23)
  {
    v30 = 1;
  }

  else
  {
    v30 = v26 - v23;
  }

  if (!v29)
  {
    v25 = v23;
  }

  if (!v28)
  {
LABEL_30:
    __n = 0;
    v107 = "";
    goto LABEL_31;
  }

  __n = v28;
  v107 = v27;
LABEL_31:
  if ((s3HeaderAppendWithFormat(a1, "X-Amz-Date: %s", (a4 + 68)) & 0x80000000) != 0 || *(a4 + 452) && (s3HeaderAppendWithFormat(a1, "X-Amz-Security-Token: %s", (a4 + 452)) & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

  __src = v25;
  if (a5)
  {
    v32 = *a5;
    v33 = *(a5 + 8);
    v140 = 0;
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    s3SHA256(&v124, v32, v33);
    if (v124)
    {
      v34 = v30;
      v35 = &v124 + 4;
      v36 = 2 * v124;
      v37 = v36 | 1;
      v38 = __str;
      do
      {
        v39 = *v35++;
        snprintf(v38, v37, "%02x", v39);
        v37 -= 2;
        v38 += 2;
      }

      while (v37 != 1);
LABEL_42:
      v30 = v34;
      goto LABEL_44;
    }
  }

  else
  {
    v140 = 0;
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    s3SHA256(&v124, 0, 0);
    if (v124)
    {
      v34 = v30;
      v40 = &v124 + 4;
      v36 = 2 * v124;
      v41 = v36 | 1;
      v42 = __str;
      do
      {
        v43 = *v40++;
        snprintf(v42, v41, "%02x", v43);
        v41 -= 2;
        v42 += 2;
      }

      while (v41 != 1);
      goto LABEL_42;
    }
  }

  v36 = 0;
LABEL_44:
  __str[v36] = 0;
  memset_s(&v124, 0x104uLL, 0, 0x104uLL);
  if ((s3HeaderAppendWithFormat(a1, "X-Amz-Content-Sha256: %s", __str) & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

  v44 = *a1;
  if (*a1)
  {
    v45 = 1;
    do
    {
      v44 = v44->next;
      ++v45;
    }

    while (v44);
  }

  else
  {
    v45 = 1;
  }

  v111 = calloc(v45, 8uLL);
  if (!v111)
  {
    v16 = *__error();
    v14 = "malloc";
    v15 = 526;
    goto LABEL_10;
  }

  v103 = (a4 + 68);
  v104 = v30;
  v101 = a1;
  v102 = a4;
  v46 = *a1;
  if (!v46)
  {
    v47 = 0;
LABEL_75:
    v57 = v23 - v110;
    v58 = v109 - v110 + 6;
    if (v58 >= 0x2000000001)
    {
      *__error() = 12;
LABEL_80:
      v62 = *__error();
      v65 = 560;
      goto LABEL_83;
    }

    v59 = malloc(v58);
    if (!v59)
    {
      goto LABEL_80;
    }

    v60 = v59;
    v111[v47] = v59;
    v59[4] = 58;
    *v59 = 1953722216;
    memcpy(v59 + 5, v110, v57);
    v60[v57 + 5] = 0;
    qsort(v111, v47 + 1, 8uLL, s3StringCompare);
    if (v108 > 3)
    {
      v61 = "???";
    }

    else
    {
      v61 = off_278F81660[v108];
    }

    v66 = strlen(v61);
    if ((s3StringBufferAppend(v118, v61, v66) & 0x80000000) == 0 && (s3StringBufferAppend(v118, "\n", 1uLL) & 0x80000000) == 0 && (s3StringBufferAppend(v118, __src, v104) & 0x80000000) == 0 && (s3StringBufferAppend(v118, "\n", 1uLL) & 0x80000000) == 0 && (s3StringBufferAppend(v118, v107, __n) & 0x80000000) == 0 && (s3StringBufferAppend(v118, "\n", 1uLL) & 0x80000000) == 0)
    {
      if (v47 == -1)
      {
LABEL_100:
        if ((s3StringBufferAppend(v118, "\n", 1uLL) & 0x80000000) == 0)
        {
          v74 = v117;
          v75 = strlen(v117);
          if ((s3StringBufferAppend(v118, v117, v75) & 0x80000000) == 0 && (s3StringBufferAppend(v118, "\n", 1uLL) & 0x80000000) == 0)
          {
            v76 = strlen(__str);
            if ((s3StringBufferAppend(v118, __str, v76) & 0x80000000) == 0 && (s3StringBufferAppend(v114, "AWS4-HMAC-SHA256\n", 0x11uLL) & 0x80000000) == 0)
            {
              v77 = strlen(v103);
              if ((s3StringBufferAppend(v114, v103, v77) & 0x80000000) == 0 && (s3StringBufferAppend(v114, "\n", 1uLL) & 0x80000000) == 0)
              {
                v78 = strlen((v102 + 4));
                if ((s3StringBufferAppend(v114, (v102 + 4), v78) & 0x80000000) == 0 && (s3StringBufferAppend(v114, "/", 1uLL) & 0x80000000) == 0)
                {
                  v79 = strlen((v102 + 132));
                  if ((s3StringBufferAppend(v114, (v102 + 132), v79) & 0x80000000) == 0 && (s3StringBufferAppend(v114, "/s3/aws4_request\n", 0x11uLL) & 0x80000000) == 0)
                  {
                    v140 = 0;
                    v138 = 0u;
                    v139 = 0u;
                    v136 = 0u;
                    v137 = 0u;
                    v134 = 0u;
                    v135 = 0u;
                    v132 = 0u;
                    v133 = 0u;
                    v130 = 0u;
                    v131 = 0u;
                    v128 = 0u;
                    v129 = 0u;
                    v126 = 0u;
                    v127 = 0u;
                    v124 = 0u;
                    v125 = 0u;
                    v80 = strlen(v119);
                    s3SHA256(&v124, v119, v80);
                    if (v124)
                    {
                      v81 = &v124 + 4;
                      v82 = 2 * v124;
                      v83 = v82 | 1;
                      v84 = v120;
                      do
                      {
                        v85 = *v81++;
                        snprintf(v84, v83, "%02x", v85);
                        v83 -= 2;
                        v84 += 2;
                      }

                      while (v83 != 1);
                    }

                    else
                    {
                      v82 = 0;
                    }

                    v120[v82] = 0;
                    memset_s(&v124, 0x104uLL, 0, 0x104uLL);
                    v88 = strlen(v120);
                    if ((s3StringBufferAppend(v114, v120, v88) & 0x80000000) == 0)
                    {
                      v89 = strlen(v115);
                      s3HMAC_SHA256(__sa, (v102 + 2500), v115, v89);
                      if (LODWORD(__sa[0]))
                      {
                        v90 = __sa + 4;
                        v91 = 2 * LODWORD(__sa[0]);
                        v92 = v91 | 1;
                        v93 = v120;
                        do
                        {
                          v94 = *v90++;
                          snprintf(v93, v92, "%02x", v94);
                          v92 -= 2;
                          v93 += 2;
                        }

                        while (v92 != 1);
                      }

                      else
                      {
                        v91 = 0;
                      }

                      v120[v91] = 0;
                      if ((s3StringBufferAppend(v112, "AWS4-HMAC-SHA256 Credential=", 0x1CuLL) & 0x80000000) == 0)
                      {
                        v95 = strlen((v102 + 196));
                        if ((s3StringBufferAppend(v112, (v102 + 196), v95) & 0x80000000) == 0 && (s3StringBufferAppend(v112, "/", 1uLL) & 0x80000000) == 0)
                        {
                          v96 = strlen((v102 + 4));
                          if ((s3StringBufferAppend(v112, (v102 + 4), v96) & 0x80000000) == 0 && (s3StringBufferAppend(v112, "/", 1uLL) & 0x80000000) == 0)
                          {
                            v97 = strlen((v102 + 132));
                            if ((s3StringBufferAppend(v112, (v102 + 132), v97) & 0x80000000) == 0 && (s3StringBufferAppend(v112, "/s3/aws4_request,SignedHeaders=", 0x1FuLL) & 0x80000000) == 0)
                            {
                              v98 = strlen(v74);
                              if ((s3StringBufferAppend(v112, v74, v98) & 0x80000000) == 0 && (s3StringBufferAppend(v112, ",Signature=", 0xBuLL) & 0x80000000) == 0)
                              {
                                v99 = strlen(v120);
                                if ((s3StringBufferAppend(v112, v120, v99) & 0x80000000) == 0)
                                {
                                  v17 = (s3HeaderAppendWithFormat(v101, "Authorization: %s", v113) >> 31);
                                  goto LABEL_117;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        v67 = 0;
        while (1)
        {
          v68 = v111[v67];
          v69 = strchr(v68, 58);
          if (!v69)
          {
            break;
          }

          v72 = v69;
          v73 = strlen(v68);
          if ((s3StringBufferAppend(v118, v68, v73) & 0x80000000) != 0 || (s3StringBufferAppend(v118, "\n", 1uLL) & 0x80000000) != 0 || v67 && (s3StringBufferAppend(v116, ";", 1uLL) & 0x80000000) != 0 || (s3StringBufferAppend(v116, v68, v72 - v68) & 0x80000000) != 0)
          {
            goto LABEL_116;
          }

          if (v47 + 1 == ++v67)
          {
            goto LABEL_100;
          }
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Common.c", "s3Sign", 586, 84, 0, "Invalid header: %s", v70, v71, v68);
      }
    }

LABEL_116:
    v17 = 0xFFFFFFFFLL;
LABEL_117:
    ++v47;
    goto LABEL_118;
  }

  v47 = 0;
  v48 = MEMORY[0x277D85DE0];
  while (1)
  {
    data = v46->data;
    if (strncasecmp(v46->data, "x-amz-", 6uLL))
    {
      goto LABEL_71;
    }

    v50 = strlen(data);
    if (v50 + 1 >= 0x2000000001)
    {
      break;
    }

    v51 = malloc(v50 + 1);
    if (!v51)
    {
      goto LABEL_82;
    }

    v52 = v51;
    v111[v47] = v51;
    if (v50)
    {
      v53 = 0;
      v54 = 0;
      v55 = 1;
      while (1)
      {
        v56 = v46->data[v53];
        if ((v56 & 0x80000000) != 0)
        {
          if (!__maskrune(v46->data[v53], 0x4000uLL))
          {
LABEL_62:
            if (v56 == 58)
            {
              v55 = 0;
            }

            if (v55)
            {
              LOBYTE(v56) = __tolower(v56);
            }

            v52[v54++] = v56;
          }
        }

        else if ((*(v48 + 4 * v56 + 60) & 0x4000) == 0)
        {
          goto LABEL_62;
        }

        if (v50 == ++v53)
        {
          goto LABEL_70;
        }
      }
    }

    v54 = 0;
LABEL_70:
    ++v47;
    v52[v54] = 0;
LABEL_71:
    v46 = v46->next;
    if (!v46)
    {
      goto LABEL_75;
    }
  }

  *__error() = 12;
LABEL_82:
  v62 = *__error();
  v65 = 544;
LABEL_83:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Common.c", "s3Sign", v65, 84, v62, "malloc", v63, v64, v100);
  v17 = 0xFFFFFFFFLL;
LABEL_118:
  if (v47)
  {
    v86 = v111;
    do
    {
      v87 = *v86++;
      free(v87);
      --v47;
    }

    while (v47);
  }

  free(v111);
LABEL_12:
  memset_s(__sa, 0x104uLL, 0, 0x104uLL);
  memset_s(v120, 0x80uLL, 0, 0x80uLL);
  memset_s(__str, 0x80uLL, 0, 0x80uLL);
  s3StringBufferFree(v118);
  s3StringBufferFree(v116);
  s3StringBufferFree(v114);
  s3StringBufferFree(v112);
  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t s3StringBufferAppend(unint64_t *a1, void *__src, size_t __n)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = v6 + __n + 1;
  v9 = v8 >= *a1;
  v10 = v8 - *a1;
  if (!v9)
  {
    v10 = 0;
  }

  v11 = (v10 + 255) & 0xFFFFFFFFFFFFFF00;
  v12 = v7 + v11;
  v13 = a1[2];
  if (v7 + v11 <= v7)
  {
    goto LABEL_8;
  }

  if (v12 < 0x2000000001)
  {
    v14 = realloc(a1[2], v7 + v11);
    if (!v14)
    {
      free(v13);
      goto LABEL_10;
    }

    a1[2] = v14;
    *a1 = v12;
    v13 = v14;
    v6 = a1[1];
LABEL_8:
    memcpy(&v13[v6], __src, __n);
    result = 0;
    v16 = a1[2];
    v17 = a1[1] + __n;
    a1[1] = v17;
    *(v16 + v17) = 0;
    return result;
  }

  *__error() = 12;
LABEL_10:
  a1[2] = 0;
  v18 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Common.c", "s3StringBufferAppend", 437, 84, *v18, "malloc", v19, v20, v21);
  *a1 = 0;
  a1[1] = 0;
  return 0xFFFFFFFFLL;
}

void s3StringBufferFree(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    memset_s(*(a1 + 16), *a1, 0, *a1);
  }

  free(v1);
}

uint64_t s3StreamBaseInit(void *__s, char *a2, uint64_t a3, uint64_t a4)
{
  if (__s)
  {
    memset_s(__s, 0x18uLL, 0, 0x18uLL);
  }

  *__s = a4;
  if (a2)
  {
    v8 = strlen(a2);
    v9 = v8 + 1;
    if (v8 + 1 >= 0x2000000001)
    {
      *__error() = 12;
LABEL_10:
      __s[1] = 0;
      v13 = *__error();
      v16 = "strdup";
      v17 = 659;
      goto LABEL_15;
    }

    v10 = malloc(v8 + 1);
    if (!v10)
    {
      goto LABEL_10;
    }

    v11 = v10;
    memcpy(v10, a2, v9);
    __s[1] = v11;
  }

  if (a3)
  {
    v12 = aaS3ContextClone(a3);
  }

  else
  {
    v12 = AAS3ContextCreate();
  }

  __s[2] = v12;
  if (v12)
  {
    return 0;
  }

  v13 = *__error();
  v16 = "malloc";
  v17 = 662;
LABEL_15:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Common.c", "s3StreamBaseInit", v17, 84, v13, v16, v14, v15, v19);
  s3StreamBaseRelease(__s);
  return 0xFFFFFFFFLL;
}

uint64_t s3StreamBaseRelease(uint64_t a1)
{
  free(*(a1 + 8));
  AAS3ContextDestroy(*(a1 + 16));

  return memset_s(a1, 0x18uLL, 0, 0x18uLL);
}

AAByteStream_impl *AAS3DownloadStreamOpen(char *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a2 && *a2)
  {
    return s3DownloadStreamOpen_curl(a1, a2, a3);
  }

  else
  {
    return s3DownloadStreamOpen_urlsession(a1, a2, a3, a4);
  }
}

void sub_248F8E1D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t downloadStreamClose_urlsession(void *a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      a1[3] = 0;
      atomic_store([v2 bytesDownloaded], a1 + 5);
      [v2 invalidateAndCancel];
    }

    if (*a1 >> 62)
    {
      v11.tv_sec = 0;
      *&v11.tv_usec = 0;
      gettimeofday(&v11, 0);
      v3 = v11.tv_sec + v11.tv_usec * 0.000001 - *(a1 + 6);
      v4 = MEMORY[0x277D85DF8];
      fwrite("AAS3DownloadStream (NSURLSession)\n", 0x22uLL, 1uLL, *MEMORY[0x277D85DF8]);
      fprintf(*v4, "%12u max attempts for a request\n", *(a1 + 14));
      fprintf(*v4, "%12u max requests in flight\n", *(a1 + 16));
      fprintf(*v4, "%12.2f initial interval between retries (s)\n", *(a1 + 15));
      v5 = *v4;
      v6 = atomic_load(a1 + 5);
      v7 = atomic_load(a1 + 5);
      fprintf(v5, "%12llu bytes downloaded (%.2f MB)\n", v6, vcvtd_n_f64_u64(v7, 0x14uLL));
      v8 = *v4;
      v9 = atomic_load(a1 + 5);
      fprintf(v8, "%12.2f MB/s download speed\n", v9 / v3 * 0.000000953674316);
    }

    s3StreamBaseRelease(a1);
    memset_s(a1, 0x48uLL, 0, 0x48uLL);
    free(a1);
  }

  return 0;
}

AAByteStream s3DownloadStreamOpen_urlsession(char *a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = AACustomByteStreamOpen();
  v9 = malloc(0x48uLL);
  v10 = v9;
  if (!v9 || (memset_s(v9, 0x48uLL, 0, 0x48uLL), !v8))
  {
    perror("malloc");
    goto LABEL_12;
  }

  if ((s3StreamBaseInit(v10, a1, a2, a3) & 0x80000000) != 0)
  {
    v20 = "s3StreamBaseInit";
    v21 = 697;
LABEL_11:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "s3DownloadStreamOpen_urlsession", v21, 121, 0, v20, v11, v12, v23.tv_sec);
LABEL_12:
    free(v8);
    downloadStreamClose_urlsession(v10);
    return 0;
  }

  v23.tv_sec = 0;
  *&v23.tv_usec = 0;
  gettimeofday(&v23, 0);
  v10[6] = v23.tv_sec + v23.tv_usec * 0.000001;
  v10[7] = 32.0;
  if (a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = 16;
  }

  *(v10 + 16) = v13;
  v14 = [AAS3DownloadSession alloc];
  v15 = MEMORY[0x277CBEBC0];
  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
  v17 = [v15 URLWithString:v16];
  LODWORD(v18) = *(v10 + 15);
  v19 = [(AAS3DownloadSession *)v14 initWithURL:v17 streamBase:v10 maxAttempts:*(v10 + 14) pauseInterval:*(v10 + 16) maxRequestsInFlight:v18];

  if (!v19)
  {
    v20 = "creating session";
    v21 = 710;
    goto LABEL_11;
  }

  *(v10 + 3) = v19;
  *v8 = v10;
  *(v8 + 1) = downloadStreamClose_urlsession;
  *(v8 + 4) = downloadStreamPRead_0;
  *(v8 + 2) = downloadStreamRead_0;
  *(v8 + 10) = downloadStreamPReadAsync;
  return v8;
}

uint64_t downloadStreamPRead_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a1 >> 62 == 3)
  {
    fprintf(*MEMORY[0x277D85DF8], "NSURLSession read to buffer nbyte=%zx offset=%llx\n", a3, a4);
  }

  v8 = a1[3];

  return [v8 readToBuffer:a2 size:a3 atOffset:a4];
}

uint64_t downloadStreamPReadAsync(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a1 >> 62 == 3)
  {
    fprintf(*MEMORY[0x277D85DF8], "NSURLSession read to stream nbyte=%zx offset=%llx\n", a3, a4);
  }

  v8 = a1[3];

  return [v8 readToAsyncByteStream:a2 size:a3 atOffset:a4];
}

uint64_t contextCreate(char **a1, uint64_t a2)
{
  v4 = malloc(0x58uLL);
  v5 = v4;
  if (!v4)
  {
    v7 = *__error();
    v10 = "malloc";
    v11 = 308;
LABEL_12:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextCreate", v11, 125, v7, v10, v8, v9, v16);
    goto LABEL_13;
  }

  memset_s(v4, 0x58uLL, 0, 0x58uLL);
  *(v5 + 80) = a2;
  if (a1)
  {
    if ((contextSetString(v5, 0, *a1, "KNOX_APPLECONNECT_ACCOUNT") & 0x80000000) != 0 || (contextSetString(v5, 1u, a1[1], "KNOX_KEYTAB_FILE") & 0x80000000) != 0 || (contextSetString(v5, 2u, a1[2], "KNOX_DAW_TOKEN") & 0x80000000) != 0 || (contextSetString(v5, 3u, a1[3], "KNOX_DAW_TOKEN_FILE") & 0x80000000) != 0 || (contextSetString(v5, 4u, a1[4], "KNOX_WESTGATE_TOKEN") & 0x80000000) != 0 || (contextSetString(v5, 5u, a1[5], "KNOX_WESTGATE_TOKEN_FILE") & 0x80000000) != 0 || (contextSetString(v5, 8u, a1[6], "KNOX_USER_AGENT") & 0x80000000) != 0)
    {
      goto LABEL_13;
    }

    v6 = a1[7];
  }

  else
  {
    if ((contextSetString(v5, 0, 0, "KNOX_APPLECONNECT_ACCOUNT") & 0x80000000) != 0)
    {
      goto LABEL_13;
    }

    if ((contextSetString(v5, 1u, 0, "KNOX_KEYTAB_FILE") & 0x80000000) != 0)
    {
      goto LABEL_13;
    }

    if ((contextSetString(v5, 2u, 0, "KNOX_DAW_TOKEN") & 0x80000000) != 0)
    {
      goto LABEL_13;
    }

    if ((contextSetString(v5, 3u, 0, "KNOX_DAW_TOKEN_FILE") & 0x80000000) != 0)
    {
      goto LABEL_13;
    }

    if ((contextSetString(v5, 4u, 0, "KNOX_WESTGATE_TOKEN") & 0x80000000) != 0)
    {
      goto LABEL_13;
    }

    if ((contextSetString(v5, 5u, 0, "KNOX_WESTGATE_TOKEN_FILE") & 0x80000000) != 0)
    {
      goto LABEL_13;
    }

    v13 = contextSetString(v5, 8u, 0, "KNOX_USER_AGENT");
    v6 = 0;
    if (v13 < 0)
    {
      goto LABEL_13;
    }
  }

  if ((contextSetString(v5, 9u, v6, "KNOX_PROXY") & 0x80000000) != 0)
  {
LABEL_13:
    contextDestroy(v5);
    return 0;
  }

  if (!*(v5 + 16))
  {
    v15 = *(v5 + 24);
    if (v15)
    {
      if ((contextLoadString(v5, 2u, v15) & 0x80000000) != 0)
      {
        v10 = "loading daw token";
        v11 = 324;
        goto LABEL_31;
      }
    }
  }

  if (!*(v5 + 32))
  {
    v14 = *(v5 + 40);
    if (v14)
    {
      if ((contextLoadString(v5, 4u, v14) & 0x80000000) != 0)
      {
        v10 = "loading westgate token";
        v11 = 327;
LABEL_31:
        v7 = 0;
        goto LABEL_12;
      }
    }
  }

  return v5;
}

uint64_t contextResolveWestgateToken(uint64_t a1, char *__s)
{
  v122[2] = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    goto LABEL_2;
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    goto LABEL_4;
  }

  v11 = strlen(__s);
  v12 = v11 + 200;
  if (v11 + 200 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_71:
    v61 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextGetServiceName", 345, 125, *v61, "malloc", v62, v63, v115);
    v27 = 0;
    v37 = 0;
    v30 = 0;
LABEL_100:
    AAJSONInputStreamClose(v37);
    AAByteStreamClose(v30);
    free(v27);
    v24 = "getting service name and realm";
    v25 = 649;
    goto LABEL_101;
  }

  v26 = malloc(v11 + 200);
  if (!v26)
  {
    goto LABEL_71;
  }

  v27 = v26;
  v30 = AATempStreamOpen();
  if (!v30)
  {
    v84 = "AATempStreamOpen";
    v85 = 348;
LABEL_93:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextGetServiceName", v85, 125, 0, v84, v28, v29, v115);
    v37 = 0;
    goto LABEL_100;
  }

  snprintf(v27, v12, "https://%s/westgate/appinfo", __s);
  if ((knoxRequest(a1, 1u, v27, 0, v30) & 0x80000000) != 0)
  {
    v115 = v27;
    v84 = "Knox request failed: %s";
    v85 = 351;
    goto LABEL_93;
  }

  AAByteStreamSeek(v30, 0, 0);
  v37 = AAJSONInputStreamOpen(v30);
  if (!v37)
  {
    v96 = "AAJSONInputStreamOpen";
    v97 = 356;
    goto LABEL_99;
  }

  v38 = 0;
  v39 = 0;
  do
  {
    while (1)
    {
      v121 = 0;
      *__sa = 0u;
      v120 = 0u;
      *__s1 = 0u;
      if ((AAJSONInputStreamRead(v37, __s1, v31, v32, v33, v34, v35, v36) & 0x80000000) != 0)
      {
        v96 = "parsing JSON";
        v97 = 363;
        goto LABEL_99;
      }

      if (LODWORD(__s1[0]) < 2)
      {
        if (v38 == 1 && __s1[1] && !strcmp(__s1[1], "idms"))
        {
          v39 = 1;
        }

        ++v38;
        goto LABEL_41;
      }

      if (LODWORD(__s1[0]) == 2)
      {
        break;
      }

      if (LODWORD(__s1[0]) != 3)
      {
        goto LABEL_41;
      }

      if (!v39)
      {
        goto LABEL_41;
      }

      v40 = __s1[1];
      if (!__s1[1])
      {
        goto LABEL_41;
      }

      if (!strcmp(__s1[1], "realm"))
      {
        if ((contextSetString(a1, 6u, __sa[0], 0) & 0x80000000) == 0)
        {
          v40 = __s1[1];
          goto LABEL_33;
        }

        v96 = "realm";
        v97 = 377;
LABEL_99:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextGetServiceName", v97, 125, 0, v96, v35, v36, v117);
        goto LABEL_100;
      }

LABEL_33:
      if (!strcmp(v40, "serviceName") && (contextSetString(a1, 7u, __sa[0], 0) & 0x80000000) != 0)
      {
        v96 = "serviceName";
        v97 = 378;
        goto LABEL_99;
      }

LABEL_41:
      if (!v38)
      {
        goto LABEL_44;
      }
    }

    v39 = 0;
    --v38;
  }

  while (v38);
LABEL_44:
  if (!*(a1 + 48) || !*(a1 + 56))
  {
    v96 = "could not parse service name and realm";
    v97 = 389;
    goto LABEL_99;
  }

  AAJSONInputStreamClose(v37);
  AAByteStreamClose(v30);
  free(v27);
  __s1[0] = 0;
  __s1[1] = 0;
  __sa[0] = 0;
  v43 = *(a1 + 48);
  if (!v43 || (v44 = *(a1 + 56)) == 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextGetDAWToken", 411, 125, 0, "missing service name or realm", v41, v42, v117);
    v48 = 0;
LABEL_111:
    v50 = 0;
LABEL_116:
    free(v50);
    v98 = v48;
    goto LABEL_117;
  }

  v45 = *(a1 + 80) >> 62;
  if (v45)
  {
    v46 = MEMORY[0x277D85DF8];
    fwrite("  obtaining a DAW token from the appleconnect CLI\n", 0x32uLL, 1uLL, *MEMORY[0x277D85DF8]);
    fprintf(*v46, "  - realm: %s\n", v43);
    fprintf(*v46, "  - service name: %s\n", v44);
  }

  v47 = malloc(0x4000uLL);
  v48 = v47;
  if (!v47)
  {
    __s1[0] = 0;
    __s1[1] = 0;
    __sa[0] = 0;
    v88 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextGetDAWToken", 420, 125, *v88, "malloc", v89, v90, v117);
    goto LABEL_111;
  }

  __s1[1] = 0x4000;
  __sa[0] = v47;
  v49 = malloc(0x4000uLL);
  v50 = v49;
  if (!v49)
  {
    v91 = *__error();
    v94 = "malloc";
    v95 = 422;
LABEL_115:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextGetDAWToken", v95, 125, v91, v94, v92, v93, v117);
    goto LABEL_116;
  }

  snprintf(v49, 0x4000uLL, "/usr/local/bin/appleconnect serviceTicket --show-signIn-dialog --dawToken --realm %s --serviceName %s", v43, v44);
  if (*a1)
  {
    if (v45)
    {
      fprintf(*MEMORY[0x277D85DF8], "  - account: %s\n", *a1);
    }

    __strlcat_chk();
    v51 = *a1;
    __strlcat_chk();
  }

  if (*(a1 + 8))
  {
    if (v45)
    {
      fprintf(*MEMORY[0x277D85DF8], "  - keytab file: %s\n", *(a1 + 8));
    }

    __strlcat_chk();
    v52 = *(a1 + 8);
    __strlcat_chk();
  }

  v53 = popen(v50, "r");
  if (!v53)
  {
    v91 = *__error();
    v117 = v50;
    v94 = "%s";
    v95 = 444;
    goto LABEL_115;
  }

  v54 = v53;
  v55 = 0;
  while (1)
  {
    v56 = fread(&v55[v48], 1uLL, 0x4000 - v55, v54);
    if (v56)
    {
      v59 = &v55[v56];
      if (__CFADD__(v55, v56) || v59 > 0x4000)
      {
        v99 = "invalid read";
        v100 = 454;
        v101 = 0;
        goto LABEL_138;
      }

      goto LABEL_69;
    }

    if (feof(v54))
    {
      break;
    }

    if (ferror(v54))
    {
      v101 = *__error();
      v99 = "fread";
      v100 = 452;
LABEL_138:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextGetDAWToken", v100, 125, v101, v99, v57, v58, v115);
      __s1[0] = v55;
      goto LABEL_157;
    }

    v59 = v55;
LABEL_69:
    v55 = v59;
    if (v59 == 0x4000)
    {
      __s1[0] = 0x4000;
      v60 = 447;
      goto LABEL_156;
    }
  }

  __s1[0] = v55;
  if (v55)
  {
    v102 = MEMORY[0x277D85DE0];
    do
    {
      v103 = v55[(v48 - 1)];
      if (v103 < 0)
      {
        v104 = __maskrune(v55[(v48 - 1)], 0x4000uLL);
      }

      else
      {
        v104 = *(v102 + 4 * v103 + 60) & 0x4000;
      }

      if (!v104)
      {
        break;
      }

      --v55;
    }

    while (v55);
    __s1[0] = v55;
  }

  v105 = (v55 + 1);
  if (((v55 == -1) << 63) >> 63 != (v55 == -1) || (v105 & 0x8000000000000000) != 0)
  {
    goto LABEL_155;
  }

  if (v105 > 0x4000)
  {
    for (i = 0x4000; i < v105; i += v107)
    {
      v107 = i >> 1;
      if ((i & (i >> 1)) != 0)
      {
        v107 = i & (i >> 1);
      }
    }

    if (i >= 0x2000000001)
    {
      *__error() = 12;
      goto LABEL_154;
    }

    v109 = realloc(v48, i);
    if (v109)
    {
      v108 = v109;
      __s1[1] = i;
      __sa[0] = v109;
      v48 = v109;
      goto LABEL_142;
    }

    free(v48);
LABEL_154:
    v48 = 0;
    __s1[0] = 0;
    __s1[1] = 0;
    __sa[0] = 0;
LABEL_155:
    v60 = 459;
LABEL_156:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextGetDAWToken", v60, 125, 0, "token is too long", v57, v58, v115);
LABEL_157:
    v108 = v48;
LABEL_158:
    pclose(v54);
    free(v50);
    v98 = v108;
LABEL_117:
    free(v98);
    memset_s(__s1, 0x18uLL, 0, 0x18uLL);
    v24 = "getting DAW token";
    v25 = 650;
LABEL_101:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextResolveWestgateToken", v25, 125, 0, v24, v22, v23, v116);
    result = 0xFFFFFFFFLL;
    goto LABEL_102;
  }

  v108 = __sa[0];
LABEL_142:
  __s1[0] = v55 + 1;
  v55[v48] = 0;
  if ((v55 + 1) < 6 || (*v108 == 1415004484 ? (v110 = *(v108 + 2) == 20043) : (v110 = 0), !v110))
  {
    v111 = "invalid token format";
    v112 = 460;
LABEL_148:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextGetDAWToken", v112, 125, 0, v111, v57, v58, v115);
    goto LABEL_158;
  }

  if ((contextSetString(a1, 2u, v108, 0) & 0x80000000) != 0)
  {
    v111 = "daw token";
    v112 = 463;
    goto LABEL_148;
  }

  pclose(v54);
  free(v50);
  free(v108);
  memset_s(__s1, 0x18uLL, 0, 0x18uLL);
  if (*(a1 + 32))
  {
    goto LABEL_2;
  }

  v5 = *(a1 + 16);
  if (!v5)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextGetWestgateToken", 486, 125, 0, "missing host or DAW token", v113, v114, v115);
    v20 = 0;
    v8 = 0;
LABEL_17:
    v21 = 0;
    v17 = 0;
LABEL_18:
    AAJSONInputStreamClose(v20);
    AAByteStreamClose(v8);
    free(v17);
    free(v21);
    v24 = "getting Westgate token";
    v25 = 655;
    goto LABEL_101;
  }

LABEL_4:
  if (*(a1 + 80) >> 62)
  {
    fwrite("  requesting Westgate token from the Knox server\n", 0x31uLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

  v8 = AATempStreamOpen();
  if (!v8)
  {
    v13 = "AATempStreamOpen";
    v14 = 491;
    v15 = 0;
LABEL_16:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextGetWestgateToken", v14, 125, v15, v13, v6, v7, v115);
    v20 = 0;
    goto LABEL_17;
  }

  v9 = strlen(__s);
  v10 = v9 + 200;
  if (v9 + 200 >= 0x2000000001)
  {
    *__error() = 12;
    goto LABEL_15;
  }

  v16 = malloc(v9 + 200);
  if (!v16)
  {
LABEL_15:
    v15 = *__error();
    v13 = "malloc";
    v14 = 495;
    goto LABEL_16;
  }

  v17 = v16;
  v18 = strlen(v5);
  v19 = v18 + 200;
  if (v18 + 200 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_90:
    v81 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextGetWestgateToken", 498, 125, *v81, "malloc", v82, v83, v115);
    v20 = 0;
    v21 = 0;
    goto LABEL_18;
  }

  v64 = malloc(v18 + 200);
  if (!v64)
  {
    goto LABEL_90;
  }

  v21 = v64;
  snprintf(v64, v19, "Authorization: Bearer %s", v5);
  v122[0] = v21;
  v122[1] = 0;
  snprintf(v17, v10, "https://%s/westgate/token", __s);
  if ((knoxRequest(a1, 2u, v17, v122, v8) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextGetWestgateToken", 505, 125, 0, "Knox request failed: %s", v65, v66, v17);
    v20 = 0;
    goto LABEL_18;
  }

  AAByteStreamSeek(v8, 0, 0);
  v67 = AAJSONInputStreamOpen(v8);
  v20 = v67;
  if (!v67)
  {
    v79 = "AAJSONInputStreamOpen";
    v80 = 510;
    goto LABEL_106;
  }

  v121 = 0;
  *__sa = 0u;
  v120 = 0u;
  *__s1 = 0u;
  if ((AAJSONInputStreamRead(v67, __s1, v68, v69, v70, v71, v72, v73) & 0x80000000) != 0)
  {
LABEL_89:
    v79 = "parsing JSON";
    v80 = 516;
LABEL_106:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextGetWestgateToken", v80, 125, 0, v79, v72, v73, v116);
    goto LABEL_18;
  }

  v78 = 0;
  while (1)
  {
    if (LODWORD(__s1[0]) < 2)
    {
      ++v78;
      goto LABEL_87;
    }

    if (LODWORD(__s1[0]) == 2)
    {
      break;
    }

    if (LODWORD(__s1[0]) != 3 || v78 != 1 || !__s1[1])
    {
      goto LABEL_87;
    }

    if (!strcasecmp(__s1[1], "password") && (contextSetString(a1, 4u, __sa[0], 0) & 0x80000000) != 0)
    {
      v79 = "password";
      v80 = 529;
      goto LABEL_106;
    }

    v78 = 1;
LABEL_88:
    v121 = 0;
    *__sa = 0u;
    v120 = 0u;
    *__s1 = 0u;
    if ((AAJSONInputStreamRead(v20, __s1, v74, v75, v76, v77, v72, v73) & 0x80000000) != 0)
    {
      goto LABEL_89;
    }
  }

  --v78;
LABEL_87:
  if (v78)
  {
    goto LABEL_88;
  }

  v87 = *(a1 + 32);
  if (!v87 || strncmp(v87, "WGTKN", 5uLL))
  {
    v79 = "invalid/missing token";
    v80 = 537;
    goto LABEL_106;
  }

  AAJSONInputStreamClose(v20);
  AAByteStreamClose(v8);
  free(v17);
  free(v21);
  if (!*(a1 + 32))
  {
    v24 = "invalid Westgate token";
    v25 = 658;
    goto LABEL_101;
  }

LABEL_2:
  result = 0;
LABEL_102:
  v86 = *MEMORY[0x277D85DE8];
  return result;
}

void contextDestroy(char *a1)
{
  if (a1)
  {
    for (i = 0; i != 80; i += 8)
    {
      free(*&a1[i]);
    }

    free(a1);
  }
}

uint64_t knoxRequest(uint64_t a1, unsigned int a2, char *a3, const char **a4, uint64_t a5)
{
  v76[0] = 0;
  v76[1] = 0;
  v74 = 0uLL;
  v75 = 0;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v10 = AAS3ContextCreate();
  v77 = v10;
  if (!v10)
  {
    v56 = "AAS3ContextCreate";
    v57 = 189;
LABEL_40:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "knoxRequest", v57, 125, 0, v56, v11, v12, v67);
    v22 = 0;
LABEL_41:
    v29 = 0;
    v28 = 0;
LABEL_42:
    v58 = 0xFFFFFFFFLL;
    goto LABEL_43;
  }

  v13 = v10;
  v14 = malloc(0x18uLL);
  v15 = v14;
  if (!v14)
  {
    v22 = calloc(1uLL, 0x68uLL);
    goto LABEL_39;
  }

  memset_s(v14, 0x18uLL, 0, 0x18uLL);
  v16 = calloc(1uLL, 0x68uLL);
  v22 = v16;
  if (!v16)
  {
LABEL_39:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "knoxPageStreamOpen", 165, 125, 0, "malloc", v20, v21, v67);
    free(v15);
    free(v22);
    v56 = "open page stream";
    v57 = 192;
    goto LABEL_40;
  }

  *v15 = a5;
  *v16 = v15;
  v16[1] = knoxPageStreamClose;
  v16[3] = knoxPageStreamWrite;
  if ((AAS3ContextSetFieldString(v13, 5, *(a1 + 64), v17, v18, v19, v20, v21) & 0x80000000) != 0)
  {
    v60 = 194;
LABEL_46:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "knoxRequest", v60, 125, 0, "setup context", v26, v27, v67);
    goto LABEL_41;
  }

  if ((AAS3ContextSetFieldString(v13, 0, *(a1 + 72), v23, v24, v25, v26, v27) & 0x80000000) != 0)
  {
    v60 = 195;
    goto LABEL_46;
  }

  v28 = malloc(0x800uLL);
  if (!v28)
  {
    v61 = *__error();
    v62 = 200;
LABEL_52:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "knoxRequest", v62, 125, v61, "malloc", v54, v55, v67);
    v29 = 0;
    goto LABEL_42;
  }

  v29 = 0;
  v30 = "link:";
  v69 = a3;
  v70 = a4;
  while (2)
  {
    memset_s(v28, 0x800uLL, 0, 0x800uLL);
    v74 = 0uLL;
    v75 = v22;
    v71 = v28;
    v72 = 2047;
    v33 = a3;
    v73 = 0;
    if (v29)
    {
      if (v22[1] == knoxPageStreamClose)
      {
        v34 = *v22;
        if (*(*v22 + 2) < 1 || !*(v34 + 4))
        {
          goto LABEL_15;
        }

        if (!*(v34 + 5) || AAByteStreamWrite(*v34, ",", 1uLL) == 1)
        {
          *(v34 + 12) = 1;
LABEL_15:
          *(v34 + 5) = 0;
          v33 = v29;
          goto LABEL_16;
        }

        v63 = "writing ','";
        v64 = 146;
      }

      else
      {
        v63 = "invalid stream";
        v64 = 132;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "knoxPageStreamEndPage", v64, 125, 0, v63, v31, v32, v67);
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "knoxRequest", 209, 125, 0, "page stream next page", v65, v66, v68);
      goto LABEL_42;
    }

LABEL_16:
    if ((s3Perform(a2, v33, v76, 0, &v74, &v71, a4) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "knoxRequest", 212, 125, 0, "request: %s", v35, v36, v33);
      goto LABEL_42;
    }

    free(v29);
    v37 = strlen(v28);
    if (v37)
    {
      v38 = v37;
      v29 = 0;
      v39 = 0;
      do
      {
        if (v38 <= v39 + 1)
        {
          v40 = v39 + 1;
        }

        else
        {
          v40 = v38;
        }

        v41 = v39;
        while (v28[v41] != 10)
        {
          if (v40 == ++v41)
          {
            v41 = v40;
            break;
          }
        }

        v28[v41] = 0;
        if (v41 - v39 >= 5)
        {
          v42 = &v28[v39];
          if (!strncmp(&v28[v39], v30, 5uLL))
          {
            v43 = v30;
            v44 = strchr(v42, 60);
            v45 = strrchr(v42, 62);
            if (!v44 || (v48 = v45, v45 <= v44))
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "knoxRequest", 231, 125, 0, "invalid link header (1): %s", v46, v47, v42);
              goto LABEL_42;
            }

            if (!strstr(v45, "rel=next"))
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "knoxRequest", 233, 125, 0, "invalid link header (2): %s", v49, v50, v42);
              goto LABEL_42;
            }

            *v48 = 0;
            v51 = strlen(v44 + 1);
            v52 = v51 + 1;
            if (v51 + 1 >= 0x2000000001)
            {
              *__error() = 12;
LABEL_51:
              v62 = 236;
              v61 = 0;
              goto LABEL_52;
            }

            v53 = malloc(v51 + 1);
            if (!v53)
            {
              goto LABEL_51;
            }

            v29 = v53;
            memcpy(v53, v44 + 1, v52);
            v30 = v43;
          }
        }

        v39 = v41 + 1;
      }

      while (v41 + 1 < v38);
      a3 = v69;
      a4 = v70;
      if (v29)
      {
        continue;
      }
    }

    else
    {
      v29 = 0;
    }

    break;
  }

  v58 = 0;
LABEL_43:
  free(v29);
  free(v28);
  AAByteStreamClose(v22);
  AAS3ContextDestroy(v77);
  return v58;
}

uint64_t contextGetDecryptionComponents(uint64_t a1, const char *a2, const char *a3, const char *a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v77[2] = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 32);
  v9 = *(a1 + 80);
  *a5 = 0;
  *a6 = 0;
  if (!v8)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextGetDecryptionComponents", 568, 125, 0, "missing Westgate token", a7, a8, v65);
    v21 = 0;
    v18 = 0;
LABEL_14:
    v27 = 0;
    goto LABEL_15;
  }

  if (v9 >> 62)
  {
    fwrite("  requesting decryption components from the Knox server\n", 0x38uLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

  v18 = AATempStreamOpen();
  if (!v18)
  {
    v22 = "AATempStreamOpen";
    v23 = 573;
    v24 = 0;
LABEL_13:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextGetDecryptionComponents", v23, 125, v24, v22, v16, v17, v65);
    v21 = 0;
    v8 = 0;
    goto LABEL_14;
  }

  v19 = strlen(a2);
  v20 = v19 + 200;
  if (v19 + 200 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_12:
    v24 = *__error();
    v22 = "malloc";
    v23 = 577;
    goto LABEL_13;
  }

  __str = malloc(v19 + 200);
  if (!__str)
  {
    goto LABEL_12;
  }

  v25 = strlen(v8);
  v26 = v25 + 200;
  if (v25 + 200 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_54:
    v60 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextGetDecryptionComponents", 580, 125, *v60, "malloc", v61, v62, v65);
    v21 = 0;
    v8 = 0;
    v28 = 0xFFFFFFFFLL;
    v27 = __str;
    goto LABEL_16;
  }

  v31 = malloc(v25 + 200);
  if (!v31)
  {
    goto LABEL_54;
  }

  v66 = v8;
  v8 = v31;
  snprintf(v31, v26, "Authorization: Bearer %s", v66);
  v77[0] = v8;
  v77[1] = 0;
  v68 = a4;
  v27 = __str;
  snprintf(__str, v20, "https://%s/spaces/%s/files/%s/decryption-components", a2, a3, v68);
  if ((knoxRequest(a1, 2u, __str, v77, v18) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextGetDecryptionComponents", 587, 125, 0, "Knox request failed: %s", v32, v33, __str);
    v21 = 0;
    goto LABEL_15;
  }

  AAByteStreamSeek(v18, 0, 0);
  v34 = AAJSONInputStreamOpen(v18);
  v21 = v34;
  if (!v34)
  {
    v63 = "AAJSONInputStreamOpen";
    v64 = 592;
    goto LABEL_62;
  }

  v76 = 0;
  *__s = 0u;
  v75 = 0u;
  *__s1 = 0u;
  if ((AAJSONInputStreamRead(v34, __s1, v35, v36, v37, v38, v39, v40) & 0x80000000) != 0)
  {
LABEL_56:
    v63 = "parsing JSON";
    v64 = 600;
    goto LABEL_62;
  }

  v45 = 0;
  v46 = 0;
  v47 = 0;
  v71 = v8;
  while (LODWORD(__s1[0]) >= 2)
  {
    if (LODWORD(__s1[0]) == 2)
    {
      v46 = 0;
      v45 = 0;
      --v47;
      goto LABEL_47;
    }

    if (LODWORD(__s1[0]) != 3)
    {
      goto LABEL_47;
    }

    v48 = __s1[1];
    if (v46 && v47 == 2 && __s1[1] && !strcmp(__s1[1], "key"))
    {
      v69 = v45;
      v49 = __s[0];
      if (!__s[0])
      {
        goto LABEL_64;
      }

      v50 = strlen(__s[0]);
      v51 = v50 + 1;
      if (v50 + 1 >= 0x2000000001)
      {
        *__error() = 12;
LABEL_64:
        *a6 = 0;
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextGetDecryptionComponents", 618, 125, 0, "key", v39, v40, v67);
        v8 = v71;
        v27 = __str;
        goto LABEL_15;
      }

      v52 = malloc(v50 + 1);
      if (!v52)
      {
        goto LABEL_64;
      }

      v53 = v52;
      memcpy(v52, v49, v51);
      *a6 = v53;
      v27 = __str;
      v45 = v69;
    }

    if (!v45 || v47 != 2 || !v48)
    {
      v8 = v71;
      goto LABEL_47;
    }

    if (!strcmp(v48, "uri"))
    {
      v70 = v45;
      v55 = __s[0];
      v8 = v71;
      if (!__s[0])
      {
        goto LABEL_66;
      }

      v56 = strlen(__s[0]);
      v57 = v56 + 1;
      if (v56 + 1 >= 0x2000000001)
      {
        *__error() = 12;
LABEL_66:
        *a5 = 0;
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextGetDecryptionComponents", 623, 125, 0, "uri", v39, v40, v67);
        v27 = __str;
        goto LABEL_15;
      }

      v58 = malloc(v56 + 1);
      if (!v58)
      {
        goto LABEL_66;
      }

      v59 = v58;
      memcpy(v58, v55, v57);
      *a5 = v59;
      v47 = 2;
      v27 = __str;
      v45 = v70;
    }

    else
    {
      v47 = 2;
      v8 = v71;
    }

LABEL_48:
    v76 = 0;
    *__s = 0u;
    v75 = 0u;
    *__s1 = 0u;
    if ((AAJSONInputStreamRead(v21, __s1, v41, v42, v43, v44, v39, v40) & 0x80000000) != 0)
    {
      goto LABEL_56;
    }
  }

  if (v47 == 1)
  {
    v54 = __s1[1];
    if (__s1[1])
    {
      if (!strcmp(__s1[1], "encryption"))
      {
        v46 = 1;
      }

      if (!strcmp(v54, "location"))
      {
        v45 = 1;
      }
    }
  }

  ++v47;
LABEL_47:
  if (v47)
  {
    goto LABEL_48;
  }

  if (*a5 && *a6)
  {
    v28 = 0;
    goto LABEL_16;
  }

  v63 = "invalid/missing decryption components";
  v64 = 631;
LABEL_62:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextGetDecryptionComponents", v64, 125, 0, v63, v39, v40, v67);
LABEL_15:
  v28 = 0xFFFFFFFFLL;
LABEL_16:
  AAJSONInputStreamClose(v21);
  AAByteStreamClose(v18);
  free(v27);
  free(v8);
  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

uint64_t AAS3KnoxResolveURL(uint64_t a1, char **a2, void *a3, size_t a4, _BYTE *a5, size_t *a6, unint64_t a7)
{
  __s = 0;
  if (strncmp(a1, "knox://", 7uLL))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "AAS3KnoxResolveURL", 854, 125, 0, "invalid Knox scheme: %s", v14, v15, a1);
LABEL_11:
    v23 = 0;
    v24 = 0;
    v20 = 0;
    goto LABEL_12;
  }

  v16 = a1 + 7;
  v17 = strchr((a1 + 7), 47);
  v20 = v17;
  if (!v17)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "AAS3KnoxResolveURL", 859, 125, 0, "invalid Knox host: %s", v18, v19, a1);
    v23 = 0;
    v24 = 0;
LABEL_12:
    v32 = 0;
    v26 = 0;
    goto LABEL_13;
  }

  v21 = &v17[-v16];
  v22 = &v17[-v16 + 1];
  if (v22 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_10:
    v29 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "AAS3KnoxResolveURL", 863, 125, v29, "malloc", v30, v31, v73);
    goto LABEL_11;
  }

  v74 = a6;
  v25 = malloc(v22);
  if (!v25)
  {
    goto LABEL_10;
  }

  v26 = v25;
  memcpy(v25, (a1 + 7), &v20[-v16]);
  v21[v26] = 0;
  if (strncmp(v20 + 1, "download/", 9uLL))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "AAS3KnoxResolveURL", 869, 125, 0, "invalid Knox action: %s", v27, v28, a1);
LABEL_36:
    v23 = 0;
    v24 = 0;
    v20 = 0;
    goto LABEL_37;
  }

  v35 = v20 + 10;
  v36 = strchr(v20 + 10, 47);
  v20 = v36;
  if (!v36)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "AAS3KnoxResolveURL", 874, 125, 0, "invalid Knox space: %s", v37, v38, a1);
    v23 = 0;
    v24 = 0;
LABEL_37:
    v32 = 0;
    goto LABEL_13;
  }

  v39 = v36 - v35;
  v40 = v36 - v35 + 1;
  if (v40 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_35:
    v49 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "AAS3KnoxResolveURL", 878, 125, v49, "malloc", v50, v51, v73);
    goto LABEL_36;
  }

  v41 = malloc(v40);
  if (!v41)
  {
    goto LABEL_35;
  }

  v32 = v41;
  memcpy(v41, v35, v20 - v35);
  v42 = 0;
  v32[v39] = 0;
  v43 = v20 + 1;
  v44 = v20 + 1;
  do
  {
    v45 = v42;
    v46 = v43[v42];
    if (!v43[v42])
    {
      break;
    }

    if ((v46 & 0x80000000) != 0)
    {
      v47 = __maskrune(v43[v42], 0x4000uLL);
      v43 = v44;
    }

    else
    {
      v47 = *(MEMORY[0x277D85DE0] + 4 * v46 + 60) & 0x4000;
    }

    if ((v46 - 127) < 0xA1u)
    {
      break;
    }

    if (v46 == 47 || (v46 - 37) < 2u)
    {
      break;
    }

    if (v46 == 35)
    {
      break;
    }

    v42 = v45 + 1;
  }

  while (!v47);
  if (v45 + 1 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_48:
    v68 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "AAS3KnoxResolveURL", 895, 125, *v68, "malloc", v69, v70, v73);
    v23 = 0;
    v24 = 0;
    v20 = 0;
    goto LABEL_13;
  }

  v52 = malloc(v45 + 1);
  if (!v52)
  {
    goto LABEL_48;
  }

  v20 = v52;
  memcpy(v52, v44, v45);
  v20[v45] = 0;
  if (a7 >> 62)
  {
    v53 = MEMORY[0x277D85DF8];
    fwrite("Knox resolve URL\n", 0x11uLL, 1uLL, *MEMORY[0x277D85DF8]);
    fprintf(*v53, "  host: %s\n", v26);
    fprintf(*v53, "  space: %s\n", v32);
    fprintf(*v53, "  file digest: %s\n", v20);
  }

  v54 = contextCreate(a2, a7);
  v24 = v54;
  if (!v54)
  {
    v71 = "contextInit failed";
    v72 = 909;
LABEL_51:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "AAS3KnoxResolveURL", v72, 125, 0, v71, v55, v56, v73);
    v23 = 0;
    goto LABEL_13;
  }

  if ((contextResolveWestgateToken(v54, v26) & 0x80000000) != 0)
  {
    v71 = "getting Westgate token";
    v72 = 912;
    goto LABEL_51;
  }

  if ((contextGetDecryptionComponents(v24, v26, v32, v20, a3, &__s, v55, v56) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "AAS3KnoxResolveURL", 915, 125, 0, "getting decryption credentials", v57, v58, v73);
    v33 = 0xFFFFFFFFLL;
    v23 = __s;
    goto LABEL_14;
  }

  v23 = __s;
  v59 = strlen(__s);
  if (!v59 || (v59 & 1) != 0)
  {
    v73 = v59;
    v66 = "invalid key length: %zu";
    v67 = 919;
  }

  else
  {
    v65 = v59 >> 1;
    if (v59 >> 1 <= a4)
    {
      if ((aaParseHexString(v59 >> 1, a5, __s, v60, v61, v62, v63, v64) & 0x80000000) == 0)
      {
        v33 = 0;
        *v74 = v65;
        goto LABEL_14;
      }

      v66 = "invalid hex key";
      v67 = 922;
    }

    else
    {
      v66 = "key_capacity is too low";
      v67 = 921;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "AAS3KnoxResolveURL", v67, 125, 0, v66, v63, v64, v73);
LABEL_13:
  v33 = 0xFFFFFFFFLL;
LABEL_14:
  free(v26);
  free(v32);
  free(v20);
  free(v23);
  contextDestroy(v24);
  return v33;
}

uint64_t contextSetString(uint64_t a1, unsigned int a2, char *__s, char *a4)
{
  v4 = __s;
  if (!__s)
  {
    if (a4)
    {
      v4 = getenv(a4);
    }
  }

  if (!v4)
  {
    result = 0;
    *(a1 + 8 * a2) = 0;
    return result;
  }

  v7 = strlen(v4);
  v8 = v7 + 1;
  if (v7 + 1 < 0x2000000001)
  {
    v10 = malloc(v7 + 1);
    if (v10)
    {
      v11 = v10;
      memcpy(v10, v4, v8);
      result = 0;
      *(a1 + 8 * a2) = v11;
      return result;
    }
  }

  else
  {
    *__error() = 12;
  }

  *(a1 + 8 * a2) = 0;
  v12 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextSetString", 259, 125, *v12, "malloc", v13, v14, v15);
  return 0xFFFFFFFFLL;
}

uint64_t contextLoadString(uint64_t a1, unsigned int a2, char *a3)
{
  memset(&v31, 0, sizeof(v31));
  v6 = open(a3, 0);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = v6;
    if (fstat(v6, &v31) < 0 || ((st_size = v31.st_size, (v31.st_mode & 0xF000) == 0x8000) ? (v11 = v31.st_size == 0) : (v11 = 1), v11))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextLoadString", 274, 125, 0, "invalid file: %s", v8, v9, a3);
    }

    else
    {
      if ((v31.st_size + 1) < 0x2000000001)
      {
        v16 = malloc(v31.st_size + 1);
        if (v16)
        {
          v17 = v16;
          v18 = read(v7, v16, st_size);
          if (v18 < 0)
          {
            v27 = *__error();
            v28 = 280;
            v29 = a3;
          }

          else
          {
            if (v18 == st_size)
            {
              v21 = MEMORY[0x277D85DE0];
              do
              {
                v22 = v17[st_size - 1];
                if ((v22 & 0x80000000) != 0)
                {
                  if (!__maskrune(v22, 0x4000uLL))
                  {
                    break;
                  }
                }

                else if ((*(v21 + 4 * v22 + 60) & 0x4000) == 0)
                {
                  break;
                }

                --st_size;
              }

              while (st_size);
              v15 = 0;
              v17[st_size] = 0;
              *(a1 + 8 * a2) = v17;
              goto LABEL_25;
            }

            v29 = "truncated read";
            v28 = 281;
            v27 = 0;
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextLoadString", v28, 125, v27, v29, v19, v20, v30);
LABEL_24:
          free(v17);
          v15 = 0xFFFFFFFFLL;
LABEL_25:
          close(v7);
          return v15;
        }
      }

      else
      {
        *__error() = 12;
      }

      v23 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextLoadString", 277, 125, v23, "malloc", v24, v25, v30);
    }

    v17 = 0;
    goto LABEL_24;
  }

  v12 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "contextLoadString", 273, 125, *v12, a3, v13, v14, v30);
  return 0xFFFFFFFFLL;
}

uint64_t knoxPageStreamClose(int *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (a1[2] >= 1 && a1[4] && AAByteStreamWrite(*a1, "]\n", 2uLL) != 2)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "knoxPageStreamClose", 67, 125, 0, "writing final ']'", v2, v3, v6);
    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = 0;
  }

  free(a1);
  return v4;
}

uint64_t knoxPageStreamWrite(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v9 = a2;
  v11 = *(a1 + 8);
  if (v11)
  {
    if (v11 < 1)
    {
      v12 = 0;
      goto LABEL_28;
    }
  }

  else
  {
    if (!a3 || *a2 != 91)
    {
      v12 = 0;
      *(a1 + 8) = -1;
      goto LABEL_28;
    }

    *(a1 + 8) = 1;
  }

  v12 = 0;
  if (a3 && *(a1 + 12))
  {
    if (*a2 != 91)
    {
      v14 = "expected '['";
      v15 = 93;
LABEL_41:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "knoxPageStreamWrite", v15, 125, 0, v14, a7, a8, v23);
      return -1;
    }

    *(a1 + 12) = 0;
    v9 = a2 + 1;
    v8 = a3 - 1;
    v12 = 1;
  }

  if (!v8)
  {
    goto LABEL_35;
  }

  if (!*(a1 + 16))
  {
    v13 = 0;
    goto LABEL_18;
  }

  if (AAByteStreamWrite(*a1, "]", 1uLL) != 1)
  {
    v14 = "writing ']'";
    v15 = 105;
    goto LABEL_41;
  }

  *(a1 + 16) = 0;
  v13 = 1;
LABEL_18:
  v16 = v12 + 1;
  v17 = v8 - 1;
  v18 = MEMORY[0x277D85DE0];
  while (1)
  {
    v19 = v9[v17];
    if ((v19 & 0x80000000) != 0)
    {
      break;
    }

    if ((*(v18 + 4 * v19 + 60) & 0x4000) == 0)
    {
      goto LABEL_25;
    }

LABEL_23:
    ++v16;
    if (--v17 == -1)
    {
      goto LABEL_27;
    }
  }

  if (__maskrune(v19, 0x4000uLL))
  {
    goto LABEL_23;
  }

LABEL_25:
  if (v9[v17] == 93)
  {
    *(a1 + 16) = 1;
    v12 = v16;
    v8 = v17;
  }

LABEL_27:
  if (v8)
  {
LABEL_28:
    *(a1 + 20) = 1;
    v20 = *a1;
    if (*(v20 + 3))
    {
      if (v8)
      {
        v13 = 0;
        while (1)
        {
          v21 = (*(v20 + 3))(*v20, v9, v8);
          if (v21 < 1)
          {
            break;
          }

          v9 += v21;
          v13 += v21;
          v8 -= v21;
          if (!v8)
          {
            if ((v13 & 0x8000000000000000) == 0)
            {
              goto LABEL_39;
            }

            goto LABEL_37;
          }
        }

        v13 = v21;
        if (v21 < 0)
        {
          goto LABEL_37;
        }

        goto LABEL_39;
      }

LABEL_35:
      v13 = 0;
      goto LABEL_39;
    }

    v13 = -1;
LABEL_37:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Knox.c", "knoxPageStreamWrite", 124, 125, 0, "write", a7, a8, v23);
  }

  else
  {
LABEL_39:
    v13 += v12;
  }

  return v13;
}

size_t pc_log_error(uint64_t a1, uint64_t a2, __int16 a3, int a4, int a5, const char *a6, uint64_t a7, uint64_t a8, char a9)
{
  v20 = *MEMORY[0x277D85DE8];
  bzero(__str, 0x400uLL);
  v13 = ((a3 & 0x3FFF) << 10) | (a4 << 24);
  if (a5 >= 1)
  {
    v14 = strerror(a5);
    snprintf(__str, 0x400uLL, "%s: ", v14);
  }

  v15 = v13 & 0xFFFFFC00 | a5 & 0x3FF;
  v16 = strlen(__str);
  vsnprintf(&__str[v16], 1024 - v16, a6, &a9);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    pc_log_error_cold_1(__str, v15 | 0x80000000);
  }

  result = ParallelCompressionUpdateError((v15 | 0x80000000), __str);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t pc_log_warning(uint64_t a1, uint64_t a2, __int16 a3, int a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v21 = *MEMORY[0x277D85DE8];
  bzero(__s, 0x400uLL);
  v12 = ((a3 & 0x3FFF) << 10) | (a4 << 24) | 0x80000000;
  v13 = strlen(__s);
  vsnprintf(&__s[v13], 1024 - v13, a5, &a9);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v17 = v12;
    v18 = 2082;
    v19 = __s;
    _os_log_impl(&dword_248DE0000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[0x%08x](warning) %{public}s", buf, 0x12u);
  }

  result = ParallelCompressionUpdateWarning(v12, __s);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void pc_log_error_cold_1(uint64_t a1, int a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109378;
  v3[1] = a2;
  v4 = 2082;
  v5 = a1;
  _os_log_error_impl(&dword_248DE0000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[0x%08x] %{public}s", v3, 0x12u);
  v2 = *MEMORY[0x277D85DE8];
}

size_t appendThreadErrorContextString(size_t result)
{
  if (result)
  {
    v1 = result;
    result = strlen(result);
    if (result - 8193 >= 0xFFFFFFFFFFFFE000)
    {
      v2 = result;
      ErrorContextKey = getErrorContextKey();
      result = pthread_getspecific(ErrorContextKey);
      if (result)
      {
        v4 = result;
        v5 = v2 + 3;
        v6 = *(result + 72);
        if (v6 + (v2 + 3) <= *(result + 74))
        {
          v7 = result + v6;
          *(v7 + 76) = v5;
          v8 = v7 + 78;
          result = memcpy((v7 + 78), v1, v2);
          *(v8 + v2) = 0;
          *(v4 + 72) += v5;
        }
      }
    }
  }

  return result;
}

_WORD *updateThreadErrorContextErrorCode(_WORD *result)
{
  if ((result & 0x80000000) != 0)
  {
    v1 = result;
    ErrorContextKey = getErrorContextKey();
    result = pthread_getspecific(ErrorContextKey);
    if (result)
    {
      if ((*result & 0x80000000) == 0)
      {
        *result = v1;
        result[3] = 0;
      }
    }
  }

  return result;
}

_DWORD *updateThreadErrorContextWarningCode(_DWORD *result)
{
  if ((result & 0x80000000) != 0)
  {
    v1 = result;
    ErrorContextKey = getErrorContextKey();
    result = pthread_getspecific(ErrorContextKey);
    if (result)
    {
      if ((*result & 0x80000000) == 0)
      {
        v3 = *(result + 3);
        if (v3 <= 0xF)
        {
          result[v3 + 2] = v1;
          *(result + 3) = v3 + 1;
        }
      }
    }
  }

  return result;
}

size_t ParallelCompressionUpdateError(_WORD *a1, size_t a2)
{
  updateThreadErrorContextErrorCode(a1);

  return appendThreadErrorContextString(a2);
}

uint64_t getErrorContextKey()
{
  if (pthread_once(&getErrorContextKey_errorContextOnce, createErrorContextKey))
  {
    v0 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "getErrorContextKey", 53, 5, *v0, "pthread_once");
  }

  return gErrorContextKey;
}

uint64_t createErrorContextKey()
{
  result = pthread_key_create(&gErrorContextKey, 0);
  if (result)
  {
    v1 = *__error();

    return pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createErrorContextKey", 42, 5, v1, "pthread_key_create");
  }

  return result;
}

uint64_t aaParseHexString(int a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = (2 * a1);
  if (!v8)
  {
LABEL_15:
    v11 = 0;
    return (v11 << 31 >> 31);
  }

  v9 = 0;
  v10 = 0;
  v11 = 1;
  while (1)
  {
    v12 = *(a3 + v10);
    if (!*(a3 + v10))
    {
      v14 = "truncated hex string";
      v15 = 13;
      goto LABEL_17;
    }

    v13 = 16 * v9;
    if ((v12 - 48) <= 9)
    {
      v9 = v12 + v13 - 48;
      if ((v10 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    if ((v12 - 97) > 5)
    {
      break;
    }

    v9 = v13 + v12 - 87;
    if (v10)
    {
      goto LABEL_9;
    }

LABEL_10:
    v11 = ++v10 < v8;
    if (v8 == v10)
    {
      goto LABEL_15;
    }
  }

  if ((v12 - 65) <= 5)
  {
    v9 = v13 + v12 - 55;
    if ((v10 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    *a2++ = v9;
    v9 = 0;
    goto LABEL_10;
  }

  v14 = "invalid hex string";
  v15 = 18;
LABEL_17:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASerialization.c", "aaParseHexString", v15, 106, 0, v14, a7, a8, v17);
  return (v11 << 31 >> 31);
}

uint64_t jsonPushLabel(uint64_t a1, char a2)
{
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  v6 = (a1 + 72);
  if (v5 >= v4)
  {
    if (v4)
    {
      v8 = v4 + (v4 >> 1);
    }

    else
    {
      v8 = 256;
    }

    *(a1 + 72) = v8;
    v7 = reallocf(*(a1 + 88), v8);
    *(a1 + 88) = v7;
    if (!v7)
    {
      v11 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "jsonPushLabel", 358, 109, *v11, "malloc", v12, v13, v14);
      *v6 = 0;
      v6[1] = 0;
      return 0xFFFFFFFFLL;
    }

    v5 = *(a1 + 80);
  }

  else
  {
    v7 = *(a1 + 88);
  }

  v9 = 0;
  *(a1 + 80) = v5 + 1;
  v7[v5] = a2;
  return v9;
}

uint64_t jsonPushValue(uint64_t a1, char a2)
{
  v4 = *(a1 + 96);
  v5 = *(a1 + 104);
  v6 = (a1 + 96);
  if (v5 >= v4)
  {
    if (v4)
    {
      v8 = v4 + (v4 >> 1);
    }

    else
    {
      v8 = 256;
    }

    *(a1 + 96) = v8;
    v7 = reallocf(*(a1 + 112), v8);
    *(a1 + 112) = v7;
    if (!v7)
    {
      v11 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "jsonPushValue", 372, 109, *v11, "malloc", v12, v13, v14);
      *v6 = 0;
      v6[1] = 0;
      return 0xFFFFFFFFLL;
    }

    v5 = *(a1 + 104);
  }

  else
  {
    v7 = *(a1 + 112);
  }

  v9 = 0;
  *(a1 + 104) = v5 + 1;
  v7[v5] = a2;
  return v9;
}

void *AAJSONInputStreamOpen(uint64_t a1)
{
  v2 = malloc(0x78uLL);
  v3 = v2;
  if (v2)
  {
    memset_s(v2, 0x78uLL, 0, 0x78uLL);
    v3[1] = a1;
    v3[5] = 0x10000;
    v4 = malloc(0x10000uLL);
    v3[8] = v4;
    if (v4)
    {
      *(v3 + 20) = 32;
      v3[4] = calloc(0x20uLL, 4uLL);
    }

    else
    {
      v8 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamOpen", 387, 109, *v8, "malloc", v9, v10, v12);
      AAJSONInputStreamClose(v3);
      return 0;
    }
  }

  else
  {
    v5 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamOpen", 382, 109, *v5, "malloc", v6, v7, v12);
  }

  return v3;
}

void AAJSONInputStreamClose(void **a1)
{
  if (a1)
  {
    free(a1[4]);
    free(a1[11]);
    free(a1[14]);
    free(a1[8]);

    free(a1);
  }
}

uint64_t AAJSONInputStreamRead(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (atomic_load(a1))
  {
    return 0xFFFFFFFFLL;
  }

  v10 = *(a1 + 16);
  if (v10 == 9 || v10 == -1)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamRead", 418, 109, 0, "unexpected read call", a7, a8, v44);
    return 0xFFFFFFFFLL;
  }

  *(a1 + 80) = 0;
  *(a1 + 104) = 0;
  v14 = MEMORY[0x277D85DE0];
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v15 = *(a1 + 56);
            v16 = *(a1 + 64);
            if (v15 >= *(a1 + 48))
            {
              v17 = AAByteStreamRead(*(a1 + 8), v16, *(a1 + 40));
              if (v17 < 0)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamRead", 430, 109, 0, "read error: %zd", a7, a8, v17);
                goto LABEL_113;
              }

              if (!v17)
              {
                v29 = "EOF reached";
                v30 = 431;
                goto LABEL_112;
              }

              v15 = 0;
              *(a1 + 48) = v17;
              v16 = *(a1 + 64);
            }

            *(a1 + 56) = v15 + 1;
            v18 = v16[v15];
            v19 = v16[v15];
            v20 = *(a1 + 16);
            if (v20 > 3)
            {
              break;
            }

            if (v20 > 1)
            {
              if (v20 == 2)
              {
                if (((v19 - 98) >> 1) | ((v19 - 98) << 7)) < 0xAu && ((0x341u >> (((v19 - 98) >> 1) | ((v19 - 98) << 7))))
                {
                  v22 = asc_248FADE60[(((v19 - 98) >> 1) | ((v19 - 98) << 7))];
                }

                else if (v18 == 102)
                {
                  v22 = 12;
                }

                else
                {
                  v22 = v16[v15];
                }

                if ((jsonPushValue(a1, v22) & 0x80000000) != 0)
                {
                  v29 = "jsonPushValue";
                  v30 = 512;
                  goto LABEL_112;
                }

LABEL_55:
                v21 = 1;
                goto LABEL_78;
              }

              if ((v18 - 48) > 9)
              {
                *(a1 + 16) = 5;
                *(a1 + 56) = v15;
                if ((jsonPushValue(a1, 0) & 0x80000000) != 0)
                {
                  v29 = "jsonPushValue";
                  v30 = 539;
                  goto LABEL_112;
                }

                v26 = 4;
                goto LABEL_130;
              }

              if ((jsonPushValue(a1, v18) & 0x80000000) != 0)
              {
                v29 = "jsonPushValue";
                v30 = 533;
                goto LABEL_112;
              }
            }

            else if (v20)
            {
              if (v20 != 1)
              {
                goto LABEL_111;
              }

              if (v18 == 92)
              {
                v21 = 2;
                goto LABEL_78;
              }

              if (v18 == 34)
              {
                *(a1 + 16) = 5;
                if ((jsonPushValue(a1, 0) & 0x80000000) == 0)
                {
                  v26 = 3;
                  goto LABEL_130;
                }

                v29 = "jsonPushValue";
                v30 = 499;
LABEL_112:
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamRead", v30, 109, 0, v29, a7, a8, v44);
LABEL_113:
                result = 0xFFFFFFFFLL;
                *(a1 + 16) = -1;
                return result;
              }

              if ((jsonPushValue(a1, v18) & 0x80000000) != 0)
              {
                v29 = "jsonPushValue";
                v30 = 503;
                goto LABEL_112;
              }
            }

            else
            {
              *(a1 + 104) = 0;
              if (v18 < 0)
              {
                if (!__maskrune(v18, 0x4000uLL))
                {
                  goto LABEL_63;
                }
              }

              else if ((*(v14 + 4 * v18 + 60) & 0x4000) == 0)
              {
LABEL_63:
                if (v18 == 34)
                {
                  goto LABEL_55;
                }

                if (v18 == 43 || v18 == 45 || (v18 - 48) <= 9)
                {
                  if ((jsonPushValue(a1, v18) & 0x80000000) != 0)
                  {
                    v29 = "jsonPushValue";
                    v30 = 451;
                    goto LABEL_112;
                  }

                  v21 = 3;
                }

                else
                {
                  if (v18 == 123)
                  {
                    v31 = *(a1 + 24);
                    if (v31 != *(a1 + 20))
                    {
                      v26 = 0;
                      v42 = *(a1 + 32);
                      *(a1 + 24) = v31 + 1;
                      *(v42 + 4 * v31) = 0;
                      v35 = 6;
                      goto LABEL_129;
                    }

                    v29 = "max level reached";
                    v30 = 465;
                    goto LABEL_112;
                  }

                  if (v18 == 91)
                  {
                    v32 = *(a1 + 24);
                    if (v32 != *(a1 + 20))
                    {
                      v35 = 0;
                      v43 = *(a1 + 32);
                      *(a1 + 24) = v32 + 1;
                      v26 = 1;
                      *(v43 + 4 * v32) = 1;
                      goto LABEL_129;
                    }

                    v29 = "max level reached";
                    v30 = 457;
                    goto LABEL_112;
                  }

                  if ((v18 - 97) > 0x19)
                  {
                    v24 = *(a1 + 24) - 1;
                    v33 = v18 != 93;
                    if (*(*(a1 + 32) + 4 * v24))
                    {
                      v34 = 0;
                    }

                    else
                    {
                      v33 = 1;
                      v34 = v18 == 125;
                    }

                    if (!v33 || v34)
                    {
                      goto LABEL_125;
                    }

LABEL_111:
                    v44 = v19;
                    v45 = *(a1 + 64) + *(a1 + 56) - 1;
                    v29 = "invalid char %c %s";
                    v30 = 610;
                    goto LABEL_112;
                  }

                  if ((jsonPushValue(a1, v18) & 0x80000000) != 0)
                  {
                    v29 = "jsonPushValue";
                    v30 = 473;
                    goto LABEL_112;
                  }

                  v21 = 4;
                }

LABEL_78:
                *(a1 + 16) = v21;
              }
            }
          }

          if (v20 <= 5)
          {
            break;
          }

          switch(v20)
          {
            case 6:
              *(a1 + 80) = 0;
              if (v18 < 0)
              {
                if (!__maskrune(v18, 0x4000uLL))
                {
LABEL_70:
                  if (v18 != 34)
                  {
                    if (v18 != 125)
                    {
                      goto LABEL_111;
                    }

                    v28 = *(a1 + 24);
                    if (v28)
                    {
                      v24 = v28 - 1;
                      v25 = *(*(a1 + 32) + 4 * v24);
                      goto LABEL_100;
                    }

                    goto LABEL_101;
                  }

                  v21 = 7;
                  goto LABEL_78;
                }
              }

              else if ((*(v14 + 4 * v18 + 60) & 0x4000) == 0)
              {
                goto LABEL_70;
              }

              break;
            case 7:
              if (v18 == 34)
              {
                if ((jsonPushLabel(a1, 0) & 0x80000000) != 0)
                {
                  v29 = "jsonPushLabel";
                  v30 = 587;
                  goto LABEL_112;
                }

                v21 = 8;
                goto LABEL_78;
              }

              if ((jsonPushLabel(a1, v18) & 0x80000000) != 0)
              {
                v29 = "jsonPushLabel";
                v30 = 591;
                goto LABEL_112;
              }

              break;
            case 8:
              if (v18 < 0)
              {
                if (!__maskrune(v18, 0x4000uLL))
                {
LABEL_60:
                  if (v18 != 58)
                  {
                    goto LABEL_111;
                  }

                  v21 = 0;
                  goto LABEL_78;
                }
              }

              else if ((*(v14 + 4 * v18 + 60) & 0x4000) == 0)
              {
                goto LABEL_60;
              }

              break;
            default:
              goto LABEL_111;
          }
        }

        if (v20 != 4)
        {
          break;
        }

        if ((v18 - 97) > 0x19)
        {
          *(a1 + 16) = 5;
          *(a1 + 56) = v15;
          if ((jsonPushValue(a1, 0) & 0x80000000) != 0)
          {
            v29 = "jsonPushValue";
            v30 = 524;
            goto LABEL_112;
          }

          v27 = *(a1 + 112);
          if (!strcmp(v27, "false") || !strcmp(v27, "true"))
          {
            v26 = 6;
          }

          else
          {
            if (strcmp(v27, "null"))
            {
              goto LABEL_111;
            }

            v26 = 7;
          }

          goto LABEL_130;
        }

        if ((jsonPushValue(a1, v18) & 0x80000000) != 0)
        {
          v29 = "jsonPushValue";
          v30 = 519;
          goto LABEL_112;
        }
      }

      if (v18 < 0)
      {
        break;
      }

      if ((*(v14 + 4 * v18 + 60) & 0x4000) == 0)
      {
        goto LABEL_73;
      }
    }
  }

  while (__maskrune(v18, 0x4000uLL));
LABEL_73:
  v23 = *(a1 + 24);
  if (!v23)
  {
    v29 = "invalid JSON state";
    v30 = 546;
    goto LABEL_112;
  }

  v24 = v23 - 1;
  v25 = *(*(a1 + 32) + 4 * v24);
  switch(v18)
  {
    case ',':
      if (v25)
      {
        v21 = 0;
      }

      else
      {
        v21 = 6;
      }

      goto LABEL_78;
    case ']':
      if ((v25 & 1) == 0)
      {
        v19 = 93;
        goto LABEL_111;
      }

      break;
    case '}':
LABEL_100:
      if (v25)
      {
LABEL_101:
        v19 = 125;
        goto LABEL_111;
      }

      break;
    default:
      goto LABEL_111;
  }

LABEL_125:
  *(a1 + 24) = v24;
  if (v24)
  {
    v35 = 5;
  }

  else
  {
    v35 = 9;
  }

  v26 = 2;
LABEL_129:
  *(a1 + 16) = v35;
LABEL_130:
  if (a2)
  {
    memset_s(a2, 0x38uLL, 0, 0x38uLL);
  }

  *a2 = v26;
  v36 = *(a1 + 80);
  if (v36)
  {
    v36 = *(a1 + 88);
  }

  *(a2 + 1) = v36;
  a2[12] = *(a1 + 24);
  if (v26 == 6)
  {
    v40 = strcmp(*(a1 + 112), "true");
    result = 0;
    a2[9] = v40 == 0;
  }

  else if (v26 == 4)
  {
    v37 = *(a1 + 112);
    if (*v37 == 45)
    {
      v38 = strtoull(v37 + 1, 0, 10);
      result = 0;
      *(a2 + 3) = v38;
      v39 = -1;
    }

    else
    {
      v41 = strtoull(v37, 0, 0);
      result = 0;
      *(a2 + 3) = v41;
      v39 = v41 != 0;
    }

    a2[8] = v39;
  }

  else
  {
    result = 0;
    if (v26 == 3)
    {
      *(a2 + 2) = *(a1 + 112);
    }
  }

  return result;
}

void *frk_unwrapped_symmetric_key_with_shipping_private_key(void *a1, void *a2, void *a3)
{
  v46[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a1 objectForKey:@"com.apple.wkms.fcs-response"];
  v7 = v6;
  if (!v5)
  {
    v33 = a3;
    v18 = MEMORY[0x277CCA9B8];
    v45 = *MEMORY[0x277CCA450];
    v46[0] = @"ERROR: Shipping private key is NULL.";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:&v45 count:1];
    v19 = v18;
    v20 = 26;
LABEL_14:
    v15 = [v19 errorWithDomain:@"com.apple.internal.fetchrestorekeys" code:v20 userInfo:v12];
    v11 = 0;
    v14 = 0;
    v10 = 0;
    v8 = 0;
LABEL_16:
    v16 = 0;
    goto LABEL_17;
  }

  if (!v6)
  {
    v33 = a3;
    v21 = MEMORY[0x277CCA9B8];
    v43 = *MEMORY[0x277CCA450];
    v44 = @"ERROR: This archive does not contain a shipping key response.";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v19 = v21;
    v20 = 25;
    goto LABEL_14;
  }

  v36 = 0;
  v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:0 error:&v36];
  v9 = v36;
  if (!v8)
  {
    v11 = 0;
    v14 = 0;
    v10 = 0;
    v16 = 0;
    if (!a3)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v33 = a3;
  v10 = [v8 objectForKey:@"wrapped-key"];
  v11 = [v8 objectForKey:@"enc-request"];
  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || !v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v22 = MEMORY[0x277CCA9B8];
    v41 = *MEMORY[0x277CCA450];
    v42 = @"ERROR: Response dictionary is missing required keys. Will fail";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v15 = [v22 errorWithDomain:@"com.apple.internal.fetchrestorekeys" code:23 userInfo:v12];

    v14 = 0;
    goto LABEL_16;
  }

  v12 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v10 options:0];
  v13 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v11 options:0];
  v32 = v13;
  if (!v12)
  {
    v27 = MEMORY[0x277CCA9B8];
    v39 = *MEMORY[0x277CCA450];
    v40 = @"ERROR: shipping key wrapped-key failed base64 decode";
    v28 = MEMORY[0x277CBEAC0];
    v29 = &v40;
    v30 = &v39;
LABEL_24:
    v15 = [v28 dictionaryWithObjects:v29 forKeys:v30 count:{1, v32}];
    v31 = [v27 errorWithDomain:@"com.apple.internal.fetchrestorekeys" code:19 userInfo:v15];

    v17 = v31;
    v14 = 0;
    v16 = 0;
    goto LABEL_25;
  }

  if (!v13)
  {
    v27 = MEMORY[0x277CCA9B8];
    v37 = *MEMORY[0x277CCA450];
    v38 = @"ERROR: shipping key enc-request failed base64 decode";
    v28 = MEMORY[0x277CBEAC0];
    v29 = &v38;
    v30 = &v37;
    goto LABEL_24;
  }

  v35 = v9;
  v14 = [_TtC16FetchRestoreKeys16CryptoKitWrapper convertPrivateKeyTox963WithPemPrivateKey:v5 error:&v35];
  v15 = v35;

  if (!v14)
  {
    v16 = 0;
    goto LABEL_26;
  }

  v34 = v15;
  v16 = [_TtC16FetchRestoreKeys16CryptoKitWrapper unwrapEncryptionKeyWithWrappedKey:v12 encapsulatedKey:v32 privateKey:v14 error:&v34];
  v17 = v34;
LABEL_25:

  v15 = v17;
LABEL_26:

LABEL_17:
  v9 = v15;
  a3 = v33;
  if (v33)
  {
LABEL_18:
    v23 = v9;
    *a3 = v9;
  }

LABEL_19:
  v24 = v16;

  v25 = *MEMORY[0x277D85DE8];
  return v16;
}

id frk_metadata_from_aea_auth_data(AEAAuthData_impl *a1, void *a2)
{
  v44[1] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  EntryCount = AEAAuthDataGetEntryCount(a1);
  if (!EntryCount)
  {
LABEL_12:
    v16 = [v4 copy];
    v17 = 0;
    if (a2)
    {
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v6 = EntryCount;
  v7 = 0;
  while (1)
  {
    data_size = 0;
    key_length = 0;
    if (AEAAuthDataGetEntry(a1, v7, 0, 0, &key_length, 0, 0, &data_size))
    {
      v18 = MEMORY[0x277CCA9B8];
      v31 = *MEMORY[0x277CCA450];
      v32 = @"Failed to parse auth data blob.";
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v17 = [v18 errorWithDomain:@"com.apple.internal.fetchrestorekeys" code:17 userInfo:v19];

      goto LABEL_22;
    }

    if (!key_length)
    {
      v20 = MEMORY[0x277CCA9B8];
      v43 = *MEMORY[0x277CCA450];
      v44[0] = @"Failed to parse key in KVS (zero size key).";
      v21 = MEMORY[0x277CBEAC0];
      v22 = v44;
      v23 = &v43;
LABEL_20:
      v13 = [v21 dictionaryWithObjects:v22 forKeys:v23 count:1];
      v17 = [v20 errorWithDomain:@"com.apple.internal.fetchrestorekeys" code:17 userInfo:v13];
      goto LABEL_21;
    }

    v8 = ++key_length;
    if (!data_size)
    {
      v20 = MEMORY[0x277CCA9B8];
      v41 = *MEMORY[0x277CCA450];
      v42 = @"Failed to parse key in KVS (zero size data).";
      v21 = MEMORY[0x277CBEAC0];
      v22 = &v42;
      v23 = &v41;
      goto LABEL_20;
    }

    v9 = malloc_type_calloc(1uLL, v8, 0x7A69EC4uLL);
    if (!v9)
    {
      v20 = MEMORY[0x277CCA9B8];
      v39 = *MEMORY[0x277CCA450];
      v40 = @"KVS keyBuffer allocation failure.";
      v21 = MEMORY[0x277CBEAC0];
      v22 = &v40;
      v23 = &v39;
      goto LABEL_20;
    }

    v10 = v9;
    v11 = malloc_type_calloc(1uLL, data_size, 0x5189DB6BuLL);
    if (!v11)
    {
      free(v10);
      v20 = MEMORY[0x277CCA9B8];
      v37 = *MEMORY[0x277CCA450];
      v38 = @"KVS dataBuffer allocation failure.";
      v21 = MEMORY[0x277CBEAC0];
      v22 = &v38;
      v23 = &v37;
      goto LABEL_20;
    }

    v12 = v11;
    if (AEAAuthDataGetEntry(a1, v7, key_length, v10, &key_length, data_size, v11, &data_size))
    {
      free(v10);
      free(v12);
      v20 = MEMORY[0x277CCA9B8];
      v35 = *MEMORY[0x277CCA450];
      v36 = @"KVS data fetch failure.";
      v21 = MEMORY[0x277CBEAC0];
      v22 = &v36;
      v23 = &v35;
      goto LABEL_20;
    }

    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v10];
    v14 = objc_alloc(MEMORY[0x277CBEA90]);
    v15 = [v14 initWithBytesNoCopy:v12 length:data_size freeWhenDone:1];
    free(v10);
    if (!v13 || !v15)
    {
      break;
    }

    [v4 setObject:v15 forKey:v13];

    if (v6 == ++v7)
    {
      goto LABEL_12;
    }
  }

  v27 = MEMORY[0x277CCA9B8];
  v33 = *MEMORY[0x277CCA450];
  v34 = @"KVS key value - parse failure.";
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
  v17 = [v27 errorWithDomain:@"com.apple.internal.fetchrestorekeys" code:17 userInfo:v28];

LABEL_21:
LABEL_22:
  v16 = 0;
  if (a2)
  {
LABEL_23:
    v24 = v17;
    *a2 = v17;
  }

LABEL_24:

  v25 = *MEMORY[0x277D85DE8];

  return v16;
}

id sub_248F93C9C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t, unint64_t))
{
  v6 = a3;
  v7 = sub_248F96D38();
  v9 = v8;

  v10 = a5(v7, v9);
  v12 = v11;
  sub_248F95B14(v7, v9);
  v13 = sub_248F96D18();
  sub_248F95B14(v10, v12);

  return v13;
}

id sub_248F94064()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_248F94098()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CryptoKitWrapper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_248F9410C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CryptoKitWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_248F94140(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_248F96ED8();
  sub_248F96EA8();
  v6 = sub_248F96EE8();

  return sub_248F941B8(a1, a2, v6);
}

unint64_t sub_248F941B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_248F96EC8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_248F94270@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    v5 = v3;
    if (!v4)
    {
      v6 = a3;
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      v14 = v13;
      v15 = v13 + BYTE6(a2);
      goto LABEL_10;
    }

    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    a1 = a1;
    v8 = v9;
LABEL_8:
    result = sub_248F943EC(a1, v8, a3);
    goto LABEL_12;
  }

  if (v4 == 2)
  {
    v7 = *(a1 + 24);
    a1 = *(a1 + 16);
    v8 = v7;
    goto LABEL_8;
  }

  v6 = a3;
  memset(v13, 0, 14);
  v14 = v13;
  v15 = v13;
  v5 = v3;
LABEL_10:
  sub_248F95C18();
  result = sub_248F96D88();
  if (!v5)
  {
    *v6 = result;
    v6[1] = v11;
  }

LABEL_12:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_248F943EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_248F96CD8();
  if (result)
  {
    result = sub_248F96CF8();
    if (__OFSUB__(a1, result))
    {
      goto LABEL_8;
    }
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  sub_248F96CE8();
  sub_248F95C18();
  result = sub_248F96D88();
  if (!v3)
  {
    *a3 = result;
    a3[1] = v8;
  }

  return result;
}

unint64_t sub_248F944B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECE510, &qword_248FADEF0);
    v3 = sub_248F96EB8();
    v4 = a1 + 32;

    while (1)
    {
      sub_248F95C6C(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_248F94140(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_248F95CDC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_248F945C0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_248F96E98();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_248F96E38();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v24[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = a1;
  v26 = a2;
  sub_248F95CEC(a1, a2);
  sub_248F96E28();
  if (!v2)
  {
    v27 = 0;
    sub_248F96E08();
    sub_248F96E88();
    v3 = sub_248F96E68();
    v17 = v16;

    (*(v7 + 8))(v10, v6);
    if (v17 >> 60 == 15)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECE4E0, &qword_248FADEC8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_248FADE70;
      v19 = *MEMORY[0x277CCA450];
      *(inited + 32) = sub_248F96E58();
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 40) = v20;
      *(inited + 48) = 0xD000000000000017;
      *(inited + 56) = 0x8000000248FD7710;
      v21 = @"com.apple.internal.fetchrestorekeys";
      sub_248F944B0(inited);
      swift_setDeallocating();
      sub_248F95BB0(inited + 32);
      v22 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v3 = sub_248F96E48();

      [v22 initWithDomain:v21 code:31 userInfo:v3];

      swift_willThrow();
    }

    (*(v12 + 8))(v15, v11);
  }

  return v3;
}

unint64_t sub_248F948E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECE500, &qword_248FADEE8);
    v3 = sub_248F96EB8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_248F94140(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

id sub_248F949F8()
{
  v1 = v0;
  v2 = sub_248F96E98();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_248F96E38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_248F96E88();
  v8 = sub_248F96E78();
  if (v9)
  {
    MEMORY[0x28223BE20](v8);
    sub_248F96DF8();
    if (!v0)
    {
      v15 = (*(v5 + 32))(&v17[-v7], &v17[-v7], v4);
      v1 = MEMORY[0x24C1EC7A0](v15);
      (*(v5 + 8))(&v17[-v7], v4);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECE4E0, &qword_248FADEC8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_248FADE70;
    v11 = *MEMORY[0x277CCA450];
    *(inited + 32) = sub_248F96E58();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v12;
    *(inited + 48) = 0xD000000000000017;
    *(inited + 56) = 0x8000000248FD7710;
    v13 = @"com.apple.internal.fetchrestorekeys";
    sub_248F944B0(inited);
    swift_setDeallocating();
    sub_248F95BB0(inited + 32);
    v1 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v14 = sub_248F96E48();

    [v1 initWithDomain:v13 code:31 userInfo:v14];

    swift_willThrow();
  }

  return v1;
}

__CFString *sub_248F94CC8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (MEMORY[0x277CC5470])
  {
    v7 = MEMORY[0x277CC5478] == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7 || MEMORY[0x277CC5480] == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECE4E0, &qword_248FADEC8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_248FADE70;
    v10 = *MEMORY[0x277CCA450];
    *(inited + 32) = sub_248F96E58();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v11;
    *(inited + 48) = 0xD000000000000027;
    *(inited + 56) = 0x8000000248FD76E0;
    v18 = @"com.apple.internal.fetchrestorekeys";
    sub_248F944B0(inited);
    swift_setDeallocating();
    sub_248F95BB0(inited + 32);
    v12 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v13 = sub_248F96E48();

    [v12 initWithDomain:v18 code:12 userInfo:v13];

    swift_willThrow();
  }

  else
  {
    v52 = a2;
    v53 = a3;
    v56 = a4;
    v51 = a1;
    v16 = sub_248F96E38();
    v17 = *(v16 - 8);
    v18 = *(v17 + 64);
    MEMORY[0x28223BE20](v16);
    v19 = (&v18->info + 7) & 0xFFFFFFFFFFFFFFF0;
    v20 = &v39 - v19;
    v54 = a5;
    v55 = a6;
    sub_248F95CEC(a5, a6);
    sub_248F96E28();
    if (!v6)
    {
      v48 = &v39;
      v21 = sub_248F96D58();
      v47 = &v39;
      v22 = *(v21 - 8);
      v49 = v16;
      v50 = v22;
      v23 = v17;
      v24 = *(v22 + 64);
      MEMORY[0x28223BE20](v21);
      v44 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
      v25 = &v39 - v44;
      sub_248F96D48();
      v26 = sub_248F96DC8();
      v46 = &v39;
      v40 = v26;
      v39 = *(v26 - 8);
      v27 = *(v39 + 64);
      v28 = MEMORY[0x28223BE20](v26);
      v30 = &v39 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
      v43 = &v39;
      MEMORY[0x28223BE20](v28);
      v45 = v23;
      v31 = (*(v23 + 16))(&v39 - v19, &v39 - v19, v49);
      v42 = &v39;
      MEMORY[0x28223BE20](v31);
      v32 = *(v50 + 16);
      v33 = &v39 - v44;
      v44 = v21;
      v32(v33, v25, v21);
      sub_248F95CEC(v53, v56);
      v41 = v30;
      sub_248F96DA8();
      v34 = v39;
      v35 = v40;
      v36 = v50;
      v54 = v51;
      v55 = v52;
      sub_248F95D40();
      v37 = v41;
      v18 = sub_248F96DB8();
      (*(v34 + 8))(v37, v35);
      (*(v36 + 8))(v25, v44);
      (*(v45 + 8))(v20, v49);
    }
  }

  return v18;
}

__SecKey *sub_248F952E0(unint64_t a1, uint64_t a2, SecCertificateRef certificate)
{
  if (MEMORY[0x277CC5470])
  {
    v4 = MEMORY[0x277CC5478] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || MEMORY[0x277CC5480] == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECE4E0, &qword_248FADEC8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_248FADE70;
    v7 = *MEMORY[0x277CCA450];
    *(inited + 32) = sub_248F96E58();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v8;
    *(inited + 48) = 0xD000000000000027;
    *(inited + 56) = 0x8000000248FD76E0;
    v9 = @"com.apple.internal.fetchrestorekeys";
    sub_248F944B0(inited);
    swift_setDeallocating();
    sub_248F95BB0(inited + 32);
    v10 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v11 = sub_248F96E48();

    [v10 initWithDomain:v9 code:12 userInfo:v11];

    swift_willThrow();
    return v9;
  }

  result = SecCertificateCopyKey(certificate);
  if (result)
  {
    v15 = result;
    v61 = a1;
    v64 = a2;
    result = SecKeyCopyExternalRepresentation(result, 0);
    if (result)
    {
      v16 = result;
      v17 = sub_248F96DE8();
      v18 = *(v17 - 8);
      v9 = *(v18 + 64);
      MEMORY[0x28223BE20](v17);
      v19 = (&v9->info + 7) & 0xFFFFFFFFFFFFFFF0;
      v62 = sub_248F96D38();
      v63 = v20;
      sub_248F96DD8();
      if (v3)
      {
      }

      else
      {
        v53 = v15;
        v57 = &v45;
        v59 = sub_248F96D58();
        v55 = &v45;
        v21 = *(v59 - 8);
        v58 = &v45 - v19;
        v51 = v21;
        v60 = v17;
        v22 = v18;
        v23 = *(v21 + 64);
        MEMORY[0x28223BE20](v59);
        v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_248F96D48();
        v25 = sub_248F96D98();
        v54 = &v45;
        v49 = v25;
        v48 = *(v25 - 8);
        v26 = *(v48 + 64);
        v27 = MEMORY[0x28223BE20](v25);
        v29 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
        v52 = &v45;
        MEMORY[0x28223BE20](v27);
        v56 = v22;
        v30 = (*(v22 + 16))(&v45 - v19, v58, v60);
        v50 = &v45;
        MEMORY[0x28223BE20](v30);
        v31 = v51;
        (*(v51 + 16))(v24, v24, v59);
        v32 = v29;
        v33 = v60;
        sub_248F96D68();
        v47 = v24;
        v34 = v31;
        sub_248F94270(v61, v64, &v62);
        v35 = v53;
        v64 = v62;
        v61 = v63;
        v50 = sub_248F96D28();
        v52 = v36;
        v46 = v32;
        v37 = sub_248F96D78();
        v39 = v38;
        v45 = sub_248F96D28();
        v40 = v33;
        v42 = v41;
        sub_248F95B14(v37, v39);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECE4F0, &qword_248FADED8);
        v43 = swift_initStackObject();
        *(v43 + 16) = xmmword_248FADE80;
        *(v43 + 32) = 0x2D64657070617277;
        *(v43 + 40) = 0xEB0000000079656BLL;
        v44 = v52;
        *(v43 + 48) = v50;
        *(v43 + 56) = v44;
        *(v43 + 64) = 0x757165722D636E65;
        *(v43 + 72) = 0xEB00000000747365;
        *(v43 + 80) = v45;
        *(v43 + 88) = v42;
        v9 = sub_248F948E4(v43);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECE4F8, &qword_248FADEE0);
        swift_arrayDestroy();

        sub_248F95B14(v64, v61);
        (*(v34 + 8))(v47, v59);
        (*(v56 + 8))(v58, v40);
        (*(v48 + 8))(v46, v49);
      }

      return v9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_248F95B14(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_248F95BB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECE4E8, &qword_248FADED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_248F95C18()
{
  result = qword_27EECE508;
  if (!qword_27EECE508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECE508);
  }

  return result;
}

uint64_t sub_248F95C6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECE4E8, &qword_248FADED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_248F95CDC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_248F95CEC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_248F95D40()
{
  result = qword_27EECE518;
  if (!qword_27EECE518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EECE518);
  }

  return result;
}

void boost::container::expand_forward_and_insert_alloc<boost::container::small_vector_allocator<unsigned long,boost::container::new_allocator<void>,void>,unsigned long *,boost::container::dtl::insert_value_initialized_n_proxy<boost::container::small_vector_allocator<unsigned long,boost::container::new_allocator<void>,void>,unsigned long *>>(int a1, _BYTE *__src, _BYTE *__dst, unint64_t a4)
{
  if (!a4)
  {
    return;
  }

  v7 = __dst - __src;
  if (__dst == __src)
  {
    v8 = 8 * a4;
  }

  else
  {
    if (a4 <= v7 >> 3)
    {
      v10 = 8 * a4;
      v11 = &__dst[-8 * a4];
      memmove(__dst, v11, 8 * a4);
      if (v11 != __src)
      {
        memmove(&__dst[-(v11 - __src)], __src, v11 - __src);
      }

      v9 = __src;
      v8 = v10;
      goto LABEL_12;
    }

    if (__src)
    {
      memmove(&__src[8 * a4], __src, __dst - __src);
    }

    bzero(__src, v7);
    v8 = 8 * (a4 - (v7 >> 3));
  }

  v9 = __dst;
LABEL_12:

  bzero(v9, v8);
}

void boost::container::vector<unsigned long,boost::container::small_vector_allocator<unsigned long,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_new_allocation<boost::container::dtl::insert_value_initialized_n_proxy<boost::container::small_vector_allocator<unsigned long,boost::container::new_allocator<void>,void>,unsigned long *>>(void **a1, char *__dst, char *a3, char *__src, uint64_t a5)
{
  v10 = *a1;
  v11 = a1[1];
  v12 = __dst;
  if (*a1)
  {
    v12 = __dst;
    if (__dst)
    {
      v12 = __dst;
      if (v10 != __src)
      {
        memmove(__dst, v10, __src - v10);
        v12 = &__dst[__src - v10];
      }
    }
  }

  if (a5)
  {
    bzero(v12, 8 * a5);
  }

  if (__src)
  {
    v13 = &v10[8 * v11];
    if (v13 != __src && v12 != 0)
    {
      memmove(&v12[8 * a5], __src, v13 - __src);
    }
  }

  if (v10 && a1 + 3 != *a1)
  {
    operator delete(*a1);
  }

  v15 = a1[1] + a5;
  *a1 = __dst;
  a1[1] = v15;
  a1[2] = a3;
}

void std::__function::__func<di_hybrid_subscriber_t::di_hybrid_subscriber_t(io_rings_desc_t *,diskimage_uio::details::diskimage_impl &)::$_0,std::allocator<di_hybrid_subscriber_t::di_hybrid_subscriber_t(io_rings_desc_t *,diskimage_uio::details::diskimage_impl &)::$_0>,diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<std::unique_ptr<DiskImage::Context>,std::error_code> ()(void)>::operator()(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(__cxa_begin_catch(a1) + 2);
  v5 = std::generic_category();
  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 16) = 0;
  __cxa_end_catch();
}

void diskimage_uio::details::diskimage_impl::create_context_impl(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(__cxa_begin_catch(a1) + 2);
  v5 = std::generic_category();
  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 16) = 0;

  __cxa_end_catch();
}

void make_error_code()
{
  {
  }
}

void diskimage_uio::diskimage_open_params::create(void *a1)
{
  v1 = __cxa_begin_catch(a1);
  OUTLINED_FUNCTION_0(v1);
  __cxa_end_catch();
}

void diskimage_uio::diskimage::create(void *a1)
{
  v1 = __cxa_begin_catch(a1);
  OUTLINED_FUNCTION_0(v1);

  __cxa_end_catch();
}

void crypto::format_serializer::decode(void **a1, std::__shared_weak_count **a2, crypto::format *this, void *a4)
{
  v6 = *a1;
  if (v6)
  {
    *a4 = v6;
    operator delete(v6);
  }

  if (*a2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*a2);
  }

  crypto::format::~format(this);
}

void std::__shared_ptr_emplace<crypto::format>::__shared_ptr_emplace[abi:ne200100]<crypto::format,std::allocator<crypto::format>,0>(void **a1, std::__shared_weak_count **a2, void *a3)
{
  v4 = *a1;
  if (v4)
  {
    *a3 = v4;
    operator delete(v4);
  }

  v5 = *a2;
  if (*a2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void diskimage_uio::details::diskimage_open_params_impl::crypto_ctx_t::crypto_ctx_t(std::__shared_weak_count **a1, std::__shared_weak_count **a2)
{
  v3 = *a1;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*a2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*a2);
  }
}

void diskimage_uio::details::diskimage_open_params_impl::diskimage_open_params_impl(std::__shared_weak_count **a1, uint64_t a2)
{
  v3 = *a1;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(a2 + 23) < 0)
  {
    v4 = *a2;

    operator delete(v4);
  }
}

void boost::container::vector<std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long>,boost::container::small_vector_allocator<std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long>,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_new_allocation<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long>,boost::container::new_allocator<void>,void>,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long>*,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long>>>(void **a1, _OWORD *__dst, char *a3, char *__src, uint64_t a5, _OWORD *a6)
{
  v12 = *a1;
  v13 = a1[1];
  v14 = __dst;
  if (*a1)
  {
    v14 = __dst;
    if (__dst)
    {
      v14 = __dst;
      if (v12 != __src)
      {
        memmove(__dst, v12, __src - v12);
        v14 = (__dst + __src - v12);
      }
    }
  }

  *v14 = *a6;
  if (__src)
  {
    v15 = &v12[16 * v13];
    if (v15 != __src && v14 != 0)
    {
      memmove(&v14[a5], __src, v15 - __src);
    }
  }

  if (v12 && a1 + 3 != *a1)
  {
    operator delete(*a1);
  }

  v17 = a1[1] + a5;
  *a1 = __dst;
  a1[1] = v17;
  a1[2] = a3;
}

void std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void boost::icl::operator&<boost::icl::discrete_interval<unsigned long long,std::less>>()
{
  {
    *&boost::icl::identity_element<boost::icl::discrete_interval<unsigned long long,std::less>>::value(void)::_value = boost::icl::identity_element<unsigned long long>::value(void)::_value;
    *(&boost::icl::identity_element<boost::icl::discrete_interval<unsigned long long,std::less>>::value(void)::_value + 1) = boost::icl::identity_element<unsigned long long>::value(void)::_value;
    LOBYTE(qword_27EECDCF0) = 2;
  }
}

uint64_t ContextAllocator<locks::Std,std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>>::allocate(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  *a2 = 0;
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ref::details::ref_cnt_set_handle>,ref::details::ref_cnt_set_handle*>(uint64_t a1, uint64_t (***a2)(void))
{
  v3 = a1 - 32;
  v4 = (a1 - 32);
  v5 = (a1 - 32);
  do
  {
    v6 = *v5;
    v5 -= 4;
    result = (*v6)(v4);
    v3 -= 32;
    v8 = v4 == a2;
    v4 = v5;
  }

  while (!v8);
  return result;
}

void boost::container::uninitialized_copy_alloc<boost::container::small_vector_allocator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::new_allocator<void>,void>,boost::container::vec_iterator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>*,true>,std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>*>()
{
  OUTLINED_FUNCTION_0_0();
  do
  {
    v2 = v1[51];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    v3 = v1[29];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = v1[23];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v5 = v1[1];
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    v1 += 56;
  }

  while (v1 != v0);
}

void (***boost::container::uninitialized_move_and_insert_alloc<boost::container::small_vector_allocator<ref::details::ref_cnt_handle,boost::container::new_allocator<void>,void>,ref::details::ref_cnt_handle*,ref::details::ref_cnt_handle*,boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<ref::details::ref_cnt_handle,boost::container::new_allocator<void>,void>,ref::details::ref_cnt_handle*,ref::details::ref_cnt_handle>>())(void)
{
  OUTLINED_FUNCTION_0_0();
  v3 = v2;
  do
  {
    v4 = *v3;
    v3 += 3;
    (*v4)();
    v1 += 24;
    result = v3;
  }

  while (v3 != v0);
  return result;
}

void boost::uuids::string_generator::get_value()
{
  {
    boost::uuids::string_generator::get_value(char)const::digits_end = &boost::uuids::string_generator::get_value(char)const::digits_begin[boost::uuids::string_generator::get_value(char)const::digits_len];
  }
}

void ref::details::_get_tagged_ptr_lock()
{
  {
    __cxa_atexit(__cxx_global_array_dtor, 0, &dword_248DE0000);
  }
}

void ref::details::_get_tagged_ptr_cond()
{
  {
    __cxa_atexit(__cxx_global_array_dtor_1, 0, &dword_248DE0000);
  }
}

void details::get_dummy_shared_ptr()
{
  if (__cxa_guard_acquire(_MergedGlobals))
  {
    __cxa_atexit(std::shared_ptr<char>::~shared_ptr[abi:ne200100], &unk_27EECE630, &dword_248DE0000);

    __cxa_guard_release(_MergedGlobals);
  }
}

void crypto::format::format(void **a1, std::__shared_weak_count **a2, void *a3)
{
  v4 = *a1;
  if (v4)
  {
    *a3 = v4;
    operator delete(v4);
  }

  if (*a2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*a2);
  }
}

void AEA_backend::AEA_backend(uint64_t a1, std::__shared_weak_count **a2)
{
  v3 = *(a1 + 64);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *a2;
  if (*a2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void boost::container::uninitialized_move_alloc<boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>,CompressedBackend::promise_io_t*,CompressedBackend::promise_io_t*>(uint64_t a1, uint64_t a2)
{
  do
  {
    v4 = *(a1 + 112);
    if (v4)
    {
      *(v4 + 16) = 0;
    }

    v5 = *(a1 + 8);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    a1 += 152;
  }

  while (a1 != a2);
}

void boost::container::vector<iovec,boost::container::small_vector_allocator<iovec,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_new_allocation<boost::container::dtl::insert_range_proxy<boost::container::small_vector_allocator<iovec,boost::container::new_allocator<void>,void>,boost::move_iterator<iovec*>,iovec*>>(void **a1, char *__dst, char *a3, char *__src, uint64_t a5, void *a6)
{
  v12 = *a1;
  v13 = a1[1];
  v14 = __dst;
  if (*a1)
  {
    v14 = __dst;
    if (__dst)
    {
      v14 = __dst;
      if (v12 != __src)
      {
        memmove(__dst, v12, __src - v12);
        v14 = &__dst[__src - v12];
      }
    }
  }

  if (a5)
  {
    memmove(v14, a6, 16 * a5);
  }

  if (__src)
  {
    v15 = &v12[16 * v13];
    if (v15 != __src && v14 != 0)
    {
      memmove(&v14[16 * a5], __src, v15 - __src);
    }
  }

  if (v12 && a1 + 3 != *a1)
  {
    operator delete(*a1);
  }

  v17 = a1[1] + a5;
  *a1 = __dst;
  a1[1] = v17;
  a1[2] = a3;
}

uint64_t Ram::unmap_range(Ram *this, unint64_t a2, uint64_t a3)
{
  if (a3 == -1)
  {
    return 0;
  }

  v3 = *(this + 12);
  v4 = (a2 + v3 - 1) / v3 * v3;
  if (a2 > v4 || v4 >= a3 + a2)
  {
    return 0;
  }

  v6 = a2 - v4 + a3;
  v7 = v6 / v3 * v3;
  if (v6 == v6 % v3)
  {
    return 0;
  }

  v8 = 4294967262;
  if (__CFADD__(v4, v7))
  {
    return v8;
  }

  v10 = *(this + 9);
  if (v4 > v10 || v7 + v4 > v10)
  {
    return v8;
  }

  return madvise((*(this + 8) + v4), v7, 5);
}

void SparseBundleBackend::SparseBundleBackend(uint64_t a1, uint64_t a2, void *a3, std::__shared_weak_count **a4)
{
  v8 = *(a1 + 128);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(a1 + 112);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  *a3 = a2;
  v10 = *a4;
  if (*a4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void readSynchronizer::readSynchronizer(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void std::make_error_code()
{
  {
    __cxa_atexit(iokit_utils::di_kern_ret_err_category::~di_kern_ret_err_category, &std::make_error_code(iokit_utils::kern_err_t)::di_kern_ret_err_category_instance, &dword_248DE0000);
  }
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x2821100F0](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__filename(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F73E8](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__root_directory(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F7400](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78D0]();
}

{
  return MEMORY[0x2821F78E0]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7910]();
}

{
  return MEMORY[0x2821F7918]();
}

{
  return MEMORY[0x2821F7928]();
}

{
  return MEMORY[0x2821F7938]();
}

void operator delete[]()
{
    ;
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

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void operator new()
{
    ;
  }
}