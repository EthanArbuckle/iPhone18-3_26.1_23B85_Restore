void di_log::logger<di_log::log_printer<371ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<371ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<371ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<371ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<371ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE5E38;
  di_log::logger_buf<di_log::log_printer<371ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<371ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<371ul>::log((a1 + 72), __p);
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

void sub_248E99914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<371ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<371ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<371ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 371;
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
      v22 = 371;
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

void non-virtual thunk todi_log::logger<di_log::log_printer<397ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<397ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<397ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<397ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<397ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<397ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<397ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<397ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<397ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<397ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<397ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE6058;
  di_log::logger_buf<di_log::log_printer<397ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<397ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<397ul>::log((a1 + 72), __p);
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

void sub_248E9A0AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<397ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<397ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<397ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 397;
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
      v22 = 397;
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

void non-virtual thunk todi_log::logger<di_log::log_printer<421ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<421ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<421ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<421ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<421ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<421ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<421ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<421ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<421ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<421ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<421ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE6278;
  di_log::logger_buf<di_log::log_printer<421ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<421ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<421ul>::log((a1 + 72), __p);
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

void sub_248E9A844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<421ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<421ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<421ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 421;
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
      v22 = 421;
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

void non-virtual thunk todi_log::logger<di_log::log_printer<432ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<432ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<432ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<432ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<432ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<432ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<432ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<432ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<432ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<432ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<432ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE6498;
  di_log::logger_buf<di_log::log_printer<432ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<432ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<432ul>::log((a1 + 72), __p);
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

void sub_248E9AFDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<432ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<432ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<432ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 432;
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
      v22 = 432;
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

void non-virtual thunk todi_log::logger<di_log::log_printer<439ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<439ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<439ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<439ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<439ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<439ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<439ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<439ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<439ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<439ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<439ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE66B8;
  di_log::logger_buf<di_log::log_printer<439ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<439ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<439ul>::log((a1 + 72), __p);
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

void sub_248E9B774(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<439ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<439ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<439ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 439;
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
      v22 = 439;
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

void non-virtual thunk todi_log::logger<di_log::log_printer<468ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<468ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<468ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<468ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<468ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<468ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<468ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<468ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<468ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<468ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<468ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE68D8;
  di_log::logger_buf<di_log::log_printer<468ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<468ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<468ul>::log((a1 + 72), __p);
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

void sub_248E9BF0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<468ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<468ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<468ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 468;
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
      v22 = 468;
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

void non-virtual thunk todi_log::logger<di_log::log_printer<474ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<474ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<474ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<474ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<474ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<474ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<474ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<474ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<474ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<474ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<474ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE6AF8;
  di_log::logger_buf<di_log::log_printer<474ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<474ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<474ul>::log((a1 + 72), __p);
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

void sub_248E9C6A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<474ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<474ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<474ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 474;
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
      v22 = 474;
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

void non-virtual thunk todi_log::logger<di_log::log_printer<522ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<522ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<522ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<522ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<522ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<522ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<522ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<522ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<522ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<522ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<522ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE6D18;
  di_log::logger_buf<di_log::log_printer<522ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<522ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<522ul>::log((a1 + 72), __p);
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

void sub_248E9CE3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<522ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<522ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<522ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 522;
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
      v22 = 522;
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

void non-virtual thunk todi_log::logger<di_log::log_printer<557ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<557ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<557ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<557ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<557ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<557ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<557ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<557ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<557ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<557ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<557ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE6F38;
  di_log::logger_buf<di_log::log_printer<557ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<557ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<557ul>::log((a1 + 72), __p);
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

void sub_248E9D5D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<557ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<557ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<557ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 557;
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
      v22 = 557;
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

std::exception *serializer_exception_trait<TraitExtractor<be_type>>::~serializer_exception_trait(std::exception *a1)
{
  v2 = a1 + 1;
  a1[1].__vftable = &unk_285BE70A8;
  v3 = a1[5].__vftable;
  a1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
  return a1;
}

uint64_t serializer_exception_base::serializer_exception_base(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = &unk_285BF4CC8;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *a1 = &unk_285BE70A8;
  (*(*a2 + 32))(a2);
  return a1;
}

void serializer_exception_trait<TraitExtractor<be_type>>::~serializer_exception_trait(std::exception *a1)
{
  v2 = a1 + 1;
  a1[1].__vftable = &unk_285BE70A8;
  v3 = a1[5].__vftable;
  a1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk toserializer_exception_trait<TraitExtractor<be_type>>::~serializer_exception_trait(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v2 = v1 + 1;
  v1[1].__vftable = &unk_285BE70A8;
  v3 = v1[5].__vftable;
  v1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
}

{
  v1 = (a1 + *(*a1 - 24));
  v1[1].__vftable = &unk_285BE70A8;
  v2 = v1[5].__vftable;
  v1[5].__vftable = 0;
  if (v2)
  {
    (*(v2->~exception + 1))(v2);
  }

  std::exception::~exception(v1 + 1);

  JUMPOUT(0x24C1ED730);
}

void serializer_exception_base::~serializer_exception_base(std::exception *this)
{
  this->__vftable = &unk_285BE70A8;
  v2 = this[4].__vftable;
  this[4].__vftable = 0;
  if (v2)
  {
    (*(v2->~exception + 1))(v2);
  }

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_285BE70A8;
  v2 = this[4].__vftable;
  this[4].__vftable = 0;
  if (v2)
  {
    (*(v2->~exception + 1))(v2);
  }

  std::exception::~exception(this);

  JUMPOUT(0x24C1ED730);
}

void vbuf::vbuf_exception::~vbuf_exception(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x24C1ED730);
}

uint64_t vbuf::vbuf_exception::reason@<X0>(const char **this@<X0>, std::string *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v12);
  v4 = strlen(this[1]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, this[1], v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, " - ", 3);
  v5 = this[2];
  v6 = strlen(v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, v5, v6);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v18, v12);
  v12[0] = *MEMORY[0x277D82818];
  v7 = v12[0];
  v8 = *(MEMORY[0x277D82818] + 72);
  v9 = *(MEMORY[0x277D82818] + 64);
  *(v12 + *(v12[0] - 24)) = v9;
  v10 = v8;
  v13 = v8;
  v14 = MEMORY[0x277D82878] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v15);
  std::iostream::~basic_iostream();
  MEMORY[0x24C1ED6A0](&v17);
  std::stringbuf::str[abi:ne200100](&v19, a2);
  v18[0] = v7;
  *(v18 + *(v7 - 24)) = v9;
  v18[2] = v10;
  v19 = MEMORY[0x277D82878] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return MEMORY[0x24C1ED6A0](&v22);
}

void *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](void *a1, void *a2)
{
  a1[22] = 0;
  a1[16] = MEMORY[0x277D828C0] + 16;
  v3 = MEMORY[0x277D82818];
  v4 = *(MEMORY[0x277D82818] + 24);
  v5 = *(MEMORY[0x277D82818] + 16);
  *a1 = v5;
  *(a1 + *(v5 - 24)) = v4;
  a1[1] = a2[1];
  a2[1] = 0;
  v6 = (a1 + *(*a1 - 24));
  v7 = (a2 + *(*a2 - 24));
  std::ios_base::move(v6, v7);
  v6[1].__vftable = v7[1].__vftable;
  v7[1].__vftable = 0;
  v6[1].__fmtflags_ = v7[1].__fmtflags_;
  v8 = v3[5];
  v9 = v3[4];
  a1[2] = v9;
  *(a1 + *(v9 - 24) + 16) = v8;
  v10 = v3[1];
  *a1 = v10;
  *(a1 + *(v10 - 24)) = v3[6];
  *a1 = MEMORY[0x277D82890] + 24;
  a1[16] = MEMORY[0x277D82890] + 104;
  a1[2] = MEMORY[0x277D82890] + 64;
  *(a1 + *(*a1 - 24) + 40) = std::stringbuf::basic_stringbuf();
  return a1;
}

void sub_248E9E2C0(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x24C1ED6A0](v1);
  _Unwind_Resume(a1);
}

void std::stringbuf::str[abi:ne200100](uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = std::stringbuf::view[abi:ne200100](a1);
  if (v5)
  {
    v6 = (a1 + 64);
    if (*(a1 + 87) < 0)
    {
      v6 = *v6;
    }

    v7 = v4 - v6;
  }

  else
  {
    v7 = 0;
  }

  *&a2->__r_.__value_.__l.__data_ = *(a1 + 64);
  a2->__r_.__value_.__r.__words[2] = *(a1 + 80);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  std::string::resize(a2, v7 + v5, 0);
  std::string::erase(a2, 0, v7);
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
}

void sub_248E9E378(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t di_log::logger_buf<di_log::log_printer<321ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BE5C18;
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

void sub_248E9E444(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<371ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BE5E38;
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

void sub_248E9E50C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<397ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BE6058;
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

void sub_248E9E5D4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<421ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BE6278;
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

void sub_248E9E69C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

const void **CFAutoRelease<__CFData const*>::~CFAutoRelease(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<432ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BE6498;
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

void sub_248E9E798(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<439ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BE66B8;
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

void sub_248E9E860(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

const void **CFAutoRelease<__SecKey *>::~CFAutoRelease(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<468ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BE68D8;
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

void sub_248E9E95C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<474ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BE6AF8;
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

void sub_248E9EA24(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<522ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BE6D18;
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

void sub_248E9EAEC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<557ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BE6F38;
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

void sub_248E9EBB4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

DiskImageInfo *info::DiskImageInfoLocked::DiskImageInfoLocked(DiskImageInfo *this, const crypto::header *a2)
{
  *(this + 3) = &unk_285BE2560;
  *(this + 4) = &unk_285BE2590;
  *(this + 5) = &unk_285BD9A98;
  *(this + 6) = &unk_285BD9AC8;
  *this = off_285BE7738;
  *(this + 1) = off_285BE7780;
  *(this + 2) = off_285BE77C8;
  *(this + unk_285BE7710) = off_285BE7810;
  *(this + *(*this - 48)) = off_285BE7858;
  *(this + *(*this - 56)) = off_285BE78A0;
  *(this + *(*this - 64)) = off_285BE78E8;
  *this = off_285BE7510;
  *(this + 1) = off_285BE7558;
  *(this + 2) = off_285BE75A0;
  *(this + unk_285BE74E8) = off_285BE75E8;
  *(this + *(*this - 48)) = off_285BE7630;
  *(this + *(*this - 56)) = off_285BE7678;
  *(this + *(*this - 64)) = off_285BE76C0;
  *(this + 72) = 0;
  *(this + 80) = 0;
  *(this + 11) = 0;
  *this = &unk_285BE7188;
  *(this + 1) = &unk_285BE71D0;
  *(this + 2) = &unk_285BE7218;
  *(this + 3) = &unk_285BE7260;
  *(this + 4) = &unk_285BE72A8;
  *(this + 5) = &unk_285BE72F0;
  *(this + 6) = &unk_285BE7338;
  *(this + 7) = &unk_285BE7398;
  *(this + 8) = 0;
  crypto::header::populate_crypto_header_info(a2, this);
  return this;
}

void info::DiskImageInfoLocked::~DiskImageInfoLocked(info::DiskImageInfoLocked *this)
{
  *(this + 7) = off_285BE7948;
  *(this + 3) = off_285BE79A0;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(this + 11);
}

{
  *(this + 7) = off_285BE7948;
  *(this + 3) = off_285BE79A0;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(this + 11);

  JUMPOUT(0x24C1ED730);
}

const void **info::DiskImageInfoLocked::serialize_to_dict@<X0>(info::DiskImageInfoLocked *this@<X0>, void *a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v4 = (*(*this + 24))(this);
  v11[0] = @"Image Format";
  v11[1] = v4;
  v11[2] = @"Format Description";
  v11[3] = @"Locked encrypted image";
  info::EncryptionInfo::serialize_to_dict((this + *(*this - 112)), &v10);
  v11[4] = @"Encryption Info";
  v11[5] = v10;
  v10 = 0;
  CFAutoRelease<__CFDictionary const*>::~CFAutoRelease(&v10);
  v8[0] = v11;
  v8[1] = 3;
  cf::create_dict_from_list(v8, &v9);
  *a2 = v9;
  v9 = 0;
  CFAutoRelease<__CFDictionary *>::~CFAutoRelease(&v9);
  for (i = 5; i != -1; i -= 2)
  {
    result = CFAutoRelease<void const*>::~CFAutoRelease(&v11[i]);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248E9F1F4(_Unwind_Exception *a1)
{
  v3 = (v1 + 40);
  v4 = -48;
  do
  {
    v3 = CFAutoRelease<void const*>::~CFAutoRelease(v3) - 2;
    v4 += 16;
  }

  while (v4);
  _Unwind_Resume(a1);
}

const void **virtual thunk toinfo::DiskImageInfoLocked::~DiskImageInfoLocked(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_285BE7948;
  *(v1 + 3) = off_285BE79A0;
  return CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 11);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_285BE7948;
  *(v1 + 3) = off_285BE79A0;
  return CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 11);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_285BE7948;
  *(v1 + 3) = off_285BE79A0;
  return CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 11);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_285BE7948;
  *(v1 + 3) = off_285BE79A0;
  return CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 11);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_285BE7948;
  *(v1 + 3) = off_285BE79A0;
  return CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 11);
}

{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 7) = off_285BE7948;
  *(v1 + 3) = off_285BE79A0;
  return CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 11);
}

void virtual thunk toinfo::DiskImageInfoLocked::~DiskImageInfoLocked(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_285BE7948;
  *(v1 + 3) = off_285BE79A0;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 11);

  JUMPOUT(0x24C1ED730);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_285BE7948;
  *(v1 + 3) = off_285BE79A0;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 11);

  JUMPOUT(0x24C1ED730);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_285BE7948;
  *(v1 + 3) = off_285BE79A0;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 11);

  JUMPOUT(0x24C1ED730);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_285BE7948;
  *(v1 + 3) = off_285BE79A0;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 11);

  JUMPOUT(0x24C1ED730);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_285BE7948;
  *(v1 + 3) = off_285BE79A0;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 11);

  JUMPOUT(0x24C1ED730);
}

{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 7) = off_285BE7948;
  *(v1 + 3) = off_285BE79A0;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 11);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk toinfo::DiskImageInfoLocked::~DiskImageInfoLocked(info::DiskImageInfoLocked *this)
{
  v1 = this + *(*this - 24);
  *(v1 + 7) = off_285BE7948;
  *(v1 + 3) = off_285BE79A0;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 11);
}

{
  v1 = this + *(*this - 24);
  *(v1 + 7) = off_285BE7948;
  *(v1 + 3) = off_285BE79A0;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 11);

  JUMPOUT(0x24C1ED730);
}

void DiskImageSparseBundle::DiskImageSparseBundle(DiskImageSparseBundle *a1, void *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *a1 = &unk_285BE7A98;
  sparse_bundles::bundle_commons_t::bundle_commons_t((a1 + 24), a1);
  *(a1 + 70) = *a2;
  v6 = a2[1];
  *(a1 + 71) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = 850045863;
  *(a1 + 79) = 0;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  v7 = std::string::basic_string[abi:ne200100]<0>(&__p, "com.apple.diskimages.band_unmap");
  logical_cpus = system_properties::get_logical_cpus(v7);
  workqueue::workqueue::workqueue(a1 + 640, &__p, logical_cpus);
  if (v12 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 44) = 0u;
  *(a1 + 45) = 0u;
  DiskImageSparseBundle::init_bands_array_size(a1);
  *(a1 + 8) = *(*(a1 + 70) + 152);
  *(a1 + 9) = a3;
  std::vector<sparse_bundles::band_ptr>::reserve(a1 + 89, *(a1 + 2));
  if (*(a1 + 2))
  {
    operator new();
  }

  *&v9 = "DiskImageSparseBundle::DiskImageSparseBundle(const shared_ptr<SparseBundleBackend> &, size_t)";
  *(&v9 + 1) = 44;
  v10 = 0;
  di_log::logger<di_log::log_printer<46ul>>::logger(&__p, &v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "Initialized bands array of size ", 32);
  MEMORY[0x24C1ED3C0](&v13, *(a1 + 2));
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<46ul>>::~logger_buf(&__p);
  MEMORY[0x24C1ED6A0](&v14);
  SparseBundleBackend::open_bands_folder(*(a1 + 70));
}

void sub_248E9FD18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  std::vector<sparse_bundles::band_ptr>::__destroy_vector::operator()[abi:ne200100](&__p);
  workqueue::workqueue::~workqueue((v17 + 640));
  std::mutex::~mutex((v17 + 576));
  v20 = *(v17 + 568);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  sparse_bundles::bundle_commons_t::~bundle_commons_t(v18);
  _Unwind_Resume(a1);
}

uint64_t DiskImageSparseBundle::init_bands_array_size(DiskImageSparseBundle *this)
{
  result = FileDescriptor::is_mounted_on_afp((*(this + 70) + 24));
  if (result)
  {
    *&v4 = "DiskImageSparseBundle::init_bands_array_size()";
    *(&v4 + 1) = 44;
    v5 = 0;
    di_log::logger<di_log::log_printer<59ul>>::logger(v6, &v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v7, "Mounted on AFP, max open bands is set to ", 41);
    MEMORY[0x24C1ED3C0](&v7, *(this + 2));
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<59ul>>::~logger_buf(v6);
    result = MEMORY[0x24C1ED6A0](&v8);
    v3 = 3;
  }

  else
  {
    v3 = 64;
  }

  *(this + 2) = v3;
  return result;
}

void sub_248E9FE6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<59ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *std::vector<sparse_bundles::band_ptr>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::allocator<sparse_bundles::band_ptr>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<iovec>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_248E9FF48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<sparse_bundles::band_ptr>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<46ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<46ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BE7BE0;
  a1[45] = &unk_285BE7CE0;
  a1[46] = &unk_285BE7D08;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BE7BE0;
  a1[45] = &unk_285BE7C68;
  a1[46] = &unk_285BE7C90;
  return a1;
}

void sub_248EA0060(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<46ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<46ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<46ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

BOOL FileDescriptor::is_mounted_on_afp(FileDescriptor *this)
{
  FileDescriptor::get_mounted_on_fs(v5, this);
  if (v6 < 0)
  {
    v2 = v5[1] == 5 && *v5[0] == 1718642273 && *(v5[0] + 4) == 115;
    operator delete(v5[0]);
  }

  else
  {
    return v6 == 5 && LODWORD(v5[0]) == 1718642273 && BYTE4(v5[0]) == 115;
  }

  return v2;
}

void *di_log::logger<di_log::log_printer<59ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<59ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BE7E00;
  a1[45] = &unk_285BE7F00;
  a1[46] = &unk_285BE7F28;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BE7E00;
  a1[45] = &unk_285BE7E88;
  a1[46] = &unk_285BE7EB0;
  return a1;
}

void sub_248EA0274(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<59ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<59ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<59ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t DiskImageSparseBundle::flush_open_bands(DiskImageSparseBundle *this)
{
  v12[18] = *MEMORY[0x277D85DE8];
  v11 = 0;
  workqueue::workqueue::create_transaction((this + 352), 0, v12);
  v2 = *(this + 89);
  v3 = *(this + 90);
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      sparse_bundles::band_ptr::band_ptr(v9, v2);
      if (v10 && (*(v10 + 68) & 1) != 0)
      {
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 1174405120;
        v7[2] = ___ZN21DiskImageSparseBundle16flush_open_bandsEv_block_invoke;
        v7[3] = &__block_descriptor_tmp_10;
        sparse_bundles::band_ptr::band_ptr(v8, v9);
        v8[3] = &v11;
        workqueue::transaction::add(v12, v7);
        ++v4;
        sparse_bundles::band_ptr::~band_ptr(v8);
      }

      sparse_bundles::band_ptr::~band_ptr(v9);
      v2 = (v2 + 24);
    }

    while (v2 != v3);
  }

  workqueue::transaction::~transaction(v12);
  result = atomic_load(&v11);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248EA0434(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZN21DiskImageSparseBundle16flush_open_bandsEv_block_invoke(uint64_t a1)
{
  if (DIDebugLogsEnabled())
  {
    *&v3 = "size_t> DiskImageSparseBundle::flush_open_bands()_block_invoke";
    *(&v3 + 1) = 47;
    v4 = 2;
    di_log::logger<di_log::log_printer<80ul>>::logger(v5, &v3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "Flushing ", 9);
    sparse_bundles::operator<<(&v6, *(a1 + 40));
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<80ul>>::~logger_buf(v5);
    MEMORY[0x24C1ED6A0](&v7);
  }

  result = sparse_bundles::Band::flush(*(a1 + 40));
  if (result)
  {
    atomic_store(result, *(a1 + 56));
  }

  return result;
}

void sub_248EA04FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<80ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<80ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<80ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BE8020;
  a1[45] = &unk_285BE8120;
  a1[46] = &unk_285BE8148;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BE8020;
  a1[45] = &unk_285BE80A8;
  a1[46] = &unk_285BE80D0;
  return a1;
}

void sub_248EA0614(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<80ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<80ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<80ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t DiskImageSparseBundle::flush(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (DIDebugLogsEnabled())
  {
    *&v9 = "int DiskImageSparseBundle::flush(DiskImage::Context &, di_flush_mode)";
    *(&v9 + 1) = 32;
    v10 = 2;
    di_log::logger<di_log::log_printer<101ul>>::logger(v11, &v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "Starting flush", 14);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<101ul>>::~logger_buf(v11);
    MEMORY[0x24C1ED6A0](v13);
  }

  std::mutex::lock((a1 + 576));
  sparse_bundles::eviction_t::start_flush(a1 + 80);
  v5 = DiskImageSparseBundle::flush_open_bands(a1);
  v7 = v6;
  sparse_bundles::eviction_t::complete_flush((a1 + 80));
  if (v5)
  {
    *&v9 = "int DiskImageSparseBundle::flush(DiskImage::Context &, di_flush_mode)";
    *(&v9 + 1) = 32;
    v10 = 16;
    di_log::logger<di_log::log_printer<107ul>>::logger(v11, &v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "Flush failed - returning ", 25);
    MEMORY[0x24C1ED390](&v12, v5);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<107ul>>::~logger_buf(v11);
    MEMORY[0x24C1ED6A0](v13);
  }

  else
  {
    if (DIDebugLogsEnabled())
    {
      *&v9 = "int DiskImageSparseBundle::flush(DiskImage::Context &, di_flush_mode)";
      *(&v9 + 1) = 32;
      v10 = 2;
      di_log::logger<di_log::log_printer<111ul>>::logger(v11, &v9);
      MEMORY[0x24C1ED3C0](&v12, v7);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, " bands flushed, calling ", 24);
      operator<<(&v12, a3);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<111ul>>::~logger_buf(v11);
      MEMORY[0x24C1ED6A0](v13);
    }

    v5 = (*(**(a1 + 560) + 16))(*(a1 + 560), a3);
  }

  std::mutex::unlock((a1 + 576));
  return v5;
}

void *di_log::logger<di_log::log_printer<107ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<107ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BE8240;
  a1[45] = &unk_285BE8340;
  a1[46] = &unk_285BE8368;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BE8240;
  a1[45] = &unk_285BE82C8;
  a1[46] = &unk_285BE82F0;
  return a1;
}

void sub_248EA09CC(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<107ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<107ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<107ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<111ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<111ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BE8460;
  a1[45] = &unk_285BE8560;
  a1[46] = &unk_285BE8588;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BE8460;
  a1[45] = &unk_285BE84E8;
  a1[46] = &unk_285BE8510;
  return a1;
}

void sub_248EA0B38(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<111ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<111ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<111ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void DiskImageSparseBundle::get_band(DiskImageSparseBundle *this@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  if ((*(*this + 40))(this))
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  if (a3)
  {
    v9 = v8 | 0x200;
  }

  else
  {
    v9 = v8;
  }

  while (1)
  {
    DiskImageSparseBundle::find_band_in_array(this, a2, v10);
    if (v10[1])
    {
      sparse_bundles::band_ptr::band_ptr(a4, v10);
      goto LABEL_11;
    }

    if (sparse_bundles::open_bands_t::insert((this + 208), a2))
    {
      break;
    }

    sparse_bundles::band_ptr::~band_ptr(v10);
  }

  DiskImageSparseBundle::open_band(this, a2, v9, a4);
LABEL_11:
  sparse_bundles::band_ptr::~band_ptr(v10);
}

std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep DiskImageSparseBundle::find_band_in_array@<X0>(DiskImageSparseBundle *this@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(this + 2);
  if (!v4)
  {
    goto LABEL_14;
  }

  v6 = 0;
  v7 = *(this + 89);
  while (*(v7 + 2) != a2)
  {
    ++v6;
    v7 = (v7 + 24);
    if (v4 == v6)
    {
      goto LABEL_14;
    }
  }

  sparse_bundles::band_ptr::band_ptr(a3, v7);
  v8 = a3[1];
  if (!v8 || *(v8 + 32) != a2)
  {
    if (DIDebugLogsEnabled())
    {
      *&v10 = "DiskImageSparseBundle::find_band_in_array(uint64_t)";
      *(&v10 + 1) = 41;
      v11 = 2;
      di_log::logger<di_log::log_printer<194ul>>::logger(v12, &v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "Band ", 5);
      *&v14[*(v13 - 24)] = *&v14[*(v13 - 24)] & 0xFFFFFFB5 | 8;
      MEMORY[0x24C1ED3E0](&v13, a2);
      *&v14[*(v13 - 24)] = *&v14[*(v13 - 24)] & 0xFFFFFFB5 | 2;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, " changed before retain completed", 32);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<194ul>>::~logger_buf(v12);
      MEMORY[0x24C1ED6A0](v14);
    }

    sparse_bundles::band_ptr::~band_ptr(a3);
LABEL_14:
    operator new();
  }

  if (DIDebugLogsEnabled())
  {
    *&v10 = "DiskImageSparseBundle::find_band_in_array(uint64_t)";
    *(&v10 + 1) = 41;
    v11 = 2;
    di_log::logger<di_log::log_printer<190ul>>::logger(v12, &v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "Found ", 6);
    sparse_bundles::operator<<(&v13, a3[1]);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, " at index ", 10);
    MEMORY[0x24C1ED3C0](&v13, v6);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<190ul>>::~logger_buf(v12);
    MEMORY[0x24C1ED6A0](v14);
  }

  result = std::chrono::steady_clock::now().__d_.__rep_;
  *(*a3 + 16) = result;
  return result;
}

void DiskImageSparseBundle::open_band(DiskImageSparseBundle *this@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  if (DIDebugLogsEnabled())
  {
    *&v11 = "DiskImageSparseBundle::open_band(uint64_t, int)";
    *(&v11 + 1) = 32;
    v12 = 2;
    di_log::logger<di_log::log_printer<154ul>>::logger(v13, &v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "Opening band ", 13);
    *&v15[*(v14 - 24)] = *&v15[*(v14 - 24)] & 0xFFFFFFB5 | 8;
    MEMORY[0x24C1ED3E0](&v14, a2);
    *&v15[*(v14 - 24)] = *&v15[*(v14 - 24)] & 0xFFFFFFB5 | 2;
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<154ul>>::~logger_buf(v13);
    MEMORY[0x24C1ED6A0](v15);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v9[2] = ___ZN21DiskImageSparseBundle9open_bandEyi_block_invoke;
  v9[3] = &unk_278F81130;
  v9[4] = &v16;
  v9[5] = this;
  v9[6] = a2;
  v10 = a3;
  sparse_bundles::bundle_commons_t::run_in_high_tier(this + 24, v9);
  DiskImageSparseBundle::replace_oldest_band(this, v17[3], a4);
  if (a4[1])
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      if (!v8 && DIDebugLogsEnabled())
      {
        *&v11 = "DiskImageSparseBundle::open_band(uint64_t, int)";
        *(&v11 + 1) = 32;
        v12 = 2;
        di_log::logger<di_log::log_printer<172ul>>::logger(v13, &v11);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "Failed to evict band to make room for ", 38);
        sparse_bundles::operator<<(&v14, v17[3]);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, ", retrying", 10);
        std::ostream::~ostream();
        di_log::logger_buf<di_log::log_printer<172ul>>::~logger_buf(v13);
        MEMORY[0x24C1ED6A0](v15);
      }

      usleep(0x3E8u);
      sparse_bundles::band_ptr::~band_ptr(a4);
      ++v8;
      DiskImageSparseBundle::replace_oldest_band(this, v17[3], a4);
    }

    while (!a4[1]);
  }

  if (DIDebugLogsEnabled())
  {
    *&v11 = "DiskImageSparseBundle::open_band(uint64_t, int)";
    *(&v11 + 1) = 32;
    v12 = 2;
    di_log::logger<di_log::log_printer<165ul>>::logger(v13, &v11);
    sparse_bundles::operator<<(&v14, a4[1]);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, " opened and replaced at attempt ", 32);
    MEMORY[0x24C1ED3C0](&v14, v8);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<165ul>>::~logger_buf(v13);
    MEMORY[0x24C1ED6A0](v15);
  }

  _Block_object_dispose(&v16, 8);
}

void sub_248EA1298(_Unwind_Exception *a1)
{
  sparse_bundles::band_ptr::~band_ptr(v1);
  _Block_object_dispose((v2 - 120), 8);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<154ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<154ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BE8680;
  a1[45] = &unk_285BE8780;
  a1[46] = &unk_285BE87A8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BE8680;
  a1[45] = &unk_285BE8708;
  a1[46] = &unk_285BE8730;
  return a1;
}

void sub_248EA1404(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<154ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<154ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<154ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void ___ZN21DiskImageSparseBundle9open_bandEyi_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 560) + 88;
  sparse_bundles::Band::new_band(*(a1 + 48), v1 + 24, *(a1 + 56));
}

void DiskImageSparseBundle::replace_oldest_band(DiskImageSparseBundle *this@<X0>, sparse_bundles::Band *a2@<X1>, sparse_bundles::band_ptr *a3@<X8>)
{
  v25[128] = *MEMORY[0x277D85DE8];
  v6 = v25;
  __p = v25;
  v24 = xmmword_248FA2330;
  if (*(this + 2))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = atomic_load(*(*(this + 89) + v7));
      if (v9 == 1)
      {
        *&v20[0] = *(*(*(this + 89) + v7) + 16);
        *(&v20[0] + 1) = v8;
        v10 = __p + 16 * v24;
        if (v24 == *(&v24 + 1))
        {
          boost::container::vector<std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long>,boost::container::small_vector_allocator<std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long>,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long>,boost::container::new_allocator<void>,void>,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long>*,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long>>>(&__p, v10, 1, v20, &v18);
        }

        else
        {
          *v10 = v20[0];
          *&v24 = v24 + 1;
        }
      }

      ++v8;
      v7 += 24;
    }

    while (v8 < *(this + 2));
    v6 = __p;
    v11 = (__p + 16 * v24);
    if (v24)
    {
      v12 = 126 - 2 * __clz(v24);
      goto LABEL_13;
    }
  }

  else
  {
    v11 = v25;
  }

  v12 = 0;
LABEL_13:
  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *,false>(v6, v11, v20, v12, 1);
  if (DIDebugLogsEnabled())
  {
    *&v18 = "DiskImageSparseBundle::replace_oldest_band(Band *)";
    *(&v18 + 1) = 42;
    v19 = 2;
    di_log::logger<di_log::log_printer<213ul>>::logger(v20, &v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "Looking for an evictable slot for ", 34);
    sparse_bundles::operator<<(&v21, a2);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<213ul>>::~logger_buf(v20);
    MEMORY[0x24C1ED6A0](v22);
  }

  if (!v24)
  {
LABEL_21:
    operator new();
  }

  v13 = (__p + 8);
  v14 = 16 * v24;
  while (1)
  {
    v16 = *v13;
    v13 += 2;
    v15 = v16;
    sparse_bundles::band_ptr::replace_if_evictable((*(this + 89) + 24 * v16), a2, a3);
    if (*(a3 + 1))
    {
      break;
    }

    if (DIDebugLogsEnabled())
    {
      *&v18 = "DiskImageSparseBundle::replace_oldest_band(Band *)";
      *(&v18 + 1) = 42;
      v19 = 2;
      di_log::logger<di_log::log_printer<222ul>>::logger(v20, &v18);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "Failed placing new ", 19);
      sparse_bundles::operator<<(&v21, a2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, " at index ", 10);
      MEMORY[0x24C1ED3C0](&v21, v15);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<222ul>>::~logger_buf(v20);
      MEMORY[0x24C1ED6A0](v22);
    }

    sparse_bundles::band_ptr::~band_ptr(a3);
    v14 -= 16;
    if (!v14)
    {
      goto LABEL_21;
    }
  }

  if (DIDebugLogsEnabled())
  {
    *&v18 = "DiskImageSparseBundle::replace_oldest_band(Band *)";
    *(&v18 + 1) = 42;
    v19 = 2;
    di_log::logger<di_log::log_printer<218ul>>::logger(v20, &v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "Placed new ", 11);
    sparse_bundles::operator<<(&v21, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, " at index ", 10);
    MEMORY[0x24C1ED3C0](&v21, v15);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<218ul>>::~logger_buf(v20);
    MEMORY[0x24C1ED6A0](v22);
  }

  sparse_bundles::open_bands_t::mark_as_placed((this + 208), *(a2 + 4), 1);
  if (*(&v24 + 1) && v25 != __p)
  {
    operator delete(__p);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_248EA1860(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<165ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<165ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BE88A0;
  a1[45] = &unk_285BE89A0;
  a1[46] = &unk_285BE89C8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BE88A0;
  a1[45] = &unk_285BE8928;
  a1[46] = &unk_285BE8950;
  return a1;
}

void sub_248EA197C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<165ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<165ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<165ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<190ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<190ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BE8AC0;
  a1[45] = &unk_285BE8BC0;
  a1[46] = &unk_285BE8BE8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BE8AC0;
  a1[45] = &unk_285BE8B48;
  a1[46] = &unk_285BE8B70;
  return a1;
}

void sub_248EA1AE8(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<190ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<190ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<190ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<194ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<194ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BE8CE0;
  a1[45] = &unk_285BE8DE0;
  a1[46] = &unk_285BE8E08;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BE8CE0;
  a1[45] = &unk_285BE8D68;
  a1[46] = &unk_285BE8D90;
  return a1;
}

void sub_248EA1C54(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<194ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<194ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<194ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<213ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<213ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BE8F00;
  a1[45] = &unk_285BE9000;
  a1[46] = &unk_285BE9028;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BE8F00;
  a1[45] = &unk_285BE8F88;
  a1[46] = &unk_285BE8FB0;
  return a1;
}

void sub_248EA1DC0(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<213ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<213ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<213ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<218ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<218ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BE9120;
  a1[45] = &unk_285BE9220;
  a1[46] = &unk_285BE9248;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BE9120;
  a1[45] = &unk_285BE91A8;
  a1[46] = &unk_285BE91D0;
  return a1;
}

void sub_248EA1F2C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<218ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<218ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<218ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<222ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<222ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BE9340;
  a1[45] = &unk_285BE9440;
  a1[46] = &unk_285BE9468;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BE9340;
  a1[45] = &unk_285BE93C8;
  a1[46] = &unk_285BE93F0;
  return a1;
}

void sub_248EA2098(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<222ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<222ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<222ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void DiskImageSparseBundle::~DiskImageSparseBundle(DiskImageSparseBundle *this)
{
  *this = &unk_285BE7A98;
  *&v7 = "DiskImageSparseBundle::~DiskImageSparseBundle()";
  *(&v7 + 1) = 45;
  v8 = 0;
  di_log::logger<di_log::log_printer<231ul>>::logger(v9, &v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "Closing bands", 13);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<231ul>>::~logger_buf(v9);
  MEMORY[0x24C1ED6A0](&v11);
  v2 = *(this + 2);
  if (v2)
  {
    v3 = 0;
    v4 = 8;
    do
    {
      if (*(*(this + 89) + v4))
      {
        v6[0] = MEMORY[0x277D85DD0];
        v6[1] = 0x40000000;
        v6[2] = ___ZN21DiskImageSparseBundleD2Ev_block_invoke;
        v6[3] = &__block_descriptor_tmp_32;
        v6[4] = this;
        v6[5] = v3;
        workqueue::transaction::add(this + 52, v6);
        v2 = *(this + 2);
      }

      ++v3;
      v4 += 24;
    }

    while (v3 < v2);
  }

  workqueue::transaction::flush(this + 52, 0xFFFFFFFFFFFFFFFFLL);
  v9[0] = (this + 712);
  std::vector<sparse_bundles::band_ptr>::__destroy_vector::operator()[abi:ne200100](v9);
  v9[0] = (this + 664);
  std::vector<gcd::gcd_queue>::__destroy_vector::operator()[abi:ne200100](v9);
  if (*(this + 663) < 0)
  {
    operator delete(*(this + 80));
  }

  std::mutex::~mutex(this + 9);
  v5 = *(this + 71);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  sparse_bundles::bundle_commons_t::~bundle_commons_t((this + 24));
}

{
  DiskImageSparseBundle::~DiskImageSparseBundle(this);

  JUMPOUT(0x24C1ED730);
}

void *di_log::logger<di_log::log_printer<231ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<231ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BE9560;
  a1[45] = &unk_285BE9660;
  a1[46] = &unk_285BE9688;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BE9560;
  a1[45] = &unk_285BE95E8;
  a1[46] = &unk_285BE9610;
  return a1;
}

void sub_248EA23AC(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<231ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<231ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<231ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void ___ZN21DiskImageSparseBundleD2Ev_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (DIDebugLogsEnabled())
  {
    *&v3 = "DiskImageSparseBundle::~DiskImageSparseBundle()_block_invoke";
    *(&v3 + 1) = 45;
    v4 = 2;
    di_log::logger<di_log::log_printer<235ul>>::logger(&v5, &v3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "Background close of band at index ", 34);
    MEMORY[0x24C1ED3C0](&v6, *(a1 + 40));
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<235ul>>::~logger_buf(&v5);
    MEMORY[0x24C1ED6A0](&v7);
  }

  operator new();
}

void sub_248EA2588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<237ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<235ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<235ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BE9780;
  a1[45] = &unk_285BE9880;
  a1[46] = &unk_285BE98A8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BE9780;
  a1[45] = &unk_285BE9808;
  a1[46] = &unk_285BE9830;
  return a1;
}

void sub_248EA26C0(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<235ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<235ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<235ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<237ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<237ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BE99A0;
  a1[45] = &unk_285BE9AA0;
  a1[46] = &unk_285BE9AC8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BE99A0;
  a1[45] = &unk_285BE9A28;
  a1[46] = &unk_285BE9A50;
  return a1;
}

void sub_248EA282C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<237ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<237ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<237ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

size_t DiskImageSparseBundle::perform_io(DiskImageSparseBundle *a1, uint64_t a2, int a3, void *a4)
{
  v7 = 0;
  v39 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 8);
  v10 = a4[2];
  v9 = a4[3];
  v11 = v9 / v8;
  v23 = v8;
  v12 = v9 % v8;
  while (v10)
  {
    if (v10 >= v23 - v12)
    {
      v13 = v23 - v12;
    }

    else
    {
      v13 = v10;
    }

    sg_entry::sg_entry<sg_entry const&,void>(&v33, a4, v13, v7, v12, a4[4] - v7);
    DiskImageSparseBundle::get_band(a1, v11, a3, &v31);
    v14 = v32;
    if (v32)
    {
      v15 = *(v31 + 24);
      if (!*(*(a2 + 16) + 16 * v15))
      {
        goto LABEL_10;
      }

      if (sparse_bundles::Band::ContextBand::has_null_backend(*(*(a2 + 16) + 16 * v15)))
      {
        v14 = v32;
LABEL_10:
        sparse_bundles::Band::create_ctx(v14, v35);
      }

      sg_vec_ns::make(&v33, v35);
      v16 = *(*(a2 + 16) + 16 * v15);
      sg_vec_ref::begin(v36, &v28);
      sg_vec_ref::end(v36, v25);
      if (a3)
      {
        v17 = DiskImage::Context::write(v16, &v28, v25);
      }

      else
      {
        v17 = DiskImage::Context::read(v16, &v28, v25);
      }

      v4 = v17;
      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }

      if (*(&v28 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v28 + 1));
      }

      sg_vec::~sg_vec(v35);
      if (v4 != v13)
      {
        v18 = 0;
        goto LABEL_29;
      }

      v4 = v13;
    }

    else
    {
      if (DIDebugLogsEnabled())
      {
        *&v28 = "DiskImageSparseBundle::perform_io(ContextSparseBundle &, BOOL, const sg_entry &)";
        *(&v28 + 1) = 33;
        v29 = 2;
        di_log::logger<di_log::log_printer<284ul>>::logger(v35, &v28);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, "Band ", 5);
        *&v38[*(v37 - 24)] = *&v38[*(v37 - 24)] & 0xFFFFFFB5 | 8;
        MEMORY[0x24C1ED3E0](&v37, v11);
        *&v38[*(v37 - 24)] = *&v38[*(v37 - 24)] & 0xFFFFFFB5 | 2;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, " doesn't exist, returning zeros", 31);
        std::ostream::~ostream();
        di_log::logger_buf<di_log::log_printer<284ul>>::~logger_buf(v35);
        MEMORY[0x24C1ED6A0](v38);
      }

      bzero((*a4 + v7), v13);
    }

    v12 = 0;
    v10 -= v13;
    v7 += v13;
    ++v11;
    v18 = 1;
LABEL_29:
    sparse_bundles::band_ptr::~band_ptr(&v31);
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }

    if ((v18 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  v4 = a4[2];
  v21 = a4[3];
LABEL_34:
  v19 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_248EA2C20(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, __int128 a43, int a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a2)
  {
    sparse_bundles::band_ptr::~band_ptr(&a70);
    if (STACK[0x208])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x208]);
    }

    if (a2 == 2)
    {
      v73 = __cxa_begin_catch(a1);
      *&a43 = "DiskImageSparseBundle::perform_io(ContextSparseBundle &, BOOL, const sg_entry &)";
      *(&a43 + 1) = 33;
      a44 = 16;
      di_log::logger<di_log::log_printer<295ul>>::logger(&STACK[0x270], &a43);
      if (a14)
      {
        v74 = "Write error: ";
      }

      else
      {
        v74 = "Read error: ";
      }

      if (a14)
      {
        v75 = 13;
      }

      else
      {
        v75 = 12;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&STACK[0x3D8], v74, v75);
      v76 = (*(*v73 + 16))(v73);
      v77 = strlen(v76);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&STACK[0x3D8], v76, v77);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&STACK[0x3D8], " (band ", 7);
      *(&STACK[0x3D8] + *(STACK[0x3D8] - 24) + 8) = *(&STACK[0x3D8] + *(STACK[0x3D8] - 24) + 8) & 0xFFFFFFB5 | 8;
      MEMORY[0x24C1ED3E0](&STACK[0x3D8], v70);
      *(&STACK[0x3D8] + *(STACK[0x3D8] - 24) + 8) = *(&STACK[0x3D8] + *(STACK[0x3D8] - 24) + 8) & 0xFFFFFFB5 | 2;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&STACK[0x3D8], ", err ", 6);
      MEMORY[0x24C1ED390](&STACK[0x3D8], v73[2]);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&STACK[0x3D8], ")", 1);
      di_log::logger<di_log::log_printer<295ul>>::~logger(&STACK[0x270]);
      v73[2];
      __cxa_end_catch();
      JUMPOUT(0x248EA2BDCLL);
    }

    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_248EA2E9C(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x248EA2CF4);
  }

  JUMPOUT(0x248EA2E8CLL);
}

uint64_t sparse_bundles::Band::ContextBand::has_null_backend(sparse_bundles::Band::ContextBand *this)
{
  v2 = *(this + 2);
  if (!v2)
  {
    return 0;
  }

  v3 = **v2;
  {
    return 0;
  }

  v4 = *(this + 3);
  v5 = 1;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v5;
}

void *di_log::logger<di_log::log_printer<284ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<284ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BE9BC0;
  a1[45] = &unk_285BE9CC0;
  a1[46] = &unk_285BE9CE8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BE9BC0;
  a1[45] = &unk_285BE9C48;
  a1[46] = &unk_285BE9C70;
  return a1;
}

void sub_248EA3048(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<284ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<284ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<284ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<295ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<295ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BE9DE0;
  a1[45] = &unk_285BE9EE0;
  a1[46] = &unk_285BE9F08;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BE9DE0;
  a1[45] = &unk_285BE9E68;
  a1[46] = &unk_285BE9E90;
  return a1;
}

void sub_248EA31B4(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<295ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<295ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<295ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t DiskImageSparseBundle::void_stackable_identifier(DiskImageSparseBundle *this)
{
  v5 = 0;
  v2 = (this + 704);
  v4[0] = this;
  v4[1] = &v5;
  if (atomic_load_explicit(v2, memory_order_acquire) != -1)
  {
    v7 = v4;
    v6 = &v7;
    std::__call_once(v2, &v6, std::__call_once_proxy[abi:ne200100]<std::tuple<DiskImageSparseBundle::void_stackable_identifier(void)::$_0 &&>>);
  }

  return v5;
}

size_t DiskImageSparseBundle::write(DiskImageSparseBundle *a1, uint64_t a2, void *a3)
{
  v6 = DiskImageSparseBundle::void_stackable_identifier(a1);
  if (v6)
  {
    if (v6 >= 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = -v6;
    }

    return -v7;
  }

  else
  {
    v9 = DiskImageSparseBundle::perform_io(a1, a2, 1, a3);
    v8 = v9;
    if ((v9 & 0x8000000000000000) != 0 && v9)
    {
      v10 = *(a2 + 8);
      *&v13 = "DiskImage::terminate()";
      *(&v13 + 1) = 20;
      v14 = 16;
      di_log::logger<di_log::log_printer<246ul>>::logger(v15, &v13);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "Encountered an inrecoverable I/O error, all future I/Os will be invalidated", 75);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<246ul>>::~logger_buf(v15);
      MEMORY[0x24C1ED6A0](&v17);
      atomic_store(1u, v10 + 8);
      v11 = (*(*v10 + 200))(v10);
      process_terminator::terminate(v11);
    }
  }

  return v8;
}

void sub_248EA33A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<246ul>>::~logger(va);
  _Unwind_Resume(a1);
}

unint64_t DiskImageSparseBundle::get_num_blocks(DiskImageSparseBundle *this)
{
  v2 = (*(**(this + 70) + 40))(*(this + 70));
  if (v2 % (*(*this + 24))(this))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, "Size is not a multiple of block size", 0x16u);
  }

  return v2 / (*(*this + 24))(this);
}

uint64_t DiskImageSparseBundle::try_unmap_band_extents_with_index(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sparse_bundles::band_ptr::band_ptr(v10, (*(a1 + 712) + 24 * a2));
  v8 = v11 != 0;
  if (v11 && sparse_bundles::Band::unmap_extents(v11, a4))
  {
    sparse_bundles::band_ptr::~band_ptr(v10);
    return sparse_bundles::band_ptr::erase_if_unmapped((*(a1 + 712) + 24 * a2), a3);
  }

  else
  {
    sparse_bundles::band_ptr::~band_ptr(v10);
  }

  return v8;
}

void sub_248EA353C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sparse_bundles::band_ptr::~band_ptr(va);
  _Unwind_Resume(a1);
}

uint64_t DiskImageSparseBundle::try_unmap_band_extents_without_list(void *a1, sparse_bundles *a2, void *a3)
{
  v6 = sparse_bundles::open_bands_t::insert((a1 + 26), a2);
  if (v6)
  {
    if (boost::icl::cardinality<boost::icl::interval_set<unsigned long long,std::less,boost::icl::discrete_interval<unsigned long long,std::less>,std::allocator>>(a3) != a1[8])
    {
      if (DIDebugLogsEnabled())
      {
        *&v8 = "DiskImageSparseBundle::try_unmap_band_extents_without_list(uint64_t, const extents_set_t &)";
        *(&v8 + 1) = 58;
        v9 = 2;
        di_log::logger<di_log::log_printer<390ul>>::logger(&v10, &v8);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "Unmapping band ", 15);
        *&v12[*(v11 - 24)] = *&v12[*(v11 - 24)] & 0xFFFFFFB5 | 8;
        MEMORY[0x24C1ED3E0](&v11, a2);
        *&v12[*(v11 - 24)] = *&v12[*(v11 - 24)] & 0xFFFFFFB5 | 2;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, " directly (without list)", 24);
        std::ostream::~ostream();
        di_log::logger_buf<di_log::log_printer<390ul>>::~logger_buf(&v10);
        MEMORY[0x24C1ED6A0](v12);
      }

      sparse_bundles::mapped_blocks_t::mapped_blocks_t(&v10, (a1 + 3), a2);
    }

    if (DIDebugLogsEnabled())
    {
      *&v8 = "DiskImageSparseBundle::try_unmap_band_extents_without_list(uint64_t, const extents_set_t &)";
      *(&v8 + 1) = 58;
      v9 = 2;
      di_log::logger<di_log::log_printer<387ul>>::logger(&v10, &v8);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "Unmapping band ", 15);
      *&v12[*(v11 - 24)] = *&v12[*(v11 - 24)] & 0xFFFFFFB5 | 8;
      MEMORY[0x24C1ED3E0](&v11, a2);
      *&v12[*(v11 - 24)] = *&v12[*(v11 - 24)] & 0xFFFFFFB5 | 2;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, " completely", 11);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<387ul>>::~logger_buf(&v10);
      MEMORY[0x24C1ED6A0](v12);
    }

    sparse_bundles::Band::erase((a1 + 3), a2);
    sparse_bundles::open_bands_t::remove((a1 + 26), a2);
  }

  return v6;
}

void sub_248EA38A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a2 == 1)
  {
    v14 = __cxa_begin_catch(exception_object);
    sparse_bundles::open_bands_t::remove((v13 + 208), v12);
    exception = __cxa_allocate_exception(0x40uLL);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, v14);
  }

  _Unwind_Resume(exception_object);
}

void *di_log::logger<di_log::log_printer<387ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<387ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEA220;
  a1[45] = &unk_285BEA320;
  a1[46] = &unk_285BEA348;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEA220;
  a1[45] = &unk_285BEA2A8;
  a1[46] = &unk_285BEA2D0;
  return a1;
}

void sub_248EA3A74(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<387ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<387ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<387ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<390ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<390ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEA440;
  a1[45] = &unk_285BEA540;
  a1[46] = &unk_285BEA568;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEA440;
  a1[45] = &unk_285BEA4C8;
  a1[46] = &unk_285BEA4F0;
  return a1;
}

void sub_248EA3BE0(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<390ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<390ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<390ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t DiskImageSparseBundle::unmap_band_extents(void *a1, sparse_bundles *a2, void *a3)
{
  do
  {
    while (1)
    {
      v6 = a1[2];
      if (!v6)
      {
        break;
      }

      v7 = 0;
      v8 = (a1[89] + 16);
      while (1)
      {
        v9 = *v8;
        v8 += 3;
        if (v9 == a2)
        {
          break;
        }

        if (v6 == ++v7)
        {
          goto LABEL_9;
        }
      }

      if (v7 < 0)
      {
        break;
      }

      result = DiskImageSparseBundle::try_unmap_band_extents_with_index(a1, v7, a2, a3);
      if (result)
      {
        return result;
      }

      usleep(0x3E8u);
    }

LABEL_9:
    result = DiskImageSparseBundle::try_unmap_band_extents_without_list(a1, a2, a3);
  }

  while (!result);
  return result;
}

uint64_t DiskImageSparseBundle::unmap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = *MEMORY[0x277D85DE8];
  if (DIDebugLogsEnabled())
  {
    *&v51 = "int DiskImageSparseBundle::unmap(DiskImage::Context &, const unmap_extent_t *, size_t)";
    *(&v51 + 1) = 32;
    v52 = 2;
    di_log::logger<di_log::log_printer<434ul>>::logger(&v43, &v51);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v49, "Starting unmap of ", 18);
    MEMORY[0x24C1ED3C0](&v49, a4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v49, " extents", 8);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<434ul>>::~logger_buf(&v43);
    MEMORY[0x24C1ED6A0](v50);
  }

  v6 = *(a1 + 64);
  v42 = 0;
  v41[0] = 0;
  v41[1] = 0;
  v40 = v41;
  if (*(a1 + 344))
  {
    v7 = DiskImageSparseBundle::void_stackable_identifier(a1);
    if (!v7)
    {
      workqueue::workqueue::create_transaction((a1 + 640), 0, &v51);
      if (a4)
      {
        v8 = 0;
        v9 = 0;
        v33 = a3;
        do
        {
          v10 = v8;
          v11 = *(a3 + 16 * v8);
          v12 = (*(*a1 + 24))(a1);
          v35 = v10;
          v13 = *(a3 + 16 * v10 + 8);
          v36 = v12 * v11;
          v14 = (*(*a1 + 24))(a1) * v13;
          if (DIDebugLogsEnabled())
          {
            *&v38 = "int DiskImageSparseBundle::unmap(DiskImage::Context &, const unmap_extent_t *, size_t)";
            *(&v38 + 1) = 32;
            v39 = 2;
            di_log::logger<di_log::log_printer<460ul>>::logger(&v43, &v38);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v49, "Extent ", 7);
            MEMORY[0x24C1ED3C0](&v49, v35);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v49, ": [", 3);
            v15 = v49;
            *&v50[*(v49 - 24)] |= 0x200u;
            *&v50[*(v15 - 24)] = *&v50[*(v15 - 24)] & 0xFFFFFFB5 | 8;
            MEMORY[0x24C1ED3E0](&v49, v36);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v49, "-", 1);
            MEMORY[0x24C1ED3E0](&v49, v36 + v14 - 1);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v49, "]", 1);
            v16 = v49;
            *&v50[*(v49 - 24)] &= ~0x200u;
            *&v50[*(v16 - 24)] = *&v50[*(v16 - 24)] & 0xFFFFFFB5 | 2;
            std::ostream::~ostream();
            di_log::logger_buf<di_log::log_printer<460ul>>::~logger_buf(&v43);
            MEMORY[0x24C1ED6A0](v50);
          }

          if (v14)
          {
            v17 = v36 / v6;
            v18 = v36 % v6;
            do
            {
              if (v9 != v17 && v40 != v41)
              {
                v43 = 0;
                v44 = &v43;
                v45 = 0x4002000000;
                v46 = __Block_byref_object_copy__5;
                v47 = __Block_byref_object_dispose__5;
                std::set<boost::icl::discrete_interval<unsigned long long,std::less>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,std::allocator<boost::icl::discrete_interval<unsigned long long,std::less>>>::set[abi:ne200100](v48, &v40);
                v37[0] = MEMORY[0x277D85DD0];
                v37[1] = 0x40000000;
                v37[2] = ___ZN21DiskImageSparseBundle5unmapERN9DiskImage7ContextEPK14unmap_extent_tm_block_invoke;
                v37[3] = &unk_278F81178;
                v37[4] = &v43;
                v37[5] = a1;
                v37[6] = v9;
                v37[7] = &v42;
                workqueue::transaction::add(&v51, v37);
                std::__tree<boost::icl::discrete_interval<unsigned long long,std::less>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,std::allocator<boost::icl::discrete_interval<unsigned long long,std::less>>>::erase(&v40, v40, v41);
                _Block_object_dispose(&v43, 8);
                std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>>>::destroy(v48, v48[1]);
              }

              if (v14 >= v6 - v18)
              {
                v19 = v6 - v18;
              }

              else
              {
                v19 = v14;
              }

              if (lock_free::bitmap_t::get_bit(*(a1 + 344), v17))
              {
                v43 = v18;
                v44 = (v19 + v18);
                LOBYTE(v45) = 2;
                if (v18 < v19 + v18)
                {
                  v20 = std::__tree<boost::icl::discrete_interval<unsigned long long,std::less>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,std::allocator<boost::icl::discrete_interval<unsigned long long,std::less>>>::__emplace_unique_key_args<boost::icl::discrete_interval<unsigned long long,std::less>,boost::icl::discrete_interval<unsigned long long,std::less> const&>(&v40, &v43);
                  if (v21)
                  {
                    *&v38 = v20;
                    boost::icl::segmental::join_left<boost::icl::interval_set<unsigned long long,std::less,boost::icl::discrete_interval<unsigned long long,std::less>,std::allocator>>(&v40, &v38);
                    boost::icl::segmental::join_right<boost::icl::interval_set<unsigned long long,std::less,boost::icl::discrete_interval<unsigned long long,std::less>,std::allocator>>(&v40, &v38);
                  }

                  else
                  {
                    v22 = v41[0];
                    v23 = v41;
                    if (!v41[0])
                    {
                      goto LABEL_47;
                    }

                    v24 = v44 + (v45 & 1) - 1;
                    v23 = v41;
                    do
                    {
                      v25 = v22[4];
                      if ((v22[6] & 2) == 0)
                      {
                        ++v25;
                      }

                      v26 = v24 >= v25;
                      v27 = v24 >= v25;
                      if (!v26)
                      {
                        v23 = v22;
                      }

                      v22 = v22[v27];
                    }

                    while (v22);
                    v28 = *v23;
                    if (*v23)
                    {
                      do
                      {
                        v29 = v28;
                        v28 = v28[1];
                      }

                      while (v28);
                    }

                    else
                    {
LABEL_47:
                      do
                      {
                        v29 = v23[2];
                        v30 = *v29 == v23;
                        v23 = v29;
                      }

                      while (v30);
                    }

                    boost::icl::interval_set<unsigned long long,std::less,boost::icl::discrete_interval<unsigned long long,std::less>,std::allocator>::add_over(&v40, &v43, v29);
                  }
                }

                v9 = v17;
              }

              v18 = 0;
              ++v17;
              v14 -= v19;
            }

            while (v14);
          }

          v8 = v35 + 1;
          a3 = v33;
        }

        while (v35 + 1 != a4);
      }

      else
      {
        v9 = 0;
      }

      if (v40 != v41)
      {
        DiskImageSparseBundle::unmap_band_extents(a1, v9, &v40);
      }

      workqueue::transaction::~transaction(&v51);
      if (DIDebugLogsEnabled())
      {
        *&v51 = "int DiskImageSparseBundle::unmap(DiskImage::Context &, const unmap_extent_t *, size_t)";
        *(&v51 + 1) = 32;
        v52 = 2;
        di_log::logger<di_log::log_printer<498ul>>::logger(&v43, &v51);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v49, "Unmap done", 10);
        std::ostream::~ostream();
        di_log::logger_buf<di_log::log_printer<498ul>>::~logger_buf(&v43);
        MEMORY[0x24C1ED6A0](v50);
      }

      v7 = atomic_load(&v42);
    }
  }

  else
  {
    *&v51 = "int DiskImageSparseBundle::unmap(DiskImage::Context &, const unmap_extent_t *, size_t)";
    *(&v51 + 1) = 32;
    v52 = 16;
    di_log::logger<di_log::log_printer<443ul>>::logger(&v43, &v51);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v49, "Unexpected unmap command received on read only image", 52);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<443ul>>::~logger_buf(&v43);
    MEMORY[0x24C1ED6A0](v50);
    v7 = 4294967277;
  }

  std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>>>::destroy(&v40, v41[0]);
  v31 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_248EA4394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, void *a29, uint64_t a30, uint64_t a31, char a32)
{
  di_log::logger<di_log::log_printer<498ul>>::~logger(&a32);
  std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>>>::destroy(&a28, a29);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<434ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<434ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEA660;
  a1[45] = &unk_285BEA760;
  a1[46] = &unk_285BEA788;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEA660;
  a1[45] = &unk_285BEA6E8;
  a1[46] = &unk_285BEA710;
  return a1;
}

void sub_248EA46E8(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<434ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<434ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<434ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<443ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<443ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEA880;
  a1[45] = &unk_285BEA980;
  a1[46] = &unk_285BEA9A8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEA880;
  a1[45] = &unk_285BEA908;
  a1[46] = &unk_285BEA930;
  return a1;
}

void sub_248EA4854(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<443ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<443ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<443ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<460ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<460ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEAAA0;
  a1[45] = &unk_285BEABA0;
  a1[46] = &unk_285BEABC8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEAAA0;
  a1[45] = &unk_285BEAB28;
  a1[46] = &unk_285BEAB50;
  return a1;
}

void sub_248EA49C0(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<460ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<460ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<460ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *__Block_byref_object_copy__5(void *result, void *a2)
{
  result[5] = a2[5];
  v2 = a2 + 6;
  v3 = a2[6];
  result[6] = v3;
  v4 = result + 6;
  v5 = a2[7];
  result[7] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[5] = v2;
    *v2 = 0;
    a2[7] = 0;
  }

  else
  {
    result[5] = v4;
  }

  return result;
}

void *di_log::logger<di_log::log_printer<469ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<469ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEACC0;
  a1[45] = &unk_285BEADC0;
  a1[46] = &unk_285BEADE8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEACC0;
  a1[45] = &unk_285BEAD48;
  a1[46] = &unk_285BEAD70;
  return a1;
}

void sub_248EA4D48(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<469ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<469ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<469ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<492ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<492ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEAEE0;
  a1[45] = &unk_285BEAFE0;
  a1[46] = &unk_285BEB008;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEAEE0;
  a1[45] = &unk_285BEAF68;
  a1[46] = &unk_285BEAF90;
  return a1;
}

void sub_248EA4EB4(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<492ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<492ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<492ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<498ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<498ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEB100;
  a1[45] = &unk_285BEB200;
  a1[46] = &unk_285BEB228;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEB100;
  a1[45] = &unk_285BEB188;
  a1[46] = &unk_285BEB1B0;
  return a1;
}

void sub_248EA5020(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<498ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<498ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<498ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t DiskImageSparseBundle::on_eject(DiskImageSparseBundle *this)
{
  if (DIDebugLogsEnabled())
  {
    *&v6 = "void DiskImageSparseBundle::on_eject()";
    *(&v6 + 1) = 36;
    v7 = 2;
    di_log::logger<di_log::log_printer<505ul>>::logger(v8, &v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "Evicting all bands for eject", 28);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<505ul>>::~logger_buf(v8);
    MEMORY[0x24C1ED6A0](v10);
  }

  if (*(this + 2))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      sparse_bundles::band_ptr::replace_if_evictable((*(this + 89) + v2), 0, v5);
      sparse_bundles::band_ptr::~band_ptr(v5);
      ++v3;
      v2 += 24;
    }

    while (v3 < *(this + 2));
  }

  workqueue::transaction::flush(this + 52, 0xFFFFFFFFFFFFFFFFLL);
  *&v6 = "void DiskImageSparseBundle::on_eject()";
  *(&v6 + 1) = 36;
  v7 = 0;
  di_log::logger<di_log::log_printer<511ul>>::logger(v8, &v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "Sparse bundle ejected", 21);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<511ul>>::~logger_buf(v8);
  return MEMORY[0x24C1ED6A0](v10);
}

void sub_248EA51C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  di_log::logger<di_log::log_printer<505ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<505ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<505ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEB320;
  a1[45] = &unk_285BEB420;
  a1[46] = &unk_285BEB448;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEB320;
  a1[45] = &unk_285BEB3A8;
  a1[46] = &unk_285BEB3D0;
  return a1;
}

void sub_248EA52E8(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<505ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<505ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<505ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<511ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<511ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEB540;
  a1[45] = &unk_285BEB640;
  a1[46] = &unk_285BEB668;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEB540;
  a1[45] = &unk_285BEB5C8;
  a1[46] = &unk_285BEB5F0;
  return a1;
}

void sub_248EA5454(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<511ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<511ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<511ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t DiskImageSparseBundle::set_size(DiskImage *this, uint64_t a2)
{
  result = DiskImage::set_size_unmap_data(this, a2);
  if (!result)
  {
    v5 = (a2 + 4095) & 0xFFFFFFFFFFFFF000;
    if (v5 < 0x200000000000001)
    {
      v6 = *(**(this + 70) + 56);

      return v6();
    }

    else
    {
      *&v7 = "int DiskImageSparseBundle::set_size(uint64_t)";
      *(&v7 + 1) = 35;
      v8 = 16;
      di_log::logger<di_log::log_printer<523ul>>::logger(v9, &v7);
      MEMORY[0x24C1ED3E0](&v10, v5);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, " bytes are above the sparsebundle limit of ", 43);
      MEMORY[0x24C1ED3E0](&v10, 0x200000000000000);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, " bytes", 6);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<523ul>>::~logger_buf(v9);
      MEMORY[0x24C1ED6A0](&v11);
      return 4294967269;
    }
  }

  return result;
}

void sub_248EA55EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<523ul>>::~logger(va);
  _Unwind_Resume(a1);
}

uint64_t DiskImage::set_size_unmap_data(DiskImage *this, uint64_t a2)
{
  v4 = (*(*this + 32))(this);
  v5 = (*(*this + 24))(this) * v4;
  v6 = (*(*this + 24))(this);
  v7 = (a2 + v6 - 1) / v6 * v6;
  if (v5 <= v7)
  {
    return 0;
  }

  v11[0] = v7 / (*(*this + 24))(this);
  v11[1] = (v5 - v7) / (*(*this + 24))(this);
  v8 = (*(*this + 144))(this);
  v9 = (*(*this + 192))(this, v8, v11, 1);
  if (v8)
  {
    (*(*v8 + 40))(v8);
  }

  return v9;
}

void sub_248EA57C8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    [DIResizeParams resizeWithError:v1];
  }

  _Unwind_Resume(exception_object);
}

void *di_log::logger<di_log::log_printer<523ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<523ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEB760;
  a1[45] = &unk_285BEB860;
  a1[46] = &unk_285BEB888;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEB760;
  a1[45] = &unk_285BEB7E8;
  a1[46] = &unk_285BEB810;
  return a1;
}

void sub_248EA58E4(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<523ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<523ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<523ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void std::allocator<sparse_bundles::band_ptr>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<sparse_bundles::band_ptr>,sparse_bundles::band_ptr*>(int a1, sparse_bundles::band_ptr *a2, sparse_bundles::band_ptr *a3, sparse_bundles::band_ptr *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      sparse_bundles::band_ptr::band_ptr(this, v8);
      v8 = (v8 + 24);
      this = (this + 24);
      v7 -= 24;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      sparse_bundles::band_ptr::~band_ptr(v6);
      v6 = (v6 + 24);
    }
  }
}

void sub_248EA5B64(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 24);
    do
    {
      sparse_bundles::band_ptr::~band_ptr(v4);
      v4 = (v5 - 24);
      v2 += 24;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<sparse_bundles::band_ptr>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    sparse_bundles::band_ptr::~band_ptr((i - 24));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<sparse_bundles::band_ptr>::__emplace_back_slow_path<sparse_bundles::band_ptr>(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<iovec>::__throw_length_error[abi:ne200100]();
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
    std::allocator<sparse_bundles::band_ptr>::allocate_at_least[abi:ne200100](a1, v6);
  }

  v13 = 0;
  v14 = 24 * v2;
  sparse_bundles::band_ptr::band_ptr(24 * v2, a2);
  v15 = 24 * v2 + 24;
  v7 = *(a1 + 8);
  v8 = (24 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<sparse_bundles::band_ptr>,sparse_bundles::band_ptr*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<sparse_bundles::band_ptr>::~__split_buffer(&v13);
  return v12;
}

void sub_248EA5CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<sparse_bundles::band_ptr>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void non-virtual thunk todi_log::logger<di_log::log_printer<46ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<46ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<46ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<46ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<46ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<46ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<46ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<46ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<46ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<46ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<46ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE7D78;
  di_log::logger_buf<di_log::log_printer<46ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<46ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<46ul>::log((a1 + 72), __p);
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

void sub_248EA6258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<46ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<46ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<46ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 46;
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
      v22 = 46;
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

void std::vector<sparse_bundles::band_ptr>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        sparse_bundles::band_ptr::~band_ptr((v4 - 24));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void workqueue::workqueue::~workqueue(void **this)
{
  v2 = this + 3;
  std::vector<gcd::gcd_queue>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::vector<gcd::gcd_queue>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        gcd::gcd_group::~gcd_group(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sparse_bundles::bundle_commons_t::~bundle_commons_t(sparse_bundles::bundle_commons_t *this)
{
  workqueue::transaction::~transaction((this + 392));
  v6 = (this + 352);
  std::vector<gcd::gcd_queue>::__destroy_vector::operator()[abi:ne200100](&v6);
  if (*(this + 351) < 0)
  {
    operator delete(*(this + 41));
  }

  v2 = *(this + 40);
  *(this + 40) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::condition_variable::~condition_variable((this + 272));
  std::mutex::~mutex((this + 208));
  std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>>>::destroy(this + 184, *(this + 24));
  std::condition_variable::~condition_variable((this + 136));
  std::mutex::~mutex(this + 1);
  v3 = *(this + 4);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 16))(v4);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    (*(*v5 + 16))(v5);
  }
}

void non-virtual thunk todi_log::logger<di_log::log_printer<59ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<59ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<59ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<59ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<59ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<59ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<59ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<59ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<59ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<59ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<59ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE7F98;
  di_log::logger_buf<di_log::log_printer<59ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<59ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<59ul>::log((a1 + 72), __p);
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

void sub_248EA6C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<59ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<59ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<59ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 59;
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
      v22 = 59;
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

void non-virtual thunk todi_log::logger<di_log::log_printer<80ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<80ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<80ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<80ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<80ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<80ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<80ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<80ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<80ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<80ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<80ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE81B8;
  di_log::logger_buf<di_log::log_printer<80ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<80ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<80ul>::log((a1 + 72), __p);
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

void sub_248EA73F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<80ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<80ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<80ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 80;
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
      v22 = 80;
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

void non-virtual thunk todi_log::logger<di_log::log_printer<107ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<107ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<107ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<107ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<107ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<107ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<107ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<107ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<107ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<107ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<107ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE83D8;
  di_log::logger_buf<di_log::log_printer<107ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<107ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<107ul>::log((a1 + 72), __p);
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

void sub_248EA7B90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<107ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<107ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<107ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 107;
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
      v22 = 107;
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

void non-virtual thunk todi_log::logger<di_log::log_printer<111ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<111ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<111ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<111ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<111ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<111ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<111ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<111ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<111ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<111ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<111ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE85F8;
  di_log::logger_buf<di_log::log_printer<111ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<111ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<111ul>::log((a1 + 72), __p);
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

void sub_248EA8328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<111ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<111ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<111ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 111;
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
      v22 = 111;
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

void non-virtual thunk todi_log::logger<di_log::log_printer<154ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<154ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<154ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<154ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<154ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<154ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<154ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<154ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<154ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<154ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<154ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE8818;
  di_log::logger_buf<di_log::log_printer<154ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<154ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<154ul>::log((a1 + 72), __p);
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

void sub_248EA8AC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<154ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<154ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<154ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 154;
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
      v22 = 154;
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

void non-virtual thunk todi_log::logger<di_log::log_printer<165ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<165ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<165ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<165ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<165ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<165ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<165ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<165ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<165ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<165ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<165ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE8A38;
  di_log::logger_buf<di_log::log_printer<165ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<165ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<165ul>::log((a1 + 72), __p);
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

void sub_248EA9258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<165ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<165ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<165ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 165;
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
      v22 = 165;
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

void non-virtual thunk todi_log::logger<di_log::log_printer<190ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<190ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<190ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<190ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<190ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<190ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<190ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<190ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<190ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<190ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<190ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE8C58;
  di_log::logger_buf<di_log::log_printer<190ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<190ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<190ul>::log((a1 + 72), __p);
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

void sub_248EA99F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<190ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<190ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<190ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 190;
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
      v22 = 190;
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

void non-virtual thunk todi_log::logger<di_log::log_printer<194ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<194ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<194ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<194ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<194ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<194ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<194ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<194ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<194ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<194ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<194ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE8E78;
  di_log::logger_buf<di_log::log_printer<194ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<194ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<194ul>::log((a1 + 72), __p);
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

void sub_248EAA188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<194ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<194ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<194ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 194;
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
      v22 = 194;
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

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *,false>(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 4;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v25 = *(a2 - 2);
        v26 = *v9;
        v27 = -1;
        if (v25 >= *v9)
        {
          v27 = 1;
        }

        if (v25 == *v9)
        {
          v28 = *(a2 - 1);
          v29 = v9[1];
          v30 = v28 >= v29;
          v31 = v28 == v29;
          v27 = -1;
          if (v30)
          {
            v27 = 1;
          }

          if (v31)
          {
            v27 = 0;
          }
        }

        if (v27 < 0)
        {
          v32 = v9[1];
          v33 = *(a2 - 1);
          *v9 = v25;
          v9[1] = v33;
          *(a2 - 2) = v26;
          *(a2 - 1) = v32;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *,0>(v9, v9 + 2, v9 + 4);
      v34 = *(a2 - 2);
      v35 = v9[4];
      v36 = -1;
      if (v34 >= v35)
      {
        v36 = 1;
      }

      if (v34 == v35)
      {
        v37 = *(a2 - 1);
        v38 = v9[5];
        v30 = v37 >= v38;
        v39 = v37 == v38;
        v36 = -1;
        if (v30)
        {
          v36 = 1;
        }

        if (v39)
        {
          v36 = 0;
        }
      }

      if (v36 < 0)
      {
        v9[4] = v34;
        *(a2 - 2) = v35;
        v40 = v9[4];
        v41 = v9[5];
        v9[5] = *(a2 - 1);
        *(a2 - 1) = v41;
        v42 = v9[2];
        v43 = -1;
        if (v40 >= v42)
        {
          v43 = 1;
        }

        if (v40 == v42)
        {
          v44 = v9[5];
          v45 = v9[3];
          v30 = v44 >= v45;
          v46 = v44 == v45;
          v43 = -1;
          if (v30)
          {
            v43 = 1;
          }

          if (v46)
          {
            v43 = 0;
          }
        }

        if (v43 < 0)
        {
          v47 = v9[3];
          v48 = v9[5];
          v9[2] = v40;
          v9[3] = v48;
          v9[4] = v42;
          v9[5] = v47;
          v49 = *v9;
          v50 = -1;
          if (v40 >= *v9)
          {
            v50 = 1;
          }

          if (v40 == *v9)
          {
            v51 = v9[1];
            v30 = v48 >= v51;
            v52 = v48 == v51;
            v50 = -1;
            if (v30)
            {
              v50 = 1;
            }

            if (v52)
            {
              v50 = 0;
            }
          }

          if (v50 < 0)
          {
            v53 = v9[1];
            *v9 = v40;
            v9[1] = v48;
            v9[2] = v49;
            v9[3] = v53;
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *,0>(v9, v9 + 2, v9 + 4, v9 + 6, a2 - 2);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *>(v9, a2);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *>(v9, a2);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = &v9[2 * (v12 >> 1)];
    if (v12 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *,0>(&v9[2 * (v12 >> 1)], v9, a2 - 2);
      if (a5)
      {
        goto LABEL_28;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *,0>(v9, &v9[2 * (v12 >> 1)], a2 - 2);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *,0>(v9 + 2, v14 - 2, a2 - 4);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *,0>(v9 + 4, &v9[2 * v13 + 2], a2 - 6);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *,0>(v14 - 2, v14, &v9[2 * v13 + 2]);
      v15 = *v9;
      *v9 = *v14;
      *v14 = v15;
      if (a5)
      {
        goto LABEL_28;
      }
    }

    v16 = *(v9 - 2);
    v17 = v16 == *v9;
    if (v16 >= *v9)
    {
      v18 = 1;
    }

    else
    {
      v18 = -1;
    }

    if (v17)
    {
      v19 = *(v9 - 1);
      v20 = v9[1];
      v21 = v19 == v20;
      v18 = v19 >= v20 ? 1 : -1;
      if (v21)
      {
        v18 = 0;
      }
    }

    if ((v18 & 0x80) == 0)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *,std::__less<void,void> &>(v9, a2);
      v9 = result;
      goto LABEL_33;
    }

LABEL_28:
    v22 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *,std::__less<void,void> &>(v9, a2);
    if ((v23 & 1) == 0)
    {
      goto LABEL_31;
    }

    v24 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *>(v9, v22);
    v9 = v22 + 2;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *>(v22 + 2, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v22;
      if (v24)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v24)
    {
LABEL_31:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *,false>(v8, v22, a3, -v11, a5 & 1);
      v9 = v22 + 2;
LABEL_33:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *,0>(v9, v9 + 2, a2 - 2);
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a1;
  if (*a2 >= *a1)
  {
    v5 = 1;
  }

  else
  {
    v5 = -1;
  }

  if (*a2 == *a1)
  {
    v6 = a2[1];
    v7 = a1[1];
    v8 = v6 >= v7;
    v9 = v6 == v7;
    v10 = -1;
    if (v8)
    {
      v10 = 1;
    }

    if (v9)
    {
      v5 = 0;
    }

    else
    {
      v5 = v10;
    }
  }

  v11 = *a3;
  v12 = -1;
  if (*a3 >= v3)
  {
    v12 = 1;
  }

  if (v5 < 0)
  {
    if (v11 == v3)
    {
      v18 = a3[1];
      v19 = a2[1];
      v8 = v18 >= v19;
      v20 = v18 == v19;
      v12 = -1;
      if (v8)
      {
        v12 = 1;
      }

      if (v20)
      {
        v12 = 0;
      }
    }

    if (v12 < 0)
    {
      v36 = a1[1];
      v37 = a3[1];
      *a1 = v11;
      a1[1] = v37;
      *a3 = v4;
      a3[1] = v36;
    }

    else
    {
      v21 = a1[1];
      v22 = a2[1];
      *a1 = v3;
      a1[1] = v22;
      *a2 = v4;
      a2[1] = v21;
      v23 = -1;
      if (*a3 >= v4)
      {
        v23 = 1;
      }

      if (*a3 == v4)
      {
        v24 = a3[1];
        v8 = v24 >= v21;
        v25 = v24 == v21;
        v23 = -1;
        if (v8)
        {
          v23 = 1;
        }

        if (v25)
        {
          v23 = 0;
        }
      }

      if (v23 < 0)
      {
        v26 = a3[1];
        *a2 = *a3;
        a2[1] = v26;
        *a3 = v4;
        a3[1] = v21;
      }
    }
  }

  else
  {
    if (v11 == v3)
    {
      v13 = a3[1];
      v14 = a2[1];
      v8 = v13 >= v14;
      v15 = v13 == v14;
      v16 = -1;
      if (v8)
      {
        v16 = 1;
      }

      if (v15)
      {
        v12 = 0;
      }

      else
      {
        v12 = v16;
      }
    }

    if ((v12 & 0x80) == 0)
    {
      return 0;
    }

    *a2 = v11;
    *a3 = v3;
    v27 = *a2;
    v28 = a2[1];
    a2[1] = a3[1];
    a3[1] = v28;
    v29 = *a1;
    v30 = -1;
    if (v27 >= *a1)
    {
      v30 = 1;
    }

    if (v27 == *a1)
    {
      v31 = a2[1];
      v32 = a1[1];
      v8 = v31 >= v32;
      v33 = v31 == v32;
      v30 = -1;
      if (v8)
      {
        v30 = 1;
      }

      if (v33)
      {
        v30 = 0;
      }
    }

    if (v30 < 0)
    {
      v34 = a1[1];
      v35 = a2[1];
      *a1 = v27;
      a1[1] = v35;
      *a2 = v29;
      a2[1] = v34;
    }
  }

  return 1;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *,0>(a1, a2, a3);
  v11 = *a3;
  v12 = -1;
  if (*a4 >= *a3)
  {
    v12 = 1;
  }

  if (*a4 == *a3)
  {
    v13 = a4[1];
    v14 = a3[1];
    v15 = v13 >= v14;
    v16 = v13 == v14;
    v12 = -1;
    if (v15)
    {
      v12 = 1;
    }

    if (v16)
    {
      v12 = 0;
    }
  }

  if (v12 < 0)
  {
    *a3 = *a4;
    *a4 = v11;
    v17 = *a3;
    v18 = a3[1];
    a3[1] = a4[1];
    a4[1] = v18;
    v19 = *a2;
    v20 = -1;
    if (v17 >= *a2)
    {
      v20 = 1;
    }

    if (v17 == *a2)
    {
      v21 = a3[1];
      v22 = a2[1];
      v15 = v21 >= v22;
      v23 = v21 == v22;
      v20 = -1;
      if (v15)
      {
        v20 = 1;
      }

      if (v23)
      {
        v20 = 0;
      }
    }

    if (v20 < 0)
    {
      *a2 = v17;
      *a3 = v19;
      v24 = *a2;
      v25 = a2[1];
      a2[1] = a3[1];
      a3[1] = v25;
      v26 = *a1;
      v27 = -1;
      if (v24 >= *a1)
      {
        v27 = 1;
      }

      if (v24 == *a1)
      {
        v28 = a2[1];
        v29 = a1[1];
        v15 = v28 >= v29;
        v30 = v28 == v29;
        v27 = -1;
        if (v15)
        {
          v27 = 1;
        }

        if (v30)
        {
          v27 = 0;
        }
      }

      if (v27 < 0)
      {
        v31 = a1[1];
        v32 = a2[1];
        *a1 = v24;
        a1[1] = v32;
        *a2 = v26;
        a2[1] = v31;
      }
    }
  }

  v33 = *a4;
  v34 = -1;
  if (*a5 >= *a4)
  {
    v34 = 1;
  }

  if (*a5 == *a4)
  {
    v35 = a5[1];
    v36 = a4[1];
    v15 = v35 >= v36;
    v37 = v35 == v36;
    v34 = -1;
    if (v15)
    {
      v34 = 1;
    }

    if (v37)
    {
      v34 = 0;
    }
  }

  if (v34 < 0)
  {
    *a4 = *a5;
    *a5 = v33;
    v38 = *a4;
    v39 = a4[1];
    a4[1] = a5[1];
    a5[1] = v39;
    v40 = *a3;
    v41 = -1;
    if (v38 >= *a3)
    {
      v41 = 1;
    }

    if (v38 == *a3)
    {
      v42 = a4[1];
      v43 = a3[1];
      v15 = v42 >= v43;
      v44 = v42 == v43;
      v41 = -1;
      if (v15)
      {
        v41 = 1;
      }

      if (v44)
      {
        v41 = 0;
      }
    }

    if (v41 < 0)
    {
      *a3 = v38;
      *a4 = v40;
      v45 = *a3;
      v46 = a3[1];
      a3[1] = a4[1];
      a4[1] = v46;
      v47 = *a2;
      v48 = -1;
      if (v45 >= *a2)
      {
        v48 = 1;
      }

      if (v45 == *a2)
      {
        v49 = a3[1];
        v50 = a2[1];
        v15 = v49 >= v50;
        v51 = v49 == v50;
        v48 = -1;
        if (v15)
        {
          v48 = 1;
        }

        if (v51)
        {
          v48 = 0;
        }
      }

      if (v48 < 0)
      {
        *a2 = v45;
        *a3 = v47;
        v52 = *a2;
        v53 = a2[1];
        a2[1] = a3[1];
        a3[1] = v53;
        v54 = *a1;
        v55 = -1;
        if (v52 >= *a1)
        {
          v55 = 1;
        }

        if (v52 == *a1)
        {
          v56 = a2[1];
          v57 = a1[1];
          v15 = v56 >= v57;
          v58 = v56 == v57;
          v55 = -1;
          if (v15)
          {
            v55 = 1;
          }

          if (v58)
          {
            v55 = 0;
          }
        }

        if (v55 < 0)
        {
          v59 = a1[1];
          v60 = a2[1];
          *a1 = v52;
          a1[1] = v60;
          *a2 = v54;
          a2[1] = v59;
        }
      }
    }
  }

  return result;
}

uint64_t *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *>(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = v4[2];
        v7 = *v4;
        if (v6 >= *v4)
        {
          v8 = 1;
        }

        else
        {
          v8 = -1;
        }

        if (v6 == *v4)
        {
          v9 = v4[3];
          v10 = v4[1];
          v11 = v9 == v10;
          v8 = v9 >= v10 ? 1 : -1;
          if (v11)
          {
            v8 = 0;
          }
        }

        if (v8 < 0)
        {
          v12 = v4[3];
          v13 = v3;
          while (1)
          {
            v14 = result + v13;
            v15 = *(result + v13 + 8);
            *(v14 + 2) = v7;
            *(v14 + 3) = v15;
            if (!v13)
            {
              break;
            }

            v7 = *(v14 - 2);
            if (v6 >= v7)
            {
              v16 = 1;
            }

            else
            {
              v16 = -1;
            }

            if (v6 == v7)
            {
              v17 = *(result + v13 - 8);
              v18 = v12 == v17;
              if (v12 >= v17)
              {
                v16 = 1;
              }

              else
              {
                v16 = -1;
              }

              if (v18)
              {
                v16 = 0;
              }
            }

            v13 -= 16;
            if ((v16 & 0x80) == 0)
            {
              v19 = (result + v13 + 16);
              goto LABEL_28;
            }
          }

          v19 = result;
LABEL_28:
          *v19 = v6;
          v19[1] = v12;
        }

        v2 = v5 + 2;
        v3 += 16;
        v4 = v5;
      }

      while (v5 + 2 != a2);
    }
  }

  return result;
}

uint64_t *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *>(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = (result + 3);
      do
      {
        v4 = v2;
        v5 = result[2];
        v6 = *result;
        if (v5 >= *result)
        {
          v7 = 1;
        }

        else
        {
          v7 = -1;
        }

        if (v5 == *result)
        {
          v8 = result[3];
          v9 = result[1];
          v10 = v8 == v9;
          v7 = v8 >= v9 ? 1 : -1;
          if (v10)
          {
            v7 = 0;
          }
        }

        if (v7 < 0)
        {
          v11 = result[3];
          v12 = v3;
          do
          {
            v13 = *(v12 - 2);
            *(v12 - 1) = v6;
            *v12 = v13;
            v6 = *(v12 - 5);
            if (v5 >= v6)
            {
              v14 = 1;
            }

            else
            {
              v14 = -1;
            }

            if (v5 == v6)
            {
              v15 = *(v12 - 4);
              v16 = v11 == v15;
              if (v11 >= v15)
              {
                v14 = 1;
              }

              else
              {
                v14 = -1;
              }

              if (v16)
              {
                v14 = 0;
              }
            }

            v12 -= 2;
          }

          while (v14 < 0);
          *(v12 - 1) = v5;
          *v12 = v11;
        }

        v2 = v4 + 2;
        v3 += 2;
        result = v4;
      }

      while (v4 + 2 != a2);
    }
  }

  return result;
}

void *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *,std::__less<void,void> &>(void *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a2 - 2);
  v5 = *a1 == v4;
  if (*a1 >= v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = -1;
  }

  if (v5)
  {
    v7 = *(a2 - 1);
    v8 = v3 >= v7;
    v9 = v3 == v7;
    v6 = -1;
    if (v8)
    {
      v6 = 1;
    }

    if (v9)
    {
      v6 = 0;
    }
  }

  if (v6 < 0)
  {
    v15 = a1;
    v11 = a1;
    do
    {
      v16 = v11[2];
      v11 += 2;
      v17 = v2 == v16;
      if (v2 >= v16)
      {
        v18 = 1;
      }

      else
      {
        v18 = -1;
      }

      if (v17)
      {
        v19 = v15[3];
        v20 = v3 == v19;
        if (v3 >= v19)
        {
          v21 = 1;
        }

        else
        {
          v21 = -1;
        }

        if (v20)
        {
          v18 = 0;
        }

        else
        {
          v18 = v21;
        }
      }

      v15 = v11;
    }

    while ((v18 & 0x80) == 0);
  }

  else
  {
    v10 = a1 + 2;
    do
    {
      v11 = v10;
      if (v10 >= a2)
      {
        break;
      }

      if (v2 >= *v10)
      {
        v12 = 1;
      }

      else
      {
        v12 = -1;
      }

      if (v2 == *v10)
      {
        v13 = v10[1];
        v14 = v3 == v13;
        v12 = v3 >= v13 ? 1 : -1;
        if (v14)
        {
          v12 = 0;
        }
      }

      v10 += 2;
    }

    while ((v12 & 0x80) == 0);
  }

  if (v11 >= a2)
  {
    v22 = a2;
  }

  else
  {
    v22 = a2;
    do
    {
      v23 = *(v22 - 2);
      v22 -= 2;
      v24 = v2 == v23;
      if (v2 >= v23)
      {
        v25 = 1;
      }

      else
      {
        v25 = -1;
      }

      if (v24)
      {
        v26 = *(a2 - 1);
        v27 = v3 == v26;
        v25 = v3 >= v26 ? 1 : -1;
        if (v27)
        {
          v25 = 0;
        }
      }

      a2 = v22;
    }

    while (v25 < 0);
  }

  if (v11 < v22)
  {
    v28 = *v11;
    v29 = *v22;
    do
    {
      v30 = v11[1];
      v31 = v22[1];
      *v11 = v29;
      v11[1] = v31;
      *v22 = v28;
      v22[1] = v30;
      v32 = v11;
      do
      {
        v33 = v11[2];
        v11 += 2;
        v28 = v33;
        v34 = v2 == v33;
        if (v2 >= v33)
        {
          v35 = 1;
        }

        else
        {
          v35 = -1;
        }

        if (v34)
        {
          v36 = v32[3];
          v37 = v3 == v36;
          v35 = v3 >= v36 ? 1 : -1;
          if (v37)
          {
            v35 = 0;
          }
        }

        v32 = v11;
      }

      while ((v35 & 0x80) == 0);
      v38 = v22;
      do
      {
        v39 = *(v22 - 2);
        v22 -= 2;
        v29 = v39;
        v40 = v2 == v39;
        if (v2 >= v39)
        {
          v41 = 1;
        }

        else
        {
          v41 = -1;
        }

        if (v40)
        {
          v42 = *(v38 - 1);
          v43 = v3 == v42;
          v41 = v3 >= v42 ? 1 : -1;
          if (v43)
          {
            v41 = 0;
          }
        }

        v38 = v22;
      }

      while (v41 < 0);
    }

    while (v11 < v22);
  }

  if (v11 - 2 != a1)
  {
    *a1 = *(v11 - 1);
  }

  *(v11 - 2) = v2;
  *(v11 - 1) = v3;
  return v11;
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *,std::__less<void,void> &>(uint64_t *a1, uint64_t *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  do
  {
    v5 = a1[v2 + 2];
    if (v5 >= v3)
    {
      v6 = 1;
    }

    else
    {
      v6 = -1;
    }

    if (v5 == v3)
    {
      v7 = a1[v2 + 3];
      v8 = v7 == v4;
      v6 = v7 >= v4 ? 1 : -1;
      if (v8)
      {
        v6 = 0;
      }
    }

    v2 += 2;
  }

  while (v6 < 0);
  v9 = &a1[v2];
  if (v2 == 2)
  {
    while (v9 < a2)
    {
      v10 = a2 - 2;
      v16 = *(a2 - 2);
      v17 = v16 == v3;
      if (v16 >= v3)
      {
        v18 = 1;
      }

      else
      {
        v18 = -1;
      }

      if (v17)
      {
        v19 = *(a2 - 1);
        v20 = v19 == v4;
        v18 = v19 >= v4 ? 1 : -1;
        if (v20)
        {
          v18 = 0;
        }
      }

      a2 -= 2;
      if (v18 < 0)
      {
        goto LABEL_39;
      }
    }

    v10 = a2;
  }

  else
  {
    v10 = a2;
    do
    {
      v11 = *(v10 - 2);
      v10 -= 2;
      v12 = v11 == v3;
      if (v11 >= v3)
      {
        v13 = 1;
      }

      else
      {
        v13 = -1;
      }

      if (v12)
      {
        v14 = *(a2 - 1);
        v15 = v14 == v4;
        v13 = v14 >= v4 ? 1 : -1;
        if (v15)
        {
          v13 = 0;
        }
      }

      a2 = v10;
    }

    while ((v13 & 0x80) == 0);
  }

LABEL_39:
  if (v9 >= v10)
  {
    v22 = v9;
  }

  else
  {
    v21 = *v10;
    v22 = v9;
    v23 = v10;
    do
    {
      v24 = v22[1];
      v25 = v23[1];
      *v22 = v21;
      v22[1] = v25;
      *v23 = v5;
      v23[1] = v24;
      v26 = v22;
      do
      {
        v27 = v22[2];
        v22 += 2;
        v5 = v27;
        v28 = v27 == v3;
        if (v27 >= v3)
        {
          v29 = 1;
        }

        else
        {
          v29 = -1;
        }

        if (v28)
        {
          v30 = v26[3];
          v31 = v30 == v4;
          v29 = v30 >= v4 ? 1 : -1;
          if (v31)
          {
            v29 = 0;
          }
        }

        v26 = v22;
      }

      while (v29 < 0);
      v32 = v23;
      do
      {
        v33 = *(v23 - 2);
        v23 -= 2;
        v21 = v33;
        v34 = v33 == v3;
        if (v33 >= v3)
        {
          v35 = 1;
        }

        else
        {
          v35 = -1;
        }

        if (v34)
        {
          v36 = *(v32 - 1);
          v37 = v36 == v4;
          v35 = v36 >= v4 ? 1 : -1;
          if (v37)
          {
            v35 = 0;
          }
        }

        v32 = v23;
      }

      while ((v35 & 0x80) == 0);
    }

    while (v22 < v23);
  }

  if (v22 - 2 != a1)
  {
    *a1 = *(v22 - 1);
  }

  *(v22 - 2) = v3;
  *(v22 - 1) = v4;
  return v22 - 2;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *>(uint64_t *a1, uint64_t *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *,0>(a1, a1 + 2, a2 - 2);
        break;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *,0>(a1, a1 + 2, a1 + 4);
        v32 = *(a2 - 2);
        v33 = a1[4];
        v34 = -1;
        if (v32 >= v33)
        {
          v34 = 1;
        }

        if (v32 == v33)
        {
          v35 = *(a2 - 1);
          v36 = a1[5];
          v10 = v35 >= v36;
          v37 = v35 == v36;
          v34 = -1;
          if (v10)
          {
            v34 = 1;
          }

          if (v37)
          {
            v34 = 0;
          }
        }

        if (v34 < 0)
        {
          a1[4] = v32;
          *(a2 - 2) = v33;
          v38 = a1[4];
          v39 = a1[5];
          a1[5] = *(a2 - 1);
          *(a2 - 1) = v39;
          v40 = a1[2];
          v41 = -1;
          if (v38 >= v40)
          {
            v41 = 1;
          }

          if (v38 == v40)
          {
            v42 = a1[5];
            v43 = a1[3];
            v10 = v42 >= v43;
            v44 = v42 == v43;
            v41 = -1;
            if (v10)
            {
              v41 = 1;
            }

            if (v44)
            {
              v41 = 0;
            }
          }

          if (v41 < 0)
          {
            v45 = a1[3];
            v46 = a1[5];
            a1[2] = v38;
            a1[3] = v46;
            a1[4] = v40;
            a1[5] = v45;
            v47 = *a1;
            v48 = -1;
            if (v38 >= *a1)
            {
              v48 = 1;
            }

            if (v38 == *a1)
            {
              v49 = a1[1];
              v10 = v46 >= v49;
              v50 = v46 == v49;
              v48 = -1;
              if (v10)
              {
                v48 = 1;
              }

              if (v50)
              {
                v48 = 0;
              }
            }

            if (v48 < 0)
            {
              v51 = a1[1];
              *a1 = v38;
              a1[1] = v46;
              a1[2] = v47;
              a1[3] = v51;
            }
          }
        }

        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
        break;
      default:
        goto LABEL_19;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 2);
    v6 = *a1;
    v7 = -1;
    if (v5 >= *a1)
    {
      v7 = 1;
    }

    if (v5 == *a1)
    {
      v8 = *(a2 - 1);
      v9 = a1[1];
      v10 = v8 >= v9;
      v11 = v8 == v9;
      v7 = -1;
      if (v10)
      {
        v7 = 1;
      }

      if (v11)
      {
        v7 = 0;
      }
    }

    if (v7 < 0)
    {
      v12 = a1[1];
      v13 = *(a2 - 1);
      *a1 = v5;
      a1[1] = v13;
      *(a2 - 2) = v6;
      *(a2 - 1) = v12;
    }

    return 1;
  }

LABEL_19:
  v14 = a1 + 4;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *,0>(a1, a1 + 2, a1 + 4);
  v15 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v16 = 0;
  v17 = 0;
  while (1)
  {
    v18 = *v15;
    v19 = *v14;
    if (*v15 >= *v14)
    {
      v20 = 1;
    }

    else
    {
      v20 = -1;
    }

    if (*v15 == *v14)
    {
      v21 = v15[1];
      v22 = v14[1];
      v23 = v21 == v22;
      v20 = v21 >= v22 ? 1 : -1;
      if (v23)
      {
        v20 = 0;
      }
    }

    if (v20 < 0)
    {
      v24 = v15[1];
      v25 = v16;
      while (1)
      {
        v26 = (a1 + v25);
        v27 = *(a1 + v25 + 40);
        v26[6] = v19;
        v26[7] = v27;
        if (v25 == -32)
        {
          break;
        }

        v19 = v26[2];
        if (v18 >= v19)
        {
          v28 = 1;
        }

        else
        {
          v28 = -1;
        }

        if (v18 == v19)
        {
          v29 = *(a1 + v25 + 24);
          v30 = v24 == v29;
          v28 = v24 >= v29 ? 1 : -1;
          if (v30)
          {
            v28 = 0;
          }
        }

        v25 -= 16;
        if ((v28 & 0x80) == 0)
        {
          v31 = (a1 + v25 + 48);
          goto LABEL_45;
        }
      }

      v31 = a1;
LABEL_45:
      *v31 = v18;
      v31[1] = v24;
      if (++v17 == 8)
      {
        return v15 + 2 == a2;
      }
    }

    v14 = v15;
    v16 += 16;
    v15 += 2;
    if (v15 == a2)
    {
      return 1;
    }
  }
}

char *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *>(char *a1, char *a2, char *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[16 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *>(a1, a4, v8, v11);
        v11 -= 16;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12;
        if (*v12 >= *a1)
        {
          v14 = 1;
        }

        else
        {
          v14 = -1;
        }

        if (*v12 == *a1)
        {
          v15 = *(v12 + 1);
          v16 = *(a1 + 1);
          v17 = v15 == v16;
          v14 = v15 >= v16 ? 1 : -1;
          if (v17)
          {
            v14 = 0;
          }
        }

        if (v14 < 0)
        {
          v18 = *(v12 + 1);
          v19 = *(a1 + 1);
          *v12 = *a1;
          *(v12 + 1) = v19;
          *a1 = v13;
          *(a1 + 1) = v18;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *>(a1, a4, v8, a1);
        }

        v12 += 16;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v20 = a2 - 16;
      do
      {
        v22 = *a1;
        v21 = *(a1 + 1);
        v23 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *>(a1, a4, v8);
        if (v20 == v23)
        {
          *v23 = v22;
          *(v23 + 1) = v21;
        }

        else
        {
          *v23 = *v20;
          *v20 = v22;
          *(v20 + 1) = v21;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *>(a1, (v23 + 16), a4, (v23 + 16 - a1) >> 4);
        }

        v20 -= 16;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *>(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = v8[2];
        v11 = *v8 == v10;
        if (*v8 >= v10)
        {
          v12 = 1;
        }

        else
        {
          v12 = -1;
        }

        if (v11)
        {
          v13 = v8[1];
          v14 = v8[3];
          v15 = v13 >= v14;
          v16 = v13 == v14;
          v12 = -1;
          if (v15)
          {
            v12 = 1;
          }

          if (v16)
          {
            v12 = 0;
          }
        }

        if (v12 < 0)
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v17 = *v8;
      v18 = *a4;
      v19 = -1;
      if (*v8 >= *a4)
      {
        v19 = 1;
      }

      if (*v8 == *a4)
      {
        v20 = v8[1];
        v21 = a4[1];
        v15 = v20 >= v21;
        v22 = v20 == v21;
        v19 = -1;
        if (v15)
        {
          v19 = 1;
        }

        if (v22)
        {
          v19 = 0;
        }
      }

      if ((v19 & 0x80) == 0)
      {
        v23 = a4[1];
        do
        {
          v24 = a4;
          a4 = v8;
          v25 = v8[1];
          *v24 = v17;
          v24[1] = v25;
          if (v5 < v7)
          {
            break;
          }

          v26 = (2 * v7) | 1;
          v8 = (result + 16 * v26);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v7 = v26;
          }

          else
          {
            v27 = v8[2];
            v28 = *v8 == v27;
            if (*v8 >= v27)
            {
              v29 = 1;
            }

            else
            {
              v29 = -1;
            }

            if (v28)
            {
              v30 = v8[1];
              v31 = v8[3];
              v32 = v30 == v31;
              v29 = v30 >= v31 ? 1 : -1;
              if (v32)
              {
                v29 = 0;
              }
            }

            if (v29 < 0)
            {
              v8 += 2;
            }

            else
            {
              v7 = v26;
            }
          }

          v17 = *v8;
          if (*v8 >= v18)
          {
            v33 = 1;
          }

          else
          {
            v33 = -1;
          }

          if (*v8 == v18)
          {
            v34 = v8[1];
            v35 = v34 == v23;
            if (v34 >= v23)
            {
              v33 = 1;
            }

            else
            {
              v33 = -1;
            }

            if (v35)
            {
              v33 = 0;
            }
          }
        }

        while ((v33 & 0x80) == 0);
        *a4 = v18;
        a4[1] = v23;
      }
    }
  }

  return result;
}

_OWORD *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *>(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = &a1[v3];
    v5 = v4 + 2;
    v6 = (2 * v3) | 1;
    v3 = 2 * v3 + 2;
    if (v3 >= a3)
    {
      v3 = v6;
    }

    else
    {
      v7 = v4 + 4;
      v8 = v4[4];
      v9 = v4[2];
      v10 = v9 == v8;
      if (v9 >= v8)
      {
        v11 = 1;
      }

      else
      {
        v11 = -1;
      }

      if (v10)
      {
        v12 = v4[3];
        v13 = v4[5];
        v14 = v12 == v13;
        if (v12 >= v13)
        {
          v15 = 1;
        }

        else
        {
          v15 = -1;
        }

        if (v14)
        {
          v11 = 0;
        }

        else
        {
          v11 = v15;
        }
      }

      if (v11 < 0)
      {
        v5 = v7;
      }

      else
      {
        v3 = v6;
      }
    }

    *a1 = *v5;
    a1 = v5;
  }

  while (v3 <= (a3 - 2) / 2);
  return v5;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 16 * v4);
    v6 = (a2 - 16);
    v7 = *(a2 - 16);
    v8 = *v5;
    v9 = -1;
    if (*v5 >= v7)
    {
      v9 = 1;
    }

    if (*v5 == v7)
    {
      v10 = v5[1];
      v11 = *(a2 - 8);
      v12 = v10 >= v11;
      v13 = v10 == v11;
      v9 = -1;
      if (v12)
      {
        v9 = 1;
      }

      if (v13)
      {
        v9 = 0;
      }
    }

    if (v9 < 0)
    {
      v14 = *(a2 - 8);
      do
      {
        v15 = v6;
        v6 = v5;
        v16 = v5[1];
        *v15 = v8;
        v15[1] = v16;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 16 * v4);
        v8 = *v5;
        if (*v5 >= v7)
        {
          v17 = 1;
        }

        else
        {
          v17 = -1;
        }

        if (*v5 == v7)
        {
          v18 = v5[1];
          v19 = v18 == v14;
          if (v18 >= v14)
          {
            v17 = 1;
          }

          else
          {
            v17 = -1;
          }

          if (v19)
          {
            v17 = 0;
          }
        }
      }

      while (v17 < 0);
      *v6 = v7;
      v6[1] = v14;
    }
  }

  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<213ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<213ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<213ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<213ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<213ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<213ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<213ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<213ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<213ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<213ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<213ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE9098;
  di_log::logger_buf<di_log::log_printer<213ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<213ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<213ul>::log((a1 + 72), __p);
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

void sub_248EABC10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<213ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<213ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<213ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 213;
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
      v22 = 213;
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

void non-virtual thunk todi_log::logger<di_log::log_printer<218ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<218ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<218ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<218ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<218ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<218ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<218ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<218ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<218ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}