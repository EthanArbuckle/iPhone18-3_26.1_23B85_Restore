uint64_t std::__function::__func<crypto::crypt_op::crypt_consecutive_vector::crypt_consecutive_vector<sg_vec_ns::details::sg_vec_iterator>(crypto::crypt_op&,Backend &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&,Backend::op,long long)::{lambda(char *,char *,unsigned long)#2},std::allocator<crypto::crypt_op::crypt_consecutive_vector::crypt_consecutive_vector<sg_vec_ns::details::sg_vec_iterator>(crypto::crypt_op&,Backend &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&,Backend::op,long long)::{lambda(char *,char *,unsigned long)#2}>,crypto::details::buffer_aligner::inout_t ()(char *,char *,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *fixed_size_vector_t<crypto::crypt_op::crypt_consecutive_vector_base::micro_copy_op>::~fixed_size_vector_t(uint64_t *a1, const void *a2)
{
  if (*a1)
  {
    fixed_size_vector_t<crypto::crypt_op::crypt_consecutive_vector_base::micro_copy_op>::destruct_all(a1, a2);
    v3 = *a1;
    *a1 = 0;
    if (v3)
    {
      MEMORY[0x24C1ED710](v3 - 16, 0x1032C808FCDE1F8);
    }
  }

  return a1;
}

uint64_t *fixed_size_vector_t<crypto::crypt_op::crypt_consecutive_vector_base::micro_copy_op>::destruct_all(uint64_t *result, const void *a2)
{
  v2 = result[2];
  if (v2)
  {
    v3 = result;
    do
    {
      v3[2] = --v2;
      result = (*v3 + 40 * v2);
      if (*(result + 8) == 1)
      {
        result = lw_future_managed_setter<int,0>::handle::~handle(result, a2);
        v2 = v3[2];
      }
    }

    while (v2);
  }

  return result;
}

uint64_t *lw_future_managed_setter<int,0>::handle::~handle(uint64_t *a1, const void *a2)
{
  v3 = *a1;
  if (v3)
  {
    lw_future_managed_setter<int,0>::put(v3, a2);
  }

  return a1;
}

void lw_future_managed_setter<int,0>::put(uint64_t a1, const void *a2)
{
  if (atomic_fetch_add_explicit((a1 + 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed) == 1)
  {
    v3 = *a1;
    v4 = *v3;
    if ((*(*v3 + 4) & 1) == 0)
    {
      v5 = *(a1 + 12);
      if (v5)
      {
        *&v6 = "lw_future_managed_setter<int>::put() [T = int, empty_value = 0]";
        *(&v6 + 1) = 34;
        v7 = 16;
        di_log::logger<di_log::log_printer<198ul>>::logger(v8, &v6);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "managed future err ", 19);
        MEMORY[0x24C1ED390](&v9, v5);
        std::ostream::~ostream();
        di_log::logger_buf<di_log::log_printer<198ul>>::~logger_buf(v8);
        MEMORY[0x24C1ED6A0](&v10);
        v3 = *a1;
        v4 = **a1;
      }

      else
      {
        LODWORD(v5) = *(a1 + 8);
      }

      *v4 = v5;
      *(v4 + 4) = 1;
      lw_promise<int>::notify_future(v3, a2);
    }
  }
}

void sub_248DF3350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<198ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<198ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<198ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BD43D8;
  a1[45] = &unk_285BD44D8;
  a1[46] = &unk_285BD4500;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BD43D8;
  a1[45] = &unk_285BD4460;
  a1[46] = &unk_285BD4488;
  return a1;
}

void sub_248DF3468(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<198ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<198ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<198ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<198ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BD4570;
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

void sub_248DF3580(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<198ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BD4570;
  di_log::logger_buf<di_log::log_printer<198ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<198ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<198ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<198ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<198ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<198ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<198ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<198ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<198ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<198ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<198ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<198ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<198ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<198ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<198ul>::log((a1 + 72), __p);
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

void sub_248DF3B24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<198ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 198;
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
      v22 = 198;
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

uint64_t *fixed_size_vector_t<crypto::crypt_op::crypt_consecutive_vector_base::micro_crypt_op>::~fixed_size_vector_t(uint64_t *a1, const void *a2)
{
  if (*a1)
  {
    fixed_size_vector_t<crypto::crypt_op::crypt_consecutive_vector_base::micro_crypt_op>::destruct_all(a1, a2);
    v3 = *a1;
    *a1 = 0;
    if (v3)
    {
      MEMORY[0x24C1ED710](v3 - 16, 0x1032C8087D1D84DLL);
    }
  }

  return a1;
}

uint64_t *fixed_size_vector_t<crypto::crypt_op::crypt_consecutive_vector_base::micro_crypt_op>::destruct_all(uint64_t *result, const void *a2)
{
  v2 = result[2];
  if (v2)
  {
    v3 = result;
    do
    {
      v3[2] = --v2;
      result = (*v3 + 56 * v2);
      if (*(result + 8) == 1)
      {
        result = lw_future_managed_setter<int,0>::handle::~handle(result, a2);
        v2 = v3[2];
      }
    }

    while (v2);
  }

  return result;
}

uint64_t *fixed_size_vector_t<sg_entry>::~fixed_size_vector_t(uint64_t *a1)
{
  if (*a1)
  {
    fixed_size_vector_t<sg_entry>::destruct_all(a1);
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      MEMORY[0x24C1ED710](v2 - 16, 0x10F2C80DCC263A9);
    }
  }

  return a1;
}

void fixed_size_vector_t<sg_entry>::destruct_all(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    do
    {
      while (1)
      {
        v3 = v1 - 1;
        a1[2] = v1 - 1;
        v4 = *(*a1 + 112 * v1 - 104);
        if (!v4)
        {
          break;
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        v1 = a1[2];
        if (!v1)
        {
          return;
        }
      }

      --v1;
    }

    while (v3);
  }
}

uint64_t *std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return std::function<void ()(char *)>::operator()((result + 1), v3);
  }

  return result;
}

uint64_t std::function<void ()(char *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t crypto::details::unset_futures_errors_reporter<sg_vec_ns::details::sg_vec_iterator>::unset_futures_errors_reporter(uint64_t a1, uint64_t a2, sg_vec_ns::details::sg_vec_iterator *a3, const sg_vec_ns::details::sg_vec_iterator *a4, int a5)
{
  *a1 = a2;
  v9 = (a1 + 232);
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator((a1 + 8), a3);
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v9, a4);
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator((a1 + 456), a3);
  *(a1 + 680) = a5;
  return a1;
}

void sub_248DF4014(_Unwind_Exception *a1)
{
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(v2);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator((v1 + 8));
  _Unwind_Resume(a1);
}

void crypto::crypt_op::crypt_consecutive_vector_with_futures<sg_vec_ns::details::sg_vec_iterator>::~crypt_consecutive_vector_with_futures(crypto::crypt_op::crypt_consecutive_vector *a1, const void *a2)
{
  crypto::crypt_op::crypt_consecutive_vector::reset(a1, a2);
  crypto::details::unset_futures_errors_reporter<sg_vec_ns::details::sg_vec_iterator>::~unset_futures_errors_reporter(a1 + 28);

  crypto::crypt_op::crypt_consecutive_vector::~crypt_consecutive_vector(a1);
}

void *crypto::details::unset_futures_errors_reporter<sg_vec_ns::details::sg_vec_iterator>::~unset_futures_errors_reporter(void *a1)
{
  (*(**a1 + 152))(*a1);
  v2 = a1[80];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[58];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[52];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = a1[30];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

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

void *di_log::logger<di_log::log_printer<624ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<624ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BD45F8;
  a1[45] = &unk_285BD46F8;
  a1[46] = &unk_285BD4720;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BD45F8;
  a1[45] = &unk_285BD4680;
  a1[46] = &unk_285BD46A8;
  return a1;
}

void sub_248DF4218(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<624ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<624ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<624ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

sg_vec_ref *std::optional<sg_vec_ref>::operator=[abi:ne200100]<sg_vec_ref,void>(sg_vec_ref *a1, uint64_t a2)
{
  if (*(a1 + 720) == 1)
  {
    sg_vec_ref::operator=(a1, a2);
  }

  else
  {
    sg_vec_ref::sg_vec_ref(a1, a2);
    *(a1 + 720) = 1;
  }

  return a1;
}

uint64_t std::optional<sg_vec_ref>::~optional(uint64_t a1)
{
  if (*(a1 + 720) == 1)
  {
    v2 = *(a1 + 680);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    v3 = *(a1 + 504);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = *(a1 + 456);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v5 = *(a1 + 280);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    v6 = *(a1 + 160);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    v7 = *(a1 + 72);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<624ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BD4790;
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

void sub_248DF43EC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<624ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BD4790;
  di_log::logger_buf<di_log::log_printer<624ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<624ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<624ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<624ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<624ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<624ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<624ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<624ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<624ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<624ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<624ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<624ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<624ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<624ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<624ul>::log((a1 + 72), __p);
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

void sub_248DF4990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<624ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 624;
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
      v22 = 624;
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

sg_vec_ref *sg_vec_ref::operator=(sg_vec_ref *this, uint64_t a2)
{
  v4 = *(a2 + 8);
  *this = *a2;
  *(this + 1) = v4;
  *(this + 2) = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 40);
  *(this + 56) = *(a2 + 56);
  *(this + 40) = v6;
  *(this + 24) = v5;
  v7 = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v8 = *(this + 9);
  *(this + 4) = v7;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *(this + 5) = *(a2 + 80);
  *(this + 12) = *(a2 + 96);
  *(this + 13) = *(a2 + 104);
  v9 = *(a2 + 112);
  v10 = *(a2 + 128);
  *(this + 144) = *(a2 + 144);
  *(this + 7) = v9;
  *(this + 8) = v10;
  v11 = *(a2 + 152);
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  v12 = *(this + 20);
  *(this + 152) = v11;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  *(this + 168) = *(a2 + 168);
  *(this + 184) = *(a2 + 184);
  *(this + 66) = *(a2 + 264);
  if (*(this + 256) == *(a2 + 256))
  {
    if (*(this + 256))
    {
      v13 = *(a2 + 200);
      v14 = *(a2 + 216);
      v15 = *(a2 + 232);
      *(this + 31) = *(a2 + 248);
      *(this + 232) = v15;
      *(this + 216) = v14;
      *(this + 200) = v13;
    }
  }

  else if (*(this + 256))
  {
    *(this + 256) = 0;
  }

  else
  {
    sg_per_io_crypto::sg_per_io_crypto((this + 200), (a2 + 200));
    *(this + 256) = 1;
  }

  sg_vec_ref::create_iterators(this);
  return this;
}

sg_vec_ref *sg_vec_ref::sg_vec_ref(sg_vec_ref *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 1) = v4;
  v5 = (a1 + 8);
  *(a1 + 2) = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v7;
  *(a1 + 24) = v6;
  *(a1 + 4) = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a1 + 5) = *(a2 + 80);
  *(a1 + 12) = *(a2 + 96);
  v8 = (a1 + 96);
  *(a1 + 13) = *(a2 + 104);
  v9 = *(a2 + 112);
  v10 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 7) = v9;
  *(a1 + 8) = v10;
  *(a1 + 152) = *(a2 + 152);
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a1 + 168) = *(a2 + 168);
  v11 = *(a2 + 184);
  *(a1 + 200) = 0;
  v12 = a1 + 200;
  *(v12 - 1) = v11;
  v12[56] = 0;
  if (*(a2 + 256) == 1)
  {
    sg_per_io_crypto::sg_per_io_crypto(v12, (a2 + 200));
    *(a1 + 256) = 1;
  }

  *(a1 + 66) = *(a2 + 264);
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator((a1 + 272), a1, v8, 0);
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator((a1 + 496), a1, v5, 1);
  return a1;
}

void sub_248DF4DC4(_Unwind_Exception *a1)
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

void sub_248DF4E5C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<std::shared_ptr<char>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::shared_ptr<char>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::shared_ptr<char>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::shared_ptr<char>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void _daOperationCallback(uint64_t a1, const __DADissenter *a2, void *a3)
{
  v8 = a3;
  if (a2)
  {
    v4 = MEMORY[0x277CCACA8];
    Status = DADissenterGetStatus(a2);
    v6 = [v4 stringWithFormat:@"Dissented with status 0x%X, pid %d", Status, DADissenterGetProcessID()];
    v7 = [DIError errorWithEnumValue:156 verboseInfo:v6];
    [v8 setOperationError:v7];
  }

  [v8 setCallbackReached:1];
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_248DFBF68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248DFC150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248DFC638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248DFDD0C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, uint64_t a14)
{
  CFAutoRelease<__CFDictionary const*>::~CFAutoRelease(&a13);
  v20 = a14;
  a14 = 0;
  if (v20)
  {
    (*(*v20 + 16))(v20);
  }

  if (a2 == 2)
  {
    [DIError failWithDIException:__cxa_begin_catch(a1) prefix:@"user data retrieving failed" error:v14];
    __cxa_end_catch();
  }

  else
  {
    if (a2 != 1)
    {
      _Unwind_Resume(a1);
    }

    v21 = [objc_begin_catch(a1) reason];
    [DIError failWithEnumValue:150 verboseInfo:v21 error:v14];

    objc_end_catch();
  }

  JUMPOUT(0x248DFDCD0);
}

void sub_248DFE3E8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 16))(a12);
  }

  if (a2 == 2)
  {
    [DIError failWithDIException:__cxa_begin_catch(a1) prefix:@"user data embedding failed" error:v12];
    __cxa_end_catch();
  }

  else
  {
    if (a2 != 1)
    {
      _Unwind_Resume(a1);
    }

    v16 = [objc_begin_catch(a1) reason];
    [DIError failWithEnumValue:150 verboseInfo:v16 error:v12];

    objc_end_catch();
  }

  JUMPOUT(0x248DFE0BCLL);
}

const void **CFAutoRelease<__CFDictionary const*>::~CFAutoRelease(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void create_stack_vector_from_single_path(const std::__fs::filesystem::path *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v4 = a1;
  v35 = *MEMORY[0x277D85DE8];
  if (SHIBYTE(a1->__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!a1->__pn_.__r_.__value_.__l.__size_)
    {
      goto LABEL_12;
    }

    v4 = a1->__pn_.__r_.__value_.__r.__words[0];
  }

  else if (!*(&a1->__pn_.__r_.__value_.__s + 23))
  {
LABEL_12:
    exception = __cxa_allocate_exception(0x40uLL);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, "create_stack_vector_from_single_path called with an empty path", 0x16u);
  }

  v6 = MEMORY[0x277CBEBC0];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
  v8 = [v6 fileURLWithPath:v7];

  v28 = 0;
  v9 = [[SerializedDiskImageGraph alloc] initWithPstackURL:v8 error:&v28];
  v10 = v28;
  v11 = v10;
  if (!v9)
  {
    v12 = [v10 domain];
    if ([v12 isEqualToString:@"com.apple.DiskImages2.ErrorDomain"])
    {
      v13 = [v11 code] == 167;

      if (v13)
      {
        *a3 = 0;
        a3[1] = 0;
        a3[2] = 0;
        goto LABEL_11;
      }
    }

    else
    {
    }

    v17 = *__error();
    if (DIForwardLogs())
    {
      v18 = getDIOSLog();
      os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
      v19 = [v11 description];
      *buf = 68158210;
      v30 = 124;
      v31 = 2080;
      v32 = "std::vector<diskimage_uio::stack_image_node_ptr_t> create_stack_vector_from_single_path(const std::filesystem::path &, BOOL)";
      v33 = 2112;
      v34 = v19;
      v20 = _os_log_send_and_compose_impl();

      if (v20)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v20);
        free(v20);
      }
    }

    else
    {
      v21 = getDIOSLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = [v11 description];
        *buf = 68158210;
        v30 = 124;
        v31 = 2080;
        v32 = "std::vector<diskimage_uio::stack_image_node_ptr_t> create_stack_vector_from_single_path(const std::filesystem::path &, BOOL)";
        v33 = 2112;
        v34 = v22;
        _os_log_impl(&dword_248DE0000, v21, OS_LOG_TYPE_ERROR, "%.*s: Failed to read pstack: %@.", buf, 0x1Cu);
      }
    }

    *__error() = v17;
    v23 = __cxa_allocate_exception(0x40uLL);
    [v11 domain];
    if ([objc_claimAutoreleasedReturnValue() isEqualToString:*MEMORY[0x277CCA5B8]])
    {
      v24 = [v11 code];
      v25 = std::generic_category();
      error_code = v24;
    }

    else
    {
      error_code = make_error_code([v11 code]);
      v25 = v27;
    }

    *v23 = &unk_285BF4E60;
    v23[1] = error_code;
    v23[2] = v25;
    *(v23 + 24) = 0;
    *(v23 + 48) = 0;
    v23[7] = "Failed to read pstack.";
  }

  create_stack_vec_from_graph(&v9->super, a2, a3);
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
}

void create_stack_vec_from_graph(DiskImageGraph *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v5 = a1;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v14 = v5;
  v6 = [(DiskImageGraph *)v5 activeNode];
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
        std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v16, &v15);
        if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v17, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
        }

        else
        {
          v17 = v16;
        }

        operator new();
      }

      v9 = v6;
      v10 = [v9 pluginName];
      std::string::basic_string[abi:ne200100]<0>(&v17, [v10 UTF8String]);

      [v9 pluginParams];
      operator new();
    }

    exception = __cxa_allocate_exception(0x40uLL);
    error_code = make_error_code(150);
    *exception = &unk_285BF4E60;
    exception[1] = error_code;
    exception[2] = v13;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = "Stack with cache as top image cannot be opened for writing.";
  }
}

void sub_248E000C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  std::vector<std::unique_ptr<diskimage_uio::stack_image_node const>>::__destroy_vector::operator()[abi:ne200100](&a11);

  _Unwind_Resume(a1);
}

void create_stack_vector_from_single_fd(const std::__fs::filesystem::path *a1@<X1>, uint64_t a2@<X0>, char a3@<W2>, void *a4@<X8>)
{
  v45[20] = *MEMORY[0x277D85DE8];
  v7 = [objc_alloc(MEMORY[0x277CCA9F8]) initWithFileDescriptor:a2 closeOnDealloc:0];
  v38 = 0;
  v39 = 0;
  v8 = [DiskImageGraph loadPlistDictFromFileHandle:v7 dict:&v39 error:&v38];
  v9 = v39;
  v10 = v38;
  v11 = v10;
  if (!v8)
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

    *&v36 = "create_stack_vector_from_single_fd(int, const std::filesystem::path &, BOOL)";
    *(&v36 + 1) = 34;
    v37 = 16;
    di_log::logger<di_log::log_printer<116ul>>::logger(buf, &v36);
    MEMORY[0x24C1ED380](v45, v11 != 0);
    di_log::logger<di_log::log_printer<116ul>>::~logger(buf);
    exception = __cxa_allocate_exception(0x40uLL);
    v24 = [v11 code];
    if (v24 >= 0)
    {
      LODWORD(v25) = v24;
    }

    else
    {
      v25 = -v24;
    }

    v23 = std::generic_category();
    v22 = v25;
    v21 = "Failed to read file for pstack parsing";
LABEL_14:
    *exception = &unk_285BF4E60;
    exception[1] = v22;
    exception[2] = v23;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = v21;
  }

  if (SHIBYTE(a1->__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!a1->__pn_.__r_.__value_.__l.__size_)
    {
LABEL_13:
      exception = __cxa_allocate_exception(0x40uLL);
      v21 = "Cannot initialize pstack disk image without path.";
      v22 = 22;
      v23 = std::generic_category();
      goto LABEL_14;
    }

    a1 = a1->__pn_.__r_.__value_.__r.__words[0];
  }

  else if (!*(&a1->__pn_.__r_.__value_.__s + 23))
  {
    goto LABEL_13;
  }

  v14 = MEMORY[0x277CBEBC0];
  v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
  v16 = [v14 fileURLWithPath:v15];

  v35 = v11;
  v17 = [[SerializedDiskImageGraph alloc] initWithGraphDB:v9 pstackURL:v16 error:&v35];
  v18 = v35;

  if (!v17)
  {
    v26 = *__error();
    if (DIForwardLogs())
    {
      *&v36 = 0;
      v27 = getDIOSLog();
      os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
      v28 = [v18 description];
      *buf = 68158210;
      *&buf[4] = 127;
      v41 = 2080;
      v42 = "std::vector<diskimage_uio::stack_image_node_ptr_t> create_stack_vector_from_single_fd(int, const std::filesystem::path &, BOOL)";
      v43 = 2112;
      v44 = v28;
      v29 = _os_log_send_and_compose_impl();

      if (v29)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v29);
        free(v29);
      }
    }

    else
    {
      v30 = getDIOSLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = [v18 description];
        *buf = 0x7F04100302;
        v41 = 2080;
        v42 = "std::vector<diskimage_uio::stack_image_node_ptr_t> create_stack_vector_from_single_fd(int, const std::filesystem::path &, BOOL)";
        v43 = 2112;
        v44 = v31;
        _os_log_impl(&dword_248DE0000, v30, OS_LOG_TYPE_ERROR, "%.*s: Failed to create graph from plist: %@.", buf, 0x1Cu);
      }
    }

    *__error() = v26;
    v32 = __cxa_allocate_exception(0x40uLL);
    error_code = make_error_code(161);
    *v32 = &unk_285BF4E60;
    v32[1] = error_code;
    v32[2] = v34;
    *(v32 + 24) = 0;
    *(v32 + 48) = 0;
    v32[7] = "Failed to create graph from plist.";
  }

  create_stack_vec_from_graph(&v17->super, a3, a4);

  v11 = v18;
LABEL_12:

  v19 = *MEMORY[0x277D85DE8];
}

void sub_248E006B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  __cxa_free_exception(v19);

  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<116ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<116ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BD4838;
  a1[45] = &unk_285BD4938;
  a1[46] = &unk_285BD4960;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BD4838;
  a1[45] = &unk_285BD48C0;
  a1[46] = &unk_285BD48E8;
  return a1;
}

void sub_248E00864(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<116ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<116ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<116ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

diskimage_uio::stack_image_node **std::unique_ptr<diskimage_uio::stack_image_node const>::~unique_ptr[abi:ne200100](diskimage_uio::stack_image_node **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    diskimage_uio::stack_image_node::~stack_image_node(v2);
    MEMORY[0x24C1ED730]();
  }

  return a1;
}

void std::allocator<std::unique_ptr<diskimage_uio::stack_image_node const>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::unique_ptr<diskimage_uio::stack_image_node const>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<diskimage_uio::stack_image_node const>::~unique_ptr[abi:ne200100]((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(std::string *this, std::string **a2)
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
  std::string::append[abi:ne200100]<char const*,0>(this, v3, v4);
  return this;
}

void sub_248E009F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::string::append[abi:ne200100]<char const*,0>(std::string *this, std::string *__src, std::string *a3)
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
    std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__p, __src, a3, v7);
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

void sub_248E00B68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::__init_with_size[abi:ne200100]<char const*,char const*>(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
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

void std::vector<std::unique_ptr<diskimage_uio::stack_image_node const>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = std::unique_ptr<diskimage_uio::stack_image_node const>::~unique_ptr[abi:ne200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void non-virtual thunk todi_log::logger<di_log::log_printer<116ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<116ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<116ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<116ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<116ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<116ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<116ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<116ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<116ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<116ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<116ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BD49D0;
  di_log::logger_buf<di_log::log_printer<116ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<116ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<116ul>::log((a1 + 72), __p);
        if (v10 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
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

void sub_248E01294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<116ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<116ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<116ul>::log(uint64_t *a1, uint64_t *a2)
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
    v21 = 116;
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
      v21 = 116;
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

uint64_t di_log::logger_buf<di_log::log_printer<116ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BD49D0;
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

void sub_248E0159C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_248E0324C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, std::__shared_weak_count *a17, char a18)
{
  if (a15 == 1)
  {
    crypto::auth_table::~auth_table(&a10);
  }

  if (a18 == 1)
  {
    if (a17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a17);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t std::optional<crypto::auth_table>::operator=[abi:ne200100]<crypto::auth_table,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == 1)
  {
    crypto::auth_table::operator=(a1, a2);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = *(a2 + 24);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a1 + 40) = 1;
  }

  return a1;
}

void sub_248E03460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, char a16)
{
  if (a16 == 1)
  {
    if (a15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a15);
    }
  }

  _Unwind_Resume(a1);
}

char **std::dynamic_pointer_cast[abi:ne200100]<crypto_format_getter,Backend>@<X0>(char ***a1@<X0>, char ***a2@<X8>)
{
  v2 = a1;
  result = *a1;
  {
    v6 = v2[1];
    *a2 = result;
    a2[1] = v6;
  }

  else
  {
    v2 = a2;
  }

  *v2 = 0;
  v2[1] = 0;
  return result;
}

void sub_248E039BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (a21 == 1)
  {
    STACK[0x300] = &a18;
    std::vector<crypto::keys::key_pair>::__destroy_vector::operator()[abi:ne200100](&STACK[0x300]);
  }

  if (LOBYTE(STACK[0x5B0]) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&STACK[0x330]);
  }

  _Unwind_Resume(a1);
}

uint64_t crypto::auth_table::const_iterator::operator*(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 656) & 1) == 0)
  {
    crypto::auth_table::get_entry(*a1, (a1 + 8), v4);
    std::optional<std::variant<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>>::operator=[abi:ne200100]<std::variant<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,void>(a1 + 16, v4);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v4);
  }

  v2 = *MEMORY[0x277D85DE8];
  return a1 + 16;
}

void sub_248E03B08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t crypto::auth_table::const_iterator::operator++@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  result = std::__optional_copy_base<std::variant<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,false>::__optional_copy_base[abi:ne200100]((a2 + 16), a1 + 16);
  *(a1 + 8) += 20;
  if (*(a1 + 656) == 1)
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1 + 16);
    *(a1 + 656) = 0;
  }

  return result;
}

void sub_248E03E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (LOBYTE(STACK[0x598]) == 1 && LOBYTE(STACK[0x590]) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&STACK[0x310]);
  }

  if (a13 == 1)
  {
    crypto::descriptor_handle_t::~descriptor_handle_t(&a9);
  }

  if (a21 == 1)
  {
    (*(a14 + 56))(&a14);
  }

  _Unwind_Resume(a1);
}

void sub_248E04F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (LOBYTE(STACK[0x548]) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&STACK[0x2C8]);
  }

  _Unwind_Resume(a1);
}

void sub_248E05100(_Unwind_Exception *a1)
{
  if (LOBYTE(STACK[0x540]) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v1 + 16);
  }

  _Unwind_Resume(a1);
}

void sub_248E05558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (a21 == 1)
  {
    STACK[0x300] = &a18;
    std::vector<crypto::keys::key_pair>::__destroy_vector::operator()[abi:ne200100](&STACK[0x300]);
  }

  if (LOBYTE(STACK[0x5B0]) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&STACK[0x330]);
  }

  _Unwind_Resume(a1);
}

void sub_248E05AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (a21 == 1)
  {
    STACK[0x300] = &a18;
    std::vector<crypto::keys::key_pair>::__destroy_vector::operator()[abi:ne200100](&STACK[0x300]);
  }

  if (LOBYTE(STACK[0x5B0]) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&STACK[0x330]);
  }

  _Unwind_Resume(a1);
}

void sub_248E05EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (LOBYTE(STACK[0x5A0]) == 1 && LOBYTE(STACK[0x598]) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&STACK[0x318]);
  }

  if (a14 == 1)
  {
    crypto::descriptor_handle_t::~descriptor_handle_t(&a10);
  }

  if (a22 == 1)
  {
    (*(a15 + 56))(&a15);
  }

  _Unwind_Resume(a1);
}

void sub_248E064B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (LOBYTE(STACK[0x5A8]) == 1 && LOBYTE(STACK[0x5A0]) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&STACK[0x320]);
  }

  if (a15 == 1)
  {
    crypto::descriptor_handle_t::~descriptor_handle_t(&a11);
  }

  if (a23 == 1)
  {
    (*(a16 + 56))(&a16);
  }

  _Unwind_Resume(a1);
}

void sub_248E06B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x24C1ED730](a10, 0x1000C409E51EDBFLL);
  }

  _Unwind_Resume(a1);
}

void crypto::passphrase_header_serializer::decode(crypto::passphrase_header_serializer *this@<X0>, void *a2@<X8>)
{
  v4 = this;
  v7 = 0;
  if ([(crypto::passphrase_header_serializer *)v4 decodeBytesForKey:@"passphrase_header" returnedLength:&v7])
  {
    if (v7 == 616)
    {
      operator new();
    }

    exception = __cxa_allocate_exception(0x40uLL);
    std::ostringstream::basic_ostringstream[abi:ne200100](v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Unexpected passphrase header length (", 37);
    MEMORY[0x24C1ED3C0](v6, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ")", 1);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, v6, 0x9Au);
  }

  *a2 = 0;
}

void sub_248E06CB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::ostringstream::~ostringstream(&a9, MEMORY[0x277D82828]);
  MEMORY[0x24C1ED6A0](v12 + 112);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

void *std::shared_ptr<crypto::passphrase_header>::operator=[abi:ne200100]<crypto::passphrase_header,std::default_delete<crypto::passphrase_header>,0>(void *a1, uint64_t *a2)
{
  std::shared_ptr<crypto::passphrase_header>::shared_ptr[abi:ne200100]<crypto::passphrase_header,std::default_delete<crypto::passphrase_header>,0>(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void crypto::passphrase_header_serializer::encode(crypto::passphrase_header_serializer *this, NSCoder *a2, const crypto::passphrase_header *a3)
{
  v4 = this;
  std::vector<char>::vector[abi:ne200100](__p, 616);
  crypto::passphrase_header::write(a2, __p[0]);
  [(crypto::passphrase_header_serializer *)v4 encodeBytes:__p[0] length:616 forKey:@"passphrase_header"];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_248E07478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, char a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (a24 == 1)
  {
    STACK[0x320] = &a21;
    std::vector<crypto::keys::key_pair>::__destroy_vector::operator()[abi:ne200100](&STACK[0x320]);
  }

  if (LOBYTE(STACK[0x820]) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&STACK[0x5A0]);
  }

  _Unwind_Resume(a1);
}

void sub_248E07988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (LOBYTE(STACK[0x5B8]) == 1 && LOBYTE(STACK[0x5B0]) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&STACK[0x330]);
  }

  if (LOBYTE(STACK[0x5E0]) == 1)
  {
    crypto::descriptor_handle_t::~descriptor_handle_t(&STACK[0x5C0]);
  }

  if (LOBYTE(STACK[0xAB8]) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&STACK[0x838]);
  }

  if (a23 == 1)
  {
    (*(a16 + 56))(&a16);
  }

  _Unwind_Resume(a1);
}

uint64_t crypto::auth_table::operator=(uint64_t a1, uint64_t a2)
{
  std::vector<crypto::auth_entry_descriptor>::__move_assign(a1, a2);
  v4 = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v5 = *(a1 + 32);
  *(a1 + 24) = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return a1;
}

__n128 std::vector<crypto::auth_entry_descriptor>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void crypto::auth_table::~auth_table(crypto::auth_table *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 632);
  if (v2 != -1)
  {
    result = (off_285BD4A40[v2])(&v3, result);
  }

  *(v1 + 632) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN6crypto13auth_entry_ns10passphraseENS9_10public_keyENS9_13symmetric_keyENS9_7unknownENS9_5errorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    *(a2 + 24) = v2;
    operator delete(v2);
  }
}

uint64_t std::optional<std::variant<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>>::operator=[abi:ne200100]<std::variant<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 640) == 1)
  {
    std::__variant_detail::__assignment<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>>(a1, a2);
  }

  else
  {
    std::__variant_detail::__move_constructor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a1, a2);
    *(a1 + 640) = 1;
  }

  return a1;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>>(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 632);
  if (*(result + 632) != -1 || v4 != -1)
  {
    if (v4 == -1)
    {

      return std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](result);
    }

    else
    {
      v6[1] = v2;
      v6[2] = v3;
      v6[0] = result;
      return (off_285BD4A68[v4])(v6);
    }
  }

  return result;
}

void *std::__variant_detail::__assignment<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>>::__assign_alt[abi:ne200100]<0ul,crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::passphrase>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 632))
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    *a1 = *a3;
    *(a1 + 12) = *(a3 + 12);
    *(a1 + 16) = *(a3 + 16);
    *(a1 + 20) = *(a3 + 20);
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0;
    *(a1 + 24) = *(a3 + 24);
    v5 = *(a3 + 28);
    *(a1 + 44) = *(a3 + 44);
    *(a1 + 28) = v5;
    *(a1 + 60) = 0u;
    *(a1 + 76) = 0u;
    *(a1 + 92) = 0;
    *(a1 + 60) = *(a3 + 60);
    v6 = *(a3 + 80);
    *(a1 + 64) = *(a3 + 64);
    *(a1 + 80) = v6;
    *(a1 + 96) = *(a3 + 96);
    *(a1 + 100) = *(a3 + 100);
    *(a1 + 104) = *(a3 + 104);
    *(a1 + 108) = *(a3 + 108);
    bzero((a1 + 112), 0x204uLL);
    *(a1 + 112) = *(a3 + 112);
    result = memcpy((a1 + 116), (a3 + 116), 0x200uLL);
    *(a1 + 632) = 0;
  }

  else
  {
    crypto::auth_entry_base::operator=(a2, a3);
    v9 = *(a3 + 12);
    *(a2 + 20) = *(a3 + 20);
    *(a2 + 12) = v9;
    *(a2 + 24) = *(a3 + 24);
    v10 = *(a3 + 28);
    *(a2 + 44) = *(a3 + 44);
    *(a2 + 28) = v10;
    *(a2 + 60) = *(a3 + 60);
    v11 = *(a3 + 80);
    *(a2 + 64) = *(a3 + 64);
    *(a2 + 80) = v11;
    *(a2 + 96) = *(a3 + 96);
    *(a2 + 112) = *(a3 + 112);

    return memcpy((a2 + 116), (a3 + 116), 0x200uLL);
  }

  return result;
}

void *std::__variant_detail::__assignment<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>>::__assign_alt[abi:ne200100]<1ul,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::public_key>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 632) == 1)
  {
    crypto::auth_entry_base::operator=(a2, a3);
    *(a2 + 12) = *(a3 + 12);
    v5 = *(a3 + 32);
    *(a2 + 16) = *(a3 + 16);
    *(a2 + 32) = v5;
    v6 = *(a3 + 56);
    *(a2 + 48) = *(a3 + 48);
    *(a2 + 56) = v6;
    *(a2 + 60) = *(a3 + 60);

    return memcpy((a2 + 64), (a3 + 64), 0x200uLL);
  }

  else
  {

    return std::__variant_detail::__assignment<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>>::__emplace[abi:ne200100]<1ul,crypto::auth_entry_ns::public_key>(a1, a3);
  }
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>>::__emplace[abi:ne200100]<1ul,crypto::auth_entry_ns::public_key>(uint64_t a1, uint64_t a2)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  *a1 = *a2;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0;
  *(a1 + 12) = 0u;
  *(a1 + 12) = *(a2 + 12);
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  bzero((a1 + 60), 0x204uLL);
  *(a1 + 60) = *(a2 + 60);
  memcpy((a1 + 64), (a2 + 64), 0x200uLL);
  *(a1 + 632) = 1;
  return a1;
}

void *std::__variant_detail::__assignment<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>>::__assign_alt[abi:ne200100]<2ul,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::symmetric_key>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 632) == 2)
  {
    crypto::auth_entry_base::operator=(a2, a3);
    *(a2 + 12) = *(a3 + 12);
    v5 = *(a3 + 32);
    *(a2 + 16) = *(a3 + 16);
    *(a2 + 32) = v5;
    *(a2 + 48) = *(a3 + 48);
    *(a2 + 52) = *(a3 + 52);

    return memcpy((a2 + 56), (a3 + 56), 0x200uLL);
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    *a1 = *a3;
    *(a1 + 28) = 0u;
    *(a1 + 44) = 0;
    *(a1 + 12) = 0u;
    *(a1 + 12) = *(a3 + 12);
    v8 = *(a3 + 32);
    *(a1 + 16) = *(a3 + 16);
    *(a1 + 32) = v8;
    *(a1 + 48) = *(a3 + 48);
    bzero((a1 + 52), 0x204uLL);
    *(a1 + 52) = *(a3 + 52);
    result = memcpy((a1 + 56), (a3 + 56), 0x200uLL);
    *(a1 + 632) = 2;
  }

  return result;
}

void std::__variant_detail::__assignment<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>>::__assign_alt[abi:ne200100]<3ul,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::unknown>(uint64_t a1, uint64_t a2, __n128 *a3)
{
  if (*(a1 + 632) == 3)
  {
    crypto::auth_entry_base::operator=(a2, a3);
    *(a2 + 12) = a3->n128_u32[3];

    std::vector<crypto::auth_entry_descriptor>::__move_assign(a2 + 16, a3 + 1);
  }

  else
  {

    std::__variant_detail::__assignment<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>>::__emplace[abi:ne200100]<3ul,crypto::auth_entry_ns::unknown>(a1, a3);
  }
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>>::__emplace[abi:ne200100]<3ul,crypto::auth_entry_ns::unknown>(uint64_t a1, uint64_t a2)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  *a1 = *a2;
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(a1 + 16, *(a2 + 16), *(a2 + 24), *(a2 + 24) - *(a2 + 16));
  *(a1 + 632) = 3;
  return a1;
}

__n128 std::__variant_detail::__assignment<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>>::__assign_alt[abi:ne200100]<4ul,crypto::auth_entry_ns::error,crypto::auth_entry_ns::error>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  if (*(a1 + 632) == 4)
  {
    crypto::auth_entry_base::operator=(a2, a3);
    result = a3[1];
    a2[1] = result;
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    result = *a3;
    v7 = a3[1];
    *a1 = *a3;
    *(a1 + 16) = v7;
    *(a1 + 632) = 4;
  }

  return result;
}

uint64_t std::__variant_detail::__move_constructor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 632) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>>(a1, a2);
  return a1;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>>(uint64_t a1, uint64_t a2)
{
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v5 = *(a2 + 632);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_285BD4A90[v5])(&v6, a2);
    *(a1 + 632) = v5;
  }

  return result;
}

void *std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error> &&>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *v3 = *a2;
  *(v3 + 12) = *(a2 + 12);
  *(v3 + 16) = *(a2 + 16);
  *(v3 + 20) = *(a2 + 20);
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0;
  *(v3 + 24) = *(a2 + 24);
  v4 = *(a2 + 28);
  *(v3 + 44) = *(a2 + 44);
  *(v3 + 28) = v4;
  *(v3 + 60) = 0u;
  *(v3 + 76) = 0u;
  *(v3 + 92) = 0;
  *(v3 + 60) = *(a2 + 60);
  v5 = *(a2 + 80);
  *(v3 + 64) = *(a2 + 64);
  *(v3 + 80) = v5;
  *(v3 + 96) = *(a2 + 96);
  *(v3 + 100) = *(a2 + 100);
  *(v3 + 104) = *(a2 + 104);
  *(v3 + 108) = *(a2 + 108);
  bzero((v3 + 112), 0x204uLL);
  *(v3 + 112) = *(a2 + 112);

  return memcpy((v3 + 116), (a2 + 116), 0x200uLL);
}

void *std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error> &&>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *v3 = *a2;
  *(v3 + 28) = 0u;
  *(v3 + 44) = 0;
  *(v3 + 12) = 0u;
  *(v3 + 12) = *(a2 + 12);
  v4 = *(a2 + 32);
  *(v3 + 16) = *(a2 + 16);
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a2 + 48);
  *(v3 + 52) = *(a2 + 52);
  *(v3 + 56) = *(a2 + 56);
  bzero((v3 + 60), 0x204uLL);
  *(v3 + 60) = *(a2 + 60);

  return memcpy((v3 + 64), (a2 + 64), 0x200uLL);
}

void *std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error> &&>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *v3 = *a2;
  *(v3 + 28) = 0u;
  *(v3 + 44) = 0;
  *(v3 + 12) = 0u;
  *(v3 + 12) = *(a2 + 12);
  v4 = *(a2 + 32);
  *(v3 + 16) = *(a2 + 16);
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a2 + 48);
  bzero((v3 + 52), 0x204uLL);
  *(v3 + 52) = *(a2 + 52);

  return memcpy((v3 + 56), (a2 + 56), 0x200uLL);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error> &&>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = *a2;
  v3 = *(a2 + 12);
  *(v2 + 16) = 0;
  v2 += 16;
  *(v2 - 4) = v3;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  return std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(v2, *(a2 + 16), *(a2 + 24), *(a2 + 24) - *(a2 + 16));
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error> &&>(_OWORD **a1, uint64_t a2)
{
  v2 = *a1;
  result = *a2;
  v4 = *(a2 + 16);
  *v2 = *a2;
  v2[1] = v4;
  return result;
}

void std::vector<crypto::keys::key_pair>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::__destroy_at[abi:ne200100]<crypto::keys::key_pair,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<crypto::keys::key_pair,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;

    operator delete(v3);
  }
}

_BYTE *std::__optional_copy_base<std::variant<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,false>::__optional_copy_base[abi:ne200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[640] = 0;
  if (*(a2 + 640) == 1)
  {
    std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](a1, a2);
    a1[640] = 1;
  }

  return a1;
}

void sub_248E090C4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 640) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 632) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1> const&>(a1, a2);
  return a1;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1> const&>(uint64_t a1, uint64_t a2)
{
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v5 = *(a2 + 632);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_285BD4AB8[v5])(&v6, a2);
    *(a1 + 632) = v5;
  }

  return result;
}

void *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN6crypto13auth_entry_ns10passphraseENS9_10public_keyENS9_13symmetric_keyENS9_7unknownENS9_5errorEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISF_LNS0_6_TraitE1EEEEEvRSG_OT_EUlSP_E_JRKNS0_6__baseILSJ_1EJSA_SB_SC_SD_SE_EEEEEEDcSO_DpT0_(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *v3 = *a2;
  *(v3 + 12) = *(a2 + 12);
  *(v3 + 16) = *(a2 + 16);
  *(v3 + 20) = *(a2 + 20);
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0;
  *(v3 + 24) = *(a2 + 24);
  v4 = *(a2 + 28);
  *(v3 + 44) = *(a2 + 44);
  *(v3 + 28) = v4;
  *(v3 + 60) = 0u;
  *(v3 + 76) = 0u;
  *(v3 + 92) = 0;
  *(v3 + 60) = *(a2 + 60);
  v5 = *(a2 + 80);
  *(v3 + 64) = *(a2 + 64);
  *(v3 + 80) = v5;
  *(v3 + 96) = *(a2 + 96);
  *(v3 + 100) = *(a2 + 100);
  *(v3 + 104) = *(a2 + 104);
  *(v3 + 108) = *(a2 + 108);
  bzero((v3 + 112), 0x204uLL);
  *(v3 + 112) = *(a2 + 112);

  return memcpy((v3 + 116), (a2 + 116), 0x200uLL);
}

void *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN6crypto13auth_entry_ns10passphraseENS9_10public_keyENS9_13symmetric_keyENS9_7unknownENS9_5errorEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISF_LNS0_6_TraitE1EEEEEvRSG_OT_EUlSP_E_JRKNS0_6__baseILSJ_1EJSA_SB_SC_SD_SE_EEEEEEDcSO_DpT0_(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *v3 = *a2;
  *(v3 + 28) = 0u;
  *(v3 + 44) = 0;
  *(v3 + 12) = 0u;
  *(v3 + 12) = *(a2 + 12);
  v4 = *(a2 + 32);
  *(v3 + 16) = *(a2 + 16);
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a2 + 48);
  *(v3 + 52) = *(a2 + 52);
  *(v3 + 56) = *(a2 + 56);
  bzero((v3 + 60), 0x204uLL);
  *(v3 + 60) = *(a2 + 60);

  return memcpy((v3 + 64), (a2 + 64), 0x200uLL);
}

void *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN6crypto13auth_entry_ns10passphraseENS9_10public_keyENS9_13symmetric_keyENS9_7unknownENS9_5errorEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISF_LNS0_6_TraitE1EEEEEvRSG_OT_EUlSP_E_JRKNS0_6__baseILSJ_1EJSA_SB_SC_SD_SE_EEEEEEDcSO_DpT0_(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *v3 = *a2;
  *(v3 + 28) = 0u;
  *(v3 + 44) = 0;
  *(v3 + 12) = 0u;
  *(v3 + 12) = *(a2 + 12);
  v4 = *(a2 + 32);
  *(v3 + 16) = *(a2 + 16);
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a2 + 48);
  bzero((v3 + 52), 0x204uLL);
  *(v3 + 52) = *(a2 + 52);

  return memcpy((v3 + 56), (a2 + 56), 0x200uLL);
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN6crypto13auth_entry_ns10passphraseENS9_10public_keyENS9_13symmetric_keyENS9_7unknownENS9_5errorEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISF_LNS0_6_TraitE1EEEEEvRSG_OT_EUlSP_E_JRKNS0_6__baseILSJ_1EJSA_SB_SC_SD_SE_EEEEEEDcSO_DpT0_(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = *a2;
  v3 = *(a2 + 12);
  *(v2 + 16) = 0;
  v2 += 16;
  *(v2 - 4) = v3;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  return std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(v2, *(a2 + 16), *(a2 + 24), *(a2 + 24) - *(a2 + 16));
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN6crypto13auth_entry_ns10passphraseENS9_10public_keyENS9_13symmetric_keyENS9_7unknownENS9_5errorEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISF_LNS0_6_TraitE1EEEEEvRSG_OT_EUlSP_E_JRKNS0_6__baseILSJ_1EJSA_SB_SC_SD_SE_EEEEEEDcSO_DpT0_(_OWORD **a1, uint64_t a2)
{
  v2 = *a1;
  result = *a2;
  v4 = *(a2 + 16);
  *v2 = *a2;
  v2[1] = v4;
  return result;
}

void crypto::descriptor_handle_t::~descriptor_handle_t(crypto::descriptor_handle_t *this)
{
  if (*(this + 20) == 1)
  {
    (*(**(this + 3) + 48))(*(this + 3), *(this + 4), *(this + 12));
  }
}

uint64_t std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_248E09480(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<iovec>::__throw_length_error[abi:ne200100]();
}

void std::__throw_bad_variant_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82900] + 16;
  __cxa_throw(exception, MEMORY[0x277D82768], std::bad_variant_access::~bad_variant_access);
}

void *std::vector<char>::vector[abi:ne200100](void *result, uint64_t a2)
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

void sub_248E095C8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL boost::hana::detail::compare_finite_sequences<boost::hana::tuple<Wrapper<crypto::passphrase_header::key_derivation_algorithm_t,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::key_derivation_prng_algorithm_t,std::integral_constant<BOOL,false>,be_type>,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,crypto::passphrase_header::_salt,crypto::passphrase_header::_blob_encryption_iv,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,Wrapper<crypto::passphrase_header::wrap_key_crypto_algo,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::wrap_key_crypto_padding_algo,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::crypto_mode,std::integral_constant<BOOL,false>,be_type>,crypto::passphrase_header::_blob>,boost::hana::tuple<Wrapper<crypto::passphrase_header::key_derivation_algorithm_t,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::key_derivation_prng_algorithm_t,std::integral_constant<BOOL,false>,be_type>,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,crypto::passphrase_header::_salt,crypto::passphrase_header::_blob_encryption_iv,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,Wrapper<crypto::passphrase_header::wrap_key_crypto_algo,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::wrap_key_crypto_padding_algo,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::crypto_mode,std::integral_constant<BOOL,false>,be_type>,crypto::passphrase_header::_blob>,10ul>::apply<1ul>(void *a1, int a2)
{
  if (a2 && (v2 = a1[1], *(*a1 + 4) == *(v2 + 4)))
  {
    return boost::hana::detail::compare_finite_sequences<boost::hana::tuple<Wrapper<crypto::passphrase_header::key_derivation_algorithm_t,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::key_derivation_prng_algorithm_t,std::integral_constant<BOOL,false>,be_type>,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,crypto::passphrase_header::_salt,crypto::passphrase_header::_blob_encryption_iv,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,Wrapper<crypto::passphrase_header::wrap_key_crypto_algo,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::wrap_key_crypto_padding_algo,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::crypto_mode,std::integral_constant<BOOL,false>,be_type>,crypto::passphrase_header::_blob>,boost::hana::tuple<Wrapper<crypto::passphrase_header::key_derivation_algorithm_t,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::key_derivation_prng_algorithm_t,std::integral_constant<BOOL,false>,be_type>,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,crypto::passphrase_header::_salt,crypto::passphrase_header::_blob_encryption_iv,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,Wrapper<crypto::passphrase_header::wrap_key_crypto_algo,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::wrap_key_crypto_padding_algo,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::crypto_mode,std::integral_constant<BOOL,false>,be_type>,crypto::passphrase_header::_blob>,10ul>::apply<3ul>(a1, *(*a1 + 8) == *(v2 + 8));
  }

  else
  {
    return 0;
  }
}

BOOL boost::hana::detail::compare_finite_sequences<boost::hana::tuple<Wrapper<crypto::passphrase_header::key_derivation_algorithm_t,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::key_derivation_prng_algorithm_t,std::integral_constant<BOOL,false>,be_type>,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,crypto::passphrase_header::_salt,crypto::passphrase_header::_blob_encryption_iv,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,Wrapper<crypto::passphrase_header::wrap_key_crypto_algo,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::wrap_key_crypto_padding_algo,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::crypto_mode,std::integral_constant<BOOL,false>,be_type>,crypto::passphrase_header::_blob>,boost::hana::tuple<Wrapper<crypto::passphrase_header::key_derivation_algorithm_t,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::key_derivation_prng_algorithm_t,std::integral_constant<BOOL,false>,be_type>,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,crypto::passphrase_header::_salt,crypto::passphrase_header::_blob_encryption_iv,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,Wrapper<crypto::passphrase_header::wrap_key_crypto_algo,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::wrap_key_crypto_padding_algo,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::crypto_mode,std::integral_constant<BOOL,false>,be_type>,crypto::passphrase_header::_blob>,10ul>::apply<3ul>(void *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a1[1];
  v4 = *(*a1 + 12);
  v5 = v4 == *(v3 + 12) && memcmp((*a1 + 16), (v3 + 16), v4) == 0;

  return boost::hana::detail::compare_finite_sequences<boost::hana::tuple<Wrapper<crypto::passphrase_header::key_derivation_algorithm_t,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::key_derivation_prng_algorithm_t,std::integral_constant<BOOL,false>,be_type>,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,crypto::passphrase_header::_salt,crypto::passphrase_header::_blob_encryption_iv,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,Wrapper<crypto::passphrase_header::wrap_key_crypto_algo,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::wrap_key_crypto_padding_algo,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::crypto_mode,std::integral_constant<BOOL,false>,be_type>,crypto::passphrase_header::_blob>,boost::hana::tuple<Wrapper<crypto::passphrase_header::key_derivation_algorithm_t,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::key_derivation_prng_algorithm_t,std::integral_constant<BOOL,false>,be_type>,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,crypto::passphrase_header::_salt,crypto::passphrase_header::_blob_encryption_iv,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,Wrapper<crypto::passphrase_header::wrap_key_crypto_algo,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::wrap_key_crypto_padding_algo,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::crypto_mode,std::integral_constant<BOOL,false>,be_type>,crypto::passphrase_header::_blob>,10ul>::apply<4ul>(a1, v5);
}

BOOL boost::hana::detail::compare_finite_sequences<boost::hana::tuple<Wrapper<crypto::passphrase_header::key_derivation_algorithm_t,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::key_derivation_prng_algorithm_t,std::integral_constant<BOOL,false>,be_type>,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,crypto::passphrase_header::_salt,crypto::passphrase_header::_blob_encryption_iv,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,Wrapper<crypto::passphrase_header::wrap_key_crypto_algo,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::wrap_key_crypto_padding_algo,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::crypto_mode,std::integral_constant<BOOL,false>,be_type>,crypto::passphrase_header::_blob>,boost::hana::tuple<Wrapper<crypto::passphrase_header::key_derivation_algorithm_t,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::key_derivation_prng_algorithm_t,std::integral_constant<BOOL,false>,be_type>,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,crypto::passphrase_header::_salt,crypto::passphrase_header::_blob_encryption_iv,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,Wrapper<crypto::passphrase_header::wrap_key_crypto_algo,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::wrap_key_crypto_padding_algo,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::crypto_mode,std::integral_constant<BOOL,false>,be_type>,crypto::passphrase_header::_blob>,10ul>::apply<4ul>(void *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *a1;
  v4 = a1[1];
  v5 = *(*a1 + 48);
  if (v5 != v4[12] || memcmp((v3 + 52), v4 + 13, v5))
  {
    return 0;
  }

  v7 = *(v3 + 84) == v4[21];

  return boost::hana::detail::compare_finite_sequences<boost::hana::tuple<Wrapper<crypto::passphrase_header::key_derivation_algorithm_t,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::key_derivation_prng_algorithm_t,std::integral_constant<BOOL,false>,be_type>,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,crypto::passphrase_header::_salt,crypto::passphrase_header::_blob_encryption_iv,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,Wrapper<crypto::passphrase_header::wrap_key_crypto_algo,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::wrap_key_crypto_padding_algo,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::crypto_mode,std::integral_constant<BOOL,false>,be_type>,crypto::passphrase_header::_blob>,boost::hana::tuple<Wrapper<crypto::passphrase_header::key_derivation_algorithm_t,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::key_derivation_prng_algorithm_t,std::integral_constant<BOOL,false>,be_type>,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,crypto::passphrase_header::_salt,crypto::passphrase_header::_blob_encryption_iv,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,Wrapper<crypto::passphrase_header::wrap_key_crypto_algo,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::wrap_key_crypto_padding_algo,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::crypto_mode,std::integral_constant<BOOL,false>,be_type>,crypto::passphrase_header::_blob>,10ul>::apply<6ul>(a1, v7);
}

BOOL boost::hana::detail::compare_finite_sequences<boost::hana::tuple<Wrapper<crypto::passphrase_header::key_derivation_algorithm_t,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::key_derivation_prng_algorithm_t,std::integral_constant<BOOL,false>,be_type>,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,crypto::passphrase_header::_salt,crypto::passphrase_header::_blob_encryption_iv,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,Wrapper<crypto::passphrase_header::wrap_key_crypto_algo,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::wrap_key_crypto_padding_algo,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::crypto_mode,std::integral_constant<BOOL,false>,be_type>,crypto::passphrase_header::_blob>,boost::hana::tuple<Wrapper<crypto::passphrase_header::key_derivation_algorithm_t,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::key_derivation_prng_algorithm_t,std::integral_constant<BOOL,false>,be_type>,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,crypto::passphrase_header::_salt,crypto::passphrase_header::_blob_encryption_iv,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,Wrapper<crypto::passphrase_header::wrap_key_crypto_algo,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::wrap_key_crypto_padding_algo,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::crypto_mode,std::integral_constant<BOOL,false>,be_type>,crypto::passphrase_header::_blob>,10ul>::apply<6ul>(void *a1, int a2)
{
  if (a2 && (v2 = a1[1], *(*a1 + 88) == *(v2 + 88)))
  {
    return boost::hana::detail::compare_finite_sequences<boost::hana::tuple<Wrapper<crypto::passphrase_header::key_derivation_algorithm_t,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::key_derivation_prng_algorithm_t,std::integral_constant<BOOL,false>,be_type>,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,crypto::passphrase_header::_salt,crypto::passphrase_header::_blob_encryption_iv,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,Wrapper<crypto::passphrase_header::wrap_key_crypto_algo,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::wrap_key_crypto_padding_algo,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::crypto_mode,std::integral_constant<BOOL,false>,be_type>,crypto::passphrase_header::_blob>,boost::hana::tuple<Wrapper<crypto::passphrase_header::key_derivation_algorithm_t,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::key_derivation_prng_algorithm_t,std::integral_constant<BOOL,false>,be_type>,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,crypto::passphrase_header::_salt,crypto::passphrase_header::_blob_encryption_iv,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,Wrapper<crypto::passphrase_header::wrap_key_crypto_algo,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::wrap_key_crypto_padding_algo,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::crypto_mode,std::integral_constant<BOOL,false>,be_type>,crypto::passphrase_header::_blob>,10ul>::apply<8ul>(a1, *(*a1 + 92) == *(v2 + 92));
  }

  else
  {
    return 0;
  }
}

BOOL boost::hana::detail::compare_finite_sequences<boost::hana::tuple<Wrapper<crypto::passphrase_header::key_derivation_algorithm_t,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::key_derivation_prng_algorithm_t,std::integral_constant<BOOL,false>,be_type>,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,crypto::passphrase_header::_salt,crypto::passphrase_header::_blob_encryption_iv,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,Wrapper<crypto::passphrase_header::wrap_key_crypto_algo,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::wrap_key_crypto_padding_algo,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::crypto_mode,std::integral_constant<BOOL,false>,be_type>,crypto::passphrase_header::_blob>,boost::hana::tuple<Wrapper<crypto::passphrase_header::key_derivation_algorithm_t,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::key_derivation_prng_algorithm_t,std::integral_constant<BOOL,false>,be_type>,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,crypto::passphrase_header::_salt,crypto::passphrase_header::_blob_encryption_iv,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,Wrapper<crypto::passphrase_header::wrap_key_crypto_algo,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::wrap_key_crypto_padding_algo,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::crypto_mode,std::integral_constant<BOOL,false>,be_type>,crypto::passphrase_header::_blob>,10ul>::apply<8ul>(void *a1, int a2)
{
  if (a2 && (v2 = *a1, v3 = a1[1], *(*a1 + 96) == v3[24]) && (v4 = *(v2 + 100), v4 == v3[25]))
  {
    return memcmp((v2 + 104), v3 + 26, v4) == 0;
  }

  else
  {
    return 0;
  }
}

void *std::__shared_ptr_emplace<crypto::format>::__shared_ptr_emplace[abi:ne200100]<crypto::keys,std::shared_ptr<crypto::header> &,std::allocator<crypto::format>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BD4B28;
  crypto::format::format(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<crypto::format>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285BD4B28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

void std::__shared_ptr_emplace<crypto::format>::__on_zero_shared(void *a1)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::format::aes_cbc_data,crypto::format::aes_xts_data>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((a1 + 11));
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;
    operator delete(v3);
  }

  v4 = a1[4];
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::format::aes_cbc_data,crypto::format::aes_xts_data>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 != -1)
  {
    result = (off_285BD4B68[v2])(&v3, result);
  }

  *(v1 + 16) = -1;
  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN6crypto6format12aes_cbc_dataENS9_12aes_xts_dataEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSD_1EJSA_SB_EEEEEEDcSF_DpT0_(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  *a2 = 0;
  if (result)
  {
    JUMPOUT(0x24C1ED710);
  }

  return result;
}

uint64_t *std::shared_ptr<crypto::passphrase_header>::shared_ptr[abi:ne200100]<crypto::passphrase_header,std::default_delete<crypto::passphrase_header>,0>(uint64_t *result, uint64_t *a2)
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

void std::__shared_ptr_pointer<crypto::passphrase_header  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t std::__shared_ptr_pointer<crypto::passphrase_header  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x24C1ED730);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<crypto::passphrase_header  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *std::__shared_ptr_emplace<crypto::passphrase_header>::__shared_ptr_emplace[abi:ne200100]<char *,std::allocator<crypto::passphrase_header>,0>(void *a1, const char **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BD4BE8;
  crypto::passphrase_header::passphrase_header((a1 + 3), *a2);
  return a1;
}

void std::__shared_ptr_emplace<crypto::passphrase_header>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285BD4BE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

void sub_248E0A0C8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  if (a2 == 1)
  {
    v13 = objc_begin_catch(a1);
    v14 = [v13 reason];
    [DIError failWithEnumValue:150 verboseInfo:v14 error:v10];

    objc_end_catch();
    JUMPOUT(0x248E0A090);
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_248E0A50C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_248E0AA08(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_248E0AC3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose((v26 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_248E0C71C(_Unwind_Exception *a1, int a2)
{
  (*(*v4 + 16))(v4);

  if (a2 == 1)
  {
    v8 = [objc_begin_catch(a1) reason];
    [DIError failWithEnumValue:150 verboseInfo:v8 error:v2];

    objc_end_catch();
    JUMPOUT(0x248E0C490);
  }

  _Unwind_Resume(a1);
}

uint64_t DiskImage::Context::flush(void *a1)
{
  if (*(a1[1] + 8))
  {
    if (DIDebugLogsEnabled())
    {
      *&v3 = "DiskImage::Context::flush(di_flush_mode)";
      *(&v3 + 1) = 25;
      v4 = 2;
      di_log::logger<di_log::log_printer<191ul>>::logger(v5, &v3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "Disk image is terminated, skipping flush", 40);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<191ul>>::~logger_buf(v5);
      MEMORY[0x24C1ED6A0](&v7);
    }

    return 4294967290;
  }

  else
  {
    v2 = *(*a1 + 24);

    return v2();
  }
}

void sub_248E0C9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<191ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void sub_248E0CDB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248E0D234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248E0FCF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  if (a19 == 1)
  {
    diskimage_uio::diskimage_open_params::~diskimage_open_params(&a17);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(a1);
}

void sub_248E0FED0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ReadOnlyBackend>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285BD4C58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

void BackendInternalBackend::BackendInternalBackend(Backend *a1, void *a2)
{
  Backend::Backend(a1);
  *v3 = &unk_285BD4DB0;
  v4 = a2[1];
  v3[3] = *a2;
  v3[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }
}

void ReadOnlyBackend::~ReadOnlyBackend(ReadOnlyBackend *this)
{
  *this = &unk_285BD4DB0;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

{
  *this = &unk_285BD4DB0;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  JUMPOUT(0x24C1ED730);
}

void BackendInternalBackend::getContext(BackendInternalBackend *this)
{
  (*(**(this + 3) + 80))(&v2);
  (*(*this + 192))(this, &v2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_248E10444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *BackendInternalBackend::full_name(void **a1)
{
  v2 = ((*a1)[8])(a1);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "(", 1);
  v4 = (*(*a1[3] + 64))(a1[3], v3);

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ")", 1);
}

void BackendInternalBackend::construct_context_from_inner(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  std::ostringstream::basic_ostringstream[abi:ne200100](v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Unexpected context construction by ", 35);
  operator<<(v3, a1);
  DiskImagesRuntimeException::DiskImagesRuntimeException(exception, v3, 0x16u);
}

void sub_248E10768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  *(v29 + *(*MEMORY[0x277D82828] - 24)) = *(MEMORY[0x277D82828] + 24);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&a12);
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](&a27);
  if (v28)
  {
    __cxa_free_exception(v27);
  }

  _Unwind_Resume(a1);
}

void std::shared_ptr<ReadOnlyBackend>::__enable_weak_this[abi:ne200100]<Backend,ReadOnlyBackend,0>(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
    }
  }
}

void sub_248E10D6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248E10EF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248E110AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248E11274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248E11A0C()
{
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  JUMPOUT(0x248E11AB4);
}

void sub_248E11B34(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

char **std::dynamic_pointer_cast[abi:ne200100]<FileLocal,Backend>@<X0>(char ***a1@<X0>, char ***a2@<X8>)
{
  v2 = a1;
  result = *a1;
  {
    v6 = v2[1];
    *a2 = result;
    a2[1] = v6;
  }

  else
  {
    v2 = a2;
  }

  *v2 = 0;
  v2[1] = 0;
  return result;
}

void sub_248E12674(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va, a5);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  if (a5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a5);
  }

  AEAHelper::~AEAHelper(va);
  v8 = *(v6 - 40);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  _Unwind_Resume(a1);
}

void sub_248E129C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, uint64_t a11, void *a12, std::__shared_weak_count *a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *__p, std::__shared_weak_count *a21, __int16 a22, __int16 a23, __int16 a24, char a25, char a26)
{
  if (a2)
  {
    if (a21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a21);
    }

    if (a13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a13);
    }

    v29 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      [DIError nilWithDIException:v29 description:@"Error creating AEA backend" error:v26];
    }

    else
    {
      [DIError nilWithEnumValue:150 verboseInfo:@"Unexpected error creating AEA backend" error:v26];
    }

    objc_claimAutoreleasedReturnValue();
    __cxa_end_catch();
    JUMPOUT(0x248E12914);
  }

  _Unwind_Resume(exception_object);
}

void UDIF_header::~UDIF_header(UDIF_header *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *this;
  *this = 0;
  if (v3)
  {
    MEMORY[0x24C1ED730](v3, 0x1000C407784F2AFLL);
  }
}

void sub_248E13CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  if (*(v13 - 73) < 0)
  {
    operator delete(*(v13 - 96));
  }

  std::ostringstream::~ostringstream(va);
  if (v12)
  {
    __cxa_free_exception(v11);
  }

  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_248E13D1C(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x248E13D24);
  }

  __clang_call_terminate(a1);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *a1 = *MEMORY[0x277D82828];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 112);
  return a1;
}

void sub_248E15204(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

std::__shared_weak_count **std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::insert(void *a1, uint64_t a2, __n128 *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) + 1;
    if (v11 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<iovec>::__throw_length_error[abi:ne200100]();
    }

    v12 = a2 - v10;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v10) >> 3);
    v14 = 2 * v13;
    if (2 * v13 <= v11)
    {
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) + 1;
    }

    if (v13 >= 0x555555555555555)
    {
      v15 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v14;
    }

    v27 = a1;
    if (v15)
    {
      std::allocator<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::allocate_at_least[abi:ne200100](a1, v15);
    }

    v24 = 0;
    v25 = 8 * (v12 >> 3);
    v26 = v25;
    std::__split_buffer<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::emplace_back<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>(&v24, a3);
    v16 = v25;
    memcpy(v26, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v25;
    *&v26 = v26 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v26;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v24 = v21;
    v25 = v21;
    std::__split_buffer<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::~__split_buffer(&v24);
    return v16;
  }

  else if (a2 == v6)
  {
    *v6 = *a3;
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    *(v6 + 16) = a3[1].n128_u32[0];
    a1[1] = v6 + 24;
  }

  else
  {
    std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::__move_range(a1, a2, v6, a2 + 24);
    v8 = *a3;
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    v9 = v4[1];
    *v4 = v8;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    *(v4 + 4) = a3[1].n128_u32[0];
  }

  return v4;
}

void sub_248E153C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_248E15C78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_248E15F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, void **a22, std::__shared_weak_count *a23)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  std::vector<std::shared_ptr<char>>::__destroy_vector::operator()[abi:ne200100](&a22);
  _Unwind_Resume(a1);
}

void **std::vector<std::shared_ptr<LockableResource>>::push_back[abi:ne200100](void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<iovec>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      std::allocator<std::shared_ptr<LockableResource>>::allocate_at_least[abi:ne200100](result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::shared_ptr<char>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

void sub_248E16370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x24C1ED730](v10, 0x10E1C40959163D0);

  _Unwind_Resume(a1);
}

char **std::dynamic_pointer_cast[abi:ne200100]<Knoxbackend,Backend>@<X0>(char ***a1@<X0>, char ***a2@<X8>)
{
  v2 = a1;
  result = *a1;
  {
    v6 = v2[1];
    *a2 = result;
    a2[1] = v6;
  }

  else
  {
    v2 = a2;
  }

  *v2 = 0;
  v2[1] = 0;
  return result;
}

char **std::dynamic_pointer_cast[abi:ne200100]<AEA_backend,Backend>@<X0>(char ***a1@<X0>, char ***a2@<X8>)
{
  v2 = a1;
  result = *a1;
  {
    v6 = v2[1];
    *a2 = result;
    a2[1] = v6;
  }

  else
  {
    v2 = a2;
  }

  *v2 = 0;
  v2[1] = 0;
  return result;
}

void sub_248E16A78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x24C1ED730](v10, 0x10B3C402F18E594);

  _Unwind_Resume(a1);
}

void sub_248E16F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    [DiskImageParamsUDIF_XPC initWithBackendXPC:a10 header:?];
  }

  _Unwind_Resume(a1);
}

void sub_248E1726C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_248E175A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::ostringstream::~ostringstream(&a9);

  _Unwind_Resume(a1);
}

void sub_248E18044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

void sub_248E18560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::ostringstream::~ostringstream(&a9);

  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<108ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<108ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BD4F00;
  a1[45] = &unk_285BD5000;
  a1[46] = &unk_285BD5028;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BD4F00;
  a1[45] = &unk_285BD4F88;
  a1[46] = &unk_285BD4FB0;
  return a1;
}

void sub_248E189B4(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<108ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<108ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<108ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<115ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<115ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BD5120;
  a1[45] = &unk_285BD5220;
  a1[46] = &unk_285BD5248;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BD5120;
  a1[45] = &unk_285BD51A8;
  a1[46] = &unk_285BD51D0;
  return a1;
}

void sub_248E18B20(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<115ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<115ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<115ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<122ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<122ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BD5340;
  a1[45] = &unk_285BD5440;
  a1[46] = &unk_285BD5468;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BD5340;
  a1[45] = &unk_285BD53C8;
  a1[46] = &unk_285BD53F0;
  return a1;
}

void sub_248E18C8C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<122ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<122ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<122ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<129ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<129ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BD5560;
  a1[45] = &unk_285BD5660;
  a1[46] = &unk_285BD5688;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BD5560;
  a1[45] = &unk_285BD55E8;
  a1[46] = &unk_285BD5610;
  return a1;
}

void sub_248E18DF8(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<129ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<129ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<129ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<108ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BD5098;
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

void sub_248E18F10(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<108ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BD5098;
  di_log::logger_buf<di_log::log_printer<108ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<108ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<108ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<108ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<108ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<108ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<108ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<108ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<108ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<108ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<108ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<108ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<108ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<108ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<108ul>::log((a1 + 72), __p);
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

void sub_248E194B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<108ul>::log(uint64_t *a1, uint64_t *a2)
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
    v21 = 108;
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
      v21 = 108;
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

const void *std::stringbuf::str[abi:ne200100]@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = std::stringbuf::view[abi:ne200100](a1);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  a2[v5] = 0;
  return result;
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
  __cxa_throw(exception, MEMORY[0x277D82770], MEMORY[0x277D82618]);
}

uint64_t di_log::logger_buf<di_log::log_printer<115ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BD52B8;
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

void sub_248E19870(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<115ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BD52B8;
  di_log::logger_buf<di_log::log_printer<115ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<115ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<115ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<115ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<115ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<115ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<115ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<115ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<115ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<115ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<115ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<115ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<115ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<115ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<115ul>::log((a1 + 72), __p);
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

void sub_248E19E14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<115ul>::log(uint64_t *a1, uint64_t *a2)
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
    v21 = 115;
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
      v21 = 115;
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

uint64_t di_log::logger_buf<di_log::log_printer<122ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BD54D8;
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

void sub_248E1A0E0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<122ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BD54D8;
  di_log::logger_buf<di_log::log_printer<122ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<122ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<122ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<122ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<122ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<122ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<122ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<122ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<122ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<122ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<122ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<122ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<122ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<122ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<122ul>::log((a1 + 72), __p);
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

void sub_248E1A684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<122ul>::log(uint64_t *a1, uint64_t *a2)
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
    v21 = 122;
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
      v21 = 122;
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

uint64_t di_log::logger_buf<di_log::log_printer<129ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BD56F8;
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

void sub_248E1A950(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<129ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BD56F8;
  di_log::logger_buf<di_log::log_printer<129ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<129ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<129ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<129ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<129ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<129ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<129ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<129ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<129ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<129ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<129ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<129ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<129ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<129ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<129ul>::log((a1 + 72), __p);
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

void sub_248E1AEF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<129ul>::log(uint64_t *a1, uint64_t *a2)
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
    v21 = 129;
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
      v21 = 129;
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

void AEAHelper::~AEAHelper(void **this)
{
  if (*(this + 120) == 1 && *(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  if (*(this + 80) == 1 && *(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 48) == 1 && *(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 16) == 1)
  {
    v2 = this[1];
    this[1] = 0;
    if (v2)
    {
      MEMORY[0x24C1ED710](v2, 0x1000C8077774924);
    }
  }

  AEAwrapper::AuthData::~AuthData(this);
}

uint64_t std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8 = *v9;
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v8 + 16) = *(v9 + 16);
      v9 += 24;
      v8 += 24;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role> *,std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role> *,std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role> *>(&v11, a2, v7, v6);
}

__n128 std::__split_buffer<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::emplace_back<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>(void *a1, __n128 *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v9 = 1;
      }

      else
      {
        v9 = 0x5555555555555556 * ((v4 - *a1) >> 3);
      }

      v10 = a1[4];
      v12[4] = a1[4];
      std::allocator<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::allocate_at_least[abi:ne200100](v10, v9);
    }

    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3) + 1 + ((0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3) + 1) >> 63);
    v7 = -3 * (v6 >> 1);
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role> *,std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role> *,std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role> *>(v12, v5, v4, v5 - 24 * (v6 >> 1));
    v4 = v8;
    a1[1] += 8 * v7;
    a1[2] = v8;
  }

  result = *a2;
  *v4 = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  *(v4 + 16) = a2[1].n128_u32[0];
  a1[2] += 24;
  return result;
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role> *,std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role> *,std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v8 = a3 + v7;
      v9 = *(a3 + v7 - 24);
      *(v8 - 24) = 0;
      *(v8 - 16) = 0;
      v10 = *(a4 + v7 - 16);
      *(a4 + v7 - 24) = v9;
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      *(a4 + v7 - 8) = *(v8 - 8);
      v7 -= 24;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

void std::allocator<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role> *,std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role> *,std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role> *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
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
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      *(a4 + 16) = *(v5 + 4);
      v5 = (v5 + 24);
      a4 += 24;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void **std::__split_buffer<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 24;
    v4 = *(v1 - 16);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 24;
    }
  }
}

uint64_t smart_enums::validators::flags<unsigned int>(uint64_t result, int a2, int *a3, uint64_t a4)
{
  if (a4)
  {
    v4 = 4 * a4;
    do
    {
      v5 = *a3++;
      a2 &= ~v5;
      v4 -= 4;
    }

    while (v4);
  }

  if (a2)
  {
    v6 = result;
    v7 = a2;
    exception = __cxa_allocate_exception(0x28uLL);
    exception[1] = v6;
    exception[2] = "invalid flags";
    exception[3] = "flags validator";
    *exception = &unk_285BD5790;
    *(exception + 8) = v7;
  }

  return result;
}

{
  if (a4)
  {
    v4 = 4 * a4;
    do
    {
      v5 = *a3++;
      a2 &= ~v5;
      v4 -= 4;
    }

    while (v4);
  }

  if (a2)
  {
    v6 = result;
    v7 = a2;
    exception = __cxa_allocate_exception(0x28uLL);
    exception[1] = v6;
    exception[2] = "invalid flags";
    exception[3] = "flags validator";
    *exception = &unk_285BD5790;
    *(exception + 8) = v7;
  }

  return result;
}

void smart_enums::validators::validator_exception<unsigned int>::~validator_exception(std::exception *a1)
{
  std::exception::~exception(a1);

  JUMPOUT(0x24C1ED730);
}

void smart_enums::validators::validator_exception<unsigned int>::reason(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = smart_enums::validators::validator_exception_base::what(a1);
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
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " [", 2);
  *(v8 + *(*v8 - 24) + 8) = *(v8 + *(*v8 - 24) + 8) & 0xFFFFFFB5 | 8;
  v9 = a1[8];
  v10 = MEMORY[0x24C1ED3A0]();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "]", 1);
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

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_248E1BB4C(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x24C1ED6A0](v1);
  _Unwind_Resume(a1);
}

void std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 24)
  {
    v4 = *(i - 16);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

BOOL FileDescriptor::is_mounted_on_apfs(FileDescriptor *this)
{
  FileDescriptor::get_mounted_on_fs(v3, this);
  if (v4 < 0)
  {
    v1 = v3[1] == 4 && *v3[0] == 1936093281;
    operator delete(v3[0]);
  }

  else
  {
    return v4 == 4 && LODWORD(v3[0]) == 1936093281;
  }

  return v1;
}

void std::allocator<std::shared_ptr<LockableResource>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void DiskImageROChunkRaw::~DiskImageROChunkRaw(DiskImageROChunkRaw *this)
{
  *this = &unk_285BD57C8;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_285BD57C8;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x24C1ED730);
}

__n128 DiskImageROChunkRaw::get_io_constraints@<Q0>(DiskImageROChunkRaw *this@<X0>, uint64_t a2@<X8>)
{
  result = *(this + 40);
  v3 = *(this + 56);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

unint64_t DiskImage::read(DiskImage *this, DiskImage::Context *a2, const sg_vec_ns::details::sg_vec_iterator *a3, const sg_vec_ns::details::sg_vec_iterator *a4)
{
  v13[0] = DiskImage::read;
  v13[1] = 0;
  v13[2] = this;
  v13[3] = a2;
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v10, a3);
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(&v7, a4);
  v5 = for_each_sg_in_vec<std::__bind<io_result_t (DiskImage::*)(DiskImage::Context &,sg_entry const&),DiskImage*,std::reference_wrapper<DiskImage::Context>,std::placeholders::__ph<1> const&>>(v13, v10, &v7, 0xFFFFFFFFFFFFFFFFLL);
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

void sub_248E1C020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a9);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a37);
  _Unwind_Resume(a1);
}

unint64_t DiskImage::write(DiskImage *this, DiskImage::Context *a2, const sg_vec_ns::details::sg_vec_iterator *a3, const sg_vec_ns::details::sg_vec_iterator *a4)
{
  v13[0] = DiskImage::write;
  v13[1] = 0;
  v13[2] = this;
  v13[3] = a2;
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v10, a3);
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(&v7, a4);
  v5 = for_each_sg_in_vec<std::__bind<io_result_t (DiskImage::*)(DiskImage::Context &,sg_entry const&),DiskImage*,std::reference_wrapper<DiskImage::Context>,std::placeholders::__ph<1> const&>>(v13, v10, &v7, 0xFFFFFFFFFFFFFFFFLL);
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

void sub_248E1C0F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a9);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a37);
  _Unwind_Resume(a1);
}

uint64_t DiskImageROChunkRaw::read(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 104) == 1 && *(a3 + 48) != 0)
  {
    return -102;
  }

  DiskImageROChunkRaw::get_rounded_sg_entry(a1, a3, &v7);
  v5 = (*(**(a2 + 16) + 128))(*(a2 + 16), &v7);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return v5;
}

void sub_248E1C1B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

double DiskImage::get_io_constraints@<D0>(DiskImage *this@<X0>, _OWORD *a2@<X8>)
{
  result = 0.0;
  *a2 = 0u;
  a2[1] = 0u;
  return result;
}

void DiskImageROChunkRaw::ContextROChunkRaw::~ContextROChunkRaw(DiskImageROChunkRaw::ContextROChunkRaw *this)
{
  *this = &unk_285BD58D8;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_285BD58D8;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x24C1ED730);
}

unint64_t for_each_sg_in_vec<std::__bind<io_result_t (DiskImage::*)(DiskImage::Context &,sg_entry const&),DiskImage*,std::reference_wrapper<DiskImage::Context>,std::placeholders::__ph<1> const&>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
  v13 = details::for_each_sg_in_vec_internal<std::__bind<io_result_t (DiskImage::*)(DiskImage::Context &,sg_entry const&),DiskImage*,std::reference_wrapper<DiskImage::Context>,std::placeholders::__ph<1> const&>>(a1, v26, &v15, a4, 0);
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

void sub_248E1C3F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a9);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a37);
  _Unwind_Resume(a1);
}

unint64_t details::for_each_sg_in_vec_internal<std::__bind<io_result_t (DiskImage::*)(DiskImage::Context &,sg_entry const&),DiskImage*,std::reference_wrapper<DiskImage::Context>,std::placeholders::__ph<1> const&>>(uint64_t a1, const sg_vec_ns::details::sg_vec_iterator *a2, const sg_vec_ns::details::sg_vec_iterator *a3, unint64_t a4, char a5)
{
  v8 = 0;
  v9 = 0;
  v10 = *(a3 + 26);
  v33[0] = 0;
  v40 = 0;
  while (!sg_vec_ns::details::sg_vec_iterator::operator==(a2, a3))
  {
    if (*(a2 + 26) >= v10 || v9 >= a4)
    {
      break;
    }

    if (DIDebugLogsEnabled())
    {
      *&v31 = "details::for_each_sg_in_vec_internal(Fn &&, sg_vec_ref::iterator, sg_vec::iterator, size_t, BOOL) [Fn = std::__bind<io_result_t (DiskImage::*)(DiskImage::Context &, const sg_entry &), DiskImage *, std::reference_wrapper<DiskImage::Context>, const std::placeholders::__ph<1> &>]";
      *(&v31 + 1) = 142;
      v32 = 2;
      di_log::logger<di_log::log_printer<624ul>>::logger(v27, &v31);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, "sg: ", 4);
      operator<<(&v29, a2);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<624ul>>::~logger_buf(v27);
      MEMORY[0x24C1ED6A0](&v30);
    }

    v27[0] = 0;
    v27[1] = v10;
    v28 = 2;
    trim_sg_to_interval(a2, v27, &v31);
    v12 = *a1;
    v13 = *(a1 + 8);
    v14 = (*(a1 + 16) + (v13 >> 1));
    if (v13)
    {
      v12 = *(*v14 + v12);
    }

    v15 = v12(v14, *(a1 + 24), &v31);
    v17 = v15;
    v18 = v15 >= 0 || v15 == 0;
    v19 = v18;
    if (v18)
    {
      v20 = v16;
      if ((v8 & 1) == 0)
      {
        v8 = 1;
      }

      if (sg_vec_ns::should_create_new_sg_vec_ref(a2, a3, v16, v15))
      {
        sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v26, a2);
        sg_vec_ns::generate_vec_ref(v26, a3, v20, v17, a4, v27);
        std::optional<sg_vec_ref>::operator=[abi:ne200100]<sg_vec_ref,void>(v33, v27);
        sg_vec_ref::~sg_vec_ref(v27);
        sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(v26);
        sg_vec_ref::begin(v33, v27);
        sg_vec_ns::details::sg_vec_iterator::operator=(a2, v27);
        sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(v27);
        sg_vec_ref::end(v33, v27);
        sg_vec_ns::details::sg_vec_iterator::operator=(a3, v27);
        sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(v27);
      }

      if (a5)
      {
        sg_vec_ns::details::sg_vec_iterator::operator+=(a2, v17);
      }

      else
      {
        sg_vec_ns::details::sg_vec_iterator::operator+=(a2, v17);
      }

      v9 += v17;
    }

    else
    {
      if (v15 >= 0)
      {
        v21 = v15;
      }

      else
      {
        v21 = -v15;
      }

      v23 = -v21;
    }

    if (*(&v31 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v31 + 1));
    }

    if ((v19 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  v23 = v9;
LABEL_36:
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

    if (v37)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v37);
    }

    if (v36)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    }

    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }

    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }
  }

  return v23;
}

void sub_248E1C728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a41);
  if (STACK[0x3D8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x3D8]);
  }

  std::optional<sg_vec_ref>::~optional(&STACK[0x440]);
  _Unwind_Resume(a1);
}

void *DiskImageROChunkRaw::get_rounded_sg_entry@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[2];
  v6 = a2[3];
  v7 = *(a1 + 40);
  v8 = (*(**(a1 + 16) + 40))(*(a1 + 16));
  v9 = a2[4];
  v10 = *a2;
  result = details::get_dummy_shared_ptr();
  v12 = result[1];
  *a3 = v10;
  *(a3 + 8) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = v6 / v7 * v7;
  v14 = v8 - v13;
  v15 = v5 + v6 + v7 - 1 - v13 - (v5 + v6 + v7 - 1) % v7;
  if (v9 < v15)
  {
    v15 = v9;
  }

  if (v14 >= v15)
  {
    v14 = v15;
  }

  *(a3 + 16) = v14;
  *(a3 + 24) = v13;
  *(a3 + 32) = v14;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 104) = 0;
  return result;
}

uint64_t DiskImageRaw::DiskImageRaw(uint64_t a1, void *a2, unint64_t a3, unint64_t a4)
{
  *(a1 + 8) = 0;
  *a1 = &unk_285BD5930;
  v5 = a2[1];
  *(a1 + 16) = *a2;
  *(a1 + 24) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 32) = a3;
  if (!a4)
  {
    if (!((*(**a2 + 40))() % a3))
    {
      return a1;
    }

LABEL_9:
    exception = __cxa_allocate_exception(0x40uLL);
    *exception = &unk_285BF4E60;
    v11 = std::generic_category();
    exception[1] = 152;
    exception[2] = v11;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = "Size is not a multiple of block size";
  }

  if (a4 % a3)
  {
    goto LABEL_9;
  }

  v6 = (*(*a1 + 72))(a1, a4);
  if (v6)
  {
    v7 = __cxa_allocate_exception(0x40uLL);
    *v7 = &unk_285BF4E60;
    v8 = std::generic_category();
    v7[1] = v6;
    v7[2] = v8;
    *(v7 + 24) = 0;
    *(v7 + 48) = 0;
    v7[7] = "set size failed";
  }

  return a1;
}

void sub_248E1CA6C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void DiskImageRaw::~DiskImageRaw(DiskImageRaw *this)
{
  *this = &unk_285BD5930;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_285BD5930;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x24C1ED730);
}

uint64_t DiskImageRaw::read(DiskImageRaw *this, DiskImage::Context *a2, const sg_vec_ns::details::sg_vec_iterator *a3, const sg_vec_ns::details::sg_vec_iterator *a4)
{
  v29[48] = *MEMORY[0x277D85DE8];
  __p = v29;
  v28 = xmmword_248F9D670;
  v7 = sg_vec_ns::count_buffers(a3, a4, a3);
  v9 = v7;
  if (v7 > 0x10)
  {
    if (v7 >= 0x555555555555556)
    {
      boost::container::throw_length_error("get_next_capacity, allocator's max size reached", v8);
    }

    v10 = operator new(24 * v7);
    boost::container::vector<lw_future<int>,boost::container::small_vector_allocator<lw_future<int>,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_new_allocation<boost::container::dtl::insert_range_proxy<boost::container::small_vector_allocator<lw_future<int>,boost::container::new_allocator<void>,void>,boost::move_iterator<lw_future<int>*>,lw_future<int>*>>(&__p, v10, v9, __p + 24 * v28, 0, 0);
  }

  v26[0] = &__p;
  v26[1] = a2;
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v23, a3);
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(&v20, a4);
  _Z18for_each_sg_in_vecIZN12DiskImageRaw4readERN9DiskImage7ContextERKN9sg_vec_ns7details15sg_vec_iteratorES8_EUlRKT_E_E11io_result_tOS9_S6_S6_m(v26, v23, &v20, 0xFFFFFFFFFFFFFFFFLL);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  (*(**(a2 + 2) + 152))(*(a2 + 2));
  if (v28)
  {
    v12 = 0;
    v13 = __p;
    v14 = 24 * v28;
    do
    {
      v15 = lw_future<int>::get(v13, v11);
      if (v15 < 0)
      {
        break;
      }

      v12 += v15;
      v13 = (v13 + 24);
      v15 = v12;
      v14 -= 24;
    }

    while (v14);
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(a3 + 3);
  if (*(&v28 + 1) && v29 != __p)
  {
    operator delete(__p);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

void sub_248E1CF38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a9);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a37);
  if (a69)
  {
    if (v69 != __p)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t DiskImageRaw::write(DiskImageRaw *this, DiskImage::Context *a2, const sg_vec_ns::details::sg_vec_iterator *a3, const sg_vec_ns::details::sg_vec_iterator *a4)
{
  v36[20] = *MEMORY[0x277D85DE8];
  v8 = ((*(a4 + 26) - *(a3 + 26)) & ~((*(a4 + 26) - *(a3 + 26)) >> 63)) + *(a3 + 3);
  if (v8 > (*(**(this + 2) + 40))(*(this + 2)))
  {
    *&v31 = "io_result_t DiskImageRaw::write(DiskImage::Context &, const sg_vec::iterator &, const sg_vec::iterator &)";
    *(&v31 + 1) = 31;
    v32 = 16;
    di_log::logger<di_log::log_printer<65ul>>::logger(&__p, &v31);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "Requested write is out of range - offset ", 41);
    MEMORY[0x24C1ED3E0](v36, *(a3 + 3));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, " length ", 8);
    v23 = *(a4 + 26) - *(a3 + 26);
    MEMORY[0x24C1ED3C0](v36, v23 & ~(v23 >> 63));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, " backend size ", 14);
    v24 = (*(**(this + 2) + 40))(*(this + 2));
    MEMORY[0x24C1ED3E0](v36, v24);
    di_log::logger<di_log::log_printer<65ul>>::~logger(&__p);
    v19 = -34;
  }

  else
  {
    __p = v35;
    v34 = xmmword_248F9D670;
    v10 = sg_vec_ns::count_buffers(a3, a4, v9);
    v12 = v10;
    if (v10 > 0x10)
    {
      if (v10 >= 0x555555555555556)
      {
        boost::container::throw_length_error("get_next_capacity, allocator's max size reached", v11);
      }

      v13 = operator new(24 * v10);
      boost::container::vector<lw_future<int>,boost::container::small_vector_allocator<lw_future<int>,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_new_allocation<boost::container::dtl::insert_range_proxy<boost::container::small_vector_allocator<lw_future<int>,boost::container::new_allocator<void>,void>,boost::move_iterator<lw_future<int>*>,lw_future<int>*>>(&__p, v13, v12, __p + 24 * v34, 0, 0);
    }

    *&v31 = &__p;
    *(&v31 + 1) = a2;
    sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(&v28, a3);
    sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v25, a4);
    _Z18for_each_sg_in_vecIZN12DiskImageRaw5writeERN9DiskImage7ContextERKN9sg_vec_ns7details15sg_vec_iteratorES8_EUlRKT_E_E11io_result_tOS9_S6_S6_m(&v31, &v28, v25, 0xFFFFFFFFFFFFFFFFLL);
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

    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    (*(**(a2 + 2) + 152))(*(a2 + 2));
    if (v34)
    {
      v15 = 0;
      v16 = __p;
      v17 = 24 * v34;
      do
      {
        v18 = lw_future<int>::get(v16, v14);
        if (v18 < 0)
        {
          break;
        }

        v15 += v18;
        v16 = (v16 + 24);
        v18 = v15;
        v17 -= 24;
      }

      while (v17);
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = *(a3 + 3);
    if (*(&v34 + 1) && v35 != __p)
    {
      operator delete(__p);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t DiskImageRaw::unmap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v4 = a4;
  for (i = (a3 + 8); ; i += 2)
  {
    result = (*(**(a2 + 16) + 24))(*(a2 + 16), *(a1 + 32) * *(i - 1), *i * *(a1 + 32));
    if (result)
    {
      break;
    }

    if (!--v4)
    {
      return 0;
    }
  }

  return result;
}

void DiskImageRaw::ContextRaw::~ContextRaw(DiskImageRaw::ContextRaw *this)
{
  *this = &unk_285BD5A40;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_285BD5A40;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x24C1ED730);
}

uint64_t sg_vec_ns::count_buffers(sg_vec_ns *this, const sg_vec_ns::details::sg_vec_iterator *a2, const sg_vec_ns::details::sg_vec_iterator *a3)
{
  v3 = *(this + 136);
  v13 = *(this + 120);
  v14 = v3;
  v15 = *(this + 152);
  v16 = *(this + 168);
  v4 = *(this + 23);
  v17 = *(this + 22);
  v18 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = *(this + 12);
  v5 = *(a2 + 15);
  v6 = *(a2 + 16);
  v7 = *(a2 + 17);
  v8 = *(a2 + 23);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  for (i = 0; ; ++i)
  {
    v10 = v13 == v5 && *(&v13 + 1) == v6;
    if (v10 && v14 == v7)
    {
      break;
    }

    sg_vec_ns::details::buffer_iterator::operator++(&v13);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  return i;
}

void sub_248E1D540(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _Z18for_each_sg_in_vecIZN12DiskImageRaw4readERN9DiskImage7ContextERKN9sg_vec_ns7details15sg_vec_iteratorES8_EUlRKT_E_E11io_result_tOS9_S6_S6_m(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
  v13 = _ZN7details27for_each_sg_in_vec_internalIZN12DiskImageRaw4readERN9DiskImage7ContextERKN9sg_vec_ns7details15sg_vec_iteratorES9_EUlRKT_E_EE11io_result_tOSA_S7_S7_mb(a1, v26, &v15, a4, 0);
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

void sub_248E1D6A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a9);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a37);
  _Unwind_Resume(a1);
}

void boost::container::vector<lw_future<int>,boost::container::small_vector_allocator<lw_future<int>,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_new_allocation<boost::container::dtl::insert_range_proxy<boost::container::small_vector_allocator<lw_future<int>,boost::container::new_allocator<void>,void>,boost::move_iterator<lw_future<int>*>,lw_future<int>*>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  boost::container::uninitialized_move_and_insert_alloc<boost::container::small_vector_allocator<lw_future<int>,boost::container::new_allocator<void>,void>,lw_future<int>*,lw_future<int>*,boost::container::dtl::insert_range_proxy<boost::container::small_vector_allocator<lw_future<int>,boost::container::new_allocator<void>,void>,boost::move_iterator<lw_future<int>*>,lw_future<int>*>>(a1, *a1, a4, *a1 + 24 * a1[1], a2, a5, a6);
  if (v10 && a1 + 3 != *a1)
  {
    operator delete(*a1);
  }

  v11 = a1[1] + a5;
  *a1 = a2;
  a1[1] = v11;
  a1[2] = a3;
}

void sub_248E1D754(_Unwind_Exception *exception_object)
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

void boost::container::uninitialized_move_and_insert_alloc<boost::container::small_vector_allocator<lw_future<int>,boost::container::new_allocator<void>,void>,lw_future<int>*,lw_future<int>*,boost::container::dtl::insert_range_proxy<boost::container::small_vector_allocator<lw_future<int>,boost::container::new_allocator<void>,void>,boost::move_iterator<lw_future<int>*>,lw_future<int>*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a5 + v7;
      *v8 = 0;
      *(v8 + 4) = 0;
      *(v8 + 8) = 0;
      v9 = a2 + v7;
      if (*(a2 + v7 + 4) == 1)
      {
        *v8 = *(a2 + v7);
        *(v8 + 4) = 1;
      }

      *(v8 + 16) = *(v9 + 16);
      *(v9 + 16) = 0;
      v10 = *(v8 + 16);
      if (v10)
      {
        *v10 = v8;
      }

      v7 += 24;
    }

    while (a2 + v7 != a3);
    a5 += v7;
  }

  if (a6)
  {
    v11 = 0;
    v12 = a6;
    do
    {
      v13 = a5 + v11;
      *v13 = 0;
      *(v13 + 4) = 0;
      *(v13 + 8) = 0;
      v14 = a7 + v11;
      if (*(a7 + v11 + 4) == 1)
      {
        *v13 = *(a7 + v11);
        *(v13 + 4) = 1;
      }

      *(v13 + 16) = *(v14 + 16);
      *(v14 + 16) = 0;
      v15 = *(v13 + 16);
      if (v15)
      {
        *v15 = v13;
      }

      v11 += 24;
      --v12;
    }

    while (v12);
  }

  if (a3 != a4)
  {
    v16 = 0;
    do
    {
      v17 = a5 + 24 * a6 + v16;
      *v17 = 0;
      *(v17 + 4) = 0;
      *(v17 + 8) = 0;
      v18 = a3 + v16;
      if (*(a3 + v16 + 4) == 1)
      {
        *v17 = *(a3 + v16);
        *(v17 + 4) = 1;
      }

      *(v17 + 16) = *(v18 + 16);
      *(v18 + 16) = 0;
      v19 = *(v17 + 16);
      if (v19)
      {
        *v19 = v17;
      }

      v16 += 24;
    }

    while (a3 + v16 != a4);
  }
}

uint64_t _ZN7details27for_each_sg_in_vec_internalIZN12DiskImageRaw4readERN9DiskImage7ContextERKN9sg_vec_ns7details15sg_vec_iteratorES9_EUlRKT_E_EE11io_result_tOSA_S7_S7_mb(uint64_t a1, const sg_vec_ns::details::sg_vec_iterator *a2, const sg_vec_ns::details::sg_vec_iterator *a3, unint64_t a4, char a5)
{
  v8 = 0;
  v9 = 0;
  v10 = *(a3 + 26);
  v33[0] = 0;
  v40 = 0;
  while (!sg_vec_ns::details::sg_vec_iterator::operator==(a2, a3))
  {
    if (*(a2 + 26) >= v10 || v9 >= a4)
    {
      break;
    }

    if (DIDebugLogsEnabled())
    {
      *&v30 = "details::for_each_sg_in_vec_internal(Fn &&, sg_vec_ref::iterator, sg_vec::iterator, size_t, BOOL) [Fn = (lambda at app/disk_images/formats/raw.h:54:22)]";
      *(&v30 + 1) = 104;
      LODWORD(v31) = 2;
      di_log::logger<di_log::log_printer<624ul>>::logger(v26, &v30);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, "sg: ", 4);
      operator<<(&v28, a2);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<624ul>>::~logger_buf(v26);
      MEMORY[0x24C1ED6A0](&v29);
    }

    v26[0] = 0;
    v26[1] = v10;
    LOBYTE(v27) = 2;
    trim_sg_to_interval(a2, v26, &v30);
    v12 = *a1;
    (*(**(*(a1 + 8) + 16) + 136))(v26);
    v13 = v12[1];
    v14 = *v12 + 24 * v13;
    if (v13 == v12[2])
    {
      boost::container::vector<lw_future<int>,boost::container::small_vector_allocator<lw_future<int>,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<lw_future<int>,boost::container::new_allocator<void>,void>,lw_future<int>*,lw_future<int>>>(v12, v14, 1, v26, &v41);
    }

    else
    {
      *v14 = 0;
      *(v14 + 4) = 0;
      *(v14 + 8) = 0;
      if (BYTE4(v26[0]) == 1)
      {
        *v14 = v26[0];
        *(v14 + 4) = 1;
      }

      *(v14 + 16) = v27;
      v27 = 0;
      v15 = *(v14 + 16);
      if (v15)
      {
        *v15 = v14;
      }

      ++v12[1];
    }

    v16 = v31;
    if (v31 >= 0)
    {
      v17 = v31;
    }

    else
    {
      v17 = v31;
    }

    v18 = v17 >= 0 || v17 == 0;
    v19 = v18;
    if (v18)
    {
      v20 = v32;
      if ((v8 & 1) == 0)
      {
        v8 = 1;
      }

      if (sg_vec_ns::should_create_new_sg_vec_ref(a2, a3, v32, v17))
      {
        sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v25, a2);
        sg_vec_ns::generate_vec_ref(v25, a3, v20, v17, a4, v26);
        std::optional<sg_vec_ref>::operator=[abi:ne200100]<sg_vec_ref,void>(v33, v26);
        sg_vec_ref::~sg_vec_ref(v26);
        sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(v25);
        sg_vec_ref::begin(v33, v26);
        sg_vec_ns::details::sg_vec_iterator::operator=(a2, v26);
        sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(v26);
        sg_vec_ref::end(v33, v26);
        sg_vec_ns::details::sg_vec_iterator::operator=(a3, v26);
        sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(v26);
      }

      if (a5)
      {
        sg_vec_ns::details::sg_vec_iterator::operator+=(a2, v17);
      }

      else
      {
        sg_vec_ns::details::sg_vec_iterator::operator+=(a2, v17);
      }

      v9 += v17;
    }

    else
    {
      if (v31 >= 0)
      {
        v16 = -v31;
      }

      v22 = v16;
    }

    if (*(&v30 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v30 + 1));
    }

    if ((v19 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  v22 = v9;
LABEL_43:
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

    if (v37)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v37);
    }

    if (v36)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    }

    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }

    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }
  }

  return v22;
}

void sub_248E1DC10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a40);
  if (STACK[0x3D0])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x3D0]);
  }

  std::optional<sg_vec_ref>::~optional(&STACK[0x438]);
  _Unwind_Resume(a1);
}

void boost::container::vector<lw_future<int>,boost::container::small_vector_allocator<lw_future<int>,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<lw_future<int>,boost::container::new_allocator<void>,void>,lw_future<int>*,lw_future<int>>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *a1;
  v11 = boost::container::vector_alloc_holder<boost::container::small_vector_allocator<lw_future<int>,boost::container::new_allocator<void>,void>,unsigned long,boost::move_detail::integral_constant<unsigned int,1u>>::next_capacity<boost::container::growth_factor_60>(a1, a3);
  if (v11 >= 0x555555555555556)
  {
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", v12);
  }

  v13 = v11;
  v14 = operator new(24 * v11);
  boost::container::vector<lw_future<int>,boost::container::small_vector_allocator<lw_future<int>,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_new_allocation<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<lw_future<int>,boost::container::new_allocator<void>,void>,lw_future<int>*,lw_future<int>>>(a1, v14, v13, a2, a3, a4);
  *a5 = *a1 + a2 - v10;
}

unint64_t boost::container::vector_alloc_holder<boost::container::small_vector_allocator<lw_future<int>,boost::container::new_allocator<void>,void>,unsigned long,boost::move_detail::integral_constant<unsigned int,1u>>::next_capacity<boost::container::growth_factor_60>(uint64_t a1, const char *a2)
{
  v2 = 0x555555555555555;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x555555555555555 - v4 < &a2[v3 - v4])
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
  if (v8 < 0x555555555555555)
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

void boost::container::vector<lw_future<int>,boost::container::small_vector_allocator<lw_future<int>,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_new_allocation<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<lw_future<int>,boost::container::new_allocator<void>,void>,lw_future<int>*,lw_future<int>>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  boost::container::uninitialized_move_and_insert_alloc<boost::container::small_vector_allocator<lw_future<int>,boost::container::new_allocator<void>,void>,lw_future<int>*,lw_future<int>*,boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<lw_future<int>,boost::container::new_allocator<void>,void>,lw_future<int>*,lw_future<int>>>(a1, *a1, a4, *a1 + 24 * a1[1], a2, a5, a6);
  if (v10 && a1 + 3 != *a1)
  {
    operator delete(*a1);
  }

  v11 = a1[1] + a5;
  *a1 = a2;
  a1[1] = v11;
  a1[2] = a3;
}

void sub_248E1DE48(_Unwind_Exception *exception_object)
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

void boost::container::uninitialized_move_and_insert_alloc<boost::container::small_vector_allocator<lw_future<int>,boost::container::new_allocator<void>,void>,lw_future<int>*,lw_future<int>*,boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<lw_future<int>,boost::container::new_allocator<void>,void>,lw_future<int>*,lw_future<int>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a5 + v7;
      *v8 = 0;
      *(v8 + 4) = 0;
      *(v8 + 8) = 0;
      v9 = a2 + v7;
      if (*(a2 + v7 + 4) == 1)
      {
        *v8 = *(a2 + v7);
        *(v8 + 4) = 1;
      }

      *(v8 + 16) = *(v9 + 16);
      *(v9 + 16) = 0;
      v10 = *(v8 + 16);
      if (v10)
      {
        *v10 = v8;
      }

      v7 += 24;
    }

    while (a2 + v7 != a3);
    a5 += v7;
  }

  *a5 = 0;
  *(a5 + 4) = 0;
  *(a5 + 8) = 0;
  if (*(a7 + 4) == 1)
  {
    *a5 = *a7;
    *(a5 + 4) = 1;
  }

  *(a5 + 16) = *(a7 + 16);
  *(a7 + 16) = 0;
  v11 = *(a5 + 16);
  if (v11)
  {
    *v11 = a5;
  }

  if (a3 != a4)
  {
    v12 = 0;
    do
    {
      v13 = a5 + 24 * a6 + v12;
      *v13 = 0;
      *(v13 + 4) = 0;
      *(v13 + 8) = 0;
      v14 = a3 + v12;
      if (*(a3 + v12 + 4) == 1)
      {
        *v13 = *(a3 + v12);
        *(v13 + 4) = 1;
      }

      *(v13 + 16) = *(v14 + 16);
      *(v14 + 16) = 0;
      v15 = *(v13 + 16);
      if (v15)
      {
        *v15 = v13;
      }

      v12 += 24;
    }

    while (a3 + v12 != a4);
  }
}

uint64_t lw_future<int>::get(ref::details *this, const void *a2)
{
  if (*(this + 4) == 1)
  {
    return *this;
  }

  atomic_fetch_add_explicit(this + 1, 1uLL, memory_order_relaxed);
  v8.__m_ = ref::details::_get_tagged_ptr_lock(this, a2);
  v8.__owns_ = 1;
  std::mutex::lock(v8.__m_);
  tagged_ptr_cond = ref::details::_get_tagged_ptr_cond(this, v5);
  if ((*(this + 4) & 1) == 0)
  {
    v7 = tagged_ptr_cond;
    do
    {
      std::condition_variable::wait(v7, &v8);
    }

    while (*(this + 4) != 1);
  }

  atomic_fetch_add_explicit(this + 1, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
  std::unique_lock<std::mutex>::unlock[abi:ne200100](&v8);
  v3 = *this;
  if (v8.__owns_)
  {
    std::mutex::unlock(v8.__m_);
  }

  return v3;
}

void sub_248E1E03C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, char a10)
{
  if (a10 == 1)
  {
    std::mutex::unlock(a9);
  }

  _Unwind_Resume(exception_object);
}

void std::unique_lock<std::mutex>::unlock[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 8))
  {
    std::mutex::unlock(*a1);
    *(a1 + 8) = 0;
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::unlock: not locked");
    di_log::logger<di_log::log_printer<65ul>>::logger();
  }
}

void *di_log::logger<di_log::log_printer<65ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<65ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BD5AA0;
  a1[45] = &unk_285BD5BA0;
  a1[46] = &unk_285BD5BC8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BD5AA0;
  a1[45] = &unk_285BD5B28;
  a1[46] = &unk_285BD5B50;
  return a1;
}

void sub_248E1E1A4(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<65ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<65ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<65ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t _Z18for_each_sg_in_vecIZN12DiskImageRaw5writeERN9DiskImage7ContextERKN9sg_vec_ns7details15sg_vec_iteratorES8_EUlRKT_E_E11io_result_tOS9_S6_S6_m(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
  v13 = _ZN7details27for_each_sg_in_vec_internalIZN12DiskImageRaw5writeERN9DiskImage7ContextERKN9sg_vec_ns7details15sg_vec_iteratorES9_EUlRKT_E_EE11io_result_tOSA_S7_S7_mb(a1, v26, &v15, a4, 0);
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

void sub_248E1E34C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a9);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a37);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<65ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BD5C38;
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

void sub_248E1E420(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<65ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BD5C38;
  di_log::logger_buf<di_log::log_printer<65ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<65ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<65ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<65ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<65ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<65ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<65ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<65ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<65ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<65ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<65ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<65ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<65ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<65ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<65ul>::log((a1 + 72), __p);
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

void sub_248E1E9C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<65ul>::log(uint64_t *a1, uint64_t *a2)
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
    v21 = 65;
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
      v21 = 65;
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

uint64_t _ZN7details27for_each_sg_in_vec_internalIZN12DiskImageRaw5writeERN9DiskImage7ContextERKN9sg_vec_ns7details15sg_vec_iteratorES9_EUlRKT_E_EE11io_result_tOSA_S7_S7_mb(uint64_t a1, const sg_vec_ns::details::sg_vec_iterator *a2, const sg_vec_ns::details::sg_vec_iterator *a3, unint64_t a4, char a5)
{
  v8 = 0;
  v9 = 0;
  v10 = *(a3 + 26);
  v33[0] = 0;
  v40 = 0;
  while (!sg_vec_ns::details::sg_vec_iterator::operator==(a2, a3))
  {
    if (*(a2 + 26) >= v10 || v9 >= a4)
    {
      break;
    }

    if (DIDebugLogsEnabled())
    {
      *&v30 = "details::for_each_sg_in_vec_internal(Fn &&, sg_vec_ref::iterator, sg_vec::iterator, size_t, BOOL) [Fn = (lambda at app/disk_images/formats/raw.h:72:22)]";
      *(&v30 + 1) = 104;
      LODWORD(v31) = 2;
      di_log::logger<di_log::log_printer<624ul>>::logger(v26, &v30);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, "sg: ", 4);
      operator<<(&v28, a2);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<624ul>>::~logger_buf(v26);
      MEMORY[0x24C1ED6A0](&v29);
    }

    v26[0] = 0;
    v26[1] = v10;
    LOBYTE(v27) = 2;
    trim_sg_to_interval(a2, v26, &v30);
    v12 = *a1;
    (*(**(*(a1 + 8) + 16) + 144))(v26);
    v13 = v12[1];
    v14 = *v12 + 24 * v13;
    if (v13 == v12[2])
    {
      boost::container::vector<lw_future<int>,boost::container::small_vector_allocator<lw_future<int>,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<lw_future<int>,boost::container::new_allocator<void>,void>,lw_future<int>*,lw_future<int>>>(v12, v14, 1, v26, &v41);
    }

    else
    {
      *v14 = 0;
      *(v14 + 4) = 0;
      *(v14 + 8) = 0;
      if (BYTE4(v26[0]) == 1)
      {
        *v14 = v26[0];
        *(v14 + 4) = 1;
      }

      *(v14 + 16) = v27;
      v27 = 0;
      v15 = *(v14 + 16);
      if (v15)
      {
        *v15 = v14;
      }

      ++v12[1];
    }

    v16 = v31;
    if (v31 >= 0)
    {
      v17 = v31;
    }

    else
    {
      v17 = v31;
    }

    v18 = v17 >= 0 || v17 == 0;
    v19 = v18;
    if (v18)
    {
      v20 = v32;
      if ((v8 & 1) == 0)
      {
        v8 = 1;
      }

      if (sg_vec_ns::should_create_new_sg_vec_ref(a2, a3, v32, v17))
      {
        sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v25, a2);
        sg_vec_ns::generate_vec_ref(v25, a3, v20, v17, a4, v26);
        std::optional<sg_vec_ref>::operator=[abi:ne200100]<sg_vec_ref,void>(v33, v26);
        sg_vec_ref::~sg_vec_ref(v26);
        sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(v25);
        sg_vec_ref::begin(v33, v26);
        sg_vec_ns::details::sg_vec_iterator::operator=(a2, v26);
        sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(v26);
        sg_vec_ref::end(v33, v26);
        sg_vec_ns::details::sg_vec_iterator::operator=(a3, v26);
        sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(v26);
      }

      if (a5)
      {
        sg_vec_ns::details::sg_vec_iterator::operator+=(a2, v17);
      }

      else
      {
        sg_vec_ns::details::sg_vec_iterator::operator+=(a2, v17);
      }

      v9 += v17;
    }

    else
    {
      if (v31 >= 0)
      {
        v16 = -v31;
      }

      v22 = v16;
    }

    if (*(&v30 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v30 + 1));
    }

    if ((v19 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  v22 = v9;
LABEL_43:
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

    if (v37)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v37);
    }

    if (v36)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    }

    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }

    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }
  }

  return v22;
}

void sub_248E1EF40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a40);
  if (STACK[0x3D0])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x3D0]);
  }

  std::optional<sg_vec_ref>::~optional(&STACK[0x438]);
  _Unwind_Resume(a1);
}

uint64_t DiskImagePlugin::DiskImagePlugin(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = &unk_285BD1F98;
  v3 = *(a2 + 8);
  *(a1 + 16) = *a2;
  *(a1 + 24) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v4 = *(a2 + 16);
    *(a1 + 48) = *(a2 + 32);
    *(a1 + 32) = v4;
  }

  *(a1 + 56) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  return a1;
}

void sub_248E1F058(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::DiskImageUDIFRead(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + 8) = 0;
  *a1 = &unk_285BD5CF8;
  v5 = a3[1];
  *(a1 + 48) = *a3;
  *(a1 + 56) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *udif::details::UDIF_base::UDIF_base(a1 + 64, a2) = &unk_285BD5CB8;
  if (*(a2 + 88) == 1)
  {
    v6 = *(a2 + 96);
    *(a1 + 16) = v6;
    *(a1 + 24) = 1;
    *(a1 + 32) = 2 * v6;
    *(a1 + 40) = 0;
  }

  else
  {
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
  }

  return a1;
}

void sub_248E1F200(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void UDIFReader<locks::None>::~UDIFReader(udif::details::UDIF_base *a1)
{
  udif::details::UDIF_base::~UDIF_base(a1);

  JUMPOUT(0x24C1ED730);
}

__n128 DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::get_io_constraints@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 16);
  v3 = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::read(uint64_t a1, uint64_t a2, uint64_t a3, const sg_vec_ns::details::sg_vec_iterator *a4)
{
  v98[128] = *MEMORY[0x277D85DE8];
  if (!sg_vec_ns::details::sg_vec_iterator::operator==(a3, a4))
  {
    v8 = *(a3 + 104) != 1 || *(a3 + 48) == 0;
    if (!v8)
    {
      v40 = -45;
      goto LABEL_128;
    }
  }

  v96 = v98;
  v97 = xmmword_248F9D670;
  __p = v95;
  v94 = xmmword_248F9D670;
  v9 = sg_vec_ns::count_buffers(a3, a4, v7);
  v11 = v9;
  if (v9 > 0x10)
  {
    if (v9 >= 0x555555555555556)
    {
      boost::container::throw_length_error("get_next_capacity, allocator's max size reached", v10);
    }

    v12 = operator new(24 * v9);
    boost::container::vector<lw_future<int>,boost::container::small_vector_allocator<lw_future<int>,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_new_allocation<boost::container::dtl::insert_range_proxy<boost::container::small_vector_allocator<lw_future<int>,boost::container::new_allocator<void>,void>,boost::move_iterator<lw_future<int>*>,lw_future<int>*>>(&__p, v12, v11, __p + 24 * v94, 0, 0);
  }

  udif::details::UDIF_base::_get_runs_for_io((a1 + 64), *(a3 + 24), (*(a4 + 26) - *(a3 + 208)) & ~((*(a4 + 26) - *(a3 + 208)) >> 63), &v96);
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v89, a4);
  v81[0] = 0;
  v88 = 0;
  v55 = *(v96 + 3);
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(&v77, a3);
  if (!v97)
  {
    v40 = 0;
    v57 = 0;
    goto LABEL_85;
  }

  v54 = a4;
  v57 = 0;
  v40 = 0;
  v14 = v96;
  v15 = (v96 + 64 * v97);
  while (1)
  {
    v16 = *(v14 + 4);
    if (v16)
    {
      if (sg_vec_ns::details::sg_vec_iterator::operator==(&v77, v89))
      {
        break;
      }
    }

    if (v16 > v79)
    {
      sg_vec_ns::details::sg_vec_iterator::operator++(&v77);
    }

    if (sg_vec_ns::details::sg_vec_iterator::operator==(&v77, v89))
    {
      *&v74 = "io_result_t DiskImageUDIFRead<UDIFReader<locks::None>, DiskImageUDIF>::read(DiskImage::Context &, const sg_vec::iterator &, const sg_vec::iterator &) [UDIF = UDIFReader<locks::None>, UDIFVariant = DiskImageUDIF]";
      *(&v74 + 1) = 75;
      v75 = 16;
      di_log::logger<di_log::log_printer<187ul>>::logger(&v58, &v74);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, "Udif: advanced buffer, needs to read ", 37);
      udif::operator<<(&v65, v14);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, " but buffer is full", 19);
      std::ios_base::getloc(&v66[*(v65 - 24) - 8]);
      v41 = std::locale::use_facet(&v72, MEMORY[0x277D82680]);
      (v41->__vftable[2].~facet_0)(v41, 10);
      std::locale::~locale(&v72);
      std::ostream::put();
      std::ostream::flush();
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<187ul>>::~logger_buf(&v58);
      goto LABEL_84;
    }

    sg_entry::sg_entry(&v74, &v77);
    v17 = v76;
    if (v16 <= v76)
    {
      if (*v14)
      {
        sg_entry::sg_entry<sg_entry&,void>(&v72, &v74, *(v14 + 2), 0, *(v14 + 1), *(v14 + 4));
        if (v57)
        {
          *&v70 = v14;
          v20 = std::__tree<std::__value_type<udif::run_type,std::shared_ptr<Backend>>,std::__map_value_compare<udif::run_type,std::__value_type<udif::run_type,std::shared_ptr<Backend>>,std::less<udif::run_type>,true>,std::allocator<std::__value_type<udif::run_type,std::shared_ptr<Backend>>>>::__emplace_unique_key_args<udif::run_type,std::piecewise_construct_t const&,std::tuple<udif::run_type const&>,std::tuple<>>(a2 + 16, v14);
          (*(*v20[5] + 136))(&v58);
          v21 = __p + 24 * v94;
          if (v94 == *(&v94 + 1))
          {
            boost::container::vector<lw_future<int>,boost::container::small_vector_allocator<lw_future<int>,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<lw_future<int>,boost::container::new_allocator<void>,void>,lw_future<int>*,lw_future<int>>>(&__p, v21, 1, &v58, &v70);
          }

          else
          {
            *v21 = 0;
            v21[4] = 0;
            *(v21 + 1) = 0;
            if (BYTE4(v58) == 1)
            {
              *v21 = v58;
              v21[4] = 1;
            }

            *(v21 + 2) = v60;
            v60 = 0;
            v22 = *(v21 + 2);
            if (v22)
            {
              *v22 = v21;
            }

            *&v94 = v94 + 1;
          }

          sg_vec_ns::details::sg_vec_iterator::operator+=(&v77, v16);
          goto LABEL_28;
        }

        v58 = v14;
        v24 = std::__tree<std::__value_type<udif::run_type,std::shared_ptr<Backend>>,std::__map_value_compare<udif::run_type,std::__value_type<udif::run_type,std::shared_ptr<Backend>>,std::less<udif::run_type>,true>,std::allocator<std::__value_type<udif::run_type,std::shared_ptr<Backend>>>>::__emplace_unique_key_args<udif::run_type,std::piecewise_construct_t const&,std::tuple<udif::run_type const&>,std::tuple<>>(a2 + 16, v14);
        v25 = (*(*v24[5] + 128))(v24[5], &v72);
        v40 = v25;
        if (v25 < 0)
        {
          v23 = 0;
          v19 = 2;
        }

        else if (*(a2 + 56) == 1 && v14[8] > v25)
        {
          *&v70 = "io_result_t DiskImageUDIFRead<UDIFReader<locks::None>, DiskImageUDIF>::read(DiskImage::Context &, const sg_vec::iterator &, const sg_vec::iterator &) [UDIF = UDIFReader<locks::None>, UDIFVariant = DiskImageUDIF]";
          *(&v70 + 1) = 75;
          v71 = 16;
          di_log::logger<di_log::log_printer<217ul>>::logger(&v58, &v70);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, "Error: Not enough data read. expected: ", 39);
          MEMORY[0x24C1ED3C0](&v65, *(v14 + 4));
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, " read: ", 7);
          MEMORY[0x24C1ED3B0](&v65, v40);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, " backend: ", 10);
          MEMORY[0x24C1ED370](&v65, *(a1 + 48));
          std::ios_base::getloc(&v66[*(v65 - 24) - 8]);
          v26 = std::locale::use_facet(&v92, MEMORY[0x277D82680]);
          (v26->__vftable[2].~facet_0)(v26, 10);
          std::locale::~locale(&v92);
          std::ostream::put();
          std::ostream::flush();
          std::ostream::~ostream();
          di_log::logger_buf<di_log::log_printer<217ul>>::~logger_buf(&v58);
          MEMORY[0x24C1ED6A0](v66);
          v23 = 0;
          v19 = 2;
          v40 = -5;
        }

        else
        {
          v27 = DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::trim_io(a1, &v72, v14, &v96, v17);
          v16 -= v27;
          sg_vec_ns::details::sg_vec_iterator::operator+=(&v77, v16);
          if (v97)
          {
            v28 = 0;
            v29 = 0;
            v30 = v97 << 6;
            v31 = (v96 + 32);
            do
            {
              v33 = *v31;
              v31 += 8;
              v32 = v33;
              v34 = v33 + v28;
              v35 = v33 + v29;
              v36 = v17 - v29;
              v37 = v33 + v29 > v17;
              if (v33 + v29 >= v17)
              {
                v29 = 0;
              }

              else
              {
                v29 = v35;
              }

              if (v37)
              {
                v29 = v32;
                v38 = v36;
              }

              else
              {
                v38 = 0;
              }

              v28 = v34 + v38;
              v30 -= 64;
            }

            while (v30);
          }

          else
          {
            v28 = 0;
          }

          flags = sg_vec_ns::details::sg_vec_iterator::get_flags(a3);
          v55 += v27;
          sg_vec_ref::sg_vec_ref(&v58, a3 + 120, v54 + 120, v55, v28 - v27, flags);
          if (!sg_vec_ns::details::sg_vec_iterator::operator==(a3, v54) && *(a3 + 104) == 1 && *(a3 + 48))
          {
            sg_vec_ref::attach_per_io_crypto(&v58, (a3 + 48));
          }

          std::optional<sg_vec_ref>::emplace[abi:ne200100]<sg_vec_ref,void>(v81, &v58);
          if (v69)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v69);
          }

          if (v68)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v68);
          }

          if (v67)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v67);
          }

          if (v64)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v64);
          }

          if (v62)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v62);
          }

          if (v61)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v61);
          }

          sg_vec_ref::begin(v81, &v58);
          sg_vec_ns::details::sg_vec_iterator::operator=(&v77, &v58);
          if (v63)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v63);
          }

          if (v59)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v59);
          }

          sg_vec_ns::details::sg_vec_iterator::operator+=(&v77, v16);
          sg_vec_ref::end(v81, &v58);
          sg_vec_ns::details::sg_vec_iterator::operator=(v89, &v58);
          if (v63)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v63);
          }

          if (v59)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v59);
          }

LABEL_28:
          v19 = 0;
          v23 = 1;
        }

        if (*(&v72 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v72 + 1));
        }

        if ((v23 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        bzero(v74, v16);
        sg_vec_ns::details::sg_vec_iterator::operator+=(&v77, v16);
      }

      v19 = 0;
      v57 += v16;
      goto LABEL_35;
    }

    *&v72 = "io_result_t DiskImageUDIFRead<UDIFReader<locks::None>, DiskImageUDIF>::read(DiskImage::Context &, const sg_vec::iterator &, const sg_vec::iterator &) [UDIF = UDIFReader<locks::None>, UDIFVariant = DiskImageUDIF]";
    *(&v72 + 1) = 75;
    v73 = 16;
    di_log::logger<di_log::log_printer<196ul>>::logger(&v58, &v72);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, "Udif: needs to read ", 20);
    udif::operator<<(&v65, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, " but buffer is too small ", 25);
    MEMORY[0x24C1ED3C0](&v65, v17);
    std::ios_base::getloc(&v66[*(v65 - 24) - 8]);
    v18 = std::locale::use_facet(&v70, MEMORY[0x277D82680]);
    (v18->__vftable[2].~facet_0)(v18, 10);
    std::locale::~locale(&v70);
    std::ostream::put();
    std::ostream::flush();
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<196ul>>::~logger_buf(&v58);
    MEMORY[0x24C1ED6A0](v66);
    v19 = 2;
    v40 = -28;
LABEL_35:
    if (*(&v74 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v74 + 1));
    }

    if (!v19)
    {
      v14 += 16;
      if (v14 != v15)
      {
        continue;
      }
    }

    goto LABEL_85;
  }

  *&v74 = "io_result_t DiskImageUDIFRead<UDIFReader<locks::None>, DiskImageUDIF>::read(DiskImage::Context &, const sg_vec::iterator &, const sg_vec::iterator &) [UDIF = UDIFReader<locks::None>, UDIFVariant = DiskImageUDIF]";
  *(&v74 + 1) = 75;
  v75 = 16;
  di_log::logger<di_log::log_printer<178ul>>::logger(&v58, &v74);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, "Udif: needs to read ", 20);
  udif::operator<<(&v65, v14);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, " but buffer is full", 19);
  std::ios_base::getloc(&v66[*(v65 - 24) - 8]);
  v42 = std::locale::use_facet(&v72, MEMORY[0x277D82680]);
  (v42->__vftable[2].~facet_0)(v42, 10);
  std::locale::~locale(&v72);
  std::ostream::put();
  std::ostream::flush();
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<178ul>>::~logger_buf(&v58);
LABEL_84:
  MEMORY[0x24C1ED6A0](v66);
  v40 = -28;
LABEL_85:
  v43 = *(a2 + 16);
  if (v43 != (a2 + 24))
  {
    do
    {
      (*(*v43[5] + 152))(v43[5]);
      v44 = v43[1];
      if (v44)
      {
        do
        {
          v45 = v44;
          v44 = *v44;
        }

        while (v44);
      }

      else
      {
        do
        {
          v45 = v43[2];
          v8 = *v45 == v43;
          v43 = v45;
        }

        while (!v8);
      }

      v43 = v45;
    }

    while (v45 != (a2 + 24));
  }

  if ((v40 & 0x8000000000000000) == 0)
  {
    if (v94)
    {
      v46 = __p;
      v47 = (__p + 24 * v94);
      v48 = v96;
      while (1)
      {
        do
        {
          v49 = v48[16];
          v48 += 16;
        }

        while (!v49);
        v50 = lw_future<int>::get(v46, v13);
        v40 = v50;
        if (v50 < 0)
        {
          break;
        }

        if (*(a2 + 56) == 1 && v48[8] > v50)
        {
          *&v74 = "io_result_t DiskImageUDIFRead<UDIFReader<locks::None>, DiskImageUDIF>::read(DiskImage::Context &, const sg_vec::iterator &, const sg_vec::iterator &) [UDIF = UDIFReader<locks::None>, UDIFVariant = DiskImageUDIF]";
          *(&v74 + 1) = 75;
          v75 = 16;
          di_log::logger<di_log::log_printer<257ul>>::logger(&v58, &v74);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, "Error: Not enough data read. expected: ", 39);
          MEMORY[0x24C1ED3C0](&v65, *(v48 + 4));
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, " read: ", 7);
          MEMORY[0x24C1ED3B0](&v65, v40);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, " backend: ", 10);
          MEMORY[0x24C1ED370](&v65, *(a1 + 48));
          std::ios_base::getloc(&v66[*(v65 - 24) - 8]);
          v53 = std::locale::use_facet(&v72, MEMORY[0x277D82680]);
          (v53->__vftable[2].~facet_0)(v53, 10);
          std::locale::~locale(&v72);
          std::ostream::put();
          std::ostream::flush();
          std::ostream::~ostream();
          di_log::logger_buf<di_log::log_printer<257ul>>::~logger_buf(&v58);
          MEMORY[0x24C1ED6A0](v66);
          v40 = -5;
          break;
        }

        v46 = (v46 + 24);
        if (v46 == v47)
        {
          goto LABEL_100;
        }
      }
    }

    else
    {
LABEL_100:
      v40 = v57;
    }
  }

  if (v80)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v80);
  }

  if (v78)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v78);
  }

  if (v88 == 1)
  {
    if (v87)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v87);
    }

    if (v86)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v86);
    }

    if (v85)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v85);
    }

    if (v84)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v84);
    }

    if (v83)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v83);
    }

    if (v82)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v82);
    }
  }

  if (v91)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v91);
  }

  if (v90)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v90);
  }

  if (*(&v94 + 1) && v95 != __p)
  {
    operator delete(__p);
  }

  if (*(&v97 + 1) && v98 != v96)
  {
    operator delete(v96);
  }

LABEL_128:
  v51 = *MEMORY[0x277D85DE8];
  return v40;
}

void sub_248E1FFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&STACK[0x400]);
  std::optional<sg_vec_ref>::~optional(&STACK[0x4E0]);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&STACK[0x7B8]);
  if (STACK[0x8B0] && a11 != STACK[0x8A0])
  {
    operator delete(STACK[0x8A0]);
  }

  if (STACK[0xA48])
  {
    if (a12 != STACK[0xA38])
    {
      operator delete(STACK[0xA38]);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t udif::details::UDIF_base::UDIF_base(uint64_t result, uint64_t a2)
{
  *(result + 8) = *(a2 + 8);
  v2 = (a2 + 16);
  v3 = *(a2 + 16);
  *result = &unk_285BF7A58;
  *(result + 16) = v3;
  v4 = result + 16;
  v5 = *(a2 + 24);
  *(result + 24) = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    *(a2 + 8) = v2;
    *v2 = 0;
    *(a2 + 24) = 0;
  }

  else
  {
    *(result + 8) = v4;
  }

  *(result + 32) = *(a2 + 32);
  v6 = (a2 + 40);
  v7 = *(a2 + 40);
  *(result + 40) = v7;
  v8 = result + 40;
  v9 = *(a2 + 48);
  *(result + 48) = v9;
  if (v9)
  {
    *(v7 + 16) = v8;
    *(a2 + 32) = v6;
    *v6 = 0;
    *(a2 + 48) = 0;
  }

  else
  {
    *(result + 32) = v8;
  }

  *(result + 56) = *(a2 + 56);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  v10 = *(a2 + 72);
  *(a2 + 72) = 0;
  *(result + 72) = v10;
  v11 = *(a2 + 80);
  *(result + 96) = *(a2 + 96);
  *(result + 80) = v11;
  *(result + 104) = *(a2 + 104);
  v12 = (a2 + 112);
  v13 = *(a2 + 112);
  *(result + 112) = v13;
  v14 = result + 112;
  v15 = *(a2 + 120);
  *(result + 120) = v15;
  if (v15)
  {
    *(v13 + 16) = v14;
    *(a2 + 104) = v12;
    *v12 = 0;
    *(a2 + 120) = 0;
  }

  else
  {
    *(result + 104) = v14;
  }

  return result;
}

void std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF::ContextUDIF(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  *(a1 + 16) = a1 + 24;
  v3 = a1 + 16;
  *a1 = &unk_285BD5E08;
  *(a1 + 8) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v4 = a1 + 40;
  *(a1 + 48) = 0;
  udif::details::UDIF_base::make_backend_contexts((a2 + 64), v7);
  v6[0] = v3;
  v6[1] = v4;
  std::tuple<std::map<udif::run_type,std::shared_ptr<Backend>> &,std::shared_ptr<Backend>&>::operator=[abi:ne200100]<std::map<udif::run_type,std::shared_ptr<Backend>>,std::shared_ptr<Backend>,0>(v6, v7);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  std::__tree<std::__value_type<udif::run_type,std::shared_ptr<Backend>>,std::__map_value_compare<udif::run_type,std::__value_type<udif::run_type,std::shared_ptr<Backend>>,std::less<udif::run_type>,true>,std::allocator<std::__value_type<udif::run_type,std::shared_ptr<Backend>>>>::destroy(v7, v8);
  *(a1 + 56) = 1;
  return a1;
}

void sub_248E2034C(_Unwind_Exception *a1)
{
  v5 = *(v1 + 48);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::__tree<std::__value_type<udif::run_type,std::shared_ptr<Backend>>,std::__map_value_compare<udif::run_type,std::__value_type<udif::run_type,std::shared_ptr<Backend>>,std::less<udif::run_type>,true>,std::allocator<std::__value_type<udif::run_type,std::shared_ptr<Backend>>>>::destroy(v2, *v3);
  _Unwind_Resume(a1);
}

uint64_t *std::tuple<std::map<udif::run_type,std::shared_ptr<Backend>> &,std::shared_ptr<Backend>&>::operator=[abi:ne200100]<std::map<udif::run_type,std::shared_ptr<Backend>>,std::shared_ptr<Backend>,0>(uint64_t *a1, uint64_t a2)
{
  std::__tree<std::__value_type<udif::run_type,std::shared_ptr<Backend>>,std::__map_value_compare<udif::run_type,std::__value_type<udif::run_type,std::shared_ptr<Backend>>,std::less<udif::run_type>,true>,std::allocator<std::__value_type<udif::run_type,std::shared_ptr<Backend>>>>::__move_assign(*a1, a2);
  v4 = a1[1];
  v5 = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v6 = *(v4 + 8);
  *v4 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

uint64_t DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF::~ContextUDIF(uint64_t a1)
{
  *a1 = &unk_285BD5E08;
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__tree<std::__value_type<udif::run_type,std::shared_ptr<Backend>>,std::__map_value_compare<udif::run_type,std::__value_type<udif::run_type,std::shared_ptr<Backend>>,std::less<udif::run_type>,true>,std::allocator<std::__value_type<udif::run_type,std::shared_ptr<Backend>>>>::destroy(a1 + 16, *(a1 + 24));
  return a1;
}

void DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF::~ContextUDIF(uint64_t a1)
{
  *a1 = &unk_285BD5E08;
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__tree<std::__value_type<udif::run_type,std::shared_ptr<Backend>>,std::__map_value_compare<udif::run_type,std::__value_type<udif::run_type,std::shared_ptr<Backend>>,std::less<udif::run_type>,true>,std::allocator<std::__value_type<udif::run_type,std::shared_ptr<Backend>>>>::destroy(a1 + 16, *(a1 + 24));

  JUMPOUT(0x24C1ED730);
}

void std::__tree<std::__value_type<udif::run_type,std::shared_ptr<Backend>>,std::__map_value_compare<udif::run_type,std::__value_type<udif::run_type,std::shared_ptr<Backend>>,std::less<udif::run_type>,true>,std::allocator<std::__value_type<udif::run_type,std::shared_ptr<Backend>>>>::__move_assign(uint64_t a1, void *a2)
{
  v4 = (a1 + 8);
  std::__tree<std::__value_type<udif::run_type,std::shared_ptr<Backend>>,std::__map_value_compare<udif::run_type,std::__value_type<udif::run_type,std::shared_ptr<Backend>>,std::less<udif::run_type>,true>,std::allocator<std::__value_type<udif::run_type,std::shared_ptr<Backend>>>>::destroy(a1, *(a1 + 8));
  *a1 = *a2;
  v5 = a2 + 1;
  v6 = a2[1];
  *v4 = v6;
  v7 = a2[2];
  *(a1 + 16) = v7;
  if (v7)
  {
    *(v6 + 16) = v4;
    *a2 = v5;
    *v5 = 0;
    a2[2] = 0;
  }

  else
  {
    *a1 = v4;
  }
}

void std::__tree<std::__value_type<udif::run_type,std::shared_ptr<Backend>>,std::__map_value_compare<udif::run_type,std::__value_type<udif::run_type,std::shared_ptr<Backend>>,std::less<udif::run_type>,true>,std::allocator<std::__value_type<udif::run_type,std::shared_ptr<Backend>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<udif::run_type,std::shared_ptr<Backend>>,std::__map_value_compare<udif::run_type,std::__value_type<udif::run_type,std::shared_ptr<Backend>>,std::less<udif::run_type>,true>,std::allocator<std::__value_type<udif::run_type,std::shared_ptr<Backend>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<udif::run_type,std::shared_ptr<Backend>>,std::__map_value_compare<udif::run_type,std::__value_type<udif::run_type,std::shared_ptr<Backend>>,std::less<udif::run_type>,true>,std::allocator<std::__value_type<udif::run_type,std::shared_ptr<Backend>>>>::destroy(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    operator delete(a2);
  }
}

void *di_log::logger<di_log::log_printer<178ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<178ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BD5E68;
  a1[45] = &unk_285BD5F68;
  a1[46] = &unk_285BD5F90;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BD5E68;
  a1[45] = &unk_285BD5EF0;
  a1[46] = &unk_285BD5F18;
  return a1;
}

void sub_248E2065C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<178ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<178ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<178ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<196ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<196ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BD6088;
  a1[45] = &unk_285BD6188;
  a1[46] = &unk_285BD61B0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BD6088;
  a1[45] = &unk_285BD6110;
  a1[46] = &unk_285BD6138;
  return a1;
}

void sub_248E207C8(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<196ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<196ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<196ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<217ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<217ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BD62A8;
  a1[45] = &unk_285BD63A8;
  a1[46] = &unk_285BD63D0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BD62A8;
  a1[45] = &unk_285BD6330;
  a1[46] = &unk_285BD6358;
  return a1;
}

void sub_248E20934(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<217ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<217ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<217ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::trim_io(uint64_t a1, void **a2, uint64_t a3, void *a4, unint64_t a5)
{
  v5 = a4[1];
  if (!v5)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8 = v5 << 6;
  v9 = (*a4 + 32);
  do
  {
    v11 = *v9;
    v9 += 8;
    v10 = v11;
    v12 = v11 + v6;
    v13 = v11 + v7;
    v14 = a5 - v7;
    v15 = v11 + v7 > a5;
    if (v11 + v7 >= a5)
    {
      v7 = 0;
    }

    else
    {
      v7 = v13;
    }

    if (v15)
    {
      v7 = v10;
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    v6 = v12 + v16;
    v8 -= 64;
  }

  while (v8);
  if (v6 <= a5 + a5 * *(a1 + 24))
  {
    return 0;
  }

  v17 = *(a3 + 48);
  memmove(*a2, *a2 + v17, *(a3 + 32) - v17);
  return v17;
}

sg_vec_ref *std::optional<sg_vec_ref>::emplace[abi:ne200100]<sg_vec_ref,void>(sg_vec_ref *a1, uint64_t a2)
{
  if (*(a1 + 720) == 1)
  {
    v4 = *(a1 + 85);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v5 = *(a1 + 63);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    v6 = *(a1 + 57);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    v7 = *(a1 + 35);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    v8 = *(a1 + 20);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    v9 = *(a1 + 9);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    *(a1 + 720) = 0;
  }

  result = sg_vec_ref::sg_vec_ref(a1, a2);
  *(a1 + 720) = 1;
  return result;
}

void *di_log::logger<di_log::log_printer<257ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<257ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BD64C8;
  a1[45] = &unk_285BD65C8;
  a1[46] = &unk_285BD65F0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BD64C8;
  a1[45] = &unk_285BD6550;
  a1[46] = &unk_285BD6578;
  return a1;
}

void sub_248E20BC8(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<257ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<257ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<257ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<178ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BD6000;
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

void sub_248E20CE0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<178ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BD6000;
  di_log::logger_buf<di_log::log_printer<178ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<178ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<178ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<178ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<178ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<178ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<178ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<178ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<178ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<178ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<178ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<178ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<178ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<178ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<178ul>::log((a1 + 72), __p);
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

void sub_248E21284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<178ul>::log(uint64_t *a1, uint64_t *a2)
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
    v21 = 178;
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
      v21 = 178;
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

uint64_t di_log::logger_buf<di_log::log_printer<196ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BD6220;
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

void sub_248E21550(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<196ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BD6220;
  di_log::logger_buf<di_log::log_printer<196ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<196ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<196ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<196ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<196ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<196ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<196ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<196ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<196ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<196ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<196ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<196ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<196ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<196ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<196ul>::log((a1 + 72), __p);
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

void sub_248E21AF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<196ul>::log(uint64_t *a1, uint64_t *a2)
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
    v21 = 196;
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
      v21 = 196;
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

uint64_t sg_entry::sg_entry<sg_entry&,void>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a2 + 8);
  *a1 = *a2 + a4;
  *(a1 + 8) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = a3;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 40) = *(a2 + 40);
  sg_entry::adjust_key_material_by_sg(a2, a4, (a1 + 48));
  return a1;
}

void sub_248E21D70(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void sg_entry::adjust_key_material_by_sg(uint64_t a1@<X0>, uint64_t a2@<X1>, sg_per_io_crypto *a3@<X8>)
{
  if (*(a1 + 104))
  {
    sg_per_io_crypto::clone_with_offset((a1 + 48), *(a1 + 24), *(a1 + 24) + a2, v5);
    sg_per_io_crypto::sg_per_io_crypto(a3, v5);
    v4 = 1;
  }

  else
  {
    v4 = 0;
    *a3 = 0;
  }

  *(a3 + 56) = v4;
}

uint64_t *std::__tree<std::__value_type<udif::run_type,std::shared_ptr<Backend>>,std::__map_value_compare<udif::run_type,std::__value_type<udif::run_type,std::shared_ptr<Backend>>,std::less<udif::run_type>,true>,std::allocator<std::__value_type<udif::run_type,std::shared_ptr<Backend>>>>::__emplace_unique_key_args<udif::run_type,std::piecewise_construct_t const&,std::tuple<udif::run_type const&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
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
      v5 = *(v2 + 32);
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

uint64_t di_log::logger_buf<di_log::log_printer<217ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BD6440;
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

void sub_248E21F74(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<217ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BD6440;
  di_log::logger_buf<di_log::log_printer<217ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<217ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<217ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<217ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<217ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<217ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<217ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<217ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<217ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<217ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<217ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<217ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<217ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<217ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<217ul>::log((a1 + 72), __p);
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

void sub_248E22518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<217ul>::log(uint64_t *a1, uint64_t *a2)
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
    v21 = 217;
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
      v21 = 217;
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

uint64_t di_log::logger_buf<di_log::log_printer<257ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BD6660;
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

void sub_248E227E4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<257ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BD6660;
  di_log::logger_buf<di_log::log_printer<257ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<257ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<257ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<257ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<257ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<257ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<257ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<257ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<257ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<257ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<257ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<257ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<257ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<257ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<257ul>::log((a1 + 72), __p);
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

void sub_248E22D88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}