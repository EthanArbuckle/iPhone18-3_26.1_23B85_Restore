_DWORD *boost::uuids::detail::sha1::get_digest(_DWORD *this, unsigned int (*a2)[5])
{
  v3 = this;
  v4 = this + 5;
  v5 = *(this + 11);
  *(this + 11) = v5 + 1;
  *(this + v5 + 20) = 0x80;
  v6 = *(this + 11);
  if (v6 == 64)
  {
    *(this + 11) = 0;
    this = boost::uuids::detail::sha1::process_block(this);
    v6 = *(v3 + 88);
  }

  if (v6 < 0x39)
  {
    if (v6 != 56)
    {
      do
      {
        *(v3 + 88) = v6 + 1;
        *(v4 + v6) = 0;
        v6 = *(v3 + 88);
      }

      while (v6 < 0x38);
    }
  }

  else
  {
    do
    {
      *(v3 + 88) = v6 + 1;
      *(v4 + v6) = 0;
      v6 = *(v3 + 88);
      if (v6 == 64)
      {
        *(v3 + 88) = 0;
        this = boost::uuids::detail::sha1::process_block(v3);
        v6 = *(v3 + 88);
      }
    }

    while (v6);
    v7 = 0;
    do
    {
      v6 = v7 + 1;
      *(v4 + v7) = 0;
    }

    while (v7++ < 0x37);
  }

  v9 = *(v3 + 104) >> 24;
  *(v3 + 88) = v6 + 1;
  *(v4 + v6) = v9;
  v10 = *(v3 + 88);
  if (v10 == 64)
  {
    *(v3 + 88) = 0;
    this = boost::uuids::detail::sha1::process_block(v3);
    v10 = *(v3 + 88);
  }

  v11 = *(v3 + 104) >> 16;
  *(v3 + 88) = v10 + 1;
  *(v4 + v10) = v11;
  v12 = *(v3 + 88);
  if (v12 == 64)
  {
    *(v3 + 88) = 0;
    this = boost::uuids::detail::sha1::process_block(v3);
    v12 = *(v3 + 88);
  }

  v13 = *(v3 + 104) >> 8;
  *(v3 + 88) = v12 + 1;
  *(v4 + v12) = v13;
  v14 = *(v3 + 88);
  if (v14 == 64)
  {
    *(v3 + 88) = 0;
    this = boost::uuids::detail::sha1::process_block(v3);
    v14 = *(v3 + 88);
  }

  v15 = *(v3 + 104);
  *(v3 + 88) = v14 + 1;
  *(v4 + v14) = v15;
  v16 = *(v3 + 88);
  if (v16 == 64)
  {
    *(v3 + 88) = 0;
    this = boost::uuids::detail::sha1::process_block(v3);
    v16 = *(v3 + 88);
  }

  v17 = *(v3 + 96) >> 24;
  *(v3 + 88) = v16 + 1;
  *(v4 + v16) = v17;
  v18 = *(v3 + 88);
  if (v18 == 64)
  {
    *(v3 + 88) = 0;
    this = boost::uuids::detail::sha1::process_block(v3);
    v18 = *(v3 + 88);
  }

  v19 = *(v3 + 96) >> 16;
  *(v3 + 88) = v18 + 1;
  *(v4 + v18) = v19;
  v20 = *(v3 + 88);
  if (v20 == 64)
  {
    *(v3 + 88) = 0;
    this = boost::uuids::detail::sha1::process_block(v3);
    v20 = *(v3 + 88);
  }

  v21 = *(v3 + 96) >> 8;
  *(v3 + 88) = v20 + 1;
  *(v4 + v20) = v21;
  v22 = *(v3 + 88);
  if (v22 == 64)
  {
    *(v3 + 88) = 0;
    this = boost::uuids::detail::sha1::process_block(v3);
    v22 = *(v3 + 88);
  }

  v23 = *(v3 + 96);
  *(v3 + 88) = v22 + 1;
  *(v4 + v22) = v23;
  if (*(v3 + 88) == 64)
  {
    *(v3 + 88) = 0;
    this = boost::uuids::detail::sha1::process_block(v3);
  }

  (*a2)[0] = *v3;
  (*a2)[1] = *(v3 + 4);
  (*a2)[2] = *(v3 + 8);
  (*a2)[3] = *(v3 + 12);
  (*a2)[4] = *(v3 + 16);
  return this;
}

void pluginException_t::~pluginException_t(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x24C1ED730);
}

void rawTestPlugin_t::~rawTestPlugin_t(rawTestPlugin_t *this)
{
  close(*(this + 27));
  *&v2 = "rawTestPlugin_t::~rawTestPlugin_t()";
  *(&v2 + 1) = 33;
  v3 = 0;
  di_log::logger<di_log::log_printer<325ul>>::logger(v4, &v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "Cleaning up!", 12);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<325ul>>::~logger_buf(v4);
  MEMORY[0x24C1ED6A0](&v6);
}

void *di_log::logger<di_log::log_printer<325ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<325ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BE1518;
  a1[45] = &unk_285BE1618;
  a1[46] = &unk_285BE1640;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BE1518;
  a1[45] = &unk_285BE15A0;
  a1[46] = &unk_285BE15C8;
  return a1;
}

void sub_248E83848(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<325ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<325ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<325ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<325ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BE16B0;
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

void sub_248E83960(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<325ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE16B0;
  di_log::logger_buf<di_log::log_printer<325ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<325ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<325ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<325ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<325ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<325ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<325ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<325ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<325ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<325ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<325ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<325ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<325ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<325ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<325ul>::log((a1 + 72), __p);
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

void sub_248E83F04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<325ul>::log(uint64_t *a1, uint64_t *a2)
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
    v21 = 325;
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
      v21 = 325;
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

uint64_t io_rings_setup_impl(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 4294967274;
  if (a1 && a2 && a3 && a4)
  {
    if (*a2 <= 1u)
    {
      v5 = *(a2 + 4);
      if (v5 < 9)
      {
        return v4;
      }

      if (v5 < 0x10 || ((v6 = *(a2 + 8)) == 0 || !*v6) && (v5 < 0x31 || !*(a2 + 48) && !memcmp((a2 + 48), (a2 + 49), v5 - 49)))
      {
        operator new();
      }
    }

    return 4294967251;
  }

  return v4;
}

void sub_248E842E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<io_rings_desc_t>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t io_rings_get_max_version(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = -22;
  }

  else
  {
    v2 = 1;
  }

  if (a2 <= 0 && a1 == 0)
  {
    return v2;
  }

  else
  {
    return 4294967251;
  }
}

void *io_rings_setup_copy_in_params(void *result, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (v2 >= 0x18)
  {
    result[52] = *(a2 + 16);
    if (v2 >= 0x20)
    {
      result[53] = *(a2 + 24);
      if (v2 >= 0x28)
      {
        result[54] = *(a2 + 32);
        if (v2 >= 0x30)
        {
          result[55] = *(a2 + 40);
        }
      }
    }
  }

  return result;
}

uint64_t io_rings_setup_prepare_ring(io_rings_desc_t *a1, unsigned int a2)
{
  v15[4] = *MEMORY[0x277D85DE8];
  if (a2 >= 0x2000)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = a2;
  }

  if (a2 + 1 < 0x2000)
  {
    v4 = a2 + 1;
  }

  else
  {
    v4 = 0x2000;
  }

  if ((v4 & (v4 - 1)) != 0)
  {
    v5 = 0;
    v6 = 2 * v4;
    do
    {
      v6 >>= 1;
      ++v5;
    }

    while (v6 != 1);
    v4 = 1 << v5;
  }

  v7 = mmap(0, 88 * v3 + 8 + 4 * v4, 3, 4097, 0, 0);
  if (v7 == -1)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  *a1 = v8;
  v9 = mmap(0, (16 * v4) | 8, 3, 4097, 0, 0);
  if (v9 == -1)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  *(a1 + 1) = v10;
  result = 4294967284;
  if (*a1 && v10)
  {
    std::__optional_destruct_base<io_rings_sq_t,false>::reset[abi:ne200100](a1 + 16);
    v12 = *a1;
    v13 = *(a1 + 1);
    v15[0] = &unk_285BE1758;
    v15[1] = a1;
    v15[3] = v15;
    io_rings_sq_t::io_rings_sq_t(a1 + 16, v12, v13, v3, v4, v4, v15);
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248E8456C(_Unwind_Exception *a1, int a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  std::__function::__value_func<void ()(io_rings_event_type_t,io_rings_event_type_data_t)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va1);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x248E8451CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t io_rings_desc_free(uint64_t result)
{
  if (*(result + 264) == 1)
  {
    v1 = result;
    if (*(result + 408) == 1)
    {
      v2 = *(result + 136);
      v3 = *(result + 312);
      v4 = *(result + 56);
      std::__optional_destruct_base<io_rings_sq_t,false>::reset[abi:ne200100](result + 16);
      std::__optional_destruct_base<io_rings_cq_t,false>::reset[abi:ne200100](v1 + 272);
      if (*v1)
      {
        munmap(*v1, 4 * v4 + 88 * v2 + 8);
        *v1 = 0;
      }

      v5 = *(v1 + 8);
      if (v5)
      {
        munmap(v5, (16 * v3) | 8);
        *(v1 + 8) = 0;
      }

      io_rings_desc_t::~io_rings_desc_t(v1);

      JUMPOUT(0x24C1ED730);
    }
  }

  return result;
}

io_rings_desc_t **std::unique_ptr<io_rings_desc_t>::~unique_ptr[abi:ne200100](io_rings_desc_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    io_rings_desc_t::~io_rings_desc_t(v2);
    MEMORY[0x24C1ED730]();
  }

  return a1;
}

uint64_t io_rings_get_supported_features(uint64_t a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    return 4294967194;
  }

  result = 4294967274;
  if (a2)
  {
    if (a3)
    {
      bzero(a2, 8 * a3);
      result = 0;
      *a2 = 2;
    }
  }

  return result;
}

uint64_t io_rings_enter(uint64_t a1, int a2, int a3)
{
  if (a3)
  {
    return 4294967194;
  }

  if (*(a1 + 712) == 2)
  {
    return 4294967207;
  }

  return io_rings_t<unsigned int,true>::enter(a1 + 16, a2, 1);
}

double io_rings_sqe_allocate(uint64_t a1)
{
  sqe = io_rings_sq_t::allocate_sqe((a1 + 16));
  if (sqe)
  {
    *(sqe + 12) = 0;
    result = 0.0;
    *(sqe + 24) = 0u;
    *(sqe + 40) = 0u;
    *(sqe + 56) = 0u;
    *(sqe + 72) = 0u;
    *(sqe + 1) = 0;
    *(sqe + 4) = 0;
  }

  return result;
}

uint64_t io_rings_sq_t::allocate_sqe(io_rings_sq_t *this)
{
  v2 = bitmap_allocator<unsigned long,(std::memory_order)4>::allocate(this + 13);
  if (v2 < 0)
  {
    return 0;
  }

  atomic_fetch_add(this + 12, 1u);
  *(*(this + 3) + 4 * (*(this + 11) & atomic_fetch_add(this + 2, 1u))) = v2;
  return *(this + 12) + 88 * v2;
}

uint64_t io_rings_cq_t::pop_cqe(unsigned int **this)
{
  if (*(this + 96) == 1)
  {
    v2 = atomic_load(*this);
    *(this + 23) = v2;
    __dmb(9u);
    *(this + 96) = 0;
  }

  v3 = atomic_load(this[2]);
  io_rings_t<io_rings_cqe_t,true>::pop_elem_at_tail(this, &v5);
  if (v7 != 1)
  {
    return 0;
  }

  if (v3 == *(this + 23))
  {
    *(this + 96) = 1;
  }

  v6 |= 1u;
  return v5;
}

uint64_t io_rings_suspend(uint64_t a1)
{
  if (*(a1 + 712))
  {
    return 4294967274;
  }

  v3 = *(*(a1 + 704) + 16);
  if (!v3 || (result = v3(), !result))
  {
    object_subscribers_t<16ul>::suspend_all((a1 + 448));
    result = 0;
    *(a1 + 712) = 1;
  }

  return result;
}

uint64_t io_rings_resume(uint64_t a1)
{
  if (*(a1 + 712) != 1)
  {
    return 4294967274;
  }

  object_subscribers_t<16ul>::resume_all((a1 + 448));
  v2 = *(*(a1 + 704) + 24);
  if (v2 && (v3 = v2(), v3))
  {
    v4 = v3;
    object_subscribers_t<16ul>::suspend_all((a1 + 448));
  }

  else
  {
    v4 = 0;
    *(a1 + 712) = 0;
  }

  return v4;
}

uint64_t io_rings_cancel(uint64_t a1)
{
  if (*(a1 + 712) != 1)
  {
    return -16;
  }

  v2 = *(*(a1 + 704) + 8);
  if (v2 && (v3 = v2()) != 0)
  {
    if (v3 < 0)
    {
      return v3;
    }

    else
    {
      return -v3;
    }
  }

  else
  {
    *(a1 + 712) = 2;
    v6 = io_rings_t<unsigned int,true>::pop_elem_at_tail(a1 + 16);
    for (i = 0; (v6 & 0x100000000) != 0; v6 = io_rings_t<unsigned int,true>::pop_elem_at_tail(a1 + 16))
    {
      v7 = *(a1 + 112);
      if (!v7)
      {
        break;
      }

      v8 = v7 + 88 * v6;
      io_rings_cq_t::enter(a1 + 272, *(v8 + 16), 0x1FFFFFFA7, 0);
      v9 = 0x2E8BA2E8BA2E8BA3 * ((v8 - *(a1 + 112)) >> 3);
      atomic_fetch_or((*(a1 + 128) + 8 * (v9 >> 6)), 1 << v9);
      ++i;
    }
  }

  return i;
}

uint64_t io_rings_pop_sqe(uint64_t a1)
{
  v2 = io_rings_t<unsigned int,true>::pop_elem_at_tail(a1 + 16);
  if ((v2 & 0x100000000) != 0)
  {
    return *(a1 + 112) + 88 * v2;
  }

  else
  {
    return 0;
  }
}

void object_subscribers_t<16ul>::unsubscribe(uint64_t a1, unsigned int a2)
{
  v2 = 0;
  v3 = 0;
  std::atomic_store[abi:ne200100]<io_rings_subscriber_t>((a1 + 16 * a2), &v2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_248E84C2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t io_rings_release(uint64_t result)
{
  if (result)
  {
    if (*(result + 712) == 2)
    {
      return io_rings_desc_free(result);
    }
  }

  return result;
}

uint64_t io_rings_cq_t::enter(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  __dmb(0xBu);
  result = io_rings_t<io_rings_cqe_t,true>::insert_elem_safe(a1, a2, a3);
  if (result)
  {
    if (result == -28)
    {
      if (!atomic_fetch_add((a1 + 100), 1u))
      {
        std::function<void ()(io_rings_event_type_t,io_rings_event_type_data_t)>::operator()(a1 + 104, 0, 4);
      }

      return 4294967268;
    }
  }

  else
  {

    return io_rings_t<unsigned int,true>::enter(a1, 1, a4);
  }

  return result;
}

void sub_248E84DAC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x248E84D94);
}

uint64_t io_rings_return_status(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v8 = linked_elem_db_t::consume_elem((a1 + 144), a2);
  v9 = *(a2 + 2);
  v10 = *(a2 + 16);
  v11 = 0x2E8BA2E8BA2E8BA3 * ((a2 - *(a1 + 112)) >> 3);
  atomic_fetch_or((*(a1 + 128) + 8 * (v11 >> 6)), 1 << v11);
  if ((v9 & 4) != 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = v8;
  }

  return io_rings_cq_t::enter(a1 + 272, v10, a3 | ((a4 | 1u) << 32), v12);
}

void io_rings_consumer_single_sqe_execute(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 >= 5)
  {
    v5 = 0;
    v6 = 0;
LABEL_6:
    io_rings_return_status(a1, a2, 0xFFFFFFFA, 0);
    goto LABEL_7;
  }

  std::atomic_load[abi:ne200100]<io_rings_subscriber_t>((a1 + 16 * v4 + 448), &v5);
  if (!v5)
  {
    goto LABEL_6;
  }

  if (!(*v5)())
  {
    (*(v5 + 8))();
  }

LABEL_7:
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_248E84F2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void io_rings_subscriber_get(io_rings_desc_t *a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  if (a2 < 5)
  {
    std::atomic_load[abi:ne200100]<io_rings_subscriber_t>(a1 + 2 * a2 + 56, a3);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }
}

uint64_t io_rings_parse_and_execute_sqe(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  if ((*(a3 + 1) & 0xFFFA) != 0)
  {
    return 4294967194;
  }

  v5 = *a3;
  v3 = 4294967194;
  if (v5 <= 2)
  {
    if (!*a3)
    {
      return 0;
    }

    if (v5 == 1)
    {
      v6 = *(a1 + 64);
    }

    else
    {
      if (v5 != 2)
      {
        return v3;
      }

      v6 = *(a1 + 80);
    }

LABEL_21:
    v7 = *(a3 + 12);
    v9 = *(a3 + 3);
    v8 = *(a3 + 4);
    v10 = *(a3 + 5);
    return v6();
  }

  if (*a3 <= 4u)
  {
    if (v5 == 3)
    {
      v6 = *(a1 + 72);
    }

    else
    {
      if (v5 != 4)
      {
        return v3;
      }

      v6 = *(a1 + 88);
    }

    goto LABEL_21;
  }

  if (v5 == 5)
  {
    if (*(a3 + 6) > 3u)
    {
      return v3;
    }

    return (*(a1 + 104))();
  }

  else
  {
    if (v5 != 6)
    {
      return v3;
    }

    return (*(a1 + 96))(a1, a2, *(a3 + 8), *(a3 + 3));
  }
}

uint64_t (**io_rings_subscriber_sync_init(uint64_t (**result)(uint64_t a1, unsigned __int8 *a2), uint64_t (*a2)(uint64_t a1, unsigned __int8 *a2)))(uint64_t a1, unsigned __int8 *a2)
{
  *result = io_rings_subscriber_sync_init(io_rings_subscriber_sync_t *,io_rings_desc_t *)::$_0::__invoke;
  result[1] = io_rings_subscriber_sync_init(io_rings_subscriber_sync_t *,io_rings_desc_t *)::$_1::__invoke;
  result[2] = io_rings_subscriber_sync_init(io_rings_subscriber_sync_t *,io_rings_desc_t *)::$_2::__invoke;
  result[3] = io_rings_subscriber_sync_init(io_rings_subscriber_sync_t *,io_rings_desc_t *)::$_3::__invoke;
  result[4] = io_rings_subscriber_sync_init(io_rings_subscriber_sync_t *,io_rings_desc_t *)::$_4::__invoke;
  result[5] = io_rings_subscriber_sync_init(io_rings_subscriber_sync_t *,io_rings_desc_t *)::$_5::__invoke;
  result[6] = io_rings_subscriber_sync_init(io_rings_subscriber_sync_t *,io_rings_desc_t *)::$_6::__invoke;
  result[7] = a2;
  return result;
}

void object_subscribers_t<16ul>::suspend_all(void *a1)
{
  v2 = 16;
  do
  {
    std::atomic_load[abi:ne200100]<io_rings_subscriber_t>(a1, &v3);
    if (v3)
    {
      (*(v3 + 24))();
    }

    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    a1 += 2;
    --v2;
  }

  while (v2);
}

void sub_248E85100(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void object_subscribers_t<16ul>::resume_all(void *a1)
{
  v2 = 16;
  do
  {
    std::atomic_load[abi:ne200100]<io_rings_subscriber_t>(a1, &v3);
    if (v3)
    {
      (*(v3 + 32))();
    }

    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    a1 += 2;
    --v2;
  }

  while (v2);
}

void sub_248E85178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void object_subscribers_t<16ul>::cancel_all(void *a1)
{
  v2 = 16;
  do
  {
    std::atomic_load[abi:ne200100]<io_rings_subscriber_t>(a1, &v3);
    if (v3)
    {
      (*(v3 + 40))();
    }

    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    a1 += 2;
    --v2;
  }

  while (v2);
}

void sub_248E851F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void linked_elem_db_t::add_elem_to_chain(std::mutex *this, const void *a2, int a3, int a4)
{
  std::mutex::lock(this);
  v8 = *&this[1].__m_.__opaque[40];
  if (a3)
  {
    if (v8)
    {
      *(v8 + 4) = 1;
    }

    operator new();
  }

  if (a4 && v8)
  {
    *(v8 + 4) = 1;
  }

  atomic_fetch_add(v8, 1u);
  v9 = *&this[1].__m_.__opaque[40];
  v10[0] = a2;
  v10[1] = v9;
  std::__hash_table<std::__hash_value_type<void const*,linked_elem_db_t::node_t *>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,linked_elem_db_t::node_t *>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,linked_elem_db_t::node_t *>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,linked_elem_db_t::node_t *>>>::__emplace_unique_key_args<void const*,std::pair<void const*,linked_elem_db_t::node_t *>>(&this[1].__m_.__sig, v10);
  if (a4)
  {
    *&this[1].__m_.__opaque[40] = 0;
  }

  ++*&this[1].__m_.__opaque[32];
  std::mutex::unlock(this);
}

uint64_t linked_elem_db_t::consume_elem(std::mutex *this, const void *a2)
{
  v6 = a2;
  if (*&this[1].__m_.__opaque[32])
  {
    std::mutex::lock(this);
    v3 = std::__hash_table<std::__hash_value_type<void const*,linked_elem_db_t::node_t *>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,linked_elem_db_t::node_t *>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,linked_elem_db_t::node_t *>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,linked_elem_db_t::node_t *>>>::find<void const*>(&this[1].__m_.__sig, &v6);
    if (v3)
    {
      --*&this[1].__m_.__opaque[32];
      v4 = v3[3];
      std::__hash_table<std::__hash_value_type<void const*,linked_elem_db_t::node_t *>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,linked_elem_db_t::node_t *>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,linked_elem_db_t::node_t *>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,linked_elem_db_t::node_t *>>>::erase(&this[1].__m_.__sig, v3);
      std::mutex::unlock(this);
      if (v4)
      {
        if (atomic_fetch_add(v4, 0xFFFFFFFF) != 1 || *(v4 + 4) != 1)
        {
          return 0;
        }

        MEMORY[0x24C1ED730](v4, 0x1000C4090D0E795);
      }
    }

    else
    {
      std::mutex::unlock(this);
    }
  }

  return 1;
}

uint64_t di_plugin_register(PluginsManager *a1, unsigned int *a2)
{
  v4 = PluginsManager::get(a1);
  std::string::basic_string[abi:ne200100]<0>(__p, a1);
  v5 = PluginsManager::register_plugin(v4, __p, a2);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_248E8544C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_plugin_release(PluginsManager *a1)
{
  v2 = PluginsManager::get(a1);
  std::string::basic_string[abi:ne200100]<0>(__p, a1);
  PluginsManager::release_plugin(v2, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_248E854C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__optional_destruct_base<io_rings_sq_t,false>::reset[abi:ne200100](uint64_t result)
{
  if (*(result + 248) == 1)
  {
    v1 = result;
    std::__hash_table<std::__hash_value_type<void const*,linked_elem_db_t::node_t *>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,linked_elem_db_t::node_t *>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,linked_elem_db_t::node_t *>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,linked_elem_db_t::node_t *>>>::~__hash_table(result + 192);
    std::mutex::~mutex((v1 + 128));
    v2 = *(v1 + 112);
    *(v1 + 112) = 0;
    if (v2)
    {
      MEMORY[0x24C1ED710](v2, 0x1000C8000313F17);
    }

    result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v1 + 56);
    *(v1 + 248) = 0;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<void const*,linked_elem_db_t::node_t *>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,linked_elem_db_t::node_t *>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,linked_elem_db_t::node_t *>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,linked_elem_db_t::node_t *>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<io_rings_setup_prepare_ring(io_rings_desc_t &,unsigned int)::$_0,std::allocator<io_rings_setup_prepare_ring(io_rings_desc_t &,unsigned int)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285BE1758;
  a2[1] = v2;
  return result;
}

uint64_t (**std::__function::__func<io_rings_setup_prepare_ring(io_rings_desc_t &,unsigned int)::$_0,std::allocator<io_rings_setup_prepare_ring(io_rings_desc_t &,unsigned int)::$_0>,void ()(void)>::operator()(uint64_t a1))(void)
{
  result = *(*(a1 + 8) + 704);
  if (*result)
  {
    return (*result)();
  }

  return result;
}

uint64_t std::__function::__func<io_rings_setup_prepare_ring(io_rings_desc_t &,unsigned int)::$_0,std::allocator<io_rings_setup_prepare_ring(io_rings_desc_t &,unsigned int)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void io_rings_sq_t::io_rings_sq_t(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned int a6, uint64_t a7)
{
  v8 = a4;
  *&v10 = a2 + 88 * a4;
  *(&v10 + 1) = a5;
  v9 = io_rings_t<unsigned int,true>::io_rings_t(a1, v10 + 4 * a5, a3 + 16 * a6 + 4, &v10, a5, a7);
  *(v9 + 96) = a2;
  bitmap_allocator<unsigned long,(std::memory_order)4>::bitmap_allocator((v9 + 104), v8);
}

uint64_t io_rings_t<unsigned int,true>::io_rings_t(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, int a5, uint64_t a6)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = a3;
  *(a1 + 24) = *a4;
  *(a1 + 40) = a5;
  if ((a5 & (a5 - 1)) != 0)
  {
    v7 = 0;
    v8 = 2 * a5;
    do
    {
      v8 >>= 1;
      ++v7;
    }

    while (v8 != 1);
    a5 = 1 << v7;
  }

  *(a1 + 48) = 0;
  *(a1 + 44) = a5 - 1;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](a1 + 56, a6);
  *(a1 + 88) = 1;
  return a1;
}

uint64_t std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__optional_destruct_base<io_rings_cq_t,false>::reset[abi:ne200100](uint64_t result)
{
  if (*(result + 136) == 1)
  {
    v1 = result;
    std::__function::__value_func<void ()(io_rings_event_type_t,io_rings_event_type_data_t)>::~__value_func[abi:ne200100](result + 104);
    result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v1 + 56);
    *(v1 + 136) = 0;
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(io_rings_event_type_t,io_rings_event_type_data_t)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<io_rings_setup_prepare_ring(io_rings_desc_t &,unsigned int)::$_1,std::allocator<io_rings_setup_prepare_ring(io_rings_desc_t &,unsigned int)::$_1>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285BE17E8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<io_rings_setup_prepare_ring(io_rings_desc_t &,unsigned int)::$_1,std::allocator<io_rings_setup_prepare_ring(io_rings_desc_t &,unsigned int)::$_1>,void ()(void)>::operator()(uint64_t a1)
{
  result = *(a1 + 8);
  v2 = *(result + 432);
  if (v2)
  {
    return v2(result, *(result + 440));
  }

  return result;
}

uint64_t std::__function::__func<io_rings_setup_prepare_ring(io_rings_desc_t &,unsigned int)::$_1,std::allocator<io_rings_setup_prepare_ring(io_rings_desc_t &,unsigned int)::$_1>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<io_rings_setup_prepare_ring(io_rings_desc_t &,unsigned int)::$_2,std::allocator<io_rings_setup_prepare_ring(io_rings_desc_t &,unsigned int)::$_2>,void ()(io_rings_event_type_t,io_rings_event_type_data_t)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285BE1868;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<io_rings_setup_prepare_ring(io_rings_desc_t &,unsigned int)::$_2,std::allocator<io_rings_setup_prepare_ring(io_rings_desc_t &,unsigned int)::$_2>,void ()(io_rings_event_type_t,io_rings_event_type_data_t)>::operator()(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  result = *(a1 + 8);
  v4 = *(result + 416);
  if (v4)
  {
    return v4(result, *(result + 424), *a2, a3);
  }

  return result;
}

uint64_t std::__function::__func<io_rings_setup_prepare_ring(io_rings_desc_t &,unsigned int)::$_2,std::allocator<io_rings_setup_prepare_ring(io_rings_desc_t &,unsigned int)::$_2>,void ()(io_rings_event_type_t,io_rings_event_type_data_t)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t io_rings_cq_t::io_rings_cq_t(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  *&v12 = a3;
  *(&v12 + 1) = a6;
  v10 = io_rings_t<unsigned int,true>::io_rings_t(a1, a3 + 16 * a6, a2 + 88 * a4 + 4 * a5 + 4, &v12, a6, a7);
  *(v10 + 96) = 1;
  *(v10 + 100) = 0;
  std::__function::__value_func<void ()(io_rings_event_type_t,io_rings_event_type_data_t)>::__value_func[abi:ne200100](v10 + 104, a8);
  return a1;
}

uint64_t std::__function::__value_func<void ()(io_rings_event_type_t,io_rings_event_type_data_t)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void io_rings_desc_t::~io_rings_desc_t(io_rings_desc_t *this)
{
  v2 = *(this + 88);
  *(this + 88) = 0;
  if (v2)
  {
    (*(v2 + 32))();
  }

  for (i = 696; i != 440; i -= 16)
  {
    v4 = *(this + i);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  if (*(this + 408) == 1)
  {
    std::__function::__value_func<void ()(io_rings_event_type_t,io_rings_event_type_data_t)>::~__value_func[abi:ne200100](this + 376);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 328);
  }

  if (*(this + 264) == 1)
  {
    std::__hash_table<std::__hash_value_type<void const*,linked_elem_db_t::node_t *>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,linked_elem_db_t::node_t *>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,linked_elem_db_t::node_t *>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,linked_elem_db_t::node_t *>>>::~__hash_table(this + 208);
    std::mutex::~mutex((this + 144));
    v5 = *(this + 16);
    *(this + 16) = 0;
    if (v5)
    {
      MEMORY[0x24C1ED710](v5, 0x1000C8000313F17);
    }

    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 72);
  }
}

uint64_t $_9::__invoke<io_rings_consumer_t *>(uint64_t result)
{
  if (result)
  {
    std::unique_ptr<GCDPool>::reset[abi:ne200100]((result + 48), 0);

    JUMPOUT(0x24C1ED730);
  }

  return result;
}

uint64_t *std::unique_ptr<GCDPool>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    gcd::gcd_group::~gcd_group((v2 + 16));

    JUMPOUT(0x24C1ED730);
  }

  return result;
}

uint64_t io_rings_t<unsigned int,true>::enter(uint64_t a1, int a2, int a3)
{
  v4 = *(a1 + 52);
  v5 = v4;
  atomic_compare_exchange_strong((a1 + 52), &v5, (v4 + 2 * a2) | a3);
  if (v5 != v4)
  {
    v6 = v5;
    do
    {
      atomic_compare_exchange_strong((a1 + 52), &v6, (v5 + 2 * a2) | a3);
      v7 = v6 == v5;
      v5 = v6;
    }

    while (!v7);
  }

  if (atomic_fetch_add((a1 + 48), -a2) == a2 && (atomic_exchange((a1 + 89), 1u) & 1) == 0)
  {
    while (1)
    {
      v9 = *(a1 + 52);
      if (atomic_load_explicit((a1 + 48), memory_order_acquire))
      {
        break;
      }

      v10 = v9;
      atomic_compare_exchange_strong((a1 + 52), &v10, 0);
      if (v10 == v9)
      {
        v11 = (v9 >> 1) | ((v9 & 1) << 32);
        goto LABEL_12;
      }
    }

    v11 = 0;
LABEL_12:
    v12 = HIDWORD(v11);
    if (v11)
    {
LABEL_13:
      __dmb(0xBu);
      v13 = v11 + atomic_fetch_add(*a1, v11);
      v14 = atomic_load(*(a1 + 16));
      if (v13 != v14 && (v12 & 1) != 0)
      {
        v15 = 1;
        atomic_compare_exchange_strong((a1 + 88), &v15, 0);
        if (v15 == 1)
        {
          v16 = *(a1 + 80);
          if (!v16)
          {
            std::__throw_bad_function_call[abi:ne200100]();
          }

          (*(*v16 + 48))(v16);
        }
      }

      while (1)
      {
        v17 = *(a1 + 52);
        if (atomic_load_explicit((a1 + 48), memory_order_acquire))
        {
          break;
        }

        v18 = v17;
        atomic_compare_exchange_strong((a1 + 52), &v18, 0);
        if (v18 == v17)
        {
          LODWORD(v11) = v17 >> 1;
          LOBYTE(v12) = v17 & 1;
          if (v17 > 1)
          {
            goto LABEL_13;
          }

          break;
        }
      }
    }

LABEL_21:
    atomic_store(0, (a1 + 89));
    __dmb(0xBu);
    if (*(a1 + 52))
    {
      while (2)
      {
        if ((atomic_exchange((a1 + 89), 1u) & 1) == 0)
        {
          while (1)
          {
            LODWORD(v12) = *(a1 + 52);
            if (atomic_load_explicit((a1 + 48), memory_order_acquire))
            {
              break;
            }

            v19 = v12;
            atomic_compare_exchange_strong((a1 + 52), &v19, 0);
            if (v19 == v12)
            {
              if (v12 > 1)
              {
                LODWORD(v11) = v12 >> 1;
                LOBYTE(v12) = v12 & 1;
                if (v11)
                {
                  goto LABEL_13;
                }

                goto LABEL_21;
              }

              break;
            }
          }

          atomic_store(0, (a1 + 89));
          __dmb(0xBu);
          if (*(a1 + 52) && !atomic_load_explicit((a1 + 48), memory_order_acquire))
          {
            continue;
          }
        }

        break;
      }
    }
  }

  return 0;
}

uint64_t bitmap_allocator<unsigned long,(std::memory_order)4>::allocate(void *a1)
{
  v1 = *a1 + 63;
  if (v1 >= 0x40)
  {
    v3 = a1[1];
    v4 = &v3[v1 >> 6];
    do
    {
      if (atomic_load(v3))
      {
        while (1)
        {
          v6 = atomic_load(v3);
          if (!v6)
          {
            break;
          }

          v7 = __clz(__rbit64(v6));
          if ((atomic_fetch_and(v3, ~(1 << v7)) & (1 << v7)) != 0)
          {
            return v7 + 8 * (v3 - a1[1]);
          }
        }
      }

      ++v3;
    }

    while (v3 != v4);
  }

  return -1;
}

uint64_t io_rings_t<io_rings_cqe_t,true>::pop_elem_at_tail@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  while (1)
  {
    v2 = atomic_load(*result);
    v3 = atomic_load(*(result + 16));
    if (v2 == v3)
    {
      if (atomic_exchange((result + 88), 1u))
      {
        break;
      }

      v4 = atomic_load(*result);
      v5 = atomic_load(*(result + 16));
      if (v4 == v5)
      {
        break;
      }

      v6 = 1;
      atomic_compare_exchange_strong((result + 88), &v6, 0);
      if (v6 != 1)
      {
        break;
      }
    }

    v7 = atomic_load(*(result + 16));
    v8 = atomic_load(*result);
    if (v7 != v8)
    {
      v9 = v7;
      atomic_compare_exchange_strong(*(result + 16), &v9, v7 + 1);
      if (v9 == v7)
      {
        goto LABEL_11;
      }

      while (1)
      {
        LODWORD(v7) = v9;
        v8 = atomic_load(*result);
        if (v9 == v8)
        {
          break;
        }

        v10 = v9;
        atomic_compare_exchange_strong(*(result + 16), &v10, v9 + 1);
        v11 = v10 == v9;
        v9 = v10;
        if (v11)
        {
          goto LABEL_11;
        }
      }
    }

    v8 = v7;
LABEL_11:
    if (v7 != v8)
    {
      *a2 = *(*(result + 24) + 16 * (*(result + 44) & v7));
      v12 = 1;
      goto LABEL_14;
    }
  }

  v12 = 0;
  *a2 = 0;
LABEL_14:
  *(a2 + 16) = v12;
  return result;
}

uint64_t io_rings_t<unsigned int,true>::pop_elem_at_tail(uint64_t a1)
{
  v1 = atomic_load(*a1);
  v2 = atomic_load(*(a1 + 16));
  if (v1 == v2 && ((atomic_exchange((a1 + 88), 1u) & 1) != 0 || (v3 = atomic_load(*a1), v4 = atomic_load(*(a1 + 16)), v3 == v4) || (v5 = 1, atomic_compare_exchange_strong((a1 + 88), &v5, 0), v5 != 1)))
  {
    v12 = 0;
    LOBYTE(a1) = 0;
    v11 = 0;
  }

  else
  {
    v6 = atomic_load(*(a1 + 16));
    v7 = atomic_load(*a1);
    if (v6 != v7)
    {
      v8 = v6;
      atomic_compare_exchange_strong(*(a1 + 16), &v8, v6 + 1);
      if (v8 == v6)
      {
LABEL_10:
        if (v6 != v7)
        {
          LODWORD(a1) = *(*(a1 + 24) + 4 * (*(a1 + 44) & v6));
          v11 = a1 & 0xFFFFFF00;
          v12 = 0x100000000;
          return v12 | v11 | a1;
        }
      }

      else
      {
        while (1)
        {
          v7 = atomic_load(*a1);
          if (v8 == v7)
          {
            break;
          }

          LODWORD(v6) = v8;
          v9 = v8;
          atomic_compare_exchange_strong(*(a1 + 16), &v9, v8 + 1);
          v10 = v9 == v8;
          v8 = v9;
          if (v10)
          {
            goto LABEL_10;
          }
        }
      }
    }

    a1 = io_rings_t<unsigned int,true>::pop_elem_at_tail();
    v11 = a1 & 0xFFFFFF00;
    v12 = a1 & 0xFF00000000;
  }

  return v12 | v11 | a1;
}

uint64_t io_rings_t<io_rings_cqe_t,true>::insert_elem_safe(uint64_t a1, uint64_t a2, uint64_t a3)
{
  atomic_fetch_add((a1 + 48), 1u);
  v3 = atomic_load((a1 + 8));
  v4 = atomic_load(*(a1 + 16));
  v5 = v4 - v3;
  while (v5 != 1 && v5 != 1 - *(a1 + 40))
  {
    v6 = v3;
    atomic_compare_exchange_strong((a1 + 8), &v6, v3 + 1);
    if (v6 == v3)
    {
      v8 = 0;
      v10 = (*(a1 + 24) + 16 * (*(a1 + 44) & v3));
      *v10 = a2;
      v10[1] = a3;
      return v8;
    }

    v7 = atomic_load(*(a1 + 16));
    v5 = v7 - v6;
    v3 = v6;
  }

  if (atomic_fetch_add((a1 + 48), 0xFFFFFFFF) == 1)
  {
    io_rings_t<unsigned int,true>::enter(a1, 0, 1);
  }

  return 4294967268;
}

uint64_t std::function<void ()(io_rings_event_type_t,io_rings_event_type_data_t)>::operator()(uint64_t a1, int a2, int a3)
{
  v6 = a3;
  v5 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v5, &v6);
}

uint64_t io_rings_subscriber_sync_init(io_rings_subscriber_sync_t *,io_rings_desc_t *)::$_0::__invoke(uint64_t a1, unsigned __int8 *a2)
{
  v4 = io_rings_parse_and_execute_sqe(a1, 0, a2);
  v5 = *(a1 + 56);

  return io_rings_return_status(v5, a2, v4, 0);
}

void std::atomic_store[abi:ne200100]<io_rings_subscriber_t>(uint64_t *a1, uint64_t *a2)
{
  sp_mut = std::__get_sp_mut(a1);
  std::__sp_mut::lock(sp_mut);
  v5 = *a1;
  *a1 = *a2;
  *a2 = v5;
  v6 = a1[1];
  a1[1] = a2[1];
  a2[1] = v6;

  std::__sp_mut::unlock(sp_mut);
}

BOOL std::atomic_compare_exchange_strong[abi:ne200100]<io_rings_subscriber_t>(uint64_t *a1, void *a2, uint64_t *a3)
{
  sp_mut = std::__get_sp_mut(a1);
  std::__sp_mut::lock(sp_mut);
  v7 = a1[1];
  v8 = a2[1];
  if (v7 == v8)
  {
    *a1 = 0;
    a1[1] = 0;
    v12 = *a3;
    v13 = a3[1];
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v14 = a1[1];
      *a1 = v12;
      a1[1] = v13;
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }
    }

    else
    {
      *a1 = v12;
      a1[1] = 0;
    }

    v15 = v7;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    v9 = *a1;
    v10 = a1[1];
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      v11 = a2[1];
      *a2 = v9;
      a2[1] = v10;
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }
    }

    else
    {
      *a2 = v9;
      a2[1] = 0;
    }

    v15 = v8;
  }

  std::__sp_mut::unlock(sp_mut);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  return v7 == v8;
}

void sub_248E866F4(void *a1)
{
  __cxa_begin_catch(a1);
  (*(v1 + 48))(v1);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<io_rings_subscriber_t *,object_subscribers_t<16ul>::subscribe(io_rings_subscriber_t&)::{lambda(io_rings_subscriber_t *)#1},std::allocator<io_rings_subscriber_t>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t std::__shared_ptr_pointer<io_rings_subscriber_t *,object_subscribers_t<16ul>::subscribe(io_rings_subscriber_t&)::{lambda(io_rings_subscriber_t *)#1},std::allocator<io_rings_subscriber_t>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::atomic_load[abi:ne200100]<io_rings_subscriber_t>(void *a1@<X0>, void *a2@<X8>)
{
  sp_mut = std::__get_sp_mut(a1);
  std::__sp_mut::lock(sp_mut);
  v5 = a1[1];
  *a2 = *a1;
  a2[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::__sp_mut::unlock(sp_mut);
}

void *std::__hash_table<std::__hash_value_type<void const*,linked_elem_db_t::node_t *>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,linked_elem_db_t::node_t *>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,linked_elem_db_t::node_t *>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,linked_elem_db_t::node_t *>>>::__emplace_unique_key_args<void const*,std::pair<void const*,linked_elem_db_t::node_t *>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void std::__hash_table<std::__hash_value_type<void const*,linked_elem_db_t::node_t *>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,linked_elem_db_t::node_t *>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,linked_elem_db_t::node_t *>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,linked_elem_db_t::node_t *>>>::__rehash<true>(uint64_t a1, size_t __n)
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

      std::__hash_table<std::__hash_value_type<void const*,linked_elem_db_t::node_t *>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,linked_elem_db_t::node_t *>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,linked_elem_db_t::node_t *>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,linked_elem_db_t::node_t *>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<void const*,linked_elem_db_t::node_t *>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,linked_elem_db_t::node_t *>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,linked_elem_db_t::node_t *>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,linked_elem_db_t::node_t *>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *std::__hash_table<std::__hash_value_type<void const*,linked_elem_db_t::node_t *>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,linked_elem_db_t::node_t *>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,linked_elem_db_t::node_t *>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,linked_elem_db_t::node_t *>>>::find<void const*>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
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

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<void const*,linked_elem_db_t::node_t *>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,linked_elem_db_t::node_t *>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,linked_elem_db_t::node_t *>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,linked_elem_db_t::node_t *>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<void const*,linked_elem_db_t::node_t *>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,linked_elem_db_t::node_t *>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,linked_elem_db_t::node_t *>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,linked_elem_db_t::node_t *>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *std::__hash_table<std::__hash_value_type<void const*,linked_elem_db_t::node_t *>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,linked_elem_db_t::node_t *>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,linked_elem_db_t::node_t *>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,linked_elem_db_t::node_t *>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void GCDPool::GCDPool(GCDPool *this, io_rings_desc_t *a2)
{
  *this = 2;
  *(this + 1) = a2;
  gcd::gcd_queue::gcd_queue(this + 16, "rings_queue", 2);
  *(this + 24) = 0;
}

void GCDPool::exec_sync(uint64_t a1, uint64_t a2)
{
  v2 = atomic_load(a1);
  v3 = *(a1 + 8);
  if (v2 == 1)
  {
    io_rings_return_status(v3, a2, 0xFFFFFFA7, 0);
  }

  else
  {
    io_rings_consumer_single_sqe_execute(v3, a2);
  }
}

uint64_t GCDPool::signal_work(GCDPool *this)
{
  v1 = atomic_load(this);
  if (v1 != 2)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  do
  {
    v7 = io_rings_pop_sqe(*(this + 1));
    v8 = v7;
    if (!v7)
    {
      break;
    }

    __dmb(9u);
    v9 = *(this + 24);
    if (v7[1])
    {
      v10 = 1;
    }

    else
    {
      if ((*(this + 24) & 1) == 0)
      {
        v12 = v7[1];
        goto LABEL_13;
      }

      v10 = 2;
      v9 = 1;
    }

    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    io_rings_consumer_add_linked_sqe(*(this + 1), v7, v11);
    v12 = *(v8 + 2);
LABEL_13:
    *(this + 24) = v12 & 1;
    io_rings_subscriber_get(*(this + 1), *(v8 + 8), &v18);
    if (v18)
    {
      if (v3)
      {
        if (*(v8 + 8) == v4)
        {
          v3 = 1;
          goto LABEL_22;
        }

        (*(v5 + 8))(v5);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          v6 = 0;
        }

        v5 = 0;
      }

      v3 = 0;
LABEL_22:
      if ((*(v18 + 16))())
      {
        (*v18)(v18, v8);
        if (!v5)
        {
          v4 = *(v8 + 8);
          v5 = v18;
          v13 = v19;
          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v6)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          }

          v3 = 1;
          v6 = v13;
        }
      }

      else if (io_rings_sqe_is_barrier(v8))
      {
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 0x40000000;
        v17[2] = ___ZN7GCDPool11signal_workEv_block_invoke;
        v17[3] = &__block_descriptor_tmp_2;
        v17[4] = this;
        v17[5] = v8;
        gcd::gcd_queue::barrier_async(this + 2, v17);
      }

      else
      {
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 0x40000000;
        v16[2] = ___ZN7GCDPool11signal_workEv_block_invoke_3;
        v16[3] = &__block_descriptor_tmp_3_1;
        v16[4] = this;
        v16[5] = v8;
        gcd::gcd_queue::async(this + 2, v16);
      }

      goto LABEL_32;
    }

    io_rings_return_status(*(this + 1), v8, 0xFFFFFFFA, 0);
LABEL_32:
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    v14 = atomic_load(this);
  }

  while (v14 == 2);
  if (v3)
  {
    (*(v5 + 8))(v5);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return 0;
}

void sub_248E87220(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN7GCDPool11signal_workEv_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = atomic_load(v3);
  if (v4 == 1)
  {
    v5 = *(a1 + 40);
    v6 = *(v3 + 8);

    io_rings_return_status(v6, v5, 0xFFFFFFA7, 0);
  }

  else
  {
    v8[6] = v1;
    v8[7] = v2;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 0x40000000;
    v8[2] = ___ZN7GCDPool11signal_workEv_block_invoke_2;
    v8[3] = &__block_descriptor_tmp_3;
    v7 = *(a1 + 40);
    v8[4] = v3;
    v8[5] = v7;
    gcd::gcd_queue::async((v3 + 16), v8);
  }
}

void ___ZN7GCDPool11signal_workEv_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  __dmb(9u);
  GCDPool::exec_sync(v1, *(a1 + 40));
}

void ___ZN7GCDPool11signal_workEv_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  __dmb(9u);
  GCDPool::exec_sync(v1, *(a1 + 40));
}

uint64_t GCDPool::suspend(GCDPool *this)
{
  v1 = atomic_load(this);
  if (v1 != 2)
  {
    return 4294967260;
  }

  atomic_store(0, this);
  gcd::gcd_queue::suspend(this + 2);
  return 0;
}

void GCDPool::cancel(GCDPool *this)
{
  v2 = atomic_load(this);
  if (v2 != 1)
  {
    if (atomic_exchange(this, 1u) == 2)
    {
      gcd::gcd_queue::suspend(this + 2);
    }

    io_rings_subscribers_cancel_all(*(this + 1));
    gcd::gcd_queue::resume(this + 2);
    GCDPool::signal_work(this);
    gcd::gcd_queue::barrier_sync(this + 2, &__block_literal_global_6);

    gcd::gcd_queue::barrier_sync(this + 2, &__block_literal_global_7);
  }
}

uint64_t GCDPool::resume(GCDPool *this)
{
  if (atomic_load(this))
  {
    return 4294967274;
  }

  atomic_store(2u, this);
  gcd::gcd_queue::resume(this + 2);
  GCDPool::signal_work(this);
  return 0;
}

void populate_backends_info(void *a1, uint64_t a2)
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
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      }

      get_next_backend_in_graph(&v9, &v8);
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

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    v7 = v9;
    if (*(&v8 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v8 + 1));
    }

    v3 = *(&v4 + 1);
  }

  while (v7 != v4);
LABEL_13:
  if (*(&v4 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v4 + 1));
  }

  if (*(&v9 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v9 + 1));
  }
}

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
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      }

      get_next_backend_in_graph(&v9, &v8);
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

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    v7 = v9;
    if (*(&v8 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v8 + 1));
    }

    v3 = *(&v4 + 1);
  }

  while (v7 != v4);
LABEL_13:
  if (*(&v4 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v4 + 1));
  }

  if (*(&v9 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v9 + 1));
  }
}

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
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      }

      get_next_backend_in_graph(&v9, &v8);
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

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    v7 = v9;
    if (*(&v8 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v8 + 1));
    }

    v3 = *(&v4 + 1);
  }

  while (v7 != v4);
LABEL_13:
  if (*(&v4 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v4 + 1));
  }

  if (*(&v9 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v9 + 1));
  }
}

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
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      }

      get_next_backend_in_graph(&v9, &v8);
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

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    v7 = v9;
    if (*(&v8 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v8 + 1));
    }

    v3 = *(&v4 + 1);
  }

  while (v7 != v4);
LABEL_13:
  if (*(&v4 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v4 + 1));
  }

  if (*(&v9 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v9 + 1));
  }
}

void sub_248E87550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

info::DiskImageInfoRaw *info::DiskImageInfoRaw::DiskImageInfoRaw(info::DiskImageInfoRaw *this, const DiskImageRaw *a2)
{
  *(this + 3) = &unk_285BE2560;
  *(this + 4) = &unk_285BE2590;
  *(this + 5) = &unk_285BD9A98;
  *(this + 6) = &unk_285BD9AC8;
  *this = off_285BE2048;
  *(this + 1) = off_285BE2090;
  *(this + 2) = off_285BE20D8;
  *(this + unk_285BE2020) = off_285BE2120;
  *(this + *(*this - 48)) = off_285BE2168;
  *(this + *(*this - 56)) = off_285BE21B0;
  *(this + *(*this - 64)) = off_285BE21F8;
  *this = off_285BE1E20;
  *(this + 1) = off_285BE1E68;
  *(this + 2) = off_285BE1EB0;
  *(this + unk_285BE1DF8) = off_285BE1EF8;
  *(this + *(*this - 48)) = off_285BE1F40;
  *(this + *(*this - 56)) = off_285BE1F88;
  *(this + *(*this - 64)) = off_285BE1FD0;
  *(this + 80) = 0;
  *(this + 88) = 0;
  *(this + 96) = 0;
  *(this + 104) = 0;
  *(this + 16) = 0;
  *(this + 136) = 0;
  *(this + 144) = 0;
  *(this + 19) = 0;
  *this = &unk_285BE1A00;
  *(this + 1) = &unk_285BE1A48;
  *(this + 2) = &unk_285BE1A90;
  *(this + 3) = &unk_285BE1AD8;
  *(this + 4) = &unk_285BE1B20;
  *(this + 5) = &unk_285BE1B68;
  *(this + 6) = &unk_285BE1BB0;
  *(this + 7) = &unk_285BE1C10;
  *(this + 15) = &unk_285BE1C80;
  v4 = (a2 + 16);
  v5 = (*(**(a2 + 2) + 40))(*(a2 + 2));
  v6 = *this;
  *(this + *(*this - 112) + 8) = v5;
  *(this + *(v6 - 112) + 56) = 0;
  *(this + *(*this - 112) + 16) = (*(*a2 + 32))(a2);
  v7 = (*(*a2 + 24))(a2);
  v8 = *this;
  v9 = this + *(*this - 112);
  if ((v9[32] & 1) == 0)
  {
    v9[32] = 1;
  }

  *(v9 + 3) = v7;
  populate_backends_info(v4, this + *(v8 - 104));
  return this;
}

void info::EncryptionInfo::~EncryptionInfo(const void **this, const void **a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 3)) = a2[3];
  CFAutoRelease<__CFString const*>::~CFAutoRelease(this + 4);
}

info::DiskImageInfoRaw *info::DiskImageInfoRaw::DiskImageInfoRaw(info::DiskImageInfoRaw *this, const DiskImageROChunkRaw *a2)
{
  *(this + 3) = &unk_285BE2560;
  *(this + 4) = &unk_285BE2590;
  *(this + 5) = &unk_285BD9A98;
  *(this + 6) = &unk_285BD9AC8;
  *this = off_285BE2048;
  *(this + 1) = off_285BE2090;
  *(this + 2) = off_285BE20D8;
  *(this + unk_285BE2020) = off_285BE2120;
  *(this + *(*this - 48)) = off_285BE2168;
  *(this + *(*this - 56)) = off_285BE21B0;
  *(this + *(*this - 64)) = off_285BE21F8;
  *this = off_285BE1E20;
  *(this + 1) = off_285BE1E68;
  *(this + 2) = off_285BE1EB0;
  *(this + unk_285BE1DF8) = off_285BE1EF8;
  *(this + *(*this - 48)) = off_285BE1F40;
  *(this + *(*this - 56)) = off_285BE1F88;
  *(this + *(*this - 64)) = off_285BE1FD0;
  *(this + 80) = 0;
  *(this + 88) = 0;
  *(this + 96) = 0;
  *(this + 104) = 0;
  *(this + 16) = 0;
  *(this + 136) = 0;
  *(this + 144) = 0;
  *(this + 19) = 0;
  *this = &unk_285BE1A00;
  *(this + 1) = &unk_285BE1A48;
  *(this + 2) = &unk_285BE1A90;
  *(this + 3) = &unk_285BE1AD8;
  *(this + 4) = &unk_285BE1B20;
  *(this + 5) = &unk_285BE1B68;
  *(this + 6) = &unk_285BE1BB0;
  *(this + 7) = &unk_285BE1C10;
  *(this + 15) = &unk_285BE1C80;
  v4 = (a2 + 16);
  v5 = (*(**(a2 + 2) + 40))(*(a2 + 2));
  v6 = *this;
  *(this + *(*this - 112) + 8) = v5;
  v7 = this + *(v6 - 112);
  *(v7 + 5) = *(v7 + 1);
  v7[48] = 1;
  v8 = this + *(*this - 112);
  *(v8 + 3) = *(v8 + 1);
  v8[32] = 1;
  *(this + *(*this - 112) + 56) = 0;
  v9 = (*(*a2 + 32))(a2);
  v10 = *this;
  *(this + *(*this - 112) + 16) = v9;
  populate_backends_info(v4, this + *(v10 - 104));
  return this;
}

const void **info::SizeInfo::serialize_to_dict@<X0>(info::SizeInfo *this@<X0>, void *a2@<X8>)
{
  v17[1] = *MEMORY[0x277D85DE8];
  cf::make_empty_dict(&v8);
  valuePtr = *(this + 1);
  v10 = @"Total Bytes";
  v4 = *MEMORY[0x277CBECE8];
  v11 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberLongLongType, &valuePtr);
  v12 = @"Sector Count";
  valuePtr = *(this + 2);
  v13 = 0;
  v13 = CFNumberCreate(v4, kCFNumberLongLongType, &valuePtr);
  v14 = @"Empty Bytes";
  valuePtr = *(this + 7);
  v15 = 0;
  v15 = CFNumberCreate(v4, kCFNumberLongLongType, &valuePtr);
  v16 = &v10;
  v17[0] = 3;
  cf::add_key_value_pairs_to_dict(&v8, &v16);
  for (i = 5; i != -1; i -= 2)
  {
    CFAutoRelease<void const*>::~CFAutoRelease(&(&v10)[i]);
  }

  if (*(this + 48) == 1)
  {
    v16 = @"Max Size Bytes";
    valuePtr = *(this + 5);
    v17[0] = CFNumberCreate(v4, kCFNumberLongLongType, &valuePtr);
    v10 = &v16;
    v11 = 1;
    cf::add_key_value_pairs_to_dict(&v8, &v10);
    CFAutoRelease<void const*>::~CFAutoRelease(v17);
  }

  if (*(this + 32) == 1)
  {
    v16 = @"Min Size Bytes";
    valuePtr = *(this + 3);
    v17[0] = CFNumberCreate(v4, kCFNumberLongLongType, &valuePtr);
    v10 = &v16;
    v11 = 1;
    cf::add_key_value_pairs_to_dict(&v8, &v10);
    CFAutoRelease<void const*>::~CFAutoRelease(v17);
  }

  *a2 = v8;
  v8 = 0;
  result = CFAutoRelease<__CFDictionary *>::~CFAutoRelease(&v8);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248E8834C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CFAutoRelease<void const*>::~CFAutoRelease((v2 + 8));
  CFAutoRelease<__CFDictionary *>::~CFAutoRelease(va);
  _Unwind_Resume(a1);
}

char *virtual thunk toinfo::details::InfoTrait<info::SizeInfo>::get(void *a1)
{
  return a1 + *(*a1 - 32);
}

{
  return a1 + *(*a1 - 40);
}

void info::DiskImageInfoRaw::~DiskImageInfoRaw(info::DiskImageInfoRaw *this)
{
  *(this + 15) = off_285BE2400;
  *(this + 3) = off_285BE2458;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(this + 19);
}

{
  *(this + 15) = off_285BE2400;
  *(this + 3) = off_285BE2458;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(this + 19);

  JUMPOUT(0x24C1ED730);
}

const void **info::DiskImageInfoRaw::serialize_to_dict@<X0>(info::DiskImageInfoRaw *this@<X0>, void *a2@<X8>)
{
  v11[8] = *MEMORY[0x277D85DE8];
  v4 = (*(*this + 24))(this);
  v11[0] = @"Image Format";
  v11[1] = v4;
  v11[2] = @"Format Description";
  v11[3] = @"RAW read-write image";
  info::SizeInfo::serialize_to_dict((this + *(*this - 112)), &v10);
  v11[4] = @"Size Info";
  v11[5] = v10;
  v10 = 0;
  CFAutoRelease<__CFDictionary const*>::~CFAutoRelease(&v10);
  info::EncryptionInfo::serialize_to_dict((this + *(*this - 120)), &v10);
  v11[6] = @"Encryption Info";
  v11[7] = v10;
  v10 = 0;
  CFAutoRelease<__CFDictionary const*>::~CFAutoRelease(&v10);
  v8[0] = v11;
  v8[1] = 4;
  cf::create_dict_from_list(v8, &v9);
  *a2 = v9;
  v9 = 0;
  CFAutoRelease<__CFDictionary *>::~CFAutoRelease(&v9);
  for (i = 7; i != -1; i -= 2)
  {
    result = CFAutoRelease<void const*>::~CFAutoRelease(&v11[i]);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248E886B4(_Unwind_Exception *a1)
{
  v3 = (v1 + 56);
  v4 = -64;
  do
  {
    v3 = CFAutoRelease<void const*>::~CFAutoRelease(v3) - 2;
    v4 += 16;
  }

  while (v4);
  _Unwind_Resume(a1);
}

const void **virtual thunk toinfo::DiskImageInfoRaw::~DiskImageInfoRaw(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 15) = off_285BE2400;
  *(v1 + 3) = off_285BE2458;
  return CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 19);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 15) = off_285BE2400;
  *(v1 + 3) = off_285BE2458;
  return CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 19);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 15) = off_285BE2400;
  *(v1 + 3) = off_285BE2458;
  return CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 19);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 15) = off_285BE2400;
  *(v1 + 3) = off_285BE2458;
  return CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 19);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 15) = off_285BE2400;
  *(v1 + 3) = off_285BE2458;
  return CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 19);
}

{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 15) = off_285BE2400;
  *(v1 + 3) = off_285BE2458;
  return CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 19);
}

{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 15) = off_285BE2400;
  *(v1 + 3) = off_285BE2458;
  return CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 19);
}

void virtual thunk toinfo::DiskImageInfoRaw::~DiskImageInfoRaw(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 15) = off_285BE2400;
  *(v1 + 3) = off_285BE2458;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 19);

  JUMPOUT(0x24C1ED730);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 15) = off_285BE2400;
  *(v1 + 3) = off_285BE2458;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 19);

  JUMPOUT(0x24C1ED730);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 15) = off_285BE2400;
  *(v1 + 3) = off_285BE2458;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 19);

  JUMPOUT(0x24C1ED730);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 15) = off_285BE2400;
  *(v1 + 3) = off_285BE2458;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 19);

  JUMPOUT(0x24C1ED730);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 15) = off_285BE2400;
  *(v1 + 3) = off_285BE2458;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 19);

  JUMPOUT(0x24C1ED730);
}

{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 15) = off_285BE2400;
  *(v1 + 3) = off_285BE2458;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 19);

  JUMPOUT(0x24C1ED730);
}

{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 15) = off_285BE2400;
  *(v1 + 3) = off_285BE2458;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 19);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk toinfo::DiskImageInfoRaw::~DiskImageInfoRaw(info::DiskImageInfoRaw *this)
{
  v1 = this + *(*this - 24);
  *(v1 + 15) = off_285BE2400;
  *(v1 + 3) = off_285BE2458;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 19);
}

{
  v1 = this + *(*this - 24);
  *(v1 + 15) = off_285BE2400;
  *(v1 + 3) = off_285BE2458;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 19);

  JUMPOUT(0x24C1ED730);
}

void info::DiskImageInfoSparseBundle::count_mapped_bytes(info::DiskImageInfoSparseBundle *this, const DiskImageSparseBundle *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 0;
  v5 = 0;
  v2 = *(a2 + 70);
  v3 = (*(v2 + 18) + *(v2 + 19) - 1) / *(v2 + 19);
  SparseBundleBackend::open_mapped_folder(v2);
}

void sub_248E890AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(std::string const&,unsigned long long)>::~__value_func[abi:ne200100](va);
  if (a6)
  {
    (*(*a6 + 16))(a6);
  }

  _Unwind_Resume(a1);
}

void sub_248E89250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void info::DiskImageInfoSparseBundle::DiskImageInfoSparseBundle(info::DiskImageInfoSparseBundle *this, const DiskImageSparseBundle *a2)
{
  *(this + 3) = &unk_285BE2560;
  *(this + 4) = &unk_285BE2590;
  *(this + 5) = &unk_285BD9A98;
  *(this + 6) = &unk_285BD9AC8;
  *this = off_285BE2D10;
  *(this + 1) = off_285BE2D58;
  *(this + 2) = off_285BE2DA0;
  *(this + unk_285BE2CE8) = off_285BE2DE8;
  *(this + *(*this - 48)) = off_285BE2E30;
  *(this + *(*this - 56)) = off_285BE2E78;
  *(this + *(*this - 64)) = off_285BE2EC0;
  *this = off_285BE2AE8;
  *(this + 1) = off_285BE2B30;
  *(this + 2) = off_285BE2B78;
  *(this + unk_285BE2AC0) = off_285BE2BC0;
  *(this + *(*this - 48)) = off_285BE2C08;
  *(this + *(*this - 56)) = off_285BE2C50;
  *(this + *(*this - 64)) = off_285BE2C98;
  *(this + 7) = &off_285BE2F20;
  *(this + 1) = &off_285BE2F78;
  *(this + 80) = 0;
  *(this + 88) = 0;
  *(this + 96) = 0;
  *(this + 104) = 0;
  *(this + 15) = off_285BE3068;
  *(this + 16) = 0;
  *(this + 3) = off_285BE30C0;
  *(this + 136) = 0;
  *(this + 144) = 0;
  *(this + 19) = 0;
  info::IdentityInfo::IdentityInfo<DiskImageSparseBundle>(this + 20, &off_285BE2A68, a2);
  *this = &unk_285BE2630;
  *(this + 1) = &unk_285BE2678;
  *(this + 2) = &unk_285BE26C0;
  *(this + 3) = &unk_285BE2708;
  *(this + 4) = &unk_285BE2750;
  *(this + 5) = &unk_285BE2798;
  *(this + 6) = &unk_285BE27E0;
  *(this + 7) = &unk_285BE2840;
  *(this + 15) = &unk_285BE28B0;
  *(this + 20) = &unk_285BE2920;
  v4 = (*(**(a2 + 70) + 40))(*(a2 + 70));
  v5 = *this;
  *(this + *(*this - 112) + 8) = v4;
  v6 = *(this + *(v5 - 112) + 8);
  info::DiskImageInfoSparseBundle::count_mapped_bytes(this, a2);
}

void sub_248E89950(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  info::IdentityInfo::~IdentityInfo(v2, &off_285BE2A68);
  info::EncryptionInfo::~EncryptionInfo(v3, &off_285BE2A48);
  _Unwind_Resume(a1);
}

uint64_t *info::IdentityInfo::IdentityInfo<DiskImageSparseBundle>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = &unk_285BE3380;
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
  v7 = *MEMORY[0x277CBECE8];
  v11 = CFUUIDCreateFromUUIDBytes(*MEMORY[0x277CBECE8], *(*(a3 + 560) + 160));
  v8 = CFUUIDCreateString(v7, v11);
  v10 = v8;
  if (*v6)
  {
    CFRelease(*v6);
    v8 = v10;
  }

  a1[1] = v8;
  v10 = 0;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(&v10);
  CFAutoRelease<__CFUUID const*>::~CFAutoRelease(&v11);
  return a1;
}

void sub_248E89B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  CFAutoRelease<__CFString const*>::~CFAutoRelease(&a9);
  CFAutoRelease<__CFUUID const*>::~CFAutoRelease(&a10);
  CFAutoRelease<__CFString const*>::~CFAutoRelease((v10 + 24));
  CFAutoRelease<__CFString const*>::~CFAutoRelease((v10 + 16));
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v11);
  _Unwind_Resume(a1);
}

void info::IdentityInfo::~IdentityInfo(const void **this, const void **a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 3)) = a2[3];
  CFAutoRelease<__CFString const*>::~CFAutoRelease(this + 3);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(this + 2);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(this + 1);
}

uint64_t info::DiskImageInfoSparseBundle::get_band_size(void *a1, uint64_t a2, uint64_t a3)
{
  if ((*(*(a2 + 560) + 144) + *(*(a2 + 560) + 152) - 1) / *(*(a2 + 560) + 152) - 1 == a3)
  {
    return *(a1 + *(*a1 - 112) + 8) - *(a2 + 64) * a3;
  }

  else
  {
    return *(a2 + 64);
  }
}

void info::IdentityInfo::~IdentityInfo(info::IdentityInfo *this)
{
  *this = &unk_285BE3448;
  *(this + 4) = &unk_285BE34A0;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(this + 3);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(this + 2);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(this + 1);
}

{
  *this = &unk_285BE3448;
  *(this + 4) = &unk_285BE34A0;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(this + 3);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(this + 2);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(this + 1);

  JUMPOUT(0x24C1ED730);
}

const void **info::IdentityInfo::serialize_to_dict@<X0>(info::IdentityInfo *this@<X0>, void *a2@<X8>)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(this + 1);
  v12 = @"UUID";
  v13[0] = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  v9 = &v12;
  v10 = 1;
  cf::create_dict_from_list(&v9, &v11);
  CFAutoRelease<void const*>::~CFAutoRelease(v13);
  v5 = *(this + 3);
  if (v5)
  {
    v12 = @"Parent UUID";
    v13[0] = v5;
    CFRetain(v5);
    v9 = &v12;
    v10 = 1;
    cf::add_key_value_pairs_to_dict(&v11, &v9);
    CFAutoRelease<void const*>::~CFAutoRelease(v13);
  }

  v6 = *(this + 2);
  if (v6)
  {
    v12 = @"Stable UUID";
    v13[0] = v6;
    CFRetain(v6);
    v9 = &v12;
    v10 = 1;
    cf::add_key_value_pairs_to_dict(&v11, &v9);
    CFAutoRelease<void const*>::~CFAutoRelease(v13);
  }

  *a2 = v11;
  v11 = 0;
  result = CFAutoRelease<__CFDictionary *>::~CFAutoRelease(&v11);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248E89EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CFAutoRelease<void const*>::~CFAutoRelease((v3 + 8));
  CFAutoRelease<__CFDictionary *>::~CFAutoRelease(va);
  _Unwind_Resume(a1);
}

void virtual thunk toinfo::IdentityInfo::~IdentityInfo(info::IdentityInfo *this)
{
  v1 = this + *(*this - 24);
  *v1 = &unk_285BE3448;
  *(v1 + 4) = &unk_285BE34A0;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 3);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 2);

  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 1);
}

{
  v1 = this + *(*this - 24);
  *v1 = &unk_285BE3448;
  *(v1 + 4) = &unk_285BE34A0;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 3);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 2);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 1);

  JUMPOUT(0x24C1ED730);
}

char *virtual thunk toinfo::details::InfoTrait<info::IdentityInfo>::get(void *a1)
{
  return a1 + *(*a1 - 32);
}

{
  return a1 + *(*a1 - 40);
}

void info::DiskImageInfoSparseBundle::~DiskImageInfoSparseBundle(info::DiskImageInfoSparseBundle *this)
{
  *(this + 20) = off_285BE31B0;
  *(this + 6) = off_285BE3208;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(this + 23);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(this + 22);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(this + 21);
  *(this + 15) = off_285BE3068;
  *(this + 3) = off_285BE30C0;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(this + 19);
}

{
  *(this + 20) = off_285BE31B0;
  *(this + 6) = off_285BE3208;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(this + 23);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(this + 22);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(this + 21);
  *(this + 15) = off_285BE3068;
  *(this + 3) = off_285BE30C0;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(this + 19);

  JUMPOUT(0x24C1ED730);
}

const void **info::DiskImageInfoSparseBundle::serialize_to_dict@<X0>(info::DiskImageInfoSparseBundle *this@<X0>, void *a2@<X8>)
{
  v11[10] = *MEMORY[0x277D85DE8];
  v4 = (*(*this + 24))(this);
  v11[0] = @"Image Format";
  v11[1] = v4;
  v11[2] = @"Format Description";
  v11[3] = @"Sparse bundle image";
  info::SizeInfo::serialize_to_dict((this + *(*this - 112)), &v10);
  v11[4] = @"Size Info";
  v11[5] = v10;
  v10 = 0;
  CFAutoRelease<__CFDictionary const*>::~CFAutoRelease(&v10);
  info::EncryptionInfo::serialize_to_dict((this + *(*this - 120)), &v10);
  v11[6] = @"Encryption Info";
  v11[7] = v10;
  v10 = 0;
  CFAutoRelease<__CFDictionary const*>::~CFAutoRelease(&v10);
  info::IdentityInfo::serialize_to_dict((this + *(*this - 128)), &v10);
  v11[8] = @"Identity Info";
  v11[9] = v10;
  v10 = 0;
  CFAutoRelease<__CFDictionary const*>::~CFAutoRelease(&v10);
  v8[0] = v11;
  v8[1] = 5;
  cf::create_dict_from_list(v8, &v9);
  *a2 = v9;
  v9 = 0;
  CFAutoRelease<__CFDictionary *>::~CFAutoRelease(&v9);
  for (i = 9; i != -1; i -= 2)
  {
    result = CFAutoRelease<void const*>::~CFAutoRelease(&v11[i]);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248E8A418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v24 = &a23;
  v25 = -80;
  do
  {
    v24 = CFAutoRelease<void const*>::~CFAutoRelease(v24) - 2;
    v25 += 16;
  }

  while (v25);
  _Unwind_Resume(a1);
}

const void **virtual thunk toinfo::DiskImageInfoSparseBundle::~DiskImageInfoSparseBundle(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 20) = off_285BE31B0;
  *(v1 + 6) = off_285BE3208;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 22);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 21);
  *(v1 + 15) = off_285BE3068;
  *(v1 + 3) = off_285BE30C0;

  return CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 19);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 20) = off_285BE31B0;
  *(v1 + 6) = off_285BE3208;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 22);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 21);
  *(v1 + 15) = off_285BE3068;
  *(v1 + 3) = off_285BE30C0;

  return CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 19);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 20) = off_285BE31B0;
  *(v1 + 6) = off_285BE3208;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 22);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 21);
  *(v1 + 15) = off_285BE3068;
  *(v1 + 3) = off_285BE30C0;

  return CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 19);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 20) = off_285BE31B0;
  *(v1 + 6) = off_285BE3208;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 22);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 21);
  *(v1 + 15) = off_285BE3068;
  *(v1 + 3) = off_285BE30C0;

  return CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 19);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 20) = off_285BE31B0;
  *(v1 + 6) = off_285BE3208;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 22);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 21);
  *(v1 + 15) = off_285BE3068;
  *(v1 + 3) = off_285BE30C0;

  return CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 19);
}

{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 20) = off_285BE31B0;
  *(v1 + 6) = off_285BE3208;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 22);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 21);
  *(v1 + 15) = off_285BE3068;
  *(v1 + 3) = off_285BE30C0;

  return CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 19);
}

{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 20) = off_285BE31B0;
  *(v1 + 6) = off_285BE3208;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 22);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 21);
  *(v1 + 15) = off_285BE3068;
  *(v1 + 3) = off_285BE30C0;

  return CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 19);
}

{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 20) = off_285BE31B0;
  *(v1 + 6) = off_285BE3208;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 22);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 21);
  *(v1 + 15) = off_285BE3068;
  *(v1 + 3) = off_285BE30C0;

  return CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 19);
}

void virtual thunk toinfo::DiskImageInfoSparseBundle::~DiskImageInfoSparseBundle(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 20) = off_285BE31B0;
  *(v1 + 6) = off_285BE3208;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 22);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 21);
  *(v1 + 15) = off_285BE3068;
  *(v1 + 3) = off_285BE30C0;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 19);

  JUMPOUT(0x24C1ED730);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 20) = off_285BE31B0;
  *(v1 + 6) = off_285BE3208;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 22);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 21);
  *(v1 + 15) = off_285BE3068;
  *(v1 + 3) = off_285BE30C0;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 19);

  JUMPOUT(0x24C1ED730);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 20) = off_285BE31B0;
  *(v1 + 6) = off_285BE3208;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 22);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 21);
  *(v1 + 15) = off_285BE3068;
  *(v1 + 3) = off_285BE30C0;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 19);

  JUMPOUT(0x24C1ED730);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 20) = off_285BE31B0;
  *(v1 + 6) = off_285BE3208;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 22);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 21);
  *(v1 + 15) = off_285BE3068;
  *(v1 + 3) = off_285BE30C0;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 19);

  JUMPOUT(0x24C1ED730);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 20) = off_285BE31B0;
  *(v1 + 6) = off_285BE3208;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 22);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 21);
  *(v1 + 15) = off_285BE3068;
  *(v1 + 3) = off_285BE30C0;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 19);

  JUMPOUT(0x24C1ED730);
}

{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 20) = off_285BE31B0;
  *(v1 + 6) = off_285BE3208;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 22);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 21);
  *(v1 + 15) = off_285BE3068;
  *(v1 + 3) = off_285BE30C0;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 19);

  JUMPOUT(0x24C1ED730);
}

{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 20) = off_285BE31B0;
  *(v1 + 6) = off_285BE3208;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 22);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 21);
  *(v1 + 15) = off_285BE3068;
  *(v1 + 3) = off_285BE30C0;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 19);

  JUMPOUT(0x24C1ED730);
}

{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 20) = off_285BE31B0;
  *(v1 + 6) = off_285BE3208;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 22);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 21);
  *(v1 + 15) = off_285BE3068;
  *(v1 + 3) = off_285BE30C0;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 19);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk toinfo::DiskImageInfoSparseBundle::~DiskImageInfoSparseBundle(info::DiskImageInfoSparseBundle *this)
{
  v1 = this + *(*this - 24);
  *(v1 + 20) = off_285BE31B0;
  *(v1 + 6) = off_285BE3208;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 22);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 21);
  *(v1 + 15) = off_285BE3068;
  *(v1 + 3) = off_285BE30C0;

  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 19);
}

{
  v1 = this + *(*this - 24);
  *(v1 + 20) = off_285BE31B0;
  *(v1 + 6) = off_285BE3208;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 22);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 21);
  *(v1 + 15) = off_285BE3068;
  *(v1 + 3) = off_285BE30C0;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 19);

  JUMPOUT(0x24C1ED730);
}

const void **virtual thunk toinfo::DiskImageInfoSparseBundle::serialize_to_dict@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  return info::DiskImageInfoSparseBundle::serialize_to_dict((a1 + *(*a1 - 40)), a2);
}

{
  return info::DiskImageInfoSparseBundle::serialize_to_dict((a1 + *(*a1 - 40)), a2);
}

__CFString *virtual thunk toinfo::DiskImageInfoSparseBundle::get_category()
{
  return @"UDSB";
}

{
  return @"UDSB";
}

__n128 std::__function::__func<info::DiskImageInfoSparseBundle::count_mapped_bytes(DiskImageSparseBundle const&)::$_0,std::allocator<info::DiskImageInfoSparseBundle::count_mapped_bytes(DiskImageSparseBundle const&)::$_0>,void ()(std::string const&,unsigned long long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285BE33B0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<info::DiskImageInfoSparseBundle::count_mapped_bytes(DiskImageSparseBundle const&)::$_0,std::allocator<info::DiskImageInfoSparseBundle::count_mapped_bytes(DiskImageSparseBundle const&)::$_0>,void ()(std::string const&,unsigned long long)>::operator()(uint64_t result, uint64_t a2, sparse_bundles **a3)
{
  v3 = *a3;
  if (**(result + 8) <= *a3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::ostringstream::basic_ostringstream[abi:ne200100](&v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "Bands folder contains an out of range band (", 44);
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

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, v10, v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, ")", 1);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, &v12, 0x16u);
  }

  v4 = *(result + 16);
  if (*v4)
  {
    sparse_bundles::mapped_blocks_t::mapped_blocks_t(&v12, *(result + 24) + 24, *a3, v4);
  }

  v5 = *(result + 24);
  if (((*(*(v5 + 560) + 144) + *(*(v5 + 560) + 152) - 1) / *(*(v5 + 560) + 152) - 1) == v3)
  {
    v6 = *(*(result + 40) + *(**(result + 40) - 112) + 8) - *(v5 + 64) * v3;
  }

  else
  {
    v6 = *(v5 + 64);
  }

  **(result + 32) += v6;
  return result;
}

uint64_t std::__function::__func<info::DiskImageInfoSparseBundle::count_mapped_bytes(DiskImageSparseBundle const&)::$_0,std::allocator<info::DiskImageInfoSparseBundle::count_mapped_bytes(DiskImageSparseBundle const&)::$_0>,void ()(std::string const&,unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sparse_bundles::mapped_blocks_t::~mapped_blocks_t(sparse_bundles::mapped_blocks_t *this)
{
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

uint64_t std::__function::__value_func<void ()(std::string const&,unsigned long long)>::~__value_func[abi:ne200100](uint64_t a1)
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

diskimage_uio::diskimage *std::unique_ptr<diskimage_uio::diskimage>::reset[abi:ne200100](diskimage_uio::diskimage **a1, diskimage_uio::diskimage *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    diskimage_uio::diskimage::~diskimage(result);

    JUMPOUT(0x24C1ED730);
  }

  return result;
}

void std::vector<std::shared_ptr<LockableResource>>::__assign_with_size[abi:ne200100]<std::shared_ptr<LockableResource>*,std::shared_ptr<LockableResource>*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v7 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    std::vector<std::shared_ptr<char>>::__vdeallocate(a1);
    if (!(a4 >> 60))
    {
      v8 = a1[2] - *a1;
      v9 = v8 >> 3;
      if (v8 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::shared_ptr<LockableResource>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<iovec>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1] - v7;
  if (a4 <= v11 >> 4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<LockableResource> *,std::shared_ptr<LockableResource> *,std::shared_ptr<LockableResource> *>(&v18, a2, a3, v7);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      do
      {
        v16 = *(v15 - 8);
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        v15 -= 16;
      }

      while (v15 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    v12 = std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<LockableResource> *,std::shared_ptr<LockableResource> *,std::shared_ptr<LockableResource> *>(&v17, a2, (a2 + v11), v7);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<LockableResource>>,std::shared_ptr<LockableResource>*,std::shared_ptr<LockableResource>*,std::shared_ptr<LockableResource>*>(a1, v12, a3, a1[1]);
  }
}

void std::vector<std::shared_ptr<LockableResource>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::allocator<std::shared_ptr<LockableResource>>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<iovec>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<LockableResource>>,std::shared_ptr<LockableResource>*,std::shared_ptr<LockableResource>*,std::shared_ptr<LockableResource>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<LockableResource>>,std::shared_ptr<LockableResource>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<LockableResource>>,std::shared_ptr<LockableResource>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<char>>,std::shared_ptr<char>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t *std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<LockableResource> *,std::shared_ptr<LockableResource> *,std::shared_ptr<LockableResource> *>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v8 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = a4[1];
      *a4 = v8;
      a4[1] = v7;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void info::DiskImageInfoUDIF::extract_info_from_runs(info::DiskImageInfoUDIF *this, const DiskImageUDIF *a2)
{
  std::map<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,std::allocator<std::pair<boost::icl::discrete_interval<unsigned long long,std::less> const,udif::details::run_info>>>::map[abi:ne200100](&v14, a2 + 72);
  v3 = v14;
  if (v14 != v15)
  {
    v4 = (this + 8);
    v5 = *this;
    do
    {
      v6 = *(v5 - 128);
      if (!*(v4 + v6))
      {
        v7 = *(v3 + 14) + 2147483643;
        if (v7 <= 3)
        {
          v8 = dword_248FA1D50[v7];
          v9 = qword_248FA1D30[v7];
          *(v4 + v6) = v8;
          *v4 = v9;
        }
      }

      v10 = v3[5] - v3[4] + (v3[6] & 1) + ((*(v3 + 48) >> 1) & 1) - 1;
      *(this + *(v5 - 128) + 16) += v3[9];
      *(this + *(v5 - 112) + 56) -= v10 << 9;
      v11 = v3[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v3[2];
          v13 = *v12 == v3;
          v3 = v12;
        }

        while (!v13);
      }

      v3 = v12;
    }

    while (v12 != v15);
  }

  std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>>>::destroy(&v14, v15[0]);
}

uint64_t info::DiskImageInfoUDIF::extract_checksum_info(info::DiskImageInfoUDIF *this, const DiskImageUDIF *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v23);
  LODWORD(__p[0]) = *(*(a2 + 17) + 352);
  udif::operator<<(&v23, __p);
  std::stringbuf::str[abi:ne200100](&v24, __p);
  v4 = (this + *(*this - 136));
  if (*(v4 + 31) < 0)
  {
    operator delete(v4[1]);
  }

  *(v4 + 1) = *__p;
  v4[3] = v22;
  __p[0] = 0;
  __p[1] = 0;
  v22 = 0;
  std::stringbuf::str[abi:ne200100](&v24, __p);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }

  v5 = *(a2 + 17);
  v6 = *(v5 + 356);
  if (v6 >= 8)
  {
    v7 = (v5 + 360);
    v8 = v6 >> 3;
    v9 = v23;
    v10 = *(&v23 + *(v23 - 24) + 8);
    v11 = v8 - 1;
    if (v8 != 1)
    {
      v20 = v7;
      v12 = v8 - 1;
      do
      {
        *(&v25[-1].__locale_ + *(v23 - 24)) = *(&v25[-1].__locale_ + *(v23 - 24)) & 0xFFFFFFB5 | 8;
        LOBYTE(__p[0]) = 48;
        v13 = std::operator<<[abi:ne200100]<std::char_traits<char>>(&v23, __p);
        *(v13 + *(*v13 - 24) + 24) = 2;
        v14 = *v7;
        v15 = MEMORY[0x24C1ED3A0]();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " ", 1);
        ++v7;
        --v12;
      }

      while (v12);
      v9 = v23;
      v7 = v20;
    }

    *(&v23 + *(v9 - 24) + 8) = *(&v23 + *(v9 - 24) + 8) & 0xFFFFFFB5 | 8;
    LOBYTE(__p[0]) = 48;
    v16 = std::operator<<[abi:ne200100]<std::char_traits<char>>(&v23, __p);
    *(v16 + *(*v16 - 24) + 24) = 2;
    v17 = v7[v11];
    MEMORY[0x24C1ED3A0]();
    *(&v23 + *(v23 - 24) + 8) = v10;
  }

  std::stringbuf::str[abi:ne200100](&v24, __p);
  v18 = (this + *(*this - 136));
  if (*(v18 + 55) < 0)
  {
    operator delete(v18[4]);
  }

  *(v18 + 2) = *__p;
  v18[6] = v22;
  v23 = *MEMORY[0x277D82828];
  *(&v23 + *(v23 - 24)) = *(MEMORY[0x277D82828] + 24);
  v24 = MEMORY[0x277D82878] + 16;
  if (v26 < 0)
  {
    operator delete(v25[7].__locale_);
  }

  v24 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v25);
  std::ostream::~ostream();
  return MEMORY[0x24C1ED6A0](&v27);
}

void sub_248E8C398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *__p, uint64_t a6, int a7, __int16 a8, char a9, char a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  std::ostringstream::~ostringstream(&a11, MEMORY[0x277D82828]);
  MEMORY[0x24C1ED6A0](va);
  _Unwind_Resume(a1);
}

void sub_248E8C4EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_248E8C63C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::pair<udif::xml_rsrc_iterator,udif::xml_rsrc_iterator>::~pair(va);
  _Unwind_Resume(a1);
}

void info::DiskImageInfoUDIF::DiskImageInfoUDIF(info::DiskImageInfoUDIF *this, const DiskImageUDIF *a2)
{
  *(this + 5) = &unk_285BE2560;
  *(this + 6) = &unk_285BE2590;
  *(this + 7) = &unk_285BD9A98;
  *(this + 8) = &unk_285BD9AC8;
  *this = off_285BE3D60;
  *(this + 3) = off_285BE3DA8;
  *(this + 4) = off_285BE3DF0;
  *(this + unk_285BE3D38) = off_285BE3E38;
  *(this + *(*this - 48)) = off_285BE3E80;
  *(this + *(*this - 56)) = off_285BE3EC8;
  *(this + *(*this - 64)) = off_285BE3F10;
  *this = off_285BE3B38;
  *(this + 3) = off_285BE3B80;
  *(this + 4) = off_285BE3BC8;
  *(this + unk_285BE3B10) = off_285BE3C10;
  *(this + *(*this - 48)) = off_285BE3C58;
  *(this + *(*this - 56)) = off_285BE3CA0;
  *(this + *(*this - 64)) = off_285BE3CE8;
  *(this + 9) = &off_285BE3F70;
  *(this + 3) = &off_285BE3FC8;
  *(this + 96) = 0;
  *(this + 104) = 0;
  *(this + 112) = 0;
  *(this + 120) = 0;
  *(this + 17) = off_285BE40B8;
  *(this + 18) = 0;
  *(this + 5) = off_285BE4110;
  *(this + 152) = 0;
  *(this + 160) = 0;
  *(this + 21) = 0;
  *(this + 22) = &off_285BE4200;
  *(this + 4) = &off_285BE4258;
  *(this + 46) = 0;
  *(this + 26) = off_285BE43A8;
  *(this + 6) = off_285BE4400;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  info::IdentityInfo::IdentityInfo<DiskImageUDIF>(this + 33, &off_285BE3AB8, a2);
}

void sub_248E8CE9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  CFAutoRelease<__CFArray *>::~CFAutoRelease(va);
  CFAutoRelease<__CFArray *>::~CFAutoRelease(v8);
  info::IdentityInfo::~IdentityInfo(v9, &off_285BE3AB8);
  info::MasterChecksumInfo::~MasterChecksumInfo(v7, &off_285BE3A98);
  info::EncryptionInfo::~EncryptionInfo(v6, &off_285BE3A58);
  _Unwind_Resume(a1);
}

void info::IdentityInfo::IdentityInfo<DiskImageUDIF>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = &unk_285BE3380;
  v3 = a2[1];
  *a1 = v3;
  *(a1 + *(v3 - 24)) = a2[2];
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[3];
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  udif::details::UDIF_base::get_identifier((a3 + 64));
}

void sub_248E8D0C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  CFAutoRelease<__CFString const*>::~CFAutoRelease(&a9);
  CFAutoRelease<__CFUUID const*>::~CFAutoRelease(&a10);
  CFAutoRelease<__CFString const*>::~CFAutoRelease((v10 + 24));
  CFAutoRelease<__CFString const*>::~CFAutoRelease((v10 + 16));
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v11);
  _Unwind_Resume(a1);
}

void info::MasterChecksumInfo::~MasterChecksumInfo(void **this, void **a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 3)) = a2[3];
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

__CFString *info::DiskImageInfoUDIF::get_category(info::DiskImageInfoUDIF *this)
{
  v1 = *(this + 1) - 3;
  if (v1 > 4)
  {
    return @"UDRO";
  }

  else
  {
    return off_278F810E0[v1];
  }
}

__CFString *virtual thunk toinfo::DiskImageInfoUDIF::get_category(void *a1)
{
  v1 = *(a1 + *(*a1 - 48) + 8) - 3;
  if (v1 > 4)
  {
    return @"UDRO";
  }

  else
  {
    return off_278F810E0[v1];
  }
}

{
  v1 = *(a1 + *(*a1 - 48) + 8) - 3;
  if (v1 > 4)
  {
    return @"UDRO";
  }

  else
  {
    return off_278F810E0[v1];
  }
}

{
  v1 = *(a1 + *(*a1 - 48) + 8) - 3;
  if (v1 > 4)
  {
    return @"UDRO";
  }

  else
  {
    return off_278F810E0[v1];
  }
}

{
  v1 = *(a1 + *(*a1 - 48) + 8) - 3;
  if (v1 > 4)
  {
    return @"UDRO";
  }

  else
  {
    return off_278F810E0[v1];
  }
}

__CFString *virtual thunk toinfo::DiskImageInfoUDIF::get_category(info::DiskImageInfoUDIF *this)
{
  v1 = *(this + *(*this - 48) + 8) - 3;
  if (v1 > 4)
  {
    return @"UDRO";
  }

  else
  {
    return off_278F810E0[v1];
  }
}

void *udif::operator<<(void *a1, _DWORD *a2)
{
  v2 = &off_278F80E78;
  v3 = 264;
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

{
  v2 = &off_278F80F80;
  v3 = 360;
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

{
  v2 = &off_278F813B0;
  v3 = 48;
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

{
  v2 = &off_278F813E0;
  v3 = 48;
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

{
  v2 = &off_278F81410;
  v3 = 72;
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

void info::DiskImageInfoUDIF::extract_runs_from_blx_arr(info::DiskImageInfoUDIF *this, CFArrayRef theArray)
{
  v2 = *MEMORY[0x277D85DE8];
  CFArrayGetCount(theArray);
  operator new[]();
}

void info::DiskImageInfoUDIF::add_run(uint64_t a1, int *a2)
{
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v6 = *a2;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v12);
  LODWORD(__p[0]) = v6;
  udif::operator<<(&v13, __p);
  std::stringbuf::str[abi:ne200100](&v14, __p);
  if (v11 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  v8 = CFStringCreateWithCString(v4, v7, 0x8000100u);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v12[0] = *MEMORY[0x277D82818];
  v9 = *(MEMORY[0x277D82818] + 72);
  *(v12 + *(v12[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v13 = v9;
  v14 = MEMORY[0x277D82878] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v15);
  std::iostream::~basic_iostream();
  MEMORY[0x24C1ED6A0](&v17);
  CFDictionaryAddValue(Mutable, @"Type", v8);
  CFRelease(v8);
  addCFNumber64ToDict(Mutable, @"Reserved", a2[1]);
  addCFNumber64ToDict(Mutable, @"Sector Count", *(a2 + 2));
  addCFNumber64ToDict(Mutable, @"Start Offset", *(a2 + 1));
  addCFNumber64ToDict(Mutable, @"Compressed Offset", *(a2 + 3));
  addCFNumber64ToDict(Mutable, @"Compressed Length", *(a2 + 4));
  CFArrayAppendValue(*(a1 + 16), Mutable);
}

void sub_248E8D904(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  if (a7 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a8, MEMORY[0x277D82818]);
  MEMORY[0x24C1ED6A0](va);
  _Unwind_Resume(a1);
}

const void **info::CompressionInfo::serialize_to_dict@<X0>(info::CompressionInfo *this@<X0>, void *a2@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  valuePtr = *(this + 2);
  v13[0] = @"Compressed Bytes";
  v4 = *MEMORY[0x277CBECE8];
  v13[1] = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberLongLongType, &valuePtr);
  LODWORD(valuePtr) = *(this + 6);
  v13[2] = @"Compression Ratio";
  v14 = 0;
  v14 = CFNumberCreate(v4, kCFNumberFloatType, &valuePtr);
  v5 = *(this + 2) - 1;
  if (v5 > 3)
  {
    v6 = @"raw";
  }

  else
  {
    v6 = off_278F81108[v5];
  }

  v15 = @"Compression Type";
  v16 = v6;
  v10[0] = v13;
  v10[1] = 3;
  cf::create_dict_from_list(v10, &v11);
  *a2 = v11;
  v11 = 0;
  CFAutoRelease<__CFDictionary *>::~CFAutoRelease(&v11);
  for (i = 5; i != -1; i -= 2)
  {
    result = CFAutoRelease<void const*>::~CFAutoRelease(&v13[i]);
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248E8DA94(_Unwind_Exception *a1)
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

void info::MasterChecksumInfo::~MasterChecksumInfo(info::MasterChecksumInfo *this)
{
  *this = &unk_285BE46E8;
  *(this + 7) = &unk_285BE4740;
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_285BE46E8;
  *(this + 7) = &unk_285BE4740;
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x24C1ED730);
}

const void **info::MasterChecksumInfo::serialize_to_dict@<X0>(info::MasterChecksumInfo *this@<X0>, void *a2@<X8>)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CBECE8];
  v5 = *(this + 55);
  if (v5 < 0)
  {
    v6 = *(this + 4);
    v5 = *(this + 5);
  }

  else
  {
    v6 = this + 32;
  }

  v7 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v6, v5, 0x8000100u, 0);
  v17 = v7;
  v8 = *(this + 31);
  if (v8 < 0)
  {
    v9 = *(this + 1);
    v8 = *(this + 2);
  }

  else
  {
    v9 = this + 8;
  }

  v10 = CFStringCreateWithBytes(v4, v9, v8, 0x8000100u, 0);
  cf = v10;
  v18[0] = @"Checksum Value";
  v18[1] = v7;
  if (v7)
  {
    CFRetain(v7);
    v10 = cf;
  }

  v18[2] = @"Checksum Type";
  v18[3] = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  v14[0] = v18;
  v14[1] = 2;
  cf::create_dict_from_list(v14, &v15);
  *a2 = v15;
  v15 = 0;
  CFAutoRelease<__CFDictionary *>::~CFAutoRelease(&v15);
  for (i = 3; i != -1; i -= 2)
  {
    CFAutoRelease<void const*>::~CFAutoRelease(&v18[i]);
  }

  CFAutoRelease<__CFString const*>::~CFAutoRelease(&cf);
  result = CFAutoRelease<__CFString const*>::~CFAutoRelease(&v17);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248E8DD7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, const void *);
  CFAutoRelease<void const*>::~CFAutoRelease((v4 + 8));
  CFAutoRelease<__CFString const*>::~CFAutoRelease(va);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(va1);
  _Unwind_Resume(a1);
}

void virtual thunk toinfo::MasterChecksumInfo::~MasterChecksumInfo(info::MasterChecksumInfo *this)
{
  v1 = this + *(*this - 24);
  *v1 = &unk_285BE46E8;
  *(v1 + 7) = &unk_285BE4740;
  if (v1[55] < 0)
  {
    operator delete(*(v1 + 4));
  }

  if (v1[31] < 0)
  {
    v2 = *(v1 + 1);

    operator delete(v2);
  }
}

{
  v1 = this + *(*this - 24);
  *v1 = &unk_285BE46E8;
  *(v1 + 7) = &unk_285BE4740;
  if (v1[55] < 0)
  {
    operator delete(*(v1 + 4));
  }

  if (v1[31] < 0)
  {
    operator delete(*(v1 + 1));
  }

  JUMPOUT(0x24C1ED730);
}

void info::DiskImageInfoUDIF::~DiskImageInfoUDIF(info::DiskImageInfoUDIF *this)
{
  *(v2 + 264) = off_285BE4550;
  *(v2 + 64) = off_285BE45A8;
  CFAutoRelease<__CFString const*>::~CFAutoRelease((v2 + 288));
  CFAutoRelease<__CFString const*>::~CFAutoRelease(this + 35);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(this + 34);
  *(this + 26) = off_285BE43A8;
  *(this + 6) = off_285BE4400;
  if (*(this + 263) < 0)
  {
    operator delete(*(this + 30));
  }

  if (*(this + 239) < 0)
  {
    operator delete(*(this + 27));
  }

  *(this + 17) = off_285BE40B8;
  *(this + 5) = off_285BE4110;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(this + 21);
}

{
  info::DiskImageInfoUDIF::~DiskImageInfoUDIF(this);

  JUMPOUT(0x24C1ED730);
}

const void **info::DiskImageInfoUDIF::serialize_to_dict@<X0>(info::DiskImageInfoUDIF *this@<X0>, void *a2@<X8>)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v4 = (*(*this + 24))(this);
  v12 = @"Image Format";
  v13 = v4;
  info::DiskImageInfoUDIF::get_format_desc(this, &cf);
  v14 = @"Format Description";
  v15 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  info::SizeInfo::serialize_to_dict((this + *(*this - 112)), &v11);
  v16 = @"Size Info";
  v17 = v11;
  v11 = 0;
  CFAutoRelease<__CFDictionary const*>::~CFAutoRelease(&v11);
  info::EncryptionInfo::serialize_to_dict((this + *(*this - 120)), &v11);
  v18 = @"Encryption Info";
  v19 = v11;
  v11 = 0;
  CFAutoRelease<__CFDictionary const*>::~CFAutoRelease(&v11);
  info::CompressionInfo::serialize_to_dict((this + *(*this - 128)), &v11);
  v20 = @"Compression Info";
  v21 = v11;
  v11 = 0;
  CFAutoRelease<__CFDictionary const*>::~CFAutoRelease(&v11);
  info::MasterChecksumInfo::serialize_to_dict((this + *(*this - 136)), &v11);
  v22 = @"Master Checksum Info";
  v23 = v11;
  v11 = 0;
  CFAutoRelease<__CFDictionary const*>::~CFAutoRelease(&v11);
  info::IdentityInfo::serialize_to_dict((this + *(*this - 144)), &v11);
  v24 = @"Identity Info";
  v25 = v11;
  v11 = 0;
  CFAutoRelease<__CFDictionary const*>::~CFAutoRelease(&v11);
  v26 = &v12;
  v27[0] = 7;
  cf::create_dict_from_list(&v26, &v10);
  for (i = 13; i != -1; i -= 2)
  {
    CFAutoRelease<void const*>::~CFAutoRelease(&(&v12)[i]);
  }

  CFAutoRelease<__CFString const*>::~CFAutoRelease(&cf);
  v6 = *(this + 2);
  if (v6)
  {
    v26 = @"Runs";
    v27[0] = v6;
    CFRetain(v6);
    v12 = &v26;
    v13 = 1;
    cf::add_key_value_pairs_to_dict(&v10, &v12);
    CFAutoRelease<void const*>::~CFAutoRelease(v27);
  }

  *a2 = v10;
  v10 = 0;
  result = CFAutoRelease<__CFDictionary *>::~CFAutoRelease(&v10);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248E8E32C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CFAutoRelease<void const*>::~CFAutoRelease((v2 + 8));
  CFAutoRelease<__CFDictionary *>::~CFAutoRelease(va);
  _Unwind_Resume(a1);
}

void virtual thunk toinfo::DiskImageInfoUDIF::~DiskImageInfoUDIF(void *a1)
{
  info::DiskImageInfoUDIF::~DiskImageInfoUDIF((a1 + *(*a1 - 24)));
}

{
  info::DiskImageInfoUDIF::~DiskImageInfoUDIF((a1 + *(*a1 - 24)));

  JUMPOUT(0x24C1ED730);
}

{
  info::DiskImageInfoUDIF::~DiskImageInfoUDIF((a1 + *(*a1 - 24)));
}

{
  info::DiskImageInfoUDIF::~DiskImageInfoUDIF((a1 + *(*a1 - 24)));

  JUMPOUT(0x24C1ED730);
}

{
  info::DiskImageInfoUDIF::~DiskImageInfoUDIF((a1 + *(*a1 - 24)));
}

{
  info::DiskImageInfoUDIF::~DiskImageInfoUDIF((a1 + *(*a1 - 24)));

  JUMPOUT(0x24C1ED730);
}

{
  info::DiskImageInfoUDIF::~DiskImageInfoUDIF((a1 + *(*a1 - 24)));
}

{
  info::DiskImageInfoUDIF::~DiskImageInfoUDIF((a1 + *(*a1 - 24)));

  JUMPOUT(0x24C1ED730);
}

{
  info::DiskImageInfoUDIF::~DiskImageInfoUDIF((a1 + *(*a1 - 24)));
}

{
  info::DiskImageInfoUDIF::~DiskImageInfoUDIF((a1 + *(*a1 - 24)));

  JUMPOUT(0x24C1ED730);
}

{
  info::DiskImageInfoUDIF::~DiskImageInfoUDIF((a1 + *(*a1 - 32)));
}

{
  info::DiskImageInfoUDIF::~DiskImageInfoUDIF((a1 + *(*a1 - 32)));

  JUMPOUT(0x24C1ED730);
}

{
  info::DiskImageInfoUDIF::~DiskImageInfoUDIF((a1 + *(*a1 - 32)));
}

{
  info::DiskImageInfoUDIF::~DiskImageInfoUDIF((a1 + *(*a1 - 32)));

  JUMPOUT(0x24C1ED730);
}

{
  info::DiskImageInfoUDIF::~DiskImageInfoUDIF((a1 + *(*a1 - 32)));
}

{
  info::DiskImageInfoUDIF::~DiskImageInfoUDIF((a1 + *(*a1 - 32)));

  JUMPOUT(0x24C1ED730);
}

{
  info::DiskImageInfoUDIF::~DiskImageInfoUDIF((a1 + *(*a1 - 32)));
}

{
  info::DiskImageInfoUDIF::~DiskImageInfoUDIF((a1 + *(*a1 - 32)));

  JUMPOUT(0x24C1ED730);
}

{
  info::DiskImageInfoUDIF::~DiskImageInfoUDIF((a1 + *(*a1 - 32)));
}

{
  info::DiskImageInfoUDIF::~DiskImageInfoUDIF((a1 + *(*a1 - 32)));

  JUMPOUT(0x24C1ED730);
}

void virtual thunk toinfo::DiskImageInfoUDIF::~DiskImageInfoUDIF(info::DiskImageInfoUDIF *this)
{
  info::DiskImageInfoUDIF::~DiskImageInfoUDIF((this + *(*this - 24)));
}

{
  info::DiskImageInfoUDIF::~DiskImageInfoUDIF((this + *(*this - 24)));

  JUMPOUT(0x24C1ED730);
}

const void **virtual thunk toinfo::DiskImageInfoUDIF::serialize_to_dict@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  return info::DiskImageInfoUDIF::serialize_to_dict((a1 + *(*a1 - 40)), a2);
}

{
  return info::DiskImageInfoUDIF::serialize_to_dict((a1 + *(*a1 - 40)), a2);
}

{
  return info::DiskImageInfoUDIF::serialize_to_dict((a1 + *(*a1 - 40)), a2);
}

{
  return info::DiskImageInfoUDIF::serialize_to_dict((a1 + *(*a1 - 40)), a2);
}

char *virtual thunk toinfo::details::InfoTrait<info::CompressionInfo>::get(void *a1)
{
  return a1 + *(*a1 - 32);
}

{
  return a1 + *(*a1 - 40);
}

char *virtual thunk toinfo::details::InfoTrait<info::MasterChecksumInfo>::get(void *a1)
{
  return a1 + *(*a1 - 32);
}

{
  return a1 + *(*a1 - 40);
}

void *std::operator<<[abi:ne200100]<std::char_traits<char>>(void *a1, char *a2)
{
  v3 = a1 + *(*a1 - 24);
  v4 = *a2;
  if (*(v3 + 36) == -1)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v5 = std::locale::use_facet(&v8, MEMORY[0x277D82680]);
    v6 = (v5->__vftable[2].~facet_0)(v5, 32);
    std::locale::~locale(&v8);
    *(v3 + 36) = v6;
  }

  *(v3 + 36) = v4;
  return a1;
}

udif::xml_rsrc_iterator *udif::xml_rsrc_iterator::xml_rsrc_iterator(udif::xml_rsrc_iterator *this, const udif::xml_rsrc_iterator *a2)
{
  v4 = *(a2 + 1);
  *this = *a2;
  *(this + 1) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  std::__optional_copy_base<CFAutoRelease<__CFDictionary const*>,false>::__optional_copy_base[abi:ne200100](this + 16, a2 + 16);
  *(this + 4) = *(a2 + 4);
  return this;
}

void sub_248E8EB24(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::__optional_copy_base<CFAutoRelease<__CFDictionary const*>,false>::__optional_copy_base[abi:ne200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[8] = 0;
  if (*(a2 + 8) == 1)
  {
    *a1 = 0;
    v3 = *a2;
    *a1 = *a2;
    if (v3)
    {
      CFRetain(v3);
    }

    a1[8] = 1;
  }

  return a1;
}

void sub_248E8EB90(_Unwind_Exception *exception_object)
{
  if (*(v1 + 8) == 1)
  {
    CFAutoRelease<__CFDictionary const*>::~CFAutoRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<udif::xml_rsrc_iterator,udif::xml_rsrc_iterator>::~pair(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    CFAutoRelease<__CFDictionary const*>::~CFAutoRelease((a1 + 56));
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 24) == 1)
  {
    CFAutoRelease<__CFDictionary const*>::~CFAutoRelease((a1 + 16));
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void info::DiskImageInfoUDIF::~DiskImageInfoUDIF(const void **this, const void **a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 13)) = a2[1];
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
  *(this + *(*this - 17)) = a2[12];
  *(this + *(*this - 18)) = a2[13];
  CFAutoRelease<__CFArray *>::~CFAutoRelease(this + 2);
}

CFStringRef info::DiskImageInfoUDIF::get_format_desc@<X0>(info::DiskImageInfoUDIF *this@<X0>, CFStringRef *a2@<X8>)
{
  v3 = *(this + *(*this - 128) + 8);
  if (v3)
  {
    if (v3 > 4)
    {
      v4 = @"raw";
    }

    else
    {
      v4 = off_278F81108[v3 - 1];
    }

    result = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s (%@)", "UDIF read-only compressed image", v4);
  }

  else
  {
    result = @"UDIF uncompressed read-only image";
  }

  *a2 = result;
  return result;
}

const void **CFAutoRelease<__CFArray *>::~CFAutoRelease(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *std::map<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,std::allocator<std::pair<boost::icl::discrete_interval<unsigned long long,std::less> const,udif::details::run_info>>>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,std::allocator<std::pair<boost::icl::discrete_interval<unsigned long long,std::less> const,udif::details::run_info>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__tree_node<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,std::allocator<std::pair<boost::icl::discrete_interval<unsigned long long,std::less> const,udif::details::run_info>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__tree_node<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,void *> *,long>>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>>>::__emplace_hint_unique_key_args<boost::icl::discrete_interval<unsigned long long,std::less>,std::pair<boost::icl::discrete_interval<unsigned long long,std::less> const,udif::details::run_info> const&>(v5, (v5 + 8), (v4 + 4));
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

uint64_t std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>>>::__emplace_hint_unique_key_args<boost::icl::discrete_interval<unsigned long long,std::less>,std::pair<boost::icl::discrete_interval<unsigned long long,std::less> const,udif::details::run_info> const&>(uint64_t **a1, uint64_t *a2, uint64_t a3)
{
  v3 = *std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>>>::__find_equal<boost::icl::discrete_interval<unsigned long long,std::less>>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>>>::__find_equal<boost::icl::discrete_interval<unsigned long long,std::less>>(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, uint64_t a5)
{
  if (a1 + 1 == a2)
  {
    goto LABEL_5;
  }

  v5 = *(a5 + 16);
  v6 = (v5 & 1) + *(a5 + 8) - 1;
  v7 = a2[4];
  if ((a2[6] & 2) == 0)
  {
    ++v7;
  }

  if (v6 < v7)
  {
LABEL_5:
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_23:
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
      v15 = a2;
      do
      {
        v10 = v15[2];
        v11 = *v10 == v15;
        v15 = v10;
      }

      while (v11);
    }

    v16 = *a5;
    if ((*(a5 + 16) & 2) == 0)
    {
      ++v16;
    }

    if ((v10[6] & 1) + v10[5] - 1 < v16)
    {
      goto LABEL_23;
    }

    return std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>>>::__find_equal<boost::icl::discrete_interval<unsigned long long,std::less>>(a1, a3, a5);
  }

  v11 = (v5 & 2) == 0;
  v12 = *a5;
  if (v11)
  {
    ++v12;
  }

  if ((a2[6] & 1) + a2[5] - 1 < v12)
  {
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        a4 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v17 = a2;
      do
      {
        a4 = v17[2];
        v11 = *a4 == v17;
        v17 = a4;
      }

      while (!v11);
    }

    if (a4 == a1 + 1)
    {
      goto LABEL_34;
    }

    v18 = a4[4];
    if ((a4[6] & 2) == 0)
    {
      ++v18;
    }

    if (v6 < v18)
    {
LABEL_34:
      if (v13)
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

    return std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>>>::__find_equal<boost::icl::discrete_interval<unsigned long long,std::less>>(a1, a3, a5);
  }

  *a3 = a2;
  *a4 = a2;
  return a4;
}

void *std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>>>::__find_equal<boost::icl::discrete_interval<unsigned long long,std::less>>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    if ((*(a3 + 16) & 2) != 0)
    {
      v6 = *a3;
    }

    else
    {
      v6 = *a3 + 1;
    }

    do
    {
      while (1)
      {
        v7 = v4;
        v8 = *(v4 + 48);
        v9 = v7[4];
        if ((v8 & 2) == 0)
        {
          ++v9;
        }

        if ((*(a3 + 16) & 1) + *(a3 + 8) - 1 >= v9)
        {
          break;
        }

        v4 = *v7;
        result = v7;
        if (!*v7)
        {
          goto LABEL_14;
        }
      }

      if ((v8 & 1) + v7[5] - 1 >= v6)
      {
        break;
      }

      result = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = result;
  }

LABEL_14:
  *a2 = v7;
  return result;
}

void info::DiskImageInfoASIF::count_used_extents(info::DiskImageInfoASIF *this, const DiskImageASIF *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if (*di_asif::header::get_dir_offset((a2 + 32), *(a2 + 26)))
  {
    v4 = *(a2 + 83);
    v5 = *(a2 + 84);
    v22 = 0u;
    v23 = 0u;
    di_asif::details::dir_base::create_context((a2 + 504), v20);
    v6 = (this + 16);
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
        v9 = *(v4 + 8 * v8) * *(a2 + 24);
        if (v9)
        {
          ++*(v6 + *(*this - 136));
          di_asif::details::dir::load_create_table(a2 + 63, v20, v8, v9, 0, 1, buf);
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

            info::DiskImageInfoASIF::count_table_extents(this, v10, v20, &v22);
          }

          ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(buf);
        }

        v8 = (v8 + 1);
        v7 += 8;
      }

      while (v4 + v7 != v5);
      v11 = *(&v22 + 1);
    }

    v12 = *v6;
    *(this + *(*this - 112) + 56) -= v12 + (*(*a2 + 24))(a2) * v11;
    v13 = *(&v23 + 1);
    if (*(&v23 + 1) && DIDebugLogsEnabled())
    {
      v14 = *__error();
      if (DIForwardLogs())
      {
        DIOSLog = getDIOSLog();
        os_log_type_enabled(DIOSLog, OS_LOG_TYPE_DEBUG);
        *buf = 68158210;
        *&buf[4] = 71;
        v25 = 2080;
        v26 = "void info::DiskImageInfoASIF::count_used_extents(const DiskImageASIF &)";
        v27 = 2048;
        v28 = v13;
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
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 68158210;
          *&buf[4] = 71;
          v25 = 2080;
          v26 = "void info::DiskImageInfoASIF::count_used_extents(const DiskImageASIF &)";
          v27 = 2048;
          v28 = v13;
          _os_log_impl(&dword_248DE0000, v18, OS_LOG_TYPE_DEBUG, "%.*s: WARNING: Found %llu sectors with invalid flags (has_bitmap)", buf, 0x1Cu);
        }
      }

      *__error() = v14;
    }

    v20[0] = &unk_285BE5728;
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_248E8F984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_248E8FB00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void info::DiskImageInfoASIF::set_uuids_info(info::DiskImageInfoASIF *this, const DiskImageASIF *a2)
{
  v10[6] = *MEMORY[0x277D85DE8];
  stackable_source_identifier = DiskImageASIF::get_stackable_source_identifier(a2);
  v10[4] = stackable_source_identifier;
  v10[5] = v5;
  if (stackable_source_identifier | v5)
  {
    *&v11.byte8 = v5;
    v6 = *MEMORY[0x277CBECE8];
    *&v11.byte0 = stackable_source_identifier;
    v10[0] = CFUUIDCreateFromUUIDBytes(*MEMORY[0x277CBECE8], v11);
    v7 = CFUUIDCreateString(v6, v10[0]);
    v9 = v7;
    v8 = (this + *(*this - 128));
    if (v8[3])
    {
      CFRelease(v8[3]);
      v7 = v9;
    }

    v8[3] = v7;
    v9 = 0;
    CFAutoRelease<__CFString const*>::~CFAutoRelease(&v9);
    CFAutoRelease<__CFUUID const*>::~CFAutoRelease(v10);
  }

  DiskImageASIF::get_stable_uuid(a2);
}

void sub_248E8FCA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(va);
  CFAutoRelease<__CFUUID const*>::~CFAutoRelease(va1);
  _Unwind_Resume(a1);
}

void info::DiskImageInfoASIF::examine_mapped_extents(info::DiskImageInfoASIF *this, const DiskImageASIF *a2)
{
  v43[4] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v38[0] = Mutable;
  v6 = (this + *(*this - 136));
  if (v6[10])
  {
    CFRelease(v6[10]);
    Mutable = v38[0];
  }

  v6[10] = Mutable;
  v38[0] = 0;
  CFAutoRelease<__CFArray *>::~CFAutoRelease(v38);
  di_asif::details::dir_base::create_context((a2 + 504), v31);
  v7 = *(this + *(*this - 112) + 16);
  v38[0] = a2;
  v38[1] = 0;
  v38[2] = v7;
  v39 = 2;
  v40 = 0;
  v41 = v31;
  v42 = 2;
  v43[0] = &unk_285BDD6E8;
  v43[3] = v43;
  DiskImage::extents_t::begin(v38, &v26);
  DiskImage::extents_t::end(v38, v25);
  v8 = MEMORY[0x277CBF128];
  while (DiskImage::const_extents_iterator_t::operator!=(&v26, v25))
  {
    if (v30 == 3)
    {
      v18 = *__error();
      if (DIForwardLogs())
      {
        DIOSLog = getDIOSLog();
        os_log_type_enabled(DIOSLog, OS_LOG_TYPE_ERROR);
        value = 0x4B04100302;
        v34 = 2080;
        v35 = "void info::DiskImageInfoASIF::examine_mapped_extents(const DiskImageASIF &)";
        v36 = 2048;
        v37 = v27;
        v20 = _os_log_send_and_compose_impl();
        if (v20)
        {
          v21 = v20;
          fprintf(*MEMORY[0x277D85DF8], "%s\n", v20);
          free(v21);
        }
      }

      else
      {
        v22 = getDIOSLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          value = 0x4B04100302;
          v34 = 2080;
          v35 = "void info::DiskImageInfoASIF::examine_mapped_extents(const DiskImageASIF &)";
          v36 = 2048;
          v37 = v27;
          _os_log_impl(&dword_248DE0000, v22, OS_LOG_TYPE_ERROR, "%.*s: Failed during ASIF extents enumeration on offset: %llu", &value, 0x1Cu);
        }
      }

      *__error() = v18;
      exception = __cxa_allocate_exception(0x40uLL);
      *exception = &unk_285BF4E60;
      v24 = std::generic_category();
      exception[1] = 22;
      exception[2] = v24;
      *(exception + 24) = 0;
      *(exception + 48) = 0;
      exception[7] = "Failed during ASIF extents enumeration.";
    }

    v10 = v27;
    v9 = v28;
    v11 = v29;
    v12 = CFArrayCreateMutable(v4, 2, v8);
    value = v12;
    if ((v11 & 2) != 0)
    {
      v13 = v10;
    }

    else
    {
      v13 = v10 + 1;
    }

    addNumberToCFArray<unsigned long long>(v12, v13);
    addNumberToCFArray<unsigned long long>(value, (v11 & 1) + v9 - 1);
    CFArrayAppendValue(*(this + *(*this - 136) + 80), value);
    CFAutoRelease<__CFArray *>::~CFAutoRelease(&value);
    DiskImage::const_extents_iterator_t::operator++(&v26);
  }

  v14 = v25[0];
  v25[0] = 0;
  if (v14)
  {
    (*(*v14 + 24))(v14);
  }

  v15 = v26;
  v26 = 0;
  if (v15)
  {
    (*(*v15 + 24))(v15);
  }

  std::__function::__value_func<std::unique_ptr<DiskImage::base_extents_iterator_interface> ()(DiskImage::extents_t const&,unsigned long long)>::~__value_func[abi:ne200100](v43);
  v16 = v40;
  v40 = 0;
  if (v16)
  {
    (*(*v16 + 40))(v16);
  }

  v31[0] = &unk_285BE5728;
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void info::DiskImageInfoASIF::DiskImageInfoASIF(info::DiskImageInfoASIF *this, const DiskImageASIF *a2)
{
  *(this + 7) = &unk_285BE2560;
  *(this + 8) = &unk_285BE2590;
  *(this + 9) = &unk_285BD9A98;
  *(this + 10) = &unk_285BD9AC8;
  *this = off_285BE4F60;
  *(this + 5) = off_285BE4FA8;
  *(this + 6) = off_285BE4FF0;
  *(this + unk_285BE4F38) = off_285BE5038;
  *(this + *(*this - 48)) = off_285BE5080;
  *(this + *(*this - 56)) = off_285BE50C8;
  *(this + *(*this - 64)) = off_285BE5110;
  *this = off_285BE4D38;
  *(this + 5) = off_285BE4D80;
  *(this + 6) = off_285BE4DC8;
  *(this + unk_285BE4D10) = off_285BE4E10;
  *(this + *(*this - 48)) = off_285BE4E58;
  *(this + *(*this - 56)) = off_285BE4EA0;
  *(this + *(*this - 64)) = off_285BE4EE8;
  *(this + 11) = &off_285BE5170;
  *(this + 5) = &off_285BE51C8;
  *(this + 112) = 0;
  *(this + 120) = 0;
  *(this + 128) = 0;
  *(this + 136) = 0;
  *(this + 19) = off_285BE52B8;
  *(this + 20) = 0;
  *(this + 7) = off_285BE5310;
  *(this + 168) = 0;
  *(this + 176) = 0;
  *(this + 23) = 0;
  info::IdentityInfo::IdentityInfo<DiskImageASIF>(this + 24, &off_285BE4C98, a2);
  *(this + 30) = 0;
  *(this + 38) = 0;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *this = &unk_285BE47E8;
  *(this + 5) = &unk_285BE4830;
  *(this + 6) = &unk_285BE4878;
  *(this + 7) = &unk_285BE48C0;
  *(this + 8) = &unk_285BE4908;
  *(this + 9) = &unk_285BE4950;
  *(this + 10) = &unk_285BE4998;
  *(this + 11) = &unk_285BE49F8;
  *(this + 19) = &unk_285BE4A68;
  *(this + 24) = &unk_285BE4AD8;
  *(this + 28) = &unk_285BE4B48;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  v4 = (*(*a2 + 32))(a2);
  v5 = *this;
  *(this + *(*this - 112) + 16) = v4;
  v6 = *(this + *(v5 - 112) + 16);
  v7 = (*(*a2 + 24))(a2);
  v8 = *this;
  v9 = *this;
  *(this + *(v8 - 112) + 8) = v7 * v6;
  v10 = *(a2 + 24);
  *(this + *(v8 - 136) + 24) = v10;
  *(this + *(v9 - 136) + 64) = *(a2 + 11);
  *(this + *(v9 - 136) + 8) = *(a2 + 515);
  *(this + *(v9 - 112) + 56) = *(this + *(v9 - 112) + 8);
  v11 = *(a2 + 13);
  if (v11)
  {
    v12 = v11 * v10;
  }

  else
  {
    v13 = *(a2 + 11);
    v12 = (*(*a2 + 24))(a2) * v13;
    v8 = *this;
  }

  v14 = this + *(v8 - 112);
  *(v14 + 5) = v12;
  v14[48] = 1;
  v15 = *this;
  v16 = this + *(*this - 112);
  v17 = *(a2 + 24);
  if ((v16[32] & 1) == 0)
  {
    v16[32] = 1;
  }

  *(v16 + 3) = v17;
  *(this + *(v15 - 136) + 72) = *(a2 + 44) & 1;
  info::DiskImageInfoASIF::count_used_extents(this, a2);
  populate_backends_info(a2 + 2, this + *(*this - 104));
  info::DiskImageInfoASIF::set_uuids_info(this, a2);
}

void sub_248E909D4(_Unwind_Exception *a1)
{
  info::ASIFInfo::~ASIFInfo(v2, &off_285BE4CB8);
  info::IdentityInfo::~IdentityInfo(v3, &off_285BE4C98);
  info::EncryptionInfo::~EncryptionInfo(v1, &off_285BE4C78);
  _Unwind_Resume(a1);
}

uint64_t *info::IdentityInfo::IdentityInfo<DiskImageASIF>(uint64_t *a1, uint64_t *a2, DiskImageASIF *this)
{
  *a1 = &unk_285BE3380;
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
  stackable_identifier = DiskImageASIF::get_stackable_identifier(this);
  v9 = v8;
  v10 = *MEMORY[0x277CBECE8];
  *&v15.byte0 = stackable_identifier;
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

void sub_248E90BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  CFAutoRelease<__CFString const*>::~CFAutoRelease(&a9);
  CFAutoRelease<__CFUUID const*>::~CFAutoRelease(&a10);
  CFAutoRelease<__CFString const*>::~CFAutoRelease((v10 + 24));
  CFAutoRelease<__CFString const*>::~CFAutoRelease((v10 + 16));
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v11);
  _Unwind_Resume(a1);
}

void info::ASIFInfo::~ASIFInfo(const void **this, const void **a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 3)) = a2[3];
  CFAutoRelease<__CFArray *>::~CFAutoRelease(this + 10);
}

uint64_t info::DiskImageInfoASIF::count_table_extents(uint64_t *a1, di_asif::details::table *this, di_asif::details::ContextASIF *a3, void *a4)
{
  result = di_asif::details::table::make_map_entry_iterators(this, this, v23);
  v8 = a1 + 1;
  v9 = a1 + 3;
  v10 = *(this + 44);
  v11 = a1 + 4;
  while (v23[0] != v23[5] || v23[1] != v23[6])
  {
    v12 = di_asif::details::map_entry_iterator_t::operator*(v23);
    di_asif::details::table::make_data_entry_iterators_for_map(this, v12, v22);
    while (v22[0] != v22[5] || v22[1] != v22[6])
    {
      *v21 = *di_asif::details::map_entry_iterator_t::operator*(v22);
      flags = di_asif::details::table_entry_data::get_flags(v21);
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

      if (flags > 1)
      {
        if (flags == 2)
        {
          ++*(a1 + *(v15 - 136) + 48);
          *v11 += v19;
        }

        else if (flags == 3)
        {
          ++*(a1 + *(v15 - 136) + 56);
          *v9 += v19;
          if (v19)
          {
            info::DiskImageInfoASIF::inspect_bitmap_for_entry(a1, this, a3, v21[0], v21[1], a4, v19);
            v14 = *a1;
          }
        }
      }

      else if (flags)
      {
        if (flags == 1)
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
      di_asif::details::data_entry_iterator_t::operator++(v22, v21);
    }

    result = di_asif::details::map_entry_iterator_t::operator++(v23, v22);
  }

  return result;
}

void di_asif::details::ContextASIF::~ContextASIF(di_asif::details::ContextASIF *this)
{
  *this = &unk_285BE5728;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_285BE5728;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x24C1ED730);
}

atomic_ullong *info::DiskImageInfoASIF::inspect_bitmap_for_entry(void *a1, di_asif::details::table *a2, di_asif::details::ContextASIF *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v28[0] = a4;
  v28[1] = a5;
  start_block = di_asif::details::table_entry_data::get_start_block(v28);
  di_asif::details::table::get_bitmap(a2, a3, start_block, 0, &v27);
  v13 = a1 + *(*a1 - 112);
  v14 = *(v13 + 1);
  v15 = *(v13 + 2);
  if (v15 > v14)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    *exception = &unk_285BF4E60;
    v26 = std::generic_category();
    exception[1] = 22;
    exception[2] = v26;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = "Corrupted ASIF image.";
  }

  logical_offset = di_asif::details::table_entry_data::get_logical_offset(v28);
  v17 = logical_offset + a7;
  if (logical_offset < v17)
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

        v21 = di_asif::details::map_element::search_for_pattern_match(v20, a2, v18, logical_offset, v17);
        v22 = a6;
        v23 = (v21 - logical_offset) / v19;
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
        logical_offset = v21;
      }

      v18 = 0;
      a6[2] += v23;
      logical_offset = v21;
    }

    while (v21 < v17);
  }

  return ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(&v27);
}

void sub_248E91144(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(va);
  _Unwind_Resume(a1);
}

void info::ASIFInfo::~ASIFInfo(info::ASIFInfo *this)
{
  *this = &unk_285BE59F0;
  *(this + 11) = &unk_285BE5A48;
  CFAutoRelease<__CFArray *>::~CFAutoRelease(this + 10);
}

{
  *this = &unk_285BE59F0;
  *(this + 11) = &unk_285BE5A48;
  CFAutoRelease<__CFArray *>::~CFAutoRelease(this + 10);

  JUMPOUT(0x24C1ED730);
}

const void **info::ASIFInfo::serialize_to_dict@<X0>(info::ASIFInfo *this@<X0>, void *a2@<X8>)
{
  v32[1] = *MEMORY[0x277D85DE8];
  valuePtr = *(this + 1);
  v13 = @"Dir Pointer Version";
  v4 = *MEMORY[0x277CBECE8];
  v14 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberLongLongType, &valuePtr);
  v15 = @"Num Tables";
  valuePtr = *(this + 2);
  v16 = 0;
  v16 = CFNumberCreate(v4, kCFNumberLongLongType, &valuePtr);
  v17 = @"Chunk Size";
  valuePtr = *(this + 3);
  v18 = 0;
  v18 = CFNumberCreate(v4, kCFNumberLongLongType, &valuePtr);
  v19 = @"Uninitialized Entries";
  valuePtr = *(this + 4);
  v20 = 0;
  v20 = CFNumberCreate(v4, kCFNumberLongLongType, &valuePtr);
  v21 = @"Full Entries";
  valuePtr = *(this + 5);
  v22 = 0;
  v22 = CFNumberCreate(v4, kCFNumberLongLongType, &valuePtr);
  v23 = @"Unmapped Entries";
  valuePtr = *(this + 6);
  v24 = 0;
  v24 = CFNumberCreate(v4, kCFNumberLongLongType, &valuePtr);
  v25 = @"Bitmapped Entries";
  valuePtr = *(this + 7);
  v26 = 0;
  v26 = CFNumberCreate(v4, kCFNumberLongLongType, &valuePtr);
  v27 = @"Max Sector Count";
  valuePtr = *(this + 8);
  v28 = 0;
  v5 = CFNumberCreate(v4, kCFNumberLongLongType, &valuePtr);
  v6 = *(this + 72);
  v28 = v5;
  v29 = @"Is Cache";
  valuePtr = v6;
  v30 = 0;
  v30 = CFNumberCreate(v4, kCFNumberLongLongType, &valuePtr);
  v31 = &v13;
  v32[0] = 9;
  cf::create_dict_from_list(&v31, &v11);
  for (i = 17; i != -1; i -= 2)
  {
    CFAutoRelease<void const*>::~CFAutoRelease(&(&v13)[i]);
  }

  v8 = *(this + 10);
  if (v8)
  {
    v31 = @"Mapped Sectors";
    v32[0] = v8;
    CFRetain(v8);
    v13 = &v31;
    v14 = 1;
    cf::add_key_value_pairs_to_dict(&v11, &v13);
    CFAutoRelease<void const*>::~CFAutoRelease(v32);
  }

  *a2 = v11;
  v11 = 0;
  result = CFAutoRelease<__CFDictionary *>::~CFAutoRelease(&v11);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248E914D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CFAutoRelease<void const*>::~CFAutoRelease((v2 + 8));
  CFAutoRelease<__CFDictionary *>::~CFAutoRelease(va);
  _Unwind_Resume(a1);
}

void virtual thunk toinfo::ASIFInfo::~ASIFInfo(info::ASIFInfo *this)
{
  v1 = this + *(*this - 24);
  *v1 = &unk_285BE59F0;
  *(v1 + 11) = &unk_285BE5A48;
  CFAutoRelease<__CFArray *>::~CFAutoRelease(v1 + 10);
}

{
  v1 = this + *(*this - 24);
  *v1 = &unk_285BE59F0;
  *(v1 + 11) = &unk_285BE5A48;
  CFAutoRelease<__CFArray *>::~CFAutoRelease(v1 + 10);

  JUMPOUT(0x24C1ED730);
}

char *virtual thunk toinfo::details::InfoTrait<info::ASIFInfo>::get(void *a1)
{
  return a1 + *(*a1 - 32);
}

{
  return a1 + *(*a1 - 40);
}

void info::DiskImageInfoASIF::~DiskImageInfoASIF(info::DiskImageInfoASIF *this)
{
  *(this + 28) = off_285BE5548;
  *(this + 9) = off_285BE55A0;
  CFAutoRelease<__CFArray *>::~CFAutoRelease(this + 38);
  *(this + 24) = off_285BE5400;
  *(this + 10) = off_285BE5458;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(this + 27);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(this + 26);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(this + 25);
  *(this + 19) = off_285BE52B8;
  *(this + 7) = off_285BE5310;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(this + 23);
}

{
  *(this + 28) = off_285BE5548;
  *(this + 9) = off_285BE55A0;
  CFAutoRelease<__CFArray *>::~CFAutoRelease(this + 38);
  *(this + 24) = off_285BE5400;
  *(this + 10) = off_285BE5458;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(this + 27);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(this + 26);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(this + 25);
  *(this + 19) = off_285BE52B8;
  *(this + 7) = off_285BE5310;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(this + 23);

  JUMPOUT(0x24C1ED730);
}

const void **info::DiskImageInfoASIF::serialize_to_dict@<X0>(info::DiskImageInfoASIF *this@<X0>, void *a2@<X8>)
{
  v11[12] = *MEMORY[0x277D85DE8];
  v4 = (*(*this + 24))(this);
  v11[0] = @"Image Format";
  v11[1] = v4;
  v11[2] = @"Format Description";
  v11[3] = @"Apple sparse image";
  info::SizeInfo::serialize_to_dict((this + *(*this - 112)), &v10);
  v11[4] = @"Size Info";
  v11[5] = v10;
  v10 = 0;
  CFAutoRelease<__CFDictionary const*>::~CFAutoRelease(&v10);
  info::EncryptionInfo::serialize_to_dict((this + *(*this - 120)), &v10);
  v11[6] = @"Encryption Info";
  v11[7] = v10;
  v10 = 0;
  CFAutoRelease<__CFDictionary const*>::~CFAutoRelease(&v10);
  info::ASIFInfo::serialize_to_dict((this + *(*this - 136)), &v10);
  v11[8] = @"ASIF Info";
  v11[9] = v10;
  v10 = 0;
  CFAutoRelease<__CFDictionary const*>::~CFAutoRelease(&v10);
  info::IdentityInfo::serialize_to_dict((this + *(*this - 128)), &v10);
  v11[10] = @"Identity Info";
  v11[11] = v10;
  v10 = 0;
  CFAutoRelease<__CFDictionary const*>::~CFAutoRelease(&v10);
  v8[0] = v11;
  v8[1] = 6;
  cf::create_dict_from_list(v8, &v9);
  *a2 = v9;
  v9 = 0;
  CFAutoRelease<__CFDictionary *>::~CFAutoRelease(&v9);
  for (i = 11; i != -1; i -= 2)
  {
    result = CFAutoRelease<void const*>::~CFAutoRelease(&v11[i]);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248E91AD4(_Unwind_Exception *a1)
{
  v3 = (v1 + 88);
  v4 = -96;
  do
  {
    v3 = CFAutoRelease<void const*>::~CFAutoRelease(v3) - 2;
    v4 += 16;
  }

  while (v4);
  _Unwind_Resume(a1);
}

const void **virtual thunk toinfo::DiskImageInfoASIF::~DiskImageInfoASIF(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 28) = off_285BE5548;
  *(v1 + 9) = off_285BE55A0;
  CFAutoRelease<__CFArray *>::~CFAutoRelease(v1 + 38);
  *(v1 + 24) = off_285BE5400;
  *(v1 + 10) = off_285BE5458;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 27);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 26);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 25);
  *(v1 + 19) = off_285BE52B8;
  *(v1 + 7) = off_285BE5310;

  return CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 28) = off_285BE5548;
  *(v1 + 9) = off_285BE55A0;
  CFAutoRelease<__CFArray *>::~CFAutoRelease(v1 + 38);
  *(v1 + 24) = off_285BE5400;
  *(v1 + 10) = off_285BE5458;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 27);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 26);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 25);
  *(v1 + 19) = off_285BE52B8;
  *(v1 + 7) = off_285BE5310;

  return CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 28) = off_285BE5548;
  *(v1 + 9) = off_285BE55A0;
  CFAutoRelease<__CFArray *>::~CFAutoRelease(v1 + 38);
  *(v1 + 24) = off_285BE5400;
  *(v1 + 10) = off_285BE5458;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 27);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 26);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 25);
  *(v1 + 19) = off_285BE52B8;
  *(v1 + 7) = off_285BE5310;

  return CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 28) = off_285BE5548;
  *(v1 + 9) = off_285BE55A0;
  CFAutoRelease<__CFArray *>::~CFAutoRelease(v1 + 38);
  *(v1 + 24) = off_285BE5400;
  *(v1 + 10) = off_285BE5458;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 27);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 26);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 25);
  *(v1 + 19) = off_285BE52B8;
  *(v1 + 7) = off_285BE5310;

  return CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 28) = off_285BE5548;
  *(v1 + 9) = off_285BE55A0;
  CFAutoRelease<__CFArray *>::~CFAutoRelease(v1 + 38);
  *(v1 + 24) = off_285BE5400;
  *(v1 + 10) = off_285BE5458;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 27);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 26);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 25);
  *(v1 + 19) = off_285BE52B8;
  *(v1 + 7) = off_285BE5310;

  return CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);
}

{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 28) = off_285BE5548;
  *(v1 + 9) = off_285BE55A0;
  CFAutoRelease<__CFArray *>::~CFAutoRelease(v1 + 38);
  *(v1 + 24) = off_285BE5400;
  *(v1 + 10) = off_285BE5458;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 27);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 26);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 25);
  *(v1 + 19) = off_285BE52B8;
  *(v1 + 7) = off_285BE5310;

  return CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);
}

{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 28) = off_285BE5548;
  *(v1 + 9) = off_285BE55A0;
  CFAutoRelease<__CFArray *>::~CFAutoRelease(v1 + 38);
  *(v1 + 24) = off_285BE5400;
  *(v1 + 10) = off_285BE5458;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 27);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 26);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 25);
  *(v1 + 19) = off_285BE52B8;
  *(v1 + 7) = off_285BE5310;

  return CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);
}

{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 28) = off_285BE5548;
  *(v1 + 9) = off_285BE55A0;
  CFAutoRelease<__CFArray *>::~CFAutoRelease(v1 + 38);
  *(v1 + 24) = off_285BE5400;
  *(v1 + 10) = off_285BE5458;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 27);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 26);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 25);
  *(v1 + 19) = off_285BE52B8;
  *(v1 + 7) = off_285BE5310;

  return CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);
}

{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 28) = off_285BE5548;
  *(v1 + 9) = off_285BE55A0;
  CFAutoRelease<__CFArray *>::~CFAutoRelease(v1 + 38);
  *(v1 + 24) = off_285BE5400;
  *(v1 + 10) = off_285BE5458;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 27);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 26);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 25);
  *(v1 + 19) = off_285BE52B8;
  *(v1 + 7) = off_285BE5310;

  return CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);
}

void virtual thunk toinfo::DiskImageInfoASIF::~DiskImageInfoASIF(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 28) = off_285BE5548;
  *(v1 + 9) = off_285BE55A0;
  CFAutoRelease<__CFArray *>::~CFAutoRelease(v1 + 38);
  *(v1 + 24) = off_285BE5400;
  *(v1 + 10) = off_285BE5458;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 27);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 26);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 25);
  *(v1 + 19) = off_285BE52B8;
  *(v1 + 7) = off_285BE5310;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);

  JUMPOUT(0x24C1ED730);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 28) = off_285BE5548;
  *(v1 + 9) = off_285BE55A0;
  CFAutoRelease<__CFArray *>::~CFAutoRelease(v1 + 38);
  *(v1 + 24) = off_285BE5400;
  *(v1 + 10) = off_285BE5458;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 27);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 26);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 25);
  *(v1 + 19) = off_285BE52B8;
  *(v1 + 7) = off_285BE5310;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);

  JUMPOUT(0x24C1ED730);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 28) = off_285BE5548;
  *(v1 + 9) = off_285BE55A0;
  CFAutoRelease<__CFArray *>::~CFAutoRelease(v1 + 38);
  *(v1 + 24) = off_285BE5400;
  *(v1 + 10) = off_285BE5458;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 27);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 26);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 25);
  *(v1 + 19) = off_285BE52B8;
  *(v1 + 7) = off_285BE5310;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);

  JUMPOUT(0x24C1ED730);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 28) = off_285BE5548;
  *(v1 + 9) = off_285BE55A0;
  CFAutoRelease<__CFArray *>::~CFAutoRelease(v1 + 38);
  *(v1 + 24) = off_285BE5400;
  *(v1 + 10) = off_285BE5458;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 27);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 26);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 25);
  *(v1 + 19) = off_285BE52B8;
  *(v1 + 7) = off_285BE5310;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);

  JUMPOUT(0x24C1ED730);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 28) = off_285BE5548;
  *(v1 + 9) = off_285BE55A0;
  CFAutoRelease<__CFArray *>::~CFAutoRelease(v1 + 38);
  *(v1 + 24) = off_285BE5400;
  *(v1 + 10) = off_285BE5458;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 27);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 26);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 25);
  *(v1 + 19) = off_285BE52B8;
  *(v1 + 7) = off_285BE5310;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);

  JUMPOUT(0x24C1ED730);
}

{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 28) = off_285BE5548;
  *(v1 + 9) = off_285BE55A0;
  CFAutoRelease<__CFArray *>::~CFAutoRelease(v1 + 38);
  *(v1 + 24) = off_285BE5400;
  *(v1 + 10) = off_285BE5458;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 27);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 26);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 25);
  *(v1 + 19) = off_285BE52B8;
  *(v1 + 7) = off_285BE5310;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);

  JUMPOUT(0x24C1ED730);
}

{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 28) = off_285BE5548;
  *(v1 + 9) = off_285BE55A0;
  CFAutoRelease<__CFArray *>::~CFAutoRelease(v1 + 38);
  *(v1 + 24) = off_285BE5400;
  *(v1 + 10) = off_285BE5458;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 27);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 26);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 25);
  *(v1 + 19) = off_285BE52B8;
  *(v1 + 7) = off_285BE5310;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);

  JUMPOUT(0x24C1ED730);
}

{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 28) = off_285BE5548;
  *(v1 + 9) = off_285BE55A0;
  CFAutoRelease<__CFArray *>::~CFAutoRelease(v1 + 38);
  *(v1 + 24) = off_285BE5400;
  *(v1 + 10) = off_285BE5458;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 27);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 26);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 25);
  *(v1 + 19) = off_285BE52B8;
  *(v1 + 7) = off_285BE5310;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);

  JUMPOUT(0x24C1ED730);
}

{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 28) = off_285BE5548;
  *(v1 + 9) = off_285BE55A0;
  CFAutoRelease<__CFArray *>::~CFAutoRelease(v1 + 38);
  *(v1 + 24) = off_285BE5400;
  *(v1 + 10) = off_285BE5458;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 27);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 26);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 25);
  *(v1 + 19) = off_285BE52B8;
  *(v1 + 7) = off_285BE5310;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk toinfo::DiskImageInfoASIF::~DiskImageInfoASIF(info::DiskImageInfoASIF *this)
{
  v1 = this + *(*this - 24);
  *(v1 + 28) = off_285BE5548;
  *(v1 + 9) = off_285BE55A0;
  CFAutoRelease<__CFArray *>::~CFAutoRelease(v1 + 38);
  *(v1 + 24) = off_285BE5400;
  *(v1 + 10) = off_285BE5458;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 27);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 26);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 25);
  *(v1 + 19) = off_285BE52B8;
  *(v1 + 7) = off_285BE5310;

  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);
}

{
  v1 = this + *(*this - 24);
  *(v1 + 28) = off_285BE5548;
  *(v1 + 9) = off_285BE55A0;
  CFAutoRelease<__CFArray *>::~CFAutoRelease(v1 + 38);
  *(v1 + 24) = off_285BE5400;
  *(v1 + 10) = off_285BE5458;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 27);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 26);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 25);
  *(v1 + 19) = off_285BE52B8;
  *(v1 + 7) = off_285BE5310;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 23);

  JUMPOUT(0x24C1ED730);
}

const void **virtual thunk toinfo::DiskImageInfoASIF::serialize_to_dict@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  return info::DiskImageInfoASIF::serialize_to_dict((a1 + *(*a1 - 40)), a2);
}

{
  return info::DiskImageInfoASIF::serialize_to_dict((a1 + *(*a1 - 40)), a2);
}

{
  return info::DiskImageInfoASIF::serialize_to_dict((a1 + *(*a1 - 40)), a2);
}

__CFString *virtual thunk toinfo::DiskImageInfoASIF::get_category()
{
  return @"ASIF";
}

{
  return @"ASIF";
}

{
  return @"ASIF";
}

uint64_t di_asif::header::get_dir_offset(di_asif::header *this, uint64_t a2)
{
  if (a2)
  {
    if (a2 != 1)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      DiskImagesRuntimeException::DiskImagesRuntimeException(exception, "ASIF: invalid dir index to header", 0x16u);
    }

    v2 = 24;
  }

  else
  {
    v2 = 16;
  }

  return this + v2;
}

void DiskImage::extents_t::~extents_t(DiskImage::extents_t *this)
{
  std::__function::__value_func<std::unique_ptr<DiskImage::base_extents_iterator_interface> ()(DiskImage::extents_t const&,unsigned long long)>::~__value_func[abi:ne200100](this + 56);
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }
}

atomic_ullong *ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(atomic_ullong *a1)
{
  result = atomic_exchange(a1, 0);
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFFFFFFFFFFLL) == 1)
    {
      v2 = result[4];
      result[4] = -1;
      return ref::details::ctrl_blk<di_asif::details::table,unsigned long long>::reset_val(result, v2, 1u);
    }
  }

  return result;
}

uint64_t ref::details::ctrl_blk<di_asif::details::table,unsigned long long>::reset_val(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if ((*(a1 + 520) & 1) != 0 || (v6 = atomic_load((a1 + 24)), v6 != 2))
  {
    v8 = (a3 >> 1) & 2;
  }

  else
  {
    v7 = ref::details::ctrl_blk<di_asif::details::table,unsigned long long>::close<di_asif::details::table,int>(a1);
    v8 = (a3 >> 1) & 2;
    if (v7)
    {
      if ((a3 & 2) == 0)
      {
        if (a3)
        {
          std::function<void ()(ref::details::ctrl_blk<di_asif::details::table,unsigned long long> *,unsigned long long,diskimage_uio::option_set_ns::option_set<ref::details::deleter_options>)>::operator()(a1 + 408, a1, a2, v8 | 1);
        }

        return 0;
      }

      *&v11 = "ref::details::ctrl_blk<di_asif::details::table, unsigned long long>::reset_val(tag_t, details::reset_val_option_set) [T = di_asif::details::table, tag_t = unsigned long long]";
      *(&v11 + 1) = 78;
      v12 = 16;
      di_log::logger<di_log::log_printer<210ul>>::logger(v13, &v11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "Got error when trying to close ", 31);
      MEMORY[0x24C1ED3E0](&v14, a2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, " with ret ", 10);
      MEMORY[0x24C1ED390](&v14, v7);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, ", Force closing.", 16);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<210ul>>::~logger_buf(v13);
      MEMORY[0x24C1ED6A0](&v15);
    }
  }

  atomic_store(0, (a1 + 24));
  if (*(a1 + 400) == 1)
  {
    std::mutex::~mutex((a1 + 320));
    std::deque<std::atomic<DiskImage::Context *>>::~deque[abi:ne200100]((a1 + 272));
    std::mutex::~mutex((a1 + 208));
    std::mutex::~mutex((a1 + 144));
    v10 = *(a1 + 112);
    if (v10)
    {
      *(a1 + 120) = v10;
      operator delete(v10);
    }

    std::unique_ptr<di_asif::details::table_entry,std::function<void ()(di_asif::details::table_entry*)>>::reset[abi:ne200100]((a1 + 56), 0);
    std::__function::__value_func<void ()(di_asif::details::table_entry *)>::~__value_func[abi:ne200100](a1 + 64);
    *(a1 + 400) = 0;
  }

  std::function<void ()(ref::details::ctrl_blk<di_asif::details::table,unsigned long long> *,unsigned long long,diskimage_uio::option_set_ns::option_set<ref::details::deleter_options>)>::operator()(a1 + 408, a1, a2, v8);
  std::__cxx_atomic_notify_all((a1 + 24));
  return 1;
}

void sub_248E93700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<210ul>>::~logger(va);
  _Unwind_Resume(a1);
}

uint64_t ref::details::ctrl_blk<di_asif::details::table,unsigned long long>::close<di_asif::details::table,int>(uint64_t a1)
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
    return di_asif::details::table::close((a1 + 40));
  }
}

void *di_log::logger<di_log::log_printer<210ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<210ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BE5788;
  a1[45] = &unk_285BE5888;
  a1[46] = &unk_285BE58B0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BE5788;
  a1[45] = &unk_285BE5810;
  a1[46] = &unk_285BE5838;
  return a1;
}

void sub_248E93868(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<210ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<210ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<210ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t std::function<void ()(ref::details::ctrl_blk<di_asif::details::table,unsigned long long> *,unsigned long long,diskimage_uio::option_set_ns::option_set<ref::details::deleter_options>)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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

uint64_t di_log::logger_buf<di_log::log_printer<210ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BE5920;
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

void sub_248E939E0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<210ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE5920;
  di_log::logger_buf<di_log::log_printer<210ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<210ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<210ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<210ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<210ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<210ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<210ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<210ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<210ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<210ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<210ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<210ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<210ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<210ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<210ul>::log((a1 + 72), __p);
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

void sub_248E94008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<210ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 210;
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
      v22 = 210;
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

uint64_t *std::unique_ptr<di_asif::details::table_entry,std::function<void ()(di_asif::details::table_entry*)>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return std::function<void ()(di_asif::details::table_entry *)>::operator()((result + 1), v3);
  }

  return result;
}

uint64_t std::function<void ()(di_asif::details::table_entry *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__function::__value_func<void ()(di_asif::details::table_entry *)>::~__value_func[abi:ne200100](uint64_t a1)
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

atomic_ullong *ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(atomic_ullong *a1)
{
  result = atomic_exchange(a1, 0);
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFFFFFFFFFFLL) == 1)
    {
      v2 = result[4];
      result[4] = -1;
      return ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::reset_val(result, v2, 1u);
    }
  }

  return result;
}

uint64_t ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::reset_val(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if ((*(a1 + 344) & 1) == 0 && (v6 = atomic_load((a1 + 24)), v6 == 2) && *(a1 + 224) == 1 && (v7 = *(a1 + 320)) != 0)
  {
    v8 = (*(*v7 + 48))(v7, a1 + 40);
    v9 = (a3 >> 1) & 2;
    if (v8)
    {
      if ((a3 & 2) == 0)
      {
        if (a3)
        {
          std::function<void ()(ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long> *,unsigned long long,diskimage_uio::option_set_ns::option_set<ref::details::deleter_options>)>::operator()(a1 + 232, a1, a2, v9 | 1);
        }

        return 0;
      }

      *&v11 = "ref::details::ctrl_blk<di_asif::details::map_element, unsigned long long>::reset_val(tag_t, details::reset_val_option_set) [T = di_asif::details::map_element, tag_t = unsigned long long]";
      *(&v11 + 1) = 84;
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
  if (*(a1 + 224) == 1)
  {
    std::mutex::~mutex((a1 + 160));
    *(a1 + 72) = &unk_285BE59A0;
    std::unique_ptr<unsigned long long,std::function<void ()(unsigned long long *)>>::reset[abi:ne200100]((a1 + 96), 0);
    std::__function::__value_func<void ()(unsigned long long *)>::~__value_func[abi:ne200100](a1 + 104);
    *(a1 + 224) = 0;
  }

  std::function<void ()(ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long> *,unsigned long long,diskimage_uio::option_set_ns::option_set<ref::details::deleter_options>)>::operator()(a1 + 232, a1, a2, v9);
  std::__cxx_atomic_notify_all((a1 + 24));
  return 1;
}

void sub_248E94544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<210ul>>::~logger(va);
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long> *,unsigned long long,diskimage_uio::option_set_ns::option_set<ref::details::deleter_options>)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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

void lock_free::bitmap_dynamically_allocated_t::~bitmap_dynamically_allocated_t(lock_free::bitmap_dynamically_allocated_t *this)
{
  *this = &unk_285BE59A0;
  v1 = this + 32;
  std::unique_ptr<unsigned long long,std::function<void ()(unsigned long long *)>>::reset[abi:ne200100](this + 3, 0);
  std::__function::__value_func<void ()(unsigned long long *)>::~__value_func[abi:ne200100](v1);
}

{
  *this = &unk_285BE59A0;
  v1 = this + 32;
  std::unique_ptr<unsigned long long,std::function<void ()(unsigned long long *)>>::reset[abi:ne200100](this + 3, 0);
  std::__function::__value_func<void ()(unsigned long long *)>::~__value_func[abi:ne200100](v1);

  JUMPOUT(0x24C1ED730);
}

{
  *this = &unk_285BE59A0;
  v1 = this + 32;
  std::unique_ptr<unsigned long long,std::function<void ()(unsigned long long *)>>::reset[abi:ne200100](this + 3, 0);
  std::__function::__value_func<void ()(unsigned long long *)>::~__value_func[abi:ne200100](v1);
}

uint64_t *std::unique_ptr<unsigned long long,std::function<void ()(unsigned long long *)>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return std::function<void ()(unsigned long long *)>::operator()((result + 1), v3);
  }

  return result;
}

uint64_t std::function<void ()(unsigned long long *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__function::__value_func<void ()(unsigned long long *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t crypto::generate_random_bytes(crypto *this, size_t a2)
{
  result = CCRandomGenerateBytes(this, a2);
  if (result)
  {
    v4 = result;
    exception = __cxa_allocate_exception(0x40uLL);
    std::ostringstream::basic_ostringstream[abi:ne200100](v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "random generation failed with err code ", 39);
    MEMORY[0x24C1ED390](v5, v4);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, v5, 0x9Au);
  }

  return result;
}

void sub_248E9482C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

crypto::public_key_header *crypto::public_key_header::public_key_header(crypto::public_key_header *this, const char *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  LODWORD(v10[0]) = 0;
  smart_enums::validators::value<unsigned int>("public_key_crypto_algo_mode", 0, v10, 1);
  bzero(this + 48, 0x204uLL);
  LODWORD(v10[0]) = bswap32(*a2);
  vbuf::vbuf_t<Wrapper<unsigned char [32],std::integral_constant<BOOL,true>,print_as_buffer<unsigned char [32]>>,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,1ul>::set_len(this, v10);
  v4 = *(a2 + 4);
  *(this + 20) = *(a2 + 20);
  *(this + 4) = v4;
  v5 = bswap32(*(a2 + 9));
  LODWORD(v10[0]) = 42;
  smart_enums::validators::value<unsigned int>("public_key_crypto_algo", v5, v10, 1);
  *(this + 9) = v5;
  v6 = bswap32(*(a2 + 10));
  v10[0] = 0x800000010000000ALL;
  smart_enums::validators::value<unsigned int>("public_key_padding_algo", v6, v10, 2);
  *(this + 10) = v6;
  v7 = bswap32(*(a2 + 11));
  LODWORD(v10[0]) = 0;
  smart_enums::validators::value<unsigned int>("public_key_crypto_algo_mode", v7, v10, 1);
  *(this + 11) = v7;
  LODWORD(v10[0]) = bswap32(*(a2 + 12));
  vbuf::vbuf_t<Wrapper<unsigned char [512],std::integral_constant<BOOL,true>,print_as_buffer<unsigned char [512]>>,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,1ul>::set_len(this + 12, v10);
  memcpy(this + 52, a2 + 52, 0x200uLL);
  v8 = *MEMORY[0x277D85DE8];
  return this;
}

crypto::public_key_header *crypto::public_key_header::public_key_header(crypto::public_key_header *this)
{
  v4[1] = *MEMORY[0x277D85DE8];
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 4) = 0x2A00000000;
  LODWORD(v4[0]) = 42;
  smart_enums::validators::value<unsigned int>("public_key_crypto_algo", 42, v4, 1);
  *(this + 10) = 10;
  v4[0] = 0x800000010000000ALL;
  smart_enums::validators::value<unsigned int>("public_key_padding_algo", 10, v4, 2);
  *(this + 11) = 0;
  LODWORD(v4[0]) = 0;
  smart_enums::validators::value<unsigned int>("public_key_crypto_algo_mode", 0, v4, 1);
  bzero(this + 48, 0x204uLL);
  v2 = *MEMORY[0x277D85DE8];
  return this;
}

uint64_t crypto::public_key_header::get_crypto_algo_and_padding(crypto::public_key_header *this)
{
  if (*(this + 9) != 42)
  {
    goto LABEL_7;
  }

  v1 = *(this + 10);
  if (v1 == 10)
  {
    v2 = MEMORY[0x277CDC368];
    return *v2;
  }

  if (v1 != -2147483647)
  {
LABEL_7:
    exception = __cxa_allocate_exception(0x40uLL);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, "Unsupported public key algorithm.", 0xA1u);
  }

  v2 = MEMORY[0x277CDC358];
  return *v2;
}

char *crypto::public_key_header::write(crypto::public_key_header *this, char *a2)
{
  *a2 = bswap32(*this);
  v3 = *(this + 4);
  *(a2 + 20) = *(this + 20);
  *(a2 + 4) = v3;
  *(a2 + 9) = bswap32(*(this + 9));
  *(a2 + 10) = bswap32(*(this + 10));
  *(a2 + 11) = bswap32(*(this + 11));
  *(a2 + 12) = bswap32(*(this + 12));
  memcpy(a2 + 52, this + 52, 0x200uLL);
  return a2 + 564;
}

crypto::passphrase_header *crypto::passphrase_header::passphrase_header(crypto::passphrase_header *this, const char *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  bzero(this, 0x268uLL);
  v4 = bswap32(*a2);
  LODWORD(v13[0]) = 103;
  smart_enums::validators::value<unsigned int>("key_derivation_algorithm_t", v4, v13, 1);
  *this = v4;
  v5 = bswap32(*(a2 + 1));
  LODWORD(v13[0]) = 0;
  smart_enums::validators::value<unsigned int>("key_derivation_prng_algorithm_t", v5, v13, 1);
  *(this + 1) = v5;
  *(this + 2) = bswap32(*(a2 + 2));
  LODWORD(v13[0]) = bswap32(*(a2 + 3));
  vbuf::vbuf_t<Wrapper<unsigned char [32],std::integral_constant<BOOL,true>,print_as_buffer<unsigned char [32]>>,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,1ul>::set_len(this + 3, v13);
  v6 = *(a2 + 2);
  *(this + 1) = *(a2 + 1);
  *(this + 2) = v6;
  LODWORD(v13[0]) = bswap32(*(a2 + 12));
  vbuf::vbuf_t<Wrapper<unsigned char [32],std::integral_constant<BOOL,true>,print_as_buffer<unsigned char [32]>>,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,1ul>::set_len(this + 12, v13);
  v7 = *(a2 + 52);
  *(this + 68) = *(a2 + 68);
  *(this + 52) = v7;
  *(this + 21) = bswap32(*(a2 + 21));
  v8 = bswap32(*(a2 + 22));
  v13[0] = 0x8000000100000011;
  smart_enums::validators::value<unsigned int>("wrap_key_crypto_algo", v8, v13, 2);
  *(this + 22) = v8;
  v9 = bswap32(*(a2 + 23));
  LODWORD(v13[0]) = 7;
  smart_enums::validators::value<unsigned int>("wrap_key_crypto_padding_algo", v9, v13, 1);
  *(this + 23) = v9;
  v10 = bswap32(*(a2 + 24));
  LODWORD(v13[0]) = 6;
  smart_enums::validators::value<unsigned int>("crypto_mode", v10, v13, 1);
  *(this + 24) = v10;
  LODWORD(v13[0]) = bswap32(*(a2 + 25));
  vbuf::vbuf_t<Wrapper<unsigned char [512],std::integral_constant<BOOL,true>,print_as_buffer<unsigned char [512]>>,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,1ul>::set_len(this + 25, v13);
  memcpy(this + 104, a2 + 104, 0x200uLL);
  v11 = *MEMORY[0x277D85DE8];
  return this;
}

char *crypto::passphrase_header::write(crypto::passphrase_header *this, char *a2)
{
  *a2 = bswap32(*this);
  *(a2 + 1) = bswap32(*(this + 1));
  *(a2 + 2) = bswap32(*(this + 2));
  *(a2 + 3) = bswap32(*(this + 3));
  v3 = *(this + 2);
  *(a2 + 1) = *(this + 1);
  *(a2 + 2) = v3;
  *(a2 + 12) = bswap32(*(this + 12));
  v4 = *(this + 52);
  *(a2 + 68) = *(this + 68);
  *(a2 + 52) = v4;
  *(a2 + 21) = bswap32(*(this + 21));
  *(a2 + 22) = bswap32(*(this + 22));
  *(a2 + 23) = bswap32(*(this + 23));
  *(a2 + 24) = bswap32(*(this + 24));
  *(a2 + 25) = bswap32(*(this + 25));
  memcpy(a2 + 104, this + 104, 0x200uLL);
  return a2 + 616;
}

crypto::passphrase_header *crypto::passphrase_header::passphrase_header(crypto::passphrase_header *this)
{
  v4[1] = *MEMORY[0x277D85DE8];
  *this = 103;
  LODWORD(v4[0]) = 103;
  smart_enums::validators::value<unsigned int>("key_derivation_algorithm_t", 103, v4, 1);
  *(this + 1) = 0;
  LODWORD(v4[0]) = 0;
  smart_enums::validators::value<unsigned int>("key_derivation_prng_algorithm_t", 0, v4, 1);
  *(this + 68) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 84) = 0x11000000C0;
  v4[0] = 0x8000000100000011;
  smart_enums::validators::value<unsigned int>("wrap_key_crypto_algo", 17, v4, 2);
  *(this + 23) = 7;
  LODWORD(v4[0]) = 7;
  smart_enums::validators::value<unsigned int>("wrap_key_crypto_padding_algo", 7, v4, 1);
  *(this + 24) = 6;
  LODWORD(v4[0]) = 6;
  smart_enums::validators::value<unsigned int>("crypto_mode", 6, v4, 1);
  bzero(this + 100, 0x204uLL);
  LODWORD(v4[0]) = 20;
  vbuf::vbuf_t<Wrapper<unsigned char [32],std::integral_constant<BOOL,true>,print_as_buffer<unsigned char [32]>>,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,1ul>::set_len(this + 3, v4);
  LODWORD(v4[0]) = 8;
  vbuf::vbuf_t<Wrapper<unsigned char [32],std::integral_constant<BOOL,true>,print_as_buffer<unsigned char [32]>>,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,1ul>::set_len(this + 12, v4);
  crypto::generate_random_bytes((this + 16), *(this + 3));
  crypto::generate_random_bytes((this + 52), *(this + 12));
  v2 = *MEMORY[0x277D85DE8];
  return this;
}

_DWORD *vbuf::vbuf_t<Wrapper<unsigned char [32],std::integral_constant<BOOL,true>,print_as_buffer<unsigned char [32]>>,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,1ul>::set_len(_DWORD *result, _DWORD *a2)
{
  if (*a2 >= 0x21u)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = &unk_285BE70F8;
    exception[1] = "bla";
    exception[2] = "field size too large";
  }

  *result = *a2;
  return result;
}

uint64_t crypto::passphrase_header::get_derived_key_encryption_algorithm(crypto::passphrase_header *this)
{
  v1 = *(this + 22);
  if (v1 == -2147483647)
  {
    return 0;
  }

  if (v1 != 17)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::ostringstream::basic_ostringstream[abi:ne200100](v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Unsupported key decryption algo", 31);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, v4, 0xA1u);
  }

  return 2;
}

void sub_248E95750(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

crypto::symmetric_key_header *crypto::symmetric_key_header::symmetric_key_header(crypto::symmetric_key_header *this, const char *a2)
{
  bzero(this, 0x22CuLL);
  v7 = bswap32(*a2);
  vbuf::vbuf_t<Wrapper<unsigned char [32],std::integral_constant<BOOL,true>,print_as_buffer<unsigned char [32]>>,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,1ul>::set_len(this, &v7);
  v4 = *(a2 + 4);
  *(this + 20) = *(a2 + 20);
  *(this + 4) = v4;
  v5 = bswap32(*(a2 + 9));
  v8 = -2147483647;
  smart_enums::validators::value<unsigned int>("wrap_key_crypto_algo", v5, &v8, 1);
  *(this + 9) = v5;
  v9 = bswap32(*(a2 + 10));
  vbuf::vbuf_t<Wrapper<unsigned char [512],std::integral_constant<BOOL,true>,print_as_buffer<unsigned char [512]>>,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,1ul>::set_len(this + 10, &v9);
  memcpy(this + 44, a2 + 44, 0x200uLL);
  return this;
}

char *crypto::symmetric_key_header::write(crypto::symmetric_key_header *this, char *a2)
{
  *a2 = bswap32(*this);
  v3 = *(this + 4);
  *(a2 + 20) = *(this + 20);
  *(a2 + 4) = v3;
  *(a2 + 9) = bswap32(*(this + 9));
  *(a2 + 10) = bswap32(*(this + 10));
  memcpy(a2 + 44, this + 44, 0x200uLL);
  return a2 + 556;
}

uint64_t crypto::symmetric_key_header::get_derived_key_encryption_algorithm(crypto::symmetric_key_header *this)
{
  if (*(this + 9) != -2147483647)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::ostringstream::basic_ostringstream[abi:ne200100](v3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Unsupported key decryption algo", 31);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, v3, 0xA1u);
  }

  return 0;
}

void sub_248E95A54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t crypto::auth_entry_descriptor::auth_entry_descriptor(uint64_t this, const char *a2)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = bswap32(*a2);
  *(this + 4) = bswap64(*(a2 + 4));
  *(this + 12) = bswap64(*(a2 + 12));
  return this;
}

char *crypto::auth_entry_descriptor::write(crypto::auth_entry_descriptor *this, char *a2)
{
  *a2 = bswap32(*this);
  *(a2 + 4) = bswap64(*(this + 4));
  *(a2 + 12) = bswap64(*(this + 12));
  return a2 + 20;
}

uint64_t *crypto::keys::keys(uint64_t *a1, uint64_t *a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    v6 = a3;
    v7 = a4 >> 3;
    v8 = a5 >> 3;
    v9 = *a2;
    v10 = (a5 >> 3) + (a4 >> 3);
    do
    {
      v15[0] = 0;
      v15[1] = 0;
      v16 = 0;
      std::vector<std::byte>::__init_with_size[abi:ne200100]<std::__wrap_iter<std::byte*>,std::__wrap_iter<std::byte*>>(v15, v9, v7 + v9, v7);
      __p[0] = 0;
      __p[1] = 0;
      v18 = 0;
      std::vector<std::byte>::__init_with_size[abi:ne200100]<std::__wrap_iter<std::byte*>,std::__wrap_iter<std::byte*>>(__p, v7 + v9, v10 + v9, v8);
      v11 = a1[1];
      if (v11 >= a1[2])
      {
        v12 = std::vector<crypto::keys::key_pair>::__emplace_back_slow_path<crypto::keys::key_pair>(a1, v15);
        v13 = __p[0];
        a1[1] = v12;
        if (v13)
        {
          __p[1] = v13;
          operator delete(v13);
        }
      }

      else
      {
        v11[2] = 0;
        v11[3] = 0;
        *v11 = 0;
        v11[1] = 0;
        *v11 = *v15;
        v11[2] = v16;
        v15[0] = 0;
        v15[1] = 0;
        v16 = 0;
        v11[4] = 0;
        v11[5] = 0;
        *(v11 + 3) = *__p;
        v11[5] = v18;
        __p[0] = 0;
        __p[1] = 0;
        v18 = 0;
        a1[1] = (v11 + 6);
      }

      if (v15[0])
      {
        v15[1] = v15[0];
        operator delete(v15[0]);
      }

      v9 += v10;
      --v6;
    }

    while (v6);
  }

  return a1;
}

void sub_248E95C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  crypto::keys::key_pair::~key_pair(&__p);
  std::vector<crypto::keys::key_pair>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void *crypto::auth_table::get_entry@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*a2 == *(a1 + 8))
  {
    result = std::generic_category();
    *a3 = a1;
    *(a3 + 8) = 0;
    *(a3 + 16) = 22;
    *(a3 + 24) = result;
LABEL_7:
    *(a3 + 632) = 4;
    goto LABEL_8;
  }

  result = (*(**(a1 + 24) + 8))(v7);
  if (v8 != 1)
  {
    *a3 = a1;
    *(a3 + 8) = 0;
    *(a3 + 16) = v7[0];
    goto LABEL_7;
  }

  result = std::__variant_detail::__move_constructor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a3, v7);
  if (v8)
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v7);
  }

LABEL_8:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248E95D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (STACK[0x280])
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a9);
  }

  _Unwind_Resume(a1);
}

void crypto::auth_table::init_auth_descriptors(void (****this)(__int128 *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  (**this[3])(&v6);
  if (v8 == 1)
  {
    v4 = *this;
    if (*this)
    {
      this[1] = v4;
      operator delete(v4);
    }

    *this = v6;
    this[2] = v7;
    v7 = 0;
    v6 = 0uLL;
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *a2 = v6;
  }

  *(a2 + 16) = v5;
}

uint64_t crypto::auth_table::replace@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = *a2;
  v24 = *(a2 + 4);
  if (*(a2 + 20) == 1)
  {
    *(a2 + 20) = 0;
  }

  v6 = *(a1 + 8);
  v7 = a3[1];
  if (*a3 == a1 && v7 == v6)
  {
    v11 = *(a1 + 16);
    if (v6 >= v11)
    {
      v14 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - *a1) >> 2);
      v15 = v14 + 1;
      if (v14 + 1 > 0xCCCCCCCCCCCCCCCLL)
      {
        std::vector<iovec>::__throw_length_error[abi:ne200100]();
      }

      v16 = 0xCCCCCCCCCCCCCCCDLL * ((v11 - *a1) >> 2);
      if (2 * v16 > v15)
      {
        v15 = 2 * v16;
      }

      if (v16 >= 0x666666666666666)
      {
        v17 = 0xCCCCCCCCCCCCCCCLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        std::allocator<crypto::auth_entry_descriptor>::allocate_at_least[abi:ne200100](a1, v17);
      }

      v18 = 20 * v14;
      *v18 = v23;
      *(v18 + 16) = v24;
      v13 = 20 * v14 + 20;
      v19 = *(a1 + 8) - *a1;
      v20 = 20 * v14 - v19;
      memcpy((v18 - v19), *a1, v19);
      v21 = *a1;
      *a1 = v20;
      *(a1 + 8) = v13;
      *(a1 + 16) = 0;
      if (v21)
      {
        operator delete(v21);
      }
    }

    else
    {
      v12 = *a2;
      *(v6 + 16) = *(a2 + 4);
      *v6 = v12;
      v13 = v6 + 20;
    }

    *(a1 + 8) = v13;
    *&v26 = a1;
    *(&v26 + 1) = v13 - 20;
    v27[0] = 0;
    v28 = 0;
    *a4 = v26;
    result = std::__optional_move_base<std::variant<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,false>::__optional_move_base[abi:ne200100]((a4 + 16), v27);
  }

  else
  {
    v9 = *a2;
    *(v7 + 16) = *(a2 + 4);
    *v7 = v9;
    *&v25 = a1;
    *(&v25 + 1) = v7;
    v27[0] = 0;
    v28 = 0;
    *a4 = v25;
    result = std::__optional_move_base<std::variant<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,false>::__optional_move_base[abi:ne200100]((a4 + 16), v27);
  }

  *(a4 + 664) = 1;
  if (v28 == 1)
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v27);
  }

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248E96018(_Unwind_Exception *a1)
{
  if (LOBYTE(STACK[0x2B0]) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v1 + 16);
  }

  _Unwind_Resume(a1);
}

void crypto::auth_entry_base::extract_keys_from_blob(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  (*(**(*a1 + 24) + 32))(&v10);
  if (v11)
  {
    v4 = (*(**(v3 + 24) + 24))(*(v3 + 24), 0);
    crypto::validate_key_size(v4, &v8);
    if (v9)
    {
      v5 = (*(**(v3 + 24) + 24))(*(v3 + 24), 1);
      crypto::validate_key_size(v5, &v8);
      if (v9)
      {
        v6 = (*(**(v3 + 24) + 16))(*(v3 + 24));
        crypto::keys::keys(&v8, &v10, v6, v4, v5);
        *a2 = v8;
        *(a2 + 16) = v9;
        v9 = 0;
        v8 = 0uLL;
        *(a2 + 24) = 1;
        v12 = &v8;
        std::vector<crypto::keys::key_pair>::__destroy_vector::operator()[abi:ne200100](&v12);
        return;
      }
    }

    v7 = v8;
  }

  else
  {
    v7 = v10;
  }

  *a2 = v7;
  *(a2 + 24) = 0;
}

uint64_t crypto::validate_key_size@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  if (this < 1 || (this & 7) != 0)
  {
    *&v5 = "diskimage_err> crypto::validate_key_size(ssize_t)";
    *(&v5 + 1) = 40;
    v6 = 16;
    di_log::logger<di_log::log_printer<259ul>>::logger(v7, &v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "Key size isn't a multiple of 8", 30);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<259ul>>::~logger_buf(v7);
    MEMORY[0x24C1ED6A0](&v9);
    this = make_error_code(152);
    v3 = 0;
    *a2 = this;
    *(a2 + 8) = v4;
  }

  else
  {
    v3 = 1;
  }

  *(a2 + 16) = v3;
  return this;
}

void sub_248E96278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<259ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void crypto::auth_entry_ns::passphrase::create(crypto::auth_entry_ns::passphrase *this@<X1>, uint64_t a2@<X0>, int *a3@<X2>, void (***a4)(void **__return_ptr, void)@<X3>, uint64_t a5@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  crypto::auth_entry_ns::passphrase::validate_passphrase(this, v36);
  if ((v36[16] & 1) == 0)
  {
    v19 = *v36;
LABEL_8:
    *a5 = v19;
    *(a5 + 628) = 0;
    goto LABEL_9;
  }

  v10 = *a3;
  crypto::passphrase_header::passphrase_header(v29);
  *v36 = a2;
  *&v36[8] = v10;
  v39 = v30;
  *&v36[12] = v29[0];
  v37 = v29[1];
  v38 = v29[2];
  v40 = v31;
  v41 = v32;
  v42 = v33;
  v43 = v34;
  memcpy(dataOut, v35, 0x200uLL);
  LODWORD(v29[0]) = 8;
  vbuf::vbuf_t<Wrapper<unsigned char [32],std::integral_constant<BOOL,true>,print_as_buffer<unsigned char [32]>>,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,1ul>::set_len(&v39, v29);
  v11 = strlen(this);
  *&v36[20] = CCCalibratePBKDF(2u, v11, *&v36[24], 1u, v42 >> 3, 0x64u);
  (**a4)(__p, a4);
  if (v28 != 1)
  {
    v19 = *__p;
    goto LABEL_8;
  }

  dataOutMoved = 0;
  crypto::auth_entry_ns::passphrase::generate_derivation_key(v36, this, &v24);
  if (v25)
  {
    derived_key_encryption_algorithm = crypto::passphrase_header::get_derived_key_encryption_algorithm(&v36[12]);
    v13 = v24;
    v14 = *(&v24 + 1) - v24;
    v15 = CCCrypt(0, derived_key_encryption_algorithm, 1u, v24, *(&v24 + 1) - v24, &v40, __p[0], __p[1] - __p[0], dataOut, 0x200uLL, &dataOutMoved);
    bzero(v13, v14);
    if (v15)
    {
      *&v22 = "std::expected<passphrase, diskimage_err> crypto::auth_entry_ns::passphrase::create(const auth_table &, const char *, diskimage_uio::option_set<locked_entity> &&, serializer_t &)";
      *(&v22 + 1) = 82;
      v23 = 16;
      di_log::logger<di_log::log_printer<321ul>>::logger(v29, &v22);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35[32], "Image key encoding failed with err code ", 40);
      MEMORY[0x24C1ED390](&v35[32], v15);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<321ul>>::~logger_buf(v29);
      MEMORY[0x24C1ED6A0](&v35[33]);
      error_code = make_error_code(154);
      v17 = 0;
      *a5 = error_code;
      *(a5 + 8) = v18;
    }

    else
    {
      LODWORD(v29[0]) = dataOutMoved;
      vbuf::vbuf_t<Wrapper<unsigned char [512],std::integral_constant<BOOL,true>,print_as_buffer<unsigned char [512]>>,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,1ul>::set_len(&v43, v29);
      *a5 = *v36;
      *(a5 + 12) = *&v36[12];
      *(a5 + 28) = v37;
      *(a5 + 44) = v38;
      *(a5 + 60) = v39;
      v21 = v41;
      *(a5 + 64) = v40;
      *(a5 + 80) = v21;
      *(a5 + 96) = v42;
      *(a5 + 112) = v43;
      memcpy((a5 + 116), dataOut, 0x200uLL);
      v17 = 1;
    }

    *(a5 + 628) = v17;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *a5 = v24;
    *(a5 + 628) = 0;
  }

  if ((v28 & 1) != 0 && __p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

LABEL_9:
  v20 = *MEMORY[0x277D85DE8];
}

void sub_248E965B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, char a24, int a25, __int16 a26, char a27, char a28)
{
  if (v28)
  {
    operator delete(v28);
  }

  if (a24 == 1)
  {
    if (__p)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

unint64_t crypto::auth_entry_ns::passphrase::validate_passphrase@<X0>(crypto::auth_entry_ns::passphrase *this@<X0>, uint64_t a2@<X8>)
{
  if (this && *this)
  {
    result = strnlen(this, 0x101uLL);
    if (result < 0x101)
    {
      v6 = 1;
      goto LABEL_7;
    }

    v5 = 169;
  }

  else
  {
    v5 = 168;
  }

  result = make_error_code(v5);
  v6 = 0;
  *a2 = result;
  *(a2 + 8) = v7;
LABEL_7:
  *(a2 + 16) = v6;
  return result;
}

double crypto::auth_entry_ns::passphrase::generate_derivation_key@<D0>(crypto::auth_entry_ns::passphrase *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(this + 24);
  crypto::validate_key_size(v6, &v13);
  if (v14)
  {
    LOBYTE(v13) = 0;
    std::vector<std::byte>::vector[abi:ne200100](&v17, v6 >> 3);
    v7 = strlen(a2);
    v8 = CCKeyDerivationPBKDF(2u, a2, v7, this + 28, *(this + 6), 1u, *(this + 5), v17, *(&v17 + 1) - v17);
    if (v8)
    {
      *&v11 = "diskimage_err> crypto::auth_entry_ns::passphrase::generate_derivation_key(const char *) const";
      *(&v11 + 1) = 73;
      v12 = 16;
      di_log::logger<di_log::log_printer<371ul>>::logger(&v13, &v11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "crypto_format: Can't derive key ", 32);
      MEMORY[0x24C1ED390](&v15, v8);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<371ul>>::~logger_buf(&v13);
      MEMORY[0x24C1ED6A0](&v16);
      *a3 = make_error_code(152);
      *(a3 + 8) = v9;
      *(a3 + 24) = 0;
      if (v17)
      {
        *(&v17 + 1) = v17;
        operator delete(v17);
      }
    }

    else
    {
      result = *&v17;
      *a3 = v17;
      *(a3 + 16) = v18;
      *(a3 + 24) = 1;
    }
  }

  else
  {
    result = *&v13;
    *a3 = v13;
    *(a3 + 24) = 0;
  }

  return result;
}

void sub_248E967D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v16 = *(v14 - 80);
  if (v16)
  {
    *(v14 - 72) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void *di_log::logger<di_log::log_printer<321ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<321ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BE5A80;
  a1[45] = &unk_285BE5B80;
  a1[46] = &unk_285BE5BA8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BE5A80;
  a1[45] = &unk_285BE5B08;
  a1[46] = &unk_285BE5B30;
  return a1;
}

void sub_248E9690C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<321ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<321ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<321ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

_DWORD *vbuf::vbuf_t<Wrapper<unsigned char [512],std::integral_constant<BOOL,true>,print_as_buffer<unsigned char [512]>>,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,1ul>::set_len(_DWORD *result, _DWORD *a2)
{
  if (*a2 >= 0x201u)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = &unk_285BE70F8;
    exception[1] = "bla";
    exception[2] = "field size too large";
  }

  *result = *a2;
  return result;
}

double crypto::auth_entry_ns::passphrase::unlock@<D0>(crypto::auth_entry_ns::passphrase *this@<X0>, crypto::auth_entry_ns::passphrase *a2@<X1>, uint64_t a3@<X8>)
{
  crypto::auth_entry_ns::passphrase::validate_passphrase(a2, &v8);
  if ((v9 & 1) != 0 && (crypto::auth_entry_ns::passphrase::generate_wrapped_key(this, a2, &v8), v10 == 1))
  {
    v6 = v8;
    crypto::auth_entry_base::extract_keys_from_blob(this, a3);
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    result = *&v8;
    *a3 = v8;
    *(a3 + 24) = 0;
  }

  return result;
}

void sub_248E96A88(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void crypto::auth_entry_ns::passphrase::generate_wrapped_key(crypto::auth_entry_ns::passphrase *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  __len = 0;
  crypto::auth_entry_ns::passphrase::generate_derivation_key(this, a2, &key);
  if (v18 != 1)
  {
    *a3 = key;
    *(a3 + 24) = 0;
    goto LABEL_12;
  }

  derived_key_encryption_algorithm = crypto::passphrase_header::get_derived_key_encryption_algorithm((this + 12));
  v6 = key;
  v7 = *(&key + 1) - key;
  v8 = CCCrypt(1u, derived_key_encryption_algorithm, 1u, key, *(&key + 1) - key, this + 64, this + 116, *(this + 28), __src, *(this + 28), &__len);
  if (v7 >= 1)
  {
    bzero(v6, v7);
  }

  if (!v8)
  {
    __dst[0] = 0;
    __dst[1] = 0;
    v14 = 0;
    std::vector<std::byte>::reserve(__dst, __len);
    std::vector<std::byte>::__insert_with_size[abi:ne200100]<std::byte*,std::byte*>(__dst, __dst[0], __src, &__src[__len], __len);
    *a3 = *__dst;
    *(a3 + 16) = v14;
    *(a3 + 24) = 1;
    if (!v6)
    {
      goto LABEL_12;
    }

LABEL_11:
    operator delete(v6);
    goto LABEL_12;
  }

  *&v11 = "diskimage_err> crypto::auth_entry_ns::passphrase::generate_wrapped_key(const char *) const";
  *(&v11 + 1) = 70;
  v12 = 16;
  di_log::logger<di_log::log_printer<397ul>>::logger(__dst, &v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "crypto_format: Can't decrypt wrapped key ", 41);
  MEMORY[0x24C1ED390](&v15, v8);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<397ul>>::~logger_buf(__dst);
  MEMORY[0x24C1ED6A0](&v16);
  if (v8 < 0)
  {
    LODWORD(v8) = -v8;
  }

  v9 = std::system_category();
  *a3 = v8;
  *(a3 + 8) = v9;
  *(a3 + 24) = 0;
  if (v6)
  {
    goto LABEL_11;
  }

LABEL_12:
  v10 = *MEMORY[0x277D85DE8];
}

void sub_248E96C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v15)
  {
    operator delete(v15);
  }

  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<371ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<371ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BE5CA0;
  a1[45] = &unk_285BE5DA0;
  a1[46] = &unk_285BE5DC8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BE5CA0;
  a1[45] = &unk_285BE5D28;
  a1[46] = &unk_285BE5D50;
  return a1;
}

void sub_248E96DD4(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<371ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<371ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<371ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<397ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<397ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BE5EC0;
  a1[45] = &unk_285BE5FC0;
  a1[46] = &unk_285BE5FE8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BE5EC0;
  a1[45] = &unk_285BE5F48;
  a1[46] = &unk_285BE5F70;
  return a1;
}

void sub_248E96F40(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<397ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<397ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<397ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void crypto::auth_entry_ns::public_key::create(uint64_t a1@<X0>, __SecKey *a2@<X1>, unsigned int *a3@<X2>, void (***a4)(void **__return_ptr, void)@<X3>, uint64_t a5@<X8>)
{
  v42 = *MEMORY[0x277D85DE8];
  v9 = *a3;
  crypto::public_key_header::public_key_header(v33);
  *&v37 = a1;
  *(&v37 + 1) = __PAIR64__(*v33, v9);
  v38 = *&v33[4];
  v39 = v34;
  v40 = v35;
  memcpy(v41, v36, sizeof(v41));
  (**a4)(&__p, a4);
  error = 0;
  v10 = SecKeyCopyExternalRepresentation(a2, &error);
  if (v10)
  {
    theData = v10;
    BytePtr = CFDataGetBytePtr(v10);
    Length = CFDataGetLength(theData);
    CC_SHA1(BytePtr, Length, &v38);
    *v33 = 20;
    vbuf::vbuf_t<Wrapper<unsigned char [32],std::integral_constant<BOOL,true>,print_as_buffer<unsigned char [32]>>,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,1ul>::set_len(&v37 + 3, v33);
    plaintext = CFDataCreate(*MEMORY[0x277CBECE8], __p, v31 - __p);
    if (plaintext)
    {
      crypto_algo_and_padding = crypto::public_key_header::get_crypto_algo_and_padding((&v37 + 12));
      v14 = SecKeyCreateEncryptedData(a2, crypto_algo_and_padding, plaintext, &error);
      if (v14)
      {
        *v33 = v14;
        LODWORD(v27) = CFDataGetLength(v14);
        vbuf::vbuf_t<Wrapper<unsigned char [512],std::integral_constant<BOOL,true>,print_as_buffer<unsigned char [512]>>,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,1ul>::set_len(&v40 + 3, &v27);
        v15 = *v33;
        v43.length = CFDataGetLength(*v33);
        v43.location = 0;
        CFDataGetBytes(v15, v43, v41);
        v16 = HIDWORD(v37);
        v17 = v38;
        *a5 = v37;
        *(a5 + 16) = v17;
        *(a5 + 12) = v16;
        v18 = v40;
        *(a5 + 32) = v39;
        *(a5 + 48) = v18;
        memcpy((a5 + 64), v41, 0x200uLL);
        *(a5 + 576) = 1;
        CFAutoRelease<__CFData const*>::~CFAutoRelease(v33);
LABEL_9:
        CFAutoRelease<__CFData const*>::~CFAutoRelease(&plaintext);
        CFAutoRelease<__CFData const*>::~CFAutoRelease(&theData);
        goto LABEL_10;
      }

      *&v27 = "std::expected<public_key, diskimage_err> crypto::auth_entry_ns::public_key::create(const auth_table &, SecKeyRef, diskimage_uio::option_set<locked_entity> &&, serializer_t &)";
      *(&v27 + 1) = 82;
      v28 = 16;
      di_log::logger<di_log::log_printer<439ul>>::logger(v33, &v27);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36[77], "Failed to encrypt data using public key from certificate", 56);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<439ul>>::~logger_buf(v33);
      MEMORY[0x24C1ED6A0](&v36[79]);
      Code = CFErrorGetCode(error);
      v21 = std::generic_category();
      v22 = Code;
    }

    else
    {
      *&v27 = "std::expected<public_key, diskimage_err> crypto::auth_entry_ns::public_key::create(const auth_table &, SecKeyRef, diskimage_uio::option_set<locked_entity> &&, serializer_t &)";
      *(&v27 + 1) = 82;
      v28 = 16;
      di_log::logger<di_log::log_printer<432ul>>::logger(v33, &v27);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36[77], "Failed to allocate raw blob data", 32);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<432ul>>::~logger_buf(v33);
      MEMORY[0x24C1ED6A0](&v36[79]);
      v21 = std::generic_category();
      v22 = 12;
    }

    *a5 = v22;
    *(a5 + 8) = v21;
    *(a5 + 576) = 0;
    goto LABEL_9;
  }

  *&v27 = "std::expected<public_key, diskimage_err> crypto::auth_entry_ns::public_key::create(const auth_table &, SecKeyRef, diskimage_uio::option_set<locked_entity> &&, serializer_t &)";
  *(&v27 + 1) = 82;
  v28 = 16;
  di_log::logger<di_log::log_printer<421ul>>::logger(v33, &v27);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36[77], "Key from the certificate is not exportable", 42);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<421ul>>::~logger_buf(v33);
  MEMORY[0x24C1ED6A0](&v36[79]);
  v19 = CFErrorGetCode(error);
  v20 = std::generic_category();
  *a5 = v19;
  *(a5 + 8) = v20;
  *(a5 + 576) = 0;
LABEL_10:
  if (v32 == 1 && __p)
  {
    v31 = __p;
    operator delete(__p);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void sub_248E9733C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22)
{
  CFAutoRelease<__CFData const*>::~CFAutoRelease(&a9);
  CFAutoRelease<__CFData const*>::~CFAutoRelease(&a10);
  if (a18 == 1)
  {
    if (__p)
    {
      a16 = __p;
      operator delete(__p);
    }
  }

  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<421ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<421ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BE60E0;
  a1[45] = &unk_285BE61E0;
  a1[46] = &unk_285BE6208;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BE60E0;
  a1[45] = &unk_285BE6168;
  a1[46] = &unk_285BE6190;
  return a1;
}

void sub_248E974F0(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<421ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<421ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<421ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<432ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<432ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BE6300;
  a1[45] = &unk_285BE6400;
  a1[46] = &unk_285BE6428;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BE6300;
  a1[45] = &unk_285BE6388;
  a1[46] = &unk_285BE63B0;
  return a1;
}

void sub_248E9765C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<432ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<432ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<432ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<439ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<439ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BE6520;
  a1[45] = &unk_285BE6620;
  a1[46] = &unk_285BE6648;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BE6520;
  a1[45] = &unk_285BE65A8;
  a1[46] = &unk_285BE65D0;
  return a1;
}

void sub_248E977C8(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<439ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<439ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<439ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

const void **crypto::auth_entry_ns::public_key::generate_wrapped_key@<X0>(const UInt8 *this@<X0>, uint64_t a2@<X8>)
{
  v37[19] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CBECE8];
  v5 = (this + 12);
  v6 = CFDataCreate(*MEMORY[0x277CBECE8], this + 16, *(this + 3));
  v28 = v6;
  v7 = *MEMORY[0x277CDC250];
  *&v29 = *MEMORY[0x277CDC228];
  *(&v29 + 1) = v7;
  v8 = *MEMORY[0x277CDBFF0];
  v30 = *MEMORY[0x277CDBFE0];
  v31 = v8;
  v32 = *MEMORY[0x277CDBF28];
  v33 = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  v9 = *MEMORY[0x277CBED28];
  v34 = *MEMORY[0x277CDC568];
  v35 = v9;
  result = 0;
  *&v21 = &v29;
  *(&v21 + 1) = 4;
  cf::create_dict_from_list(&v21, &query);
  for (i = 56; i != -8; i -= 16)
  {
    CFAutoRelease<void const*>::~CFAutoRelease((&v29 + i));
  }

  CFAutoRelease<__CFBoolean const*>::~CFAutoRelease(&result);
  result = 0;
  if (!SecItemCopyMatching(query, &result))
  {
    error = 0;
    v25 = result;
    ciphertext = CFDataCreate(v4, this + 64, *(this + 15));
    if (ciphertext)
    {
      v12 = v25;
      crypto_algo_and_padding = crypto::public_key_header::get_crypto_algo_and_padding(v5);
      v14 = SecKeyCreateDecryptedData(v12, crypto_algo_and_padding, ciphertext, &error);
      v15 = v14;
      if (v14)
      {
        CFDataCopyToVector(v14, 0, 0, &v29);
        CFRelease(v15);
        *a2 = v29;
        *(a2 + 16) = v30;
        *(a2 + 24) = 1;
LABEL_13:
        CFAutoRelease<__CFData const*>::~CFAutoRelease(&ciphertext);
        CFAutoRelease<__SecKey *>::~CFAutoRelease(&v25);
        goto LABEL_14;
      }

      *&v21 = "diskimage_err> crypto::auth_entry_ns::public_key::generate_wrapped_key() const";
      *(&v21 + 1) = 70;
      v22 = 16;
      di_log::logger<di_log::log_printer<474ul>>::logger(&v29, &v21);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, "Error decrypting data using public key, error code ", 51);
      Code = CFErrorGetCode(error);
      MEMORY[0x24C1ED3B0](&v36, Code);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<474ul>>::~logger_buf(&v29);
      MEMORY[0x24C1ED6A0](v37);
      v18 = std::generic_category();
      *a2 = 35;
      *(a2 + 8) = v18;
    }

    else
    {
      *&v21 = "diskimage_err> crypto::auth_entry_ns::public_key::generate_wrapped_key() const";
      *(&v21 + 1) = 70;
      v22 = 16;
      di_log::logger<di_log::log_printer<468ul>>::logger(&v29, &v21);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, "Failed to create chiper data for public key auth", 48);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<468ul>>::~logger_buf(&v29);
      MEMORY[0x24C1ED6A0](v37);
      *a2 = make_error_code(152);
      *(a2 + 8) = v16;
    }

    *(a2 + 24) = 0;
    goto LABEL_13;
  }

  v11 = std::generic_category();
  *a2 = 35;
  *(a2 + 8) = v11;
  *(a2 + 24) = 0;
LABEL_14:
  CFAutoRelease<__CFDictionary *>::~CFAutoRelease(&query);
  v19 = CFAutoRelease<__CFData const*>::~CFAutoRelease(&v28);
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

void sub_248E97B28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, uint64_t a14, const void *a15, __int16 a16, char a17, char a18, int a19, const void *a20, const void *a21, void *__p, uint64_t a23)
{
  di_log::logger<di_log::log_printer<474ul>>::~logger(&__p);
  CFAutoRelease<__CFData const*>::~CFAutoRelease(&a13);
  CFAutoRelease<__SecKey *>::~CFAutoRelease(&a15);
  CFAutoRelease<__CFDictionary *>::~CFAutoRelease(&a20);
  CFAutoRelease<__CFData const*>::~CFAutoRelease(&a21);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<468ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<468ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BE6740;
  a1[45] = &unk_285BE6840;
  a1[46] = &unk_285BE6868;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BE6740;
  a1[45] = &unk_285BE67C8;
  a1[46] = &unk_285BE67F0;
  return a1;
}

void sub_248E97D00(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<468ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<468ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<468ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<474ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<474ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BE6960;
  a1[45] = &unk_285BE6A60;
  a1[46] = &unk_285BE6A88;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BE6960;
  a1[45] = &unk_285BE69E8;
  a1[46] = &unk_285BE6A10;
  return a1;
}

void sub_248E97E6C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<474ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<474ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<474ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

double crypto::auth_entry_ns::public_key::unlock@<D0>(UInt8 *this@<X0>, uint64_t a2@<X8>)
{
  crypto::auth_entry_ns::public_key::generate_wrapped_key(this, v6);
  if (v7 == 1)
  {
    v4 = v6[0];
    crypto::auth_entry_base::extract_keys_from_blob(this, a2);
    if (v4 != 0.0)
    {
      operator delete(*&v4);
    }
  }

  else
  {
    result = v6[0];
    *a2 = *v6;
    *(a2 + 24) = 0;
  }

  return result;
}

void sub_248E97F54(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void crypto::auth_entry_ns::symmetric_key::create(CFTypeRef cf@<X1>, uint64_t a2@<X0>, int *a3@<X2>, void (***a4)(__int128 *__return_ptr, void)@<X3>, uint64_t a5@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (!cf || (v10 = CFGetTypeID(cf), v10 != CFDataGetTypeID()))
  {
    v18 = std::generic_category();
    *a5 = 22;
    *(a5 + 8) = v18;
LABEL_7:
    *(a5 + 568) = 0;
    goto LABEL_8;
  }

  v11 = *a3;
  LODWORD(v25[0]) = -2147483647;
  smart_enums::validators::value<unsigned int>("wrap_key_crypto_algo", -2147483647, v25, 1);
  *v31 = a2;
  *&v31[8] = v11;
  memset(&v31[12], 0, 32);
  *&v31[44] = 0x8000000100000000;
  bzero(&v31[52], 0x204uLL);
  LODWORD(v25[0]) = 8;
  vbuf::vbuf_t<Wrapper<unsigned char [32],std::integral_constant<BOOL,true>,print_as_buffer<unsigned char [32]>>,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,1ul>::set_len(&v31[12], v25);
  (**a4)(&dataIn, a4);
  if (v30 != 1)
  {
    *a5 = dataIn;
    goto LABEL_7;
  }

  dataOutMoved = 0;
  BytePtr = CFDataGetBytePtr(cf);
  Length = CFDataGetLength(cf);
  crypto::symmetric_key_header::get_derived_key_encryption_algorithm(&v31[12]);
  v14 = CCCrypt(0, 0, 1u, BytePtr, Length, &v31[16], dataIn, *(&dataIn + 1) - dataIn, dataOut, 0x200uLL, &dataOutMoved);
  if (v14)
  {
    *&v23 = "std::expected<symmetric_key, diskimage_err> crypto::auth_entry_ns::symmetric_key::create(const auth_table &, CFDataRef, diskimage_uio::option_set<locked_entity> &&, serializer_t &)";
    *(&v23 + 1) = 88;
    v24 = 16;
    di_log::logger<di_log::log_printer<522ul>>::logger(v25, &v23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, "Image key encoding failed with err code ", 40);
    MEMORY[0x24C1ED390](&v26, v14);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<522ul>>::~logger_buf(v25);
    MEMORY[0x24C1ED6A0](&v27);
    error_code = make_error_code(154);
    v16 = 0;
    *a5 = error_code;
    *(a5 + 8) = v17;
  }

  else
  {
    LODWORD(v25[0]) = dataOutMoved;
    vbuf::vbuf_t<Wrapper<unsigned char [512],std::integral_constant<BOOL,true>,print_as_buffer<unsigned char [512]>>,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,1ul>::set_len(&v31[52], v25);
    v20 = *&v31[12];
    v21 = *&v31[16];
    v22 = *&v31[32];
    *a5 = *v31;
    *(a5 + 16) = v21;
    *(a5 + 12) = v20;
    *(a5 + 32) = v22;
    *(a5 + 48) = *&v31[48];
    memcpy((a5 + 56), dataOut, 0x200uLL);
    v16 = 1;
  }

  *(a5 + 568) = v16;
  if ((v30 & 1) != 0 && dataIn)
  {
    *(&dataIn + 1) = dataIn;
    operator delete(dataIn);
  }

LABEL_8:
  v19 = *MEMORY[0x277D85DE8];
}

void sub_248E98214(_Unwind_Exception *a1)
{
  if (LOBYTE(STACK[0x258]) == 1)
  {
    v2 = STACK[0x240];
    if (STACK[0x240])
    {
      STACK[0x248] = v2;
      operator delete(v2);
    }
  }

  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<522ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<522ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BE6B80;
  a1[45] = &unk_285BE6C80;
  a1[46] = &unk_285BE6CA8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BE6B80;
  a1[45] = &unk_285BE6C08;
  a1[46] = &unk_285BE6C30;
  return a1;
}

void sub_248E9836C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<522ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<522ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<522ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void crypto::auth_entry_ns::symmetric_key::unlock(crypto::auth_entry_ns::symmetric_key *this@<X0>, CFTypeRef cf@<X1>, uint64_t a3@<X8>)
{
  if (!cf || (v6 = CFGetTypeID(cf), v6 != CFDataGetTypeID()))
  {
    v8 = std::generic_category();
    *a3 = 22;
    *(a3 + 8) = v8;
LABEL_7:
    *(a3 + 24) = 0;
    return;
  }

  crypto::auth_entry_ns::symmetric_key::generate_wrapped_key(this, cf, &v9);
  if (v10 != 1)
  {
    *a3 = v9;
    goto LABEL_7;
  }

  v7 = v9;
  crypto::auth_entry_base::extract_keys_from_blob(this, a3);
  if (v7)
  {
    operator delete(v7);
  }
}

void sub_248E9848C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void *crypto::auth_entry_ns::symmetric_key::generate_wrapped_key@<X0>(crypto::auth_entry_ns::symmetric_key *this@<X0>, CFDataRef theData@<X1>, uint64_t a3@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  __len = 0;
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  crypto::symmetric_key_header::get_derived_key_encryption_algorithm((this + 12));
  v8 = CCCrypt(1u, 0, 1u, BytePtr, Length, this + 16, this + 56, *(this + 13), __src, *(this + 13), &__len);
  if (v8)
  {
    *&v11 = "diskimage_err> crypto::auth_entry_ns::symmetric_key::generate_wrapped_key(CFDataRef) const";
    *(&v11 + 1) = 73;
    v12 = 16;
    di_log::logger<di_log::log_printer<557ul>>::logger(__dst, &v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "crypto_format: Can't decrypt wrapped key ", 41);
    MEMORY[0x24C1ED390](&v15, v8);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<557ul>>::~logger_buf(__dst);
    MEMORY[0x24C1ED6A0](&v16);
    if (v8 < 0)
    {
      LODWORD(v8) = -v8;
    }

    result = std::system_category();
    *a3 = v8;
    *(a3 + 8) = result;
    *(a3 + 24) = 0;
  }

  else
  {
    __dst[0] = 0;
    __dst[1] = 0;
    v14 = 0;
    std::vector<std::byte>::reserve(__dst, __len);
    result = std::vector<std::byte>::__insert_with_size[abi:ne200100]<std::byte*,std::byte*>(__dst, __dst[0], __src, &__src[__len], __len);
    *a3 = *__dst;
    *(a3 + 16) = v14;
    *(a3 + 24) = 1;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248E98640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *di_log::logger<di_log::log_printer<557ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<557ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BE6DA0;
  a1[45] = &unk_285BE6EA0;
  a1[46] = &unk_285BE6EC8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BE6DA0;
  a1[45] = &unk_285BE6E28;
  a1[46] = &unk_285BE6E50;
  return a1;
}

void sub_248E9877C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<557ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<557ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<557ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t std::vector<crypto::keys::key_pair>::__emplace_back_slow_path<crypto::keys::key_pair>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<iovec>::__throw_length_error[abi:ne200100]();
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

  v17 = a1;
  if (v6)
  {
    std::allocator<crypto::keys::key_pair>::allocate_at_least[abi:ne200100](a1, v6);
  }

  v7 = 48 * v2;
  v14 = 0;
  v15 = v7;
  *(&v16 + 1) = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = *a2;
  *(v7 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *&v16 = 48 * v2 + 48;
  v8 = a1[1];
  v9 = (48 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<crypto::keys::key_pair>,crypto::keys::key_pair*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<crypto::keys::key_pair>::~__split_buffer(&v14);
  return v13;
}

void sub_248E98930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<crypto::keys::key_pair>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<crypto::keys::key_pair>,crypto::keys::key_pair*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v6;
      a4[2] = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      a4[3] = 0;
      a4[4] = 0;
      a4[5] = 0;
      *(a4 + 3) = *(v6 + 24);
      a4[5] = *(v6 + 40);
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      v6 += 48;
      a4 += 6;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      std::__destroy_at[abi:ne200100]<crypto::keys::key_pair,0>(v5);
      v5 += 48;
    }
  }
}

uint64_t std::__split_buffer<crypto::keys::key_pair>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::__destroy_at[abi:ne200100]<crypto::keys::key_pair,0>(i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<std::byte>::__init_with_size[abi:ne200100]<std::__wrap_iter<std::byte*>,std::__wrap_iter<std::byte*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_248E98A90(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void crypto::keys::key_pair::~key_pair(crypto::keys::key_pair *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

_BYTE *std::__optional_move_base<std::variant<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,false>::__optional_move_base[abi:ne200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[640] = 0;
  if (*(a2 + 640) == 1)
  {
    std::__variant_detail::__move_constructor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a1, a2);
    a1[640] = 1;
  }

  return a1;
}

void sub_248E98B38(_Unwind_Exception *exception_object)
{
  if (*(v1 + 640) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<crypto::auth_entry_descriptor>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void non-virtual thunk todi_log::logger<di_log::log_printer<321ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<321ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<321ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<321ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<321ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<321ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<321ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<321ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<321ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<321ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<321ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE5C18;
  di_log::logger_buf<di_log::log_printer<321ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<321ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<321ul>::log((a1 + 72), __p);
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

void sub_248E990FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<321ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<321ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<321ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 321;
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
      v22 = 321;
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

void *std::vector<std::byte>::vector[abi:ne200100](void *result, uint64_t a2)
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

void sub_248E993A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk todi_log::logger<di_log::log_printer<371ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<371ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<371ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<371ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<371ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<371ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}