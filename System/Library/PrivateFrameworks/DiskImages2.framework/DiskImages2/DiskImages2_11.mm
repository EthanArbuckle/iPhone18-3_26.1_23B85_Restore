uint64_t di_log::logger_buf<di_log::log_printer<2631ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<2631ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<2631ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BF01F8;
  di_log::logger_buf<di_log::log_printer<2631ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<2631ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<2631ul>::log((a1 + 72), __p);
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

void sub_248EE47F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<2631ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<2631ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<2631ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 2631;
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
      v22 = 2631;
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

void non-virtual thunk todi_log::logger<di_log::log_printer<2641ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2641ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2641ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<2641ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2641ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2641ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<2641ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2641ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<2641ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<2641ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<2641ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BF0418;
  di_log::logger_buf<di_log::log_printer<2641ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<2641ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<2641ul>::log((a1 + 72), __p);
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

void sub_248EE4F88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<2641ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<2641ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<2641ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 2641;
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
      v22 = 2641;
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

void non-virtual thunk todi_log::logger<di_log::log_printer<2734ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2734ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2734ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<2734ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2734ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2734ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<2734ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2734ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<2734ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<2734ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<2734ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BF0638;
  di_log::logger_buf<di_log::log_printer<2734ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<2734ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<2734ul>::log((a1 + 72), __p);
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

void sub_248EE5720(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<2734ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<2734ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<2734ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 2734;
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
      v22 = 2734;
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

void non-virtual thunk todi_log::logger<di_log::log_printer<2751ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2751ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2751ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<2751ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2751ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2751ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<2751ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2751ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<2751ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<2751ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<2751ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BF0858;
  di_log::logger_buf<di_log::log_printer<2751ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<2751ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<2751ul>::log((a1 + 72), __p);
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

void sub_248EE5EB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<2751ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<2751ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<2751ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 2751;
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
      v22 = 2751;
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

void non-virtual thunk todi_log::logger<di_log::log_printer<2767ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2767ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2767ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<2767ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2767ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2767ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<2767ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2767ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<2767ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<2767ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<2767ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BF0A78;
  di_log::logger_buf<di_log::log_printer<2767ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<2767ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<2767ul>::log((a1 + 72), __p);
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

void sub_248EE6650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<2767ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<2767ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<2767ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 2767;
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
      v22 = 2767;
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

void *std::vector<ref::tagged_weak_ptr<di_asif::details::table,unsigned long long>>::vector[abi:ne200100](void *result, unint64_t a2)
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

void sub_248EE68F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<unsigned long long>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_248EE696C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned long long>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::allocator<unsigned long long>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<iovec>::__throw_length_error[abi:ne200100]();
}

void std::allocator<unsigned long long>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *di_log::logger<di_log::log_printer<158ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<158ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF0B40;
  a1[45] = &unk_285BF0C40;
  a1[46] = &unk_285BF0C68;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF0B40;
  a1[45] = &unk_285BF0BC8;
  a1[46] = &unk_285BF0BF0;
  return a1;
}

void sub_248EE6B10(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<158ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<158ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<158ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<158ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BF0CD8;
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

void sub_248EE6C28(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<158ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BF0CD8;
  di_log::logger_buf<di_log::log_printer<158ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<158ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<158ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<158ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<158ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<158ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<158ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<158ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<158ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<158ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<158ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<158ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<158ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<158ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<158ul>::log((a1 + 72), __p);
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

void sub_248EE71CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<158ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 158;
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
      v22 = 158;
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

void DiskImagesHeaderSizeException::~DiskImagesHeaderSizeException(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x24C1ED730);
}

void DiskImagesHeaderSizeException::reason(DiskImagesHeaderSizeException *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = (*(*this + 16))(this);
  std::string::basic_string[abi:ne200100]<0>(v18, v4);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v12);
  if ((v19 & 0x80u) == 0)
  {
    v5 = v18;
  }

  else
  {
    v5 = v18[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v6 = v19;
  }

  else
  {
    v6 = v18[1];
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, v5, v6);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " header size ", 13);
  v9 = MEMORY[0x24C1ED3E0](v8, *(this + 2));
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ", but file size only ", 21);
  MEMORY[0x24C1ED3E0](v10, *(this + 3));
  std::stringbuf::str[abi:ne200100](&v14, a2);
  v12[0] = *MEMORY[0x277D82818];
  v11 = *(MEMORY[0x277D82818] + 72);
  *(v12 + *(v12[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v13 = v11;
  v14 = MEMORY[0x277D82878] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v15);
  std::iostream::~basic_iostream();
  MEMORY[0x24C1ED6A0](&v17);
  if (v19 < 0)
  {
    operator delete(v18[0]);
  }
}

void non-virtual thunk todi_log::logger<di_log::log_printer<3061ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3061ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3061ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<3061ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3061ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3061ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<3061ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3061ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<3061ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<3061ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<3061ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BF0F28;
  di_log::logger_buf<di_log::log_printer<3061ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<3061ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<3061ul>::log((a1 + 72), __p);
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

void sub_248EE7B88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<3061ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<3061ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<3061ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 3061;
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
      v22 = 3061;
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

void non-virtual thunk todi_log::logger<di_log::log_printer<3167ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3167ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3167ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<3167ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3167ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3167ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<3167ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3167ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<3167ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<3167ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<3167ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BF1148;
  di_log::logger_buf<di_log::log_printer<3167ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<3167ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<3167ul>::log((a1 + 72), __p);
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

void sub_248EE8320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<3167ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<3167ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<3167ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 3167;
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
      v22 = 3167;
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

void non-virtual thunk todi_log::logger<di_log::log_printer<3164ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3164ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3164ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<3164ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3164ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3164ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<3164ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3164ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<3164ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<3164ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<3164ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BF1368;
  di_log::logger_buf<di_log::log_printer<3164ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<3164ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<3164ul>::log((a1 + 72), __p);
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

void sub_248EE8AB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<3164ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<3164ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<3164ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 3164;
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
      v22 = 3164;
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

void std::vector<sg_entry>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<sg_entry>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<sg_entry>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 112)
  {
    v4 = *(i - 104);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<3203ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3203ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3203ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<3203ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3203ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3203ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<3203ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3203ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<3203ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<3203ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<3203ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BF1588;
  di_log::logger_buf<di_log::log_printer<3203ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<3203ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<3203ul>::log((a1 + 72), __p);
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

void sub_248EE92F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<3203ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<3203ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<3203ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 3203;
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
      v22 = 3203;
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

void non-virtual thunk todi_log::logger<di_log::log_printer<3200ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3200ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3200ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<3200ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3200ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3200ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<3200ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3200ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<3200ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<3200ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<3200ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BF17A8;
  di_log::logger_buf<di_log::log_printer<3200ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<3200ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<3200ul>::log((a1 + 72), __p);
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

void sub_248EE9A88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<3200ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<3200ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<3200ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 3200;
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
      v22 = 3200;
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

uint64_t std::vector<sg_entry>::__emplace_back_slow_path<std::shared_ptr<char> const,Wrapper<unsigned long long,std::integral_constant<BOOL,true>,be_type> const&,unsigned long long &,Wrapper<unsigned long long,std::integral_constant<BOOL,true>,be_type> const&>(uint64_t *a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4);
  v6 = v5 + 1;
  if ((v5 + 1) > 0x249249249249249)
  {
    std::vector<iovec>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v6)
  {
    v6 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v9 = 0x249249249249249;
  }

  else
  {
    v9 = v6;
  }

  v24 = a1;
  if (v9)
  {
    std::allocator<sg_entry>::allocate_at_least[abi:ne200100](a1, v9);
  }

  v10 = 112 * v5;
  v21 = 0;
  v22 = v10;
  *(&v23 + 1) = 0;
  v11 = *a3;
  v12 = *a4;
  v13 = *a5;
  v14 = a2[1];
  *v10 = *a2;
  *(v10 + 8) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  *(112 * v5 + 0x10) = v11;
  *(112 * v5 + 0x18) = v12;
  *(112 * v5 + 0x20) = v13;
  *(112 * v5 + 0x28) = 0;
  *(112 * v5 + 0x30) = 0;
  *(112 * v5 + 0x68) = 0;
  *&v23 = v10 + 112;
  v15 = a1[1];
  v16 = v10 + *a1 - v15;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<sg_entry>,sg_entry*>(a1, *a1, v15, v16);
  v17 = *a1;
  *a1 = v16;
  v18 = a1[2];
  v20 = v23;
  *(a1 + 1) = v23;
  *&v23 = v17;
  *(&v23 + 1) = v18;
  v21 = v17;
  v22 = v17;
  std::__split_buffer<sg_entry>::~__split_buffer(&v21);
  return v20;
}

void sub_248EE9EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<sg_entry>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<sg_entry>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<sg_entry>,sg_entry*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    v6 = a2;
    do
    {
      sg_entry::sg_entry(a4, v6);
      v6 += 112;
      a4 = v12 + 112;
      v12 += 112;
    }

    while (v6 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      v7 = *(v5 + 8);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      v5 += 112;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<sg_entry>,sg_entry*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<sg_entry>,sg_entry*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<sg_entry>,sg_entry*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<sg_entry>,sg_entry*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 104);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v1 -= 112;
  }
}

void **std::__split_buffer<sg_entry>::~__split_buffer(void **a1)
{
  std::__split_buffer<sg_entry>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<sg_entry>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 112;
    v4 = *(v1 - 104);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 112;
    }
  }
}

uint64_t std::vector<di_asif::meta_header>::__emplace_back_slow_path<di_asif::details::ContextASIF &,di_asif::details::dir &,unsigned long long>(uint64_t *a1, di_asif::details::ContextASIF *a2, di_asif::details::dir *a3, uint64_t *a4)
{
  v4 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 2);
  v5 = v4 + 1;
  if ((v4 + 1) > 0x924924924924924)
  {
    std::vector<iovec>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 2) > v5)
  {
    v5 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 2);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 2)) >= 0x492492492492492)
  {
    v8 = 0x924924924924924;
  }

  else
  {
    v8 = v5;
  }

  v15 = a1;
  if (v8)
  {
    std::allocator<di_asif::meta_header>::allocate_at_least[abi:ne200100](a1, v8);
  }

  __p = 0;
  v12 = 28 * v4;
  v13 = 28 * v4;
  v14 = 0;
  di_asif::meta_header::meta_header((28 * v4), a2, a3, *a4);
  v13 = 28 * v4 + 28;
  std::vector<di_asif::meta_header>::__swap_out_circular_buffer(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 = (v13 - v12 - 28) % 0x1CuLL + v12;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_248EEA264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<di_asif::meta_header>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      *v5 = 0x16174656DLL;
      *(v5 + 8) = *(v2 + 8);
      *(v5 + 12) = *(v2 + 12);
      v2 += 28;
      v5 += 28;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v6 = result[1];
  result[1] = a2[2];
  a2[2] = v6;
  v7 = result[2];
  result[2] = a2[3];
  a2[3] = v7;
  *a2 = a2[1];
  return result;
}

void std::allocator<di_asif::meta_header>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x924924924924925)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<di_asif::meta_header>::__emplace_back_slow_path<di_asif::details::ContextASIF &,di_asif::details::dir &,unsigned long long const&>(uint64_t *a1, di_asif::details::ContextASIF *a2, di_asif::details::dir *a3, uint64_t *a4)
{
  v4 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 2);
  v5 = v4 + 1;
  if ((v4 + 1) > 0x924924924924924)
  {
    std::vector<iovec>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 2) > v5)
  {
    v5 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 2);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 2)) >= 0x492492492492492)
  {
    v8 = 0x924924924924924;
  }

  else
  {
    v8 = v5;
  }

  v15 = a1;
  if (v8)
  {
    std::allocator<di_asif::meta_header>::allocate_at_least[abi:ne200100](a1, v8);
  }

  __p = 0;
  v12 = 28 * v4;
  v13 = 28 * v4;
  v14 = 0;
  di_asif::meta_header::meta_header((28 * v4), a2, a3, *a4);
  v13 = 28 * v4 + 28;
  std::vector<di_asif::meta_header>::__swap_out_circular_buffer(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 = (v13 - v12 - 28) % 0x1CuLL + v12;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_248EEA508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<DiskImageASIF::get_flush_fn(void)::{lambda(di_asif::details::ContextASIF &)#1},std::allocator<DiskImageASIF::get_flush_fn(void)::{lambda(di_asif::details::ContextASIF &)#1}>,int ()(di_asif::details::ContextASIF &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285BF1888;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<DiskImageASIF::get_flush_fn(void)::{lambda(di_asif::details::ContextASIF &)#1},std::allocator<DiskImageASIF::get_flush_fn(void)::{lambda(di_asif::details::ContextASIF &)#1}>,int ()(di_asif::details::ContextASIF &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

_BYTE *boost::uuids::to_chars<char *>(uint64_t a1, _BYTE *a2)
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

xpc_object_t DIAnalytics::createXPCDictionary(void *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v5 = *a1;
  v3 = a1 + 1;
  v4 = v5;
  if (v5 != v3)
  {
    do
    {
      v6 = (v4 + 4);
      v7 = v4 + 7;
      v8 = *(v4 + 20);
      if (v8 == 1)
      {
        if (*(v4 + 55) < 0)
        {
          v6 = *v6;
        }

        xpc_dictionary_set_uint64(v2, v6, *v7);
      }

      else if (!v8)
      {
        if (*(v4 + 55) < 0)
        {
          v6 = *v6;
        }

        if (*(v4 + 79) < 0)
        {
          v7 = *v7;
        }

        xpc_dictionary_set_string(v2, v6, v7);
      }

      v9 = v4[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v4[2];
          v11 = *v10 == v4;
          v4 = v10;
        }

        while (!v11);
      }

      v4 = v10;
    }

    while (v10 != v3);
  }

  return v2;
}

void *di_log::logger<di_log::log_printer<39ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<39ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF1920;
  a1[45] = &unk_285BF1A20;
  a1[46] = &unk_285BF1A48;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF1920;
  a1[45] = &unk_285BF19A8;
  a1[46] = &unk_285BF19D0;
  return a1;
}

void sub_248EEA8DC(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<39ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<39ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<39ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<39ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BF1AB8;
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

void sub_248EEA9F4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<39ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BF1AB8;
  di_log::logger_buf<di_log::log_printer<39ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<39ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<39ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<39ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<39ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<39ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<39ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<39ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<39ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<39ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<39ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<39ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<39ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<39ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<39ul>::log((a1 + 72), __p);
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

void sub_248EEAF98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<39ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 39;
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
      v22 = 39;
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

void non-virtual thunk todi_log::logger<di_log::log_printer<3573ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3573ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3573ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<3573ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3573ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3573ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<3573ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3573ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<3573ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<3573ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<3573ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BF1CD8;
  di_log::logger_buf<di_log::log_printer<3573ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<3573ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<3573ul>::log((a1 + 72), __p);
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

void sub_248EEB6F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<3573ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<3573ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<3573ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 3573;
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
      v22 = 3573;
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

void non-virtual thunk todi_log::logger<di_log::log_printer<3585ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3585ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3585ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<3585ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3585ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3585ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<3585ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3585ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<3585ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<3585ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<3585ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BF1EF8;
  di_log::logger_buf<di_log::log_printer<3585ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<3585ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<3585ul>::log((a1 + 72), __p);
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

void sub_248EEBE8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<3585ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<3585ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<3585ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 3585;
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
      v22 = 3585;
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

void non-virtual thunk todi_log::logger<di_log::log_printer<3590ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3590ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3590ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<3590ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3590ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3590ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<3590ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3590ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<3590ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<3590ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<3590ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BF2118;
  di_log::logger_buf<di_log::log_printer<3590ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<3590ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<3590ul>::log((a1 + 72), __p);
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

void sub_248EEC624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<3590ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<3590ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<3590ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 3590;
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
      v22 = 3590;
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

void non-virtual thunk todi_log::logger<di_log::log_printer<3596ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3596ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3596ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<3596ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3596ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3596ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<3596ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3596ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<3596ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<3596ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<3596ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BF2338;
  di_log::logger_buf<di_log::log_printer<3596ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<3596ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<3596ul>::log((a1 + 72), __p);
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

void sub_248EECDBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<3596ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<3596ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<3596ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 3596;
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
      v22 = 3596;
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

void non-virtual thunk todi_log::logger<di_log::log_printer<3600ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3600ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3600ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<3600ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3600ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3600ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<3600ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3600ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<3600ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<3600ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<3600ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BF2558;
  di_log::logger_buf<di_log::log_printer<3600ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<3600ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<3600ul>::log((a1 + 72), __p);
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

void sub_248EED554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<3600ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<3600ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<3600ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 3600;
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
      v22 = 3600;
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

atomic_ullong *ref::Allocator<di_asif::details::map_element,unsigned long long>::allocate@<X0>(uint64_t a1@<X0>, std::unique_lock<std::mutex>::mutex_type *a2@<X1>, char a3@<W2>, unint64_t *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v22 = a2;
  ref::Allocator<di_asif::details::map_element,unsigned long long>::add_tag(a1, a2, a3, &v19);
  if (v19 && (*(v19 + 344) & 1) == 0 || v19 && (*(v19 + 344) & 1) != 0)
  {
LABEL_5:
    *a4 = 0;
    v7 = atomic_exchange(&v19, 0);
  }

  else
  {
    v8 = *(a1 + 736);
    if ((v8 & 1) == 0 || v20 == (a1 + 760))
    {
      *a4 = 0;
      goto LABEL_16;
    }

    while ((v8 & 2) == 0)
    {
      ref::Allocator<di_asif::details::map_element,unsigned long long>::allocate_from_empty_pool(a1, a2, &v17);
      v21 = v17;
      ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::operator=(&v19, &v18);
      ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(&v18);
      if (v19 && (*(v19 + 344) & 1) == 0)
      {
        goto LABEL_23;
      }

      min = ref::Allocator<di_asif::details::map_element,unsigned long long>::extract_min(a1);
      if (min)
      {
        v21 = min;
        ref::Allocator<di_asif::details::map_element,unsigned long long>::insert_elem(a1, min, a2, &v17);
        ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::operator=(&v19, &v17);
        ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(&v17);
LABEL_23:
        std::mutex::lock((a1 + 776));
        v14 = std::__tree<std::__value_type<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *>>>::__emplace_hint_unique_key_args<unsigned long long,unsigned long long const&,ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *&>((a1 + 752), v20, &v22);
        if ((v15 & 1) == 0)
        {
          *(v14 + 40) = v21;
        }

        std::condition_variable::notify_all((a1 + 840));
        std::mutex::unlock((a1 + 776));
        v23[0] = 0;
        v24 = 0;
        ref::Allocator<di_asif::details::map_element,unsigned long long>::run_failed_dtors_list(a1, 0, v23);
        if (v24 == 1)
        {
          std::__function::__value_func<BOOL ()(ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *,unsigned long long)>::~__value_func[abi:ne200100](v23);
        }

        goto LABEL_5;
      }

      v8 = *(a1 + 736);
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

      v16 = *(a1 + 432);
      if (v16)
      {
        *(a1 + 440) = atomic_fetch_add_explicit(v16, 1uLL, memory_order_relaxed);
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
  result = ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(&v19);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248EED9A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ref::Allocator<di_asif::details::map_element,unsigned long long>::add_tag(uint64_t a1@<X0>, std::unique_lock<std::mutex>::mutex_type *a2@<X1>, char a3@<W2>, unint64_t *a4@<X8>)
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = (a1 + 776);
  v9 = (a1 + 760);
  v10 = a1 + 1008;
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
        ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(&__lk);
LABEL_15:
        v14 = 1;
        goto LABEL_16;
      }
    }

    __lk.__m_ = a2;
    *&__lk.__owns_ = v10;
    v11 = std::__tree<std::__value_type<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *>>(a1 + 752, &__lk);
    v12 = v11;
    if (v13)
    {
      __lk.__m_ = 0;
      *a4 = 0;
      a4[1] = v11;
      atomic_store(atomic_exchange(&__lk, 0), a4);
      ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(&__lk);
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
      ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::tagged_ptr(&__lk, (v20 + 360));
      if (!__lk.__m_ || (__lk.__m_[5].__m_.__opaque[16] & 1) != 0)
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
          ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(&__lk);
          v39[0] = &unk_285BF25D8;
          v39[1] = a2;
          v39[3] = v39;
          v40 = 1;
          v22 = ref::Allocator<di_asif::details::map_element,unsigned long long>::run_failed_dtors_list(a1, 0, v39);
          if (v40 == 1)
          {
            std::__function::__value_func<BOOL ()(ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *,unsigned long long)>::~__value_func[abi:ne200100](v39);
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

              v33 = *(a1 + 432);
              v32 = v35;
              if (v33)
              {
                *(a1 + 440) = atomic_fetch_add_explicit(v33, 1uLL, memory_order_relaxed);
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
            ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(&__lk);
            goto LABEL_15;
          }

          atomic_fetch_add((a1 + 592), 1uLL);
          __lk.__m_ = ref::details::_get_tagged_ptr_lock(v20, v21);
          __lk.__owns_ = 1;
          std::mutex::lock(__lk.__m_);
          if ((*(v20 + 368) & 1) == 0 && *(v20 + 40) == -1)
          {
            tagged_ptr_cond = ref::details::_get_tagged_ptr_cond(v20, v23);
            std::condition_variable::wait(tagged_ptr_cond, &__lk);
          }

          atomic_fetch_add((a1 + 592), 0xFFFFFFFFFFFFFFFFLL);
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
        ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(&v36);
      }

      ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(&__lk);
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
            v30 = *(v29 + 360);
            if (v30)
            {
              if ((*(v30 + 344) & 1) == 0)
              {
                break;
              }
            }
          }

          if ((*(a1 + 736) & 1) == 0)
          {
            break;
          }

          std::condition_variable::wait((a1 + 840), &v38);
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

  while ((*(a1 + 736) & 1) != 0);
  v38.__m_ = 0;
  *a4 = 0;
  a4[1] = v9;
  atomic_store(atomic_exchange(&v38, 0), a4);
  ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(&v38);
LABEL_65:
  v34 = *MEMORY[0x277D85DE8];
}

void sub_248EEDE54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12, std::mutex *a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
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

atomic_ullong *ref::Allocator<di_asif::details::map_element,unsigned long long>::allocate_from_empty_pool@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t **a3@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  v11 = 0;
  std::mutex::lock((a1 + 520));
  v6 = *(a1 + 512);
  if (v6)
  {
    v7 = *(*(*(a1 + 480) + ((*(a1 + 504) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 504) & 0x1FFLL));
    ++*(a1 + 504);
    *(a1 + 512) = v6 - 1;
    std::deque<std::atomic<DiskImage::Context *>>::__maybe_remove_front_spare[abi:ne200100](a1 + 472, 1);
    ref::Allocator<di_asif::details::map_element,unsigned long long>::insert_elem(a1, v7, a2, v12);
    ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::operator=(&v11, v12);
    ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(v12);
  }

  else
  {
    v7 = 0;
  }

  std::mutex::unlock((a1 + 520));
  v8 = atomic_load((a1 + 608));
  if (v8 + v6 >= *(a1 + 464))
  {
    v13[0] = 0;
    v14 = 0;
    ref::Allocator<di_asif::details::map_element,unsigned long long>::run_failed_dtors_list(a1, 0, v13);
    if (v14 == 1)
    {
      std::__function::__value_func<BOOL ()(ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *,unsigned long long)>::~__value_func[abi:ne200100](v13);
    }
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 0x40000000;
    v12[2] = ___ZN3ref9AllocatorIN7di_asif7details11map_elementEyE9evict_lruEv_block_invoke;
    v12[3] = &__block_descriptor_tmp_1707;
    v12[4] = a1;
    gcd::gcd_queue::async((a1 + 744), v12);
  }

  *a3 = v7;
  a3[1] = 0;
  atomic_store(atomic_exchange(&v11, 0), a3 + 1);
  result = ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(&v11);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248EEE090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, atomic_ullong a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a19 == 1)
  {
    std::__function::__value_func<BOOL ()(ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *,unsigned long long)>::~__value_func[abi:ne200100](&a15);
  }

  ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(&a9);
  _Unwind_Resume(a1);
}

unint64_t ref::Allocator<di_asif::details::map_element,unsigned long long>::extract_min(void *a1)
{
  v1 = atomic_load(a1 + 75);
  v2 = a1[57];
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
    v6 = a1[73];
    v8 = *(v6 + 8 * v3);
    if (v8 && v1 - *(v8 + 344) < v7)
    {
      v5 = *(v6 + 8 * v3);
      v7 = v1 - *(v8 + 344);
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
  atomic_compare_exchange_strong((a1[73] + 8 * v4), &v9, 0);
  if (v9 != v5 || (ref::Allocator<di_asif::details::map_element,unsigned long long>::drop_elem(a1, v5, 0x101uLL, 0) & 1) == 0)
  {
    return 0;
  }

  return v5;
}

atomic_ullong *ref::Allocator<di_asif::details::map_element,unsigned long long>::insert_elem@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long>::mark_used(a2, a3);
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

    v10 = a2[42];
    if (v10)
    {
      a2[43] = atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_5:
    v7 = 0;
  }

  atomic_store(v7, &v14);
  if (*(a1 + 456))
  {
    v11 = 0;
    while (1)
    {
      v12 = 0;
      atomic_compare_exchange_strong((*(a1 + 584) + 8 * v11), &v12, a2);
      if (!v12)
      {
        break;
      }

      if (*(a1 + 456) <= ++v11)
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

  return ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(&v14);
}

uint64_t ref::Allocator<di_asif::details::map_element,unsigned long long>::run_failed_dtors_list(uint64_t a1, int a2, uint64_t a3)
{
  if (!*(a1 + 968))
  {
    return 0;
  }

  std::mutex::lock((a1 + 888));
  if (*(a1 + 968))
  {
    v6 = *(a1 + 960);
    if (v6 == (a1 + 952))
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
        if ((ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::reset_val(v9 + 8, v6[3], v7) & 1) != 0 || a2 && (*(a3 + 32) != 1 || std::function<BOOL ()(ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *,unsigned long long)>::operator()(a3, v9, v6[3])))
        {
          tagged_ptr_lock = ref::details::_get_tagged_ptr_lock(v9, v10);
          std::mutex::lock(tagged_ptr_lock);
          atomic_fetch_and((v9 + 368), 0xFFFFFFFB);
          std::mutex::unlock(tagged_ptr_lock);
          v12 = *v6;
          v13 = v6[1];
          *(v12 + 8) = v13;
          *v13 = v12;
          --*(a1 + 968);
          operator delete(v6);
          v6 = v13;
        }

        else
        {
          if (*(a3 + 32) != 1 || std::function<BOOL ()(ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *,unsigned long long)>::operator()(a3, v9, v6[3]))
          {
            v8 = 0xFFFFFFFFLL;
          }

          v6 = v6[1];
        }
      }

      while (v6 != (a1 + 952));
    }
  }

  else
  {
    v8 = 0;
  }

  std::mutex::unlock((a1 + 888));
  return v8;
}

void *std::__tree<std::__value_type<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *>>(uint64_t a1, unint64_t *a2)
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

uint64_t std::__function::__func<ref::Allocator<di_asif::details::map_element,unsigned long long>::add_tag(unsigned long long,BOOL)::{lambda(ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *,unsigned long long)#1},std::allocator<ref::Allocator<di_asif::details::map_element,unsigned long long>::add_tag(unsigned long long,BOOL)::{lambda(ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *,unsigned long long)#1}>,BOOL ()(ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *,unsigned long long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285BF25D8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<ref::Allocator<di_asif::details::map_element,unsigned long long>::add_tag(unsigned long long,BOOL)::{lambda(ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *,unsigned long long)#1},std::allocator<ref::Allocator<di_asif::details::map_element,unsigned long long>::add_tag(unsigned long long,BOOL)::{lambda(ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *,unsigned long long)#1}>,BOOL ()(ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *,unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t *ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::tagged_ptr(unint64_t *a1, unint64_t *a2, int a3)
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

    v8 = a2[41];
    if (v8)
    {
      a2[42] = atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
    }

    if (a3 && !ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::wait_for_ready(a2))
    {
      if (atomic_fetch_add(v3, 0xFFFFFFFFFFFFFFFFLL) == 1)
      {
        v9 = v3[4];
        v3[4] = -1;
        ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::reset_val(v3, v9, 1u);
      }

      goto LABEL_6;
    }
  }

LABEL_7:
  atomic_store(v3, a1);
  return a1;
}

uint64_t ___ZN3ref9AllocatorIN7di_asif7details11map_elementEyE9evict_lruEv_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  min = ref::Allocator<di_asif::details::map_element,unsigned long long>::extract_min(v1);
  if (min)
  {
    ref::Allocator<di_asif::details::map_element,unsigned long long>::add_to_free_pool(v1, min);
  }

  v5[0] = 0;
  v6 = 0;
  result = ref::Allocator<di_asif::details::map_element,unsigned long long>::run_failed_dtors_list(v1, 0, v5);
  if (v6 == 1)
  {
    result = std::__function::__value_func<BOOL ()(ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *,unsigned long long)>::~__value_func[abi:ne200100](v5);
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248EEE700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a13 == 1)
  {
    std::__function::__value_func<BOOL ()(ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *,unsigned long long)>::~__value_func[abi:ne200100](&a9);
  }

  _Unwind_Resume(exception_object);
}

void ref::Allocator<di_asif::details::map_element,unsigned long long>::add_to_free_pool(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  std::mutex::lock((a1 + 520));
  std::deque<ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *,std::allocator<ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *>>::push_back((a1 + 472), &v3);
  std::mutex::unlock((a1 + 520));
}

void *std::deque<ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *,std::allocator<ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *>>::push_back(void *result, void *a2)
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
    result = std::deque<ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *,std::allocator<ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *>>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *std::deque<ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *,std::allocator<ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *>>::__add_back_capacity(void *a1)
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

void sub_248EEE98C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ref::Allocator<di_asif::details::map_element,unsigned long long>::drop_elem(uint64_t a1, unint64_t a2, unint64_t a3, atomic_ullong *a4)
{
  v38 = *MEMORY[0x277D85DE8];
  atomic_fetch_add((a1 + 608), 1uLL);
  if (a3)
  {
    atomic_fetch_add((a1 + 592), 1uLL);
  }

  atomic_fetch_or((a2 + 368), 2u);
  ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset((a2 + 360));
  if (a4)
  {
    ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(a4);
  }

  if (a3)
  {
    v8 = atomic_load((a2 + 368));
    if ((v8 & 4) == 0)
    {
      v9 = (a3 & 0x100) >> 8;
      do
      {
        if (*(a2 + 368))
        {
          break;
        }

        if (v9)
        {
          std::mutex::lock((a1 + 520));
          v10 = *(a1 + 512);
          std::mutex::unlock((a1 + 520));
          if (v10)
          {
            break;
          }
        }

        v36[0] = 0;
        v37 = 0;
        v12 = ref::Allocator<di_asif::details::map_element,unsigned long long>::run_failed_dtors_list(a1, (a3 >> 16) & 1, v36);
        if (v37 == 1)
        {
          std::__function::__value_func<BOOL ()(ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *,unsigned long long)>::~__value_func[abi:ne200100](v36);
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
          std::condition_variable::wait_until<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>,ref::Allocator<di_asif::details::map_element,unsigned long long>::drop_elem(ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *,ref::Allocator<di_asif::details::map_element,unsigned long long>::drop_elem_options,ref::tagged_ptr<di_asif::details::map_element,unsigned long long> *)::{lambda(void)#1}>(tagged_ptr_cond, &v32, &v31, &v29);
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
          v15 = atomic_load((a2 + 368));
          if ((v15 & 4) == 0)
          {
            v16 = v14;
            do
            {
              if (*(a2 + 368))
              {
                break;
              }

              if (v9)
              {
                std::mutex::lock((a1 + 520));
                v17 = *(a1 + 512);
                std::mutex::unlock((a1 + 520));
                if (v17)
                {
                  break;
                }
              }

              std::condition_variable::wait(v16, &v29);
              v18 = atomic_load((a2 + 368));
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
        v23 = *(a2 + 368);
        if (a3 & 0x100) == 0 || (v23)
        {
          if (v23)
          {
            goto LABEL_35;
          }
        }

        else if (*(a1 + 512))
        {
          goto LABEL_35;
        }

        v24 = atomic_load((a2 + 368));
      }

      while ((v24 & 4) == 0);
    }
  }

  v25 = atomic_load((a2 + 368));
  if ((v25 & 4) != 0 && (a3 & 0x10000) != 0)
  {
    v34[0] = &unk_285BF2668;
    v34[1] = a2;
    v34[3] = v34;
    v35 = 1;
    ref::Allocator<di_asif::details::map_element,unsigned long long>::run_failed_dtors_list(a1, 1, v34);
    if (v35 == 1)
    {
      std::__function::__value_func<BOOL ()(ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *,unsigned long long)>::~__value_func[abi:ne200100](v34);
    }
  }

LABEL_35:
  if (a3)
  {
    atomic_fetch_add((a1 + 592), 0xFFFFFFFFFFFFFFFFLL);
  }

  v26 = atomic_fetch_and((a2 + 368), 0xFFFFFFFD);
  v27 = *MEMORY[0x277D85DE8];
  return v26 & 1;
}

void sub_248EEECAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, std::mutex *a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a20 == 1)
  {
    std::__function::__value_func<BOOL ()(ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *,unsigned long long)>::~__value_func[abi:ne200100](&a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::condition_variable::wait_until<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>,ref::Allocator<di_asif::details::map_element,unsigned long long>::drop_elem(ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *,ref::Allocator<di_asif::details::map_element,unsigned long long>::drop_elem_options,ref::tagged_ptr<di_asif::details::map_element,unsigned long long> *)::{lambda(void)#1}>(std::condition_variable *a1, std::unique_lock<std::mutex> *a2, uint64_t *a3, uint64_t a4)
{
  do
  {
    v8 = *(a4 + 16);
    v9 = atomic_load((*a4 + 368));
    if ((v9 & 4) != 0)
    {
      return 1;
    }

    if (*(*a4 + 368))
    {
      return 1;
    }

    if (*(a4 + 8) == 1)
    {
      std::mutex::lock((v8 + 520));
      v10 = *(v8 + 512);
      std::mutex::unlock((v8 + 520));
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
  v15 = atomic_load((*a4 + 368));
  if (v15 & 4) != 0 || (*(*a4 + 368))
  {
    return 1;
  }

  if (*(a4 + 8) != 1)
  {
    return 0;
  }

  std::mutex::lock((v14 + 520));
  v16 = *(v14 + 512) != 0;
  std::mutex::unlock((v14 + 520));
  return v16;
}

uint64_t std::__function::__func<ref::Allocator<di_asif::details::map_element,unsigned long long>::drop_elem(ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *,ref::Allocator<di_asif::details::map_element,unsigned long long>::drop_elem_options,ref::tagged_ptr<di_asif::details::map_element,unsigned long long> *)::{lambda(ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *,unsigned long long)#1},std::allocator<ref::Allocator<di_asif::details::map_element,unsigned long long>::drop_elem(ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *,ref::Allocator<di_asif::details::map_element,unsigned long long>::drop_elem_options,ref::tagged_ptr<di_asif::details::map_element,unsigned long long> *)::{lambda(ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *,unsigned long long)#1}>,BOOL ()(ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *,unsigned long long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285BF2668;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<ref::Allocator<di_asif::details::map_element,unsigned long long>::drop_elem(ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *,ref::Allocator<di_asif::details::map_element,unsigned long long>::drop_elem_options,ref::tagged_ptr<di_asif::details::map_element,unsigned long long> *)::{lambda(ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *,unsigned long long)#1},std::allocator<ref::Allocator<di_asif::details::map_element,unsigned long long>::drop_elem(ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *,ref::Allocator<di_asif::details::map_element,unsigned long long>::drop_elem_options,ref::tagged_ptr<di_asif::details::map_element,unsigned long long> *)::{lambda(ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *,unsigned long long)#1}>,BOOL ()(ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *,unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

atomic_ullong *ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long>::mark_used(uint64_t a1, uint64_t a2)
{
  atomic_store(0, (a1 + 368));
  v3 = (a1 + 8);
  ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::init(a1 + 8, a2);
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

    v6 = *(a1 + 336);
    v5 = v3;
    if (v6)
    {
      *(a1 + 344) = atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
      v5 = v3;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_9:
  atomic_store(v5, &v9);
  ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::operator=((a1 + 360), &v9);
  result = ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(&v9);
  if (atomic_fetch_add(v3, 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    v8 = *(a1 + 40);
    *(a1 + 40) = -1;
    return ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::reset_val(v3, v8, 1u);
  }

  return result;
}

uint64_t ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::init(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = a2;
  *(a1 + 344) = 0;
  atomic_store(1uLL, a1);
  atomic_store(0, (a1 + 8));
  atomic_store(0, (a1 + 16));
  result = std::__optional_destruct_base<di_asif::details::map_element,false>::reset[abi:ne200100](a1 + 40);
  v4 = *(a1 + 328);
  if (v4)
  {
    *(a1 + 336) = atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  atomic_store(1u, (a1 + 24));
  __dmb(0xBu);
  return result;
}

uint64_t std::__tree<std::__value_type<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *>>>::__emplace_hint_unique_key_args<unsigned long long,unsigned long long const&,ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *&>(void *a1, void *a2, unint64_t *a3)
{
  v3 = *std::__tree<std::__value_type<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *>>>::__find_equal<unsigned long long>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::__tree<std::__value_type<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *>>>::__find_equal<unsigned long long>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t std::function<BOOL ()(ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *,unsigned long long)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t std::__function::__value_func<BOOL ()(ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *,unsigned long long)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<int ()(unsigned long long)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__optional_destruct_base<di_asif::details::table,false>::reset[abi:ne200100](uint64_t result)
{
  if (*(result + 360) == 1)
  {
    v1 = result;
    std::mutex::~mutex((result + 280));
    std::deque<std::atomic<DiskImage::Context *>>::~deque[abi:ne200100]((v1 + 232));
    std::mutex::~mutex((v1 + 168));
    std::mutex::~mutex((v1 + 104));
    v2 = *(v1 + 72);
    if (v2)
    {
      *(v1 + 80) = v2;
      operator delete(v2);
    }

    std::unique_ptr<di_asif::details::table_entry,std::function<void ()(di_asif::details::table_entry*)>>::reset[abi:ne200100]((v1 + 16), 0);
    result = std::__function::__value_func<void ()(di_asif::details::table_entry *)>::~__value_func[abi:ne200100](v1 + 24);
    *(v1 + 360) = 0;
  }

  return result;
}

uint64_t *di_utils::fixed_vector_t<di_asif::details::table_entry>::fixed_vector_t(uint64_t *a1, uint64_t a2, int a3)
{
  v4 = a2;
  result = di_utils::fixed_vector_buffer_t<di_asif::details::table_entry>::fixed_vector_buffer_t(a1, a2);
  result[5] = *result;
  result[6] = v4;
  if (v4 && a3)
  {
    v6 = 0;
    do
    {
      v7 = (*result + v6);
      *v7 = 0;
      v7[1] = 0;
      v6 += 16;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t *di_utils::fixed_vector_buffer_t<di_asif::details::table_entry>::fixed_vector_buffer_t(uint64_t *a1, uint64_t a2)
{
  v10[4] = *MEMORY[0x277D85DE8];
  *a1 = 0;
  a1[4] = 0;
  v3 = malloc_type_valloc(16 * a2, 0x1000040451B5BE8uLL);
  if (!v3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v7 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v7, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  v8[0] = &unk_285BF26E8;
  v8[3] = v8;
  v9 = v3;
  std::__function::__value_func<void ()(di_asif::details::table_entry *)>::__value_func[abi:ne200100](v10, v8);
  std::unique_ptr<di_asif::details::table_entry,std::function<void ()(di_asif::details::table_entry*)>>::operator=[abi:ne200100](a1, &v9);
  std::unique_ptr<di_asif::details::table_entry,std::function<void ()(di_asif::details::table_entry*)>>::reset[abi:ne200100](&v9, 0);
  std::__function::__value_func<void ()(di_asif::details::table_entry *)>::~__value_func[abi:ne200100](v10);
  std::__function::__value_func<void ()(di_asif::details::table_entry *)>::~__value_func[abi:ne200100](v8);
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_248EEF648(_Unwind_Exception *a1)
{
  std::unique_ptr<di_asif::details::table_entry,std::function<void ()(di_asif::details::table_entry*)>>::reset[abi:ne200100](v1, 0);
  std::__function::__value_func<void ()(di_asif::details::table_entry *)>::~__value_func[abi:ne200100]((v1 + 1));
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<di_asif::details::table_entry,std::function<void ()(di_asif::details::table_entry*)>>::operator=[abi:ne200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  std::unique_ptr<di_asif::details::table_entry,std::function<void ()(di_asif::details::table_entry*)>>::reset[abi:ne200100](a1, v4);
  std::__function::__value_func<void ()(di_asif::details::table_entry *)>::operator=[abi:ne200100]((a1 + 1), (a2 + 1));
  return a1;
}

uint64_t std::__function::__func<di_utils::fixed_vector_buffer_t<di_asif::details::table_entry>::fixed_vector_buffer_t(unsigned long)::{lambda(di_asif::details::table_entry*)#1},std::allocator<di_utils::fixed_vector_buffer_t<di_asif::details::table_entry>::fixed_vector_buffer_t(unsigned long)::{lambda(di_asif::details::table_entry*)#1}>,void ()(di_asif::details::table_entry*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(di_asif::details::table_entry *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(di_asif::details::table_entry *)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<void ()(di_asif::details::table_entry *)>::operator=[abi:ne200100](a1);
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

uint64_t std::__function::__value_func<void ()(di_asif::details::table_entry *)>::operator=[abi:ne200100](uint64_t a1)
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

void *std::deque<unsigned long long>::__add_back_capacity(void *a1)
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
    std::allocator<unsigned long long *>::allocate_at_least[abi:ne200100](a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<unsigned long long *>::emplace_back<unsigned long long *&>(a1, &v10);
}

void sub_248EEFA98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<unsigned long long *>::emplace_back<unsigned long long *&>(void *result, void *a2)
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

      std::allocator<unsigned long long *>::allocate_at_least[abi:ne200100](result, v11);
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

const void **std::__split_buffer<unsigned long long *>::emplace_front<unsigned long long *>(const void **result, void *a2)
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

      std::allocator<unsigned long long *>::allocate_at_least[abi:ne200100](result, v9);
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

void *std::__split_buffer<unsigned long long *>::emplace_back<unsigned long long *>(void *result, void *a2)
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

      std::allocator<unsigned long long *>::allocate_at_least[abi:ne200100](result[4], v11);
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

const void **std::__split_buffer<unsigned long long *>::emplace_front<unsigned long long *&>(const void **result, void *a2)
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

      std::allocator<unsigned long long *>::allocate_at_least[abi:ne200100](result[4], v9);
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

void std::allocator<unsigned long long *>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::make_value<di_asif::details::ContextASIF &,di_asif::details::table &,unsigned long &,unsigned long long &>(uint64_t a1, di_asif::details::ContextASIF *a2, di_asif::details::table *a3, unint64_t *a4, uint64_t *a5)
{
  *(a1 + 336) = **(a1 + 328);
  std::__optional_destruct_base<di_asif::details::map_element,false>::reset[abi:ne200100](a1 + 40);
  di_asif::details::map_element::map_element((a1 + 40), a2, a3, *a4, *a5, 0);
  *(a1 + 224) = 1;
  atomic_store(2u, (a1 + 24));
  if (atomic_load((a1 + 8)))
  {

    std::__cxx_atomic_notify_all((a1 + 24));
  }
}

void sub_248EF0008(void *a1)
{
  __cxa_begin_catch(a1);
  atomic_store(0, (v1 + 24));
  *(v1 + 344) = 1;
  if (atomic_load((v1 + 8)))
  {
    std::__cxx_atomic_notify_all((v1 + 24));
  }

  __cxa_rethrow();
}

void ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::make_value<di_asif::details::ContextASIF &,di_asif::details::table &,unsigned long &,unsigned long long &,BOOL>(uint64_t a1, di_asif::details::ContextASIF *a2, di_asif::details::table *a3, unint64_t *a4, uint64_t *a5, char *a6)
{
  *(a1 + 336) = **(a1 + 328);
  std::__optional_destruct_base<di_asif::details::map_element,false>::reset[abi:ne200100](a1 + 40);
  di_asif::details::map_element::map_element((a1 + 40), a2, a3, *a4, *a5, *a6);
  *(a1 + 224) = 1;
  atomic_store(2u, (a1 + 24));
  if (atomic_load((a1 + 8)))
  {

    std::__cxx_atomic_notify_all((a1 + 24));
  }
}

void sub_248EF0100(void *a1)
{
  __cxa_begin_catch(a1);
  atomic_store(0, (v1 + 24));
  *(v1 + 344) = 1;
  if (atomic_load((v1 + 8)))
  {
    std::__cxx_atomic_notify_all((v1 + 24));
  }

  __cxa_rethrow();
}

uint64_t di_log::logger_buf<di_log::log_printer<497ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BECBC8;
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

void sub_248EF01F0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<528ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BECDE8;
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

void sub_248EF02B8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<637ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BED008;
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

void sub_248EF0380(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<644ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BED228;
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

void sub_248EF0448(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<656ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BED448;
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

void sub_248EF0510(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long> *,ref::tagged_ptr<di_asif::details::map_element,unsigned long long> &)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__function::__value_func<int ()(di_asif::details::map_element &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t ref::Allocator<di_asif::details::table,unsigned long long>::~Allocator(uint64_t a1)
{
  *(a1 + 912) &= ~1u;
  if (*(a1 + 632))
  {
    v3 = 0;
    do
    {
      v4 = atomic_exchange((*(a1 + 760) + 8 * v3), 0);
      if (v4)
      {
        v1 = v1 & 0xFFFFFFFFFF000000 | 0x10001;
        ref::Allocator<di_asif::details::table,unsigned long long>::drop_elem(a1, v4, v1, 0);
        ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset((v4 + 536));
        ref::details::ctrl_blk<di_asif::details::table,unsigned long long>::~ctrl_blk(v4 + 8);
        MEMORY[0x24C1ED730](v4, 0x10E0C4041ADD984);
      }

      ++v3;
    }

    while (*(a1 + 632) > v3);
  }

  gcd::gcd_queue::barrier_sync((a1 + 920), &__block_literal_global_7);
  v5 = *(a1 + 760);
  if (v5)
  {
    MEMORY[0x24C1ED710](v5, 0x20C8093837F09);
  }

  std::mutex::lock((a1 + 696));
  v6 = *(a1 + 656);
  if (*(a1 + 664) != v6)
  {
    v7 = *(a1 + 680);
    v8 = (v6 + 8 * (v7 >> 9));
    v9 = (*v8 + 8 * (v7 & 0x1FF));
    v10 = *(v6 + (((*(a1 + 688) + v7) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a1 + 688) + v7) & 0x1FF);
    while (v9 != v10)
    {
      v11 = *v9;
      if (*v9)
      {
        ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset((v11 + 536));
        ref::details::ctrl_blk<di_asif::details::table,unsigned long long>::~ctrl_blk(v11 + 8);
        MEMORY[0x24C1ED730](v11, 0x10E0C4041ADD984);
      }

      if ((++v9 - *v8) == 4096)
      {
        v12 = v8[1];
        ++v8;
        v9 = v12;
      }
    }
  }

  std::mutex::unlock((a1 + 696));
  std::__function::__value_func<void ()(ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,ref::tagged_ptr<di_asif::details::table,unsigned long long> &)>::~__value_func[abi:ne200100](a1 + 1768);
  std::__function::__value_func<void ()(ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,unsigned long long,diskimage_uio::option_set_ns::option_set<ref::details::deleter_options>)>::~__value_func[abi:ne200100](a1 + 1736);
  ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset((a1 + 1720));
  ref::details::ctrl_blk<di_asif::details::table,unsigned long long>::~ctrl_blk(a1 + 1192);
  std::__function::__value_func<int ()(di_asif::details::table &)>::~__value_func[abi:ne200100](a1 + 1152);
  std::__list_imp<std::pair<ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,unsigned long long>>::clear((a1 + 1128));
  std::mutex::~mutex((a1 + 1064));
  std::condition_variable::~condition_variable((a1 + 1016));
  std::mutex::~mutex((a1 + 952));
  std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>>>::destroy(a1 + 928, *(a1 + 936));
  gcd::gcd_group::~gcd_group((a1 + 920));
  std::condition_variable::~condition_variable((a1 + 864));
  std::mutex::~mutex((a1 + 800));
  std::mutex::~mutex((a1 + 696));
  std::deque<std::atomic<DiskImage::Context *>>::~deque[abi:ne200100]((a1 + 648));

  return ref::Allocator<di_asif::details::table,unsigned long long>::error_ctrl_blk_t::~error_ctrl_blk_t(a1);
}

uint64_t ref::Allocator<di_asif::details::table,unsigned long long>::drop_elem(uint64_t a1, unint64_t a2, unint64_t a3, atomic_ullong *a4)
{
  v38 = *MEMORY[0x277D85DE8];
  atomic_fetch_add((a1 + 784), 1uLL);
  if (a3)
  {
    atomic_fetch_add((a1 + 768), 1uLL);
  }

  atomic_fetch_or((a2 + 544), 2u);
  ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset((a2 + 536));
  if (a4)
  {
    ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(a4);
  }

  if (a3)
  {
    v8 = atomic_load((a2 + 544));
    if ((v8 & 4) == 0)
    {
      v9 = (a3 & 0x100) >> 8;
      do
      {
        if (*(a2 + 544))
        {
          break;
        }

        if (v9)
        {
          std::mutex::lock((a1 + 696));
          v10 = *(a1 + 688);
          std::mutex::unlock((a1 + 696));
          if (v10)
          {
            break;
          }
        }

        v36[0] = 0;
        v37 = 0;
        v12 = ref::Allocator<di_asif::details::table,unsigned long long>::run_failed_dtors_list(a1, (a3 >> 16) & 1, v36);
        if (v37 == 1)
        {
          std::__function::__value_func<BOOL ()(ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,unsigned long long)>::~__value_func[abi:ne200100](v36);
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
          std::condition_variable::wait_until<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>,ref::Allocator<di_asif::details::table,unsigned long long>::drop_elem(ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,ref::Allocator<di_asif::details::table,unsigned long long>::drop_elem_options,ref::tagged_ptr<di_asif::details::table,unsigned long long> *)::{lambda(void)#1}>(tagged_ptr_cond, &v32, &v31, &v29);
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
          v15 = atomic_load((a2 + 544));
          if ((v15 & 4) == 0)
          {
            v16 = v14;
            do
            {
              if (*(a2 + 544))
              {
                break;
              }

              if (v9)
              {
                std::mutex::lock((a1 + 696));
                v17 = *(a1 + 688);
                std::mutex::unlock((a1 + 696));
                if (v17)
                {
                  break;
                }
              }

              std::condition_variable::wait(v16, &v29);
              v18 = atomic_load((a2 + 544));
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
        v23 = *(a2 + 544);
        if (a3 & 0x100) == 0 || (v23)
        {
          if (v23)
          {
            goto LABEL_35;
          }
        }

        else if (*(a1 + 688))
        {
          goto LABEL_35;
        }

        v24 = atomic_load((a2 + 544));
      }

      while ((v24 & 4) == 0);
    }
  }

  v25 = atomic_load((a2 + 544));
  if ((v25 & 4) != 0 && (a3 & 0x10000) != 0)
  {
    v34[0] = &unk_285BF2798;
    v34[1] = a2;
    v34[3] = v34;
    v35 = 1;
    ref::Allocator<di_asif::details::table,unsigned long long>::run_failed_dtors_list(a1, 1, v34);
    if (v35 == 1)
    {
      std::__function::__value_func<BOOL ()(ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,unsigned long long)>::~__value_func[abi:ne200100](v34);
    }
  }

LABEL_35:
  if (a3)
  {
    atomic_fetch_add((a1 + 768), 0xFFFFFFFFFFFFFFFFLL);
  }

  v26 = atomic_fetch_and((a2 + 544), 0xFFFFFFFD);
  v27 = *MEMORY[0x277D85DE8];
  return v26 & 1;
}

void sub_248EF0AF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, std::mutex *a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a20 == 1)
  {
    std::__function::__value_func<BOOL ()(ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,unsigned long long)>::~__value_func[abi:ne200100](&a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ref::Allocator<di_asif::details::table,unsigned long long>::run_failed_dtors_list(uint64_t a1, int a2, uint64_t a3)
{
  if (!*(a1 + 1144))
  {
    return 0;
  }

  std::mutex::lock((a1 + 1064));
  if (*(a1 + 1144))
  {
    v6 = *(a1 + 1136);
    if (v6 == (a1 + 1128))
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
        if ((ref::details::ctrl_blk<di_asif::details::table,unsigned long long>::reset_val(v9 + 8, v6[3], v7) & 1) != 0 || a2 && (*(a3 + 32) != 1 || std::function<BOOL ()(ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,unsigned long long)>::operator()(a3, v9, v6[3])))
        {
          tagged_ptr_lock = ref::details::_get_tagged_ptr_lock(v9, v10);
          std::mutex::lock(tagged_ptr_lock);
          atomic_fetch_and((v9 + 544), 0xFFFFFFFB);
          std::mutex::unlock(tagged_ptr_lock);
          v12 = *v6;
          v13 = v6[1];
          *(v12 + 8) = v13;
          *v13 = v12;
          --*(a1 + 1144);
          operator delete(v6);
          v6 = v13;
        }

        else
        {
          if (*(a3 + 32) != 1 || std::function<BOOL ()(ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,unsigned long long)>::operator()(a3, v9, v6[3]))
          {
            v8 = 0xFFFFFFFFLL;
          }

          v6 = v6[1];
        }
      }

      while (v6 != (a1 + 1128));
    }
  }

  else
  {
    v8 = 0;
  }

  std::mutex::unlock((a1 + 1064));
  return v8;
}

uint64_t std::condition_variable::wait_until<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>,ref::Allocator<di_asif::details::table,unsigned long long>::drop_elem(ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,ref::Allocator<di_asif::details::table,unsigned long long>::drop_elem_options,ref::tagged_ptr<di_asif::details::table,unsigned long long> *)::{lambda(void)#1}>(std::condition_variable *a1, std::unique_lock<std::mutex> *a2, uint64_t *a3, uint64_t a4)
{
  do
  {
    v8 = *(a4 + 16);
    v9 = atomic_load((*a4 + 544));
    if ((v9 & 4) != 0)
    {
      return 1;
    }

    if (*(*a4 + 544))
    {
      return 1;
    }

    if (*(a4 + 8) == 1)
    {
      std::mutex::lock((v8 + 696));
      v10 = *(v8 + 688);
      std::mutex::unlock((v8 + 696));
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
  v15 = atomic_load((*a4 + 544));
  if (v15 & 4) != 0 || (*(*a4 + 544))
  {
    return 1;
  }

  if (*(a4 + 8) != 1)
  {
    return 0;
  }

  std::mutex::lock((v14 + 696));
  v16 = *(v14 + 688) != 0;
  std::mutex::unlock((v14 + 696));
  return v16;
}

uint64_t std::function<BOOL ()(ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,unsigned long long)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t std::__function::__value_func<BOOL ()(ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,unsigned long long)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<ref::Allocator<di_asif::details::table,unsigned long long>::drop_elem(ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,ref::Allocator<di_asif::details::table,unsigned long long>::drop_elem_options,ref::tagged_ptr<di_asif::details::table,unsigned long long> *)::{lambda(ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,unsigned long long)#1},std::allocator<ref::Allocator<di_asif::details::table,unsigned long long>::drop_elem(ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,ref::Allocator<di_asif::details::table,unsigned long long>::drop_elem_options,ref::tagged_ptr<di_asif::details::table,unsigned long long> *)::{lambda(ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,unsigned long long)#1}>,BOOL ()(ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,unsigned long long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285BF2798;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<ref::Allocator<di_asif::details::table,unsigned long long>::drop_elem(ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,ref::Allocator<di_asif::details::table,unsigned long long>::drop_elem_options,ref::tagged_ptr<di_asif::details::table,unsigned long long> *)::{lambda(ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,unsigned long long)#1},std::allocator<ref::Allocator<di_asif::details::table,unsigned long long>::drop_elem(ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,ref::Allocator<di_asif::details::table,unsigned long long>::drop_elem_options,ref::tagged_ptr<di_asif::details::table,unsigned long long> *)::{lambda(ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,unsigned long long)#1}>,BOOL ()(ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long>::~tagged_allocated_type(uint64_t a1)
{
  ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset((a1 + 536));
  ref::details::ctrl_blk<di_asif::details::table,unsigned long long>::~ctrl_blk(a1 + 8);
  return a1;
}

uint64_t ref::details::ctrl_blk<di_asif::details::table,unsigned long long>::~ctrl_blk(uint64_t a1)
{
  std::__function::__value_func<int ()(di_asif::details::table &)>::~__value_func[abi:ne200100](a1 + 472);
  std::__function::__value_func<void ()(ref::details::ctrl_blk<di_asif::details::table,unsigned long long> *,ref::tagged_ptr<di_asif::details::table,unsigned long long> &)>::~__value_func[abi:ne200100](a1 + 440);
  std::__function::__value_func<void ()(ref::details::ctrl_blk<di_asif::details::table,unsigned long long> *,unsigned long long,diskimage_uio::option_set_ns::option_set<ref::details::deleter_options>)>::~__value_func[abi:ne200100](a1 + 408);
  if (*(a1 + 400) == 1)
  {
    std::mutex::~mutex((a1 + 320));
    std::deque<std::atomic<DiskImage::Context *>>::~deque[abi:ne200100]((a1 + 272));
    std::mutex::~mutex((a1 + 208));
    std::mutex::~mutex((a1 + 144));
    v2 = *(a1 + 112);
    if (v2)
    {
      *(a1 + 120) = v2;
      operator delete(v2);
    }

    std::unique_ptr<di_asif::details::table_entry,std::function<void ()(di_asif::details::table_entry*)>>::reset[abi:ne200100]((a1 + 56), 0);
    std::__function::__value_func<void ()(di_asif::details::table_entry *)>::~__value_func[abi:ne200100](a1 + 64);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ref::details::ctrl_blk<di_asif::details::table,unsigned long long> *,ref::tagged_ptr<di_asif::details::table,unsigned long long> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(ref::details::ctrl_blk<di_asif::details::table,unsigned long long> *,unsigned long long,diskimage_uio::option_set_ns::option_set<ref::details::deleter_options>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::optional<di_asif::details::table>::~optional(uint64_t a1)
{
  if (*(a1 + 360) == 1)
  {
    std::mutex::~mutex((a1 + 280));
    std::deque<std::atomic<DiskImage::Context *>>::~deque[abi:ne200100]((a1 + 232));
    std::mutex::~mutex((a1 + 168));
    std::mutex::~mutex((a1 + 104));
    v2 = *(a1 + 72);
    if (v2)
    {
      *(a1 + 80) = v2;
      operator delete(v2);
    }

    std::unique_ptr<di_asif::details::table_entry,std::function<void ()(di_asif::details::table_entry*)>>::reset[abi:ne200100]((a1 + 16), 0);
    std::__function::__value_func<void ()(di_asif::details::table_entry *)>::~__value_func[abi:ne200100](a1 + 24);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,ref::tagged_ptr<di_asif::details::table,unsigned long long> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,unsigned long long,diskimage_uio::option_set_ns::option_set<ref::details::deleter_options>)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__list_imp<std::pair<ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,unsigned long long>>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

uint64_t ref::Allocator<di_asif::details::table,unsigned long long>::error_ctrl_blk_t::~error_ctrl_blk_t(uint64_t a1)
{
  v2 = a1 + 104;
  if (atomic_fetch_add((a1 + 104), 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    v3 = *(a1 + 136);
    *(a1 + 136) = -1;
    ref::details::ctrl_blk<di_asif::details::table,unsigned long long>::reset_val(a1 + 104, v3, 1u);
  }

  ref::details::ctrl_blk<di_asif::details::table,unsigned long long>::~ctrl_blk(v2);
  std::__function::__value_func<int ()(di_asif::details::table &)>::~__value_func[abi:ne200100](a1 + 64);
  std::__function::__value_func<void ()(ref::details::ctrl_blk<di_asif::details::table,unsigned long long> *,ref::tagged_ptr<di_asif::details::table,unsigned long long> &)>::~__value_func[abi:ne200100](a1 + 32);

  return std::__function::__value_func<void ()(ref::details::ctrl_blk<di_asif::details::table,unsigned long long> *,unsigned long long,diskimage_uio::option_set_ns::option_set<ref::details::deleter_options>)>::~__value_func[abi:ne200100](a1);
}

uint64_t ref::Allocator<di_asif::details::map_element,unsigned long long>::~Allocator(uint64_t a1)
{
  *(a1 + 736) &= ~1u;
  if (*(a1 + 456))
  {
    v3 = 0;
    do
    {
      v4 = atomic_exchange((*(a1 + 584) + 8 * v3), 0);
      if (v4)
      {
        v1 = v1 & 0xFFFFFFFFFF000000 | 0x10001;
        ref::Allocator<di_asif::details::map_element,unsigned long long>::drop_elem(a1, v4, v1, 0);
        ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset((v4 + 360));
        ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::~ctrl_blk(v4 + 8);
        MEMORY[0x24C1ED730](v4, 0x10F0C408C1362C6);
      }

      ++v3;
    }

    while (*(a1 + 456) > v3);
  }

  gcd::gcd_queue::barrier_sync((a1 + 744), &__block_literal_global_1811);
  v5 = *(a1 + 584);
  if (v5)
  {
    MEMORY[0x24C1ED710](v5, 0x20C8093837F09);
  }

  std::mutex::lock((a1 + 520));
  v6 = *(a1 + 480);
  if (*(a1 + 488) != v6)
  {
    v7 = *(a1 + 504);
    v8 = (v6 + 8 * (v7 >> 9));
    v9 = (*v8 + 8 * (v7 & 0x1FF));
    v10 = *(v6 + (((*(a1 + 512) + v7) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a1 + 512) + v7) & 0x1FF);
    while (v9 != v10)
    {
      v11 = *v9;
      if (*v9)
      {
        ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset((v11 + 360));
        ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::~ctrl_blk(v11 + 8);
        MEMORY[0x24C1ED730](v11, 0x10F0C408C1362C6);
      }

      if ((++v9 - *v8) == 4096)
      {
        v12 = v8[1];
        ++v8;
        v9 = v12;
      }
    }
  }

  std::mutex::unlock((a1 + 520));
  std::__function::__value_func<void ()(ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *,ref::tagged_ptr<di_asif::details::map_element,unsigned long long> &)>::~__value_func[abi:ne200100](a1 + 1416);
  std::__function::__value_func<void ()(ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *,unsigned long long,diskimage_uio::option_set_ns::option_set<ref::details::deleter_options>)>::~__value_func[abi:ne200100](a1 + 1384);
  ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset((a1 + 1368));
  ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::~ctrl_blk(a1 + 1016);
  std::__function::__value_func<int ()(di_asif::details::map_element &)>::~__value_func[abi:ne200100](a1 + 976);
  std::__list_imp<std::pair<ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,unsigned long long>>::clear((a1 + 952));
  std::mutex::~mutex((a1 + 888));
  std::condition_variable::~condition_variable((a1 + 840));
  std::mutex::~mutex((a1 + 776));
  std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>>>::destroy(a1 + 752, *(a1 + 760));
  gcd::gcd_group::~gcd_group((a1 + 744));
  std::condition_variable::~condition_variable((a1 + 688));
  std::mutex::~mutex((a1 + 624));
  std::mutex::~mutex((a1 + 520));
  std::deque<std::atomic<DiskImage::Context *>>::~deque[abi:ne200100]((a1 + 472));

  return ref::Allocator<di_asif::details::map_element,unsigned long long>::error_ctrl_blk_t::~error_ctrl_blk_t(a1);
}

uint64_t ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long>::~tagged_allocated_type(uint64_t a1)
{
  ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset((a1 + 360));
  ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::~ctrl_blk(a1 + 8);
  return a1;
}

uint64_t ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::~ctrl_blk(uint64_t a1)
{
  std::__function::__value_func<int ()(di_asif::details::map_element &)>::~__value_func[abi:ne200100](a1 + 296);
  std::__function::__value_func<void ()(ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long> *,ref::tagged_ptr<di_asif::details::map_element,unsigned long long> &)>::~__value_func[abi:ne200100](a1 + 264);
  std::__function::__value_func<void ()(ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long> *,unsigned long long,diskimage_uio::option_set_ns::option_set<ref::details::deleter_options>)>::~__value_func[abi:ne200100](a1 + 232);
  if (*(a1 + 224) == 1)
  {
    std::mutex::~mutex((a1 + 160));
    *(a1 + 72) = &unk_285BE59A0;
    std::unique_ptr<unsigned long long,std::function<void ()(unsigned long long *)>>::reset[abi:ne200100]((a1 + 96), 0);
    std::__function::__value_func<void ()(unsigned long long *)>::~__value_func[abi:ne200100](a1 + 104);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long> *,ref::tagged_ptr<di_asif::details::map_element,unsigned long long> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long> *,unsigned long long,diskimage_uio::option_set_ns::option_set<ref::details::deleter_options>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::optional<di_asif::details::map_element>::~optional(uint64_t a1)
{
  if (*(a1 + 184) == 1)
  {
    std::mutex::~mutex((a1 + 120));
    *(a1 + 32) = &unk_285BE59A0;
    std::unique_ptr<unsigned long long,std::function<void ()(unsigned long long *)>>::reset[abi:ne200100]((a1 + 56), 0);
    std::__function::__value_func<void ()(unsigned long long *)>::~__value_func[abi:ne200100](a1 + 64);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *,ref::tagged_ptr<di_asif::details::map_element,unsigned long long> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *,unsigned long long,diskimage_uio::option_set_ns::option_set<ref::details::deleter_options>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t ref::Allocator<di_asif::details::map_element,unsigned long long>::error_ctrl_blk_t::~error_ctrl_blk_t(uint64_t a1)
{
  v2 = a1 + 104;
  if (atomic_fetch_add((a1 + 104), 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    v3 = *(a1 + 136);
    *(a1 + 136) = -1;
    ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::reset_val(a1 + 104, v3, 1u);
  }

  ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::~ctrl_blk(v2);
  std::__function::__value_func<int ()(di_asif::details::map_element &)>::~__value_func[abi:ne200100](a1 + 64);
  std::__function::__value_func<void ()(ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long> *,ref::tagged_ptr<di_asif::details::map_element,unsigned long long> &)>::~__value_func[abi:ne200100](a1 + 32);

  return std::__function::__value_func<void ()(ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long> *,unsigned long long,diskimage_uio::option_set_ns::option_set<ref::details::deleter_options>)>::~__value_func[abi:ne200100](a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<973ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BED6E8;
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

void sub_248EF1AA8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<998ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BED908;
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

void sub_248EF1B70(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<di_asif::details::table::flush(di_asif::details::ContextASIF &)::$_0,std::allocator<di_asif::details::table::flush(di_asif::details::ContextASIF &)::$_0>,void ()(char const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285BF2848;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<di_asif::details::table::flush(di_asif::details::ContextASIF &)::$_0,std::allocator<di_asif::details::table::flush(di_asif::details::ContextASIF &)::$_0>,void ()(char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(char const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t *std::deque<unsigned long long>::__insert_bidirectional[abi:ne200100]<std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>>(uint64_t a1, char *a2, uint64_t a3, char **a4, char *a5, void *a6, char *a7, unint64_t a8)
{
  v8 = a8;
  v14 = *(a1 + 32);
  v15 = v14 >> 9;
  v16 = *(a1 + 8);
  v17 = *(a1 + 16);
  v18 = (v16 + 8 * (v14 >> 9));
  if (v17 == v16)
  {
    v19 = 0;
  }

  else
  {
    v19 = *v18 + 8 * (*(a1 + 32) & 0x1FFLL);
  }

  if (a3 == v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = ((a3 - *a2) >> 3) + ((a2 - v18) << 6) - ((v19 - *v18) >> 3);
  }

  v21 = *(a1 + 40);
  if (v20 < v21 - v20)
  {
    if (a8 > v14)
    {
      std::deque<unsigned long long>::__add_front_capacity(a1, a8 - v14);
      v14 = *(a1 + 32);
      v16 = *(a1 + 8);
      v17 = *(a1 + 16);
      v15 = v14 >> 9;
    }

    v22 = (v16 + 8 * v15);
    if (v17 == v16)
    {
      v23 = 0;
    }

    else
    {
      v23 = *v22 + 8 * (v14 & 0x1FF);
    }

    v87.n128_u64[0] = v16 + 8 * v15;
    v87.n128_u64[1] = v23;
    if (v8 <= v20)
    {
      goto LABEL_51;
    }

    if (v20 >= v8 >> 1)
    {
      v29 = v8 - v20 + ((a5 - *a4) >> 3);
      if (v29 >= 1)
      {
        a4 += v29 >> 9;
        goto LABEL_32;
      }

      v34 = 511 - v29;
      v35 = ~v34;
      a4 -= v34 >> 9;
    }

    else
    {
      if (!v20)
      {
        a4 = a6;
        v32 = a7;
        goto LABEL_42;
      }

      v29 = (&a7[-*a6] >> 3) - v20;
      if (v29 >= 1)
      {
        a4 = &a6[v29 >> 9];
LABEL_32:
        v32 = &(*a4)[8 * (v29 & 0x1FF)];
LABEL_42:
        if (v32 != a5)
        {
          v39 = *(a1 + 40);
          v40 = *v22;
          v41 = a4;
          v42 = v32;
          do
          {
            if (v23 == v40)
            {
              v43 = *--v22;
              v40 = v43;
              v23 = v43 + 4096;
            }

            if (v42 == *v41)
            {
              v44 = *--v41;
              v42 = (v44 + 4096);
            }

            v45 = *(v42 - 1);
            v42 -= 8;
            *(v23 - 8) = v45;
            v23 -= 8;
            --v14;
            ++v39;
          }

          while (v42 != a5);
          *(a1 + 32) = v14;
          *(a1 + 40) = v39;
        }

        a5 = v32;
        v8 = v20;
LABEL_51:
        if (v8)
        {
          v85 = a6;
          v46 = std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>::operator+[abi:ne200100](&v87, v8);
          v48 = v46;
          v49 = v47;
          v50 = v87.n128_u64[1];
          if (v87.n128_u64[1] != v47)
          {
            v51 = *(a1 + 32);
            v52 = *v22;
            v53 = v46;
            v54 = v47;
            do
            {
              if (v23 == v52)
              {
                v55 = *--v22;
                v52 = v55;
                v23 = v55 + 4096;
              }

              if (v54 == *v53)
              {
                v56 = *--v53;
                v54 = (v56 + 4096);
              }

              v57 = *(v54 - 1);
              v54 -= 8;
              *(v23 - 8) = v57;
              v23 -= 8;
              v51 = vaddq_s64(v51, xmmword_248FA3230);
            }

            while (v54 != v50);
            *(a1 + 32) = v51;
          }

          if (v8 >= v20)
          {
            v60 = v87.n128_u64[0];
          }

          else
          {
            v58 = std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>::operator+[abi:ne200100](&v87, v20);
            v88 = v87;
            std::__for_each_segment[abi:ne200100]<std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>,std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>>>(v48, v49, v58, v59, &v88);
            v50 = v88.n128_u64[1];
            v60 = v88.n128_u64[0];
            v87 = v88;
          }

          v88.n128_u64[0] = v60;
          v88.n128_u64[1] = v50;
          std::__for_each_segment[abi:ne200100]<std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>,std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>>>(a4, a5, v85, a7, &v88);
        }

        goto LABEL_88;
      }

      v38 = 511 - v29;
      v35 = ~v38;
      a4 = &a6[-(v38 >> 9)];
    }

    v32 = &(*a4)[8 * (v35 & 0x1FF)];
    goto LABEL_42;
  }

  v24 = ((v17 - v16) << 6) - 1;
  if (v17 == v16)
  {
    v24 = 0;
  }

  v25 = v14 + v21;
  v26 = v24 - v25;
  if (a8 > v26)
  {
    std::deque<unsigned long long>::__add_back_capacity(a1, a8 - v26);
    v21 = *(a1 + 40);
    v16 = *(a1 + 8);
    v17 = *(a1 + 16);
    v25 = *(a1 + 32) + v21;
  }

  v84 = a4;
  v27 = (v16 + 8 * (v25 >> 9));
  if (v17 == v16)
  {
    v28 = 0;
  }

  else
  {
    v28 = &(*v27)[8 * (v25 & 0x1FF)];
  }

  v87.n128_u64[0] = v16 + 8 * (v25 >> 9);
  v87.n128_u64[1] = v28;
  v30 = v21 - v20;
  if (v21 - v20 < v8)
  {
    if (v30 >= v8 >> 1)
    {
      v31 = v21 - v20 - v8 + (&a7[-*a6] >> 3);
      if (v31 >= 1)
      {
        a6 += v31 >> 9;
        goto LABEL_35;
      }

      v36 = 511 - v31;
      v37 = ~v36;
      a6 -= v36 >> 9;
    }

    else
    {
      if (!v30)
      {
        a6 = v84;
        v33 = a5;
        goto LABEL_66;
      }

      v31 = v30 + ((a5 - *v84) >> 3);
      if (v31 >= 1)
      {
        a6 = &v84[v31 >> 9];
LABEL_35:
        v33 = *a6 + 8 * (v31 & 0x1FF);
LABEL_66:
        if (v33 != a7)
        {
          v62 = *v27;
          v63 = a6;
          v64 = v33;
          do
          {
            *v28 = *v64;
            v28 += 8;
            if (v28 - v62 == 4096)
            {
              v65 = v27[1];
              ++v27;
              v62 = v65;
              v28 = v65;
            }

            v64 += 8;
            if (&v64[-*v63] == 4096)
            {
              v66 = v63[1];
              ++v63;
              v64 = v66;
            }

            ++v21;
          }

          while (v64 != a7);
          *(a1 + 40) = v21;
        }

        a7 = v33;
        v8 = v30;
        goto LABEL_75;
      }

      v61 = 511 - v31;
      v37 = ~v61;
      a6 = &v84[-(v61 >> 9)];
    }

    v33 = *a6 + 8 * (v37 & 0x1FF);
    goto LABEL_66;
  }

LABEL_75:
  if (v8)
  {
    v86 = a6;
    v67 = std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>::operator-[abi:ne200100](&v87, v8);
    v69 = v67;
    v70 = v68;
    v71 = v87.n128_u64[1];
    if (v87.n128_u64[1] != v68)
    {
      v72 = *(a1 + 40);
      v73 = *v27;
      v74 = v67;
      v75 = v68;
      do
      {
        *v28 = *v75;
        v28 += 8;
        if (v28 - v73 == 4096)
        {
          v76 = v27[1];
          ++v27;
          v73 = v76;
          v28 = v76;
        }

        v75 += 8;
        if (&v75[-*v74] == 4096)
        {
          v77 = v74[1];
          ++v74;
          v75 = v77;
        }

        ++v72;
      }

      while (v75 != v71);
      *(a1 + 40) = v72;
    }

    if (v8 >= v30)
    {
      v80 = v87.n128_u64[0];
    }

    else
    {
      v78 = std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>::operator-[abi:ne200100](&v87, v30);
      std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>,std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>,0>(v78, v79, v69, v70, v87.n128_u64[0], v87.n128_u64[1], &v88);
      v71 = v89.n128_u64[1];
      v80 = v89.n128_u64[0];
      v87 = v89;
    }

    std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>,std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>,0>(v84, a5, v86, a7, v80, v71, &v88);
  }

LABEL_88:
  v81 = *(a1 + 8);
  if (*(a1 + 16) == v81)
  {
    v82 = 0;
  }

  else
  {
    v82 = *(v81 + 8 * (*(a1 + 32) >> 9)) + 8 * (*(a1 + 32) & 0x1FFLL);
  }

  v88.n128_u64[0] = v81 + 8 * (*(a1 + 32) >> 9);
  v88.n128_u64[1] = v82;
  return std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>::operator+[abi:ne200100](&v88, v20);
}

const void **std::deque<unsigned long long>::__add_front_capacity(const void **result, unint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  v5 = v4 - v3;
  if (v4 == v3)
  {
    v6 = a2 + 1;
  }

  else
  {
    v6 = a2;
  }

  if (v4 == v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v4 - v3) << 6) - 1;
  }

  if ((v6 & 0x1FF) != 0)
  {
    v8 = (v6 >> 9) + 1;
  }

  else
  {
    v8 = v6 >> 9;
  }

  v9 = result[4];
  v10 = v7 - &v9[result[5]];
  if (v8 >= v10 >> 9)
  {
    v11 = v10 >> 9;
  }

  else
  {
    v11 = v8;
  }

  if (v8 <= v10 >> 9)
  {
    for (result[4] = &v9[512 * v11]; v11; --v11)
    {
      v15 = v2[2];
      *&v17[0] = *(v15 - 1);
      v2[2] = v15 - 1;
      result = std::__split_buffer<unsigned long long *>::emplace_front<unsigned long long *>(v2, v17);
    }
  }

  else
  {
    v12 = v8 - v11;
    v13 = result[3] - *result;
    if (v8 - v11 > (v13 >> 3) - (v5 >> 3))
    {
      if (v13 >> 2 <= v12 + (v5 >> 3))
      {
        v14 = v12 + (v5 >> 3);
      }

      else
      {
        v14 = v13 >> 2;
      }

      v18 = result;
      if (v14)
      {
        std::allocator<unsigned long long *>::allocate_at_least[abi:ne200100](result, v14);
      }

      memset(v17, 0, sizeof(v17));
      operator new();
    }

    if (v12)
    {
      if (v3 != *result)
      {
        operator new();
      }

      operator new();
    }

    for (result[4] = &v9[512 * v11]; v11; --v11)
    {
      v16 = v2[2];
      *&v17[0] = *(v16 - 1);
      v2[2] = v16 - 1;
      result = std::__split_buffer<unsigned long long *>::emplace_front<unsigned long long *>(v2, v17);
    }
  }

  return result;
}

void sub_248EF2544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>::operator+[abi:ne200100](uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = a2 + ((*(a1 + 8) - *result) >> 3);
    if (v4 < 1)
    {
      result -= (511 - v4) >> 9;
      v6 = *result;
    }

    else
    {
      result += v4 >> 9;
      v5 = *result;
    }
  }

  return result;
}

void *std::deque<unsigned long long>::__add_back_capacity(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0x1FF) != 0)
  {
    v5 = (v4 >> 9) + 1;
  }

  else
  {
    v5 = v4 >> 9;
  }

  v6 = result[4];
  if (v5 >= v6 >> 9)
  {
    v7 = v6 >> 9;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 9)
  {
    for (result[4] = v6 - (v7 << 9); v7; --v7)
    {
      v14 = v2[1];
      v16[0] = *v14;
      v2[1] = v14 + 1;
      result = std::__split_buffer<unsigned long long *>::emplace_back<unsigned long long *&>(v2, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = result;
      if (v12)
      {
        std::allocator<unsigned long long *>::allocate_at_least[abi:ne200100](result, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= v7 << 9; v7; --v7)
    {
      v15 = v2[1];
      v16[0] = *v15;
      v2[1] = v15 + 1;
      result = std::__split_buffer<unsigned long long *>::emplace_back<unsigned long long *&>(v2, v16);
    }
  }

  return result;
}

void sub_248EF28C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>::operator-[abi:ne200100](uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = ((*(a1 + 8) - *result) >> 3) - a2;
    if (v4 < 1)
    {
      result -= (511 - v4) >> 9;
      v6 = *result;
    }

    else
    {
      result += v4 >> 9;
      v5 = *result;
    }
  }

  return result;
}

double std::__for_each_segment[abi:ne200100]<std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>,std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>>>(char **a1, char *__src, char **a3, char *a4, uint64_t a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = *(a5 + 8);
    v9 = __src;
  }

  else
  {
    v11 = a1 + 1;
    std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,unsigned long long *,unsigned long long *,std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>,0>(__src, *(a5 + 8), *a1 + 4096, *a5, &v15);
    for (i = v16; ; i = v16)
    {
      *a5 = i;
      if (v11 == a3)
      {
        break;
      }

      v13 = *v11++;
      std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,unsigned long long *,unsigned long long *,std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>,0>(v13, *(a5 + 8), v13 + 4096, *a5, &v15);
    }

    v9 = *v11;
    v7 = *a5;
    v8 = *(a5 + 8);
  }

  std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,unsigned long long *,unsigned long long *,std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>,0>(v9, v8, a4, v7, &v15);
  result = *&v16;
  *a5 = v16;
  return result;
}

char *std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,unsigned long long *,unsigned long long *,std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>,0>@<X0>(char *__src@<X0>, char *__dst@<X3>, char *a3@<X1>, void **a4@<X2>, char **a5@<X8>)
{
  v6 = a4;
  if (__src != a3)
  {
    v9 = __src;
    v6 = a4 + 1;
    v10 = *a4;
    while (1)
    {
      v11 = v10 - __dst + 4096;
      v12 = (a3 - v9) >> 3 >= v11 >> 3 ? v11 >> 3 : (a3 - v9) >> 3;
      if (v12)
      {
        __src = memmove(__dst, v9, 8 * v12);
      }

      v9 += 8 * v12;
      if (v9 == a3)
      {
        break;
      }

      v13 = *v6++;
      v10 = v13;
      __dst = v13;
    }

    __dst += 8 * v12;
    if (*(v6 - 1) + 4096 == __dst)
    {
      __dst = *v6;
    }

    else
    {
      --v6;
    }
  }

  *a5 = a3;
  a5[1] = v6;
  a5[2] = __dst;
  return __src;
}

__n128 std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>,std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>,0>@<Q0>(char **a1@<X1>, char *a2@<X2>, char **a3@<X3>, char *a4@<X4>, void *a5@<X5>, char *a6@<X6>, __n128 *a7@<X8>)
{
  if (a1 == a3)
  {
    v11 = a2;
    v12 = a4;
    v13 = a5;
    v14 = a6;
  }

  else
  {
    v17 = a3 - 1;
    v16 = *a3;
    v18 = a4;
    v13 = a5;
    v14 = a6;
    while (1)
    {
      std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<unsigned long long *,std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>,0>(v16, v18, v13, v14, &v21);
      v14 = v22.n128_u64[1];
      v13 = v22.n128_u64[0];
      if (v17 == a1)
      {
        break;
      }

      v19 = *v17--;
      v16 = v19;
      v18 = v19 + 4096;
    }

    v12 = *v17 + 4096;
    v11 = a2;
  }

  std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<unsigned long long *,std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>,0>(v11, v12, v13, v14, &v21);
  result = v22;
  a7->n128_u64[0] = a3;
  a7->n128_u64[1] = a4;
  a7[1] = result;
  return result;
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<unsigned long long *,std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>,0>@<X0>(char *a1@<X1>, char *a2@<X2>, void *a3@<X3>, char *a4@<X4>, void *a5@<X8>)
{
  v6 = a3;
  if (a1 == a2)
  {
    v9 = a1;
  }

  else
  {
    v9 = a2;
    v10 = *a3;
    v11 = a2;
    while (1)
    {
      v12 = &a4[-v10];
      if ((v11 - a1) >> 3 >= v12 >> 3)
      {
        v13 = v12 >> 3;
      }

      else
      {
        v13 = (v11 - a1) >> 3;
      }

      v11 -= 8 * v13;
      a4 -= 8 * v13;
      if (v13)
      {
        result = memmove(a4, v11, 8 * v13);
      }

      if (v11 == a1)
      {
        break;
      }

      v15 = *--v6;
      v10 = v15;
      a4 = (v15 + 4096);
    }

    if ((*v6 + 4096) == a4)
    {
      v16 = v6[1];
      ++v6;
      a4 = v16;
    }
  }

  *a5 = v9;
  a5[1] = v6;
  a5[2] = a4;
  return result;
}

void space_allocators::FixedSize::insert<std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>>(uint64_t a1, unint64_t **a2, unint64_t *a3, uint64_t a4, unint64_t *a5, uint64_t a6)
{
  if (a3 != a5)
  {
    v12 = *a2;
    v13 = a3;
    v14 = a3;
    v15 = a2;
    while (1)
    {
      if (++v14 - v12 == 4096)
      {
        v16 = v15[1];
        ++v15;
        v12 = v16;
        v14 = v16;
      }

      if (v14 == a5)
      {
        break;
      }

      if (*v13 < *v14)
      {
        v13 = v14;
      }
    }

    std::mutex::lock((a1 + 8));
    std::set<unsigned long long>::insert[abi:ne200100]<std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>>(a1 + 72, a2, a3, a4, a5);
    if (*v13 >= *(a1 + 96))
    {
      *(a1 + 96) = *a1 + *v13;
    }

    space_allocators::FixedSize::trim_largest(a1, a6);

    std::mutex::unlock((a1 + 8));
  }
}

uint64_t std::set<unsigned long long>::insert[abi:ne200100]<std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>>(uint64_t result, void *a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    v8 = result;
    do
    {
      result = std::__tree<unsigned long long>::__emplace_hint_unique_key_args<unsigned long long,unsigned long long const&>(v8, v8 + 1, v6++);
      if ((v6 - *a2) == 4096)
      {
        v9 = a2[1];
        ++a2;
        v6 = v9;
      }
    }

    while (v6 != a5);
  }

  return result;
}

uint64_t std::__tree<unsigned long long>::__emplace_hint_unique_key_args<unsigned long long,unsigned long long const&>(void *a1, void *a2, unint64_t *a3)
{
  v3 = *std::__tree<std::__value_type<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *>>>::__find_equal<unsigned long long>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t di_log::logger_buf<di_log::log_printer<1260ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BEDD48;
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

void sub_248EF2F94(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<1282ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BEDF68;
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

void sub_248EF305C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<1291ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BEE188;
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

void sub_248EF3124(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<1313ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BEE3A8;
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

void sub_248EF31EC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<1337ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BEE5C8;
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

void sub_248EF32B4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<1375ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BEE7E8;
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

void sub_248EF337C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<1626ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BEEA08;
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

void sub_248EF3444(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<1698ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BEEE48;
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

void sub_248EF350C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<2098ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BEF068;
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

void sub_248EF35D4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void ref::Allocator<di_asif::details::table,unsigned long long>::add_tag(uint64_t a1@<X0>, std::unique_lock<std::mutex>::mutex_type *a2@<X1>, char a3@<W2>, unint64_t *a4@<X8>)
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = (a1 + 952);
  v9 = (a1 + 936);
  v10 = a1 + 1184;
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
        ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(&__lk);
LABEL_15:
        v14 = 1;
        goto LABEL_16;
      }
    }

    __lk.__m_ = a2;
    *&__lk.__owns_ = v10;
    v11 = std::__tree<std::__value_type<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *>>(a1 + 928, &__lk);
    v12 = v11;
    if (v13)
    {
      __lk.__m_ = 0;
      *a4 = 0;
      a4[1] = v11;
      atomic_store(atomic_exchange(&__lk, 0), a4);
      ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(&__lk);
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
      ref::tagged_ptr<di_asif::details::table,unsigned long long>::tagged_ptr(&__lk, (v20 + 536));
      if (!__lk.__m_ || (__lk.__m_[8].__m_.__opaque[0] & 1) != 0)
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
          ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(&__lk);
          v39[0] = &unk_285BF28D8;
          v39[1] = a2;
          v39[3] = v39;
          v40 = 1;
          v22 = ref::Allocator<di_asif::details::table,unsigned long long>::run_failed_dtors_list(a1, 0, v39);
          if (v40 == 1)
          {
            std::__function::__value_func<BOOL ()(ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,unsigned long long)>::~__value_func[abi:ne200100](v39);
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

              v33 = *(a1 + 608);
              v32 = v35;
              if (v33)
              {
                *(a1 + 616) = atomic_fetch_add_explicit(v33, 1uLL, memory_order_relaxed);
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
            ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(&__lk);
            goto LABEL_15;
          }

          atomic_fetch_add((a1 + 768), 1uLL);
          __lk.__m_ = ref::details::_get_tagged_ptr_lock(v20, v21);
          __lk.__owns_ = 1;
          std::mutex::lock(__lk.__m_);
          if ((*(v20 + 544) & 1) == 0 && *(v20 + 40) == -1)
          {
            tagged_ptr_cond = ref::details::_get_tagged_ptr_cond(v20, v23);
            std::condition_variable::wait(tagged_ptr_cond, &__lk);
          }

          atomic_fetch_add((a1 + 768), 0xFFFFFFFFFFFFFFFFLL);
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
        ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(&v36);
      }

      ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(&__lk);
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
            v30 = *(v29 + 536);
            if (v30)
            {
              if ((*(v30 + 520) & 1) == 0)
              {
                break;
              }
            }
          }

          if ((*(a1 + 912) & 1) == 0)
          {
            break;
          }

          std::condition_variable::wait((a1 + 1016), &v38);
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

  while ((*(a1 + 912) & 1) != 0);
  v38.__m_ = 0;
  *a4 = 0;
  a4[1] = v9;
  atomic_store(atomic_exchange(&v38, 0), a4);
  ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(&v38);
LABEL_65:
  v34 = *MEMORY[0x277D85DE8];
}

void sub_248EF3A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12, std::mutex *a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
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

atomic_ullong *ref::Allocator<di_asif::details::table,unsigned long long>::allocate_from_empty_pool@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t **a3@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v12 = 0;
  std::mutex::lock((a1 + 696));
  v6 = *(a1 + 688);
  if (v6)
  {
    v7 = *(a1 + 680);
    v8 = *(*(*(a1 + 656) + ((v7 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v7 & 0x1FF));
    *(a1 + 688) = v6 - 1;
    *(a1 + 680) = v7 + 1;
    std::deque<std::atomic<DiskImage::Context *>>::__maybe_remove_front_spare[abi:ne200100](a1 + 648, 1);
    ref::Allocator<di_asif::details::table,unsigned long long>::insert_elem(a1, v8, a2, v13);
    ref::tagged_ptr<di_asif::details::table,unsigned long long>::operator=(&v12, v13);
    ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(v13);
  }

  else
  {
    v8 = 0;
  }

  std::mutex::unlock((a1 + 696));
  v9 = atomic_load((a1 + 784));
  if (v9 + v6 >= *(a1 + 640))
  {
    v14[0] = 0;
    v15 = 0;
    ref::Allocator<di_asif::details::table,unsigned long long>::run_failed_dtors_list(a1, 0, v14);
    if (v15 == 1)
    {
      std::__function::__value_func<BOOL ()(ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,unsigned long long)>::~__value_func[abi:ne200100](v14);
    }
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 0x40000000;
    v13[2] = ___ZN3ref9AllocatorIN7di_asif7details5tableEyE9evict_lruEv_block_invoke;
    v13[3] = &__block_descriptor_tmp_1821;
    v13[4] = a1;
    gcd::gcd_queue::async((a1 + 920), v13);
  }

  *a3 = v8;
  a3[1] = 0;
  atomic_store(atomic_exchange(&v12, 0), a3 + 1);
  result = ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(&v12);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248EF3C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, atomic_ullong a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a19 == 1)
  {
    std::__function::__value_func<BOOL ()(ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,unsigned long long)>::~__value_func[abi:ne200100](&a15);
  }

  ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(&a9);
  _Unwind_Resume(a1);
}

unint64_t ref::Allocator<di_asif::details::table,unsigned long long>::extract_min(void *a1)
{
  v1 = atomic_load(a1 + 97);
  v2 = a1[79];
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
    v6 = a1[95];
    v8 = *(v6 + 8 * v3);
    if (v8 && v1 - *(v8 + 520) < v7)
    {
      v5 = *(v6 + 8 * v3);
      v7 = v1 - *(v8 + 520);
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
  atomic_compare_exchange_strong((a1[95] + 8 * v4), &v9, 0);
  if (v9 != v5 || (ref::Allocator<di_asif::details::table,unsigned long long>::drop_elem(a1, v5, 0x101uLL, 0) & 1) == 0)
  {
    return 0;
  }

  return v5;
}

atomic_ullong *ref::Allocator<di_asif::details::table,unsigned long long>::insert_elem@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long>::mark_used(a2, a3);
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

    v10 = a2[64];
    if (v10)
    {
      a2[65] = atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_5:
    v7 = 0;
  }

  atomic_store(v7, &v14);
  if (*(a1 + 632))
  {
    v11 = 0;
    while (1)
    {
      v12 = 0;
      atomic_compare_exchange_strong((*(a1 + 760) + 8 * v11), &v12, a2);
      if (!v12)
      {
        break;
      }

      if (*(a1 + 632) <= ++v11)
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

  return ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(&v14);
}

unint64_t *ref::tagged_ptr<di_asif::details::table,unsigned long long>::tagged_ptr(unint64_t *a1, unint64_t *a2)
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

    v6 = v3[63];
    if (v6)
    {
      v3[64] = atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
    }

    if (!ref::details::ctrl_blk<di_asif::details::table,unsigned long long>::wait_for_ready(v3))
    {
      if (atomic_fetch_add(v3, 0xFFFFFFFFFFFFFFFFLL) == 1)
      {
        v7 = v3[4];
        v3[4] = -1;
        ref::details::ctrl_blk<di_asif::details::table,unsigned long long>::reset_val(v3, v7, 1u);
      }

      goto LABEL_12;
    }
  }

LABEL_13:
  atomic_store(v3, a1);
  return a1;
}

BOOL ref::details::ctrl_blk<di_asif::details::table,unsigned long long>::wait_for_ready(uint64_t a1)
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
    if (v6 != 2 && (*(a1 + 520) & 1) == 0)
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

uint64_t std::__function::__func<ref::Allocator<di_asif::details::table,unsigned long long>::add_tag(unsigned long long,BOOL)::{lambda(ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,unsigned long long)#1},std::allocator<ref::Allocator<di_asif::details::table,unsigned long long>::add_tag(unsigned long long,BOOL)::{lambda(ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,unsigned long long)#1}>,BOOL ()(ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,unsigned long long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285BF28D8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<ref::Allocator<di_asif::details::table,unsigned long long>::add_tag(unsigned long long,BOOL)::{lambda(ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,unsigned long long)#1},std::allocator<ref::Allocator<di_asif::details::table,unsigned long long>::add_tag(unsigned long long,BOOL)::{lambda(ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,unsigned long long)#1}>,BOOL ()(ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t *ref::tagged_ptr<di_asif::details::table,unsigned long long>::tagged_ptr(unint64_t *a1, unint64_t *a2, int a3)
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

    v8 = a2[63];
    if (v8)
    {
      a2[64] = atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
    }

    if (a3 && !ref::details::ctrl_blk<di_asif::details::table,unsigned long long>::wait_for_ready(a2))
    {
      if (atomic_fetch_add(v3, 0xFFFFFFFFFFFFFFFFLL) == 1)
      {
        v9 = v3[4];
        v3[4] = -1;
        ref::details::ctrl_blk<di_asif::details::table,unsigned long long>::reset_val(v3, v9, 1u);
      }

      goto LABEL_6;
    }
  }

LABEL_7:
  atomic_store(v3, a1);
  return a1;
}

uint64_t ___ZN3ref9AllocatorIN7di_asif7details5tableEyE9evict_lruEv_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  min = ref::Allocator<di_asif::details::table,unsigned long long>::extract_min(v1);
  if (min)
  {
    ref::Allocator<di_asif::details::table,unsigned long long>::add_to_free_pool(v1, min);
  }

  v5[0] = 0;
  v6 = 0;
  result = ref::Allocator<di_asif::details::table,unsigned long long>::run_failed_dtors_list(v1, 0, v5);
  if (v6 == 1)
  {
    result = std::__function::__value_func<BOOL ()(ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,unsigned long long)>::~__value_func[abi:ne200100](v5);
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248EF421C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a13 == 1)
  {
    std::__function::__value_func<BOOL ()(ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,unsigned long long)>::~__value_func[abi:ne200100](&a9);
  }

  _Unwind_Resume(exception_object);
}

void ref::Allocator<di_asif::details::table,unsigned long long>::add_to_free_pool(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  std::mutex::lock((a1 + 696));
  std::deque<ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,std::allocator<ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *>>::push_back((a1 + 648), &v3);
  std::mutex::unlock((a1 + 696));
}

void *std::deque<ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,std::allocator<ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *>>::push_back(void *result, void *a2)
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
    result = std::deque<ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,std::allocator<ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *>>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *std::deque<ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,std::allocator<ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *>>::__add_back_capacity(void *a1)
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

void sub_248EF44A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

atomic_ullong *ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long>::mark_used(uint64_t a1, uint64_t a2)
{
  atomic_store(0, (a1 + 544));
  v3 = (a1 + 8);
  ref::details::ctrl_blk<di_asif::details::table,unsigned long long>::init(a1 + 8, a2);
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

    v6 = *(a1 + 512);
    v5 = v3;
    if (v6)
    {
      *(a1 + 520) = atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
      v5 = v3;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_9:
  atomic_store(v5, &v9);
  ref::tagged_ptr<di_asif::details::table,unsigned long long>::operator=((a1 + 536), &v9);
  result = ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(&v9);
  if (atomic_fetch_add(v3, 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    v8 = *(a1 + 40);
    *(a1 + 40) = -1;
    return ref::details::ctrl_blk<di_asif::details::table,unsigned long long>::reset_val(v3, v8, 1u);
  }

  return result;
}

uint64_t ref::details::ctrl_blk<di_asif::details::table,unsigned long long>::init(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = a2;
  *(a1 + 520) = 0;
  atomic_store(1uLL, a1);
  atomic_store(0, (a1 + 8));
  atomic_store(0, (a1 + 16));
  result = std::__optional_destruct_base<di_asif::details::table,false>::reset[abi:ne200100](a1 + 40);
  v4 = *(a1 + 504);
  if (v4)
  {
    *(a1 + 512) = atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  atomic_store(1u, (a1 + 24));
  __dmb(0xBu);
  return result;
}

void ref::details::ctrl_blk<di_asif::details::table,unsigned long long>::make_value<di_asif::details::dir &,std::shared_ptr<Backend> &,unsigned long long &,unsigned long long,BOOL>(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, uint64_t *a5, unsigned __int8 *a6)
{
  *(a1 + 512) = **(a1 + 504);
  std::__optional_destruct_base<di_asif::details::table,false>::reset[abi:ne200100](a1 + 40);
  std::construct_at[abi:ne200100]<di_asif::details::table,di_asif::details::dir &,std::shared_ptr<Backend> &,unsigned long long &,unsigned long long,BOOL,di_asif::details::table*>(a1 + 40, a2, a3, a4, a5, a6);
}

void sub_248EF46E4(void *a1)
{
  __cxa_begin_catch(a1);
  atomic_store(0, (v1 + 24));
  *(v1 + 520) = 1;
  if (atomic_load((v1 + 8)))
  {
    std::__cxx_atomic_notify_all((v1 + 24));
  }

  __cxa_rethrow();
}

void std::construct_at[abi:ne200100]<di_asif::details::table,di_asif::details::dir &,std::shared_ptr<Backend> &,unsigned long long &,unsigned long long,BOOL,di_asif::details::table*>(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, uint64_t *a5, unsigned __int8 *a6)
{
  v6 = a3[1];
  v7[0] = *a3;
  v7[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  di_asif::details::table::table(a1, a2, v7, *a4, *a5, *a6);
}

void sub_248EF478C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void ref::details::ctrl_blk<di_asif::details::table,unsigned long long>::make_value<di_asif::details::dir &,std::shared_ptr<Backend> &,unsigned long long &,unsigned long long>(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, uint64_t *a5)
{
  *(a1 + 512) = **(a1 + 504);
  std::__optional_destruct_base<di_asif::details::table,false>::reset[abi:ne200100](a1 + 40);
  std::construct_at[abi:ne200100]<di_asif::details::table,di_asif::details::dir &,std::shared_ptr<Backend> &,unsigned long long &,unsigned long long,di_asif::details::table*>(a1 + 40, a2, a3, a4, a5);
}

void sub_248EF4854(void *a1)
{
  __cxa_begin_catch(a1);
  atomic_store(0, (v1 + 24));
  *(v1 + 520) = 1;
  if (atomic_load((v1 + 8)))
  {
    std::__cxx_atomic_notify_all((v1 + 24));
  }

  __cxa_rethrow();
}

void std::construct_at[abi:ne200100]<di_asif::details::table,di_asif::details::dir &,std::shared_ptr<Backend> &,unsigned long long &,unsigned long long,di_asif::details::table*>(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, uint64_t *a5)
{
  v5 = a3[1];
  v6[0] = *a3;
  v6[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  di_asif::details::table::table(a1, a2, v6, *a4, *a5, 0);
}

void sub_248EF48FC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t di_log::logger_buf<di_log::log_printer<2353ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BEF318;
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

void sub_248EF49C4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<2363ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BEF538;
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

void sub_248EF4A8C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(ref::details::ctrl_blk<di_asif::details::table,unsigned long long> *,ref::tagged_ptr<di_asif::details::table,unsigned long long> &)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t di_log::logger_buf<di_log::log_printer<2429ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BEF758;
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

void sub_248EF4BA8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<2440ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BEF978;
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

void sub_248EF4C70(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<2488ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BEFB98;
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

void sub_248EF4D38(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<2501ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BEFDB8;
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