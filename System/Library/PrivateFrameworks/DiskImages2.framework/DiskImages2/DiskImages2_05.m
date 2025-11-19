void non-virtual thunk todi_log::logger<di_log::log_printer<546ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<546ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<546ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<546ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<546ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<546ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<546ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<546ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<546ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<546ul>::log((a1 + 72), __p);
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

void sub_248E70538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<546ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 546;
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
      v22 = 546;
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

uint64_t di_log::logger_buf<di_log::log_printer<551ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BDEEA8;
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

void sub_248E707F4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<551ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BDEEA8;
  di_log::logger_buf<di_log::log_printer<551ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<551ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<551ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<551ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<551ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<551ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<551ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<551ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<551ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<551ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<551ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<551ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<551ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<551ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<551ul>::log((a1 + 72), __p);
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

void sub_248E70D98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<551ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 551;
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
      v22 = 551;
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

void *di_log::logger<di_log::log_printer<596ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<596ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BDEF30;
  a1[45] = &unk_285BDF030;
  a1[46] = &unk_285BDF058;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BDEF30;
  a1[45] = &unk_285BDEFB8;
  a1[46] = &unk_285BDEFE0;
  return a1;
}

void sub_248E710DC(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<596ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<596ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<596ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<596ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BDF0C8;
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

void sub_248E711F4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<596ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BDF0C8;
  di_log::logger_buf<di_log::log_printer<596ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<596ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<596ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<596ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<596ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<596ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<596ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<596ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<596ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<596ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<596ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<596ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<596ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<596ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<596ul>::log((a1 + 72), __p);
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

void sub_248E71798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<596ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 596;
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
      v22 = 596;
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

void std::__shared_ptr_emplace<FileLocal>::__shared_ptr_emplace[abi:ne200100]<int &,int,BOOL &,std::allocator<FileLocal>,0>(void *a1, int *a2, _DWORD *a3, unsigned __int8 *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BD6C38;
  v4 = *a4;
  FileLocal::FileLocal((a1 + 3), *a2, *a3 != 0);
}

uint64_t crypto::format_serializer::encode(void (**a1)(void, const char *, void, uint64_t), void *a2)
{
  (*a1)(a1, "crypto_hdr", *a2, 76);
  (*a1)(a1, "enc_keys", a2[2], a2[3] - a2[2]);
  v4 = *a1;
  v5 = a2[6] - a2[5];

  return v4(a1, "secondary_key");
}

const std::error_category *diskimage_uio::details::diskimage_open_params_impl::decode_buffer@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, size_t a4@<X3>, uint64_t a5@<X8>)
{
  __src = 0;
  v9 = (*a1)(a1, a2, &__src);
  v10 = __src;
  if (__src)
  {
    v11 = v9 <= 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    goto LABEL_8;
  }

  if (v9 != a4)
  {
    (*(a1 + 16))(__src);
LABEL_8:
    result = std::generic_category();
    v13 = 0;
    *a5 = 22;
    *(a5 + 8) = result;
    goto LABEL_9;
  }

  memcpy(a3, __src, a4);
  result = (*(a1 + 16))(v10);
  *a5 = 0;
  v13 = 1;
LABEL_9:
  *(a5 + 16) = v13;
  return result;
}

void crypto::format_serializer::decode(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  crypto::header_serializer::decode(a1, v30);
  if ((v32 & 1) == 0)
  {
    *a2 = *diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(v30);
    goto LABEL_9;
  }

  v29 = 0;
  v4 = (*a1)(a1, "enc_keys", &v29);
  v5 = v4;
  if (v29)
  {
    v6 = v4 <= 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = std::generic_category();
    *a2 = 22;
    *(a2 + 8) = v7;
LABEL_9:
    *(a2 + 88) = 0;
    goto LABEL_10;
  }

  v26 = 0;
  v27 = 0;
  v28 = 0;
  std::vector<std::byte>::__init_with_size[abi:ne200100]<std::byte*,std::byte*>(&v26, v29, &v29[v4], v4);
  v25 = 0;
  v8 = (*a1)(a1, "secondary_key", &v25);
  if (v25 && (v9 = v8, v8 > 0))
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    std::vector<std::byte>::__init_with_size[abi:ne200100]<std::byte*,std::byte*>(&v22, v25, &v25[v8], v8);
    v19 = 0;
    __dst = 0;
    v21 = 0;
    std::vector<std::byte>::reserve(&v19, v9 + v5);
    std::vector<std::byte>::__insert_with_size[abi:ne200100]<std::byte*,std::byte*>(&v19, __dst, v29, &v29[v5], v5);
    (*(a1 + 16))(v29);
    std::vector<std::byte>::__insert_with_size[abi:ne200100]<std::byte*,std::byte*>(&v19, __dst, v25, &v25[v9], v9);
    (*(a1 + 16))(v25);
    *&v12 = v19;
    *(&v12 + 1) = __dst - v19;
    crypto::keys::keys(v18, &v12, 1, 8 * v5, 8 * v9);
    crypto::format::format(&v12);
    v10 = *v13;
    *a2 = v12;
    v12 = 0uLL;
    *(a2 + 16) = v10;
    *(a2 + 32) = v14;
    v13[0] = 0;
    v13[1] = 0;
    *(a2 + 40) = *__p;
    *(a2 + 56) = v16;
    v14 = 0;
    __p[0] = 0;
    __p[1] = 0;
    v16 = 0;
    std::__variant_detail::__move_constructor<std::__variant_detail::__traits<crypto::format::aes_cbc_data,crypto::format::aes_xts_data>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a2 + 64, v17);
    *(a2 + 88) = 1;
    std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::format::aes_cbc_data,crypto::format::aes_xts_data>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v17);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v13[0])
    {
      v13[1] = v13[0];
      operator delete(v13[0]);
    }

    if (*(&v12 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v12 + 1));
    }

    *&v12 = v18;
    std::vector<crypto::keys::key_pair>::__destroy_vector::operator()[abi:ne200100](&v12);
    if (v19)
    {
      __dst = v19;
      operator delete(v19);
    }

    if (v22)
    {
      v23 = v22;
      operator delete(v22);
    }
  }

  else
  {
    v11 = std::generic_category();
    *a2 = 22;
    *(a2 + 8) = v11;
    *(a2 + 88) = 0;
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

LABEL_10:
  if (v32 == 1)
  {
    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }
  }
}

void sub_248E71E68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27)
{
  v31 = *(v27 + 40);
  if (v31)
  {
    *(v27 + 48) = v31;
    operator delete(v31);
  }

  crypto::format_serializer::decode(v28, (v27 + 8), &a9, (v27 + 24));
  a9 = &a20;
  std::vector<crypto::keys::key_pair>::__destroy_vector::operator()[abi:ne200100](&a9);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  if (a26)
  {
    a27 = a26;
    operator delete(a26);
  }

  v32 = *(v29 - 104);
  if (v32)
  {
    *(v29 - 96) = v32;
    operator delete(v32);
  }

  if (*(v29 - 56) == 1)
  {
    v33 = *(v29 - 64);
    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<crypto::format,std::error_code>::error(uint64_t result)
{
  if (*(result + 88))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_285BD4148;
  }

  return result;
}

uint64_t diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<crypto::format,std::error_code>::~expected(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::format::aes_cbc_data,crypto::format::aes_xts_data>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1 + 64);
    v2 = *(a1 + 40);
    if (v2)
    {
      *(a1 + 48) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 16);
    if (v3)
    {
      *(a1 + 24) = v3;
      operator delete(v3);
    }

    v4 = *(a1 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  return a1;
}

const std::error_category *crypto::header_serializer::decode@<X0>(uint64_t (**a1)(void, const char *, uint64_t *)@<X0>, uint64_t a2@<X8>)
{
  v8 = 0;
  v3 = (*a1)(a1, "crypto_hdr", &v8);
  v4 = v8;
  if (v8)
  {
    v5 = v3 <= 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    result = std::generic_category();
    *a2 = 2;
    *(a2 + 8) = result;
    *(a2 + 16) = 0;
  }

  else
  {
    if (v3 == 76)
    {
      std::allocate_shared[abi:ne200100]<crypto::header,std::allocator<crypto::header>,char *,0>();
    }

    v7 = std::generic_category();
    *a2 = 22;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0;
    return MEMORY[0x24C1ED710](v4, 0x1000C8077774924);
  }

  return result;
}

char *std::vector<std::byte>::__insert_with_size[abi:ne200100]<std::byte*,std::byte*>(uint64_t a1, char *__dst, char *__src, char *a4, int64_t __len)
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
      std::vector<iovec>::__throw_length_error[abi:ne200100]();
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

uint64_t std::__variant_detail::__move_constructor<std::__variant_detail::__traits<crypto::format::aes_cbc_data,crypto::format::aes_xts_data>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<crypto::format::aes_cbc_data,crypto::format::aes_xts_data>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<crypto::format::aes_cbc_data,crypto::format::aes_xts_data>,(std::__variant_detail::_Trait)1>>(a1, a2);
  return a1;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<crypto::format::aes_cbc_data,crypto::format::aes_xts_data>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<crypto::format::aes_cbc_data,crypto::format::aes_xts_data>,(std::__variant_detail::_Trait)1>>(uint64_t a1, uint64_t a2)
{
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::format::aes_cbc_data,crypto::format::aes_xts_data>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v5 = *(a2 + 16);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_285BDF138[v5])(&v6, a2);
    *(a1 + 16) = v5;
  }

  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<crypto::format::aes_cbc_data,crypto::format::aes_xts_data>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<crypto::format::aes_cbc_data,crypto::format::aes_xts_data>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<crypto::format::aes_cbc_data,crypto::format::aes_xts_data>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<crypto::format::aes_cbc_data,crypto::format::aes_xts_data>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<crypto::format::aes_cbc_data,crypto::format::aes_xts_data>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,crypto::format::aes_cbc_data,crypto::format::aes_xts_data> &&>(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

void crypto::format::~format(crypto::format *this)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::format::aes_cbc_data,crypto::format::aes_xts_data>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](this + 64);
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void std::__shared_ptr_emplace<FileLocal>::__shared_ptr_emplace[abi:ne200100]<int &,BOOL,BOOL,std::allocator<FileLocal>,0>(void *a1, int *a2, BOOL *a3, unsigned __int8 *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BD6C38;
  v4 = *a4;
  FileLocal::FileLocal((a1 + 3), *a2, *a3);
}

uint64_t std::__shared_ptr_emplace<crypto::format>::__shared_ptr_emplace[abi:ne200100]<crypto::format,std::allocator<crypto::format>,0>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_285BD4B28;
  *(a1 + 24) = *a2;
  *a2 = 0u;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 40) = *(a2 + 16);
  *(a1 + 56) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a2 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 64) = *(a2 + 40);
  *(a1 + 80) = *(a2 + 56);
  *(a2 + 56) = 0;
  *(a2 + 40) = 0u;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<crypto::format::aes_cbc_data,crypto::format::aes_xts_data>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a1 + 88, a2 + 64);
  return a1;
}

void sub_248E7266C(_Unwind_Exception *a1)
{
  v6 = v5;
  v8 = *v6;
  if (*v6)
  {
    v1[3].__vftable = v8;
    operator delete(v8);
  }

  std::__shared_ptr_emplace<crypto::format>::__shared_ptr_emplace[abi:ne200100]<crypto::format,std::allocator<crypto::format>,0>(v2, v3, v4);
  std::__shared_weak_count::~__shared_weak_count(v1);
  _Unwind_Resume(a1);
}

void diskimage_uio::details::diskimage_open_params_impl::crypto_ctx_t::crypto_ctx_t(void *a1, void *a2, uint64_t *a3)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *a3;
  v4 = a3[1];
  a1[3] = v4;
  a1[2] = v5;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  a1[4] = 0;
  a1[5] = 0;
  std::allocate_shared[abi:ne200100]<crypto_format_backend,std::allocator<crypto_format_backend>,std::shared_ptr<Backend> &,std::shared_ptr<crypto::format> &,int,0>();
}

void sub_248E7275C(_Unwind_Exception *a1)
{
  v5 = *(v1 + 40);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  diskimage_uio::details::diskimage_open_params_impl::crypto_ctx_t::crypto_ctx_t(v3, v2);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<crypto_format_backend>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<Backend> &,std::shared_ptr<crypto::format> &,int,std::allocator<crypto_format_backend>,0>(void *a1, uint64_t a2, uint64_t a3, int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BD6E08;
  std::construct_at[abi:ne200100]<crypto_format_backend,std::shared_ptr<Backend> &,std::shared_ptr<crypto::format> &,int,crypto_format_backend*>((a1 + 3), a2, a3, a4);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<crypto_format_backend,std::shared_ptr<Backend> &,std::shared_ptr<crypto::format> &,int,crypto_format_backend*>(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = *a4;
  v10[0] = 0x200000001;
  smart_enums::validators::flags<unsigned int>("header_ignore_fields_t", v9, v10, 2);
  crypto_format_backend::crypto_format_backend(a1, a2, a3, &v9);
  v7 = *MEMORY[0x277D85DE8];
  return a1;
}

std::string *diskimage_uio::details::diskimage_open_params_impl::diskimage_open_params_impl(std::string *this, __int128 *a2, int a3, uint64_t a4)
{
  v18[1] = *MEMORY[0x277D85DE8];
  p_size = &this[24].__r_.__value_.__l.__size_;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v8;
  }

  LODWORD(this[23].__r_.__value_.__r.__words[1]) = 0;
  LODWORD(this[23].__r_.__value_.__r.__words[2]) = 0;
  *&this[1].__r_.__value_.__l.__data_ = 0u;
  *&this[1].__r_.__value_.__r.__words[2] = 0u;
  HIDWORD(this[23].__r_.__value_.__r.__words[2]) = a3;
  LODWORD(this[24].__r_.__value_.__l.__data_) = a3;
  *p_size = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(p_size + 1) = *(a4 + 16);
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(p_size + 2) = *(a4 + 32);
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  v9 = this[25].__r_.__value_.__r.__words[2];
  data = this[26].__r_.__value_.__l.__data_;
  if (data)
  {
    atomic_fetch_add_explicit(data + 1, 1uLL, memory_order_relaxed);
  }

  size = this[1].__r_.__value_.__l.__size_;
  this[1].__r_.__value_.__r.__words[0] = v9;
  this[1].__r_.__value_.__l.__size_ = data;
  if (size)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](size);
  }

  diskimage_uio::details::diskimage_open_params_impl::open_and_resolve(this, this[24].__r_.__value_.__l.__data_, 0, v17);
  if ((v17[16] & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = *diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(v17);
  }

  if (LODWORD(this[23].__r_.__value_.__r.__words[2]) == 2)
  {
    v13 = this[1].__r_.__value_.__l.__data_;
    v12 = this[1].__r_.__value_.__l.__size_;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18[0] = 0x200000001;
    smart_enums::validators::flags<unsigned int>("header_ignore_fields_t", 2, v18, 2);
    *(v13 + 98) = 2;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_248E72ACC(_Unwind_Exception *a1)
{
  v4 = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  diskimage_uio::details::diskimage_open_params_impl::crypto_ctx_t::~crypto_ctx_t(v2);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v1 + 56);
  v6 = *(v1 + 48);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(v1 + 32);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<crypto::header>::__shared_ptr_emplace[abi:ne200100]<char *,std::allocator<crypto::header>,0>(void *a1, const char **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BDD998;
  crypto::header::header((a1 + 3), *a2);
  return a1;
}

std::string *diskimage_uio::details::diskimage_open_params_impl::diskimage_open_params_impl(std::string *this, __int128 *a2, std::string::size_type *a3, int a4, int a5, std::string::size_type *a6)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v11 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v11;
  }

  v12 = a3[1];
  this[1].__r_.__value_.__r.__words[0] = *a3;
  this[1].__r_.__value_.__l.__size_ = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = a6[1];
  this[1].__r_.__value_.__r.__words[2] = *a6;
  this[2].__r_.__value_.__r.__words[0] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  LODWORD(this[23].__r_.__value_.__r.__words[1]) = 0;
  LODWORD(this[23].__r_.__value_.__r.__words[2]) = 0;
  HIDWORD(this[23].__r_.__value_.__r.__words[2]) = a5;
  LODWORD(this[24].__r_.__value_.__l.__data_) = a4;
  *&this[24].__r_.__value_.__r.__words[1] = 0u;
  *&this[25].__r_.__value_.__l.__data_ = 0u;
  *&this[25].__r_.__value_.__r.__words[2] = 0u;
  diskimage_uio::details::diskimage_open_params_impl::open_and_resolve(this, a4, 1, v16);
  if ((v16[16] & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = *diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(v16);
  }

  return this;
}

void sub_248E72D1C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v3);
  diskimage_uio::details::diskimage_open_params_impl::crypto_ctx_t::~crypto_ctx_t(v2);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v1 + 56);
  v5 = *(v1 + 48);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(v1 + 32);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t diskimage_uio::details::diskimage_open_params_impl::diskimage_open_params_impl(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a1 + 56, a2 + 56);
  v5 = *(a2 + 71);
  *(a1 + 576) = *(a2 + 144);
  *(a1 + 568) = v5;
  *(a1 + 584) = *(a2 + 73);
  *(a1 + 592) = *(a2 + 74);
  *(a2 + 584) = 0u;
  *(a1 + 600) = *(a2 + 75);
  *(a1 + 608) = *(a2 + 76);
  *(a2 + 600) = 0u;
  *(a1 + 616) = *(a2 + 77);
  *(a1 + 624) = *(a2 + 78);
  *(a2 + 616) = 0u;
  return a1;
}

void sub_248E72E30(_Unwind_Exception *a1)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  diskimage_uio::details::diskimage_open_params_impl::diskimage_open_params_impl((v1 + 32), v1);
  _Unwind_Resume(a1);
}

_BYTE *diskimage_uio::details::diskimage_open_params_impl::validate_unlocked@<X0>(const std::error_category *this@<X0>, uint64_t a2@<X8>)
{
  diskimage_uio::details::diskimage_open_params_impl::is_locked(this, v16);
  if (v16[16])
  {
    result = diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<DIImageFormat,std::error_code>::value(v16);
    if (*result == 1)
    {
      *&v11 = "diskimage_err> diskimage_uio::details::diskimage_open_params_impl::validate_unlocked() const";
      *(&v11 + 1) = 84;
      v12 = 16;
      di_log::logger<di_log::log_printer<635ul>>::logger(v13, &v11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "Diskimageuio: image is locked", 29);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<635ul>>::~logger_buf(v13);
      MEMORY[0x24C1ED6A0](v15);
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
    di_log::logger<di_log::log_printer<630ul>>::logger(v13, &v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "Diskimageuio: can't get lock status ", 36);
    v6 = diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(v16);
    v7 = (*(**(v6 + 1) + 16))(*(v6 + 1));
    v8 = strlen(v7);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, v7, v8);
    v17 = 58;
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, &v17, 1);
    MEMORY[0x24C1ED390](v10, *v6);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<630ul>>::~logger_buf(v13);
    MEMORY[0x24C1ED6A0](v15);
    result = diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(v16);
    v4 = 0;
    *a2 = *result;
  }

  *(a2 + 16) = v4;
  return result;
}

void sub_248E7300C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<635ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<645ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<645ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BDF5A0;
  a1[45] = &unk_285BDF6A0;
  a1[46] = &unk_285BDF6C8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BDF5A0;
  a1[45] = &unk_285BDF628;
  a1[46] = &unk_285BDF650;
  return a1;
}

void sub_248E73134(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<645ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<645ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<645ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<630ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<630ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BDF160;
  a1[45] = &unk_285BDF260;
  a1[46] = &unk_285BDF288;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BDF160;
  a1[45] = &unk_285BDF1E8;
  a1[46] = &unk_285BDF210;
  return a1;
}

void sub_248E732A0(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<630ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<630ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<630ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<635ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<635ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BDF380;
  a1[45] = &unk_285BDF480;
  a1[46] = &unk_285BDF4A8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BDF380;
  a1[45] = &unk_285BDF408;
  a1[46] = &unk_285BDF430;
  return a1;
}

void sub_248E7340C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<635ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<635ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<635ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<630ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BDF2F8;
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

void sub_248E73524(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<630ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BDF2F8;
  di_log::logger_buf<di_log::log_printer<630ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<630ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<630ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<630ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<630ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<630ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<630ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<630ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<630ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<630ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<630ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<630ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<630ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<630ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<630ul>::log((a1 + 72), __p);
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

void sub_248E73AC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<630ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 630;
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
      v22 = 630;
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

uint64_t di_log::logger_buf<di_log::log_printer<635ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BDF518;
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

void sub_248E73D84(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<635ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BDF518;
  di_log::logger_buf<di_log::log_printer<635ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<635ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<635ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<635ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<635ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<635ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<635ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<635ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<635ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<635ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<635ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<635ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<635ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<635ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<635ul>::log((a1 + 72), __p);
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

void sub_248E74328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<635ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 635;
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
      v22 = 635;
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

uint64_t di_log::logger_buf<di_log::log_printer<645ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BDF738;
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

void sub_248E745E4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<645ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BDF738;
  di_log::logger_buf<di_log::log_printer<645ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<645ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<645ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<645ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<645ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<645ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<645ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<645ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<645ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<645ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<645ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<645ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<645ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<645ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<645ul>::log((a1 + 72), __p);
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

void sub_248E74B88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<645ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 645;
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
      v22 = 645;
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

void *di_log::logger<di_log::log_printer<655ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<655ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BDF7C0;
  a1[45] = &unk_285BDF8C0;
  a1[46] = &unk_285BDF8E8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BDF7C0;
  a1[45] = &unk_285BDF848;
  a1[46] = &unk_285BDF870;
  return a1;
}

void sub_248E74E98(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<655ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<655ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<655ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<655ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BDF958;
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

void sub_248E74FB0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<655ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BDF958;
  di_log::logger_buf<di_log::log_printer<655ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<655ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<655ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<655ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<655ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<655ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<655ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<655ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<655ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<655ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<655ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<655ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<655ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<655ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<655ul>::log((a1 + 72), __p);
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

void sub_248E75554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<655ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 655;
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
      v22 = 655;
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

const std::error_category *std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<hdr_get_block_size(std::variant<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header> const&>@<X0>(uint64_t a1@<X8>)
{
  *&v3 = "hdr_get_block_size(const hdr_variant &)::(anonymous class)::operator()(const auto &) const [hdr:auto = std::monostate]";
  *(&v3 + 1) = 70;
  v4 = 16;
  di_log::logger<di_log::log_printer<101ul>>::logger(v5, &v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "Diskimageuio: can't get Diskimage attribute, unknown header format", 66);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<101ul>>::~logger_buf(v5);
  MEMORY[0x24C1ED6A0](&v7);
  result = std::generic_category();
  *a1 = 6;
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  return result;
}

void sub_248E757FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<101ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<hdr_get_block_size(std::variant<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header> const&>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  diskimage_uio::details::diskimage_open_params_impl::get_block_size(*(*(*a1 + 8) - 8), &v3);
  *a2 = v3.n128_u64[0];
  *(a2 + 16) = 1;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<hdr_get_block_size(std::variant<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header> const&>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = (*(*a1 + 8))();
  *a2 = result;
  *(a2 + 16) = 1;
  return result;
}

void *di_log::logger<di_log::log_printer<101ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<101ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BDFA10;
  a1[45] = &unk_285BDFB10;
  a1[46] = &unk_285BDFB38;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BDFA10;
  a1[45] = &unk_285BDFA98;
  a1[46] = &unk_285BDFAC0;
  return a1;
}

void sub_248E759D4(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<101ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<101ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<101ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<101ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BDFBA8;
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

void sub_248E75AEC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<101ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BDFBA8;
  di_log::logger_buf<di_log::log_printer<101ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<101ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<101ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<101ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<101ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<101ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<101ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<101ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<101ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<101ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<101ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<101ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<101ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<101ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<101ul>::log((a1 + 72), __p);
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

void sub_248E76090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<101ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 101;
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
      v22 = 101;
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

void *di_log::logger<di_log::log_printer<665ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<665ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BDFC30;
  a1[45] = &unk_285BDFD30;
  a1[46] = &unk_285BDFD58;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BDFC30;
  a1[45] = &unk_285BDFCB8;
  a1[46] = &unk_285BDFCE0;
  return a1;
}

void sub_248E763A0(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<665ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<665ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<665ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<665ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BDFDC8;
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

void sub_248E764B8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<665ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BDFDC8;
  di_log::logger_buf<di_log::log_printer<665ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<665ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<665ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<665ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<665ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<665ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<665ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<665ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<665ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<665ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<665ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<665ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<665ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<665ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<665ul>::log((a1 + 72), __p);
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

void sub_248E76A5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<665ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 665;
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
      v22 = 665;
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

const std::error_category *std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<hdr_get_nr_blocks(std::variant<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header> const&>@<X0>(uint64_t a1@<X8>)
{
  *&v3 = "hdr_get_nr_blocks(const hdr_variant &)::(anonymous class)::operator()(const auto &) const [hdr:auto = std::monostate]";
  *(&v3 + 1) = 69;
  v4 = 16;
  di_log::logger<di_log::log_printer<113ul>>::logger(v5, &v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "Diskimageuio: can't get Diskimage attribute, unknown header format", 66);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<113ul>>::~logger_buf(v5);
  MEMORY[0x24C1ED6A0](&v7);
  result = std::generic_category();
  *a1 = 6;
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  return result;
}

void sub_248E76D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<113ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<hdr_get_nr_blocks(std::variant<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header> const&>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  diskimage_uio::details::diskimage_open_params_impl::get_nr_blocks(*(*(*a1 + 8) - 8), &v3);
  *a2 = v3.n128_u64[0];
  *(a2 + 16) = 1;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<hdr_get_nr_blocks(std::variant<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header> const&>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = (*(*a1 + 16))();
  *a2 = result;
  *(a2 + 16) = 1;
  return result;
}

crypto::auth_table **std::unique_ptr<diskimage_uio::crypto::details::auth_table_impl_t>::~unique_ptr[abi:ne200100](crypto::auth_table **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    crypto::auth_table::~auth_table(v2);
    MEMORY[0x24C1ED730]();
  }

  return a1;
}

void *di_log::logger<di_log::log_printer<159ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<159ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BDFE80;
  a1[45] = &unk_285BDFF80;
  a1[46] = &unk_285BDFFA8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BDFE80;
  a1[45] = &unk_285BDFF08;
  a1[46] = &unk_285BDFF30;
  return a1;
}

void sub_248E76F28(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<159ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<159ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<159ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<159ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BE0018;
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

void sub_248E77040(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<159ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE0018;
  di_log::logger_buf<di_log::log_printer<159ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<159ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<159ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<159ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<159ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<159ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<159ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<159ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<159ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<159ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<159ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<159ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<159ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<159ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<159ul>::log((a1 + 72), __p);
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

void sub_248E775E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<159ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 159;
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
      v22 = 159;
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

void *di_log::logger<di_log::log_printer<173ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<173ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BE00A0;
  a1[45] = &unk_285BE01A0;
  a1[46] = &unk_285BE01C8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BE00A0;
  a1[45] = &unk_285BE0128;
  a1[46] = &unk_285BE0150;
  return a1;
}

void sub_248E778F4(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<173ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<173ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<173ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<173ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BE0238;
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

void sub_248E77A0C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<173ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE0238;
  di_log::logger_buf<di_log::log_printer<173ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<173ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<173ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<173ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<173ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<173ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<173ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<173ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<173ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<173ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<173ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<173ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<173ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<173ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<173ul>::log((a1 + 72), __p);
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

void sub_248E77FB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<173ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 173;
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
      v22 = 173;
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

void di_hybrid_subscriber_t::~di_hybrid_subscriber_t(di_hybrid_subscriber_t *this)
{
  gcd::gcd_queue::barrier_sync(this + 63, &__block_literal_global_4);
  gcd::gcd_group::~gcd_group(this + 78);
  std::deque<std::atomic<DiskImage::Context *>>::~deque[abi:ne200100](this + 72);
  std::mutex::~mutex(this + 8);
  gcd::gcd_group::~gcd_group(this + 63);
  PluginRing::~PluginRing((this + 304));
  std::__function::__value_func<diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<std::unique_ptr<DiskImage::Context>,std::error_code> ()(void)>::~__value_func[abi:ne200100](this + 248);
  pool_ns::pool_t<DiskImage::Context,std::default_delete>::~pool_t(this + 120);
}

uint64_t std::optional<crypto::keys>::operator=[abi:ne200100]<crypto::keys&,void>(uint64_t a1, char ***a2)
{
  if (*(a1 + 24) == 1)
  {
    if (a1 != a2)
    {
      std::vector<crypto::keys::key_pair>::__assign_with_size[abi:ne200100]<crypto::keys::key_pair*,crypto::keys::key_pair*>(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4));
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    std::vector<crypto::keys::key_pair>::__init_with_size[abi:ne200100]<crypto::keys::key_pair*,crypto::keys::key_pair*>(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4));
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_248E78324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void diskimage_uio::details::diskimage_open_params_impl::resolve_disk_after_crypto_ctx(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34[19] = *MEMORY[0x277D85DE8];
  diskimage_uio::details::diskimage_open_params_impl::open_and_resolve(a1, *(a1 + 576), 0, &v28);
  if ((v29 & 1) == 0)
  {
    v8 = *(a1 + 572);
    if (v8)
    {
      if (*(a1 + 576) != v8)
      {
        v20 = diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(&v28);
        v21 = std::generic_category();
        *&v31 = 35;
        *(&v31 + 1) = v21;
        if ((*(**(v20 + 1) + 32))(*(v20 + 1), *v20, &v31) || (*(**(&v31 + 1) + 40))(*(&v31 + 1), v20, v31))
        {
          *&v26 = "diskimage_err> diskimage_uio::details::diskimage_open_params_impl::resolve_disk_after_crypto_ctx(std::optional<crypto_internal::keys> &&)";
          *(&v26 + 1) = 96;
          v27 = 2;
          di_log::logger<di_log::log_printer<682ul>>::logger(&v31, &v26);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, "Diskimageuio: required mode ", 28);
          diskimage_uio::operator<<(&v33, *(a1 + 572));
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, " is different than current mode ", 32);
          diskimage_uio::operator<<(&v33, *(a1 + 576));
          std::ostream::~ostream();
          di_log::logger_buf<di_log::log_printer<682ul>>::~logger_buf(&v31);
          MEMORY[0x24C1ED6A0](v34);
          diskimage_uio::details::diskimage_open_params_impl::open_and_resolve(a1, *(a1 + 572), 0, &v31);
          if (v32)
          {
            if ((v29 & 1) == 0)
            {
              v29 = v32;
            }

            *&v26 = "diskimage_err> diskimage_uio::details::diskimage_open_params_impl::resolve_disk_after_crypto_ctx(std::optional<crypto_internal::keys> &&)";
            *(&v26 + 1) = 96;
            v27 = 16;
            di_log::logger<di_log::log_printer<687ul>>::logger(&v31, &v26);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, "Diskimageuio: after reopening backend to read-write, it's no longer encrypted", 77);
            std::ostream::~ostream();
            di_log::logger_buf<di_log::log_printer<687ul>>::~logger_buf(&v31);
            goto LABEL_22;
          }

          v28 = v31;
          if (v29)
          {
            v29 = v32;
          }

          if (*(a2 + 24) == 1)
          {
            diskimage_uio::details::diskimage_open_params_impl::unlock(a1, a2, 0);
            goto LABEL_24;
          }
        }
      }
    }

    *&v26 = "diskimage_err> diskimage_uio::details::diskimage_open_params_impl::resolve_disk_after_crypto_ctx(std::optional<crypto_internal::keys> &&)";
    *(&v26 + 1) = 96;
    v27 = 16;
    di_log::logger<di_log::log_printer<698ul>>::logger(&v31, &v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, "Diskimageuio: couldn't resolve image while setting passphrase ", 62);
    v9 = diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(&v28);
    v10 = (*(**(v9 + 1) + 16))(*(v9 + 1));
    v11 = strlen(v10);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, v10, v11);
    LOBYTE(v24) = 58;
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, &v24, 1);
    MEMORY[0x24C1ED390](v13, *v9);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<698ul>>::~logger_buf(&v31);
    MEMORY[0x24C1ED6A0](v34);
    v14 = diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(&v28);
LABEL_14:
    *a3 = *v14;
LABEL_23:
    *(a3 + 16) = 0;
    goto LABEL_24;
  }

  diskimage_uio::details::diskimage_open_params_impl::is_encrypted(a1, &v26);
  if ((v27 & 1) == 0)
  {
    *&v24 = "diskimage_err> diskimage_uio::details::diskimage_open_params_impl::resolve_disk_after_crypto_ctx(std::optional<crypto_internal::keys> &&)";
    *(&v24 + 1) = 96;
    v25 = 16;
    di_log::logger<di_log::log_printer<703ul>>::logger(&v31, &v24);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, "Diskimageuio: can't set passphrase, can't get encrypted status ", 63);
    v15 = diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(&v26);
    v16 = (*(**(v15 + 1) + 16))(*(v15 + 1));
    v17 = strlen(v16);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, v16, v17);
    v30 = 58;
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, &v30, 1);
    MEMORY[0x24C1ED390](v19, *v15);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<703ul>>::~logger_buf(&v31);
    MEMORY[0x24C1ED6A0](v34);
    v14 = diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(&v26);
    goto LABEL_14;
  }

  if ((v26 & 1) == 0)
  {
    *&v24 = "diskimage_err> diskimage_uio::details::diskimage_open_params_impl::resolve_disk_after_crypto_ctx(std::optional<crypto_internal::keys> &&)";
    *(&v24 + 1) = 96;
    v25 = 16;
    di_log::logger<di_log::log_printer<707ul>>::logger(&v31, &v24);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, "Diskimageuio: can't set passphrase, image not encrypted after reopen", 68);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<707ul>>::~logger_buf(&v31);
LABEL_22:
    MEMORY[0x24C1ED6A0](v34);
    *a3 = make_error_code(161);
    *(a3 + 8) = v22;
    goto LABEL_23;
  }

  if (*(a1 + 568) == 2)
  {
    v7 = *(a1 + 24);
    v6 = *(a1 + 32);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *&v31 = 0x200000001;
    smart_enums::validators::flags<unsigned int>("header_ignore_fields_t", 2, &v31, 2);
    *(v7 + 392) = 2;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  *a3 = 0;
  *(a3 + 16) = 1;
LABEL_24:
  v23 = *MEMORY[0x277D85DE8];
}

void sub_248E7882C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  di_log::logger<di_log::log_printer<687ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void std::vector<crypto::keys::key_pair>::__assign_with_size[abi:ne200100]<crypto::keys::key_pair*,crypto::keys::key_pair*>(uint64_t a1, char **a2, char **a3, unint64_t a4)
{
  v7 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    std::vector<crypto::keys::key_pair>::__vdeallocate(a1);
    if (a4 <= 0x555555555555555)
    {
      v8 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
      if (v8 <= a4)
      {
        v8 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
      {
        v9 = 0x555555555555555;
      }

      else
      {
        v9 = v8;
      }

      std::vector<crypto::keys::key_pair>::__vallocate[abi:ne200100](a1, v9);
    }

    std::vector<iovec>::__throw_length_error[abi:ne200100]();
  }

  v10 = *(a1 + 8) - v7;
  if (0xAAAAAAAAAAAAAAABLL * (v10 >> 4) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<crypto::keys::key_pair *,crypto::keys::key_pair *,crypto::keys::key_pair *>(&v16, a2, a3, v7);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        v14 -= 48;
        std::__destroy_at[abi:ne200100]<crypto::keys::key_pair,0>(v14);
      }

      while (v14 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v11 = std::__copy_impl::operator()[abi:ne200100]<crypto::keys::key_pair *,crypto::keys::key_pair *,crypto::keys::key_pair *>(&v15, a2, (a2 + v10), v7);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<crypto::keys::key_pair>,crypto::keys::key_pair*,crypto::keys::key_pair*,crypto::keys::key_pair*>(a1, v11, a3, *(a1 + 8));
  }
}

void std::vector<crypto::keys::key_pair>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 48;
        std::__destroy_at[abi:ne200100]<crypto::keys::key_pair,0>(v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<crypto::keys::key_pair>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::allocator<crypto::keys::key_pair>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<iovec>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<crypto::keys::key_pair>,crypto::keys::key_pair*,crypto::keys::key_pair*,crypto::keys::key_pair*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a2 + v7;
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      std::vector<std::byte>::__init_with_size[abi:ne200100]<std::byte*,std::byte*>(a4, *(a2 + v7), *(a2 + v7 + 8), *(a2 + v7 + 8) - *(a2 + v7));
      a4[3] = 0;
      a4[4] = 0;
      a4[5] = 0;
      std::vector<std::byte>::__init_with_size[abi:ne200100]<std::byte*,std::byte*>((a4 + 3), *(v8 + 24), *(v8 + 32), *(v8 + 32) - *(v8 + 24));
      a4 += 6;
      v7 += 48;
    }

    while (v8 + 48 != a3);
  }

  return a4;
}

void sub_248E78B50(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 48;
    v5 = -v2;
    do
    {
      std::__destroy_at[abi:ne200100]<crypto::keys::key_pair,0>(v4);
      v4 -= 48;
      v5 += 48;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

char **std::__copy_impl::operator()[abi:ne200100]<crypto::keys::key_pair *,crypto::keys::key_pair *,crypto::keys::key_pair *>(int a1, char **a2, char **a3, char **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<std::byte>::__assign_with_size[abi:ne200100]<std::byte*,std::byte*>(a4, *v5, v5[1], v5[1] - *v5);
        std::vector<std::byte>::__assign_with_size[abi:ne200100]<std::byte*,std::byte*>(a4 + 3, v5[3], v5[4], v5[4] - v5[3]);
      }

      v5 += 6;
      a4 += 6;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void *std::vector<std::byte>::__assign_with_size[abi:ne200100]<std::byte*,std::byte*>(void *result, char *__src, char *a3, unint64_t a4)
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

      std::vector<char>::__vallocate[abi:ne200100](v7, v11);
    }

    std::vector<iovec>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (v12 - v9 >= a4)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v9[v17];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = a3 - &__src[v13];
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  v7[1] = v16;
  return result;
}

void std::allocator<crypto::keys::key_pair>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<crypto::keys::key_pair>::__init_with_size[abi:ne200100]<crypto::keys::key_pair*,crypto::keys::key_pair*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<crypto::keys::key_pair>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_248E78E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<crypto::keys::key_pair>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<682ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<682ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BE02E0;
  a1[45] = &unk_285BE03E0;
  a1[46] = &unk_285BE0408;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BE02E0;
  a1[45] = &unk_285BE0368;
  a1[46] = &unk_285BE0390;
  return a1;
}

void sub_248E78F24(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<682ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<682ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<682ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<687ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<687ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BE0500;
  a1[45] = &unk_285BE0600;
  a1[46] = &unk_285BE0628;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BE0500;
  a1[45] = &unk_285BE0588;
  a1[46] = &unk_285BE05B0;
  return a1;
}

void sub_248E79090(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<687ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<687ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<687ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<698ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<698ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BE0720;
  a1[45] = &unk_285BE0820;
  a1[46] = &unk_285BE0848;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BE0720;
  a1[45] = &unk_285BE07A8;
  a1[46] = &unk_285BE07D0;
  return a1;
}

void sub_248E791FC(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<698ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<698ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<698ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<703ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<703ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BE0940;
  a1[45] = &unk_285BE0A40;
  a1[46] = &unk_285BE0A68;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BE0940;
  a1[45] = &unk_285BE09C8;
  a1[46] = &unk_285BE09F0;
  return a1;
}

void sub_248E79368(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<703ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<703ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<703ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<707ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<707ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BE0B60;
  a1[45] = &unk_285BE0C60;
  a1[46] = &unk_285BE0C88;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BE0B60;
  a1[45] = &unk_285BE0BE8;
  a1[46] = &unk_285BE0C10;
  return a1;
}

void sub_248E794D4(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<707ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<707ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<707ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<682ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BE0478;
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

void sub_248E795EC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<682ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE0478;
  di_log::logger_buf<di_log::log_printer<682ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<682ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<682ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<682ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<682ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<682ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<682ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<682ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<682ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<682ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<682ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<682ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<682ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<682ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<682ul>::log((a1 + 72), __p);
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

void sub_248E79B90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<682ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 682;
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
      v22 = 682;
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

uint64_t di_log::logger_buf<di_log::log_printer<687ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BE0698;
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

void sub_248E79E4C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<687ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE0698;
  di_log::logger_buf<di_log::log_printer<687ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<687ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<687ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<687ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<687ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<687ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<687ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<687ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<687ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<687ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<687ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<687ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<687ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<687ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<687ul>::log((a1 + 72), __p);
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

void sub_248E7A3F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<687ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 687;
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
      v22 = 687;
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

uint64_t di_log::logger_buf<di_log::log_printer<698ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BE08B8;
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

void sub_248E7A6AC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<698ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE08B8;
  di_log::logger_buf<di_log::log_printer<698ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<698ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<698ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<698ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<698ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<698ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<698ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<698ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<698ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<698ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<698ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<698ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<698ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<698ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<698ul>::log((a1 + 72), __p);
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

void sub_248E7AC50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<698ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 698;
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
      v22 = 698;
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

uint64_t di_log::logger_buf<di_log::log_printer<703ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BE0AD8;
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

void sub_248E7AF0C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<703ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE0AD8;
  di_log::logger_buf<di_log::log_printer<703ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<703ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<703ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<703ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<703ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<703ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<703ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<703ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<703ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<703ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<703ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<703ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<703ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<703ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<703ul>::log((a1 + 72), __p);
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

void sub_248E7B4B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<703ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 703;
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
      v22 = 703;
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

uint64_t di_log::logger_buf<di_log::log_printer<707ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BE0CF8;
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

void sub_248E7B76C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<707ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE0CF8;
  di_log::logger_buf<di_log::log_printer<707ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<707ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<707ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<707ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<707ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<707ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<707ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<707ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<707ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<707ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<707ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<707ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<707ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<707ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<707ul>::log((a1 + 72), __p);
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

void sub_248E7BD10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<707ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 707;
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
      v22 = 707;
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

uint64_t io_rings_di_subscriber_t::io_rings_di_subscriber_t(io_rings_desc_t *,diskimage_uio::details::diskimage_impl &,std::function<diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<std::unique_ptr<DiskImage::Context>,std::error_code> ()(void)> const&)::$_1::__invoke(uint64_t *a1, unsigned __int8 *a2)
{
  io_rings_di_subscriber_t::get_ctx(a1, v7);
  if (v7[1])
  {
    v4 = io_rings_parse_and_execute_sqe(a1, v7, a2);
  }

  else
  {
    v4 = -12;
  }

  v5 = io_rings_return_status(a1[7], a2, v4, 0);
  pool_ns::pool_t<DiskImage::Context,std::default_delete>::pooled_element_t::~pooled_element_t(v7);
  return v5;
}

void sub_248E7BF94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pool_ns::pool_t<DiskImage::Context,std::default_delete>::pooled_element_t::~pooled_element_t(va);
  _Unwind_Resume(a1);
}

void header_exception::~header_exception(std::exception *this)
{
  DiskImagesRuntimeException::~DiskImagesRuntimeException(this);

  JUMPOUT(0x24C1ED730);
}

void ***std::unique_ptr<std::vector<diskimage_uio::diskimage_open_params_pair>>::reset[abi:ne200100](void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2;
    std::vector<diskimage_uio::diskimage_open_params_pair>::__destroy_vector::operator()[abi:ne200100](&v3);
    return MEMORY[0x24C1ED730](v2, 0x20C40960023A9);
  }

  return result;
}

void std::vector<diskimage_uio::diskimage_open_params_pair>::__swap_out_circular_buffer(uint64_t *a1, void *a2)
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

void std::allocator<diskimage_uio::diskimage_open_params_pair>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<diskimage_uio::diskimage_open_params_pair>::~__split_buffer(uint64_t a1)
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

void std::vector<diskimage_uio::diskimage_open_params_pair>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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

uint64_t std::shared_lock<std::shared_mutex>::~shared_lock[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    std::__shared_mutex_base::unlock_shared(*a1);
  }

  return a1;
}

uint64_t std::unique_lock<std::shared_mutex>::~unique_lock[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    std::__shared_mutex_base::unlock(*a1);
  }

  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<1084ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BD9E28;
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

void sub_248E7C3D8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<1097ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BDA708;
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

void sub_248E7C4A0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t std::operator<<[abi:ne200100]<di_log::logger<di_log::log_printer<1992ul>>,char [33],0>(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a1 + 360), __s, v4);
  return a1;
}

void *di_log::logger<di_log::log_printer<1992ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<1992ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BE0DA8;
  a1[45] = &unk_285BE0EA8;
  a1[46] = &unk_285BE0ED0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BE0DA8;
  a1[45] = &unk_285BE0E30;
  a1[46] = &unk_285BE0E58;
  return a1;
}

void sub_248E7C5FC(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<1992ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<1992ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1992ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<1999ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<1999ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BE0FC8;
  a1[45] = &unk_285BE10C8;
  a1[46] = &unk_285BE10F0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BE0FC8;
  a1[45] = &unk_285BE1050;
  a1[46] = &unk_285BE1078;
  return a1;
}

void sub_248E7C768(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<1999ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<1999ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1999ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t diskimage_uio::details::diskimage_impl::create_diskimage_impl<std::move_iterator<std::__wrap_iter<diskimage_uio::diskimage_open_params_pair *>>>(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    *&v13 = "diskimage_impl *diskimage_uio::details::diskimage_impl::create_diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<std::__wrap_iter<diskimage_uio::diskimage_open_params_pair *>>]";
    *(&v13 + 1) = 77;
    v14 = 16;
    di_log::logger<di_log::log_printer<1992ul>>::logger(v15, &v13);
    std::operator<<[abi:ne200100]<di_log::logger<di_log::log_printer<1992ul>>,char [33],0>(v15, "Diskimageuio: No diskimage given");
    di_log::logger<di_log::log_printer<1992ul>>::~logger(v15);
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = make_error_code(157);
    exception[1] = v8;
  }

  if (a1 + 16 != a2)
  {
    operator new();
  }

  v11 = *a1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v12 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    *&v13 = "diskimage_impl *diskimage_uio::details::diskimage_impl::create_diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<std::__wrap_iter<diskimage_uio::diskimage_open_params_pair *>>]";
    *(&v13 + 1) = 77;
    v14 = 16;
    di_log::logger<di_log::log_printer<1999ul>>::logger(v15, &v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Diskimageuio: single image given, but role is ", 46);
    diskimage_uio::operator<<(v17, v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " rather than image", 18);
    di_log::logger<di_log::log_printer<1999ul>>::~logger(v15);
    v9 = __cxa_allocate_exception(0x10uLL);
    v10 = std::generic_category();
    *v9 = 22;
    v9[1] = v10;
  }

  diskimage_uio::details::diskimage_open_params_impl::query_image_format(v4, &v13);
  LODWORD(v15[0]) = 12;
  v16 = 1;
  if (diskimage_uio::expected_ns::std::experimental::fundamentals_v3::operator==<DIImageFormat,std::error_code>(&v13, v15))
  {
    operator new();
  }

  diskimage_uio::details::diskimage_open_params_impl::query_image_format(v12, &v13);
  LODWORD(v15[0]) = 11;
  v16 = 1;
  if (!diskimage_uio::expected_ns::std::experimental::fundamentals_v3::operator==<DIImageFormat,std::error_code>(&v13, v15) || *(*(v12 + 7) + 8) - **(v12 + 7) != 16)
  {
    operator new();
  }

  v5 = diskimage_uio::details::diskimage_impl::create_diskimage_impl<std::move_iterator<std::__wrap_iter<diskimage_uio::diskimage_open_params_pair *>>>();
  diskimage_uio::diskimage_open_params::~diskimage_open_params(&v12);
  return v5;
}

void sub_248E7CAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  di_log::logger<di_log::log_printer<1992ul>>::~logger(va);
  JUMPOUT(0x248E7CAB8);
}

uint64_t di_log::logger_buf<di_log::log_printer<1992ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BE0F40;
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

void sub_248E7CB94(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<1992ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE0F40;
  di_log::logger_buf<di_log::log_printer<1992ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<1992ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1992ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<1992ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<1992ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<1992ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1992ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1992ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<1992ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1992ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1992ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<1992ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<1992ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<1992ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<1992ul>::log((a1 + 72), __p);
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

void sub_248E7D138(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<1992ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 1992;
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
      v22 = 1992;
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

uint64_t di_log::logger_buf<di_log::log_printer<1999ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BE1160;
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

void sub_248E7D3F4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<1999ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE1160;
  di_log::logger_buf<di_log::log_printer<1999ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<1999ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1999ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<1999ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<1999ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<1999ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1999ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1999ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<1999ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1999ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1999ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<1999ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<1999ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<1999ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<1999ul>::log((a1 + 72), __p);
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

void sub_248E7D998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<1999ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 1999;
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
      v22 = 1999;
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

uint64_t diskimage_uio::details::diskimage_impl::diskimage_impl<std::move_iterator<std::__wrap_iter<diskimage_uio::diskimage_open_params_pair *>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v68 = *MEMORY[0x277D85DE8];
  *(a1 + 8) = 0u;
  v6 = (a1 + 8);
  *a1 = &unk_285BD9B88;
  *(a1 + 64) = 850045863;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  std::__shared_mutex_base::__shared_mutex_base((a1 + 128));
  if (a2 == a3)
  {
    *&v59 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<std::__wrap_iter<diskimage_uio::diskimage_open_params_pair *>>]";
    *(&v59 + 1) = 54;
    LODWORD(v60) = 16;
    di_log::logger<di_log::log_printer<956ul>>::logger(&v61, &v59);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, "Diskimageuio: No diskimage given", 32);
    di_log::logger<di_log::log_printer<956ul>>::~logger(&v61);
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = make_error_code(157);
    exception[1] = v49;
  }

  v7 = *a2;
  v57 = *a2;
  v8 = *(a2 + 8);
  v58 = v8;
  *(a2 + 8) = 0;
  if (a2 + 16 != a3)
  {
    diskimage_uio::details::diskimage_open_params_impl::transfer_disk_image_ownership(v8, &lpsrc);
    v12 = (*(*lpsrc + 24))(lpsrc);
    if (!v57)
    {
      *&v59 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<std::__wrap_iter<diskimage_uio::diskimage_open_params_pair *>>]";
      *(&v59 + 1) = 54;
      LODWORD(v60) = 16;
      di_log::logger<di_log::log_printer<978ul>>::logger(&v61, &v59);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, "Diskimageuio: multiple images given, but first role is image instead of shadow/cache/snapshot", 93);
      di_log::logger<di_log::log_printer<978ul>>::~logger(&v61);
      v52 = __cxa_allocate_exception(0x10uLL);
      *v52 = make_error_code(163);
      v52[1] = v53;
    }

    v13 = v12;
    v59 = 0uLL;
    v60 = 0;
    v14 = lpsrc;
    if (v57 == 1)
    {
      lpsrc = 0;
      v61 = v14;
      LODWORD(v62) = 2;
    }

    else
    {
      v15 = (*(*lpsrc + 40))(lpsrc);
      if (v57 == 3)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      v17 = lpsrc;
      if (v16 == 1 && lpsrc != 0)
      {
        v19 = **lpsrc;
        if (v20)
        {
          v20[216] = 0;
        }
      }

      v21 = v16 ^ 1;
      v22 = *(&v59 + 1);
      lpsrc = 0;
      v61 = v17;
      LODWORD(v62) = v21;
      if (*(&v59 + 1) < v60)
      {
        **(&v59 + 1) = v17;
        if (v17)
        {
          operator new();
        }

        *(v22 + 8) = 0;
        *(v22 + 16) = v21;
        *(&v59 + 1) = v22 + 24;
        goto LABEL_25;
      }
    }

    v23 = std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::__emplace_back_slow_path<std::tuple<std::unique_ptr<DiskImage>,DiskImageStackable::role>>(&v59, &v61);
    v24 = v61;
    *(&v59 + 1) = v23;
    v61 = 0;
    if (v24)
    {
      (*(*v24 + 16))(v24);
    }

LABEL_25:
    v25 = a2 + 16;
    if (a2 + 16 == a3)
    {
LABEL_58:
      operator new();
    }

    v26 = v57;
    v27 = v57 == 1;
    while (1)
    {
      v57 = *v25;
      diskimage_uio::diskimage_open_params::operator=(&v58, (v25 + 8));
      diskimage_uio::details::diskimage_open_params_impl::query_image_format(v58, v54);
      if ((v55 & 1) == 0)
      {
        *&v66 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<std::__wrap_iter<diskimage_uio::diskimage_open_params_pair *>>]";
        *(&v66 + 1) = 54;
        v67 = 16;
        di_log::logger<di_log::log_printer<1003ul>>::logger(&v61, &v66);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, "Diskimageuio: Can't get image format", 36);
        di_log::logger<di_log::log_printer<1003ul>>::~logger(&v61);
        v44 = __cxa_allocate_exception(0x10uLL);
        *v44 = *diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(v54);
      }

      diskimage_uio::details::diskimage_open_params_impl::transfer_disk_image_ownership(v58, &v61);
      v28 = v61;
      v61 = 0;
      v29 = lpsrc;
      lpsrc = v28;
      if (v29)
      {
        (*(*v29 + 16))(v29);
        v30 = v61;
        v61 = 0;
        if (v30)
        {
          (*(*v30 + 16))(v30);
        }

        v28 = lpsrc;
      }

      v31 = *v28;
      v32 = **v28;
      {
        *&v66 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<std::__wrap_iter<diskimage_uio::diskimage_open_params_pair *>>]";
        *(&v66 + 1) = 54;
        v67 = 16;
        di_log::logger<di_log::log_printer<1010ul>>::logger(&v61, &v66);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, "Diskimageuio: Nested stacking is not allowed.", 45);
        di_log::logger<di_log::log_printer<1010ul>>::~logger(&v61);
        goto LABEL_64;
      }

      if ((*(v31 + 3))(v28) != v13)
      {
        *&v66 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<std::__wrap_iter<diskimage_uio::diskimage_open_params_pair *>>]";
        *(&v66 + 1) = 54;
        v67 = 16;
        di_log::logger<di_log::log_printer<1015ul>>::logger(&v61, &v66);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, "Diskimageuio: Multiple images given but block size differ. ", 59);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, " block_size: ", 13);
        MEMORY[0x24C1ED3C0](v65, v13);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, " / ", 3);
        v41 = (*(*lpsrc + 24))(lpsrc);
        MEMORY[0x24C1ED3C0](v65, v41);
        di_log::logger<di_log::log_printer<1015ul>>::~logger(&v61);
LABEL_64:
        v40 = 163;
LABEL_65:
        v42 = __cxa_allocate_exception(0x10uLL);
        *v42 = make_error_code(v40);
        v42[1] = v43;
      }

      v25 += 16;
      if (v25 == a3)
      {
        break;
      }

      if (v54[0] != 2)
      {
        *&v66 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<std::__wrap_iter<diskimage_uio::diskimage_open_params_pair *>>]";
        *(&v66 + 1) = 54;
        v67 = 16;
        di_log::logger<di_log::log_printer<1031ul>>::logger(&v61, &v66);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, "Diskimageuio: Can't stack non asif formats. Got ", 48);
        v45 = diskimage_uio::operator<<(v65, v54[0]);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, " instead", 8);
        di_log::logger<di_log::log_printer<1031ul>>::~logger(&v61);
        goto LABEL_64;
      }

      if (v57 != 1)
      {
        if (v57 != 2)
        {
          *&v66 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<std::__wrap_iter<diskimage_uio::diskimage_open_params_pair *>>]";
          *(&v66 + 1) = 54;
          v67 = 16;
          di_log::logger<di_log::log_printer<1038ul>>::logger(&v61, &v66);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, "Diskimageuio: Multiple images given, except for top or bottom, role should be cache/snapshot, but role given ", 109);
          diskimage_uio::operator<<(v65, v57);
          di_log::logger<di_log::log_printer<1038ul>>::~logger(&v61);
          goto LABEL_72;
        }

        if ((*(*lpsrc + 40))(lpsrc))
        {
          *&v66 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<std::__wrap_iter<diskimage_uio::diskimage_open_params_pair *>>]";
          *(&v66 + 1) = 54;
          v67 = 16;
          di_log::logger<di_log::log_printer<1043ul>>::logger(&v61, &v66);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, "Diskimageuio: Snapshots should be read only", 43);
          di_log::logger<di_log::log_printer<1043ul>>::~logger(&v61);
          goto LABEL_72;
        }

LABEL_42:
        v33 = 1;
        goto LABEL_46;
      }

      if (v27)
      {
        *&v66 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<std::__wrap_iter<diskimage_uio::diskimage_open_params_pair *>>]";
        *(&v66 + 1) = 54;
        v67 = 16;
        di_log::logger<di_log::log_printer<1049ul>>::logger(&v61, &v66);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, "Diskimageuio: Only single cache is allowed", 42);
        di_log::logger<di_log::log_printer<1049ul>>::~logger(&v61);
LABEL_72:
        v46 = __cxa_allocate_exception(0x10uLL);
        *v46 = make_error_code(163);
        v46[1] = v47;
      }

      if (v26 == 2)
      {
        *&v66 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<std::__wrap_iter<diskimage_uio::diskimage_open_params_pair *>>]";
        *(&v66 + 1) = 54;
        v67 = 16;
        di_log::logger<di_log::log_printer<1054ul>>::logger(&v61, &v66);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, "Diskimageuio: Snapshot detected on top of cache", 47);
        di_log::logger<di_log::log_printer<1054ul>>::~logger(&v61);
        goto LABEL_72;
      }

      v27 = 1;
      v33 = 2;
LABEL_46:
      if (v54[0] != 12)
      {
        (*(*lpsrc + 80))(&v61);
        if (v61 || v62 || v63 || v64)
        {
          *&v66 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<std::__wrap_iter<diskimage_uio::diskimage_open_params_pair *>>]";
          *(&v66 + 1) = 54;
          v67 = 16;
          di_log::logger<di_log::log_printer<1064ul>>::logger(&v61, &v66);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, "Diskimageuio: images with constraints currently not supported", 61);
          di_log::logger<di_log::log_printer<1064ul>>::~logger(&v61);
          v40 = 164;
          goto LABEL_65;
        }
      }

      v34 = lpsrc;
      lpsrc = 0;
      v61 = v34;
      LODWORD(v62) = v33;
      v35 = *(&v59 + 1);
      if (*(&v59 + 1) >= v60)
      {
        v36 = std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::__emplace_back_slow_path<std::tuple<std::unique_ptr<DiskImage>,DiskImageStackable::role>>(&v59, &v61);
        v37 = v61;
        *(&v59 + 1) = v36;
        v61 = 0;
        if (v37)
        {
          (*(*v37 + 16))(v37);
        }
      }

      else
      {
        **(&v59 + 1) = v34;
        if (v34)
        {
          operator new();
        }

        *(v35 + 8) = 0;
        *(v35 + 16) = v33;
        *(&v59 + 1) = v35 + 24;
      }

      if (v25 == a3)
      {
        goto LABEL_58;
      }
    }

    if (v57)
    {
      *&v66 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<std::__wrap_iter<diskimage_uio::diskimage_open_params_pair *>>]";
      *(&v66 + 1) = 54;
      v67 = 16;
      di_log::logger<di_log::log_printer<1023ul>>::logger(&v61, &v66);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, "Diskimageuio: bottom diskimage should have role image, but ", 59);
      diskimage_uio::operator<<(v65, v57);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, " given", 6);
      di_log::logger<di_log::log_printer<1023ul>>::~logger(&v61);
      goto LABEL_64;
    }

    (*(*lpsrc + 40))(lpsrc);
    goto LABEL_42;
  }

  if (v7)
  {
    *&v59 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<std::__wrap_iter<diskimage_uio::diskimage_open_params_pair *>>]";
    *(&v59 + 1) = 54;
    LODWORD(v60) = 16;
    di_log::logger<di_log::log_printer<965ul>>::logger(&v61, &v59);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, "Diskimageuio: single image given, but role is ", 46);
    diskimage_uio::operator<<(v65, v57);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, " rather than image", 18);
    di_log::logger<di_log::log_printer<965ul>>::~logger(&v61);
    v50 = __cxa_allocate_exception(0x10uLL);
    v51 = std::generic_category();
    *v50 = 22;
    v50[1] = v51;
  }

  diskimage_uio::details::diskimage_open_params_impl::transfer_disk_image_ownership(v8, &v61);
  v9 = v61;
  v61 = 0;
  v10 = *v6;
  *v6 = v9;
  if (v10)
  {
    (*(*v10 + 16))(v10);
    v11 = v61;
    v61 = 0;
    if (v11)
    {
      (*(*v11 + 16))(v11);
    }
  }

  diskimage_uio::diskimage_open_params::~diskimage_open_params(&v58);
  v38 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_248E7E8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  di_log::logger<di_log::log_printer<1049ul>>::~logger(va);
  JUMPOUT(0x248E7EAF0);
}

void sub_248E7E8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  di_log::logger<di_log::log_printer<1054ul>>::~logger(va);
  JUMPOUT(0x248E7EAF0);
}

void sub_248E7E8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  di_log::logger<di_log::log_printer<1043ul>>::~logger(va);
  JUMPOUT(0x248E7EAF0);
}

void sub_248E7E9C4(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x248E7EB88);
}

void sub_248E7E9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  di_log::logger<di_log::log_printer<1038ul>>::~logger(va);
  JUMPOUT(0x248E7EAF0);
}

void sub_248E7EA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  di_log::logger<di_log::log_printer<1023ul>>::~logger(va);
  JUMPOUT(0x248E7EAF0);
}

void sub_248E7EA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  di_log::logger<di_log::log_printer<1003ul>>::~logger(va);
  JUMPOUT(0x248E7EAF0);
}

void sub_248E7EA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  di_log::logger<di_log::log_printer<1010ul>>::~logger(va);
  JUMPOUT(0x248E7EAF0);
}

void sub_248E7EA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  di_log::logger<di_log::log_printer<1064ul>>::~logger(va);
  JUMPOUT(0x248E7EAF0);
}

void sub_248E7EA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  di_log::logger<di_log::log_printer<1031ul>>::~logger(va);
  JUMPOUT(0x248E7EAF0);
}

void sub_248E7EAEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char *a22)
{
  a22 = &a19;
  std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::__destroy_vector::operator()[abi:ne200100](&a22);
  if (a16)
  {
    (*(*a16 + 16))(a16);
  }

  diskimage_uio::diskimage_open_params::~diskimage_open_params(&a18);
  movable_lock<std::shared_mutex>::~movable_lock(v22 + 128);
  std::mutex::~mutex(a10);
  std::deque<diskimage_uio::crypto::encryption_props>::~deque[abi:ne200100]((v22 + 16));
  v24 = *a12;
  *a12 = 0;
  if (v24)
  {
    (*(*v24 + 16))(v24);
  }

  _Unwind_Resume(a1);
}

uint64_t diskimage_uio::details::diskimage_impl::diskimage_impl<std::move_iterator<diskimage_uio::diskimage_open_params_pair *>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v67 = *MEMORY[0x277D85DE8];
  *(a1 + 8) = 0u;
  v6 = (a1 + 8);
  *a1 = &unk_285BD9B88;
  *(a1 + 64) = 850045863;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  std::__shared_mutex_base::__shared_mutex_base((a1 + 128));
  if (a2 == a3)
  {
    *&v58 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<diskimage_uio::diskimage_open_params_pair *>]";
    *(&v58 + 1) = 54;
    LODWORD(v59) = 16;
    di_log::logger<di_log::log_printer<956ul>>::logger(&v60, &v58);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, "Diskimageuio: No diskimage given", 32);
    di_log::logger<di_log::log_printer<956ul>>::~logger(&v60);
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = make_error_code(157);
    exception[1] = v48;
  }

  v7 = *a2;
  v56 = *a2;
  v8 = *(a2 + 8);
  v57 = v8;
  *(a2 + 8) = 0;
  v9 = a2 + 16;
  if (a2 + 16 != a3)
  {
    diskimage_uio::details::diskimage_open_params_impl::transfer_disk_image_ownership(v8, &lpsrc);
    v10 = (*(*lpsrc + 24))(lpsrc);
    if (!v56)
    {
      *&v58 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<diskimage_uio::diskimage_open_params_pair *>]";
      *(&v58 + 1) = 54;
      LODWORD(v59) = 16;
      di_log::logger<di_log::log_printer<978ul>>::logger(&v60, &v58);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, "Diskimageuio: multiple images given, but first role is image instead of shadow/cache/snapshot", 93);
      di_log::logger<di_log::log_printer<978ul>>::~logger(&v60);
      v49 = __cxa_allocate_exception(0x10uLL);
      *v49 = make_error_code(163);
      v49[1] = v50;
    }

    v11 = v10;
    v58 = 0uLL;
    v59 = 0;
    v12 = lpsrc;
    if (v56 == 1)
    {
      lpsrc = 0;
      v60 = v12;
      LODWORD(v61) = 2;
    }

    else
    {
      v16 = (*(*lpsrc + 40))(lpsrc);
      if (v56 == 3)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      v18 = lpsrc;
      if (v17 == 1 && lpsrc != 0)
      {
        v20 = **lpsrc;
        if (v21)
        {
          v21[216] = 0;
        }
      }

      v22 = *(&v58 + 1);
      lpsrc = 0;
      v60 = v18;
      LODWORD(v61) = v17 ^ 1;
      if (*(&v58 + 1) < v59)
      {
        **(&v58 + 1) = v18;
        if (v18)
        {
          operator new();
        }

        *(v22 + 8) = 0;
        *(v22 + 16) = v17 ^ 1;
        *(&v58 + 1) = v22 + 24;
        goto LABEL_25;
      }
    }

    v23 = std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::__emplace_back_slow_path<std::tuple<std::unique_ptr<DiskImage>,DiskImageStackable::role>>(&v58, &v60);
    v24 = v60;
    *(&v58 + 1) = v23;
    v60 = 0;
    if (v24)
    {
      (*(*v24 + 16))(v24);
    }

LABEL_25:
    v25 = v56;
    v26 = v56 == 1;
    while (1)
    {
      v56 = *v9;
      diskimage_uio::diskimage_open_params::operator=(&v57, (v9 + 8));
      diskimage_uio::details::diskimage_open_params_impl::query_image_format(v57, v53);
      if ((v54 & 1) == 0)
      {
        *&v65 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<diskimage_uio::diskimage_open_params_pair *>]";
        *(&v65 + 1) = 54;
        v66 = 16;
        di_log::logger<di_log::log_printer<1003ul>>::logger(&v60, &v65);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, "Diskimageuio: Can't get image format", 36);
        di_log::logger<di_log::log_printer<1003ul>>::~logger(&v60);
        v43 = __cxa_allocate_exception(0x10uLL);
        *v43 = *diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(v53);
      }

      diskimage_uio::details::diskimage_open_params_impl::transfer_disk_image_ownership(v57, &v60);
      v27 = v60;
      v60 = 0;
      v28 = lpsrc;
      lpsrc = v27;
      if (v28)
      {
        (*(*v28 + 16))(v28);
        v29 = v60;
        v60 = 0;
        if (v29)
        {
          (*(*v29 + 16))(v29);
        }

        v27 = lpsrc;
      }

      v30 = *v27;
      v31 = **v27;
      {
        *&v65 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<diskimage_uio::diskimage_open_params_pair *>]";
        *(&v65 + 1) = 54;
        v66 = 16;
        di_log::logger<di_log::log_printer<1010ul>>::logger(&v60, &v65);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, "Diskimageuio: Nested stacking is not allowed.", 45);
        di_log::logger<di_log::log_printer<1010ul>>::~logger(&v60);
        goto LABEL_63;
      }

      if ((*(v30 + 3))(v27) != v11)
      {
        *&v65 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<diskimage_uio::diskimage_open_params_pair *>]";
        *(&v65 + 1) = 54;
        v66 = 16;
        di_log::logger<di_log::log_printer<1015ul>>::logger(&v60, &v65);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, "Diskimageuio: Multiple images given but block size differ. ", 59);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, " block_size: ", 13);
        MEMORY[0x24C1ED3C0](v64, v11);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, " / ", 3);
        v40 = (*(*lpsrc + 24))(lpsrc);
        MEMORY[0x24C1ED3C0](v64, v40);
        di_log::logger<di_log::log_printer<1015ul>>::~logger(&v60);
LABEL_63:
        v39 = 163;
LABEL_64:
        v41 = __cxa_allocate_exception(0x10uLL);
        *v41 = make_error_code(v39);
        v41[1] = v42;
      }

      v9 += 16;
      if (v9 == a3)
      {
        break;
      }

      if (v53[0] != 2)
      {
        *&v65 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<diskimage_uio::diskimage_open_params_pair *>]";
        *(&v65 + 1) = 54;
        v66 = 16;
        di_log::logger<di_log::log_printer<1031ul>>::logger(&v60, &v65);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, "Diskimageuio: Can't stack non asif formats. Got ", 48);
        v44 = diskimage_uio::operator<<(v64, v53[0]);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, " instead", 8);
        di_log::logger<di_log::log_printer<1031ul>>::~logger(&v60);
        goto LABEL_63;
      }

      if (v56 != 1)
      {
        if (v56 != 2)
        {
          *&v65 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<diskimage_uio::diskimage_open_params_pair *>]";
          *(&v65 + 1) = 54;
          v66 = 16;
          di_log::logger<di_log::log_printer<1038ul>>::logger(&v60, &v65);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, "Diskimageuio: Multiple images given, except for top or bottom, role should be cache/snapshot, but role given ", 109);
          diskimage_uio::operator<<(v64, v56);
          di_log::logger<di_log::log_printer<1038ul>>::~logger(&v60);
          goto LABEL_71;
        }

        if ((*(*lpsrc + 40))(lpsrc))
        {
          *&v65 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<diskimage_uio::diskimage_open_params_pair *>]";
          *(&v65 + 1) = 54;
          v66 = 16;
          di_log::logger<di_log::log_printer<1043ul>>::logger(&v60, &v65);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, "Diskimageuio: Snapshots should be read only", 43);
          di_log::logger<di_log::log_printer<1043ul>>::~logger(&v60);
          goto LABEL_71;
        }

LABEL_41:
        v32 = 1;
        goto LABEL_45;
      }

      if (v26)
      {
        *&v65 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<diskimage_uio::diskimage_open_params_pair *>]";
        *(&v65 + 1) = 54;
        v66 = 16;
        di_log::logger<di_log::log_printer<1049ul>>::logger(&v60, &v65);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, "Diskimageuio: Only single cache is allowed", 42);
        di_log::logger<di_log::log_printer<1049ul>>::~logger(&v60);
LABEL_71:
        v45 = __cxa_allocate_exception(0x10uLL);
        *v45 = make_error_code(163);
        v45[1] = v46;
      }

      if (v25 == 2)
      {
        *&v65 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<diskimage_uio::diskimage_open_params_pair *>]";
        *(&v65 + 1) = 54;
        v66 = 16;
        di_log::logger<di_log::log_printer<1054ul>>::logger(&v60, &v65);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, "Diskimageuio: Snapshot detected on top of cache", 47);
        di_log::logger<di_log::log_printer<1054ul>>::~logger(&v60);
        goto LABEL_71;
      }

      v26 = 1;
      v32 = 2;
LABEL_45:
      if (v53[0] != 12)
      {
        (*(*lpsrc + 80))(&v60);
        if (v60 || v61 || v62 || v63)
        {
          *&v65 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<diskimage_uio::diskimage_open_params_pair *>]";
          *(&v65 + 1) = 54;
          v66 = 16;
          di_log::logger<di_log::log_printer<1064ul>>::logger(&v60, &v65);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, "Diskimageuio: images with constraints currently not supported", 61);
          di_log::logger<di_log::log_printer<1064ul>>::~logger(&v60);
          v39 = 164;
          goto LABEL_64;
        }
      }

      v33 = lpsrc;
      lpsrc = 0;
      v60 = v33;
      LODWORD(v61) = v32;
      v34 = *(&v58 + 1);
      if (*(&v58 + 1) >= v59)
      {
        v35 = std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::__emplace_back_slow_path<std::tuple<std::unique_ptr<DiskImage>,DiskImageStackable::role>>(&v58, &v60);
        v36 = v60;
        *(&v58 + 1) = v35;
        v60 = 0;
        if (v36)
        {
          (*(*v36 + 16))(v36);
        }
      }

      else
      {
        **(&v58 + 1) = v33;
        if (v33)
        {
          operator new();
        }

        *(v34 + 8) = 0;
        *(v34 + 16) = v32;
        *(&v58 + 1) = v34 + 24;
      }

      if (v9 == a3)
      {
        operator new();
      }
    }

    if (v56)
    {
      *&v65 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<diskimage_uio::diskimage_open_params_pair *>]";
      *(&v65 + 1) = 54;
      v66 = 16;
      di_log::logger<di_log::log_printer<1023ul>>::logger(&v60, &v65);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, "Diskimageuio: bottom diskimage should have role image, but ", 59);
      diskimage_uio::operator<<(v64, v56);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, " given", 6);
      di_log::logger<di_log::log_printer<1023ul>>::~logger(&v60);
      goto LABEL_63;
    }

    (*(*lpsrc + 40))(lpsrc);
    goto LABEL_41;
  }

  if (v7)
  {
    *&v58 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<diskimage_uio::diskimage_open_params_pair *>]";
    *(&v58 + 1) = 54;
    LODWORD(v59) = 16;
    di_log::logger<di_log::log_printer<965ul>>::logger(&v60, &v58);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, "Diskimageuio: single image given, but role is ", 46);
    diskimage_uio::operator<<(v64, v56);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, " rather than image", 18);
    di_log::logger<di_log::log_printer<965ul>>::~logger(&v60);
    v51 = __cxa_allocate_exception(0x10uLL);
    v52 = std::generic_category();
    *v51 = 22;
    v51[1] = v52;
  }

  diskimage_uio::details::diskimage_open_params_impl::transfer_disk_image_ownership(v8, &v60);
  v13 = v60;
  v60 = 0;
  v14 = *v6;
  *v6 = v13;
  if (v14)
  {
    (*(*v14 + 16))(v14);
    v15 = v60;
    v60 = 0;
    if (v15)
    {
      (*(*v15 + 16))(v15);
    }
  }

  diskimage_uio::diskimage_open_params::~diskimage_open_params(&v57);
  v37 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_248E7F828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  diskimage_uio::diskimage_open_params::~diskimage_open_params(va);
  movable_lock<std::shared_mutex>::~movable_lock(v11 + 128);
  std::mutex::~mutex(v10);
  std::deque<diskimage_uio::crypto::encryption_props>::~deque[abi:ne200100]((v11 + 16));
  v14 = *v12;
  *v12 = 0;
  if (v14)
  {
    (*(*v14 + 16))(v14);
  }

  _Unwind_Resume(a1);
}

void sub_248E7F980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::mutex *a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22)
{
  __cxa_end_catch();
  a22 = &a19;
  std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::__destroy_vector::operator()[abi:ne200100](&a22);
  if (a16)
  {
    (*(*a16 + 16))(a16);
  }

  diskimage_uio::diskimage_open_params::~diskimage_open_params(&a18);
  movable_lock<std::shared_mutex>::~movable_lock(a12 + 128);
  std::mutex::~mutex(a9);
  std::deque<diskimage_uio::crypto::encryption_props>::~deque[abi:ne200100]((a12 + 16));
  v23 = *a11;
  *a11 = 0;
  if (v23)
  {
    (*(*v23 + 16))(v23);
  }

  _Unwind_Resume(a1);
}

void sub_248E7F9A0(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x248E7FB8CLL);
}

void sub_248E7F9B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::mutex *a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22)
{
  di_log::logger<di_log::log_printer<1049ul>>::~logger(&a22);
  a22 = &a19;
  std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::__destroy_vector::operator()[abi:ne200100](&a22);
  if (a16)
  {
    (*(*a16 + 16))(a16);
  }

  diskimage_uio::diskimage_open_params::~diskimage_open_params(&a18);
  movable_lock<std::shared_mutex>::~movable_lock(a12 + 128);
  std::mutex::~mutex(a9);
  std::deque<diskimage_uio::crypto::encryption_props>::~deque[abi:ne200100]((a12 + 16));
  v23 = *a11;
  *a11 = 0;
  if (v23)
  {
    (*(*v23 + 16))(v23);
  }

  _Unwind_Resume(a1);
}

void sub_248E7F9C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::mutex *a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22)
{
  di_log::logger<di_log::log_printer<1054ul>>::~logger(&a22);
  a22 = &a19;
  std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::__destroy_vector::operator()[abi:ne200100](&a22);
  if (a16)
  {
    (*(*a16 + 16))(a16);
  }

  diskimage_uio::diskimage_open_params::~diskimage_open_params(&a18);
  movable_lock<std::shared_mutex>::~movable_lock(a12 + 128);
  std::mutex::~mutex(a9);
  std::deque<diskimage_uio::crypto::encryption_props>::~deque[abi:ne200100]((a12 + 16));
  v23 = *a11;
  *a11 = 0;
  if (v23)
  {
    (*(*v23 + 16))(v23);
  }

  _Unwind_Resume(a1);
}

void sub_248E7F9D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::mutex *a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22)
{
  di_log::logger<di_log::log_printer<1043ul>>::~logger(&a22);
  a22 = &a19;
  std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::__destroy_vector::operator()[abi:ne200100](&a22);
  if (a16)
  {
    (*(*a16 + 16))(a16);
  }

  diskimage_uio::diskimage_open_params::~diskimage_open_params(&a18);
  movable_lock<std::shared_mutex>::~movable_lock(a12 + 128);
  std::mutex::~mutex(a9);
  std::deque<diskimage_uio::crypto::encryption_props>::~deque[abi:ne200100]((a12 + 16));
  v23 = *a11;
  *a11 = 0;
  if (v23)
  {
    (*(*v23 + 16))(v23);
  }

  _Unwind_Resume(a1);
}

void sub_248E7F9E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::mutex *a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22)
{
  di_log::logger<di_log::log_printer<1038ul>>::~logger(&a22);
  a22 = &a19;
  std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::__destroy_vector::operator()[abi:ne200100](&a22);
  if (a16)
  {
    (*(*a16 + 16))(a16);
  }

  diskimage_uio::diskimage_open_params::~diskimage_open_params(&a18);
  movable_lock<std::shared_mutex>::~movable_lock(a12 + 128);
  std::mutex::~mutex(a9);
  std::deque<diskimage_uio::crypto::encryption_props>::~deque[abi:ne200100]((a12 + 16));
  v23 = *a11;
  *a11 = 0;
  if (v23)
  {
    (*(*v23 + 16))(v23);
  }

  _Unwind_Resume(a1);
}

void sub_248E7F9F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::mutex *a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22)
{
  __cxa_free_exception(v22);
  a22 = &a19;
  std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::__destroy_vector::operator()[abi:ne200100](&a22);
  if (a16)
  {
    (*(*a16 + 16))(a16);
  }

  diskimage_uio::diskimage_open_params::~diskimage_open_params(&a18);
  movable_lock<std::shared_mutex>::~movable_lock(a12 + 128);
  std::mutex::~mutex(a9);
  std::deque<diskimage_uio::crypto::encryption_props>::~deque[abi:ne200100]((a12 + 16));
  v24 = *a11;
  *a11 = 0;
  if (v24)
  {
    (*(*v24 + 16))(v24);
  }

  _Unwind_Resume(a1);
}

void sub_248E7FA18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::mutex *a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22)
{
  di_log::logger<di_log::log_printer<1023ul>>::~logger(&a22);
  a22 = &a19;
  std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::__destroy_vector::operator()[abi:ne200100](&a22);
  if (a16)
  {
    (*(*a16 + 16))(a16);
  }

  diskimage_uio::diskimage_open_params::~diskimage_open_params(&a18);
  movable_lock<std::shared_mutex>::~movable_lock(a12 + 128);
  std::mutex::~mutex(a9);
  std::deque<diskimage_uio::crypto::encryption_props>::~deque[abi:ne200100]((a12 + 16));
  v23 = *a11;
  *a11 = 0;
  if (v23)
  {
    (*(*v23 + 16))(v23);
  }

  _Unwind_Resume(a1);
}

void sub_248E7FA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::mutex *a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22)
{
  di_log::logger<di_log::log_printer<1003ul>>::~logger(&a22);
  a22 = &a19;
  std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::__destroy_vector::operator()[abi:ne200100](&a22);
  if (a16)
  {
    (*(*a16 + 16))(a16);
  }

  diskimage_uio::diskimage_open_params::~diskimage_open_params(&a18);
  movable_lock<std::shared_mutex>::~movable_lock(a12 + 128);
  std::mutex::~mutex(a9);
  std::deque<diskimage_uio::crypto::encryption_props>::~deque[abi:ne200100]((a12 + 16));
  v23 = *a11;
  *a11 = 0;
  if (v23)
  {
    (*(*v23 + 16))(v23);
  }

  _Unwind_Resume(a1);
}

void sub_248E7FA3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::mutex *a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22)
{
  di_log::logger<di_log::log_printer<1010ul>>::~logger(&a22);
  a22 = &a19;
  std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::__destroy_vector::operator()[abi:ne200100](&a22);
  if (a16)
  {
    (*(*a16 + 16))(a16);
  }

  diskimage_uio::diskimage_open_params::~diskimage_open_params(&a18);
  movable_lock<std::shared_mutex>::~movable_lock(a12 + 128);
  std::mutex::~mutex(a9);
  std::deque<diskimage_uio::crypto::encryption_props>::~deque[abi:ne200100]((a12 + 16));
  v23 = *a11;
  *a11 = 0;
  if (v23)
  {
    (*(*v23 + 16))(v23);
  }

  _Unwind_Resume(a1);
}

void sub_248E7FA4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::mutex *a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22)
{
  di_log::logger<di_log::log_printer<1064ul>>::~logger(&a22);
  a22 = &a19;
  std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::__destroy_vector::operator()[abi:ne200100](&a22);
  if (a16)
  {
    (*(*a16 + 16))(a16);
  }

  diskimage_uio::diskimage_open_params::~diskimage_open_params(&a18);
  movable_lock<std::shared_mutex>::~movable_lock(a12 + 128);
  std::mutex::~mutex(a9);
  std::deque<diskimage_uio::crypto::encryption_props>::~deque[abi:ne200100]((a12 + 16));
  v23 = *a11;
  *a11 = 0;
  if (v23)
  {
    (*(*v23 + 16))(v23);
  }

  _Unwind_Resume(a1);
}

void sub_248E7FA60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::mutex *a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22)
{
  di_log::logger<di_log::log_printer<1031ul>>::~logger(&a22);
  a22 = &a19;
  std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::__destroy_vector::operator()[abi:ne200100](&a22);
  if (a16)
  {
    (*(*a16 + 16))(a16);
  }

  diskimage_uio::diskimage_open_params::~diskimage_open_params(&a18);
  movable_lock<std::shared_mutex>::~movable_lock(a12 + 128);
  std::mutex::~mutex(a9);
  std::deque<diskimage_uio::crypto::encryption_props>::~deque[abi:ne200100]((a12 + 16));
  v23 = *a11;
  *a11 = 0;
  if (v23)
  {
    (*(*v23 + 16))(v23);
  }

  _Unwind_Resume(a1);
}

unint64_t diskimage_uio::details::setup_sync_subscriber(io_rings_subscriber_sync_t &)::$_0::__invoke(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v29 = *MEMORY[0x277D85DE8];
  v12 = (*(**(*(a2 + 8) + 8) + 24))(*(*(a2 + 8) + 8));
  v13 = (*(**(*(a2 + 8) + 8) + 24))(*(*(a2 + 8) + 8));
  diskimage_uio::create_sg_vec_from_buffer(v13, a4, a3, a5, v24);
  if (!a6 || (v14 = diskimage_uio::attach_per_io_crypto_to_vec(a1, v25, a6), !v14))
  {
    v26 |= 2u;
    v28 |= 2u;
    v27 |= 2u;
    v15 = *(a2 + 8);
    sg_vec_ref::begin(v25, v21);
    sg_vec_ref::end(v25, v18);
    v14 = DiskImage::Context::read(v15, v21, v18);
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    if ((v14 & 0x8000000000000000) == 0)
    {
      v14 /= v12;
    }
  }

  sg_vec::~sg_vec(v24);
  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

void sub_248E7FD40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a10);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a38);
  sg_vec::~sg_vec(&a66);
  _Unwind_Resume(a1);
}

void diskimage_uio::create_sg_vec_from_buffer(diskimage_uio *this@<X0>, char *a2@<X2>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = a2 * this;
  v8 = a4 * this;
  v9 = *(details::get_dummy_shared_ptr() + 1);
  *&v10 = a3;
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
  sg_vec::sg_vec(a5, &v10);
  if (*(&v10 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v10 + 1));
  }
}

void sub_248E7FE08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t diskimage_uio::attach_per_io_crypto_to_vec(uint64_t a1, sg_vec_ref *a2, uint64_t a3)
{
  v5 = *(a1 + 240);
  v6 = (*(**(v5 + 8) + 24))(*(v5 + 8));
  diskimage_uio::crypto::registered_cryptos::to_sg_per_io_crypto((v5 + 16), a3, v6, v9);
  if (v9[56])
  {
    sg_vec_ref::attach_per_io_crypto(a2, v9);
    return 0;
  }

  else
  {
    v8 = *diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<sg_per_io_crypto,std::error_code>::error(v9);
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

uint64_t *sg_vec::sg_vec(uint64_t *a1, __int128 *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 4);
  v5 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v17 = &v19;
  v20 = v4;
  v18 = xmmword_248F9C7F0;
  v19 = v5;
  sg_vec_ns::details::sg_vec_data::sg_vec_data(a1, &v17);
  boost::container::vector<std::pair<std::shared_ptr<char>,unsigned long>,boost::container::small_vector_allocator<std::pair<std::shared_ptr<char>,unsigned long>,boost::container::new_allocator<void>,void>,void>::~vector(&v17);
  v6 = a1[1];
  v17 = *a1;
  v7 = v17 + 24 * v6;
  v8 = a1[19];
  v15 = a1[18];
  v16 = v7;
  v14 = &v15[v8];
  sg_vec_ref::sg_vec_ref((a1 + 26), &v17, &v16, &v15, &v14, *(a2 + 3), *(a2 + 2), *(a2 + 10));
  v11 = *(a2 + 12);
  v10 = (a2 + 3);
  v9 = v11;
  if (*(v10 + 56) == 1 && v9)
  {
    sg_vec_ref::attach_per_io_crypto((a1 + 26), v10);
  }

  v12 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_248E7FFB8(_Unwind_Exception *a1)
{
  sg_vec_ref::~sg_vec_ref((v1 + 208));
  sg_vec_ns::details::sg_vec_data::~sg_vec_data(v1);
  _Unwind_Resume(a1);
}

uint64_t diskimage_uio::details::setup_sync_subscriber(io_rings_subscriber_sync_t &)::$_1::__invoke(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v35 = *MEMORY[0x277D85DE8];
  v12 = (*(**(*(a2 + 8) + 8) + 24))(*(*(a2 + 8) + 8));
  v13 = v12 * a4;
  if (v13)
  {
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
        result = -22;
        goto LABEL_21;
      }

      ++v15;
      v16 += 16;
    }

    while (v17);
    result = v15 + 1;
    if (v15 < 0x7FFFFFFFFFFFFFFFLL)
    {
      v27 = a3;
      v28 = (v15 + 1);
      diskimage_uio::io_vec_to_sg_vec<std::span<iovec const,18446744073709551615ul>>(&v27, v14 * a5, v13, 0, v30);
      if (!a6 || (v20 = diskimage_uio::attach_per_io_crypto_to_vec(a1, v31, a6), !v20))
      {
        v32 |= 2u;
        v34 |= 2u;
        v33 |= 2u;
        v21 = *(a2 + 8);
        sg_vec_ref::begin(v31, &v27);
        sg_vec_ref::end(v31, v24);
        v20 = DiskImage::Context::read(v21, &v27, v24);
        if (v26)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        }

        if (v25)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        }

        if (v29)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v29);
        }

        if (v28)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v28);
        }

        if ((v20 & 0x8000000000000000) == 0)
        {
          v20 /= v14;
        }
      }

      sg_vec::~sg_vec(v30);
      result = v20;
    }
  }

  else
  {
    result = 0;
  }

LABEL_21:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248E801C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a10);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a38);
  sg_vec::~sg_vec(&a66);
  _Unwind_Resume(a1);
}

uint64_t diskimage_uio::io_vec_to_sg_vec<std::span<iovec const,18446744073709551615ul>>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  dummy_shared_ptr = details::get_dummy_shared_ptr();
  v12 = dummy_shared_ptr;
  v14 = *a1;
  v13 = *(a1 + 8);
  v15 = (a5 + 24);
  *a5 = a5 + 24;
  v16 = xmmword_248F9C800;
  *(a5 + 8) = xmmword_248F9C800;
  v17 = (v13 - 1) & 0xFFFFFFFFFFFFFFFLL;
  if (v13)
  {
    v18 = v17 + 1;
  }

  else
  {
    v18 = 0;
  }

  if (v18 < 6)
  {
    if (v13)
    {
      v29 = v17 + 1;
      do
      {
        v30 = *v14;
        v31 = dummy_shared_ptr[1];
        if (v31)
        {
          atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
        }

        v32 = v14[1];
        *v15 = v30;
        v15[1] = v31;
        v15[2] = v32;
        v14 += 2;
        v15 += 3;
        --v29;
      }

      while (v29);
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v37 = a4;
    if (v18 >= 0x555555555555556)
    {
      boost::container::throw_length_error("get_next_capacity, allocator's max size reached", v11);
    }

    v19 = a2;
    v20 = a3;
    v21 = operator new(24 * v18);
    v22 = *a5;
    if (*a5)
    {
      boost::container::vector<std::pair<std::shared_ptr<char>,unsigned long>,boost::container::small_vector_allocator<std::pair<std::shared_ptr<char>,unsigned long>,boost::container::new_allocator<void>,void>,void>::priv_destroy_all(a5);
      if (v15 != v22)
      {
        operator delete(v22);
      }
    }

    *(a5 + 8) = 0;
    *(a5 + 16) = v18;
    *a5 = v21;
    if (v13)
    {
      v23 = &v14[2 * v13];
      v24 = v21;
      a3 = v20;
      a2 = v19;
      a4 = v37;
      v16 = xmmword_248F9C800;
      do
      {
        v25 = *v14;
        v26 = v12[1];
        if (v26)
        {
          atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
        }

        v27 = v14[1];
        *v24 = v25;
        *(v24 + 1) = v26;
        *(v24 + 2) = v27;
        v14 += 2;
        v24 += 24;
      }

      while (v14 != v23);
      v28 = *(a5 + 8);
    }

    else
    {
      v28 = 0;
      v24 = v21;
      a3 = v20;
      a2 = v19;
      a4 = v37;
      v16 = xmmword_248F9C800;
    }

    v18 = v28 - 0x5555555555555555 * ((v24 - v21) >> 3);
  }

  *(a5 + 144) = a5 + 168;
  *(a5 + 8) = v18;
  *(a5 + 152) = v16;
  boost::container::vector<unsigned long,boost::container::small_vector_allocator<unsigned long,boost::container::new_allocator<void>,void>,void>::priv_resize<boost::container::value_init_t,boost::move_detail::integral_constant<unsigned int,1u>>(a5 + 144, v18);
  v33 = *(a5 + 8);
  v41 = *a5;
  v34 = v41 + 24 * v33;
  v35 = *(a5 + 152);
  v39 = *(a5 + 144);
  v40 = v34;
  v38 = &v39[v35];
  return sg_vec_ref::sg_vec_ref(a5 + 208, &v41, &v40, &v39, &v38, a2, a3, a4);
}

unint64_t diskimage_uio::details::setup_sync_subscriber(io_rings_subscriber_sync_t &)::$_2::__invoke(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v29 = *MEMORY[0x277D85DE8];
  v12 = (*(**(*(a2 + 8) + 8) + 24))(*(*(a2 + 8) + 8));
  v13 = (*(**(*(a2 + 8) + 8) + 24))(*(*(a2 + 8) + 8));
  diskimage_uio::create_sg_vec_from_buffer(v13, a4, a3, a5, v24);
  if (!a6 || (v14 = diskimage_uio::attach_per_io_crypto_to_vec(a1, v25, a6), !v14))
  {
    v26 |= 1u;
    v28 |= 1u;
    v27 |= 1u;
    v15 = *(a2 + 8);
    sg_vec_ref::begin(v25, v21);
    sg_vec_ref::end(v25, v18);
    v14 = DiskImage::Context::write(v15, v21, v18);
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    if ((v14 & 0x8000000000000000) == 0)
    {
      v14 /= v12;
    }
  }

  sg_vec::~sg_vec(v24);
  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

void sub_248E80624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a10);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a38);
  sg_vec::~sg_vec(&a66);
  _Unwind_Resume(a1);
}

uint64_t diskimage_uio::details::setup_sync_subscriber(io_rings_subscriber_sync_t &)::$_3::__invoke(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v35 = *MEMORY[0x277D85DE8];
  v12 = (*(**(*(a2 + 8) + 8) + 24))(*(*(a2 + 8) + 8));
  v13 = v12 * a4;
  if (v13)
  {
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
        result = -22;
        goto LABEL_21;
      }

      ++v15;
      v16 += 16;
    }

    while (v17);
    result = v15 + 1;
    if (v15 < 0x7FFFFFFFFFFFFFFFLL)
    {
      v27 = a3;
      v28 = (v15 + 1);
      diskimage_uio::io_vec_to_sg_vec<std::span<iovec const,18446744073709551615ul>>(&v27, v14 * a5, v13, 1, v30);
      if (!a6 || (v20 = diskimage_uio::attach_per_io_crypto_to_vec(a1, v31, a6), !v20))
      {
        v32 |= 1u;
        v34 |= 1u;
        v33 |= 1u;
        v21 = *(a2 + 8);
        sg_vec_ref::begin(v31, &v27);
        sg_vec_ref::end(v31, v24);
        v20 = DiskImage::Context::write(v21, &v27, v24);
        if (v26)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        }

        if (v25)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        }

        if (v29)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v29);
        }

        if (v28)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v28);
        }

        if ((v20 & 0x8000000000000000) == 0)
        {
          v20 /= v14;
        }
      }

      sg_vec::~sg_vec(v30);
      result = v20;
    }
  }

  else
  {
    result = 0;
  }

LABEL_21:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248E80838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a10);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a38);
  sg_vec::~sg_vec(&a66);
  _Unwind_Resume(a1);
}

uint64_t diskimage_uio::details::setup_sync_subscriber(io_rings_subscriber_sync_t &)::$_4::__invoke(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = DiskImage::Context::unmap(*(a2 + 8));
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

uint64_t diskimage_uio::details::setup_sync_subscriber(io_rings_subscriber_sync_t &)::$_5::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 > 1)
  {
    if (a3 == 3 || a3 == 2)
    {
      return DiskImage::Context::flush(*(a2 + 8));
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

  return DiskImage::Context::flush(*(a2 + 8));
}

di_hybrid_subscriber_t *diskimage_uio::details::setup_di_subscriber<di_hybrid_subscriber_t>(di_hybrid_subscriber_t &,io_rings_desc_t *)::{lambda(io_rings_subscriber_sync_t *)#1}::__invoke(di_hybrid_subscriber_t *result)
{
  if (result)
  {
    di_hybrid_subscriber_t::~di_hybrid_subscriber_t(result);

    JUMPOUT(0x24C1ED730);
  }

  return result;
}

uint64_t diskimage_uio::details::setup_di_subscriber<io_rings_di_subscriber_t>(io_rings_di_subscriber_t &,io_rings_desc_t *)::{lambda(io_rings_subscriber_sync_t *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    v1 = result;
    std::__function::__value_func<diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<std::unique_ptr<DiskImage::Context>,std::error_code> ()(void)>::~__value_func[abi:ne200100](result + 248);
    pool_ns::pool_t<DiskImage::Context,std::default_delete>::~pool_t(v1 + 120);

    JUMPOUT(0x24C1ED730);
  }

  return result;
}

uint64_t std::__function::__func<io_rings_di_subscriber_t::io_rings_di_subscriber_t(io_rings_desc_t *,diskimage_uio::details::diskimage_impl &,std::function<diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<std::unique_ptr<DiskImage::Context>,std::error_code> ()(void)> const&)::$_0,std::allocator<io_rings_di_subscriber_t::io_rings_di_subscriber_t(io_rings_desc_t *,diskimage_uio::details::diskimage_impl &,std::function<diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<std::unique_ptr<DiskImage::Context>,std::error_code> ()(void)> const&)::$_0>,diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<std::unique_ptr<DiskImage::Context>,std::error_code> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285BE11E0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<io_rings_di_subscriber_t::io_rings_di_subscriber_t(io_rings_desc_t *,diskimage_uio::details::diskimage_impl &,std::function<diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<std::unique_ptr<DiskImage::Context>,std::error_code> ()(void)> const&)::$_0,std::allocator<io_rings_di_subscriber_t::io_rings_di_subscriber_t(io_rings_desc_t *,diskimage_uio::details::diskimage_impl &,std::function<diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<std::unique_ptr<DiskImage::Context>,std::error_code> ()(void)> const&)::$_0>,diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<std::unique_ptr<DiskImage::Context>,std::error_code> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<std::unique_ptr<DiskImage::Context>,std::error_code> ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

std::string *std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(std::string *a1, std::string *a2)
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

  std::string::append[abi:ne200100]<char const*,0>(a1, a2, (a2 + v3));
  return a1;
}

void sub_248E80B88(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<diskimage_uio::diskimage_open_params,std::error_code>::swap(diskimage_uio::diskimage_open_params *this, diskimage_uio::diskimage_open_params *a2)
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

__n128 OUTLINED_FUNCTION_0(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u8[0] = 0;
  return result;
}

void sub_248E80D18(_Unwind_Exception *a1, int a2)
{
  v5 = v3;
  MEMORY[0x24C1ED730](v5, 0x1080C40B813A31BLL);
  if (a2 == 1)
  {
    v7 = __cxa_begin_catch(a1);
    rawTestPlugin_t::CreationError(v7, v2, v8);
    __cxa_end_catch();
    JUMPOUT(0x248E80D04);
  }

  _Unwind_Resume(a1);
}

void rawTestPlugin_t::Decode(uint64_t a1, uint64_t a2)
{
  v4 = (*(a1 + 8))(a2, "fd");
  if ((v4 & 0x80000000) == 0)
  {
    v16 = 0;
    v5 = (*a1)(a2, "path", &v16);
    v6 = v5;
    if (v5 > 0)
    {
      [MEMORY[0x277CCACA8] stringWithUTF8String:v16];
      objc_claimAutoreleasedReturnValue();
      (*(a1 + 16))(v16);
      v7 = (*a1)(a2, "writable", &v16);
      v8 = v7;
      if (v7 == 1)
      {
        v9 = *v16;
        (*(a1 + 16))();
        operator new();
      }

      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_285BE14E8;
      v15 = std::generic_category();
      exception[1] = v8;
      exception[2] = v15;
      exception[3] = "Cannot decode writable";
    }

    v12 = __cxa_allocate_exception(0x20uLL);
    *v12 = &unk_285BE14E8;
    v13 = std::generic_category();
    v12[1] = v6;
    v12[2] = v13;
    v12[3] = "Cannot decode path";
  }

  v10 = __cxa_allocate_exception(0x20uLL);
  *v10 = &unk_285BE14E8;
  v11 = std::generic_category();
  v10[1] = v4;
  v10[2] = v11;
  v10[3] = "Cannot decode file descriptor";
}

void sub_248E81050(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = __cxa_begin_catch(exception_object);
    rawTestPlugin_t::CreationError(v3, v2, v4);
    __cxa_end_catch();
    JUMPOUT(0x248E80F08);
  }

  _Unwind_Resume(exception_object);
}

uint64_t rawTestPlugin_t::rawTestPlugin_t(uint64_t a1, uint64_t a2)
{
  v4 = [*(a2 + 8) objectForKeyedSubscript:@"path"];
  v5 = (*(a2 + 4) & 3) != 0;
  *(a1 + 96) = v4;
  *(a1 + 104) = v5;
  *(a1 + 108) = -1;
  *a1 = 96;
  *(a1 + 8) = rawTestPlugin_t::GetBlockSize;
  *(a1 + 16) = rawTestPlugin_t::GetNrBlocks;
  *(a1 + 24) = rawTestPlugin_t::IsWritable;
  *(a1 + 32) = rawTestPlugin_t::GetPreferredAlignment;
  *(a1 + 40) = rawTestPlugin_t::GetPreferredSize;
  *(a1 + 48) = 0;
  *(a1 + 56) = rawTestPlugin_t::GetSubscriber;
  *(a1 + 64) = rawTestPlugin_t::Encode;
  *(a1 + 72) = rawTestPlugin_t::ReleaseImage;
  *(a1 + 80) = 0;
  *(a1 + 88) = rawTestPlugin_t::CopyUUID;
  v6 = open([v4 fileSystemRepresentation], *(a2 + 4));
  *(a1 + 108) = v6;
  if (v6 < 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v9 = *__error();
    *exception = &unk_285BE14E8;
    v10 = std::generic_category();
    exception[1] = v9;
    exception[2] = v10;
    exception[3] = "Failed opening the file";
  }

  return a1;
}

void sub_248E8124C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  rawTestPlugin_t::~rawTestPlugin_t(v1);
  _Unwind_Resume(a1);
}

uint64_t rawTestPlugin_t::CreationError(rawTestPlugin_t *this, const pluginException_t *a2, __CFError **a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = *__error();
  if (DIForwardLogs())
  {
    v6 = getDIOSLog();
    os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    v7 = (*(*this + 16))(this);
    v8 = *(this + 2);
    *buf = 68158466;
    v16 = 97;
    v17 = 2080;
    v18 = "static di_plugin_image_t *rawTestPlugin_t::CreationError(const pluginException_t &, CFErrorRef *)";
    v19 = 2080;
    v20 = v7;
    v21 = 1024;
    v22 = v8;
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
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = (*(*this + 16))(this);
      v12 = *(this + 2);
      *buf = 68158466;
      v16 = 97;
      v17 = 2080;
      v18 = "static di_plugin_image_t *rawTestPlugin_t::CreationError(const pluginException_t &, CFErrorRef *)";
      v19 = 2080;
      v20 = v11;
      v21 = 1024;
      v22 = v12;
      _os_log_impl(&dword_248DE0000, v10, OS_LOG_TYPE_ERROR, "%.*s: Failed instantiating rawTestPlugin object: %s (code %d)", buf, 0x22u);
    }
  }

  *__error() = v5;
  if (a2)
  {
    *a2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*(this + 2) userInfo:0];
  }

  v13 = *MEMORY[0x277D85DE8];
  return 0;
}

void pluginException_t::pluginException_t(pluginException_t *this, const char *a2, unsigned int a3)
{
  *this = &unk_285BE14E8;
  v6 = std::generic_category();
  *(this + 1) = a3;
  *(this + 2) = v6;
  *(this + 3) = a2;
}

rawTestPlugin_t *rawTestPlugin_t::ReleaseImage(rawTestPlugin_t *result)
{
  if (result)
  {
    rawTestPlugin_t::~rawTestPlugin_t(result);

    JUMPOUT(0x24C1ED730);
  }

  return result;
}

uint64_t rawTestPlugin_t::get_stat@<X0>(rawTestPlugin_t *this@<X0>, stat *a2@<X8>)
{
  result = fstat(*(this + 27), a2);
  if (result)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v4 = __error();
    pluginException_t::pluginException_t(exception, "fstat failed", *v4);
  }

  return result;
}

uint64_t rawTestPlugin_t::ReleaseSubscriber(uint64_t result)
{
  if (result)
  {
    v1 = result;
    std::mutex::~mutex((result + 104));

    v2 = *(v1 + 72);
    if (v2)
    {
      *(v1 + 80) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x24C1ED730);
  }

  return result;
}

uint64_t rawTestPlugin_t::subscriber_t::_addSQE(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 104));
  v5 = *(a1 + 80);
  v4 = *(a1 + 88);
  if (v5 >= v4)
  {
    v7 = *(a1 + 72);
    v8 = (v5 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<iovec>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v7;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      std::allocator<std::unique_ptr<diskimage_uio::stack_image_node const>>::allocate_at_least[abi:ne200100](a1 + 72, v11);
    }

    v12 = (8 * v8);
    *v12 = a2;
    v6 = 8 * v8 + 8;
    v13 = *(a1 + 72);
    v14 = *(a1 + 80) - v13;
    v15 = v12 - v14;
    memcpy(v12 - v14, v13, v14);
    v16 = *(a1 + 72);
    *(a1 + 72) = v15;
    *(a1 + 80) = v6;
    *(a1 + 88) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = a2;
    v6 = (v5 + 1);
  }

  *(a1 + 80) = v6;
  std::mutex::unlock((a1 + 104));
  return 0;
}

void rawTestPlugin_t::subscriber_t::_execute(rawTestPlugin_t::subscriber_t *this)
{
  std::mutex::lock((this + 104));
  v2 = *(this + 9);
  v3 = *(this + 10);
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 9) = 0;
  std::mutex::unlock((this + 104));
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "raw plugin: going to execute ", 29);
  v5 = MEMORY[0x24C1ED3C0](v4, (v3 - v2) >> 3);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " SQEs", 5);
  std::ios_base::getloc((v6 + *(*v6 - 24)));
  v7 = std::locale::use_facet(&v13, MEMORY[0x277D82680]);
  (v7->__vftable[2].~facet_0)(v7, 10);
  std::locale::~locale(&v13);
  std::ostream::put();
  std::ostream::flush();
  v8 = *(this + 12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = ___ZN15rawTestPlugin_t12subscriber_t8_executeEv_block_invoke;
  block[3] = &__block_descriptor_64_ea8_40c58_ZTSNSt3__16vectorIPK14io_rings_sqe_tNS_9allocatorIS3_EEEE_e5_v8__0l;
  block[4] = this;
  __p = 0;
  v11 = 0;
  v12 = 0;
  std::vector<io_rings_sqe_t const*>::__init_with_size[abi:ne200100]<io_rings_sqe_t const**,io_rings_sqe_t const**>(&__p, v2, v3, (v3 - v2) >> 3);
  dispatch_async(v8, block);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  if (v2)
  {
    operator delete(v2);
  }
}

void sub_248E81A54(_Unwind_Exception *a1)
{
  std::locale::~locale((v2 - 56));
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void *___ZN15rawTestPlugin_t12subscriber_t8_executeEv_block_invoke(void *result)
{
  v1 = result[5];
  v2 = result[6];
  if (v1 != v2)
  {
    v3 = result[4];
    while (1)
    {
      v4 = *v1;
      v5 = **v1;
      v6 = -45;
      if (v5 > 4)
      {
        if (v5 != 5)
        {
          if (v5 == 6)
          {
            v6 = 0;
          }

          else
          {
            v6 = -45;
          }

          goto LABEL_14;
        }

        iov = rawTestPlugin_t::flush(*(v3 + 64));
        goto LABEL_13;
      }

      if (v5 == 2)
      {
        break;
      }

      if (v5 == 4)
      {
        iov = rawTestPlugin_t::do_io<io_rings_sqe_op_write_iov_t>(*(v3 + 64), (v4 + 24), MEMORY[0x277D85F58]);
LABEL_13:
        v6 = iov;
      }

LABEL_14:
      result = io_rings_return_status(*(v3 + 56), v4, v6, 0);
      if (++v1 == v2)
      {
        return result;
      }
    }

    iov = rawTestPlugin_t::do_io<io_rings_sqe_op_read_iov_t>(*(v3 + 64), (v4 + 24), MEMORY[0x277D85F50]);
    goto LABEL_13;
  }

  return result;
}

uint64_t rawTestPlugin_t::do_io<io_rings_sqe_op_read_iov_t>(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = 0;
    v7 = v5 << 9;
    v8 = (v4 + 8);
    while (1)
    {
      v9 = *v8;
      v8 += 2;
      v10 = v7 >= v9;
      v7 -= v9;
      if (!v10)
      {
        break;
      }

      ++v6;
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    v6 = -22;
  }

  else
  {
    v6 = 0;
  }

LABEL_8:
  v11 = a2[1] << 9;
  v12 = a3(*(a1 + 108));
  if ((v12 & 0x80000000) != 0)
  {
    v14 = *__error();
    if (DIForwardLogs())
    {
      v15 = getDIOSLog();
      os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
      v16 = *__error();
      *buf = 0x8404100502;
      v23 = 2080;
      v24 = "int rawTestPlugin_t::do_io(const IOV_OP &, ssize_t (*)(int, const struct iovec *, int, off_t)) [IOV_OP = io_rings_sqe_op_read_iov_t]";
      v25 = 2048;
      v26 = v11;
      v27 = 1024;
      v28 = v6;
      v29 = 1024;
      v30 = v16;
      v17 = _os_log_send_and_compose_impl();

      if (v17)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v17);
        free(v17);
      }
    }

    else
    {
      v18 = getDIOSLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = *__error();
        *buf = 0x8404100502;
        v23 = 2080;
        v24 = "int rawTestPlugin_t::do_io(const IOV_OP &, ssize_t (*)(int, const struct iovec *, int, off_t)) [IOV_OP = io_rings_sqe_op_read_iov_t]";
        v25 = 2048;
        v26 = v11;
        v27 = 1024;
        v28 = v6;
        v29 = 1024;
        v30 = v19;
        _os_log_impl(&dword_248DE0000, v18, OS_LOG_TYPE_ERROR, "%.*s: I/O error at offset %lld iov_count %d errno %d", buf, 0x28u);
      }
    }

    *__error() = v14;
    v20 = *__error();
    if (v20 < 0)
    {
      result = v20;
    }

    else
    {
      result = -v20;
    }
  }

  else
  {
    result = v12 >> 9;
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t rawTestPlugin_t::do_io<io_rings_sqe_op_write_iov_t>(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = 0;
    v7 = v5 << 9;
    v8 = (v4 + 8);
    while (1)
    {
      v9 = *v8;
      v8 += 2;
      v10 = v7 >= v9;
      v7 -= v9;
      if (!v10)
      {
        break;
      }

      ++v6;
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    v6 = -22;
  }

  else
  {
    v6 = 0;
  }

LABEL_8:
  v11 = a2[1] << 9;
  v12 = a3(*(a1 + 108));
  if ((v12 & 0x80000000) != 0)
  {
    v14 = *__error();
    if (DIForwardLogs())
    {
      v15 = getDIOSLog();
      os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
      v16 = *__error();
      *buf = 0x8504100502;
      v23 = 2080;
      v24 = "int rawTestPlugin_t::do_io(const IOV_OP &, ssize_t (*)(int, const struct iovec *, int, off_t)) [IOV_OP = io_rings_sqe_op_write_iov_t]";
      v25 = 2048;
      v26 = v11;
      v27 = 1024;
      v28 = v6;
      v29 = 1024;
      v30 = v16;
      v17 = _os_log_send_and_compose_impl();

      if (v17)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v17);
        free(v17);
      }
    }

    else
    {
      v18 = getDIOSLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = *__error();
        *buf = 0x8504100502;
        v23 = 2080;
        v24 = "int rawTestPlugin_t::do_io(const IOV_OP &, ssize_t (*)(int, const struct iovec *, int, off_t)) [IOV_OP = io_rings_sqe_op_write_iov_t]";
        v25 = 2048;
        v26 = v11;
        v27 = 1024;
        v28 = v6;
        v29 = 1024;
        v30 = v19;
        _os_log_impl(&dword_248DE0000, v18, OS_LOG_TYPE_ERROR, "%.*s: I/O error at offset %lld iov_count %d errno %d", buf, 0x28u);
      }
    }

    *__error() = v14;
    v20 = *__error();
    if (v20 < 0)
    {
      result = v20;
    }

    else
    {
      result = -v20;
    }
  }

  else
  {
    result = v12 >> 9;
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t rawTestPlugin_t::flush(rawTestPlugin_t *this)
{
  result = fcntl(*(this + 27), 51, 0);
  if (result != -1)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (*__error() != 22 && *__error() != 25 && *__error() != 45 || (result = fsync(*(this + 27)), result))
  {
LABEL_8:
    v3 = *__error();
    if (v3 < 0)
    {
      return v3;
    }

    else
    {
      return -v3;
    }
  }

  return result;
}

uint64_t __copy_helper_block_ea8_40c58_ZTSNSt3__16vectorIPK14io_rings_sqe_tNS_9allocatorIS3_EEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v2 = a1 + 40;
  *(v2 + 16) = 0;
  return std::vector<io_rings_sqe_t const*>::__init_with_size[abi:ne200100]<io_rings_sqe_t const**,io_rings_sqe_t const**>(v2, *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 3);
}

void __destroy_helper_block_ea8_40c58_ZTSNSt3__16vectorIPK14io_rings_sqe_tNS_9allocatorIS3_EEEE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

uint64_t std::vector<io_rings_sqe_t const*>::__init_with_size[abi:ne200100]<io_rings_sqe_t const**,io_rings_sqe_t const**>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<io_rings_sqe_t const*>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_248E82168(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<io_rings_sqe_t const*>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::allocator<std::unique_ptr<diskimage_uio::stack_image_node const>>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<iovec>::__throw_length_error[abi:ne200100]();
}

uint64_t rawTestPlugin_t::subscriber_t::_suspend(rawTestPlugin_t::subscriber_t *this)
{
  *&v2 = "rawTestPlugin_t::subscriber_t::_suspend()";
  *(&v2 + 1) = 39;
  v3 = 0;
  di_log::logger<di_log::log_printer<121ul>>::logger(v4, &v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "Suspended", 9);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<121ul>>::~logger_buf(v4);
  return MEMORY[0x24C1ED6A0](&v6);
}

void sub_248E8223C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<121ul>>::~logger(va);
  _Unwind_Resume(a1);
}

uint64_t rawTestPlugin_t::subscriber_t::_resume(rawTestPlugin_t::subscriber_t *this)
{
  *&v2 = "rawTestPlugin_t::subscriber_t::_resume()";
  *(&v2 + 1) = 38;
  v3 = 0;
  di_log::logger<di_log::log_printer<122ul>>::logger(v4, &v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "Resumed", 7);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<122ul>>::~logger_buf(v4);
  return MEMORY[0x24C1ED6A0](&v6);
}

void sub_248E822CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<122ul>>::~logger(va);
  _Unwind_Resume(a1);
}

uint64_t rawTestPlugin_t::subscriber_t::_cancel(dispatch_queue_t *this)
{
  dispatch_barrier_sync(this[12], &__block_literal_global_5);
  *&v2 = "rawTestPlugin_t::subscriber_t::_cancel()";
  *(&v2 + 1) = 38;
  v3 = 0;
  di_log::logger<di_log::log_printer<118ul>>::logger(v4, &v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "Cancelled", 9);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<118ul>>::~logger_buf(v4);
  return MEMORY[0x24C1ED6A0](&v6);
}

void sub_248E8236C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<118ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<118ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<118ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BE12D0;
  a1[45] = &unk_285BE13D0;
  a1[46] = &unk_285BE13F8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BE12D0;
  a1[45] = &unk_285BE1358;
  a1[46] = &unk_285BE1380;
  return a1;
}

void sub_248E82488(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<118ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<118ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<118ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<118ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BE1468;
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

void sub_248E825A0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<118ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE1468;
  di_log::logger_buf<di_log::log_printer<118ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<118ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<118ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<118ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<118ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<118ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<118ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<118ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<118ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<118ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<118ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<118ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<118ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<118ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<118ul>::log((a1 + 72), __p);
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

void sub_248E82B44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<118ul>::log(uint64_t *a1, uint64_t *a2)
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
    v21 = 118;
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
      v21 = 118;
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

uint64_t rawTestPlugin_t::encode(uint64_t a1, void (*a2)(uint64_t, const char *, uint64_t, uint64_t), void (*a3)(uint64_t, const char *, void), uint64_t a4)
{
  a3(a4, "fd", *(a1 + 108));
  a2(a4, "path", [*(a1 + 96) UTF8String], objc_msgSend(*(a1 + 96), "length") + 1);

  return (a2)(a4, "writable", a1 + 104, 1);
}

CFUUIDRef rawTestPlugin_t::copy_uuid(id *this)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v6[1] = 0;
  v1 = boost::uuids::basic_name_generator<boost::uuids::detail::sha1>::operator()(v6, [this[12] UTF8String], objc_msgSend(this[12], "length"));
  v3 = v2;
  *&v7.byte0 = v1;
  *&v7.byte8 = v3;
  result = CFUUIDCreateFromUUIDBytes(0, v7);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t boost::uuids::basic_name_generator<boost::uuids::detail::sha1>::operator()(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = 0;
  v20 = *MEMORY[0x277D85DE8];
  v14 = xmmword_248FA13B0;
  v15 = -1009589776;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  do
  {
    v7 = *(a1 + v6);
    v8 = v17++;
    v16[v8] = v7;
    if (v17 == 64)
    {
      v17 = 0;
      boost::uuids::detail::sha1::process_block(&v14);
    }

    if (v18 > 0xFFFFFFF7)
    {
      v18 = 0;
      if (v19 > 0xFFFFFFFE)
      {
        MEMORY[0x24C1ED210](v13, "sha1 too many bytes");
        boost::throw_exception<std::runtime_error>(v13);
      }

      ++v19;
    }

    else
    {
      v18 += 8;
    }

    ++v6;
  }

  while (v6 != 16);
  for (; a3; --a3)
  {
    v9 = *a2;
    v10 = v17++;
    v16[v10] = v9;
    if (v17 == 64)
    {
      v17 = 0;
      boost::uuids::detail::sha1::process_block(&v14);
    }

    if (v18 > 0xFFFFFFF7)
    {
      v18 = 0;
      if (v19 > 0xFFFFFFFE)
      {
        MEMORY[0x24C1ED210](v13, "sha1 too many bytes");
        boost::throw_exception<std::runtime_error>(v13);
      }

      ++v19;
    }

    else
    {
      v18 += 8;
    }

    ++a2;
  }

  result = boost::uuids::basic_name_generator<boost::uuids::detail::sha1>::hash_to_uuid(a1, &v14);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248E830AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  MEMORY[0x24C1ED230](va);
  _Unwind_Resume(a1);
}

uint64_t boost::uuids::basic_name_generator<boost::uuids::detail::sha1>::hash_to_uuid(int a1, boost::uuids::detail::sha1 *this)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v5, 0, 20);
  boost::uuids::detail::sha1::get_digest(this, v5);
  for (i = 0; i != 16; i += 4)
  {
    *(&v6 + i) = bswap32(*(v5 + i));
  }

  LOBYTE(v7) = v7 & 0x3F | 0x80;
  BYTE6(v6) = BYTE6(v6) & 0xF | 0x50;
  result = v6;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void boost::throw_exception<std::runtime_error>(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  v3 = MEMORY[0x24C1ED220](exception, a1);
  __cxa_throw(v3, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

_DWORD *boost::uuids::detail::sha1::process_block(_DWORD *this)
{
  v1 = 0;
  v41 = *MEMORY[0x277D85DE8];
  v2 = (this + 5);
  v42 = vld4q_s8(v2);
  v3 = vmovl_u8(*v42.val[0].i8);
  v4 = vmovl_high_u8(v42.val[0]);
  _Q16 = vmovl_u8(*v42.val[1].i8);
  _Q17 = vmovl_high_u8(v42.val[1]);
  __asm
  {
    SHLL2           V18.4S, V17.8H, #0x10
    SHLL2           V19.4S, V16.8H, #0x10
  }

  v13 = vmovl_high_u8(v42.val[2]);
  v14 = vmovl_u8(*v42.val[2].i8);
  v15 = vorrq_s8(vorrq_s8(vshll_n_u16(*v14.i8, 8uLL), vshll_n_s16(*_Q16.i8, 0x10uLL)), vshlq_n_s32(vmovl_u16(*v3.i8), 0x18uLL));
  v16 = vmovl_high_u8(v42.val[3]);
  v42.val[0] = vmovl_u8(*v42.val[3].i8);
  v40[3] = vorrq_s8(vorrq_s8(vorrq_s8(vshll_high_n_u16(v13, 8uLL), _Q18), vshlq_n_s32(vmovl_high_u16(v4), 0x18uLL)), vmovl_high_u16(v16));
  v40[2] = vorrq_s8(vorrq_s8(vorrq_s8(vshll_n_u16(*v13.i8, 8uLL), vshll_n_s16(*_Q17.i8, 0x10uLL)), vshlq_n_s32(vmovl_u16(*v4.i8), 0x18uLL)), vmovl_u16(*v16.i8));
  v40[1] = vorrq_s8(vorrq_s8(vorrq_s8(vshll_high_n_u16(v14, 8uLL), _Q19), vshlq_n_s32(vmovl_high_u16(v3), 0x18uLL)), vmovl_high_u16(v42.val[0]));
  v40[0] = vorrq_s8(v15, vmovl_u16(*v42.val[0].i8));
  do
  {
    HIDWORD(v17) = *(&v40[2] + v1) ^ *(&v40[3] + v1 + 4) ^ *(v40 + v1 + 8) ^ *(v40 + v1);
    LODWORD(v17) = HIDWORD(v17);
    *(&v40[4] + v1) = v17 >> 31;
    v1 += 4;
  }

  while (v1 != 256);
  v18 = 0;
  v19 = this[1];
  v21 = this[3];
  v20 = this[4];
  v22 = v20;
  v23 = this[2];
  v24 = v21;
  v25 = v23;
  v26 = v19;
  v27 = *this;
  do
  {
    v28 = v27;
    v29 = v25;
    v30 = v24;
    v31 = v25 ^ v26 ^ v24;
    v32 = (v24 | v29) & v26 | v24 & v29;
    if (v18 <= 0x3B)
    {
      v33 = -1894007588;
    }

    else
    {
      v32 = v31;
      v33 = -899497514;
    }

    if (v18 <= 0x27)
    {
      v34 = 1859775393;
    }

    else
    {
      v31 = v32;
      v34 = v33;
    }

    if (v18 <= 0x13)
    {
      v31 = v30 & ~v26 | v29 & v26;
    }

    HIDWORD(v36) = v28;
    LODWORD(v36) = v28;
    v35 = v36 >> 27;
    if (v18 <= 0x13)
    {
      v34 = 1518500249;
    }

    v37 = v22 + v35 + v31 + v34;
    HIDWORD(v38) = v26;
    LODWORD(v38) = v26;
    v25 = v38 >> 2;
    v27 = v37 + *(v40 + v18++);
    v22 = v30;
    v24 = v29;
    v26 = v28;
  }

  while (v18 != 80);
  *this += v27;
  this[1] = v28 + v19;
  this[2] = v25 + v23;
  this[3] = v29 + v21;
  this[4] = v30 + v20;
  v39 = *MEMORY[0x277D85DE8];
  return this;
}