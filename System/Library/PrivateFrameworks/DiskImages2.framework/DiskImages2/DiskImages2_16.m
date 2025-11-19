void *di_log::logger<di_log::log_printer<236ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<236ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFBD00;
  a1[45] = &unk_285BFBE00;
  a1[46] = &unk_285BFBE28;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFBD00;
  a1[45] = &unk_285BFBD88;
  a1[46] = &unk_285BFBDB0;
  return a1;
}

void sub_248F49F3C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<236ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<236ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<236ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<229ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFBC78;
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

void sub_248F4A054(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<229ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFBC78;
  di_log::logger_buf<di_log::log_printer<229ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<229ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<229ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<229ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<229ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<229ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<229ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<229ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<229ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<229ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<229ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<229ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<229ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<229ul>>::_sync(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v8 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<229ul>::log((a1 + 72), __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
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

void sub_248F4A5F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<229ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 229;
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
      v22 = 229;
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

uint64_t di_log::logger_buf<di_log::log_printer<236ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFBE98;
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

void sub_248F4A8B4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<236ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFBE98;
  di_log::logger_buf<di_log::log_printer<236ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<236ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<236ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<236ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<236ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<236ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<236ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<236ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<236ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<236ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<236ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<236ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<236ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<236ul>>::_sync(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v8 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<236ul>::log((a1 + 72), __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
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

void sub_248F4AE58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<236ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 236;
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
      v22 = 236;
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

uint64_t di_log::logger_buf<di_log::log_printer<341ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFAAA8;
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

void sub_248F4B114(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<350ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFACC8;
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

void sub_248F4B1DC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<353ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFAEE8;
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

void sub_248F4B2A4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<357ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFB108;
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

void sub_248F4B36C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<392ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFB328;
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

void sub_248F4B434(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<400ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFB548;
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

void sub_248F4B4FC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<409ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFB768;
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

void sub_248F4B5C4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<416ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFB988;
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

void sub_248F4B68C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sparse_bundles::eviction_t::decrease(sparse_bundles::eviction_t *this)
{
  std::mutex::lock((this + 8));
  if (atomic_fetch_add(this, 0xFFFFFFFFFFFFFFFFLL) == 1 && *(this + 72) == 1)
  {
    *(this + 72) = 0;
    std::condition_variable::notify_one((this + 80));
  }

  std::mutex::unlock((this + 8));
}

uint64_t sparse_bundles::eviction_t::start_flush(uint64_t this)
{
  atomic_fetch_add(this, 1uLL);
  *(this + 72) = 1;
  return this;
}

void sparse_bundles::eviction_t::complete_flush(sparse_bundles::eviction_t *this)
{
  v2.__m_ = (this + 8);
  v2.__owns_ = 1;
  std::mutex::lock((this + 8));
  if (atomic_fetch_add(this, 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    *(this + 72) = 0;
  }

  else if (*(this + 72) == 1)
  {
    do
    {
      std::condition_variable::wait((this + 80), &v2);
    }

    while ((*(this + 72) & 1) != 0);
  }

  if (v2.__owns_)
  {
    std::mutex::unlock(v2.__m_);
  }
}

uint64_t sparse_bundles::open_bands_t::insert(sparse_bundles::open_bands_t *this, unint64_t a2)
{
  v19 = a2;
  __lk.__m_ = (this + 24);
  __lk.__owns_ = 1;
  std::mutex::lock((this + 24));
  LOBYTE(v15[0]) = 0;
  std::__tree<std::__value_type<unsigned long long,BOOL>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,BOOL>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,BOOL>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,BOOL>(this, &v19);
  v4 = v3;
  if ((v3 & 1) == 0)
  {
    if (DIDebugLogsEnabled())
    {
      *&v13 = "sparse_bundles::open_bands_t::insert(uint64_t)";
      *(&v13 + 1) = 36;
      v14 = 2;
      di_log::logger<di_log::log_printer<72ul>>::logger(v15, &v13);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "Band ", 5);
      *&v17[*(v16 - 24)] = *&v17[*(v16 - 24)] & 0xFFFFFFB5 | 8;
      MEMORY[0x24C1ED3E0](&v16, v19);
      *&v17[*(v16 - 24)] = *&v17[*(v16 - 24)] & 0xFFFFFFB5 | 2;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, " was opened in the background, waiting for it to become available", 65);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<72ul>>::~logger_buf(v15);
      MEMORY[0x24C1ED6A0](v17);
    }

    v7 = *(this + 1);
    v6 = this + 8;
    v5 = v7;
    if (v7)
    {
      do
      {
        v8 = v6;
        do
        {
          v9 = *(v5 + 4);
          v10 = v9 >= v19;
          v11 = v9 < v19;
          if (v10)
          {
            v8 = v5;
          }

          v5 = *&v5[8 * v11];
        }

        while (v5);
        if (v8 == v6)
        {
          break;
        }

        if (v19 < *(v8 + 4))
        {
          break;
        }

        if (v8[40])
        {
          break;
        }

        std::condition_variable::wait((v6 + 80), &__lk);
        v5 = *v6;
      }

      while (*v6);
    }

    if (DIDebugLogsEnabled())
    {
      *&v13 = "sparse_bundles::open_bands_t::insert(uint64_t)";
      *(&v13 + 1) = 36;
      v14 = 2;
      di_log::logger<di_log::log_printer<79ul>>::logger(v15, &v13);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "Band ", 5);
      *&v17[*(v16 - 24)] = *&v17[*(v16 - 24)] & 0xFFFFFFB5 | 8;
      MEMORY[0x24C1ED3E0](&v16, v19);
      *&v17[*(v16 - 24)] = *&v17[*(v16 - 24)] & 0xFFFFFFB5 | 2;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, " is now available", 17);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<79ul>>::~logger_buf(v15);
      MEMORY[0x24C1ED6A0](v17);
    }
  }

  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }

  return v4 & 1;
}

void sub_248F4BA4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (*(v13 - 64) == 1)
  {
    std::mutex::unlock(*(v13 - 72));
  }

  _Unwind_Resume(exception_object);
}

void *di_log::logger<di_log::log_printer<79ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<79ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFBF20;
  a1[45] = &unk_285BFC020;
  a1[46] = &unk_285BFC048;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFBF20;
  a1[45] = &unk_285BFBFA8;
  a1[46] = &unk_285BFBFD0;
  return a1;
}

void sub_248F4BB9C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<79ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<79ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<79ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void sparse_bundles::open_bands_t::mark_as_placed(sparse_bundles::open_bands_t *this, unint64_t a2, int a3)
{
  std::mutex::lock((this + 24));
  v6 = *(this + 1);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = this + 8;
  do
  {
    v8 = *(v6 + 4);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *&v6[8 * v10];
  }

  while (v6);
  if (v7 == this + 8 || *(v7 + 4) > a2)
  {
LABEL_9:
    v7 = this + 8;
  }

  v7[40] = a3;
  if (a3)
  {
    std::condition_variable::notify_all((this + 88));
  }

  std::mutex::unlock((this + 24));
}

void sparse_bundles::open_bands_t::remove(sparse_bundles::open_bands_t *this, unint64_t a2)
{
  v8 = a2;
  std::mutex::lock((this + 24));
  std::__tree<std::__value_type<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *>>>::__erase_unique<unsigned long long>(this, &v8);
  if (DIDebugLogsEnabled())
  {
    *&v3 = "sparse_bundles::open_bands_t::remove(uint64_t)";
    *(&v3 + 1) = 36;
    v4 = 2;
    di_log::logger<di_log::log_printer<98ul>>::logger(v5, &v3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "Band ", 5);
    *(&v6 + *(v6 - 24) + 8) = *(&v6 + *(v6 - 24) + 8) & 0xFFFFFFB5 | 8;
    MEMORY[0x24C1ED3E0](&v6, v8);
    *(&v6 + *(v6 - 24) + 8) = *(&v6 + *(v6 - 24) + 8) & 0xFFFFFFB5 | 2;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " is closed, notifying waiters", 29);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<98ul>>::~logger_buf(v5);
    MEMORY[0x24C1ED6A0](&v7);
  }

  std::condition_variable::notify_all((this + 88));
  std::mutex::unlock((this + 24));
}

void *di_log::logger<di_log::log_printer<98ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<98ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFC140;
  a1[45] = &unk_285BFC240;
  a1[46] = &unk_285BFC268;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFC140;
  a1[45] = &unk_285BFC1C8;
  a1[46] = &unk_285BFC1F0;
  return a1;
}

void sub_248F4BF04(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<98ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<98ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<98ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void sparse_bundles::bundle_commons_t::bundle_commons_t(sparse_bundles::bundle_commons_t *this, DiskImageSparseBundle *a2)
{
  *this = a2;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v2 = 0;
  std::allocate_shared[abi:ne200100]<BackendNull,std::allocator<BackendNull>,int,0>();
}

void sub_248F4C088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  workqueue::transaction::~transaction((v14 + 49));
  workqueue::workqueue::~workqueue(v15 + 18);
  v19 = v14[40];
  v14[40] = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  sparse_bundles::open_bands_t::~open_bands_t(v15);
  std::condition_variable::~condition_variable(v16);
  std::mutex::~mutex((v15 - 15));
  v20 = v14[4];
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v21 = v14[2];
  v14[2] = 0;
  if (v21)
  {
    (*(*v21 + 16))(v21);
  }

  v22 = *v17;
  *v17 = 0;
  if (v22)
  {
    (*(*v22 + 16))(v22);
  }

  _Unwind_Resume(a1);
}

void sparse_bundles::bundle_commons_t::run_in_high_tier(uint64_t a1, uint64_t a2)
{
  v19[18] = *MEMORY[0x277D85DE8];
  v10 = 0;
  v11 = &v10;
  v12 = 0x4802000000;
  v13 = __Block_byref_object_copy__8;
  v14 = __Block_byref_object_dispose__8;
  __p = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  workqueue::workqueue::create_transaction((a1 + 328), 0, v19);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v9[2] = ___ZN14sparse_bundles16bundle_commons_t16run_in_high_tierEU13block_pointerFvvE_block_invoke;
  v9[3] = &unk_278F814B8;
  v9[4] = a2;
  v9[5] = &v10;
  workqueue::transaction::add(v19, v9);
  workqueue::transaction::~transaction(v19);
  if (*(v11 + 16))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v5 = v11;
    v6 = *(v11 + 16);
    *exception = &unk_285BF4E60;
    v7 = std::generic_category();
    *(exception + 1) = v6;
    *(exception + 2) = v7;
    v8 = v5[7];
    *(exception + 24) = *(v5 + 5);
    *(exception + 5) = v8;
    v5[6] = 0;
    v5[7] = 0;
    v5[5] = 0;
    exception[48] = 1;
  }

  _Block_object_dispose(&v10, 8);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void sub_248F4C340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a15, 8);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__8(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  *(a1 + 64) = *(a2 + 64);
  return result;
}

void __Block_byref_object_dispose__8(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

uint64_t sparse_bundles::band_to_filename@<X0>(sparse_bundles *this@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  *(&v5 + *(v5 - 24) + 8) = *(&v5 + *(v5 - 24) + 8) & 0xFFFFFFB5 | 8;
  MEMORY[0x24C1ED3E0](&v5, this);
  std::ostringstream::str[abi:ne200100](&v5, a2);
  v5 = *MEMORY[0x277D82828];
  *(&v5 + *(v5 - 24)) = *(MEMORY[0x277D82828] + 24);
  v6 = MEMORY[0x277D82878] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v7);
  std::ostream::~ostream();
  return MEMORY[0x24C1ED6A0](&v9);
}

void sub_248F4C650(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va, MEMORY[0x277D82828]);
  MEMORY[0x24C1ED6A0](v2 + 112);
  _Unwind_Resume(a1);
}

void non-virtual thunk todi_log::logger<di_log::log_printer<79ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<79ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<79ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<79ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<79ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<79ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<79ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<79ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<79ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<79ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<79ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFC0B8;
  di_log::logger_buf<di_log::log_printer<79ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<79ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<79ul>::log((a1 + 72), __p);
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

void sub_248F4CBC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<79ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<79ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<79ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 79;
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
      v22 = 79;
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

void non-virtual thunk todi_log::logger<di_log::log_printer<98ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<98ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<98ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<98ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<98ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<98ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<98ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<98ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<98ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<98ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<98ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFC2D8;
  di_log::logger_buf<di_log::log_printer<98ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<98ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<98ul>::log((a1 + 72), __p);
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

void sub_248F4D35C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<98ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<98ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<98ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 98;
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
      v22 = 98;
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

void sparse_bundles::open_bands_t::~open_bands_t(sparse_bundles::open_bands_t *this)
{
  std::condition_variable::~condition_variable((this + 88));
  std::mutex::~mutex((this + 24));
  std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>>>::destroy(this, *(this + 1));
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

void *std::__tree<std::__value_type<unsigned long long,BOOL>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,BOOL>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,BOOL>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,BOOL>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t di_log::logger_buf<di_log::log_printer<79ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFC0B8;
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

void sub_248F4D870(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<98ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFC2D8;
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

void sub_248F4D938(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_emplace<BackendNull>::__shared_ptr_emplace[abi:ne200100]<int,std::allocator<BackendNull>,0>(uint64_t a1, int *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_285BD6CD8;
  v3 = *a2;
  v4 = di_utils::random_uuid(a1);
  v6 = v5;
  Backend::Backend((a1 + 24));
  *(a1 + 24) = &unk_285BD38B0;
  *(a1 + 48) = v3;
  *(a1 + 56) = v4;
  *(a1 + 64) = v6;
  return a1;
}

void AEA_backend::AEA_backend(Backend *a1, uint64_t *a2, uint64_t *a3)
{
  BackendInternalBackend::BackendInternalBackend(a1, a2);
  *v5 = &unk_285BFC358;
  v6 = *a2;
  v7 = a2[1];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  (*(*v6 + 192))(v6);
  v8 = a3[1];
  v9 = *a3;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  std::allocate_shared[abi:ne200100]<aea_format::AEA_format,std::allocator<aea_format::AEA_format>,aea_format::AEA_format,0>();
}

void sub_248F4DBBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  BackendInternalBackend::~BackendInternalBackend(v13);
  _Unwind_Resume(a1);
}

void AEA_backend::create_streams(std::mutex **this, int a2)
{
  std::mutex::lock(this[9]);
  lseek(a2, 0, 0);
  *&v7 = AAFileStreamOpenWithFD(a2, 0);
  AEAwrapper::ByteStream::ByteStream(&v10, &v7);
  AEAwrapper::Context::Context(&v9, &v10);
  v4 = this[5];
  v5 = *&v4->__m_.__opaque[8];
  v6 = *&v4->__m_.__opaque[16];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  AEAwrapper::Context::setSymmetricKey(&v9, v5, 0x20uLL);
  AEAwrapper::ByteStream::make_DecryptionRandomAccessInputStream(&v10, &v9, 0xFFFFFFFFFFFFFFFFLL, 0x4000000000000000uLL, 1, &v8);
  std::allocate_shared[abi:ne200100]<AEAwrapper::DecryptionStream,std::allocator<AEAwrapper::DecryptionStream>,AEAwrapper::ByteStream,AEAwrapper::Context,AEAwrapper::ByteStream,0>();
}

void sub_248F4DD40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, AAByteStream);
  va_copy(va2, va1);
  v8 = va_arg(va2, AEAContext);
  AEAwrapper::ByteStream::~ByteStream(va);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  AEAwrapper::Context::~Context(va1);
  AEAwrapper::ByteStream::~ByteStream(va2);
  std::mutex::unlock(v3);
  _Unwind_Resume(a1);
}

void AEA_backend::AEA_backend(uint64_t a1, void *a2, void *a3)
{
  BackendInternalBackend::BackendInternalBackend(a1, a3);
  *v5 = &unk_285BFC358;
  v6 = a2[6];
  v5[5] = a2[5];
  v5[6] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v7 = a2[10];
  *(a1 + 72) = a2[9];
  *(a1 + 80) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  AEA_backend::create_streams(a1, *(*(a1 + 40) + 8));
}

void sub_248F4DE3C(_Unwind_Exception *a1)
{
  v4 = *(v1 + 10);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  AEA_backend::AEA_backend(v1, v2);
  BackendInternalBackend::~BackendInternalBackend(v1);
  _Unwind_Resume(a1);
}

ssize_t AEA_backend::read(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 104) != 1 || *(a2 + 48) == 0)
  {
    return AEAwrapper::DecryptionStream::pread(*(a1 + 56), *a2, *(a2 + 16), *(a2 + 24));
  }

  else
  {
    return 4294967194;
  }
}

void AEA_backend::~AEA_backend(AEA_backend *this)
{
  *this = &unk_285BFC358;
  v2 = *(this + 10);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  *this = &unk_285BD4DB0;
  v5 = *(this + 4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }
}

{
  *this = &unk_285BFC358;
  v2 = *(this + 10);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  *this = &unk_285BD4DB0;
  v5 = *(this + 4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  JUMPOUT(0x24C1ED730);
}

void std::__shared_ptr_emplace<aea_format::AEA_format>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285BFC448;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

void std::__shared_ptr_emplace<aea_format::AEA_format>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::shared_ptr<AEA_backend::shared_state_t>::shared_ptr[abi:ne200100]<AEA_backend::shared_state_t,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_248F4E200(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<AEA_backend::shared_state_t>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

std::mutex **std::unique_ptr<AEA_backend::shared_state_t>::~unique_ptr[abi:ne200100](std::mutex **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::mutex::~mutex(v2);
    MEMORY[0x24C1ED730]();
  }

  return a1;
}

void std::__shared_ptr_pointer<AEA_backend::shared_state_t *,std::shared_ptr<AEA_backend::shared_state_t>::__shared_ptr_default_delete<AEA_backend::shared_state_t,AEA_backend::shared_state_t>,std::allocator<AEA_backend::shared_state_t>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

std::mutex *std::__shared_ptr_pointer<AEA_backend::shared_state_t *,std::shared_ptr<AEA_backend::shared_state_t>::__shared_ptr_default_delete<AEA_backend::shared_state_t,AEA_backend::shared_state_t>,std::allocator<AEA_backend::shared_state_t>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    std::mutex::~mutex(result);

    JUMPOUT(0x24C1ED730);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<AEA_backend::shared_state_t *,std::shared_ptr<AEA_backend::shared_state_t>::__shared_ptr_default_delete<AEA_backend::shared_state_t,AEA_backend::shared_state_t>,std::allocator<AEA_backend::shared_state_t>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *std::__shared_ptr_emplace<AEAwrapper::DecryptionStream>::__shared_ptr_emplace[abi:ne200100]<AEAwrapper::ByteStream,AEAwrapper::Context,AEAwrapper::ByteStream,std::allocator<AEAwrapper::DecryptionStream>,0>(void *a1, void *a2, uint64_t *a3, void *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BFC510;
  AEAwrapper::DecryptionStream::DecryptionStream(a1 + 3, a2, a3, a4);
  return a1;
}

void std::__shared_ptr_emplace<AEAwrapper::DecryptionStream>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285BFC510;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

void std::__shared_ptr_emplace<AEAwrapper::DecryptionStream>::__on_zero_shared(AAByteStream *a1)
{
  AEAwrapper::ByteStream::~ByteStream(a1 + 5);
  AEAwrapper::Context::~Context(a1 + 4);

  AEAwrapper::ByteStream::~ByteStream(a1 + 3);
}

void std::__shared_ptr_emplace<AEA_backend>::__shared_ptr_emplace[abi:ne200100]<AEA_backend&,std::shared_ptr<Backend> const&,std::allocator<AEA_backend>,0>(void *a1, void *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BD6EA8;
  AEA_backend::AEA_backend((a1 + 3), a2, a3);
}

void *operator<<(void *a1, uint64_t a2)
{
  if (a2 == 2)
  {
    v3 = "full_fsync";
    v4 = 10;
  }

  else if (a2 == 1)
  {
    v3 = "fsync";
    v4 = 5;
  }

  else if (a2)
  {
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "bad flush type (", 16);
    a1 = MEMORY[0x24C1ED390](v5, a2);
    v3 = ")";
    v4 = 1;
  }

  else
  {
    v3 = "barrier";
    v4 = 7;
  }

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v3, v4);
}

{
  v4 = a1 + *(*a1 - 24);
  v5 = *(v4 + 2);
  *(v4 + 2) = v5 & 0xFFFFFFB5 | 8;
  v26 = 48;
  v6 = std::operator<<[abi:ne200100]<std::char_traits<char>>(a1, &v26);
  v7 = *v6;
  *(v6 + *(*v6 - 24) + 24) = 2;
  *(v6 + *(v7 - 24) + 8) |= 0x200u;
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "sg: buffer = ", 13);
  v9 = MEMORY[0x24C1ED370](v8, *a2);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " [", 2);
  v11 = MEMORY[0x24C1ED370](v10, a2);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "] ", 2);
  v13 = *v12;
  *(v12 + *(*v12 - 24) + 8) = *(v12 + *(*v12 - 24) + 8) & 0xFFFFFFB5 | 2;
  *(v12 + *(v13 - 24) + 24) = 0;
  *(v12 + *(v13 - 24) + 8) &= ~0x200u;
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " size = ", 8);
  v15 = MEMORY[0x24C1ED3C0](v14, *(a2 + 16));
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " buffer_size = ", 15);
  v17 = MEMORY[0x24C1ED3C0](v16, *(a2 + 32));
  *(v17 + *(*v17 - 24) + 8) = *(v17 + *(*v17 - 24) + 8) & 0xFFFFFFB5 | 8;
  v25 = 48;
  v18 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v17, &v25);
  v19 = *v18;
  *(v18 + *(*v18 - 24) + 24) = 2;
  *(v18 + *(v19 - 24) + 8) |= 0x200u;
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " offset = ", 10);
  v21 = MEMORY[0x24C1ED3E0](v20, *(a2 + 24));
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " crypto = ", 10);
  if (*(a2 + 48))
  {
    v23 = *(a2 + 104);
  }

  else
  {
    v23 = 0;
  }

  MEMORY[0x24C1ED380](v22, v23);
  *(a1 + *(*a1 - 24) + 8) = v5;
  return a1;
}

void Backend::Backend(Backend *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_285BFC560;
}

uint64_t Backend::write(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 104) != 1 || *(a2 + 48) == 0)
  {
    return (*(*a1 + 88))(a1);
  }

  else
  {
    return crypto::PerIOCrypto::encrypt_and_write_sg(a2, a1);
  }
}

uint64_t Backend::read(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 104) != 1 || *(a2 + 48) == 0)
  {
    v5 = *(*a1 + 96);

    return v5();
  }

  else
  {
    v11 = 0;
    crypto::PerIOCrypto::sw_decryptable_sg_entry::sw_decryptable_sg_entry(v10, a2, &v11);
    sg_entry::sg_entry(v7, a2);
    if (v9 == 1)
    {
      v9 = 0;
    }

    v11 = (*(*a1 + 96))(a1, v7);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    crypto::PerIOCrypto::sw_decryptable_sg_entry::~sw_decryptable_sg_entry(v10);
    return v11;
  }
}

void sub_248F4EA5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  crypto::PerIOCrypto::sw_decryptable_sg_entry::~sw_decryptable_sg_entry(va);
  _Unwind_Resume(a1);
}

void get_sink_backend(uint64_t a1@<X0>, char ***a2@<X8>)
{
  v4 = *a1;
  {
    v7 = *(a1 + 8);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = *(v6 + 4);
    v10[0] = *(v6 + 3);
    v10[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    get_sink_backend(v10);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    if (v7)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  else
  {
    v9 = *(a1 + 8);
    *a2 = v4;
    a2[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

void sub_248F4EBC0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t replace_internal_backend(uint64_t a1, char ***a2, uint64_t *a3)
{
  v4 = *a1;
  if (v4 == *a2)
  {
    return 4294967274;
  }

  if (!v4)
  {
    return 4294967294;
  }

  v7 = **v4;
  if (!v8)
  {
    return 4294967294;
  }

  v9 = *(a1 + 8);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(v8 + 3);
  v11 = *(v8 + 4);
  v17[0] = v10;
  v17[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v10 == *a2)
  {
    v15 = *a3;
    v14 = a3[1];
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    v16 = *(v8 + 4);
    *(v8 + 3) = v15;
    *(v8 + 4) = v14;
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    v12 = 0;
    if (!v11)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v12 = replace_internal_backend(v17, a2, a3);
    if (!v11)
    {
      goto LABEL_11;
    }
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
LABEL_11:
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return v12;
}

void sub_248F4ED20(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void get_next_backend_in_graph(uint64_t a1@<X0>, char ***a2@<X8>)
{
  v4 = *a1;
  {
    v7 = v6;
    v8 = *(a1 + 8);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = v7[3];
    v9 = v7[4];
    *a2 = v10;
    a2[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    if (v8)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  else
  {
    v11 = *(a1 + 8);
    *a2 = v4;
    a2[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

void BackendSG::BackendSG(void *a1, void *a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BD4DB0;
  v3 = a2[1];
  a1[3] = *a2;
  a1[4] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_285BFC630;
  a1[5] = a3;
  std::allocate_shared[abi:ne200100]<BufferAllocator,std::allocator<BufferAllocator>,unsigned long &,int,unsigned long &,0>();
}

void sub_248F4F09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<146ul>>::~logger(va);
  v6 = *(v4 - 40);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<146ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<146ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFC850;
  a1[45] = &unk_285BFC950;
  a1[46] = &unk_285BFC978;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFC850;
  a1[45] = &unk_285BFC8D8;
  a1[46] = &unk_285BFC900;
  return a1;
}

void sub_248F4F1E0(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<146ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<146ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<146ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void sub_248F4F3F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13)
{
  v15 = *(v13 - 40);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(exception_object);
}

void *di_log::logger<di_log::log_printer<163ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<163ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFCA70;
  a1[45] = &unk_285BFCB70;
  a1[46] = &unk_285BFCB98;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFCA70;
  a1[45] = &unk_285BFCAF8;
  a1[46] = &unk_285BFCB20;
  return a1;
}

void sub_248F4F53C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<163ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<163ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<163ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t BackendSG::truncate(BackendSG *this, uint64_t a2)
{
  v4 = (*(**(this + 3) + 56))(*(this + 3));
  if (v4)
  {
    *&v6 = "int BackendSG::truncate(uint64_t)";
    *(&v6 + 1) = 23;
    v7 = 16;
    di_log::logger<di_log::log_printer<185ul>>::logger(v8, &v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "BackendSG: truncating the inner backend failed, error = ", 56);
    MEMORY[0x24C1ED390](&v9, v4);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<185ul>>::~logger_buf(v8);
    MEMORY[0x24C1ED6A0](&v10);
  }

  else
  {
    sg_entry::sg_entry<sg_entry&,void>(v8, this + 64, a2, 0, *(this + 11), *(this + 12));
    sg_entry::operator=(this + 64, v8);
    if (*(&v8[0] + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v8[0] + 1));
    }
  }

  return v4;
}

void sub_248F4F6B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void *di_log::logger<di_log::log_printer<185ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<185ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFCC90;
  a1[45] = &unk_285BFCD90;
  a1[46] = &unk_285BFCDB8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFCC90;
  a1[45] = &unk_285BFCD18;
  a1[46] = &unk_285BFCD40;
  return a1;
}

void sub_248F4F7DC(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<185ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<185ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<185ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t BackendSG::BackendSG(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_285BD4DB0;
  v5 = a3[1];
  *(a1 + 24) = *a3;
  *(a1 + 32) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_285BFC630;
  v6 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v6;
  v7 = *(a2 + 56);
  *(a1 + 56) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sg_entry::sg_entry(a1 + 64, a2 + 64);
  *(a1 + 176) = *(a2 + 176);
  return a1;
}

void sub_248F4F8F4(_Unwind_Exception *a1)
{
  v3 = *(v1 + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  BackendInternalBackend::~BackendInternalBackend(v1);
  _Unwind_Resume(a1);
}

uint64_t BufferedWriteBackend::BufferedWriteBackend(uint64_t a1, void *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_285BD4DB0;
  v4 = a2[1];
  *(a1 + 24) = *a2;
  *(a1 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 850045863;
  *a1 = &unk_285BFC708;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  std::vector<char>::vector[abi:ne200100]((a1 + 104), a3);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  return a1;
}

void sub_248F4FA0C(_Unwind_Exception *a1)
{
  std::mutex::~mutex(v2);
  BackendInternalBackend::~BackendInternalBackend(v1);
  _Unwind_Resume(a1);
}

uint64_t BufferedWriteBackend::reset_last_offset(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = *(a1 + 104);
  v5 = v3 % (*(a1 + 112) - v4);
  if (!v5)
  {
    goto LABEL_8;
  }

  if (v3 != v5 && *(a2 + 104) == 1 && *(a2 + 48))
  {
    *&v9 = "BufferedWriteBackend::reset_last_offset(const sg_entry &)";
    *(&v9 + 1) = 39;
    v10 = 16;
    di_log::logger<di_log::log_printer<218ul>>::logger(&v11, &v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "BufferedWriteBackend doesn't support per io crypto", 50);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<218ul>>::~logger_buf(&v11);
    MEMORY[0x24C1ED6A0](&v20);
    return 4294967194;
  }

  v6 = *(details::get_dummy_shared_ptr() + 1);
  v11 = v4;
  v12 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = v5;
  v14 = v3 - v5;
  v15 = v5;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v7 = (*(*a1 + 128))(a1, &v11);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v5 == v7)
  {
LABEL_8:
    v7 = 0;
    *(a1 + 128) = v3;
    *(a1 + 136) = 1;
  }

  return v7;
}

void sub_248F4FB84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<218ul>>::~logger(va);
  _Unwind_Resume(a1);
}

uint64_t BufferedWriteBackend::write(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 104) != 1 || *(a2 + 48) == 0)
  {
    std::mutex::lock((a1 + 40));
    if ((*(a1 + 136) & 1) != 0 || (offset = BufferedWriteBackend::reset_last_offset(a1, a2), !offset))
    {
      v5 = *(a1 + 128);
      v6 = *(a1 + 104);
      v7 = *(a1 + 112) - v6;
      v8 = v5 % v7;
      if (v5 % v7)
      {
        v9 = v7 - v8;
        if (v9 >= *(a2 + 16))
        {
          v10 = *(a2 + 16);
        }

        else
        {
          v10 = v9;
        }

        memcpy((v6 + v8), *a2, v10);
        v11 = *(a1 + 104);
        v7 = *(a1 + 112) - v11;
        if (v10 + v8 == v7)
        {
          v12 = *(details::get_dummy_shared_ptr() + 1);
          v19 = v11;
          v20 = v12;
          if (v12)
          {
            atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v21 = v10 + v8;
          v22 = v5 - v8;
          v23 = v10 + v8;
          v24 = 0;
          v25 = 0;
          v26 = 0;
          offset = (*(**(a1 + 24) + 120))(*(a1 + 24), &v19);
          v13 = v21;
          if (v20)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v20);
          }

          if (v13 != offset)
          {
            goto LABEL_28;
          }

          v7 = *(a1 + 112) - *(a1 + 104);
        }
      }

      else
      {
        v10 = 0;
      }

      offset = *(a2 + 16);
      v15 = (offset - v10) / v7 * v7;
      if (offset - v10 != (offset - v10) % v7)
      {
        sg_entry::sg_entry<sg_entry const&,void>(&v19, a2, v15, v10, *(a2 + 24) + v10, *(a2 + 32) - v10);
        offset = (*(**(a1 + 24) + 120))(*(a1 + 24), &v19);
        if (v20)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v20);
        }

        if (v15 != offset)
        {
          goto LABEL_28;
        }

        v10 += v15;
        offset = *(a2 + 16);
      }

      if (offset > v10)
      {
        memcpy(*(a1 + 104), (*a2 + v10), offset - v10);
        offset = *(a2 + 16);
      }

      *(a1 + 128) += offset;
    }

LABEL_28:
    std::mutex::unlock((a1 + 40));
    return offset;
  }

  *&v17 = "int BufferedWriteBackend::write(const sg_entry &)";
  *(&v17 + 1) = 31;
  v18 = 16;
  di_log::logger<di_log::log_printer<233ul>>::logger(&v19, &v17);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, "BufferedWriteBackend doesn't support per io crypto", 50);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<233ul>>::~logger_buf(&v19);
  MEMORY[0x24C1ED6A0](&v28);
  return 4294967194;
}

void sub_248F4FE2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  std::mutex::unlock((v13 + 40));
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<233ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<233ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFCEB0;
  a1[45] = &unk_285BFCFB0;
  a1[46] = &unk_285BFCFD8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFCEB0;
  a1[45] = &unk_285BFCF38;
  a1[46] = &unk_285BFCF60;
  return a1;
}

void sub_248F4FF74(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<233ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<233ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<233ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t BufferedWriteBackend::flush(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 40));
  if (*(a1 + 136) == 1)
  {
    v4 = *(a1 + 104);
    v5 = *(a1 + 112) - v4;
    v6 = *(a1 + 128) % v5;
    if (!v6)
    {
      goto LABEL_11;
    }

    bzero((v4 + v6), v5 - v6);
    v7 = *(a1 + 128);
    v8 = *(a1 + 104);
    v9 = *(a1 + 112);
    v10 = *(details::get_dummy_shared_ptr() + 1);
    v16 = v8;
    v17 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = v9 - v8;
    v19 = v7 - v6;
    v20 = v9 - v8;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v11 = (*(**(a1 + 24) + 120))(*(a1 + 24), &v16);
    v12 = v11;
    v13 = v11 >= 0 ? 4294967291 : v11;
    v14 = v18;
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    if (v14 == v12)
    {
LABEL_11:
      v13 = (*(**(a1 + 24) + 16))(*(a1 + 24), a2);
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock((a1 + 40));
  return v13;
}

void sub_248F50124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::mutex::unlock((v10 + 40));
  _Unwind_Resume(a1);
}

void BufferedWriteBackend::~BufferedWriteBackend(BufferedWriteBackend *this)
{
  BufferedWriteBackend::~BufferedWriteBackend(this);

  JUMPOUT(0x24C1ED730);
}

{
  *this = &unk_285BFC708;
  BufferedWriteBackend::flush(this, 1);
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  std::mutex::~mutex((this + 40));
  *this = &unk_285BD4DB0;
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

void BackendSG::~BackendSG(BackendSG *this)
{
  *this = &unk_285BFC630;
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *this = &unk_285BD4DB0;
  v4 = *(this + 4);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

{
  *this = &unk_285BFC630;
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *this = &unk_285BD4DB0;
  v4 = *(this + 4);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  JUMPOUT(0x24C1ED730);
}

void non-virtual thunk todi_log::logger<di_log::log_printer<146ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<146ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<146ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<146ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<146ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<146ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<146ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<146ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<146ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<146ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<146ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFC9E8;
  di_log::logger_buf<di_log::log_printer<146ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<146ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<146ul>::log((a1 + 72), __p);
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

void sub_248F50848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<146ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<146ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<146ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 146;
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
      v22 = 146;
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

void non-virtual thunk todi_log::logger<di_log::log_printer<163ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<163ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<163ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<163ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<163ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<163ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<163ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<163ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<163ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<163ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<163ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFCC08;
  di_log::logger_buf<di_log::log_printer<163ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<163ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<163ul>::log((a1 + 72), __p);
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

void sub_248F50FE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<163ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<163ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<163ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 163;
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
      v22 = 163;
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

void non-virtual thunk todi_log::logger<di_log::log_printer<185ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<185ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<185ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<185ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<185ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<185ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<185ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<185ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<185ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<185ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<185ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFCE28;
  di_log::logger_buf<di_log::log_printer<185ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<185ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<185ul>::log((a1 + 72), __p);
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

void sub_248F51778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<185ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<185ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<185ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 185;
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
      v22 = 185;
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

void non-virtual thunk todi_log::logger<di_log::log_printer<233ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<233ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<233ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<233ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<233ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<233ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<233ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<233ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<233ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<233ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<233ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFD048;
  di_log::logger_buf<di_log::log_printer<233ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<233ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<233ul>::log((a1 + 72), __p);
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

void sub_248F51F10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<233ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<233ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<233ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 233;
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
      v22 = 233;
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

void *std::__shared_ptr_emplace<BufferAllocator>::__shared_ptr_emplace[abi:ne200100]<unsigned long &,int,unsigned long &,std::allocator<BufferAllocator>,0>(void *a1, uint64_t *a2, unsigned int *a3, unint64_t *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BFD0C8;
  BufferAllocator::BufferAllocator((a1 + 3), *a2, *a3, *a4);
  return a1;
}

void std::__shared_ptr_emplace<BufferAllocator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285BFD0C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<146ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFC9E8;
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

void sub_248F5240C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<163ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFCC08;
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

void sub_248F524D4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<185ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFCE28;
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

void sub_248F5259C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<BackendSG>::__shared_ptr_emplace[abi:ne200100]<BackendSG&,std::shared_ptr<Backend> const&,std::allocator<BackendSG>,0>(void *a1, uint64_t a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BEC430;
  BackendSG::BackendSG((a1 + 3), a2, a3);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<233ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFD048;
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

void sub_248F5274C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void CompressedBackend::make_backend(uint64_t a1, _DWORD *a2)
{
  if (*a2 == 4)
  {
    std::allocate_shared[abi:ne200100]<BZIPCompressedBackend,std::allocator<BZIPCompressedBackend>,std::shared_ptr<Backend> const&,unsigned long &,0>();
  }

  std::allocate_shared[abi:ne200100]<StandardCompressedBackend,std::allocator<StandardCompressedBackend>,std::shared_ptr<Backend> const&,CompressedBackend::algo_t &,unsigned long &,0>();
}

void CompressedBackend::CompressedBackend(Backend *a1, void *a2, _DWORD *a3, uint64_t a4)
{
  BackendInternalBackend::BackendInternalBackend(a1, a2);
  *v6 = &unk_285BFD118;
  *(v6 + 40) = *a3;
  *(v6 + 48) = a4;
  operator new[]();
}

void CompressedBackend::CompressedBackend(Backend *a1, uint64_t a2, void *a3)
{
  BackendInternalBackend::BackendInternalBackend(a1, a3);
  *v4 = &unk_285BFD118;
  *(v4 + 40) = *(a2 + 40);
  *(v4 + 48) = *(a2 + 48);
  operator new[]();
}

void CompressedBackend::~CompressedBackend(CompressedBackend *this)
{
  *this = &unk_285BFD118;
  boost::container::vector<CompressedBackend::promise_io_t,boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>,void>::~vector(this + 72);
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    MEMORY[0x24C1ED710](v2, 0x1000C8077774924);
  }

  *this = &unk_285BD4DB0;
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

uint64_t CompressedBackend::read(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) != *(a1 + 56))
  {
    (*(*a1 + 152))(a1);
  }

  if (*(a2 + 104) == 1 && *(a2 + 48) != 0)
  {
    return 4294967251;
  }

  v5 = *(a1 + 56);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(details::get_dummy_shared_ptr() + 1);
  v17 = v5;
  v18 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = v6;
  v20 = v7;
  v21 = v6;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v9 = (*(**(a1 + 24) + 128))(*(a1 + 24), &v17);
  if ((v9 & 0x80000000) != 0)
  {
    *&v12 = "int CompressedBackend::read(const sg_entry &)";
    *(&v12 + 1) = 27;
    v13 = 16;
    di_log::logger<di_log::log_printer<56ul>>::logger(v14, &v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "Internal backend read() failed. ret=", 36);
    MEMORY[0x24C1ED390](&v15, v9);
    std::ios_base::getloc(&v16[*(v15 - 24) - 8]);
    v10 = std::locale::use_facet(&v25, MEMORY[0x277D82680]);
    (v10->__vftable[2].~facet_0)(v10, 10);
    std::locale::~locale(&v25);
    std::ostream::put();
    std::ostream::flush();
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<56ul>>::~logger_buf(v14);
    MEMORY[0x24C1ED6A0](v16);
  }

  else
  {
    v9 = (*(*a1 + 208))(a1, a2, v17);
    if (!v9)
    {
      *&v12 = "int CompressedBackend::read(const sg_entry &)";
      *(&v12 + 1) = 27;
      v13 = 16;
      di_log::logger<di_log::log_printer<62ul>>::logger(v14, &v12);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "Decompression failed", 20);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<62ul>>::~logger_buf(v14);
      MEMORY[0x24C1ED6A0](v16);
      v9 = 4294967291;
    }
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  return v9;
}

void sub_248F52C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  di_log::logger<di_log::log_printer<62ul>>::~logger(va);
  v7 = *(v5 - 160);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<62ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<62ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFD420;
  a1[45] = &unk_285BFD520;
  a1[46] = &unk_285BFD548;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFD420;
  a1[45] = &unk_285BFD4A8;
  a1[46] = &unk_285BFD4D0;
  return a1;
}

void sub_248F52DC0(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<62ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<62ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<62ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void CompressedBackend::future_read(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 64);
  v7 = *(a2 + 16);
  if (*(a1 + 48) - v6 + *(a1 + 56) < v7)
  {
    (*(*a1 + 152))(a1);
    v6 = *(a1 + 64);
    v7 = *(a2 + 16);
  }

  v8 = *(a2 + 24);
  v9 = *(details::get_dummy_shared_ptr() + 1);
  v31 = v6;
  v32 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v33 = v7;
  v34 = v8;
  v35 = v7;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  if (*(a2 + 104) == 1 && *(a2 + 48))
  {
    *a3 = -45;
    *(a3 + 4) = 1;
LABEL_11:
    *(a3 + 8) = 0;
    goto LABEL_12;
  }

  (*(**(a1 + 24) + 136))(&v29);
  if ((v29 & 0x100000000) == 0 && !v30)
  {
    *a3 = 0;
    *(a3 + 4) = 0;
    *(a3 + 16) = 0;
    goto LABEL_11;
  }

  LOBYTE(v24) = 0;
  v25 = 0;
  v27 = &v28;
  v28 = &v24;
  v26 = 0;
  sg_entry::sg_entry(v16, a2);
  v18 = v28;
  v28 = 0;
  *(v18 + 2) = &v18;
  LOBYTE(v19) = 0;
  v20 = 0;
  v21 = 0;
  if (BYTE4(v29) == 1)
  {
    v19 = v29;
    v20 = 1;
  }

  v10 = v30;
  v22 = v30;
  v30 = 0;
  if (v22)
  {
    *v10 = &v19;
  }

  v11 = *(a1 + 72);
  v23 = *(a1 + 64);
  v12 = *(a1 + 80);
  v13 = v11 + 152 * v12;
  if (v12 == *(a1 + 88))
  {
    boost::container::vector<CompressedBackend::promise_io_t,boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>,CompressedBackend::promise_io_t*,CompressedBackend::promise_io_t>>((a1 + 72), v11 + 152 * v12, 1, v16, &v39);
  }

  else
  {
    sg_entry::sg_entry(v11 + 152 * v12, v16);
    *(v13 + 112) = v18;
    v18 = 0;
    *(*(v13 + 112) + 16) = v13 + 112;
    *(v13 + 120) = 0;
    *(v13 + 124) = 0;
    *(v13 + 128) = 0;
    if (v20 == 1)
    {
      *(v13 + 120) = v19;
      *(v13 + 124) = 1;
    }

    *(v13 + 136) = v22;
    v22 = 0;
    v14 = *(v13 + 136);
    if (v14)
    {
      *v14 = v13 + 120;
    }

    *(v13 + 144) = v23;
    ++*(a1 + 80);
  }

  if (v18)
  {
    *(v18 + 2) = 0;
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  *(a1 + 64) += *(a2 + 16);
  *a3 = 0;
  *(a3 + 4) = 0;
  *(a3 + 8) = 0;
  if (v25 == 1)
  {
    *a3 = v24;
    *(a3 + 4) = 1;
  }

  v15 = v27;
  *(a3 + 16) = v27;
  if (v15)
  {
    *v15 = a3;
  }

  if (v28)
  {
    *(v28 + 2) = 0;
  }

LABEL_12:
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }
}

void sub_248F53114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (a24)
  {
    *(a24 + 16) = 0;
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a32)
  {
    *(a32 + 16) = 0;
  }

  v34 = *(v32 - 176);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  _Unwind_Resume(exception_object);
}

void CompressedBackend::run_futures(CompressedBackend *this)
{
  (*(**(this + 3) + 152))(*(this + 3));
  v3 = *(this + 10);
  if (v3)
  {
    v4 = 152 * v3;
    v5 = (*(this + 9) + 112);
    while (1)
    {
      LODWORD(v6) = lw_future<int>::get((v5 + 1), v2);
      if ((v6 & 0x80000000) == 0)
      {
        if (*(v5 - 12) > v6)
        {
          goto LABEL_7;
        }

        v6 = (*(*this + 208))(this, v5 - 14, v5[4]);
        if (!v6)
        {
          break;
        }
      }

LABEL_8:
      v8 = *v5;
      *v8 = v6;
      *(v8 + 4) = 1;
      lw_promise<int>::notify_future(v5, v7);
      v5 += 19;
      v4 -= 152;
      if (!v4)
      {
        goto LABEL_9;
      }
    }

    *&v9 = "void CompressedBackend::run_futures()";
    *(&v9 + 1) = 35;
    v10 = 16;
    di_log::logger<di_log::log_printer<107ul>>::logger(v11, &v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "Decompression failed", 20);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<107ul>>::~logger_buf(v11);
    MEMORY[0x24C1ED6A0](&v13);
LABEL_7:
    LODWORD(v6) = -5;
    goto LABEL_8;
  }

LABEL_9:
  *(this + 8) = *(this + 7);
  boost::container::vector<CompressedBackend::promise_io_t,boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>,void>::priv_destroy_all(this + 9);
}

void sub_248F532D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  di_log::logger<di_log::log_printer<107ul>>::~logger(va);
  _Unwind_Resume(a1);
}

uint64_t CompressedBackend::write(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) != *(a1 + 56))
  {
    (*(*a1 + 152))(a1);
  }

  if (*(a2 + 104) == 1 && *(a2 + 48) != 0)
  {
    return 4294967251;
  }

  v5 = (*(*a1 + 200))(a1, a2);
  if (!v5)
  {
    return 4294967291;
  }

  v6 = v5;
  v7 = *(a1 + 56);
  v8 = *(a2 + 24);
  v9 = *(details::get_dummy_shared_ptr() + 1);
  v18 = v7;
  v19 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = v6;
  v21 = v8;
  v22 = v6;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v10 = (*(**(a1 + 24) + 120))(*(a1 + 24), &v18);
  if ((v10 & 0x80000000) != 0)
  {
    *&v13 = "int CompressedBackend::write(const sg_entry &)";
    *(&v13 + 1) = 28;
    v14 = 16;
    di_log::logger<di_log::log_printer<137ul>>::logger(v15, &v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "Internal backend write() failed. ret=", 37);
    MEMORY[0x24C1ED390](&v16, v10);
    std::ios_base::getloc((&v16 + *(v16 - 24)));
    v11 = std::locale::use_facet(&v26, MEMORY[0x277D82680]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(&v26);
    std::ostream::put();
    std::ostream::flush();
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<137ul>>::~logger_buf(v15);
    MEMORY[0x24C1ED6A0](&v17);
  }

  else
  {
    v10 = v6;
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  return v10;
}

void sub_248F5351C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v15 = *(v13 - 160);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(exception_object);
}

void *CompressedBackend::name(uint64_t a1, void *a2)
{
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "Compressed(", 11);
  v6 = *(a1 + 40);
  v4 = operator<<(v3, &v6);
  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ")", 1);
}

void *operator<<(void *a1, _DWORD *a2)
{
  v2 = &off_278F814E0;
  v3 = 120;
  while (*(v2 - 2) != *a2)
  {
    v2 += 3;
    v3 -= 24;
    if (!v3)
    {
      v4 = "no_match";
      v5 = 8;
      return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v4, v5);
    }
  }

  v4 = *v2;
  v5 = v2[1];
  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v4, v5);
}

void sub_248F536F8(_Unwind_Exception *a1)
{
  v3 = *(v1 + 318);
  *(v1 + 318) = 0;
  if (v3)
  {
    MEMORY[0x24C1ED730]();
  }

  v4 = *(v1 + 317);
  *(v1 + 317) = 0;
  if (v4)
  {
    MEMORY[0x24C1ED710](v4, 0x1000C8077774924);
  }

  CompressedBackend::~CompressedBackend(v1);
  _Unwind_Resume(a1);
}

void sub_248F53844(_Unwind_Exception *a1)
{
  v3 = *(v1 + 318);
  *(v1 + 318) = 0;
  if (v3)
  {
    MEMORY[0x24C1ED730](v3, 0x1000C4052888210);
  }

  v4 = *(v1 + 317);
  *(v1 + 317) = 0;
  if (v4)
  {
    MEMORY[0x24C1ED710](v4, 0x1000C8077774924);
  }

  CompressedBackend::~CompressedBackend(v1);
  _Unwind_Resume(a1);
}

uint64_t BZIPCompressedBackend::decompress(uint64_t a1, uint64_t a2, char *a3)
{
  destLen = *(a2 + 32);
  v3 = BZ2_bzBuffToBuffDecompress(*a2, &destLen, a3, *(a2 + 16), 0, 0);
  if (!v3)
  {
    return destLen;
  }

  v4 = v3;
  *&v6 = "size_t BZIPCompressedBackend::decompress(const sg_entry &, char *) const";
  *(&v6 + 1) = 40;
  v7 = 16;
  di_log::logger<di_log::log_printer<264ul>>::logger(v8, &v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "BZIP decompression failed, res=", 31);
  MEMORY[0x24C1ED390](&v9, v4);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<264ul>>::~logger_buf(v8);
  MEMORY[0x24C1ED6A0](&v10);
  return 0;
}

void sub_248F539F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  di_log::logger<di_log::log_printer<264ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<264ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<264ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFD860;
  a1[45] = &unk_285BFD960;
  a1[46] = &unk_285BFD988;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFD860;
  a1[45] = &unk_285BFD8E8;
  a1[46] = &unk_285BFD910;
  return a1;
}

void sub_248F53B10(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<264ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<264ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<264ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t BZIPCompressedBackend::compress(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  destLen = v2;
  v3 = v2 / 0x186A0;
  if ((v2 / 0x186A0) >= 8)
  {
    LODWORD(v3) = 8;
  }

  v4 = BZ2_bzBuffToBuffCompress(*(a1 + 56), &destLen, *a2, v2, v3 + 1, 0, 0);
  if (v4 != -8)
  {
    v5 = v4;
    if (!v4)
    {
      return destLen;
    }

    *&v7 = "size_t BZIPCompressedBackend::compress(const sg_entry &) const";
    *(&v7 + 1) = 38;
    v8 = 16;
    di_log::logger<di_log::log_printer<287ul>>::logger(v9, &v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "BZIP compression failed, res=", 29);
    MEMORY[0x24C1ED390](&v10, v5);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<287ul>>::~logger_buf(v9);
    MEMORY[0x24C1ED6A0](&v11);
  }

  return 0;
}

void sub_248F53C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  di_log::logger<di_log::log_printer<287ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<287ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<287ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFDA80;
  a1[45] = &unk_285BFDB80;
  a1[46] = &unk_285BFDBA8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFDA80;
  a1[45] = &unk_285BFDB08;
  a1[46] = &unk_285BFDB30;
  return a1;
}

void sub_248F53D90(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<287ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<287ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<287ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void StandardCompressedBackend::~StandardCompressedBackend(StandardCompressedBackend *this)
{
  *this = &unk_285BFD200;
  v2 = *(this + 318);
  *(this + 318) = 0;
  if (v2)
  {
    MEMORY[0x24C1ED730](v2, 0x1000C4052888210);
  }

  v3 = *(this + 317);
  *(this + 317) = 0;
  if (v3)
  {
    MEMORY[0x24C1ED710](v3, 0x1000C8077774924);
  }

  CompressedBackend::~CompressedBackend(this);
}

{
  StandardCompressedBackend::~StandardCompressedBackend(this);

  JUMPOUT(0x24C1ED730);
}

void BZIPCompressedBackend::~BZIPCompressedBackend(BZIPCompressedBackend *this)
{
  CompressedBackend::~CompressedBackend(this);

  JUMPOUT(0x24C1ED730);
}

uint64_t boost::container::vector<CompressedBackend::promise_io_t,boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>,void>::~vector(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *a1 + 112;
    do
    {
      if (*v3)
      {
        *(*v3 + 16) = 0;
      }

      v4 = *(v3 - 104);
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      v3 += 152;
      --v2;
    }

    while (v2);
  }

  if (*(a1 + 16) && a1 + 24 != *a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<62ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<62ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<62ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<62ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<62ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<62ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<62ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<62ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<62ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<62ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<62ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFD5B8;
  di_log::logger_buf<di_log::log_printer<62ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<62ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<62ul>::log((a1 + 72), __p);
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

void sub_248F54510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<62ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<62ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<62ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 62;
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
      v22 = 62;
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

_DWORD *StandardCompressedBackend::pimpl::pimpl(_DWORD *a1, int *a2)
{
  *a1 = StandardCompressedBackend::pimpl::pimpl(CompressedBackend::algo_t)::algos[*a2];
  if (DIDebugLogsEnabled())
  {
    *&v5 = "StandardCompressedBackend::pimpl::pimpl(algo_t)";
    *(&v5 + 1) = 39;
    v6 = 2;
    di_log::logger<di_log::log_printer<195ul>>::logger(v7, &v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "Using compression ", 18);
    v10 = *a2;
    operator<<(&v8, &v10);
    *(&v8 + *(v8 - 24) + 8) = *(&v8 + *(v8 - 24) + 8) & 0xFFFFFFB5 | 8;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, " constant ", 10);
    MEMORY[0x24C1ED390](&v8, *a1);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<195ul>>::~logger_buf(v7);
    MEMORY[0x24C1ED6A0](&v9);
  }

  return a1;
}

void sub_248F54870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  di_log::logger<di_log::log_printer<195ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<195ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<195ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFD640;
  a1[45] = &unk_285BFD740;
  a1[46] = &unk_285BFD768;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFD640;
  a1[45] = &unk_285BFD6C8;
  a1[46] = &unk_285BFD6F0;
  return a1;
}

void sub_248F54988(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<195ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<195ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<195ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<195ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFD7D8;
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

void sub_248F54AA0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<195ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFD7D8;
  di_log::logger_buf<di_log::log_printer<195ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<195ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<195ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<195ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<195ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<195ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<195ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<195ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<195ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<195ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<195ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<195ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<195ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<195ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<195ul>::log((a1 + 72), __p);
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

void sub_248F55044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<195ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 195;
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
      v22 = 195;
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

void non-virtual thunk todi_log::logger<di_log::log_printer<264ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<264ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<264ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<264ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<264ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<264ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<264ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<264ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<264ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<264ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<264ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFD9F8;
  di_log::logger_buf<di_log::log_printer<264ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<264ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<264ul>::log((a1 + 72), __p);
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

void sub_248F557A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<264ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<264ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<264ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 264;
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
      v22 = 264;
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

void non-virtual thunk todi_log::logger<di_log::log_printer<287ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<287ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<287ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<287ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<287ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<287ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<287ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<287ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<287ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<287ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<287ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFDC18;
  di_log::logger_buf<di_log::log_printer<287ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<287ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<287ul>::log((a1 + 72), __p);
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

void sub_248F55F38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<287ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<287ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<287ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 287;
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
      v22 = 287;
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

void std::__shared_ptr_emplace<BZIPCompressedBackend>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<Backend> const&,unsigned long &,std::allocator<BZIPCompressedBackend>,0>(uint64_t a1, void *a2, uint64_t *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_285BFDC98;
  v3 = *a3;
  v4 = 4;
  CompressedBackend::CompressedBackend((a1 + 24), a2, &v4, v3);
}

void std::__shared_ptr_emplace<BZIPCompressedBackend>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285BFDC98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

void std::__shared_ptr_emplace<StandardCompressedBackend>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<Backend> const&,CompressedBackend::algo_t &,unsigned long &,std::allocator<StandardCompressedBackend>,0>(uint64_t a1, void *a2, int *a3, uint64_t *a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_285BFDCE8;
  v4 = *a3;
  StandardCompressedBackend::StandardCompressedBackend((a1 + 24), a2, &v4, *a4);
}

void std::__shared_ptr_emplace<StandardCompressedBackend>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285BFDCE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<62ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFD5B8;
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

void sub_248F56594(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void boost::container::vector<CompressedBackend::promise_io_t,boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>,CompressedBackend::promise_io_t*,CompressedBackend::promise_io_t>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *a1;
  v11 = boost::container::vector_alloc_holder<boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>,unsigned long,boost::move_detail::integral_constant<unsigned int,1u>>::next_capacity<boost::container::growth_factor_60>(a1, a3);
  if (v11 >= 0xD79435E50D7944)
  {
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", v12);
  }

  v13 = v11;
  v14 = operator new(152 * v11);
  boost::container::vector<CompressedBackend::promise_io_t,boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_new_allocation<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>,CompressedBackend::promise_io_t*,CompressedBackend::promise_io_t>>(a1, v14, v13, a2, a3, a4);
  *a5 = *a1 + a2 - v10;
}

unint64_t boost::container::vector_alloc_holder<boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>,unsigned long,boost::move_detail::integral_constant<unsigned int,1u>>::next_capacity<boost::container::growth_factor_60>(uint64_t a1, const char *a2)
{
  v2 = 0xD79435E50D7943;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xD79435E50D7943 - v4 < &a2[v3 - v4])
  {
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
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

  v9 = &a2[v3];
  if (v8 < 0xD79435E50D7943)
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

void boost::container::vector<CompressedBackend::promise_io_t,boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_new_allocation<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>,CompressedBackend::promise_io_t*,CompressedBackend::promise_io_t>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  boost::container::uninitialized_move_and_insert_alloc<boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>,CompressedBackend::promise_io_t*,CompressedBackend::promise_io_t*,boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>,CompressedBackend::promise_io_t*,CompressedBackend::promise_io_t>>(a1, *a1, a4, *a1 + 152 * a1[1], a2, a5, a6);
  if (v10)
  {
    v11 = a1[1];
    if (v11)
    {
      v12 = v10 + 112;
      do
      {
        if (*v12)
        {
          *(*v12 + 16) = 0;
        }

        v13 = *(v12 - 104);
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        v12 += 152;
        --v11;
      }

      while (v11);
    }

    if (a1 + 3 != *a1)
    {
      operator delete(*a1);
    }
  }

  v14 = a1[1] + a5;
  *a1 = a2;
  a1[1] = v14;
  a1[2] = a3;
}

void sub_248F5679C(_Unwind_Exception *exception_object)
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

uint64_t *boost::container::uninitialized_move_and_insert_alloc<boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>,CompressedBackend::promise_io_t*,CompressedBackend::promise_io_t*,boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>,CompressedBackend::promise_io_t*,CompressedBackend::promise_io_t>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a5;
  v17 = a1;
  v16 = boost::container::uninitialized_move_alloc<boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>,CompressedBackend::promise_io_t*,CompressedBackend::promise_io_t*>(a1, a2, a3, a5);
  v12 = sg_entry::sg_entry(v16, a7);
  *(v12 + 112) = *(a7 + 112);
  *(a7 + 112) = 0;
  *(*(v12 + 112) + 16) = v12 + 112;
  *(v12 + 120) = 0;
  *(v12 + 124) = 0;
  *(v12 + 128) = 0;
  if (*(a7 + 124) == 1)
  {
    *(v12 + 120) = *(a7 + 120);
    *(v12 + 124) = 1;
  }

  *(v12 + 136) = *(a7 + 136);
  *(a7 + 136) = 0;
  v13 = *(v12 + 136);
  if (v13)
  {
    *v13 = v12 + 120;
  }

  *(v12 + 144) = *(a7 + 144);
  boost::container::uninitialized_move_alloc<boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>,CompressedBackend::promise_io_t*,CompressedBackend::promise_io_t*>(a1, a3, a4, v12 + 152 * a6);
  v15 = 0;
  v16 = 0;
  return boost::container::dtl::scoped_destructor_range<boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>>::~scoped_destructor_range(&v15);
}

void sub_248F568B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::container::dtl::scoped_destructor_range<boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>>::~scoped_destructor_range(va);
  _Unwind_Resume(a1);
}

uint64_t boost::container::uninitialized_move_alloc<boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>,CompressedBackend::promise_io_t*,CompressedBackend::promise_io_t*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      sg_entry::sg_entry(a4 + v7, a2 + v7);
      *(v8 + 112) = *(a2 + v7 + 112);
      *(a2 + v7 + 112) = 0;
      *(*(v8 + 112) + 16) = v8 + 112;
      *(v8 + 120) = 0;
      *(v8 + 124) = 0;
      *(v8 + 128) = 0;
      if (*(a2 + v7 + 124) == 1)
      {
        *(v8 + 120) = *(a2 + v7 + 120);
        *(v8 + 124) = 1;
      }

      *(a4 + v7 + 136) = *(a2 + v7 + 136);
      *(a2 + v7 + 136) = 0;
      v9 = *(a4 + v7 + 136);
      if (v9)
      {
        *v9 = v8 + 120;
      }

      *(a4 + v7 + 144) = *(a2 + v7 + 144);
      v7 += 152;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_248F569AC(void *a1)
{
  __cxa_begin_catch(a1);
  if (v3)
  {
    boost::container::uninitialized_move_alloc<boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>,CompressedBackend::promise_io_t*,CompressedBackend::promise_io_t*>(v1, v2);
  }

  __cxa_rethrow();
}

uint64_t *boost::container::dtl::scoped_destructor_range<boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>>::~scoped_destructor_range(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v2 != v3)
  {
    v4 = *(v2 + 112);
    if (v4)
    {
      *(v4 + 16) = 0;
    }

    v5 = *(v2 + 8);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      v2 = *a1;
      v3 = a1[1];
    }

    v2 += 152;
    *a1 = v2;
  }

  return a1;
}

void boost::container::vector<CompressedBackend::promise_io_t,boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>,void>::priv_destroy_all(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = *a1 + 112;
    do
    {
      if (*v3)
      {
        *(*v3 + 16) = 0;
      }

      v4 = *(v3 - 104);
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      v3 += 152;
      --v2;
    }

    while (v2);
  }

  a1[1] = 0;
}

void std::__shared_ptr_emplace<StandardCompressedBackend>::__shared_ptr_emplace[abi:ne200100]<StandardCompressedBackend&,std::shared_ptr<Backend> const&,std::allocator<StandardCompressedBackend>,0>(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_285BFDCE8;
  StandardCompressedBackend::StandardCompressedBackend((a1 + 24), a2, a3);
}

uint64_t di_log::logger_buf<di_log::log_printer<264ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFD9F8;
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

void sub_248F56C2C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<287ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFDC18;
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

void sub_248F56CF4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<BZIPCompressedBackend>::__shared_ptr_emplace[abi:ne200100]<BZIPCompressedBackend&,std::shared_ptr<Backend> const&,std::allocator<BZIPCompressedBackend>,0>(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_285BFDC98;
  CompressedBackend::CompressedBackend((a1 + 24), a2, a3);
}

uint64_t FileDescriptorWrapper::handle_open_from_error_message@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W3>, _BYTE *a4@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v39);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "Couldn't open ", 14);
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

  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "' with flags ", 13);
  v14 = *v13;
  *(v13 + *(*v13 - 24) + 8) = *(v13 + *(*v13 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(v13 + *(v14 - 24) + 8) |= 0x200u;
  v15 = MEMORY[0x24C1ED390]();
  *(v15 + *(*v15 - 24) + 8) = *(v15 + *(*v15 - 24) + 8) & 0xFFFFFFB5 | 2;
  if (a3 == 13)
  {
    if (*(a2 + 23) >= 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = *a2;
    }

    if (fstatat(a1, v16, &v38, 0))
    {
      v37.__r_.__value_.__r.__words[0] = "std::string FileDescriptorWrapper::handle_open_from_error_message(int, const std::string &, int, int)";
      v37.__r_.__value_.__l.__size_ = 65;
      LODWORD(v37.__r_.__value_.__r.__words[2]) = 16;
      di_log::logger<di_log::log_printer<67ul>>::logger(&v34, &v37);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, "fstatfs failed with err code", 28);
      v17 = __error();
      MEMORY[0x24C1ED390](&v35, *v17);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, " trying to check permission after EACCES", 40);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<67ul>>::~logger_buf(&v34);
      MEMORY[0x24C1ED6A0](&v36);
    }

    else
    {
      std::to_string(&v34, v38.st_gid);
      v18 = getgrgid(v38.st_gid);
      if (v18)
      {
        std::string::__assign_external(&v34, v18->gr_name);
      }

      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, ", UID:GID(Name)=", 16);
      std::to_string(&v37, v38.st_uid);
      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = &v37;
      }

      else
      {
        v20 = v37.__r_.__value_.__r.__words[0];
      }

      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v37.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v37.__r_.__value_.__l.__size_;
      }

      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v20, size);
      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ":", 1);
      if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &v34;
      }

      else
      {
        v24 = v34.__r_.__value_.__r.__words[0];
      }

      if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v25 = v34.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v24, v25);
      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, " mode=", 6);
      v27 = *v26;
      *(v26 + *(*v26 - 24) + 8) = *(v26 + *(*v26 - 24) + 8) & 0xFFFFFFB5 | 8;
      *(v26 + *(v27 - 24) + 8) |= 0x200u;
      v28 = MEMORY[0x24C1ED3D0]();
      *(v28 + *(*v28 - 24) + 8) = *(v28 + *(*v28 - 24) + 8) & 0xFFFFFFB5 | 2;
      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " (our euid is ", 14);
      v30 = geteuid();
      v31 = MEMORY[0x24C1ED3A0](v29, v30);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, ")", 1);
      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }
    }
  }

  std::stringbuf::str[abi:ne200100](&v41, a4);
  v39[0] = *MEMORY[0x277D82818];
  v32 = *(MEMORY[0x277D82818] + 72);
  *(v39 + *(v39[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v40 = v32;
  v41 = MEMORY[0x277D82878] + 16;
  if (v43 < 0)
  {
    operator delete(v42[7].__locale_);
  }

  v41 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v42);
  std::iostream::~basic_iostream();
  return MEMORY[0x24C1ED6A0](&v44);
}

void sub_248F572E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&STACK[0x2B8], MEMORY[0x277D82818]);
  MEMORY[0x24C1ED6A0](&STACK[0x338]);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<67ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<67ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFE178;
  a1[45] = &unk_285BFE278;
  a1[46] = &unk_285BFE2A0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFE178;
  a1[45] = &unk_285BFE200;
  a1[46] = &unk_285BFE228;
  return a1;
}

void sub_248F5745C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<67ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<67ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<67ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t FileDescriptorWrapper::open_file(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v33[19] = *MEMORY[0x277D85DE8];
  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  v4 = open(a1, a2, 438);
  if (v4 == -1)
  {
    v13 = *__error();
    if (DIForwardLogs())
    {
      *&v23 = 0;
      DIOSLog = getDIOSLog();
      os_log_type_enabled(DIOSLog, OS_LOG_TYPE_ERROR);
      if (*(v3 + 23) < 0)
      {
        v3 = *v3;
      }

      v15 = *__error();
      *buf = 68158467;
      *&buf[4] = 69;
      v26 = 2080;
      v27 = "static int FileDescriptorWrapper::open_file(const std::string &, int)";
      v28 = 2081;
      v29 = v3;
      v30 = 1024;
      v31 = v15;
      v16 = _os_log_send_and_compose_impl();
      if (v16)
      {
        v17 = v16;
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v16);
        free(v17);
      }
    }

    else
    {
      v18 = getDIOSLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        if (*(v3 + 23) < 0)
        {
          v3 = *v3;
        }

        v19 = *__error();
        *buf = 68158467;
        *&buf[4] = 69;
        v26 = 2080;
        v27 = "static int FileDescriptorWrapper::open_file(const std::string &, int)";
        v28 = 2081;
        v29 = v3;
        v30 = 1024;
        v31 = v19;
        _os_log_impl(&dword_248DE0000, v18, OS_LOG_TYPE_ERROR, "%.*s: Failed opening %{private}s, errno %d", buf, 0x22u);
      }
    }

    *__error() = v13;
    exception = __cxa_allocate_exception(0x40uLL);
    std::ostringstream::basic_ostringstream[abi:ne200100](buf);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "Couldn't open file with flags ", 30);
    v21 = *buf;
    *&buf[*(*buf - 24) + 8] = *&buf[*(*buf - 24) + 8] & 0xFFFFFFB5 | 8;
    *&buf[*(v21 - 24) + 8] |= 0x200u;
    MEMORY[0x24C1ED390](buf, a2);
    v22 = __error();
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, buf, *v22);
  }

  v5 = v4;
  if (DIDebugLogsEnabled())
  {
    *&v23 = "int FileDescriptorWrapper::open_file(const std::string &, int)";
    *(&v23 + 1) = 36;
    v24 = 2;
    di_log::logger<di_log::log_printer<79ul>>::logger(buf, &v23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "'", 1);
    v6 = *(v3 + 23);
    if (v6 >= 0)
    {
      v7 = v3;
    }

    else
    {
      v7 = *v3;
    }

    if (v6 >= 0)
    {
      v8 = *(v3 + 23);
    }

    else
    {
      v8 = *(v3 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, v7, v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "' opened successfully with flags ", 33);
    v9 = v32;
    *(v33 + *(v32 - 24)) = *(v33 + *(v32 - 24)) & 0xFFFFFFB5 | 8;
    *(v33 + *(v9 - 24)) |= 0x200u;
    MEMORY[0x24C1ED390](&v32, a2);
    v10 = v32;
    *(v33 + *(v32 - 24)) &= ~0x200u;
    *(v33 + *(v10 - 24)) = *(v33 + *(v10 - 24)) & 0xFFFFFFB5 | 2;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, ", fd=", 5);
    MEMORY[0x24C1ED390](&v32, v5);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<79ul>>::~logger_buf(buf);
    MEMORY[0x24C1ED6A0](v33);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_248F57960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t FileDescriptorWrapper::open_from(int a1, uint64_t a2, int a3)
{
  v5 = a3 | 0x100u;
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  v26[1] = 438;
  v27 = v6;
  v26[0] = a3 | 0x100;
  v7 = fcntl(a1, 56, v26);
  if (v7 == -1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::ostringstream::basic_ostringstream[abi:ne200100](v20);
    v16 = __error();
    FileDescriptorWrapper::handle_open_from_error_message(a1, a2, *v16, &v23);
    if ((v25 & 0x80u) == 0)
    {
      v17 = &v23;
    }

    else
    {
      v17 = v23;
    }

    if ((v25 & 0x80u) == 0)
    {
      v18 = v25;
    }

    else
    {
      v18 = *(&v23 + 1);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v17, v18);
    v19 = __error();
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, v20, *v19);
  }

  v8 = v7;
  if (DIDebugLogsEnabled())
  {
    *&v23 = "int FileDescriptorWrapper::open_from(int, const std::string &, int)";
    *(&v23 + 1) = 36;
    v24 = 2;
    di_log::logger<di_log::log_printer<96ul>>::logger(v20, &v23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "'", 1);
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

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, v10, v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "' opened successfully with flags ", 33);
    v12 = v21;
    *(&v21 + *(v21 - 24) + 8) = *(&v21 + *(v21 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(&v21 + *(v12 - 24) + 8) |= 0x200u;
    MEMORY[0x24C1ED390](&v21, v5);
    v13 = v21;
    *(&v21 + *(v21 - 24) + 8) &= ~0x200u;
    *(&v21 + *(v13 - 24) + 8) = *(&v21 + *(v13 - 24) + 8) & 0xFFFFFFB5 | 2;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, ", fd=", 5);
    MEMORY[0x24C1ED390](&v21, v8);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<96ul>>::~logger_buf(v20);
    MEMORY[0x24C1ED6A0](&v22);
  }

  return v8;
}

void sub_248F57C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v5 - 65) < 0)
  {
    operator delete(*(v5 - 88));
    std::ostringstream::~ostringstream(va);
    if ((v4 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    std::ostringstream::~ostringstream(va);
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  __cxa_free_exception(v3);
  goto LABEL_6;
}

void *di_log::logger<di_log::log_printer<96ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<96ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFE398;
  a1[45] = &unk_285BFE498;
  a1[46] = &unk_285BFE4C0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFE398;
  a1[45] = &unk_285BFE420;
  a1[46] = &unk_285BFE448;
  return a1;
}

void sub_248F57DC8(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<96ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<96ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<96ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void FileDescriptorWrapper::~FileDescriptorWrapper(FileDescriptorWrapper *this)
{
  *this = &unk_285BFDD38;
  v2 = *(this + 2);
  if (v2 != -1)
  {
    close(v2);
    if (DIDebugLogsEnabled())
    {
      *&v3 = "FileDescriptorWrapper::~FileDescriptorWrapper()";
      *(&v3 + 1) = 45;
      v4 = 2;
      di_log::logger<di_log::log_printer<104ul>>::logger(v5, &v3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "File descriptor ", 16);
      MEMORY[0x24C1ED390](&v6, *(this + 2));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " closed", 7);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<104ul>>::~logger_buf(v5);
      MEMORY[0x24C1ED6A0](&v7);
    }
  }
}

{
  FileDescriptorWrapper::~FileDescriptorWrapper(this);

  JUMPOUT(0x24C1ED730);
}

void *di_log::logger<di_log::log_printer<104ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<104ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFE5B8;
  a1[45] = &unk_285BFE6B8;
  a1[46] = &unk_285BFE6E0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFE5B8;
  a1[45] = &unk_285BFE640;
  a1[46] = &unk_285BFE668;
  return a1;
}

void sub_248F58020(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<104ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<104ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<104ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void FileDescriptor::FileDescriptor(FileDescriptor *this, int a2, char a3)
{
  *(this + 2) = a2;
  *this = &unk_285BD6900;
  *(this + 12) = a3;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  FileDescriptor::update_info(this);
}

uint64_t FileDescriptor::update_info(FileDescriptor *this)
{
  v29 = *MEMORY[0x277D85DE8];
  memset(&v23, 0, sizeof(v23));
  FileDescriptor::get_stat(this, &v23);
  v2 = v23.st_mode & 0xF000;
  if (v2 == 0x2000)
  {
    v3 = 2;
  }

  else
  {
    v3 = v2 == 24576;
  }

  *(this + 7) = v3;
  if (!v3)
  {
    *(this + 2) = v23.st_size;
    goto LABEL_17;
  }

  bzero(v28, 0x400uLL);
  bzero(&__big, 0x400uLL);
  if (fcntl(*(this + 2), 50, v28) < 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v11 = __error();
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, "get path failed", *v11);
  }

  if (!basename_r(v28, &__big))
  {
    v13 = __cxa_allocate_exception(0x40uLL);
    v14 = __error();
    DiskImagesRuntimeException::DiskImagesRuntimeException(v13, "basename_r failed", *v14);
  }

  if (strnstr(&__big, "rdisk", 5uLL) == &__big)
  {
    memmove(&__big, v27, 0x3FFuLL);
  }

  add_create_expected<iokit_utils::di_io_obj_t>::create<char (&)[1024]>(&__big, v21);
  unwrap_expected<iokit_utils::di_io_obj_t,std::error_code>(v21, "device not found in registry", &object);
  valuePtr[0] = &object;
  valuePtr[1] = &cf;
  cf = @"Size";
  wrap_exception<std::expected<CFAutoRelease<__CFNumber const*>,std::error_code> iokit_utils::di_io_obj_t::get_cf_ref<__CFNumber const*>(__CFString const*)::{lambda(void)#1}>(valuePtr, v18);
  unwrap_expected<CFAutoRelease<__CFNumber const*>,std::error_code>(v18, "device size not found in registry", &cf);
  if (!cf || (v4 = CFGetTypeID(cf), v4 != CFNumberGetTypeID()))
  {
    v8 = "device size not found in registry";
    v9 = 19;
    goto LABEL_22;
  }

  valuePtr[0] = 0;
  if (!CFNumberGetValue(cf, kCFNumberLongLongType, valuePtr))
  {
    v8 = "Failed converting CFNumber to longlong";
    v9 = 22;
LABEL_22:
    v16 = __cxa_allocate_exception(0x40uLL);
    *v16 = &unk_285BF4E60;
    v17 = std::generic_category();
    v16[1] = v9;
    v16[2] = v17;
    *(v16 + 24) = 0;
    *(v16 + 48) = 0;
    v16[7] = v8;
  }

  *(this + 2) = valuePtr[0];
  CFAutoRelease<__CFNumber const*>::~CFAutoRelease(&cf);
  if (v19 == 1)
  {
    CFAutoRelease<__CFNumber const*>::~CFAutoRelease(v18);
  }

  IOObjectRelease(object);
  if (v22 == 1)
  {
    IOObjectRelease(v21[0]);
  }

LABEL_17:
  result = FileDescriptor::fetch_physical_block_size(this);
  *(this + 6) = result;
  st_ino = v23.st_ino;
  *(this + 4) = v23.st_dev;
  *(this + 5) = st_ino;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248F58438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, int a13, int a14, io_object_t object, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t FileDescriptor::get_stat@<X0>(FileDescriptor *this@<X0>, stat *a2@<X8>)
{
  result = fstat(*(this + 2), a2);
  if (result)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v4 = __error();
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, "fstat failed", *v4);
  }

  return result;
}

uint64_t FileDescriptor::get_statfs@<X0>(FileDescriptor *this@<X0>, statfs *a2@<X8>)
{
  result = fstatfs(*(this + 2), a2);
  if ((result & 0x80000000) != 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v4 = __error();
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, "fstatfs failed", *v4);
  }

  return result;
}

uint64_t FileDescriptor::get_device_type(FileDescriptor *this, const stat *a2)
{
  v2 = *(this + 2) & 0xF000;
  if (v2 == 0x2000)
  {
    return 2;
  }

  else
  {
    return v2 == 24576;
  }
}

uint64_t FileDescriptor::get_mounted_on_fs(FileDescriptor *this)
{
  v1 = MEMORY[0x28223BE20](this);
  v3 = v2;
  v13 = *MEMORY[0x277D85DE8];
  FileDescriptor::get_statfs(v1, &__src);
  memcpy(__dst, &__src, sizeof(__dst));
  std::string::basic_string[abi:ne200100]<0>(v3, &__dst[72]);
  *&v9 = "FileDescriptor::get_mounted_on_fs() const";
  *(&v9 + 1) = 33;
  v10 = 2;
  di_log::logger<di_log::log_printer<162ul>>::logger(&__src, &v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__src.f_mntonname[272], "File system is ", 15);
  v4 = *(v3 + 23);
  if (v4 >= 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = *v3;
  }

  if (v4 >= 0)
  {
    v6 = *(v3 + 23);
  }

  else
  {
    v6 = *(v3 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__src.f_mntonname[272], v5, v6);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<162ul>>::~logger_buf(&__src);
  result = MEMORY[0x24C1ED6A0](&__src.f_mntonname[280]);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248F58704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (*(v12 + 23) < 0)
  {
    operator delete(*v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t FileDescriptor::fetch_physical_block_size(FileDescriptor *this)
{
  v42 = *MEMORY[0x277D85DE8];
  FileDescriptor::get_statfs(this, &v41);
  if (*(this + 7))
  {
    v2 = (v41.f_flags & 0x1000) == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    f_bsize = v41.f_bsize;
    goto LABEL_24;
  }

  bzero(&v41, 0x400uLL);
  bzero(&__big, 0x400uLL);
  if (fcntl(*(this + 2), 50, &v41) < 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v14 = __error();
    v15 = "get path failed";
    goto LABEL_29;
  }

  if (!basename_r(&v41, &__big))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v14 = __error();
    v15 = "basename_r failed";
LABEL_29:
    v16 = *v14;
    *exception = &unk_285BF4E60;
    v17 = std::generic_category();
    exception[1] = v16;
    exception[2] = v17;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = v15;
  }

  if (strnstr(&__big, "rdisk", 5uLL) == &__big)
  {
    memmove(&__big, &__big + 1, 0x3FFuLL);
  }

  add_create_expected<iokit_utils::di_io_obj_t>::create<char (&)[1024]>(&__big, v35);
  unwrap_expected<iokit_utils::di_io_obj_t,std::error_code>(v35, "device not found in registry", &v34);
  iokit_utils::di_io_obj_view::di_io_obj_view(v33, 3, &v34);
  iokit_utils::di_io_obj_view::begin(v33, v31);
  iokit_utils::di_io_obj_view::end(v33, &v30);
  while (iokit_utils::di_io_obj_iterator::operator!=(v31, &v30))
  {
    v4 = iokit_utils::di_io_obj_iterator::operator*(v31);
    iokit_utils::di_io_obj_base_t<unsigned int>::di_io_obj_base_t(object, v4);
    v5 = IOObjectConformsTo(object[0], "IOBlockStorageDriver");
    IOObjectRelease(object[0]);
    if (v5)
    {
      break;
    }

    iokit_utils::di_io_obj_iterator::operator++(v31);
  }

  *v32 = *v31;
  *v31 = 0;
  IOObjectRelease(HIDWORD(v30));
  IOObjectRelease(v30);
  IOObjectRelease(v31[1]);
  IOObjectRelease(v31[0]);
  iokit_utils::di_io_obj_view::end(v33, object);
  v6 = iokit_utils::di_io_obj_iterator::operator==(v32, object);
  IOObjectRelease(object[1]);
  IOObjectRelease(object[0]);
  if (v6)
  {
    v18 = __cxa_allocate_exception(0x40uLL);
    v19 = std::generic_category();
    *v18 = &unk_285BF4E60;
    v18[1] = 19;
    v18[2] = v19;
    *(v18 + 24) = 0;
    *(v18 + 48) = 0;
    v18[7] = "IOBlockStorageDriver device not found in registry iteration";
  }

  v7 = iokit_utils::di_io_obj_iterator::operator*(v32);
  iokit_utils::di_io_obj_view::di_io_obj_view(v29, 1, v7);
  iokit_utils::di_io_obj_view::begin(v29, v27);
  iokit_utils::di_io_obj_view::end(v29, &v26);
  while (iokit_utils::di_io_obj_iterator::operator!=(v27, &v26))
  {
    v8 = iokit_utils::di_io_obj_iterator::operator*(v27);
    iokit_utils::di_io_obj_base_t<unsigned int>::di_io_obj_base_t(object, v8);
    v9 = IOObjectConformsTo(object[0], "IOMedia");
    IOObjectRelease(object[0]);
    if (v9)
    {
      break;
    }

    iokit_utils::di_io_obj_iterator::operator++(v27);
  }

  *v28 = *v27;
  *v27 = 0;
  IOObjectRelease(HIDWORD(v26));
  IOObjectRelease(v26);
  IOObjectRelease(v27[1]);
  IOObjectRelease(v27[0]);
  iokit_utils::di_io_obj_view::end(v29, object);
  v10 = iokit_utils::di_io_obj_iterator::operator==(v28, object);
  IOObjectRelease(object[1]);
  IOObjectRelease(object[0]);
  if (v10)
  {
    v20 = __cxa_allocate_exception(0x40uLL);
    v21 = std::generic_category();
    *v20 = &unk_285BF4E60;
    v20[1] = 19;
    v20[2] = v21;
    *(v20 + 24) = 0;
    *(v20 + 48) = 0;
    v20[7] = "IOMedia device not found in registry iteration";
  }

  valuePtr[0] = iokit_utils::di_io_obj_iterator::operator*(v28);
  valuePtr[1] = &number;
  number = @"Preferred Block Size";
  wrap_exception<std::expected<CFAutoRelease<__CFNumber const*>,std::error_code> iokit_utils::di_io_obj_t::get_cf_ref<__CFNumber const*>(__CFString const*)::{lambda(void)#1}>(valuePtr, object);
  unwrap_expected<CFAutoRelease<__CFNumber const*>,std::error_code>(object, "Unable to get IOMedia preferred block size", &number);
  valuePtr[0] = 0;
  if (!CFNumberGetValue(number, kCFNumberLongLongType, valuePtr))
  {
    v22 = __cxa_allocate_exception(0x40uLL);
    *v22 = &unk_285BF4E60;
    v23 = std::generic_category();
    v22[1] = 22;
    v22[2] = v23;
    *(v22 + 24) = 0;
    *(v22 + 48) = 0;
    v22[7] = "Failed converting CFNumber to longlong";
  }

  f_bsize = LODWORD(valuePtr[0]);
  CFAutoRelease<__CFNumber const*>::~CFAutoRelease(&number);
  if (v25 == 1)
  {
    CFAutoRelease<__CFNumber const*>::~CFAutoRelease(object);
  }

  IOObjectRelease(v28[1]);
  IOObjectRelease(v28[0]);
  IOObjectRelease(v32[1]);
  IOObjectRelease(v32[0]);
  IOObjectRelease(v34);
  if (v36 == 1)
  {
    IOObjectRelease(v35[0]);
  }

LABEL_24:
  if (DIDebugLogsEnabled())
  {
    *&__big = "FileDescriptor::fetch_physical_block_size() const";
    *(&__big + 1) = 41;
    v40 = 2;
    di_log::logger<di_log::log_printer<213ul>>::logger(&v41, &__big);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v41.f_mntonname[272], "Physical block_size is ", 23);
    MEMORY[0x24C1ED3A0](&v41.f_mntonname[272], f_bsize);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<213ul>>::~logger_buf(&v41);
    MEMORY[0x24C1ED6A0](&v41.f_mntonname[280]);
  }

  v11 = *MEMORY[0x277D85DE8];
  return f_bsize;
}

void sub_248F58D60(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void sub_248F58FBC()
{
  di_log::logger<di_log::log_printer<209ul>>::~logger(&STACK[0x4B0]);
  __cxa_end_catch();
  JUMPOUT(0x248F58ECCLL);
}

uint64_t add_create_expected<iokit_utils::di_io_obj_t>::create<char (&)[1024]>@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  iokit_utils::di_io_obj_t::di_io_obj_t(&v4, a1);
  *a2 = v4;
  v4 = 0;
  *(a2 + 16) = 1;
  return IOObjectRelease(0);
}

uint64_t unwrap_expected<CFAutoRelease<__CFNumber const*>,std::error_code>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if ((*(result + 16) & 1) == 0)
  {
    v3 = result;
    exception = __cxa_allocate_exception(0x40uLL);
    v6 = *v3;
    *exception = &unk_285BF4E60;
    *(exception + 8) = v6;
    exception[24] = 0;
    exception[48] = 0;
    *(exception + 7) = a2;
  }

  *a3 = *result;
  *result = 0;
  return result;
}

void *di_log::logger<di_log::log_printer<209ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<209ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFE7D8;
  a1[45] = &unk_285BFE8D8;
  a1[46] = &unk_285BFE900;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFE7D8;
  a1[45] = &unk_285BFE860;
  a1[46] = &unk_285BFE888;
  return a1;
}

void sub_248F591E8(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<209ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<209ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<209ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

BOOL FileDescriptor::mounted_on_same_fs(FileDescriptor *this, const FileDescriptor *a2, const FileDescriptor *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  FileDescriptor::get_statfs(this, &v9);
  v4 = v9.f_fsid.val[0];
  v5 = v9.f_fsid.val[1];
  FileDescriptor::get_statfs(a2, &v9);
  result = v4 == v9.f_fsid.val[0] && v5 == v9.f_fsid.val[1];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t details::file_operations_t::flush(int a1, int a2, int a3)
{
  if (a3)
  {
    if (a3 == 2)
    {
      v3 = fcntl(a2, 51, 0);
    }

    else
    {
      v3 = fsync(a2);
    }
  }

  else
  {
    v3 = fcntl(a2, 85, 0);
  }

  if (v3 == -1)
  {
    return -*__error();
  }

  else
  {
    return 0;
  }
}

ssize_t details::rdevice_operations_t::_pread(details::rdevice_operations_t *this, uint64_t __fd, void *__buf, size_t __nbyte, unint64_t a5)
{
  v6 = *(this + 1);
  if (__nbyte % v6 || a5 % v6)
  {
    v8[0] = __buf;
    v8[1] = __nbyte;
    return (*(*this + 8))(this, __fd, v8, 1, a5);
  }

  else
  {

    return pread(__fd, __buf, __nbyte, a5);
  }
}

ssize_t details::rdevice_operations_t::_preadv(details::rdevice_operations_t *this, int a2, const iovec *a3, int a4, unint64_t a5)
{
  v19[32] = *MEMORY[0x277D85DE8];
  if (a4 < 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = a4;
    p_iov_len = &a3->iov_len;
    do
    {
      v9 = *p_iov_len;
      p_iov_len += 2;
      v6 += v9;
      --v7;
    }

    while (v7);
  }

  v10 = *(this + 1);
  v11 = a5 % v10 + v6;
  if (a5 % v10)
  {
    v12 = (v11 % v10 != 0) + 1;
  }

  else
  {
    v12 = v11 % v10 != 0;
  }

  if (v12)
  {
    v17 = v19;
    *v18 = xmmword_248F9D670;
    v15 = (v12 + a4);
    if (v15 >= 0x11)
    {
      boost::container::vector<iovec,boost::container::small_vector_allocator<iovec,boost::container::new_allocator<void>,void>,void>::priv_move_to_new_buffer(&v17, v15);
      v16 = *(this + 1);
    }

    operator new[]();
  }

  v13 = *MEMORY[0x277D85DE8];

  return preadv(a2, a3, a4, a5);
}

void sub_248F59698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    if (a10 != __p)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

void boost::container::vector<iovec,boost::container::small_vector_allocator<iovec,boost::container::new_allocator<void>,void>,void>::push_back(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v6 = (*a1 + 16 * v5);
  if (v5 == *(a1 + 16))
  {
    v7[1] = v2;
    v7[2] = v3;
    boost::container::vector<std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long>,boost::container::small_vector_allocator<std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long>,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long>,boost::container::new_allocator<void>,void>,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long>*,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long>>>(a1, v6, 1, a2, v7);
  }

  else
  {
    *v6 = *a2;
    ++*(a1 + 8);
  }
}

uint64_t details::device_operations_t::flush(int a1, int a2, int a3)
{
  v5[0] = 0;
  v5[1] = 0;
  v6 = 0;
  if (a3)
  {
    if (a3 != 2)
    {
      v3 = fsync(a2);
      goto LABEL_6;
    }
  }

  else
  {
    LODWORD(v6) = 2;
  }

  v3 = ioctl(a2, 0x80186416uLL, v5);
LABEL_6:
  if (v3 == -1)
  {
    return -*__error();
  }

  else
  {
    return 0;
  }
}

uint64_t FileLocal::disable_file_zero_padding(FileLocal *this)
{
  if (FileDescriptor::is_mounted_on_apfs(*(this + 5)))
  {
    v4 = 0x200000001;
    if (ffsctl(**(this + 7), 0xC0084A80uLL, &v4, 0))
    {
      *&v5 = "int FileLocal::disable_file_zero_padding() const";
      *(&v5 + 1) = 40;
      v6 = 0;
      di_log::logger<di_log::log_printer<408ul>>::logger(v7, &v5);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "Zero padding cannot be disabled from this process (res=", 55);
      v2 = __error();
      MEMORY[0x24C1ED390](&v8, *v2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, ")", 1);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<408ul>>::~logger_buf(v7);
      MEMORY[0x24C1ED6A0](v9);
      return -*__error();
    }

    else
    {
      *&v5 = "int FileLocal::disable_file_zero_padding() const";
      *(&v5 + 1) = 40;
      v6 = 0;
      di_log::logger<di_log::log_printer<412ul>>::logger(v7, &v5);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "Zero padding disabled successfully on fd ", 41);
      MEMORY[0x24C1ED390](&v8, **(this + 7));
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<412ul>>::~logger_buf(v7);
      MEMORY[0x24C1ED6A0](v9);
      return 0;
    }
  }

  else
  {
    *&v5 = "int FileLocal::disable_file_zero_padding() const";
    *(&v5 + 1) = 40;
    v6 = 0;
    di_log::logger<di_log::log_printer<394ul>>::logger(v7, &v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "Backend is not mounted on APFS", 30);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<394ul>>::~logger_buf(v7);
    MEMORY[0x24C1ED6A0](v9);
    return 4294967251;
  }
}

void sub_248F5997C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  di_log::logger<di_log::log_printer<412ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<394ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<394ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFE9F8;
  a1[45] = &unk_285BFEAF8;
  a1[46] = &unk_285BFEB20;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFE9F8;
  a1[45] = &unk_285BFEA80;
  a1[46] = &unk_285BFEAA8;
  return a1;
}

void sub_248F59AB4(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<394ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<394ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<394ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<408ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<408ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFEC18;
  a1[45] = &unk_285BFED18;
  a1[46] = &unk_285BFED40;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFEC18;
  a1[45] = &unk_285BFECA0;
  a1[46] = &unk_285BFECC8;
  return a1;
}

void sub_248F59C20(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<408ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<408ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<408ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<412ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<412ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFEE38;
  a1[45] = &unk_285BFEF38;
  a1[46] = &unk_285BFEF60;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFEE38;
  a1[45] = &unk_285BFEEC0;
  a1[46] = &unk_285BFEEE8;
  return a1;
}

void sub_248F59D8C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<412ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<412ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<412ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void FileLocal::shared_state_t::init_unmap_zeros(FileLocal::shared_state_t *this)
{
  v2 = (this + 152);
  v3 = this;
  if (atomic_load_explicit(v2, memory_order_acquire) != -1)
  {
    v5 = &v3;
    v4 = &v5;
    std::__call_once(v2, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<FileLocal::shared_state_t::init_unmap_zeros(void)::$_0 &&>>);
  }
}

void FileLocal::shared_state_t::create_ops(FileLocal::shared_state_t *this)
{
  v1 = *(this + 7);
  if (v1 != 2)
  {
    if (v1 == 1)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t FileLocal::unlink_from(int a1, uint64_t *a2)
{
  if (*(a2 + 23) >= 0)
  {
    v2 = a2;
  }

  else
  {
    v2 = *a2;
  }

  if (fcntl(a1, 57, v2) < 0)
  {
    return -*__error();
  }

  else
  {
    return 0;
  }
}

off_t FileLocal::get_file_size_from(int a1, uint64_t a2)
{
  v2 = a2;
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  if (fstatat(a1, a2, &v10, 32))
  {
    if (*__error() == 13 || *__error() == 1)
    {
      operator new();
    }

    exception = __cxa_allocate_exception(0x40uLL);
    std::ostringstream::basic_ostringstream[abi:ne200100](v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Cannot stat ", 12);
    v5 = *(v2 + 23);
    if (v5 >= 0)
    {
      v6 = v2;
    }

    else
    {
      v6 = *v2;
    }

    if (v5 >= 0)
    {
      v7 = *(v2 + 23);
    }

    else
    {
      v7 = *(v2 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v6, v7);
    v8 = __error();
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, v9, *v8);
  }

  return v10.st_size;
}

void sub_248F5A10C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t FileLocal::_write(uint64_t a1, uint64_t a2)
{
  v4 = pwrite(**(a1 + 56), *a2, *(a2 + 16), *(a2 + 24));
  v5 = v4;
  if (v4 < 0 || v4 != *(a2 + 16))
  {
    *&v12 = "int FileLocal::_write(const sg_entry &)";
    *(&v12 + 1) = 21;
    v13 = 16;
    di_log::logger<di_log::log_printer<494ul>>::logger(v14, &v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "Error writing file @ ", 21);
    operator<<(&v15, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, ". returned ", 11);
    MEMORY[0x24C1ED3B0](&v15, v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, " with errno: ", 13);
    v10 = __error();
    MEMORY[0x24C1ED390](&v15, *v10);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<494ul>>::~logger_buf(v14);
    MEMORY[0x24C1ED6A0](&v16);
    if (v5 == -1)
    {
      return -*__error();
    }

    else
    {
      return 4294967291;
    }
  }

  else
  {
    v6 = *(a2 + 24) + v4;
    v7 = (*(a1 + 40) + 64);
    v8 = atomic_load(v7);
    if (v8 < v6)
    {
      v9 = v8;
      do
      {
        atomic_compare_exchange_strong(v7, &v9, v6);
        if (v9 == v8)
        {
          break;
        }

        v8 = v9;
      }

      while (v9 < v6);
    }
  }

  return v5;
}

void sub_248F5A2EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<494ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<494ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<494ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFF058;
  a1[45] = &unk_285BFF158;
  a1[46] = &unk_285BFF180;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFF058;
  a1[45] = &unk_285BFF0E0;
  a1[46] = &unk_285BFF108;
  return a1;
}

void sub_248F5A404(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<494ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<494ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<494ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t FileLocal::_read(uint64_t a1, void *a2)
{
  v3 = (***(*(a1 + 40) + 72))(*(*(a1 + 40) + 72), **(a1 + 56), *a2, a2[2], a2[3]);
  v4 = v3;
  if (v3 < 0 || v3 != a2[2])
  {
    *&v7 = "int FileLocal::_read(const sg_entry &)";
    *(&v7 + 1) = 20;
    v8 = 16;
    di_log::logger<di_log::log_printer<509ul>>::logger(v9, &v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "Error reading file @ ", 21);
    operator<<(&v10, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, ". returned ", 11);
    MEMORY[0x24C1ED3B0](&v10, v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, " with errno: ", 13);
    v5 = __error();
    MEMORY[0x24C1ED390](&v10, *v5);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<509ul>>::~logger_buf(v9);
    MEMORY[0x24C1ED6A0](&v11);
    if (v4 == -1)
    {
      return -*__error();
    }

    else
    {
      return 4294967291;
    }
  }

  return v4;
}

void sub_248F5A5C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<509ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<509ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<509ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFF278;
  a1[45] = &unk_285BFF378;
  a1[46] = &unk_285BFF3A0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFF278;
  a1[45] = &unk_285BFF300;
  a1[46] = &unk_285BFF328;
  return a1;
}

void sub_248F5A6D8(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<509ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<509ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<509ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t FileLocal::truncate(FileLocal *this, unint64_t a2)
{
  v4 = *(this + 5);
  if (*(v4 + 28))
  {
    v5 = *(v4 + 16);
    if (v5 < a2)
    {
      *&v13 = "int FileLocal::truncate(uint64_t)";
      *(&v13 + 1) = 23;
      v14 = 16;
      di_log::logger<di_log::log_printer<521ul>>::logger(v15, &v13);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "Cannot increase size of a block device", 38);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<521ul>>::~logger_buf(v15);
      MEMORY[0x24C1ED6A0](v17);
      return 4294967268;
    }

    if (v5 > a2)
    {
      *&v13 = "int FileLocal::truncate(uint64_t)";
      *(&v13 + 1) = 23;
      v14 = 0;
      di_log::logger<di_log::log_printer<524ul>>::logger(v15, &v13);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "Ignoring truncate on block device", 33);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<524ul>>::~logger_buf(v15);
      MEMORY[0x24C1ED6A0](v17);
    }

    goto LABEL_12;
  }

  v7 = (*(*this + 40))(this);
  if (v7 < a2)
  {
    __buf = 0;
    v8 = pwrite(**(this + 7), &__buf, 1uLL, a2 - 1);
    if (v8 != 1)
    {
      v9 = v8;
      *&v13 = "int FileLocal::truncate(uint64_t)";
      *(&v13 + 1) = 23;
      v14 = 16;
      di_log::logger<di_log::log_printer<535ul>>::logger(v15, &v13);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "Failed to increase file size, pwrite returned ", 46);
      MEMORY[0x24C1ED3B0](&v16, v9);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, " errno: ", 8);
      v10 = __error();
      MEMORY[0x24C1ED390](&v16, *v10);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<535ul>>::~logger_buf(v15);
      MEMORY[0x24C1ED6A0](v17);
      if (v9 != -1)
      {
        return 4294967291;
      }

      return -*__error();
    }

LABEL_12:
    result = 0;
    atomic_store(a2, (*(this + 5) + 64));
    return result;
  }

  if (v7 <= a2 || ftruncate(**(this + 7), a2) != -1)
  {
    goto LABEL_12;
  }

  *&v13 = "int FileLocal::truncate(uint64_t)";
  *(&v13 + 1) = 23;
  v14 = 16;
  di_log::logger<di_log::log_printer<540ul>>::logger(v15, &v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "ftruncate failed, errno: ", 25);
  v11 = __error();
  MEMORY[0x24C1ED390](&v16, *v11);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<540ul>>::~logger_buf(v15);
  MEMORY[0x24C1ED6A0](v17);
  return -*__error();
}

void sub_248F5A9F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  di_log::logger<di_log::log_printer<540ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<521ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<521ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFF498;
  a1[45] = &unk_285BFF598;
  a1[46] = &unk_285BFF5C0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFF498;
  a1[45] = &unk_285BFF520;
  a1[46] = &unk_285BFF548;
  return a1;
}

void sub_248F5AB3C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<521ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<521ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<521ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<535ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<535ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFF6B8;
  a1[45] = &unk_285BFF7B8;
  a1[46] = &unk_285BFF7E0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFF6B8;
  a1[45] = &unk_285BFF740;
  a1[46] = &unk_285BFF768;
  return a1;
}

void sub_248F5ACA8(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<535ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<535ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<535ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<540ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<540ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFF8D8;
  a1[45] = &unk_285BFF9D8;
  a1[46] = &unk_285BFFA00;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFF8D8;
  a1[45] = &unk_285BFF960;
  a1[46] = &unk_285BFF988;
  return a1;
}

void sub_248F5AE14(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<540ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<540ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<540ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t FileLocal::flush(uint64_t a1, uint64_t a2)
{
  if (DIDebugLogsEnabled())
  {
    *&v12 = "int FileLocal::flush(di_flush_mode)";
    *(&v12 + 1) = 20;
    v13 = 2;
    di_log::logger<di_log::log_printer<552ul>>::logger(v14, &v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "Calling ", 8);
    operator<<(&v15, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, " on ", 4);
    operator<<(&v15, a1);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<552ul>>::~logger_buf(v14);
    MEMORY[0x24C1ED6A0](v16);
  }

  if (a2 != 1)
  {
    if (a2 == 2)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    v7 = *(a1 + 40);
    if ((*(v7 + 56) & v6) != 0)
    {
      if (DIDebugLogsEnabled())
      {
        *&v12 = "int FileLocal::flush(di_flush_mode)";
        *(&v12 + 1) = 20;
        v13 = 2;
        di_log::logger<di_log::log_printer<563ul>>::logger(v14, &v12);
        operator<<(&v15, a2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, " is not supported", 17);
        std::ostream::~ostream();
        di_log::logger_buf<di_log::log_printer<563ul>>::~logger_buf(v14);
        MEMORY[0x24C1ED6A0](v16);
      }

      return (*(*a1 + 16))(a1, a2 != 2);
    }

    else
    {
      v4 = (*(**(v7 + 72) + 16))(*(v7 + 72), **(a1 + 56), a2);
      if ((v4 + 45) > 0x17 || ((1 << (v4 + 45)) & 0x900001) == 0)
      {
        goto LABEL_5;
      }

      atomic_fetch_or_explicit((*(a1 + 40) + 56), v6, memory_order_relaxed);
      *&v12 = "int FileLocal::flush(di_flush_mode)";
      *(&v12 + 1) = 20;
      v13 = 0;
      di_log::logger<di_log::log_printer<570ul>>::logger(v14, &v12);
      operator<<(&v15, a2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, " is not supported (err code ", 28);
      v11 = __error();
      MEMORY[0x24C1ED390](&v15, *v11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, ")", 1);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<570ul>>::~logger_buf(v14);
      MEMORY[0x24C1ED6A0](v16);
      if (a2 == 2)
      {
        return (*(*a1 + 16))(a1, 0);
      }

      else
      {
        atomic_fetch_or_explicit((*(a1 + 40) + 56), 2uLL, memory_order_relaxed);
        return (*(*a1 + 16))(a1, 1);
      }
    }
  }

  v4 = (*(**(*(a1 + 40) + 72) + 16))(*(*(a1 + 40) + 72), **(a1 + 56), 1);
LABEL_5:
  v5 = v4;
  if (v4)
  {
    *&v12 = "int FileLocal::flush(di_flush_mode)";
    *(&v12 + 1) = 20;
    v13 = 16;
    di_log::logger<di_log::log_printer<580ul>>::logger(v14, &v12);
    operator<<(&v15, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, " failed wih error ", 18);
    MEMORY[0x24C1ED390](&v15, v5);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<580ul>>::~logger_buf(v14);
    MEMORY[0x24C1ED6A0](v16);
  }

  return v5;
}

void sub_248F5B224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<563ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<552ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<552ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFFAF8;
  a1[45] = &unk_285BFFBF8;
  a1[46] = &unk_285BFFC20;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFFAF8;
  a1[45] = &unk_285BFFB80;
  a1[46] = &unk_285BFFBA8;
  return a1;
}

void sub_248F5B36C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<552ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<552ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<552ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<563ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<563ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFFD18;
  a1[45] = &unk_285BFFE18;
  a1[46] = &unk_285BFFE40;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFFD18;
  a1[45] = &unk_285BFFDA0;
  a1[46] = &unk_285BFFDC8;
  return a1;
}

void sub_248F5B4D8(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<563ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<563ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<563ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<570ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<570ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFFF38;
  a1[45] = &unk_285C00038;
  a1[46] = &unk_285C00060;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFFF38;
  a1[45] = &unk_285BFFFC0;
  a1[46] = &unk_285BFFFE8;
  return a1;
}

void sub_248F5B644(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<570ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<570ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<570ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<580ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<580ul>>::logger_buf(a1, a2);
  *a1 = &unk_285C00158;
  a1[45] = &unk_285C00258;
  a1[46] = &unk_285C00280;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285C00158;
  a1[45] = &unk_285C001E0;
  a1[46] = &unk_285C00208;
  return a1;
}

void sub_248F5B7B0(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<580ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<580ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<580ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t FileLocal::unmap_range(FileLocal *this, unint64_t a2, unint64_t a3)
{
  v6 = *(this + 5);
  FileLocal::shared_state_t::init_unmap_zeros(v6);
  v7 = *(v6 + 80);
  v8 = *(v6 + 96);
  v9 = *(this + 5);
  FileLocal::shared_state_t::init_unmap_zeros(v9);
  if ((v8 & 1) == 0 || (*(v9 + 144) & 1) == 0)
  {
    *&v29 = "int FileLocal::unmap_range(uint64_t, uint64_t)";
    *(&v29 + 1) = 26;
    LODWORD(v30) = 0;
    di_log::logger<di_log::log_printer<593ul>>::logger(&v31, &v29);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, "fd block size retrieval failed (err code ", 41);
    MEMORY[0x24C1ED390](&v39, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, ")", 1);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<593ul>>::~logger_buf(&v31);
    goto LABEL_14;
  }

  v10 = *(v9 + 104);
  v11 = (a2 + v7 - 1) / v7 * v7;
  v12 = a3 + a2;
  if (a2 <= v11 && v11 < v12)
  {
    v14 = a2 - v11 + a3;
    v15 = v14 / v7 * v7;
    v16 = v14 == v14 % v7 ? 0 : (a2 + v7 - 1) / v7 * v7;
    if (v14 != v14 % v7)
    {
      *&v29 = 0;
      *(&v29 + 1) = v16;
      v30 = v14 / v7 * v7;
      v20 = fcntl(**(this + 7), 99, &v29);
      if (!v20)
      {
        if (v16 != a2)
        {
          v22 = *(details::get_dummy_shared_ptr() + 1);
          v31 = v10;
          v32 = v22;
          if (v22)
          {
            atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v33 = v16 - a2;
          v34 = a2;
          v35 = v16 - a2;
          v36 = 0;
          v37 = 0;
          v38 = 0;
          v7 = (*(*this + 120))(this, &v31);
          if (v32)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v32);
          }

          if ((v7 & 0x80000000) != 0)
          {
            *&v27 = "int FileLocal::unmap_range(uint64_t, uint64_t)";
            *(&v27 + 1) = 26;
            v28 = 16;
            di_log::logger<di_log::log_printer<614ul>>::logger(&v31, &v27);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, "Write zeros to unmap unaligned start region failed (err code", 60);
            v26 = __error();
            MEMORY[0x24C1ED390](&v39, *v26);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, ")", 1);
            di_log::logger<di_log::log_printer<614ul>>::~logger(&v31);
            return v7;
          }
        }

        if (v15 + v16 < v12)
        {
          v23 = a3 - v15 - (v16 - a2);
          v24 = *(details::get_dummy_shared_ptr() + 1);
          v31 = v10;
          v32 = v24;
          if (v24)
          {
            atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v33 = v23;
          v34 = v15 + v16;
          v35 = v23;
          v36 = 0;
          v37 = 0;
          v38 = 0;
          v7 = (*(*this + 120))(this, &v31);
          if (v32)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v32);
          }

          if ((v7 & 0x80000000) != 0)
          {
            *&v27 = "int FileLocal::unmap_range(uint64_t, uint64_t)";
            *(&v27 + 1) = 26;
            v28 = 16;
            di_log::logger<di_log::log_printer<623ul>>::logger(&v31, &v27);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, "Write zeros to unmap unaligned end region failed (err code", 58);
            v25 = __error();
            MEMORY[0x24C1ED390](&v39, *v25);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, ")", 1);
            di_log::logger<di_log::log_printer<623ul>>::~logger(&v31);
            return v7;
          }
        }

        return 0;
      }

      v7 = v20;
      *&v27 = "int FileLocal::unmap_range(uint64_t, uint64_t)";
      *(&v27 + 1) = 26;
      v28 = 0;
      di_log::logger<di_log::log_printer<606ul>>::logger(&v31, &v27);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, "Punch hole is not supported (err code ", 38);
      v21 = __error();
      MEMORY[0x24C1ED390](&v39, *v21);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, ")", 1);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<606ul>>::~logger_buf(&v31);
LABEL_14:
      MEMORY[0x24C1ED6A0](v40);
      return v7;
    }
  }

  v17 = FileLocal::write_zeros(this, a2, a3, v7, v10);
  if (v17 == a3)
  {
    return 0;
  }

  v7 = v17;
  *&v29 = "int FileLocal::unmap_range(uint64_t, uint64_t)";
  *(&v29 + 1) = 26;
  LODWORD(v30) = 16;
  di_log::logger<di_log::log_printer<631ul>>::logger(&v31, &v29);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, "Write zeros to unmap region failed (err code", 44);
  v18 = __error();
  MEMORY[0x24C1ED390](&v39, *v18);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, ")", 1);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<631ul>>::~logger_buf(&v31);
  MEMORY[0x24C1ED6A0](v40);
  if ((v7 & 0x8000000000000000) == 0)
  {
    return 4294967291;
  }

  else
  {
    return v7;
  }
}

void sub_248F5BC94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void *di_log::logger<di_log::log_printer<593ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<593ul>>::logger_buf(a1, a2);
  *a1 = &unk_285C00378;
  a1[45] = &unk_285C00478;
  a1[46] = &unk_285C004A0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285C00378;
  a1[45] = &unk_285C00400;
  a1[46] = &unk_285C00428;
  return a1;
}

void sub_248F5BE08(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<593ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<593ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<593ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<606ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<606ul>>::logger_buf(a1, a2);
  *a1 = &unk_285C00598;
  a1[45] = &unk_285C00698;
  a1[46] = &unk_285C006C0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285C00598;
  a1[45] = &unk_285C00620;
  a1[46] = &unk_285C00648;
  return a1;
}

void sub_248F5BF74(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<606ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<606ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<606ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<614ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<614ul>>::logger_buf(a1, a2);
  *a1 = &unk_285C007B8;
  a1[45] = &unk_285C008B8;
  a1[46] = &unk_285C008E0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285C007B8;
  a1[45] = &unk_285C00840;
  a1[46] = &unk_285C00868;
  return a1;
}

void sub_248F5C0E0(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<614ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<614ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<614ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<623ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<623ul>>::logger_buf(a1, a2);
  *a1 = &unk_285C009D8;
  a1[45] = &unk_285C00AD8;
  a1[46] = &unk_285C00B00;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285C009D8;
  a1[45] = &unk_285C00A60;
  a1[46] = &unk_285C00A88;
  return a1;
}

void sub_248F5C24C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<623ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<623ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<623ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

ssize_t FileLocal::write_zeros(FileLocal *this, off_t a2, unint64_t a3, unint64_t a4, char *a5)
{
  v7 = a3;
  __p = 0;
  v21 = 0;
  v22 = 0;
  std::vector<iovec>::reserve(&__p, (a3 + a4 - 1) / a4 * a4);
  if (v7)
  {
    v10 = v21;
    do
    {
      if (v7 >= a4)
      {
        v11 = a4;
      }

      else
      {
        v11 = v7;
      }

      if (v10 >= v22)
      {
        v12 = (v10 - __p) >> 4;
        if ((v12 + 1) >> 60)
        {
          std::vector<iovec>::__throw_length_error[abi:ne200100]();
        }

        v13 = (v22 - __p) >> 3;
        if (v13 <= v12 + 1)
        {
          v13 = v12 + 1;
        }

        if (v22 - __p >= 0x7FFFFFFFFFFFFFF0)
        {
          v14 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        if (v14)
        {
          std::allocator<iovec>::allocate_at_least[abi:ne200100](&__p, v14);
        }

        v15 = (16 * v12);
        *v15 = a5;
        v15[1] = v11;
        v10 = (16 * v12 + 16);
        v16 = (16 * v12 - (v21 - __p));
        memcpy(v15 - (v21 - __p), __p, v21 - __p);
        v17 = __p;
        __p = v16;
        v21 = v10;
        v22 = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *v10 = a5;
        *(v10 + 1) = v11;
        v10 += 16;
      }

      v21 = v10;
      v7 -= v11;
    }

    while (v7);
  }

  else
  {
    v10 = v21;
  }

  v18 = pwritev(**(this + 7), __p, (v10 - __p) >> 4, a2);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  return v18;
}

void sub_248F5C428(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *di_log::logger<di_log::log_printer<631ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<631ul>>::logger_buf(a1, a2);
  *a1 = &unk_285C00BF8;
  a1[45] = &unk_285C00CF8;
  a1[46] = &unk_285C00D20;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285C00BF8;
  a1[45] = &unk_285C00C80;
  a1[46] = &unk_285C00CA8;
  return a1;
}

void sub_248F5C550(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<631ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<631ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<631ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *std::vector<iovec>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      std::allocator<iovec>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<iovec>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t FileLocal::lock(FileLocal *this)
{
  v1 = *(this + 5);
  if ((*(v1 + 48) & 1) != 0 || ((*(*this + 48))(this) & 1) == 0 && FileDescriptor::is_mounted_on_smb(*(this + 5)))
  {
    return 0;
  }

  v4 = (*(*this + 48))(this);
  if (v4)
  {
    v5 = 6;
  }

  else
  {
    v5 = 5;
  }

  if (!flock(**(this + 7), v5))
  {
    *&v10 = "int FileLocal::lock()";
    *(&v10 + 1) = 19;
    v11 = 0;
    di_log::logger<di_log::log_printer<667ul>>::logger(v12, &v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "File (fd ", 9);
    MEMORY[0x24C1ED390](&v13, **(this + 7));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, ") is locked", 11);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<667ul>>::~logger_buf(v12);
    MEMORY[0x24C1ED6A0](v14);
    result = 0;
    *(v1 + 48) = 1;
    return result;
  }

  if (*__error() != 35)
  {
    *&v10 = "int FileLocal::lock()";
    *(&v10 + 1) = 19;
    v11 = 0;
    di_log::logger<di_log::log_printer<674ul>>::logger(v12, &v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "flock returned errno ", 21);
    v9 = __error();
    MEMORY[0x24C1ED390](&v13, *v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, ", keeping file unlocked", 23);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<674ul>>::~logger_buf(v12);
    MEMORY[0x24C1ED6A0](v14);
    return 0;
  }

  *&v10 = "int FileLocal::lock()";
  *(&v10 + 1) = 19;
  v11 = 16;
  di_log::logger<di_log::log_printer<671ul>>::logger(v12, &v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "Cannot acquire ", 15);
  if (v4)
  {
    v6 = "exclusive";
  }

  else
  {
    v6 = "shared";
  }

  if (v4)
  {
    v7 = 9;
  }

  else
  {
    v7 = 6;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, " lock, errno ", 13);
  v8 = __error();
  MEMORY[0x24C1ED390](&v13, *v8);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<671ul>>::~logger_buf(v12);
  MEMORY[0x24C1ED6A0](v14);
  return -*__error();
}

void sub_248F5C8F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<671ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<671ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<671ul>>::logger_buf(a1, a2);
  *a1 = &unk_285C00E18;
  a1[45] = &unk_285C00F18;
  a1[46] = &unk_285C00F40;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285C00E18;
  a1[45] = &unk_285C00EA0;
  a1[46] = &unk_285C00EC8;
  return a1;
}

void sub_248F5CA34(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<671ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<671ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<671ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t FileLocal::unlock_all(FileLocal *this)
{
  v1 = *(this + 5);
  if (*(v1 + 48) != 1)
  {
    return 0;
  }

  if (flock(**(this + 7), 8))
  {
    *&v5 = "int FileLocal::unlock_all()";
    *(&v5 + 1) = 25;
    v6 = 16;
    di_log::logger<di_log::log_printer<684ul>>::logger(v7, &v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "Failed unlocking file with fd ", 30);
    MEMORY[0x24C1ED390](&v8, **(this + 7));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, ", errno ", 8);
    v3 = __error();
    MEMORY[0x24C1ED390](&v8, *v3);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<684ul>>::~logger_buf(v7);
    MEMORY[0x24C1ED6A0](v9);
    return -*__error();
  }

  else
  {
    *&v5 = "int FileLocal::unlock_all()";
    *(&v5 + 1) = 25;
    v6 = 0;
    di_log::logger<di_log::log_printer<687ul>>::logger(v7, &v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "File (fd ", 9);
    MEMORY[0x24C1ED390](&v8, **(this + 7));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, ") is unlocked", 13);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<687ul>>::~logger_buf(v7);
    MEMORY[0x24C1ED6A0](v9);
    result = 0;
    *(v1 + 48) = 0;
  }

  return result;
}

void sub_248F5CC20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<687ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<684ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<684ul>>::logger_buf(a1, a2);
  *a1 = &unk_285C01038;
  a1[45] = &unk_285C01138;
  a1[46] = &unk_285C01160;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285C01038;
  a1[45] = &unk_285C010C0;
  a1[46] = &unk_285C010E8;
  return a1;
}

void sub_248F5CD48(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<684ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<684ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<684ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t FileLocal::remove_lock_ownership(FileLocal *this)
{
  v1 = *(this + 5);
  result = *(v1 + 48);
  *(v1 + 48) = 0;
  return result;
}

void FileLocal::run_futures(FileLocal *this, const void *a2)
{
  v127 = *MEMORY[0x277D85DE8];
  v2 = *(this + 9);
  v3 = *(this + 10);
  if (v3 == v2)
  {
    goto LABEL_165;
  }

  v4 = this;
  v5 = *(this + 12);
  v6 = &v2[v5 >> 5];
  v7 = *v6 + 128 * (v5 & 0x1F);
  if (v7 == *(v2 + (((*(this + 13) + v5) >> 2) & 0x3FFFFFFFFFFFFFF8)) + 128 * ((*(this + 13) + v5) & 0x1F))
  {
    goto LABEL_165;
  }

  v8 = *(this + 5);
  v87 = *(v8 + 49);
  v88 = *(v8 + 72);
  while (v3 == v2)
  {
    if (!v7)
    {
      goto LABEL_158;
    }

    v9 = 0;
LABEL_9:
    if (v9 == v7)
    {
      v13 = v6;
      v14 = v7;
    }

    else
    {
      v10 = (v7 - *v6) >> 7;
      if (v10 < 0)
      {
        v15 = 30 - v10;
        v11 = ~v15;
        v12 = &v6[-(v15 >> 5)];
      }

      else
      {
        v11 = v10 + 1;
        v12 = &v6[(v10 + 1) >> 5];
      }

      v16 = *v12 + 128 * (v11 & 0x1F);
      v14 = v7;
      v13 = v6;
      if (v16 != v9)
      {
        v13 = v6;
        v14 = v7;
        do
        {
          v17 = v16;
          v18 = v12;
          if (*(v14 + 112) != *(v16 + 112))
          {
            break;
          }

          a2 = *(v14 + 24);
          v19 = a2 + *(v14 + 16);
          if (v19 != *(v16 + 24))
          {
            break;
          }

          if (*(v14 + 104) == 1)
          {
            v20 = *(v14 + 48);
            if (*(v16 + 104))
            {
              if ((v20 != 0) == (*(v16 + 48) == 0))
              {
                break;
              }

              if (v20)
              {
                sg_per_io_crypto::clone_with_offset((v14 + 48), a2, v19, &v103);
                if (!sg_per_io_crypto::operator==(&v103, v17 + 48))
                {
                  break;
                }
              }
            }

            else if (v20)
            {
              break;
            }
          }

          else
          {
            v21 = *(v16 + 48);
            if (*(v17 + 104) == 1 && v21 != 0)
            {
              break;
            }
          }

          v16 = v17 + 128;
          v12 = v18;
          if (v17 + 128 - *v18 == 4096)
          {
            v12 = v18 + 1;
            v16 = v18[1];
          }

          v13 = v18;
          v14 = v17;
        }

        while (v16 != v9);
      }
    }

    v23 = (v14 - *v13) >> 7;
    if (v23 < 0)
    {
      v26 = 30 - v23;
      v93 = &v13[-(v26 >> 5)];
      v25 = *v93 + 128 * (~v26 & 0x1F);
    }

    else
    {
      v24 = v23 + 1;
      v93 = &v13[v24 >> 5];
      v25 = *v93 + 128 * (v24 & 0x1F);
    }

    if (v7[104] == 1 && *(v7 + 12))
    {
      (*(*v4 + 80))(&v100, v4);
      v27 = *(v7 + 28) == 0;
      v28 = *(v7 + 12);
      if (v28 == 3)
      {
        crypto::context::aes_xts_ans_kdf2::aes_xts_ans_kdf2(&v103, v27, v7 + 56, *(v7 + 22));
        crypto::context::aes_xts_ans_kdf2::aes_xts_ans_kdf2(v115);
        v116 = 2;
        crypto::context::aes_xts_ans_kdf2::~aes_xts_ans_kdf2(&v103);
      }

      else if (v28 == 2)
      {
        crypto::context::aes_xts::aes_xts(&v103, v27, v7 + 56, v7 + 72, *(v7 + 22));
        crypto::context::aes_xts::aes_xts(v115, &v103);
        v116 = 1;
        v103 = &unk_285BD82F8;
        std::unique_ptr<ccxts_ctx [],crypto::context::aes::cc_mode_deleter<ccxts_ctx,ccmode_xts>>::reset[abi:ne200100](&v106);
        v103 = &unk_285BD3848;
        if (*(&v104 + 1))
        {
          v105[0] = *(&v104 + 1);
          operator delete(*(&v104 + 1));
        }
      }

      else
      {
        crypto::context::aes_iv::aes_iv(v113, v7 + 72);
        crypto::context::aes_cbc::aes_cbc(&v103, v27, v7 + 56, v113, *(v7 + 22));
        crypto::context::aes_cbc::aes_cbc(v115, &v103);
        v116 = 0;
        v103 = &unk_285BD82D0;
        std::unique_ptr<cccbc_ctx [],crypto::context::aes::cc_mode_deleter<cccbc_ctx,ccmode_cbc>>::reset[abi:ne200100](&v107);
        v43 = v106;
        v106 = 0;
        if (v43)
        {
          MEMORY[0x24C1ED710](v43, 0x1000C8015230203);
        }

        v103 = &unk_285BD3848;
        if (*(&v104 + 1))
        {
          v105[0] = *(&v104 + 1);
          operator delete(*(&v104 + 1));
        }

        v44 = *&v113[0];
        *&v113[0] = 0;
        if (v44)
        {
          MEMORY[0x24C1ED710](v44, 0x1000C8015230203);
        }
      }

      v45 = *(v7 + 22);
      v46 = *(v7 + 12) - *(v7 + 3);
      v99[0] = v6;
      v99[1] = v7;
      v99[2] = v93;
      v99[3] = v25;
      v97 = v46;
      v98 = v99;
      std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<crypto::context::aes_cbc,crypto::context::aes_xts,crypto::context::aes_xts_ans_kdf2>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v113, v115);
      v114 = v45;
      v91 = v100;
      v47 = *v98;
      v48 = v98[1];
      *&v95 = &v97;
      *(&v95 + 1) = v47;
      v96 = v48;
      v49 = v98[3];
      v94 = v98[2];
      v50 = *(v7 + 28);
      v51 = *MEMORY[0x277D85FA0];
      crypto::details::buffer_aligner::backend_op_to_different_buffer_fn(v50, v120);
      v89 = v46;
      v92 = v50;
      if (v48 == v49)
      {
        v52 = 0;
        goto LABEL_99;
      }

      std::ranges::transform_view[abi:llvm18_nua]<std::ranges::ref_view<container_it<std::__deque_iterator<FileLocal::promise_io_t,FileLocal::promise_io_t*,FileLocal::promise_io_t&,FileLocal::promise_io_t**,long,32l>>>,FileLocal::run_futures(void)::$_0>::__iterator<false>::operator*[abi:ne200100](&v95, v125);
      sg_entry::sg_entry(&v117, v125);
      if (v126)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v126);
      }

      v101 = v95;
      v53 = v96;
      v102 = v96;
      if (v96 == v49)
      {
        v52 = 0;
LABEL_97:
        if (v118)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v118);
        }

LABEL_99:
        crypto::details::sg_allocator::sg_allocator(&v103, v52, *MEMORY[0x277D85FA0]);
        std::__function::__value_func<BOOL ()(sg_entry const&)>::~__value_func[abi:ne200100](v120);
        v108 = v113;
        v109 = v91;
        v110 = v92;
        v111 = -v89;
        if (v48 == v49)
        {
          v62 = 0;
        }

        else
        {
          v62 = 0;
          v63 = *v47;
          do
          {
            v48 += 16;
            if (v48 - v63 == 4096)
            {
              v64 = v47[1];
              ++v47;
              v63 = v64;
              v48 = v64;
            }

            ++v62;
          }

          while (v48 != v49);
        }

        v112 = v62;
        is_mul_ok(3 * v62, 0x18uLL);
        operator new[]();
      }

      v52 = 0;
      v54 = v119 / v51 * v51;
      v55 = *(&v101 + 1);
      while (2)
      {
        std::ranges::transform_view[abi:llvm18_nua]<std::ranges::ref_view<container_it<std::__deque_iterator<FileLocal::promise_io_t,FileLocal::promise_io_t*,FileLocal::promise_io_t&,FileLocal::promise_io_t**,long,32l>>>,FileLocal::run_futures(void)::$_0>::__iterator<false>::operator*[abi:ne200100](&v101, v125);
        sg_entry::sg_entry(&v122, v125);
        if (!v121)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        if ((*(*v121 + 48))(v121, &v122))
        {
          v56 = v123 + v124 - v54;
          if (v56 % v51)
          {
            v57 = v51 - v56 % v51;
          }

          else
          {
            v57 = 0;
          }

          v58 = v57 + v56;
          v52 += v58;
          v54 += v58;
        }

        else
        {
          v59 = v51;
          if (!(v124 % v45))
          {
            if (!(v123 % v45))
            {
              v54 = v123 + v124;
              goto LABEL_87;
            }

            v59 = 0;
          }

          v60 = v59 + v52;
          if ((v123 + v124) % v45)
          {
            v61 = v51;
          }

          else
          {
            v61 = 0;
          }

          v52 = v60 + v61;
          v54 = (v45 - 1 + v123 + v124) / v45 * v45;
        }

LABEL_87:
        if (*(&v122 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v122 + 1));
        }

        if (v126)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v126);
        }

        v53 += 16;
        v102 = v53;
        if ((v53 - *v55) == 4096)
        {
          *(&v101 + 1) = v55 + 1;
          v53 = v55[1];
          v102 = v53;
          ++v55;
        }

        if (v53 == v49)
        {
          goto LABEL_97;
        }

        continue;
      }
    }

    v103 = v105;
    v104 = xmmword_248F9D670;
    v115[0] = &v103;
    if (v7 == v25)
    {
      v33 = 0;
    }

    else
    {
      v29 = v7;
      v30 = v6;
      do
      {
        v31 = *(v29 + 2);
        *&v113[0] = *v29;
        *(&v113[0] + 1) = v31;
        std::back_insert_iterator<boost::container::small_vector<iovec,16ul,void,void>>::operator=[abi:ne200100](v115, v113);
        v29 += 128;
        if (v29 - *v30 == 4096)
        {
          v32 = v30[1];
          ++v30;
          v29 = v32;
        }
      }

      while (v29 != v25);
      v33 = v104 == 1;
    }

    v34 = *(v7 + 28);
    if (v34 == 1)
    {
      v37 = *(v7 + 3);
      v38 = **(v4 + 7);
      if (v33)
      {
        v39 = pwrite(v38, v103->iov_base, v103->iov_len, *(v7 + 3));
      }

      else
      {
        if (v7 == v25)
        {
          v42 = 0;
        }

        else
        {
          v42 = ((v25 - *v93) >> 7) + 4 * (v93 - v6) - ((v7 - *v6) >> 7);
        }

        v39 = pwritev(v38, v103, v42, *(v7 + 3));
      }

      v40 = v39;
      if (v39 >= 1)
      {
        v66 = v39 + v37;
        v67 = (*(v4 + 5) + 64);
        v68 = atomic_load(v67);
        if (v68 >= v39 + v37)
        {
          goto LABEL_136;
        }

        v69 = v68;
        do
        {
          atomic_compare_exchange_strong(v67, &v69, v66);
          if (v69 == v68)
          {
            break;
          }

          v68 = v69;
        }

        while (v69 < v66);
      }
    }

    else
    {
      if (v34)
      {
        v40 = 0;
        goto LABEL_136;
      }

      v35 = *(v7 + 3);
      if (v33)
      {
        v36 = (**v88)(v88, **(this + 7), v103->iov_base, v103->iov_len, *(v7 + 3));
      }

      else
      {
        if (v87)
        {
          if (v7 == v25)
          {
            v41 = 0;
          }

          else
          {
            v41 = 16 * (((v25 - *v93) >> 7) + 4 * (v93 - v6) - ((v7 - *v6) >> 7));
          }

          v70 = v103;
          v72 = *(this + 5);
          v71 = *(this + 6);
          if (v71)
          {
            atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v40 = 0;
          if (v41)
          {
            p_iov_len = &v70->iov_len;
            do
            {
              if ((v40 & 0x8000000000000000) == 0)
              {
                v74 = (***(v72 + 72))(*(v72 + 72), *(v72 + 8), *(p_iov_len - 1), *p_iov_len, v40 + v35);
                if (v74 == *p_iov_len)
                {
                  v40 += v74;
                }

                else if (v74 == -1)
                {
                  v40 = -1;
                }

                else
                {
                  v40 = -5;
                }
              }

              p_iov_len += 2;
              v41 -= 16;
            }

            while (v41);
          }

          if (v71)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v71);
          }

          v4 = this;
          goto LABEL_134;
        }

        if (v7 == v25)
        {
          v65 = 0;
        }

        else
        {
          v65 = ((v25 - *v93) >> 7) + 4 * (v93 - v6) - ((v7 - *v6) >> 7);
        }

        v36 = (*(*v88 + 8))(v88, **(this + 7), v103, v65, *(v7 + 3));
      }

      v40 = v36;
      v4 = this;
    }

LABEL_134:
    if (v40 == -1)
    {
      v40 = -*__error();
    }

    do
    {
LABEL_136:
      v75 = v40;
      if (v40 >= 1)
      {
        if (*(v7 + 2) >= v40)
        {
          v75 = v40;
        }

        else
        {
          v75 = *(v7 + 2);
        }
      }

      v76 = *(v7 + 15);
      *v76 = v75;
      *(v76 + 4) = 1;
      lw_promise<int>::notify_future(v7 + 15, a2);
      v7 += 128;
      if (v7 - *v6 == 4096)
      {
        v77 = v6[1];
        ++v6;
        v7 = v77;
      }

      v40 -= v75 & ~(v75 >> 63);
    }

    while (v6 < v13 || v6 == v13 && v7 <= v14);
    if (*(&v104 + 1) && v105 != v103)
    {
      operator delete(v103);
    }

    v5 = *(v4 + 12);
    v2 = *(v4 + 9);
    v3 = *(v4 + 10);
  }

  v9 = *(v2 + (((v5 + *(v4 + 13)) >> 2) & 0x3FFFFFFFFFFFFFF8)) + 128 * ((v5 + *(v4 + 13)) & 0x1F);
  if (v7 != v9)
  {
    goto LABEL_9;
  }

  v78 = &v2[v5 >> 5];
  v79 = *v78 + 128 * (v5 & 0x1F);
  if (v79 != v7)
  {
    do
    {
      v80 = *(v79 + 15);
      if (v80)
      {
        *(v80 + 16) = 0;
      }

      v81 = *(v79 + 1);
      if (v81)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v81);
      }

      v79 += 128;
      if (v79 - *v78 == 4096)
      {
        v82 = v78[1];
        ++v78;
        v79 = v82;
      }
    }

    while (v79 != v7);
    v2 = *(v4 + 9);
    v3 = *(v4 + 10);
  }

LABEL_158:
  *(v4 + 13) = 0;
  v83 = v3 - v2;
  if (v83 >= 3)
  {
    do
    {
      operator delete(*v2);
      v84 = *(v4 + 10);
      v2 = (*(v4 + 9) + 8);
      *(v4 + 9) = v2;
      v83 = (v84 - v2) >> 3;
    }

    while (v83 > 2);
  }

  if (v83 == 1)
  {
    v85 = 16;
LABEL_164:
    *(v4 + 12) = v85;
  }

  else if (v83 == 2)
  {
    v85 = 32;
    goto LABEL_164;
  }

LABEL_165:
  v86 = *MEMORY[0x277D85DE8];
}

void sub_248F5DD84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p)
{
  crypto::context::aes_xts_ans_kdf2::~aes_xts_ans_kdf2(&__p);
  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a36);
  }

  _Unwind_Resume(a1);
}

void crypto::crypt_op::crypt_consecutive_vector_with_futures<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::ref_view<container_it<std::__deque_iterator<FileLocal::promise_io_t,FileLocal::promise_io_t*,FileLocal::promise_io_t&,FileLocal::promise_io_t**,long,32l>>>,FileLocal::run_futures(void)::$_0>::__iterator<false>>::~crypt_consecutive_vector_with_futures(uint64_t a1, const void *a2)
{
  crypto::crypt_op::crypt_consecutive_vector::reset(a1, a2);
  (*(**(a1 + 224) + 152))(*(a1 + 224));
  crypto::details::unset_futures_errors_reporter<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::ref_view<container_it<std::__deque_iterator<FileLocal::promise_io_t,FileLocal::promise_io_t*,FileLocal::promise_io_t&,FileLocal::promise_io_t**,long,32l>>>,FileLocal::run_futures(void)::$_0>::__iterator<false>>::report_errors(a1 + 224, *(a1 + 304));

  crypto::crypt_op::crypt_consecutive_vector::~crypt_consecutive_vector(a1);
}

void PurgeableFileBackend::~PurgeableFileBackend(PurgeableFileBackend *this)
{
  *this = &unk_285BFDD98;
  *(this + 3) = &unk_285BFDE88;
  *(this + 4) = &unk_285BFDEC0;
  v12 = 66053;
  if (ffsctl(**(this + 7), 0xC0084A44uLL, &v12, 0))
  {
    *&v7 = "PurgeableFileBackend::~PurgeableFileBackend()";
    *(&v7 + 1) = 43;
    v8 = 0;
    di_log::logger<di_log::log_printer<844ul>>::logger(v9, &v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "mark purgeable failed on ", 25);
    operator<<(&v10, this);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, ", errno ", 8);
    v2 = __error();
    MEMORY[0x24C1ED390](&v10, *v2);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<844ul>>::~logger_buf(v9);
  }

  else
  {
    *&v7 = "PurgeableFileBackend::~PurgeableFileBackend()";
    *(&v7 + 1) = 43;
    v8 = 0;
    di_log::logger<di_log::log_printer<847ul>>::logger(v9, &v7);
    operator<<(&v10, this);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, " marked as purgeable", 20);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<847ul>>::~logger_buf(v9);
  }

  MEMORY[0x24C1ED6A0](v11);
  v3 = (*(*this + 192))(this);
  if (futimes(v3, 0))
  {
    *&v7 = "PurgeableFileBackend::~PurgeableFileBackend()";
    *(&v7 + 1) = 43;
    v8 = 16;
    di_log::logger<di_log::log_printer<851ul>>::logger(v9, &v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "futimes failed on ", 18);
    operator<<(&v10, this);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, ", errno ", 8);
    v4 = __error();
    MEMORY[0x24C1ED390](&v10, *v4);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<851ul>>::~logger_buf(v9);
    MEMORY[0x24C1ED6A0](v11);
  }

  *this = &unk_285BFDF58;
  *(this + 3) = &unk_285BFE048;
  *(this + 4) = &unk_285BFE080;
  std::deque<FileLocal::promise_io_t>::~deque[abi:ne200100](this + 8);
  v5 = *(this + 6);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }
}

{
  PurgeableFileBackend::~PurgeableFileBackend(this);

  JUMPOUT(0x24C1ED730);
}

void *di_log::logger<di_log::log_printer<844ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<844ul>>::logger_buf(a1, a2);
  *a1 = &unk_285C01258;
  a1[45] = &unk_285C01358;
  a1[46] = &unk_285C01380;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285C01258;
  a1[45] = &unk_285C012E0;
  a1[46] = &unk_285C01308;
  return a1;
}

void sub_248F5E47C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<844ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<844ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<844ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<847ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<847ul>>::logger_buf(a1, a2);
  *a1 = &unk_285C01478;
  a1[45] = &unk_285C01578;
  a1[46] = &unk_285C015A0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285C01478;
  a1[45] = &unk_285C01500;
  a1[46] = &unk_285C01528;
  return a1;
}