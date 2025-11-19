uint64_t xpc_compile(xpc_object_t *a1, uint64_t a2)
{
  v15 = 0;
  v16[0] = 0;
  v12 = a2;
  v13 = 0;
  v14 = &_free;
  pthread_attr_init(&v21);
  pthread_attr_setstacksize(&v21, 0x404000uLL);
  pthread_create(v16, &v21, compile_thread_handler, &v12);
  pthread_join(v16[0], 0);
  v3 = os_log_create("com.apple.mlcompiler.service.compiler", "Compilation");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v13;
    if (v13 && !*v13)
    {
      v4 = &unk_100002F16;
    }

    *buf = 136315394;
    *&buf[4] = v4;
    v18 = 2048;
    v19 = v15;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Compilation completed: %s (%lfms)", buf, 0x16u);
  }

  v20 = 1;
  strcpy(buf, "m");
  v5 = v13;
  if (v13 && !*v13)
  {
    v5 = &unk_100002F16;
  }

  v6 = xpc_string_create(v5);
  v16[1] = v6;
  xpc_dictionary_set_value(*a1, buf, v6);
  if (v6)
  {
    xpc_release(v6);
  }

  if (v20 < 0)
  {
    operator delete(*buf);
    v7 = v13;
    if (v13)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v7 = v13;
    if (v13)
    {
LABEL_13:
      v8 = *v7 == 0;
      goto LABEL_16;
    }
  }

  v8 = 0;
LABEL_16:
  mlc::xpc_auto_message_t::set_ret(a1, v8);
  v9 = *a1;
  xpc_dictionary_send_reply();
  if (*a1)
  {
    xpc_release(*a1);
  }

  *a1 = 0;
  result = v13;
  v13 = 0;
  if (result)
  {
    return (v14)(result, v10);
  }

  return result;
}

void sub_100001728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void conection_handler(_xpc_connection_s *a1)
{
  v2 = xpc_copy_description(a1);
  free(v2);
  xpc_connection_set_event_handler(a1, &__block_literal_global);

  xpc_connection_activate(a1);
}

uint64_t compile_thread_handler(double *a1)
{
  rep = std::chrono::steady_clock::now().__d_.__rep_;
  v3 = **a1;
  v4 = *(*a1 + 8);
  v5 = mlc_model_compile();
  a1[3] = (std::chrono::steady_clock::now().__d_.__rep_ - rep) / 1000000.0;
  v6 = *(a1 + 1);
  *(a1 + 1) = v5;
  if (v6)
  {
    (*(a1 + 2))();
  }

  return 0;
}

void mlc::xpc_auto_handle_t::~xpc_auto_handle_t(void **this)
{
  v1 = *this;
  if (v1)
  {
    xpc_release(v1);
  }
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

xpc_object_t *mlc::xpc_auto_message_t::set_ret(xpc_object_t *this, BOOL value)
{
  v6 = 1;
  LOWORD(__p) = 114;
  v3 = xpc_BOOL_create(value);
  v7 = v3;
  xpc_dictionary_set_value(*this, &__p, v3);
  if (v3)
  {
    xpc_release(v3);
  }

  if (v6 < 0)
  {
    operator delete(__p);
  }

  return this;
}

void sub_1000019E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15)
{
  mlc::xpc_auto_handle_t::~xpc_auto_handle_t(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<mlc::xpc_dispatch_t>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 24);
    while (v3)
    {
      v5 = v3;
      v3 = *v3;
      v6 = v5[6];
      if (v6 == v5 + 3)
      {
        (*(*v6 + 32))(v6);
      }

      else if (v6)
      {
        (*(*v6 + 40))(v6);
      }

      operator delete(v5);
    }

    v4 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v4)
    {
      operator delete(v4);
    }

    operator delete();
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<mlc::function_kind_t,std::function<BOOL ()(mlc::xpc_auto_reply_t &&,void *)>>,std::__unordered_map_hasher<mlc::function_kind_t,std::function<BOOL ()(mlc::xpc_auto_reply_t &&,void *)>,std::hash<mlc::function_kind_t>,std::equal_to<mlc::function_kind_t>,true>,std::__unordered_map_equal<mlc::function_kind_t,std::function<BOOL ()(mlc::xpc_auto_reply_t &&,void *)>,std::equal_to,std::hash,true>,std::allocator<std::function<BOOL ()(mlc::xpc_auto_reply_t &&,void *)>>>::__emplace_unique_key_args<mlc::function_kind_t,std::piecewise_construct_t const&,std::tuple<mlc::function_kind_t const&>,std::piecewise_construct_t const&<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
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

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_11:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_11;
  }

  return v7;
}

void sub_100001DDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<mlc::function_kind_t,std::function<BOOL ()(mlc::xpc_auto_reply_t &&,void *)>>,mlc::xpc_auto_reply_t &&>,std::__hash_node_destructor<std::allocator<std::__hash_value_type<mlc::function_kind_t,std::function<BOOL ()(mlc::xpc_auto_reply_t &&,void *)>>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<mlc::function_kind_t,std::function<BOOL ()(mlc::xpc_auto_reply_t &&,void *)>>,mlc::xpc_auto_reply_t &&>,std::__hash_node_destructor<std::allocator<std::__hash_value_type<mlc::function_kind_t,std::function<BOOL ()(mlc::xpc_auto_reply_t &&,void *)>>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = v2[6];
      if (v3 == v2 + 3)
      {
        (*(*v3 + 32))(v3);
      }

      else if (v3)
      {
        (*(*v3 + 40))(v3);
      }
    }

    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<mlc::function_kind_t,std::function<BOOL ()(mlc::xpc_auto_reply_t &&,void *)>>,std::__unordered_map_hasher<mlc::function_kind_t,std::function<BOOL ()(mlc::xpc_auto_reply_t &&,void *)>,std::hash<mlc::function_kind_t>,std::equal_to<mlc::function_kind_t>,true>,std::__unordered_map_equal<mlc::function_kind_t,std::function<BOOL ()(mlc::xpc_auto_reply_t &&,void *)>,std::equal_to,std::hash,true>,std::allocator<std::function<BOOL ()(mlc::xpc_auto_reply_t &&,void *)>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
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

uint64_t std::__function::__func<void mlc::xpc_dispatch_t::add<void (&)(mlc::xpc_auto_reply_t,std::vector<char const*>)>(mlc::function_kind_t,void (&)(mlc::xpc_auto_reply_t,std::vector<char const*>) &&)::{lambda(mlc::xpc_auto_reply_t&&,void *)#1},std::allocator<mlc::xpc_auto_reply_t&&>,BOOL ()(void (&)(mlc::xpc_auto_reply_t,std::vector<char const*>) &&,mlc::xpc_auto_reply_t&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100004260;
  a2[1] = v2;
  return result;
}

BOOL std::__function::__func<void mlc::xpc_dispatch_t::add<void (&)(mlc::xpc_auto_reply_t,std::vector<char const*>)>(mlc::function_kind_t,void (&)(mlc::xpc_auto_reply_t,std::vector<char const*>) &&)::{lambda(mlc::xpc_auto_reply_t&&,void *)#1},std::allocator<mlc::xpc_auto_reply_t&&>,BOOL ()(void (&)(mlc::xpc_auto_reply_t,std::vector<char const*>) &&,mlc::xpc_auto_reply_t&)>::operator()(uint64_t a1, __int128 *a2, xpc_object_t *a3)
{
  v4 = *a3;
  v5 = *(a1 + 8);
  count = xpc_array_get_count(*a3);
  if (count == 1)
  {
    mlc::detail::dispatch_impl_t<void (&)(mlc::xpc_auto_reply_t,std::vector<char const*>),void,mlc::xpc_auto_reply_t,std::vector<char const*>>::invoke_with_seq<mlc::xpc_auto_reply_t&&,0ul>(v5, a2, v4);
  }

  return count == 1;
}

void mlc::detail::dispatch_impl_t<void (&)(mlc::xpc_auto_reply_t,std::vector<char const*>),void,mlc::xpc_auto_reply_t,std::vector<char const*>>::invoke_with_seq<mlc::xpc_auto_reply_t&&,0ul>(void (*a1)(xpc_object_t *, void **), __int128 *a2, xpc_object_t xarray)
{
  v3 = *a2;
  *a2 = 0;
  *object = v3;
  value = xpc_array_get_value(xarray, 0);
  __p = 0;
  v19 = 0;
  v20 = 0;
  count = xpc_array_get_count(value);
  if (count)
  {
    v6 = 0;
    for (i = 0; i != count; ++i)
    {
      v8 = xpc_array_get_value(value, i);
      string_ptr = xpc_string_get_string_ptr(v8);
      if (v6 < v20)
      {
        *v6++ = string_ptr;
      }

      else
      {
        v10 = __p;
        v11 = v6 - __p;
        v12 = (v6 - __p) >> 3;
        v13 = v12 + 1;
        if ((v12 + 1) >> 61)
        {
          std::vector<char const*>::__throw_length_error[abi:ne200100]();
        }

        v14 = v20 - __p;
        if ((v20 - __p) >> 2 > v13)
        {
          v13 = v14 >> 2;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          if (!(v15 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v16 = (8 * v12);
        *v16 = string_ptr;
        v6 = v16 + 1;
        memcpy(0, v10, v11);
        __p = 0;
        v20 = 0;
      }

      v19 = v6;
    }
  }

  a1(object, &__p);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (object[0])
  {
    xpc_release(object[0]);
  }
}

void sub_100002288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  mlc::xpc_auto_reply_t::~xpc_auto_reply_t(&a13);
  _Unwind_Resume(a1);
}

void mlc::xpc_auto_reply_t::~xpc_auto_reply_t(void **this)
{
  v1 = *this;
  if (v1)
  {
    xpc_release(v1);
  }
}

void *std::__function::__value_func<BOOL ()(mlc::xpc_auto_reply_t &&,void *)>::swap[abi:ne200100](void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_100002578(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void mlc::xpc_dispatch_t::handle_xpc_call(NSObject **this@<X0>, xpc_object_t object@<X1>, uint64_t a3@<X8>)
{
  v6 = xpc_copy_description(object);
  type = xpc_get_type(object);
  v8 = *this;
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (type != &_xpc_type_dictionary)
  {
    if (v9)
    {
      mlc::xpc_dispatch_t::handle_xpc_call(v6, v8);
    }

    goto LABEL_4;
  }

  if (v9)
  {
    mlc::xpc_dispatch_t::handle_xpc_call(v6, v8);
  }

  uint64 = xpc_dictionary_get_uint64(object, "fc");
  array = xpc_dictionary_get_array(object, "args");
  if (!uint64 || (v12 = array, xpc_get_type(array) != &_xpc_type_array))
  {
LABEL_4:
    *a3 = 0;
    *(a3 + 16) = 0;
    if (!v6)
    {
      return;
    }

    goto LABEL_5;
  }

  *a3 = uint64;
  *(a3 + 8) = v12;
  *(a3 + 16) = 1;
  if (!v6)
  {
    return;
  }

LABEL_5:
  free(v6);
}

void sub_1000026AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlc::xpc_dispatch_t::handle(NSObject **this, void *a2, _xpc_connection_s *a3)
{
  mlc::xpc_dispatch_t::handle_xpc_call(this, a2, v17);
  if (v18 != 1)
  {
    return 0;
  }

  v6 = v17[0];
  v7 = this[2];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v17[0];
    if (v17[0] >= *&v7)
    {
      v9 = v17[0] % *&v7;
    }
  }

  else
  {
    v9 = (*&v7 - 1) & v17[0];
  }

  isa = this[1][v9].isa;
  if (!isa || (v11 = *isa) == 0)
  {
LABEL_18:
    v13 = *this;
    if (os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Unknown function: %llu", &buf, 0xCu);
    }

    return 0;
  }

  while (1)
  {
    v12 = v11[1];
    if (v17[0] == v12)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_11:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (v11[2] != v17[0])
  {
    goto LABEL_11;
  }

  *&buf = xpc_dictionary_create_reply(a2);
  *(&buf + 1) = a3;
  v19 = v17[1];
  v16 = v11[6];
  if (!v16)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v14 = (*(*v16 + 48))(v16, &buf, &v19);
  if (buf)
  {
    xpc_release(buf);
  }

  return v14;
}

void sub_1000028A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
}

void mlc::xpc_dispatch_t::handle_xpc_call(uint64_t a1, NSObject *a2)
{
  v2 = 136315138;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Unhandled message: %s", &v2, 0xCu);
}

{
  v2 = 136315138;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Request: %s", &v2, 0xCu);
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

void operator new()
{
    ;
  }
}