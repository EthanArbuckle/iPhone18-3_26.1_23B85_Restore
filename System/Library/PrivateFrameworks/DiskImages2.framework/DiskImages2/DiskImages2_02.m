int *di_log::log_printer<257ul>::log(uint64_t *a1, uint64_t *a2)
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
    v21 = 257;
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
      v21 = 257;
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

void udif::details::UDIF_base::~UDIF_base(udif::details::UDIF_base *this)
{
  *this = &unk_285BF7A58;
  std::__tree<std::__value_type<udif::run_type,std::shared_ptr<Backend>>,std::__map_value_compare<udif::run_type,std::__value_type<udif::run_type,std::shared_ptr<Backend>>,std::less<udif::run_type>,true>,std::allocator<std::__value_type<udif::run_type,std::shared_ptr<Backend>>>>::destroy(this + 104, *(this + 14));
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x24C1ED730](v2, 0x1000C407784F2AFLL);
  }

  v3 = *(this + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>>>::destroy(this + 32, *(this + 5));
  std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>>>::destroy(this + 8, *(this + 2));
}

{
  udif::details::UDIF_base::~UDIF_base(this);

  JUMPOUT(0x24C1ED730);
}

void sub_248E2309C(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    MEMORY[0x24C1ED710](v1, 0x1000C8077774924);
  }

  __cxa_rethrow();
}

void std::__shared_ptr_pointer<char  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t std::__shared_ptr_pointer<char  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x24C1ED710);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<char  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_248E231DC(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    MEMORY[0x24C1ED710](v1, 0x1000C8077774924);
  }

  __cxa_rethrow();
}

void std::__shared_ptr_pointer<unsigned char  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t std::__shared_ptr_pointer<unsigned char  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x24C1ED710);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<unsigned char  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *std::__shared_ptr_emplace<DiskImageASIF>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<Backend> &,di_asif::header &,di_asif::options &,std::allocator<DiskImageASIF>,0>(void *a1, DiskImageASIF **a2, Backend *a3, uint64_t a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BD67A0;
  dir_latest_offset = DiskImageASIF::get_dir_latest_offset(*a2, a3, a3);
  DiskImageASIF::DiskImageASIF(a1 + 3, a2, a3, dir_latest_offset, v9, a4);
  return a1;
}

void std::__shared_ptr_emplace<DiskImageASIF>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285BD67A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

void std::__shared_ptr_emplace<DiskImageASIF>::__shared_ptr_emplace[abi:ne200100]<unsigned long,unsigned int const&,unsigned long long &,unsigned long long &,std::shared_ptr<Backend> &,di_asif::options &,boost::uuids::uuid const&,boost::uuids::uuid const&,std::allocator<DiskImageASIF>,0>(void *a1, unsigned __int16 *a2, unsigned int *a3, unint64_t *a4, unint64_t *a5, void *a6, uint64_t *a7, _OWORD *a8, __int128 *a9)
{
  v10 = *MEMORY[0x277D85DE8];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BD67A0;
  v9 = *a9;
  DiskImageASIF::DiskImageASIF((a1 + 3), *a2, *a3, *a4, *a5, a6, a7, a8);
}

void std::__shared_ptr_pointer<DiskImage  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t std::__shared_ptr_pointer<DiskImage  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<DiskImage  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<PurgeableFileBackend>::__shared_ptr_emplace[abi:ne200100]<char const*,std::allocator<PurgeableFileBackend>,0>(void *a1, char **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BD6850;
  std::construct_at[abi:ne200100]<PurgeableFileBackend,char const*,PurgeableFileBackend*>((a1 + 3), a2);
}

void std::__shared_ptr_emplace<PurgeableFileBackend>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285BD6850;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

void sub_248E23864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void FileLocal::FileLocal(FileLocal *this, int a2, BOOL a3)
{
  v7 = *MEMORY[0x277D85DE8];
  Backend::Backend(this);
  *v5 = &unk_285BFDF58;
  v5[3] = &unk_285BFE048;
  v5[4] = &unk_285BFE080;
  FileDescriptor::FileDescriptor(v6, a2, a3);
  std::allocate_shared[abi:ne200100]<FileLocal::shared_state_t,std::allocator<FileLocal::shared_state_t>,FileDescriptor,BOOL &,0>();
}

void sub_248E23A2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  FileDescriptorWrapper::~FileDescriptorWrapper(va);
  v4 = *(v2 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<FileLocal::shared_state_t>::__shared_ptr_emplace[abi:ne200100]<FileDescriptor,BOOL &,std::allocator<FileLocal::shared_state_t>,0>(void *a1, uint64_t a2, char *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BD68B0;
  FileLocal::shared_state_t::shared_state_t((a1 + 3), a2, *a3);
}

void std::__shared_ptr_emplace<FileLocal::shared_state_t>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285BD68B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

void std::__shared_ptr_emplace<FileLocal::shared_state_t>::__on_zero_shared(uint64_t a1)
{
  std::__expected_base<std::unique_ptr<char,std::function<void ()(char *)>>,std::error_code>::__repr::__destroy_union_member[abi:ne200100](a1 + 128);
  v2 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v2)
  {
    (*(*v2 + 32))(v2);
  }

  FileDescriptorWrapper::~FileDescriptorWrapper((a1 + 24));
}

void FileLocal::shared_state_t::shared_state_t(uint64_t a1, uint64_t a2, char a3)
{
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = -1;
  *a1 = &unk_285BD6900;
  v4 = *(a2 + 12);
  v5 = *(a2 + 28);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 28) = v5;
  *(a1 + 12) = v4;
  *(a1 + 48) = a3;
  *(a1 + 49) = FileDescriptor::is_mounted_on_smb(a1);
  v6 = *(a1 + 16);
  *(a1 + 56) = 0;
  *(a1 + 64) = v6;
  FileLocal::shared_state_t::create_ops(a1);
}

BOOL FileDescriptor::is_mounted_on_smb(FileDescriptor *this)
{
  FileDescriptor::get_mounted_on_fs(v5, this);
  if (v6 < 0)
  {
    v2 = v5[1] == 5 && *v5[0] == 1717726579 && *(v5[0] + 4) == 115;
    operator delete(v5[0]);
  }

  else
  {
    return v6 == 5 && LODWORD(v5[0]) == 1717726579 && BYTE4(v5[0]) == 115;
  }

  return v2;
}

void FileDescriptor::~FileDescriptor(FileDescriptor *this)
{
  FileDescriptorWrapper::~FileDescriptorWrapper(this);

  JUMPOUT(0x24C1ED730);
}

uint64_t std::__expected_base<std::unique_ptr<char,std::function<void ()(char *)>>,std::error_code>::__repr::__destroy_union_member[abi:ne200100](uint64_t result)
{
  if (*(result + 40) == 1)
  {
    v2 = result;
    std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100](result, 0);

    return std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v2 + 8);
  }

  return result;
}

void *std::__shared_ptr_emplace<BufferedWriteBackend>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<Backend> &,unsigned long,std::allocator<BufferedWriteBackend>,0>(void *a1, uint64_t a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BD6940;
  BufferedWriteBackend::BufferedWriteBackend(a1 + 3, a2, *a3);
  return a1;
}

void std::__shared_ptr_emplace<BufferedWriteBackend>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285BD6940;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

void sub_248E24028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x24C1ED730](a10, 0x1000C4015A9971DLL);
  }

  _Unwind_Resume(a1);
}

void crypto::header_serializer::decode(crypto::header_serializer *this@<X0>, void *a2@<X8>)
{
  v4 = this;
  v7 = 0;
  if ([(crypto::header_serializer *)v4 decodeBytesForKey:@"crypto_header" returnedLength:&v7])
  {
    if (v7 == 76)
    {
      operator new();
    }

    exception = __cxa_allocate_exception(0x40uLL);
    std::ostringstream::basic_ostringstream[abi:ne200100](v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Unexpected crypto header length (", 33);
    MEMORY[0x24C1ED3C0](v6, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ")", 1);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, v6, 0x9Au);
  }

  *a2 = 0;
}

void sub_248E241A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::ostringstream::~ostringstream(&a9, MEMORY[0x277D82828]);
  MEMORY[0x24C1ED6A0](v12 + 112);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

void *std::shared_ptr<crypto::header>::operator=[abi:ne200100]<crypto::header,std::default_delete<crypto::header>,0>(void *a1, uint64_t *a2)
{
  std::shared_ptr<crypto::header>::shared_ptr[abi:ne200100]<crypto::header,std::default_delete<crypto::header>,0>(&v6, a2);
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

void sub_248E24368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

char **std::dynamic_pointer_cast[abi:ne200100]<LockableResource,Backend>@<X0>(char ***a1@<X0>, char ***a2@<X8>)
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

void sub_248E24670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, char a13)
{
  if (a10)
  {
    MEMORY[0x24C1ED730]();
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (a13 == 1)
  {
    if (a12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a12);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_248E24754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_248E24E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void sub_248E24F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void get_backend_from_graph<FileLocal>(uint64_t a1@<X0>, void *a2@<X8>)
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
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    get_next_backend_in_graph(lpsrc, &v12);
    v8 = v12;
    v12 = 0uLL;
    v9 = lpsrc[1];
    *lpsrc = v8;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      v10 = lpsrc[0];
      if (*(&v12 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v12 + 1));
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
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

LABEL_17:
  if (lpsrc[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](lpsrc[1]);
  }
}

void sub_248E25130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
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

void sub_248E25268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_248E25418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

void crypto::format_serializer::decode(void *a1@<X0>, void *a2@<X8>)
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
      std::vector<std::byte>::reserve(&__p, v12 + v13);
      std::vector<std::byte>::__assign_with_size[abi:ne200100]<std::byte const*,std::byte const*>(&__p, v4, &v4[v13], v13);
      std::vector<std::byte>::__insert_with_size[abi:ne200100]<std::byte const*,std::byte const*>(&__p, __dst, v6, &v6[v12], v12);
      v7[0] = __p;
      v7[1] = __dst - __p;
      crypto::keys::keys(v8, v7, 1, 8 * v13, 8 * v12);
      std::allocate_shared[abi:ne200100]<crypto::format,std::allocator<crypto::format>,crypto::keys,std::shared_ptr<crypto::header> const&,0>();
    }
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_248E257BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  std::vector<crypto::keys::key_pair>::__destroy_vector::operator()[abi:ne200100](&a10);
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_248E259B4(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

void crypto::format_serializer::encode(crypto::format_serializer *this, NSCoder *a2, const crypto::format *a3)
{
  v4 = this;
  [(crypto::format_serializer *)v4 encodeBytes:a2->super.isa length:76 forKey:@"crypto_header"];
  [(crypto::format_serializer *)v4 encodeBytes:a2[2].super.isa length:a2[3].super.isa - a2[2].super.isa forKey:@"encKeys"];
  [(crypto::format_serializer *)v4 encodeBytes:a2[5].super.isa length:a2[6].super.isa - a2[5].super.isa forKey:@"secondaryKey"];
}

void sub_248E25B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void sub_248E25C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<336ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<336ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BD69C0;
  a1[45] = &unk_285BD6AC0;
  a1[46] = &unk_285BD6AE8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BD69C0;
  a1[45] = &unk_285BD6A48;
  a1[46] = &unk_285BD6A70;
  return a1;
}

void sub_248E25EB8(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<336ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<336ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<336ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void sub_248E25FFC(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

void sub_248E26168(_Unwind_Exception *a1, int a2)
{
  v7 = v5;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (a2 == 1)
  {
    [DIError nilWithDIException:__cxa_begin_catch(a1) prefix:@"Error creating crypto format" error:v2];
    objc_claimAutoreleasedReturnValue();
    __cxa_end_catch();
    JUMPOUT(0x248E2614CLL);
  }

  _Unwind_Resume(a1);
}

void sub_248E26404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_248E26930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_248E26A54(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_248E26EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(a1);
}

void sub_248E27010(_Unwind_Exception *a1)
{
  v4 = v3;

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

void sub_248E270F0(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

void sub_248E27AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void sub_248E27D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

void sub_248E280B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

void sub_248E28308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(a1);
}

uint64_t plugin_decode_buffer(void *a1, const char *a2, void **a3)
{
  v31 = *MEMORY[0x277D85DE8];
  if (a1 && a2 && a3)
  {
    v5 = a1;
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
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
          v20 = *__error();
          if (DIForwardLogs())
          {
            v21 = getDIOSLog();
            os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
            *buf = 68158466;
            *&buf[4] = 59;
            v25 = 2080;
            v26 = "ssize_t plugin_decode_buffer(void *, const char *, void **)";
            v27 = 2048;
            v28 = [v7 length];
            v29 = 2112;
            v30 = v6;
            v22 = _os_log_send_and_compose_impl();

            if (v22)
            {
              fprintf(*MEMORY[0x277D85DF8], "%s\n", v22);
              free(v22);
            }
          }

          else
          {
            v23 = getDIOSLog();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 68158466;
              *&buf[4] = 59;
              v25 = 2080;
              v26 = "ssize_t plugin_decode_buffer(void *, const char *, void **)";
              v27 = 2048;
              v28 = [v7 length];
              v29 = 2112;
              v30 = v6;
              _os_log_impl(&dword_248DE0000, v23, OS_LOG_TYPE_ERROR, "%.*s: Out of memory, failed to allocated %zu bytes for key %@", buf, 0x26u);
            }
          }

          *__error() = v20;
          v9 = -12;
        }
      }

      else
      {
        v14 = *__error();
        if (DIForwardLogs())
        {
          v15 = getDIOSLog();
          os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
          *buf = 0x3B04100302;
          v25 = 2080;
          v26 = "ssize_t plugin_decode_buffer(void *, const char *, void **)";
          v27 = 2112;
          v28 = v6;
          v16 = _os_log_send_and_compose_impl();

          if (v16)
          {
            fprintf(*MEMORY[0x277D85DF8], "%s\n", v16);
            free(v16);
          }
        }

        else
        {
          v17 = getDIOSLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 0x3B04100302;
            v25 = 2080;
            v26 = "ssize_t plugin_decode_buffer(void *, const char *, void **)";
            v27 = 2112;
            v28 = v6;
            _os_log_impl(&dword_248DE0000, v17, OS_LOG_TYPE_ERROR, "%.*s: Invalid key: %@", buf, 0x1Cu);
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
    if (DIForwardLogs())
    {
      v11 = getDIOSLog();
      os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
      *buf = 68157954;
      *&buf[4] = 59;
      v25 = 2080;
      v26 = "ssize_t plugin_decode_buffer(void *, const char *, void **)";
      v12 = _os_log_send_and_compose_impl();

      if (v12)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v12);
        free(v12);
      }
    }

    else
    {
      v13 = getDIOSLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 68157954;
        *&buf[4] = 59;
        v25 = 2080;
        v26 = "ssize_t plugin_decode_buffer(void *, const char *, void **)";
        _os_log_impl(&dword_248DE0000, v13, OS_LOG_TYPE_ERROR, "%.*s: Missing parameters", buf, 0x12u);
      }
    }

    *__error() = v10;
    v9 = -22;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_248E288DC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t plugin_decode_fd(void *a1, const char *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a1 && a2)
  {
    v3 = a1;
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
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
        if (DIForwardLogs())
        {
          v12 = getDIOSLog();
          os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
          *buf = 68158210;
          *&buf[4] = 42;
          v18 = 2080;
          v19 = "int plugin_decode_fd(void *, const char *)";
          v20 = 2112;
          v21 = v4;
          v13 = _os_log_send_and_compose_impl();

          if (v13)
          {
            fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
            free(v13);
          }
        }

        else
        {
          v14 = getDIOSLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 0x2A04100302;
            v18 = 2080;
            v19 = "int plugin_decode_fd(void *, const char *)";
            v20 = 2112;
            v21 = v4;
            _os_log_impl(&dword_248DE0000, v14, OS_LOG_TYPE_ERROR, "%.*s: Invalid key: %@", buf, 0x1Cu);
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
    if (DIForwardLogs())
    {
      v8 = getDIOSLog();
      os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
      *buf = 68157954;
      *&buf[4] = 42;
      v18 = 2080;
      v19 = "int plugin_decode_fd(void *, const char *)";
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
        *buf = 68157954;
        *&buf[4] = 42;
        v18 = 2080;
        v19 = "int plugin_decode_fd(void *, const char *)";
        _os_log_impl(&dword_248DE0000, v10, OS_LOG_TYPE_ERROR, "%.*s: Missing parameters", buf, 0x12u);
      }
    }

    *__error() = v7;
    v6 = 4294967274;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

void plugin_encode_buffer(void *a1, const char *a2, const void *a3, uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a1 && a2 && a3 && a4)
  {
    v15 = a1;
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
    v8 = [MEMORY[0x277CBEA90] dataWithBytes:a3 length:a4];
    [v15 setObject:v8 forKeyedSubscript:v7];

    v9 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v10 = *__error();
    if (DIForwardLogs())
    {
      v11 = getDIOSLog();
      os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
      *buf = 68157954;
      v17 = 69;
      v18 = 2080;
      v19 = "void plugin_encode_buffer(void *, const char *, const void *, size_t)";
      v12 = _os_log_send_and_compose_impl();

      if (v12)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v12);
        free(v12);
      }
    }

    else
    {
      v13 = getDIOSLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 68157954;
        v17 = 69;
        v18 = 2080;
        v19 = "void plugin_encode_buffer(void *, const char *, const void *, size_t)";
        _os_log_impl(&dword_248DE0000, v13, OS_LOG_TYPE_ERROR, "%.*s: Missing parameters", buf, 0x12u);
      }
    }

    *__error() = v10;
    v14 = *MEMORY[0x277D85DE8];
  }
}

void plugin_encode_fd(void *a1, const char *a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a1 && a2 && (a3 & 0x80000000) == 0)
  {
    v13 = a1;
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
    v6 = [objc_alloc(MEMORY[0x277CCA9F8]) initWithFileDescriptor:a3];
    [v13 setObject:v6 forKeyedSubscript:v5];

    v7 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v8 = *__error();
    if (DIForwardLogs())
    {
      v9 = getDIOSLog();
      os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
      *buf = 68157954;
      v15 = 48;
      v16 = 2080;
      v17 = "void plugin_encode_fd(void *, const char *, int)";
      v10 = _os_log_send_and_compose_impl();

      if (v10)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v10);
        free(v10);
      }
    }

    else
    {
      v11 = getDIOSLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 68157954;
        v15 = 48;
        v16 = 2080;
        v17 = "void plugin_encode_fd(void *, const char *, int)";
        _os_log_impl(&dword_248DE0000, v11, OS_LOG_TYPE_ERROR, "%.*s: Missing parameters", buf, 0x12u);
      }
    }

    *__error() = v8;
    v12 = *MEMORY[0x277D85DE8];
  }
}

void sub_248E292C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void *std::vector<std::byte>::reserve(void *result, unint64_t a2)
{
  if (result[2] - *result < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = result[1] - *result;
      operator new();
    }

    std::vector<iovec>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void *std::vector<std::byte>::__assign_with_size[abi:ne200100]<std::byte const*,std::byte const*>(void *result, char *__src, char *a3, unint64_t a4)
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

char *std::vector<std::byte>::__insert_with_size[abi:ne200100]<std::byte const*,std::byte const*>(uint64_t a1, char *__dst, _BYTE *__src, char *a4, int64_t a5)
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

void *std::__shared_ptr_emplace<crypto::format>::__shared_ptr_emplace[abi:ne200100]<crypto::keys,std::shared_ptr<crypto::header> const&,std::allocator<crypto::format>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BD4B28;
  crypto::format::format(a1 + 3);
  return a1;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<336ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<336ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<336ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<336ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<336ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<336ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<336ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<336ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<336ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<336ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<336ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BD6B58;
  di_log::logger_buf<di_log::log_printer<336ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<336ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<336ul>::log((a1 + 72), __p);
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

void sub_248E29DB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<336ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<336ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<336ul>::log(uint64_t *a1, uint64_t *a2)
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
    v21 = 336;
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
      v21 = 336;
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

uint64_t *std::shared_ptr<crypto::header>::shared_ptr[abi:ne200100]<crypto::header,std::default_delete<crypto::header>,0>(uint64_t *result, uint64_t *a2)
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

void std::__shared_ptr_pointer<crypto::header  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t std::__shared_ptr_pointer<crypto::header  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x24C1ED730);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<crypto::header  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<FileLocal>::__shared_ptr_emplace[abi:ne200100]<char const*,int &,std::allocator<FileLocal>,0>(void *a1, char **a2, unsigned int *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BD6C38;
  std::construct_at[abi:ne200100]<FileLocal,char const*,int &,FileLocal*>((a1 + 3), a2, a3);
}

void std::__shared_ptr_emplace<FileLocal>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285BD6C38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

void std::construct_at[abi:ne200100]<FileLocal,char const*,int &,FileLocal*>(FileLocal *a1, char **a2, unsigned int *a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, *a2);
  v5 = *a3;
  v6 = FileDescriptorWrapper::open_file(__p, v5);
  FileLocal::FileLocal(a1, v6, (v5 & 3) != 0);
}

void sub_248E2A31C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<FileLocal>::__shared_ptr_emplace[abi:ne200100]<int &,BOOL &,BOOL &,std::allocator<FileLocal>,0>(void *a1, int *a2, BOOL *a3, unsigned __int8 *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BD6C38;
  v4 = *a4;
  FileLocal::FileLocal((a1 + 3), *a2, *a3);
}

void *std::__shared_ptr_emplace<SparseBundleBackend>::__shared_ptr_emplace[abi:ne200100]<int &,BOOL &,std::shared_ptr<FileLocal> &,std::shared_ptr<crypto::format> &,std::allocator<SparseBundleBackend>,0>(void *a1, unsigned int *a2, unsigned __int8 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BD6C88;
  SparseBundleBackend::SparseBundleBackend(a1 + 3, *a2, *a3);
  return a1;
}

void std::__shared_ptr_emplace<SparseBundleBackend>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285BD6C88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

void *std::__shared_ptr_emplace<SparseBundleBackend>::__shared_ptr_emplace[abi:ne200100]<char const*,int &,unsigned long &,std::allocator<SparseBundleBackend>,0>(void *a1, char **a2, unsigned int *a3, uint64_t *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BD6C88;
  std::construct_at[abi:ne200100]<SparseBundleBackend,char const*,int &,unsigned long &,SparseBundleBackend*>((a1 + 3), a2, a3, a4);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<SparseBundleBackend,char const*,int &,unsigned long &,SparseBundleBackend*>(uint64_t a1, char **a2, unsigned int *a3, uint64_t *a4)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v7 = std::string::basic_string[abi:ne200100]<0>(__p, *a2);
  v8 = *a3;
  v9 = *a4;
  v15[0] = di_utils::random_uuid(v7);
  v15[1] = v10;
  SparseBundleBackend::SparseBundleBackend(a1, __p, v8, v9, v15);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = *MEMORY[0x277D85DE8];
  return a1;
}

void *std::__shared_ptr_emplace<SparseBundleBackend>::__shared_ptr_emplace[abi:ne200100]<char const*,int &,std::allocator<SparseBundleBackend>,0>(void *a1, char **a2, unsigned int *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BD6C88;
  std::construct_at[abi:ne200100]<SparseBundleBackend,char const*,int &,SparseBundleBackend*>((a1 + 3), a2, a3);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<SparseBundleBackend,char const*,int &,SparseBundleBackend*>(uint64_t a1, char **a2, unsigned int *a3)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v5 = std::string::basic_string[abi:ne200100]<0>(__p, *a2);
  v6 = *a3;
  v12[0] = di_utils::random_uuid(v5);
  v12[1] = v7;
  SparseBundleBackend::SparseBundleBackend(a1, __p, v6, 0, v12);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<336ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BD6B58;
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

void sub_248E2AA00(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_emplace<BackendNull>::__shared_ptr_emplace[abi:ne200100]<unsigned long long &,std::allocator<BackendNull>,0>(uint64_t a1, uint64_t *a2)
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

void std::__shared_ptr_emplace<BackendNull>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285BD6CD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

void std::__shared_ptr_emplace<BackendNull>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void *std::__shared_ptr_emplace<Ram>::__shared_ptr_emplace[abi:ne200100]<unsigned long long,boost::uuids::uuid,std::allocator<Ram>,0>(void *a1, size_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BD6D28;
  Ram::Ram((a1 + 3), *a2, *a3, a3[1]);
  return a1;
}

void std::__shared_ptr_emplace<Ram>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285BD6D28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t Ram::Ram(uint64_t a1, size_t size, uint64_t a3, uint64_t a4)
{
  v15[4] = *MEMORY[0x277D85DE8];
  if (size)
  {
    v8 = malloc_type_valloc(size, 0x8B7C732DuLL);
    if (!v8)
    {
      exception = __cxa_allocate_exception(8uLL);
      v10 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v10, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
    }
  }

  else
  {
    v8 = 0;
  }

  v15[0] = &unk_285BD6D78;
  v15[3] = v15;
  v13 = v8;
  std::__function::__value_func<void ()(char *)>::__value_func[abi:ne200100](v14, v15);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v15);
  Ram::Ram(a1, &v13, size, a3, a4);
  std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100](&v13, 0);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v14);
  v11 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_248E2AE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100](&a9, 0);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v9 + 8);
  _Unwind_Resume(a1);
}

void std::__function::__func<make_unique_buf(unsigned long)::{lambda(char *)#1},std::allocator<make_unique_buf(unsigned long)::{lambda(char *)#1}>,void ()(char *)>::~__func()
{
  JUMPOUT(0x24C1ED730);
}

{
  JUMPOUT(0x24C1ED730);
}

{
  JUMPOUT(0x24C1ED730);
}

{
  JUMPOUT(0x24C1ED730);
}

{
  JUMPOUT(0x24C1ED730);
}

{
  JUMPOUT(0x24C1ED730);
}

{
  JUMPOUT(0x24C1ED730);
}

void std::__function::__func<make_unique_buf(unsigned long)::{lambda(char *)#1},std::allocator<make_unique_buf(unsigned long)::{lambda(char *)#1}>,void ()(char *)>::__clone()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

void std::__function::__func<make_unique_buf(unsigned long)::{lambda(char *)#1},std::allocator<make_unique_buf(unsigned long)::{lambda(char *)#1}>,void ()(char *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_285BD6D78;
}

{
  *a2 = &unk_285BD8DA0;
}

{
  *a2 = &unk_285BED4C8;
}

{
  *a2 = &unk_285BF55F0;
}

{
  *a2 = &unk_285BF7810;
}

{
  *a2 = &unk_285BF7890;
}

{
  *a2 = &unk_285C01AD0;
}

void std::__function::__func<make_unique_buf(unsigned long)::{lambda(char *)#1},std::allocator<make_unique_buf(unsigned long)::{lambda(char *)#1}>,void ()(char *)>::operator()(uint64_t a1, void **a2)
{
  free(*a2);
}

{
  free(*a2);
}

{
  free(*a2);
}

{
  free(*a2);
}

{
  free(*a2);
}

{
  free(*a2);
}

{
  free(*a2);
}

uint64_t std::__function::__func<make_unique_buf(unsigned long)::{lambda(char *)#1},std::allocator<make_unique_buf(unsigned long)::{lambda(char *)#1}>,void ()(char *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<make_unique_buf(unsigned long)::{lambda(char *)#1},std::allocator<make_unique_buf(unsigned long)::{lambda(char *)#1}>,void ()(char *)>::target_type()
{
}

{
}

{
}

{
}

{
}

{
}

{
}

uint64_t std::__function::__value_func<void ()(char *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t Ram::Ram(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Backend::Backend(a1);
  *v10 = &unk_285C01C50;
  v11 = *a2;
  *a2 = 0;
  v10[3] = v11;
  std::__function::__value_func<void ()(char *)>::__value_func[abi:ne200100]((v10 + 4), (a2 + 1));
  *(a1 + 64) = *(a1 + 24);
  *(a1 + 72) = a3;
  *(a1 + 80) = a4;
  *(a1 + 88) = a5;
  *(a1 + 96) = getpagesize();
  return a1;
}

uint64_t std::__shared_ptr_emplace<BackendNull>::__shared_ptr_emplace[abi:ne200100]<unsigned long long &,boost::uuids::uuid &,std::allocator<BackendNull>,0>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_285BD6CD8;
  v4 = *a2;
  v5 = *a3;
  v6 = a3[1];
  Backend::Backend((a1 + 24));
  *(a1 + 24) = &unk_285BD38B0;
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  *(a1 + 64) = v6;
  return a1;
}

void *std::__shared_ptr_emplace<crypto_format_backend>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<Backend>,std::shared_ptr<crypto::format> const&,std::allocator<crypto_format_backend>,0>(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BD6E08;
  v5 = 0;
  crypto_format_backend::crypto_format_backend(a1 + 3, a2, a3, &v5);
  return a1;
}

void std::__shared_ptr_emplace<crypto_format_backend>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285BD6E08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

void *std::__shared_ptr_emplace<crypto_format_backend>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<Backend>,std::shared_ptr<crypto::format> &,std::allocator<crypto_format_backend>,0>(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BD6E08;
  v5 = 0;
  crypto_format_backend::crypto_format_backend(a1 + 3, a2, a3, &v5);
  return a1;
}

void *std::__shared_ptr_emplace<readSynchronizer>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<Backend> &,std::allocator<readSynchronizer>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BD6E58;
  readSynchronizer::readSynchronizer(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<readSynchronizer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285BD6E58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

void *std::__shared_ptr_emplace<readSynchronizer>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<Backend>,std::allocator<readSynchronizer>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BD6E58;
  readSynchronizer::readSynchronizer(a1 + 3);
  return a1;
}

void *std::__shared_ptr_emplace<AEA_backend>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<Backend>,std::shared_ptr<unsigned char> &,std::allocator<AEA_backend>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BD6EA8;
  AEA_backend::AEA_backend(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<AEA_backend>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285BD6EA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t std::__shared_ptr_emplace<std::string>::__shared_ptr_emplace[abi:ne200100]<char const*,std::allocator<std::string>,0>(uint64_t a1, char **a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_285BD6EF8;
  std::string::basic_string[abi:ne200100]<0>((a1 + 24), *a2);
  return a1;
}

void std::__shared_ptr_emplace<std::string>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285BD6EF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

void std::__shared_ptr_emplace<std::string>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

void *std::__shared_ptr_emplace<Knoxbackend>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<std::string>,int,std::shared_ptr<unsigned char> &,std::allocator<Knoxbackend>,0>(void *a1, uint64_t a2, int *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BD6F48;
  Knoxbackend::Knoxbackend(a1 + 3, a2, *a3);
  return a1;
}

void std::__shared_ptr_emplace<Knoxbackend>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285BD6F48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

void *std::__shared_ptr_emplace<plugin_header>::__shared_ptr_emplace[abi:ne200100]<char const*&,__CFDictionary const*,int &,std::allocator<plugin_header>,0>(void *a1, char **a2, uint64_t *a3, unsigned int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BD6F98;
  std::construct_at[abi:ne200100]<plugin_header,char const*&,__CFDictionary const*,int &,plugin_header*>((a1 + 3), a2, a3, a4);
  return a1;
}

void std::__shared_ptr_emplace<plugin_header>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285BD6F98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t std::construct_at[abi:ne200100]<plugin_header,char const*&,__CFDictionary const*,int &,plugin_header*>(uint64_t a1, char **a2, uint64_t *a3, unsigned int *a4)
{
  std::string::basic_string[abi:ne200100]<0>(__p, *a2);
  v7 = *a3;
  v8 = *a4;
  memset(v10, 0, sizeof(v10));
  plugin_header::plugin_header(a1, __p, v7, v8 | 0x100000000, v10, 0);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_248E2BCDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__destroy_at[abi:ne200100]<plugin_header,0>(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v2 = *(a1 + 8);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t std::__shared_ptr_emplace<BackendPlugin>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<plugin_header> &,std::allocator<BackendPlugin>,0>(uint64_t a1, void *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_285BD6FE8;
  Backend::Backend((a1 + 24));
  *(a1 + 24) = &unk_285BD7038;
  v4 = a2[1];
  *(a1 + 48) = *a2;
  *(a1 + 56) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void std::__shared_ptr_emplace<BackendPlugin>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285BD6FE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

void BackendPlugin::~BackendPlugin(BackendPlugin *this)
{
  *this = &unk_285BD7038;
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
  *this = &unk_285BD7038;
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

void *std::__shared_ptr_emplace<plugin_header>::__shared_ptr_emplace[abi:ne200100]<char const*,decltype(nullptr),std::nullopt_t const&,diskimage_decode_fn_t &,void *,std::allocator<plugin_header>,0>(void *a1, char **a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BD6F98;
  std::construct_at[abi:ne200100]<plugin_header,char const*,decltype(nullptr),std::nullopt_t const&,diskimage_decode_fn_t &,void *,plugin_header*>((a1 + 3), a2, a3, a4, a5, a6);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<plugin_header,char const*,decltype(nullptr),std::nullopt_t const&,diskimage_decode_fn_t &,void *,plugin_header*>(uint64_t a1, char **a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  std::string::basic_string[abi:ne200100]<0>(__p, *a2);
  plugin_header::plugin_header(a1, __p, 0, 0, a5, *a6);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_248E2C1D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_248E2C530(_Unwind_Exception *a1, int a2)
{
  v6 = v5;

  if (a2 == 1)
  {
    v9 = [DIError errorWithDIException:__cxa_begin_catch(a1) description:0 prefix:0 error:0];
    v10 = v3[6];
    v3[6] = v9;

    __cxa_end_catch();
    JUMPOUT(0x248E2C510);
  }

  _Unwind_Resume(a1);
}

void sub_248E2CB30(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    v7 = [objc_begin_catch(a1) reason];
    [DIError failWithEnumValue:150 verboseInfo:v7 error:v2];

    objc_end_catch();
    JUMPOUT(0x248E2CAF0);
  }

  _Unwind_Resume(a1);
}

void sub_248E2D328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, uint8_t buf, int a14, __int16 a15, uint64_t a16, __int16 a17, uint64_t a18, __int16 a19, uint64_t a20, __int16 a21, int a22)
{
  if (a2 == 1)
  {
    [DIError failWithDIException:__cxa_begin_catch(a1) prefix:@"Failed opening the shadow/cache file(s)" error:v23];
    __cxa_end_catch();
    JUMPOUT(0x248E2D2E4);
  }

  _Unwind_Resume(a1);
}

void sub_248E2D940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
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

void sub_248E2DB3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = DIBaseParams;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_248E2DECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_248E2EEE4(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_248E2FCB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x24C1ED730](a10, 0x1000C40F139FF95);
  }

  _Unwind_Resume(a1);
}

void sub_248E31008(_Unwind_Exception *a1, int a2)
{
  v7 = v6;

  if (a2 == 1)
  {
    v10 = [objc_begin_catch(a1) reason];
    [DIError nilWithEnumValue:150 verboseInfo:v10 error:v2];
    objc_claimAutoreleasedReturnValue();

    objc_end_catch();
    JUMPOUT(0x248E30FC0);
  }

  _Unwind_Resume(a1);
}

void sub_248E31534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, char a12, int a13, __int16 a14, char a15, char a16, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, int a27, io_object_t object, uint64_t a29, uint8_t buf, int a31, __int16 a32, uint64_t a33, __int16 a34, uint64_t a35, __int16 a36, uint64_t a37)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t add_create_expected<iokit_utils::di_io_obj_t>::create<unsigned long long &>@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  iokit_utils::di_io_obj_t::di_io_obj_t(&v4, *a1);
  *a2 = v4;
  v4 = 0;
  *(a2 + 16) = 1;
  return IOObjectRelease(0);
}

uint64_t unwrap_expected<iokit_utils::di_io_obj_t,std::error_code>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
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

double std::find_if[abi:ne200100]<iokit_utils::di_io_obj_iterator,std::function<BOOL ()(iokit_utils::di_io_obj_t)>>@<D0>(io_object_t *a1@<X0>, io_object_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  while (iokit_utils::di_io_obj_iterator::operator!=(a1, a2))
  {
    v8 = iokit_utils::di_io_obj_iterator::operator*(a1);
    iokit_utils::di_io_obj_base_t<unsigned int>::di_io_obj_base_t(&object, v8);
    v9 = *(a3 + 24);
    if (!v9)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v10 = (*(*v9 + 48))(v9, &object);
    IOObjectRelease(object);
    if (v10)
    {
      break;
    }

    iokit_utils::di_io_obj_iterator::operator++(a1);
  }

  result = *a1;
  *a4 = *a1;
  *a1 = 0;
  return result;
}

void sub_248E31AB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(iokit_utils::di_io_obj_t)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_248E31B5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(iokit_utils::di_io_obj_t)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

io_object_t *iokit_utils::di_io_obj_base_t<unsigned int>::di_io_obj_base_t(io_object_t *a1, io_object_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    IOObjectRetain(v3);
  }

  return a1;
}

uint64_t std::__expected_base<iokit_utils::di_io_obj_t,std::error_code>::__repr::__destroy_union_member[abi:ne200100](uint64_t result)
{
  if (*(result + 16) == 1)
  {
    return IOObjectRelease(*result);
  }

  return result;
}

uint64_t std::__function::__value_func<BOOL ()(iokit_utils::di_io_obj_t)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<BOOL ()(iokit_utils::di_io_obj_t)>::~__value_func[abi:ne200100](uint64_t a1)
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

void sub_248E32014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, io_object_t object, const void *a12, uint64_t a13, char a14)
{
  if (a14 == 1)
  {
    CFAutoRelease<__CFDictionary const*>::~CFAutoRelease(&a12);
  }

  IOObjectRelease(object);
  _Unwind_Resume(a1);
}

const void **wrap_exception<std::expected<CFAutoRelease<__CFDictionary const*>,std::error_code> iokit_utils::di_io_obj_t::get_cf_ref<__CFDictionary const*>(__CFString const*)::{lambda(void)#1}>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  iokit_utils::di_io_obj_t::get_cf_ref<__CFDictionary const*>(__CFString const*)const::{lambda(void)#1}::operator()(a1, &v4);
  *a2 = v4;
  v4 = 0;
  *(a2 + 16) = 1;
  return CFAutoRelease<__CFDictionary const*>::~CFAutoRelease(&v4);
}

CFTypeID iokit_utils::di_io_obj_t::get_cf_ref<__CFDictionary const*>(__CFString const*)const::{lambda(void)#1}::operator()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  CFProperty = IORegistryEntryCreateCFProperty(**a1, **(a1 + 8), *MEMORY[0x277CBECE8], 0);
  result = CFDictionaryGetTypeID();
  if (CFProperty)
  {
    v5 = result;
    result = CFGetTypeID(CFProperty);
    if (result != v5)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v7 = CFGetTypeID(CFProperty);
      v8 = cf::CFUtilException::CFUtilException(exception, v7, v5);
    }
  }

  *a2 = CFProperty;
  return result;
}

cf::CFUtilException *cf::CFUtilException::CFUtilException(cf::CFUtilException *this, uint64_t a2, uint64_t a3)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v7, "CoreFoundation type mismatch: ", 30);
  MEMORY[0x24C1ED3C0](&v7, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v7, " while expecting ", 17);
  MEMORY[0x24C1ED3C0](&v7, a3);
  DiskImagesRuntimeException::DiskImagesRuntimeException(this, &v7, 0x16u);
  v7 = *MEMORY[0x277D82828];
  *(&v7 + *(v7 - 24)) = *(MEMORY[0x277D82828] + 24);
  v8 = MEMORY[0x277D82878] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v9);
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](&v11);
  *this = &unk_285BD71B8;
  return this;
}

void cf::CFUtilException::~CFUtilException(std::exception *this)
{
  DiskImagesRuntimeException::~DiskImagesRuntimeException(this);

  JUMPOUT(0x24C1ED730);
}

void sub_248E324F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, io_object_t object, const void *a12, uint64_t a13, char a14)
{
  if (a14 == 1)
  {
    CFAutoRelease<__CFNumber const*>::~CFAutoRelease(&a12);
  }

  IOObjectRelease(object);
  _Unwind_Resume(a1);
}

const void **wrap_exception<std::expected<CFAutoRelease<__CFNumber const*>,std::error_code> iokit_utils::di_io_obj_t::get_cf_ref<__CFNumber const*>(__CFString const*)::{lambda(void)#1}>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  iokit_utils::di_io_obj_t::get_cf_ref<__CFNumber const*>(__CFString const*)const::{lambda(void)#1}::operator()(a1, &v4);
  *a2 = v4;
  v4 = 0;
  *(a2 + 16) = 1;
  return CFAutoRelease<__CFNumber const*>::~CFAutoRelease(&v4);
}

CFTypeID iokit_utils::di_io_obj_t::get_cf_ref<__CFNumber const*>(__CFString const*)const::{lambda(void)#1}::operator()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  CFProperty = IORegistryEntryCreateCFProperty(**a1, **(a1 + 8), *MEMORY[0x277CBECE8], 0);
  result = CFNumberGetTypeID();
  if (CFProperty)
  {
    v5 = result;
    result = CFGetTypeID(CFProperty);
    if (result != v5)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v7 = CFGetTypeID(CFProperty);
      v8 = cf::CFUtilException::CFUtilException(exception, v7, v5);
    }
  }

  *a2 = CFProperty;
  return result;
}

const void **CFAutoRelease<__CFNumber const*>::~CFAutoRelease(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_248E32DE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, std::__shared_weak_count *a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  FileLocal::~FileLocal(&a20);

  _Unwind_Resume(a1);
}

void FileLocal::~FileLocal(FileLocal *this)
{
  *this = &unk_285BFDF58;
  *(this + 3) = &unk_285BFE048;
  *(this + 4) = &unk_285BFE080;
  std::deque<FileLocal::promise_io_t>::~deque[abi:ne200100](this + 8);
  v2 = *(this + 6);
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
  *this = &unk_285BFDF58;
  *(this + 3) = &unk_285BFE048;
  *(this + 4) = &unk_285BFE080;
  std::deque<FileLocal::promise_io_t>::~deque[abi:ne200100](this + 8);
  v2 = *(this + 6);
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

void sub_248E33E20(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  FileLocal::~FileLocal(va);
  if (a2 == 1)
  {
    [DIError nilWithDIException:__cxa_begin_catch(a1) prefix:@"failed to open existing output file" error:v6];
    objc_claimAutoreleasedReturnValue();
    __cxa_end_catch();
    JUMPOUT(0x248E33CC4);
  }

  _Unwind_Resume(a1);
}

void sub_248E34BCC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {

    if (a2 == 2)
    {
      v10 = [objc_begin_catch(exception_object) reason];
      [DIError nilWithEnumValue:150 verboseInfo:v10 error:v3];
      objc_claimAutoreleasedReturnValue();

      objc_end_catch();
      JUMPOUT(0x248E3470CLL);
    }

    objc_begin_catch(exception_object);
    v11 = *(v2 + 152);
    *(v2 + 152) = 0;

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_248E35048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t std::deque<FileLocal::promise_io_t>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 >> 5];
    v7 = *v6 + 128 * (v5 & 0x1F);
    v8 = *(v2 + (((a1[5] + v5) >> 2) & 0x3FFFFFFFFFFFFFF8)) + 128 * ((a1[5] + v5) & 0x1F);
    if (v7 != v8)
    {
      do
      {
        v9 = *(v7 + 15);
        if (v9)
        {
          *(v9 + 16) = 0;
        }

        v10 = *(v7 + 1);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        v7 += 128;
        if (v7 - *v6 == 4096)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v12 = v3 - v2;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v12 = v3 - v2;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v13 = 16;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_20;
    }

    v13 = 32;
  }

  a1[4] = v13;
LABEL_20:
  while (v2 != v3)
  {
    v14 = *v2++;
    operator delete(v14);
  }

  return std::__split_buffer<FileLocal::promise_io_t *>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<FileLocal::promise_io_t *>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_248E3652C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void PluginRing::PluginRing()
{
  v0 = *MEMORY[0x277D85DE8];
  io_rings_get_max_version(0, 0);
  io_rings_setup();
}

void PluginRing::~PluginRing(PluginRing *this)
{
  io_rings_suspend(*(this + 6));
  io_rings_cancel(*(this + 6));
  std::mutex::~mutex((this + 136));
  std::condition_variable::~condition_variable((this + 88));
  PluginRingSubscriber::~PluginRingSubscriber((this + 56));
  std::unique_ptr<io_rings_setup_params_out_t,std::function<void ()(io_rings_setup_params_out_t*)>>::reset[abi:ne200100](this + 1, 0);
  std::__function::__value_func<void ()(io_rings_setup_params_out_t *)>::~__value_func[abi:ne200100](this + 16);
}

double PluginRing::try_sub_sqe_allocate(PluginRing *this)
{
  v1 = atomic_load(this + 19);
  v2 = atomic_load(this + 18);
  if (v2 - v1 < *(*(this + 1) + 8))
  {
    v3 = v2;
    while (1)
    {
      atomic_compare_exchange_strong(this + 18, &v3, v2 + 1);
      if (v3 == v2)
      {
        break;
      }

      v4 = atomic_load(this + 19);
      v5 = v3 - v4;
      v2 = v3;
      if (v5 >= *(*(this + 1) + 8))
      {
        return result;
      }
    }

    return io_rings_sqe_allocate(*(this + 6));
  }

  return result;
}

void PluginRing::get_next_cqe(PluginRing *this@<X0>, uint64_t a2@<X8>)
{
  cqe = io_rings_get_cqe(*(this + 6));
  if ((v5 & 0x100000000) != 0)
  {
    v7 = cqe;
    v8 = v5;
    add = atomic_fetch_add(this + 19, 1u);
    if (atomic_load(this + 10))
    {
      v11 = atomic_load(this + 18);
      if (add + 1 == v11)
      {
        std::mutex::lock((this + 136));
        std::condition_variable::notify_all((this + 88));
        std::mutex::unlock((this + 136));
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

void di_hybrid_subscriber_t::di_hybrid_subscriber_t(di_hybrid_subscriber_t *this, io_rings_desc_t *a2, diskimage_uio::details::diskimage_impl *a3)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v6[0] = &unk_285BD7E90;
  v6[1] = this;
  v6[3] = v6;
  io_rings_di_subscriber_t::io_rings_di_subscriber_t();
  std::__function::__value_func<diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<std::unique_ptr<DiskImage::Context>,std::error_code> ()(void)>::~__value_func[abi:ne200100](v6);
  *(this + 35) = di_hybrid_subscriber_t::get_cache_di(this);
  v4 = *(*(io_rings_di_subscriber_t::get_di(this) + 24) - 24);
  *(this + 36) = v4;
  *(this + 37) = (*(*v4 + 24))(v4);
  v5 = *(*(this + 36) + 16);
  PluginRing::PluginRing();
}

void sub_248E36BD4(_Unwind_Exception *a1)
{
  std::deque<std::atomic<DiskImage::Context *>>::~deque[abi:ne200100]((v1 + 576));
  std::mutex::~mutex((v1 + 512));
  gcd::gcd_group::~gcd_group((v1 + 504));
  PluginRing::~PluginRing((v1 + 304));
  std::__function::__value_func<diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<std::unique_ptr<DiskImage::Context>,std::error_code> ()(void)>::~__value_func[abi:ne200100](v1 + 248);
  pool_ns::pool_t<DiskImage::Context,std::default_delete>::~pool_t(v1 + 120);
  _Unwind_Resume(a1);
}

uint64_t di_hybrid_subscriber_t::get_cache_di(di_hybrid_subscriber_t *this)
{
  di = io_rings_di_subscriber_t::get_di(this);
  if (0xAAAAAAAAAAAAAAABLL * ((*(di + 24) - *(di + 16)) >> 4) >= 2 && (v2 = *(di + 24), *(v2 - 96) == 2) && (*(**(v2 - 88) + 40))(*(v2 - 88)))
  {
    return *(v2 - 88);
  }

  else
  {
    return 0;
  }
}

uint64_t di_hybrid_subscriber_t::exec_sync(uint64_t *a1, unsigned __int8 *a2)
{
  io_rings_di_subscriber_t::get_ctx(a1, v8);
  if (v8[1])
  {
    v4 = io_rings_parse_and_execute_sqe(a1, v8, a2);
    if (*a2 - 1 > 1)
    {
      sqe = io_rings_return_status(a1[7], a2, v4, 0);
    }

    else
    {
      sqe = di_hybrid_subscriber_t::handle_read_sqe(a1, a2, v8, v4);
    }
  }

  else
  {
    sqe = io_rings_return_status(a1[7], a2, 0xFFFFFFF4, 0);
  }

  v6 = sqe;
  pool_ns::pool_t<DiskImage::Context,std::default_delete>::pooled_element_t::~pooled_element_t(v8);
  return v6;
}

void sub_248E36D74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pool_ns::pool_t<DiskImage::Context,std::default_delete>::pooled_element_t::~pooled_element_t(va);
  _Unwind_Resume(a1);
}

uint64_t di_hybrid_subscriber_t::handle_read_sqe(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
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

    std::vector<di_async_sub_transaction_t>::__base_destruct_at_end[abi:ne200100](v9, v8);
  }

  v11 = *(a1 + 56);

  return io_rings_return_status(v11, a2, a4, 0);
}

void sub_248E37478(void *a1)
{
  __cxa_begin_catch(a1);
  di_hybrid_subscriber_t::handle_read_sqe(io_rings_sqe_t const*,pool_ns::pool_t<DiskImage::Context,std::default_delete>::pooled_element_t &,int)::$_0::operator()<di_hybrid_context_t *>(v1);
  __cxa_rethrow();
}

void sub_248E374C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  v24 = *(v23 + 48);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  JUMPOUT(0x248E374F8);
}

uint64_t di_hybrid_subscriber_t::add_sqe(uint64_t a1, unsigned __int8 *a2)
{
  if (io_rings_sqe_is_barrier(a2))
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 0x40000000;
    v6[2] = ___ZN22di_hybrid_subscriber_t7add_sqeEPK14io_rings_sqe_t_block_invoke;
    v6[3] = &__block_descriptor_tmp_3;
    v6[4] = a1;
    v6[5] = a2;
    gcd::gcd_queue::barrier_async((a1 + 624), v6);
  }

  else
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 0x40000000;
    v5[2] = ___ZN22di_hybrid_subscriber_t7add_sqeEPK14io_rings_sqe_t_block_invoke_3;
    v5[3] = &__block_descriptor_tmp_4;
    v5[4] = a1;
    v5[5] = a2;
    gcd::gcd_queue::async((a1 + 624), v5);
  }

  return 0;
}

void ___ZN22di_hybrid_subscriber_t7add_sqeEPK14io_rings_sqe_t_block_invoke(uint64_t a1)
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
    PluginRing::wait_for_pending_ios((v2 + 304));
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 0x40000000;
    v7[2] = ___ZN22di_hybrid_subscriber_t7add_sqeEPK14io_rings_sqe_t_block_invoke_2;
    v7[3] = &__block_descriptor_tmp_0;
    v6 = *(a1 + 40);
    v7[4] = v2;
    v7[5] = v6;
    gcd::gcd_queue::async((v2 + 624), v7);
  }
}

void PluginRing::wait_for_pending_ios(PluginRing *this)
{
  v1 = (this + 72);
  v2 = atomic_load(this + 18);
  v3 = (this + 76);
  v4 = atomic_load(this + 19);
  if (v2 != v4)
  {
    atomic_fetch_add(this + 10, 1uLL);
    v8.__m_ = (this + 136);
    v8.__owns_ = 1;
    std::mutex::lock((this + 136));
    v6 = atomic_load(v1);
    for (i = atomic_load(v3); v6 != i; i = atomic_load(this + 19))
    {
      std::condition_variable::wait((this + 88), &v8);
      v6 = atomic_load(this + 18);
    }

    if (v8.__owns_)
    {
      std::mutex::unlock(v8.__m_);
    }

    atomic_fetch_add(this + 10, 0xFFFFFFFFFFFFFFFFLL);
  }
}

uint64_t ___ZN22di_hybrid_subscriber_t7add_sqeEPK14io_rings_sqe_t_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  __dmb(9u);
  return di_hybrid_subscriber_t::exec_sync(v1, *(a1 + 40));
}

uint64_t ___ZN22di_hybrid_subscriber_t7add_sqeEPK14io_rings_sqe_t_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  __dmb(9u);
  return di_hybrid_subscriber_t::exec_sync(v1, *(a1 + 40));
}

uint64_t di_hybrid_subscriber_t::suspend(uint64_t this)
{
  v1 = 2;
  atomic_compare_exchange_strong((this + 632), &v1, 0);
  if (v1 == 2)
  {
    v2 = this;
    gcd::gcd_queue::suspend((this + 624));
    v3 = io_rings_suspend(*(v2 + 352));
    *&v4 = "di_hybrid_subscriber_t::suspend()";
    *(&v4 + 1) = 31;
    v5 = 0;
    di_log::logger<di_log::log_printer<250ul>>::logger(v6, &v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v7, "Plugin's ring suspended, ret code ", 34);
    MEMORY[0x24C1ED390](&v7, v3);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<250ul>>::~logger_buf(v6);
    return MEMORY[0x24C1ED6A0](&v8);
  }

  return this;
}

void sub_248E37858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<250ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<250ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<250ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BD7528;
  a1[45] = &unk_285BD7628;
  a1[46] = &unk_285BD7650;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BD7528;
  a1[45] = &unk_285BD75B0;
  a1[46] = &unk_285BD75D8;
  return a1;
}

void sub_248E37970(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<250ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<250ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<250ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_hybrid_subscriber_t::resume(uint64_t this)
{
  v1 = 0;
  atomic_compare_exchange_strong((this + 632), &v1, 2u);
  if (!v1)
  {
    v2 = this;
    gcd::gcd_queue::resume((this + 624));
    v3 = io_rings_resume(*(v2 + 352));
    *&v4 = "di_hybrid_subscriber_t::resume()";
    *(&v4 + 1) = 30;
    v5 = 0;
    di_log::logger<di_log::log_printer<259ul>>::logger(v6, &v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v7, "Plugin's ring resumed, ret code ", 32);
    MEMORY[0x24C1ED390](&v7, v3);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<259ul>>::~logger_buf(v6);
    return MEMORY[0x24C1ED6A0](&v8);
  }

  return this;
}

void sub_248E37A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<259ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<259ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<259ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BD7748;
  a1[45] = &unk_285BD7848;
  a1[46] = &unk_285BD7870;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BD7748;
  a1[45] = &unk_285BD77D0;
  a1[46] = &unk_285BD77F8;
  return a1;
}

void sub_248E37BB4(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<259ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<259ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<259ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

di_async_sub_transaction_t *di_async_sub_transaction_t::append_empty_buffer(di_async_sub_transaction_t *this, int a2)
{
  if (a2)
  {
    di_async_sub_transaction_t::enqueue_new_buffer(this);
  }

  return this;
}

void sub_248E37E58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

char *di_async_sub_transaction_t::append_moved_transaction_buffers(uint64_t a1, uint64_t a2)
{
  std::vector<std::shared_ptr<char>>::__insert_with_size[abi:ne200100]<std::move_iterator<std::__wrap_iter<std::shared_ptr<char>*>>,std::move_iterator<std::__wrap_iter<std::shared_ptr<char>*>>>((a1 + 128), *(a1 + 136), *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 4);
  result = std::vector<iovec>::__insert_with_size[abi:ne200100]<std::move_iterator<std::__wrap_iter<iovec*>>,std::move_iterator<std::__wrap_iter<iovec*>>>((a1 + 104), *(a1 + 112), *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 4);
  *(a1 + 48) += *(a2 + 48);
  return result;
}

uint64_t *compact_sub_transactions@<X0>(uint64_t *result@<X0>, unsigned int a2@<W1>, unint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v8 = *result;
  v7 = result[1];
  if (*result == v7)
  {
    *a6 = v8;
    a6[1] = v7;
    a6[2] = result[2];
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    return result;
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

      v18 = (v14 - 168);
      v19 = (v42 + v15) / a3 * a3;
      if (v43 < v19)
      {
        LODWORD(v19) = v43;
      }

      di_async_sub_transaction_t::append_empty_buffer(v18, v19 - v15);
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
      v33 = std::vector<di_async_sub_transaction_t>::__emplace_back_slow_path<di_async_sub_transaction_t>(a6, &v45);
      v34 = *(&v54 + 1);
      a6[1] = v33;
      if (v34)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v34);
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
    std::vector<std::shared_ptr<char>>::__destroy_vector::operator()[abi:ne200100](&v55);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (*(&v51 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v51 + 1));
    }

    v16 = v12 % v11;
    v14 = a6[1];
LABEL_26:
    v35 = v14 - 168;
    di_async_sub_transaction_t::append_empty_buffer((v14 - 168), v16);
    di_async_sub_transaction_t::append_moved_transaction_buffers(v35, v8);
    v8 += 168;
  }

  while (v8 != v7);
  v36 = a6[1];
  v37 = (v36 - 168);
  v38 = *(v36 - 120) * a4 + *(v36 - 136) * v10;
  v39 = (v42 + v38) / a3 * a3;
  if (v43 < v39)
  {
    LODWORD(v39) = v43;
  }

  result = di_async_sub_transaction_t::append_empty_buffer(v37, v39 - v38);
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

  return result;
}

void sub_248E381D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::vector<di_async_sub_transaction_t>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::deque<di_async_sub_transaction_t *>::emplace_back<di_async_sub_transaction_t *>(uint64_t a1, void *a2)
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
    std::deque<di_async_sub_transaction_t *>::__add_back_capacity(a1);
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

void di_hybrid_subscriber_t::handle_pending_sqes(di_hybrid_subscriber_t *this)
{
  if (*(this + 77))
  {
    std::mutex::lock(this + 8);
    for (i = 0; *(this + 77); --i)
    {
      PluginRing::try_sub_sqe_allocate((this + 304));
      if (!v3)
      {
        break;
      }

      v4 = *(*(*(this + 73) + ((*(this + 76) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(this + 76) & 0x1FFLL));
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
      *(v3 + 8) = *(this + 92);
      *(this + 38) = vaddq_s64(*(this + 38), xmmword_248F9E450);
      std::deque<std::atomic<DiskImage::Context *>>::__maybe_remove_front_spare[abi:ne200100](this + 576, 1);
    }

    std::mutex::unlock(this + 8);
    if (i)
    {
      v9 = *(this + 44);

      io_rings_enter(v9, -i, 0);
    }
  }
}

uint64_t di_hybrid_subscriber_t::cancel(uint64_t this)
{
  v1 = atomic_load((this + 632));
  if (v1 != 1)
  {
    v2 = this;
    if (atomic_exchange((this + 632), 1u) == 2)
    {
      gcd::gcd_queue::suspend((this + 624));
    }

    gcd::gcd_queue::resume((v2 + 624));
    gcd::gcd_queue::barrier_sync((v2 + 624), &__block_literal_global_3);
    v3 = io_rings_cancel(*(v2 + 352));
    if (v3 < 0)
    {
      goto LABEL_32;
    }

    std::mutex::lock((v2 + 512));
    v4 = *(v2 + 584);
    v5 = *(v2 + 592);
    if (v5 == v4)
    {
      v9 = (v2 + 616);
    }

    else
    {
      v6 = *(v2 + 608);
      v7 = &v4[v6 >> 9];
      v8 = (*v7 + 8 * (v6 & 0x1FF));
      v9 = (v2 + 616);
      v10 = *(v4 + (((*(v2 + 616) + v6) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(v2 + 616) + v6) & 0x1FF);
      if (v8 != v10)
      {
        do
        {
          v11 = *v8;
          v22 = 0u;
          memset(v23, 0, sizeof(v23));
          memset(v21, 0, sizeof(v21));
          *(v11 + 80) = 0;
          *(v11 + 48) = 0u;
          *(v11 + 64) = 0u;
          *(v11 + 16) = 0u;
          *(v11 + 32) = 0u;
          *v11 = 0u;
          v12 = *(&v21[5] + 8);
          *(&v21[5] + 1) = 0;
          *&v21[6] = 0;
          v13 = *(v11 + 96);
          *(v11 + 88) = v12;
          if (v13)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v13);
          }

          v14 = *(v11 + 104);
          if (v14)
          {
            *(v11 + 112) = v14;
            operator delete(v14);
            *(v11 + 104) = 0;
            *(v11 + 112) = 0;
            *(v11 + 120) = 0;
          }

          *(v11 + 104) = *(&v21[6] + 8);
          *(v11 + 120) = *(&v21[7] + 1);
          memset(&v21[6] + 8, 0, 24);
          std::vector<std::shared_ptr<char>>::__vdeallocate((v11 + 128));
          *(v11 + 128) = v22;
          *(v11 + 144) = v23[0];
          v22 = 0uLL;
          memset(v23, 0, sizeof(v23));
          v15 = *(v11 + 160);
          *(v11 + 152) = *&v23[1];
          if (v15)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v15);
          }

          if (v23[2])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v23[2]);
          }

          *&v19 = &v22;
          std::vector<std::shared_ptr<char>>::__destroy_vector::operator()[abi:ne200100](&v19);
          if (*(&v21[6] + 1))
          {
            *&v21[7] = *(&v21[6] + 1);
            operator delete(*(&v21[6] + 1));
          }

          if (*&v21[6])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*&v21[6]);
          }

          if (++v8 - *v7 == 4096)
          {
            v16 = v7[1];
            ++v7;
            v8 = v16;
          }
        }

        while (v8 != v10);
        v4 = *(v2 + 584);
        v5 = *(v2 + 592);
        v9 = (v2 + 616);
      }
    }

    *v9 = 0;
    v17 = v5 - v4;
    if (v17 >= 3)
    {
      do
      {
        operator delete(*v4);
        v4 = (*(v2 + 584) + 8);
        *(v2 + 584) = v4;
        v17 = (*(v2 + 592) - v4) >> 3;
      }

      while (v17 > 2);
    }

    if (v17 == 1)
    {
      v18 = 256;
    }

    else
    {
      if (v17 != 2)
      {
LABEL_31:
        std::mutex::unlock((v2 + 512));
LABEL_32:
        *&v19 = "di_hybrid_subscriber_t::cancel()";
        *(&v19 + 1) = 30;
        v20 = 0;
        di_log::logger<di_log::log_printer<610ul>>::logger(v21, &v19);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "Plugin's async ring cancelled, ret code ", 40);
        MEMORY[0x24C1ED3B0](&v24, v3);
        std::ostream::~ostream();
        di_log::logger_buf<di_log::log_printer<610ul>>::~logger_buf(v21);
        return MEMORY[0x24C1ED6A0](&v25);
      }

      v18 = 512;
    }

    *(v2 + 608) = v18;
    goto LABEL_31;
  }

  return this;
}

void sub_248E386C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  di_log::logger<di_log::log_printer<610ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<610ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<610ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BD79C8;
  a1[45] = &unk_285BD7AC8;
  a1[46] = &unk_285BD7AF0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BD79C8;
  a1[45] = &unk_285BD7A50;
  a1[46] = &unk_285BD7A78;
  return a1;
}

void sub_248E387E0(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<610ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<610ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<610ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void di_hybrid_subscriber_t::cqe_callback(di_hybrid_subscriber_t *this)
{
  v2 = *(this + 35) != 0;
  PluginRing::get_next_cqe((this + 304), &v19);
  v3 = v20;
  if (v20)
  {
    v4 = v19;
    v5 = MEMORY[0x277D85DD0];
    do
    {
      v6 = *(v4 + 152);
      v7 = *(v4 + 160);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        v9 = v5;
        v10 = 1174405120;
        v11 = ___ZN22di_hybrid_subscriber_t12cqe_callbackEv_block_invoke;
        v12 = &__block_descriptor_tmp_12;
        v13 = this;
        v14 = v4;
        v15 = v4;
        v16 = v3;
        v17 = v6;
        v18 = v7;
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v9 = v5;
        v10 = 1174405120;
        v11 = ___ZN22di_hybrid_subscriber_t12cqe_callbackEv_block_invoke;
        v12 = &__block_descriptor_tmp_12;
        v13 = this;
        v14 = v4;
        v15 = v4;
        v16 = v3;
        v17 = v6;
        v18 = 0;
      }

      if (*(this + 35) || *(v6 + 104) == 1)
      {
        gcd::gcd_queue::async(this + 63, &v9);
        v2 = 1;
      }

      else
      {
        v11(&v9);
      }

      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      PluginRing::get_next_cqe((this + 304), &v19);
      v4 = v19;
      v3 = v20;
    }

    while ((v20 & 1) != 0);
  }

  if (v2)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 0x40000000;
    v8[2] = ___ZN22di_hybrid_subscriber_t12cqe_callbackEv_block_invoke_13;
    v8[3] = &__block_descriptor_tmp_14;
    v8[4] = this;
    gcd::gcd_queue::async(this + 63, v8);
  }

  else
  {
    di_hybrid_subscriber_t::handle_pending_sqes(this);
  }
}

void sub_248E38A20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN22di_hybrid_subscriber_t12cqe_callbackEv_block_invoke(uint64_t a1)
{
  v2 = di_hybrid_subscriber_t::handle_sub_cqe(*(a1 + 32), *(a1 + 40), *(a1 + 56));
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
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
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
  std::vector<std::shared_ptr<char>>::__vdeallocate((v4 + 128));
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
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v10 = v8;
  std::vector<std::shared_ptr<char>>::__destroy_vector::operator()[abi:ne200100](&v10);
}

uint64_t di_hybrid_subscriber_t::handle_sub_cqe(di_hybrid_subscriber_t *this, di_async_sub_transaction_t *a2, int a3)
{
  v50[90] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 12);
  if (a3 == v3)
  {
    v5 = *(this + 35);
    if (v5)
    {
      v35 = *(a2 + 4);
      v6 = *(this + 37);
      dummy_shared_ptr = details::get_dummy_shared_ptr();
      v9 = dummy_shared_ptr;
      v11 = *(a2 + 13);
      v10 = *(a2 + 14);
      v12 = v46;
      __p = v46;
      v45 = xmmword_248F9C800;
      v13 = (v10 - v11 - 16) >> 4;
      if (v10 == v11)
      {
        v14 = 0;
      }

      else
      {
        v14 = v13 + 1;
      }

      if (v14 < 6)
      {
        if (v11 == v10)
        {
          v14 = 0;
        }

        else
        {
          v24 = v13 + 1;
          do
          {
            v25 = *v11;
            v26 = dummy_shared_ptr[1];
            if (v26)
            {
              atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
            }

            v27 = *(v11 + 1);
            *v12 = v25;
            v12[1] = v26;
            v12[2] = v27;
            v11 += 16;
            v12 += 3;
            --v24;
          }

          while (v24);
        }
      }

      else
      {
        if (v14 >= 0x555555555555556)
        {
          boost::container::throw_length_error("get_next_capacity, allocator's max size reached", v8);
        }

        v15 = operator new(24 * v14);
        v16 = v15;
        if (__p)
        {
          v33 = v15;
          v34 = v5;
          v17 = v45;
          if (v45)
          {
            v18 = (__p + 8);
            do
            {
              if (*v18)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*v18);
              }

              v18 += 3;
              --v17;
            }

            while (v17);
          }

          *&v45 = 0;
          v16 = v33;
          v5 = v34;
          if (v46 != __p)
          {
            operator delete(__p);
          }
        }

        *(&v45 + 1) = v14;
        __p = v16;
        *&v45 = 0;
        if (v11 == v10)
        {
          v23 = 0;
          v19 = v16;
        }

        else
        {
          v19 = v16;
          do
          {
            v20 = *v11;
            v21 = v9[1];
            if (v21)
            {
              atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
            }

            v22 = *(v11 + 1);
            *v19 = v20;
            *(v19 + 1) = v21;
            *(v19 + 2) = v22;
            v11 += 16;
            v19 += 24;
          }

          while (v11 != v10);
          v23 = v45;
        }

        v14 = v23 - 0x5555555555555555 * ((v19 - v16) >> 3);
      }

      *&v45 = v14;
      v47 = &v49;
      v48 = xmmword_248F9C800;
      boost::container::vector<unsigned long,boost::container::small_vector_allocator<unsigned long,boost::container::new_allocator<void>,void>,void>::priv_resize<boost::container::value_init_t,boost::move_detail::integral_constant<unsigned int,1u>>(&v47, v14);
      v39 = __p;
      v36 = __p + 24 * v14;
      v43 = v47;
      v42 = &v47[v48];
      sg_vec_ref::sg_vec_ref(v50, &v39, &v36, &v43, &v42, v6 * v35, v6 * v3, 1);
      v28 = (*(*v5 + 144))(v5);
      sg_vec_ref::begin(v50, &v39);
      sg_vec_ref::end(v50, &v36);
      v29 = DiskImage::Context::write(v28, &v39, &v36);
      if (v38)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v38);
      }

      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      if (v41)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v41);
      }

      if (v40)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v40);
      }

      if (v28)
      {
        (*(*v28 + 40))(v28);
      }

      if (v29 < 0)
      {
        v5 = v29;
      }

      else
      {
        v5 = 0;
      }

      sg_vec::~sg_vec(&__p);
    }

    v30 = *(a2 + 11);
    if (v30)
    {
      crypto::crypt_op::crypt_consecutive_vector::operator()(v30 + 248);
    }
  }

  else if (a3 < 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = 4294967291;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_248E38EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a15);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a43);
  if (v43)
  {
    (*(*v43 + 40))(v43);
  }

  sg_vec::~sg_vec(&STACK[0x200]);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_72c47_ZTSNSt3__110shared_ptrI19di_hybrid_context_tEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_72c47_ZTSNSt3__110shared_ptrI19di_hybrid_context_tEE(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t di_plugin_cq_event_callback(uint64_t a1)
{
  overruns = io_rings_cq_get_overruns(a1);
  *&v4 = "di_plugin_cq_event_callback(io_uhandle_t, void *, enum io_rings_event_type_t, struct io_rings_event_type_data_t *)";
  *(&v4 + 1) = 27;
  v5 = 16;
  di_log::logger<di_log::log_printer<57ul>>::logger(v6, &v4);
  MEMORY[0x24C1ED3A0](&v7, overruns);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v7, " overrun events occurred in the plugin's ring!", 46);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<57ul>>::~logger_buf(v6);
  MEMORY[0x24C1ED6A0](&v8);
  return io_rings_cq_clear_overruns(a1);
}

void sub_248E39074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<57ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<57ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<57ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BD7308;
  a1[45] = &unk_285BD7408;
  a1[46] = &unk_285BD7430;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BD7308;
  a1[45] = &unk_285BD7390;
  a1[46] = &unk_285BD73B8;
  return a1;
}

void sub_248E3918C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<57ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<57ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<57ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<57ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BD74A0;
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

void sub_248E392A4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<57ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BD74A0;
  di_log::logger_buf<di_log::log_printer<57ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<57ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<57ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<57ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<57ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<57ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<57ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<57ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<57ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<57ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<57ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<57ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<57ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<57ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<57ul>::log((a1 + 72), __p);
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

void sub_248E39848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<57ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 57;
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
      v22 = 57;
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

uint64_t std::__function::__value_func<void ()(io_rings_setup_params_out_t *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t *std::unique_ptr<io_rings_setup_params_out_t,std::function<void ()(io_rings_setup_params_out_t*)>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return std::function<void ()(io_rings_setup_params_out_t *)>::operator()((result + 1), v3);
  }

  return result;
}

uint64_t std::function<void ()(io_rings_setup_params_out_t *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void pool_ns::pool_t<DiskImage::Context,std::default_delete>::~pool_t(uint64_t a1)
{
  while (*(a1 + 104))
  {
    v2 = (*(*(a1 + 72) + ((*(a1 + 96) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 96) & 0x1FFLL));
    if (atomic_load(v2))
    {
      v4 = atomic_load(v2);
      if (v4)
      {
        (*(*v4 + 40))(v4);
      }
    }

    *(a1 + 96) = vaddq_s64(*(a1 + 96), xmmword_248F9E450);
    std::deque<std::atomic<DiskImage::Context *>>::__maybe_remove_front_spare[abi:ne200100](a1 + 64, 1);
  }

  std::deque<std::atomic<DiskImage::Context *>>::~deque[abi:ne200100]((a1 + 64));

  std::mutex::~mutex(a1);
}

uint64_t std::deque<std::atomic<DiskImage::Context *>>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x200)
  {
    a2 = 1;
  }

  if (v2 < 0x400)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 512;
  }

  return v4 ^ 1u;
}

uint64_t std::deque<std::atomic<DiskImage::Context *>>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<FileLocal::promise_io_t *>::~__split_buffer(a1);
}

void non-virtual thunk todi_log::logger<di_log::log_printer<250ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<250ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<250ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<250ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<250ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<250ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<250ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<250ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<250ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<250ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<250ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BD76C0;
  di_log::logger_buf<di_log::log_printer<250ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<250ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<250ul>::log((a1 + 72), __p);
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

void sub_248E3A2B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<250ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<250ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<250ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 250;
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
      v22 = 250;
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

void non-virtual thunk todi_log::logger<di_log::log_printer<259ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<259ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<259ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<259ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<259ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<259ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<259ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<259ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<259ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<259ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<259ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BD78E0;
  di_log::logger_buf<di_log::log_printer<259ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<259ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<259ul>::log((a1 + 72), __p);
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

void sub_248E3AA48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<259ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<259ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<259ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 259;
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
      v22 = 259;
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

void sub_248E3ACF8(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    MEMORY[0x24C1ED710](v1, 0x1000C8077774924);
  }

  __cxa_rethrow();
}

void std::__shared_ptr_pointer<char *,di_async_sub_transaction_t::allocate_buffer(unsigned long)::{lambda(char * *)#1},std::allocator<char>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t std::__shared_ptr_pointer<char *,di_async_sub_transaction_t::allocate_buffer(unsigned long)::{lambda(char * *)#1},std::allocator<char>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x24C1ED710);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<char *,di_async_sub_transaction_t::allocate_buffer(unsigned long)::{lambda(char * *)#1},std::allocator<char>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN26di_async_sub_transaction_t15allocate_bufferEmEUlPT_E_))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *std::vector<std::shared_ptr<char>>::__insert_with_size[abi:ne200100]<std::move_iterator<std::__wrap_iter<std::shared_ptr<char>*>>,std::move_iterator<std::__wrap_iter<std::shared_ptr<char>*>>>(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
        std::vector<std::shared_ptr<char>>::__move_range(a1, a2, a1[1], &a2[2 * a5]);
        v18 = (v7 + 16 * a5);
      }

      else
      {
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<char>>,std::move_iterator<std::__wrap_iter<std::shared_ptr<char>*>>,std::move_iterator<std::__wrap_iter<std::shared_ptr<char>*>>,std::shared_ptr<char>*>(a1, v16 + a3, a4, a1[1]);
        if (v17 < 1)
        {
          return v5;
        }

        std::vector<std::shared_ptr<char>>::__move_range(a1, v5, v10, &v5[2 * a5]);
        v18 = (v16 + v7);
      }

      std::__copy_impl::operator()[abi:ne200100]<std::move_iterator<std::__wrap_iter<std::shared_ptr<char> *>>,std::move_iterator<std::__wrap_iter<std::shared_ptr<char> *>>,std::shared_ptr<char> *>(v30, v7, v18, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 4);
    if (v12 >> 60)
    {
      std::vector<iovec>::__throw_length_error[abi:ne200100]();
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
      std::allocator<std::shared_ptr<char>>::allocate_at_least[abi:ne200100](a1, v15);
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
    std::__split_buffer<std::shared_ptr<char>>::~__split_buffer(v30);
    return v19;
  }

  return v5;
}

void *std::vector<std::shared_ptr<char>>::__move_range(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
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
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<char> *,std::shared_ptr<char> *,std::shared_ptr<char> *>(&v11, a2, v7, v6);
}

_OWORD *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<char>>,std::move_iterator<std::__wrap_iter<std::shared_ptr<char>*>>,std::move_iterator<std::__wrap_iter<std::shared_ptr<char>*>>,std::shared_ptr<char>*>(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
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
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<char>>,std::shared_ptr<char>*>>::~__exception_guard_exceptions[abi:ne200100](v6);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<char>>,std::shared_ptr<char>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<char>>,std::shared_ptr<char>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<char>>,std::shared_ptr<char>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v1 -= 16;
  }
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<char> *,std::shared_ptr<char> *,std::shared_ptr<char> *>(uint64_t a1, void *a2, void *a3, uint64_t a4)
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
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }
    }

    while (v7 != a2);
  }

  return a3;
}

__int128 *std::__copy_impl::operator()[abi:ne200100]<std::move_iterator<std::__wrap_iter<std::shared_ptr<char> *>>,std::move_iterator<std::__wrap_iter<std::shared_ptr<char> *>>,std::shared_ptr<char> *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
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

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

char *std::vector<iovec>::__insert_with_size[abi:ne200100]<std::move_iterator<std::__wrap_iter<iovec*>>,std::move_iterator<std::__wrap_iter<iovec*>>>(void *a1, char *__src, __int128 *a3, __int128 *a4, uint64_t a5)
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
    std::vector<iovec>::__throw_length_error[abi:ne200100]();
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
    std::allocator<iovec>::allocate_at_least[abi:ne200100](a1, v15);
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

void std::vector<di_async_sub_transaction_t>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<di_async_sub_transaction_t>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<di_async_sub_transaction_t>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<di_async_sub_transaction_t>>::destroy[abi:ne200100]<di_async_sub_transaction_t,void,0>(a1, i))
  {
    i -= 168;
  }

  *(a1 + 8) = a2;
}

uint64_t di_hybrid_context_t::di_hybrid_context_t(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, sg_per_io_crypto *a6)
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
  v7 = (a1 + 48);
  *(v7 + 56) = 0;
  if (*(a6 + 56) == 1)
  {
    sg_per_io_crypto::sg_per_io_crypto(v7, a6);
    *(a1 + 104) = 1;
  }

  return a1;
}

void sub_248E3B504(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<di_async_sub_transaction_t>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<di_async_sub_transaction_t>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<di_async_sub_transaction_t>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<std::shared_ptr<char>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::shared_ptr<char>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void non-virtual thunk todi_log::logger<di_log::log_printer<610ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<610ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<610ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<610ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<610ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<610ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<610ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<610ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<610ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<610ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<610ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BD7B60;
  di_log::logger_buf<di_log::log_printer<610ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<610ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<610ul>::log((a1 + 72), __p);
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

void sub_248E3BAEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<610ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<610ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<610ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 610;
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
      v22 = 610;
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

uint64_t DiskImage::Context::write(DiskImage::Context *this, const sg_vec_ns::details::sg_vec_iterator *a2, const sg_vec_ns::details::sg_vec_iterator *a3)
{
  if ((*(*(this + 1) + 8) & 1) == 0)
  {
    return (*(*this + 8))(this, a2, a3);
  }

  if (DIDebugLogsEnabled())
  {
    *&v4 = "DiskImage::Context::write(const sg_vec::iterator &, const sg_vec::iterator &)";
    *(&v4 + 1) = 25;
    v5 = 2;
    di_log::logger<di_log::log_printer<166ul>>::logger(v6, &v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v7, "Disk image is terminated, skipping write", 40);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<166ul>>::~logger_buf(v6);
    MEMORY[0x24C1ED6A0](&v8);
  }

  return -6;
}

void sub_248E3BDF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<166ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<166ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<166ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BD7BE8;
  a1[45] = &unk_285BD7CE8;
  a1[46] = &unk_285BD7D10;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BD7BE8;
  a1[45] = &unk_285BD7C70;
  a1[46] = &unk_285BD7C98;
  return a1;
}

void sub_248E3BF0C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<166ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<166ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<166ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<166ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BD7D80;
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

void sub_248E3C024(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<166ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BD7D80;
  di_log::logger_buf<di_log::log_printer<166ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<166ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<166ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<166ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<166ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<166ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<166ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<166ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<166ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<166ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<166ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<166ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<166ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<166ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<166ul>::log((a1 + 72), __p);
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

void sub_248E3C5C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<166ul>::log(uint64_t *a1, uint64_t *a2)
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
    v22 = 166;
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
      v22 = 166;
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

uint64_t std::__function::__value_func<diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<std::unique_ptr<DiskImage::Context>,std::error_code> ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<PluginRing::PluginRing(_di_plugin_image_t *,void (*)(io_rings_desc_t *,void *),void *)::$_0,std::allocator<PluginRing::PluginRing(_di_plugin_image_t *,void (*)(io_rings_desc_t *,void *),void *)::$_0>,void ()(io_rings_setup_params_out_t *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(io_rings_setup_params_out_t *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<di_hybrid_subscriber_t::di_hybrid_subscriber_t(io_rings_desc_t *,diskimage_uio::details::diskimage_impl &)::$_0,std::allocator<di_hybrid_subscriber_t::di_hybrid_subscriber_t(io_rings_desc_t *,diskimage_uio::details::diskimage_impl &)::$_0>,diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<std::unique_ptr<DiskImage::Context>,std::error_code> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285BD7E90;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<di_hybrid_subscriber_t::di_hybrid_subscriber_t(io_rings_desc_t *,diskimage_uio::details::diskimage_impl &)::$_0,std::allocator<di_hybrid_subscriber_t::di_hybrid_subscriber_t(io_rings_desc_t *,diskimage_uio::details::diskimage_impl &)::$_0>,diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<std::unique_ptr<DiskImage::Context>,std::error_code> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t DiskImageStackable::ContextStackable::ContextStackable(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = &unk_285BD7F10;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  v6 = a1 + 16;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = a3;
  if (a3 == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = (*(**(*(a2 + 24) - 24) + 104))(*(*(a2 + 24) - 24));
  }

  *(a1 + 44) = v7;
  v8 = *(a2 + 16);
  for (i = *(a2 + 24); v8 != i; v8 += 48)
  {
    if (a3 == 1 && 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 24) - *(a2 + 16)) >> 4) - 1 == (*(a1 + 24) - *(a1 + 16)) >> 4)
    {
      v10 = *(v8 + 24);
      v11 = *(v8 + 32);
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    v12 = (*(**(v8 + 8) + 144))(*(v8 + 8));
    v17 = v12;
    v13 = *(a1 + 24);
    if (v13 >= *(a1 + 32))
    {
      v14 = std::vector<std::shared_ptr<DiskImage::Context>>::__emplace_back_slow_path<std::unique_ptr<DiskImage::Context>>(v6, &v17);
      v15 = v17;
      *(a1 + 24) = v14;
      v17 = 0;
      if (v15)
      {
        (*(*v15 + 40))(v15);
      }
    }

    else
    {
      *v13 = v12;
      if (v12)
      {
        operator new();
      }

      v13[1] = 0;
      *(a1 + 24) = v13 + 2;
    }
  }

  return a1;
}

void sub_248E3CE5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::shared_ptr<char>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void DiskImageStackable::ContextStackable::~ContextStackable(DiskImageStackable::ContextStackable *this)
{
  *this = &unk_285BD7F10;
  v1 = (this + 16);
  std::vector<std::shared_ptr<char>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  *this = &unk_285BD7F10;
  v2 = (this + 16);
  std::vector<std::shared_ptr<char>>::__destroy_vector::operator()[abi:ne200100](&v2);
  MEMORY[0x24C1ED730](this, 0x10A1C40A452BC5ALL);
}

uint64_t std::vector<std::shared_ptr<DiskImage::Context>>::__emplace_back_slow_path<std::unique_ptr<DiskImagePlugin::ContextPluginAsync>>(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<iovec>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    std::allocator<std::shared_ptr<LockableResource>>::allocate_at_least[abi:ne200100](a1, v7);
  }

  v14 = 0;
  v15 = 16 * v2;
  v16 = 16 * v2;
  v17 = 0;
  std::shared_ptr<DiskImage::Context>::shared_ptr[abi:ne200100]<DiskImagePlugin::ContextPluginAsync,std::default_delete<DiskImagePlugin::ContextPluginAsync>,0>((16 * v2), a2);
  v8 = 16 * v2 + 16;
  v9 = *(a1 + 8) - *a1;
  v10 = 16 * v2 - v9;
  memcpy((v15 - v9), *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::shared_ptr<char>>::~__split_buffer(&v14);
  return v8;
}

void sub_248E3D0C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::shared_ptr<char>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::shared_ptr<DiskImage::Context>::shared_ptr[abi:ne200100]<DiskImagePlugin::ContextPluginAsync,std::default_delete<DiskImagePlugin::ContextPluginAsync>,0>(uint64_t *result, uint64_t *a2)
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

void std::__shared_ptr_pointer<DiskImagePlugin::ContextPluginAsync  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t std::__shared_ptr_pointer<DiskImagePlugin::ContextPluginAsync  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<DiskImagePlugin::ContextPluginAsync  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void DiskImagePlugin::ContextPluginAsync::~ContextPluginAsync(DiskImagePlugin::ContextPluginAsync *this)
{
  *this = &unk_285BD7FC8;
  v1 = (this + 16);
  std::vector<di_async_sub_transaction_t>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  *this = &unk_285BD7FC8;
  v2 = (this + 16);
  std::vector<di_async_sub_transaction_t>::__destroy_vector::operator()[abi:ne200100](&v2);
  MEMORY[0x24C1ED730](this, 0x10E1C402A8A4AEDLL);
}

uint64_t std::vector<std::shared_ptr<DiskImage::Context>>::__emplace_back_slow_path<std::unique_ptr<DiskImage::Context>>(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<iovec>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    std::allocator<std::shared_ptr<LockableResource>>::allocate_at_least[abi:ne200100](a1, v7);
  }

  v14 = 0;
  v15 = 16 * v2;
  v16 = 16 * v2;
  v17 = 0;
  std::shared_ptr<DiskImage::Context>::shared_ptr[abi:ne200100]<DiskImage::Context,std::default_delete<DiskImage::Context>,0>((16 * v2), a2);
  v8 = 16 * v2 + 16;
  v9 = *(a1 + 8) - *a1;
  v10 = 16 * v2 - v9;
  memcpy((v15 - v9), *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::shared_ptr<char>>::~__split_buffer(&v14);
  return v8;
}

void sub_248E3D3C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::shared_ptr<char>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::shared_ptr<DiskImage::Context>::shared_ptr[abi:ne200100]<DiskImage::Context,std::default_delete<DiskImage::Context>,0>(uint64_t *result, uint64_t *a2)
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

void std::__shared_ptr_pointer<DiskImage::Context  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t std::__shared_ptr_pointer<DiskImage::Context  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<DiskImage::Context  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t pool_ns::pool_t<DiskImage::Context,std::default_delete>::pooled_element_t::~pooled_element_t(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 == -2)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      (*(*v4 + 40))(v4);
    }
  }

  else if (v2 == -1)
  {
    if (*(a1 + 8))
    {
      v3 = *a1;
      std::mutex::lock(*a1);
      std::deque<std::atomic<DiskImage::Context *>>::emplace_back<DiskImage::Context *&>(*a1 + 64, (a1 + 8));
      std::mutex::unlock(v3);
    }
  }

  else if ((v2 & 0x8000000000000000) == 0)
  {
    atomic_store(*(a1 + 8), (*(*(*a1 + 72) + (((*(*a1 + 96) + v2) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(*a1 + 96) + v2) & 0x1FF)));
  }

  return a1;
}

uint64_t std::deque<std::atomic<DiskImage::Context *>>::emplace_back<DiskImage::Context *&>(uint64_t a1, void *a2)
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
    std::deque<std::atomic<DiskImage::Context *>>::__add_back_capacity(a1);
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

void *std::deque<std::atomic<DiskImage::Context *>>::__add_back_capacity(void *a1)
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
    std::allocator<std::atomic<DiskImage::Context *> *>::allocate_at_least[abi:ne200100](a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<std::atomic<DiskImage::Context *> *,std::allocator<std::atomic<DiskImage::Context *> *>>::emplace_back<std::atomic<DiskImage::Context *> *&>(a1, &v10);
}

void sub_248E3D818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<std::atomic<DiskImage::Context *> *,std::allocator<std::atomic<DiskImage::Context *> *>>::emplace_back<std::atomic<DiskImage::Context *> *&>(void *result, void *a2)
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

      std::allocator<std::atomic<DiskImage::Context *> *>::allocate_at_least[abi:ne200100](result, v11);
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

const void **std::__split_buffer<std::atomic<DiskImage::Context *> *,std::allocator<std::atomic<DiskImage::Context *> *>>::emplace_front<std::atomic<DiskImage::Context *> *>(const void **result, void *a2)
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

      std::allocator<std::atomic<DiskImage::Context *> *>::allocate_at_least[abi:ne200100](result, v9);
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

void *std::__split_buffer<std::atomic<DiskImage::Context *> *,std::allocator<std::atomic<DiskImage::Context *> *> &>::emplace_back<std::atomic<DiskImage::Context *> *>(void *result, void *a2)
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

      std::allocator<std::atomic<DiskImage::Context *> *>::allocate_at_least[abi:ne200100](result[4], v11);
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

const void **std::__split_buffer<std::atomic<DiskImage::Context *> *,std::allocator<std::atomic<DiskImage::Context *> *> &>::emplace_front<std::atomic<DiskImage::Context *> *&>(const void **result, void *a2)
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

      std::allocator<std::atomic<DiskImage::Context *> *>::allocate_at_least[abi:ne200100](result[4], v9);
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

void std::allocator<std::atomic<DiskImage::Context *> *>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t di_log::logger_buf<di_log::log_printer<250ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BD76C0;
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

void sub_248E3DD84(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<259ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BD78E0;
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

void sub_248E3DE4C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_hybrid_subscriber_t::handle_read_sqe(io_rings_sqe_t const*,pool_ns::pool_t<DiskImage::Context,std::default_delete>::pooled_element_t &,int)::$_0::operator()<di_hybrid_context_t *>(uint64_t a1)
{
  v2 = atomic_load((a1 + 16));
  if (!v2)
  {
    v2 = *(a1 + 20);
  }

  io_rings_return_status(*(*a1 + 56), *(a1 + 8), v2, 0);
  v4 = (a1 + 24);
  std::vector<di_async_sub_transaction_t>::__destroy_vector::operator()[abi:ne200100](&v4);
  return MEMORY[0x24C1ED730](a1, 0x10E0C40244501DALL);
}

void std::__shared_ptr_pointer<di_hybrid_context_t *,di_hybrid_subscriber_t::handle_read_sqe(io_rings_sqe_t const*,pool_ns::pool_t<DiskImage::Context,std::default_delete>::pooled_element_t &,int)::$_0,std::allocator<di_hybrid_context_t>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t std::__shared_ptr_pointer<di_hybrid_context_t *,di_hybrid_subscriber_t::handle_read_sqe(io_rings_sqe_t const*,pool_ns::pool_t<DiskImage::Context,std::default_delete>::pooled_element_t &,int)::$_0,std::allocator<di_hybrid_context_t>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = atomic_load((v1 + 16));
  if (!v2)
  {
    v2 = *(v1 + 20);
  }

  io_rings_return_status(*(*v1 + 56), *(v1 + 8), v2, 0);
  v4 = (v1 + 24);
  std::vector<di_async_sub_transaction_t>::__destroy_vector::operator()[abi:ne200100](&v4);
  return MEMORY[0x24C1ED730](v1, 0x10E0C40244501DALL);
}

uint64_t std::__shared_ptr_pointer<di_hybrid_context_t *,di_hybrid_subscriber_t::handle_read_sqe(io_rings_sqe_t const*,pool_ns::pool_t<DiskImage::Context,std::default_delete>::pooled_element_t &,int)::$_0,std::allocator<di_hybrid_context_t>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<di_async_sub_crypto_transaction_t>::__shared_ptr_emplace[abi:ne200100]<sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,std::vector<std::shared_ptr<char>>,Backend::op,std::allocator<di_async_sub_crypto_transaction_t>,0>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BD80F0;
  di_async_sub_crypto_transaction_t::di_async_sub_crypto_transaction_t<sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t>((a1 + 3), a2, a3, a4, *a5);
}

void std::__shared_ptr_emplace<di_async_sub_crypto_transaction_t>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285BD80F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t std::__shared_ptr_emplace<di_async_sub_crypto_transaction_t>::__on_zero_shared(uint64_t a1)
{
  v5 = (a1 + 520);
  std::vector<std::shared_ptr<char>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(a1 + 496);
  if (v2)
  {
    *(a1 + 504) = v2;
    operator delete(v2);
  }

  crypto::crypt_op::crypt_consecutive_vector::~crypt_consecutive_vector((a1 + 272));
  std::__function::__value_func<sg_entry ()(sg_entry const&)>::~__value_func[abi:ne200100](a1 + 240);
  v3 = *(a1 + 200);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::context::aes_cbc,crypto::context::aes_xts,crypto::context::aes_xts_ans_kdf2>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1 + 24);
}

void di_async_sub_crypto_transaction_t::di_async_sub_crypto_transaction_t<sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v8;
  v10 = *(a2 + 32);
  sg_entry::sg_entry(&v11, a2 + 40);
  di_sub_crypto_transaction_t::di_sub_crypto_transaction_t<sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t>(a1, v9, a3, a5);
}

void sub_248E3E3B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  a9 = (v9 + 496);
  std::vector<std::shared_ptr<char>>::__destroy_vector::operator()[abi:ne200100](&a9);
  v12 = *v10;
  if (*v10)
  {
    *(v9 + 480) = v12;
    operator delete(v12);
  }

  di_sub_crypto_transaction_t::~di_sub_crypto_transaction_t(v9);
  _Unwind_Resume(a1);
}

void di_sub_crypto_transaction_t::di_sub_crypto_transaction_t<sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = *MEMORY[0x277D85DE8];
  sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t::operator*(a2, v30);
  if (v32 == 3)
  {
    crypto::context::aes_xts_ans_kdf2::aes_xts_ans_kdf2(v22, a4 == 0, v33, v35);
    crypto::context::aes_xts_ans_kdf2::aes_xts_ans_kdf2(v28);
    v29 = 2;
    crypto::context::aes_xts_ans_kdf2::~aes_xts_ans_kdf2(v22);
  }

  else if (v32 == 2)
  {
    crypto::context::aes_xts::aes_xts(v22, a4 == 0, v33, v34, v35);
    crypto::context::aes_xts::aes_xts(v28, v22);
    v29 = 1;
    v22[0] = &unk_285BD82F8;
    std::unique_ptr<ccxts_ctx [],crypto::context::aes::cc_mode_deleter<ccxts_ctx,ccmode_xts>>::reset[abi:ne200100](&v25);
    v22[0] = &unk_285BD3848;
    if (__p)
    {
      v24 = __p;
      operator delete(__p);
    }
  }

  else
  {
    crypto::context::aes_iv::aes_iv(&v20, v34);
    crypto::context::aes_cbc::aes_cbc(v22, a4 == 0, v33, &v20, v35);
    crypto::context::aes_cbc::aes_cbc(v28, v22);
    v29 = 0;
    v22[0] = &unk_285BD82D0;
    std::unique_ptr<cccbc_ctx [],crypto::context::aes::cc_mode_deleter<cccbc_ctx,ccmode_cbc>>::reset[abi:ne200100](v26);
    v8 = v25;
    v25 = 0;
    if (v8)
    {
      MEMORY[0x24C1ED710](v8, 0x1000C8015230203);
    }

    v22[0] = &unk_285BD3848;
    if (__p)
    {
      v24 = __p;
      operator delete(__p);
    }

    v9 = v20;
    v20 = 0;
    if (v9)
    {
      MEMORY[0x24C1ED710](v9, 0x1000C8015230203);
    }
  }

  v10 = *(sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t::operator->(a2) + 22);
  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<crypto::context::aes_cbc,crypto::context::aes_xts,crypto::context::aes_xts_ans_kdf2>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](a1, v28);
  *(a1 + 152) = v10;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::context::aes_cbc,crypto::context::aes_xts,crypto::context::aes_xts_ans_kdf2>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v28);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  Backend::Backend((a1 + 160));
  *(a1 + 160) = &unk_285BD38B0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = -1;
  v11 = sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t::operator->(a2)[12];
  *(a1 + 208) = v11 - sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t::operator->(a2)[3];
  *(a1 + 216) = &unk_285BD8140;
  *(a1 + 224) = a1;
  *(a1 + 240) = a1 + 216;
  v12 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v12;
  v18 = *(a2 + 32);
  sg_entry::sg_entry(&v19, a2 + 40);
  std::__function::__value_func<sg_entry ()(sg_entry const&)>::__value_func[abi:ne200100](v27, a1 + 216);
  std::__function::__value_func<sg_entry ()(sg_entry const&)>::__value_func[abi:ne200100](v22, v27);
  boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default>::transform_iterator(v28, v17, v22);
  std::__function::__value_func<sg_entry ()(sg_entry const&)>::~__value_func[abi:ne200100](v22);
  v13 = *(a3 + 16);
  v14[0] = *a3;
  v14[1] = v13;
  v15 = *(a3 + 32);
  sg_entry::sg_entry(&v16, a3 + 40);
  std::__function::__value_func<sg_entry ()(sg_entry const&)>::__value_func[abi:ne200100](v21, a1 + 216);
  std::__function::__value_func<sg_entry ()(sg_entry const&)>::__value_func[abi:ne200100](v30, v21);
  boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default>::transform_iterator(v22, v14, v30);
  std::__function::__value_func<sg_entry ()(sg_entry const&)>::~__value_func[abi:ne200100](v30);
  crypto::crypt_op::crypt_consecutive_vector::crypt_consecutive_vector<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default>>(a1 + 248, a1, a1 + 160, v28, v22, a4, 0);
}

void sub_248E3E804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  crypto::context::aes_cbc::~aes_cbc(&a54);
  if (a49)
  {
    MEMORY[0x24C1ED710](a49, 0x1000C8015230203);
  }

  v56 = *(v54 - 176);
  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  _Unwind_Resume(a1);
}

uint64_t **sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t::operator->(uint64_t **a1)
{
  sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t::operator*(a1, &v3);
  sg_entry::operator=((a1 + 5), &v3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return a1 + 5;
}

void sub_248E3E994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void di_sub_crypto_transaction_t::~di_sub_crypto_transaction_t(di_sub_crypto_transaction_t *this)
{
  crypto::crypt_op::crypt_consecutive_vector::~crypt_consecutive_vector((this + 248));
  std::__function::__value_func<sg_entry ()(sg_entry const&)>::~__value_func[abi:ne200100](this + 216);
  v2 = *(this + 22);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::context::aes_cbc,crypto::context::aes_xts,crypto::context::aes_xts_ans_kdf2>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](this);
}

void sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t::operator*(uint64_t **a1@<X0>, uint64_t a2@<X8>)
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

  v8 = *(details::get_dummy_shared_ptr() + 1);
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
  sg_entry::sg_entry(a2, &v13);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v9 = a1[3];
  if (v9)
  {
    if (*(a2 + 104) == 1)
    {
      v10 = *v9;
      v11 = *(v9 + 1);
      v12 = *(v9 + 2);
      *(a2 + 96) = v9[6];
      *(a2 + 64) = v11;
      *(a2 + 80) = v12;
      *(a2 + 48) = v10;
    }

    else
    {
      sg_per_io_crypto::sg_per_io_crypto((a2 + 48), v9);
      *(a2 + 104) = 1;
    }
  }
}

void sub_248E3EAD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v12 = *(v10 + 8);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default>::~transform_iterator(uint64_t a1)
{
  std::__function::__value_func<sg_entry ()(sg_entry const&)>::~__value_func[abi:ne200100](a1 + 152);
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIN27di_sub_crypto_transaction_t12transform_itMUlRT_E_ENS_9allocatorIS5_EEF8sg_entryRKS8_EE7__cloneEPNS0_6__baseISB_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285BD8140;
  a2[1] = v2;
  return result;
}

void _ZNSt3__110__function6__funcIN27di_sub_crypto_transaction_t12transform_itMUlRT_E_ENS_9allocatorIS5_EEF8sg_entryRKS8_EEclESA_(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 8);
  sg_entry::sg_entry(&v5, a2);
  v7 += *(v4 + 208);
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

void sub_248E3EC40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIN27di_sub_crypto_transaction_t12transform_itMUlRT_E_ENS_9allocatorIS5_EEF8sg_entryRKS8_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIN27di_sub_crypto_transaction_t12transform_itMUlRT_E_E))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default>::transform_iterator(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = a2[1];
  *(a1 + 32) = *(a2 + 8);
  *a1 = v5;
  *(a1 + 16) = v6;
  sg_entry::sg_entry(a1 + 40, a2 + 40);
  std::__function::__value_func<sg_entry ()(sg_entry const&)>::__value_func[abi:ne200100](a1 + 152, a3);
  return a1;
}

void sub_248E3ECF4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<sg_entry ()(sg_entry const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void crypto::crypt_op::crypt_consecutive_vector::crypt_consecutive_vector<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v31[5] = *MEMORY[0x277D85DE8];
  v14 = MEMORY[0x277D85FA0];
  v15 = *MEMORY[0x277D85FA0];
  v16 = *(a2 + 152);
  crypto::details::buffer_aligner::backend_op_to_different_buffer_fn(a6, v21);
  v17 = crypto::details::buffer_aligner::calc_total_sg_size<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default>>(a4, a5, v15, v16, v21);
  crypto::details::sg_allocator::sg_allocator(a1, v17, *v14);
  std::__function::__value_func<BOOL ()(sg_entry const&)>::~__value_func[abi:ne200100](v21);
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  *(a1 + 80) = v8;
  *(a1 + 88) = a7;
  v18 = *(a4 + 16);
  v27[0] = *a4;
  v27[1] = v18;
  v28 = *(a4 + 32);
  sg_entry::sg_entry(&v29, a4 + 40);
  std::__function::__value_func<sg_entry ()(sg_entry const&)>::__value_func[abi:ne200100](v31, a4 + 152);
  v19 = *(a5 + 16);
  v22[0] = *a5;
  v22[1] = v19;
  v23 = *(a5 + 32);
  sg_entry::sg_entry(&v24, a5 + 40);
  std::__function::__value_func<sg_entry ()(sg_entry const&)>::__value_func[abi:ne200100](v26, a5 + 152);
  v20 = std::distance[abi:ne200100]<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default>>(v27, v22);
  std::__function::__value_func<sg_entry ()(sg_entry const&)>::~__value_func[abi:ne200100](v26);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  std::__function::__value_func<sg_entry ()(sg_entry const&)>::~__value_func[abi:ne200100](v31);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  *(a1 + 96) = v20;
  is_mul_ok(3 * v20, 0x18uLL);
  operator new[]();
}

void sub_248E3F1E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

void sub_248E3F2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<BOOL ()(sg_entry const&)>::~__value_func[abi:ne200100](va);
  JUMPOUT(0x248E3F2D0);
}

uint64_t crypto::details::buffer_aligner::calc_total_sg_size<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default>>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v48[4] = *MEMORY[0x277D85DE8];
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32))
  {
    v10 = 0;
    goto LABEL_44;
  }

  boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default>::dereference(a1);
  sg_entry::sg_entry(v29, v43);
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  v11 = v31 / a3 * a3;
  container_it<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default>>::container_it(v43, a1, a2);
  container_it<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default>>::begin(v43, &v36);
  container_it<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default>>::end(v43, v32);
  v10 = 0;
  v12 = v36;
  while (v12 != v32[0] || v37 != v32[1] || v39 != v32[3] || v40 != v33)
  {
    boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default>::dereference(&v36);
    sg_entry::sg_entry(v23, v27);
    v13 = *(a5 + 24);
    if (!v13)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    if ((*(*v13 + 48))(v13, v23))
    {
      v14 = v26 - v11 + v25;
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
      if (!(v26 % a4))
      {
        if (!(v25 % a4))
        {
          v11 = v25 + v26;
          goto LABEL_26;
        }

        v17 = 0;
      }

      v18 = v17 + v10;
      if ((v25 + v26) % a4)
      {
        v19 = a3;
      }

      else
      {
        v19 = 0;
      }

      v10 = v18 + v19;
      v11 = (a4 - 1 + v25 + v26) / a4 * a4;
    }

LABEL_26:
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }

    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    v20 = *(v36 + 8);
    if (v20 >= v38)
    {
      v20 = v38;
    }

    v38 -= v20;
    v12 = v36 + 16;
    v37 += v20;
    v36 += 16;
  }

  std::__function::__value_func<sg_entry ()(sg_entry const&)>::~__value_func[abi:ne200100](&v35);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  std::__function::__value_func<sg_entry ()(sg_entry const&)>::~__value_func[abi:ne200100](&v42);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  std::__function::__value_func<sg_entry ()(sg_entry const&)>::~__value_func[abi:ne200100](v48);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  std::__function::__value_func<sg_entry ()(sg_entry const&)>::~__value_func[abi:ne200100](&v46);
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

LABEL_44:
  v21 = *MEMORY[0x277D85DE8];
  return v10;
}

void sub_248E3F5E0(_Unwind_Exception *a1)
{
  if (STACK[0x2D0])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x2D0]);
  }

  _Unwind_Resume(a1);
}

uint64_t std::distance[abi:ne200100]<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default>>(__int128 *a1, __int128 *a2)
{
  v26[4] = *MEMORY[0x277D85DE8];
  v4 = a1[1];
  v21 = *a1;
  v22 = v4;
  v23 = *(a1 + 8);
  sg_entry::sg_entry(&v24, a1 + 40);
  std::__function::__value_func<sg_entry ()(sg_entry const&)>::__value_func[abi:ne200100](v26, a1 + 152);
  v15 = *a2;
  v16 = a2[1];
  v17 = *(a2 + 8);
  sg_entry::sg_entry(&v18, a2 + 40);
  std::__function::__value_func<sg_entry ()(sg_entry const&)>::__value_func[abi:ne200100](v20, a2 + 152);
  v5 = *(&v21 + 1);
  if (v21 == v15 && __PAIR128__(*(&v22 + 1), *(&v21 + 1)) == __PAIR128__(*(&v16 + 1), *(&v15 + 1)) && v23 == v17)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = v22;
    v8 = v21 + 16;
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
      *&v22 = v7;
      v8 = v9 + 16;
      if (v9 == v15)
      {
        v11 = v5 == *(&v15 + 1) && *(&v22 + 1) == *(&v16 + 1);
        if (v11 && v23 == v17)
        {
          break;
        }
      }
    }

    *&v21 = v9;
    *(&v21 + 1) = v5;
  }

  std::__function::__value_func<sg_entry ()(sg_entry const&)>::~__value_func[abi:ne200100](v20);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  std::__function::__value_func<sg_entry ()(sg_entry const&)>::~__value_func[abi:ne200100](v26);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_248E3F7C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default>::~transform_iterator(&a33);
  _Unwind_Resume(a1);
}

void crypto::details::buffer_aligner::operator()<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default>>(void *a1, __int128 *a2, __int128 *a3)
{
  v28[4] = *MEMORY[0x277D85DE8];
  container_it<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default>>::container_it(v24, a2, a3);
  container_it<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default>>::begin(v24, &v17);
  container_it<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default>>::end(v24, v13);
  v4 = v17;
  while (v4 != v13[0] || v18 != v13[1] || v20 != v13[3] || v21 != v14)
  {
    boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default>::dereference(&v17);
    sg_entry::sg_entry(&v8, v11);
    v5 = crypto::details::buffer_aligner::try_append_to_last_sg(a1, &v8, 0);
    if (v5 != v10)
    {
      crypto::details::buffer_aligner::handle_unaligned_sg(a1, &v8, v5, 0);
    }

    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    v6 = *(v17 + 8);
    if (v6 >= v19)
    {
      v6 = v19;
    }

    v18 += v6;
    v19 -= v6;
    v4 = v17 + 16;
    v17 += 16;
  }

  std::__function::__value_func<sg_entry ()(sg_entry const&)>::~__value_func[abi:ne200100](&v16);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  std::__function::__value_func<sg_entry ()(sg_entry const&)>::~__value_func[abi:ne200100](&v23);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  std::__function::__value_func<sg_entry ()(sg_entry const&)>::~__value_func[abi:ne200100](v28);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  std::__function::__value_func<sg_entry ()(sg_entry const&)>::~__value_func[abi:ne200100](&v26);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_248E3F9A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default>::~transform_iterator(&a38);
  boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default>::~transform_iterator(&a61);
  container_it<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default>>::~container_it(&STACK[0x258]);
  _Unwind_Resume(a1);
}

uint64_t container_it<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default>>::begin@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = *(a1 + 32);
  sg_entry::sg_entry(a2 + 40, a1 + 40);
  return std::__function::__value_func<sg_entry ()(sg_entry const&)>::__value_func[abi:ne200100](a2 + 152, a1 + 152);
}

void sub_248E3FA40(void *a1)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  __clang_call_terminate(a1);
}

uint64_t container_it<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default>>::end@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 200);
  *a2 = *(a1 + 184);
  *(a2 + 16) = v4;
  *(a2 + 32) = *(a1 + 216);
  sg_entry::sg_entry(a2 + 40, a1 + 224);
  return std::__function::__value_func<sg_entry ()(sg_entry const&)>::__value_func[abi:ne200100](a2 + 152, a1 + 336);
}

void sub_248E3FAB0(void *a1)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  __clang_call_terminate(a1);
}

uint64_t container_it<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default>>::~container_it(uint64_t a1)
{
  std::__function::__value_func<sg_entry ()(sg_entry const&)>::~__value_func[abi:ne200100](a1 + 336);
  v2 = *(a1 + 232);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__function::__value_func<sg_entry ()(sg_entry const&)>::~__value_func[abi:ne200100](a1 + 152);
  v3 = *(a1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default>::dereference(uint64_t a1)
{
  sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t::operator*(a1, &v3);
  v2 = *(a1 + 176);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v2 + 48))(v2, &v3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_248E3FB98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t container_it<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default>>::container_it(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v6 = *a2;
  v7 = a2[1];
  *(a1 + 32) = *(a2 + 8);
  *a1 = v6;
  *(a1 + 16) = v7;
  sg_entry::sg_entry(a1 + 40, a2 + 40);
  std::__function::__value_func<sg_entry ()(sg_entry const&)>::__value_func[abi:ne200100](a1 + 152, a2 + 152);
  v8 = *a3;
  v9 = a3[1];
  *(a1 + 216) = *(a3 + 8);
  *(a1 + 200) = v9;
  *(a1 + 184) = v8;
  sg_entry::sg_entry(a1 + 224, a3 + 40);
  std::__function::__value_func<sg_entry ()(sg_entry const&)>::__value_func[abi:ne200100](a1 + 336, a3 + 152);
  return a1;
}

void sub_248E3FC38(void *a1)
{
  v3 = *(v1 + 232);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<crypto::crypt_op::crypt_consecutive_vector::crypt_consecutive_vector<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default>>(crypto::crypt_op&,Backend &,boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default> const&,boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default> const&,Backend::op,long long)::{lambda(char *,char *,unsigned long)#1},std::allocator<crypto::crypt_op::crypt_consecutive_vector::crypt_consecutive_vector<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default>>(crypto::crypt_op&,Backend &,boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default> const&,boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default> const&,Backend::op,long long)::{lambda(char *,char *,unsigned long)#1}>,crypto::details::buffer_aligner::inout_t ()(char *,char *,unsigned long)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  result = *a2;
  v4 = *a3;
  return result;
}

uint64_t std::__function::__func<crypto::crypt_op::crypt_consecutive_vector::crypt_consecutive_vector<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default>>(crypto::crypt_op&,Backend &,boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default> const&,boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default> const&,Backend::op,long long)::{lambda(char *,char *,unsigned long)#1},std::allocator<crypto::crypt_op::crypt_consecutive_vector::crypt_consecutive_vector<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default>>(crypto::crypt_op&,Backend &,boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default> const&,boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default> const&,Backend::op,long long)::{lambda(char *,char *,unsigned long)#1}>,crypto::details::buffer_aligner::inout_t ()(char *,char *,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const void *std::__function::__func<crypto::crypt_op::crypt_consecutive_vector::crypt_consecutive_vector<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default>>(crypto::crypt_op&,Backend &,boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default> const&,boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default> const&,Backend::op,long long)::{lambda(char *,char *,unsigned long)#2},std::allocator<crypto::crypt_op::crypt_consecutive_vector::crypt_consecutive_vector<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default>>(crypto::crypt_op&,Backend &,boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default> const&,boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default> const&,Backend::op,long long)::{lambda(char *,char *,unsigned long)#2}>,crypto::details::buffer_aligner::inout_t ()(char *,char *,unsigned long)>::operator()(uint64_t a1, void **a2, const void **a3, size_t *a4)
{
  v4 = *a3;
  memcpy(*a2, *a3, *a4);
  return v4;
}

uint64_t std::__function::__func<crypto::crypt_op::crypt_consecutive_vector::crypt_consecutive_vector<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default>>(crypto::crypt_op&,Backend &,boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default> const&,boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default> const&,Backend::op,long long)::{lambda(char *,char *,unsigned long)#2},std::allocator<crypto::crypt_op::crypt_consecutive_vector::crypt_consecutive_vector<boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default>>(crypto::crypt_op&,Backend &,boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default> const&,boost::iterators::transform_iterator<std::function<sg_entry ()(sg_entry const&)>,sqe_iovec_to_sg_t<std::__wrap_iter<iovec *>>::const_iterator_t,boost::use_default,boost::use_default> const&,Backend::op,long long)::{lambda(char *,char *,unsigned long)#2}>,crypto::details::buffer_aligner::inout_t ()(char *,char *,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<sg_entry ()(sg_entry const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t sg_entry::operator=(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(a2 + 1);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 16) = v7;
  if (*(a1 + 104) == *(a2 + 104))
  {
    if (*(a1 + 104))
    {
      v8 = *(a2 + 3);
      v9 = *(a2 + 4);
      v10 = *(a2 + 5);
      *(a1 + 96) = a2[12];
      *(a1 + 64) = v9;
      *(a1 + 80) = v10;
      *(a1 + 48) = v8;
    }
  }

  else if (*(a1 + 104))
  {
    *(a1 + 104) = 0;
  }

  else
  {
    sg_per_io_crypto::sg_per_io_crypto((a1 + 48), (a2 + 6));
    *(a1 + 104) = 1;
  }

  return a1;
}

void *std::deque<di_async_sub_transaction_t *>::__add_back_capacity(void *a1)
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

void sub_248E4010C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<di_async_sub_transaction_t **>::emplace_back<di_async_sub_transaction_t **&>(void *result, void *a2)
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

      std::allocator<di_async_sub_transaction_t **>::allocate_at_least[abi:ne200100](result, v11);
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

const void **std::__split_buffer<di_async_sub_transaction_t **>::emplace_front<di_async_sub_transaction_t **>(const void **result, void *a2)
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

      std::allocator<di_async_sub_transaction_t **>::allocate_at_least[abi:ne200100](result, v9);
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

void *std::__split_buffer<di_async_sub_transaction_t **>::emplace_back<di_async_sub_transaction_t **>(void *result, void *a2)
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

      std::allocator<di_async_sub_transaction_t **>::allocate_at_least[abi:ne200100](result[4], v11);
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

const void **std::__split_buffer<di_async_sub_transaction_t **>::emplace_front<di_async_sub_transaction_t **&>(const void **result, void *a2)
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

      std::allocator<di_async_sub_transaction_t **>::allocate_at_least[abi:ne200100](result[4], v9);
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

void std::allocator<di_async_sub_transaction_t **>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t di_log::logger_buf<di_log::log_printer<610ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BD7B60;
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

void sub_248E40678(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

BOOL hasTTY()
{
  v0 = open("/dev/tty", 2);
  v1 = v0;
  if (v0 != -1)
  {
    close(v0);
  }

  return v1 != -1;
}

uint64_t crypto::context::aes_iv::get_digest_info(crypto::context::aes_iv *this)
{
  if (atomic_load_explicit(&crypto::context::aes_iv::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&crypto::context::aes_iv::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<crypto::context::aes_iv::get_digest_info(void)::$_0 &&>>);
  }

  return crypto::context::aes_iv::digest_info;
}

void crypto::context::aes_cbc::create_crypt_ctx(int a1)
{
  crypto::context::aes_mode<ccmode_cbc>::ccmode_encrypt = ccaes_cbc_encrypt_mode();
  v2 = ccaes_cbc_decrypt_mode();
  crypto::context::aes_mode<ccmode_cbc>::ccmode_decrypt = v2;
  v3 = crypto::context::aes_mode<ccmode_cbc>::ccmode_encrypt;
  if (a1)
  {
    v3 = v2;
  }

  *v3;
  operator new[]();
}

void crypto::context::aes_cbc::aes_cbc(uint64_t a1, int a2, uint64_t *a3, const crypto::context::aes_iv *a4, uint64_t a5)
{
  *a1 = &unk_285BD3848;
  *(a1 + 12) = a2;
  v8 = *a3;
  v9 = a3[1];
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  std::vector<std::byte>::__init_with_size[abi:ne200100]<std::__wrap_iter<std::byte const*>,std::__wrap_iter<std::byte const*>>(a1 + 16, v8, v8 + v9, v9);
  *(a1 + 40) = a5;
  *a1 = &unk_285BD82D0;
  crypto::context::aes_iv::aes_iv((a1 + 48), a4);
}

void sub_248E41EE0(_Unwind_Exception *a1)
{
  std::unique_ptr<cccbc_ctx [],crypto::context::aes::cc_mode_deleter<cccbc_ctx,ccmode_cbc>>::reset[abi:ne200100](v3);
  v5 = v1[6];
  v1[6] = 0;
  if (v5)
  {
    MEMORY[0x24C1ED710](v5, 0x1000C8015230203);
  }

  *v1 = v2;
  v6 = v1[2];
  if (v6)
  {
    v1[3] = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

void crypto::context::aes_cbc::aes_cbc(crypto::context::aes_cbc *this, const crypto::context::aes_cbc *a2)
{
  v4 = *(a2 + 3);
  v5 = *(a2 + 5);
  *this = &unk_285BD3848;
  *(this + 3) = v4;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  std::vector<std::byte>::__init_with_size[abi:ne200100]<std::byte*,std::byte*>(this + 16, *(a2 + 2), *(a2 + 3), *(a2 + 3) - *(a2 + 2));
  *(this + 5) = v5;
  *this = &unk_285BD82D0;
  crypto::context::aes_iv::aes_iv((this + 48), (a2 + 48));
}

void sub_248E42034(_Unwind_Exception *a1)
{
  v4 = v3;
  std::unique_ptr<cccbc_ctx [],crypto::context::aes::cc_mode_deleter<cccbc_ctx,ccmode_cbc>>::reset[abi:ne200100](v4);
  v6 = v1[6];
  v1[6] = 0;
  if (v6)
  {
    MEMORY[0x24C1ED710](v6, 0x1000C8015230203);
  }

  *v1 = v2;
  v7 = v1[2];
  if (v7)
  {
    v1[3] = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

crypto *crypto::context::aes_cbc::crypt(crypto::context::aes_cbc *this, int a2, char *a3, char *a4, uint64_t a5)
{
  v32 = *MEMORY[0x277D85DE8];
  v10 = *(this + 3);
  crypto::context::aes_mode<ccmode_cbc>::ccmode_encrypt = ccaes_cbc_encrypt_mode();
  v11 = ccaes_cbc_decrypt_mode();
  crypto::context::aes_mode<ccmode_cbc>::ccmode_decrypt = v11;
  v12 = crypto::context::aes_mode<ccmode_cbc>::ccmode_encrypt;
  if (v10)
  {
    v12 = v11;
  }

  v13 = *(v12 + 8);
  for (i = MEMORY[0x28223BE20](v11); a5; --a5)
  {
    v15 = *(this + 6);
    v26 = v15[2];
    v27 = v15[3];
    v24 = *v15;
    v25 = v15[1];
    v31 = *(v15 + 14);
    v29 = v15[5];
    v30 = v15[6];
    v28 = v15[4];
    crypto::context::aes_iv::get_digest_info(i);
    v16 = cchmac_update();
    crypto::context::aes_iv::get_digest_info(v16);
    cchmac_final();
    v17 = *(this + 3);
    crypto::context::aes_mode<ccmode_cbc>::ccmode_encrypt = ccaes_cbc_encrypt_mode();
    crypto::context::aes_mode<ccmode_cbc>::ccmode_decrypt = ccaes_cbc_decrypt_mode();
    cccbc_set_iv();
    v18 = *(this + 3);
    crypto::context::aes_mode<ccmode_cbc>::ccmode_encrypt = ccaes_cbc_encrypt_mode();
    crypto::context::aes_mode<ccmode_cbc>::ccmode_decrypt = ccaes_cbc_decrypt_mode();
    v19 = *(this + 7);
    v20 = *(this + 5);
    i = cccbc_update();
    v21 = *(this + 5);
    a3 += v21;
    a4 += v21;
    ++a2;
  }

  v22 = *MEMORY[0x277D85DE8];
  return 0;
}

void crypto::context::aes_xts::create_crypt_ctx(int a1)
{
  crypto::context::aes_mode<ccmode_xts>::ccmode_encrypt = ccaes_xts_encrypt_mode();
  v2 = ccaes_xts_decrypt_mode();
  crypto::context::aes_mode<ccmode_xts>::ccmode_decrypt = v2;
  v3 = crypto::context::aes_mode<ccmode_xts>::ccmode_encrypt;
  if (a1)
  {
    v3 = v2;
  }

  *v3;
  operator new[]();
}

void crypto::context::aes_xts::aes_xts(uint64_t a1, int a2, uint64_t *a3, _OWORD *a4, uint64_t a5)
{
  *a1 = &unk_285BD3848;
  *(a1 + 12) = a2;
  v9 = *a3;
  v10 = a3[1];
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  std::vector<std::byte>::__init_with_size[abi:ne200100]<std::__wrap_iter<std::byte const*>,std::__wrap_iter<std::byte const*>>(a1 + 16, v9, v9 + v10, v10);
  *(a1 + 40) = a5;
  *a1 = &unk_285BD82F8;
  *(a1 + 48) = 0;
  *(a1 + 64) = *a4;
  crypto::context::aes_xts::create_crypt_ctx(a2);
}

void sub_248E42498(_Unwind_Exception *a1)
{
  std::unique_ptr<ccxts_ctx [],crypto::context::aes::cc_mode_deleter<ccxts_ctx,ccmode_xts>>::reset[abi:ne200100](v3);
  *v1 = v2;
  v5 = v1[2];
  if (v5)
  {
    v1[3] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void crypto::context::aes_xts::aes_xts(crypto::context::aes_xts *this, const crypto::context::aes_xts *a2)
{
  v4 = *(a2 + 3);
  v5 = *(a2 + 5);
  *this = &unk_285BD3848;
  *(this + 3) = v4;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  v6 = (this + 16);
  std::vector<std::byte>::__init_with_size[abi:ne200100]<std::byte*,std::byte*>(this + 16, *(a2 + 2), *(a2 + 3), *(a2 + 3) - *(a2 + 2));
  *(this + 5) = v5;
  *this = &unk_285BD82F8;
  *(this + 6) = 0;
  *(this + 4) = *(a2 + 4);
  v7 = *(this + 3) - *v6;
  crypto::context::aes_xts::create_crypt_ctx(*(this + 3));
}

void sub_248E425D4(_Unwind_Exception *a1)
{
  std::unique_ptr<ccxts_ctx [],crypto::context::aes::cc_mode_deleter<ccxts_ctx,ccmode_xts>>::reset[abi:ne200100](v3);
  *v1 = v2;
  v5 = v1[2];
  if (v5)
  {
    v1[3] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t crypto::context::aes_kdf2_keys::aes_kdf2_keys(uint64_t a1, uint64_t a2)
{
  ccaes_cbc_encrypt_mode();
  crypto::ans_kdf2_generate(*a2, *(a2 + 8), &crypto::context::aes_kdf2_keys::tweak_fixed_data, 0xF, a1 + 32, 0x20uLL);
  crypto::ans_kdf2_generate(*a2, *(a2 + 8), &crypto::context::aes_kdf2_keys::data_fixed_data, 0xF, a1, 0x20uLL);
  return a1;
}

uint64_t crypto::ans_kdf2_generate(crypto *this, const byte *a2, unint64_t a3, const unsigned __int8 *a4, uint64_t a5, unint64_t a6)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v8 = ccaes_cbc_encrypt_mode();
  v9 = (v8[1] + *v8 + 159) / 0x50uLL;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v20[-2 * v11];
  MEMORY[0x28223BE20](v10);
  v14 = &v20[-2 * v13];
  cccmac_init();
  v20[0] = 1;
  if (a6 >= 0x10)
  {
    do
    {
      memcpy(v14, v12, 80 * v9);
      cccmac_update();
      cccmac_update();
      v15 = *(v14[8] + 8);
      cccmac_final_generate();
      ++v20[0];
      a5 += 16;
    }

    while (v20[0] <= a6 >> 4);
  }

  v16 = v8[1] + *v8;
  cc_clear();
  v17 = v8[1] + *v8;
  result = cc_clear();
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void crypto::context::aes_xts_ans_kdf2::aes_xts_ans_kdf2(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = crypto::context::aes_kdf2_keys::aes_kdf2_keys((a1 + 10), a3);
  *a1 = &unk_285BD8320;
  v9[0] = v7;
  v9[1] = 32;
  *&v8 = a1 + 14;
  *(&v8 + 1) = 32;
  crypto::context::aes_xts::aes_xts(a1, a2, v9, &v8, a4);
}

void crypto::context::aes_xts_ans_kdf2::aes_xts_ans_kdf2(uint64_t a1, uint64_t a2)
{
  v7[7] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 112);
  v2 = *(a2 + 128);
  v4 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v4;
  *(a1 + 112) = v3;
  *(a1 + 128) = v2;
  *a1 = &unk_285BD8320;
  v5 = *(a2 + 12);
  v7[0] = a1 + 80;
  v7[1] = 32;
  *&v6 = a1 + 112;
  *(&v6 + 1) = 32;
  crypto::context::aes_xts::aes_xts(a1, v5, v7, &v6, *(a2 + 40));
}

void crypto::context::aes_xts_ans_kdf2::~aes_xts_ans_kdf2(crypto::context::aes_xts_ans_kdf2 *this)
{
  *this = &unk_285BD8320;
  memset_s(this + 80, 0x20uLL, 0, 0x20uLL);
  memset_s(this + 112, 0x20uLL, 0, 0x20uLL);
  *this = &unk_285BD82F8;
  std::unique_ptr<ccxts_ctx [],crypto::context::aes::cc_mode_deleter<ccxts_ctx,ccmode_xts>>::reset[abi:ne200100](this + 12);
  *this = &unk_285BD3848;
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }
}

{
  crypto::context::aes_xts_ans_kdf2::~aes_xts_ans_kdf2(this);

  JUMPOUT(0x24C1ED730);
}

crypto *crypto::context::aes_xts::crypt(crypto::context::aes_xts *this, uint64_t a2, char *a3, char *a4, uint64_t a5)
{
  v26 = *MEMORY[0x277D85DE8];
  v10 = *(this + 3);
  crypto::context::aes_mode<ccmode_xts>::ccmode_encrypt = ccaes_xts_encrypt_mode();
  v11 = ccaes_xts_decrypt_mode();
  crypto::context::aes_mode<ccmode_xts>::ccmode_decrypt = v11;
  v12 = crypto::context::aes_mode<ccmode_xts>::ccmode_encrypt;
  if (v10)
  {
    v12 = v11;
  }

  v13 = *(v12 + 16);
  v14 = *(this + 3);
  crypto::context::aes_mode<ccmode_xts>::ccmode_encrypt = ccaes_xts_encrypt_mode();
  v15 = ccaes_xts_decrypt_mode();
  crypto::context::aes_mode<ccmode_xts>::ccmode_decrypt = v15;
  v16 = crypto::context::aes_mode<ccmode_xts>::ccmode_encrypt;
  if (v14)
  {
    v16 = v15;
  }

  v17 = (*(v16 + 8) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15);
  for (; a5; --a5)
  {
    v18 = *(this + 3);
    crypto::context::aes_mode<ccmode_xts>::ccmode_encrypt = ccaes_xts_encrypt_mode();
    crypto::context::aes_mode<ccmode_xts>::ccmode_decrypt = ccaes_xts_decrypt_mode();
    v19 = *(this + 6);
    ccxts_set_tweak();
    v20 = *(this + 3);
    crypto::context::aes_mode<ccmode_xts>::ccmode_encrypt = ccaes_xts_encrypt_mode();
    crypto::context::aes_mode<ccmode_xts>::ccmode_decrypt = ccaes_xts_decrypt_mode();
    v22 = *(this + 5);
    v21 = *(this + 6);
    ccxts_update();
    v23 = *(this + 5);
    a3 += v23;
    a4 += v23;
    ++a2;
  }

  v24 = *MEMORY[0x277D85DE8];
  return 0;
}

void crypto::context::aes_iv::aes_iv(crypto::context::aes_iv *a1)
{
  *a1 = 0;
  digest_info = crypto::context::aes_iv::get_digest_info(a1);
  v2 = *(digest_info + 1);
  v3 = crypto::context::aes_iv::get_digest_info(digest_info);
  v4 = *(v3 + 2);
  v5 = 8 * (*(crypto::context::aes_iv::get_digest_info(v3) + 8) + ((v2 + v4 + 19) & 0xFFFFFFFFFFFFFFF8) + 1);
  operator new[]();
}

void sub_248E42C94(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    MEMORY[0x24C1ED710](v3, 0x1000C8015230203);
  }

  _Unwind_Resume(exception_object);
}

void crypto::context::aes_iv::aes_iv(crypto::context::aes_iv *this, const crypto::context::aes_iv *a2)
{
  *this = 0;
  digest_info = crypto::context::aes_iv::get_digest_info(this);
  v3 = *(digest_info + 1);
  v4 = crypto::context::aes_iv::get_digest_info(digest_info);
  v5 = *(v4 + 2);
  v6 = 8 * (*(crypto::context::aes_iv::get_digest_info(v4) + 8) + ((v3 + v5 + 19) & 0xFFFFFFFFFFFFFFF8) + 1);
  operator new[]();
}

void sub_248E42DC8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    MEMORY[0x24C1ED710](v3, 0x1000C8015230203);
  }

  _Unwind_Resume(exception_object);
}

uint64_t crypto::context::get_cryptos_base(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (v1 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v4 = &v3;
  return (off_285BD84F8[v1])(&v4, a1);
}

uint64_t crypto::crypt_op::crypt_vec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v8 = *(a3 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = (*a3 + 8);
    do
    {
      v11 = *v10;
      v10 += 2;
      v9 += v11;
      --v8;
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v12 = atomic_fetch_add_explicit(&crypto::active_ios, 1uLL, memory_order_relaxed) + 1;
  if (atomic_load_explicit(&crypto::get_nr_ctxs(void)::once, memory_order_acquire) != -1)
  {
    v19[0] = &v17;
    v19[1] = &crypto::get_nr_ctxs(void)::nr_ctxs;
    v18 = v19;
    std::__call_once(&crypto::get_nr_ctxs(void)::once, &v18, std::__call_once_proxy[abi:ne200100]<std::tuple<crypto::get_nr_ctxs(void)::$_0 &&,unsigned long &>>);
  }

  if (v9 >> 17 >= crypto::get_nr_ctxs(void)::nr_ctxs / v12)
  {
    v13 = crypto::get_nr_ctxs(void)::nr_ctxs / v12;
  }

  else
  {
    v13 = v9 >> 17;
  }

  if (v13 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13;
  }

  if (v9 <= 0x20000 || qos_class_self() < QOS_CLASS_DEFAULT || v13 <= 1)
  {
    cryptos_base = crypto::context::get_cryptos_base(a1);
    result = crypto::crypt_op::crypt_vec_single_thread(cryptos_base, a2, a3, a4, *(a1 + 152));
  }

  else
  {
    result = crypto::crypt_op::crypt_vec_multi_thread(a1, v14, a2, a3, a4, v9);
  }

  atomic_fetch_add_explicit(&crypto::active_ios, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
  return result;
}

uint64_t crypto::crypt_op::crypt_vec_single_thread(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t **a4, uint64_t a5)
{
  if (!a3[2])
  {
    return 0;
  }

  v10 = *a3;
  v11 = *a4;
  v12 = **a4;
  v13 = **a3;
  do
  {
    if (v11 == &(*a4)[2 * a4[2]])
    {
      break;
    }

    result = (*(*a1 + 16))(a1, a2, v13, v12, 1);
    if (result)
    {
      return result;
    }

    v13 += a5;
    if (v13 == *v10 + v10[1])
    {
      v10 += 2;
      if (v10 != &(*a3)[2 * a3[2]])
      {
        v13 = *v10;
      }
    }

    v12 += a5;
    if (v12 == *v11 + v11[1])
    {
      v11 += 2;
      if (v11 != &(*a4)[2 * a4[2]])
      {
        v12 = *v11;
      }
    }

    ++a2;
  }

  while (v10 != &(*a3)[2 * a3[2]]);
  return 0;
}

uint64_t crypto::crypt_op::crypt_vec_multi_thread(uint64_t a1, size_t iterations, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v9 = 0;
  v6 = *(a1 + 152);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 0x40000000;
  v8[2] = ___ZN6crypto8crypt_op22crypt_vec_multi_threadEmyRK19fixed_size_vector_tI5iovecES5_m_block_invoke;
  v8[3] = &__block_descriptor_tmp_1;
  v8[4] = a1;
  v8[5] = a4;
  v8[6] = (a6 / iterations + v6 - 1) / v6 * v6;
  v8[7] = a6;
  v8[8] = a5;
  v8[9] = a3;
  v8[10] = &v9;
  dispatch_apply(iterations, 0, v8);
  return v9;
}

void ___ZN6crypto8crypt_op22crypt_vec_multi_threadEmyRK19fixed_size_vector_tI5iovecES5_m_block_invoke(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = a1[4];
  v2 = a1[6];
  v3 = a1[7];
  crypto::extract_iovec(a1[5]);
}

void sub_248E432A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a9)
  {
    MEMORY[0x24C1ED710](a9 - 16, v15);
  }

  if (a12)
  {
    MEMORY[0x24C1ED710](a12 - 16, v15);
  }

  _Unwind_Resume(exception_object);
}

crypto *crypto::crypt_op::crypt(crypto::crypt_op *this, crypto::context::aes *a2, char *a3, unint64_t a4)
{
  if (a3 >= 0x21 && qos_class_self() > 0x14)
  {
    v13 = 0;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 0x40000000;
    v12[2] = ___ZN6crypto8crypt_op5cryptEPcmy_block_invoke;
    v12[3] = &__block_descriptor_tmp_3_0;
    v12[4] = this;
    v12[5] = a3;
    v12[6] = a2;
    v12[7] = a4;
    v12[8] = &v13;
    dispatch_apply((a3 + 31) >> 5, 0, v12);
    return atomic_load(&v13);
  }

  else
  {
    cryptos_base = crypto::context::get_cryptos_base(this);
    v10 = *(this + 19);

    return crypto::crypt_op::crypt_chunk(cryptos_base, a2, a3, a4, v10, 0, v9);
  }
}

uint64_t crypto::crypt_op::crypt_chunk(crypto::crypt_op *this, crypto::context::aes *a2, char *a3, unint64_t a4, unint64_t a5, crypto::context::aes *a6, char *a7)
{
  if (!a3)
  {
    return 0;
  }

  v10 = a3;
  while (1)
  {
    v13 = a6 ? a6 : a2;
    v14 = (*(*this + 16))(this, a4 / a5, a2, v13, 1, a6, a7);
    if (v14)
    {
      break;
    }

    a4 += a5;
    a2 = (a2 + a5);
    if (!--v10)
    {
      return 0;
    }
  }

  v16 = v14;
  *&v17 = "int crypto::crypt_op::crypt_chunk(crypto::context::aes &, char *, size_t, uint64_t, size_t, char *)";
  *(&v17 + 1) = 33;
  v18 = 16;
  di_log::logger<di_log::log_printer<419ul>>::logger(v19, &v17);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "Crypto operation on data of ", 28);
  MEMORY[0x24C1ED3E0](&v20, a4 / a5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, " failed with ", 13);
  MEMORY[0x24C1ED390](&v20, v16);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<419ul>>::~logger_buf(v19);
  MEMORY[0x24C1ED6A0](&v21);
  if (v16 < 0)
  {
    return v16;
  }

  else
  {
    return -v16;
  }
}

void sub_248E43664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<419ul>>::~logger(va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN6crypto8crypt_op5cryptEPcmy_block_invoke(uint64_t a1, uint64_t a2)
{
  v15[19] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<crypto::context::aes_cbc,crypto::context::aes_xts,crypto::context::aes_xts_ans_kdf2>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v15, v4);
  v6 = *(v4 + 152);
  v8 = *(a1 + 48);
  v7 = *(a1 + 56);
  cryptos_base = crypto::context::get_cryptos_base(v15);
  if ((v5 - 32 * a2) >= 0x20)
  {
    v11 = 32;
  }

  else
  {
    v11 = v5 - 32 * a2;
  }

  v12 = crypto::crypt_op::crypt_chunk(cryptos_base, (v8 + v6 * 32 * a2), v11, v7 + v6 * 32 * a2, *(v4 + 152), 0, v10);
  if (v12)
  {
    atomic_store(v12, *(a1 + 64));
  }

  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::context::aes_cbc,crypto::context::aes_xts,crypto::context::aes_xts_ans_kdf2>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v15);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void *di_log::logger<di_log::log_printer<419ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<419ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BD8528;
  a1[45] = &unk_285BD8628;
  a1[46] = &unk_285BD8650;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BD8528;
  a1[45] = &unk_285BD85B0;
  a1[46] = &unk_285BD85D8;
  return a1;
}

void sub_248E4386C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<419ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<419ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<419ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t crypto::crypt_op::backend_futures_prepare_and_run(void *a1, uint64_t a2, void (*a3)(void *__return_ptr, void *, uint64_t), uint64_t a4, ref::details **a5)
{
  v7 = a1[2];
  if (v7)
  {
    v8 = a4;
    v10 = *a1;
    v11 = (a2 + (a4 >> 1));
    v12 = a3;
    v13 = 112 * v7;
    while (1)
    {
      if (v8)
      {
        (*(*v11 + v12))(v37, v11, v10);
      }

      else
      {
        a3(v37, v11, v10);
      }

      v14 = *a5 + 24 * a5[2];
      *v14 = 0;
      *(v14 + 4) = 0;
      *(v14 + 8) = 0;
      if (BYTE4(v37[0]) == 1)
      {
        *v14 = v37[0];
        *(v14 + 4) = 1;
      }

      *(v14 + 16) = v38;
      v38 = 0;
      v15 = *(v14 + 16);
      if (v15)
      {
        *v15 = v14;
      }

      v16 = a5[2] + 1;
      a5[2] = v16;
      v17 = *a5 + 24 * v16;
      if ((*(v17 - 20) & 1) == 0 && !*(v17 - 8))
      {
        break;
      }

      v10 += 112;
      v13 -= 112;
      if (!v13)
      {
        goto LABEL_13;
      }
    }

    *&v35 = "ssize_t crypto::crypt_op::backend_futures_prepare_and_run(const fixed_size_vector_t<sg_entry> &, Backend &, Backend::future_t (Backend::*)(const sg_entry &), fixed_size_vector_t<Backend::future_t> &)";
    *(&v35 + 1) = 138;
    v36 = 16;
    di_log::logger<di_log::log_printer<445ul>>::logger(v37, &v35);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, "diskimagesuio: future read invalid in read", 42);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<445ul>>::~logger_buf(v37);
    MEMORY[0x24C1ED6A0](&v40);
    a5[2] = (a5[2] - 1);
    return -5;
  }

  else
  {
LABEL_13:
    (*(*a2 + 152))(a2);
    v19 = a1[2];
    v20 = a5[2];
    v21 = v19 == 0;
    v22 = v20 == 0;
    v23 = 0;
    if (v19)
    {
      v24 = v20 == 0;
    }

    else
    {
      v24 = 1;
    }

    if (v24)
    {
LABEL_18:
      if (v21 && v22)
      {
        return v23;
      }

      else
      {
        return -5;
      }
    }

    else
    {
      v26 = *a5;
      v27 = 24 * v20 - 24;
      v28 = 112 * v19 - 112;
      v29 = (*a1 + 16);
      while (1)
      {
        v30 = lw_future<int>::get(v26, v18);
        v31 = v30;
        v32 = *v29;
        v29 += 14;
        if (v32 != v30)
        {
          break;
        }

        v23 += v30;
        v21 = v28 == 0;
        v22 = v27 == 0;
        if (v28)
        {
          v26 = (v26 + 24);
          v33 = v27;
          v27 -= 24;
          v28 -= 112;
          if (v33)
          {
            continue;
          }
        }

        goto LABEL_18;
      }

      if (v30 >= 0)
      {
        return -5;
      }

      return v31;
    }
  }
}

void sub_248E43B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  di_log::logger<di_log::log_printer<445ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<445ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<445ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BD8748;
  a1[45] = &unk_285BD8848;
  a1[46] = &unk_285BD8870;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BD8748;
  a1[45] = &unk_285BD87D0;
  a1[46] = &unk_285BD87F8;
  return a1;
}

void sub_248E43C80(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<445ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<445ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<445ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void crypto::crypt_op::crypt_consecutive_vector_base::do_crypt_vector_ops(uint64_t a1, uint64_t a2)
{
  v2 = (3 * *(a2 + 16)) >> 60 != 0;
  if ((48 * *(a2 + 16)) >= 0xFFFFFFFFFFFFFFF0)
  {
    v2 = 1;
  }

  if (!v2)
  {
    v3 = 48 * *(a2 + 16) + 16;
  }

  operator new[]();
}

void sub_248E43E98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a9)
  {
    MEMORY[0x24C1ED710](a9 - 16, v14);
  }

  if (a12)
  {
    MEMORY[0x24C1ED710](a12 - 16, v14);
  }

  _Unwind_Resume(exception_object);
}

void crypto::crypt_op::crypt_consecutive_vector::reset(crypto::crypt_op::crypt_consecutive_vector *this, const void *a2)
{
  fixed_size_vector_t<crypto::crypt_op::crypt_consecutive_vector_base::micro_copy_op>::destruct_all(this + 25, a2);
  fixed_size_vector_t<crypto::crypt_op::crypt_consecutive_vector_base::micro_crypt_op>::destruct_all(this + 22, v3);
  if (*(this + 21))
  {
    *(this + 21) = 0;
  }

  fixed_size_vector_t<sg_entry>::destruct_all(this + 16);
}

uint64_t crypto::crypt_op::crypt_consecutive_vector::operator()(uint64_t a1)
{
  if (*(a1 + 80))
  {
    crypto::crypt_op::crypt_consecutive_vector_base::do_crypt_vector_ops(*(a1 + 64), a1 + 176);
  }

  v2 = crypto::crypt_op::backend_futures_prepare_and_run((a1 + 128), *(a1 + 72), Backend::future_read, 0, (a1 + 104));
  if ((v2 & 0x8000000000000000) == 0)
  {
    crypto::crypt_op::crypt_consecutive_vector_base::do_crypt_vector_ops(*(a1 + 64), a1 + 176);
  }

  v3 = v2;
  *&v5 = "crypto::crypt_op::crypt_consecutive_vector::operator()()";
  *(&v5 + 1) = 54;
  v6 = 16;
  di_log::logger<di_log::log_printer<496ul>>::logger(v7, &v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "crypt_consecutive_vector: check errors_in read futures ", 55);
  MEMORY[0x24C1ED3B0](&v8, v3);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<496ul>>::~logger_buf(v7);
  MEMORY[0x24C1ED6A0](&v9);
  return v3;
}

void sub_248E4414C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<516ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<496ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<496ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BD8968;
  a1[45] = &unk_285BD8A68;
  a1[46] = &unk_285BD8A90;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BD8968;
  a1[45] = &unk_285BD89F0;
  a1[46] = &unk_285BD8A18;
  return a1;
}

void sub_248E44298(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<496ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<496ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<496ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<516ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<516ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BD8B88;
  a1[45] = &unk_285BD8C88;
  a1[46] = &unk_285BD8CB0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BD8B88;
  a1[45] = &unk_285BD8C10;
  a1[46] = &unk_285BD8C38;
  return a1;
}

void sub_248E44428(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<516ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<516ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<516ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

crypto::details::sg_allocator *crypto::details::sg_allocator::sg_allocator(crypto::details::sg_allocator *this, size_t size, uint64_t a3)
{
  v11[4] = *MEMORY[0x277D85DE8];
  if (size)
  {
    v6 = malloc_type_valloc(size, 0x8B7C732DuLL);
    if (!v6)
    {
      exception = __cxa_allocate_exception(8uLL);
      v8 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v8, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
    }
  }

  else
  {
    v6 = 0;
  }

  v11[0] = &unk_285BD8DA0;
  v11[3] = v11;
  *this = v6;
  std::__function::__value_func<void ()(char *)>::__value_func[abi:ne200100](this + 8, v11);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v11);
  *(this + 5) = size;
  *(this + 6) = a3;
  *(this + 7) = *this;
  v9 = *MEMORY[0x277D85DE8];
  return this;
}

uint64_t crypto::details::sg_allocator::allocate@<X0>(crypto::details::sg_allocator *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v3 = *(this + 7);
  *(this + 7) = v3 + (a2 + *(this + 6) - 1) / *(this + 6) * *(this + 6);
  v6[0] = &unk_285BD8E80;
  v6[3] = v6;
  *a3 = v3;
  std::__function::__value_func<void ()(char *)>::__value_func[abi:ne200100]((a3 + 1), v6);
  result = std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void *crypto::details::buffer_aligner::buffer_aligner(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = std::__function::__value_func<BOOL ()(sg_entry const&)>::__value_func[abi:ne200100](a1, a6);
  std::__function::__value_func<crypto::details::buffer_aligner::inout_t ()(char *,char *,unsigned long)>::__value_func[abi:ne200100](v16 + 32, a7);
  a1[8] = a2;
  a1[9] = a3;
  a1[10] = a4;
  a1[11] = a5;
  a1[12] = a8;
  a1[13] = a9;
  return a1;
}

{
  return crypto::details::buffer_aligner::buffer_aligner(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

unint64_t crypto::details::buffer_aligner::try_append_to_last_sg(void *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1[9];
  v4 = v3[2];
  if (!v4)
  {
    return 0;
  }

  v6 = a1[3];
  if (!v6)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if ((*(*v6 + 48))(v6, *v3 + 112 * v4 - 112))
  {
    return 0;
  }

  v9 = *a1[9] + 112 * *(a1[9] + 16);
  v10 = *(v9 - 96);
  v11 = *(v9 - 80);
  v12 = v11 - v10;
  if (v11 <= v10)
  {
    return 0;
  }

  v13 = a2[2];
  v14 = a1[12];
  if ((v10 + v13 + v14 - 1) / v14 * v14 > v11)
  {
    if (v12 >= v13)
    {
      v12 = a2[2];
    }

    v13 = (v12 + v10) / v14 * v14 - v10;
  }

  sg_entry::sg_entry<sg_entry&,void>(v33, v9 - 112, v10 + v13, 0, *(v9 - 88), v11);
  sg_entry::operator=(*a1[9] + 112 * *(a1[9] + 16) - 112, v33);
  if (*(&v33[0] + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v33[0] + 1));
  }

  v16 = a1[10];
  v17 = v16[2];
  v18 = *v16;
  v19 = *v16 + 56 * v17;
  if (*(v19 - 8))
  {
    v20 = *(v19 - 24);
    v21 = *(v19 - 40) + v20;
    v22 = *(v19 - 16) + v20;
    v23 = (a2[3] + v13 + a1[12] + ~v22) / a1[12] * a1[12];
    if (a3)
    {
      atomic_fetch_add_explicit((a3 + 16), 1uLL, memory_order_relaxed);
      v17 = v16[2];
      v18 = *v16;
    }

    v24 = v18 + 56 * v17;
    *v24 = a3;
    *&v33[0] = 0;
    *(v24 + 8) = 1;
    *(v24 + 16) = v21;
    *(v24 + 24) = v21;
    *(v24 + 32) = v23;
    *(v24 + 40) = v22;
    *(v24 + 48) = 0;
    v16[2] = v17 + 1;
    lw_future_managed_setter<int,0>::handle::~handle(v33, v15);
    v25 = a2[3];
  }

  else
  {
    v25 = a2[3];
    *(v19 - 24) = (v25 + v13 + a1[12] + ~*(v19 - 16)) / a1[12] * a1[12];
  }

  v27 = *a1[9] + 112 * *(a1[9] + 16);
  v28 = std::function<crypto::details::buffer_aligner::inout_t ()(char *,char *,unsigned long)>::operator()((a1 + 4), *(v27 - 112) + a1[13] + v25 - *(v27 - 88), *a2, v13);
  if (v28 && v29)
  {
    v30 = a1[11];
    if (a3)
    {
      atomic_fetch_add_explicit((a3 + 16), 1uLL, memory_order_relaxed);
    }

    v31 = v30[2];
    v32 = *v30 + 40 * v31;
    *v32 = a3;
    *&v33[0] = 0;
    *(v32 + 8) = 1;
    *(v32 + 16) = v28;
    *(v32 + 24) = v29;
    *(v32 + 32) = v13;
    v30[2] = v31 + 1;
    lw_future_managed_setter<int,0>::handle::~handle(v33, v29);
  }

  return v13;
}

void sub_248E44950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}