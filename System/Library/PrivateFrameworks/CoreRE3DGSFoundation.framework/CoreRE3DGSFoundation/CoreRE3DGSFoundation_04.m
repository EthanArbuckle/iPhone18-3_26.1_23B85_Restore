void sub_247447834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, std::exception a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  nlohmann::json_abi_v3_11_2::detail::exception::~exception(&a27);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a37 < 0)
  {
    operator delete(a32);
    v39 = *(v37 - 104);
    if (v39)
    {
LABEL_10:
      operator delete(v39);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v39 = *(v37 - 104);
    if (v39)
    {
      goto LABEL_10;
    }
  }

  _Unwind_Resume(a1);
}

uint64_t nlohmann::json_abi_v3_11_2::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::parse_error<nlohmann::json_abi_v3_11_2::detail::parse_error>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 40) = 1;
  if (*(a1 + 41) == 1)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    v7 = nlohmann::json_abi_v3_11_2::detail::parse_error::parse_error(exception, a4);
  }

  return 0;
}

uint64_t nlohmann::json_abi_v3_11_2::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::json_sax_dom_callback_parser(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  v6 = a1 + 96;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  v7 = *(a3 + 24);
  if (!v7)
  {
    goto LABEL_4;
  }

  if (v7 != a3)
  {
    v7 = (*(*v7 + 16))(v7);
LABEL_4:
    *(a1 + 120) = v7;
    goto LABEL_6;
  }

  *(a1 + 120) = v6;
  (*(**(a3 + 24) + 24))(*(a3 + 24), v6);
LABEL_6:
  *(a1 + 136) = 9;
  *(a1 + 128) = a4;
  *(a1 + 144) = 0;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  if (v8 == v9 << 6)
  {
    if ((v8 + 1) < 0)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v10 = v9 << 7;
    if (v10 <= (v8 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v10 = (v8 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v8 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    std::vector<BOOL>::reserve(a1 + 32, v11);
    v8 = *(a1 + 40);
  }

  *(a1 + 40) = v8 + 1;
  *(*(a1 + 32) + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
  return a1;
}

void sub_247447B68(_Unwind_Exception *exception_object)
{
  v4 = v1[7];
  if (v4)
  {
    operator delete(v4);
    v5 = v1[4];
    if (!v5)
    {
LABEL_3:
      v6 = *v2;
      if (!*v2)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v5 = v1[4];
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  operator delete(v5);
  v6 = *v2;
  if (!*v2)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  v1[2] = v6;
  operator delete(v6);
  _Unwind_Resume(exception_object);
}

uint64_t std::vector<BOOL>::reserve(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t nlohmann::json_abi_v3_11_2::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::start_object(uint64_t a1, unint64_t a2)
{
  v3 = a1 + 8;
  LODWORD(v23.__r_.__value_.__l.__data_) = (*(a1 + 16) - *(a1 + 8)) >> 3;
  v22.__r_.__value_.__s.__data_[0] = 0;
  v4 = *(a1 + 120);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v6 = (*(*v4 + 48))(v4, &v23, &v22, a1 + 136);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  if (v7 == v8 << 6)
  {
    if ((v7 + 1) < 0)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v9 = v8 << 7;
    if (v9 <= (v7 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v9 = (v7 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v7 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    std::vector<BOOL>::reserve(a1 + 32, v10);
    v7 = *(a1 + 40);
  }

  *(a1 + 40) = v7 + 1;
  v11 = *(a1 + 32);
  v12 = v7 >> 6;
  v13 = 1 << v7;
  if (v6)
  {
    v14 = *(v11 + 8 * v12) | v13;
  }

  else
  {
    v14 = *(v11 + 8 * v12) & ~v13;
  }

  *(v11 + 8 * v12) = v14;
  v23.__r_.__value_.__s.__data_[0] = 1;
  v24 = nlohmann::json_abi_v3_11_2::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::handle_value<nlohmann::json_abi_v3_11_2::detail::value_t>(a1, &v23, 1);
  v25 = v15;
  std::vector<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void> *,std::allocator<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void> *>>::push_back[abi:ne200100](v3, &v25);
  if (a2 != -1)
  {
    v16 = *(*(a1 + 16) - 8);
    if (v16)
    {
      v17 = *v16;
      if (v17 > 2)
      {
        v18 = 1;
      }

      else
      {
        v18 = *&nlohmann::json_abi_v3_11_2::detail::serializer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::dump_integer<long long,0>(long long)::digits_to_99[8 * v17 + 200];
      }

      if (v18 < a2)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        std::to_string(&v22, a2);
        nlohmann::json_abi_v3_11_2::detail::concat<std::string,char const(&)[39],std::string>("excessive object size: ", &v22, &v23);
        v21 = *(*(a1 + 16) - 8);
        nlohmann::json_abi_v3_11_2::detail::out_of_range::create<decltype(nullptr),0>(408, &v23, exception);
      }
    }
  }

  return 1;
}

void sub_247447EDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v20 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v20)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t nlohmann::json_abi_v3_11_2::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::end_object(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (*(v2 - 8))
  {
    LODWORD(v27) = ((v2 - *(a1 + 8)) >> 3) - 1;
    LOBYTE(v24) = 1;
    v3 = *(a1 + 120);
    if (!v3)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    if (((*(*v3 + 48))(v3, &v27, &v24) & 1) == 0)
    {
      nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::basic_json(v30, (a1 + 136));
      v4 = *(*(a1 + 16) - 8);
      v5 = *v4;
      *v4 = v30[0];
      v30[0] = v5;
      v6 = *(v4 + 1);
      *(v4 + 1) = v31;
      v31 = v6;
      nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(&v31, v5);
    }
  }

  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  v9 = v7 - 8;
  *(a1 + 16) = v7 - 8;
  --*(a1 + 40);
  if (v8 != v7 - 8)
  {
    v10 = *(v7 - 16);
    if (v10)
    {
      v11 = *v10;
      if ((v11 - 1) <= 1)
      {
        v27 = v10;
        v28 = 0uLL;
        v29 = 0x8000000000000000;
        v12 = **(v10 + 1);
        v13 = v11 == 1;
        v14 = 2;
        if (v13)
        {
          v14 = 1;
        }

        (&v27)[v14] = v12;
        while (1)
        {
          v15 = *(v9 - 8);
          v25 = 0uLL;
          v24 = v15;
          v26 = 0x8000000000000000;
          v16 = *v15;
          if (v16 == 2)
          {
            *(&v25 + 1) = *(*(v15 + 1) + 8);
            if (nlohmann::json_abi_v3_11_2::detail::iter_impl<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::operator==<nlohmann::json_abi_v3_11_2::detail::iter_impl<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,(decltype(nullptr))0>(&v27, &v24))
            {
              return 1;
            }
          }

          else if (v16 == 1)
          {
            *&v25 = *(v15 + 1) + 8;
            if (nlohmann::json_abi_v3_11_2::detail::iter_impl<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::operator==<nlohmann::json_abi_v3_11_2::detail::iter_impl<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,(decltype(nullptr))0>(&v27, &v24))
            {
              return 1;
            }
          }

          else
          {
            v26 = 1;
            if (nlohmann::json_abi_v3_11_2::detail::iter_impl<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::operator==<nlohmann::json_abi_v3_11_2::detail::iter_impl<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,(decltype(nullptr))0>(&v27, &v24))
            {
              return 1;
            }
          }

          if (*nlohmann::json_abi_v3_11_2::detail::iter_impl<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::operator->(&v27) == 9)
          {
            break;
          }

          v17 = *v27;
          if (v17 == 2)
          {
            *(&v28 + 1) += 16;
            v9 = *(a1 + 16);
          }

          else if (v17 == 1)
          {
            v18 = v28;
            v19 = *(v28 + 8);
            if (v19)
            {
              do
              {
                v20 = v19;
                v19 = *v19;
              }

              while (v19);
            }

            else
            {
              do
              {
                v20 = v18[2];
                v13 = *v20 == v18;
                v18 = v20;
              }

              while (!v13);
            }

            *&v28 = v20;
            v9 = *(a1 + 16);
          }

          else
          {
            ++v29;
            v9 = *(a1 + 16);
          }
        }

        v21 = *(*(a1 + 16) - 8);
        v24 = v27;
        v25 = v28;
        v26 = v29;
        nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::erase<nlohmann::json_abi_v3_11_2::detail::iter_impl<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,0>(v21, &v24, &v23);
      }
    }
  }

  return 1;
}

void sub_2474483AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::~basic_json(&a9);
  nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::~basic_json(&a11);
  _Unwind_Resume(a1);
}

void sub_2474483E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::~basic_json(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::json_abi_v3_11_2::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::start_array(uint64_t a1, unint64_t a2)
{
  v3 = a1 + 8;
  LODWORD(v23.__r_.__value_.__l.__data_) = (*(a1 + 16) - *(a1 + 8)) >> 3;
  v22.__r_.__value_.__s.__data_[0] = 2;
  v4 = *(a1 + 120);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v6 = (*(*v4 + 48))(v4, &v23, &v22, a1 + 136);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  if (v7 == v8 << 6)
  {
    if ((v7 + 1) < 0)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v9 = v8 << 7;
    if (v9 <= (v7 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v9 = (v7 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v7 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    std::vector<BOOL>::reserve(a1 + 32, v10);
    v7 = *(a1 + 40);
  }

  *(a1 + 40) = v7 + 1;
  v11 = *(a1 + 32);
  v12 = v7 >> 6;
  v13 = 1 << v7;
  if (v6)
  {
    v14 = *(v11 + 8 * v12) | v13;
  }

  else
  {
    v14 = *(v11 + 8 * v12) & ~v13;
  }

  *(v11 + 8 * v12) = v14;
  v23.__r_.__value_.__s.__data_[0] = 2;
  v24 = nlohmann::json_abi_v3_11_2::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::handle_value<nlohmann::json_abi_v3_11_2::detail::value_t>(a1, &v23, 1);
  v25 = v15;
  std::vector<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void> *,std::allocator<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void> *>>::push_back[abi:ne200100](v3, &v25);
  if (a2 != -1)
  {
    v16 = *(*(a1 + 16) - 8);
    if (v16)
    {
      v17 = *v16;
      if (v17 > 2)
      {
        v18 = 1;
      }

      else
      {
        v18 = *&nlohmann::json_abi_v3_11_2::detail::serializer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::dump_integer<long long,0>(long long)::digits_to_99[8 * v17 + 200];
      }

      if (v18 < a2)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        std::to_string(&v22, a2);
        nlohmann::json_abi_v3_11_2::detail::concat<std::string,char const(&)[39],std::string>("excessive array size: ", &v22, &v23);
        v21 = *(*(a1 + 16) - 8);
        nlohmann::json_abi_v3_11_2::detail::out_of_range::create<decltype(nullptr),0>(408, &v23, exception);
      }
    }
  }

  return 1;
}

void sub_2474485DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v20 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v20)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t nlohmann::json_abi_v3_11_2::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::end_array(uint64_t a1)
{
  v2 = *(a1 + 16);
  v4 = *(v2 - 8);
  v3 = v2 - 8;
  if (!v4)
  {
    *(a1 + 16) = v3;
    goto LABEL_6;
  }

  v21 = ((*(a1 + 16) - *(a1 + 8)) >> 3) - 1;
  v20 = 3;
  v5 = *(a1 + 120);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if ((*(*v5 + 48))(v5, &v21, &v20))
  {
    *(a1 + 16) -= 8;
LABEL_6:
    --*(a1 + 40);
    return 1;
  }

  nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::basic_json(v18, (a1 + 136));
  v7 = *(*(a1 + 16) - 8);
  v8 = *v7;
  *v7 = v18[0];
  v18[0] = v8;
  v9 = *(v7 + 1);
  *(v7 + 1) = v19;
  v19 = v9;
  nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(&v19, v8);
  v11 = *(a1 + 8);
  v10 = *(a1 + 16);
  *(a1 + 16) = v10 - 8;
  --*(a1 + 40);
  if (v11 == v10 - 8)
  {
    return 1;
  }

  v12 = *(v10 - 16);
  if (*v12 != 2)
  {
    return 1;
  }

  v13 = *(v12 + 8);
  v14 = *(v13 + 8);
  v15 = (v14 - 8);
  for (i = -16; i; i += 16)
  {
    v17 = v15 - 2;
    nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(v15, *(v15 - 8));
    v15 = v17;
  }

  *(v13 + 8) = v14 - 16;
  return 1;
}

uint64_t nlohmann::json_abi_v3_11_2::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::parse_error<nlohmann::json_abi_v3_11_2::detail::out_of_range>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 88) = 1;
  if (*(a1 + 128) == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v7 = nlohmann::json_abi_v3_11_2::detail::out_of_range::out_of_range(exception, a4);
  }

  return 0;
}

void nlohmann::json_abi_v3_11_2::detail::out_of_range::create<decltype(nullptr),0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = 12;
  strcpy(v7, "out_of_range");
  v12 = 46;
  std::to_string(&v11, a1);
  nlohmann::json_abi_v3_11_2::detail::concat<std::string,char const(&)[17],std::string const&,char,std::string,char const(&)[3]>("[json.exception.", v7, &v12, &v11, "] ", &__p);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  *(&v11.__r_.__value_.__s + 23) = 0;
  v11.__r_.__value_.__s.__data_[0] = 0;
  nlohmann::json_abi_v3_11_2::detail::concat<std::string,std::string,std::string,std::string const&>(&__p, &v11, a2, &v10);
  if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_12:
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

  operator delete(v11.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v8 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

LABEL_13:
  operator delete(v7[0]);
LABEL_6:
  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v10;
  }

  else
  {
    v6 = v10.__r_.__value_.__r.__words[0];
  }

  *a3 = &unk_28593CBA8;
  *(a3 + 8) = a1;
  MEMORY[0x24C1A1B40](a3 + 16, v6);
  *a3 = &unk_28593DBF8;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_247448998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  std::exception::~exception(v27);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void nlohmann::json_abi_v3_11_2::detail::concat<std::string,char const(&)[26],std::string,char>(const char *a1@<X0>, uint64_t a2@<X1>, std::string::value_type *a3@<X2>, std::string *a4@<X8>)
{
  a4->__r_.__value_.__r.__words[0] = 0;
  a4->__r_.__value_.__l.__size_ = 0;
  a4->__r_.__value_.__r.__words[2] = 0;
  v8 = strlen(a1);
  v9 = *(a2 + 23);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a2 + 8);
  }

  v10 = v8 + v9 + 1;
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v10 >= 0x17)
  {
    v11 = v10 | 7;
    if (v11 == 23)
    {
      v12 = 24;
    }

    else
    {
      v12 = v11;
    }

    std::string::__shrink_or_extend[abi:ne200100](a4, v12);
  }

  v13 = strlen(a1);
  std::string::append(a4, a1, v13);
  v14 = *(a2 + 23);
  if (v14 >= 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = *a2;
  }

  if (v14 >= 0)
  {
    v16 = *(a2 + 23);
  }

  else
  {
    v16 = *(a2 + 8);
  }

  std::string::append(a4, v15, v16);
  std::string::push_back(a4, *a3);
}

void sub_247448AE0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nlohmann::json_abi_v3_11_2::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::handle_value<nlohmann::json_abi_v3_11_2::detail::value_t>(unsigned __int8 **a1, unsigned __int8 *a2, char a3)
{
  if ((*&a1[4][((a1[5] - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (*(a1 + 40) - 1)))
  {
    v5 = *a2;
    v32[0] = v5;
    nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::json_value(&v33, v5);
    if (a3)
    {
      goto LABEL_5;
    }

    v35 = (a1[2] - a1[1]) >> 3;
    v34 = 5;
    v6 = a1[15];
    if (!v6)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    if ((*(*v6 + 48))(v6, &v35, &v34, v32))
    {
LABEL_5:
      v7 = a1[2];
      if (a1[1] == v7)
      {
        v13 = v32[0];
        v14 = v33;
        v32[0] = 0;
        v33 = 0;
        v15 = *a1;
        v16 = **a1;
        *v15 = v13;
        v30 = v16;
        v17 = *(v15 + 8);
        *(v15 + 8) = v14;
        v31 = v17;
        nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(&v31, v16);
        v18 = *a1;
LABEL_17:
        v12 = 1;
        goto LABEL_18;
      }

      v8 = *(v7 - 1);
      if (v8)
      {
        if (*v8 == 2)
        {
          v9 = *(v8 + 8);
          v10 = *(v9 + 8);
          if (v10 >= *(v9 + 16))
          {
            v11 = std::vector<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::__emplace_back_slow_path<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>(v9, v32);
          }

          else
          {
            *v10 = v32[0];
            *(v10 + 8) = v33;
            v32[0] = 0;
            v33 = 0;
            v11 = v10 + 16;
          }

          *(v9 + 8) = v11;
          v27 = *(*(*(a1[2] - 1) + 8) + 8) - 16;
          goto LABEL_17;
        }

        v19 = (a1[8] - 1);
        v20 = *&a1[7][(v19 >> 3) & 0x1FFFFFFFFFFFFFF8];
        a1[8] = v19;
        if ((v20 >> v19))
        {
          v21 = v32[0];
          v22 = v33;
          v32[0] = 0;
          v33 = 0;
          v23 = a1[10];
          v24 = *v23;
          *v23 = v21;
          v25 = *(v23 + 1);
          *(v23 + 1) = v22;
          v29 = v25;
          nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(&v29, v24);
          v26 = a1[10];
          goto LABEL_17;
        }
      }
    }

    v12 = 0;
LABEL_18:
    nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(&v33, v32[0]);
    return v12;
  }

  return 0;
}

void sub_247448D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::~basic_json(va);
  _Unwind_Resume(a1);
}

void std::vector<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void> *,std::allocator<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void> *>>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

unsigned __int8 *nlohmann::json_abi_v3_11_2::detail::iter_impl<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::operator->(unsigned __int8 **a1)
{
  result = *a1;
  v3 = *result;
  if (v3 == 2)
  {
    return a1[2];
  }

  if (v3 == 1)
  {
    return a1[1] + 56;
  }

  if (a1[3])
  {
    v4 = a1;
    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v7, "cannot get value");
    v6 = *v4;
    nlohmann::json_abi_v3_11_2::detail::invalid_iterator::create<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void> *,0>(214, v7, exception);
  }

  return result;
}

void sub_247448F58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if (v16)
    {
LABEL_6:
      __cxa_free_exception(v15);
      _Unwind_Resume(a1);
    }
  }

  else if (v16)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(a1);
}

void nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::erase<nlohmann::json_abi_v3_11_2::detail::iter_impl<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,0>(unsigned __int8 *a1@<X0>, unsigned __int8 **a2@<X1>, unsigned __int8 **a3@<X8>)
{
  if (*a2 != a1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(&v26, "iterator does not fit current value");
    nlohmann::json_abi_v3_11_2::detail::invalid_iterator::create<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void> *,0>(202, &v26, exception);
  }

  a3[1] = 0;
  *a3 = a1;
  a3[2] = 0;
  a3[3] = 0x8000000000000000;
  v4 = *a1;
  if (v4 != 2)
  {
    if (v4 == 1)
    {
      a3[1] = std::__tree<std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>>>::erase(*(a1 + 1), a2[1]);
      return;
    }

    a3[3] = 1;
    if ((v4 - 3) > 5)
    {
      v23 = a1;
      v24 = __cxa_allocate_exception(0x20uLL);
      v25 = nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::type_name(v23);
      nlohmann::json_abi_v3_11_2::detail::concat<std::string,char const(&)[51],char const*>("cannot use erase() with ", &v25, &v26);
      nlohmann::json_abi_v3_11_2::detail::type_error::create<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void> *,0>(307, &v26, v24);
    }

    if (a2[3])
    {
      v22 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(&v26, "iterator out of range");
      nlohmann::json_abi_v3_11_2::detail::invalid_iterator::create<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void> *,0>(205, &v26, v22);
    }

    if (v4 == 8)
    {
      v15 = a1;
      v17 = (a1 + 8);
      v16 = *(a1 + 1);
      v20 = *v16;
      if (*v16)
      {
        v16[1] = v20;
        v18 = v20;
        goto LABEL_21;
      }
    }

    else
    {
      if (v4 != 3)
      {
LABEL_23:
        *a1 = 0;
        return;
      }

      v15 = a1;
      v17 = (a1 + 8);
      v16 = *(a1 + 1);
      if (*(v16 + 23) < 0)
      {
        v18 = *v16;
LABEL_21:
        operator delete(v18);
        v16 = *v17;
      }
    }

    operator delete(v16);
    *v17 = 0;
    a1 = v15;
    goto LABEL_23;
  }

  v5 = *(a1 + 1);
  v6 = *(v5 + 8);
  a3[2] = v6;
  v7 = a2[2];
  if (v7 + 16 == v6)
  {
    v13 = a2[2];
  }

  else
  {
    v8 = a2[2];
    do
    {
      v9 = v8[16];
      v10 = *(v8 + 3);
      v8[16] = 0;
      *(v8 + 3) = 0;
      v11 = *v8;
      *v8 = v9;
      v26.__r_.__value_.__s.__data_[0] = v11;
      v12 = *(v8 + 1);
      *(v8 + 1) = v10;
      v26.__r_.__value_.__l.__size_ = v12;
      nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(&v26.__r_.__value_.__l.__size_, v11);
      v13 = v8 + 16;
      v14 = v8 + 32;
      v8 += 16;
    }

    while (v14 != v6);
    v6 = *(v5 + 8);
  }

  while (v6 != v13)
  {
    v19 = *(v6 - 16);
    v6 -= 16;
    nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy((v6 + 8), v19);
  }

  *(v5 + 8) = v13;
  a3[2] = v7;
}

void sub_247449264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    __cxa_free_exception(v15);
  }

  _Unwind_Resume(exception_object);
}

void nlohmann::json_abi_v3_11_2::detail::invalid_iterator::create<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void> *,0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  HIBYTE(v7[2]) = 16;
  strcpy(v7, "invalid_iterator");
  v11 = 46;
  std::to_string(&v10, a1);
  nlohmann::json_abi_v3_11_2::detail::concat<std::string,char const(&)[17],std::string const&,char,std::string,char const(&)[3]>("[json.exception.", v7, &v11, &v10, "] ", &__p);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  *(&v10.__r_.__value_.__s + 23) = 0;
  v10.__r_.__value_.__s.__data_[0] = 0;
  nlohmann::json_abi_v3_11_2::detail::concat<std::string,std::string,std::string,std::string const&>(&__p, &v10, a2, &v9);
  if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_12:
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v7[2]) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

  operator delete(v10.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((SHIBYTE(v7[2]) & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

LABEL_13:
  operator delete(v7[0]);
LABEL_6:
  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v9;
  }

  else
  {
    v6 = v9.__r_.__value_.__r.__words[0];
  }

  *a3 = &unk_28593CBA8;
  *(a3 + 8) = a1;
  MEMORY[0x24C1A1B40](a3 + 16, v6);
  *a3 = &unk_28593DC38;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_247449438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  std::exception::~exception(v27);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>>>::erase(void *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *v3;
    }

    while (v3);
  }

  else
  {
    v5 = a2;
    do
    {
      v4 = v5[2];
      v6 = *v4 == v5;
      v5 = v4;
    }

    while (!v6);
  }

  if (*a1 == a2)
  {
    *a1 = v4;
  }

  v7 = a1[1];
  --a1[2];
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v7, a2);
  nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy((a2 + 64), *(a2 + 56));
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  operator delete(a2);
  return v4;
}

uint64_t **std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t **result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      v5 = 0;
      v6 = a2[2];
      *(v2 + 16) = v6;
      v7 = *v6;
      if (*v6 == a2)
      {
        goto LABEL_10;
      }

LABEL_6:
      v6[1] = v2;
      v8 = *(v3 + 24);
      if (v3 == a2)
      {
        goto LABEL_7;
      }

LABEL_16:
      v9 = a2[2];
      v9[*v9 != a2] = v3;
      v3[2] = v9;
      v11 = *a2;
      v10 = a2[1];
      *(v11 + 16) = v3;
      *v3 = v11;
      v3[1] = v10;
      if (v10)
      {
        *(v10 + 16) = v3;
      }

      *(v3 + 24) = *(a2 + 24);
      if (result == a2)
      {
        result = v3;
      }

      if (!result)
      {
        return result;
      }

      goto LABEL_21;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (!v2)
  {
    v6 = v3[2];
    v5 = 1;
    v7 = *v6;
    if (*v6 == v3)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v5 = 0;
  v6 = v3[2];
  *(v2 + 16) = v6;
  v7 = *v6;
  if (*v6 != v3)
  {
    goto LABEL_6;
  }

LABEL_10:
  *v6 = v2;
  if (v3 == result)
  {
    v7 = 0;
    result = v2;
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = v6[1];
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

LABEL_7:
  if (!result)
  {
    return result;
  }

LABEL_21:
  if (!v8)
  {
    return result;
  }

  if (!v5)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v14 = v7[2];
    v15 = *v14;
    v16 = *(v7 + 24);
    if (*v14 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v14 + 24) = 0;
      v17 = v14[1];
      v18 = *v17;
      v14[1] = *v17;
      if (v18)
      {
        *(v18 + 16) = v14;
      }

      v19 = v14[2];
      v17[2] = v19;
      v19[*v19 != v14] = v17;
      *v17 = v14;
      v14[2] = v17;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v20 = *v7;
    if (*v7 && *(v20 + 24) != 1)
    {
      v21 = v7[1];
      if (!v21)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v21 + 24) == 1)
      {
LABEL_62:
        *(v20 + 24) = 1;
        *(v7 + 24) = 0;
        v29 = v20[1];
        *v7 = v29;
        if (v29)
        {
          *(v29 + 16) = v7;
        }

        v30 = v7[2];
        v30[*v30 != v7] = v20;
        v20[1] = v7;
        v20[2] = v30;
        v7[2] = v20;
        v21 = v7;
      }

      else
      {
        v20 = v7;
      }

      v31 = v20[2];
      *(v20 + 24) = *(v31 + 24);
      *(v31 + 24) = 1;
      *(v21 + 24) = 1;
      v32 = *(v31 + 8);
      v33 = *v32;
      *(v31 + 8) = *v32;
      if (v33)
      {
        *(v33 + 16) = v31;
      }

      v34 = *(v31 + 16);
      v32[2] = v34;
      v34[*v34 != v31] = v32;
      *v32 = v31;
      *(v31 + 16) = v32;
      return result;
    }

    v21 = v7[1];
    if (v21 && *(v21 + 24) != 1)
    {
      goto LABEL_61;
    }

    *(v7 + 24) = 0;
    v12 = v7[2];
    if (v12 == result || (v12[3] & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_28:
    v7 = v12[2][*v12[2] == v12];
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v14 + 24) = 0;
    v22 = v15[1];
    *v14 = v22;
    if (v22)
    {
      v22[2] = v14;
    }

    v23 = v14[2];
    v23[*v23 != v14] = v15;
    v15[1] = v14;
    v15[2] = v23;
    v14[2] = v15;
    v24 = v7[1];
    if (result == v24)
    {
      result = v7;
    }

    v7 = *v24;
  }

  v25 = *v7;
  if (*v7 && *(v25 + 24) != 1)
  {
    goto LABEL_69;
  }

  v26 = v7[1];
  if (!v26 || *(v26 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v12 = v7[2];
    if (*(v12 + 24) != 1 || v12 == result)
    {
LABEL_59:
      *(v12 + 24) = 1;
      return result;
    }

    goto LABEL_28;
  }

  if (v25 && (v25[3] & 1) == 0)
  {
LABEL_69:
    v26 = v7;
  }

  else
  {
    *(v26 + 24) = 1;
    *(v7 + 24) = 0;
    v27 = *v26;
    v7[1] = *v26;
    if (v27)
    {
      *(v27 + 16) = v7;
    }

    v28 = v7[2];
    v26[2] = v28;
    v28[*v28 != v7] = v26;
    *v26 = v7;
    v7[2] = v26;
    v25 = v7;
  }

  v35 = v26[2];
  *(v26 + 24) = *(v35 + 24);
  *(v35 + 24) = 1;
  *(v25 + 24) = 1;
  v36 = *v35;
  v37 = *(*v35 + 8);
  *v35 = v37;
  if (v37)
  {
    *(v37 + 16) = v35;
  }

  v38 = v35[2];
  v38[*v38 != v35] = v36;
  *(v36 + 8) = v35;
  *(v36 + 16) = v38;
  v35[2] = v36;
  return result;
}

void *std::__tree<std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_27:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      v11 = v10 >= 0 ? v7 : v8;
      v12 = v10 >= 0 ? *(v7 + 23) : v7[1];
      v13 = (v12 >= v5 ? v5 : v12);
      v14 = memcmp(v4, v11, v13);
      if (v14)
      {
        break;
      }

      if (v5 >= v12)
      {
        goto LABEL_22;
      }

LABEL_8:
      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_27;
      }
    }

    if (v14 < 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    v15 = memcmp(v11, v4, v13);
    if (v15)
    {
      if ((v15 & 0x80000000) == 0)
      {
        return v6;
      }

      goto LABEL_26;
    }

    if (v12 >= v5)
    {
      return v6;
    }

LABEL_26:
    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_27;
    }
  }
}

void sub_247449AB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy((v1 + 64), *(v1 + 56));
      if (*(v1 + 55) < 0)
      {
        operator delete(*(v1 + 32));
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t nlohmann::json_abi_v3_11_2::detail::out_of_range::out_of_range(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_28593CBA8;
  *(a1 + 8) = *(a2 + 8);
  MEMORY[0x24C1A1B60](a1 + 16, a2 + 16);
  *a1 = &unk_28593DBF8;
  return a1;
}

uint64_t nlohmann::json_abi_v3_11_2::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::handle_value<double &>(unsigned __int8 **a1, uint64_t *a2, char a3)
{
  if (((*&a1[4][((a1[5] - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (*(a1 + 40) - 1)) & 1) == 0)
  {
    return 0;
  }

  v4 = *a2;
  v31[0] = 7;
  v32 = v4;
  if (a3)
  {
    goto LABEL_5;
  }

  v34 = (a1[2] - a1[1]) >> 3;
  v33 = 5;
  v5 = a1[15];
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if ((*(*v5 + 48))(v5, &v34, &v33, v31))
  {
LABEL_5:
    v6 = a1[2];
    if (a1[1] == v6)
    {
      v12 = v31[0];
      v13 = v32;
      v31[0] = 0;
      v32 = 0;
      v14 = *a1;
      v15 = **a1;
      *v14 = v12;
      v29 = v15;
      v16 = *(v14 + 8);
      *(v14 + 8) = v13;
      v30 = v16;
      nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(&v30, v15);
      v17 = *a1;
LABEL_17:
      v26 = 1;
      goto LABEL_18;
    }

    v7 = *(v6 - 1);
    if (v7)
    {
      if (*v7 == 2)
      {
        v8 = *(v7 + 8);
        v9 = *(v8 + 8);
        if (v9 >= *(v8 + 16))
        {
          v10 = std::vector<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::__emplace_back_slow_path<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>(v8, v31);
        }

        else
        {
          *v9 = v31[0];
          *(v9 + 8) = v32;
          v31[0] = 0;
          v32 = 0;
          v10 = v9 + 16;
        }

        *(v8 + 8) = v10;
        v27 = *(*(*(a1[2] - 1) + 8) + 8) - 16;
        goto LABEL_17;
      }

      v18 = (a1[8] - 1);
      v19 = *&a1[7][(v18 >> 3) & 0x1FFFFFFFFFFFFFF8];
      a1[8] = v18;
      if ((v19 >> v18))
      {
        v20 = v31[0];
        v21 = v32;
        v31[0] = 0;
        v32 = 0;
        v22 = a1[10];
        v23 = *v22;
        *v22 = v20;
        v24 = *(v22 + 1);
        *(v22 + 1) = v21;
        v28 = v24;
        nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(&v28, v23);
        v25 = a1[10];
        goto LABEL_17;
      }
    }
  }

  v26 = 0;
LABEL_18:
  nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(&v32, v31[0]);
  return v26;
}

void sub_247449DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::~basic_json(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::json_abi_v3_11_2::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::handle_value<BOOL &>(unsigned __int8 **a1, unsigned __int8 *a2, char a3)
{
  if (((*&a1[4][((a1[5] - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (*(a1 + 40) - 1)) & 1) == 0)
  {
    return 0;
  }

  v4 = *a2;
  v31[0] = 4;
  v32 = v4;
  if (a3)
  {
    goto LABEL_5;
  }

  v34 = (a1[2] - a1[1]) >> 3;
  v33 = 5;
  v5 = a1[15];
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if ((*(*v5 + 48))(v5, &v34, &v33, v31))
  {
LABEL_5:
    v6 = a1[2];
    if (a1[1] == v6)
    {
      v12 = v31[0];
      v13 = v32;
      v31[0] = 0;
      v32 = 0;
      v14 = *a1;
      v15 = **a1;
      *v14 = v12;
      v29 = v15;
      v16 = *(v14 + 8);
      *(v14 + 8) = v13;
      v30 = v16;
      nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(&v30, v15);
      v17 = *a1;
LABEL_17:
      v26 = 1;
      goto LABEL_18;
    }

    v7 = *(v6 - 1);
    if (v7)
    {
      if (*v7 == 2)
      {
        v8 = *(v7 + 8);
        v9 = *(v8 + 8);
        if (v9 >= *(v8 + 16))
        {
          v10 = std::vector<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::__emplace_back_slow_path<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>(v8, v31);
        }

        else
        {
          *v9 = v31[0];
          *(v9 + 8) = v32;
          v31[0] = 0;
          v32 = 0;
          v10 = v9 + 16;
        }

        *(v8 + 8) = v10;
        v27 = *(*(*(a1[2] - 1) + 8) + 8) - 16;
        goto LABEL_17;
      }

      v18 = (a1[8] - 1);
      v19 = *&a1[7][(v18 >> 3) & 0x1FFFFFFFFFFFFFF8];
      a1[8] = v18;
      if ((v19 >> v18))
      {
        v20 = v31[0];
        v21 = v32;
        v31[0] = 0;
        v32 = 0;
        v22 = a1[10];
        v23 = *v22;
        *v22 = v20;
        v24 = *(v22 + 1);
        *(v22 + 1) = v21;
        v28 = v24;
        nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(&v28, v23);
        v25 = a1[10];
        goto LABEL_17;
      }
    }
  }

  v26 = 0;
LABEL_18:
  nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(&v32, v31[0]);
  return v26;
}

void sub_247449FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::~basic_json(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::json_abi_v3_11_2::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::handle_value<decltype(nullptr)>(unsigned __int8 **a1, uint64_t a2, char a3)
{
  if (((*&a1[4][((a1[5] - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (*(a1 + 40) - 1)) & 1) == 0)
  {
    return 0;
  }

  v30[0] = 0;
  v31 = 0;
  if (a3)
  {
    goto LABEL_5;
  }

  v33 = (a1[2] - a1[1]) >> 3;
  v32 = 5;
  v4 = a1[15];
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if ((*(*v4 + 48))(v4, &v33, &v32, v30))
  {
LABEL_5:
    v5 = a1[2];
    if (a1[1] == v5)
    {
      v11 = v30[0];
      v12 = v31;
      v30[0] = 0;
      v31 = 0;
      v13 = *a1;
      v14 = **a1;
      *v13 = v11;
      v28 = v14;
      v15 = *(v13 + 8);
      *(v13 + 8) = v12;
      v29 = v15;
      nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(&v29, v14);
      v16 = *a1;
LABEL_17:
      v25 = 1;
      goto LABEL_18;
    }

    v6 = *(v5 - 1);
    if (v6)
    {
      if (*v6 == 2)
      {
        v7 = *(v6 + 8);
        v8 = *(v7 + 8);
        if (v8 >= *(v7 + 16))
        {
          v9 = std::vector<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::__emplace_back_slow_path<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>(v7, v30);
        }

        else
        {
          *v8 = v30[0];
          *(v8 + 8) = v31;
          v30[0] = 0;
          v31 = 0;
          v9 = v8 + 16;
        }

        *(v7 + 8) = v9;
        v26 = *(*(*(a1[2] - 1) + 8) + 8) - 16;
        goto LABEL_17;
      }

      v17 = (a1[8] - 1);
      v18 = *&a1[7][(v17 >> 3) & 0x1FFFFFFFFFFFFFF8];
      a1[8] = v17;
      if ((v18 >> v17))
      {
        v19 = v30[0];
        v20 = v31;
        v30[0] = 0;
        v31 = 0;
        v21 = a1[10];
        v22 = *v21;
        *v21 = v19;
        v23 = *(v21 + 1);
        *(v21 + 1) = v20;
        v27 = v23;
        nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(&v27, v22);
        v24 = a1[10];
        goto LABEL_17;
      }
    }
  }

  v25 = 0;
LABEL_18:
  nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(&v31, v30[0]);
  return v25;
}

void sub_24744A214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::~basic_json(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::json_abi_v3_11_2::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::handle_value<long long &>(unsigned __int8 **a1, uint64_t *a2, char a3)
{
  if (((*&a1[4][((a1[5] - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (*(a1 + 40) - 1)) & 1) == 0)
  {
    return 0;
  }

  v4 = *a2;
  v31[0] = 5;
  v32 = v4;
  if (a3)
  {
    goto LABEL_5;
  }

  v34 = (a1[2] - a1[1]) >> 3;
  v33 = 5;
  v5 = a1[15];
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if ((*(*v5 + 48))(v5, &v34, &v33, v31))
  {
LABEL_5:
    v6 = a1[2];
    if (a1[1] == v6)
    {
      v12 = v31[0];
      v13 = v32;
      v31[0] = 0;
      v32 = 0;
      v14 = *a1;
      v15 = **a1;
      *v14 = v12;
      v29 = v15;
      v16 = *(v14 + 8);
      *(v14 + 8) = v13;
      v30 = v16;
      nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(&v30, v15);
      v17 = *a1;
LABEL_17:
      v26 = 1;
      goto LABEL_18;
    }

    v7 = *(v6 - 1);
    if (v7)
    {
      if (*v7 == 2)
      {
        v8 = *(v7 + 8);
        v9 = *(v8 + 8);
        if (v9 >= *(v8 + 16))
        {
          v10 = std::vector<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::__emplace_back_slow_path<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>(v8, v31);
        }

        else
        {
          *v9 = v31[0];
          *(v9 + 8) = v32;
          v31[0] = 0;
          v32 = 0;
          v10 = v9 + 16;
        }

        *(v8 + 8) = v10;
        v27 = *(*(*(a1[2] - 1) + 8) + 8) - 16;
        goto LABEL_17;
      }

      v18 = (a1[8] - 1);
      v19 = *&a1[7][(v18 >> 3) & 0x1FFFFFFFFFFFFFF8];
      a1[8] = v18;
      if ((v19 >> v18))
      {
        v20 = v31[0];
        v21 = v32;
        v31[0] = 0;
        v32 = 0;
        v22 = a1[10];
        v23 = *v22;
        *v22 = v20;
        v24 = *(v22 + 1);
        *(v22 + 1) = v21;
        v28 = v24;
        nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(&v28, v23);
        v25 = a1[10];
        goto LABEL_17;
      }
    }
  }

  v26 = 0;
LABEL_18:
  nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(&v32, v31[0]);
  return v26;
}

void sub_24744A440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::~basic_json(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::json_abi_v3_11_2::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::handle_value<std::string&>(uint64_t a1)
{
  if ((*(*(a1 + 32) + (((*(a1 + 40) - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (*(a1 + 40) - 1)))
  {
    operator new();
  }

  return 0;
}

void sub_24744A6C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::~basic_json(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::json_abi_v3_11_2::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::handle_value<unsigned long long &>(unsigned __int8 **a1, uint64_t *a2, char a3)
{
  if (((*&a1[4][((a1[5] - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (*(a1 + 40) - 1)) & 1) == 0)
  {
    return 0;
  }

  v4 = *a2;
  v31[0] = 6;
  v32 = v4;
  if (a3)
  {
    goto LABEL_5;
  }

  v34 = (a1[2] - a1[1]) >> 3;
  v33 = 5;
  v5 = a1[15];
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if ((*(*v5 + 48))(v5, &v34, &v33, v31))
  {
LABEL_5:
    v6 = a1[2];
    if (a1[1] == v6)
    {
      v12 = v31[0];
      v13 = v32;
      v31[0] = 0;
      v32 = 0;
      v14 = *a1;
      v15 = **a1;
      *v14 = v12;
      v29 = v15;
      v16 = *(v14 + 8);
      *(v14 + 8) = v13;
      v30 = v16;
      nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(&v30, v15);
      v17 = *a1;
LABEL_17:
      v26 = 1;
      goto LABEL_18;
    }

    v7 = *(v6 - 1);
    if (v7)
    {
      if (*v7 == 2)
      {
        v8 = *(v7 + 8);
        v9 = *(v8 + 8);
        if (v9 >= *(v8 + 16))
        {
          v10 = std::vector<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::__emplace_back_slow_path<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>(v8, v31);
        }

        else
        {
          *v9 = v31[0];
          *(v9 + 8) = v32;
          v31[0] = 0;
          v32 = 0;
          v10 = v9 + 16;
        }

        *(v8 + 8) = v10;
        v27 = *(*(*(a1[2] - 1) + 8) + 8) - 16;
        goto LABEL_17;
      }

      v18 = (a1[8] - 1);
      v19 = *&a1[7][(v18 >> 3) & 0x1FFFFFFFFFFFFFF8];
      a1[8] = v18;
      if ((v19 >> v18))
      {
        v20 = v31[0];
        v21 = v32;
        v31[0] = 0;
        v32 = 0;
        v22 = a1[10];
        v23 = *v22;
        *v22 = v20;
        v24 = *(v22 + 1);
        *(v22 + 1) = v21;
        v28 = v24;
        nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(&v28, v23);
        v25 = a1[10];
        goto LABEL_17;
      }
    }
  }

  v26 = 0;
LABEL_18:
  nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(&v32, v31[0]);
  return v26;
}

void sub_24744A8F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::~basic_json(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::json_abi_v3_11_2::detail::parse_error::parse_error(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_28593CBA8;
  *(a1 + 8) = *(a2 + 8);
  MEMORY[0x24C1A1B60](a1 + 16, a2 + 16);
  *a1 = &unk_28593DC78;
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

void nlohmann::json_abi_v3_11_2::detail::parse_error::~parse_error(std::exception *this)
{
  this->__vftable = &unk_28593CBA8;
  MEMORY[0x24C1A1B70](&this[2]);
  std::exception::~exception(this);

  JUMPOUT(0x24C1A2010);
}

std::string *nlohmann::json_abi_v3_11_2::detail::concat<std::string,std::string,char const(&)[12],std::string,char const(&)[3],std::string,std::string const&>@<X0>(char *__s@<X1>, uint64_t a2@<X0>, uint64_t a3@<X2>, const char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, std::string *a7@<X8>)
{
  a7->__r_.__value_.__r.__words[0] = 0;
  a7->__r_.__value_.__l.__size_ = 0;
  a7->__r_.__value_.__r.__words[2] = 0;
  v12 = *(a2 + 23);
  v13 = v12;
  v14 = *(a2 + 8);
  if ((v12 & 0x80u) == 0)
  {
    v15 = *(a2 + 23);
  }

  else
  {
    v15 = *(a2 + 8);
  }

  v40 = v15;
  v16 = strlen(__s);
  if (*(a3 + 23) >= 0)
  {
    v17 = *(a3 + 23);
  }

  else
  {
    v17 = *(a3 + 8);
  }

  v18 = strlen(a4);
  v19 = *(a5 + 23);
  if ((v19 & 0x80u) != 0)
  {
    v19 = *(a5 + 8);
  }

  v20 = *(a6 + 23);
  if ((v20 & 0x80u) != 0)
  {
    v20 = *(a6 + 8);
  }

  v21 = v40 + v16 + v18 + v17 + v19 + v20;
  if (v21 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v21 >= 0x17)
  {
    v22 = v21 | 7;
    if (v22 == 23)
    {
      v23 = 24;
    }

    else
    {
      v23 = v22;
    }

    std::string::__shrink_or_extend[abi:ne200100](a7, v23);
    v12 = *(a2 + 23);
    v14 = *(a2 + 8);
    v13 = *(a2 + 23);
  }

  if (v13 >= 0)
  {
    v24 = a2;
  }

  else
  {
    v24 = *a2;
  }

  if (v13 >= 0)
  {
    v25 = v12;
  }

  else
  {
    v25 = v14;
  }

  std::string::append(a7, v24, v25);
  v26 = strlen(__s);
  std::string::append(a7, __s, v26);
  v27 = *(a3 + 23);
  if (v27 >= 0)
  {
    v28 = a3;
  }

  else
  {
    v28 = *a3;
  }

  if (v27 >= 0)
  {
    v29 = *(a3 + 23);
  }

  else
  {
    v29 = *(a3 + 8);
  }

  std::string::append(a7, v28, v29);
  v30 = strlen(a4);
  std::string::append(a7, a4, v30);
  v31 = *(a5 + 23);
  if (v31 >= 0)
  {
    v32 = a5;
  }

  else
  {
    v32 = *a5;
  }

  if (v31 >= 0)
  {
    v33 = *(a5 + 23);
  }

  else
  {
    v33 = *(a5 + 8);
  }

  std::string::append(a7, v32, v33);
  v34 = *(a6 + 23);
  if (v34 >= 0)
  {
    v35 = a6;
  }

  else
  {
    v35 = *a6;
  }

  if (v34 >= 0)
  {
    v36 = *(a6 + 23);
  }

  else
  {
    v36 = *(a6 + 8);
  }

  return std::string::append(a7, v35, v36);
}

void sub_24744ABD0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void nlohmann::json_abi_v3_11_2::detail::parse_error::position_string(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::to_string(&v5, *(a1 + 16) + 1);
  std::to_string(&__p, *(a1 + 8));
  nlohmann::json_abi_v3_11_2::detail::concat<std::string,char const(&)[29],std::string,char const(&)[5],std::string>(" at line ", &v5, ", column ", &__p, a2);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v5.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_5:
    operator delete(v5.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_5;
  }
}

void sub_24744AC8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void nlohmann::json_abi_v3_11_2::detail::concat<std::string,char const*,char const(&)[15],std::string,char>(const char **a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, std::string::value_type *a4@<X3>, std::string *a5@<X8>)
{
  a5->__r_.__value_.__r.__words[0] = 0;
  a5->__r_.__value_.__l.__size_ = 0;
  a5->__r_.__value_.__r.__words[2] = 0;
  v10 = *a1;
  v11 = strlen(*a1);
  v12 = strlen(a2);
  v13 = *(a3 + 23);
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(a3 + 8);
  }

  v14 = v11 + v12 + v13 + 1;
  if (v14 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v14 >= 0x17)
  {
    v15 = v14 | 7;
    if (v15 == 23)
    {
      v16 = 24;
    }

    else
    {
      v16 = v15;
    }

    std::string::__shrink_or_extend[abi:ne200100](a5, v16);
    v10 = *a1;
  }

  v17 = strlen(v10);
  std::string::append(a5, v10, v17);
  v18 = strlen(a2);
  std::string::append(a5, a2, v18);
  v19 = *(a3 + 23);
  if (v19 >= 0)
  {
    v20 = a3;
  }

  else
  {
    v20 = *a3;
  }

  if (v19 >= 0)
  {
    v21 = *(a3 + 23);
  }

  else
  {
    v21 = *(a3 + 8);
  }

  std::string::append(a5, v20, v21);
  std::string::push_back(a5, *a4);
}

void sub_24744ADF4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nlohmann::json_abi_v3_11_2::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::~json_sax_dom_callback_parser(uint64_t a1)
{
  nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy((a1 + 144), *(a1 + 136));
  v2 = *(a1 + 120);
  if (v2 == a1 + 96)
  {
    (*(*v2 + 32))(v2);
    v3 = *(a1 + 56);
    if (v3)
    {
LABEL_5:
      operator delete(v3);
    }
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    v3 = *(a1 + 56);
    if (v3)
    {
      goto LABEL_5;
    }
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    *(a1 + 16) = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t nlohmann::json_abi_v3_11_2::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::parse_error<nlohmann::json_abi_v3_11_2::detail::out_of_range>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 40) = 1;
  if (*(a1 + 41) == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v7 = nlohmann::json_abi_v3_11_2::detail::out_of_range::out_of_range(exception, a4);
  }

  return 0;
}

uint64_t nlohmann::json_abi_v3_11_2::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::handle_value<nlohmann::json_abi_v3_11_2::detail::value_t>(unsigned __int8 **a1, unsigned __int8 *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v9 = *a2;
    v20 = v9;
    nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::json_value(&v21, v9);
    v10 = *a1;
    v11 = **a1;
    *v10 = v20;
    v20 = v11;
    v12 = *(v10 + 8);
    *(v10 + 8) = v21;
    v21 = v12;
    nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(&v21, v11);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 1);
    if (*v4 == 2)
    {
      v5 = *(v4 + 8);
      v6 = *(v5 + 8);
      if (v6 >= *(v5 + 16))
      {
        v8 = std::vector<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::__emplace_back_slow_path<nlohmann::json_abi_v3_11_2::detail::value_t>(v5, a2);
      }

      else
      {
        v7 = *a2;
        *v6 = v7;
        nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::json_value((v6 + 8), v7);
        v8 = v6 + 16;
        *(v5 + 8) = v6 + 16;
      }

      *(v5 + 8) = v8;
      return *(*(*(a1[2] - 1) + 8) + 8) - 16;
    }

    else
    {
      v14 = *a2;
      v18 = v14;
      nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::json_value(&v19, v14);
      v15 = a1[4];
      v16 = *v15;
      *v15 = v18;
      v17 = *(v15 + 1);
      *(v15 + 1) = v19;
      v19 = v17;
      nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(&v19, v16);
      return a1[4];
    }
  }
}

uint64_t std::vector<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::__emplace_back_slow_path<nlohmann::json_abi_v3_11_2::detail::value_t>(uint64_t **a1, unsigned __int8 *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 3 > v3)
  {
    v3 = v5 >> 3;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v18 = (16 * v2);
  v7 = *a2;
  *v18 = v7;
  nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::json_value((16 * v2 + 8), v7);
  v8 = 16 * v2 + 16;
  v9 = *a1;
  v10 = a1[1];
  v11 = &v18[*a1 - v10];
  if (*a1 != v10)
  {
    v12 = *a1;
    v13 = &v18[*a1 - v10];
    do
    {
      *v13 = *v12;
      *(v13 + 1) = v12[1];
      *v12 = 0;
      v12[1] = 0;
      v12 += 2;
      v13 += 16;
    }

    while (v12 != v10);
    do
    {
      v15 = *v9;
      v14 = v9 + 1;
      nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(v14, v15);
      v9 = v14 + 1;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  v16 = a1[2];
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_24744B1EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::json_abi_v3_11_2::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::handle_value<double &>(unsigned __int8 **a1, uint64_t *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v9 = *a2;
    v10 = *a1;
    v11 = **a1;
    *v10 = 7;
    v19 = v11;
    v12 = *(v10 + 8);
    *(v10 + 8) = v9;
    v20 = v12;
    nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(&v20, v11);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 1);
    if (*v4 == 2)
    {
      v5 = *(v4 + 8);
      v6 = v5[1];
      if (v6 >= v5[2])
      {
        v8 = std::vector<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::__emplace_back_slow_path<double &>(v5, a2);
      }

      else
      {
        *(v6 + 8) = 0;
        v7 = *a2;
        *v6 = 7;
        *(v6 + 8) = v7;
        v8 = v6 + 16;
      }

      v5[1] = v8;
      return *(*(*(a1[2] - 1) + 8) + 8) - 16;
    }

    else
    {
      v14 = *a2;
      v15 = a1[4];
      v16 = *v15;
      *v15 = 7;
      v17 = *(v15 + 1);
      *(v15 + 1) = v14;
      v18 = v17;
      nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(&v18, v16);
      return a1[4];
    }
  }
}

uint64_t std::vector<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::__emplace_back_slow_path<double &>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = &v3[-*a1] >> 4;
  v5 = v4 + 1;
  if ((v4 + 1) >> 60)
  {
    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  v7 = a1[2] - v2;
  if (v7 >> 3 > v5)
  {
    v5 = v7 >> 3;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF0)
  {
    v8 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v5;
  }

  if (v8)
  {
    if (!(v8 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v9 = &v3[-*a1] >> 4;
  v10 = 16 * v4;
  v11 = *a2;
  *v10 = 7;
  *(v10 + 8) = v11;
  v12 = v10 - 16 * v9;
  if (v2 != v3)
  {
    v13 = v2;
    v14 = v12;
    do
    {
      *v14 = *v13;
      *(v14 + 8) = v13[1];
      *v13 = 0;
      v13[1] = 0;
      v13 += 2;
      v14 += 16;
    }

    while (v13 != v3);
    do
    {
      v16 = *v2;
      v15 = v2 + 1;
      nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(v15, v16);
      v2 = v15 + 1;
    }

    while (v2 != v3);
    v2 = *a1;
  }

  *a1 = v12;
  a1[1] = v10 + 16;
  a1[2] = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v10 + 16;
}

uint64_t nlohmann::json_abi_v3_11_2::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::handle_value<BOOL &>(unsigned __int8 **a1, unsigned __int8 *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v9 = *a2;
    v10 = *a1;
    v11 = **a1;
    *v10 = 4;
    v19 = v11;
    v12 = *(v10 + 8);
    *(v10 + 8) = v9;
    v20 = v12;
    nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(&v20, v11);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 1);
    if (*v4 == 2)
    {
      v5 = *(v4 + 8);
      v6 = v5[1];
      if (v6 >= v5[2])
      {
        v8 = std::vector<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::__emplace_back_slow_path<BOOL &>(v5, a2);
      }

      else
      {
        *(v6 + 8) = 0;
        v7 = *a2;
        *v6 = 4;
        *(v6 + 8) = v7;
        v8 = v6 + 16;
      }

      v5[1] = v8;
      return *(*(*(a1[2] - 1) + 8) + 8) - 16;
    }

    else
    {
      v14 = *a2;
      v15 = a1[4];
      v16 = *v15;
      *v15 = 4;
      v17 = *(v15 + 1);
      *(v15 + 1) = v14;
      v18 = v17;
      nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(&v18, v16);
      return a1[4];
    }
  }
}

uint64_t std::vector<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::__emplace_back_slow_path<BOOL &>(uint64_t *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = &v3[-*a1] >> 4;
  v5 = v4 + 1;
  if ((v4 + 1) >> 60)
  {
    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  v7 = a1[2] - v2;
  if (v7 >> 3 > v5)
  {
    v5 = v7 >> 3;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF0)
  {
    v8 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v5;
  }

  if (v8)
  {
    if (!(v8 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v9 = &v3[-*a1] >> 4;
  v10 = 16 * v4;
  v11 = *a2;
  *v10 = 4;
  *(v10 + 8) = v11;
  v12 = v10 - 16 * v9;
  if (v2 != v3)
  {
    v13 = v2;
    v14 = v12;
    do
    {
      *v14 = *v13;
      *(v14 + 8) = v13[1];
      *v13 = 0;
      v13[1] = 0;
      v13 += 2;
      v14 += 16;
    }

    while (v13 != v3);
    do
    {
      v16 = *v2;
      v15 = v2 + 1;
      nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(v15, v16);
      v2 = v15 + 1;
    }

    while (v2 != v3);
    v2 = *a1;
  }

  *a1 = v12;
  a1[1] = v10 + 16;
  a1[2] = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v10 + 16;
}

uint64_t nlohmann::json_abi_v3_11_2::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::handle_value<decltype(nullptr)>(unsigned __int8 **a1)
{
  v2 = a1[2];
  if (a1[1] == v2)
  {
    v7 = *a1;
    v8 = **a1;
    *v7 = 0;
    v15 = v8;
    v9 = *(v7 + 8);
    *(v7 + 8) = 0;
    v16 = v9;
    nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(&v16, v8);
    return *a1;
  }

  else
  {
    v3 = *(v2 - 1);
    if (*v3 == 2)
    {
      v4 = *(v3 + 8);
      v5 = v4[1];
      if (v5 >= v4[2])
      {
        v6 = std::vector<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::__emplace_back_slow_path<decltype(nullptr)>(v4);
      }

      else
      {
        *v5 = 0;
        *(v5 + 8) = 0;
        v6 = v5 + 16;
      }

      v4[1] = v6;
      return *(*(*(a1[2] - 1) + 8) + 8) - 16;
    }

    else
    {
      v11 = a1[4];
      v12 = *v11;
      *v11 = 0;
      v13 = *(v11 + 1);
      *(v11 + 1) = 0;
      v14 = v13;
      nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(&v14, v12);
      return a1[4];
    }
  }
}

uint64_t std::vector<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::__emplace_back_slow_path<decltype(nullptr)>(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = &v2[-*a1] >> 4;
  v4 = v3 + 1;
  if ((v3 + 1) >> 60)
  {
    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - v1;
  if (v6 >> 3 > v4)
  {
    v4 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v8 = &v2[-*a1] >> 4;
  v9 = 16 * v3;
  *v9 = 0;
  *(v9 + 8) = 0;
  v10 = v9 - 16 * v8;
  if (v1 != v2)
  {
    v11 = v1;
    v12 = v10;
    do
    {
      *v12 = *v11;
      *(v12 + 8) = v11[1];
      *v11 = 0;
      v11[1] = 0;
      v11 += 2;
      v12 += 16;
    }

    while (v11 != v2);
    do
    {
      v14 = *v1;
      v13 = v1 + 1;
      nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(v13, v14);
      v1 = v13 + 1;
    }

    while (v1 != v2);
    v1 = *a1;
  }

  *a1 = v10;
  a1[1] = v9 + 16;
  a1[2] = 0;
  if (v1)
  {
    operator delete(v1);
  }

  return v9 + 16;
}

uint64_t nlohmann::json_abi_v3_11_2::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::handle_value<long long &>(unsigned __int8 **a1, uint64_t *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v9 = *a2;
    v10 = *a1;
    v11 = **a1;
    *v10 = 5;
    v19 = v11;
    v12 = *(v10 + 8);
    *(v10 + 8) = v9;
    v20 = v12;
    nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(&v20, v11);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 1);
    if (*v4 == 2)
    {
      v5 = *(v4 + 8);
      v6 = v5[1];
      if (v6 >= v5[2])
      {
        v8 = std::vector<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::__emplace_back_slow_path<long long &>(v5, a2);
      }

      else
      {
        *(v6 + 8) = 0;
        v7 = *a2;
        *v6 = 5;
        *(v6 + 8) = v7;
        v8 = v6 + 16;
      }

      v5[1] = v8;
      return *(*(*(a1[2] - 1) + 8) + 8) - 16;
    }

    else
    {
      v14 = *a2;
      v15 = a1[4];
      v16 = *v15;
      *v15 = 5;
      v17 = *(v15 + 1);
      *(v15 + 1) = v14;
      v18 = v17;
      nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(&v18, v16);
      return a1[4];
    }
  }
}

uint64_t std::vector<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::__emplace_back_slow_path<long long &>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = &v3[-*a1] >> 4;
  v5 = v4 + 1;
  if ((v4 + 1) >> 60)
  {
    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  v7 = a1[2] - v2;
  if (v7 >> 3 > v5)
  {
    v5 = v7 >> 3;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF0)
  {
    v8 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v5;
  }

  if (v8)
  {
    if (!(v8 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v9 = &v3[-*a1] >> 4;
  v10 = 16 * v4;
  v11 = *a2;
  *v10 = 5;
  *(v10 + 8) = v11;
  v12 = v10 - 16 * v9;
  if (v2 != v3)
  {
    v13 = v2;
    v14 = v12;
    do
    {
      *v14 = *v13;
      *(v14 + 8) = v13[1];
      *v13 = 0;
      v13[1] = 0;
      v13 += 2;
      v14 += 16;
    }

    while (v13 != v3);
    do
    {
      v16 = *v2;
      v15 = v2 + 1;
      nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(v15, v16);
      v2 = v15 + 1;
    }

    while (v2 != v3);
    v2 = *a1;
  }

  *a1 = v12;
  a1[1] = v10 + 16;
  a1[2] = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v10 + 16;
}

void nlohmann::json_abi_v3_11_2::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::handle_value<std::string&>(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (*(a1 + 8) != v1)
  {
    v2 = *(v1 - 8);
    if (*v2 == 2)
    {
      v3 = *(v2 + 8);
      v4 = v3[1];
      if (v4 < v3[2])
      {
        *(v4 + 8) = 0;
        *v4 = 3;
        operator new();
      }

      std::vector<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::__emplace_back_slow_path<std::string&>(v3);
    }

    operator new();
  }

  operator new();
}

void sub_24744BDB8(_Unwind_Exception *a1)
{
  operator delete(v2);
  *(v1 + 8) = v3;
  _Unwind_Resume(a1);
}

void std::vector<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::__emplace_back_slow_path<std::string&>(void *a1)
{
  v1 = (a1[1] - *a1) >> 4;
  v2 = v1 + 1;
  if (!((v1 + 1) >> 60))
  {
    v3 = a1[2] - *a1;
    if (v3 >> 3 > v2)
    {
      v2 = v3 >> 3;
    }

    if (v3 >= 0x7FFFFFFFFFFFFFF0)
    {
      v4 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v4 = v2;
    }

    if (v4)
    {
      if (!(v4 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v5 = 16 * v1;
    *(v5 + 8) = 0;
    *v5 = 3;
    operator new();
  }

  std::vector<char>::__throw_length_error[abi:ne200100]();
}

void sub_24744BFA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  operator delete(v10);
  std::__split_buffer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::~__split_buffer(&a10);
  _Unwind_Resume(a1);
}

void sub_24744BFC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::json_abi_v3_11_2::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::handle_value<unsigned long long &>(unsigned __int8 **a1, uint64_t *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v9 = *a2;
    v10 = *a1;
    v11 = **a1;
    *v10 = 6;
    v19 = v11;
    v12 = *(v10 + 8);
    *(v10 + 8) = v9;
    v20 = v12;
    nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(&v20, v11);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 1);
    if (*v4 == 2)
    {
      v5 = *(v4 + 8);
      v6 = v5[1];
      if (v6 >= v5[2])
      {
        v8 = std::vector<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::__emplace_back_slow_path<unsigned long long &>(v5, a2);
      }

      else
      {
        *(v6 + 8) = 0;
        v7 = *a2;
        *v6 = 6;
        *(v6 + 8) = v7;
        v8 = v6 + 16;
      }

      v5[1] = v8;
      return *(*(*(a1[2] - 1) + 8) + 8) - 16;
    }

    else
    {
      v14 = *a2;
      v15 = a1[4];
      v16 = *v15;
      *v15 = 6;
      v17 = *(v15 + 1);
      *(v15 + 1) = v14;
      v18 = v17;
      nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(&v18, v16);
      return a1[4];
    }
  }
}

uint64_t std::vector<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::__emplace_back_slow_path<unsigned long long &>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = &v3[-*a1] >> 4;
  v5 = v4 + 1;
  if ((v4 + 1) >> 60)
  {
    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  v7 = a1[2] - v2;
  if (v7 >> 3 > v5)
  {
    v5 = v7 >> 3;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF0)
  {
    v8 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v5;
  }

  if (v8)
  {
    if (!(v8 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v9 = &v3[-*a1] >> 4;
  v10 = 16 * v4;
  v11 = *a2;
  *v10 = 6;
  *(v10 + 8) = v11;
  v12 = v10 - 16 * v9;
  if (v2 != v3)
  {
    v13 = v2;
    v14 = v12;
    do
    {
      *v14 = *v13;
      *(v14 + 8) = v13[1];
      *v13 = 0;
      v13[1] = 0;
      v13 += 2;
      v14 += 16;
    }

    while (v13 != v3);
    do
    {
      v16 = *v2;
      v15 = v2 + 1;
      nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(v15, v16);
      v2 = v15 + 1;
    }

    while (v2 != v3);
    v2 = *a1;
  }

  *a1 = v12;
  a1[1] = v10 + 16;
  a1[2] = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v10 + 16;
}

double nlohmann::json_abi_v3_11_2::detail::from_json<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,unsigned int,0>(double *a1, _DWORD *a2)
{
  v2 = *a1;
  if (v2 > 5)
  {
    if (v2 != 7)
    {
      if (v2 == 6)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }

    result = a1[1];
    *a2 = result;
  }

  else
  {
    if (v2 != 4)
    {
      if (v2 == 5)
      {
LABEL_4:
        *a2 = *(a1 + 2);
        return result;
      }

LABEL_7:
      exception = __cxa_allocate_exception(0x20uLL);
      v6 = nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::type_name(a1);
      nlohmann::json_abi_v3_11_2::detail::concat<std::string,char const(&)[51],char const*>("type must be number, but is ", &v6, &v7);
      nlohmann::json_abi_v3_11_2::detail::type_error::create<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void> *,0>(302, &v7, exception);
    }

    *a2 = *(a1 + 8);
  }

  return result;
}

void sub_24744C35C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if (v16)
    {
LABEL_6:
      __cxa_free_exception(v15);
      _Unwind_Resume(a1);
    }
  }

  else if (v16)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(a1);
}

uint64_t nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::basic_json(uint64_t result, unsigned __int8 *a2)
{
  v2 = *a2;
  *result = v2;
  *(result + 8) = 0;
  if (v2 <= 4)
  {
    if (v2 <= 2)
    {
      if (v2 == 1)
      {
        v6 = *(a2 + 1);
        operator new();
      }

      if (v2 == 2)
      {
        v3 = *(a2 + 1);
        operator new();
      }

      return result;
    }

    if (v2 == 3)
    {
      v7 = *(a2 + 1);
      operator new();
    }

    v5 = a2[8];
LABEL_13:
    *(result + 8) = v5;
    return result;
  }

  if (v2 < 8)
  {
    v5 = *(a2 + 1);
    goto LABEL_13;
  }

  if (v2 == 8)
  {
    v4 = *(a2 + 1);
    operator new();
  }

  return result;
}

void sub_24744C638(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>>>::destroy(v1, v1[1]);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>> const&>(uint64_t **a1, uint64_t *a2, const void **a3)
{
  v3 = std::__tree<std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>>>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!*v3)
  {
    operator new();
  }

  return *v3;
}

void sub_24744C75C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_24744C770(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  std::unique_ptr<std::__tree_node<std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>>>::__find_equal<std::string>(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, const void **a5)
{
  v8 = a1 + 1;
  if (a1 + 1 == a2)
  {
    goto LABEL_23;
  }

  v10 = *(a5 + 23);
  if (v10 >= 0)
  {
    v11 = a5;
  }

  else
  {
    v11 = *a5;
  }

  if (v10 >= 0)
  {
    v12 = *(a5 + 23);
  }

  else
  {
    v12 = a5[1];
  }

  v13 = *(a2 + 55);
  if (v13 >= 0)
  {
    v14 = a2 + 4;
  }

  else
  {
    v14 = a2[4];
  }

  if (v13 >= 0)
  {
    v15 = *(a2 + 55);
  }

  else
  {
    v15 = a2[5];
  }

  if (v15 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(v11, v14, v16);
  if (!v17)
  {
    if (v12 >= v15)
    {
      goto LABEL_19;
    }

LABEL_23:
    v19 = *a2;
    if (*a1 == a2)
    {
      v21 = a2;
    }

    else
    {
      if (v19)
      {
        v20 = *a2;
        do
        {
          v21 = v20;
          v20 = v20[1];
        }

        while (v20);
      }

      else
      {
        v22 = a2;
        do
        {
          v21 = v22[2];
          v23 = *v21 == v22;
          v22 = v21;
        }

        while (v23);
      }

      v24 = *(v21 + 55);
      if (v24 >= 0)
      {
        v25 = v21 + 4;
      }

      else
      {
        v25 = v21[4];
      }

      if (v24 >= 0)
      {
        v26 = *(v21 + 55);
      }

      else
      {
        v26 = v21[5];
      }

      v27 = *(a5 + 23);
      if (v27 >= 0)
      {
        v28 = a5;
      }

      else
      {
        v28 = *a5;
      }

      if (v27 >= 0)
      {
        v29 = *(a5 + 23);
      }

      else
      {
        v29 = a5[1];
      }

      if (v29 >= v26)
      {
        v30 = v26;
      }

      else
      {
        v30 = v29;
      }

      v31 = memcmp(v25, v28, v30);
      if (v31)
      {
        if ((v31 & 0x80000000) == 0)
        {
          goto LABEL_48;
        }
      }

      else if (v26 >= v29)
      {
LABEL_48:
        v32 = *v8;
        if (!*v8)
        {
          v33 = v8;
LABEL_69:
          *a3 = v33;
          return v8;
        }

        while (1)
        {
          v33 = v32;
          v36 = v32[4];
          v34 = v32 + 4;
          v35 = v36;
          v37 = *(v34 + 23);
          if (v37 >= 0)
          {
            v38 = v34;
          }

          else
          {
            v38 = v35;
          }

          if (v37 >= 0)
          {
            v39 = *(v34 + 23);
          }

          else
          {
            v39 = v34[1];
          }

          if (v39 >= v29)
          {
            v40 = v29;
          }

          else
          {
            v40 = v39;
          }

          v41 = memcmp(v28, v38, v40);
          if (v41)
          {
            if (v41 < 0)
            {
              goto LABEL_50;
            }

LABEL_64:
            v42 = memcmp(v38, v28, v40);
            if (v42)
            {
              if ((v42 & 0x80000000) == 0)
              {
                goto LABEL_69;
              }
            }

            else if (v39 >= v29)
            {
              goto LABEL_69;
            }

            v8 = v33 + 1;
            v32 = v33[1];
            if (!v32)
            {
              goto LABEL_69;
            }
          }

          else
          {
            if (v29 >= v39)
            {
              goto LABEL_64;
            }

LABEL_50:
            v32 = *v33;
            v8 = v33;
            if (!*v33)
            {
              goto LABEL_69;
            }
          }
        }
      }
    }

    if (v19)
    {
      *a3 = v21;
      return v21 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  if (v17 < 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  v18 = memcmp(v14, v11, v16);
  if (v18)
  {
    if ((v18 & 0x80000000) == 0)
    {
LABEL_21:
      *a3 = a2;
      *a4 = a2;
      return a4;
    }
  }

  else if (v15 >= v12)
  {
    goto LABEL_21;
  }

  v43 = a2[1];
  if (v43)
  {
    v44 = a2[1];
    do
    {
      a4 = v44;
      v44 = *v44;
    }

    while (v44);
  }

  else
  {
    v45 = a2;
    do
    {
      a4 = v45[2];
      v23 = *a4 == v45;
      v45 = a4;
    }

    while (!v23);
  }

  if (a4 != v8)
  {
    v46 = *(a4 + 55);
    if (v46 >= 0)
    {
      v47 = (a4 + 4);
    }

    else
    {
      v47 = a4[4];
    }

    if (v46 >= 0)
    {
      v48 = *(a4 + 55);
    }

    else
    {
      v48 = a4[5];
    }

    if (v48 >= v12)
    {
      v49 = v12;
    }

    else
    {
      v49 = v48;
    }

    v50 = memcmp(v11, v47, v49);
    if (v50)
    {
      if ((v50 & 0x80000000) == 0)
      {
        goto LABEL_95;
      }
    }

    else if (v12 >= v48)
    {
LABEL_95:
      v51 = *v8;
      if (!*v8)
      {
        v52 = v8;
LABEL_116:
        *a3 = v52;
        return v8;
      }

      while (1)
      {
        v52 = v51;
        v55 = v51[4];
        v53 = v51 + 4;
        v54 = v55;
        v56 = *(v53 + 23);
        if (v56 >= 0)
        {
          v57 = v53;
        }

        else
        {
          v57 = v54;
        }

        if (v56 >= 0)
        {
          v58 = *(v53 + 23);
        }

        else
        {
          v58 = v53[1];
        }

        if (v58 >= v12)
        {
          v59 = v12;
        }

        else
        {
          v59 = v58;
        }

        v60 = memcmp(v11, v57, v59);
        if (v60)
        {
          if (v60 < 0)
          {
            goto LABEL_97;
          }

LABEL_111:
          v61 = memcmp(v57, v11, v59);
          if (v61)
          {
            if ((v61 & 0x80000000) == 0)
            {
              goto LABEL_116;
            }
          }

          else if (v58 >= v12)
          {
            goto LABEL_116;
          }

          v8 = v52 + 1;
          v51 = v52[1];
          if (!v51)
          {
            goto LABEL_116;
          }
        }

        else
        {
          if (v12 >= v58)
          {
            goto LABEL_111;
          }

LABEL_97:
          v51 = *v52;
          v8 = v52;
          if (!*v52)
          {
            goto LABEL_116;
          }
        }
      }
    }
  }

  if (v43)
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

void std::vector<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::__init_with_size[abi:ne200100]<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>*,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 60))
    {
      operator new();
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }
}

void sub_24744CC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>*>>::~__exception_guard_exceptions[abi:ne200100](&a11);
  *(v11 + 8) = v12;
  std::__exception_guard_exceptions<std::vector<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

BOOL nlohmann::json_abi_v3_11_2::detail::iter_impl<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::operator==<nlohmann::json_abi_v3_11_2::detail::iter_impl<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,(decltype(nullptr))0>(unsigned __int8 **a1, unsigned __int8 **a2)
{
  if (*a1 != *a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v9, "cannot compare iterators of different containers");
    v8 = *a1;
    nlohmann::json_abi_v3_11_2::detail::invalid_iterator::create<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void> *,0>(212, v9, exception);
  }

  v2 = **a1;
  if (v2 == 2)
  {
    v3 = a1[2];
    v4 = a2[2];
  }

  else if (v2 == 1)
  {
    v3 = a1[1];
    v4 = a2[1];
  }

  else
  {
    v3 = a1[3];
    v4 = a2[3];
  }

  return v3 == v4;
}

void sub_24744CD1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if (v16)
    {
LABEL_6:
      __cxa_free_exception(v15);
      _Unwind_Resume(a1);
    }
  }

  else if (v16)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(a1);
}

float nlohmann::json_abi_v3_11_2::detail::from_json<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,float,0>(double *a1, float *a2, float a3)
{
  v3 = *a1;
  if (v3 > 5)
  {
    if (v3 == 7)
    {
      result = a1[1];
      *a2 = result;
    }

    else
    {
      if (v3 != 6)
      {
        goto LABEL_10;
      }

      result = *(a1 + 1);
      *a2 = result;
    }
  }

  else
  {
    if (v3 != 4)
    {
      if (v3 == 5)
      {
        result = *(a1 + 1);
        *a2 = result;
        return result;
      }

LABEL_10:
      exception = __cxa_allocate_exception(0x20uLL);
      v7 = nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::type_name(a1);
      nlohmann::json_abi_v3_11_2::detail::concat<std::string,char const(&)[51],char const*>("type must be number, but is ", &v7, &v8);
      nlohmann::json_abi_v3_11_2::detail::type_error::create<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void> *,0>(302, &v8, exception);
    }

    LOBYTE(a3) = *(a1 + 8);
    result = LODWORD(a3);
    *a2 = result;
  }

  return result;
}

void sub_24744CE90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if (v16)
    {
LABEL_6:
      __cxa_free_exception(v15);
      _Unwind_Resume(a1);
    }
  }

  else if (v16)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(a1);
}

void std::vector<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::__append(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (a2 <= (v4 - v3) >> 4)
  {
    if (a2)
    {
      v9 = v3 + 16 * a2;
      do
      {
        *v3 = 0;
        *(v3 + 8) = 0;
        v3 += 16;
      }

      while (v3 != v9);
      v3 = v9;
    }

    a1[1] = v3;
  }

  else
  {
    v5 = (v3 - *a1) >> 4;
    v6 = v5 + a2;
    if ((v5 + a2) >> 60)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v7 = v4 - *a1;
    if (v7 >> 3 > v6)
    {
      v6 = v7 >> 3;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v8 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (!(v8 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v10 = 16 * v5;
    v11 = 16 * v5 + 16 * a2;
    v12 = 16 * v5;
    do
    {
      *v12 = 0;
      *(v12 + 8) = 0;
      v12 += 16;
    }

    while (v12 != v11);
    v13 = *a1;
    v14 = a1[1];
    v15 = v10 + *a1 - v14;
    if (v14 != *a1)
    {
      v16 = *a1;
      v17 = v15;
      do
      {
        *v17 = *v16;
        *(v17 + 8) = v16[1];
        *v16 = 0;
        v16[1] = 0;
        v16 += 2;
        v17 += 16;
      }

      while (v16 != v14);
      do
      {
        v19 = *v13;
        v18 = v13 + 1;
        nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(v18, v19);
        v13 = v18 + 1;
      }

      while (v13 != v14);
      v13 = *a1;
    }

    *a1 = v15;
    a1[1] = v11;
    a1[2] = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

double nlohmann::json_abi_v3_11_2::detail::from_json<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,int,0>(double *a1, _DWORD *a2)
{
  v2 = *a1;
  if (v2 > 5)
  {
    if (v2 != 7)
    {
      if (v2 == 6)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }

    result = a1[1];
    *a2 = result;
  }

  else
  {
    if (v2 != 4)
    {
      if (v2 == 5)
      {
LABEL_4:
        *a2 = *(a1 + 2);
        return result;
      }

LABEL_7:
      exception = __cxa_allocate_exception(0x20uLL);
      v6 = nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::type_name(a1);
      nlohmann::json_abi_v3_11_2::detail::concat<std::string,char const(&)[51],char const*>("type must be number, but is ", &v6, &v7);
      nlohmann::json_abi_v3_11_2::detail::type_error::create<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void> *,0>(302, &v7, exception);
    }

    *a2 = *(a1 + 8);
  }

  return result;
}

void sub_24744D174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if (v16)
    {
LABEL_6:
      __cxa_free_exception(v15);
      _Unwind_Resume(a1);
    }
  }

  else if (v16)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(a1);
}

void **nlohmann::json_abi_v3_11_2::detail::from_json<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>(void **result, uint64_t a2)
{
  if (*result != 3)
  {
    v10 = result;
    exception = __cxa_allocate_exception(0x20uLL);
    v12 = nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::type_name(v10);
    nlohmann::json_abi_v3_11_2::detail::concat<std::string,char const(&)[51],char const*>("type must be string, but is ", &v12, &v13);
    nlohmann::json_abi_v3_11_2::detail::type_error::create<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void> *,0>(302, &v13, exception);
  }

  v2 = result[1];
  if (v2 != a2)
  {
    v3 = v2[23];
    if (*(a2 + 23) < 0)
    {
      if ((v3 & 0x80u) == 0)
      {
        v5 = result[1];
      }

      else
      {
        v5 = *v2;
      }

      if ((v3 & 0x80u) == 0)
      {
        v6 = v2[23];
      }

      else
      {
        v6 = *(v2 + 1);
      }

      return std::string::__assign_no_alias<false>(a2, v5, v6);
    }

    else if ((v2[23] & 0x80) != 0)
    {
      v7 = *(v2 + 1);
      v9 = *v2;

      return std::string::__assign_no_alias<true>(a2, v9, v7);
    }

    else
    {
      v4 = *v2;
      *(a2 + 16) = *(v2 + 2);
      *a2 = v4;
    }
  }

  return result;
}

void sub_24744D2F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if (v16)
    {
LABEL_6:
      __cxa_free_exception(v15);
      _Unwind_Resume(a1);
    }
  }

  else if (v16)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(a1);
}

void nlohmann::json_abi_v3_11_2::detail::external_constructor<(nlohmann::json_abi_v3_11_2::detail::value_t)3>::construct<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,char [5],0>(uint64_t *a1)
{
  nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(a1 + 1, *a1);
  *a1 = 3;
  operator new();
}

void nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::basic_json(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a3)
  {
    v8 = 24 * a3;
    while (1)
    {
      v10 = *(a2 + 16) ? *(a2 + 16) : a2;
      if (*v10 != 2 || *(*(v10 + 8) + 8) - **(v10 + 8) != 32 || *nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::operator[](v10, 0) != 3)
      {
        break;
      }

      a2 += 24;
      v8 -= 24;
      if (!v8)
      {
        goto LABEL_10;
      }
    }

    v11 = 0;
    if ((a4 & 1) == 0)
    {
LABEL_14:
      if (a5 == 2)
      {
        v12 = 0;
      }

      else
      {
        v12 = v11;
      }

      if (a5 != 1)
      {
        LOBYTE(v11) = 1;
      }

      if ((v11 & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v14, "cannot create object from initializer list");
        nlohmann::json_abi_v3_11_2::detail::type_error::create<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void> *,0>(301, v14, exception);
      }

      if (!v12)
      {
LABEL_21:
        *a1 = 2;
        operator new();
      }

LABEL_12:
      *a1 = 1;
      operator new();
    }
  }

  else
  {
LABEL_10:
    v11 = 1;
    if ((a4 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if (!v11)
  {
    goto LABEL_21;
  }

  goto LABEL_12;
}

void sub_24744D68C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::~basic_json(va);
  _Unwind_Resume(a1);
}

void sub_24744D6A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if (v16)
    {
LABEL_6:
      __cxa_free_exception(v15);
      _Unwind_Resume(a1);
    }
  }

  else if (v16)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(a1);
}

uint64_t nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::operator[](uint64_t a1, uint64_t a2)
{
  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v5 = nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::type_name(a1);
    nlohmann::json_abi_v3_11_2::detail::concat<std::string,char const(&)[51],char const*>("cannot use operator[] with a numeric argument with ", &v5, &v6);
    nlohmann::json_abi_v3_11_2::detail::type_error::create<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void> *,0>(305, &v6, exception);
  }

  return **(a1 + 8) + 16 * a2;
}

void sub_24744D798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void *std::__tree<std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>>>::__emplace_unique_key_args<std::string,std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_27:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      v11 = v10 >= 0 ? v7 : v8;
      v12 = v10 >= 0 ? *(v7 + 23) : v7[1];
      v13 = (v12 >= v5 ? v5 : v12);
      v14 = memcmp(v4, v11, v13);
      if (v14)
      {
        break;
      }

      if (v5 >= v12)
      {
        goto LABEL_22;
      }

LABEL_8:
      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_27;
      }
    }

    if (v14 < 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    v15 = memcmp(v11, v4, v13);
    if (v15)
    {
      if ((v15 & 0x80000000) == 0)
      {
        return v6;
      }

      goto LABEL_26;
    }

    if (v12 >= v5)
    {
      return v6;
    }

LABEL_26:
    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_27;
    }
  }
}

void std::vector<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::__init_with_size[abi:ne200100]<nlohmann::json_abi_v3_11_2::detail::json_ref<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>> const*,nlohmann::json_abi_v3_11_2::detail::json_ref<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>> const*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 60))
    {
      operator new();
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }
}

void sub_24744DA80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>*>>::~__exception_guard_exceptions[abi:ne200100](&a11);
  *(v11 + 8) = v12;
  std::__exception_guard_exceptions<std::vector<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

pthread_rwlock_t *cv3d::aspenbase::concurrency::Locker::Locker(pthread_rwlock_t *this)
{
  pthread_rwlock_init(this, 0);
  return this;
}

{
  pthread_rwlock_init(this, 0);
  return this;
}

void cv3d::aspenbase::concurrency::Locker::~Locker(pthread_rwlock_t *this)
{
  pthread_rwlock_destroy(this);
}

{
  pthread_rwlock_destroy(this);
}

_DWORD *cv3d::aspenbase::concurrency::SpinLock::SpinLock(_DWORD *this)
{
  *this = 0;
  return this;
}

{
  *this = 0;
  return this;
}

cv3d::aspenbase::concurrency::Semaphore *cv3d::aspenbase::concurrency::Semaphore::Semaphore(cv3d::aspenbase::concurrency::Semaphore *this)
{
  v5 = *MEMORY[0x277D85DE8];
  pthread_mutexattr_init(&v4);
  pthread_mutexattr_settype(&v4, 1);
  pthread_mutexattr_setprotocol(&v4, 0);
  pthread_mutex_init(this, &v4);
  pthread_mutexattr_destroy(&v4);
  *(this + 16) = 0;
  if (!pthread_cond_init((this + 72), 0))
  {
    pthread_mutex_lock(this);
    *(this + 16) = 0;
    pthread_mutex_unlock(this);
  }

  v2 = *MEMORY[0x277D85DE8];
  return this;
}

pthread_mutex_t *cv3d::aspenbase::concurrency::Mutex::Mutex(pthread_mutex_t *this)
{
  v5 = *MEMORY[0x277D85DE8];
  pthread_mutexattr_init(&v4);
  pthread_mutexattr_settype(&v4, 1);
  pthread_mutexattr_setprotocol(&v4, 0);
  pthread_mutex_init(this, &v4);
  pthread_mutexattr_destroy(&v4);
  v2 = *MEMORY[0x277D85DE8];
  return this;
}

{
  v5 = *MEMORY[0x277D85DE8];
  pthread_mutexattr_init(&v4);
  pthread_mutexattr_settype(&v4, 1);
  pthread_mutexattr_setprotocol(&v4, 0);
  pthread_mutex_init(this, &v4);
  pthread_mutexattr_destroy(&v4);
  v2 = *MEMORY[0x277D85DE8];
  return this;
}

uint64_t cv3d::aspenbase::concurrency::Semaphore::Init(cv3d::aspenbase::concurrency::Semaphore *this, int a2)
{
  if (pthread_cond_init((this + 72), 0))
  {
    return 0;
  }

  pthread_mutex_lock(this);
  *(this + 16) = a2;
  pthread_mutex_unlock(this);
  return 1;
}

void cv3d::aspenbase::concurrency::Mutex::~Mutex(pthread_mutex_t *this)
{
  pthread_mutex_destroy(this);
}

{
  pthread_mutex_destroy(this);
}

cv3d::aspenbase::concurrency::Semaphore *cv3d::aspenbase::concurrency::Semaphore::Semaphore(cv3d::aspenbase::concurrency::Semaphore *this, int a2)
{
  v7 = *MEMORY[0x277D85DE8];
  pthread_mutexattr_init(&v6);
  pthread_mutexattr_settype(&v6, 1);
  pthread_mutexattr_setprotocol(&v6, 0);
  pthread_mutex_init(this, &v6);
  pthread_mutexattr_destroy(&v6);
  *(this + 16) = 0;
  if (!pthread_cond_init((this + 72), 0))
  {
    pthread_mutex_lock(this);
    *(this + 16) = a2;
    pthread_mutex_unlock(this);
  }

  v4 = *MEMORY[0x277D85DE8];
  return this;
}

void cv3d::aspenbase::concurrency::Semaphore::~Semaphore(pthread_mutex_t *this)
{
  pthread_mutex_destroy(this);
}

{
  pthread_mutex_destroy(this);
}

uint64_t cv3d::aspenbase::concurrency::Semaphore::Post(cv3d::aspenbase::concurrency::Semaphore *this)
{
  pthread_mutex_lock(this);
  ++*(this + 16);
  pthread_cond_signal((this + 72));
  pthread_mutex_unlock(this);
  return 1;
}

uint64_t cv3d::aspenbase::concurrency::Semaphore::Post(pthread_mutex_t *this, unsigned int a2)
{
  if (a2)
  {
    v3 = a2;
    do
    {
      pthread_mutex_lock(this);
      ++LODWORD(this[1].__sig);
      pthread_cond_signal(this[1].__opaque);
      pthread_mutex_unlock(this);
      --v3;
    }

    while (v3);
  }

  return 1;
}

BOOL cv3d::aspenbase::concurrency::Semaphore::Wait(cv3d::aspenbase::concurrency::Semaphore *this)
{
  pthread_mutex_lock(this);
  while (1)
  {
    v2 = *(this + 16);
    if (v2)
    {
      break;
    }

    if (pthread_cond_wait((this + 72), this))
    {
      goto LABEL_6;
    }
  }

  *(this + 16) = v2 - 1;
LABEL_6:
  pthread_mutex_unlock(this);
  return v2 != 0;
}

uint64_t cv3d::aspenbase::concurrency::Semaphore::Wait(cv3d::aspenbase::concurrency::Semaphore *this, double a2)
{
  pthread_mutex_lock(this);
  v4 = *(this + 16);
  if (v4)
  {
LABEL_4:
    *(this + 16) = v4 - 1;
    pthread_mutex_unlock(this);
    return 1;
  }

  else
  {
    while (1)
    {
      clock_gettime(_CLOCK_REALTIME, &v7);
      v5 = v7.tv_nsec + v7.tv_sec * 1000000000.0 + a2 * 1000000000.0;
      v8.tv_sec = v5 / 1000000000;
      v8.tv_nsec = v5 % 1000000000;
      if (pthread_cond_timedwait((this + 72), this, &v8))
      {
        break;
      }

      v4 = *(this + 16);
      if (v4)
      {
        goto LABEL_4;
      }
    }

    pthread_mutex_unlock(this);
    return 0;
  }
}

cv3d::aspenbase::concurrency::Thread *cv3d::aspenbase::concurrency::Thread::Thread(cv3d::aspenbase::concurrency::Thread *this)
{
  *this = &unk_28593DCA0;
  *(this + 1) = 0;
  *(this + 16) = 0;
  pthread_rwlock_init((this + 24), 0);
  *(this + 28) = 0;
  v2 = qos_class_self();
  *(this + 29) = 0;
  *(this + 255) = 0;
  *(this + 64) = v2;
  return this;
}

{
  *this = &unk_28593DCA0;
  *(this + 1) = 0;
  *(this + 16) = 0;
  pthread_rwlock_init((this + 24), 0);
  *(this + 28) = 0;
  v2 = qos_class_self();
  *(this + 29) = 0;
  *(this + 255) = 0;
  *(this + 64) = v2;
  return this;
}

uint64_t cv3d::aspenbase::concurrency::Thread::Thread(uint64_t a1, uint64_t a2)
{
  v4 = qos_class_self();
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v8 = v4;
  *a1 = &unk_28593DCA0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  pthread_rwlock_init((a1 + 24), 0);
  *(a1 + 224) = 0;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *(a1 + 232) = __p;
    *(a1 + 256) = v8;
    return a1;
  }

  std::string::__init_copy_ctor_external((a1 + 232), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  v6 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  *(a1 + 256) = v8;
  if ((v6 & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  return a1;
}

{
  v4 = qos_class_self();
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v8 = v4;
  *a1 = &unk_28593DCA0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  pthread_rwlock_init((a1 + 24), 0);
  *(a1 + 224) = 0;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *(a1 + 232) = __p;
    *(a1 + 256) = v8;
    return a1;
  }

  std::string::__init_copy_ctor_external((a1 + 232), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  v6 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  *(a1 + 256) = v8;
  if ((v6 & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  return a1;
}

void sub_24744E3C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  pthread_rwlock_destroy((v14 + 24));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t cv3d::aspenbase::concurrency::Thread::Thread(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_28593DCA0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  pthread_rwlock_init((a1 + 24), 0);
  *(a1 + 224) = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 232), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 248) = *(a2 + 2);
    *(a1 + 232) = v4;
  }

  *(a1 + 256) = *(a2 + 6);
  return a1;
}

{
  *a1 = &unk_28593DCA0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  pthread_rwlock_init((a1 + 24), 0);
  *(a1 + 224) = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 232), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 248) = *(a2 + 2);
    *(a1 + 232) = v4;
  }

  *(a1 + 256) = *(a2 + 6);
  return a1;
}

void sub_24744E59C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  pthread_rwlock_destroy((v14 + 24));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t cv3d::aspenbase::concurrency::Thread::Run(cv3d::aspenbase::concurrency::Thread *this)
{
  v1 = *(this + 28);
  if (v1)
  {
    (*(*v1 + 16))(v1);
  }

  return 0;
}

uint64_t cv3d::aspenbase::concurrency::Thread::Start(pthread_t *this)
{
  v6 = *MEMORY[0x277D85DE8];
  pthread_attr_init(&v5);
  pthread_attr_setdetachstate(&v5, 1);
  v2 = pthread_create(this + 1, &v5, cv3d::aspenbase::concurrency::Thread::thread_func, this);
  pthread_attr_destroy(&v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t cv3d::aspenbase::concurrency::Thread::thread_func(cv3d::aspenbase::concurrency::Thread *this, void *a2)
{
  v3 = this + 232;
  if (*(this + 255) < 0)
  {
    if (!*(this + 30))
    {
      goto LABEL_7;
    }

    v3 = *v3;
    goto LABEL_6;
  }

  if (*(this + 255))
  {
LABEL_6:
    pthread_setname_np(v3);
  }

LABEL_7:
  pthread_set_qos_class_self_np(*(this + 64), 0);
  v4 = *(*this + 16);

  return v4(this);
}

uint64_t cv3d::aspenbase::concurrency::Thread::StartOnCallerThread(cv3d::aspenbase::concurrency::Thread *this)
{
  (*(*this + 16))(this);
  v2 = *(this + 28);
  if (v2)
  {
    (*(*v2 + 8))(v2);
    *(this + 28) = 0;
  }

  return 0;
}

uint64_t cv3d::aspenbase::concurrency::Thread::Wait(cv3d::aspenbase::concurrency::Thread *this)
{
  v2 = *(this + 1);
  if (!v2)
  {
    v3 = 0;
    v4 = *(this + 28);
    if (!v4)
    {
      return v3;
    }

    goto LABEL_3;
  }

  v3 = pthread_join(v2, 0);
  *(this + 1) = 0;
  v4 = *(this + 28);
  if (v4)
  {
LABEL_3:
    (*(*v4 + 8))(v4);
    *(this + 28) = 0;
  }

  return v3;
}

void cv3d::aspenbase::concurrency::Thread::~Thread(cv3d::aspenbase::concurrency::Thread *this)
{
  *this = &unk_28593DCA0;
  v2 = *(this + 28);
  if (v2)
  {
    (*(*v2 + 8))(v2);
    *(this + 28) = 0;
  }

  if (*(this + 255) < 0)
  {
    operator delete(*(this + 29));
  }

  pthread_rwlock_destroy((this + 24));
}

{
  *this = &unk_28593DCA0;
  v2 = *(this + 28);
  if (v2)
  {
    (*(*v2 + 8))(v2);
    *(this + 28) = 0;
  }

  if (*(this + 255) < 0)
  {
    operator delete(*(this + 29));
  }

  pthread_rwlock_destroy((this + 24));
}

{
  *this = &unk_28593DCA0;
  v2 = *(this + 28);
  if (v2)
  {
    (*(*v2 + 8))(v2);
    *(this + 28) = 0;
  }

  if (*(this + 255) < 0)
  {
    operator delete(*(this + 29));
  }

  pthread_rwlock_destroy((this + 24));

  JUMPOUT(0x24C1A2010);
}

uint64_t cv3d::aspenbase::concurrency::Mutex::CreateMutex(pthread_mutex_t *this)
{
  v5 = *MEMORY[0x277D85DE8];
  pthread_mutexattr_init(&v4);
  pthread_mutexattr_settype(&v4, 1);
  pthread_mutexattr_setprotocol(&v4, 0);
  pthread_mutex_init(this, &v4);
  result = pthread_mutexattr_destroy(&v4);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void cv3d::aspenbase::concurrency::ThreadPool::~ThreadPool(cv3d::aspenbase::concurrency::ThreadPool *this)
{
  v3 = *(this + 27);
  v2 = *(this + 28);
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5)
      {
        v6 = *(v5 + 8);
        if (v6)
        {
          pthread_join(v6, 0);
          *(v5 + 8) = 0;
        }

        v7 = *(v5 + 224);
        if (v7)
        {
          (*(*v7 + 8))(v7);
          *(v5 + 224) = 0;
        }

        v8 = v3[v4];
        if (v8)
        {
          (*(*v8 + 8))(v8);
        }

        v3[v4] = 0;
        v3 = *(this + 27);
        v2 = *(this + 28);
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  *(this + 28) = v3;
  if (v3)
  {
    operator delete(v3);
  }

  pthread_rwlock_destroy((this + 16));
}

uint64_t cv3d::aspenbase::concurrency::ThreadPool::Wait(cv3d::aspenbase::concurrency::ThreadPool *this)
{
  v3 = *(this + 27);
  v2 = *(this + 28);
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = *(v3 + 8 * v4);
      if (v5)
      {
        v6 = *(v5 + 8);
        if (v6)
        {
          pthread_join(v6, 0);
          *(v5 + 8) = 0;
        }

        v7 = *(v5 + 224);
        if (v7)
        {
          (*(*v7 + 8))(v7);
          *(v5 + 224) = 0;
        }

        v8 = *(v3 + 8 * v4);
        if (v8)
        {
          (*(*v8 + 8))(v8);
        }

        *(v3 + 8 * v4) = 0;
        v3 = *(this + 27);
        v2 = *(this + 28);
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  *(this + 28) = v3;
  return 1;
}

uint64_t *cv3d::aspenbase::concurrency::AsyncManager::Config::Config(uint64_t *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  *a1 = a2;
  a1[1] = a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 2), *a4, *(a4 + 1));
    v8 = *a1;
    *(a1 + 10) = *(a4 + 6);
    if (v8)
    {
      return a1;
    }
  }

  else
  {
    v6 = *a4;
    a1[4] = *(a4 + 2);
    *(a1 + 1) = v6;
    *(a1 + 10) = *(a4 + 6);
    if (a2)
    {
      return a1;
    }
  }

  *a1 = std::thread::hardware_concurrency();
  return a1;
}

{
  *a1 = a2;
  a1[1] = a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 2), *a4, *(a4 + 1));
    v8 = *a1;
    *(a1 + 10) = *(a4 + 6);
    if (v8)
    {
      return a1;
    }
  }

  else
  {
    v6 = *a4;
    a1[4] = *(a4 + 2);
    *(a1 + 1) = v6;
    *(a1 + 10) = *(a4 + 6);
    if (a2)
    {
      return a1;
    }
  }

  *a1 = std::thread::hardware_concurrency();
  return a1;
}

cv3d::aspenbase::concurrency::AsyncManager::Config *cv3d::aspenbase::concurrency::AsyncManager::Config::Config(cv3d::aspenbase::concurrency::AsyncManager::Config *this, uint64_t a2)
{
  v4 = qos_class_self();
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = a2;
  *(this + 39) = 0;
  *(this + 10) = v4;
  if (!a2)
  {
    *this = std::thread::hardware_concurrency();
  }

  return this;
}

{
  v4 = qos_class_self();
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = a2;
  *(this + 39) = 0;
  *(this + 10) = v4;
  if (!a2)
  {
    *this = std::thread::hardware_concurrency();
  }

  return this;
}

uint64_t *cv3d::aspenbase::concurrency::AsyncManager::Config::Config(uint64_t *a1, __int128 *a2)
{
  *a1 = 0;
  a1[1] = 0;
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    v3 = *a2;
    a1[4] = *(a2 + 2);
    *(a1 + 1) = v3;
    *(a1 + 10) = *(a2 + 6);
LABEL_3:
    *a1 = std::thread::hardware_concurrency();
    return a1;
  }

  std::string::__init_copy_ctor_external((a1 + 2), *a2, *(a2 + 1));
  v6 = *a1;
  *(a1 + 10) = *(a2 + 6);
  if (!v6)
  {
    goto LABEL_3;
  }

  return a1;
}

{
  *a1 = 0;
  a1[1] = 0;
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    v3 = *a2;
    a1[4] = *(a2 + 2);
    *(a1 + 1) = v3;
    *(a1 + 10) = *(a2 + 6);
LABEL_3:
    *a1 = std::thread::hardware_concurrency();
    return a1;
  }

  std::string::__init_copy_ctor_external((a1 + 2), *a2, *(a2 + 1));
  v6 = *a1;
  *(a1 + 10) = *(a2 + 6);
  if (!v6)
  {
    goto LABEL_3;
  }

  return a1;
}

uint64_t *cv3d::aspenbase::concurrency::AsyncManager::Config::Config(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  *a1 = a2;
  a1[1] = 0;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 2), *a3, *(a3 + 1));
    v7 = *a1;
    *(a1 + 10) = *(a3 + 6);
    if (v7)
    {
      return a1;
    }
  }

  else
  {
    v5 = *a3;
    a1[4] = *(a3 + 2);
    *(a1 + 1) = v5;
    *(a1 + 10) = *(a3 + 6);
    if (a2)
    {
      return a1;
    }
  }

  *a1 = std::thread::hardware_concurrency();
  return a1;
}

{
  *a1 = a2;
  a1[1] = 0;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 2), *a3, *(a3 + 1));
    v7 = *a1;
    *(a1 + 10) = *(a3 + 6);
    if (v7)
    {
      return a1;
    }
  }

  else
  {
    v5 = *a3;
    a1[4] = *(a3 + 2);
    *(a1 + 1) = v5;
    *(a1 + 10) = *(a3 + 6);
    if (a2)
    {
      return a1;
    }
  }

  *a1 = std::thread::hardware_concurrency();
  return a1;
}

void cv3d::aspenbase::concurrency::AsyncManager::AsyncManager(cv3d::aspenbase::concurrency::AsyncManager *this, const cv3d::aspenbase::concurrency::AsyncManager::Config *a2)
{
  *this = *a2;
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((this + 16), *(a2 + 2), *(a2 + 3));
  }

  else
  {
    v4 = *(a2 + 1);
    *(this + 4) = *(a2 + 4);
    *(this + 1) = v4;
  }

  *(this + 10) = *(a2 + 10);
  pthread_rwlock_init((this + 48), 0);
  *(this + 248) = 0u;
  *(this + 43) = 0;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 264) = 0u;
  operator new();
}

void sub_24744F378(_Unwind_Exception *a1)
{
  std::vector<std::shared_ptr<apple3dgs::Asset const>>::~vector[abi:ne200100](v2 + 9);
  std::shared_ptr<apple3dgs::Asset>::~shared_ptr[abi:ne200100]((v2 + 7));
  std::shared_ptr<apple3dgs::Asset>::~shared_ptr[abi:ne200100]((v2 + 5));
  std::shared_ptr<apple3dgs::Asset>::~shared_ptr[abi:ne200100]((v2 + 3));
  std::vector<std::shared_ptr<apple3dgs::Asset const>>::~vector[abi:ne200100](v2);
  pthread_rwlock_destroy((v1 + 48));
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(a1);
}

void cv3d::aspenbase::concurrency::AsyncManager::Start(cv3d::aspenbase::concurrency::AsyncManager *this)
{
  v3 = *MEMORY[0x277D85DE8];
  cv3d::aspenbase::concurrency::AsyncManager::Wait(this);
  pthread_rwlock_wrlock((this + 48));
  v2 = *(this + 1);
  if (v2)
  {
    if ((*this * v2) <= 0xFFFFFFFE)
    {
      operator new();
    }
  }

  operator new();
}

void sub_24744FD8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, char a34)
{
  std::__shared_weak_count::~__shared_weak_count(v35);
  operator delete(v37);
  pthread_rwlock_unlock((v34 + 48));
  _Unwind_Resume(a1);
}

void cv3d::aspenbase::concurrency::AsyncManager::AsyncManager(cv3d::aspenbase::concurrency::AsyncManager *this, unsigned int a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  v5[2] = 0;
  v6 = 0;
  v7 = qos_class_self();
  if (!a2)
  {
    v5[0] = std::thread::hardware_concurrency();
  }

  cv3d::aspenbase::concurrency::AsyncManager::AsyncManager(this, v5);
}

{
  v5[0] = a2;
  v5[1] = a3;
  v5[2] = 0;
  v6 = 0;
  v7 = qos_class_self();
  if (!a2)
  {
    v5[0] = std::thread::hardware_concurrency();
  }

  cv3d::aspenbase::concurrency::AsyncManager::AsyncManager(this, v5);
}

void cv3d::aspenbase::concurrency::AsyncManager::~AsyncManager(cv3d::aspenbase::concurrency::AsyncManager *this)
{
  if (!*(this + 43))
  {
    cv3d::aspenbase::concurrency::AsyncManager::Wait(this);
    cv3d::aspenbase::concurrency::Channel<BOOL>::Close(*(this + 36));
    cv3d::aspenbase::concurrency::Channel<BOOL>::Close(*(this + 38));
    v13 = *(this + 31);
    if (*(this + 32) != v13)
    {
      v14 = 0;
      v15 = 0;
      do
      {
        v16 = *(v13 + v14);
        v17 = *(v16 + 8);
        if (v17)
        {
          pthread_join(v17, 0);
          *(v16 + 8) = 0;
        }

        v18 = *(v16 + 224);
        if (v18)
        {
          (*(*v18 + 8))(v18);
          *(v16 + 224) = 0;
        }

        ++v15;
        v13 = *(this + 31);
        v14 += 16;
      }

      while (v15 < (*(this + 32) - v13) >> 4);
    }
  }

  v2 = *(this + 40);
  if (v2)
  {
    v3 = *(this + 41);
    v4 = *(this + 40);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(this + 40);
    }

    *(this + 41) = v2;
    operator delete(v4);
  }

  v6 = *(this + 39);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(this + 37);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *(this + 35);
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = *(this + 31);
  if (v9)
  {
    v10 = *(this + 32);
    v11 = *(this + 31);
    if (v10 != v9)
    {
      do
      {
        v12 = *(v10 - 8);
        if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v12->__on_zero_shared)(v12);
          std::__shared_weak_count::__release_weak(v12);
        }

        v10 -= 16;
      }

      while (v10 != v9);
      v11 = *(this + 31);
    }

    *(this + 32) = v9;
    operator delete(v11);
  }

  pthread_rwlock_destroy((this + 48));
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

uint64_t cv3d::aspenbase::concurrency::AsyncManager::Wait(cv3d::aspenbase::concurrency::AsyncManager *this)
{
  do
  {
    v1 = this;
    this = *(this + 43);
  }

  while (this);
  pthread_rwlock_wrlock((v1 + 48));
  v2 = *(v1 + 34);
  if (v2)
  {
    cv3d::aspenbase::concurrency::Channel<BOOL>::Close(v2);
    if ((cv3d::aspenbase::concurrency::Channel<BOOL>::Pop(*(v1 + 38)) & 0x100) != 0)
    {
      v3 = *v1;
      if (*v1)
      {
        v4 = 0;
        do
        {
          if (++v4 < v3 && (cv3d::aspenbase::concurrency::Channel<BOOL>::Pop(*(v1 + 38)) & 0x100) == 0)
          {
            break;
          }

          v3 = *v1;
        }

        while (v4 < *v1);
      }
    }

    v5 = *(v1 + 35);
    *(v1 + 34) = 0;
    *(v1 + 35) = 0;
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return pthread_rwlock_unlock((v1 + 48));
}

uint64_t cv3d::aspenbase::concurrency::Channel<BOOL>::Close(uint64_t a1)
{
  pthread_mutex_lock((a1 + 176));
  *(a1 + 56) = 1;
  pthread_mutex_unlock((a1 + 176));
  pthread_mutex_lock((a1 + 176));
  if (*(a1 + 64) >= 1)
  {
    do
    {
      pthread_mutex_unlock((a1 + 176));
      pthread_cond_signal((a1 + 80));
      pthread_mutex_lock((a1 + 176));
    }

    while (*(a1 + 64) > 0);
  }

  pthread_mutex_unlock((a1 + 176));
  pthread_mutex_lock((a1 + 176));
  while (*(a1 + 48) && *(a1 + 72) >= 1)
  {
    pthread_cond_wait((a1 + 80), (a1 + 176));
  }

  pthread_mutex_unlock((a1 + 176));
  pthread_mutex_lock((a1 + 176));
  if (*(a1 + 72) >= 1)
  {
    do
    {
      pthread_mutex_unlock((a1 + 176));
      pthread_cond_signal((a1 + 128));
      pthread_mutex_lock((a1 + 176));
    }

    while (*(a1 + 72) > 0);
  }

  pthread_mutex_unlock((a1 + 176));
  return 1;
}

unint64_t *cv3d::aspenbase::concurrency::AsyncManager::AsyncFor(unint64_t *result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = result[43];
  if (v5)
  {
    v6 = *(a3 + 24);
    if (v6)
    {
      if (v6 == a3)
      {
        v19 = v18;
        (*(*v6 + 24))(v6, v18);
      }

      else
      {
        v19 = (*(*v6 + 16))(v6);
      }
    }

    else
    {
      v19 = 0;
    }

    cv3d::aspenbase::concurrency::AsyncManager::AsyncFor(v5, a2, v18);
    result = v19;
    if (v19 == v18)
    {
      result = (*(*v19 + 32))(v19);
    }

    else if (v19)
    {
      result = (*(*v19 + 40))(v19);
    }

    goto LABEL_28;
  }

  if (a4)
  {
    if (a4 < 2)
    {
      goto LABEL_7;
    }
  }

  else if (vcvtpd_u64_f64(a2 / (*result + *result)) < 2)
  {
LABEL_7:
    if (a2)
    {
      v7 = result[34];
      v8 = *(a3 + 24);
      if (v8)
      {
        if (v8 == a3)
        {
          v15 = v14;
          (*(*v8 + 24))(v8, v14);
        }

        else
        {
          v15 = (*(*v8 + 16))(v8);
        }
      }

      else
      {
        v15 = 0;
      }

      v16 = 0;
      v17 = 0;
      operator new();
    }

    goto LABEL_28;
  }

  if (a2)
  {
    v9 = result[34];
    v10 = *(a3 + 24);
    if (v10)
    {
      if (v10 == a3)
      {
        v13 = v12;
        (*(*v10 + 24))(v10, v12);
      }

      else
      {
        v13 = (*(*v10 + 16))(v10);
      }
    }

    else
    {
      v13 = 0;
    }

    v17 = 0;
    operator new();
  }

LABEL_28:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_247450AC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t cv3d::aspenbase::concurrency::Channel<std::function<void ()(cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>>::Push(unsigned int *a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 44));
  v4 = *(a1 + 6);
  if (v4 >= *a1)
  {
    while ((a1[14] & 1) == 0)
    {
      ++*(a1 + 8);
      pthread_cond_wait((a1 + 20), (a1 + 44));
      --*(a1 + 8);
      v4 = *(a1 + 6);
      if (v4 < *a1)
      {
        goto LABEL_4;
      }
    }

    goto LABEL_5;
  }

LABEL_4:
  if ((a1[14] & 1) == 0)
  {
    v6 = *(a1 + 2);
    v7 = *(a1 + 3);
    v8 = 16 * (v7 - v6) - 1;
    if (v7 == v6)
    {
      v8 = 0;
    }

    if (v8 == *(a1 + 5) + v4)
    {
      std::deque<std::function<void ()(cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>>::__add_back_capacity(a1 + 1);
      v6 = *(a1 + 2);
      v7 = *(a1 + 3);
    }

    if (v7 == v6)
    {
      v10 = 0;
      v11 = *(a2 + 24);
      if (!v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v9 = *(a1 + 6) + *(a1 + 5);
      v10 = *(v6 + ((v9 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v9 & 0x7F);
      v11 = *(a2 + 24);
      if (!v11)
      {
        goto LABEL_16;
      }
    }

    if (v11 == a2)
    {
      *(v10 + 24) = v10;
      (*(**(a2 + 24) + 24))(*(a2 + 24), v10);
      goto LABEL_18;
    }

    v11 = (*(*v11 + 16))(v11);
LABEL_16:
    *(v10 + 24) = v11;
LABEL_18:
    ++*(a1 + 6);
    pthread_cond_signal((a1 + 32));
    v5 = 1;
    goto LABEL_19;
  }

LABEL_5:
  v5 = 0;
LABEL_19:
  pthread_mutex_unlock((a1 + 44));
  return v5;
}

uint64_t std::function<void ()(cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t std::__bind<std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)> &,unsigned long &,std::placeholders::__ph<1> const&>::~__bind(uint64_t a1)
{
  v2 = a1 + 8;
  v3 = *(a1 + 32);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

uint64_t std::__bind<cv3d::aspenbase::concurrency::AsyncManager::AsyncFor(unsigned long,std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>,unsigned long)::$_0 &,unsigned long &,unsigned long &,unsigned long &,std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>&,std::placeholders::__ph<1> const&>::~__bind(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = *(a1 + 56);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

uint64_t cv3d::aspenbase::concurrency::AsyncManager::AsyncFor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 344);
  v7 = *(a3 + 24);
  if (!v6)
  {
    if (v7)
    {
      if (v7 == a3)
      {
        v11 = v10;
        (*(*v7 + 24))(v7, v10);
      }

      else
      {
        v11 = (*(*v7 + 16))(v7);
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = 0;
    operator new();
  }

  if (v7)
  {
    if (v7 == a3)
    {
      v14 = v13;
      (*(*v7 + 24))(v7, v13);
    }

    else
    {
      v14 = (*(*v7 + 16))(v7);
    }
  }

  else
  {
    v14 = 0;
  }

  cv3d::aspenbase::concurrency::AsyncManager::AsyncFor(v6, a2, v13, a4);
  result = v14;
  if (v14 == v13)
  {
    result = (*(*v14 + 32))();
  }

  else if (v14)
  {
    result = (*(*v14 + 40))(v14);
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_247451238(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_247451254(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>::~function(va1);
  std::function<void ()(unsigned long)>::~function(va);
  _Unwind_Resume(a1);
}

void sub_247451270(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::function<void ()(unsigned long)>::~function(va);
  _Unwind_Resume(a1);
}

void sub_247451284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::function<void ()(unsigned long)>::~function(va);
  _Unwind_Resume(a1);
}

void cv3d::aspenbase::concurrency::AsyncManager::For(unint64_t *a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 24);
  if (v5)
  {
    v6 = a2;
    v7 = a4;
    if (v5 == a3)
    {
      v10 = v9;
      (*(*v5 + 24))(v5, v9);
    }

    else
    {
      v10 = (*(*v5 + 16))(v5);
    }

    a4 = v7;
    a2 = v6;
  }

  else
  {
    v10 = 0;
  }

  cv3d::aspenbase::concurrency::AsyncManager::AsyncFor(a1, a2, v9, a4);
  if (v10 == v9)
  {
    (*(*v10 + 32))(v10);
  }

  else if (v10)
  {
    (*(*v10 + 40))();
  }

  do
  {
    v8 = a1;
    a1 = a1[43];
  }

  while (a1);
  cv3d::aspenbase::concurrency::AsyncManager::Start(v8);
}

void sub_2474513F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>::~function(va);
  _Unwind_Resume(a1);
}

void cv3d::aspenbase::concurrency::AsyncManager::Flush(cv3d::aspenbase::concurrency::AsyncManager *this)
{
  do
  {
    v1 = this;
    this = *(this + 43);
  }

  while (this);
  cv3d::aspenbase::concurrency::AsyncManager::Start(v1);
}

void cv3d::aspenbase::concurrency::AsyncManager::For(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 24);
  if (v5)
  {
    v6 = a2;
    v7 = a4;
    if (v5 == a3)
    {
      v10 = v9;
      (*(*v5 + 24))(v5, v9);
    }

    else
    {
      v10 = (*(*v5 + 16))(v5);
    }

    a4 = v7;
    a2 = v6;
  }

  else
  {
    v10 = 0;
  }

  cv3d::aspenbase::concurrency::AsyncManager::AsyncFor(a1, a2, v9, a4);
  if (v10 == v9)
  {
    (*(*v10 + 32))(v10);
  }

  else if (v10)
  {
    (*(*v10 + 40))();
  }

  do
  {
    v8 = a1;
    a1 = *(a1 + 344);
  }

  while (a1);
  cv3d::aspenbase::concurrency::AsyncManager::Start(v8);
}

void sub_247451584(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::function<void ()(unsigned long)>::~function(va);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<cv3d::aspenbase::concurrency::AsyncManager::ThreadContext>>::push_back[abi:ne200100](void **a1, __int128 *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = v4 + 1;
    *a2 = 0;
    *(a2 + 1) = 0;
LABEL_3:
    a1[1] = v5;
    return;
  }

  v6 = (v4 - *a1) >> 4;
  if ((v6 + 1) >> 60)
  {
    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  v7 = v3 - *a1;
  v8 = v7 >> 3;
  if (v7 >> 3 <= (v6 + 1))
  {
    v8 = v6 + 1;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF0)
  {
    v9 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v8;
  }

  if (v9)
  {
    if (!(v9 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v10 = (16 * v6);
  v11 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v12 = *a1;
  v13 = a1[1] - *a1;
  v14 = v10 - v13;
  *v10 = v11;
  v5 = v10 + 1;
  memcpy(v14, v12, v13);
  *a1 = v14;
  a1[1] = v5;
  a1[2] = 0;
  if (!v12)
  {
    goto LABEL_3;
  }

  operator delete(v12);
  a1[1] = v5;
}

uint64_t std::__bind<cv3d::aspenbase::concurrency::AsyncManager::Start(unsigned long)::$_0 &,anonymous namespace::AsyncCallContext &>::~__bind(uint64_t result)
{
  v1 = *(result + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = result;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    result = v2;
  }

  v3 = *(result + 32);
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t cv3d::aspenbase::concurrency::Channel<BOOL>::Push(unsigned int *a1, _BYTE *a2)
{
  pthread_mutex_lock((a1 + 44));
  v4 = *(a1 + 6);
  if (v4 >= *a1)
  {
    while ((a1[14] & 1) == 0)
    {
      ++*(a1 + 8);
      pthread_cond_wait((a1 + 20), (a1 + 44));
      --*(a1 + 8);
      v4 = *(a1 + 6);
      if (v4 < *a1)
      {
        goto LABEL_4;
      }
    }

    goto LABEL_5;
  }

LABEL_4:
  if (a1[14])
  {
LABEL_5:
    v5 = 0;
    goto LABEL_11;
  }

  v6 = *(a1 + 1);
  v7 = *(a1 + 3);
  v8 = *(a1 + 2);
  v9 = ((v7 - v8) << 9) - 1;
  if (v7 == v8)
  {
    v9 = 0;
  }

  v10 = *(a1 + 5) + v4;
  if (v9 == v10)
  {
    std::deque<BOOL>::__add_back_capacity(a1 + 1);
    v8 = *(a1 + 2);
    v4 = *(a1 + 6);
    v10 = *(a1 + 5) + v4;
  }

  *(*(v8 + ((v10 >> 9) & 0x7FFFFFFFFFFFF8)) + (v10 & 0xFFF)) = *a2;
  *(a1 + 6) = v4 + 1;
  pthread_cond_signal((a1 + 32));
  v5 = 1;
LABEL_11:
  pthread_mutex_unlock((a1 + 44));
  return v5;
}

void anonymous namespace::AsyncCallContext::~AsyncCallContext(_anonymous_namespace_::AsyncCallContext *this)
{
  v1 = *(this + 4);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    this = v2;
  }

  v3 = *(this + 2);
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }
}

uint64_t cv3d::aspenbase::concurrency::Channel<BOOL>::Pop(unsigned int *a1)
{
  pthread_mutex_lock((a1 + 44));
  v2 = *(a1 + 6);
  if (v2)
  {
LABEL_4:
    v3 = *(a1 + 2);
    v4 = (*(v3 + ((*(a1 + 5) >> 9) & 0x7FFFFFFFFFFFF8)))[*(a1 + 5) & 0xFFFLL];
    v5 = v2 - 1;
    v6 = *(a1 + 5) + 1;
    *(a1 + 5) = v6;
    *(a1 + 6) = v5;
    if (v6 >= 0x2000)
    {
      operator delete(*v3);
      *(a1 + 2) += 8;
      v5 = *(a1 + 6);
      *(a1 + 5) -= 4096;
    }

    if (v5 < *a1)
    {
      pthread_cond_signal((a1 + 20));
    }

    v7 = v4 | 0x100u;
  }

  else
  {
    while ((a1[14] & 1) == 0)
    {
      ++*(a1 + 9);
      pthread_cond_wait((a1 + 32), (a1 + 44));
      --*(a1 + 9);
      v2 = *(a1 + 6);
      if (v2)
      {
        goto LABEL_4;
      }
    }

    v7 = 0;
  }

  pthread_mutex_unlock((a1 + 44));
  return v7;
}

void *std::deque<BOOL>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x1000;
  v3 = v1 - 4096;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<BOOL *>::emplace_back<BOOL *&>(a1, &v11);
}

void sub_247451DD8(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void *std::__split_buffer<BOOL *>::emplace_back<BOOL *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      v11 = &v4[-*result] >> 2;
      if (v4 == *result)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v8];
  }

  *v4 = *a2;
  v3[2] = v4 + 8;
  return result;
}

const void **std::__split_buffer<BOOL *>::emplace_front<BOOL *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      v9 = (v7 - v4) >> 2;
      if (v7 == v4)
      {
        v9 = 1;
      }

      if (!(v9 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v5 - 8;
  return result;
}

void std::__shared_ptr_emplace<cv3d::aspenbase::concurrency::Channel<BOOL>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28593DD10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A2010);
}

uint64_t cv3d::aspenbase::concurrency::Channel<BOOL>::Channel(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x277D85DE8];
  *(a1 + 8) = 0u;
  *a1 = a2;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutexattr_init(&v6);
  pthread_mutexattr_settype(&v6, 1);
  pthread_mutexattr_setprotocol(&v6, 0);
  pthread_mutex_init((a1 + 176), &v6);
  pthread_mutexattr_destroy(&v6);
  v3 = *a1;
  if (*a1 >= 0x7FFFFFFFu)
  {
    *a1 = 0x7FFFFFFF;
    v3 = 0x7FFFFFFF;
  }

  else if (v3 < 2)
  {
    v3 = 1;
  }

  *a1 = v3;
  pthread_cond_init((a1 + 80), 0);
  pthread_cond_init((a1 + 128), 0);
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_2474522CC(_Unwind_Exception *a1)
{
  pthread_mutex_destroy((v2 + 176));
  std::deque<BOOL>::~deque[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t std::deque<BOOL>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 2048;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 4096;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t cv3d::aspenbase::concurrency::Channel<BOOL>::~Channel(uint64_t a1)
{
  pthread_mutex_lock((a1 + 176));
  v2 = *(a1 + 56);
  pthread_mutex_unlock((a1 + 176));
  if ((v2 & 1) == 0)
  {
    cv3d::aspenbase::concurrency::Channel<BOOL>::Close(a1);
  }

  pthread_mutex_lock((a1 + 176));
  pthread_mutex_unlock((a1 + 176));
  pthread_cond_destroy((a1 + 80));
  pthread_cond_destroy((a1 + 128));
  pthread_mutex_destroy((a1 + 176));
  std::deque<BOOL>::~deque[abi:ne200100](a1 + 8);
  return a1;
}

void *std::deque<std::function<void ()(cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x80;
  v3 = v1 - 128;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<std::function<void ()(cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)> *,std::allocator<std::function<void ()(cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)> *>>::emplace_back<std::function<void ()(cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)> *&>(a1, &v11);
}

void sub_2474527C0(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void *std::__split_buffer<std::function<void ()(cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)> *,std::allocator<std::function<void ()(cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)> *>>::emplace_back<std::function<void ()(cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)> *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      v11 = &v4[-*result] >> 2;
      if (v4 == *result)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v8];
  }

  *v4 = *a2;
  v3[2] = v4 + 8;
  return result;
}

const void **std::__split_buffer<std::function<void ()(cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)> *,std::allocator<std::function<void ()(cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)> *>>::emplace_front<std::function<void ()(cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)> *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      v9 = (v7 - v4) >> 2;
      if (v7 == v4)
      {
        v9 = 1;
      }

      if (!(v9 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v5 - 8;
  return result;
}

void *std::__function::__func<std::__bind<std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)> &,unsigned long &,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)> &,unsigned long &,std::placeholders::__ph<1> const&>>,void ()(cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>::~__func(void *a1)
{
  *a1 = &unk_28593DD60;
  v2 = a1 + 2;
  v3 = a1[5];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

void std::__function::__func<std::__bind<std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)> &,unsigned long &,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)> &,unsigned long &,std::placeholders::__ph<1> const&>>,void ()(cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>::~__func(void *a1)
{
  *a1 = &unk_28593DD60;
  v1 = a1 + 2;
  v2 = a1[5];
  if (v2 == v1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  JUMPOUT(0x24C1A2010);
}

uint64_t std::__function::__func<std::__bind<std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)> &,unsigned long &,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)> &,unsigned long &,std::placeholders::__ph<1> const&>>,void ()(cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_28593DD60;
  v4 = a2 + 2;
  result = *(a1 + 40);
  if (result)
  {
    if (result == a1 + 16)
    {
      a2[5] = v4;
      result = (*(**(a1 + 40) + 24))(*(a1 + 40));
    }

    else
    {
      result = (*(*result + 16))(result, v4);
      a2[5] = result;
    }

    a2[6] = *(a1 + 48);
  }

  else
  {
    a2[5] = 0;
    a2[6] = *(a1 + 48);
  }

  return result;
}

uint64_t std::__function::__func<std::__bind<std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)> &,unsigned long &,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)> &,unsigned long &,std::placeholders::__ph<1> const&>>,void ()(cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>::destroy(uint64_t a1)
{
  v1 = a1 + 16;
  result = *(a1 + 40);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__function::__func<std::__bind<std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)> &,unsigned long &,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)> &,unsigned long &,std::placeholders::__ph<1> const&>>,void ()(cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>::destroy_deallocate(char *__p)
{
  v2 = __p + 16;
  v3 = *(__p + 5);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = __p;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = __p;
  }

  operator delete(v4);
}

uint64_t std::__function::__func<std::__bind<std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)> &,unsigned long &,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)> &,unsigned long &,std::placeholders::__ph<1> const&>>,void ()(cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 40;
  v2 = *(a1 + 40);
  v5 = *(v3 + 8);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v5, a2);
}

uint64_t std::__function::__func<std::__bind<std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)> &,unsigned long &,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)> &,unsigned long &,std::placeholders::__ph<1> const&>>,void ()(cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x8000000247479B12)
  {
    return a1 + 8;
  }

  if (((v2 & 0x8000000247479B12 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000247479B12))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000247479B12 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::__function::__func<std::__bind<cv3d::aspenbase::concurrency::AsyncManager::AsyncFor(unsigned long,std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>,unsigned long)::$_0 &,unsigned long &,unsigned long &,unsigned long &,std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>&,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<cv3d::aspenbase::concurrency::AsyncManager::AsyncFor(unsigned long,std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>,unsigned long)::$_0 &,unsigned long &,unsigned long &,unsigned long &,std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>&,std::placeholders::__ph<1> const&>>,void ()(cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>::~__func(void *a1)
{
  *a1 = &unk_28593DE80;
  v2 = a1 + 5;
  v3 = a1[8];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

void std::__function::__func<std::__bind<cv3d::aspenbase::concurrency::AsyncManager::AsyncFor(unsigned long,std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>,unsigned long)::$_0 &,unsigned long &,unsigned long &,unsigned long &,std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>&,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<cv3d::aspenbase::concurrency::AsyncManager::AsyncFor(unsigned long,std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>,unsigned long)::$_0 &,unsigned long &,unsigned long &,unsigned long &,std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>&,std::placeholders::__ph<1> const&>>,void ()(cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>::~__func(void *a1)
{
  *a1 = &unk_28593DE80;
  v1 = a1 + 5;
  v2 = a1[8];
  if (v2 == v1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  JUMPOUT(0x24C1A2010);
}

void *std::__function::__func<std::__bind<cv3d::aspenbase::concurrency::AsyncManager::AsyncFor(unsigned long,std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>,unsigned long)::$_0 &,unsigned long &,unsigned long &,unsigned long &,std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>&,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<cv3d::aspenbase::concurrency::AsyncManager::AsyncFor(unsigned long,std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>,unsigned long)::$_0 &,unsigned long &,unsigned long &,unsigned long &,std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>&,std::placeholders::__ph<1> const&>>,void ()(cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>::__clone(void *result, void *a2)
{
  *a2 = &unk_28593DE80;
  a2[2] = result[2];
  a2[3] = result[3];
  a2[4] = result[4];
  v3 = result[8];
  if (v3)
  {
    if (v3 == result + 5)
    {
      a2[8] = a2 + 5;
      v4 = *(*result[8] + 24);

      return v4();
    }

    else
    {
      result = (*(*v3 + 16))(result[8]);
      a2[8] = result;
    }
  }

  else
  {
    a2[8] = 0;
  }

  return result;
}

uint64_t std::__function::__func<std::__bind<cv3d::aspenbase::concurrency::AsyncManager::AsyncFor(unsigned long,std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>,unsigned long)::$_0 &,unsigned long &,unsigned long &,unsigned long &,std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>&,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<cv3d::aspenbase::concurrency::AsyncManager::AsyncFor(unsigned long,std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>,unsigned long)::$_0 &,unsigned long &,unsigned long &,unsigned long &,std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>&,std::placeholders::__ph<1> const&>>,void ()(cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>::destroy(uint64_t a1)
{
  v1 = a1 + 40;
  result = *(a1 + 64);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__function::__func<std::__bind<cv3d::aspenbase::concurrency::AsyncManager::AsyncFor(unsigned long,std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>,unsigned long)::$_0 &,unsigned long &,unsigned long &,unsigned long &,std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>&,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<cv3d::aspenbase::concurrency::AsyncManager::AsyncFor(unsigned long,std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>,unsigned long)::$_0 &,unsigned long &,unsigned long &,unsigned long &,std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>&,std::placeholders::__ph<1> const&>>,void ()(cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>::destroy_deallocate(char *__p)
{
  v2 = __p + 40;
  v3 = *(__p + 8);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = __p;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = __p;
  }

  operator delete(v4);
}

uint64_t std::__function::__func<std::__bind<cv3d::aspenbase::concurrency::AsyncManager::AsyncFor(unsigned long,std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>,unsigned long)::$_0 &,unsigned long &,unsigned long &,unsigned long &,std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>&,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<cv3d::aspenbase::concurrency::AsyncManager::AsyncFor(unsigned long,std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>,unsigned long)::$_0 &,unsigned long &,unsigned long &,unsigned long &,std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>&,std::placeholders::__ph<1> const&>>,void ()(cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>::operator()(void *a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[8];
  if (v7)
  {
    if (v7 == a1 + 5)
    {
      v12 = v11;
      (*(*v7 + 24))(v7, v11);
    }

    else
    {
      v12 = (*(*v7 + 16))(v7);
    }
  }

  else
  {
    v12 = 0;
  }

  if (v6 + v4 < v5)
  {
    v5 = v6 + v4;
  }

  if (v5 > v4)
  {
    do
    {
      v10 = v4;
      if (!v12)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v12 + 48))(v12, &v10, a2);
      ++v4;
    }

    while (v5 != v4);
  }

  result = v12;
  if (v12 == v11)
  {
    result = (*(*v12 + 32))(v12);
  }

  else if (v12)
  {
    result = (*(*v12 + 40))(v12);
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24745366C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>::~function(va);
  _Unwind_Resume(a1);
}

void sub_247453680(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>::~function(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<std::__bind<cv3d::aspenbase::concurrency::AsyncManager::AsyncFor(unsigned long,std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>,unsigned long)::$_0 &,unsigned long &,unsigned long &,unsigned long &,std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>&,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<cv3d::aspenbase::concurrency::AsyncManager::AsyncFor(unsigned long,std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>,unsigned long)::$_0 &,unsigned long &,unsigned long &,unsigned long &,std::function<void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>&,std::placeholders::__ph<1> const&>>,void ()(cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "NSt3__16__bindIRZNK4cv3d9aspenbase11concurrency12AsyncManager8AsyncForEmNS_8functionIFvmRNS4_13ThreadContextEEEEmE3$_0JRmSC_SC_RS9_RKNS_12placeholders4__phILi1EEEEEE")
  {
    return a1 + 8;
  }

  if (((v2 & "NSt3__16__bindIRZNK4cv3d9aspenbase11concurrency12AsyncManager8AsyncForEmNS_8functionIFvmRNS4_13ThreadContextEEEEmE3$_0JRmSC_SC_RS9_RKNS_12placeholders4__phILi1EEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__16__bindIRZNK4cv3d9aspenbase11concurrency12AsyncManager8AsyncForEmNS_8functionIFvmRNS4_13ThreadContextEEEEmE3$_0JRmSC_SC_RS9_RKNS_12placeholders4__phILi1EEEEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__16__bindIRZNK4cv3d9aspenbase11concurrency12AsyncManager8AsyncForEmNS_8functionIFvmRNS4_13ThreadContextEEEEmE3$_0JRmSC_SC_RS9_RKNS_12placeholders4__phILi1EEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::__function::__func<cv3d::aspenbase::concurrency::AsyncManager::AsyncFor(unsigned long,std::function<void ()(unsigned long)>,unsigned long)::$_0,std::allocator<cv3d::aspenbase::concurrency::AsyncManager::AsyncFor(unsigned long,std::function<void ()(unsigned long)>,unsigned long)::$_0>,void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>::~__func(void *a1)
{
  *a1 = &unk_28593DF78;
  v2 = a1 + 1;
  v3 = a1[4];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

void std::__function::__func<cv3d::aspenbase::concurrency::AsyncManager::AsyncFor(unsigned long,std::function<void ()(unsigned long)>,unsigned long)::$_0,std::allocator<cv3d::aspenbase::concurrency::AsyncManager::AsyncFor(unsigned long,std::function<void ()(unsigned long)>,unsigned long)::$_0>,void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>::~__func(void *a1)
{
  *a1 = &unk_28593DF78;
  v1 = a1 + 1;
  v2 = a1[4];
  if (v2 == v1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  JUMPOUT(0x24C1A2010);
}

uint64_t std::__function::__func<cv3d::aspenbase::concurrency::AsyncManager::AsyncFor(unsigned long,std::function<void ()(unsigned long)>,unsigned long)::$_0,std::allocator<cv3d::aspenbase::concurrency::AsyncManager::AsyncFor(unsigned long,std::function<void ()(unsigned long)>,unsigned long)::$_0>,void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_28593DF78;
  v3 = a2 + 1;
  v4 = *(result + 32);
  if (v4)
  {
    if (v4 == result + 8)
    {
      a2[4] = v3;
      v5 = *(**(result + 32) + 24);

      return v5();
    }

    else
    {
      result = (*(*v4 + 16))(*(result + 32), v3);
      a2[4] = result;
    }
  }

  else
  {
    a2[4] = 0;
  }

  return result;
}

uint64_t std::__function::__func<cv3d::aspenbase::concurrency::AsyncManager::AsyncFor(unsigned long,std::function<void ()(unsigned long)>,unsigned long)::$_0,std::allocator<cv3d::aspenbase::concurrency::AsyncManager::AsyncFor(unsigned long,std::function<void ()(unsigned long)>,unsigned long)::$_0>,void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>::destroy(uint64_t a1)
{
  v1 = a1 + 8;
  result = *(a1 + 32);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__function::__func<cv3d::aspenbase::concurrency::AsyncManager::AsyncFor(unsigned long,std::function<void ()(unsigned long)>,unsigned long)::$_0,std::allocator<cv3d::aspenbase::concurrency::AsyncManager::AsyncFor(unsigned long,std::function<void ()(unsigned long)>,unsigned long)::$_0>,void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>::destroy_deallocate(char *__p)
{
  v2 = __p + 8;
  v3 = *(__p + 4);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = __p;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = __p;
  }

  operator delete(v4);
}

uint64_t std::__function::__func<cv3d::aspenbase::concurrency::AsyncManager::AsyncFor(unsigned long,std::function<void ()(unsigned long)>,unsigned long)::$_0,std::allocator<cv3d::aspenbase::concurrency::AsyncManager::AsyncFor(unsigned long,std::function<void ()(unsigned long)>,unsigned long)::$_0>,void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v4 = *a2;
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__function::__func<cv3d::aspenbase::concurrency::AsyncManager::AsyncFor(unsigned long,std::function<void ()(unsigned long)>,unsigned long)::$_0,std::allocator<cv3d::aspenbase::concurrency::AsyncManager::AsyncFor(unsigned long,std::function<void ()(unsigned long)>,unsigned long)::$_0>,void ()(unsigned long,cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK4cv3d9aspenbase11concurrency12AsyncManager8AsyncForEmNSt3__18functionIFvmEEEmE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK4cv3d9aspenbase11concurrency12AsyncManager8AsyncForEmNSt3__18functionIFvmEEEmE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK4cv3d9aspenbase11concurrency12AsyncManager8AsyncForEmNSt3__18functionIFvmEEEmE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK4cv3d9aspenbase11concurrency12AsyncManager8AsyncForEmNSt3__18functionIFvmEEEmE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void std::__shared_ptr_emplace<cv3d::aspenbase::concurrency::Channel<std::function<void ()(cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28593E008;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A2010);
}

uint64_t cv3d::aspenbase::concurrency::Channel<std::function<void ()(cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>>::Channel(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x277D85DE8];
  *(a1 + 8) = 0u;
  *a1 = a2;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutexattr_init(&v6);
  pthread_mutexattr_settype(&v6, 1);
  pthread_mutexattr_setprotocol(&v6, 0);
  pthread_mutex_init((a1 + 176), &v6);
  pthread_mutexattr_destroy(&v6);
  v3 = *a1;
  if (*a1 >= 0x7FFFFFFFu)
  {
    *a1 = 0x7FFFFFFF;
    v3 = 0x7FFFFFFF;
  }

  else if (v3 < 2)
  {
    v3 = 1;
  }

  *a1 = v3;
  pthread_cond_init((a1 + 80), 0);
  pthread_cond_init((a1 + 128), 0);
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_247453D88(_Unwind_Exception *a1)
{
  pthread_mutex_destroy((v2 + 176));
  std::deque<std::function<void ()(cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>>::~deque[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t std::deque<std::function<void ()(cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    *(a1 + 40) = 0;
    v10 = 0;
    goto LABEL_15;
  }

  v4 = *(a1 + 32);
  v5 = &v2[v4 >> 7];
  v6 = *v5 + 32 * (v4 & 0x7F);
  v7 = *(v2 + (((*(a1 + 40) + v4) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(a1 + 40) + v4) & 0x7F);
  if (v6 == v7)
  {
    goto LABEL_13;
  }

  do
  {
    v8 = *(v6 + 24);
    if (v8 == v6)
    {
      (*(*v8 + 32))(v8);
      v6 += 32;
      if (v6 - *v5 != 4096)
      {
        continue;
      }

LABEL_11:
      v9 = v5[1];
      ++v5;
      v6 = v9;
      continue;
    }

    if (v8)
    {
      (*(*v8 + 40))(v8);
    }

    v6 += 32;
    if (v6 - *v5 == 4096)
    {
      goto LABEL_11;
    }
  }

  while (v6 != v7);
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
LABEL_13:
  *(a1 + 40) = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

LABEL_15:
  if (v10 == 1)
  {
    v11 = 64;
LABEL_20:
    *(a1 + 32) = v11;
  }

  else if (v10 == 2)
  {
    v11 = 128;
    goto LABEL_20;
  }

  if (v2 != v3)
  {
    do
    {
      v12 = *v2++;
      operator delete(v12);
    }

    while (v2 != v3);
    v14 = *(a1 + 8);
    v13 = *(a1 + 16);
    if (v13 != v14)
    {
      *(a1 + 16) = v13 + ((v14 - v13 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t cv3d::aspenbase::concurrency::Channel<std::function<void ()(cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>>::~Channel(uint64_t a1)
{
  pthread_mutex_lock((a1 + 176));
  v2 = *(a1 + 56);
  pthread_mutex_unlock((a1 + 176));
  if ((v2 & 1) == 0)
  {
    cv3d::aspenbase::concurrency::Channel<BOOL>::Close(a1);
  }

  pthread_mutex_lock((a1 + 176));
  pthread_mutex_unlock((a1 + 176));
  pthread_cond_destroy((a1 + 80));
  pthread_cond_destroy((a1 + 128));
  pthread_mutex_destroy((a1 + 176));
  std::deque<std::function<void ()(cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>>::~deque[abi:ne200100](a1 + 8);
  return a1;
}

void std::__shared_ptr_emplace<cv3d::aspenbase::concurrency::AsyncManager::ThreadContext>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28593E058;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A2010);
}

uint64_t std::__shared_ptr_emplace<cv3d::aspenbase::concurrency::Thread>::__shared_ptr_emplace[abi:ne200100]<cv3d::aspenbase::concurrency::Thread::Config,std::allocator<cv3d::aspenbase::concurrency::Thread>,0>(uint64_t a1, __int128 *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_28593E0A8;
  *(a1 + 24) = &unk_28593DCA0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  pthread_rwlock_init((a1 + 48), 0);
  *(a1 + 248) = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 256), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 272) = *(a2 + 2);
    *(a1 + 256) = v4;
  }

  *(a1 + 280) = *(a2 + 6);
  return a1;
}

void sub_247454158(_Unwind_Exception *a1)
{
  pthread_rwlock_destroy((v1 + 48));
  std::__shared_weak_count::~__shared_weak_count(v1);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<cv3d::aspenbase::concurrency::Thread>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28593E0A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A2010);
}

void *cv3d::aspenbase::concurrency::Thread::ThreadFuncWrapper<std::__bind<cv3d::aspenbase::concurrency::AsyncManager::Start(unsigned long)::$_0 &,anonymous namespace::AsyncCallContext &>>::~ThreadFuncWrapper(void *result)
{
  *result = &unk_28593E0F8;
  v1 = result[7];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = result;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    result = v2;
  }

  v3 = result[5];
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void cv3d::aspenbase::concurrency::Thread::ThreadFuncWrapper<std::__bind<cv3d::aspenbase::concurrency::AsyncManager::Start(unsigned long)::$_0 &,anonymous namespace::AsyncCallContext &>>::~ThreadFuncWrapper(void *a1)
{
  *a1 = &unk_28593E0F8;
  v1 = a1[7];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  v3 = a1[5];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  JUMPOUT(0x24C1A2010);
}

void cv3d::aspenbase::concurrency::Thread::ThreadFuncWrapper<std::__bind<cv3d::aspenbase::concurrency::AsyncManager::Start(unsigned long)::$_0 &,anonymous namespace::AsyncCallContext &>>::ThreadFunc(void *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = a1[3];
  v1 = a1[4];
  v3 = a1[5];
  v14 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = a1[6];
  v4 = a1[7];
  v15 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(*(a1[1] + 320) + 16 * a1[2]);
  if (*(&v6 + 1))
  {
    atomic_fetch_add_explicit((*(&v6 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v13 = *(&v6 + 1);
  v7 = cv3d::aspenbase::concurrency::Channel<BOOL>::Pop(v1);
  if ((v7 & 0x100) == 0 || (v7 & 1) == 0)
  {
    goto LABEL_33;
  }

  while (2)
  {
    cv3d::aspenbase::concurrency::Channel<std::function<void ()(cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>>::Pop(*v2, v19);
    while (v20 && (v21 & 1) != 0)
    {
      (*(*v20 + 48))();
      cv3d::aspenbase::concurrency::Channel<std::function<void ()(cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>>::Pop(*v2, v16);
      v8 = v20;
      v20 = 0;
      if (v8 == v19)
      {
        (*(*v8 + 32))(v8);
        v9 = v17;
        v10 = &v20;
        if (!v17)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v8)
        {
          (*(*v8 + 40))(v8);
        }

        v9 = v17;
        v10 = &v20;
        if (!v17)
        {
          goto LABEL_21;
        }
      }

      if (v9 == v16)
      {
        v20 = v19;
        (*(*v9 + 24))(v9, v19);
        goto LABEL_23;
      }

      v20 = v9;
      v10 = &v17;
LABEL_21:
      *v10 = 0;
LABEL_23:
      v21 = v18;
      if (v17 == v16)
      {
        (*(*v17 + 32))(v17);
      }

      else if (v17)
      {
        (*(*v17 + 40))();
      }
    }

    v16[0] = 1;
    cv3d::aspenbase::concurrency::Channel<BOOL>::Push(v5, v16);
    v11 = cv3d::aspenbase::concurrency::Channel<BOOL>::Pop(v1);
    if (v20 == v19)
    {
      (*(*v20 + 32))(v20);
      if ((v11 & 0x100) != 0)
      {
LABEL_32:
        if ((v11 & 1) == 0)
        {
          break;
        }

        continue;
      }
    }

    else
    {
      if (v20)
      {
        (*(*v20 + 40))();
      }

      if ((v11 & 0x100) != 0)
      {
        goto LABEL_32;
      }
    }

    break;
  }

LABEL_33:
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_2474547C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  std::shared_ptr<apple3dgs::Asset>::~shared_ptr[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

uint64_t cv3d::aspenbase::concurrency::Channel<std::function<void ()(cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>>::Pop@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((a1 + 44));
  if (*(a1 + 6))
  {
LABEL_4:
    v4 = *(*(a1 + 2) + ((*(a1 + 5) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*(a1 + 5) & 0x7FLL);
    v5 = *(v4 + 24);
    if (v5)
    {
      if (v5 == v4)
      {
        v15 = v14;
        (*(**(v4 + 24) + 24))(*(v4 + 24), v14);
LABEL_10:
        v6 = *(*(a1 + 2) + ((*(a1 + 5) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*(a1 + 5) & 0x7FLL);
        v7 = *(v6 + 24);
        if (v7 == v6)
        {
          (*(*v7 + 32))(v7);
        }

        else if (v7)
        {
          (*(*v7 + 40))(v7);
        }

        v8 = vaddq_s64(*(a1 + 10), xmmword_247479930);
        *(a1 + 10) = v8;
        if (v8.i64[0] >= 0x100uLL)
        {
          operator delete(**(a1 + 2));
          *(a1 + 2) += 8;
          v9 = *(a1 + 6);
          *(a1 + 5) -= 128;
          if (v9 >= *a1)
          {
            goto LABEL_19;
          }
        }

        else if (v8.i64[1] >= *a1)
        {
LABEL_19:
          v10 = v15;
          if (v15)
          {
            if (v15 == v14)
            {
              *(a2 + 24) = a2;
              (*(*v10 + 24))(v10, a2);
            }

            else
            {
              *(a2 + 24) = (*(*v15 + 16))();
            }

            v11 = v15;
            *(a2 + 32) = 1;
            if (v11 == v14)
            {
              (*(*v11 + 32))(v11);
            }

            else if (v11)
            {
              (*(*v11 + 40))(v11);
            }
          }

          else
          {
            *(a2 + 24) = 0;
            *(a2 + 32) = 1;
          }

          goto LABEL_28;
        }

        pthread_cond_signal((a1 + 20));
        goto LABEL_19;
      }

      v5 = (*(*v5 + 16))(v5);
    }

    v15 = v5;
    goto LABEL_10;
  }

  while ((a1[14] & 1) == 0)
  {
    ++*(a1 + 9);
    pthread_cond_wait((a1 + 32), (a1 + 44));
    --*(a1 + 9);
    if (*(a1 + 6))
    {
      goto LABEL_4;
    }
  }

  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
LABEL_28:
  result = pthread_mutex_unlock((a1 + 44));
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_247454B18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::function<void ()(cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)>::~function(va);
  pthread_mutex_unlock((v2 + 176));
  _Unwind_Resume(a1);
}

id _gs_log()
{
  if (qword_27EE511C8 == -1)
  {
    v1 = _MergedGlobals_0;
  }

  else
  {
    _gs_log_cold_1();
    v1 = _MergedGlobals_0;
  }

  return v1;
}

uint64_t ___gs_log_block_invoke()
{
  _MergedGlobals_0 = os_log_create("com.apple.CoreRE3DGSFoundation", "GSLog");

  return MEMORY[0x2821F96F8]();
}

double apple3dgs::ComputeColorFromSH(float32x4_t **a1, float32x4_t *a2, float32x4_t *a3, unsigned int a4)
{
  v4 = *a1;
  v5.i64[0] = 0x3F0000003F000000;
  v5.i64[1] = 0x3F0000003F000000;
  v6 = vmlaq_f32(v5, vdupq_n_s32(0x3E906EBBu), **a1);
  if (a4)
  {
    v7 = vsubq_f32(*a2, *a3);
    v8 = vmulq_f32(v7, v7);
    *&v9 = v8.f32[2] + vaddv_f32(*v8.f32);
    *v8.f32 = vrsqrte_f32(v9);
    *v8.f32 = vmul_f32(*v8.f32, vrsqrts_f32(v9, vmul_f32(*v8.f32, *v8.f32)));
    v10 = vrsqrts_f32(v9, vmul_f32(*v8.f32, *v8.f32));
    *v8.f32 = vmul_f32(*v8.f32, v10);
    v11 = vmulq_n_f32(v7, v8.f32[0]);
    v10.f32[0] = vmuls_lane_f32(0.4886, *v11.f32, 1);
    v8.f32[0] = 0.4886 * v11.f32[0];
    v6 = vmlsq_lane_f32(vmlaq_n_f32(vmlsq_lane_f32(v6, v4[1], v10, 0), v4[2], vmuls_lane_f32(0.4886, v11, 2)), v4[3], *v8.f32, 0);
    if (a4 != 1)
    {
      v12 = vmulq_f32(v11, v11).f32[0];
      v15 = v12 - (v11.f32[1] * v11.f32[1]);
      v6 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(v6, v4[4], (v11.f32[0] * v11.f32[1]) * 1.0925), v4[5], (v11.f32[1] * v11.f32[2]) * -1.0925), v4[6], (-(v12 - ((v11.f32[2] * v11.f32[2]) * 2.0)) - (v11.f32[1] * v11.f32[1])) * 0.31539), v4[7], (v11.f32[0] * v11.f32[2]) * -1.0925), v4[8], v15 * 0.54627);
      if (a4 >= 3)
      {
        v13 = v11.f32[1] * v11.f32[1];
        v14 = v11.f32[2] * v11.f32[2];
        v6.i64[0] = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(v6, v4[9], (v11.f32[1] * -0.59004) * -(v13 - (v12 * 3.0))), v4[10], v11.f32[2] * ((v11.f32[0] * v11.f32[1]) * 2.8906)), v4[11], (v11.f32[1] * -0.45705) * (((v14 * 4.0) - v12) - v13)), v4[12], (v11.f32[2] * 0.37318) * (((v12 * -3.0) + (v14 * 2.0)) + (v13 * -3.0))), v4[13], (v11.f32[0] * -0.45705) * (((v14 * 4.0) - v12) - v13)), v4[14], (v11.f32[2] * 1.4453) * v15), v4[15], (v11.f32[0] * -0.59004) * (v12 + (v13 * -3.0))).u64[0];
      }
    }
  }

  return *v6.i64;
}

float32x2_t apple3dgs::SRGBToLinearRGB(__n128 a1)
{
  v1 = a1;
  v2 = a1.n128_f32[0];
  v9 = v1;
  if (v2 <= 0.04045)
  {
    v11 = v2 / 12.92;
    v4 = v1.n128_f32[1];
    if (v1.n128_f32[1] <= 0.04045)
    {
LABEL_3:
      v5 = v4 / 12.92;
      v6 = v1.n128_f32[2];
      if (v1.n128_f32[2] <= 0.04045)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v3 = pow((v2 + 0.055) / 1.055, 2.4);
    v1.n128_u32[2] = v9.n128_u32[2];
    v11 = v3;
    v4 = v9.n128_f32[1];
    if (v9.n128_f32[1] <= 0.04045)
    {
      goto LABEL_3;
    }
  }

  v5 = pow((v4 + 0.055) / 1.055, 2.4);
  v6 = v9.n128_f32[2];
  if (v9.n128_f32[2] <= 0.04045)
  {
    goto LABEL_8;
  }

LABEL_7:
  v10 = v5;
  pow((v6 + 0.055) / 1.055, 2.4);
  v5 = v10;
LABEL_8:
  v7.f64[0] = v11;
  v7.f64[1] = v5;
  return vcvt_f32_f64(v7);
}

float32x2_t apple3dgs::LinearRGBToSRGB(__n128 a1)
{
  v1 = a1;
  v2 = a1.n128_f32[0];
  v10 = v1;
  if (v2 < 0.00313080495)
  {
    v12 = v2 * 12.92;
    v3 = v1.n128_f32[1];
    v4 = v1.n128_f32[1];
    if (v1.n128_f32[1] >= 0.00313080495)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = v4 * 12.92;
    v6 = v1.n128_f32[2];
    if (v1.n128_f32[2] < 0.00313080495)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  v7 = powf(v1.n128_f32[0], 0.41667) * 1.055 + -0.055;
  v1.n128_u32[2] = v10.n128_u32[2];
  v12 = v7;
  v3 = v10.n128_f32[1];
  v4 = v10.n128_f32[1];
  if (v10.n128_f32[1] < 0.00313080495)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = powf(v3, 0.41667) * 1.055 + -0.055;
  v6 = v10.n128_f32[2];
  if (v10.n128_f32[2] >= 0.00313080495)
  {
LABEL_4:
    v11 = v5;
    powf(v6, 0.41667);
    v5 = v11;
  }

LABEL_7:
  v8.f64[0] = v12;
  v8.f64[1] = v5;
  return vcvt_f32_f64(v8);
}

double apple3dgs::ToLinearColorSpace(int a1, __n128 a2)
{
  v2 = a2;
  if (!a1)
  {
    v3 = a2.n128_f32[0];
    v11 = v2;
    if (v2.n128_f32[0] <= 0.04045)
    {
      v10 = v3 / 12.92;
      v5 = v2.n128_f32[1];
      if (v2.n128_f32[1] <= 0.04045)
      {
LABEL_4:
        v6 = v5 / 12.92;
        v7 = v2.n128_f32[2];
        if (v2.n128_f32[2] <= 0.04045)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }
    }

    else
    {
      v4 = pow((v3 + 0.055) / 1.055, 2.4);
      v2.n128_u32[2] = v11.n128_u32[2];
      v10 = v4;
      v5 = v11.n128_f32[1];
      if (v11.n128_f32[1] <= 0.04045)
      {
        goto LABEL_4;
      }
    }

    v6 = pow((v5 + 0.055) / 1.055, 2.4);
    v7 = v11.n128_f32[2];
    if (v11.n128_f32[2] <= 0.04045)
    {
      goto LABEL_9;
    }

LABEL_8:
    v12 = v6;
    pow((v7 + 0.055) / 1.055, 2.4);
    v6 = v12;
LABEL_9:
    v8.f64[0] = v10;
    v8.f64[1] = v6;
    a2.n128_u64[0] = vcvt_f32_f64(v8);
  }

  return a2.n128_f64[0];
}

float32x4_t apple3dgs::GetFrustumPlanes@<Q0>(int32x4_t *this@<X0>, float32x4_t *a2@<X8>)
{
  v3 = this[1];
  v4 = this[2];
  v5 = this[3];
  v6 = vzip1q_s32(*this, v4);
  v7 = vzip2q_s32(*this, v4);
  v8 = vzip1q_s32(v3, v5);
  v9 = vzip2q_s32(v3, v5);
  v10 = vzip1q_s32(v6, v8);
  v11 = vzip2q_s32(v6, v8);
  v12 = vzip1q_s32(v7, v9);
  v13 = vzip2q_s32(v7, v9);
  v14 = vaddq_f32(v13, v10);
  v15 = vsubq_f32(v13, v10);
  v16 = vaddq_f32(v13, v11);
  v17 = vsubq_f32(v13, v11);
  v18 = vmulq_f32(v14, v14);
  v11.f32[0] = v18.f32[2] + vaddv_f32(*v18.f32);
  result = vsubq_f32(v13, v12);
  *v12.f32 = vrsqrte_f32(v11.u32[0]);
  *v12.f32 = vmul_f32(*v12.f32, vrsqrts_f32(v11.u32[0], vmul_f32(*v12.f32, *v12.f32)));
  v20 = vmulq_n_f32(v14, vmul_f32(*v12.f32, vrsqrts_f32(v11.u32[0], vmul_f32(*v12.f32, *v12.f32))).f32[0]);
  v20.i32[3] = v14.i32[3];
  v21 = vmulq_f32(v15, v15);
  v14.f32[0] = v21.f32[2] + vaddv_f32(*v21.f32);
  v22 = vrsqrte_f32(v14.u32[0]);
  v23 = vmul_f32(v22, vrsqrts_f32(v14.u32[0], vmul_f32(v22, v22)));
  v24 = vmulq_n_f32(v15, vmul_f32(v23, vrsqrts_f32(v14.u32[0], vmul_f32(v23, v23))).f32[0]);
  v24.i32[3] = v15.i32[3];
  v25 = vmulq_f32(v16, v16);
  v23.f32[0] = v25.f32[2] + vaddv_f32(*v25.f32);
  *v25.f32 = vrsqrte_f32(v23.u32[0]);
  *v25.f32 = vmul_f32(*v25.f32, vrsqrts_f32(v23.u32[0], vmul_f32(*v25.f32, *v25.f32)));
  v26 = vmulq_n_f32(v16, vmul_f32(*v25.f32, vrsqrts_f32(v23.u32[0], vmul_f32(*v25.f32, *v25.f32))).f32[0]);
  v26.i32[3] = v16.i32[3];
  v27 = vmulq_f32(v17, v17);
  v23.f32[0] = v27.f32[2] + vaddv_f32(*v27.f32);
  *a2 = v20;
  a2[1] = v24;
  *v27.f32 = vrsqrte_f32(v23.u32[0]);
  *v27.f32 = vmul_f32(*v27.f32, vrsqrts_f32(v23.u32[0], vmul_f32(*v27.f32, *v27.f32)));
  v28 = vmulq_n_f32(v17, vmul_f32(*v27.f32, vrsqrts_f32(v23.u32[0], vmul_f32(*v27.f32, *v27.f32))).f32[0]);
  v28.i32[3] = v17.i32[3];
  a2[2] = v26;
  a2[3] = v28;
  v29 = vmulq_f32(v13, v13);
  v28.f32[0] = v29.f32[2] + vaddv_f32(*v29.f32);
  *v29.f32 = vrsqrte_f32(v28.u32[0]);
  *v29.f32 = vmul_f32(*v29.f32, vrsqrts_f32(v28.u32[0], vmul_f32(*v29.f32, *v29.f32)));
  v30 = vmulq_n_f32(v13, vmul_f32(*v29.f32, vrsqrts_f32(v28.u32[0], vmul_f32(*v29.f32, *v29.f32))).f32[0]);
  v30.i32[3] = v13.i32[3];
  v31 = vmulq_f32(result, result);
  v21.f32[0] = v31.f32[2] + vaddv_f32(*v31.f32);
  *v31.f32 = vrsqrte_f32(v21.u32[0]);
  *v31.f32 = vmul_f32(*v31.f32, vrsqrts_f32(v21.u32[0], vmul_f32(*v31.f32, *v31.f32)));
  v32 = vmulq_n_f32(result, vmul_f32(*v31.f32, vrsqrts_f32(v21.u32[0], vmul_f32(*v31.f32, *v31.f32))).f32[0]);
  v32.i32[3] = result.i32[3];
  a2[4] = v30;
  a2[5] = v32;
  return result;
}

uint64_t apple3dgs::SortWorker::SortWorker(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = *(a3 + 2);
  *a1 = *a3;
  *(a1 + 2) = v8;
  MetalContext::MetalContext(a1 + 8, v7, *(a3 + 2));
  apple3dgs::RadixSorter::RadixSorter(a1 + 128, v7, a4, 0, *(a3 + 2));
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 584) = 850045863;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 649) = 0u;
  *(a1 + 672) = 850045863;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0;
  *(a1 + 736) = 850045863;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0;
  *(a1 + 800) = MTLCreateSystemDefaultDevice();
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 856) = 0u;
  *(a1 + 872) = 0u;
  MinimumStride = apple3dgs::GetMinimumStride(0x1E, v9);
  *(a1 + 888) = 0;
  *(a1 + 896) = [0 contents];
  *(a1 + 904) = 30;
  *(a1 + 912) = MinimumStride;
  *(a1 + 1016) = 0;
  *(a1 + 920) = 0u;
  *(a1 + 936) = 0u;
  *(a1 + 952) = 0u;
  *(a1 + 968) = 0u;
  *(a1 + 984) = 0u;
  *(a1 + 1000) = 0u;
  apple3dgs::CheckAlloc((a1 + 648), 0x10uLL, v7, 0);
  [*(a1 + 648) setLabel:@"Indirect Render Buffer"];
  if (a4)
  {
    apple3dgs::SortWorker::Allocate(a1, a4);
  }

  return a1;
}

void sub_247455530(_Unwind_Exception *a1)
{
  v6 = *(v2 + 864);
  if (v6)
  {
    *(v2 + 872) = v6;
    operator delete(v6);
    v7 = *(v2 + 840);
    if (!v7)
    {
LABEL_3:
      v8 = *v4;
      if (!*v4)
      {
LABEL_8:

        std::mutex::~mutex((v2 + 736));
        std::mutex::~mutex((v2 + 672));
        std::thread::~thread((v2 + 656));

        std::mutex::~mutex((v2 + 584));
        v9 = *(v2 + 560);
        if (v9)
        {
          *(v2 + 568) = v9;
          operator delete(v9);
          v10 = *(v2 + 536);
          if (!v10)
          {
LABEL_10:
            v11 = *(v2 + 512);
            if (!v11)
            {
              goto LABEL_11;
            }

            goto LABEL_18;
          }
        }

        else
        {
          v10 = *(v2 + 536);
          if (!v10)
          {
            goto LABEL_10;
          }
        }

        *(v2 + 544) = v10;
        operator delete(v10);
        v11 = *(v2 + 512);
        if (!v11)
        {
LABEL_11:
          v12 = *(v2 + 488);
          if (!v12)
          {
            goto LABEL_12;
          }

          goto LABEL_19;
        }

LABEL_18:
        *(v2 + 520) = v11;
        operator delete(v11);
        v12 = *(v2 + 488);
        if (!v12)
        {
LABEL_12:
          v13 = *(v2 + 464);
          if (!v13)
          {
            goto LABEL_13;
          }

          goto LABEL_20;
        }

LABEL_19:
        *(v2 + 496) = v12;
        operator delete(v12);
        v13 = *(v2 + 464);
        if (!v13)
        {
LABEL_13:
          v14 = *(v2 + 440);
          if (!v14)
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }

LABEL_20:
        *(v2 + 472) = v13;
        operator delete(v13);
        v14 = *(v2 + 440);
        if (!v14)
        {
LABEL_15:
          apple3dgs::SortWorker::RenderingBuffers::~RenderingBuffers(v3);
          apple3dgs::RadixSorter::~RadixSorter((v2 + 128));
          MetalContext::~MetalContext((v2 + 8));

          _Unwind_Resume(a1);
        }

LABEL_14:
        *(v2 + 448) = v14;
        operator delete(v14);
        goto LABEL_15;
      }

LABEL_7:
      *(v2 + 824) = v8;
      operator delete(v8);
      goto LABEL_8;
    }
  }

  else
  {
    v7 = *(v2 + 840);
    if (!v7)
    {
      goto LABEL_3;
    }
  }

  *(v2 + 848) = v7;
  operator delete(v7);
  v8 = *v4;
  if (!*v4)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void apple3dgs::SortWorker::Allocate(id *this, unsigned int a2)
{
  v4 = a2;
  v5 = 4 * a2;
  apple3dgs::CheckAlloc(this + 119, v5, this[100], 0);
  apple3dgs::CheckAlloc(this + 120, 8 * a2, this[100], 0);
  apple3dgs::CheckAlloc(this + 101, v5, this[100], 0);
  v6 = this[121];
  if (!v6 || [v6 width] != v4)
  {
    v7 = [MEMORY[0x277CD7058] textureBufferDescriptorWithPixelFormat:115 width:v4 resourceOptions:0 usage:3];
    v8 = [this[120] newTextureWithDescriptor:v7 offset:0 bytesPerRow:8 * a2];
    v9 = this[121];
    this[121] = v8;
  }

  if (*this == 1)
  {
    apple3dgs::CheckAlloc(this + 116, 8 * a2, this[100], 0);
    v10 = this[100];
    MinimumStride = apple3dgs::GetMinimumStride(0x1E, v11);
    apple3dgs::Attribute::Attribute(&v20, v10, 30, MinimumStride, v4);

    v13 = v20;
    v20 = 0;
    v14 = this[111];
    this[111] = v13;

    v15 = v22;
    *(this + 56) = v21;
    *(this + 57) = v15;

    apple3dgs::CheckAlloc(this + 118, 24 * a2, this[100], 0);
    v16 = this[117];
    if (!v16 || [v16 width] != v4)
    {
      v17 = [MEMORY[0x277CD7058] textureBufferDescriptorWithPixelFormat:115 width:v4 resourceOptions:0 usage:1];
      v18 = [this[116] newTextureWithDescriptor:v17 offset:0 bytesPerRow:8 * a2];
      v19 = this[117];
      this[117] = v18;
    }
  }
}

void apple3dgs::SortWorker::PreFetchBuffers::~PreFetchBuffers(id *this)
{
  v2 = this[6];
  if (v2)
  {
    this[7] = v2;
    operator delete(v2);
  }

  v3 = this[3];
  if (v3)
  {
    this[4] = v3;
    operator delete(v3);
  }

  v4 = *this;
  if (*this)
  {
    this[1] = v4;
    operator delete(v4);
  }
}

void apple3dgs::RadixSorter::~RadixSorter(apple3dgs::RadixSorter *this)
{

  MetalContext::~MetalContext(this);
}

void apple3dgs::SortWorker::~SortWorker(apple3dgs::SortWorker *this)
{
  apple3dgs::SortWorker::StopCPUSort(this);
  std::deque<apple3dgs::SortWorker::Job>::~deque[abi:ne200100](this + 976);

  v2 = *(this + 108);
  if (v2)
  {
    *(this + 109) = v2;
    operator delete(v2);
  }

  v3 = *(this + 105);
  if (v3)
  {
    *(this + 106) = v3;
    operator delete(v3);
  }

  v4 = *(this + 102);
  if (v4)
  {
    *(this + 103) = v4;
    operator delete(v4);
  }

  std::mutex::~mutex((this + 736));
  std::mutex::~mutex((this + 672));
  std::thread::~thread(this + 82);

  std::mutex::~mutex((this + 584));
  v5 = *(this + 70);
  if (v5)
  {
    *(this + 71) = v5;
    operator delete(v5);
  }

  v6 = *(this + 67);
  if (v6)
  {
    *(this + 68) = v6;
    operator delete(v6);
  }

  v7 = *(this + 64);
  if (v7)
  {
    *(this + 65) = v7;
    operator delete(v7);
  }

  v8 = *(this + 61);
  if (v8)
  {
    *(this + 62) = v8;
    operator delete(v8);
  }

  v9 = *(this + 58);
  if (v9)
  {
    *(this + 59) = v9;
    operator delete(v9);
  }

  v10 = *(this + 55);
  if (v10)
  {
    *(this + 56) = v10;
    operator delete(v10);
  }

  apple3dgs::SortWorker::RenderingBuffers::~RenderingBuffers(this + 39);

  MetalContext::~MetalContext((this + 128));
  MetalContext::~MetalContext((this + 8));
}

void apple3dgs::SortWorker::StopCPUSort(apple3dgs::SortWorker *this)
{
  if (*(this + 664) != 1)
  {
    return;
  }

  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "Stop CPU async sorting thread", 29);
  std::ios_base::getloc((v2 + *(*v2 - 24)));
  v3 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
  (v3->__vftable[2].~facet_0)(v3, 10);
  std::locale::~locale(&v14);
  std::ostream::put();
  std::ostream::flush();
  std::mutex::lock((this + 736));
  v4 = *(this + 123);
  v5 = *(this + 124);
  if (v5 == v4)
  {
    *(this + 127) = 0;
    v11 = 0;
  }

  else
  {
    v6 = *(this + 126);
    v7 = &v4[v6 / 0x55];
    v8 = *v7 + 48 * (v6 % 0x55);
    v9 = v4[(*(this + 127) + v6) / 0x55] + 48 * ((*(this + 127) + v6) % 0x55);
    if (v8 != v9)
    {
      do
      {
        std::__destroy_at[abi:ne200100]<apple3dgs::SortWorker::Job,0>(v8);
        v8 += 48;
        if (v8 - *v7 == 4080)
        {
          v10 = v7[1];
          ++v7;
          v8 = v10;
        }
      }

      while (v8 != v9);
      v5 = *(this + 124);
      v4 = *(this + 123);
    }

    *(this + 127) = 0;
    v11 = v5 - v4;
    if (v11 >= 3)
    {
      do
      {
        operator delete(*v4);
        v4 = (*(this + 123) + 8);
        *(this + 123) = v4;
        v11 = (*(this + 124) - v4) >> 3;
      }

      while (v11 > 2);
    }
  }

  if (v11 == 1)
  {
    v12 = 42;
    goto LABEL_16;
  }

  if (v11 == 2)
  {
    v12 = 85;
LABEL_16:
    *(this + 126) = v12;
  }

  std::mutex::unlock((this + 736));
  *(this + 664) = 0;
  v13 = (this + 656);
  if (*(this + 82))
  {
    std::thread::join(this + 82);
    if (*v13)
    {
      std::terminate();
    }
  }

  *v13 = 0;
  v14.__locale_ = 0;
  std::thread::~thread(&v14);
}

uint64_t apple3dgs::SortWorker::GetInstanceCount(apple3dgs::SortWorker *this)
{
  std::mutex::lock((this + 584));
  v2 = *([*(this + 81) contents] + 4);
  std::mutex::unlock((this + 584));
  return v2;
}

void apple3dgs::SortWorker::SetInstanceCount(apple3dgs::SortWorker *this, int a2)
{
  std::mutex::lock((this + 584));
  *([*(this + 81) contents] + 4) = a2;

  std::mutex::unlock((this + 584));
}

uint64_t apple3dgs::SortWorker::StartCPUSort(uint64_t this)
{
  if ((*(this + 664) & 1) == 0)
  {
    v1 = this;
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "Start CPU async sorting thread", 30);
    std::ios_base::getloc((v2 + *(*v2 - 24)));
    v3 = std::locale::use_facet(&v13, MEMORY[0x277D82680]);
    (v3->__vftable[2].~facet_0)(v3, 10);
    std::locale::~locale(&v13);
    std::ostream::put();
    std::ostream::flush();
    std::mutex::lock((v1 + 736));
    v4 = *(v1 + 984);
    v5 = *(v1 + 992);
    if (v5 == v4)
    {
      *(v1 + 1016) = 0;
      v11 = 0;
    }

    else
    {
      v6 = *(v1 + 1008);
      v7 = &v4[v6 / 0x55];
      v8 = *v7 + 48 * (v6 % 0x55);
      v9 = v4[(*(v1 + 1016) + v6) / 0x55] + 48 * ((*(v1 + 1016) + v6) % 0x55);
      if (v8 != v9)
      {
        do
        {
          std::__destroy_at[abi:ne200100]<apple3dgs::SortWorker::Job,0>(v8);
          v8 += 48;
          if (v8 - *v7 == 4080)
          {
            v10 = v7[1];
            ++v7;
            v8 = v10;
          }
        }

        while (v8 != v9);
        v5 = *(v1 + 992);
        v4 = *(v1 + 984);
      }

      *(v1 + 1016) = 0;
      v11 = v5 - v4;
      if (v11 >= 3)
      {
        do
        {
          operator delete(*v4);
          v4 = (*(v1 + 984) + 8);
          *(v1 + 984) = v4;
          v11 = (*(v1 + 992) - v4) >> 3;
        }

        while (v11 > 2);
      }
    }

    if (v11 == 1)
    {
      v12 = 42;
    }

    else
    {
      if (v11 != 2)
      {
        goto LABEL_17;
      }

      v12 = 85;
    }

    *(v1 + 1008) = v12;
LABEL_17:
    std::mutex::unlock((v1 + 736));
    *(v1 + 664) = 1;
    operator new();
  }

  return this;
}

void sub_2474560D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2474560FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, uint64_t *);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,apple3dgs::SortWorker::StartCPUSort(void)::$_0>>::~unique_ptr[abi:ne200100](va);
  std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void apple3dgs::SortWorker::AddJobCPU(apple3dgs::SortWorker *this, const apple3dgs::SortWorker::Job *a2)
{
  std::mutex::lock((this + 736));
  v4 = *(this + 984);
  v5 = *(this + 124);
  v6 = *(this + 123);
  v7 = 85 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(this + 127) + *(this + 126);
  if (v7 == v8)
  {
    std::deque<apple3dgs::SortWorker::Job>::__add_back_capacity(this + 122);
    v6 = *(this + 123);
    v8 = *(this + 127) + *(this + 126);
  }

  v9 = *(v6 + 8 * (v8 / 0x55));
  v10 = v8 % 0x55;
  v11 = *(a2 + 1);
  v12 = (v9 + 48 * v10);
  *v12 = *a2;
  v12[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = *(a2 + 3);
  v12[2] = *(a2 + 2);
  v12[3] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *(a2 + 5);
  v12[4] = *(a2 + 4);
  v12[5] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = *(this + 127) + 1;
  *(this + 127) = v15;
  if (v15 >= 0x64)
  {
    std::__destroy_at[abi:ne200100]<apple3dgs::SortWorker::Job,0>((*(*(this + 123) + 8 * (*(this + 126) / 0x55uLL)) + 48 * (*(this + 126) % 0x55uLL)));
    v16 = vaddq_s64(*(this + 63), xmmword_247479930);
    *(this + 63) = v16;
    if (v16.i64[0] >= 0xAAuLL)
    {
      operator delete(**(this + 123));
      *(this + 123) += 8;
      *(this + 126) -= 85;
    }
  }

  std::mutex::unlock((this + 736));
}

void apple3dgs::SortWorker::StartRunning(apple3dgs::SortWorker *this)
{
  v2 = objc_autoreleasePoolPush();
  if (*(this + 664) == 1)
  {
    v26 = 0u;
    v27 = 0u;
    do
    {
      std::mutex::lock((this + 736));
      v3 = *(this + 127);
      if (v3)
      {
        v4 = (*(*(this + 123) + 8 * ((v3 + *(this + 126) - 1) / 0x55uLL)) + 48 * ((v3 + *(this + 126) - 1) % 0x55uLL));
        __ns.__rep_ = *v4;
        v5 = v4[1];
        v29 = v5;
        if (v5)
        {
          atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
        }

        v30 = v4[2];
        v6 = v4[3];
        v31 = v6;
        if (v6)
        {
          atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
        }

        v32 = v4[4];
        v7 = v4[5];
        v33 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
        }

        std::mutex::unlock((this + 736));
        v8 = *(__ns.__rep_ + 144);
        _Q1 = *(__ns.__rep_ + 160);
        _Q2 = *(__ns.__rep_ + 176);
        v11 = *(__ns.__rep_ + 192);
        v12 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v8, COERCE_FLOAT(*(__ns.__rep_ + 16))), _Q1, *(__ns.__rep_ + 16), 1), _Q2, *(__ns.__rep_ + 16), 2), v11, *(__ns.__rep_ + 16), 3);
        v13 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v8, COERCE_FLOAT(*(__ns.__rep_ + 32))), _Q1, *(__ns.__rep_ + 32), 1), _Q2, *(__ns.__rep_ + 32), 2), v11, *(__ns.__rep_ + 32), 3);
        v14 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v8, COERCE_FLOAT(*(__ns.__rep_ + 48))), _Q1, *(__ns.__rep_ + 48), 1), _Q2, *(__ns.__rep_ + 48), 2), v11, *(__ns.__rep_ + 48), 3);
        _Q0 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v8, COERCE_FLOAT(*(__ns.__rep_ + 64))), _Q1, *(__ns.__rep_ + 64), 1), _Q2, *(__ns.__rep_ + 64), 2), v11, *(__ns.__rep_ + 64), 3);
        v16 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, COERCE_FLOAT(*v32[50].f32)), v13, v32[50], 1), v14, *v32[50].f32, 2), _Q0, *v32[50].f32, 3);
        v17 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, COERCE_FLOAT(*v32[52].f32)), v13, v32[52], 1), v14, *v32[52].f32, 2), _Q0, *v32[52].f32, 3);
        v18 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, COERCE_FLOAT(*v32[54].f32)), v13, v32[54], 1), v14, *v32[54].f32, 2), _Q0, *v32[54].f32, 3);
        _Q0.i32[0] = v16.i32[2];
        _Q2.i32[2] = DWORD2(v26);
        __asm { FMLA            S1, S0, V2.S[2] }

        _Q0.i32[0] = v18.i32[2];
        _Q2.i32[2] = DWORD2(v27);
        __asm { FMLA            S1, S0, V2.S[2] }

        if (fabsf(_Q1.f32[0] + -1.0) >= 0.01)
        {
          DWORD2(v26) = v16.i32[2];
          DWORD2(v27) = v18.i32[2];
          apple3dgs::SortWorker::Process(this, &__ns);
        }

        v23 = v33;
        if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v23->__on_zero_shared)(v23);
          std::__shared_weak_count::__release_weak(v23);
        }

        v24 = v31;
        if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v24->__on_zero_shared)(v24);
          std::__shared_weak_count::__release_weak(v24);
        }

        v25 = v29;
        if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v25->__on_zero_shared)(v25);
          std::__shared_weak_count::__release_weak(v25);
        }
      }

      else
      {
        std::mutex::unlock((this + 736));
        __ns.__rep_ = 10000000;
        std::this_thread::sleep_for (&__ns);
      }
    }

    while ((*(this + 664) & 1) != 0);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_2474565B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple3dgs::SortWorker::Job::~Job(va);
  _Unwind_Resume(a1);
}

void apple3dgs::SortWorker::Process(apple3dgs::SortWorker *this, int32x4_t **a2)
{
  v4 = objc_autoreleasePoolPush();
  v223 = 1953719636;
  v224 = 4;
  rep = std::chrono::steady_clock::now().__d_.__rep_;
  v5 = a2[4];
  v6 = v5[34].u32[0];
  v7 = *a2;
  v201 = (*a2)[9];
  v203 = (*a2)[10];
  v192 = (*a2)[11];
  v194 = (*a2)[12];
  v9 = v5[27];
  v8 = v5[28];
  v11 = v5[25];
  v10 = v5[26];
  v13 = (*a2)[3];
  v12 = (*a2)[4];
  v225 = 0;
  v14 = v5[35].u32[0];
  v15 = v7[1];
  v16 = v7[2];
  v226.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, v11.f32[0]), v16, *v11.f32, 1), v13, v11, 2), v12, v11, 3);
  v226.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, v10.f32[0]), v16, *v10.f32, 1), v13, v10, 2), v12, v10, 3);
  v226.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, v9.f32[0]), v16, *v9.f32, 1), v13, v9, 2), v12, v9, 3);
  v226.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, v8.f32[0]), v16, *v8.f32, 1), v13, v8, 2), v12, v8, 3);
  v199 = v226.columns[1];
  v200 = v226.columns[0];
  v197 = v226.columns[3];
  v198 = v226.columns[2];
  v227 = __invert_f4(v226);
  v185 = v227.columns[3];
  LODWORD(__u) = 2143289344;
  std::vector<float>::assign(this + 55, v6, &__u, *v227.columns[0].f32);
  LODWORD(__u) = 2143289344;
  std::vector<float>::assign(this + 58, v6, &__u, v17);
  *&__u = 0;
  _ZNSt3__16vectorINS_5arrayIDF16_Lm4EEENS_9allocatorIS2_EEE6assignEmRKS2_(this + 488, v6, &__u);
  if (*this == 1)
  {
    DWORD2(__u) = 0;
    *&__u = 0;
    std::vector<std::array<float,3ul>>::assign(this + 816, v6, &__u);
    *&__u = 0;
    _ZNSt3__16vectorINS_5arrayIDF16_Lm4EEENS_9allocatorIS2_EEE6assignEmRKS2_(this + 840, v6, &__u);
    __u = 0uLL;
    *&v208 = 0;
    std::vector<std::array<float,6ul>>::assign(this + 864, v6, &__u);
  }

  v182 = [v5[36].i64[0] contents];
  v191 = [v5[36].i64[1] contents];
  LODWORD(__u) = 0;
  v183 = (this + 560);
  std::vector<unsigned int>::assign((this + 560), v6, &__u);
  v18 = (this + 536);
  LODWORD(__u) = 0;
  std::vector<unsigned int>::assign((this + 536), v6, &__u);
  context = v4;
  if (v6)
  {
    v21 = 0;
    v22 = 0;
    v23 = (sqrtf(v14) + -1.0);
    v24 = v201;
    *v24.i32 = *v201.i32 / 1.2;
    v25 = v203;
    *&v25.i32[1] = *&v203.i32[1] / 1.2;
    v26 = vzip1q_s32(v24, v192);
    v27 = vzip1q_s32(v25, v194);
    v28 = vzip1q_s32(v26, v27);
    v29 = vzip2q_s32(v26, v27);
    v30 = vzip2q_s32(vzip2q_s32(v201, v192), vzip2q_s32(v203, v194));
    v31 = vaddq_f32(v30, v28);
    v32 = vsubq_f32(v30, v28);
    v33 = vaddq_f32(v30, v29);
    v34 = vsubq_f32(v30, v29);
    v35 = vmulq_f32(v31, v31);
    *&v36 = v35.f32[2] + vaddv_f32(*v35.f32);
    v37 = vrsqrte_f32(v36);
    v38 = vmul_f32(v37, vrsqrts_f32(v36, vmul_f32(v37, v37)));
    v39 = vmulq_n_f32(v31, vmul_f32(v38, vrsqrts_f32(v36, vmul_f32(v38, v38))).f32[0]);
    v39.i32[3] = v31.i32[3];
    v186 = v39;
    v40 = vmulq_f32(v32, v32);
    v39.f32[0] = v40.f32[2] + vaddv_f32(*v40.f32);
    *v40.f32 = vrsqrte_f32(v39.u32[0]);
    *v40.f32 = vmul_f32(*v40.f32, vrsqrts_f32(v39.u32[0], vmul_f32(*v40.f32, *v40.f32)));
    v41 = vmulq_n_f32(v32, vmul_f32(*v40.f32, vrsqrts_f32(v39.u32[0], vmul_f32(*v40.f32, *v40.f32))).f32[0]);
    v41.i32[3] = v32.i32[3];
    v190 = v41;
    v42 = vmulq_f32(v33, v33);
    v32.f32[0] = v42.f32[2] + vaddv_f32(*v42.f32);
    *v42.f32 = vrsqrte_f32(v32.u32[0]);
    *v42.f32 = vmul_f32(*v42.f32, vrsqrts_f32(v32.u32[0], vmul_f32(*v42.f32, *v42.f32)));
    v43 = vmulq_n_f32(v33, vmul_f32(*v42.f32, vrsqrts_f32(v32.u32[0], vmul_f32(*v42.f32, *v42.f32))).f32[0]);
    v43.i32[3] = v33.i32[3];
    v189 = v43;
    v44 = vmulq_f32(v34, v34);
    v32.f32[0] = v44.f32[2] + vaddv_f32(*v44.f32);
    *v44.f32 = vrsqrte_f32(v32.u32[0]);
    *v44.f32 = vmul_f32(*v44.f32, vrsqrts_f32(v32.u32[0], vmul_f32(*v44.f32, *v44.f32)));
    v45 = vmulq_n_f32(v34, vmul_f32(*v44.f32, vrsqrts_f32(v32.u32[0], vmul_f32(*v44.f32, *v44.f32))).f32[0]);
    v45.i32[3] = v34.i32[3];
    v188 = v45;
    v46 = vmulq_f32(v30, v30);
    v35.f32[0] = v46.f32[2] + vaddv_f32(*v46.f32);
    *v46.f32 = vrsqrte_f32(v35.u32[0]);
    *v46.f32 = vmul_f32(*v46.f32, vrsqrts_f32(v35.u32[0], vmul_f32(*v46.f32, *v46.f32)));
    v47 = vmulq_n_f32(v30, vmul_f32(*v46.f32, vrsqrts_f32(v35.u32[0], vmul_f32(*v46.f32, *v46.f32))).f32[0]);
    v47.i32[3] = v30.i32[3];
    v187 = v47;
    v48 = 3.4028e38;
    _Q0 = vdupq_n_s32(0x3E906EBBu);
    v193 = _Q0;
    v49 = -3.4028e38;
    while (1)
    {
      v52 = v5[9].i64[0];
      v53 = v5[8].i64[1] + v5[9].i64[1] * v21 + v5[10].i64[0];
      if (v52 > 29)
      {
        if (v52 == 30)
        {
          v20.i64[0] = *v53;
          v20.i32[2] = *(v53 + 8);
          goto LABEL_23;
        }

        if (v52 != 53)
        {
          goto LABEL_20;
        }

        _Q0.i16[0] = *v53;
        __asm { FCVT            S0, H0 }

        v20 = vdupq_lane_s32(*_Q0.f32, 0);
      }

      else
      {
        if (v52 == 26)
        {
          _Q0.i32[0] = *v53;
          v20 = vcvtq_f32_f16(*_Q0.f32);
          _H0 = *(v53 + 4);
          __asm { FCVT            S0, H0 }

          v20.i32[2] = _S0;
          goto LABEL_23;
        }

        if (v52 != 28)
        {
LABEL_20:
          v20.i8[0] = 0;
          goto LABEL_23;
        }

        v20 = vld1q_dup_f32(v53);
      }

LABEL_23:
      _Q0 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v200, v20.f32[0]), v199, *v20.f32, 1), v198, v20, 2);
      v60 = vaddq_f32(v197, _Q0);
      if (!a2[2]->i32[3])
      {
        goto LABEL_26;
      }

      _Q0.i32[0] = *(v191 + 4 * v21);
      v61 = vmulq_f32(v190, v60);
      v62 = vmulq_f32(v189, v60);
      *v62.i8 = vadd_f32(*v62.i8, *&vextq_s8(v62, v62, 8uLL));
      v63 = vmulq_f32(v188, v60);
      *v63.i8 = vadd_f32(*v63.i8, *&vextq_s8(v63, v63, 8uLL));
      v64 = vmulq_f32(v187, v60);
      *v64.i8 = vadd_f32(*v64.i8, *&vextq_s8(v64, v64, 8uLL));
      *v65.f32 = vzip1_s32(*v64.i8, *v63.i8);
      v65.i32[2] = v62.i32[0];
      *v61.i8 = vadd_f32(*v61.i8, *&vextq_s8(v61, v61, 8uLL));
      v65.i32[3] = v61.i32[0];
      *v66.f32 = vzip2_s32(*v64.i8, *v63.i8);
      v66.i32[2] = vdup_lane_s32(*v62.i8, 1).u32[0];
      v66.i32[3] = v61.i32[1];
      if ((vmaxv_u16(vmovn_s32(vcltzq_f32(vaddq_f32(vaddq_f32(v65, v66), vdupq_lane_s32(*_Q0.f32, 0))))) & 1) == 0)
      {
        v67 = vmulq_f32(v186, v60);
        _Q0.f32[0] = vaddv_f32(vadd_f32(*v67.i8, *&vextq_s8(v67, v67, 8uLL))) + _Q0.f32[0];
        if (_Q0.f32[0] >= 0.0)
        {
LABEL_26:
          v202 = v60;
          v204 = v20;
          if (v5[35].i32[0])
          {
            operator new();
          }

          v68 = (*a2)[28].u32[0];
          if (v68 >= v23)
          {
            v68 = v23;
          }

          v69.i64[0] = 0x3F0000003F000000;
          v69.i64[1] = 0x3F0000003F000000;
          _Q22 = vmlaq_f32(v69, v193, MEMORY[0]);
          if (v68)
          {
            v71 = vsubq_f32(v20, v185);
            v72 = vmulq_f32(v71, v71);
            *&v73 = v72.f32[2] + vaddv_f32(*v72.f32);
            *v72.f32 = vrsqrte_f32(v73);
            *v72.f32 = vmul_f32(*v72.f32, vrsqrts_f32(v73, vmul_f32(*v72.f32, *v72.f32)));
            v74 = vrsqrts_f32(v73, vmul_f32(*v72.f32, *v72.f32));
            *v72.f32 = vmul_f32(*v72.f32, v74);
            v75 = vmulq_n_f32(v71, v72.f32[0]);
            v74.f32[0] = vmuls_lane_f32(0.4886, *v75.f32, 1);
            v72.f32[0] = 0.4886 * v75.f32[0];
            _Q22 = vmlsq_lane_f32(vmlaq_n_f32(vmlsq_lane_f32(_Q22, MEMORY[0x10], v74, 0), MEMORY[0x20], vmuls_lane_f32(0.4886, v75, 2)), MEMORY[0x30], *v72.f32, 0);
            if (v68 != 1)
            {
              v76 = vmulq_f32(v75, v75).f32[0];
              v78 = v76 - (v75.f32[1] * v75.f32[1]);
              _Q22 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(_Q22, MEMORY[0x40], (v75.f32[0] * v75.f32[1]) * 1.0925), MEMORY[0x50], (v75.f32[1] * v75.f32[2]) * -1.0925), MEMORY[0x60], (-(v76 - ((v75.f32[2] * v75.f32[2]) * 2.0)) - (v75.f32[1] * v75.f32[1])) * 0.31539), MEMORY[0x70], (v75.f32[0] * v75.f32[2]) * -1.0925), MEMORY[0x80], v78 * 0.54627);
              if (v68 >= 3)
              {
                v77 = v75.f32[1] * v75.f32[1];
                _Q22 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(_Q22, MEMORY[0x90], (v75.f32[1] * -0.59004) * -(v77 - (v76 * 3.0))), MEMORY[0xA0], v75.f32[2] * ((v75.f32[0] * v75.f32[1]) * 2.8906)), MEMORY[0xB0], (v75.f32[1] * -0.45705) * ((((v75.f32[2] * v75.f32[2]) * 4.0) - v76) - v77)), MEMORY[0xC0], (v75.f32[2] * 0.37318) * (((v76 * -3.0) + ((v75.f32[2] * v75.f32[2]) * 2.0)) + (v77 * -3.0))), MEMORY[0xD0], (v75.f32[0] * -0.45705) * ((((v75.f32[2] * v75.f32[2]) * 4.0) - v76) - v77)), MEMORY[0xE0], (v75.f32[2] * 1.4453) * v78), MEMORY[0xF0], (v75.f32[0] * -0.59004) * (v76 + (v77 * -3.0)));
              }
            }
          }

          v79 = v5[15].i64[0];
          v80 = v5[14].i64[0];
          v81 = v5[13].i64[1] + v5[14].i64[1] * v21;
          if (v80 == 28)
          {
            _S0 = *(v81 + v79);
            __asm { FCVT            H0, S0 }

            v82 = *&_S0;
LABEL_38:
            _H0 = v82;
            v85 = v5[35].i32[2];
            if (v85 == 2)
            {
              goto LABEL_42;
            }
          }

          else
          {
            if (v80 == 53)
            {
              v82 = *(v81 + v79);
              goto LABEL_38;
            }

            LOWORD(_H0) = 0;
            v85 = v5[35].i32[2];
            if (v85 == 2)
            {
LABEL_42:
              _H0 = -_H0;
              __asm { FCVT            S0, H0; float }

              v196 = _Q22;
              _S0 = expf(_S0);
              _Q22 = v196;
              v60 = v202;
              __asm { FCVT            H0, S0 }

              _H0 = COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) / (*&_S0 + COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)));
              goto LABEL_43;
            }
          }

          if (v85 == 1)
          {
            __asm { FCVT            S0, H0; float }

            v195 = _Q22;
            _S0 = expf(_S0);
            _Q22 = v195;
            v60 = v202;
            __asm { FCVT            H0, S0 }
          }

LABEL_43:
          __asm { FCVT            H1, S22 }

          _S2 = _Q22.i32[1];
          __asm { FCVT            H2, S2 }

          _S3 = _Q22.i32[2];
          __asm { FCVT            H3, S3 }

          v94 = *(this + 61) + 8 * v21;
          *v94 = _H1;
          *(v94 + 2) = _S2;
          *(v94 + 4) = _S3;
          *(v94 + 6) = _H0;
          v95 = a2[2]->i32[0];
          if (v95)
          {
            if (v95 == 1)
            {
              v96 = vmulq_f32(v60, v60);
              v50 = sqrtf(v96.f32[2] + vaddv_f32(*v96.f32));
LABEL_6:
              v51 = 1.0 / v50;
              *(*(this + 55) + 4 * v21) = v51;
            }

            else
            {
              v51 = *(*(this + 55) + 4 * v21);
            }

            (*v18)->i32[v22] = v21;
            if (v49 < v51)
            {
              v49 = v51;
            }

            if (v51 < v48)
            {
              v48 = v51;
            }

            v22 = (v22 + 1);
            operator delete(0);
            v20 = v204;
            goto LABEL_12;
          }

          v50 = fabsf(v60.f32[2]);
          goto LABEL_6;
        }
      }

LABEL_12:
      if (++v21 == v6)
      {
        goto LABEL_48;
      }
    }
  }

  v22 = 0;
LABEL_48:
  v97 = a2[2]->i32[2];
  if (v97)
  {
    if (v97 == 1)
    {
      LODWORD(__u) = 0xFFFF;
      std::vector<unsigned int>::assign((this + 512), v6, &__u);
      operator new();
    }
  }

  else
  {
    v98 = *(this + 67);
    *&__u = a2;
    *(&__u + 1) = this;
    v99 = 126 - 2 * __clz(v22);
    if (v22)
    {
      v100 = v99;
    }

    else
    {
      v100 = 0;
    }

    v101 = 1;
    std::__introsort<std::_ClassicAlgPolicy,apple3dgs::SortWorker::Process(apple3dgs::SortWorker::Job const&)::$_0 &,unsigned int *,false>(v98, (v98 + 4 * v22), &__u, v100, 1);
    if (!v22)
    {
LABEL_66:
      if ((*(this + 1) & 1) == 0)
      {
        goto LABEL_72;
      }

      goto LABEL_69;
    }

    v102 = 0;
    v103 = *v18;
    v104 = *v183;
    if (v22 < 8)
    {
      goto LABEL_60;
    }

    if ((v104 - v103) < 0x20)
    {
      goto LABEL_60;
    }

    v102 = v22 & 0xFFFFFFF8;
    v105 = v103 + 1;
    v106 = v104 + 1;
    v107 = v102;
    do
    {
      _Q0 = v105[-1];
      v108 = *v105;
      v106[-1] = _Q0;
      *v106 = v108;
      v105 += 2;
      v106 += 2;
      v107 -= 8;
    }

    while (v107);
    if (v102 != v22)
    {
LABEL_60:
      v109 = &v103->i32[v102];
      v110 = &v104->i32[v102];
      v111 = v22 - v102;
      do
      {
        v112 = *v109++;
        *v110++ = v112;
        --v111;
      }

      while (v111);
    }
  }

  if (v22)
  {
    v113 = *v183;
    v114 = *(this + 55);
    v115 = v22;
    v116 = *(this + 58);
    do
    {
      v117 = v113->i32[0];
      v113 = (v113 + 4);
      _Q0.i32[0] = *(v114 + 4 * v117);
      *v116++ = _Q0.i32[0];
      --v115;
    }

    while (v115);
    v101 = 0;
    goto LABEL_66;
  }

  v101 = 1;
  if ((*(this + 1) & 1) == 0)
  {
    goto LABEL_72;
  }

LABEL_69:
  v221 = 7;
  strcpy(v220, "ArgSort");
  apple3dgs::MeasureTime::P(&rep, v220, 1);
  if (v221 < 0)
  {
    operator delete(v220[0]);
  }

  v118 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "pnum_visible ", 13);
  v119 = MEMORY[0x24C1A1DA0](v118, v22);
  std::ios_base::getloc((v119 + *(*v119 - 24)));
  v120 = std::locale::use_facet(&__u, MEMORY[0x277D82680]);
  (v120->__vftable[2].~facet_0)(v120, 10);
  std::locale::~locale(&__u);
  std::ostream::put();
  std::ostream::flush();
LABEL_72:
  v121 = (this + 328);
  if (*this == 1)
  {
    if (*(this + 1) == 1)
    {
      v219 = 11;
      strcpy(v218, "PreFetching");
      apple3dgs::MeasureTime::P(&rep, v218, 1);
      if (v219 < 0)
      {
        operator delete(v218[0]);
      }
    }

    if (v101)
    {
LABEL_77:
      std::mutex::lock((this + 672));
      memcpy([*(this + 116) contents], *(this + 105), objc_msgSend(*(this + 116), "length"));
      v122 = *(this + 111);
      v123 = [v122 contents];
      v124 = *(this + 102);
      v125 = *(this + 111);
      memcpy(v123, v124, [v125 length]);

      memcpy([*(this + 118) contents], *(this + 108), objc_msgSend(*(this + 118), "length"));
      v126 = [*(this + 101) contents];
      if ((v101 & 1) == 0)
      {
        if (v22 > 7)
        {
          v127 = v22 & 0xFFFFFFF8;
          v151 = xmmword_247478B60;
          v152 = (v126 + 16);
          v153.i64[0] = 0x400000004;
          v153.i64[1] = 0x400000004;
          v154.i64[0] = 0x800000008;
          v154.i64[1] = 0x800000008;
          v155 = v127;
          do
          {
            v152[-1] = v151;
            *v152 = vaddq_s32(v151, v153);
            v151 = vaddq_s32(v151, v154);
            v152 += 2;
            v155 -= 8;
          }

          while (v155);
          if (v127 == v22)
          {
            goto LABEL_112;
          }
        }

        else
        {
          v127 = 0;
        }

        do
        {
          *(v126 + 4 * v127) = v127;
          ++v127;
        }

        while (v22 != v127);
      }

LABEL_112:
      v157 = *a2;
      v156 = a2[1];
      if (v156)
      {
        atomic_fetch_add_explicit(&v156->i64[1], 1uLL, memory_order_relaxed);
      }

      v158 = a2[3];
      *&v208 = a2[2];
      *(&v208 + 1) = v158;
      v128 = (this + 672);
      if (v158)
      {
        atomic_fetch_add_explicit(&v158->i64[1], 1uLL, memory_order_relaxed);
      }

      v159 = a2[5];
      *&v209 = a2[4];
      *(&v209 + 1) = v159;
      if (v159)
      {
        atomic_fetch_add_explicit(&v159->i64[1], 1uLL, memory_order_relaxed);
      }

      v210 = *(this + 118);
      v211 = *(this + 111);
      v160 = *(this + 57);
      v212 = *(this + 56);
      v213 = v160;
      v214 = *(this + 116);
      v215 = *(this + 117);
      v216 = *(this + 101);
      v217 = *(this + 81);
      __u = 0uLL;
      v161 = *(this + 40);
      *(this + 39) = v157;
      *(this + 40) = v156;
      if (v161 && !atomic_fetch_add(&v161->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v161->__on_zero_shared)(v161);
        std::__shared_weak_count::__release_weak(v161);
      }

      v162 = v208;
      v208 = 0uLL;
      v163 = *(this + 42);
      *v121 = v162;
      if (v163 && !atomic_fetch_add(&v163->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v163->__on_zero_shared)(v163);
        std::__shared_weak_count::__release_weak(v163);
      }

      v164 = v209;
      v209 = 0uLL;
      v165 = *(this + 44);
      *(this + 344) = v164;
      if (v165 && !atomic_fetch_add(&v165->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v165->__on_zero_shared)(v165);
        std::__shared_weak_count::__release_weak(v165);
      }

      goto LABEL_127;
    }

    v139 = 0;
    v140 = 0;
    v141 = 0;
    while (1)
    {
      v146 = *(*(this + 70) + 4 * v141);
      *(*(this + 105) + 8 * v141) = *(*(this + 61) + 8 * v146);
      v147 = v5[9].i64[0];
      v148 = v5[8].i64[1] + v5[9].i64[1] * v146 + v5[10].i64[0];
      if (v147 > 29)
      {
        if (v147 == 30)
        {
          _Q0.i64[0] = *v148;
          _Q0.i32[2] = *(v148 + 8);
          goto LABEL_98;
        }

        if (v147 == 53)
        {
          _Q0.i16[0] = *v148;
          __asm { FCVT            S0, H0 }

          _Q0 = vdupq_lane_s32(*_Q0.f32, 0);
          goto LABEL_98;
        }
      }

      else
      {
        if (v147 == 26)
        {
          _Q0.i32[0] = *v148;
          _Q0.i64[0] = vcvtq_f32_f16(*_Q0.f32).u64[0];
          _H1 = *(v148 + 4);
          __asm { FCVT            S1, H1 }

          _Q0.i32[2] = _S1;
          goto LABEL_98;
        }

        if (v147 == 28)
        {
          _Q0 = vld1q_dup_f32(v148);
          goto LABEL_98;
        }
      }

      _Q0.i8[0] = 0;
LABEL_98:
      v142 = *(this + 102) + v140;
      *(v142 + 8) = _Q0.i32[2];
      *v142 = _Q0.i64[0];
      v143 = v182 + 24 * v146;
      v144 = *(this + 108) + v139;
      v145 = *v143;
      *(v144 + 16) = *(v143 + 16);
      *v144 = v145;
      ++v141;
      v140 += 12;
      v139 += 24;
      if (v22 == v141)
      {
        goto LABEL_77;
      }
    }
  }

  v128 = (this + 672);
  std::mutex::lock((this + 672));
  memcpy([*(this + 120) contents], *(this + 61), objc_msgSend(*(this + 120), "length"));
  memcpy([*(this + 101) contents], *(this + 70), objc_msgSend(*(this + 101), "length"));
  v130 = *a2;
  v129 = a2[1];
  if (v129)
  {
    atomic_fetch_add_explicit(&v129->i64[1], 1uLL, memory_order_relaxed);
  }

  v131 = a2[3];
  *&v208 = a2[2];
  *(&v208 + 1) = v131;
  if (v131)
  {
    atomic_fetch_add_explicit(&v131->i64[1], 1uLL, memory_order_relaxed);
  }

  v132 = a2[5];
  *&v209 = a2[4];
  *(&v209 + 1) = v132;
  if (v132)
  {
    atomic_fetch_add_explicit(&v132->i64[1], 1uLL, memory_order_relaxed);
  }

  v210 = v5[36].i64[0];
  v211 = v5[8].i64[0];
  v133 = *(&v5[9] + 8);
  v212 = *(&v5[8] + 8);
  v213 = v133;
  v214 = *(this + 120);
  v215 = *(this + 121);
  v216 = *(this + 101);
  v217 = *(this + 81);
  __u = 0uLL;
  v134 = *(this + 40);
  *(this + 39) = v130;
  *(this + 40) = v129;
  if (v134 && !atomic_fetch_add(&v134->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v134->__on_zero_shared)(v134);
    std::__shared_weak_count::__release_weak(v134);
  }

  v135 = v208;
  v208 = 0uLL;
  v136 = *(this + 42);
  *v121 = v135;
  if (v136 && !atomic_fetch_add(&v136->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v136->__on_zero_shared)(v136);
    std::__shared_weak_count::__release_weak(v136);
  }

  v137 = v209;
  v209 = 0uLL;
  v138 = *(this + 44);
  *(this + 344) = v137;
  if (v138 && !atomic_fetch_add(&v138->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v138->__on_zero_shared)(v138);
    std::__shared_weak_count::__release_weak(v138);
  }

LABEL_127:
  v166 = v210;
  v210 = 0;
  v167 = *(this + 45);
  *(this + 45) = v166;

  v168 = v211;
  v211 = 0;
  v169 = *(this + 46);
  *(this + 46) = v168;

  v170 = v213;
  *(this + 376) = v212;
  *(this + 392) = v170;
  v171 = v214;
  v214 = 0;
  v172 = *(this + 51);
  *(this + 51) = v171;

  v173 = v215;
  v215 = 0;
  v174 = *(this + 52);
  *(this + 52) = v173;

  v175 = v216;
  v216 = 0;
  v176 = *(this + 53);
  *(this + 53) = v175;

  v177 = v217;
  v217 = 0;
  v178 = *(this + 54);
  *(this + 54) = v177;

  apple3dgs::SortWorker::RenderingBuffers::~RenderingBuffers(&__u);
  std::mutex::unlock(v128);
  std::mutex::lock((this + 584));
  v179 = [*(this + 81) contents];
  v180 = (*a2)[27].i32[0] - 1;
  if (v180 >= 3)
  {
    v181 = 3;
  }

  else
  {
    v181 = 2 * v180 + 4;
  }

  *v179 = v181;
  *(v179 + 4) = v22;
  *(v179 + 8) = 0;
  std::mutex::unlock((this + 584));
  if (*(this + 1) == 1 && (v206 = 10, strcpy(__p, "UpdateVRAM"), apple3dgs::MeasureTime::P(&rep, __p, 1), v206 < 0))
  {
    operator delete(__p[0]);
    if (v225 != 1)
    {
      goto LABEL_136;
    }
  }

  else if (v225 != 1)
  {
    goto LABEL_136;
  }

  BYTE7(v208) = 0;
  LOBYTE(__u) = 0;
  apple3dgs::MeasureTime::P(&rep, &__u, 1);
  if (SBYTE7(v208) < 0)
  {
    operator delete(__u);
  }

LABEL_136:
  if (v224 < 0)
  {
    operator delete(v223);
  }

  objc_autoreleasePoolPop(context);
}