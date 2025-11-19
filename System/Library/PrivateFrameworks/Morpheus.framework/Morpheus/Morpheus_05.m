void sub_25A2B4A48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, void *a50, uint64_t a51)
{
  if (a48 < 0)
  {
    operator delete(__p);
    if ((v52 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a50);
      std::__tree<int>::destroy(v53 - 184, *(v53 - 176));
      v55 = *(v53 - 160);
      if (v55)
      {
        *(v53 - 152) = v55;
        operator delete(v55);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v52)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v51);
  goto LABEL_6;
}

void mlx::core::fft::fft_impl(uint64_t **this@<X0>, uint64_t *a2@<X1>, int a3@<W2>, char a4@<W3>, mlx::core *a5@<X4>, uint64_t a6@<X5>, uint64_t **a7@<X8>)
{
  __src = 0;
  v32 = 0;
  v33 = 0;
  v9 = *a2;
  v10 = a2[1];
  if (*a2 == v10)
  {
    v13 = 0;
  }

  else
  {
    do
    {
      v11 = mlx::core::array::shape(this, *v9);
      v12 = v32;
      if (v32 >= v33)
      {
        v14 = __src;
        v15 = v32 - __src;
        v16 = (v32 - __src) >> 2;
        v17 = v16 + 1;
        if ((v16 + 1) >> 62)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v18 = v33 - __src;
        if ((v33 - __src) >> 1 > v17)
        {
          v17 = v18 >> 1;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v19 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v19);
        }

        v20 = (4 * v16);
        v21 = &v20[-((v32 - __src) >> 2)];
        *v20 = v11;
        v13 = (v20 + 1);
        memcpy(v21, v14, v15);
        v22 = __src;
        __src = v21;
        v32 = v13;
        v33 = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v32 = v11;
        v13 = (v12 + 4);
      }

      v32 = v13;
      ++v9;
    }

    while (v9 != v10);
  }

  if (a3 && (a4 & 1) != 0 && (*this)[1] != **this)
  {
    *(v13 - 4) = 2 * *(v13 - 4) - 2;
  }

  __p = 0;
  v29 = 0;
  v30 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, __src, v13, (v13 - __src) >> 2);
  mlx::core::fft::fft_impl(this, &__p, a2, a3, a4, a5, a6, a7);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v32 = __src;
    operator delete(__src);
  }
}

void sub_25A2B4DD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::fft::fft_impl(uint64_t **a1@<X0>, int a2@<W1>, char a3@<W2>, mlx::core *a4@<X3>, uint64_t a5@<X4>, uint64_t **a6@<X8>)
{
  std::vector<int>::vector[abi:ne200100](&__p, ((*a1)[1] - **a1) >> 2);
  if (__p != v20)
  {
    v12 = 0;
    v13 = (v20 - __p - 4) >> 2;
    v14 = vdupq_n_s64(v13);
    v15 = (v13 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v16 = __p + 8;
    do
    {
      v17 = vdupq_n_s64(v12);
      v18 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_25A99B0D0)));
      if (vuzp1_s16(v18, *v14.i8).u8[0])
      {
        *(v16 - 2) = v12;
      }

      if (vuzp1_s16(v18, *&v14).i8[2])
      {
        *(v16 - 1) = v12 + 1;
      }

      if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_25A99B0C0)))).i32[1])
      {
        *v16 = v12 + 2;
        v16[1] = v12 + 3;
      }

      v12 += 4;
      v16 += 4;
    }

    while (v15 != v12);
  }

  mlx::core::fft::fft_impl(a1, &__p, a2, a3, a4, a5, a6);
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }
}

void sub_25A2B4F5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::fft::fftn(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, mlx::core *a4@<X3>, uint64_t a5@<X4>, uint64_t **a6@<X8>)
{
  __p = 0;
  v12 = 0;
  v13 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *a2, a2[1], (a2[1] - *a2) >> 2);
  mlx::core::fft::fft_impl(a1, &__p, a3, 0, 0, a4, a5, a6);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }
}

void sub_25A2B5014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::fft::ifftn(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, mlx::core *a4@<X3>, uint64_t a5@<X4>, uint64_t **a6@<X8>)
{
  __p = 0;
  v12 = 0;
  v13 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *a2, a2[1], (a2[1] - *a2) >> 2);
  mlx::core::fft::fft_impl(a1, &__p, a3, 0, 1, a4, a5, a6);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }
}

void sub_25A2B50F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::fft::rfftn(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, mlx::core *a4@<X3>, uint64_t a5@<X4>, uint64_t **a6@<X8>)
{
  __p = 0;
  v12 = 0;
  v13 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *a2, a2[1], (a2[1] - *a2) >> 2);
  mlx::core::fft::fft_impl(a1, &__p, a3, 1, 0, a4, a5, a6);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }
}

void sub_25A2B51D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::fft::irfftn(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, mlx::core *a4@<X3>, uint64_t a5@<X4>, uint64_t **a6@<X8>)
{
  __p = 0;
  v12 = 0;
  v13 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *a2, a2[1], (a2[1] - *a2) >> 2);
  mlx::core::fft::fft_impl(a1, &__p, a3, 1, 1, a4, a5, a6);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }
}

void sub_25A2B52B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::set<int>::set[abi:ne200100]<std::__wrap_iter<unsigned long *>>(void *result, uint64_t a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  if (a2 != a3)
  {
    std::__tree<int>::__emplace_hint_unique_impl<unsigned long &>();
  }

  return result;
}

uint64_t std::__shared_ptr_emplace<mlx::core::FFT>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream,std::vector<unsigned long> &,BOOL &,BOOL &,std::allocator<mlx::core::FFT>,0>(uint64_t a1, uint64_t *a2, uint64_t *a3, char *a4, char *a5)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_286BE79D8;
  v6 = *a2;
  v7 = *(a2 + 2);
  v8 = *a4;
  v9 = *a5;
  *(a1 + 48) = 0;
  v10 = a1 + 48;
  *(v10 - 8) = v7;
  *(v10 - 24) = &unk_286BFF1E8;
  *(v10 - 16) = v6;
  *(v10 + 8) = 0u;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v10, *a3, a3[1], (a3[1] - *a3) >> 3);
  *(a1 + 72) = v8;
  *(a1 + 73) = v9;
  return a1;
}

char *mlx::core::distributed::ring::init@<X0>(mlx::core::distributed::ring *this@<X0>, void *a2@<X8>)
{
  v2 = this;
  v79[20] = *MEMORY[0x277D85DE8];
  v3 = getenv("MLX_HOSTFILE");
  v4 = getenv("MLX_RANK");
  result = getenv("MLX_RING_VERBOSE");
  if (v3 && v4)
  {
    v58 = 0;
    v59 = 0;
    v57 = 0;
    std::ifstream::basic_ifstream(&v77);
    v76[3] = 0;
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::parse<std::ifstream &>(&v77, v76, 1, 0, v65);
    std::__function::__value_func<BOOL ()(int,nlohmann::json_abi_v3_11_3::detail::parse_event_t,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> &)>::~__value_func[abi:ne200100](v76);
    v64[0] = v65;
    v64[1] = 0;
    v64[2] = 0;
    v64[3] = 0x8000000000000000;
    nlohmann::json_abi_v3_11_3::detail::iter_impl<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::set_begin(v64);
    v63[0] = v65;
    v63[1] = 0;
    v63[2] = 0;
    v63[3] = 0x8000000000000000;
    nlohmann::json_abi_v3_11_3::detail::iter_impl<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::set_end(v63);
    while (1)
    {
      if (nlohmann::json_abi_v3_11_3::detail::iter_impl<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::operator==<nlohmann::json_abi_v3_11_3::detail::iter_impl<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,(decltype(nullptr))0>(v64, v63))
      {
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v65);
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(v65);
        v77 = *MEMORY[0x277D82808];
        *(&v77 + *(v77 - 24)) = *(MEMORY[0x277D82808] + 24);
        MEMORY[0x25F8512A0](&v78);
        std::istream::~istream();
        MEMORY[0x25F8516C0](v79);
        atoi(v4);
        operator new();
      }

      v6 = nlohmann::json_abi_v3_11_3::detail::iter_impl<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::operator*(v64);
      v62[1] = 0;
      v62[2] = 0;
      v62[0] = v6;
      v62[3] = 0x8000000000000000;
      nlohmann::json_abi_v3_11_3::detail::iter_impl<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::set_begin(v62);
      v61[1] = 0;
      v61[2] = 0;
      v61[0] = v6;
      v61[3] = 0x8000000000000000;
      nlohmann::json_abi_v3_11_3::detail::iter_impl<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::set_end(v61);
      v7 = 0;
      v8 = 0;
      while (!nlohmann::json_abi_v3_11_3::detail::iter_impl<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::operator==<nlohmann::json_abi_v3_11_3::detail::iter_impl<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,(decltype(nullptr))0>(v62, v61))
      {
        v9 = nlohmann::json_abi_v3_11_3::detail::iter_impl<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::operator*(v62);
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::get_impl<std::string,0>(v9, &v60);
        if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v10 = &v60;
        }

        else
        {
          v10 = v60.__r_.__value_.__r.__words[0];
        }

        if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = SHIBYTE(v60.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v60.__r_.__value_.__l.__size_;
        }

        if (size < 1)
        {
          goto LABEL_66;
        }

        v12 = v10 + size;
        v13 = v10;
        while (1)
        {
          v14 = memchr(v13, 58, size);
          if (!v14)
          {
            goto LABEL_66;
          }

          v15 = v14;
          if (*v14 == 58)
          {
            break;
          }

          v13 = (v14 + 1);
          size = v12 - (v15 + 1);
          if (size < 1)
          {
            goto LABEL_66;
          }
        }

        if (v14 == v12 || (v16 = v14 - v10, v14 - v10 == -1))
        {
LABEL_66:
          std::ostringstream::basic_ostringstream[abi:ne200100](&v71);
          v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v71, "Can't parse address ", 20);
          if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v36 = &v60;
          }

          else
          {
            v36 = v60.__r_.__value_.__r.__words[0];
          }

          if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v37 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v37 = v60.__r_.__value_.__l.__size_;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, v36, v37);
          exception = __cxa_allocate_exception(0x10uLL);
          std::ostringstream::str[abi:ne200100](&v71, &v73);
          MEMORY[0x25F851100](exception, &v73);
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(v68, v10, v14, v14 - v10);
        v17 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
        if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = &v60;
        }

        else
        {
          v18 = v60.__r_.__value_.__r.__words[0];
        }

        if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v17 = v60.__r_.__value_.__l.__size_;
        }

        std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(__p, &v18->__r_.__value_.__s.__data_[v16 + 1], v18 + v17, v17 - (v16 + 1));
        v72 = 0;
        memset(&v73, 0, sizeof(v73));
        v73.ai_socktype = 1;
        if ((v69 & 0x80u) == 0)
        {
          v19 = v68;
        }

        else
        {
          v19 = v68[0];
        }

        if ((v67 & 0x80u) == 0)
        {
          v20 = __p;
        }

        else
        {
          v20 = __p[0];
        }

        if (getaddrinfo(v19, v20, &v73, &v72))
        {
          std::ostringstream::basic_ostringstream[abi:ne200100](&v71);
          v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v71, "Can't parse address ", 20);
          if ((v69 & 0x80u) == 0)
          {
            v40 = v68;
          }

          else
          {
            v40 = v68[0];
          }

          if ((v69 & 0x80u) == 0)
          {
            v41 = v69;
          }

          else
          {
            v41 = v68[1];
          }

          v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, v40, v41);
          v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, ":", 1);
          if ((v67 & 0x80u) == 0)
          {
            v44 = __p;
          }

          else
          {
            v44 = __p[0];
          }

          if ((v67 & 0x80u) == 0)
          {
            v45 = v67;
          }

          else
          {
            v45 = __p[1];
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, v44, v45);
          v46 = __cxa_allocate_exception(0x10uLL);
          std::ostringstream::str[abi:ne200100](&v71, v70);
          MEMORY[0x25F851100](v46, v70);
          __cxa_throw(v46, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v21 = v72;
        ai_addrlen = v72->ai_addrlen;
        memcpy(__dst, v72->ai_addr, ai_addrlen);
        LODWORD(v75) = ai_addrlen;
        freeaddrinfo(v21);
        if (v67 < 0)
        {
          operator delete(__p[0]);
        }

        if (v69 < 0)
        {
          operator delete(v68[0]);
        }

        v23 = v8 - v7;
        v24 = 0xF0F0F0F0F0F0F0F1 * ((v8 - v7) >> 3) + 1;
        if (v24 > 0x1E1E1E1E1E1E1E1)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        if (0xE1E1E1E1E1E1E1E2 * (-v7 >> 3) > v24)
        {
          v24 = 0xE1E1E1E1E1E1E1E2 * (-v7 >> 3);
        }

        if (0xF0F0F0F0F0F0F0F1 * (-v7 >> 3) >= 0xF0F0F0F0F0F0F0)
        {
          v25 = 0x1E1E1E1E1E1E1E1;
        }

        else
        {
          v25 = v24;
        }

        if (v25)
        {
        }

        v26 = 8 * ((v8 - v7) >> 3);
        *(v26 + 80) = __dst[5];
        *(v26 + 96) = __dst[6];
        *(v26 + 112) = __dst[7];
        *(v26 + 128) = v75;
        *(v26 + 16) = __dst[1];
        *(v26 + 32) = __dst[2];
        *(v26 + 48) = __dst[3];
        *(v26 + 64) = __dst[4];
        *v26 = __dst[0];
        v8 = v26 + 136;
        v27 = (v26 + 136 * (v23 / -136));
        memcpy(v27, v7, v23);
        if (v7)
        {
          operator delete(v7);
        }

        v7 = v27;
        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v60.__r_.__value_.__l.__data_);
        }

        nlohmann::json_abi_v3_11_3::detail::iter_impl<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::operator++(v62);
      }

      if (v58 >= v59)
      {
        v29 = v57;
        v30 = v58 - v57;
        v31 = 0xAAAAAAAAAAAAAAABLL * ((v58 - v57) >> 3) + 1;
        if (v31 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v59 - v57) >> 3) > v31)
        {
          v31 = 0x5555555555555556 * ((v59 - v57) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v59 - v57) >> 3) >= 0x555555555555555)
        {
          v32 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v32 = v31;
        }

        if (v32)
        {
        }

        v33 = (8 * ((v58 - v57) >> 3));
        *v33 = v7;
        v33[1] = v8;
        v33[2] = 0;
        v28 = (v33 + 3);
        memcpy(v33 - v30, v57, v30);
        v57 = (8 * ((v58 - v57) >> 3) - v30);
        v59 = 0;
        if (v29)
        {
          operator delete(v29);
        }
      }

      else
      {
        *v58 = v7;
        *(v58 + 1) = v8;
        v28 = v58 + 24;
        *(v58 + 2) = 0;
      }

      v58 = v28;
      nlohmann::json_abi_v3_11_3::detail::iter_impl<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::operator++(v64);
    }
  }

  if (v2)
  {
    v47 = v4;
    std::ostringstream::basic_ostringstream[abi:ne200100](&v77);
    v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v77, "[ring] You need to provide via environment variables both a rank (MLX_RANK) ", 76);
    v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, "and a hostfile (MLX_HOSTFILE) but provided MLX_RANK=", 53);
    if (!v47)
    {
      v47 = "";
    }

    v50 = strlen(v47);
    v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, v47, v50);
    v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, " and MLX_HOSTFILE=", 20);
    if (!v3)
    {
      v3 = "";
    }

    v53 = strlen(v3);
    v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, v3, v53);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, "", 1);
    v55 = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](&v77, &v71);
    MEMORY[0x25F851100](v55, &v71);
    __cxa_throw(v55, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *a2 = 0;
  a2[1] = 0;
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A2B65F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a52 < 0)
  {
    operator delete(__p);
    if ((v54 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&STACK[0x320]);
      v59 = *(v53 + 35);
      if (v59)
      {
        v52[14].__vftable = v59;
        operator delete(v59);
      }

      v60 = *(v53 + 32);
      if (v60)
      {
        v52[13].__vftable = v60;
        operator delete(v60);
      }

      v61 = *v55;
      if (*v55)
      {
        v52[12].__vftable = v61;
        operator delete(v61);
      }

      ThreadPool::~ThreadPool(v53);
      STACK[0x320] = &STACK[0x278];
      std::__shared_weak_count::~__shared_weak_count(v52);
      operator delete(v62);
      STACK[0x320] = &a14;
      _Unwind_Resume(a1);
    }
  }

  else if (!v54)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v56);
  goto LABEL_6;
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1)
{
  a1[59] = 0;
  v2 = MEMORY[0x277D82858] + 64;
  a1[53] = MEMORY[0x277D82858] + 64;
  v3 = *(MEMORY[0x277D82808] + 16);
  v4 = *(MEMORY[0x277D82808] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  a1[1] = 0;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 2);
  v6 = MEMORY[0x277D82858] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[53] = v2;
  MEMORY[0x25F851290](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_25A2B6BE4(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x25F8516C0](v1);
  _Unwind_Resume(a1);
}

void nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::parse<std::ifstream &>(void *a1@<X0>, uint64_t a2@<X1>, __int8 a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v14[19] = *MEMORY[0x277D85DE8];
  *a5 = 0;
  *(a5 + 8) = 0;
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(a5);
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(a5);
  v11[0] = a1;
  v11[1] = *(a1 + *(*a1 - 24) + 40);
  std::__function::__value_func<BOOL ()(int,nlohmann::json_abi_v3_11_3::detail::parse_event_t,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> &)>::__value_func[abi:ne200100](v12, a2);
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::parser<nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>(v11, v12, a3, a4, v13);
  nlohmann::json_abi_v3_11_3::detail::parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::parse(v13, 1, a5);
  nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::~lexer(v14);
  std::__function::__value_func<BOOL ()(int,nlohmann::json_abi_v3_11_3::detail::parse_event_t,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> &)>::~__value_func[abi:ne200100](v13);
  std::__function::__value_func<BOOL ()(int,nlohmann::json_abi_v3_11_3::detail::parse_event_t,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> &)>::~__value_func[abi:ne200100](v12);
  nlohmann::json_abi_v3_11_3::detail::input_stream_adapter::~input_stream_adapter(v11);
  v10 = *MEMORY[0x277D85DE8];
}

void sub_25A2B6D2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::~lexer((v3 + 40));
  std::__function::__value_func<BOOL ()(int,nlohmann::json_abi_v3_11_3::detail::parse_event_t,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> &)>::~__value_func[abi:ne200100](va2);
  std::__function::__value_func<BOOL ()(int,nlohmann::json_abi_v3_11_3::detail::parse_event_t,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> &)>::~__value_func[abi:ne200100](va1);
  nlohmann::json_abi_v3_11_3::detail::input_stream_adapter::~input_stream_adapter(va);
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v2);
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(v2);
  _Unwind_Resume(a1);
}

unsigned __int8 *nlohmann::json_abi_v3_11_3::detail::iter_impl<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::operator*(unsigned __int8 **a1)
{
  result = *a1;
  if (!result)
  {
    nlohmann::json_abi_v3_11_3::detail::iter_impl<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::operator*();
  }

  v3 = *result;
  if (v3 == 1)
  {
    v8 = a1[1];
    if (v8 == (*(result + 1) + 8))
    {
      nlohmann::json_abi_v3_11_3::detail::iter_impl<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::operator*();
    }

    return v8 + 56;
  }

  else if (v3 == 2)
  {
    v7 = *(*(result + 1) + 8);
    result = a1[2];
    if (result == v7)
    {
      nlohmann::json_abi_v3_11_3::detail::iter_impl<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::operator*();
    }
  }

  else
  {
    if (!*result)
    {
      v9 = a1;
      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v12, "cannot get value");
      v11 = *v9;
      nlohmann::json_abi_v3_11_3::detail::invalid_iterator::create<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> *,0>(214, v12, exception);
    }

    if (a1[3])
    {
      v4 = a1;
      v5 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v12, "cannot get value");
      v6 = *v4;
      nlohmann::json_abi_v3_11_3::detail::invalid_iterator::create<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> *,0>(214, v12, v5);
    }
  }

  return result;
}

void sub_25A2B6ECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

unsigned __int8 **nlohmann::json_abi_v3_11_3::detail::iter_impl<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::operator++(unsigned __int8 **result)
{
  if (!*result)
  {
    nlohmann::json_abi_v3_11_3::detail::iter_impl<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::operator++();
  }

  v1 = **result;
  if (v1 == 2)
  {
    result[2] += 16;
  }

  else if (v1 == 1)
  {
    v2 = result[1];
    v3 = *(v2 + 1);
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
      do
      {
        v4 = *(v2 + 2);
        v5 = *v4 == v2;
        v2 = v4;
      }

      while (!v5);
    }

    result[1] = v4;
  }

  else
  {
    ++result[3];
  }

  return result;
}

uint64_t nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::parser<nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int8 a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(int,nlohmann::json_abi_v3_11_3::detail::parse_event_t,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> &)>::__value_func[abi:ne200100](v11, a2);
  nlohmann::json_abi_v3_11_3::detail::parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::parser(a5, a1, v11, a3, a4);
  result = std::__function::__value_func<BOOL ()(int,nlohmann::json_abi_v3_11_3::detail::parse_event_t,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> &)>::~__value_func[abi:ne200100](v11);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A2B701C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(int,nlohmann::json_abi_v3_11_3::detail::parse_event_t,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void nlohmann::json_abi_v3_11_3::detail::parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::parse(uint64_t a1, int a2, unsigned __int8 *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    std::__function::__value_func<BOOL ()(int,nlohmann::json_abi_v3_11_3::detail::parse_event_t,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> &)>::__value_func[abi:ne200100](v24, a1);
    nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::json_sax_dom_callback_parser(&v25, a3, v24, *(a1 + 184));
    std::__function::__value_func<BOOL ()(int,nlohmann::json_abi_v3_11_3::detail::parse_event_t,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> &)>::~__value_func[abi:ne200100](v24);
    nlohmann::json_abi_v3_11_3::detail::parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::sax_parse_internal<nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>>(a1, &v25);
    if (a2)
    {
      v6 = nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::scan((a1 + 40));
      *(a1 + 32) = v6;
      if (v6 != 15)
      {
        v7 = *(a1 + 72);
        nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get_token_string(a1 + 40, &v23);
        v19 = *(a1 + 72);
        v20 = *(a1 + 88);
        std::string::basic_string[abi:ne200100]<0>(v16, "value");
        nlohmann::json_abi_v3_11_3::detail::parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::exception_message(a1, 0xFu, v16, &__p);
        nlohmann::json_abi_v3_11_3::detail::parse_error::create<decltype(nullptr),0>(101, &v19, &__p, &v21);
        nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::parse_error<nlohmann::json_abi_v3_11_3::detail::parse_error>(&v25, v7, &v23, &v21);
        v21.__vftable = &unk_286BEABA0;
        std::runtime_error::~runtime_error(&v22);
        std::exception::~exception(&v21);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v17 < 0)
        {
          operator delete(v16[0]);
        }

        if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v23.__r_.__value_.__l.__data_);
        }
      }
    }

    if (v30)
    {
      LOBYTE(v15[0]) = 9;
      v15[1] = 0;
      nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v15);
      nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::operator=(a3, v15);
      nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v15);
      nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(v15);
      nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::~json_sax_dom_callback_parser(&v25);
      goto LABEL_30;
    }

    if (*a3 == 9)
    {
      LOBYTE(v14[0]) = 0;
      v14[1] = 0;
      nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v14);
      nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v14);
      nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::operator=(a3, v14);
      nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v14);
      nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(v14);
    }

    nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::~json_sax_dom_callback_parser(&v25);
LABEL_29:
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(a3);
    goto LABEL_30;
  }

  v8 = *(a1 + 184);
  v25 = a3;
  v26 = 0u;
  v27 = 0u;
  v28 = 0;
  v29 = v8;
  nlohmann::json_abi_v3_11_3::detail::parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::sax_parse_internal<nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>>(a1, &v25);
  if (a2)
  {
    v9 = nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::scan((a1 + 40));
    *(a1 + 32) = v9;
    if (v9 != 15)
    {
      v10 = *(a1 + 72);
      nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get_token_string(a1 + 40, &v23);
      v19 = *(a1 + 72);
      v20 = *(a1 + 88);
      std::string::basic_string[abi:ne200100]<0>(v16, "value");
      nlohmann::json_abi_v3_11_3::detail::parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::exception_message(a1, 0xFu, v16, &__p);
      nlohmann::json_abi_v3_11_3::detail::parse_error::create<decltype(nullptr),0>(101, &v19, &__p, &v21);
      nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::parse_error<nlohmann::json_abi_v3_11_3::detail::parse_error>(&v25, v10, &v23, &v21);
      v21.__vftable = &unk_286BEABA0;
      std::runtime_error::~runtime_error(&v22);
      std::exception::~exception(&v21);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v17 < 0)
      {
        operator delete(v16[0]);
      }

      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }
    }
  }

  v11 = v28;
  if (v28 == 1)
  {
    LOBYTE(v13[0]) = 9;
    v13[1] = 0;
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v13);
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::operator=(a3, v13);
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v13);
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(v13);
  }

  if (v26)
  {
    *(&v26 + 1) = v26;
    operator delete(v26);
  }

  if ((v11 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_30:
  v12 = *MEMORY[0x277D85DE8];
}

void sub_25A2B73E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::runtime_error a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41)
{
  nlohmann::json_abi_v3_11_3::detail::parse_error::~parse_error(&a31);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  v43 = *(v41 - 200);
  if (v43)
  {
    *(v41 - 192) = v43;
    operator delete(v43);
  }

  _Unwind_Resume(a1);
}

unsigned __int8 *nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(unsigned __int8 *result)
{
  v1 = *result;
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      if (*(result + 1))
      {
        return result;
      }

      v2 = "m_data.m_type != value_t::string || m_data.m_value.string != nullptr";
      v3 = 19988;
    }

    else
    {
      if (v1 != 8 || *(result + 1))
      {
        return result;
      }

      v2 = "m_data.m_type != value_t::binary || m_data.m_value.binary != nullptr";
      v3 = 19989;
    }

LABEL_15:
    __assert_rtn("assert_invariant", "json.hpp", v3, v2);
  }

  if (v1 == 1)
  {
    if (*(result + 1))
    {
      return result;
    }

    v2 = "m_data.m_type != value_t::object || m_data.m_value.object != nullptr";
    v3 = 19986;
    goto LABEL_15;
  }

  if (v1 == 2 && !*(result + 1))
  {
    v2 = "m_data.m_type != value_t::array || m_data.m_value.array != nullptr";
    v3 = 19987;
    goto LABEL_15;
  }

  return result;
}

void *nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::json_value::json_value(void *result, int a2)
{
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 != 2)
      {
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::create<std::string,char const(&)[1]>();
      }

      operator new();
    }

    if (a2 == 1)
    {
      operator new();
    }

    goto LABEL_11;
  }

  if (a2 > 5)
  {
    if (a2 == 8)
    {
      operator new();
    }

    goto LABEL_11;
  }

  if (a2 != 4)
  {
LABEL_11:
    *result = 0;
    return result;
  }

  *result = 0;
  return result;
}

std::string *nlohmann::json_abi_v3_11_3::detail::concat<std::string,std::string,std::string,std::string const&>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  a4->__r_.__value_.__r.__words[0] = 0;
  a4->__r_.__value_.__l.__size_ = 0;
  a4->__r_.__value_.__r.__words[2] = 0;
  v8 = *(a1 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
  }

  v9 = *(a2 + 23);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a2 + 8);
  }

  v10 = *(a3 + 23);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a3 + 8);
  }

  std::string::reserve(a4, v9 + v8 + v10);
  v11 = *(a1 + 23);
  if (v11 >= 0)
  {
    v12 = a1;
  }

  else
  {
    v12 = *a1;
  }

  if (v11 >= 0)
  {
    v13 = *(a1 + 23);
  }

  else
  {
    v13 = *(a1 + 8);
  }

  std::string::append(a4, v12, v13);
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
  v17 = *(a3 + 23);
  if (v17 >= 0)
  {
    v18 = a3;
  }

  else
  {
    v18 = *a3;
  }

  if (v17 >= 0)
  {
    v19 = *(a3 + 23);
  }

  else
  {
    v19 = *(a3 + 8);
  }

  return std::string::append(a4, v18, v19);
}

void sub_25A2B77F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void nlohmann::json_abi_v3_11_3::detail::exception::name(int __val@<W1>, uint64_t a2@<X0>, std::string *a3@<X8>)
{
  std::to_string(&v12, __val);
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  v5 = *(a2 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v12.__r_.__value_.__l.__size_;
  }

  std::string::reserve(a3, v5 + size + 19);
  std::string::append(a3, "[json.exception.", 0x10uLL);
  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v7 >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = *(a2 + 8);
  }

  std::string::append(a3, v8, v9);
  std::string::push_back(a3, 46);
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v12;
  }

  else
  {
    v10 = v12.__r_.__value_.__r.__words[0];
  }

  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = v12.__r_.__value_.__l.__size_;
  }

  std::string::append(a3, v10, v11);
  std::string::append(a3, "] ", 2uLL);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_25A2B790C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

nlohmann::json_abi_v3_11_3::detail::exception *nlohmann::json_abi_v3_11_3::detail::exception::exception(nlohmann::json_abi_v3_11_3::detail::exception *this, int a2, const char *a3)
{
  *this = &unk_286BEABA0;
  *(this + 2) = a2;
  std::runtime_error::runtime_error(this + 1, a3);
  return this;
}

void nlohmann::json_abi_v3_11_3::detail::exception::~exception(std::runtime_error *this)
{
  this->__vftable = &unk_286BEABA0;
  std::runtime_error::~runtime_error(this + 1);

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_286BEABA0;
  std::runtime_error::~runtime_error(this + 1);
  std::exception::~exception(this);

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__value_func<BOOL ()(int,nlohmann::json_abi_v3_11_3::detail::parse_event_t,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t nlohmann::json_abi_v3_11_3::detail::parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::parser(uint64_t a1, uint64_t a2, uint64_t a3, __int8 a4, char a5)
{
  v9 = std::__function::__value_func<BOOL ()(int,nlohmann::json_abi_v3_11_3::detail::parse_event_t,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> &)>::__value_func[abi:ne200100](a1, a3);
  *(v9 + 40) = *a2;
  v10 = (v9 + 40);
  *(v9 + 32) = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(v9 + 56) = a5;
  *(v9 + 60) = -1;
  *(v9 + 64) = 0;
  *(v9 + 72) = 0u;
  *(v9 + 88) = 0u;
  *(v9 + 104) = 0u;
  *(v9 + 120) = 0u;
  *(v9 + 136) = 0;
  *(v9 + 144) = "";
  *(v9 + 160) = 0;
  *(v9 + 168) = 0;
  *(v9 + 152) = 0;
  *(v9 + 176) = nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get_decimal_point();
  v10[9].i8[0] = a4;
  *(a1 + 32) = nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::scan(v10);
  return a1;
}

void sub_25A2B7B84(_Unwind_Exception *a1)
{
  nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::~lexer(v2);
  std::__function::__value_func<BOOL ()(int,nlohmann::json_abi_v3_11_3::detail::parse_event_t,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> &)>::~__value_func[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get_decimal_point()
{
  v0 = localeconv();
  if (!v0)
  {
    __assert_rtn("get_decimal_point", "json.hpp", 7518, "loc != nullptr");
  }

  if (v0->decimal_point)
  {
    return *v0->decimal_point;
  }

  else
  {
    return 46;
  }
}

uint64_t nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::scan(int64x2_t *this)
{
  if (!this[2].i64[0] && !nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::skip_bom(this))
  {
    v6 = "invalid BOM; must be 0xEF 0xBB 0xBF if given";
    goto LABEL_29;
  }

  do
  {
    nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get(this);
    v2 = this[1].i32[1];
  }

  while (v2 <= 0x20 && ((1 << v2) & 0x100002600) != 0);
  while (this[1].i8[0] == 1)
  {
    if (v2 != 47)
    {
      break;
    }

    if (!nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::scan_comment(this))
    {
      return 14;
    }

    do
    {
      nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get(this);
      v2 = this[1].i32[1];
    }

    while (v2 <= 0x20 && ((1 << v2) & 0x100002600) != 0);
  }

  if (v2 <= 57)
  {
    if (v2 <= 44)
    {
      if ((v2 + 1) < 2)
      {
        return 15;
      }

      if (v2 == 34)
      {

        return nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::scan_string(this);
      }

      if (v2 == 44)
      {
        return 13;
      }
    }

    else if ((v2 - 48) < 0xA || v2 == 45)
    {

      return nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::scan_number(this);
    }

    goto LABEL_51;
  }

  if (v2 <= 109)
  {
    if (v2 <= 92)
    {
      if (v2 == 58)
      {
        return 12;
      }

      if (v2 == 91)
      {
        return 8;
      }

      goto LABEL_51;
    }

    if (v2 == 93)
    {
      return 10;
    }

    if (v2 != 102)
    {
      goto LABEL_51;
    }

    qmemcpy(v12, "false", 5);
    v7 = v12;
    v8 = this;
    v9 = 5;
    v10 = 2;
    return nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::scan_literal(v8, v7, v9, v10);
  }

  if (v2 > 122)
  {
    if (v2 == 123)
    {
      return 9;
    }

    if (v2 == 125)
    {
      return 11;
    }

    goto LABEL_51;
  }

  if (v2 == 110)
  {
    v11 = 1819047278;
    v7 = &v11;
    v8 = this;
    v9 = 4;
    v10 = 3;
    return nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::scan_literal(v8, v7, v9, v10);
  }

  if (v2 == 116)
  {
    v13 = 1702195828;
    v7 = &v13;
    v8 = this;
    v9 = 4;
    v10 = 1;
    return nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::scan_literal(v8, v7, v9, v10);
  }

LABEL_51:
  v6 = "invalid literal";
LABEL_29:
  this[6].i64[1] = v6;
  return 14;
}

BOOL nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::skip_bom(int64x2_t *a1)
{
  if (nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get(a1) == 239)
  {
    return nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get(a1) == 187 && nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get(a1) == 191;
  }

  else
  {
    nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::unget(a1);
    return 1;
  }
}

uint64_t nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::scan_comment(int64x2_t *a1)
{
  v2 = nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get(a1);
  if (v2 == 47)
  {
    do
    {
      do
      {
        v4 = nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get(a1) + 1;
      }

      while (v4 >= 0xF);
    }

    while (((0x4803u >> v4) & 1) == 0);
    return 1;
  }

  else
  {
    if (v2 == 42)
    {
      while (1)
      {
        v3 = nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get(a1);
        if ((v3 + 1) < 2)
        {
          break;
        }

        if (v3 == 42)
        {
          if (nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get(a1) == 47)
          {
            return 1;
          }

          nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::unget(a1);
        }
      }

      v6 = "invalid comment; missing closing '*/'";
    }

    else
    {
      v6 = "invalid comment; expecting '/' or '*' after '/'";
    }

    result = 0;
    a1[6].i64[1] = v6;
  }

  return result;
}

uint64_t nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::scan_literal(int64x2_t *this, unsigned __int8 *a2, unint64_t a3, uint64_t a4)
{
  if (*a2 != this[1].u8[4])
  {
    nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::scan_literal();
  }

  if (a3 >= 2)
  {
    v6 = a3 - 1;
    v7 = a2 + 1;
    while (1)
    {
      v8 = nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get(this);
      v9 = *v7++;
      if (v9 != v8)
      {
        break;
      }

      if (!--v6)
      {
        return a4;
      }
    }

    this[6].i64[1] = "invalid literal";
    return 14;
  }

  return a4;
}

uint64_t nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::scan_string(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::reset(a1);
  if (*(a1 + 20) != 34)
  {
    nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::scan_string();
  }

  while (2)
  {
    v2 = nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get(a1) + 1;
    result = 4;
    v4 = "invalid string: missing closing quote";
    switch(v2)
    {
      case 0:
        goto LABEL_86;
      case 1:
        v4 = "invalid string: control character U+0000 (NUL) must be escaped to \\u0000";
        goto LABEL_86;
      case 2:
        v4 = "invalid string: control character U+0001 (SOH) must be escaped to \\u0001";
        goto LABEL_86;
      case 3:
        v4 = "invalid string: control character U+0002 (STX) must be escaped to \\u0002";
        goto LABEL_86;
      case 4:
        v4 = "invalid string: control character U+0003 (ETX) must be escaped to \\u0003";
        goto LABEL_86;
      case 5:
        v4 = "invalid string: control character U+0004 (EOT) must be escaped to \\u0004";
        goto LABEL_86;
      case 6:
        v4 = "invalid string: control character U+0005 (ENQ) must be escaped to \\u0005";
        goto LABEL_86;
      case 7:
        v4 = "invalid string: control character U+0006 (ACK) must be escaped to \\u0006";
        goto LABEL_86;
      case 8:
        v4 = "invalid string: control character U+0007 (BEL) must be escaped to \\u0007";
        goto LABEL_86;
      case 9:
        v4 = "invalid string: control character U+0008 (BS) must be escaped to \\u0008 or \\b";
        goto LABEL_86;
      case 10:
        v4 = "invalid string: control character U+0009 (HT) must be escaped to \\u0009 or \\t";
        goto LABEL_86;
      case 11:
        v4 = "invalid string: control character U+000A (LF) must be escaped to \\u000A or \\n";
        goto LABEL_86;
      case 12:
        v4 = "invalid string: control character U+000B (VT) must be escaped to \\u000B";
        goto LABEL_86;
      case 13:
        v4 = "invalid string: control character U+000C (FF) must be escaped to \\u000C or \\f";
        goto LABEL_86;
      case 14:
        v4 = "invalid string: control character U+000D (CR) must be escaped to \\u000D or \\r";
        goto LABEL_86;
      case 15:
        v4 = "invalid string: control character U+000E (SO) must be escaped to \\u000E";
        goto LABEL_86;
      case 16:
        v4 = "invalid string: control character U+000F (SI) must be escaped to \\u000F";
        goto LABEL_86;
      case 17:
        v4 = "invalid string: control character U+0010 (DLE) must be escaped to \\u0010";
        goto LABEL_86;
      case 18:
        v4 = "invalid string: control character U+0011 (DC1) must be escaped to \\u0011";
        goto LABEL_86;
      case 19:
        v4 = "invalid string: control character U+0012 (DC2) must be escaped to \\u0012";
        goto LABEL_86;
      case 20:
        v4 = "invalid string: control character U+0013 (DC3) must be escaped to \\u0013";
        goto LABEL_86;
      case 21:
        v4 = "invalid string: control character U+0014 (DC4) must be escaped to \\u0014";
        goto LABEL_86;
      case 22:
        v4 = "invalid string: control character U+0015 (NAK) must be escaped to \\u0015";
        goto LABEL_86;
      case 23:
        v4 = "invalid string: control character U+0016 (SYN) must be escaped to \\u0016";
        goto LABEL_86;
      case 24:
        v4 = "invalid string: control character U+0017 (ETB) must be escaped to \\u0017";
        goto LABEL_86;
      case 25:
        v4 = "invalid string: control character U+0018 (CAN) must be escaped to \\u0018";
        goto LABEL_86;
      case 26:
        v4 = "invalid string: control character U+0019 (EM) must be escaped to \\u0019";
        goto LABEL_86;
      case 27:
        v4 = "invalid string: control character U+001A (SUB) must be escaped to \\u001A";
        goto LABEL_86;
      case 28:
        v4 = "invalid string: control character U+001B (ESC) must be escaped to \\u001B";
        goto LABEL_86;
      case 29:
        v4 = "invalid string: control character U+001C (FS) must be escaped to \\u001C";
        goto LABEL_86;
      case 30:
        v4 = "invalid string: control character U+001D (GS) must be escaped to \\u001D";
        goto LABEL_86;
      case 31:
        v4 = "invalid string: control character U+001E (RS) must be escaped to \\u001E";
        goto LABEL_86;
      case 32:
        v4 = "invalid string: control character U+001F (US) must be escaped to \\u001F";
        goto LABEL_86;
      case 33:
      case 34:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
      case 46:
      case 47:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
      case 58:
      case 59:
      case 60:
      case 61:
      case 62:
      case 63:
      case 64:
      case 65:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 79:
      case 80:
      case 81:
      case 82:
      case 83:
      case 84:
      case 85:
      case 86:
      case 87:
      case 88:
      case 89:
      case 90:
      case 91:
      case 92:
      case 94:
      case 95:
      case 96:
      case 97:
      case 98:
      case 99:
      case 100:
      case 101:
      case 102:
      case 103:
      case 104:
      case 105:
      case 106:
      case 107:
      case 108:
      case 109:
      case 110:
      case 111:
      case 112:
      case 113:
      case 114:
      case 115:
      case 116:
      case 117:
      case 118:
      case 119:
      case 120:
      case 121:
      case 122:
      case 123:
      case 124:
      case 125:
      case 126:
      case 127:
      case 128:
        v8 = *(a1 + 20);
        goto LABEL_7;
      case 35:
        goto LABEL_88;
      case 93:
        v10 = nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get(a1);
        v4 = "invalid string: forbidden character after backslash";
        if (v10 <= 113)
        {
          if (v10 > 97)
          {
            switch(v10)
            {
              case 'b':
                LOBYTE(v8) = 8;
                break;
              case 'f':
                LOBYTE(v8) = 12;
                break;
              case 'n':
                LOBYTE(v8) = 10;
                break;
              default:
                goto LABEL_86;
            }
          }

          else
          {
            switch(v10)
            {
              case '""':
                LOBYTE(v8) = 34;
                break;
              case '/':
                LOBYTE(v8) = 47;
                break;
              case '\\':
                LOBYTE(v8) = 92;
                break;
              default:
                goto LABEL_86;
            }
          }

          goto LABEL_7;
        }

        if (v10 != 117)
        {
          if (v10 == 114)
          {
            LOBYTE(v8) = 13;
          }

          else
          {
            if (v10 != 116)
            {
              goto LABEL_86;
            }

            LOBYTE(v8) = 9;
          }

          goto LABEL_7;
        }

        codepoint = nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get_codepoint(a1);
        if (codepoint == -1)
        {
          goto LABEL_90;
        }

        v12 = codepoint;
        if ((codepoint & 0xFFFFFC00) != 0xD800)
        {
          if ((codepoint & 0xFFFFFC00) == 0xDC00)
          {
            v4 = "invalid string: surrogate U+DC00..U+DFFF must follow U+D800..U+DBFF";
            goto LABEL_86;
          }

          if (codepoint >= 0x110000)
          {
            nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::scan_string();
          }

          if (codepoint > 0x7F)
          {
            if (codepoint <= 0x7FF)
            {
              std::string::push_back((a1 + 80), (codepoint >> 6) | 0xC0);
              goto LABEL_27;
            }

            if (!HIWORD(codepoint))
            {
              std::string::push_back((a1 + 80), (codepoint >> 12) | 0xE0);
              goto LABEL_26;
            }

LABEL_25:
            std::string::push_back((a1 + 80), (v12 >> 18) | 0xF0);
            std::string::push_back((a1 + 80), (v12 >> 12) & 0x3F | 0x80);
LABEL_26:
            std::string::push_back((a1 + 80), (v12 >> 6) & 0x3F | 0x80);
LABEL_27:
            LOBYTE(v8) = v12 & 0x3F | 0x80;
            goto LABEL_7;
          }

          LOBYTE(v8) = codepoint;
LABEL_7:
          std::string::push_back((a1 + 80), v8);
          continue;
        }

        if (nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get(a1) != 92 || nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get(a1) != 117)
        {
LABEL_91:
          v4 = "invalid string: surrogate U+D800..U+DBFF must be followed by U+DC00..U+DFFF";
          goto LABEL_86;
        }

        v13 = nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get_codepoint(a1);
        if (v13 != -1)
        {
          if (v13 >> 10 != 55)
          {
            goto LABEL_91;
          }

          v12 = v13 + (v12 << 10) - 56613888;
          goto LABEL_25;
        }

LABEL_90:
        v4 = "invalid string: '\\u' must be followed by 4 hex digits";
LABEL_86:
        *(a1 + 104) = v4;
LABEL_87:
        result = 14;
LABEL_88:
        v14 = *MEMORY[0x277D85DE8];
        return result;
      case 195:
      case 196:
      case 197:
      case 198:
      case 199:
      case 200:
      case 201:
      case 202:
      case 203:
      case 204:
      case 205:
      case 206:
      case 207:
      case 208:
      case 209:
      case 210:
      case 211:
      case 212:
      case 213:
      case 214:
      case 215:
      case 216:
      case 217:
      case 218:
      case 219:
      case 220:
      case 221:
      case 222:
      case 223:
      case 224:
        *&v15 = 0xBF00000080;
        v5 = a1;
        v6 = 2;
        goto LABEL_14;
      case 225:
        v7 = xmmword_25A9A7F10;
        goto LABEL_5;
      case 226:
      case 227:
      case 228:
      case 229:
      case 230:
      case 231:
      case 232:
      case 233:
      case 234:
      case 235:
      case 236:
      case 237:
      case 239:
      case 240:
        v7 = xmmword_25A9A7F00;
        goto LABEL_5;
      case 238:
        v7 = xmmword_25A9A7EF0;
LABEL_5:
        v15 = v7;
        v5 = a1;
        v6 = 4;
        goto LABEL_14;
      case 241:
        v16 = 0xBF00000080;
        v9 = &xmmword_25A9A7F7C;
        goto LABEL_13;
      case 242:
      case 243:
      case 244:
        v16 = 0xBF00000080;
        v9 = &xmmword_25A9A7F94;
        goto LABEL_13;
      case 245:
        v16 = 0xBF00000080;
        v9 = &xmmword_25A9A7FAC;
LABEL_13:
        v15 = *v9;
        v5 = a1;
        v6 = 6;
LABEL_14:
        if ((nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::next_byte_in_range(v5, &v15, v6) & 1) == 0)
        {
          goto LABEL_87;
        }

        continue;
      default:
        v4 = "invalid string: ill-formed UTF-8 byte";
        goto LABEL_86;
    }
  }
}

uint64_t nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::scan_number(uint64_t a1)
{
  nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::reset(a1);
  v2 = *(a1 + 20);
  if ((v2 - 49) < 9)
  {
    v3 = (a1 + 80);
    v4 = 5;
LABEL_3:
    std::string::push_back(v3, v2);
    v5 = (a1 + 80);
    while (1)
    {
      v6 = nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get(a1);
      if ((v6 - 48) >= 0xA)
      {
        break;
      }

      std::string::push_back((a1 + 80), *(a1 + 20));
    }

    if (v6 != 46)
    {
      if (v6 != 69 && v6 != 101)
      {
LABEL_9:
        nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::unget(a1);
        __endptr = 0;
        *__error() = 0;
        v7 = (a1 + 80);
        v8 = *(a1 + 103);
        v9 = (a1 + 80);
        if (v4 == 5)
        {
          if (v8 < 0)
          {
            v9 = *v7;
          }

          v10 = strtoull(v9, &__endptr, 10);
          v11 = *(a1 + 103);
          if (v11 < 0)
          {
            v7 = *(a1 + 80);
            v11 = *(a1 + 88);
          }

          if (__endptr != v7 + v11)
          {
            nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::scan_number();
          }

          if (!*__error())
          {
            result = 5;
            v13 = 120;
LABEL_30:
            *(a1 + v13) = v10;
            return result;
          }
        }

        else
        {
          if (v8 < 0)
          {
            v9 = *v7;
          }

          v10 = strtoll(v9, &__endptr, 10);
          v14 = *(a1 + 103);
          if (v14 < 0)
          {
            v7 = *(a1 + 80);
            v14 = *(a1 + 88);
          }

          if (__endptr != v7 + v14)
          {
            nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::scan_number();
          }

          if (!*__error())
          {
            result = 6;
            v13 = 112;
            goto LABEL_30;
          }
        }

        goto LABEL_23;
      }

      goto LABEL_48;
    }

    goto LABEL_40;
  }

  if (v2 == 48)
  {
    std::string::push_back((a1 + 80), 48);
    v4 = 5;
  }

  else
  {
    if (v2 != 45)
    {
      nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::scan_number();
    }

    v3 = (a1 + 80);
    std::string::push_back((a1 + 80), 45);
    v18 = nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get(a1);
    if ((v18 - 49) < 9)
    {
      v2 = *(a1 + 20);
      v4 = 6;
      goto LABEL_3;
    }

    if (v18 != 48)
    {
      v21 = "invalid number; expected digit after '-'";
      goto LABEL_52;
    }

    std::string::push_back((a1 + 80), *(a1 + 20));
    v4 = 6;
  }

  v19 = nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get(a1);
  if (v19 == 101 || v19 == 69)
  {
    v5 = (a1 + 80);
LABEL_48:
    std::string::push_back(v5, *(a1 + 20));
    v22 = nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get(a1);
    if ((v22 - 48) < 0xA)
    {
      v23 = (a1 + 80);
    }

    else
    {
      if (v22 != 45 && v22 != 43)
      {
        v21 = "invalid number; expected '+', '-', or digit after exponent";
        goto LABEL_52;
      }

      v23 = (a1 + 80);
      std::string::push_back((a1 + 80), *(a1 + 20));
      if (nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get(a1) - 48 >= 0xA)
      {
        v21 = "invalid number; expected digit after exponent sign";
        goto LABEL_52;
      }
    }

    std::string::push_back(v23, *(a1 + 20));
    if (nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get(a1) - 48 <= 9)
    {
      do
      {
        std::string::push_back((a1 + 80), *(a1 + 20));
      }

      while (nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get(a1) - 48 < 0xA);
    }

    goto LABEL_56;
  }

  if (v19 != 46)
  {
    goto LABEL_9;
  }

  v5 = (a1 + 80);
LABEL_40:
  std::string::push_back(v5, *(a1 + 136));
  if (nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get(a1) - 48 > 9)
  {
    v21 = "invalid number; expected digit after '.'";
LABEL_52:
    *(a1 + 104) = v21;
    return 14;
  }

  v5 = (a1 + 80);
  do
  {
    std::string::push_back((a1 + 80), *(a1 + 20));
    v20 = nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get(a1);
  }

  while ((v20 - 48) < 0xA);
  if (v20 == 101 || v20 == 69)
  {
    goto LABEL_48;
  }

LABEL_56:
  nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::unget(a1);
  __endptr = 0;
  *__error() = 0;
LABEL_23:
  v15 = (a1 + 80);
  v16 = (a1 + 80);
  if (*(a1 + 103) < 0)
  {
    v16 = *v15;
  }

  *(a1 + 128) = strtod(v16, &__endptr);
  v17 = *(a1 + 103);
  if (v17 < 0)
  {
    v15 = *(a1 + 80);
    v17 = *(a1 + 88);
  }

  if (__endptr != v15 + v17)
  {
    nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::scan_number();
  }

  return 7;
}

uint64_t nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::unget(uint64_t result)
{
  v1 = (result + 40);
  v2 = *(result + 40);
  *(result + 24) = 1;
  --*(result + 32);
  if (v2 || (v1 = (result + 48), (v2 = *(result + 48)) != 0))
  {
    *v1 = v2 - 1;
  }

  if (*(result + 20) != -1)
  {
    v3 = *(result + 64);
    if (*(result + 56) == v3)
    {
      nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::unget();
    }

    *(result + 64) = v3 - 1;
  }

  return result;
}

uint64_t nlohmann::json_abi_v3_11_3::detail::input_stream_adapter::get_character(nlohmann::json_abi_v3_11_3::detail::input_stream_adapter *this)
{
  v2 = *(this + 1);
  v3 = v2[3];
  if (v3 == v2[4])
  {
    result = (*(*v2 + 80))(v2);
    if (result == -1)
    {
      nlohmann::json_abi_v3_11_3::detail::input_stream_adapter::get_character(this);
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v2[3] = v3 + 1;
    return *v3;
  }

  return result;
}

void std::vector<char>::push_back[abi:ne200100](uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::reset(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    **(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  else
  {
    *(a1 + 80) = 0;
    *(a1 + 103) = 0;
  }

  v2 = *(a1 + 56);
  v1 = a1 + 56;
  *(v1 + 8) = v2;
  v3 = *(v1 - 36);
  std::vector<char>::push_back[abi:ne200100](v1, &v3);
}

uint64_t nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get_codepoint(int64x2_t *a1)
{
  if (a1[1].i32[1] != 117)
  {
    nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get_codepoint();
  }

  nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get_codepoint(a1, &a1[1].i32[1], &v2);
  return v2;
}

uint64_t nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::next_byte_in_range(uint64_t a1, _DWORD *a2, unint64_t a3)
{
  if (a3 > 6 || ((1 << a3) & 0x54) == 0)
  {
    nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::next_byte_in_range();
  }

  nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::next_byte_in_range(a2, a3, a1, a3, &v4);
  return v4;
}

void nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::~lexer(void **this)
{
  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  v2 = this[7];
  if (v2)
  {
    this[8] = v2;
    operator delete(v2);
  }

  nlohmann::json_abi_v3_11_3::detail::input_stream_adapter::~input_stream_adapter(this);
}

uint64_t nlohmann::json_abi_v3_11_3::detail::parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::sax_parse_internal<nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>>(uint64_t a1, uint64_t *a2)
{
  v34 = 0;
  v35 = 0;
  v36 = 0;
  while (1)
  {
LABEL_2:
    v4 = *(a1 + 32);
    if (v4 <= 5)
    {
      if (v4 > 2)
      {
        if (v4 == 3)
        {
          v31.__vftable = 0;
          nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<decltype(nullptr)>(a2, &v31, 0);
        }

        else if (v4 == 4)
        {
          nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<std::string&>(a2);
        }

        else
        {
          v31.__vftable = *(a1 + 160);
          nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<unsigned long long &>(a2, &v31, 0);
        }

        goto LABEL_28;
      }

      if (v4 == 1)
      {
        LOBYTE(v31.__vftable) = 1;
        nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<BOOL &>(a2, &v31, 0);
        goto LABEL_28;
      }

      if (v4 == 2)
      {
        LOBYTE(v31.__vftable) = 0;
        nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<BOOL &>(a2, &v31, 0);
        goto LABEL_28;
      }

      goto LABEL_56;
    }

    if (v4 < 8)
    {
      if (v4 == 6)
      {
        v31.__vftable = *(a1 + 152);
        nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<long long &>(a2, &v31, 0);
        goto LABEL_28;
      }

      if ((*(a1 + 168) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
        v31.__vftable = *(a1 + 168);
        nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<double &>(a2, &v31, 0);
        goto LABEL_28;
      }

      v26 = *(a1 + 72);
      nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get_token_string(a1 + 40, &v33);
      nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get_token_string(a1 + 40, &__p);
      LOBYTE(v27[0]) = 39;
      nlohmann::json_abi_v3_11_3::detail::concat<std::string,char const(&)[26],std::string,char>("number overflow parsing '", &__p, v27, &v30);
      nlohmann::json_abi_v3_11_3::detail::out_of_range::create<decltype(nullptr),0>(406, &v30, &v31);
      v13 = nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::parse_error<nlohmann::json_abi_v3_11_3::detail::out_of_range>(a2, v26, &v33, &v31);
      nlohmann::json_abi_v3_11_3::detail::out_of_range::~out_of_range(&v31);
      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        v20 = __p.__r_.__value_.__r.__words[0];
LABEL_62:
        operator delete(v20);
      }

LABEL_63:
      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }

      goto LABEL_48;
    }

    if (v4 > 8)
    {
      break;
    }

    if (!nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::start_array(a2, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_65;
    }

    v7 = nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::scan((a1 + 40));
    *(a1 + 32) = v7;
    if (v7 == 10)
    {
      v6 = nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::end_array(a2);
      goto LABEL_22;
    }

    LOBYTE(v31.__vftable) = 1;
    std::vector<BOOL>::push_back(&v34, &v31);
  }

  if (v4 != 9)
  {
    if (v4 == 14)
    {
      v18 = *(a1 + 72);
      nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get_token_string(a1 + 40, &v33);
      v30 = *(a1 + 72);
      std::string::basic_string[abi:ne200100]<0>(v27, "value");
      nlohmann::json_abi_v3_11_3::detail::parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::exception_message(a1, 0, v27, &__p);
      nlohmann::json_abi_v3_11_3::detail::parse_error::create<decltype(nullptr),0>(101, &v30, &__p, &v31);
      v17 = nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::parse_error<nlohmann::json_abi_v3_11_3::detail::parse_error>(a2, v18, &v33, &v31);
    }

    else
    {
      if (v4 != 15)
      {
LABEL_56:
        v19 = *(a1 + 72);
        nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get_token_string(a1 + 40, &v33);
        v30 = *(a1 + 72);
        std::string::basic_string[abi:ne200100]<0>(v27, "value");
        nlohmann::json_abi_v3_11_3::detail::parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::exception_message(a1, 0x10u, v27, &__p);
        nlohmann::json_abi_v3_11_3::detail::parse_error::create<decltype(nullptr),0>(101, &v30, &__p, &v31);
        v17 = nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::parse_error<nlohmann::json_abi_v3_11_3::detail::parse_error>(a2, v19, &v33, &v31);
        goto LABEL_57;
      }

      v16 = (a1 + 72);
      v15 = *(a1 + 72);
      if (v15 == 1)
      {
        nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get_token_string(a1 + 40, &v33);
        *&v30.__r_.__value_.__l.__data_ = *v16;
        v30.__r_.__value_.__r.__words[2] = *(a1 + 88);
        std::string::basic_string[abi:ne200100]<0>(&__p, "attempting to parse an empty input; check that your input string or stream contains the expected JSON");
        nlohmann::json_abi_v3_11_3::detail::parse_error::create<decltype(nullptr),0>(101, &v30, &__p, &v31);
        v13 = nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::parse_error<nlohmann::json_abi_v3_11_3::detail::parse_error>(a2, 1, &v33, &v31);
        nlohmann::json_abi_v3_11_3::detail::parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::sax_parse_internal<nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>>(&v31, &__p, &v33);
        goto LABEL_48;
      }

      nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get_token_string(a1 + 40, &v33);
      *&v30.__r_.__value_.__l.__data_ = *v16;
      v30.__r_.__value_.__r.__words[2] = *(a1 + 88);
      std::string::basic_string[abi:ne200100]<0>(v27, "value");
      nlohmann::json_abi_v3_11_3::detail::parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::exception_message(a1, 0x10u, v27, &__p);
      nlohmann::json_abi_v3_11_3::detail::parse_error::create<decltype(nullptr),0>(101, &v30, &__p, &v31);
      v17 = nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::parse_error<nlohmann::json_abi_v3_11_3::detail::parse_error>(a2, v15, &v33, &v31);
    }

LABEL_57:
    v13 = v17;
    v31.__vftable = &unk_286BEABA0;
    std::runtime_error::~runtime_error(&v32);
    std::exception::~exception(&v31);
    goto LABEL_58;
  }

  if ((nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::start_object(a2, 0xFFFFFFFFFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_65;
  }

  v5 = nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::scan((a1 + 40));
  *(a1 + 32) = v5;
  if (v5 != 11)
  {
    if (v5 == 4)
    {
      nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::key();
    }

    goto LABEL_68;
  }

  v6 = nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::end_object(a2);
LABEL_22:
  if ((v6 & 1) == 0)
  {
LABEL_65:
    v13 = 0;
    goto LABEL_48;
  }

LABEL_28:
  for (i = v35; i; v35 = i)
  {
    if ((*&v34[((i - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (i - 1)))
    {
      v9 = nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::scan((a1 + 40));
      *(a1 + 32) = v9;
      if (v9 == 13)
      {
        *(a1 + 32) = nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::scan((a1 + 40));
        goto LABEL_2;
      }

      if (v9 != 10)
      {
        v21 = *(a1 + 72);
        nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get_token_string(a1 + 40, &v33);
        v30 = *(a1 + 72);
        std::string::basic_string[abi:ne200100]<0>(v27, "array");
        nlohmann::json_abi_v3_11_3::detail::parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::exception_message(a1, 0xAu, v27, &__p);
        nlohmann::json_abi_v3_11_3::detail::parse_error::create<decltype(nullptr),0>(101, &v30, &__p, &v31);
        v22 = nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::parse_error<nlohmann::json_abi_v3_11_3::detail::parse_error>(a2, v21, &v33, &v31);
        goto LABEL_69;
      }

      if (!nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::end_array(a2))
      {
        goto LABEL_65;
      }

      v10 = v35;
      if (!v35)
      {
        v23 = 12574;
        goto LABEL_71;
      }
    }

    else
    {
      v11 = nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::scan((a1 + 40));
      *(a1 + 32) = v11;
      if (v11 == 13)
      {
        v12 = nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::scan((a1 + 40));
        *(a1 + 32) = v12;
        if (v12 == 4)
        {
          nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::key();
        }

LABEL_68:
        v25 = *(a1 + 72);
        nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get_token_string(a1 + 40, &v33);
        v30 = *(a1 + 72);
        std::string::basic_string[abi:ne200100]<0>(v27, "object key");
        nlohmann::json_abi_v3_11_3::detail::parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::exception_message(a1, 4u, v27, &__p);
        nlohmann::json_abi_v3_11_3::detail::parse_error::create<decltype(nullptr),0>(101, &v30, &__p, &v31);
        v22 = nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::parse_error<nlohmann::json_abi_v3_11_3::detail::parse_error>(a2, v25, &v33, &v31);
LABEL_69:
        v13 = v22;
        nlohmann::json_abi_v3_11_3::detail::parse_error::~parse_error(&v31);
LABEL_58:
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v28 < 0)
        {
          v20 = v27[0];
          goto LABEL_62;
        }

        goto LABEL_63;
      }

      if (v11 != 11)
      {
        v24 = *(a1 + 72);
        nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get_token_string(a1 + 40, &v33);
        v30 = *(a1 + 72);
        std::string::basic_string[abi:ne200100]<0>(v27, "object");
        nlohmann::json_abi_v3_11_3::detail::parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::exception_message(a1, 0xBu, v27, &__p);
        nlohmann::json_abi_v3_11_3::detail::parse_error::create<decltype(nullptr),0>(101, &v30, &__p, &v31);
        v22 = nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::parse_error<nlohmann::json_abi_v3_11_3::detail::parse_error>(a2, v24, &v33, &v31);
        goto LABEL_69;
      }

      if (!nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::end_object(a2))
      {
        goto LABEL_65;
      }

      v10 = v35;
      if (!v35)
      {
        v23 = 12628;
LABEL_71:
        __assert_rtn("sax_parse_internal", "json.hpp", v23, "!states.empty()");
      }
    }

    i = v10 - 1;
  }

  v13 = 1;
LABEL_48:
  if (v34)
  {
    operator delete(v34);
  }

  return v13;
}

void sub_25A2B991C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, std::runtime_error a27)
{
  nlohmann::json_abi_v3_11_3::detail::parse_error::~parse_error(&a27);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (*(v27 - 57) < 0)
  {
    operator delete(*(v27 - 80));
  }

  v29 = *(v27 - 56);
  if (v29)
  {
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

uint64_t nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::parse_error<nlohmann::json_abi_v3_11_3::detail::parse_error>(uint64_t a1, uint64_t a2, uint64_t a3, const nlohmann::json_abi_v3_11_3::detail::parse_error *a4)
{
  *(a1 + 88) = 1;
  if (*(a1 + 128) == 1)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    v7 = nlohmann::json_abi_v3_11_3::detail::parse_error::parse_error(exception, a4);
  }

  return 0;
}

void nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get_token_string(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v3 = *(a1 + 56);
  for (i = *(a1 + 64); v3 != i; ++v3)
  {
    v5 = *v3;
    if (v5 > 0x1F)
    {
      std::string::push_back(a2, v5);
    }

    else
    {
      v9 = 0;
      *__str = 0;
      snprintf(__str, 9uLL, "<U+%.4X>", v5);
      v6 = strlen(__str);
      std::string::append(a2, __str, v6);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_25A2B9BD0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void nlohmann::json_abi_v3_11_3::detail::parse_error::create<decltype(nullptr),0>(int a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, nlohmann::json_abi_v3_11_3::detail::exception *a4@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(v27, "parse_error");
  nlohmann::json_abi_v3_11_3::detail::exception::name(a1, v27, &v29);
  nlohmann::json_abi_v3_11_3::detail::parse_error::position_string(a2, &v26);
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  memset(&v30, 0, sizeof(v30));
  size = HIBYTE(v29.__r_.__value_.__r.__words[2]);
  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v29.__r_.__value_.__l.__size_;
  }

  v9 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v9 = v26.__r_.__value_.__l.__size_;
  }

  v10 = v25;
  if ((v25 & 0x80u) != 0)
  {
    v10 = v24;
  }

  v11 = *(a3 + 23);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a3 + 8);
  }

  std::string::reserve(&v30, size + v9 + v10 + v11 + 13);
  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v29;
  }

  else
  {
    v12 = v29.__r_.__value_.__r.__words[0];
  }

  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v13 = v29.__r_.__value_.__l.__size_;
  }

  std::string::append(&v30, v12, v13);
  std::string::append(&v30, "parse error", 0xBuLL);
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v26;
  }

  else
  {
    v14 = v26.__r_.__value_.__r.__words[0];
  }

  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = v26.__r_.__value_.__l.__size_;
  }

  std::string::append(&v30, v14, v15);
  std::string::append(&v30, ": ", 2uLL);
  if ((v25 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v25 & 0x80u) == 0)
  {
    v17 = v25;
  }

  else
  {
    v17 = v24;
  }

  std::string::append(&v30, p_p, v17);
  v18 = *(a3 + 23);
  if (v18 >= 0)
  {
    v19 = a3;
  }

  else
  {
    v19 = *a3;
  }

  if (v18 >= 0)
  {
    v20 = *(a3 + 23);
  }

  else
  {
    v20 = *(a3 + 8);
  }

  std::string::append(&v30, v19, v20);
  if (v25 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  v21 = *a2;
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v30;
  }

  else
  {
    v22 = v30.__r_.__value_.__r.__words[0];
  }

  nlohmann::json_abi_v3_11_3::detail::exception::exception(a4, a1, v22);
  *a4 = &unk_286BEACA0;
  *(a4 + 4) = v21;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }
}

void sub_25A2B9E20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 33) < 0)
  {
    operator delete(*(v33 - 56));
  }

  _Unwind_Resume(exception_object);
}

void nlohmann::json_abi_v3_11_3::detail::parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::exception_message(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(a4, "syntax error ");
  v8 = *(a3 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a3 + 8);
  }

  if (v8)
  {
    memset(&v35, 0, sizeof(v35));
    std::string::reserve(&v35, v8 + 15);
    std::string::append(&v35, "while parsing ", 0xEuLL);
    v9 = *(a3 + 23);
    v10 = v9 >= 0 ? a3 : *a3;
    v11 = v9 >= 0 ? *(a3 + 23) : *(a3 + 8);
    std::string::append(&v35, v10, v11);
    std::string::push_back(&v35, 32);
    v12 = (v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v35 : v35.__r_.__value_.__r.__words[0];
    v13 = (v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v35.__r_.__value_.__r.__words[2]) : v35.__r_.__value_.__l.__size_;
    std::string::append(a4, v12, v13);
    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }
  }

  std::string::append(a4, "- ", 2uLL);
  v14 = *(a1 + 32);
  if (v14 == 14)
  {
    v15 = *(a1 + 144);
    nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get_token_string(a1 + 40, &v34);
    memset(&v35, 0, sizeof(v35));
    v16 = strlen(v15);
    size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v34.__r_.__value_.__l.__size_;
    }

    std::string::reserve(&v35, v16 + size + 15);
    v18 = strlen(v15);
    std::string::append(&v35, v15, v18);
    std::string::append(&v35, "; last read: '", 0xEuLL);
    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v34;
    }

    else
    {
      v19 = v34.__r_.__value_.__r.__words[0];
    }

    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v20 = v34.__r_.__value_.__l.__size_;
    }

    std::string::append(&v35, v19, v20);
    std::string::push_back(&v35, 39);
    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v35;
    }

    else
    {
      v21 = v35.__r_.__value_.__r.__words[0];
    }

    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v22 = v35.__r_.__value_.__l.__size_;
    }

    std::string::append(a4, v21, v22);
    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      v23 = v34.__r_.__value_.__r.__words[0];
      goto LABEL_47;
    }

LABEL_44:
    if (!a2)
    {
      return;
    }

    goto LABEL_48;
  }

  v24 = nlohmann::json_abi_v3_11_3::detail::lexer_base<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::token_type_name(v14);
  memset(&v35, 0, sizeof(v35));
  v25 = strlen(v24);
  std::string::reserve(&v35, v25 + 11);
  std::string::append(&v35, "unexpected ", 0xBuLL);
  v26 = strlen(v24);
  std::string::append(&v35, v24, v26);
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = &v35;
  }

  else
  {
    v27 = v35.__r_.__value_.__r.__words[0];
  }

  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v28 = v35.__r_.__value_.__l.__size_;
  }

  std::string::append(a4, v27, v28);
  if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_44;
  }

  v23 = v35.__r_.__value_.__r.__words[0];
LABEL_47:
  operator delete(v23);
  if (!a2)
  {
    return;
  }

LABEL_48:
  v29 = nlohmann::json_abi_v3_11_3::detail::lexer_base<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::token_type_name(a2);
  memset(&v35, 0, sizeof(v35));
  v30 = strlen(v29);
  std::string::reserve(&v35, v30 + 11);
  std::string::append(&v35, "; expected ", 0xBuLL);
  v31 = strlen(v29);
  std::string::append(&v35, v29, v31);
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = &v35;
  }

  else
  {
    v32 = v35.__r_.__value_.__r.__words[0];
  }

  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v33 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v33 = v35.__r_.__value_.__l.__size_;
  }

  std::string::append(a4, v32, v33);
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }
}

void sub_25A2BA1B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (*(v20 + 23) < 0)
  {
    operator delete(*v20);
  }

  _Unwind_Resume(exception_object);
}

void nlohmann::json_abi_v3_11_3::detail::parse_error::~parse_error(std::runtime_error *this)
{
  this->__vftable = &unk_286BEABA0;
  std::runtime_error::~runtime_error(this + 1);

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_286BEABA0;
  std::runtime_error::~runtime_error(this + 1);
  std::exception::~exception(this);

  JUMPOUT(0x25F851760);
}

uint64_t nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::operator=(uint64_t a1, uint64_t a2)
{
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(a2);
  v4 = *a1;
  *a1 = *a2;
  *a2 = v4;
  v5 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v5;
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(a1);
  return a1;
}

uint64_t nlohmann::json_abi_v3_11_3::detail::parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::sax_parse_internal<nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>>(uint64_t a1, uint64_t *a2)
{
  v38 = 0;
  v39 = 0;
  v40 = 0;
  while (1)
  {
    v4 = *(a1 + 32);
    if (v4 <= 5)
    {
      if (v4 <= 2)
      {
        if (v4 == 1)
        {
          LOBYTE(v35.__vftable) = 1;
          nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<BOOL &>(a2, &v35);
        }

        else
        {
          if (v4 != 2)
          {
            goto LABEL_59;
          }

          LOBYTE(v35.__vftable) = 0;
          nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<BOOL &>(a2, &v35);
        }
      }

      else if (v4 == 3)
      {
        v35.__vftable = 0;
        nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<decltype(nullptr)>(a2);
      }

      else
      {
        if (v4 == 4)
        {
          nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<std::string&>(a2);
        }

        v35.__vftable = *(a1 + 160);
        nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<unsigned long long &>(a2, &v35);
      }

      goto LABEL_26;
    }

    if (v4 >= 8)
    {
      if (v4 > 8)
      {
        if (v4 == 9)
        {
          v37.__r_.__value_.__s.__data_[0] = 1;
          v35.__vftable = nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<nlohmann::json_abi_v3_11_3::detail::value_t>(a2, &v37);
          std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> *,std::allocator<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> *>>::push_back[abi:ne200100]((a2 + 1), &v35);
          v5 = nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::scan((a1 + 40));
          *(a1 + 32) = v5;
          if (v5 == 11)
          {
            v6 = nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::end_object(a2);
            goto LABEL_20;
          }

          if (v5 == 4)
          {
            if (!nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::key(a2, (a1 + 120)))
            {
LABEL_68:
              v16 = 0;
              goto LABEL_51;
            }

            v15 = nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::scan((a1 + 40));
            *(a1 + 32) = v15;
            if (v15 == 12)
            {
              LOBYTE(v35.__vftable) = 0;
              std::vector<BOOL>::push_back(&v38, &v35);
              v14 = nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::scan((a1 + 40));
              goto LABEL_44;
            }

LABEL_72:
            v29 = *(a1 + 72);
            nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get_token_string(a1 + 40, &v37);
            v34 = *(a1 + 72);
            std::string::basic_string[abi:ne200100]<0>(v31, "object separator");
            nlohmann::json_abi_v3_11_3::detail::parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::exception_message(a1, 0xCu, v31, &__p);
            nlohmann::json_abi_v3_11_3::detail::parse_error::create<decltype(nullptr),0>(101, &v34, &__p, &v35);
            v25 = nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::parse_error<nlohmann::json_abi_v3_11_3::detail::parse_error>(a2, v29, &v37, &v35);
          }

          else
          {
LABEL_71:
            v28 = *(a1 + 72);
            nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get_token_string(a1 + 40, &v37);
            v34 = *(a1 + 72);
            std::string::basic_string[abi:ne200100]<0>(v31, "object key");
            nlohmann::json_abi_v3_11_3::detail::parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::exception_message(a1, 4u, v31, &__p);
            nlohmann::json_abi_v3_11_3::detail::parse_error::create<decltype(nullptr),0>(101, &v34, &__p, &v35);
            v25 = nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::parse_error<nlohmann::json_abi_v3_11_3::detail::parse_error>(a2, v28, &v37, &v35);
          }

LABEL_73:
          v16 = v25;
          nlohmann::json_abi_v3_11_3::detail::parse_error::~parse_error(&v35);
        }

        else
        {
          if (v4 == 14)
          {
            v21 = *(a1 + 72);
            nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get_token_string(a1 + 40, &v37);
            v34 = *(a1 + 72);
            std::string::basic_string[abi:ne200100]<0>(v31, "value");
            nlohmann::json_abi_v3_11_3::detail::parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::exception_message(a1, 0, v31, &__p);
            nlohmann::json_abi_v3_11_3::detail::parse_error::create<decltype(nullptr),0>(101, &v34, &__p, &v35);
            v20 = nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::parse_error<nlohmann::json_abi_v3_11_3::detail::parse_error>(a2, v21, &v37, &v35);
          }

          else if (v4 == 15)
          {
            v19 = (a1 + 72);
            v18 = *(a1 + 72);
            if (v18 == 1)
            {
              nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get_token_string(a1 + 40, &v37);
              *&v34.__r_.__value_.__l.__data_ = *v19;
              v34.__r_.__value_.__r.__words[2] = *(a1 + 88);
              std::string::basic_string[abi:ne200100]<0>(&__p, "attempting to parse an empty input; check that your input string or stream contains the expected JSON");
              nlohmann::json_abi_v3_11_3::detail::parse_error::create<decltype(nullptr),0>(101, &v34, &__p, &v35);
              v16 = nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::parse_error<nlohmann::json_abi_v3_11_3::detail::parse_error>(a2, 1, &v37, &v35);
              nlohmann::json_abi_v3_11_3::detail::parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::sax_parse_internal<nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>>(&v35, &__p, &v37);
              goto LABEL_51;
            }

            nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get_token_string(a1 + 40, &v37);
            *&v34.__r_.__value_.__l.__data_ = *v19;
            v34.__r_.__value_.__r.__words[2] = *(a1 + 88);
            std::string::basic_string[abi:ne200100]<0>(v31, "value");
            nlohmann::json_abi_v3_11_3::detail::parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::exception_message(a1, 0x10u, v31, &__p);
            nlohmann::json_abi_v3_11_3::detail::parse_error::create<decltype(nullptr),0>(101, &v34, &__p, &v35);
            v20 = nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::parse_error<nlohmann::json_abi_v3_11_3::detail::parse_error>(a2, v18, &v37, &v35);
          }

          else
          {
LABEL_59:
            v22 = *(a1 + 72);
            nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get_token_string(a1 + 40, &v37);
            v34 = *(a1 + 72);
            std::string::basic_string[abi:ne200100]<0>(v31, "value");
            nlohmann::json_abi_v3_11_3::detail::parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::exception_message(a1, 0x10u, v31, &__p);
            nlohmann::json_abi_v3_11_3::detail::parse_error::create<decltype(nullptr),0>(101, &v34, &__p, &v35);
            v20 = nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::parse_error<nlohmann::json_abi_v3_11_3::detail::parse_error>(a2, v22, &v37, &v35);
          }

          v16 = v20;
          v35.__vftable = &unk_286BEABA0;
          std::runtime_error::~runtime_error(&v36);
          std::exception::~exception(&v35);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v32 < 0)
        {
          v23 = v31[0];
LABEL_65:
          operator delete(v23);
          goto LABEL_66;
        }

        goto LABEL_66;
      }

      v37.__r_.__value_.__s.__data_[0] = 2;
      v35.__vftable = nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<nlohmann::json_abi_v3_11_3::detail::value_t>(a2, &v37);
      std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> *,std::allocator<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> *>>::push_back[abi:ne200100]((a2 + 1), &v35);
      v7 = nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::scan((a1 + 40));
      *(a1 + 32) = v7;
      if (v7 != 10)
      {
        LOBYTE(v35.__vftable) = 1;
        std::vector<BOOL>::push_back(&v38, &v35);
        continue;
      }

      v6 = nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::end_array(a2);
LABEL_20:
      if ((v6 & 1) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_26;
    }

    if (v4 != 6)
    {
      break;
    }

    v35.__vftable = *(a1 + 152);
    nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<long long &>(a2, &v35);
LABEL_26:
    v8 = v39;
    if (!v39)
    {
LABEL_50:
      v16 = 1;
      goto LABEL_51;
    }

    while (1)
    {
      if ((*&v38[((v8 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (v8 - 1)))
      {
        v9 = nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::scan((a1 + 40));
        *(a1 + 32) = v9;
        if (v9 == 13)
        {
          goto LABEL_43;
        }

        if (v9 != 10)
        {
          v24 = *(a1 + 72);
          nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get_token_string(a1 + 40, &v37);
          v34 = *(a1 + 72);
          std::string::basic_string[abi:ne200100]<0>(v31, "array");
          nlohmann::json_abi_v3_11_3::detail::parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::exception_message(a1, 0xAu, v31, &__p);
          nlohmann::json_abi_v3_11_3::detail::parse_error::create<decltype(nullptr),0>(101, &v34, &__p, &v35);
          v25 = nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::parse_error<nlohmann::json_abi_v3_11_3::detail::parse_error>(a2, v24, &v37, &v35);
          goto LABEL_73;
        }

        if (!nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::end_array(a2))
        {
          goto LABEL_68;
        }

        v10 = v39;
        if (!v39)
        {
          v26 = 12574;
          goto LABEL_75;
        }

        goto LABEL_37;
      }

      v11 = nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::scan((a1 + 40));
      *(a1 + 32) = v11;
      if (v11 == 13)
      {
        break;
      }

      if (v11 != 11)
      {
        v27 = *(a1 + 72);
        nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get_token_string(a1 + 40, &v37);
        v34 = *(a1 + 72);
        std::string::basic_string[abi:ne200100]<0>(v31, "object");
        nlohmann::json_abi_v3_11_3::detail::parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::exception_message(a1, 0xBu, v31, &__p);
        nlohmann::json_abi_v3_11_3::detail::parse_error::create<decltype(nullptr),0>(101, &v34, &__p, &v35);
        v25 = nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::parse_error<nlohmann::json_abi_v3_11_3::detail::parse_error>(a2, v27, &v37, &v35);
        goto LABEL_73;
      }

      if (!nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::end_object(a2))
      {
        goto LABEL_68;
      }

      v10 = v39;
      if (!v39)
      {
        v26 = 12628;
LABEL_75:
        __assert_rtn("sax_parse_internal", "json.hpp", v26, "!states.empty()");
      }

LABEL_37:
      v8 = v10 - 1;
      v39 = v8;
      if (!v8)
      {
        goto LABEL_50;
      }
    }

    v12 = nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::scan((a1 + 40));
    *(a1 + 32) = v12;
    if (v12 != 4)
    {
      goto LABEL_71;
    }

    if (!nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::key(a2, (a1 + 120)))
    {
      goto LABEL_68;
    }

    v13 = nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::scan((a1 + 40));
    *(a1 + 32) = v13;
    if (v13 != 12)
    {
      goto LABEL_72;
    }

LABEL_43:
    v14 = nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::scan((a1 + 40));
LABEL_44:
    *(a1 + 32) = v14;
  }

  if ((*(a1 + 168) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v35.__vftable = *(a1 + 168);
    nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<double &>(a2, &v35);
    goto LABEL_26;
  }

  v30 = *(a1 + 72);
  nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get_token_string(a1 + 40, &v37);
  nlohmann::json_abi_v3_11_3::detail::lexer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_3::detail::input_stream_adapter>::get_token_string(a1 + 40, &__p);
  LOBYTE(v31[0]) = 39;
  nlohmann::json_abi_v3_11_3::detail::concat<std::string,char const(&)[26],std::string,char>("number overflow parsing '", &__p, v31, &v34);
  nlohmann::json_abi_v3_11_3::detail::out_of_range::create<decltype(nullptr),0>(406, &v34, &v35);
  v16 = nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::parse_error<nlohmann::json_abi_v3_11_3::detail::out_of_range>(a2, v30, &v37, &v35);
  nlohmann::json_abi_v3_11_3::detail::out_of_range::~out_of_range(&v35);
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v23 = __p.__r_.__value_.__r.__words[0];
    goto LABEL_65;
  }

LABEL_66:
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

LABEL_51:
  if (v38)
  {
    operator delete(v38);
  }

  return v16;
}

void sub_25A2BAC08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, std::runtime_error a27)
{
  nlohmann::json_abi_v3_11_3::detail::parse_error::~parse_error(&a27);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (*(v27 - 73) < 0)
  {
    operator delete(*(v27 - 96));
  }

  v29 = *(v27 - 72);
  if (v29)
  {
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

uint64_t nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::parse_error<nlohmann::json_abi_v3_11_3::detail::parse_error>(uint64_t a1, uint64_t a2, uint64_t a3, const nlohmann::json_abi_v3_11_3::detail::parse_error *a4)
{
  *(a1 + 40) = 1;
  if (*(a1 + 41) == 1)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    v7 = nlohmann::json_abi_v3_11_3::detail::parse_error::parse_error(exception, a4);
  }

  return 0;
}

uint64_t nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::json_sax_dom_callback_parser(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(a1 + 8) = 0u;
  *a1 = a2;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  std::__function::__value_func<BOOL ()(int,nlohmann::json_abi_v3_11_3::detail::parse_event_t,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> &)>::__value_func[abi:ne200100](a1 + 96, a3);
  *(a1 + 136) = 9;
  *(a1 + 128) = a4;
  *(a1 + 144) = 0;
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant((a1 + 136));
  v7 = 1;
  std::vector<BOOL>::push_back(a1 + 32, &v7);
  return a1;
}

void sub_25A2BAE88(_Unwind_Exception *a1)
{
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v2);
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(v2);
  std::__function::__value_func<BOOL ()(int,nlohmann::json_abi_v3_11_3::detail::parse_event_t,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> &)>::~__value_func[abi:ne200100]((v1 + 12));
  v5 = v1[7];
  if (v5)
  {
    operator delete(v5);
  }

  v6 = v1[4];
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[2] = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<BOOL>::push_back(uint64_t result, _BYTE *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    result = std::vector<BOOL>::reserve(result, v7);
    v4 = v3[1];
  }

  v3[1] = v4 + 1;
  v8 = *v3;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *(v8 + 8 * v9) | v10;
  }

  else
  {
    v11 = *(v8 + 8 * v9) & ~v10;
  }

  *(v8 + 8 * v9) = v11;
  return result;
}

uint64_t std::vector<BOOL>::reserve(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      std::vector<BOOL>::__vallocate[abi:ne200100](&v2, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_25A2BB02C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<BOOL>::__construct_at_end<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (!v6 || ((v7 - 1) ^ (v6 - 1)) >= 0x40)
  {
    if (v7 >= 0x41)
    {
      v8 = (v7 - 1) >> 6;
    }

    else
    {
      v8 = 0;
    }

    *(*a1 + 8 * v8) = 0;
  }

  v20 = v4;
  v21 = v5;
  v9 = *(a2 + 8);
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *a1 + 8 * (v6 >> 6);
  v18 = *a2;
  v19 = v9;
  v16 = v10;
  v17 = v11;
  v14 = v12;
  v15 = v6 & 0x3F;
  std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(&v18, &v16, &v14, &v13);
}

void std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

uint64_t nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::start_object(uint64_t *a1, unint64_t a2)
{
  v4 = (a1 + 1);
  v16 = std::function<BOOL ()(int,nlohmann::json_abi_v3_11_3::detail::parse_event_t,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> &)>::operator()((a1 + 12), (a1[2] - a1[1]) >> 3, 0);
  std::vector<BOOL>::push_back((a1 + 4), &v16);
  v13.__r_.__value_.__s.__data_[0] = 1;
  v14 = nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<nlohmann::json_abi_v3_11_3::detail::value_t>(a1, &v13, 1);
  v15 = v5;
  std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> *,std::allocator<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> *>>::push_back[abi:ne200100](v4, &v15);
  if (a2 != -1)
  {
    v6 = *(a1[2] - 8);
    if (v6)
    {
      v7 = *v6;
      if (v7 > 2)
      {
        v8 = 1;
      }

      else
      {
        v8 = qword_25A9BE780[v7];
      }

      if (v8 < a2)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        std::to_string(&v12, a2);
        nlohmann::json_abi_v3_11_3::detail::concat<std::string,char const(&)[24],std::string>("excessive object size: ", &v12, &v13);
        v11 = *(a1[2] - 8);
        nlohmann::json_abi_v3_11_3::detail::out_of_range::create<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> *,0>(408, &v13, exception);
      }
    }
  }

  return 1;
}

void sub_25A2BB38C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::end_object(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (*(v2 - 8) && (std::function<BOOL ()(int,nlohmann::json_abi_v3_11_3::detail::parse_event_t,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> &)>::operator()(a1 + 96, ((v2 - *(a1 + 8)) >> 3) - 1, 1) & 1) == 0)
  {
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::basic_json(v16, (a1 + 136));
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::operator=(*(*(a1 + 16) - 8), v16);
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v16);
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(v16);
  }

  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 == v3)
  {
    nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::end_object();
  }

  v5 = *(a1 + 40);
  if (!v5)
  {
    nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::end_object();
  }

  *(a1 + 16) = v3 - 8;
  *(a1 + 40) = v5 - 1;
  if (v4 != v3 - 8)
  {
    v6 = *(v3 - 16);
    if (v6)
    {
      if (*v6 - 1 <= 1)
      {
        nlohmann::json_abi_v3_11_3::detail::iter_impl<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::iter_impl(&v13, v6);
        nlohmann::json_abi_v3_11_3::detail::iter_impl<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::set_begin(&v13);
        nlohmann::json_abi_v3_11_3::detail::iter_impl<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::iter_impl(&v10, *(*(a1 + 16) - 8));
        nlohmann::json_abi_v3_11_3::detail::iter_impl<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::set_end(&v10);
        if (!nlohmann::json_abi_v3_11_3::detail::iter_impl<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::operator==<nlohmann::json_abi_v3_11_3::detail::iter_impl<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,(decltype(nullptr))0>(&v13, &v10))
        {
          while (*nlohmann::json_abi_v3_11_3::detail::iter_impl<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::operator->(&v13) != 9)
          {
            nlohmann::json_abi_v3_11_3::detail::iter_impl<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::operator++(&v13);
            nlohmann::json_abi_v3_11_3::detail::iter_impl<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::iter_impl(&v10, *(*(a1 + 16) - 8));
            nlohmann::json_abi_v3_11_3::detail::iter_impl<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::set_end(&v10);
            if (nlohmann::json_abi_v3_11_3::detail::iter_impl<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::operator==<nlohmann::json_abi_v3_11_3::detail::iter_impl<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,(decltype(nullptr))0>(&v13, &v10))
            {
              return 1;
            }
          }

          v7 = *(*(a1 + 16) - 8);
          v10 = v13;
          v11 = v14;
          v12 = v15;
          nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::erase<nlohmann::json_abi_v3_11_3::detail::iter_impl<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,0>(v7, &v10, v9);
        }
      }
    }
  }

  return 1;
}

void sub_25A2BB654(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(va);
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(va);
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(va1);
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(va1);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::start_array(uint64_t *a1, unint64_t a2)
{
  v4 = (a1 + 1);
  v16 = std::function<BOOL ()(int,nlohmann::json_abi_v3_11_3::detail::parse_event_t,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> &)>::operator()((a1 + 12), (a1[2] - a1[1]) >> 3, 2);
  std::vector<BOOL>::push_back((a1 + 4), &v16);
  v13.__r_.__value_.__s.__data_[0] = 2;
  v14 = nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<nlohmann::json_abi_v3_11_3::detail::value_t>(a1, &v13, 1);
  v15 = v5;
  std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> *,std::allocator<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> *>>::push_back[abi:ne200100](v4, &v15);
  if (a2 != -1)
  {
    v6 = *(a1[2] - 8);
    if (v6)
    {
      v7 = *v6;
      if (v7 > 2)
      {
        v8 = 1;
      }

      else
      {
        v8 = qword_25A9BE780[v7];
      }

      if (v8 < a2)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        std::to_string(&v12, a2);
        nlohmann::json_abi_v3_11_3::detail::concat<std::string,char const(&)[23],std::string>("excessive array size: ", &v12, &v13);
        v11 = *(a1[2] - 8);
        nlohmann::json_abi_v3_11_3::detail::out_of_range::create<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> *,0>(408, &v13, exception);
      }
    }
  }

  return 1;
}

void sub_25A2BB7D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::end_array(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (*(v2 - 8) && (std::function<BOOL ()(int,nlohmann::json_abi_v3_11_3::detail::parse_event_t,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> &)>::operator()(a1 + 96, ((v2 - *(a1 + 8)) >> 3) - 1, 3) & 1) == 0)
  {
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::basic_json(v9, (a1 + 136));
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::operator=(*(*(a1 + 16) - 8), v9);
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v9);
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(v9);
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 == v4)
  {
    nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::end_array();
  }

  v6 = *(a1 + 40);
  if (!v6)
  {
    nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::end_array();
  }

  *(a1 + 16) = v4 - 8;
  *(a1 + 40) = v6 - 1;
  if (v5 == v4 - 8)
  {
    v3 = 1;
  }

  if ((v3 & 1) == 0)
  {
    v7 = *(v4 - 16);
    if (*v7 == 2)
    {
      std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::__base_destruct_at_end[abi:ne200100](*(v7 + 8), (*(*(v7 + 8) + 8) - 16));
    }
  }

  return 1;
}

uint64_t nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::parse_error<nlohmann::json_abi_v3_11_3::detail::out_of_range>(uint64_t a1, uint64_t a2, uint64_t a3, const nlohmann::json_abi_v3_11_3::detail::out_of_range *a4)
{
  *(a1 + 88) = 1;
  if (*(a1 + 128) == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v7 = nlohmann::json_abi_v3_11_3::detail::out_of_range::out_of_range(exception, a4);
  }

  return 0;
}

void nlohmann::json_abi_v3_11_3::detail::out_of_range::create<decltype(nullptr),0>(int a1@<W0>, uint64_t a2@<X1>, nlohmann::json_abi_v3_11_3::detail::exception *a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(v9, "out_of_range");
  nlohmann::json_abi_v3_11_3::detail::exception::name(a1, v9, &v11);
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  nlohmann::json_abi_v3_11_3::detail::concat<std::string,std::string,std::string,std::string const&>(&v11, __p, a2, &v12);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v12;
  }

  else
  {
    v6 = v12.__r_.__value_.__r.__words[0];
  }

  nlohmann::json_abi_v3_11_3::detail::exception::exception(a3, a1, v6);
  *a3 = &unk_286BEABE0;
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_25A2BBA74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

void nlohmann::json_abi_v3_11_3::detail::concat<std::string,char const(&)[26],std::string,char>(const char *a1@<X0>, uint64_t a2@<X1>, std::string::value_type *a3@<X2>, std::string *a4@<X8>)
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

  std::string::reserve(a4, v8 + v9 + 1);
  v10 = strlen(a1);
  std::string::append(a4, a1, v10);
  v11 = *(a2 + 23);
  if (v11 >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = *a2;
  }

  if (v11 >= 0)
  {
    v13 = *(a2 + 23);
  }

  else
  {
    v13 = *(a2 + 8);
  }

  std::string::append(a4, v12, v13);
  std::string::push_back(a4, *a3);
}

void sub_25A2BBB7C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void nlohmann::json_abi_v3_11_3::detail::out_of_range::~out_of_range(std::runtime_error *this)
{
  this->__vftable = &unk_286BEABA0;
  std::runtime_error::~runtime_error(this + 1);

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_286BEABA0;
  std::runtime_error::~runtime_error(this + 1);
  std::exception::~exception(this);

  JUMPOUT(0x25F851760);
}

uint64_t std::function<BOOL ()(int,nlohmann::json_abi_v3_11_3::detail::parse_event_t,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> &)>::operator()(uint64_t a1, int a2, char a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<nlohmann::json_abi_v3_11_3::detail::value_t>(uint64_t *a1, unsigned __int8 *a2, char a3)
{
  v3 = a1[5];
  if (!v3)
  {
    nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<nlohmann::json_abi_v3_11_3::detail::value_t>();
  }

  if ((*(a1[4] + (((v3 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v3 - 1)))
  {
    v6 = *a2;
    LOBYTE(v25) = v6;
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::json_value::json_value(&v25 + 1, v6);
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v25);
    if (a3 & 1) != 0 || (std::function<BOOL ()(int,nlohmann::json_abi_v3_11_3::detail::parse_event_t,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> &)>::operator()((a1 + 12), (a1[2] - a1[1]) >> 3, 5))
    {
      v7 = a1[2];
      if (a1[1] == v7)
      {
        v24 = v25;
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v25);
        LOBYTE(v25) = 0;
        *(&v25 + 1) = 0;
        v13 = 1;
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v24);
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::operator=(*a1, &v24);
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v24);
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(&v24);
        v14 = *a1;
LABEL_20:
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v25);
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(&v25);
        return v13;
      }

      v8 = *(v7 - 8);
      if (v8)
      {
        v9 = *v8;
        if (v9 == 2)
        {
          v10 = *(v8 + 1);
          v11 = *(v10 + 8);
          if (v11 >= *(v10 + 16))
          {
            v12 = std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::__emplace_back_slow_path<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>(v10, &v25);
          }

          else
          {
            *v11 = v25;
            nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v25);
            LOBYTE(v25) = 0;
            *(&v25 + 1) = 0;
            nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v11);
            v12 = (v11 + 16);
          }

          *(v10 + 8) = v12;
          v19 = *(*(*(a1[2] - 8) + 8) + 8) - 16;
          v13 = 1;
          goto LABEL_20;
        }

        if (v9 == 1)
        {
          v15 = a1[8];
          if (v15)
          {
            v16 = v15 - 1;
            v17 = *(a1[7] + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8));
            a1[8] = v16;
            if ((v17 >> v16))
            {
              if (!a1[10])
              {
                __assert_rtn("handle_value", "json.hpp", 7263, "object_element");
              }

              v23 = v25;
              nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v25);
              LOBYTE(v25) = 0;
              *(&v25 + 1) = 0;
              v13 = 1;
              nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v23);
              nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::operator=(a1[10], &v23);
              nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v23);
              nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(&v23);
              v18 = a1[10];
              goto LABEL_20;
            }

            goto LABEL_17;
          }

          v21 = "!key_keep_stack.empty()";
          v22 = 7254;
        }

        else
        {
          v21 = "ref_stack.back()->is_array() || ref_stack.back()->is_object()";
          v22 = 7242;
        }

        __assert_rtn("handle_value", "json.hpp", v22, v21);
      }
    }

LABEL_17:
    v13 = 0;
    goto LABEL_20;
  }

  return 0;
}

void sub_25A2BBEDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(va);
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(va);
  _Unwind_Resume(a1);
}

void std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> *,std::allocator<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> *>>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::function<void ()(void)> *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void nlohmann::json_abi_v3_11_3::detail::out_of_range::create<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> *,0>(int a1@<W0>, uint64_t a2@<X1>, nlohmann::json_abi_v3_11_3::detail::exception *a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(v9, "out_of_range");
  nlohmann::json_abi_v3_11_3::detail::exception::name(a1, v9, &v11);
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  nlohmann::json_abi_v3_11_3::detail::concat<std::string,std::string,std::string,std::string const&>(&v11, __p, a2, &v12);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v12;
  }

  else
  {
    v6 = v12.__r_.__value_.__r.__words[0];
  }

  nlohmann::json_abi_v3_11_3::detail::exception::exception(a3, a1, v6);
  *a3 = &unk_286BEABE0;
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_25A2BC0CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

std::string *nlohmann::json_abi_v3_11_3::detail::concat<std::string,char const(&)[24],std::string>@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  v6 = strlen(a1);
  v7 = *(a2 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  std::string::reserve(a3, v7 + v6);
  v8 = strlen(a1);
  std::string::append(a3, a1, v8);
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

  return std::string::append(a3, v10, v11);
}

void sub_25A2BC1C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::__emplace_back_slow_path<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>>(a1, v7);
  }

  v8 = (16 * v2);
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = *a2;
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(a2);
  *a2 = 0;
  *(a2 + 8) = 0;
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v8);
  *&v17 = v8 + 16;
  v9 = *(a1 + 8);
  v10 = &v8[*a1 - v9];
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::~__split_buffer(&v15);
  return v14;
}

void sub_25A2BC2F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v7 = a2;
    do
    {
      *v4 = *v7;
      nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v7);
      *v7 = 0;
      *(v7 + 1) = 0;
      nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v4);
      v7 += 16;
      v4 = v12 + 16;
      v12 += 16;
    }

    while (v7 != a3);
    v10 = 1;
    while (v6 != a3)
    {
      nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v6);
      nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(v6);
      v6 += 16;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,std::reverse_iterator<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>*>,std::reverse_iterator<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

uint64_t std::__allocator_destroy[abi:ne200100]<std::allocator<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,std::reverse_iterator<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>*>,std::reverse_iterator<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>*>>(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, unsigned __int8 *a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      v6 -= 16;
      nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v6);
      result = nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(v6);
    }

    while (v6 != a5);
  }

  return result;
}

uint64_t std::__split_buffer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = i - 16;
    *(a1 + 16) = i - 16;
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant((i - 16));
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(v4);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

unsigned __int8 *nlohmann::json_abi_v3_11_3::detail::iter_impl<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::operator->(unsigned __int8 **a1)
{
  result = *a1;
  if (!result)
  {
    nlohmann::json_abi_v3_11_3::detail::iter_impl<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::operator->();
  }

  v3 = *result;
  if (v3 == 2)
  {
    v5 = *(*(result + 1) + 8);
    result = a1[2];
    if (result == v5)
    {
      nlohmann::json_abi_v3_11_3::detail::iter_impl<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::operator->();
    }
  }

  else if (v3 == 1)
  {
    v4 = a1[1];
    if (v4 == (*(result + 1) + 8))
    {
      nlohmann::json_abi_v3_11_3::detail::iter_impl<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::operator->();
    }

    return v4 + 56;
  }

  else if (a1[3])
  {
    v6 = a1;
    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v9, "cannot get value");
    v8 = *v6;
    nlohmann::json_abi_v3_11_3::detail::invalid_iterator::create<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> *,0>(214, v9, exception);
  }

  return result;
}

void sub_25A2BC67C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

unsigned __int8 *nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::erase<nlohmann::json_abi_v3_11_3::detail::iter_impl<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,0>@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 **a2@<X1>, void *a3@<X8>)
{
  if (*a2 != a1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(&v20, "iterator does not fit current value");
    nlohmann::json_abi_v3_11_3::detail::invalid_iterator::create<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> *,0>(202, &v20, exception);
  }

  v6 = nlohmann::json_abi_v3_11_3::detail::iter_impl<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::iter_impl(a3, a1);
  nlohmann::json_abi_v3_11_3::detail::iter_impl<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::set_end(v6);
  v7 = *a1;
  if ((v7 - 3) < 6)
  {
    if (a2[3])
    {
      v17 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(&v20, "iterator out of range");
      nlohmann::json_abi_v3_11_3::detail::invalid_iterator::create<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> *,0>(205, &v20, v17);
    }

    if (v7 == 8)
    {
      v9 = (a1 + 8);
      v8 = *(a1 + 1);
      v15 = *v8;
      if (*v8)
      {
        v8[1] = v15;
        v10 = v15;
        goto LABEL_13;
      }
    }

    else
    {
      if (v7 != 3)
      {
LABEL_15:
        *a1 = 0;

        return nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(a1);
      }

      v9 = (a1 + 8);
      v8 = *(a1 + 1);
      if (*(v8 + 23) < 0)
      {
        v10 = *v8;
LABEL_13:
        operator delete(v10);
        v8 = *v9;
      }
    }

    operator delete(v8);
    *v9 = 0;
    goto LABEL_15;
  }

  if (v7 == 1)
  {
    result = std::__tree<std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>>>::erase(*(a1 + 1), a2[1]);
    a3[1] = result;
  }

  else
  {
    if (v7 != 2)
    {
      v18 = __cxa_allocate_exception(0x20uLL);
      v19 = nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::type_name(a1);
      nlohmann::json_abi_v3_11_3::detail::concat<std::string,char const(&)[25],char const*>("cannot use erase() with ", &v19, &v20);
      nlohmann::json_abi_v3_11_3::detail::type_error::create<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> *,0>(307, &v20, v18);
    }

    v11 = *(a1 + 1);
    v12 = a2[2];
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> *,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> *,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> *>(&v20, (v12 + 16), *(v11 + 8), v12);
    result = std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::__base_destruct_at_end[abi:ne200100](v11, v13);
    a3[2] = v12;
  }

  return result;
}

void sub_25A2BC910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

unsigned __int8 *nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::basic_json(unsigned __int8 *a1, unsigned __int8 *a2)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  *a1 = *a2;
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(a2);
  v4 = *a1;
  if (v4 > 4)
  {
    if (*a1 > 6u)
    {
      if (v4 != 7)
      {
        if (v4 == 8)
        {
          v7 = *(a2 + 1);
          nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::create<nlohmann::json_abi_v3_11_3::byte_container_with_subtype<std::vector<unsigned char>>,nlohmann::json_abi_v3_11_3::byte_container_with_subtype<std::vector<unsigned char>> const&>();
        }

        goto LABEL_20;
      }
    }

    else if (v4 != 5 && v4 != 6)
    {
      goto LABEL_20;
    }

    v6 = *(a2 + 1);
    goto LABEL_19;
  }

  if (*a1 <= 2u)
  {
    if (v4 == 1)
    {
      v8 = *(a2 + 1);
      nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::create<std::map<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,std::map<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>> const&>();
    }

    if (v4 == 2)
    {
      v5 = *(a2 + 1);
      nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::create<std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>> const&>();
    }

    goto LABEL_20;
  }

  if (v4 == 3)
  {
    v9 = *(a2 + 1);
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::create<std::string,std::string const&>();
  }

  if (v4 == 4)
  {
    v6 = a2[8];
LABEL_19:
    *(a1 + 1) = v6;
  }

LABEL_20:
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(a1);
  return a1;
}

void *std::map<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,std::__tree_node<std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

void *std::map<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,std::__tree_node<std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,void *> *,long>>>(void *result, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>> const&>(v5, (v5 + 1), v4 + 4);
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

void *std::__tree<std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>> const&>(void *a1, uint64_t a2, void **a3)
{
  result = *std::__tree<std::__value_type<std::string,mlx::core::array>,std::__map_value_compare<std::string,std::__value_type<std::string,mlx::core::array>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlx::core::array>>>::__find_equal<std::string>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>>>::__construct_node<std::pair<std::string const,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>> const&>();
  }

  return result;
}

void sub_25A2BCC94(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::basic_json(&this[1], a2 + 24);
  return this;
}

void sub_25A2BCD0C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,void *>>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant((a2 + 56));
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data((a2 + 56));
    if (*(a2 + 55) < 0)
    {
      operator delete(*(a2 + 32));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void std::__tree<std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>>>::destroy(a1, *(a2 + 1));
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(a2 + 56);
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(a2 + 56);
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::__init_with_size[abi:ne200100]<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>*,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25A2BCEEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>*,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>*,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::basic_json(v4, v6);
      v6 += 16;
      v4 = v11 + 16;
      v11 += 16;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

void std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::__base_destruct_at_end[abi:ne200100](uint64_t result, unsigned __int8 *a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; result = nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(i))
  {
    i -= 16;
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(i);
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25A2BD1F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(uint64_t *a1, int a2)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v7 = *a1;
      if (!*a1)
      {
        return;
      }

      if ((*(v7 + 23) & 0x80000000) == 0)
      {
        goto LABEL_55;
      }

      v25 = *v7;
    }

    else
    {
      if (a2 != 8)
      {
        return;
      }

      v7 = *a1;
      if (!*a1)
      {
        return;
      }

      v26 = *v7;
      if (!*v7)
      {
LABEL_55:
        operator delete(v7);
        return;
      }

      v7[1] = v26;
      v25 = v26;
    }

    operator delete(v25);
LABEL_54:
    v7 = *a1;
    goto LABEL_55;
  }

  if (a2 == 1)
  {
    v8 = *a1;
    if (!*a1)
    {
      return;
    }

    v29 = 0;
    v30 = 0;
    v28 = 0;
    std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::reserve(&v28, *(v8 + 16));
    v9 = *a1 + 8;
    v10 = **a1;
    if (v10 != v9)
    {
      v11 = v29;
      do
      {
        if (v11 >= v30)
        {
          v11 = std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::__emplace_back_slow_path<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>(&v28, (v10 + 56));
        }

        else
        {
          *v11 = *(v10 + 56);
          nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v10 + 56);
          v10[56] = 0;
          *(v10 + 8) = 0;
          nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v11);
          v11 += 16;
        }

        v29 = v11;
        v12 = *(v10 + 1);
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = *(v10 + 2);
            v14 = *v13 == v10;
            v10 = v13;
          }

          while (!v14);
        }

        v10 = v13;
      }

      while (v13 != v9);
    }

    goto LABEL_44;
  }

  if (a2 == 2)
  {
    v4 = *a1;
    if (*a1)
    {
      v29 = 0;
      v30 = 0;
      v28 = 0;
      std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::reserve(&v28, (v4[1] - *v4) >> 4);
      v5 = **a1;
      v6 = *(*a1 + 8);
      while (v5 != v6)
      {
        std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::push_back[abi:ne200100](&v28, v5);
        v5 += 16;
      }

LABEL_44:
      while (1)
      {
        v24 = v29;
        if (v28 == v29)
        {
          break;
        }

        v27 = *(v29 - 1);
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v29 - 16);
        *(v24 - 16) = 0;
        *(v24 - 1) = 0;
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v27);
        v15 = (v29 - 2);
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v29 - 16);
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(v15);
        v29 = v15;
        if (v27 == 1)
        {
          v19 = *(&v27 + 1);
          v20 = *(&v27 + 1) + 8;
          v21 = **(&v27 + 1);
          if (**(&v27 + 1) != *(&v27 + 1) + 8)
          {
            do
            {
              if (v15 >= v30)
              {
                v15 = std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::__emplace_back_slow_path<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>(&v28, (v21 + 56));
              }

              else
              {
                *v15 = *(v21 + 56);
                nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v21 + 56);
                v21[56] = 0;
                *(v21 + 8) = 0;
                nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v15);
                v15 += 16;
              }

              v29 = v15;
              v22 = *(v21 + 1);
              if (v22)
              {
                do
                {
                  v23 = v22;
                  v22 = *v22;
                }

                while (v22);
              }

              else
              {
                do
                {
                  v23 = *(v21 + 2);
                  v14 = *v23 == v21;
                  v21 = v23;
                }

                while (!v14);
              }

              v21 = v23;
            }

            while (v23 != v20);
            v19 = *(&v27 + 1);
          }

          std::__tree<std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>>>::destroy(v19, *(v19 + 8));
          *v19 = v19 + 8;
          *(v19 + 16) = 0;
          *(v19 + 8) = 0;
        }

        else if (v27 == 2)
        {
          v16 = *(&v27 + 1);
          v17 = **(&v27 + 1);
          v18 = *(*(&v27 + 1) + 8);
          if (**(&v27 + 1) != v18)
          {
            do
            {
              std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::push_back[abi:ne200100](&v28, v17);
              v17 += 16;
            }

            while (v17 != v18);
            v16 = *(&v27 + 1);
            v17 = **(&v27 + 1);
          }

          std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::__base_destruct_at_end[abi:ne200100](v16, v17);
        }

        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v27);
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(&v27);
      }

      *&v27 = &v28;
      std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::__destroy_vector::operator()[abi:ne200100](&v27);
      if (a2 == 1)
      {
        std::__tree<std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>>>::destroy(*a1, *(*a1 + 8));
      }

      else
      {
        v28 = *a1;
        std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::__destroy_vector::operator()[abi:ne200100](&v28);
      }

      goto LABEL_54;
    }
  }
}

void sub_25A2BD610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, char a12)
{
  a9 = &a12;
  std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_25A2BD6FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 16))
  {
    result = std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::__emplace_back_slow_path<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>(a1, a2);
  }

  else
  {
    *v4 = *a2;
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(a2);
    *a2 = 0;
    *(a2 + 8) = 0;
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v4);
    result = (v4 + 16);
  }

  *(a1 + 8) = result;
  return result;
}

void nlohmann::json_abi_v3_11_3::detail::invalid_iterator::create<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> *,0>(int a1@<W0>, uint64_t a2@<X1>, nlohmann::json_abi_v3_11_3::detail::exception *a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(v9, "invalid_iterator");
  nlohmann::json_abi_v3_11_3::detail::exception::name(a1, v9, &v11);
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  nlohmann::json_abi_v3_11_3::detail::concat<std::string,std::string,std::string,std::string const&>(&v11, __p, a2, &v12);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v12;
  }

  else
  {
    v6 = v12.__r_.__value_.__r.__words[0];
  }

  nlohmann::json_abi_v3_11_3::detail::exception::exception(a3, a1, v6);
  *a3 = &unk_286BEAC20;
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_25A2BD880(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

void nlohmann::json_abi_v3_11_3::detail::invalid_iterator::~invalid_iterator(std::runtime_error *this)
{
  this->__vftable = &unk_286BEABA0;
  std::runtime_error::~runtime_error(this + 1);

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_286BEABA0;
  std::runtime_error::~runtime_error(this + 1);
  std::exception::~exception(this);

  JUMPOUT(0x25F851760);
}

void nlohmann::json_abi_v3_11_3::detail::type_error::create<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> *,0>(int a1@<W0>, uint64_t a2@<X1>, nlohmann::json_abi_v3_11_3::detail::exception *a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(v9, "type_error");
  nlohmann::json_abi_v3_11_3::detail::exception::name(a1, v9, &v11);
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  nlohmann::json_abi_v3_11_3::detail::concat<std::string,std::string,std::string,std::string const&>(&v11, __p, a2, &v12);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v12;
  }

  else
  {
    v6 = v12.__r_.__value_.__r.__words[0];
  }

  nlohmann::json_abi_v3_11_3::detail::exception::exception(a3, a1, v6);
  *a3 = &unk_286BEAC60;
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_25A2BDA94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

std::string *nlohmann::json_abi_v3_11_3::detail::concat<std::string,char const(&)[25],char const*>@<X0>(const char *a1@<X0>, const char **a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  v6 = strlen(a1);
  v7 = strlen(*a2);
  std::string::reserve(a3, v7 + v6);
  v8 = strlen(a1);
  std::string::append(a3, a1, v8);
  v9 = *a2;
  v10 = strlen(v9);
  return std::string::append(a3, v9, v10);
}

void sub_25A2BDB7C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

const char *nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::type_name(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 9)
  {
    return "number";
  }

  else
  {
    return (&off_2799214A0)[v1];
  }
}

void nlohmann::json_abi_v3_11_3::detail::type_error::~type_error(std::runtime_error *this)
{
  this->__vftable = &unk_286BEABA0;
  std::runtime_error::~runtime_error(this + 1);

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_286BEABA0;
  std::runtime_error::~runtime_error(this + 1);
  std::exception::~exception(this);

  JUMPOUT(0x25F851760);
}

uint64_t *std::__tree<std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>>>::erase(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>>>::__remove_node_pointer(a1, a2);
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant((a2 + 56));
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data((a2 + 56));
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  operator delete(a2);
  return v3;
}

uint64_t *std::__tree<std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
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
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> *,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> *,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v8 = *v5;
      nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v5);
      *v5 = 0;
      *(v5 + 1) = 0;
      nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v8);
      nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::operator=(a4, &v8);
      nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v8);
      nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(&v8);
      v5 += 16;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::basic_json<std::string&,std::string,0>(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  nlohmann::json_abi_v3_11_3::detail::external_constructor<(nlohmann::json_abi_v3_11_3::detail::value_t)3>::construct<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>(a1);
}

void nlohmann::json_abi_v3_11_3::detail::external_constructor<(nlohmann::json_abi_v3_11_3::detail::value_t)3>::construct<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>(uint64_t *a1)
{
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(a1 + 1, *a1);
  *a1 = 3;
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::create<std::string,std::string const&>();
}

uint64_t std::__tree<std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void **a2)
{
  result = *std::__tree<std::__value_type<std::string,mlx::core::array>,std::__map_value_compare<std::string,std::__value_type<std::string,mlx::core::array>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlx::core::array>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void sub_25A2BE334(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

std::string *_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN8nlohmann16json_abi_v3_11_310basic_jsonINS_3mapENS_6vectorES6_bxydS4_NS9_14adl_serializerENSC_IhNS4_IhEEEEvEEEC2B8ne200100IJRS7_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSL_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSU_IJXspT2_EEEE(std::string *this, __int128 **a2)
{
  v3 = *a2;
  if (*(*a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    this->__r_.__value_.__r.__words[2] = *(v3 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  this[1].__r_.__value_.__s.__data_[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&this[1]);
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&this[1]);
  return this;
}

std::string *nlohmann::json_abi_v3_11_3::detail::concat<std::string,char const(&)[23],std::string>@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  v6 = strlen(a1);
  v7 = *(a2 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  std::string::reserve(a3, v7 + v6);
  v8 = strlen(a1);
  std::string::append(a3, a1, v8);
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

  return std::string::append(a3, v10, v11);
}

void sub_25A2BE458(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

nlohmann::json_abi_v3_11_3::detail::out_of_range *nlohmann::json_abi_v3_11_3::detail::out_of_range::out_of_range(nlohmann::json_abi_v3_11_3::detail::out_of_range *this, const nlohmann::json_abi_v3_11_3::detail::out_of_range *a2)
{
  *this = &unk_286BEABA0;
  *(this + 2) = *(a2 + 2);
  MEMORY[0x25F851110](this + 16, a2 + 16);
  *this = &unk_286BEABE0;
  return this;
}

uint64_t nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<double &>(uint64_t *a1, double *a2, char a3)
{
  v3 = a1[5];
  if (!v3)
  {
    nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<nlohmann::json_abi_v3_11_3::detail::value_t>();
  }

  if ((*(a1[4] + (((v3 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v3 - 1)))
  {
    v24 = 0uLL;
    nlohmann::json_abi_v3_11_3::detail::external_constructor<(nlohmann::json_abi_v3_11_3::detail::value_t)7>::construct<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>(&v24, *a2);
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v24);
    if (a3 & 1) != 0 || (std::function<BOOL ()(int,nlohmann::json_abi_v3_11_3::detail::parse_event_t,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> &)>::operator()((a1 + 12), (a1[2] - a1[1]) >> 3, 5))
    {
      v6 = a1[2];
      if (a1[1] == v6)
      {
        v23 = v24;
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v24);
        LOBYTE(v24) = 0;
        *(&v24 + 1) = 0;
        v12 = 1;
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v23);
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::operator=(*a1, &v23);
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v23);
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(&v23);
        v13 = *a1;
LABEL_20:
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v24);
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(&v24);
        return v12;
      }

      v7 = *(v6 - 8);
      if (v7)
      {
        v8 = *v7;
        if (v8 == 2)
        {
          v9 = *(v7 + 1);
          v10 = *(v9 + 8);
          if (v10 >= *(v9 + 16))
          {
            v11 = std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::__emplace_back_slow_path<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>(v9, &v24);
          }

          else
          {
            *v10 = v24;
            nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v24);
            LOBYTE(v24) = 0;
            *(&v24 + 1) = 0;
            nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v10);
            v11 = (v10 + 16);
          }

          *(v9 + 8) = v11;
          v18 = *(*(*(a1[2] - 8) + 8) + 8) - 16;
          v12 = 1;
          goto LABEL_20;
        }

        if (v8 == 1)
        {
          v14 = a1[8];
          if (v14)
          {
            v15 = v14 - 1;
            v16 = *(a1[7] + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8));
            a1[8] = v15;
            if ((v16 >> v15))
            {
              if (!a1[10])
              {
                __assert_rtn("handle_value", "json.hpp", 7263, "object_element");
              }

              v22 = v24;
              nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v24);
              LOBYTE(v24) = 0;
              *(&v24 + 1) = 0;
              v12 = 1;
              nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v22);
              nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::operator=(a1[10], &v22);
              nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v22);
              nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(&v22);
              v17 = a1[10];
              goto LABEL_20;
            }

            goto LABEL_17;
          }

          v20 = "!key_keep_stack.empty()";
          v21 = 7254;
        }

        else
        {
          v20 = "ref_stack.back()->is_array() || ref_stack.back()->is_object()";
          v21 = 7242;
        }

        __assert_rtn("handle_value", "json.hpp", v21, v20);
      }
    }

LABEL_17:
    v12 = 0;
    goto LABEL_20;
  }

  return 0;
}

void sub_25A2BE774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(va);
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *nlohmann::json_abi_v3_11_3::detail::external_constructor<(nlohmann::json_abi_v3_11_3::detail::value_t)7>::construct<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>(uint64_t *a1, double a2)
{
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(a1 + 1, *a1);
  *a1 = 7;
  *(a1 + 1) = a2;

  return nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(a1);
}

uint64_t nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<BOOL &>(uint64_t *a1, unsigned __int8 *a2, char a3)
{
  v3 = a1[5];
  if (!v3)
  {
    nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<nlohmann::json_abi_v3_11_3::detail::value_t>();
  }

  if ((*(a1[4] + (((v3 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v3 - 1)))
  {
    v24 = 0uLL;
    nlohmann::json_abi_v3_11_3::detail::external_constructor<(nlohmann::json_abi_v3_11_3::detail::value_t)4>::construct<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>(&v24, *a2);
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v24);
    if (a3 & 1) != 0 || (std::function<BOOL ()(int,nlohmann::json_abi_v3_11_3::detail::parse_event_t,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> &)>::operator()((a1 + 12), (a1[2] - a1[1]) >> 3, 5))
    {
      v6 = a1[2];
      if (a1[1] == v6)
      {
        v23 = v24;
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v24);
        LOBYTE(v24) = 0;
        *(&v24 + 1) = 0;
        v12 = 1;
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v23);
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::operator=(*a1, &v23);
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v23);
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(&v23);
        v13 = *a1;
LABEL_20:
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v24);
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(&v24);
        return v12;
      }

      v7 = *(v6 - 8);
      if (v7)
      {
        v8 = *v7;
        if (v8 == 2)
        {
          v9 = *(v7 + 1);
          v10 = *(v9 + 8);
          if (v10 >= *(v9 + 16))
          {
            v11 = std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::__emplace_back_slow_path<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>(v9, &v24);
          }

          else
          {
            *v10 = v24;
            nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v24);
            LOBYTE(v24) = 0;
            *(&v24 + 1) = 0;
            nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v10);
            v11 = (v10 + 16);
          }

          *(v9 + 8) = v11;
          v18 = *(*(*(a1[2] - 8) + 8) + 8) - 16;
          v12 = 1;
          goto LABEL_20;
        }

        if (v8 == 1)
        {
          v14 = a1[8];
          if (v14)
          {
            v15 = v14 - 1;
            v16 = *(a1[7] + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8));
            a1[8] = v15;
            if ((v16 >> v15))
            {
              if (!a1[10])
              {
                __assert_rtn("handle_value", "json.hpp", 7263, "object_element");
              }

              v22 = v24;
              nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v24);
              LOBYTE(v24) = 0;
              *(&v24 + 1) = 0;
              v12 = 1;
              nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v22);
              nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::operator=(a1[10], &v22);
              nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v22);
              nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(&v22);
              v17 = a1[10];
              goto LABEL_20;
            }

            goto LABEL_17;
          }

          v20 = "!key_keep_stack.empty()";
          v21 = 7254;
        }

        else
        {
          v20 = "ref_stack.back()->is_array() || ref_stack.back()->is_object()";
          v21 = 7242;
        }

        __assert_rtn("handle_value", "json.hpp", v21, v20);
      }
    }

LABEL_17:
    v12 = 0;
    goto LABEL_20;
  }

  return 0;
}

void sub_25A2BEA84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(va);
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *nlohmann::json_abi_v3_11_3::detail::external_constructor<(nlohmann::json_abi_v3_11_3::detail::value_t)4>::construct<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>(uint64_t *a1, unsigned int a2)
{
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(a1 + 1, *a1);
  *a1 = 4;
  a1[1] = a2;

  return nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(a1);
}

uint64_t nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<decltype(nullptr)>(uint64_t *a1, uint64_t a2, char a3)
{
  v3 = a1[5];
  if (!v3)
  {
    nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<nlohmann::json_abi_v3_11_3::detail::value_t>();
  }

  if ((*(a1[4] + (((v3 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v3 - 1)))
  {
    LOBYTE(v24) = 0;
    *(&v24 + 1) = 0;
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v24);
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v24);
    if (a3 & 1) != 0 || (std::function<BOOL ()(int,nlohmann::json_abi_v3_11_3::detail::parse_event_t,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> &)>::operator()((a1 + 12), (a1[2] - a1[1]) >> 3, 5))
    {
      v6 = a1[2];
      if (a1[1] == v6)
      {
        v23 = v24;
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v24);
        LOBYTE(v24) = 0;
        *(&v24 + 1) = 0;
        v12 = 1;
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v23);
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::operator=(*a1, &v23);
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v23);
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(&v23);
        v13 = *a1;
LABEL_20:
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v24);
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(&v24);
        return v12;
      }

      v7 = *(v6 - 8);
      if (v7)
      {
        v8 = *v7;
        if (v8 == 2)
        {
          v9 = *(v7 + 1);
          v10 = *(v9 + 8);
          if (v10 >= *(v9 + 16))
          {
            v11 = std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::__emplace_back_slow_path<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>(v9, &v24);
          }

          else
          {
            *v10 = v24;
            nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v24);
            LOBYTE(v24) = 0;
            *(&v24 + 1) = 0;
            nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v10);
            v11 = (v10 + 16);
          }

          *(v9 + 8) = v11;
          v18 = *(*(*(a1[2] - 8) + 8) + 8) - 16;
          v12 = 1;
          goto LABEL_20;
        }

        if (v8 == 1)
        {
          v14 = a1[8];
          if (v14)
          {
            v15 = v14 - 1;
            v16 = *(a1[7] + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8));
            a1[8] = v15;
            if ((v16 >> v15))
            {
              if (!a1[10])
              {
                __assert_rtn("handle_value", "json.hpp", 7263, "object_element");
              }

              v22 = v24;
              nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v24);
              LOBYTE(v24) = 0;
              *(&v24 + 1) = 0;
              v12 = 1;
              nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v22);
              nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::operator=(a1[10], &v22);
              nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v22);
              nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(&v22);
              v17 = a1[10];
              goto LABEL_20;
            }

            goto LABEL_17;
          }

          v20 = "!key_keep_stack.empty()";
          v21 = 7254;
        }

        else
        {
          v20 = "ref_stack.back()->is_array() || ref_stack.back()->is_object()";
          v21 = 7242;
        }

        __assert_rtn("handle_value", "json.hpp", v21, v20);
      }
    }

LABEL_17:
    v12 = 0;
    goto LABEL_20;
  }

  return 0;
}

void sub_25A2BED94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(va);
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<long long &>(uint64_t *a1, uint64_t *a2, char a3)
{
  v3 = a1[5];
  if (!v3)
  {
    nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<nlohmann::json_abi_v3_11_3::detail::value_t>();
  }

  if ((*(a1[4] + (((v3 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v3 - 1)))
  {
    v24 = 0uLL;
    nlohmann::json_abi_v3_11_3::detail::external_constructor<(nlohmann::json_abi_v3_11_3::detail::value_t)5>::construct<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>(&v24, *a2);
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v24);
    if (a3 & 1) != 0 || (std::function<BOOL ()(int,nlohmann::json_abi_v3_11_3::detail::parse_event_t,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> &)>::operator()((a1 + 12), (a1[2] - a1[1]) >> 3, 5))
    {
      v6 = a1[2];
      if (a1[1] == v6)
      {
        v23 = v24;
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v24);
        LOBYTE(v24) = 0;
        *(&v24 + 1) = 0;
        v12 = 1;
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v23);
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::operator=(*a1, &v23);
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v23);
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(&v23);
        v13 = *a1;
LABEL_20:
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v24);
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(&v24);
        return v12;
      }

      v7 = *(v6 - 8);
      if (v7)
      {
        v8 = *v7;
        if (v8 == 2)
        {
          v9 = *(v7 + 1);
          v10 = *(v9 + 8);
          if (v10 >= *(v9 + 16))
          {
            v11 = std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::__emplace_back_slow_path<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>(v9, &v24);
          }

          else
          {
            *v10 = v24;
            nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v24);
            LOBYTE(v24) = 0;
            *(&v24 + 1) = 0;
            nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v10);
            v11 = (v10 + 16);
          }

          *(v9 + 8) = v11;
          v18 = *(*(*(a1[2] - 8) + 8) + 8) - 16;
          v12 = 1;
          goto LABEL_20;
        }

        if (v8 == 1)
        {
          v14 = a1[8];
          if (v14)
          {
            v15 = v14 - 1;
            v16 = *(a1[7] + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8));
            a1[8] = v15;
            if ((v16 >> v15))
            {
              if (!a1[10])
              {
                __assert_rtn("handle_value", "json.hpp", 7263, "object_element");
              }

              v22 = v24;
              nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v24);
              LOBYTE(v24) = 0;
              *(&v24 + 1) = 0;
              v12 = 1;
              nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v22);
              nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::operator=(a1[10], &v22);
              nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v22);
              nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(&v22);
              v17 = a1[10];
              goto LABEL_20;
            }

            goto LABEL_17;
          }

          v20 = "!key_keep_stack.empty()";
          v21 = 7254;
        }

        else
        {
          v20 = "ref_stack.back()->is_array() || ref_stack.back()->is_object()";
          v21 = 7242;
        }

        __assert_rtn("handle_value", "json.hpp", v21, v20);
      }
    }

LABEL_17:
    v12 = 0;
    goto LABEL_20;
  }

  return 0;
}

void sub_25A2BF048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(va);
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *nlohmann::json_abi_v3_11_3::detail::external_constructor<(nlohmann::json_abi_v3_11_3::detail::value_t)5>::construct<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>(uint64_t *a1, uint64_t a2)
{
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(a1 + 1, *a1);
  *a1 = 5;
  a1[1] = a2;

  return nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(a1);
}

uint64_t nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<std::string&>(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (!v1)
  {
    nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<nlohmann::json_abi_v3_11_3::detail::value_t>();
  }

  if ((*(*(a1 + 32) + (((v1 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v1 - 1)))
  {
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::basic_json<std::string&,std::string,0>(&v3);
  }

  return 0;
}

void sub_25A2BF33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(va);
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<unsigned long long &>(uint64_t *a1, uint64_t *a2, char a3)
{
  v3 = a1[5];
  if (!v3)
  {
    nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<nlohmann::json_abi_v3_11_3::detail::value_t>();
  }

  if ((*(a1[4] + (((v3 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v3 - 1)))
  {
    v24 = 0uLL;
    nlohmann::json_abi_v3_11_3::detail::external_constructor<(nlohmann::json_abi_v3_11_3::detail::value_t)6>::construct<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>(&v24, *a2);
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v24);
    if (a3 & 1) != 0 || (std::function<BOOL ()(int,nlohmann::json_abi_v3_11_3::detail::parse_event_t,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> &)>::operator()((a1 + 12), (a1[2] - a1[1]) >> 3, 5))
    {
      v6 = a1[2];
      if (a1[1] == v6)
      {
        v23 = v24;
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v24);
        LOBYTE(v24) = 0;
        *(&v24 + 1) = 0;
        v12 = 1;
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v23);
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::operator=(*a1, &v23);
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v23);
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(&v23);
        v13 = *a1;
LABEL_20:
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v24);
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(&v24);
        return v12;
      }

      v7 = *(v6 - 8);
      if (v7)
      {
        v8 = *v7;
        if (v8 == 2)
        {
          v9 = *(v7 + 1);
          v10 = *(v9 + 8);
          if (v10 >= *(v9 + 16))
          {
            v11 = std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::__emplace_back_slow_path<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>(v9, &v24);
          }

          else
          {
            *v10 = v24;
            nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v24);
            LOBYTE(v24) = 0;
            *(&v24 + 1) = 0;
            nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v10);
            v11 = (v10 + 16);
          }

          *(v9 + 8) = v11;
          v18 = *(*(*(a1[2] - 8) + 8) + 8) - 16;
          v12 = 1;
          goto LABEL_20;
        }

        if (v8 == 1)
        {
          v14 = a1[8];
          if (v14)
          {
            v15 = v14 - 1;
            v16 = *(a1[7] + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8));
            a1[8] = v15;
            if ((v16 >> v15))
            {
              if (!a1[10])
              {
                __assert_rtn("handle_value", "json.hpp", 7263, "object_element");
              }

              v22 = v24;
              nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v24);
              LOBYTE(v24) = 0;
              *(&v24 + 1) = 0;
              v12 = 1;
              nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v22);
              nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::operator=(a1[10], &v22);
              nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v22);
              nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(&v22);
              v17 = a1[10];
              goto LABEL_20;
            }

            goto LABEL_17;
          }

          v20 = "!key_keep_stack.empty()";
          v21 = 7254;
        }

        else
        {
          v20 = "ref_stack.back()->is_array() || ref_stack.back()->is_object()";
          v21 = 7242;
        }

        __assert_rtn("handle_value", "json.hpp", v21, v20);
      }
    }

LABEL_17:
    v12 = 0;
    goto LABEL_20;
  }

  return 0;
}

void sub_25A2BF5F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(va);
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *nlohmann::json_abi_v3_11_3::detail::external_constructor<(nlohmann::json_abi_v3_11_3::detail::value_t)6>::construct<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>(uint64_t *a1, uint64_t a2)
{
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(a1 + 1, *a1);
  *a1 = 6;
  a1[1] = a2;

  return nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(a1);
}

nlohmann::json_abi_v3_11_3::detail::parse_error *nlohmann::json_abi_v3_11_3::detail::parse_error::parse_error(nlohmann::json_abi_v3_11_3::detail::parse_error *this, const nlohmann::json_abi_v3_11_3::detail::parse_error *a2)
{
  *this = &unk_286BEABA0;
  *(this + 2) = *(a2 + 2);
  MEMORY[0x25F851110](this + 16, a2 + 16);
  *this = &unk_286BEACA0;
  *(this + 4) = *(a2 + 4);
  return this;
}

void nlohmann::json_abi_v3_11_3::detail::parse_error::position_string(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::to_string(&v11, *(a1 + 16) + 1);
  std::to_string(&__p, *(a1 + 8));
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  size = HIBYTE(v11.__r_.__value_.__r.__words[2]);
  if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v11.__r_.__value_.__l.__size_;
  }

  v5 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v5 = __p.__r_.__value_.__l.__size_;
  }

  std::string::reserve(a2, size + v5 + 18);
  std::string::append(a2, " at line ", 9uLL);
  if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v11;
  }

  else
  {
    v6 = v11.__r_.__value_.__r.__words[0];
  }

  if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = HIBYTE(v11.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v7 = v11.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v6, v7);
  std::string::append(a2, ", column ", 9uLL);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, p_p, v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_25A2BF864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const char *nlohmann::json_abi_v3_11_3::detail::lexer_base<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::token_type_name(unsigned int a1)
{
  if (a1 > 0x10)
  {
    return "unknown token";
  }

  else
  {
    return (&off_2799214F0)[a1];
  }
}

uint64_t nlohmann::json_abi_v3_11_3::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::~json_sax_dom_callback_parser(uint64_t a1)
{
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant((a1 + 136));
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data((a1 + 136));
  std::__function::__value_func<BOOL ()(int,nlohmann::json_abi_v3_11_3::detail::parse_event_t,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> &)>::~__value_func[abi:ne200100](a1 + 96);
  v2 = *(a1 + 56);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    *(a1 + 16) = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::end_object(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (*(a1 + 8) == v1)
  {
    nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::end_object();
  }

  v3 = *(v1 - 8);
  v2 = v1 - 8;
  if (*v3 != 1)
  {
    nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::end_object();
  }

  *(a1 + 16) = v2;
  return 1;
}

uint64_t nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::key(void *a1, void **a2)
{
  v2 = a1[2];
  if (a1[1] == v2)
  {
    nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::key();
  }

  v3 = *(v2 - 8);
  if (*v3 != 1)
  {
    nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::key();
  }

  a1[4] = std::__tree<std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(*(v3 + 8), a2) + 56;
  return 1;
}

uint64_t nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::end_array(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (*(a1 + 8) == v1)
  {
    nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::end_array();
  }

  v3 = *(v1 - 8);
  v2 = v1 - 8;
  if (*v3 != 2)
  {
    nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::end_array();
  }

  *(a1 + 16) = v2;
  return 1;
}

uint64_t nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::parse_error<nlohmann::json_abi_v3_11_3::detail::out_of_range>(uint64_t a1, uint64_t a2, uint64_t a3, const nlohmann::json_abi_v3_11_3::detail::out_of_range *a4)
{
  *(a1 + 40) = 1;
  if (*(a1 + 41) == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v7 = nlohmann::json_abi_v3_11_3::detail::out_of_range::out_of_range(exception, a4);
  }

  return 0;
}

uint64_t nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<nlohmann::json_abi_v3_11_3::detail::value_t>(uint64_t *a1, unsigned __int8 *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v9 = *a2;
    LOBYTE(v14) = v9;
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::json_value::json_value(&v15, v9);
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v14);
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::operator=(*a1, &v14);
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v14);
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(&v14);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 8);
    v5 = *v4;
    if (v5 == 2)
    {
      v6 = *(v4 + 1);
      v7 = *(v6 + 8);
      if (v7 >= *(v6 + 16))
      {
        v8 = std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::__emplace_back_slow_path<nlohmann::json_abi_v3_11_3::detail::value_t>(v6, a2);
      }

      else
      {
        std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::__construct_one_at_end[abi:ne200100]<nlohmann::json_abi_v3_11_3::detail::value_t>(v6, a2);
        v8 = v7 + 16;
      }

      *(v6 + 8) = v8;
      return *(*(*(a1[2] - 8) + 8) + 8) - 16;
    }

    else
    {
      if (v5 != 1)
      {
        nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<nlohmann::json_abi_v3_11_3::detail::value_t>();
      }

      if (!a1[4])
      {
        nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<nlohmann::json_abi_v3_11_3::detail::value_t>();
      }

      v11 = *a2;
      LOBYTE(v12) = v11;
      nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::json_value::json_value(&v13, v11);
      nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v12);
      nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::operator=(a1[4], &v12);
      nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(&v12);
      nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(&v12);
      return a1[4];
    }
  }
}

unsigned __int8 *std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::__construct_one_at_end[abi:ne200100]<nlohmann::json_abi_v3_11_3::detail::value_t>(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  v3 = *(a1 + 8);
  *v3 = v4;
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::json_value::json_value((v3 + 8), v4);
  result = nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v3);
  *(a1 + 8) = v3 + 16;
  return result;
}

uint64_t std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::__emplace_back_slow_path<nlohmann::json_abi_v3_11_3::detail::value_t>(uint64_t a1, unsigned __int8 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
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

  v19 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>>(a1, v7);
  }

  v8 = 16 * v2;
  v16 = 0;
  v17 = v8;
  v18 = v8;
  v9 = *a2;
  *v8 = v9;
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::json_value::json_value((v8 + 8), v9);
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v8);
  *&v18 = v18 + 16;
  v10 = *(a1 + 8);
  v11 = (v17 + *a1 - v10);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::~__split_buffer(&v16);
  return v15;
}

void sub_25A2BFD10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<double &>(uint64_t *a1, double *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v11[0] = 0;
    v11[1] = 0;
    nlohmann::json_abi_v3_11_3::detail::external_constructor<(nlohmann::json_abi_v3_11_3::detail::value_t)7>::construct<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>(v11, *a2);
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v11);
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::operator=(*a1, v11);
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v11);
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(v11);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 8);
    v5 = *v4;
    if (v5 == 2)
    {
      v6 = *(v4 + 1);
      v7 = *(v6 + 8);
      if (v7 >= *(v6 + 16))
      {
        v8 = std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::__emplace_back_slow_path<double &>(v6, a2);
      }

      else
      {
        *v7 = 0;
        v7[1] = 0;
        nlohmann::json_abi_v3_11_3::detail::external_constructor<(nlohmann::json_abi_v3_11_3::detail::value_t)7>::construct<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>(v7, *a2);
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v7);
        v8 = (v7 + 2);
      }

      *(v6 + 8) = v8;
      return *(*(*(a1[2] - 8) + 8) + 8) - 16;
    }

    else
    {
      if (v5 != 1)
      {
        nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<nlohmann::json_abi_v3_11_3::detail::value_t>();
      }

      if (!a1[4])
      {
        nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<nlohmann::json_abi_v3_11_3::detail::value_t>();
      }

      v10[0] = 0;
      v10[1] = 0;
      nlohmann::json_abi_v3_11_3::detail::external_constructor<(nlohmann::json_abi_v3_11_3::detail::value_t)7>::construct<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>(v10, *a2);
      nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v10);
      nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::operator=(a1[4], v10);
      nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v10);
      nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(v10);
      return a1[4];
    }
  }
}

uint64_t std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::__emplace_back_slow_path<double &>(uint64_t a1, double *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>>(a1, v7);
  }

  v8 = (16 * v2);
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = 0;
  v8[1] = 0;
  nlohmann::json_abi_v3_11_3::detail::external_constructor<(nlohmann::json_abi_v3_11_3::detail::value_t)7>::construct<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>(v8, *a2);
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v8);
  *&v17 = v8 + 2;
  v9 = *(a1 + 8);
  v10 = v8 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::~__split_buffer(&v15);
  return v14;
}

void sub_25A2BFF6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<BOOL &>(uint64_t *a1, unsigned __int8 *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v11[0] = 0;
    v11[1] = 0;
    nlohmann::json_abi_v3_11_3::detail::external_constructor<(nlohmann::json_abi_v3_11_3::detail::value_t)4>::construct<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>(v11, *a2);
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v11);
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::operator=(*a1, v11);
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v11);
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(v11);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 8);
    v5 = *v4;
    if (v5 == 2)
    {
      v6 = *(v4 + 1);
      v7 = *(v6 + 8);
      if (v7 >= *(v6 + 16))
      {
        v8 = std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::__emplace_back_slow_path<BOOL &>(v6, a2);
      }

      else
      {
        *v7 = 0;
        v7[1] = 0;
        nlohmann::json_abi_v3_11_3::detail::external_constructor<(nlohmann::json_abi_v3_11_3::detail::value_t)4>::construct<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>(v7, *a2);
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v7);
        v8 = (v7 + 2);
      }

      *(v6 + 8) = v8;
      return *(*(*(a1[2] - 8) + 8) + 8) - 16;
    }

    else
    {
      if (v5 != 1)
      {
        nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<nlohmann::json_abi_v3_11_3::detail::value_t>();
      }

      if (!a1[4])
      {
        nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<nlohmann::json_abi_v3_11_3::detail::value_t>();
      }

      v10[0] = 0;
      v10[1] = 0;
      nlohmann::json_abi_v3_11_3::detail::external_constructor<(nlohmann::json_abi_v3_11_3::detail::value_t)4>::construct<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>(v10, *a2);
      nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v10);
      nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::operator=(a1[4], v10);
      nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v10);
      nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(v10);
      return a1[4];
    }
  }
}

uint64_t std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::__emplace_back_slow_path<BOOL &>(uint64_t a1, unsigned __int8 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>>(a1, v7);
  }

  v8 = (16 * v2);
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = 0;
  v8[1] = 0;
  nlohmann::json_abi_v3_11_3::detail::external_constructor<(nlohmann::json_abi_v3_11_3::detail::value_t)4>::construct<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>(v8, *a2);
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v8);
  *&v17 = v8 + 2;
  v9 = *(a1 + 8);
  v10 = v8 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::~__split_buffer(&v15);
  return v14;
}

void sub_25A2C01C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<decltype(nullptr)>(uint64_t *a1)
{
  v2 = a1[2];
  if (a1[1] == v2)
  {
    LOBYTE(v10[0]) = 0;
    v10[1] = 0;
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v10);
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v10);
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::operator=(*a1, v10);
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v10);
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(v10);
    return *a1;
  }

  else
  {
    v3 = *(v2 - 8);
    v4 = *v3;
    if (v4 == 2)
    {
      v5 = *(v3 + 1);
      v6 = *(v5 + 8);
      if (v6 >= *(v5 + 16))
      {
        v7 = std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::__emplace_back_slow_path<decltype(nullptr)>(v5);
      }

      else
      {
        *v6 = 0;
        *(v6 + 8) = 0;
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v6);
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v6);
        v7 = v6 + 16;
      }

      *(v5 + 8) = v7;
      return *(*(*(a1[2] - 8) + 8) + 8) - 16;
    }

    else
    {
      if (v4 != 1)
      {
        nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<nlohmann::json_abi_v3_11_3::detail::value_t>();
      }

      if (!a1[4])
      {
        nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<nlohmann::json_abi_v3_11_3::detail::value_t>();
      }

      LOBYTE(v9[0]) = 0;
      v9[1] = 0;
      nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v9);
      nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v9);
      nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::operator=(a1[4], v9);
      nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v9);
      nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(v9);
      return a1[4];
    }
  }
}

uint64_t std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::__emplace_back_slow_path<decltype(nullptr)>(uint64_t a1)
{
  v1 = (*(a1 + 8) - *a1) >> 4;
  v2 = v1 + 1;
  if ((v1 + 1) >> 60)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v4 = *(a1 + 16) - *a1;
  if (v4 >> 3 > v2)
  {
    v2 = v4 >> 3;
  }

  if (v4 >= 0x7FFFFFFFFFFFFFF0)
  {
    v5 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = v2;
  }

  v16 = a1;
  if (v5)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>>(a1, v5);
  }

  v6 = 16 * v1;
  v13 = 0;
  v14 = v6;
  *(&v15 + 1) = 0;
  *v6 = 0;
  *(v6 + 8) = 0;
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v6);
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v6);
  *&v15 = v6 + 16;
  v7 = *(a1 + 8);
  v8 = (v6 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::~__split_buffer(&v13);
  return v12;
}

void sub_25A2C0428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<long long &>(uint64_t *a1, uint64_t *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v11[0] = 0;
    v11[1] = 0;
    nlohmann::json_abi_v3_11_3::detail::external_constructor<(nlohmann::json_abi_v3_11_3::detail::value_t)5>::construct<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>(v11, *a2);
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v11);
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::operator=(*a1, v11);
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v11);
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(v11);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 8);
    v5 = *v4;
    if (v5 == 2)
    {
      v6 = *(v4 + 1);
      v7 = *(v6 + 8);
      if (v7 >= *(v6 + 16))
      {
        v8 = std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::__emplace_back_slow_path<long long &>(v6, a2);
      }

      else
      {
        *v7 = 0;
        v7[1] = 0;
        nlohmann::json_abi_v3_11_3::detail::external_constructor<(nlohmann::json_abi_v3_11_3::detail::value_t)5>::construct<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>(v7, *a2);
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v7);
        v8 = (v7 + 2);
      }

      *(v6 + 8) = v8;
      return *(*(*(a1[2] - 8) + 8) + 8) - 16;
    }

    else
    {
      if (v5 != 1)
      {
        nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<nlohmann::json_abi_v3_11_3::detail::value_t>();
      }

      if (!a1[4])
      {
        nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<nlohmann::json_abi_v3_11_3::detail::value_t>();
      }

      v10[0] = 0;
      v10[1] = 0;
      nlohmann::json_abi_v3_11_3::detail::external_constructor<(nlohmann::json_abi_v3_11_3::detail::value_t)5>::construct<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>(v10, *a2);
      nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v10);
      nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::operator=(a1[4], v10);
      nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v10);
      nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(v10);
      return a1[4];
    }
  }
}

uint64_t std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::__emplace_back_slow_path<long long &>(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>>(a1, v7);
  }

  v8 = (16 * v2);
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = 0;
  v8[1] = 0;
  nlohmann::json_abi_v3_11_3::detail::external_constructor<(nlohmann::json_abi_v3_11_3::detail::value_t)5>::construct<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>(v8, *a2);
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v8);
  *&v17 = v8 + 2;
  v9 = *(a1 + 8);
  v10 = v8 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::~__split_buffer(&v15);
  return v14;
}

void sub_25A2C0684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<std::string&>(void *a1)
{
  v1 = a1[2];
  if (a1[1] != v1)
  {
    v2 = *(v1 - 8);
    v3 = *v2;
    if (v3 == 2)
    {
      v4 = *(v2 + 1);
      if (*(v4 + 8) < *(v4 + 16))
      {
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::basic_json<std::string&,std::string,0>(*(v4 + 8));
      }

      std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::__emplace_back_slow_path<std::string&>(v4);
    }

    if (v3 == 1)
    {
      if (a1[4])
      {
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::basic_json<std::string&,std::string,0>(&v5);
      }

      nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<nlohmann::json_abi_v3_11_3::detail::value_t>();
    }

    nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<nlohmann::json_abi_v3_11_3::detail::value_t>();
  }

  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::basic_json<std::string&,std::string,0>(&v6);
}

void std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::__emplace_back_slow_path<std::string&>(void *a1)
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

    v6 = a1;
    if (v4)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>>(a1, v4);
    }

    v5 = (16 * v1);
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::basic_json<std::string&,std::string,0>((16 * v1));
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void sub_25A2C08A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<unsigned long long &>(uint64_t *a1, uint64_t *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v11[0] = 0;
    v11[1] = 0;
    nlohmann::json_abi_v3_11_3::detail::external_constructor<(nlohmann::json_abi_v3_11_3::detail::value_t)6>::construct<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>(v11, *a2);
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v11);
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::operator=(*a1, v11);
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v11);
    nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(v11);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 8);
    v5 = *v4;
    if (v5 == 2)
    {
      v6 = *(v4 + 1);
      v7 = *(v6 + 8);
      if (v7 >= *(v6 + 16))
      {
        v8 = std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::__emplace_back_slow_path<unsigned long long &>(v6, a2);
      }

      else
      {
        *v7 = 0;
        v7[1] = 0;
        nlohmann::json_abi_v3_11_3::detail::external_constructor<(nlohmann::json_abi_v3_11_3::detail::value_t)6>::construct<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>(v7, *a2);
        nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v7);
        v8 = (v7 + 2);
      }

      *(v6 + 8) = v8;
      return *(*(*(a1[2] - 8) + 8) + 8) - 16;
    }

    else
    {
      if (v5 != 1)
      {
        nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<nlohmann::json_abi_v3_11_3::detail::value_t>();
      }

      if (!a1[4])
      {
        nlohmann::json_abi_v3_11_3::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::handle_value<nlohmann::json_abi_v3_11_3::detail::value_t>();
      }

      v10[0] = 0;
      v10[1] = 0;
      nlohmann::json_abi_v3_11_3::detail::external_constructor<(nlohmann::json_abi_v3_11_3::detail::value_t)6>::construct<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>(v10, *a2);
      nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v10);
      nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::operator=(a1[4], v10);
      nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v10);
      nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::data::~data(v10);
      return a1[4];
    }
  }
}

uint64_t std::vector<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::__emplace_back_slow_path<unsigned long long &>(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>>(a1, v7);
  }

  v8 = (16 * v2);
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = 0;
  v8[1] = 0;
  nlohmann::json_abi_v3_11_3::detail::external_constructor<(nlohmann::json_abi_v3_11_3::detail::value_t)6>::construct<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>(v8, *a2);
  nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::assert_invariant(v8);
  *&v17 = v8 + 2;
  v9 = *(a1 + 8);
  v10 = v8 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::~__split_buffer(&v15);
  return v14;
}

void sub_25A2C0B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void nlohmann::json_abi_v3_11_3::detail::input_stream_adapter::~input_stream_adapter(nlohmann::json_abi_v3_11_3::detail::input_stream_adapter *this)
{
  if (*this)
  {
    std::ios_base::clear((*this + *(**this - 24)), *(*this + *(**this - 24) + 32) & 2);
  }
}

uint64_t std::__function::__value_func<BOOL ()(int,nlohmann::json_abi_v3_11_3::detail::parse_event_t,nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

unsigned __int8 **nlohmann::json_abi_v3_11_3::detail::iter_impl<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::set_begin(unsigned __int8 **result)
{
  v1 = *result;
  if (!*result)
  {
    __assert_rtn("set_begin", "json.hpp", 13067, "m_object != nullptr");
  }

  v2 = *v1;
  if (*v1)
  {
    if (v2 == 2)
    {
      result[2] = **(v1 + 1);
    }

    else if (v2 == 1)
    {
      result[1] = **(v1 + 1);
    }

    else
    {
      result[3] = 0;
    }
  }

  else
  {
    result[3] = 1;
  }

  return result;
}

void *nlohmann::json_abi_v3_11_3::detail::iter_impl<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::iter_impl(void *result, uint64_t a2)
{
  *result = a2;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0x8000000000000000;
  if (!a2)
  {
    __assert_rtn("iter_impl", "json.hpp", 12970, "m_object != nullptr");
  }

  return result;
}

unsigned __int8 **nlohmann::json_abi_v3_11_3::detail::iter_impl<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::set_end(unsigned __int8 **result)
{
  v1 = *result;
  if (!*result)
  {
    __assert_rtn("set_end", "json.hpp", 13111, "m_object != nullptr");
  }

  v2 = *v1;
  if (v2 == 2)
  {
    result[2] = *(*(v1 + 1) + 8);
  }

  else if (v2 == 1)
  {
    result[1] = (*(v1 + 1) + 8);
  }

  else
  {
    result[3] = 1;
  }

  return result;
}

BOOL nlohmann::json_abi_v3_11_3::detail::iter_impl<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::operator==<nlohmann::json_abi_v3_11_3::detail::iter_impl<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,(decltype(nullptr))0>(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v3 = *a1;
  if (*a1 != *a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v10, "cannot compare iterators of different containers");
    v9 = *a1;
    nlohmann::json_abi_v3_11_3::detail::invalid_iterator::create<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> *,0>(212, v10, exception);
  }

  if (!v3)
  {
    nlohmann::json_abi_v3_11_3::detail::iter_impl<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>::operator==<nlohmann::json_abi_v3_11_3::detail::iter_impl<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>,(decltype(nullptr))0>();
  }

  v4 = *v3;
  if (v4 == 2)
  {
    v5 = a1[2];
    v6 = a2[2];
  }

  else if (v4 == 1)
  {
    v5 = a1[1];
    v6 = a2[1];
  }

  else
  {
    v5 = a1[3];
    v6 = a2[3];
  }

  return v5 == v6;
}

void sub_25A2C0E20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::distributed::ring::anonymous namespace::address_t>>(unint64_t a1)
{
  if (a1 < 0x1E1E1E1E1E1E1E2)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

_BYTE *std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
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

std::string *nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::get_impl<std::string,0>@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return nlohmann::json_abi_v3_11_3::detail::from_json<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>(a1, a2);
}

void sub_25A2C0F8C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *nlohmann::json_abi_v3_11_3::detail::from_json<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>>(uint64_t a1, std::string *this)
{
  if (*a1 != 3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v8 = nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void>::type_name(a1);
    nlohmann::json_abi_v3_11_3::detail::concat<std::string,char const(&)[29],char const*>("type must be string, but is ", &v8, &v9);
    nlohmann::json_abi_v3_11_3::detail::type_error::create<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> const*,0>(302, &v9, exception);
  }

  v3 = *(a1 + 8);
  v5 = *(a1 + 8);

  return std::string::operator=(this, v5);
}

void sub_25A2C106C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void nlohmann::json_abi_v3_11_3::detail::type_error::create<nlohmann::json_abi_v3_11_3::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_3::adl_serializer,std::vector<unsigned char>,void> const*,0>(int a1@<W0>, uint64_t a2@<X1>, nlohmann::json_abi_v3_11_3::detail::exception *a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(v9, "type_error");
  nlohmann::json_abi_v3_11_3::detail::exception::name(a1, v9, &v11);
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  nlohmann::json_abi_v3_11_3::detail::concat<std::string,std::string,std::string,std::string const&>(&v11, __p, a2, &v12);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v12;
  }

  else
  {
    v6 = v12.__r_.__value_.__r.__words[0];
  }

  nlohmann::json_abi_v3_11_3::detail::exception::exception(a3, a1, v6);
  *a3 = &unk_286BEAC60;
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_25A2C119C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

std::string *nlohmann::json_abi_v3_11_3::detail::concat<std::string,char const(&)[29],char const*>@<X0>(const char *a1@<X0>, const char **a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  v6 = strlen(a1);
  v7 = strlen(*a2);
  std::string::reserve(a3, v7 + v6);
  v8 = strlen(a1);
  std::string::append(a3, a1, v8);
  v9 = *a2;
  v10 = strlen(v9);
  return std::string::append(a3, v9, v10);
}

void sub_25A2C1284(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<mlx::core::distributed::ring::anonymous namespace::address_t>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::vector<mlx::core::distributed::ring::anonymous namespace::address_t>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v8 = *(v6 - 3);
        v6 -= 24;
        v7 = v8;
        if (v8)
        {
          *(v4 - 2) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__shared_ptr_emplace<mlx::core::distributed::ring::RingGroup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BEACC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<mlx::core::distributed::ring::anonymous namespace::address_t>>,std::vector<mlx::core::distributed::ring::anonymous namespace::address_t>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = **(a1 + 16);
      do
      {
        v6 = *(v4 - 24);
        v4 -= 24;
        v5 = v6;
        if (v6)
        {
          *(v2 - 16) = v5;
          operator delete(v5);
        }

        v2 = v4;
      }

      while (v4 != v3);
    }
  }

  return a1;
}

uint64_t mlx::core::distributed::ring::anonymous namespace::log_info<char const*,int,char const*>(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "[ring]", 6);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, " ", 1);
  }

  return result;
}

void mlx::core::distributed::ring::anonymous namespace::accept_connections(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      v5 = socket(2, 1, 0);
      v6 = v5;
      if (v5 < 0)
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](v34);
        v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "[ring] Couldn't create socket (error: ", 38);
        v8 = __error();
        v9 = MEMORY[0x25F851360](v7, *v8);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ")", 1);
        exception = __cxa_allocate_exception(0x10uLL);
        std::ostringstream::str[abi:ne200100](v34, v33);
        MEMORY[0x25F851100](exception, v33);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v32 = 1;
      if (setsockopt(v5, 0xFFFF, 4, &v32, 4u) < 0)
      {
        shutdown(v6, 2);
        close(v6);
        std::ostringstream::basic_ostringstream[abi:ne200100](v34);
        v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "[ring] Couldn't enable reuseaddr (error: ", 41);
        v12 = __error();
        v13 = MEMORY[0x25F851360](v11, *v12);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ")", 1);
        v14 = __cxa_allocate_exception(0x10uLL);
        std::ostringstream::str[abi:ne200100](v34, v33);
        MEMORY[0x25F851100](v14, v33);
        __cxa_throw(v14, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      if (setsockopt(v6, 0xFFFF, 512, &v32, 4u) < 0)
      {
        shutdown(v6, 2);
        close(v6);
        std::ostringstream::basic_ostringstream[abi:ne200100](v34);
        v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "[ring] Couldn't enable reuseport (error: ", 41);
        v16 = __error();
        v17 = MEMORY[0x25F851360](v15, *v16);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ")", 1);
        v18 = __cxa_allocate_exception(0x10uLL);
        std::ostringstream::str[abi:ne200100](v34, v33);
        MEMORY[0x25F851100](v18, v33);
        __cxa_throw(v18, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      if (bind(v6, v2, *(v2 + 128)) < 0)
      {
        shutdown(v6, 2);
        close(v6);
        std::ostringstream::basic_ostringstream[abi:ne200100](v34);
        v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "[ring] Couldn't bind socket (error: ", 36);
        v20 = __error();
        v21 = MEMORY[0x25F851360](v19, *v20);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ")", 1);
        v22 = __cxa_allocate_exception(0x10uLL);
        std::ostringstream::str[abi:ne200100](v34, v33);
        MEMORY[0x25F851100](v22, v33);
        __cxa_throw(v22, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      if (listen(v6, 0) < 0)
      {
        shutdown(v6, 2);
        close(v6);
        std::ostringstream::basic_ostringstream[abi:ne200100](v34);
        v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "[ring] Couldn't listen (error: ", 31);
        v24 = __error();
        v25 = MEMORY[0x25F851360](v23, *v24);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, ")", 1);
        v26 = __cxa_allocate_exception(0x10uLL);
        std::ostringstream::str[abi:ne200100](v34, v33);
        MEMORY[0x25F851100](v26, v33);
        __cxa_throw(v26, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v31 = accept(v6, 0, 0);
      if (v31 < 0)
      {
        shutdown(v6, 2);
        close(v6);
        std::ostringstream::basic_ostringstream[abi:ne200100](v34);
        v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "[ring] Accept failed (error: ", 29);
        v28 = __error();
        v29 = MEMORY[0x25F851360](v27, *v28);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, ")", 1);
        v30 = __cxa_allocate_exception(0x10uLL);
        std::ostringstream::str[abi:ne200100](v34, v33);
        MEMORY[0x25F851100](v30, v33);
        __cxa_throw(v30, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      shutdown(v6, 2);
      close(v6);
      std::vector<int>::push_back[abi:ne200100](a2, &v31);
      v2 += 136;
    }

    while (v2 != v3);
  }
}

void sub_25A2C19D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a17);
      v21 = *v17;
      if (*v17)
      {
        *(v17 + 8) = v21;
        operator delete(v21);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  goto LABEL_6;
}

uint64_t mlx::core::distributed::ring::anonymous namespace::log_info<char const*,int,char const*,int>(uint64_t result, const char *a2, uint64_t a3, const char *a4, uint64_t a5)
{
  if (result)
  {
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "[ring]", 6);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " ", 1);
    v11 = strlen(a2);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, a2, v11);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " ", 1);
    v14 = MEMORY[0x25F851360](v13, a3);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " ", 1);
    v16 = strlen(a4);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, a4, v16);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " ", 1);
    v19 = MEMORY[0x25F851360](v18, a5);
    std::ios_base::getloc((v19 + *(*v19 - 24)));
    v20 = std::locale::use_facet(&v21, MEMORY[0x277D82680]);
    (v20->__vftable[2].~facet_0)(v20, 10);
    std::locale::~locale(&v21);
    std::ostream::put();
    return std::ostream::flush();
  }

  return result;
}

void mlx::core::distributed::ring::anonymous namespace::make_connections(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v3 = *a1;
  v28 = a1[1];
  if (*a1 != v28)
  {
    do
    {
      v5 = 0;
      v32[0] = 0;
      while (1)
      {
        v6 = socket(2, 1, 0);
        v32[0] = v6;
        if (v6 < 0)
        {
          std::ostringstream::basic_ostringstream[abi:ne200100](&__ns.__rep_);
          v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__ns, "[ring] Couldn't create socket (error: ", 38);
          v21 = __error();
          v22 = MEMORY[0x25F851360](v20, *v21);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ")", 1);
          exception = __cxa_allocate_exception(0x10uLL);
          std::ostringstream::str[abi:ne200100](&__ns, v30);
          MEMORY[0x25F851100](exception, v30);
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        if (v5)
        {
          v7 = __error();
          if (a2)
          {
            v8 = *v7;
            v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "[ring]", 6);
            v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " ", 1);
            v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Attempt", 7);
            v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " ", 1);
            v13 = MEMORY[0x25F851360](v12, v5);
            v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " ", 1);
            v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "wait", 4);
            v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " ", 1);
            v17 = MEMORY[0x25F851360](v16, (500 << v5));
            v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " ", 1);
          }

          __ns.__rep_ = 1000000 * (500 << v5);
          std::this_thread::sleep_for (&__ns);
          v6 = v32[0];
        }

        v19 = connect(v6, v3, *(v3 + 128));
        if (!v19)
        {
          break;
        }

        v5 = (v5 + 1);
        if (v5 == 5)
        {
          if (v19 < 0)
          {
            std::ostringstream::basic_ostringstream[abi:ne200100](&__ns.__rep_);
            v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__ns, "[ring] Couldn't connect (error: ", 32);
            v25 = __error();
            v26 = MEMORY[0x25F851360](v24, *v25);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ")", 1);
            v27 = __cxa_allocate_exception(0x10uLL);
            std::ostringstream::str[abi:ne200100](&__ns, v30);
            MEMORY[0x25F851100](v27, v30);
            __cxa_throw(v27, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          break;
        }
      }

      std::vector<int>::push_back[abi:ne200100](a3, v32);
      v3 += 136;
    }

    while (v3 != v28);
  }
}

void sub_25A2C1EC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a17);
      v20 = *a10;
      if (*a10)
      {
        *(a10 + 8) = v20;
        operator delete(v20);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

void *mlx::core::distributed::ring::anonymous namespace::CommunicationThreads::add(void *result, int **a2)
{
  v2 = *a2;
  v11 = a2[1];
  if (*a2 != v11)
  {
    do
    {
      v3 = *v2;
      v4 = result[1];
      if (!v4)
      {
        goto LABEL_18;
      }

      v5 = vcnt_s8(v4);
      v5.i16[0] = vaddlv_u8(v5);
      if (v5.u32[0] > 1uLL)
      {
        v6 = v3;
        if (v4 <= v3)
        {
          v6 = v3 % v4;
        }
      }

      else
      {
        v6 = (v4 - 1) & v3;
      }

      v7 = *(*result + 8 * v6);
      if (!v7 || (v8 = *v7) == 0)
      {
LABEL_18:
        operator new();
      }

      while (1)
      {
        v9 = v8[1];
        if (v9 == v3)
        {
          break;
        }

        if (v5.u32[0] > 1uLL)
        {
          if (v9 >= v4)
          {
            v9 %= v4;
          }
        }

        else
        {
          v9 &= v4 - 1;
        }

        if (v9 != v6)
        {
          goto LABEL_18;
        }

LABEL_17:
        v8 = *v8;
        if (!v8)
        {
          goto LABEL_18;
        }
      }

      if (*(v8 + 4) != v3)
      {
        goto LABEL_17;
      }

      ++v2;
      v10 = a2[1];
    }

    while (v2 != v11);
  }

  return result;
}

void sub_25A2C24F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Unwind_Resume(a1);
}

void mlx::core::distributed::ring::anonymous namespace::CommunicationThreads::~CommunicationThreads(mlx::core::distributed::ring::_anonymous_namespace_::CommunicationThreads *this)
{
  v2 = *(this + 2);
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

  v4 = *this;
  *this = 0;
  if (v4)
  {
    operator delete(v4);
  }
}

void mlx::core::distributed::ring::RingGroup::~RingGroup(mlx::core::distributed::ring::RingGroup *this)
{
  mlx::core::distributed::ring::RingGroup::~RingGroup(this);

  JUMPOUT(0x25F851760);
}

{
  *this = &unk_286BEAD18;
  v2 = *(this + 32);
  v3 = *(this + 33);
  while (v2 != v3)
  {
    v4 = *v2;
    shutdown(*v2, 2);
    close(v4);
    ++v2;
  }

  v5 = *(this + 35);
  v6 = *(this + 36);
  while (v5 != v6)
  {
    v7 = *v5;
    shutdown(*v5, 2);
    close(v7);
    ++v5;
  }

  v8 = *(this + 38);
  if (v8)
  {
    *(this + 39) = v8;
    operator delete(v8);
  }

  v9 = *(this + 35);
  if (v9)
  {
    *(this + 36) = v9;
    operator delete(v9);
  }

  v10 = *(this + 32);
  if (v10)
  {
    *(this + 33) = v10;
    operator delete(v10);
  }

  v11 = *(this + 29);
  if (v11)
  {
    do
    {
      v12 = *v11;
      operator delete(v11);
      v11 = v12;
    }

    while (v12);
  }

  v13 = *(this + 27);
  *(this + 27) = 0;
  if (v13)
  {
    operator delete(v13);
  }

  std::mutex::lock((this + 96));
  *(this + 208) = 1;
  std::mutex::unlock((this + 96));
  std::condition_variable::notify_all((this + 160));
  v14 = *(this + 3);
  v15 = *(this + 4);
  if (v14 != v15)
  {
    do
    {
      std::thread::join(v14++);
    }

    while (v14 != v15);
    v14 = *(this + 3);
    v15 = *(this + 4);
  }

  *(this + 208) = 0;
  while (v15 != v14)
  {
    std::thread::~thread(--v15);
  }

  *(this + 4) = v14;
  std::condition_variable::~condition_variable((this + 160));
  std::mutex::~mutex((this + 96));
  std::deque<std::function<void ()(void)>>::~deque[abi:ne200100](this + 6);
  v16 = (this + 24);
  std::vector<std::thread>::__destroy_vector::operator()[abi:ne200100](&v16);
}

void mlx::core::distributed::ring::RingGroup::split(mlx::core::distributed::ring::RingGroup *this)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "[ring] Group split not supported.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::distributed::ring::RingGroup::all_sum(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, int a5)
{
  v5 = *a3;
  switch(*(*a3 + 56))
  {
    case 0:
      v7 = *(*a2 + 152);
      v8 = *(v5 + 152);
      command_encoder = mlx::core::cpu::get_command_encoder(a4, a5);
      v10 = *(*a2 + 48);
      v11 = (*(command_encoder + 10) + 1) % 10;
      *(command_encoder + 10) = v11;
      v12 = mlx::core::scheduler::scheduler(command_encoder);
      if (v11)
      {
        v13 = *(v12[1] + 8 * *command_encoder);
        std::mutex::lock(v13);
        if (*(v13 + 160) != 1)
        {
          v14 = *(v13 + 72);
          v15 = *(v13 + 80);
          v16 = 16 * (v15 - v14) - 1;
          if (v15 == v14)
          {
            v16 = 0;
          }

          if (v16 == *(v13 + 104) + *(v13 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v13 + 64));
            v14 = *(v13 + 72);
            v15 = *(v13 + 80);
          }

          if (v15 == v14)
          {
            v18 = 0;
          }

          else
          {
            v17 = *(v13 + 104) + *(v13 + 96);
            v18 = *(v14 + ((v17 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v17 & 0x7F);
          }

          *(v18 + 24) = 0;
          operator new();
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v12);
      v308 = *command_encoder;
      v322 = *(command_encoder + 2);
      v225 = *(*(mlx::core::scheduler::scheduler(v224) + 1) + 8 * *command_encoder);
      std::mutex::lock(v225);
      if (*(v225 + 160) != 1)
      {
        v226 = *(v225 + 72);
        v227 = *(v225 + 80);
        v228 = 16 * (v227 - v226) - 1;
        if (v227 == v226)
        {
          v228 = 0;
        }

        if (v228 == *(v225 + 104) + *(v225 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v225 + 64));
          v226 = *(v225 + 72);
          v227 = *(v225 + 80);
        }

        if (v227 == v226)
        {
          v230 = 0;
        }

        else
        {
          v229 = *(v225 + 104) + *(v225 + 96);
          v230 = *(v226 + ((v229 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v229 & 0x7F);
        }

        *(v230 + 24) = 0;
        operator new();
      }

      v294 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v294, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v294, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 1:
      v103 = *(*a2 + 152);
      v104 = *(v5 + 152);
      v105 = mlx::core::cpu::get_command_encoder(a4, a5);
      v106 = *(*a2 + 48);
      v107 = (*(v105 + 10) + 1) % 10;
      *(v105 + 10) = v107;
      v108 = mlx::core::scheduler::scheduler(v105);
      if (v107)
      {
        v109 = *(v108[1] + 8 * *v105);
        std::mutex::lock(v109);
        if (*(v109 + 160) != 1)
        {
          v110 = *(v109 + 72);
          v111 = *(v109 + 80);
          v112 = 16 * (v111 - v110) - 1;
          if (v111 == v110)
          {
            v112 = 0;
          }

          if (v112 == *(v109 + 104) + *(v109 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v109 + 64));
            v110 = *(v109 + 72);
            v111 = *(v109 + 80);
          }

          if (v111 == v110)
          {
            v114 = 0;
          }

          else
          {
            v113 = *(v109 + 104) + *(v109 + 96);
            v114 = *(v110 + ((v113 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v113 & 0x7F);
          }

          *(v114 + 24) = 0;
          operator new();
        }

        v281 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v281, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v281, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v108);
      v309 = *v105;
      v323 = *(v105 + 2);
      v232 = *(*(mlx::core::scheduler::scheduler(v231) + 1) + 8 * *v105);
      std::mutex::lock(v232);
      if (*(v232 + 160) != 1)
      {
        v233 = *(v232 + 72);
        v234 = *(v232 + 80);
        v235 = 16 * (v234 - v233) - 1;
        if (v234 == v233)
        {
          v235 = 0;
        }

        if (v235 == *(v232 + 104) + *(v232 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v232 + 64));
          v233 = *(v232 + 72);
          v234 = *(v232 + 80);
        }

        if (v234 == v233)
        {
          v237 = 0;
        }

        else
        {
          v236 = *(v232 + 104) + *(v232 + 96);
          v237 = *(v233 + ((v236 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v236 & 0x7F);
        }

        *(v237 + 24) = 0;
        operator new();
      }

      v295 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v295, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v295, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 2:
      v67 = *(*a2 + 152);
      v68 = *(v5 + 152);
      v69 = mlx::core::cpu::get_command_encoder(a4, a5);
      v70 = *(*a2 + 48);
      v71 = (*(v69 + 10) + 1) % 10;
      *(v69 + 10) = v71;
      v72 = mlx::core::scheduler::scheduler(v69);
      if (v71)
      {
        v73 = *(v72[1] + 8 * *v69);
        std::mutex::lock(v73);
        if (*(v73 + 160) != 1)
        {
          v74 = *(v73 + 72);
          v75 = *(v73 + 80);
          v76 = 16 * (v75 - v74) - 1;
          if (v75 == v74)
          {
            v76 = 0;
          }

          if (v76 == *(v73 + 104) + *(v73 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v73 + 64));
            v74 = *(v73 + 72);
            v75 = *(v73 + 80);
          }

          if (v75 == v74)
          {
            v78 = 0;
          }

          else
          {
            v77 = *(v73 + 104) + *(v73 + 96);
            v78 = *(v74 + ((v77 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v77 & 0x7F);
          }

          *(v78 + 24) = 0;
          operator new();
        }

        v277 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v277, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v277, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v72);
      v305 = *v69;
      v319 = *(v69 + 2);
      v204 = *(*(mlx::core::scheduler::scheduler(v203) + 1) + 8 * *v69);
      std::mutex::lock(v204);
      if (*(v204 + 160) != 1)
      {
        v205 = *(v204 + 72);
        v206 = *(v204 + 80);
        v207 = 16 * (v206 - v205) - 1;
        if (v206 == v205)
        {
          v207 = 0;
        }

        if (v207 == *(v204 + 104) + *(v204 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v204 + 64));
          v205 = *(v204 + 72);
          v206 = *(v204 + 80);
        }

        if (v206 == v205)
        {
          v209 = 0;
        }

        else
        {
          v208 = *(v204 + 104) + *(v204 + 96);
          v209 = *(v205 + ((v208 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v208 & 0x7F);
        }

        *(v209 + 24) = 0;
        operator new();
      }

      v291 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v291, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v291, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 3:
      v79 = *(*a2 + 152);
      v80 = *(v5 + 152);
      v81 = mlx::core::cpu::get_command_encoder(a4, a5);
      v82 = *(*a2 + 48);
      v83 = (*(v81 + 10) + 1) % 10;
      *(v81 + 10) = v83;
      v84 = mlx::core::scheduler::scheduler(v81);
      if (v83)
      {
        v85 = *(v84[1] + 8 * *v81);
        std::mutex::lock(v85);
        if (*(v85 + 160) != 1)
        {
          v86 = *(v85 + 72);
          v87 = *(v85 + 80);
          v88 = 16 * (v87 - v86) - 1;
          if (v87 == v86)
          {
            v88 = 0;
          }

          if (v88 == *(v85 + 104) + *(v85 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v85 + 64));
            v86 = *(v85 + 72);
            v87 = *(v85 + 80);
          }

          if (v87 == v86)
          {
            v90 = 0;
          }

          else
          {
            v89 = *(v85 + 104) + *(v85 + 96);
            v90 = *(v86 + ((v89 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v89 & 0x7F);
          }

          *(v90 + 24) = 0;
          operator new();
        }

        v278 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v278, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v278, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v84);
      v306 = *v81;
      v320 = *(v81 + 2);
      v211 = *(*(mlx::core::scheduler::scheduler(v210) + 1) + 8 * *v81);
      std::mutex::lock(v211);
      if (*(v211 + 160) != 1)
      {
        v212 = *(v211 + 72);
        v213 = *(v211 + 80);
        v214 = 16 * (v213 - v212) - 1;
        if (v213 == v212)
        {
          v214 = 0;
        }

        if (v214 == *(v211 + 104) + *(v211 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v211 + 64));
          v212 = *(v211 + 72);
          v213 = *(v211 + 80);
        }

        if (v213 == v212)
        {
          v216 = 0;
        }

        else
        {
          v215 = *(v211 + 104) + *(v211 + 96);
          v216 = *(v212 + ((v215 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v215 & 0x7F);
        }

        *(v216 + 24) = 0;
        operator new();
      }

      v292 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v292, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v292, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 4:
      v31 = *(*a2 + 152);
      v32 = *(v5 + 152);
      v33 = mlx::core::cpu::get_command_encoder(a4, a5);
      v34 = *(*a2 + 48);
      v35 = (*(v33 + 10) + 1) % 10;
      *(v33 + 10) = v35;
      v36 = mlx::core::scheduler::scheduler(v33);
      if (v35)
      {
        v37 = *(v36[1] + 8 * *v33);
        std::mutex::lock(v37);
        if (*(v37 + 160) != 1)
        {
          v38 = *(v37 + 72);
          v39 = *(v37 + 80);
          v40 = 16 * (v39 - v38) - 1;
          if (v39 == v38)
          {
            v40 = 0;
          }

          if (v40 == *(v37 + 104) + *(v37 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v37 + 64));
            v38 = *(v37 + 72);
            v39 = *(v37 + 80);
          }

          if (v39 == v38)
          {
            v42 = 0;
          }

          else
          {
            v41 = *(v37 + 104) + *(v37 + 96);
            v42 = *(v38 + ((v41 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v41 & 0x7F);
          }

          *(v42 + 24) = 0;
          operator new();
        }

        v274 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v274, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v274, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v36);
      v302 = *v33;
      v316 = *(v33 + 2);
      v183 = *(*(mlx::core::scheduler::scheduler(v182) + 1) + 8 * *v33);
      std::mutex::lock(v183);
      if (*(v183 + 160) != 1)
      {
        v184 = *(v183 + 72);
        v185 = *(v183 + 80);
        v186 = 16 * (v185 - v184) - 1;
        if (v185 == v184)
        {
          v186 = 0;
        }

        if (v186 == *(v183 + 104) + *(v183 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v183 + 64));
          v184 = *(v183 + 72);
          v185 = *(v183 + 80);
        }

        if (v185 == v184)
        {
          v188 = 0;
        }

        else
        {
          v187 = *(v183 + 104) + *(v183 + 96);
          v188 = *(v184 + ((v187 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v187 & 0x7F);
        }

        *(v188 + 24) = 0;
        operator new();
      }

      v288 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v288, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v288, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 5:
      v115 = *(*a2 + 152);
      v116 = *(v5 + 152);
      v117 = mlx::core::cpu::get_command_encoder(a4, a5);
      v118 = *(*a2 + 48);
      v119 = (*(v117 + 10) + 1) % 10;
      *(v117 + 10) = v119;
      v120 = mlx::core::scheduler::scheduler(v117);
      if (v119)
      {
        v121 = *(v120[1] + 8 * *v117);
        std::mutex::lock(v121);
        if (*(v121 + 160) != 1)
        {
          v122 = *(v121 + 72);
          v123 = *(v121 + 80);
          v124 = 16 * (v123 - v122) - 1;
          if (v123 == v122)
          {
            v124 = 0;
          }

          if (v124 == *(v121 + 104) + *(v121 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v121 + 64));
            v122 = *(v121 + 72);
            v123 = *(v121 + 80);
          }

          if (v123 == v122)
          {
            v126 = 0;
          }

          else
          {
            v125 = *(v121 + 104) + *(v121 + 96);
            v126 = *(v122 + ((v125 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v125 & 0x7F);
          }

          *(v126 + 24) = 0;
          operator new();
        }

        v282 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v282, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v282, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v120);
      v310 = *v117;
      v324 = *(v117 + 2);
      v239 = *(*(mlx::core::scheduler::scheduler(v238) + 1) + 8 * *v117);
      std::mutex::lock(v239);
      if (*(v239 + 160) != 1)
      {
        v240 = *(v239 + 72);
        v241 = *(v239 + 80);
        v242 = 16 * (v241 - v240) - 1;
        if (v241 == v240)
        {
          v242 = 0;
        }

        if (v242 == *(v239 + 104) + *(v239 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v239 + 64));
          v240 = *(v239 + 72);
          v241 = *(v239 + 80);
        }

        if (v241 == v240)
        {
          v244 = 0;
        }

        else
        {
          v243 = *(v239 + 104) + *(v239 + 96);
          v244 = *(v240 + ((v243 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v243 & 0x7F);
        }

        *(v244 + 24) = 0;
        operator new();
      }

      v296 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v296, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v296, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 6:
      v139 = *(*a2 + 152);
      v140 = *(v5 + 152);
      v141 = mlx::core::cpu::get_command_encoder(a4, a5);
      v142 = *(*a2 + 48);
      v143 = (*(v141 + 10) + 1) % 10;
      *(v141 + 10) = v143;
      v144 = mlx::core::scheduler::scheduler(v141);
      if (v143)
      {
        v145 = *(v144[1] + 8 * *v141);
        std::mutex::lock(v145);
        if (*(v145 + 160) != 1)
        {
          v146 = *(v145 + 72);
          v147 = *(v145 + 80);
          v148 = 16 * (v147 - v146) - 1;
          if (v147 == v146)
          {
            v148 = 0;
          }

          if (v148 == *(v145 + 104) + *(v145 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v145 + 64));
            v146 = *(v145 + 72);
            v147 = *(v145 + 80);
          }

          if (v147 == v146)
          {
            v150 = 0;
          }

          else
          {
            v149 = *(v145 + 104) + *(v145 + 96);
            v150 = *(v146 + ((v149 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v149 & 0x7F);
          }

          *(v150 + 24) = 0;
          operator new();
        }

        v284 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v284, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v284, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v144);
      v312 = *v141;
      v326 = *(v141 + 2);
      v253 = *(*(mlx::core::scheduler::scheduler(v252) + 1) + 8 * *v141);
      std::mutex::lock(v253);
      if (*(v253 + 160) != 1)
      {
        v254 = *(v253 + 72);
        v255 = *(v253 + 80);
        v256 = 16 * (v255 - v254) - 1;
        if (v255 == v254)
        {
          v256 = 0;
        }

        if (v256 == *(v253 + 104) + *(v253 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v253 + 64));
          v254 = *(v253 + 72);
          v255 = *(v253 + 80);
        }

        if (v255 == v254)
        {
          v258 = 0;
        }

        else
        {
          v257 = *(v253 + 104) + *(v253 + 96);
          v258 = *(v254 + ((v257 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v257 & 0x7F);
        }

        *(v258 + 24) = 0;
        operator new();
      }

      v298 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v298, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v298, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 7:
      v91 = *(*a2 + 152);
      v92 = *(v5 + 152);
      v93 = mlx::core::cpu::get_command_encoder(a4, a5);
      v94 = *(*a2 + 48);
      v95 = (*(v93 + 10) + 1) % 10;
      *(v93 + 10) = v95;
      v96 = mlx::core::scheduler::scheduler(v93);
      if (v95)
      {
        v97 = *(v96[1] + 8 * *v93);
        std::mutex::lock(v97);
        if (*(v97 + 160) != 1)
        {
          v98 = *(v97 + 72);
          v99 = *(v97 + 80);
          v100 = 16 * (v99 - v98) - 1;
          if (v99 == v98)
          {
            v100 = 0;
          }

          if (v100 == *(v97 + 104) + *(v97 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v97 + 64));
            v98 = *(v97 + 72);
            v99 = *(v97 + 80);
          }

          if (v99 == v98)
          {
            v102 = 0;
          }

          else
          {
            v101 = *(v97 + 104) + *(v97 + 96);
            v102 = *(v98 + ((v101 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v101 & 0x7F);
          }

          *(v102 + 24) = 0;
          operator new();
        }

        v280 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v280, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v280, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v96);
      v307 = *v93;
      v321 = *(v93 + 2);
      v218 = *(*(mlx::core::scheduler::scheduler(v217) + 1) + 8 * *v93);
      std::mutex::lock(v218);
      if (*(v218 + 160) != 1)
      {
        v219 = *(v218 + 72);
        v220 = *(v218 + 80);
        v221 = 16 * (v220 - v219) - 1;
        if (v220 == v219)
        {
          v221 = 0;
        }

        if (v221 == *(v218 + 104) + *(v218 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v218 + 64));
          v219 = *(v218 + 72);
          v220 = *(v218 + 80);
        }

        if (v220 == v219)
        {
          v223 = 0;
        }

        else
        {
          v222 = *(v218 + 104) + *(v218 + 96);
          v223 = *(v219 + ((v222 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v222 & 0x7F);
        }

        *(v223 + 24) = 0;
        operator new();
      }

      v293 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v293, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v293, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 8:
      v163 = *(*a2 + 152);
      v164 = *(v5 + 152);
      v165 = mlx::core::cpu::get_command_encoder(a4, a5);
      v166 = *(*a2 + 48);
      v167 = (*(v165 + 10) + 1) % 10;
      *(v165 + 10) = v167;
      v168 = mlx::core::scheduler::scheduler(v165);
      if (v167)
      {
        v169 = *(v168[1] + 8 * *v165);
        std::mutex::lock(v169);
        if (*(v169 + 160) != 1)
        {
          v170 = *(v169 + 72);
          v171 = *(v169 + 80);
          v172 = 16 * (v171 - v170) - 1;
          if (v171 == v170)
          {
            v172 = 0;
          }

          if (v172 == *(v169 + 104) + *(v169 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v169 + 64));
            v170 = *(v169 + 72);
            v171 = *(v169 + 80);
          }

          if (v171 == v170)
          {
            v174 = 0;
          }

          else
          {
            v173 = *(v169 + 104) + *(v169 + 96);
            v174 = *(v170 + ((v173 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v173 & 0x7F);
          }

          *(v174 + 24) = 0;
          operator new();
        }

        v286 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v286, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v286, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v168);
      v314 = *v165;
      v328 = *(v165 + 2);
      v267 = *(*(mlx::core::scheduler::scheduler(v266) + 1) + 8 * *v165);
      std::mutex::lock(v267);
      if (*(v267 + 160) != 1)
      {
        v268 = *(v267 + 72);
        v269 = *(v267 + 80);
        v270 = 16 * (v269 - v268) - 1;
        if (v269 == v268)
        {
          v270 = 0;
        }

        if (v270 == *(v267 + 104) + *(v267 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v267 + 64));
          v268 = *(v267 + 72);
          v269 = *(v267 + 80);
        }

        if (v269 == v268)
        {
          v272 = 0;
        }

        else
        {
          v271 = *(v267 + 104) + *(v267 + 96);
          v272 = *(v268 + ((v271 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v271 & 0x7F);
        }

        *(v272 + 24) = 0;
        operator new();
      }

      v300 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v300, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v300, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 9:
      v55 = *(*a2 + 152);
      v56 = *(v5 + 152);
      v57 = mlx::core::cpu::get_command_encoder(a4, a5);
      v58 = *(*a2 + 48);
      v59 = (*(v57 + 10) + 1) % 10;
      *(v57 + 10) = v59;
      v60 = mlx::core::scheduler::scheduler(v57);
      if (v59)
      {
        v61 = *(v60[1] + 8 * *v57);
        std::mutex::lock(v61);
        if (*(v61 + 160) != 1)
        {
          v62 = *(v61 + 72);
          v63 = *(v61 + 80);
          v64 = 16 * (v63 - v62) - 1;
          if (v63 == v62)
          {
            v64 = 0;
          }

          if (v64 == *(v61 + 104) + *(v61 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v61 + 64));
            v62 = *(v61 + 72);
            v63 = *(v61 + 80);
          }

          if (v63 == v62)
          {
            v66 = 0;
          }

          else
          {
            v65 = *(v61 + 104) + *(v61 + 96);
            v66 = *(v62 + ((v65 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v65 & 0x7F);
          }

          *(v66 + 24) = 0;
          operator new();
        }

        v276 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v276, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v276, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v60);
      v304 = *v57;
      v318 = *(v57 + 2);
      v197 = *(*(mlx::core::scheduler::scheduler(v196) + 1) + 8 * *v57);
      std::mutex::lock(v197);
      if (*(v197 + 160) != 1)
      {
        v198 = *(v197 + 72);
        v199 = *(v197 + 80);
        v200 = 16 * (v199 - v198) - 1;
        if (v199 == v198)
        {
          v200 = 0;
        }

        if (v200 == *(v197 + 104) + *(v197 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v197 + 64));
          v198 = *(v197 + 72);
          v199 = *(v197 + 80);
        }

        if (v199 == v198)
        {
          v202 = 0;
        }

        else
        {
          v201 = *(v197 + 104) + *(v197 + 96);
          v202 = *(v198 + ((v201 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v201 & 0x7F);
        }

        *(v202 + 24) = 0;
        operator new();
      }

      v290 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v290, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v290, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 0xA:
      v151 = *(*a2 + 152);
      v152 = *(v5 + 152);
      v153 = mlx::core::cpu::get_command_encoder(a4, a5);
      v154 = *(*a2 + 48);
      v155 = (*(v153 + 10) + 1) % 10;
      *(v153 + 10) = v155;
      v156 = mlx::core::scheduler::scheduler(v153);
      if (v155)
      {
        v157 = *(v156[1] + 8 * *v153);
        std::mutex::lock(v157);
        if (*(v157 + 160) != 1)
        {
          v158 = *(v157 + 72);
          v159 = *(v157 + 80);
          v160 = 16 * (v159 - v158) - 1;
          if (v159 == v158)
          {
            v160 = 0;
          }

          if (v160 == *(v157 + 104) + *(v157 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v157 + 64));
            v158 = *(v157 + 72);
            v159 = *(v157 + 80);
          }

          if (v159 == v158)
          {
            v162 = 0;
          }

          else
          {
            v161 = *(v157 + 104) + *(v157 + 96);
            v162 = *(v158 + ((v161 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v161 & 0x7F);
          }

          *(v162 + 24) = 0;
          operator new();
        }

        v285 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v285, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v285, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v156);
      v313 = *v153;
      v327 = *(v153 + 2);
      v260 = *(*(mlx::core::scheduler::scheduler(v259) + 1) + 8 * *v153);
      std::mutex::lock(v260);
      if (*(v260 + 160) != 1)
      {
        v261 = *(v260 + 72);
        v262 = *(v260 + 80);
        v263 = 16 * (v262 - v261) - 1;
        if (v262 == v261)
        {
          v263 = 0;
        }

        if (v263 == *(v260 + 104) + *(v260 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v260 + 64));
          v261 = *(v260 + 72);
          v262 = *(v260 + 80);
        }

        if (v262 == v261)
        {
          v265 = 0;
        }

        else
        {
          v264 = *(v260 + 104) + *(v260 + 96);
          v265 = *(v261 + ((v264 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v264 & 0x7F);
        }

        *(v265 + 24) = 0;
        operator new();
      }

      v299 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v299, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v299, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 0xB:
      v19 = *(*a2 + 152);
      v20 = *(v5 + 152);
      v21 = mlx::core::cpu::get_command_encoder(a4, a5);
      v22 = *(*a2 + 48);
      v23 = (*(v21 + 10) + 1) % 10;
      *(v21 + 10) = v23;
      v24 = mlx::core::scheduler::scheduler(v21);
      if (v23)
      {
        v25 = *(v24[1] + 8 * *v21);
        std::mutex::lock(v25);
        if (*(v25 + 160) != 1)
        {
          v26 = *(v25 + 72);
          v27 = *(v25 + 80);
          v28 = 16 * (v27 - v26) - 1;
          if (v27 == v26)
          {
            v28 = 0;
          }

          if (v28 == *(v25 + 104) + *(v25 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v25 + 64));
            v26 = *(v25 + 72);
            v27 = *(v25 + 80);
          }

          if (v27 == v26)
          {
            v30 = 0;
          }

          else
          {
            v29 = *(v25 + 104) + *(v25 + 96);
            v30 = *(v26 + ((v29 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v29 & 0x7F);
          }

          *(v30 + 24) = 0;
          operator new();
        }

        v273 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v273, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v273, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v24);
      v301 = *v21;
      v315 = *(v21 + 2);
      v176 = *(*(mlx::core::scheduler::scheduler(v175) + 1) + 8 * *v21);
      std::mutex::lock(v176);
      if (*(v176 + 160) != 1)
      {
        v177 = *(v176 + 72);
        v178 = *(v176 + 80);
        v179 = 16 * (v178 - v177) - 1;
        if (v178 == v177)
        {
          v179 = 0;
        }

        if (v179 == *(v176 + 104) + *(v176 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v176 + 64));
          v177 = *(v176 + 72);
          v178 = *(v176 + 80);
        }

        if (v178 == v177)
        {
          v181 = 0;
        }

        else
        {
          v180 = *(v176 + 104) + *(v176 + 96);
          v181 = *(v177 + ((v180 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v180 & 0x7F);
        }

        *(v181 + 24) = 0;
        operator new();
      }

      v287 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v287, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v287, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 0xC:
      v43 = *(*a2 + 152);
      v44 = *(v5 + 152);
      v45 = mlx::core::cpu::get_command_encoder(a4, a5);
      v46 = *(*a2 + 48);
      v47 = (*(v45 + 10) + 1) % 10;
      *(v45 + 10) = v47;
      v48 = mlx::core::scheduler::scheduler(v45);
      if (v47)
      {
        v49 = *(v48[1] + 8 * *v45);
        std::mutex::lock(v49);
        if (*(v49 + 160) != 1)
        {
          v50 = *(v49 + 72);
          v51 = *(v49 + 80);
          v52 = 16 * (v51 - v50) - 1;
          if (v51 == v50)
          {
            v52 = 0;
          }

          if (v52 == *(v49 + 104) + *(v49 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v49 + 64));
            v50 = *(v49 + 72);
            v51 = *(v49 + 80);
          }

          if (v51 == v50)
          {
            v54 = 0;
          }

          else
          {
            v53 = *(v49 + 104) + *(v49 + 96);
            v54 = *(v50 + ((v53 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v53 & 0x7F);
          }

          *(v54 + 24) = 0;
          operator new();
        }

        v275 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v275, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v275, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v48);
      v303 = *v45;
      v317 = *(v45 + 2);
      v190 = *(*(mlx::core::scheduler::scheduler(v189) + 1) + 8 * *v45);
      std::mutex::lock(v190);
      if (*(v190 + 160) != 1)
      {
        v191 = *(v190 + 72);
        v192 = *(v190 + 80);
        v193 = 16 * (v192 - v191) - 1;
        if (v192 == v191)
        {
          v193 = 0;
        }

        if (v193 == *(v190 + 104) + *(v190 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v190 + 64));
          v191 = *(v190 + 72);
          v192 = *(v190 + 80);
        }

        if (v192 == v191)
        {
          v195 = 0;
        }

        else
        {
          v194 = *(v190 + 104) + *(v190 + 96);
          v195 = *(v191 + ((v194 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v194 & 0x7F);
        }

        *(v195 + 24) = 0;
        operator new();
      }

      v289 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v289, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v289, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 0xD:
      v127 = *(*a2 + 152);
      v128 = *(v5 + 152);
      v129 = mlx::core::cpu::get_command_encoder(a4, a5);
      v130 = *(*a2 + 48);
      v131 = (*(v129 + 10) + 1) % 10;
      *(v129 + 10) = v131;
      v132 = mlx::core::scheduler::scheduler(v129);
      if (v131)
      {
        v133 = *(v132[1] + 8 * *v129);
        std::mutex::lock(v133);
        if (*(v133 + 160) != 1)
        {
          v134 = *(v133 + 72);
          v135 = *(v133 + 80);
          v136 = 16 * (v135 - v134) - 1;
          if (v135 == v134)
          {
            v136 = 0;
          }

          if (v136 == *(v133 + 104) + *(v133 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v133 + 64));
            v134 = *(v133 + 72);
            v135 = *(v133 + 80);
          }

          if (v135 == v134)
          {
            v138 = 0;
          }

          else
          {
            v137 = *(v133 + 104) + *(v133 + 96);
            v138 = *(v134 + ((v137 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v137 & 0x7F);
          }

          *(v138 + 24) = 0;
          operator new();
        }

        v283 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v283, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v283, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v132);
      v311 = *v129;
      v325 = *(v129 + 2);
      v246 = *(*(mlx::core::scheduler::scheduler(v245) + 1) + 8 * *v129);
      std::mutex::lock(v246);
      if (*(v246 + 160) != 1)
      {
        v247 = *(v246 + 72);
        v248 = *(v246 + 80);
        v249 = 16 * (v248 - v247) - 1;
        if (v248 == v247)
        {
          v249 = 0;
        }

        if (v249 == *(v246 + 104) + *(v246 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v246 + 64));
          v247 = *(v246 + 72);
          v248 = *(v246 + 80);
        }

        if (v248 == v247)
        {
          v251 = 0;
        }

        else
        {
          v250 = *(v246 + 104) + *(v246 + 96);
          v251 = *(v247 + ((v250 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v250 & 0x7F);
        }

        *(v251 + 24) = 0;
        operator new();
      }

      v297 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v297, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v297, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    default:
      return;
  }
}