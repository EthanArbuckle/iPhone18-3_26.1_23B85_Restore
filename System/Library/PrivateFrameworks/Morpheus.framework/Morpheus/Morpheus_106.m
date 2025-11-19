uint64_t mlx_custom_vjp(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_closure");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](v10, a2);
  if (!a3)
  {
    v8 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v8, "expected a non-empty mlx_closure_custom");
    __cxa_throw(v8, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](v9, a3);
  mlx::core::custom_vjp(v10, v9, v11);
  if (!*a1)
  {
    operator new();
  }

  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::operator=[abi:ne200100](*a1, v11);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v11);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v9);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v10);
  result = 0;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlx_eval(uint64_t *a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  memset(v3, 0, sizeof(v3));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(v3, *a1, a1[1], (a1[1] - *a1) >> 4);
  mlx::core::eval(v3);
  v4 = v3;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v4);
  return 0;
}

void mlx_jvp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t ***a4, uint64_t *a5)
{
  if (a3)
  {
    if (a4)
    {
      if (a5)
      {
        mlx::core::jvp(a3, a4, a5);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_closure");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_value_and_grad(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a3, a3 + 4 * a4, a4);
    mlx::core::value_and_grad(a2, __p, v7);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_closure");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_vjp(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if (a3)
  {
    if (a4)
    {
      if (a5)
      {
        mlx::core::vjp(a3, a4, a5);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_closure");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::operator=[abi:ne200100](a1);
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

uint64_t std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::operator=[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>> ()(std::vector<mlx::core::array> const&)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>> ()(std::vector<mlx::core::array> const&)>::operator=[abi:ne200100](a1);
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

uint64_t std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>> ()(std::vector<mlx::core::array> const&)>::operator=[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t mlx_stream_tostring(std::string **a1, unsigned int *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::operator<<(&v10, a2);
  if ((v17 & 0x10) != 0)
  {
    v5 = v16;
    if (v16 < v13)
    {
      v16 = v13;
      v5 = v13;
    }

    locale = v12[4].__locale_;
  }

  else
  {
    if ((v17 & 8) == 0)
    {
      v4 = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_15;
    }

    locale = v12[1].__locale_;
    v5 = v12[3].__locale_;
  }

  v4 = v5 - locale;
  if ((v5 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  *(&__p.__r_.__value_.__s + 23) = v5 - locale;
  if (v4)
  {
    memmove(&__p, locale, v4);
  }

LABEL_15:
  __p.__r_.__value_.__s.__data_[v4] = 0;
  if (!*a1)
  {
    operator new();
  }

  std::string::operator=(*a1, &__p);
  if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v10 = *MEMORY[0x277D82828];
  *(&v10 + *(v10 - 24)) = *(MEMORY[0x277D82828] + 24);
  v11 = MEMORY[0x277D82878] + 16;
  if (v15 < 0)
  {
    operator delete(v14);
  }

  v11 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v12);
  std::ostream::~ostream();
  MEMORY[0x25F8516C0](&v18);
  return 0;
}

void mlx_stream_new_device(mlx::core::metal **a1)
{
  if (a1)
  {
    mlx::core::new_stream(*a1);
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_device");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t mlx_stream_set(uint64_t *a1, uint64_t *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = *a1;
  if (!*a1)
  {
    operator new();
  }

  result = 0;
  v4 = *a2;
  *(v2 + 8) = *(a2 + 2);
  *v2 = v4;
  return result;
}

uint64_t mlx_stream_free(uint64_t a1)
{
  if (a1)
  {
    MEMORY[0x25F851760](a1, 0x1000C403E1C8BA9);
  }

  return 0;
}

BOOL mlx_stream_equal(_DWORD *a1, _DWORD *a2)
{
  if (!a1 || !a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return *a1 == *a2;
}

uint64_t mlx_stream_get_device(void **a1, uint64_t a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = *a1;
  if (!*a1)
  {
    operator new();
  }

  result = 0;
  *v2 = *(a2 + 4);
  return result;
}

uint64_t mlx_stream_get_index(_DWORD *a1, _DWORD *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  result = 0;
  *a1 = *a2;
  return result;
}

void mlx_synchronize(uint64_t a1)
{
  if (a1)
  {
    mlx::core::synchronize(*a1, *(a1 + 8));
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t mlx_get_default_stream(uint64_t *a1, mlx::core::metal **a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_device");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v4 = mlx::core::default_stream(*a2);
  v5 = *a1;
  if (!*a1)
  {
    operator new();
  }

  result = 0;
  *v5 = v4;
  *(v5 + 8) = v3;
  return result;
}

uint64_t mlx_set_default_stream(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::set_default_stream(*a1, *(a1 + 8));
  return 0;
}

void mlx_set_error_handler(void (*a1)(const char *, void *), uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    std::shared_ptr<void>::shared_ptr[abi:ne200100]<void,void (*)(void *),0>(&v6, a2);
  }

  get_error_handler_data();
  v5 = qword_27FA06058;
  qword_27FA06050 = 0;
  qword_27FA06058 = 0;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = mlx_error_handler_default_;
  }

  get_error_handler(void)::handler = v4;
}

void get_error_handler_data(void)
{
  if ((atomic_load_explicit(_MergedGlobals_4, memory_order_acquire) & 1) == 0)
  {
    get_error_handler_data();
  }
}

uint64_t std::shared_ptr<void>::~shared_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _mlx_error(const char *a1, int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v19[3] = *MEMORY[0x277D85DE8];
  v19[1] = &a9;
  v19[2] = &a9;
  vsnprintf(0, 0, a3, &a9);
  v12 = snprintf(0, 0, " at %s:%d", a1, a2);
  v13 = v12;
  MEMORY[0x28223BE20](v12);
  v15 = v19 - v14;
  v17 = vsnprintf(v19 - v14, v16, a3, &a9);
  snprintf(&v15[v17], v13 + 1, " at %s:%d", a1, a2);
  v18 = get_error_handler(void)::handler;
  get_error_handler_data();
  v18(v15, qword_27FA06050);
  JUMPOUT(0x25A8349ECLL);
}

void sub_25A834AA0(void *a1)
{
  __cxa_begin_catch(a1);
  v1(v2);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<void *,void (*)(void *),std::allocator<void>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::__shared_ptr_pointer<void *,void (*)(void *),std::allocator<void>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void mlx_fast_affine_dequantize(uint64_t a1, uint64_t **a2, uint64_t **a3, uint64_t **a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 && a3 && a4)
  {
    if (a7)
    {
      mlx::core::fast::affine_dequantize(a2, a3, a4, a5, a6, *a7, *(a7 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_fast_affine_quantize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4)
  {
    if (a7)
    {
      mlx::core::fast::affine_quantize(a4, a5, a6, *a7, *(a7 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_fast_layer_norm(float a1, uint64_t a2, uint64_t **a3, uint64_t *a4, void *a5, uint64_t a6)
{
  if (a3)
  {
    if (a4)
    {
      v6 = a4[1];
      v16[0] = *a4;
      v16[1] = v6;
      if (v6)
      {
        v7 = (v6 + 8);
        v8 = 1;
        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = 0;
      LOBYTE(v16[0]) = 0;
    }

    v17 = v8;
    if (a5)
    {
      v9 = a5[1];
      v14[0] = *a5;
      v14[1] = v9;
      if (v9)
      {
        v10 = (v9 + 8);
        v11 = 1;
        atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
      }

      else
      {
        v11 = 1;
      }
    }

    else
    {
      v11 = 0;
      LOBYTE(v14[0]) = 0;
    }

    v15 = v11;
    if (a6)
    {
      mlx::core::fast::layer_norm(a3, v16, v14, *a6, *(a6 + 8) | 0x100000000, a1);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v12 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v12, "expected a non-empty mlx_array");
  __cxa_throw(v12, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t mlx_fast_metal_kernel_config_free(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = (result + 72);
    std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>::__destroy_vector::operator()[abi:ne200100](&v3);
    v2 = *(v1 + 24);
    if (v2)
    {
      *(v1 + 32) = v2;
      operator delete(v2);
    }

    v3 = v1;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v3);
    return MEMORY[0x25F851760](v1, 0x1020C40D394AB39);
  }

  return result;
}

void mlx_fast_metal_kernel_new(char *__s, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v12[7] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v12, __s);
  if (a2)
  {
    if (a3)
    {
      std::string::basic_string[abi:ne200100]<0>(&v11, a4);
      std::string::basic_string[abi:ne200100]<0>(&__p, a5);
      operator new();
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_string");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t mlx_fast_metal_kernel_free(uint64_t result)
{
  if (result)
  {
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<std::vector<int>> const&,std::vector<mlx::core::Dtype> const&,std::tuple<int,int,int>,std::tuple<int,int,int>,std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>,std::optional<float>,BOOL,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)>::~__value_func[abi:ne200100](result);

    JUMPOUT(0x25F851760);
  }

  return result;
}

uint64_t mlx_fast_metal_kernel_config_add_output_arg(void *a1, uint64_t a2, unint64_t a3, int a4)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_fast_metal_kernel_config");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  __p = 0;
  v23 = 0;
  v24 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a2, a2 + 4 * a3, a3);
  std::vector<std::vector<int>>::push_back[abi:ne200100](a1, &__p);
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  v8 = a1[4];
  v7 = a1[5];
  if (v8 >= v7)
  {
    v10 = a1[3];
    v11 = (v8 - v10) >> 3;
    if ((v11 + 1) >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v12 = v7 - v10;
    v13 = v12 >> 2;
    if (v12 >> 2 <= (v11 + 1))
    {
      v13 = v11 + 1;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::Dtype>>((a1 + 3), v14);
    }

    v15 = (8 * v11);
    *v15 = v6 & 0xFFFFFFFFFFLL;
    v9 = 8 * v11 + 8;
    v16 = a1[3];
    v17 = a1[4] - v16;
    v18 = v15 - v17;
    memcpy(v15 - v17, v16, v17);
    v19 = a1[3];
    a1[3] = v18;
    a1[4] = v9;
    a1[5] = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v8 = v6 & 0xFFFFFFFFFFLL;
    v9 = (v8 + 1);
  }

  result = 0;
  a1[4] = v9;
  return result;
}

uint64_t mlx_fast_metal_kernel_config_set_grid(_DWORD *a1, int a2, int a3, int a4)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_fast_metal_kernel_config");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  result = 0;
  a1[12] = a2;
  a1[13] = a3;
  a1[14] = a4;
  return result;
}

uint64_t mlx_fast_metal_kernel_config_set_thread_group(_DWORD *a1, int a2, int a3, int a4)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_fast_metal_kernel_config");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  result = 0;
  a1[15] = a2;
  a1[16] = a3;
  a1[17] = a4;
  return result;
}

uint64_t mlx_fast_metal_kernel_config_set_init_value(uint64_t a1, float a2)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_fast_metal_kernel_config");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  result = 0;
  *(a1 + 96) = a2;
  *(a1 + 100) = 1;
  return result;
}

uint64_t mlx_fast_metal_kernel_config_set_verbose(uint64_t a1, char a2)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_fast_metal_kernel_config");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  result = 0;
  *(a1 + 104) = a2;
  return result;
}

uint64_t mlx_fast_metal_kernel_config_add_template_arg_dtype(uint64_t a1, char *a2, int a3)
{
  v18[2] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_fast_metal_kernel_config");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::string::basic_string[abi:ne200100]<0>(&v11, a2);
  v6 = v11;
  v18[0] = v12;
  *(v18 + 7) = *(&v12 + 7);
  v7 = HIBYTE(v12);
  v12 = 0uLL;
  v11 = 0;
  __p = v6;
  *v14 = v18[0];
  *&v14[7] = *(v18 + 7);
  v15 = v7;
  v16 = v5 & 0xFFFFFFFFFFLL;
  v17 = 2;
  std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>::push_back[abi:ne200100](a1 + 72, &__p);
  if (v15 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11);
  }

  result = 0;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>::push_back[abi:ne200100](uint64_t result, __int128 *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *result) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0x666666666666666)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *result) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x333333333333333)
    {
      v12 = 0x666666666666666;
    }

    else
    {
      v12 = v10;
    }

    v20[4] = result;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>>(result, v12);
    }

    v13 = 40 * v9;
    v14 = *a2;
    *(v13 + 16) = *(a2 + 2);
    *v13 = v14;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v15 = *(a2 + 3);
    *(v13 + 32) = *(a2 + 8);
    *(v13 + 24) = v15;
    v8 = 40 * v9 + 40;
    v16 = *(result + 8) - *result;
    v17 = v13 - v16;
    memcpy((v13 - v16), *result, v16);
    v18 = *v3;
    *v3 = v17;
    v3[1] = v8;
    v19 = v3[2];
    v3[2] = 0;
    v20[2] = v18;
    v20[3] = v19;
    v20[0] = v18;
    v20[1] = v18;
    result = std::__split_buffer<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>::~__split_buffer(v20);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = *(a2 + 3);
    *(v4 + 32) = *(a2 + 8);
    *(v4 + 24) = v7;
    v8 = v4 + 40;
  }

  v3[1] = v8;
  return result;
}

uint64_t mlx_fast_metal_kernel_config_add_template_arg_int(uint64_t a1, char *a2, int a3)
{
  v17[2] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_fast_metal_kernel_config");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::string::basic_string[abi:ne200100]<0>(&v10, a2);
  v5 = v10;
  v17[0] = v11;
  *(v17 + 7) = *(&v11 + 7);
  v6 = HIBYTE(v11);
  v11 = 0uLL;
  v10 = 0;
  __p = v5;
  *v13 = v17[0];
  *&v13[7] = *(v17 + 7);
  v14 = v6;
  v15 = a3;
  v16 = 0;
  std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>::push_back[abi:ne200100](a1 + 72, &__p);
  if (v14 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10);
  }

  result = 0;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlx_fast_metal_kernel_config_add_template_arg_BOOL(uint64_t a1, char *a2, char a3)
{
  v17[2] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_fast_metal_kernel_config");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::string::basic_string[abi:ne200100]<0>(&v10, a2);
  v5 = v10;
  v17[0] = v11;
  *(v17 + 7) = *(&v11 + 7);
  v6 = HIBYTE(v11);
  v11 = 0uLL;
  v10 = 0;
  __p = v5;
  *v13 = v17[0];
  *&v13[7] = *(v17 + 7);
  v14 = v6;
  v15 = a3;
  v16 = 1;
  std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>::push_back[abi:ne200100](a1 + 72, &__p);
  if (v14 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10);
  }

  result = 0;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlx_fast_metal_kernel_apply(void ***a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_fast_metal_kernel_config");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  memset(v24, 0, sizeof(v24));
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int>*,std::vector<int>*>(v24, *a4, *(a4 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3));
  __p = 0;
  v26 = 0;
  v27 = 0;
  std::vector<mlx::core::Dtype>::__init_with_size[abi:ne200100]<mlx::core::Dtype*,mlx::core::Dtype*>(&__p, *(a4 + 24), *(a4 + 32), (*(a4 + 32) - *(a4 + 24)) >> 3);
  v10 = *(a4 + 64);
  *v28 = *(a4 + 48);
  *&v28[16] = v10;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>*,std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>*>(&v29, *(a4 + 72), *(a4 + 80), 0xCCCCCCCCCCCCCCCDLL * ((*(a4 + 80) - *(a4 + 72)) >> 3));
  v11 = *(a4 + 96);
  v33 = *(a4 + 104);
  v32 = v11;
  if (!a2)
  {
    v19 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v19, "expected a non-empty mlx_fast_metal_kernel");
    goto LABEL_14;
  }

  if (!a3)
  {
    v19 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v19, "expected a non-empty mlx_vector_array");
LABEL_14:
    __cxa_throw(v19, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v12 = *v28;
  v13 = *&v28[8];
  v14 = *&v28[12];
  v15 = *&v28[20];
  memset(v21, 0, sizeof(v21));
  std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>*,std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>*>(v21, v29, v30, 0xCCCCCCCCCCCCCCCDLL * ((v30 - v29) >> 3));
  if (!a5)
  {
    v20 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v20, "expected a non-empty mlx_stream");
    __cxa_throw(v20, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<std::vector<int>> const&,std::vector<mlx::core::Dtype> const&,std::tuple<int,int,int>,std::tuple<int,int,int>,std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>,std::optional<float>,BOOL,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)>::operator()(a2, a3, v24, &__p, v12, v13, v14, v15, v21, v32, v33, *a5, *(a5 + 8) | 0x100000000);
  v16 = *a1;
  if (!*a1)
  {
    operator new();
  }

  std::vector<mlx::core::array>::__vdeallocate(*a1);
  *v16 = v22;
  v16[2] = v23;
  v22 = 0uLL;
  v23 = 0;
  v34[0] = &v22;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](v34);
  v34[0] = v21;
  std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>::__destroy_vector::operator()[abi:ne200100](v34);
  *&v22 = &v29;
  std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>::__destroy_vector::operator()[abi:ne200100](&v22);
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  *&v22 = v24;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v22);
  return 0;
}

uint64_t std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<std::vector<int>> const&,std::vector<mlx::core::Dtype> const&,std::tuple<int,int,int>,std::tuple<int,int,int>,std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>,std::optional<float>,BOOL,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13)
{
  v19 = a5;
  v20 = a6;
  v17 = a7;
  v18 = a8;
  v16[0] = a12;
  v16[1] = a13;
  v15 = a11;
  v13 = *(a1 + 24);
  if (!v13)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v13 + 48))(v13, a2, a3, a4, &v19, &v17, a9, &a10, &v15, v16);
}

void mlx_fast_rms_norm(float a1, uint64_t a2, uint64_t **a3, uint64_t *a4, uint64_t a5)
{
  if (a3)
  {
    if (a4)
    {
      v5 = a4[1];
      v10[0] = *a4;
      v10[1] = v5;
      if (v5)
      {
        v6 = (v5 + 8);
        v7 = 1;
        atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
      }

      else
      {
        v7 = 1;
      }
    }

    else
    {
      v7 = 0;
      LOBYTE(v10[0]) = 0;
    }

    v11 = v7;
    if (a5)
    {
      mlx::core::fast::rms_norm(a3, v10, *a5, *(a5 + 8) | 0x100000000, a1);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v8 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v8, "expected a non-empty mlx_array");
  __cxa_throw(v8, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_fast_rope(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  if (a2)
  {
    if (a7)
    {
      v8 = a7[1];
      v15 = *a7;
      v16 = v8;
      if (v8)
      {
        v9 = (v8 + 8);
        v10 = 1;
        atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
      }

      else
      {
        v10 = 1;
      }
    }

    else
    {
      v10 = 0;
      LOBYTE(v15) = 0;
    }

    v17 = v10;
    if (a8)
    {
      v11 = *a8;
      v12 = *(a8 + 2) | 0x100000000;
      mlx::core::fast::rope();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v13 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v13, "expected a non-empty mlx_array");
  __cxa_throw(v13, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_fast_scaled_dot_product_attention(int a1, uint64_t **a2, std::string::size_type *a3, std::string::size_type *a4, char *__s, float a6, uint64_t ***a7, uint64_t a8)
{
  if (a2 && a3 && a4)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, __s);
    if (a7)
    {
      if (a8)
      {
        mlx::core::fast::scaled_dot_product_attention(a2, a3, a4, __p, a7, *a8, *(a8 + 8) | 0x100000000, a6);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    }

    else
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
    }

    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v14 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v14, "expected a non-empty mlx_array");
  __cxa_throw(v14, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<std::vector<int>> const&,std::vector<mlx::core::Dtype> const&,std::tuple<int,int,int>,std::tuple<int,int,int>,std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>,std::optional<float>,BOOL,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<std::vector<int>> const&,std::vector<mlx::core::Dtype> const&,std::tuple<int,int,int>,std::tuple<int,int,int>,std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>,std::optional<float>,BOOL,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 5;
      *(a1 + 16) = v2 - 5;
      if (*(v2 - 17) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>*,std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25A83726C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>,std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>*,std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>*,std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v13 = this;
  v14 = this;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v8 = v14;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
        v8 = v4;
      }

      v9 = *(v6 + 3);
      LODWORD(v4[1].__r_.__value_.__r.__words[1]) = *(v6 + 8);
      v4[1].__r_.__value_.__r.__words[0] = v9;
      v6 = (v6 + 40);
      v4 = (v8 + 40);
      v14 = (v8 + 40);
    }

    while (v6 != a3);
  }

  v12 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>,std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>*>>::~__exception_guard_exceptions[abi:ne200100](v11);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>,std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>,std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>,std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 17);
    v1 -= 5;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 17);
    v3 -= 5;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void mlx_fast_metal_kernel_config_cpp_::~mlx_fast_metal_kernel_config_cpp_(mlx_fast_metal_kernel_config_cpp_ *this)
{
  v3 = (this + 72);
  std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = this;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void mlx_export_function(char *__s, uint64_t a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  if (a2)
  {
    if (a3)
    {
      mlx::core::export_function(__p, a2);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_closure");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_export_function_kwargs(char *__s, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  if (a2)
  {
    if (a3)
    {
      if (a4)
      {
        mlx::core::export_function(__p, a2);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "expected a non-empty mlx_map_string_to_array");
    }

    else
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
    }
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_closure_kwargs");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_function_exporter_new(char *__s, uint64_t a2)
{
  __p[18] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  if (a2)
  {
    mlx::core::exporter(__p, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_closure");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t mlx_function_exporter_free(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 112);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    std::__tree<int>::destroy(a1 + 72, *(a1 + 80));
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::~__value_func[abi:ne200100](a1 + 40);
    mlx::core::io::FileWriter::~FileWriter(a1);
    MEMORY[0x25F851760]();
  }

  return 0;
}

void mlx_function_exporter_apply(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      mlx::core::FunctionExporter::operator()(a1, a2);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_function_exporter");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t mlx_function_exporter_apply_kwargs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_function_exporter");
    goto LABEL_8;
  }

  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
    goto LABEL_8;
  }

  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_map_string_to_array");
LABEL_8:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::FunctionExporter::operator()();
  return 0;
}

uint64_t mlx_imported_function_free(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    MEMORY[0x25F851760](a1, 0x20C40A4A59CD2);
  }

  return 0;
}

uint64_t mlx_imported_function_apply(void ***a1, uint64_t *a2, uint64_t *a3)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_imported_function");
    goto LABEL_8;
  }

  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
LABEL_8:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::ImportedFunction::operator()(a2, a3, &v7);
  v4 = *a1;
  if (!*a1)
  {
    operator new();
  }

  std::vector<mlx::core::array>::__vdeallocate(*a1);
  *v4 = v7;
  v4[2] = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v9);
  return 0;
}

uint64_t mlx_imported_function_apply_kwargs(void ***a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_imported_function");
    goto LABEL_10;
  }

  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
    goto LABEL_10;
  }

  if (!a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_map_string_to_array");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::ImportedFunction::operator()(a2, a3, a4, &v8);
  v5 = *a1;
  if (!*a1)
  {
    operator new();
  }

  std::vector<mlx::core::array>::__vdeallocate(*a1);
  *v5 = v8;
  v5[2] = v9;
  v8 = 0uLL;
  v9 = 0;
  v10 = &v8;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v10);
  return 0;
}

uint64_t mlx::core::FunctionExporter::FunctionExporter(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286BE60E0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::__value_func[abi:ne200100](a1 + 40, a2 + 40);
  *(a1 + 72) = *(a2 + 72);
  v4 = (a2 + 80);
  v5 = *(a2 + 80);
  *(a1 + 80) = v5;
  v6 = a1 + 80;
  v7 = *(a2 + 88);
  *(a1 + 88) = v7;
  if (v7)
  {
    *(v5 + 16) = v6;
    *(a2 + 72) = v4;
    *v4 = 0;
    *(a2 + 88) = 0;
  }

  else
  {
    *(a1 + 72) = v6;
  }

  v8 = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 96) = v8;
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  return a1;
}

void mlx_abs(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::abs(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_add(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::add(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_addmm(float a1, float a2, uint64_t a3, uint64_t **a4, uint64_t **a5, uint64_t **a6, uint64_t a7)
{
  v17 = a2;
  v18 = a1;
  if (a4)
  {
    v7 = a4[1];
    v16[0] = *a4;
    v16[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
    }

    if (a5)
    {
      v8 = a5[1];
      v15[0] = *a5;
      v15[1] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
      }

      if (a6)
      {
        v9 = a6[1];
        v14[0] = *a6;
        v14[1] = v9;
        if (v9)
        {
          atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
        }

        if (a7)
        {
          mlx::core::addmm(v16, v15, v14, &v18, &v17, *a7, *(a7 + 8) | 0x100000000);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v12 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v12, "expected a non-empty mlx_array");
      __cxa_throw(v12, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v11 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v11, "expected a non-empty mlx_array");
    __cxa_throw(v11, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v10 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v10, "expected a non-empty mlx_array");
  __cxa_throw(v10, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t mlx_all_axes(uint64_t *a1, uint64_t **a2, uint64_t a3, unint64_t a4, char a5, uint64_t a6)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a3, a3 + 4 * a4, a4);
  if (!a6)
  {
    v15 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v15, "expected a non-empty mlx_stream");
    __cxa_throw(v15, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::all(a2, &__p, a5, *a6, *(a6 + 8) | 0x100000000, &v19);
  v10 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v11 = v19;
  v19 = 0uLL;
  v12 = *(v10 + 8);
  *v10 = v11;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  mlx::core::array::~array(&v19);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  return 0;
}

uint64_t mlx_all_axis(uint64_t *a1, uint64_t **a2, int a3, char a4, uint64_t a5)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::all(a2, a3, a4, *a5, *(a5 + 8) | 0x100000000, &v11);
  v6 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v7 = v11;
  v11 = 0uLL;
  v8 = *(v6 + 8);
  *v6 = v7;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  mlx::core::array::~array(&v11);
  return 0;
}

uint64_t mlx_all(uint64_t *a1, uint64_t **a2, char a3, uint64_t a4)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::all(a2, a3, *a4, *(a4 + 8) | 0x100000000, &v10);
  v5 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v6 = v10;
  v10 = 0uLL;
  v7 = *(v5 + 8);
  *v5 = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  mlx::core::array::~array(&v10);
  return 0;
}

void mlx_allclose(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a2 && a3)
  {
    if (a5)
    {
      v5 = *a5;
      v6 = *(a5 + 2) | 0x100000000;
      mlx::core::allclose();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t mlx_any_axes(uint64_t *a1, uint64_t **a2, uint64_t a3, unint64_t a4, char a5, uint64_t a6)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a3, a3 + 4 * a4, a4);
  if (!a6)
  {
    v15 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v15, "expected a non-empty mlx_stream");
    __cxa_throw(v15, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::any(a2, &__p, a5, *a6, *(a6 + 8) | 0x100000000, &v19);
  v10 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v11 = v19;
  v19 = 0uLL;
  v12 = *(v10 + 8);
  *v10 = v11;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  mlx::core::array::~array(&v19);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  return 0;
}

uint64_t mlx_any_axis(uint64_t *a1, uint64_t **a2, int a3, char a4, uint64_t a5)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::any(a2, a3, a4, *a5, *(a5 + 8) | 0x100000000, &v11);
  v6 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v7 = v11;
  v11 = 0uLL;
  v8 = *(v6 + 8);
  *v6 = v7;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  mlx::core::array::~array(&v11);
  return 0;
}

uint64_t mlx_any(uint64_t *a1, uint64_t **a2, char a3, uint64_t a4)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::any(a2, a3, *a4, *(a4 + 8) | 0x100000000, &v10);
  v5 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v6 = v10;
  v10 = 0uLL;
  v7 = *(v5 + 8);
  *v5 = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  mlx::core::array::~array(&v10);
  return 0;
}

void mlx_arange(double a1, double a2, double a3, uint64_t a4, int a5, uint64_t a6)
{
  if (a6)
  {
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_arccos(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::arccos(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_arccosh(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::arccosh(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_arcsin(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::arcsin(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_arcsinh(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::arcsinh(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_arctan(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::arctan(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_arctan2(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::arctan2(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_arctanh(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::arctanh(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_argmax_axis(uint64_t a1, uint64_t **a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    if (a5)
    {
      mlx::core::argmax(a2, a3, a4, *a5, *(a5 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_argmax(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      mlx::core::argmax(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_argmin_axis(uint64_t a1, uint64_t **a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    if (a5)
    {
      mlx::core::argmin(a2, a3, a4, *a5, *(a5 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_argmin(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      mlx::core::argmin(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_argpartition_axis(int a1, uint64_t **this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (this)
  {
    if (a5)
    {
      mlx::core::argpartition(this, a3, a4, *a5, *(a5 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_argpartition(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      mlx::core::argpartition(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_argsort_axis(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      mlx::core::argsort(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_argsort(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::argsort(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_array_equal(uint64_t a1, const void ***a2, const void ***a3, uint64_t a4, uint64_t a5)
{
  if (a2 && a3)
  {
    if (a5)
    {
      mlx::core::array_equal(a2, a3, a4, *a5, *(a5 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_as_strided(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v12 = a2[1];
    v17[0] = *a2;
    v17[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    memset(v16, 0, sizeof(v16));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v16, a3, a3 + 4 * a4, a4);
    memset(__p, 0, sizeof(__p));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(__p, a5, a5 + 8 * a6, a6);
    if (a8)
    {
      mlx::core::as_strided(v17, v16, __p, a7, *a8, *(a8 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v13 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v13, "expected a non-empty mlx_array");
  __cxa_throw(v13, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t mlx_astype(uint64_t *a1, uint64_t **a2, int a3, uint64_t a4)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v5 = a2[1];
  v12[0] = *a2;
  v12[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  }

  if (!a4)
  {
    v11 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v11, "expected a non-empty mlx_stream");
    __cxa_throw(v11, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v7 = v13;
  v13 = 0uLL;
  v8 = *(v6 + 8);
  *v6 = v7;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  mlx::core::array::~array(&v13);
  mlx::core::array::~array(v12);
  return 0;
}

uint64_t mlx_atleast_1d(uint64_t *a1, void *a2, uint64_t a3)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::atleast_1d(a2, *a3, *(a3 + 8) | 0x100000000, &v9);
  v4 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v5 = v9;
  v9 = 0uLL;
  v6 = *(v4 + 8);
  *v4 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  mlx::core::array::~array(&v9);
  return 0;
}

uint64_t mlx_atleast_2d(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::atleast_2d(a2, *a3, *(a3 + 8) | 0x100000000, &v9);
  v4 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v5 = v9;
  v9 = 0uLL;
  v6 = *(v4 + 8);
  *v4 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  mlx::core::array::~array(&v9);
  return 0;
}

uint64_t mlx_atleast_3d(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::atleast_3d(a2, *a3, *(a3 + 8) | 0x100000000, &v9);
  v4 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v5 = v9;
  v9 = 0uLL;
  v6 = *(v4 + 8);
  *v4 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  mlx::core::array::~array(&v9);
  return 0;
}

void mlx_bitwise_and(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::bitwise_and(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_bitwise_invert(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::bitwise_invert(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_bitwise_or(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::bitwise_or(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_bitwise_xor(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::bitwise_xor(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_block_masked_mm(uint64_t a1, uint64_t **a2, uint64_t **a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8)
{
  if (a2)
  {
    v8 = a2[1];
    v29[0] = *a2;
    v29[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
    }

    if (a3)
    {
      v9 = a3[1];
      v28[0] = *a3;
      v28[1] = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
      }

      if (a5)
      {
        v10 = a5[1];
        v26[0] = *a5;
        v26[1] = v10;
        if (v10)
        {
          v11 = (v10 + 8);
          v12 = 1;
          atomic_fetch_add_explicit(v11, 1uLL, memory_order_relaxed);
        }

        else
        {
          v12 = 1;
        }
      }

      else
      {
        v12 = 0;
        LOBYTE(v26[0]) = 0;
      }

      v27 = v12;
      if (a6)
      {
        v13 = a6[1];
        v24[0] = *a6;
        v24[1] = v13;
        if (v13)
        {
          v14 = (v13 + 8);
          v15 = 1;
          atomic_fetch_add_explicit(v14, 1uLL, memory_order_relaxed);
        }

        else
        {
          v15 = 1;
        }
      }

      else
      {
        v15 = 0;
        LOBYTE(v24[0]) = 0;
      }

      v25 = v15;
      if (a7)
      {
        v16 = a7[1];
        v22[0] = *a7;
        v22[1] = v16;
        if (v16)
        {
          v17 = (v16 + 8);
          v18 = 1;
          atomic_fetch_add_explicit(v17, 1uLL, memory_order_relaxed);
        }

        else
        {
          v18 = 1;
        }
      }

      else
      {
        v18 = 0;
        LOBYTE(v22[0]) = 0;
      }

      v23 = v18;
      if (a8)
      {
        mlx::core::block_masked_mm(v29, v28, a4, v26, v24, v22, *a8, *(a8 + 8) | 0x100000000);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v20 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v20, "expected a non-empty mlx_array");
    __cxa_throw(v20, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v19 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v19, "expected a non-empty mlx_array");
  __cxa_throw(v19, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t mlx_broadcast_arrays(void ***a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
    goto LABEL_8;
  }

  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_8:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::broadcast_arrays(a2, *a3, *(a3 + 8) | 0x100000000, &v7);
  v4 = *a1;
  if (!*a1)
  {
    operator new();
  }

  std::vector<mlx::core::array>::__vdeallocate(*a1);
  *v4 = v7;
  v4[2] = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v9);
  return 0;
}

uint64_t mlx_broadcast_to(uint64_t *a1, uint64_t **a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  __p = 0;
  v15 = 0;
  v16 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a3, a3 + 4 * a4, a4);
  if (!a5)
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v13, "expected a non-empty mlx_stream");
    __cxa_throw(v13, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::broadcast_to(a2, &__p, *a5, *(a5 + 8) | 0x100000000, &v17);
  v8 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v9 = v17;
  v17 = 0uLL;
  v10 = *(v8 + 8);
  *v8 = v9;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  mlx::core::array::~array(&v17);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return 0;
}

void mlx_ceil(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::ceil(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t mlx_clip(uint64_t *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (a3)
  {
    v6 = a3[1];
    v20[0] = *a3;
    v20[1] = v6;
    if (v6)
    {
      v7 = (v6 + 8);
      v8 = 1;
      atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
    LOBYTE(v20[0]) = 0;
  }

  v21 = v8;
  if (a4)
  {
    v9 = a4[1];
    v18[0] = *a4;
    v18[1] = v9;
    if (v9)
    {
      v10 = (v9 + 8);
      v11 = 1;
      atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
    LOBYTE(v18[0]) = 0;
  }

  v19 = v11;
  if (!a5)
  {
    v17 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v17, "expected a non-empty mlx_stream");
    __cxa_throw(v17, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::clip(a2, v20, v18, *a5, *(a5 + 8) | 0x100000000, &v22);
  v12 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v13 = v22;
  v22 = 0uLL;
  v14 = *(v12 + 8);
  *v12 = v13;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  mlx::core::array::~array(&v22);
  if (v19 == 1)
  {
    mlx::core::array::~array(v18);
  }

  if (v21 == 1)
  {
    mlx::core::array::~array(v20);
  }

  return 0;
}

uint64_t mlx_concatenate_axis(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  memset(v13, 0, sizeof(v13));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(v13, *a2, a2[1], (a2[1] - *a2) >> 4);
  if (!a4)
  {
    v12 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v12, "expected a non-empty mlx_stream");
    __cxa_throw(v12, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::concatenate(v13, a3, *a4, *(a4 + 8) | 0x100000000, &v14);
  v7 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v8 = v14;
  v14 = 0uLL;
  v9 = *(v7 + 8);
  *v7 = v8;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  mlx::core::array::~array(&v14);
  v15 = v13;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v15);
  return 0;
}

uint64_t mlx_concatenate(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  memset(v11, 0, sizeof(v11));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(v11, *a2, a2[1], (a2[1] - *a2) >> 4);
  if (!a3)
  {
    v10 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v10, "expected a non-empty mlx_stream");
    __cxa_throw(v10, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::concatenate(v11, *a3, *(a3 + 8) | 0x100000000, &v12);
  v5 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v6 = v12;
  v12 = 0uLL;
  v7 = *(v5 + 8);
  *v5 = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  mlx::core::array::~array(&v12);
  v13 = v11;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v13);
  return 0;
}

uint64_t mlx_conjugate(uint64_t *a1, uint64_t **a2, uint64_t a3)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::conjugate(a2, *a3, *(a3 + 8) | 0x100000000, &v9);
  v4 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v5 = v9;
  v9 = 0uLL;
  v6 = *(v4 + 8);
  *v4 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  mlx::core::array::~array(&v9);
  return 0;
}

void mlx_contiguous(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      mlx::core::contiguous(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_conv1d(uint64_t a1, uint64_t **a2, uint64_t **a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  if (a2 && a3)
  {
    if (a8)
    {
      mlx::core::conv1d(a2, a3, a4, a5, a6, a7, *a8, *(a8 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_conv2d(uint64_t a1, uint64_t **a2, uint64_t **a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7, unsigned int a8, unsigned int a9, unsigned int a10, uint64_t a11)
{
  if (a2 && a3)
  {
    v15 = a4 | (a5 << 32);
    v14 = a6 | (a7 << 32);
    v13 = a8 | (a9 << 32);
    if (a11)
    {
      mlx::core::conv2d(a2, a3, &v15, &v14, &v13, a10, *a11, *(a11 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v11 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v11, "expected a non-empty mlx_array");
  __cxa_throw(v11, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_conv3d(uint64_t a1, uint64_t **a2, uint64_t **a3, unsigned int a4, uint64_t a5, int a6, unsigned int a7, uint64_t a8, int a9, unsigned int a10, unsigned int a11, int a12, unsigned int a13, uint64_t a14)
{
  if (a2 && a3)
  {
    v20 = a4 | (a5 << 32);
    v21 = a6;
    v18 = a7 | (a8 << 32);
    v19 = a9;
    v16 = a10 | (a11 << 32);
    v17 = a12;
    if (a14)
    {
      mlx::core::conv3d(a2, a3, &v20, &v18, &v16, a13, *a14, *(a14 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v14 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v14, "expected a non-empty mlx_array");
  __cxa_throw(v14, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_conv_general(uint64_t a1, uint64_t **a2, uint64_t **a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13, unsigned int a14, char a15, uint64_t a16)
{
  if (a2)
  {
    v19 = a2[1];
    v30[0] = *a2;
    v30[1] = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(v19 + 1, 1uLL, memory_order_relaxed);
    }

    if (a3)
    {
      v20 = a3[1];
      v29[0] = *a3;
      v29[1] = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(v20 + 1, 1uLL, memory_order_relaxed);
      }

      memset(v28, 0, sizeof(v28));
      std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v28, a4, a4 + 4 * a5, a5);
      memset(v27, 0, sizeof(v27));
      std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v27, a6, a6 + 4 * a7, a7);
      memset(v26, 0, sizeof(v26));
      std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v26, a8, a8 + 4 * a9, a9);
      memset(v25, 0, sizeof(v25));
      std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v25, a10, a10 + 4 * a11, a11);
      memset(__p, 0, sizeof(__p));
      std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a12, a12 + 4 * a13, a13);
      if (a16)
      {
        mlx::core::conv_general(v30, v29, v28, v27, v26, v25, __p, a14, a15, *a16, *(a16 + 8) | 0x100000000);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v22 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v22, "expected a non-empty mlx_array");
    __cxa_throw(v22, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v21 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v21, "expected a non-empty mlx_array");
  __cxa_throw(v21, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_conv_transpose1d(uint64_t a1, uint64_t **a2, uint64_t **a3, int a4, int a5, int a6, int a7, uint64_t a8, uint64_t a9)
{
  if (a2 && a3)
  {
    if (a9)
    {
      mlx::core::conv_transpose1d(a2, a3, a4, a5, a6, a7, a8, a8, *a9, *(a9 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_conv_transpose2d(uint64_t a1, uint64_t **a2, uint64_t **a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, unsigned int a12, uint64_t a13)
{
  if (a2 && a3)
  {
    v18 = a4 | (a5 << 32);
    v17 = a6 | (a7 << 32);
    v15 = a10 | (a11 << 32);
    v16 = a8 | (a9 << 32);
    if (a13)
    {
      mlx::core::conv_transpose2d(a2, a3, &v18, &v17, &v16, &v15, a12, a8, *a13, *(a13 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v13 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v13, "expected a non-empty mlx_array");
  __cxa_throw(v13, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_conv_transpose3d(uint64_t a1, uint64_t **a2, uint64_t **a3, unsigned int a4, uint64_t a5, int a6, unsigned int a7, uint64_t a8, int a9, unsigned int a10, unsigned int a11, int a12, unsigned int a13, unsigned int a14, int a15, unsigned int a16, uint64_t a17)
{
  if (a2 && a3)
  {
    v25 = a4 | (a5 << 32);
    v26 = a6;
    v23 = a7 | (a8 << 32);
    v24 = a9;
    v21 = a10 | (a11 << 32);
    v22 = a12;
    v19 = a13 | (a14 << 32);
    v20 = a15;
    if (a17)
    {
      mlx::core::conv_transpose3d(a2, a3, &v25, &v23, &v21, &v19, a16, a8, *a17, *(a17 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v17 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v17, "expected a non-empty mlx_array");
  __cxa_throw(v17, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_copy(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  if (a2)
  {
    v3 = a2[1];
    v6[0] = *a2;
    v6[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(v3 + 1, 1uLL, memory_order_relaxed);
    }

    if (a3)
    {
      mlx::core::copy(v6, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v4 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v4, "expected a non-empty mlx_array");
  __cxa_throw(v4, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_cos(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::cos(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_cosh(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::cosh(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_cummax(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    if (a6)
    {
      mlx::core::cummax(a2, a3, a4, a5, *a6, *(a6 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_cummin(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    if (a6)
    {
      mlx::core::cummin(a2, a3, a4, a5, *a6, *(a6 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_cumprod(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    if (a6)
    {
      mlx::core::cumprod(a2, a3, a4, a5, *a6, *(a6 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_cumsum(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    if (a6)
    {
      mlx::core::cumsum(a2, a3, a4, a5, *a6, *(a6 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_degrees(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2)
  {
    if (a3)
    {
      v3 = *a3;
      v4 = *(a3 + 2) | 0x100000000;
      mlx::core::degrees(a2);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_depends(uint64_t a1, uint64_t *a2, uint64_t **a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::depends(a2, a3);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t mlx_dequantize(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a2 || !a3 || !a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_12;
  }

  if (!a7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_12:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::dequantize(&v13, a2, a3, a4, a5, a6, *a7, *(a7 + 8) | 0x100000000);
  v8 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v9 = v13;
  v13 = 0uLL;
  v10 = *(v8 + 8);
  *v8 = v9;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  mlx::core::array::~array(&v13);
  return 0;
}

void mlx_diag(uint64_t a1, uint64_t **a2, int a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      mlx::core::diag(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_diagonal(uint64_t a1, uint64_t **a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    if (a6)
    {
      mlx::core::diagonal(a2, a3, a4, a5, *a6, *(a6 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_divide(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::divide(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_divmod(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::divmod(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t mlx_einsum(uint64_t *a1, char *a2, uint64_t *a3, uint64_t a4)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
    goto LABEL_12;
  }

  if (!a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_12:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::einsum(__p, a3, *a4, *(a4 + 8) | 0x100000000, &v14);
  v7 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v8 = v14;
  v14 = 0uLL;
  v9 = *(v7 + 8);
  *v7 = v8;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  mlx::core::array::~array(&v14);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void mlx_equal(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::equal(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_erf(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::erf(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_erfinv(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::erfinv(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_exp(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::exp(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t mlx_expand_dims_axes(uint64_t *a1, uint64_t **a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  __p = 0;
  v15 = 0;
  v16 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a3, a3 + 4 * a4, a4);
  if (!a5)
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v13, "expected a non-empty mlx_stream");
    __cxa_throw(v13, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::expand_dims(a2, &__p, *a5, *(a5 + 8) | 0x100000000, &v17);
  v8 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v9 = v17;
  v17 = 0uLL;
  v10 = *(v8 + 8);
  *v8 = v9;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  mlx::core::array::~array(&v17);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return 0;
}

void mlx_expand_dims(uint64_t a1, uint64_t **a2, int a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      mlx::core::expand_dims(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_expm1(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::expm1(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_eye(uint64_t a1, int a2, int a3, uint64_t a4, int a5, uint64_t *a6)
{
  if (a6)
  {
    v7 = *a6;
    v8 = *(a6 + 2) | 0x100000000;
    mlx::core::eye(a2, a3);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t mlx_flatten(uint64_t *a1, uint64_t **this, uint64_t a3, int a4, uint64_t a5)
{
  if (!this)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::flatten(this, a3, a4, *a5, *(a5 + 8) | 0x100000000, &v11);
  v6 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v7 = v11;
  v11 = 0uLL;
  v8 = *(v6 + 8);
  *v6 = v7;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  mlx::core::array::~array(&v11);
  return 0;
}

void mlx_floor(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::floor(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_floor_divide(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::floor_divide(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_full(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, int a5, uint64_t a6)
{
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a2, a2 + 4 * a3, a3);
  if (a4)
  {
    v9 = a4[1];
    v12[0] = *a4;
    v12[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    if (a6)
    {
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v10 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v10, "expected a non-empty mlx_array");
  __cxa_throw(v10, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_gather(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (a3)
    {
      memset(v16, 0, sizeof(v16));
      std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v16, a4, a4 + 4 * a5, a5);
      memset(__p, 0, sizeof(__p));
      std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a6, a6 + 4 * a7, a7);
      if (a8)
      {
        mlx::core::gather(a2, a3, v16, __p, *a8, *(a8 + 8) | 0x100000000);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v13 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v13, "expected a non-empty mlx_vector_array");
  }

  else
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v13, "expected a non-empty mlx_array");
  }

  __cxa_throw(v13, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_gather_mm(uint64_t a1, uint64_t **a2, uint64_t **a3, void *a4, void *a5, int a6, mlx::core **a7)
{
  if (a2)
  {
    v7 = a2[1];
    v23[0] = *a2;
    v23[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
    }

    if (a3)
    {
      v8 = a3[1];
      v22[0] = *a3;
      v22[1] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
      }

      if (a4)
      {
        v9 = a4[1];
        v20[0] = *a4;
        v20[1] = v9;
        if (v9)
        {
          v10 = (v9 + 8);
          v11 = 1;
          atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
        }

        else
        {
          v11 = 1;
        }
      }

      else
      {
        v11 = 0;
        LOBYTE(v20[0]) = 0;
      }

      v21 = v11;
      if (a5)
      {
        v12 = a5[1];
        v18[0] = *a5;
        v18[1] = v12;
        if (v12)
        {
          v13 = (v12 + 8);
          v14 = 1;
          atomic_fetch_add_explicit(v13, 1uLL, memory_order_relaxed);
        }

        else
        {
          v14 = 1;
        }
      }

      else
      {
        v14 = 0;
        LOBYTE(v18[0]) = 0;
      }

      v19 = v14;
      if (a7)
      {
        mlx::core::gather_mm(v23, v22, v20, v18, a6, *a7, *(a7 + 2) | 0x100000000);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v16 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v16, "expected a non-empty mlx_array");
    __cxa_throw(v16, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v15 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v15, "expected a non-empty mlx_array");
  __cxa_throw(v15, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_gather_qmm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, uint64_t **a5, void *a6, void *a7, char a8, unsigned int a9, unsigned int a10, char a11, uint64_t a12)
{
  if (a2 && a3 && a4 && a5)
  {
    if (a6)
    {
      v12 = a6[1];
      v22[0] = *a6;
      v22[1] = v12;
      if (v12)
      {
        v13 = (v12 + 8);
        v14 = 1;
        atomic_fetch_add_explicit(v13, 1uLL, memory_order_relaxed);
      }

      else
      {
        v14 = 1;
      }
    }

    else
    {
      v14 = 0;
      LOBYTE(v22[0]) = 0;
    }

    v23 = v14;
    if (a7)
    {
      v15 = a7[1];
      v20[0] = *a7;
      v20[1] = v15;
      if (v15)
      {
        v16 = (v15 + 8);
        v17 = 1;
        atomic_fetch_add_explicit(v16, 1uLL, memory_order_relaxed);
      }

      else
      {
        v17 = 1;
      }
    }

    else
    {
      v17 = 0;
      LOBYTE(v20[0]) = 0;
    }

    v21 = v17;
    if (a12)
    {
      mlx::core::gather_qmm(a2, a3, a4, a5, v22, v20, a8, a9, a10, a11, *a12, *(a12 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v18 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v18, "expected a non-empty mlx_array");
  __cxa_throw(v18, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_greater(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::greater(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_greater_equal(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::greater_equal(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_hadamard_transform(uint64_t a1, uint64_t **a2, unint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      mlx::core::hadamard_transform(a2, a3 & ((a3 >> 1) >> 31) | a3 & 0x100000000, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_identity(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a4)
  {
    v5 = *a4;
    v6 = *(a4 + 2) | 0x100000000;
    mlx::core::identity(a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_imag(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::imag(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_inner(uint64_t a1, uint64_t **a2, uint64_t **a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::inner(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_isclose(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a2 && a3)
  {
    if (a5)
    {
      v5 = *a5;
      v6 = *(a5 + 2) | 0x100000000;
      mlx::core::isclose();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_isfinite(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  if (a2)
  {
    if (a3)
    {
      v3 = *a3;
      v4 = *(a3 + 2) | 0x100000000;
      mlx::core::isfinite(a2);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_isinf(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  if (a2)
  {
    if (a3)
    {
      v3 = *a3;
      v4 = *(a3 + 2) | 0x100000000;
      mlx::core::isinf(a2);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_isnan(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::isnan(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_isneginf(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  if (a2)
  {
    if (a3)
    {
      v3 = *a3;
      v4 = *(a3 + 2) | 0x100000000;
      mlx::core::isneginf(a2);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_isposinf(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  if (a2)
  {
    if (a3)
    {
      v3 = *a3;
      v4 = *(a3 + 2) | 0x100000000;
      mlx::core::isposinf(a2);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_kron(uint64_t a1, uint64_t **a2, uint64_t **a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::kron(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_left_shift(uint64_t a1, uint64_t **a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::left_shift(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_less(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::less(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_less_equal(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::less_equal(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_linspace(double a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  if (a5)
  {
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_log(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::log(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_log10(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::log10(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_log1p(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::log1p(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_log2(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::log2(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_logaddexp(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::logaddexp(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_logcumsumexp(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    if (a6)
    {
      mlx::core::logcumsumexp(a2, a3, a4, a5, *a6, *(a6 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_logical_and(uint64_t a1, uint64_t **a2, uint64_t **a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::logical_and(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_logical_not(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::logical_not(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_logical_or(uint64_t a1, uint64_t **a2, uint64_t **a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::logical_or(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_logsumexp_axes(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a3, a3 + 4 * a4, a4);
    if (a6)
    {
      mlx::core::logsumexp(a2, __p, a5, *a6, *(a6 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v9 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v9, "expected a non-empty mlx_array");
  __cxa_throw(v9, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_logsumexp_axis(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    if (a5)
    {
      mlx::core::logsumexp(a2, a3, a4, *a5, *(a5 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_logsumexp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      mlx::core::logsumexp(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_matmul(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::matmul(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t mlx_max_axes(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5, uint64_t a6)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a3, a3 + 4 * a4, a4);
  if (!a6)
  {
    v15 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v15, "expected a non-empty mlx_stream");
    __cxa_throw(v15, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::max(a2, &__p, a5, *a6, *(a6 + 8) | 0x100000000, &v19);
  v10 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v11 = v19;
  v19 = 0uLL;
  v12 = *(v10 + 8);
  *v10 = v11;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  mlx::core::array::~array(&v19);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  return 0;
}

uint64_t mlx_max_axis(uint64_t *a1, uint64_t a2, int a3, char a4, uint64_t a5)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::max(a2, a3, a4, *a5, *(a5 + 8) | 0x100000000, &v11);
  v6 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v7 = v11;
  v11 = 0uLL;
  v8 = *(v6 + 8);
  *v6 = v7;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  mlx::core::array::~array(&v11);
  return 0;
}

uint64_t mlx_max(uint64_t *a1, uint64_t a2, char a3, uint64_t a4)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::max(a2, a3, *a4, *(a4 + 8) | 0x100000000, &v10);
  v5 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v6 = v10;
  v10 = 0uLL;
  v7 = *(v5 + 8);
  *v5 = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  mlx::core::array::~array(&v10);
  return 0;
}

void mlx_maximum(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::maximum(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_mean_axes(uint64_t a1, mlx::core::detail::InTracing *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a3, a3 + 4 * a4, a4);
    if (a6)
    {
      mlx::core::mean(a2, __p, a5, *a6, *(a6 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v9 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v9, "expected a non-empty mlx_array");
  __cxa_throw(v9, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_mean_axis(uint64_t a1, mlx::core::detail::InTracing *a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    if (a5)
    {
      mlx::core::mean(a2, a3, a4, *a5, *(a5 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_mean(uint64_t a1, mlx::core::detail::InTracing *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      mlx::core::mean(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t mlx_meshgrid(void ***a1, uint64_t *a2, char a3, char *__s, uint64_t a5)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  if (!a5)
  {
    v12 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v12, "expected a non-empty mlx_stream");
    __cxa_throw(v12, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::meshgrid(a2, a3, __p, *a5, *(a5 + 8) | 0x100000000, &v15);
  v9 = *a1;
  if (!*a1)
  {
    operator new();
  }

  std::vector<mlx::core::array>::__vdeallocate(*a1);
  *v9 = v15;
  v9[2] = v16;
  v15 = 0uLL;
  v16 = 0;
  v17 = &v15;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v17);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

uint64_t mlx_min_axes(uint64_t *a1, uint64_t **a2, uint64_t a3, unint64_t a4, char a5, uint64_t a6)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a3, a3 + 4 * a4, a4);
  if (!a6)
  {
    v15 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v15, "expected a non-empty mlx_stream");
    __cxa_throw(v15, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::min(a2, &__p, a5, *a6, *(a6 + 8) | 0x100000000, &v19);
  v10 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v11 = v19;
  v19 = 0uLL;
  v12 = *(v10 + 8);
  *v10 = v11;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  mlx::core::array::~array(&v19);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  return 0;
}

uint64_t mlx_min_axis(uint64_t *a1, uint64_t **a2, int a3, char a4, uint64_t a5)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::min(a2, a3, a4, *a5, *(a5 + 8) | 0x100000000, &v11);
  v6 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v7 = v11;
  v11 = 0uLL;
  v8 = *(v6 + 8);
  *v6 = v7;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  mlx::core::array::~array(&v11);
  return 0;
}

uint64_t mlx_min(uint64_t *a1, uint64_t **a2, char a3, uint64_t a4)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::min(a2, a3, *a4, *(a4 + 8) | 0x100000000, &v10);
  v5 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v6 = v10;
  v10 = 0uLL;
  v7 = *(v5 + 8);
  *v5 = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  mlx::core::array::~array(&v10);
  return 0;
}

void mlx_minimum(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::minimum(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t mlx_moveaxis(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::moveaxis(a2, a3, a4, *a5, *(a5 + 8) | 0x100000000, &v11);
  v6 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v7 = v11;
  v11 = 0uLL;
  v8 = *(v6 + 8);
  *v6 = v7;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  mlx::core::array::~array(&v11);
  return 0;
}

void mlx_multiply(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::multiply(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t mlx_nan_to_num(uint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::nan_to_num(a2, a3 & ((a3 >> 1) >> 31) | a3 & 0x100000000, a4 & ((a4 >> 1) >> 31) | a4 & 0x100000000, *a5, *(a5 + 8) | 0x100000000, &v11);
  v6 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v7 = v11;
  v11 = 0uLL;
  v8 = *(v6 + 8);
  *v6 = v7;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  mlx::core::array::~array(&v11);
  return 0;
}

void mlx_negative(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::negative(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_not_equal(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::not_equal(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_number_of_elements(uint64_t a1, mlx::core::detail::InTracing *a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  if (a2)
  {
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a3, a3 + 4 * a4, a4);
    if (a7)
    {
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v11 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v11, "expected a non-empty mlx_array");
  __cxa_throw(v11, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_ones(uint64_t a1, uint64_t a2, unint64_t a3, int a4, uint64_t *a5)
{
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a2, a2 + 4 * a3, a3);
  if (a5)
  {
    v7 = *a5;
    v9 = *(a5 + 2) | 0x100000000;
    mlx::core::ones(__p);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_ones_like(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::ones_like(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_outer(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::outer(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_pad(int a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, char *__s, uint64_t a11)
{
  if (a2)
  {
    memset(v22, 0, sizeof(v22));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v22, a3, a3 + 4 * a4, a4);
    memset(v21, 0, sizeof(v21));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v21, a5, a5 + 4 * a6, a6);
    memset(v20, 0, sizeof(v20));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v20, a7, a7 + 4 * a8, a8);
    if (a9)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, __s);
      if (a11)
      {
        mlx::core::pad(a2, v22, v21, v20, a9, __p, *a11, *(a11 + 8) | 0x100000000);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v17 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v17, "expected a non-empty mlx_array");
    __cxa_throw(v17, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v16 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v16, "expected a non-empty mlx_array");
  __cxa_throw(v16, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_pad_symmetric(int a1, uint64_t a2, uint64_t a3, uint64_t a4, char *__s, uint64_t a6)
{
  if (a2 && a4)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, __s);
    if (a6)
    {
      mlx::core::pad(a2, a3, a4, __p, *a6, *(a6 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v10 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v10, "expected a non-empty mlx_array");
  __cxa_throw(v10, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_partition_axis(int a1, uint64_t **this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (this)
  {
    if (a5)
    {
      mlx::core::partition(this, a3, a4, *a5, *(a5 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_partition(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      mlx::core::partition(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_power(uint64_t a1, const void ***a2, const void ***a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::power(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t mlx_prod_axes(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5, uint64_t a6)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a3, a3 + 4 * a4, a4);
  if (!a6)
  {
    v15 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v15, "expected a non-empty mlx_stream");
    __cxa_throw(v15, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::prod(a2, &__p, a5, *a6, *(a6 + 8) | 0x100000000, &v19);
  v10 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v11 = v19;
  v19 = 0uLL;
  v12 = *(v10 + 8);
  *v10 = v11;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  mlx::core::array::~array(&v19);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  return 0;
}

uint64_t mlx_prod_axis(uint64_t *a1, uint64_t a2, int a3, char a4, uint64_t a5)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::prod(a2, a3, a4, *a5, *(a5 + 8) | 0x100000000, &v11);
  v6 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v7 = v11;
  v11 = 0uLL;
  v8 = *(v6 + 8);
  *v6 = v7;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  mlx::core::array::~array(&v11);
  return 0;
}

uint64_t mlx_prod(uint64_t *a1, uint64_t a2, char a3, uint64_t a4)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::prod(a2, a3, *a4, *(a4 + 8) | 0x100000000, &v10);
  v5 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v6 = v10;
  v10 = 0uLL;
  v7 = *(v5 + 8);
  *v5 = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  mlx::core::array::~array(&v10);
  return 0;
}

void mlx_put_along_axis(uint64_t a1, mlx::core::array *a2, void *a3, uint64_t **a4, int a5, uint64_t a6)
{
  if (a2 && a3 && a4)
  {
    if (a6)
    {
      mlx::core::put_along_axis(a2, a3, a4, a5, *a6, *(a6 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t mlx_quantize(void **a1, void **a2, void **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_27;
  }

  if (!a7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_27:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::quantize(&v24, a4, a5, a6, *a7, *(a7 + 8) | 0x100000000);
  v10 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v11 = v24;
  if (*v10 != v24)
  {
    v12 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = v10[1];
    *v10 = v11;
    v10[1] = v12;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  v14 = *a2;
  if (!*a2)
  {
    operator new();
  }

  v15 = v26;
  if (*v14 != v26)
  {
    v16 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
    }

    v17 = v14[1];
    *v14 = v15;
    v14[1] = v16;
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }

  v18 = *a3;
  if (!*a3)
  {
    operator new();
  }

  v19 = v28;
  if (*v18 != v28)
  {
    v20 = v29;
    if (v29)
    {
      atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
    }

    v21 = v18[1];
    *v18 = v19;
    v18[1] = v20;
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }
  }

  mlx::core::array::~array(&v28);
  mlx::core::array::~array(&v26);
  mlx::core::array::~array(&v24);
  return 0;
}

void mlx_quantized_matmul(uint64_t a1, void *a2, void *a3, uint64_t **a4, uint64_t **a5, char a6, unsigned int a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    v9 = a2[1];
    v21[0] = *a2;
    v21[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    if (a3)
    {
      v10 = a3[1];
      v20[0] = *a3;
      v20[1] = v10;
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      }

      if (a4)
      {
        v11 = a4[1];
        v19[0] = *a4;
        v19[1] = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
        }

        if (a5)
        {
          v12 = a5[1];
          v18[0] = *a5;
          v18[1] = v12;
          if (v12)
          {
            atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
          }

          if (a9)
          {
            mlx::core::quantized_matmul(v21, v20, v19, v18, a6, a7, a8, a8, *a9, *(a9 + 8) | 0x100000000);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v16 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v16, "expected a non-empty mlx_array");
        __cxa_throw(v16, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v15 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v15, "expected a non-empty mlx_array");
      __cxa_throw(v15, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v14 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v14, "expected a non-empty mlx_array");
    __cxa_throw(v14, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v13 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v13, "expected a non-empty mlx_array");
  __cxa_throw(v13, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_radians(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2)
  {
    if (a3)
    {
      v3 = *a3;
      v4 = *(a3 + 2) | 0x100000000;
      mlx::core::radians(a2);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t mlx_real(uint64_t *a1, uint64_t **a2, uint64_t a3)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::real(a2, *a3, *(a3 + 8) | 0x100000000, &v9);
  v4 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v5 = v9;
  v9 = 0uLL;
  v6 = *(v4 + 8);
  *v4 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  mlx::core::array::~array(&v9);
  return 0;
}

void mlx_reciprocal(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2)
  {
    if (a3)
    {
      v3 = *a3;
      v4 = *(a3 + 2) | 0x100000000;
      mlx::core::reciprocal(a2);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_remainder(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::remainder(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t mlx_repeat_axis(uint64_t *a1, uint64_t **a2, std::vector<int>::value_type a3, int a4, uint64_t a5)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::repeat(a2, a3, a4, *a5, *(a5 + 8) | 0x100000000, &v11);
  v6 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v7 = v11;
  v11 = 0uLL;
  v8 = *(v6 + 8);
  *v6 = v7;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  mlx::core::array::~array(&v11);
  return 0;
}

uint64_t mlx_repeat(uint64_t *a1, uint64_t **a2, std::vector<int>::value_type a3, uint64_t a4)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::repeat(a2, a3, *a4, *(a4 + 8) | 0x100000000, &v10);
  v5 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v6 = v10;
  v10 = 0uLL;
  v7 = *(v5 + 8);
  *v5 = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  mlx::core::array::~array(&v10);
  return 0;
}

uint64_t mlx_reshape(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  __p = 0;
  v15 = 0;
  v16 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a3, a3 + 4 * a4, a4);
  if (!a5)
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v13, "expected a non-empty mlx_stream");
    __cxa_throw(v13, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::reshape(a2, &__p, *a5, *(a5 + 8) | 0x100000000, &v17);
  v8 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v9 = v17;
  v17 = 0uLL;
  v10 = *(v8 + 8);
  *v8 = v9;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  mlx::core::array::~array(&v17);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return 0;
}

void mlx_right_shift(uint64_t a1, uint64_t **a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::right_shift(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t mlx_roll_axis(uint64_t *a1, mlx::core::array *a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a3, a3 + 4 * a4, a4);
  if (!a6)
  {
    v15 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v15, "expected a non-empty mlx_stream");
    __cxa_throw(v15, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::roll(a2, &__p, a5, *a6, *(a6 + 8) | 0x100000000, &v19);
  v10 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v11 = v19;
  v19 = 0uLL;
  v12 = *(v10 + 8);
  *v10 = v11;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  mlx::core::array::~array(&v19);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  return 0;
}

uint64_t mlx_roll_axes(uint64_t *a1, mlx::core::array *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v21, a3, a3 + 4 * a4, a4);
  __p = 0;
  v19 = 0;
  v20 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a5, a5 + 4 * a6, a6);
  if (!a7)
  {
    v17 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v17, "expected a non-empty mlx_stream");
    __cxa_throw(v17, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::roll(a2, &v21, &__p, *a7, *(a7 + 8) | 0x100000000, &v24);
  v12 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v13 = v24;
  v24 = 0uLL;
  v14 = *(v12 + 8);
  *v12 = v13;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  mlx::core::array::~array(&v24);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  return 0;
}

uint64_t mlx_roll(uint64_t *a1, uint64_t **a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  __p = 0;
  v15 = 0;
  v16 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a3, a3 + 4 * a4, a4);
  if (!a5)
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v13, "expected a non-empty mlx_stream");
    __cxa_throw(v13, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::roll(a2, &__p, *a5, *(a5 + 8) | 0x100000000, &v17);
  v8 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v9 = v17;
  v17 = 0uLL;
  v10 = *(v8 + 8);
  *v8 = v9;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  mlx::core::array::~array(&v17);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return 0;
}

void mlx_round(uint64_t a1, uint64_t **a2, int a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      mlx::core::round(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_rsqrt(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::rsqrt(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_scatter(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  if (a2)
  {
    if (!a3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
      goto LABEL_9;
    }

    if (a4)
    {
      memset(__p, 0, sizeof(__p));
      std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a5, a5 + 4 * a6, a6);
      if (a7)
      {
        mlx::core::scatter(a2, a3, a4, __p, *a7, *(a7 + 8) | 0x100000000);
      }

      v12 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v12, "expected a non-empty mlx_stream");
      __cxa_throw(v12, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
LABEL_9:
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_scatter_add(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  if (a2)
  {
    if (!a3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
      goto LABEL_9;
    }

    if (a4)
    {
      memset(__p, 0, sizeof(__p));
      std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a5, a5 + 4 * a6, a6);
      if (a7)
      {
        mlx::core::scatter_add(a2, a3, a4, __p, *a7, *(a7 + 8) | 0x100000000);
      }

      v12 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v12, "expected a non-empty mlx_stream");
      __cxa_throw(v12, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
LABEL_9:
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_scatter_add_axis(uint64_t a1, mlx::core::array *a2, void *a3, uint64_t **a4, int a5, uint64_t a6)
{
  if (a2 && a3 && a4)
  {
    if (a6)
    {
      mlx::core::scatter_add_axis(a2, a3, a4, a5, *a6, *(a6 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_scatter_max(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  if (a2)
  {
    if (!a3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
      goto LABEL_9;
    }

    if (a4)
    {
      memset(__p, 0, sizeof(__p));
      std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a5, a5 + 4 * a6, a6);
      if (a7)
      {
        mlx::core::scatter_max(a2, a3, a4, __p, *a7, *(a7 + 8) | 0x100000000);
      }

      v12 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v12, "expected a non-empty mlx_stream");
      __cxa_throw(v12, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
LABEL_9:
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_scatter_min(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  if (a2)
  {
    if (!a3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
      goto LABEL_9;
    }

    if (a4)
    {
      memset(__p, 0, sizeof(__p));
      std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a5, a5 + 4 * a6, a6);
      if (a7)
      {
        mlx::core::scatter_min(a2, a3, a4, __p, *a7, *(a7 + 8) | 0x100000000);
      }

      v12 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v12, "expected a non-empty mlx_stream");
      __cxa_throw(v12, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
LABEL_9:
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_scatter_prod(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  if (a2)
  {
    if (!a3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
      goto LABEL_9;
    }

    if (a4)
    {
      memset(__p, 0, sizeof(__p));
      std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a5, a5 + 4 * a6, a6);
      if (a7)
      {
        mlx::core::scatter_prod(a2, a3, a4, __p, *a7, *(a7 + 8) | 0x100000000);
      }

      v12 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v12, "expected a non-empty mlx_stream");
      __cxa_throw(v12, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
LABEL_9:
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_sigmoid(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::sigmoid(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_sign(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::sign(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_sin(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::sin(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_sinh(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::sinh(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t mlx_slice(uint64_t *a1, const void ***a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v27 = 0;
  v28 = 0;
  v29 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v27, a3, a3 + 4 * a4, a4);
  v24 = 0;
  v25 = 0;
  v26 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v24, a5, a5 + 4 * a6, a6);
  __p = 0;
  v22 = 0;
  v23 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a7, a7 + 4 * a8, a8);
  if (!a9)
  {
    v20 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v20, "expected a non-empty mlx_stream");
    __cxa_throw(v20, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::slice(a2, &v27, &v24, &__p, *a9, *(a9 + 8) | 0x100000000, &v30);
  v15 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v16 = v30;
  v30 = 0uLL;
  v17 = *(v15 + 8);
  *v15 = v16;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  mlx::core::array::~array(&v30);
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  return 0;
}

void mlx_slice_dynamic(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  if (a2 && a3)
  {
    memset(v16, 0, sizeof(v16));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v16, a4, a4 + 4 * a5, a5);
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a6, a6 + 4 * a7, a7);
    if (a8)
    {
      mlx::core::slice(a2, a3, v16, __p, *a8, *(a8 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v13 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v13, "expected a non-empty mlx_array");
  __cxa_throw(v13, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t mlx_slice_update(uint64_t *a1, int ***a2, uint64_t **a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10)
{
  if (!a2 || !a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v28 = 0;
  v29 = 0;
  v30 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v28, a4, a4 + 4 * a5, a5);
  v25 = 0;
  v26 = 0;
  v27 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v25, a6, a6 + 4 * a7, a7);
  __p = 0;
  v23 = 0;
  v24 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a8, a8 + 4 * a9, a9);
  if (!a10)
  {
    v21 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v21, "expected a non-empty mlx_stream");
    __cxa_throw(v21, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::slice_update(a2, a3, &v28, &v25, &__p, *a10, *(a10 + 8) | 0x100000000, &v31);
  v16 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v17 = v31;
  v31 = 0uLL;
  v18 = *(v16 + 8);
  *v16 = v17;
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  mlx::core::array::~array(&v31);
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  return 0;
}

void mlx_slice_update_dynamic(uint64_t a1, uint64_t **a2, uint64_t **a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  if (a2 && a3 && a4)
  {
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a5, a5 + 4 * a6, a6);
    if (a7)
    {
      mlx::core::slice_update(a2, a3, a4, __p, *a7, *(a7 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v11 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v11, "expected a non-empty mlx_array");
  __cxa_throw(v11, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t mlx_softmax_axes(uint64_t *a1, uint64_t **a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a3, a3 + 4 * a4, a4);
  if (!a6)
  {
    v15 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v15, "expected a non-empty mlx_stream");
    __cxa_throw(v15, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::softmax(a2, &__p, a5, *a6, *(a6 + 8) | 0x100000000, &v19);
  v10 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v11 = v19;
  v19 = 0uLL;
  v12 = *(v10 + 8);
  *v10 = v11;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  mlx::core::array::~array(&v19);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  return 0;
}

uint64_t mlx_softmax_axis(uint64_t *a1, uint64_t **a2, int a3, int a4, uint64_t a5)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_12;
  }

  if (!a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_12:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v8 = *a5;
  v9 = *(a5 + 8);
  v16 = a3;
  v18 = 0;
  v19 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v16, &__p, 1uLL);
  mlx::core::softmax(a2, &__p, a4, v8, v9 | 0x100000000, &v15);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  v10 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v11 = v15;
  v15 = 0uLL;
  v12 = *(v10 + 8);
  *v10 = v11;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  mlx::core::array::~array(&v15);
  return 0;
}

uint64_t mlx_softmax(uint64_t *a1, uint64_t **a2, int a3, uint64_t a4)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::softmax(a2, a3, *a4, *(a4 + 8) | 0x100000000, &v10);
  v5 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v6 = v10;
  v10 = 0uLL;
  v7 = *(v5 + 8);
  *v5 = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  mlx::core::array::~array(&v10);
  return 0;
}

void mlx_sort_axis(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      mlx::core::sort(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_sort(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::sort(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t mlx_split(void ***a1, uint64_t **this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!this)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_8;
  }

  if (!a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_8:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::split(this, a3, a4, *a5, *(a5 + 8) | 0x100000000, &v9);
  v6 = *a1;
  if (!*a1)
  {
    operator new();
  }

  std::vector<mlx::core::array>::__vdeallocate(*a1);
  *v6 = v9;
  v6[2] = v10;
  v9 = 0uLL;
  v10 = 0;
  v11 = &v9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v11);
  return 0;
}

uint64_t mlx_split_sections(void ***a1, uint64_t **a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  __p = 0;
  v15 = 0;
  v16 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a3, a3 + 4 * a4, a4);
  if (!a6)
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v13, "expected a non-empty mlx_stream");
    __cxa_throw(v13, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::split(a2, &__p, a5, *a6, *(a6 + 8) | 0x100000000, &v17);
  v10 = *a1;
  if (!*a1)
  {
    operator new();
  }

  std::vector<mlx::core::array>::__vdeallocate(*a1);
  *v10 = v17;
  v10[2] = v18;
  v17 = 0uLL;
  v18 = 0;
  v19 = &v17;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v19);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return 0;
}

void mlx_sqrt(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::sqrt(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_square(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::square(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t mlx_squeeze_axes(uint64_t *a1, uint64_t **a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  __p = 0;
  v15 = 0;
  v16 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a3, a3 + 4 * a4, a4);
  if (!a5)
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v13, "expected a non-empty mlx_stream");
    __cxa_throw(v13, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::squeeze(a2, &__p, *a5, *(a5 + 8) | 0x100000000, &v17);
  v8 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v9 = v17;
  v17 = 0uLL;
  v10 = *(v8 + 8);
  *v8 = v9;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  mlx::core::array::~array(&v17);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return 0;
}

void mlx_squeeze_axis(uint64_t a1, uint64_t **a2, int a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      mlx::core::squeeze(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_squeeze(int a1, uint64_t **this, uint64_t a3)
{
  if (this)
  {
    if (a3)
    {
      mlx::core::squeeze(this, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t mlx_stack_axis(uint64_t *a1, const void ****a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
    goto LABEL_10;
  }

  if (!a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::stack(a2, a3, *a4, *(a4 + 8) | 0x100000000, &v10);
  v5 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v6 = v10;
  v10 = 0uLL;
  v7 = *(v5 + 8);
  *v5 = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  mlx::core::array::~array(&v10);
  return 0;
}

uint64_t mlx_stack(uint64_t *a1, const void ****a2, uint64_t a3)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
    goto LABEL_10;
  }

  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::stack(a2, *a3, *(a3 + 8) | 0x100000000, &v9);
  v4 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v5 = v9;
  v9 = 0uLL;
  v6 = *(v4 + 8);
  *v4 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  mlx::core::array::~array(&v9);
  return 0;
}

void mlx_std_axes(uint64_t a1, mlx::core::detail::InTracing *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a3, a3 + 4 * a4, a4);
    if (a7)
    {
      mlx::core::std(a2, __p, a5, a6, *a7, *(a7 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v11 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v11, "expected a non-empty mlx_array");
  __cxa_throw(v11, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_std_axis(uint64_t a1, mlx::core::detail::InTracing *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    if (a6)
    {
      mlx::core::std(a2, a3, a4, a5, *a6, *(a6 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_std(uint64_t a1, mlx::core::detail::InTracing *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    if (a5)
    {
      mlx::core::std(a2, a3, a4, *a5, *(a5 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_stop_gradient(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::stop_gradient(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_subtract(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::subtract(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t mlx_sum_axes(uint64_t *a1, uint64_t **a2, uint64_t a3, unint64_t a4, char a5, uint64_t a6)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a3, a3 + 4 * a4, a4);
  if (!a6)
  {
    v15 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v15, "expected a non-empty mlx_stream");
    __cxa_throw(v15, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::sum(a2, &__p, a5, *a6, *(a6 + 8) | 0x100000000, &v19);
  v10 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v11 = v19;
  v19 = 0uLL;
  v12 = *(v10 + 8);
  *v10 = v11;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  mlx::core::array::~array(&v19);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  return 0;
}

uint64_t mlx_sum_axis(uint64_t *a1, uint64_t **a2, int a3, char a4, uint64_t a5)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::sum(a2, a3, a4, *a5, *(a5 + 8) | 0x100000000, &v11);
  v6 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v7 = v11;
  v11 = 0uLL;
  v8 = *(v6 + 8);
  *v6 = v7;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  mlx::core::array::~array(&v11);
  return 0;
}

uint64_t mlx_sum(uint64_t *a1, uint64_t **a2, char a3, uint64_t a4)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::sum(a2, a3, *a4, *(a4 + 8) | 0x100000000, &v10);
  v5 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v6 = v10;
  v10 = 0uLL;
  v7 = *(v5 + 8);
  *v5 = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  mlx::core::array::~array(&v10);
  return 0;
}

void mlx_swapaxes(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    if (a5)
    {
      mlx::core::swapaxes(a2, a3, a4, *a5, *(a5 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_take_axis(uint64_t a1, uint64_t **a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a2 && a3)
  {
    if (a5)
    {
      mlx::core::take(a2, a3, a4, *a5, *(a5 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_take(uint64_t a1, uint64_t **a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::take(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_take_along_axis(uint64_t a1, void *a2, void *a3, int a4, uint64_t a5)
{
  if (a2 && a3)
  {
    if (a5)
    {
      mlx::core::take_along_axis(a2, a3, a4, *a5, *(a5 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_tan(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::tan(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_tanh(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::tanh(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_tensordot(uint64_t a1, uint64_t **a2, uint64_t **a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  if (a2 && a3)
  {
    memset(v16, 0, sizeof(v16));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v16, a4, a4 + 4 * a5, a5);
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a6, a6 + 4 * a7, a7);
    if (a8)
    {
      mlx::core::tensordot(a2, a3, v16, __p, *a8, *(a8 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v13 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v13, "expected a non-empty mlx_array");
  __cxa_throw(v13, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_tensordot_axis(uint64_t a1, uint64_t **a2, uint64_t **a3, unsigned int a4, uint64_t a5)
{
  if (a2 && a3)
  {
    if (a5)
    {
      mlx::core::tensordot(a2, a3, a4, *a5, *(a5 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t mlx_tile(uint64_t *a1, uint64_t **a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  memset(&__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a3, a3 + 4 * a4, a4);
  if (!a5)
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v13, "expected a non-empty mlx_stream");
    __cxa_throw(v13, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::tile(a2, &__p, *a5, *(a5 + 8) | 0x100000000, &v15);
  v8 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v9 = v15;
  v15 = 0uLL;
  v10 = *(v8 + 8);
  *v8 = v9;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  mlx::core::array::~array(&v15);
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  return 0;
}

uint64_t mlx_topk_axis(uint64_t *a1, uint64_t **this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!this)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::topk(this, a3, a4, *a5, *(a5 + 8) | 0x100000000, &v11);
  v6 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v7 = v11;
  v11 = 0uLL;
  v8 = *(v6 + 8);
  *v6 = v7;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  mlx::core::array::~array(&v11);
  return 0;
}

uint64_t mlx_topk(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::topk(a2, a3, *a4, *(a4 + 8) | 0x100000000, &v10);
  v5 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v6 = v10;
  v10 = 0uLL;
  v7 = *(v5 + 8);
  *v5 = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  mlx::core::array::~array(&v10);
  return 0;
}

void mlx_trace(uint64_t a1, uint64_t **a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  if (a2)
  {
    if (a7)
    {
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_transpose_axes(uint64_t a1, uint64_t **a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a2)
  {
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a3, a3 + 4 * a4, a4);
    if (a5)
    {
      mlx::core::transpose(a2, __p, *a5, *(a5 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v7 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v7, "expected a non-empty mlx_array");
  __cxa_throw(v7, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_transpose(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::transpose(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_tri(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (a6)
  {
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_tril(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = a2[1];
    v7[0] = *a2;
    v7[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    if (a4)
    {
      mlx::core::tril(v7, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v5 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v5, "expected a non-empty mlx_array");
  __cxa_throw(v5, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_triu(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  if (a2)
  {
    v4 = a2[1];
    v7[0] = *a2;
    v7[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    if (a4)
    {
      mlx::core::triu(v7, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v5 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v5, "expected a non-empty mlx_array");
  __cxa_throw(v5, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t mlx_unflatten(uint64_t *a1, uint64_t **a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a4, a4 + 4 * a5, a5);
  if (!a6)
  {
    v15 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v15, "expected a non-empty mlx_stream");
    __cxa_throw(v15, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::unflatten(a2, a3, &__p, *a6, *(a6 + 8) | 0x100000000, &v19);
  v10 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v11 = v19;
  v19 = 0uLL;
  v12 = *(v10 + 8);
  *v10 = v11;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  mlx::core::array::~array(&v19);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  return 0;
}

void mlx_var_axes(uint64_t a1, mlx::core::detail::InTracing *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a3, a3 + 4 * a4, a4);
    if (a7)
    {
      mlx::core::var(a2, __p, a5, a6, *a7, *(a7 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v11 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v11, "expected a non-empty mlx_array");
  __cxa_throw(v11, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_var_axis(uint64_t a1, mlx::core::detail::InTracing *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    if (a6)
    {
      mlx::core::var(a2, a3, a4, a5, *a6, *(a6 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_var(uint64_t a1, mlx::core::detail::InTracing *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    if (a5)
    {
      mlx::core::var(a2, a3, a4, *a5, *(a5 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t mlx_view(uint64_t *a1, uint64_t **a2, int a3, uint64_t a4)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  LODWORD(v12) = v4;
  BYTE4(v12) = BYTE4(v4);
  if (!a4)
  {
    v11 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v11, "expected a non-empty mlx_stream");
    __cxa_throw(v11, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::view(a2, &v12, *a4, *(a4 + 8) | 0x100000000, &v13);
  v6 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v7 = v13;
  v13 = 0uLL;
  v8 = *(v6 + 8);
  *v6 = v7;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  mlx::core::array::~array(&v13);
  return 0;
}

void mlx_where(uint64_t a1, uint64_t **a2, void *a3, void *a4, uint64_t a5)
{
  if (a2 && a3 && a4)
  {
    if (a5)
    {
      mlx::core::where(a2, a3, a4, *a5, *(a5 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_zeros(uint64_t a1, uint64_t a2, unint64_t a3, int a4, uint64_t *a5)
{
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a2, a2 + 4 * a3, a3);
  if (a5)
  {
    v7 = *a5;
    v9 = *(a5 + 2) | 0x100000000;
    mlx::core::zeros(__p);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_zeros_like(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::zeros_like(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_vector_array_new()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  operator new();
}

uint64_t mlx_vector_array_set(uint64_t *a1, uint64_t **a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = *a1;
  if (!v2)
  {
    operator new();
  }

  if (v2 != a2)
  {
    std::vector<mlx::core::array>::__assign_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v2, *a2, a2[1], (a2[1] - *a2) >> 4);
  }

  return 0;
}

uint64_t mlx_vector_array_free(void **a1)
{
  if (a1)
  {
    v3 = a1;
    std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v3);
    MEMORY[0x25F851760](a1, 0x20C40960023A9);
  }

  return 0;
}

void mlx_vector_array_new_value(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = a1[1];
    v5[0] = *a1;
    v5[1] = v1;
    if (v1)
    {
      atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
    }

    v3 = 0uLL;
    v4 = 0;
    std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(&v3, v5, &v6, 1uLL);
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t mlx_vector_array_set_data(uint64_t ***a1, __int128 **a2, uint64_t a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  if (a3)
  {
    v4 = a3;
    do
    {
      if (!*a2)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      std::vector<mlx::core::array>::push_back[abi:ne200100](&v9, *a2++);
      --v4;
    }

    while (v4);
  }

  v6 = *a1;
  if (!*a1)
  {
    operator new();
  }

  if (v6 != &v9)
  {
    std::vector<mlx::core::array>::__assign_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v6, v9, v10, (v10 - v9) >> 4);
  }

  v12 = &v9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v12);
  return 0;
}

uint64_t mlx_vector_array_set_value(void ***a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = a2[1];
  v11[0] = *a2;
  v11[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = 0uLL;
  v9 = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(&v8, v11, &v12, 1uLL);
  v4 = *a1;
  if (!*a1)
  {
    operator new();
  }

  std::vector<mlx::core::array>::__vdeallocate(*a1);
  *v4 = v8;
  v4[2] = v9;
  v8 = 0uLL;
  v9 = 0;
  v10 = &v8;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v10);
  mlx::core::array::~array(v11);
  result = 0;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlx_vector_array_append_data(void *a1, __int128 **a2, uint64_t a3)
{
  if (a3)
  {
    if (a1)
    {
      v4 = a3;
      while (*a2)
      {
        std::vector<mlx::core::array>::push_back[abi:ne200100](a1, *a2++);
        if (!--v4)
        {
          return 0;
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    }

    else
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
    }

    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return 0;
}

uint64_t mlx_vector_array_append_value(void *a1, __int128 *a2)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
    goto LABEL_6;
  }

  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::vector<mlx::core::array>::push_back[abi:ne200100](a1, a2);
  return 0;
}

uint64_t mlx_vector_array_get(void **a1, void *a2, unint64_t a3)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (a3 >= (a2[1] - *a2) >> 4)
  {
    std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
  }

  v3 = *a1;
  if (!v3)
  {
    operator new();
  }

  mlx::core::array::operator=(v3, (*a2 + 16 * a3));
  return 0;
}

uint64_t mlx_vector_array_size(void *a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return (a1[1] - *a1) >> 4;
}

void mlx_vector_vector_array_new()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  operator new();
}

uint64_t mlx_vector_vector_array_set(uint64_t *a1, uint64_t ***a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_vector_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = *a1;
  if (!v2)
  {
    operator new();
  }

  if (v2 != a2)
  {
    std::vector<std::vector<mlx::core::array>>::__assign_with_size[abi:ne200100]<std::vector<mlx::core::array>*,std::vector<mlx::core::array>*>(v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2));
  }

  return 0;
}

uint64_t mlx_vector_vector_array_free(void **a1)
{
  if (a1)
  {
    v3 = a1;
    std::vector<std::vector<mlx::core::array>>::__destroy_vector::operator()[abi:ne200100](&v3);
    MEMORY[0x25F851760](a1, 0x20C40960023A9);
  }

  return 0;
}

uint64_t std::vector<std::vector<mlx::core::array>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<mlx::core::array>>::__emplace_back_slow_path<std::vector<mlx::core::array> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<mlx::core::array>>::__construct_one_at_end[abi:ne200100]<std::vector<mlx::core::array> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void mlx_vector_vector_array_new_value(uint64_t *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    memset(v4, 0, sizeof(v4));
    std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(v4, *a1, a1[1], (a1[1] - *a1) >> 4);
    v2 = 0uLL;
    v3 = 0;
    std::vector<std::vector<mlx::core::array>>::__init_with_size[abi:ne200100]<std::vector<mlx::core::array> const*,std::vector<mlx::core::array> const*>(&v2, v4, &v5, 1uLL);
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t mlx_vector_vector_array_set_data(uint64_t ****a1, uint64_t **a2, uint64_t a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  if (a3)
  {
    v4 = a3;
    do
    {
      if (!*a2)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      std::vector<std::vector<mlx::core::array>>::push_back[abi:ne200100](&v9, *a2++);
      --v4;
    }

    while (v4);
  }

  v6 = *a1;
  if (!*a1)
  {
    operator new();
  }

  if (v6 != &v9)
  {
    std::vector<std::vector<mlx::core::array>>::__assign_with_size[abi:ne200100]<std::vector<mlx::core::array>*,std::vector<mlx::core::array>*>(v6, v9, v10, 0xAAAAAAAAAAAAAAABLL * (v10 - v9));
  }

  v12 = &v9;
  std::vector<std::vector<mlx::core::array>>::__destroy_vector::operator()[abi:ne200100](&v12);
  return 0;
}

uint64_t mlx_vector_vector_array_set_value(void ****a1, uint64_t *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  memset(v10, 0, sizeof(v10));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(v10, *a2, a2[1], (a2[1] - *a2) >> 4);
  v7 = 0uLL;
  v8 = 0;
  std::vector<std::vector<mlx::core::array>>::__init_with_size[abi:ne200100]<std::vector<mlx::core::array> const*,std::vector<mlx::core::array> const*>(&v7, v10, &v11, 1uLL);
  v3 = *a1;
  if (!*a1)
  {
    operator new();
  }

  std::vector<std::vector<mlx::core::array>>::__vdeallocate(*a1);
  *v3 = v7;
  v3[2] = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  std::vector<std::vector<mlx::core::array>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = v10;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v9);
  result = 0;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlx_vector_vector_array_append_data(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  if (a3)
  {
    if (a1)
    {
      v4 = a3;
      while (*a2)
      {
        std::vector<std::vector<mlx::core::array>>::push_back[abi:ne200100](a1, *a2++);
        if (!--v4)
        {
          return 0;
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
    }

    else
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_vector_array");
    }

    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return 0;
}

uint64_t mlx_vector_vector_array_append_value(uint64_t a1, uint64_t *a2)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_vector_array");
    goto LABEL_6;
  }

  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::vector<std::vector<mlx::core::array>>::push_back[abi:ne200100](a1, a2);
  return 0;
}

uint64_t mlx_vector_vector_array_get(uint64_t *a1, void *a2, unint64_t a3)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_vector_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) <= a3)
  {
    std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
  }

  v3 = (*a2 + 24 * a3);
  v4 = *a1;
  if (!v4)
  {
    operator new();
  }

  if (v4 != v3)
  {
    std::vector<mlx::core::array>::__assign_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v4, *v3, v3[1], (v3[1] - *v3) >> 4);
  }

  return 0;
}

unint64_t mlx_vector_vector_array_size(void *a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_vector_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
}

uint64_t mlx_vector_int_set(char ***a1, char **a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_int");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = *a1;
  if (!v2)
  {
    operator new();
  }

  if (v2 != a2)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v2, *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  return 0;
}

uint64_t mlx_vector_int_free(uint64_t a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      *(a1 + 8) = v2;
      operator delete(v2);
    }

    MEMORY[0x25F851760](a1, 0x10C402FEFCB83);
  }

  return 0;
}

void mlx_vector_int_new_value(int a1)
{
  v1 = a1;
  v3 = 0;
  v2 = 0uLL;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v2, &v1, &v2, 1uLL);
  operator new();
}

uint64_t mlx_vector_int_set_data(void ***a1, _DWORD *a2, uint64_t a3)
{
  __p = 0;
  v9 = 0;
  v10 = 0;
  if (a3)
  {
    v4 = a3;
    do
    {
      std::vector<int>::push_back[abi:ne200100](&__p, a2++);
      --v4;
    }

    while (v4);
  }

  v6 = *a1;
  if (!*a1)
  {
    operator new();
  }

  if (v6 != &__p)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v6, __p, v9, (v9 - __p) >> 2);
  }

  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return 0;
}

uint64_t mlx_vector_int_set_value(uint64_t *a1, int a2)
{
  v6 = a2;
  v8 = 0;
  v7 = 0uLL;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v7, &v6, &v7, 1uLL);
  v3 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v4 = *v3;
  if (*v3)
  {
    *(v3 + 8) = v4;
    operator delete(v4);
    *v3 = 0;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
  }

  *v3 = v7;
  *(v3 + 16) = v8;
  return 0;
}

uint64_t mlx_vector_int_append_data(const void **a1, _DWORD *a2, uint64_t a3)
{
  if (a3)
  {
    if (!a1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_int");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v4 = a3;
    do
    {
      std::vector<int>::push_back[abi:ne200100](a1, a2++);
      --v4;
    }

    while (v4);
  }

  return 0;
}

uint64_t mlx_vector_int_append_value(const void **a1, int a2)
{
  v4 = a2;
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_int");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::vector<int>::push_back[abi:ne200100](a1, &v4);
  return 0;
}

uint64_t mlx_vector_int_get(_DWORD *a1, void *a2, unint64_t a3)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_int");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (a3 >= (a2[1] - *a2) >> 2)
  {
    std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
  }

  *a1 = *(*a2 + 4 * a3);
  return 0;
}

uint64_t mlx_vector_int_size(void *a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_int");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return (a1[1] - *a1) >> 2;
}

void mlx_vector_string_new()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  operator new();
}

uint64_t mlx_vector_string_set(std::vector<std::string> **a1, std::string **a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_string");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = *a1;
  if (!v2)
  {
    operator new();
  }

  if (v2 != a2)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  return 0;
}

uint64_t mlx_vector_string_free(void **a1)
{
  if (a1)
  {
    v3 = a1;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
    MEMORY[0x25F851760](a1, 0x20C40960023A9);
  }

  return 0;
}

void std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v18.__end_cap_.__value_ = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18.__end_ = v16;
    v18.__end_cap_.__value_ = v17;
    v18.__first_ = v16;
    v18.__begin_ = v16;
    std::__split_buffer<std::string>::~__split_buffer(&v18);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = v4 + 24;
  }

  *(a1 + 8) = v7;
}

void mlx_vector_string_new_value(char *__s)
{
  v4 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  v1 = 0uLL;
  v2 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v1, __p, &v4, 1uLL);
  operator new();
}

uint64_t mlx_vector_string_set_data(std::vector<std::string> **a1, char **a2, uint64_t a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (a3)
  {
    v4 = a3;
    do
    {
      std::string::basic_string[abi:ne200100]<0>(__p, *a2);
      std::vector<std::string>::push_back[abi:ne200100](&v10, __p);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }

      ++a2;
      --v4;
    }

    while (v4);
  }

  v6 = *a1;
  if (!*a1)
  {
    operator new();
  }

  if (v6 != &v10)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(v6, v10, v11, 0xAAAAAAAAAAAAAAABLL * ((v11 - v10) >> 3));
  }

  __p[0] = &v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  return 0;
}

uint64_t mlx_vector_string_set_value(std::vector<std::string> **a1, char *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v6 = 0uLL;
  v7 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v6, __p, &v11, 1uLL);
  v3 = *a1;
  if (!*a1)
  {
    operator new();
  }

  std::vector<std::string>::__vdeallocate(*a1);
  *&v3->__begin_ = v6;
  v3->__end_cap_.__value_ = v7;
  v6 = 0uLL;
  v7 = 0;
  v8 = &v6;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  result = 0;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlx_vector_string_append_data(uint64_t a1, char **a2, uint64_t a3)
{
  if (a3)
  {
    if (!a1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_string");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v4 = a3;
    do
    {
      std::string::basic_string[abi:ne200100]<0>(__p, *a2);
      std::vector<std::string>::push_back[abi:ne200100](a1, __p);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }

      ++a2;
      --v4;
    }

    while (v4);
  }

  return 0;
}

uint64_t mlx_vector_string_append_value(uint64_t a1, char *a2)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_string");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  std::vector<std::string>::push_back[abi:ne200100](a1, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

uint64_t mlx_vector_string_get(uint64_t *a1, void *a2, unint64_t a3)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_string");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) <= a3)
  {
    std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
  }

  v3 = *a2 + 24 * a3;
  if (*(v3 + 23) < 0)
  {
    v3 = *v3;
  }

  *a1 = v3;
  return 0;
}

unint64_t mlx_vector_string_size(void *a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_string");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
}

void std::vector<std::vector<mlx::core::array>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void std::vector<std::vector<mlx::core::array>>::__assign_with_size[abi:ne200100]<std::vector<mlx::core::array>*,std::vector<mlx::core::array>*>(uint64_t a1, uint64_t **a2, uint64_t **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    std::vector<std::vector<mlx::core::array>>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::vector<mlx::core::array>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<mlx::core::array> *,std::vector<mlx::core::array> *,std::vector<mlx::core::array> *>(&v16, a2, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        v14 -= 3;
        v17 = v14;
        std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v17);
      }

      while (v14 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<mlx::core::array> *,std::vector<mlx::core::array> *,std::vector<mlx::core::array> *>(&v15, a2, (a2 + v11), v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<mlx::core::array>>,std::vector<mlx::core::array>*,std::vector<mlx::core::array>*,std::vector<mlx::core::array>*>(a1, (a2 + v11), a3, *(a1 + 8));
  }
}

void std::vector<std::vector<mlx::core::array>>::__vdeallocate(void ***a1)
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
        v3 -= 3;
        v5 = v3;
        std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v5);
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

void std::vector<std::vector<mlx::core::array>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<mlx::core::array>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<mlx::core::array>>,std::vector<mlx::core::array>*,std::vector<mlx::core::array>*,std::vector<mlx::core::array>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(v4, *v6, v6[1], (v6[1] - *v6) >> 4);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<mlx::core::array>>,std::vector<mlx::core::array>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<mlx::core::array>>,std::vector<mlx::core::array>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<mlx::core::array>>,std::vector<mlx::core::array>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<mlx::core::array>>,std::vector<mlx::core::array>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 3;
    v3 = v1;
    std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v3);
  }
}

uint64_t **std::__copy_impl::operator()[abi:ne200100]<std::vector<mlx::core::array> *,std::vector<mlx::core::array> *,std::vector<mlx::core::array> *>(uint64_t a1, uint64_t **a2, uint64_t **a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<mlx::core::array>::__assign_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a4, *v5, v5[1], (v5[1] - *v5) >> 4);
      }

      v5 += 3;
      a4 += 24;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<mlx::core::array>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<std::vector<mlx::core::array>>::__init_with_size[abi:ne200100]<std::vector<mlx::core::array>*,std::vector<mlx::core::array>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<mlx::core::array>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25A855CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<mlx::core::array>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<mlx::core::array>>::__construct_one_at_end[abi:ne200100]<std::vector<mlx::core::array> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(v3, *a2, a2[1], (a2[1] - *a2) >> 4);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<mlx::core::array>>::__emplace_back_slow_path<std::vector<mlx::core::array> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
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

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<mlx::core::array>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 4);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<mlx::core::array>>::~__split_buffer(&v14);
  return v8;
}

void sub_25A855E74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<mlx::core::array>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void **std::__split_buffer<std::vector<mlx::core::array>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<mlx::core::array>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<mlx::core::array>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

uint64_t std::vector<std::vector<mlx::core::array>>::__init_with_size[abi:ne200100]<std::vector<mlx::core::array> const*,std::vector<mlx::core::array> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<mlx::core::array>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25A855F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<mlx::core::array>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<mlx::core::array>>,std::vector<mlx::core::array> const*,std::vector<mlx::core::array> const*,std::vector<mlx::core::array>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(v4, *v6, v6[1], (v6[1] - *v6) >> 4);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<mlx::core::array>>,std::vector<mlx::core::array>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

void std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(std::vector<std::string> *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  begin = a1->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) < a4)
  {
    std::vector<std::string>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::string>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  end = a1->__end_;
  v12 = end - begin;
  if (0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(begin++, v6++);
      }

      while (v6 != a3);
      end = a1->__end_;
    }

    while (end != begin)
    {
      v15 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
      --end;
      if (v15 < 0)
      {
        operator delete(end->__r_.__value_.__l.__data_);
      }
    }

    a1->__end_ = begin;
  }

  else
  {
    if (end != begin)
    {
      v13 = end - begin;
      v14 = __str;
      do
      {
        std::string::operator=(begin++, v14++);
        v13 -= 24;
      }

      while (v13);
      end = a1->__end_;
    }

    a1->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(a1, (v6 + v12), a3, end);
  }
}

void mlx_load_reader(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *a2;
    v3 = a2[1];
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    v7[0] = v4;
    v7[1] = v3;
    if (a3)
    {
      mlx::core::load(v7, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v5 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v5, "expected a non-empty mlx_io_reader");
  __cxa_throw(v5, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_load(uint64_t a1, char *a2, uint64_t *a3)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, a2);
  if (a3)
  {
    v4 = *a3;
    v5 = *(a3 + 2) | 0x100000000;
    mlx::core::load();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_load_safetensors_reader(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a3)
  {
    v4 = *a3;
    v5 = a3[1];
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    if (a4)
    {
      v6 = *a4;
      v7 = *(a4 + 2) | 0x100000000;
      mlx::core::load_safetensors();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v8 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v8, "expected a non-empty mlx_io_reader");
  __cxa_throw(v8, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_load_safetensors(int a1, int a2, char *__s, uint64_t *a4)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, __s);
  if (a4)
  {
    v5 = *a4;
    v6 = *(a4 + 2) | 0x100000000;
    mlx::core::load_safetensors();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_save_writer(uint64_t *a1, uint64_t **a2, mlx::core *a3)
{
  if (a1)
  {
    v3 = *a1;
    v4 = a1[1];
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    v9[0] = v3;
    v9[1] = v4;
    if (a2)
    {
      v5 = a2[1];
      v8[0] = *a2;
      v8[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
      }

      mlx::core::save(v9, v8, a3);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v6, "expected a non-empty mlx_io_writer");
  __cxa_throw(v6, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_save(char *__s, uint64_t *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, __s);
  if (a2)
  {
    v3 = a2[1];
    v5 = *a2;
    v6 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    mlx::core::save(&__p);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_save_safetensors_writer(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = *a1;
    v5 = a1[1];
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = v4;
    v12 = v5;
    if (a2)
    {
      std::unordered_map<std::string,mlx::core::array>::unordered_map(v10, a2);
      if (a3)
      {
        std::unordered_map<std::string,std::string>::unordered_map(&v9, a3);
        mlx::core::save_safetensors();
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "expected a non-empty mlx_map_string_to_string");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v7 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v7, "expected a non-empty mlx_map_string_to_array");
    __cxa_throw(v7, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v6, "expected a non-empty mlx_io_writer");
  __cxa_throw(v6, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_save_safetensors(char *__s, uint64_t a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(&v9, __s);
  if (a2)
  {
    std::unordered_map<std::string,mlx::core::array>::unordered_map(v8, a2);
    if (a3)
    {
      std::unordered_map<std::string,std::string>::unordered_map(v7, a3);
      mlx::core::save_safetensors();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_map_string_to_string");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v5 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v5, "expected a non-empty mlx_map_string_to_array");
  __cxa_throw(v5, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,mlx::core::array>,void *> *>>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        v12[0] = v8 + 2;
        v12[1] = v8 + 5;
        std::pair<std::string &,mlx::core::array &>::operator=[abi:ne200100]<std::string const,mlx::core::array,0>(v12, (v4 + 2));
        v10 = *v8;
        std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::__node_insert_multi(a1, v8);
        v4 = *v4;
        if (v10)
        {
          v11 = v4 == a3;
        }

        else
        {
          v11 = 1;
        }

        v8 = v10;
      }

      while (!v11);
    }

    std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::__deallocate_node(a1, v10);
  }

  if (v4 != a3)
  {
    std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::__emplace_multi<std::pair<std::string const,mlx::core::array> const&>();
  }
}

void sub_25A8572D0(void *a1)
{
  __cxa_begin_catch(a1);
  std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::__deallocate_node(v1, v2);
  __cxa_rethrow();
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::__node_insert_multi(void *a1, uint64_t a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2 + 16);
  *(a2 + 8) = v4;
  inserted = std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::__node_insert_multi_prepare(a1, v4, (a2 + 16));
  std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::__node_insert_multi_perform(a1, a2, inserted);
  return a2;
}

uint64_t std::pair<std::string &,mlx::core::array &>::operator=[abi:ne200100]<std::string const,mlx::core::array,0>(uint64_t a1, const std::string *a2)
{
  std::string::operator=(*a1, a2);
  v4 = *(a1 + 8);
  data = a2[1].__r_.__value_.__l.__data_;
  if (*v4 != data)
  {
    size = a2[1].__r_.__value_.__l.__size_;
    if (size)
    {
      atomic_fetch_add_explicit((size + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4[1];
    *v4 = data;
    v4[1] = size;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, const void **a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::__rehash<false>(a1, v12);
    v6 = *(a1 + 8);
  }

  v13 = vcnt_s8(v6);
  v13.i16[0] = vaddlv_u8(v13);
  v14 = v13.u32[0];
  if (v13.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (v16)
  {
    v17 = *v16;
    if (*v16)
    {
      v18 = 0;
      do
      {
        v19 = v17[1];
        if (v14 > 1)
        {
          v20 = v17[1];
          if (v19 >= v6)
          {
            v20 = v19 % v6;
          }
        }

        else
        {
          v20 = v19 & (v6 - 1);
        }

        if (v20 != v15)
        {
          break;
        }

        v21 = v19 == a2 && std::equal_to<std::string>::operator()[abi:ne200100](a1, v17 + 2, a3);
        if ((v18 & (v21 != (v18 & 1))) != 0)
        {
          break;
        }

        v18 |= v21 != (v18 & 1);
        v16 = *v16;
        v17 = *v16;
      }

      while (*v16);
    }
  }

  return v16;
}