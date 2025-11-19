void sub_1E56E3154(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(v2 + 2);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__function::__func<void({block_pointer} {__strong})(OpaqueEventQueue *),std::allocator<void({block_pointer} {__strong})(OpaqueEventQueue *)>,void ()(OpaqueEventQueue *)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1E692CD30);
}

uint64_t std::__function::__func<void({block_pointer} {__strong})(OpaqueEventQueue *),std::allocator<void({block_pointer} {__strong})(OpaqueEventQueue *)>,void ()(OpaqueEventQueue *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5F3D7F0;
  result = MEMORY[0x1E692D6D0](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<void({block_pointer} {__strong})(OpaqueEventQueue *),std::allocator<void({block_pointer} {__strong})(OpaqueEventQueue *)>,void ()(OpaqueEventQueue *)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
}

uint64_t std::__function::__func<void({block_pointer} {__strong})(OpaqueEventQueue *),std::allocator<void({block_pointer} {__strong})(OpaqueEventQueue *)>,void ()(OpaqueEventQueue *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E877EB48, MEMORY[0x1E69E5280]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

unint64_t FormatOneDetails<std::string>(const std::string::value_type **a1, std::string *this, uint64_t a3)
{
  v3 = a1[1];
  if (!v3)
  {
    v12 = 0;
    v9 = 1;
    return v12 | v9;
  }

  v7 = *a1;
  v8 = &v3[*a1];
  v9 = 1;
  v10 = *a1;
LABEL_3:
  v11 = 0;
  while (*v10 != asc_1E57B78C0[v11])
  {
    if (++v11 == 3)
    {
      if (++v10 == v8)
      {
        v12 = 0;
        return v12 | v9;
      }

      goto LABEL_3;
    }
  }

  v12 = 0;
  v9 = 1;
  if (v10 != v8)
  {
    v13 = v10 - v7;
    if (v10 - v7 != -1)
    {
      std::string::append(this, v7, v10 - v7);
      v14 = a1[1];
      v15 = v14 >= v13;
      v16 = &v14[-v13];
      if (!v15)
      {
        goto LABEL_102;
      }

      *a1 += v13;
      a1[1] = v16;
      ParseFormat(a1, &v36);
      v17 = v37;
      if (!v37)
      {
        v12 = 0;
        v9 = 2;
        return v12 | v9;
      }

      if (v38 <= 4)
      {
        if ((v38 - 1) < 3)
        {
          goto LABEL_99;
        }

        if (v38 == 4)
        {
          if (v37 <= 0x7FFFFFFFFFFFFFF7)
          {
            if (v37 >= 0x17)
            {
              operator new();
            }

            *(&__dst.__r_.__value_.__s + 23) = v37;
            memmove(&__dst, v36, v37);
            __dst.__r_.__value_.__s.__data_[v17] = 0;
            std::string::basic_string[abi:ne200100]<0>(&v35, "??? (hex)");
            if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v23 = &v35;
            }

            else
            {
              v23 = v35.__r_.__value_.__r.__words[0];
            }

            if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v35.__r_.__value_.__l.__size_;
            }

            goto LABEL_94;
          }

LABEL_103:
          std::string::__throw_length_error[abi:ne200100]();
        }

        goto LABEL_39;
      }

      if (v38 <= 6)
      {
        if (v38 == 5)
        {
          if (*(a3 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&__dst, *a3, *(a3 + 8));
          }

          else
          {
            __dst = *a3;
          }

          RedactForPrivacy(&v36, &__dst, &v35);
          if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v23 = &v35;
          }

          else
          {
            v23 = v35.__r_.__value_.__r.__words[0];
          }

          if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v35.__r_.__value_.__l.__size_;
          }
        }

        else
        {
          if (*(a3 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&__dst, *a3, *(a3 + 8));
          }

          else
          {
            __dst = *a3;
          }

          RedactForPrivacy(&v36, &__dst, &v35);
          if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v23 = &v35;
          }

          else
          {
            v23 = v35.__r_.__value_.__r.__words[0];
          }

          if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v35.__r_.__value_.__l.__size_;
          }
        }

LABEL_94:
        std::string::append(this, v23, size);
        if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v35.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_99:
          v28 = a1[1];
          v29 = &v28[-v37];
          if (v28 >= v37)
          {
            v9 = 0;
            *a1 += v37;
            a1[1] = v29;
            v12 = v38 << 32;
            return v12 | v9;
          }

LABEL_102:
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        v27 = __dst.__r_.__value_.__r.__words[0];
LABEL_98:
        operator delete(v27);
        goto LABEL_99;
      }

      if (v38 == 8)
      {
        if (v37 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_103;
        }

        if (v37 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v37;
        memmove(&__dst, v36, v37);
        __dst.__r_.__value_.__s.__data_[v17] = 0;
        ExtractEmbeddedFormat(&__dst, &v35);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        v20 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
        v21 = &v35;
        if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v20 = v35.__r_.__value_.__l.__size_;
          v21 = v35.__r_.__value_.__r.__words[0];
        }

        __p.__r_.__value_.__r.__words[0] = v21;
        __p.__r_.__value_.__l.__size_ = v20;
        FormatDetails<std::string>(&__dst, &__p, a3);
        v22 = v37;
        if (v37 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v37 >= 0x17)
        {
          operator new();
        }

        v32 = v37;
        if (v37)
        {
          memmove(&v31, v36, v37);
        }

        *(&v31 + v22) = 0;
        ExtendedFormatAdaptor(&v31, &__dst, &__p);
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
          v26 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v26 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(this, p_p, v26);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v32 < 0)
        {
          operator delete(v31);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        if (v38 != 7)
        {
LABEL_39:
          if (*(a3 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&__dst, *a3, *(a3 + 8));
          }

          else
          {
            __dst = *a3;
          }

          RedactForPrivacy(&v36, &__dst, &v35);
          if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v23 = &v35;
          }

          else
          {
            v23 = v35.__r_.__value_.__r.__words[0];
          }

          if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v35.__r_.__value_.__l.__size_;
          }

          goto LABEL_94;
        }

        DeEscapeFormatFragment(&v36, &v35);
        if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = &v35;
        }

        else
        {
          v18 = v35.__r_.__value_.__r.__words[0];
        }

        if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v19 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v19 = v35.__r_.__value_.__l.__size_;
        }

        std::string::append(this, v18, v19);
      }

      if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_99;
      }

      v27 = v35.__r_.__value_.__r.__words[0];
      goto LABEL_98;
    }
  }

  return v12 | v9;
}

void sub_1E56E3948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

void FormatDetails<std::string>(__int128 *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  memset(&__p, 0, sizeof(__p));
  v10 = *a1;
  do
  {
    v5 = FormatOneDetails<std::string>(&v10, &__p, a2);
    if (v5)
    {
      *(&a3->__r_.__value_.__s + 23) = 0;
      a3->__r_.__value_.__s.__data_[0] = 0;
      goto LABEL_13;
    }
  }

  while (v5 == 0x700000000);
  FormatDetails(&v10, &v9);
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
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v8 = std::string::insert(&v9, 0, p_p, size);
  *a3 = *v8;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

LABEL_13:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E56E3AD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void FormatDetails<int>(__int128 *a1@<X0>, int *a2@<X1>, std::string *a3@<X8>)
{
  memset(&__p, 0, sizeof(__p));
  v10 = *a1;
  do
  {
    v5 = FormatOneDetails<int>(&v10, &__p, a2);
    if (v5)
    {
      *(&a3->__r_.__value_.__s + 23) = 0;
      a3->__r_.__value_.__s.__data_[0] = 0;
      goto LABEL_13;
    }
  }

  while (v5 == 0x700000000);
  FormatDetails(&v10, &v9);
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
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v8 = std::string::insert(&v9, 0, p_p, size);
  *a3 = *v8;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

LABEL_13:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E56E3BE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

unint64_t FormatOneDetails<int>(const std::string::value_type **a1, std::string *this, int *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = a1[1];
  if (!v3)
  {
    v12 = 0;
    v9 = 1;
    goto LABEL_134;
  }

  v7 = *a1;
  v8 = &v3[*a1];
  v9 = 1;
  v10 = *a1;
  while (2)
  {
    for (i = 0; i != 3; ++i)
    {
      if (*v10 == asc_1E57B78C0[i])
      {
        v12 = 0;
        v9 = 1;
        if (v10 == v8)
        {
          goto LABEL_134;
        }

        v13 = v10 - v7;
        if (v10 - v7 == -1)
        {
          goto LABEL_134;
        }

        std::string::append(this, v7, v10 - v7);
        v14 = a1[1];
        v15 = v14 >= v13;
        v16 = &v14[-v13];
        if (!v15)
        {
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        *a1 += v13;
        a1[1] = v16;
        ParseFormat(a1, &__src);
        v17 = __len;
        if (!__len)
        {
          v12 = 0;
          v9 = 2;
          goto LABEL_134;
        }

        if (v44 > 4)
        {
          if (v44 <= 6)
          {
            if (v44 == 5)
            {
              std::to_string(&v41, *a3);
              RedactForPrivacy(&__src, &v41, __str);
              if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v18 = __str;
              }

              else
              {
                v18 = __str[0].__r_.__value_.__r.__words[0];
              }

              if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                size = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
              }

              else
              {
                size = __str[0].__r_.__value_.__l.__size_;
              }
            }

            else
            {
              std::to_string(&v41, *a3);
              RedactForPrivacy(&__src, &v41, __str);
              if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v18 = __str;
              }

              else
              {
                v18 = __str[0].__r_.__value_.__r.__words[0];
              }

              if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                size = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
              }

              else
              {
                size = __str[0].__r_.__value_.__l.__size_;
              }
            }

            goto LABEL_111;
          }

          if (v44 == 8)
          {
            if (__len > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (__len >= 0x17)
            {
              operator new();
            }

            *(&v41.__r_.__value_.__s + 23) = __len;
            memmove(&v41, __src, __len);
            v41.__r_.__value_.__s.__data_[v17] = 0;
            ExtractEmbeddedFormat(&v41, __str);
            if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v41.__r_.__value_.__l.__data_);
            }

            v29 = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
            v30 = __str;
            if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v29 = __str[0].__r_.__value_.__l.__size_;
              v30 = __str[0].__r_.__value_.__r.__words[0];
            }

            __dst.__r_.__value_.__r.__words[0] = v30;
            __dst.__r_.__value_.__l.__size_ = v29;
            FormatDetails<int>(&v41, &__dst, a3);
            v31 = __len;
            if (__len > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (__len >= 0x17)
            {
              operator new();
            }

            v39 = __len;
            if (__len)
            {
              memmove(&__p, __src, __len);
            }

            *(&__p + v31) = 0;
            ExtendedFormatAdaptor(&__p, &v41, &__dst);
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_dst = &__dst;
            }

            else
            {
              p_dst = __dst.__r_.__value_.__r.__words[0];
            }

            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v33 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v33 = __dst.__r_.__value_.__l.__size_;
            }

            std::string::append(this, p_dst, v33);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }

            if (v39 < 0)
            {
              operator delete(__p);
            }

            if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v41.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            if (v44 != 7)
            {
LABEL_58:
              std::to_string(&v41, *a3);
              RedactForPrivacy(&__src, &v41, __str);
              if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v18 = __str;
              }

              else
              {
                v18 = __str[0].__r_.__value_.__r.__words[0];
              }

              if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                size = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
              }

              else
              {
                size = __str[0].__r_.__value_.__l.__size_;
              }

LABEL_111:
              std::string::append(this, v18, size);
              if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__str[0].__r_.__value_.__l.__data_);
              }

              if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_132;
              }

              v28 = v41.__r_.__value_.__r.__words[0];
              goto LABEL_131;
            }

            DeEscapeFormatFragment(&__src, __str);
            if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v20 = __str;
            }

            else
            {
              v20 = __str[0].__r_.__value_.__r.__words[0];
            }

            if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v21 = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
            }

            else
            {
              v21 = __str[0].__r_.__value_.__l.__size_;
            }

            std::string::append(this, v20, v21);
          }

          if ((SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_132:
            v34 = a1[1];
            v35 = &v34[-__len];
            if (v34 < __len)
            {
              std::__throw_out_of_range[abi:ne200100]("string_view::substr");
            }

            v9 = 0;
            *a1 += __len;
            a1[1] = v35;
            v12 = v44 << 32;
            goto LABEL_134;
          }

          v28 = __str[0].__r_.__value_.__r.__words[0];
        }

        else
        {
          if (v44 > 2)
          {
            if (v44 != 3)
            {
              if (__len > 0x7FFFFFFFFFFFFFF7)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              if (__len >= 0x17)
              {
                operator new();
              }

              *(&v41.__r_.__value_.__s + 23) = __len;
              memmove(&v41, __src, __len);
              v41.__r_.__value_.__s.__data_[v17] = 0;
              HexDescriptionPrinterGlue<int,void>::dump(&v41, a3, __str);
              if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v18 = __str;
              }

              else
              {
                v18 = __str[0].__r_.__value_.__r.__words[0];
              }

              if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                size = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
              }

              else
              {
                size = __str[0].__r_.__value_.__l.__size_;
              }

              goto LABEL_111;
            }

            if (__len > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (__len >= 0x17)
            {
              operator new();
            }

            *(&__dst.__r_.__value_.__s + 23) = __len;
            memmove(&__dst, __src, __len);
            __dst.__r_.__value_.__s.__data_[v17] = 0;
            v27 = *a3;
            v23 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
            v24 = __dst.__r_.__value_.__r.__words[0];
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              snprintf(__str, 0x64uLL, &__dst, v27);
            }

            else
            {
              snprintf(__str, 0x64uLL, __dst.__r_.__value_.__l.__data_, v27);
            }

            std::string::basic_string[abi:ne200100]<0>(&v41, __str);
            if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v25 = &v41;
            }

            else
            {
              v25 = v41.__r_.__value_.__r.__words[0];
            }

            if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v26 = HIBYTE(v41.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v26 = v41.__r_.__value_.__l.__size_;
            }
          }

          else
          {
            if (v44 != 1)
            {
              if (v44 == 2)
              {
                if (__len > 0x7FFFFFFFFFFFFFF7)
                {
                  std::string::__throw_length_error[abi:ne200100]();
                }

                if (__len >= 0x17)
                {
                  operator new();
                }

                *(&v41.__r_.__value_.__s + 23) = __len;
                memmove(&v41, __src, __len);
                v41.__r_.__value_.__s.__data_[v17] = 0;
                std::to_string(__str, *a3);
                if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v18 = __str;
                }

                else
                {
                  v18 = __str[0].__r_.__value_.__r.__words[0];
                }

                if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  size = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
                }

                else
                {
                  size = __str[0].__r_.__value_.__l.__size_;
                }

                goto LABEL_111;
              }

              goto LABEL_58;
            }

            if (__len > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (__len >= 0x17)
            {
              operator new();
            }

            *(&__dst.__r_.__value_.__s + 23) = __len;
            memmove(&__dst, __src, __len);
            __dst.__r_.__value_.__s.__data_[v17] = 0;
            v22 = *a3;
            v23 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
            v24 = __dst.__r_.__value_.__r.__words[0];
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              snprintf(__str, 0x64uLL, &__dst, v22);
            }

            else
            {
              snprintf(__str, 0x64uLL, __dst.__r_.__value_.__l.__data_, v22);
            }

            std::string::basic_string[abi:ne200100]<0>(&v41, __str);
            if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v25 = &v41;
            }

            else
            {
              v25 = v41.__r_.__value_.__r.__words[0];
            }

            if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v26 = HIBYTE(v41.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v26 = v41.__r_.__value_.__l.__size_;
            }
          }

          std::string::append(this, v25, v26);
          if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v41.__r_.__value_.__l.__data_);
          }

          if ((v23 & 0x80000000) == 0)
          {
            goto LABEL_132;
          }

          v28 = v24;
        }

LABEL_131:
        operator delete(v28);
        goto LABEL_132;
      }
    }

    if (++v10 != v8)
    {
      continue;
    }

    break;
  }

  v12 = 0;
LABEL_134:
  v36 = *MEMORY[0x1E69E9840];
  return v12 | v9;
}

void sub_1E56E4404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *HexDescriptionPrinterGlue<int,void>::dump@<X0>(uint64_t a1@<X0>, int *a2@<X1>, _BYTE *a3@<X8>)
{
  v24[19] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a1 + 8);
  }

  if (v5)
  {
    WidenHexFormatStringSpecifierToLongLong(a1, __p);
    if (v14 >= 0)
    {
      snprintf(__str, 0x64uLL, __p, *a2);
    }

    else
    {
      snprintf(__str, 0x64uLL, __p[0], *a2);
    }

    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    result = std::string::basic_string[abi:ne200100]<0>(a3, __str);
    goto LABEL_26;
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](__str);
  *(&v16 + *(v16 - 24) + 8) = *(&v16 + *(v16 - 24) + 8) & 0xFFFFFFB5 | 8;
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "0x", 2);
  MEMORY[0x1E692CAD0](v7, *a2);
  if ((v23 & 0x10) != 0)
  {
    v9 = v22;
    if (v22 < v19)
    {
      v22 = v19;
      v9 = v19;
    }

    locale = v18[4].__locale_;
    goto LABEL_17;
  }

  if ((v23 & 8) != 0)
  {
    locale = v18[1].__locale_;
    v9 = v18[3].__locale_;
LABEL_17:
    v8 = v9 - locale;
    if ((v9 - locale) >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v8 >= 0x17)
    {
      operator new();
    }

    a3[23] = v8;
    if (v8)
    {
      memmove(a3, locale, v8);
    }

    goto LABEL_23;
  }

  v8 = 0;
  a3[23] = 0;
LABEL_23:
  a3[v8] = 0;
  *__str = *MEMORY[0x1E69E54D8];
  v11 = *(MEMORY[0x1E69E54D8] + 72);
  *&__str[*(*__str - 24)] = *(MEMORY[0x1E69E54D8] + 64);
  v16 = v11;
  v17 = MEMORY[0x1E69E5548] + 16;
  if (v21 < 0)
  {
    operator delete(v20);
  }

  v17 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  result = MEMORY[0x1E692CCA0](v24);
LABEL_26:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E56E4800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a13, MEMORY[0x1E69E54D8]);
  MEMORY[0x1E692CCA0](&a29);
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void std::vector<int>::resize(std::vector<int> *this, std::vector<int>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<int>::__append(this, __sz - v2);
  }
}

void std::vector<TNodePtr>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 8 * a2;
      while (v3 != v6)
      {
        v7 = *(v3 - 8);
        v3 -= 8;
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<TNodePtr>::__append(a1, v5);
  }
}

void *std::vector<TString>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::allocator<TString>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1E56E4AE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<TString>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<int>::reserve(std::vector<int> *this, std::vector<int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      v2 = this->__end_ - this->__begin_;
      std::allocator<int>::allocate_at_least[abi:ne200100](this, __n);
    }

    std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
  }
}

void std::vector<int>::__append(std::vector<int> *this, std::vector<int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 4 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::allocator<int>::allocate_at_least[abi:ne200100](this, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * __n);
    memcpy(0, begin, v7);
    v12 = this->__begin_;
    this->__begin_ = 0;
    this->__end_ = &v11[4 * __n];
    this->__end_cap_.__value_ = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void std::allocator<int>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<TNodePtr>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 3;
    v10 = v4 - v6;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    v17 = a1;
    if (v11)
    {
      std::allocator<TNodePtr>::allocate_at_least[abi:ne200100](a1, v11);
    }

    v14 = 0;
    v15 = 8 * v9;
    bzero((8 * v9), 8 * a2);
    v16 = 8 * v9 + 8 * a2;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TNodePtr>,TNodePtr*>(a1, v6, v5, 0);
    v12 = *a1;
    *a1 = 0;
    v13 = *(a1 + 16);
    *(a1 + 8) = v16;
    *&v16 = v12;
    *(&v16 + 1) = v13;
    v14 = v12;
    v15 = v12;
    std::__split_buffer<TNodePtr>::~__split_buffer(&v14);
  }
}

void sub_1E56E4E38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<TNodePtr>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::tuple<std::vector<TNodePtr>,std::vector<TString>,std::vector<int>>::~tuple(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 24);
  std::vector<TString>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = a1;
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](&v4);
  return a1;
}

void std::vector<int>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::allocator<int>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,TNodeIterator::TNodeIterator(TNodePtr const&,BOOL,BOOL,BOOL)::$_0 &,int *,false>(unint64_t result, int *a2, void **a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v225 = a2 - 1;
  v227 = a2;
  v220 = a2 - 3;
  v221 = a2 - 2;
  i = v8;
  while (1)
  {
    v10 = i;
    v11 = a2 - i;
    v230 = i;
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:

          return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,TNodeIterator::TNodeIterator(TNodePtr const&,BOOL,BOOL,BOOL)::$_0 &,int *,0>(i, i + 1, v225, a3);
        case 4:

          return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,TNodeIterator::TNodeIterator(TNodePtr const&,BOOL,BOOL,BOOL)::$_0 &,int *,0>(i, i + 1, i + 2, v225, a3);
        case 5:

          return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,TNodeIterator::TNodeIterator(TNodePtr const&,BOOL,BOOL,BOOL)::$_0 &,int *,0>(i, i + 1, i + 2, i + 3, v225, a3);
      }
    }

    else
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v105 = *(a2 - 1);
        v106 = *i;
        v107 = *a3[1];
        v108 = *(v107 + 4 * v105);
        v109 = *(v107 + 4 * v106);
        if (v108 < v109 || v108 <= v109 && ((result = TString::StringCompare((*a3[2] + 8 * v105), (*a3[2] + 8 * v106)), result == -1) || !result && (v201 = TNodeFromFINode(*(**a3 + 8 * v105)), result = TNodeFromFINode(*(**a3 + 8 * v106)), v66 = v201 >= result, v10 = i, !v66)))
        {
          v110 = *v10;
          *v10 = *(a2 - 1);
          *(a2 - 1) = v110;
        }

        return result;
      }
    }

    if (v11 <= 23)
    {
      v111 = i + 1;
      v112 = i == a2 || v111 == a2;
      v113 = v112;
      if ((a5 & 1) == 0)
      {
        if ((v113 & 1) == 0)
        {
          do
          {
            v202 = v10;
            v10 = v111;
            v204 = *v202;
            v203 = v202[1];
            v205 = *a3[1];
            v206 = *(v205 + 4 * v203);
            v207 = *(v205 + 4 * v204);
            if (v206 < v207 || v206 <= v207 && ((result = TString::StringCompare((*a3[2] + 8 * v203), (*a3[2] + 8 * v204)), result == -1) || !result && (v217 = TNodeFromFINode(*(**a3 + 8 * v203)), v218 = v10, v219 = v217, result = TNodeFromFINode(*(**a3 + 8 * v204)), v66 = v219 >= result, v10 = v218, !v66)))
            {
              v208 = v10;
              v209 = *v10;
              while (1)
              {
                do
                {
                  v210 = v202;
                  v202[1] = *v202;
                  v212 = *--v202;
                  v211 = v212;
                  v213 = *a3[1];
                  v214 = *(v213 + 4 * v209);
                  v215 = *(v213 + 4 * v212);
                }

                while (v214 < v215);
                if (v214 > v215)
                {
                  break;
                }

                result = TString::StringCompare((*a3[2] + 8 * v209), (*a3[2] + 8 * v211));
                if (result != -1)
                {
                  if (result)
                  {
                    break;
                  }

                  v216 = TNodeFromFINode(*(**a3 + 8 * v209));
                  result = TNodeFromFINode(*(**a3 + 8 * v211));
                  if (v216 >= result)
                  {
                    break;
                  }
                }
              }

              *v210 = v209;
              a2 = v227;
              v10 = v208;
            }

            v111 = v10 + 1;
          }

          while (v10 + 1 != a2);
        }

        return result;
      }

      if (v113)
      {
        return result;
      }

      v114 = 0;
      v115 = i;
LABEL_140:
      v116 = v115;
      v115 = v111;
      v118 = *v116;
      v117 = v116[1];
      v119 = *a3[1];
      v120 = *(v119 + 4 * v117);
      v121 = *(v119 + 4 * v118);
      if (v120 >= v121)
      {
        if (v120 > v121)
        {
          goto LABEL_160;
        }

        result = TString::StringCompare((*a3[2] + 8 * v117), (*a3[2] + 8 * v118));
        if (result != -1)
        {
          if (result)
          {
            goto LABEL_160;
          }

          v131 = TNodeFromFINode(*(**a3 + 8 * v117));
          result = TNodeFromFINode(*(**a3 + 8 * v118));
          v66 = v131 >= result;
          v10 = v230;
          if (v66)
          {
            goto LABEL_160;
          }
        }
      }

      v122 = v116[1];
      v116[1] = *v116;
      v123 = v10;
      if (v116 == v10)
      {
        goto LABEL_159;
      }

      v124 = v114;
      while (1)
      {
        v125 = (v10 + v124);
        v126 = *(v10 + v124 - 4);
        v127 = *a3[1];
        v128 = *(v127 + 4 * v122);
        v129 = *(v127 + 4 * v126);
        if (v128 >= v129)
        {
          if (v128 > v129)
          {
            goto LABEL_156;
          }

          result = TString::StringCompare((*a3[2] + 8 * v122), (*a3[2] + 8 * v126));
          if (result != -1)
          {
            if (result)
            {
              v123 = (v10 + v124);
LABEL_158:
              a2 = v227;
LABEL_159:
              *v123 = v122;
LABEL_160:
              v111 = v115 + 1;
              v114 += 4;
              if (v115 + 1 == a2)
              {
                return result;
              }

              goto LABEL_140;
            }

            v130 = TNodeFromFINode(*(**a3 + 8 * v122));
            result = TNodeFromFINode(*(**a3 + 8 * v126));
            v66 = v130 >= result;
            v10 = v230;
            if (v66)
            {
LABEL_156:
              v123 = v116;
              goto LABEL_158;
            }
          }
        }

        --v116;
        *v125 = *(v125 - 1);
        v124 -= 4;
        if (!v124)
        {
          v123 = v10;
          goto LABEL_158;
        }
      }
    }

    if (!a4)
    {
      break;
    }

    v12 = v11 >> 1;
    v13 = &i[v11 >> 1];
    if (v11 < 0x81)
    {
      result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,TNodeIterator::TNodeIterator(TNodePtr const&,BOOL,BOOL,BOOL)::$_0 &,int *,0>(&v10[v11 >> 1], v10, v225, a3);
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,TNodeIterator::TNodeIterator(TNodePtr const&,BOOL,BOOL,BOOL)::$_0 &,int *,0>(v10, &v10[v11 >> 1], v225, a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,TNodeIterator::TNodeIterator(TNodePtr const&,BOOL,BOOL,BOOL)::$_0 &,int *,0>(v10 + 1, v13 - 1, v221, a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,TNodeIterator::TNodeIterator(TNodePtr const&,BOOL,BOOL,BOOL)::$_0 &,int *,0>(v10 + 2, &v10[v12 + 1], v220, a3);
      result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,TNodeIterator::TNodeIterator(TNodePtr const&,BOOL,BOOL,BOOL)::$_0 &,int *,0>(v13 - 1, &v10[v11 >> 1], &v10[v12 + 1], a3);
      v14 = *v10;
      *v10 = *v13;
      *v13 = v14;
    }

    --a4;
    if (a5)
    {
      goto LABEL_21;
    }

    v16 = *(v10 - 1);
    v15 = *v10;
    v17 = *a3[1];
    v18 = *(v17 + 4 * v16);
    v19 = *(v17 + 4 * v15);
    if (v18 < v19 || v18 <= v19 && ((result = TString::StringCompare((*a3[2] + 8 * v16), (*a3[2] + 8 * v15)), result == -1) || !result && (v20 = TNodeFromFINode(*(**a3 + 8 * v16)), result = TNodeFromFINode(*(**a3 + 8 * v15)), v20 < result)))
    {
LABEL_21:
      v21 = 0;
      v22 = *v10;
      while (1)
      {
        v23 = v10[v21 + 1];
        v24 = *a3[1];
        v25 = *(v24 + 4 * v23);
        v26 = *(v24 + 4 * v22);
        if (v25 >= v26)
        {
          if (v25 > v26)
          {
            break;
          }

          v27 = TString::StringCompare((*a3[2] + 8 * v23), (*a3[2] + 8 * v22));
          if (v27 != kCFCompareLessThan)
          {
            if (v27)
            {
              break;
            }

            v28 = TNodeFromFINode(*(**a3 + 8 * v23));
            if (v28 >= TNodeFromFINode(*(**a3 + 8 * v22)))
            {
              break;
            }
          }
        }

        ++v21;
      }

      v29 = &v10[v21];
      v30 = &v10[v21 + 1];
      if (!(v21 * 4))
      {
        v31 = v227;
        if (v30 >= v227)
        {
          goto LABEL_49;
        }

        v31 = v225;
        v40 = *v225;
        v41 = *a3[1];
        v42 = *(v41 + 4 * v40);
        v43 = *(v41 + 4 * v22);
        if (v42 < v43)
        {
          goto LABEL_49;
        }

        v31 = v225;
        while (2)
        {
          if (v42 > v43)
          {
LABEL_44:
            if (v30 >= v31)
            {
              goto LABEL_49;
            }
          }

          else
          {
            v44 = TString::StringCompare((*a3[2] + 8 * v40), (*a3[2] + 8 * v22));
            if (v44)
            {
              if (v44 == kCFCompareLessThan)
              {
                goto LABEL_49;
              }

              goto LABEL_44;
            }

            v45 = TNodeFromFINode(*(**a3 + 8 * v40));
            v46 = TNodeFromFINode(*(**a3 + 8 * v22));
            if (v30 >= v31 || v45 < v46)
            {
              goto LABEL_49;
            }
          }

          v47 = *--v31;
          v40 = v47;
          v48 = *a3[1];
          v42 = *(v48 + 4 * v47);
          v43 = *(v48 + 4 * v22);
          if (v42 < v43)
          {
            goto LABEL_49;
          }

          continue;
        }
      }

      v31 = v225;
      v32 = *v225;
      v33 = *a3[1];
      v34 = *(v33 + 4 * v32);
      v35 = *(v33 + 4 * v22);
      if (v34 >= v35)
      {
        v31 = v225;
        do
        {
          if (v34 <= v35)
          {
            v36 = TString::StringCompare((*a3[2] + 8 * v32), (*a3[2] + 8 * v22));
            if (v36)
            {
              if (v36 == kCFCompareLessThan)
              {
                break;
              }
            }

            else
            {
              v37 = TNodeFromFINode(*(**a3 + 8 * v32));
              if (v37 < TNodeFromFINode(*(**a3 + 8 * v22)))
              {
                break;
              }
            }
          }

          v38 = *--v31;
          v32 = v38;
          v39 = *a3[1];
          v34 = *(v39 + 4 * v38);
          v35 = *(v39 + 4 * v22);
        }

        while (v34 >= v35);
      }

LABEL_49:
      if (v30 < v31)
      {
        v49 = a4;
        v50 = v30;
        v51 = v31;
        do
        {
          v52 = *v50;
          *v50++ = *v51;
          *v51 = v52;
          while (1)
          {
            v53 = *v50;
            v54 = *a3[1];
            v55 = *(v54 + 4 * v53);
            v56 = *(v54 + 4 * v22);
            if (v55 >= v56)
            {
              if (v55 > v56)
              {
                break;
              }

              v57 = TString::StringCompare((*a3[2] + 8 * v53), (*a3[2] + 8 * v22));
              if (v57 != kCFCompareLessThan)
              {
                if (v57)
                {
                  break;
                }

                v58 = TNodeFromFINode(*(**a3 + 8 * v53));
                if (v58 >= TNodeFromFINode(*(**a3 + 8 * v22)))
                {
                  break;
                }
              }
            }

            ++v50;
          }

          while (1)
          {
            v60 = *--v51;
            v59 = v60;
            v61 = *a3[1];
            v62 = *(v61 + 4 * v60);
            v63 = *(v61 + 4 * v22);
            if (v62 < v63)
            {
              break;
            }

            if (v62 <= v63)
            {
              v64 = TString::StringCompare((*a3[2] + 8 * v59), (*a3[2] + 8 * v22));
              if (v64)
              {
                if (v64 == kCFCompareLessThan)
                {
                  break;
                }
              }

              else
              {
                v65 = TNodeFromFINode(*(**a3 + 8 * v59));
                if (v65 < TNodeFromFINode(*(**a3 + 8 * v22)))
                {
                  break;
                }
              }
            }
          }
        }

        while (v50 < v51);
        v29 = v50 - 1;
        a4 = v49;
      }

      v8 = v230;
      if (v29 != v230)
      {
        *v230 = *v29;
      }

      *v29 = v22;
      v66 = v30 >= v31;
      a2 = v227;
      if (v66)
      {
        v67 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,TNodeIterator::TNodeIterator(TNodePtr const&,BOOL,BOOL,BOOL)::$_0 &,int *>(v230, v29, a3);
        i = v29 + 1;
        result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,TNodeIterator::TNodeIterator(TNodePtr const&,BOOL,BOOL,BOOL)::$_0 &,int *>(v29 + 1, v227, a3);
        if (result)
        {
          a2 = v29;
          if (v67)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v67)
        {
          goto LABEL_72;
        }
      }

      else
      {
LABEL_72:
        result = std::__introsort<std::_ClassicAlgPolicy,TNodeIterator::TNodeIterator(TNodePtr const&,BOOL,BOOL,BOOL)::$_0 &,int *,false>(v230, v29, a3, a4, a5 & 1);
        a5 = 0;
        i = v29 + 1;
      }
    }

    else
    {
      v68 = *v10;
      v69 = *v225;
      v70 = *a3[1];
      v71 = *(v70 + 4 * *v10);
      v72 = *(v70 + 4 * v69);
      if (v71 < v72 || v71 <= v72 && ((result = TString::StringCompare((*a3[2] + 8 * v68), (*a3[2] + 8 * v69)), result == -1) || !result && (v99 = TNodeFromFINode(*(**a3 + 8 * v68)), result = TNodeFromFINode(*(**a3 + 8 * v69)), v99 < result)))
      {
        i = v10;
        while (1)
        {
          v74 = i[1];
          ++i;
          v73 = v74;
          v75 = *a3[1];
          v76 = *(v75 + 4 * v68);
          v77 = *(v75 + 4 * v74);
          if (v76 < v77)
          {
            break;
          }

          if (v76 <= v77)
          {
            result = TString::StringCompare((*a3[2] + 8 * v68), (*a3[2] + 8 * v73));
            if (result)
            {
              if (result == -1)
              {
                break;
              }
            }

            else
            {
              v78 = TNodeFromFINode(*(**a3 + 8 * v68));
              result = TNodeFromFINode(*(**a3 + 8 * v73));
              if (v78 < result)
              {
                break;
              }
            }
          }
        }
      }

      else
      {
        for (i = v10 + 1; i < v227; ++i)
        {
          v100 = *i;
          v101 = *a3[1];
          v102 = *(v101 + 4 * v68);
          v103 = *(v101 + 4 * v100);
          if (v102 < v103)
          {
            break;
          }

          if (v102 <= v103)
          {
            result = TString::StringCompare((*a3[2] + 8 * v68), (*a3[2] + 8 * v100));
            if (result)
            {
              if (result == -1)
              {
                break;
              }
            }

            else
            {
              v104 = TNodeFromFINode(*(**a3 + 8 * v68));
              result = TNodeFromFINode(*(**a3 + 8 * v100));
              if (v104 < result)
              {
                break;
              }
            }
          }
        }
      }

      v79 = a4;
      j = v227;
      if (i < v227)
      {
        for (j = v225; ; --j)
        {
          v81 = *j;
          v82 = *a3[1];
          v83 = *(v82 + 4 * v68);
          v84 = *(v82 + 4 * v81);
          if (v83 >= v84)
          {
            if (v83 > v84)
            {
              break;
            }

            result = TString::StringCompare((*a3[2] + 8 * v68), (*a3[2] + 8 * v81));
            if (result != -1)
            {
              if (result)
              {
                break;
              }

              v85 = TNodeFromFINode(*(**a3 + 8 * v68));
              result = TNodeFromFINode(*(**a3 + 8 * v81));
              if (v85 >= result)
              {
                break;
              }
            }
          }
        }
      }

      while (i < j)
      {
        v86 = *i;
        *i = *j;
        *j = v86;
        while (1)
        {
          v88 = i[1];
          ++i;
          v87 = v88;
          v89 = *a3[1];
          v90 = *(v89 + 4 * v68);
          v91 = *(v89 + 4 * v88);
          if (v90 < v91)
          {
            break;
          }

          if (v90 <= v91)
          {
            result = TString::StringCompare((*a3[2] + 8 * v68), (*a3[2] + 8 * v87));
            if (result)
            {
              if (result == -1)
              {
                goto LABEL_96;
              }
            }

            else
            {
              v92 = TNodeFromFINode(*(**a3 + 8 * v68));
              result = TNodeFromFINode(*(**a3 + 8 * v87));
              if (v92 < result)
              {
                goto LABEL_96;
              }
            }
          }
        }

        while (1)
        {
          do
          {
LABEL_96:
            v93 = *--j;
            v94 = *a3[1];
            v95 = *(v94 + 4 * v68);
            v96 = *(v94 + 4 * v93);
          }

          while (v95 < v96);
          if (v95 > v96)
          {
            break;
          }

          result = TString::StringCompare((*a3[2] + 8 * v68), (*a3[2] + 8 * v93));
          if (result != -1)
          {
            if (result)
            {
              break;
            }

            v97 = TNodeFromFINode(*(**a3 + 8 * v68));
            result = TNodeFromFINode(*(**a3 + 8 * v93));
            if (v97 >= result)
            {
              break;
            }
          }
        }
      }

      v98 = i - 1;
      if (i - 1 != v10)
      {
        *v10 = *v98;
      }

      a5 = 0;
      *v98 = v68;
      a2 = v227;
      a4 = v79;
    }
  }

  if (i == a2)
  {
    return result;
  }

  v132 = (v11 - 2) >> 1;
  v133 = v132;
  while (2)
  {
    v134 = v133;
    if (v132 < v133)
    {
      goto LABEL_199;
    }

    v135 = (2 * v133) | 1;
    v136 = &v10[v135];
    if (2 * v133 + 2 < v11)
    {
      v137 = *v136;
      v138 = v136[1];
      v139 = *a3[1];
      v140 = *(v139 + 4 * v137);
      v141 = *(v139 + 4 * v138);
      if (v140 < v141 || v140 <= v141 && ((result = TString::StringCompare((*a3[2] + 8 * v137), (*a3[2] + 8 * v138)), v132 = (v11 - 2) >> 1, result == -1) || !result && (v142 = TNodeFromFINode(*(**a3 + 8 * v137)), result = TNodeFromFINode(*(**a3 + 8 * v138)), v132 = (v11 - 2) >> 1, v142 < result)))
      {
        ++v136;
        v135 = 2 * v134 + 2;
      }
    }

    v143 = *v136;
    v10 = v230;
    v144 = v230[v134];
    v145 = *a3[1];
    v146 = *(v145 + 4 * v143);
    v147 = *(v145 + 4 * v144);
    if (v146 < v147)
    {
      goto LABEL_199;
    }

    if (v146 <= v147)
    {
      result = TString::StringCompare((*a3[2] + 8 * v143), (*a3[2] + 8 * v144));
      v132 = (v11 - 2) >> 1;
      if (result == -1)
      {
        goto LABEL_199;
      }

      if (!result)
      {
        v148 = TNodeFromFINode(*(**a3 + 8 * v143));
        result = TNodeFromFINode(*(**a3 + 8 * v144));
        v132 = (v11 - 2) >> 1;
        v66 = v148 >= result;
        v10 = v230;
        if (!v66)
        {
          goto LABEL_199;
        }
      }
    }

    v149 = v10[v134];
    v10[v134] = *v136;
    v224 = v149;
    if (v132 < v135)
    {
      goto LABEL_198;
    }

    v150 = v149;
    v222 = v149;
    while (2)
    {
      v151 = v136;
      v152 = 2 * v135;
      v135 = (2 * v135) | 1;
      v136 = &v10[v135];
      v153 = v152 + 2;
      if (v152 + 2 < v11)
      {
        v154 = *v136;
        v155 = v136[1];
        v156 = *a3[1];
        v157 = *(v156 + 4 * v154);
        v158 = *(v156 + 4 * v155);
        if (v157 < v158 || v157 <= v158 && ((result = TString::StringCompare((*a3[2] + 8 * v154), (*a3[2] + 8 * v155)), v150 = v222, v132 = (v11 - 2) >> 1, result == -1) || !result && (v159 = TNodeFromFINode(*(**a3 + 8 * v154)), result = TNodeFromFINode(*(**a3 + 8 * v155)), v150 = v222, v132 = (v11 - 2) >> 1, v159 < result)))
        {
          ++v136;
          v135 = v153;
        }
      }

      v160 = *v136;
      v161 = *a3[1];
      v162 = *(v161 + 4 * v160);
      v163 = *(v161 + 4 * v150);
      if (v162 < v163)
      {
        v136 = v151;
        v10 = v230;
        goto LABEL_198;
      }

      v10 = v230;
      if (v162 > v163)
      {
        goto LABEL_194;
      }

      v164 = v150;
      result = TString::StringCompare((*a3[2] + 8 * v160), (*a3[2] + 8 * v150));
      if (result)
      {
        v132 = (v11 - 2) >> 1;
        v150 = v164;
        if (result == -1)
        {
          break;
        }

        goto LABEL_194;
      }

      v165 = TNodeFromFINode(*(**a3 + 8 * v160));
      result = TNodeFromFINode(*(**a3 + 8 * v164));
      v66 = v165 >= result;
      v10 = v230;
      v132 = (v11 - 2) >> 1;
      v150 = v164;
      if (v66)
      {
LABEL_194:
        *v151 = *v136;
        if (v132 < v135)
        {
          goto LABEL_198;
        }

        continue;
      }

      break;
    }

    v136 = v151;
LABEL_198:
    *v136 = v224;
LABEL_199:
    v133 = v134 - 1;
    if (v134)
    {
      continue;
    }

    break;
  }

  v166 = v227;
  do
  {
    v228 = v166;
    v167 = 0;
    v226 = *v10;
    v168 = v10;
    do
    {
      v169 = v168;
      v170 = &v168[v167];
      v168 = v170 + 1;
      v171 = 2 * v167;
      v167 = (2 * v167) | 1;
      v172 = v171 + 2;
      if (v171 + 2 < v11)
      {
        v175 = v170[2];
        v174 = v170 + 2;
        v173 = v175;
        v176 = *(v174 - 1);
        v177 = *a3[1];
        v178 = *(v177 + 4 * v176);
        v179 = *(v177 + 4 * v175);
        if (v178 < v179 || v178 <= v179 && ((result = TString::StringCompare((*a3[2] + 8 * v176), (*a3[2] + 8 * v173)), result == -1) || !result && (v180 = TNodeFromFINode(*(**a3 + 8 * v176)), result = TNodeFromFINode(*(**a3 + 8 * v173)), v180 < result)))
        {
          v168 = v174;
          v167 = v172;
        }
      }

      *v169 = *v168;
    }

    while (v167 <= ((v11 - 2) >> 1));
    v181 = v228 - 1;
    v112 = v168 == v228 - 1;
    v229 = v228 - 1;
    if (v112)
    {
      *v168 = v226;
      v10 = v230;
    }

    else
    {
      *v168 = *v181;
      *v181 = v226;
      v10 = v230;
      v182 = (v168 - v230 + 4) >> 2;
      v183 = v182 - 2;
      if (v182 >= 2)
      {
        v184 = v183 >> 1;
        v185 = &v230[v183 >> 1];
        v186 = *v185;
        v187 = *v168;
        v188 = *a3[1];
        v189 = *(v188 + 4 * v186);
        v190 = *(v188 + 4 * v187);
        if (v189 < v190 || v189 <= v190 && ((result = TString::StringCompare((*a3[2] + 8 * v186), (*a3[2] + 8 * v187)), result == -1) || !result && (v193 = TNodeFromFINode(*(**a3 + 8 * v186)), result = TNodeFromFINode(*(**a3 + 8 * v187)), v66 = v193 >= result, v10 = v230, !v66)))
        {
          v191 = *v168;
          *v168 = *v185;
          if (v183 >= 2)
          {
            while (1)
            {
              v194 = v184 - 1;
              v184 = (v184 - 1) >> 1;
              v192 = &v10[v184];
              v195 = *v192;
              v196 = *a3[1];
              v197 = *(v196 + 4 * v195);
              v198 = *(v196 + 4 * v191);
              if (v197 >= v198)
              {
                if (v197 > v198)
                {
                  break;
                }

                result = TString::StringCompare((*a3[2] + 8 * v195), (*a3[2] + 8 * v191));
                if (result != -1)
                {
                  if (result)
                  {
                    break;
                  }

                  v199 = TNodeFromFINode(*(**a3 + 8 * v195));
                  result = TNodeFromFINode(*(**a3 + 8 * v191));
                  v66 = v199 >= result;
                  v10 = v230;
                  if (v66)
                  {
                    break;
                  }
                }
              }

              *v185 = *v192;
              v185 = v192;
              if (v194 <= 1)
              {
                goto LABEL_228;
              }
            }
          }

          v192 = v185;
LABEL_228:
          *v192 = v191;
        }
      }
    }

    v200 = v11-- <= 2;
    v166 = v229;
  }

  while (!v200);
  return result;
}

int *std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,TNodeIterator::TNodeIterator(TNodePtr const&,BOOL,BOOL,BOOL)::$_0 &,int *,0>(int *result, int *a2, int *a3, void **a4)
{
  v6 = a2;
  v7 = result;
  v8 = *a2;
  v9 = *result;
  v10 = *a4[1];
  v11 = *(v10 + 4 * v8);
  v12 = *(v10 + 4 * v9);
  if (v11 < v12 || v11 <= v12 && ((result = TString::StringCompare((*a4[2] + 8 * v8), (*a4[2] + 8 * v9)), result == -1) || !result && (v25 = TNodeFromFINode(*(**a4 + 8 * v8)), result = TNodeFromFINode(*(**a4 + 8 * v9)), v25 < result)))
  {
    v13 = *a3;
    v14 = *v6;
    v15 = *a4[1];
    v16 = *(v15 + 4 * v13);
    v17 = *(v15 + 4 * v14);
    if (v16 >= v17)
    {
      if (v16 > v17 || (result = TString::StringCompare((*a4[2] + 8 * v13), (*a4[2] + 8 * v14)), result != -1) && (result || (v18 = TNodeFromFINode(*(**a4 + 8 * v13)), result = TNodeFromFINode(*(**a4 + 8 * v14)), v18 >= result)))
      {
        v19 = *v7;
        *v7 = *v6;
        *v6 = v19;
        v20 = *a3;
        v21 = *a4[1];
        v22 = *(v21 + 4 * v20);
        v23 = *(v21 + 4 * v19);
        if (v22 >= v23)
        {
          if (v22 > v23)
          {
            return result;
          }

          result = TString::StringCompare((*a4[2] + 8 * v20), (*a4[2] + 8 * v19));
          if (result != -1)
          {
            if (result)
            {
              return result;
            }

            v39 = TNodeFromFINode(*(**a4 + 8 * v20));
            result = TNodeFromFINode(*(**a4 + 8 * v19));
            v7 = v6;
            v6 = a3;
            if (v39 >= result)
            {
              return result;
            }

LABEL_10:
            v24 = *v7;
            *v7 = *v6;
            *v6 = v24;
            return result;
          }
        }

        v7 = v6;
      }
    }

    v6 = a3;
    goto LABEL_10;
  }

  v26 = *a3;
  v27 = *v6;
  v28 = *a4[1];
  v29 = *(v28 + 4 * v26);
  v30 = *(v28 + 4 * v27);
  if (v29 < v30 || v29 <= v30 && ((result = TString::StringCompare((*a4[2] + 8 * v26), (*a4[2] + 8 * v27)), result == -1) || !result && (v38 = TNodeFromFINode(*(**a4 + 8 * v26)), result = TNodeFromFINode(*(**a4 + 8 * v27)), v38 < result)))
  {
    v31 = *v6;
    *v6 = *a3;
    *a3 = v31;
    v32 = *v6;
    v33 = *v7;
    v34 = *a4[1];
    v35 = *(v34 + 4 * v32);
    v36 = *(v34 + 4 * v33);
    if (v35 < v36)
    {
      goto LABEL_10;
    }

    if (v35 <= v36)
    {
      result = TString::StringCompare((*a4[2] + 8 * v32), (*a4[2] + 8 * v33));
      if (result == -1)
      {
        goto LABEL_10;
      }

      if (!result)
      {
        v37 = TNodeFromFINode(*(**a4 + 8 * v32));
        result = TNodeFromFINode(*(**a4 + 8 * v33));
        if (v37 < result)
        {
          goto LABEL_10;
        }
      }
    }
  }

  return result;
}

unint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,TNodeIterator::TNodeIterator(TNodePtr const&,BOOL,BOOL,BOOL)::$_0 &,int *,0>(int *a1, int *a2, int *a3, int *a4, void **a5)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,TNodeIterator::TNodeIterator(TNodePtr const&,BOOL,BOOL,BOOL)::$_0 &,int *,0>(a1, a2, a3, a5);
  v11 = *a4;
  v12 = *a3;
  v13 = *a5[1];
  v14 = *(v13 + 4 * v11);
  v15 = *(v13 + 4 * v12);
  if (v14 < v15 || v14 <= v15 && ((result = TString::StringCompare((*a5[2] + 8 * v11), (*a5[2] + 8 * v12)), result == -1) || !result && (v29 = TNodeFromFINode(*(**a5 + 8 * v11)), result = TNodeFromFINode(*(**a5 + 8 * v12)), v29 < result)))
  {
    v16 = *a3;
    *a3 = *a4;
    *a4 = v16;
    v17 = *a3;
    v18 = *a2;
    v19 = *a5[1];
    v20 = *(v19 + 4 * v17);
    v21 = *(v19 + 4 * v18);
    if (v20 < v21 || v20 <= v21 && ((result = TString::StringCompare((*a5[2] + 8 * v17), (*a5[2] + 8 * v18)), result == -1) || !result && (v30 = TNodeFromFINode(*(**a5 + 8 * v17)), result = TNodeFromFINode(*(**a5 + 8 * v18)), v30 < result)))
    {
      v22 = *a2;
      *a2 = *a3;
      *a3 = v22;
      v23 = *a2;
      v24 = *a1;
      v25 = *a5[1];
      v26 = *(v25 + 4 * v23);
      v27 = *(v25 + 4 * v24);
      if (v26 < v27 || v26 <= v27 && ((result = TString::StringCompare((*a5[2] + 8 * v23), (*a5[2] + 8 * v24)), result == -1) || !result && (v31 = TNodeFromFINode(*(**a5 + 8 * v23)), result = TNodeFromFINode(*(**a5 + 8 * v24)), v31 < result)))
      {
        v28 = *a1;
        *a1 = *a2;
        *a2 = v28;
      }
    }
  }

  return result;
}

unint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,TNodeIterator::TNodeIterator(TNodePtr const&,BOOL,BOOL,BOOL)::$_0 &,int *,0>(int *a1, int *a2, int *a3, int *a4, int *a5, void **a6)
{
  result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,TNodeIterator::TNodeIterator(TNodePtr const&,BOOL,BOOL,BOOL)::$_0 &,int *,0>(a1, a2, a3, a4, a6);
  v13 = *a5;
  v14 = *a4;
  v15 = *a6[1];
  v16 = *(v15 + 4 * v13);
  v17 = *(v15 + 4 * v14);
  if (v16 < v17 || v16 <= v17 && ((result = TString::StringCompare((*a6[2] + 8 * v13), (*a6[2] + 8 * v14)), result == -1) || !result && (v37 = TNodeFromFINode(*(**a6 + 8 * v13)), result = TNodeFromFINode(*(**a6 + 8 * v14)), v37 < result)))
  {
    v18 = *a4;
    *a4 = *a5;
    *a5 = v18;
    v19 = *a4;
    v20 = *a3;
    v21 = *a6[1];
    v22 = *(v21 + 4 * v19);
    v23 = *(v21 + 4 * v20);
    if (v22 < v23 || v22 <= v23 && ((result = TString::StringCompare((*a6[2] + 8 * v19), (*a6[2] + 8 * v20)), result == -1) || !result && (v38 = TNodeFromFINode(*(**a6 + 8 * v19)), result = TNodeFromFINode(*(**a6 + 8 * v20)), v38 < result)))
    {
      v24 = *a3;
      *a3 = *a4;
      *a4 = v24;
      v25 = *a3;
      v26 = *a2;
      v27 = *a6[1];
      v28 = *(v27 + 4 * v25);
      v29 = *(v27 + 4 * v26);
      if (v28 < v29 || v28 <= v29 && ((result = TString::StringCompare((*a6[2] + 8 * v25), (*a6[2] + 8 * v26)), result == -1) || !result && (v39 = TNodeFromFINode(*(**a6 + 8 * v25)), result = TNodeFromFINode(*(**a6 + 8 * v26)), v39 < result)))
      {
        v30 = *a2;
        *a2 = *a3;
        *a3 = v30;
        v31 = *a2;
        v32 = *a1;
        v33 = *a6[1];
        v34 = *(v33 + 4 * v31);
        v35 = *(v33 + 4 * v32);
        if (v34 < v35 || v34 <= v35 && ((result = TString::StringCompare((*a6[2] + 8 * v31), (*a6[2] + 8 * v32)), result == -1) || !result && (v40 = TNodeFromFINode(*(**a6 + 8 * v31)), result = TNodeFromFINode(*(**a6 + 8 * v32)), v40 < result)))
        {
          v36 = *a1;
          *a1 = *a2;
          *a2 = v36;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,TNodeIterator::TNodeIterator(TNodePtr const&,BOOL,BOOL,BOOL)::$_0 &,int *>(int *a1, int *a2, void **a3)
{
  v4 = a2;
  v6 = a2 - a1;
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = *(a2 - 1);
        v8 = *a1;
        v9 = *a3[1];
        v10 = *(v9 + 4 * v7);
        v11 = *(v9 + 4 * v8);
        if (v10 < v11 || v10 <= v11 && ((v35 = TString::StringCompare((*a3[2] + 8 * v7), (*a3[2] + 8 * v8)), v35 == kCFCompareLessThan) || v35 == kCFCompareEqualTo && (v36 = TNodeFromFINode(*(**a3 + 8 * v7)), v36 < TNodeFromFINode(*(**a3 + 8 * v8)))))
        {
          v12 = *a1;
          *a1 = *(v4 - 1);
          *(v4 - 1) = v12;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,TNodeIterator::TNodeIterator(TNodePtr const&,BOOL,BOOL,BOOL)::$_0 &,int *,0>(a1, a1 + 1, a2 - 1, a3);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,TNodeIterator::TNodeIterator(TNodePtr const&,BOOL,BOOL,BOOL)::$_0 &,int *,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,TNodeIterator::TNodeIterator(TNodePtr const&,BOOL,BOOL,BOOL)::$_0 &,int *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
  }

LABEL_11:
  v13 = a1 + 2;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,TNodeIterator::TNodeIterator(TNodePtr const&,BOOL,BOOL,BOOL)::$_0 &,int *,0>(a1, a1 + 1, a1 + 2, a3);
  v14 = a1 + 3;
  if (a1 + 3 == v4)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  v37 = v4;
  while (1)
  {
    v17 = *v14;
    v18 = *v13;
    v19 = *a3[1];
    v20 = *(v19 + 4 * v17);
    v21 = *(v19 + 4 * v18);
    if (v20 < v21 || v20 <= v21 && ((v32 = TString::StringCompare((*a3[2] + 8 * v17), (*a3[2] + 8 * v18)), v32 == kCFCompareLessThan) || v32 == kCFCompareEqualTo && (v33 = TNodeFromFINode(*(**a3 + 8 * v17)), v33 < TNodeFromFINode(*(**a3 + 8 * v18)))))
    {
      v22 = *v14;
      *v14 = *v13;
      v38 = v22;
      v23 = v22;
      v24 = v15;
      while (1)
      {
        v25 = *(a1 + v24 + 4);
        v26 = *a3[1];
        v27 = *(v26 + 4 * v23);
        v28 = *(v26 + 4 * v25);
        if (v27 >= v28)
        {
          if (v27 > v28)
          {
            break;
          }

          v29 = TString::StringCompare((*a3[2] + 8 * v23), (*a3[2] + 8 * v25));
          if (v29 != kCFCompareLessThan)
          {
            if (v29)
            {
              break;
            }

            v30 = TNodeFromFINode(*(**a3 + 8 * v23));
            if (v30 >= TNodeFromFINode(*(**a3 + 8 * v25)))
            {
              break;
            }
          }
        }

        *(a1 + v24 + 8) = *(a1 + v24 + 4);
        v24 -= 4;
        if (v24 == -8)
        {
          v31 = a1;
          goto LABEL_28;
        }
      }

      v31 = (a1 + v24 + 8);
LABEL_28:
      v4 = v37;
      *v31 = v38;
      if (++v16 == 8)
      {
        return v14 + 1 == v37;
      }
    }

    v13 = v14;
    v15 += 4;
    if (++v14 == v4)
    {
      return 1;
    }
  }
}

uint64_t CopyBlob(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return 0;
  }

  if (!*(a1 + 8))
  {
    return 4294959224;
  }

  v6 = *(a1 + 4);
  *(a2 + 4) = v6;
  if (!v6)
  {
    return 0;
  }

  v7 = *a2;
  if (*a2 < v6 && *(a3 + 24) != 0)
  {
    std::function<void ()(Blob &,unsigned int)>::operator()(a3, a2, v6);
    v7 = *a2;
    v6 = *(a2 + 4);
  }

  if (v6 <= v7)
  {
    v9 = *(a1 + 8);
    if (v9)
    {
      v10 = *(a2 + 8);
      if (v10)
      {
        memcpy(v10, v9, v6);
        return 0;
      }
    }
  }

  return 4294959233;
}

uint64_t std::function<void ()(Blob &,unsigned int)>::operator()(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

void TPropertyReference::Clear(void ***this)
{
  v1 = *(this + 2);
  if (v1 > 0xEu)
  {
    if (*(this + 2) > 0x10u)
    {
      if (v1 != 17)
      {
        if (v1 != 18)
        {
          return;
        }

        if (v1 == 18)
        {
          goto LABEL_27;
        }

        goto LABEL_25;
      }

      if (v1 != 17)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (v1 != 15)
      {
        if (v1 != 16)
        {
          return;
        }

        if (v1 == 16)
        {
          goto LABEL_27;
        }

LABEL_25:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      if (v1 != 15)
      {
        goto LABEL_25;
      }
    }

LABEL_27:
    v4 = *this;
    v5 = **this;
    if (v5)
    {
      CFRelease(v5);
    }

    *v4 = 0;
    return;
  }

  if (*(this + 2) > 0xCu)
  {
    if (v1 != 13)
    {
      if (v1 != 14)
      {
        return;
      }

      if (v1 == 14)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }

    if (v1 != 13)
    {
      goto LABEL_25;
    }

    goto LABEL_27;
  }

  if (v1 != 10)
  {
    if (v1 != 12)
    {
      return;
    }

    if (v1 != 12)
    {
      goto LABEL_25;
    }

    goto LABEL_27;
  }

  if (v1 != 10)
  {
    goto LABEL_25;
  }

  v2 = *this;
  v3 = **this;
  *v2 = 0;
}

uint64_t AsBlob<BOOL>(uint64_t a1, void *__src, uint64_t a3)
{
  v5 = 1;
  *(a1 + 4) = 1;
  v6 = *a1;
  if (!*a1)
  {
    if (!*(a3 + 24))
    {
      return 4294959233;
    }

    std::function<void ()(Blob &,unsigned int)>::operator()(a3, a1, 1);
    v6 = *a1;
    v5 = *(a1 + 4);
  }

  if (v5 <= v6)
  {
    v7 = *(a1 + 8);
    if (v7)
    {
      memcpy(v7, __src, v5);
      return 0;
    }
  }

  return 4294959233;
}

uint64_t AsBlob<short>(uint64_t a1, void *__src, uint64_t a3)
{
  v5 = 2;
  *(a1 + 4) = 2;
  v6 = *a1;
  if (*a1 <= 1u && *(a3 + 24) != 0)
  {
    std::function<void ()(Blob &,unsigned int)>::operator()(a3, a1, 2);
    v6 = *a1;
    v5 = *(a1 + 4);
  }

  if (v5 > v6)
  {
    return 4294959233;
  }

  v8 = *(a1 + 8);
  if (!v8)
  {
    return 4294959233;
  }

  memcpy(v8, __src, v5);
  return 0;
}

uint64_t AsBlob<int>(uint64_t a1, void *__src, uint64_t a3)
{
  v5 = 4;
  *(a1 + 4) = 4;
  v6 = *a1;
  if (*a1 <= 3u && *(a3 + 24) != 0)
  {
    std::function<void ()(Blob &,unsigned int)>::operator()(a3, a1, 4);
    v6 = *a1;
    v5 = *(a1 + 4);
  }

  if (v5 > v6)
  {
    return 4294959233;
  }

  v8 = *(a1 + 8);
  if (!v8)
  {
    return 4294959233;
  }

  memcpy(v8, __src, v5);
  return 0;
}

uint64_t AsBlob<long long>(uint64_t a1, void *__src, uint64_t a3)
{
  v5 = 8;
  *(a1 + 4) = 8;
  v6 = *a1;
  if (*a1 <= 7u && *(a3 + 24) != 0)
  {
    std::function<void ()(Blob &,unsigned int)>::operator()(a3, a1, 8);
    v6 = *a1;
    v5 = *(a1 + 4);
  }

  if (v5 > v6)
  {
    return 4294959233;
  }

  v8 = *(a1 + 8);
  if (!v8)
  {
    return 4294959233;
  }

  memcpy(v8, __src, v5);
  return 0;
}

uint64_t AsBlob<TString>(uint64_t a1, const __CFString **a2, uint64_t a3)
{
  UniCharSpan::UniCharSpan(__p, *a2);
  v5 = v16;
  v6 = 2 * v16;
  *(a1 + 4) = 2 * v16;
  if (v15)
  {
    v7 = v15;
  }

  else
  {
    v7 = __p[0];
  }

  v8 = *a1;
  if (*a1 < (2 * v5) && *(a3 + 24) != 0)
  {
    std::function<void ()(Blob &,unsigned int)>::operator()(a3, a1, v6);
    v8 = *a1;
    v6 = *(a1 + 4);
  }

  if (v6 > v8 || ((v10 = *(a1 + 8), v7) ? (v11 = v10 == 0) : (v11 = 1), v11))
  {
    v12 = 4294959233;
  }

  else
  {
    memcpy(v10, v7, v6);
    v12 = 0;
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v12;
}

void sub_1E56E6F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AsBlob<Blob>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 4);
  *(a1 + 4) = v5;
  v6 = *(a2 + 8);
  v7 = *a1;
  if (*a1 < v5 && *(a3 + 24) != 0)
  {
    std::function<void ()(Blob &,unsigned int)>::operator()(a3, a1, v5);
    v7 = *a1;
    v5 = *(a1 + 4);
  }

  if (v5 > v7)
  {
    return 4294959233;
  }

  v9 = *(a1 + 8);
  if (!v6 || v9 == 0)
  {
    return 4294959233;
  }

  memcpy(v9, v6, v5);
  return 0;
}

void TPropertyValue::TPropertyValue(TPropertyValue *this, const TPropertyReference *a2)
{
  this->fData.__impl_.__index = 0;
  v2 = *(a2 + 2);
  switch(v2)
  {
    case 1:
      if (v2 != 1)
      {
        goto LABEL_50;
      }

      TPropertyValue::SetAs<BOOL>(this, *a2);
      break;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_50;
      }

      TPropertyValue::SetAs<unsigned char>(this, *a2);
      break;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_50;
      }

      TPropertyValue::SetAs<short>(this, *a2);
      break;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_50;
      }

      TPropertyValue::SetAs<int>(this, *a2);
      break;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_50;
      }

      TPropertyValue::SetAs<long long>(this, *a2);
      break;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_50;
      }

      TPropertyValue::SetAs<unsigned int>(this, *a2);
      break;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_50;
      }

      TPropertyValue::SetAs<double>(this, *a2);
      break;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_50;
      }

      TPropertyValue::SetAs<Point>(this, *a2);
      break;
    case 9:
      if (v2 != 9)
      {
        goto LABEL_50;
      }

      TPropertyValue::SetAs<Blob>(this, *a2);
      break;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_50;
      }

      TPropertyValue::SetAs<NSObject * {__strong}>(this, *a2);
      break;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_50;
      }

      TPropertyValue::SetAs<TString>(this, *a2);
      break;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_50;
      }

      TPropertyValue::SetAs<TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>>(this, *a2);
      break;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_50;
      }

      TPropertyValue::SetAs<TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>>(this, *a2);
      break;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_50;
      }

      TPropertyValue::SetAs<TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>>(this, *a2);
      break;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_50;
      }

      TPropertyValue::SetAs<TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>>(this, *a2);
      break;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_50;
      }

      TPropertyValue::SetAs<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>(this, *a2);
      break;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_50;
      }

      TPropertyValue::SetAs<TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>>(this, *a2);
      break;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_50;
      }

      TPropertyValue::SetAs<TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>>(this, *a2);
      break;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_50;
      }

      v3 = *a2;
      if (v3 != this)
      {
        TPropertyValue::CopyFrom(this, v3);
      }

      break;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_50;
      }

      TPropertyValue::SetAs<Property>(this, *a2);
      break;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_50;
      }

      TPropertyValue::SetAs<NodeRequestOptions>(this, *a2);
      break;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_50;
      }

      TPropertyValue::SetAs<NodeDSStoreStatus>(this, *a2);
      break;
    case 23:
      if (v2 != 23)
      {
LABEL_50:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      TPropertyValue::SetAs<DSBladeRunnerFlags>(this, *a2);
      break;
    default:
      return;
  }
}

uint64_t TPropertyValue::SetAs<BOOL>(uint64_t a1, char *a2)
{
  v2 = *(a1 + 16);
  switch(v2)
  {
    case 0:
      if (v2 == 1)
      {
        v5 = *a2;
      }

      else
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
        v5 = *a2;
        *(a1 + 16) = 1;
      }

      result = 0;
      goto LABEL_52;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_30;
      }

      result = 0;
      v5 = *a2;
LABEL_52:
      *a1 = v5;
      break;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    case 9:
      goto LABEL_25;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    case 17:
      if (v2 == 17)
      {
        goto LABEL_25;
      }

      goto LABEL_30;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    case 23:
      if (v2 != 23)
      {
LABEL_30:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

LABEL_25:
      result = 4294959246;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t TPropertyValue::SetAs<unsigned char>(uint64_t a1, char *a2)
{
  v2 = *(a1 + 16);
  switch(v2)
  {
    case 0:
      if (v2 == 2)
      {
        v5 = *a2;
      }

      else
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
        v5 = *a2;
        *(a1 + 16) = 2;
      }

      result = 0;
      goto LABEL_52;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_30;
      }

      result = 0;
      v5 = *a2;
LABEL_52:
      *a1 = v5;
      break;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    case 6:
      if (v2 == 6)
      {
        goto LABEL_23;
      }

      goto LABEL_30;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    case 9:
      goto LABEL_23;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    case 23:
      if (v2 != 23)
      {
LABEL_30:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

LABEL_23:
      result = 4294959246;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t TPropertyValue::SetAs<short>(uint64_t a1, __int16 *a2)
{
  v2 = *(a1 + 16);
  switch(v2)
  {
    case 0:
      if (v2 == 3)
      {
        v5 = *a2;
      }

      else
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
        v5 = *a2;
        *(a1 + 16) = 3;
      }

      result = 0;
      goto LABEL_52;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_53;
      }

      return 4294959246;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_53;
      }

      return 4294959246;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_53;
      }

      result = 0;
      v5 = *a2;
LABEL_52:
      *a1 = v5;
      return result;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_53;
      }

      goto LABEL_48;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_53;
      }

      result = 0;
      *a1 = *a2;
      return result;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_53;
      }

      return 4294959246;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_53;
      }

      return 4294959246;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_53;
      }

      return 4294959246;
    case 9:
      return 4294959246;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_53;
      }

      return 4294959246;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_53;
      }

      return 4294959246;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_53;
      }

      return 4294959246;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_53;
      }

      return 4294959246;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_53;
      }

      return 4294959246;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_53;
      }

      return 4294959246;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_53;
      }

      return 4294959246;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_53;
      }

      return 4294959246;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_53;
      }

      return 4294959246;
    case 19:
      if (v2 == 19)
      {
        return 4294959246;
      }

      goto LABEL_53;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_53;
      }

      return 4294959246;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_53;
      }

      goto LABEL_48;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_53;
      }

      goto LABEL_48;
    case 23:
      if (v2 != 23)
      {
LABEL_53:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

LABEL_48:
      result = 0;
      *a1 = *a2;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t TPropertyValue::SetAs<int>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 16);
  switch(v2)
  {
    case 0:
      if (v2 == 4)
      {
        v5 = *a2;
      }

      else
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
        v5 = *a2;
        *(a1 + 16) = 4;
      }

      result = 0;
      goto LABEL_51;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_53;
      }

      return 4294959246;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_53;
      }

      return 4294959246;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_53;
      }

      return 4294959246;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_53;
      }

      goto LABEL_47;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_53;
      }

      result = 0;
      *a1 = *a2;
      return result;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_53;
      }

      return 4294959246;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_53;
      }

      return 4294959246;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_53;
      }

      return 4294959246;
    case 9:
      return 4294959246;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_53;
      }

      return 4294959246;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_53;
      }

      return 4294959246;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_53;
      }

      return 4294959246;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_53;
      }

      return 4294959246;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_53;
      }

      return 4294959246;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_53;
      }

      return 4294959246;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_53;
      }

      return 4294959246;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_53;
      }

      return 4294959246;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_53;
      }

      return 4294959246;
    case 19:
      if (v2 == 19)
      {
        return 4294959246;
      }

      goto LABEL_53;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_53;
      }

      return 4294959246;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_53;
      }

      goto LABEL_47;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_53;
      }

      goto LABEL_47;
    case 23:
      if (v2 != 23)
      {
LABEL_53:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

LABEL_47:
      result = 0;
      v5 = *a2;
LABEL_51:
      *a1 = v5;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t TPropertyValue::SetAs<long long>(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  switch(v2)
  {
    case 0:
      if (v2 == 5)
      {
        v5 = *a2;
      }

      else
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
        v5 = *a2;
        *(a1 + 16) = 5;
      }

      result = 0;
      goto LABEL_52;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_53;
      }

      result = 0;
      v5 = *a2;
LABEL_52:
      *a1 = v5;
      break;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 9:
      goto LABEL_45;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 19:
      if (v2 == 19)
      {
        goto LABEL_45;
      }

      goto LABEL_53;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_53;
      }

      goto LABEL_48;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_53;
      }

LABEL_45:
      result = 4294959246;
      break;
    case 23:
      if (v2 != 23)
      {
LABEL_53:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

LABEL_48:
      result = 0;
      *a1 = *a2;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t TPropertyValue::SetAs<unsigned int>(_DWORD *a1, int *a2)
{
  v2 = a1[4];
  switch(v2)
  {
    case 0:
      if (v2 == 6)
      {
        v5 = *a2;
      }

      else
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
        v5 = *a2;
        a1[4] = 6;
      }

      result = 0;
      goto LABEL_52;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 4:
      if (v2 == 4)
      {
        goto LABEL_29;
      }

      goto LABEL_36;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_36;
      }

      goto LABEL_27;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 9:
      goto LABEL_29;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_36;
      }

LABEL_27:
      result = 0;
      v5 = *a2;
LABEL_52:
      *a1 = v5;
      break;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 23:
      if (v2 != 23)
      {
LABEL_36:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

LABEL_29:
      result = 4294959246;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t TPropertyValue::SetAs<Point>(_DWORD *a1, int *a2)
{
  v2 = a1[4];
  switch(v2)
  {
    case 0:
      if (v2 == 8)
      {
        v5 = *a2;
      }

      else
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
        v5 = *a2;
        a1[4] = 8;
      }

      result = 0;
      goto LABEL_52;
    case 1:
      if (v2 == 1)
      {
        goto LABEL_17;
      }

      goto LABEL_22;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_22;
      }

      result = 0;
      v5 = *a2;
LABEL_52:
      *a1 = v5;
      break;
    case 9:
      goto LABEL_17;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    case 23:
      if (v2 != 23)
      {
LABEL_22:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

LABEL_17:
      result = 4294959246;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t TPropertyValue::SetAs<TString>(uint64_t a1, TString *a2)
{
  v2 = *(a1 + 16);
  switch(v2)
  {
    case 0:
      std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>>::__assign_alt[abi:ne200100]<11ul,TString,TString const&>(a1, a1, a2);
      return 0;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_18;
      }

      return 4294959246;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_18;
      }

      return 4294959246;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_18;
      }

      return 4294959246;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_18;
      }

      return 4294959246;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_18;
      }

      return 4294959246;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_18;
      }

      return 4294959246;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_18;
      }

      return 4294959246;
    case 8:
      if (v2 == 8)
      {
        return 4294959246;
      }

      goto LABEL_18;
    case 9:
      return 4294959246;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_18;
      }

      return 4294959246;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_18;
      }

      if (a1 != a2)
      {
        TString::SetStringRefAsImmutable(a1, a2->fString.fRef);
      }

      return 0;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_18;
      }

      v4 = RetainCF<__CFString const*>(&a2->fString.fRef);
      if (v4)
      {
        v5 = CFAutorelease(v4);
        v6 = static_cf_cast<__CFString const*,void const*>(v5);
      }

      else
      {
        v6 = 0;
      }

      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(a1, v6);
      return 0;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_18;
      }

      return 4294959246;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_18;
      }

      return 4294959246;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_18;
      }

      return 4294959246;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_18;
      }

      return 4294959246;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_18;
      }

      return 4294959246;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_18;
      }

      return 4294959246;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_18;
      }

      return 4294959246;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_18;
      }

      return 4294959246;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_18;
      }

      return 4294959246;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_18;
      }

      return 4294959246;
    case 23:
      if (v2 != 23)
      {
LABEL_18:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      return 4294959246;
    default:
      return 0;
  }
}

uint64_t TPropertyValue::SetAs<Blob>(TPropertyValue *this, Blob *a2)
{
  index = this->fData.__impl_.__index;
  switch(index)
  {
    case 0:
      if (index == 9)
      {
        this->fData.__impl_.__data = 0uLL;
      }

      else
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](this);
        this->fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__head.__value = 0;
        this->fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__head.__value.buffer = 0;
        this->fData.__impl_.__index = 9;
      }

      TPropertyValue::CopyBlob(this, a2);
      goto LABEL_53;
    case 1:
      if (index != 1)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    case 2:
      if (index != 2)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    case 3:
      if (index != 3)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    case 4:
      if (index != 4)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    case 5:
      if (index != 5)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    case 6:
      if (index != 6)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    case 7:
      if (index != 7)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    case 8:
      if (index != 8)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    case 9:

      return TPropertyValue::CopyBlob(this, a2);
    case 10:
      if (index != 10)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    case 11:
      if (index != 11)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    case 12:
      if (index != 12)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    case 13:
      if (index != 13)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    case 14:
      if (index != 14)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    case 15:
      if (index != 15)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    case 16:
      if (index == 16)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    case 17:
      if (index != 17)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    case 18:
      if (index != 18)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    case 19:
      if (index != 19)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    case 20:
      if (index != 20)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    case 21:
      if (index != 21)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    case 22:
      if (index != 22)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    case 23:
      if (index != 23)
      {
LABEL_7:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

LABEL_5:
      result = 4294959246;
      break;
    default:
LABEL_53:
      result = 0;
      break;
  }

  return result;
}

uint64_t TPropertyValue::SetAs<double>(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  switch(v2)
  {
    case 0:
      if (v2 == 7)
      {
        v5 = *a2;
      }

      else
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
        v5 = *a2;
        *(a1 + 16) = 7;
      }

      result = 0;
      goto LABEL_52;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_46;
      }

      goto LABEL_43;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_46;
      }

      goto LABEL_43;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_46;
      }

      goto LABEL_43;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_46;
      }

      goto LABEL_43;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_46;
      }

      goto LABEL_43;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_46;
      }

      goto LABEL_43;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_46;
      }

      result = 0;
      v5 = *a2;
LABEL_52:
      *a1 = v5;
      break;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_46;
      }

      goto LABEL_43;
    case 9:
      goto LABEL_43;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_46;
      }

      goto LABEL_43;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_46;
      }

      goto LABEL_43;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_46;
      }

      goto LABEL_43;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_46;
      }

      goto LABEL_43;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_46;
      }

      goto LABEL_43;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_46;
      }

      goto LABEL_43;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_46;
      }

      goto LABEL_43;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_46;
      }

      goto LABEL_43;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_46;
      }

      goto LABEL_43;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_46;
      }

      goto LABEL_43;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_46;
      }

      goto LABEL_43;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_46;
      }

      goto LABEL_43;
    case 22:
      if (v2 == 22)
      {
        goto LABEL_43;
      }

      goto LABEL_46;
    case 23:
      if (v2 != 23)
      {
LABEL_46:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

LABEL_43:
      result = 4294959246;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t TPropertyValue::SetAs<TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 16);
  switch(v2)
  {
    case 0:
      std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>>::__assign_alt[abi:ne200100]<12ul,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>> const&>(a1, a1, a2);
      return 0;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_18;
      }

      return 4294959246;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_18;
      }

      return 4294959246;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_18;
      }

      return 4294959246;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_18;
      }

      return 4294959246;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_18;
      }

      return 4294959246;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_18;
      }

      return 4294959246;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_18;
      }

      return 4294959246;
    case 8:
      if (v2 == 8)
      {
        return 4294959246;
      }

      goto LABEL_18;
    case 9:
      return 4294959246;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_18;
      }

      return 4294959246;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_18;
      }

      v4 = *a2;
      if (*a1 != *a2)
      {
        TString::SetStringRefAsImmutable(a1, v4);
      }

      return 0;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_18;
      }

      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(a1, *a2);
      return 0;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_18;
      }

      return 4294959246;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_18;
      }

      return 4294959246;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_18;
      }

      return 4294959246;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_18;
      }

      return 4294959246;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_18;
      }

      return 4294959246;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_18;
      }

      return 4294959246;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_18;
      }

      return 4294959246;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_18;
      }

      return 4294959246;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_18;
      }

      return 4294959246;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_18;
      }

      return 4294959246;
    case 23:
      if (v2 != 23)
      {
LABEL_18:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      return 4294959246;
    default:
      return 0;
  }
}

uint64_t TPropertyValue::SetAs<TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 16);
  switch(v2)
  {
    case 0:
      std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>>::__assign_alt[abi:ne200100]<13ul,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>> const&>(a1, a1, a2);
      return 0;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_39;
      }

      return 4294959246;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_39;
      }

      return 4294959246;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_39;
      }

      return 4294959246;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_39;
      }

      return 4294959246;
    case 5:
      if (v2 == 5)
      {
        return 4294959246;
      }

      goto LABEL_39;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_39;
      }

      return 4294959246;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_39;
      }

      return 4294959246;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_39;
      }

      return 4294959246;
    case 9:
      return 4294959246;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_39;
      }

      return 4294959246;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_39;
      }

      return 4294959246;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_39;
      }

      return 4294959246;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_39;
      }

      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(a1, *a2);
      return 0;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_39;
      }

      return 4294959246;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_39;
      }

      return 4294959246;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_39;
      }

      return 4294959246;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_39;
      }

      return 4294959246;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_39;
      }

      return 4294959246;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_39;
      }

      return 4294959246;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_39;
      }

      return 4294959246;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_39;
      }

      return 4294959246;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_39;
      }

      return 4294959246;
    case 23:
      if (v2 != 23)
      {
LABEL_39:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      return 4294959246;
    default:
      return 0;
  }
}

uint64_t TPropertyValue::SetAs<TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 16);
  switch(v2)
  {
    case 0:
      std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>>::__assign_alt[abi:ne200100]<14ul,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>> const&>(a1, a1, a2);
      return 0;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_17;
      }

      return 4294959246;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_17;
      }

      return 4294959246;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_17;
      }

      return 4294959246;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_17;
      }

      return 4294959246;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_17;
      }

      return 4294959246;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_17;
      }

      return 4294959246;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_17;
      }

      return 4294959246;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_17;
      }

      return 4294959246;
    case 9:
      return 4294959246;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_17;
      }

      return 4294959246;
    case 11:
      if (v2 == 11)
      {
        return 4294959246;
      }

      goto LABEL_17;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_17;
      }

      return 4294959246;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_17;
      }

      return 4294959246;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_17;
      }

      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(a1, *a2);
      return 0;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_17;
      }

      return 4294959246;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_17;
      }

      return 4294959246;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_17;
      }

      return 4294959246;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_17;
      }

      return 4294959246;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_17;
      }

      return 4294959246;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_17;
      }

      return 4294959246;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_17;
      }

      return 4294959246;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_17;
      }

      return 4294959246;
    case 23:
      if (v2 != 23)
      {
LABEL_17:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      return 4294959246;
    default:
      return 0;
  }
}

uint64_t TPropertyValue::SetAs<TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 16);
  switch(v2)
  {
    case 0:
      std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>>::__assign_alt[abi:ne200100]<15ul,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>> const&>(a1, a1, a2);
      return 0;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 7:
      if (v2 == 7)
      {
        return 4294959246;
      }

      goto LABEL_43;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 9:
      return 4294959246;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_43;
      }

      objc_storeStrong(a1, *a2);
      return 0;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_43;
      }

      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(a1, *a2);
      return 0;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 23:
      if (v2 != 23)
      {
LABEL_43:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      return 4294959246;
    default:
      return 0;
  }
}

uint64_t TPropertyValue::SetAs<NSObject * {__strong}>(id *location, id *a2)
{
  v2 = *(location + 4);
  switch(v2)
  {
    case 0:
      std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>>::__assign_alt[abi:ne200100]<10ul,NSObject * {__strong},NSObject * const {__strong}&>(location, location, a2);
      return 0;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 7:
      if (v2 == 7)
      {
        return 4294959246;
      }

      goto LABEL_43;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 9:
      return 4294959246;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_43;
      }

      objc_storeStrong(location, *a2);
      return 0;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_43;
      }

      return 4294959246;
    case 23:
      if (v2 != 23)
      {
LABEL_43:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      return 4294959246;
    default:
      return 0;
  }
}

uint64_t TPropertyValue::SetAs<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 16);
  switch(v2)
  {
    case 0:
      std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>>::__assign_alt[abi:ne200100]<16ul,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>> const&>(a1, a1, a2);
      return 0;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_9;
      }

      return 4294959246;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_9;
      }

      return 4294959246;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_9;
      }

      return 4294959246;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_9;
      }

      return 4294959246;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_9;
      }

      return 4294959246;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_9;
      }

      return 4294959246;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_9;
      }

      return 4294959246;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_9;
      }

      return 4294959246;
    case 9:
      return 4294959246;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_9;
      }

      return 4294959246;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_9;
      }

      return 4294959246;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_9;
      }

      return 4294959246;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_9;
      }

      return 4294959246;
    case 14:
      if (v2 == 14)
      {
        return 4294959246;
      }

      goto LABEL_9;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_9;
      }

      return 4294959246;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_9;
      }

      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(a1, *a2);
      return 0;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_9;
      }

      return 4294959246;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_9;
      }

      return 4294959246;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_9;
      }

      return 4294959246;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_9;
      }

      return 4294959246;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_9;
      }

      return 4294959246;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_9;
      }

      return 4294959246;
    case 23:
      if (v2 != 23)
      {
LABEL_9:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      return 4294959246;
    default:
      return 0;
  }
}

uint64_t TPropertyValue::SetAs<TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 16);
  switch(v2)
  {
    case 0:
      std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>>::__assign_alt[abi:ne200100]<17ul,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>> const&>(a1, a1, a2);
      return 0;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_29;
      }

      return 4294959246;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_29;
      }

      return 4294959246;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_29;
      }

      return 4294959246;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_29;
      }

      return 4294959246;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_29;
      }

      return 4294959246;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_29;
      }

      return 4294959246;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_29;
      }

      return 4294959246;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_29;
      }

      return 4294959246;
    case 9:
      return 4294959246;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_29;
      }

      return 4294959246;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_29;
      }

      return 4294959246;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_29;
      }

      return 4294959246;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_29;
      }

      return 4294959246;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_29;
      }

      return 4294959246;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_29;
      }

      return 4294959246;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_29;
      }

      return 4294959246;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_29;
      }

      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(a1, *a2);
      return 0;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_29;
      }

      return 4294959246;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_29;
      }

      return 4294959246;
    case 20:
      if (v2 == 20)
      {
        return 4294959246;
      }

      goto LABEL_29;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_29;
      }

      return 4294959246;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_29;
      }

      return 4294959246;
    case 23:
      if (v2 != 23)
      {
LABEL_29:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      return 4294959246;
    default:
      return 0;
  }
}

uint64_t TPropertyValue::SetAs<TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 16);
  switch(v2)
  {
    case 0:
      std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>>::__assign_alt[abi:ne200100]<18ul,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>> const&>(a1, a1, a2);
      return 0;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_41;
      }

      return 4294959246;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_41;
      }

      return 4294959246;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_41;
      }

      return 4294959246;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_41;
      }

      return 4294959246;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_41;
      }

      return 4294959246;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_41;
      }

      return 4294959246;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_41;
      }

      return 4294959246;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_41;
      }

      return 4294959246;
    case 9:
      return 4294959246;
    case 10:
      if (v2 == 10)
      {
        return 4294959246;
      }

      goto LABEL_41;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_41;
      }

      return 4294959246;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_41;
      }

      return 4294959246;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_41;
      }

      return 4294959246;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_41;
      }

      return 4294959246;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_41;
      }

      return 4294959246;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_41;
      }

      return 4294959246;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_41;
      }

      return 4294959246;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_41;
      }

      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(a1, *a2);
      return 0;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_41;
      }

      return 4294959246;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_41;
      }

      return 4294959246;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_41;
      }

      return 4294959246;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_41;
      }

      return 4294959246;
    case 23:
      if (v2 != 23)
      {
LABEL_41:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      return 4294959246;
    default:
      return 0;
  }
}

uint64_t TPropertyValue::SetAs<Property>(_DWORD *a1, int *a2)
{
  v2 = a1[4];
  switch(v2)
  {
    case 0:
      if (v2 == 20)
      {
        v5 = *a2;
      }

      else
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
        v5 = *a2;
        a1[4] = 20;
      }

      result = 0;
      goto LABEL_52;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 4:
      if (v2 == 4)
      {
        goto LABEL_29;
      }

      goto LABEL_36;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_36;
      }

      goto LABEL_27;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 9:
      goto LABEL_29;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_36;
      }

LABEL_27:
      result = 0;
      v5 = *a2;
LABEL_52:
      *a1 = v5;
      break;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    case 23:
      if (v2 != 23)
      {
LABEL_36:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

LABEL_29:
      result = 4294959246;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t TPropertyValue::SetAs<NodeRequestOptions>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 16);
  switch(v2)
  {
    case 0:
      if (v2 == 21)
      {
        v5 = *a2;
      }

      else
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
        v5 = *a2;
        *(a1 + 16) = 21;
      }

      result = 0;
      goto LABEL_52;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_53;
      }

      result = 0;
      *a1 = *a2;
      break;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 9:
      goto LABEL_45;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 19:
      if (v2 == 19)
      {
        goto LABEL_45;
      }

      goto LABEL_53;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_53;
      }

      goto LABEL_48;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_53;
      }

LABEL_45:
      result = 4294959246;
      break;
    case 23:
      if (v2 != 23)
      {
LABEL_53:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

LABEL_48:
      result = 0;
      v5 = *a2;
LABEL_52:
      *a1 = v5;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t TPropertyValue::SetAs<NodeDSStoreStatus>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 16);
  switch(v2)
  {
    case 0:
      if (v2 == 22)
      {
        v5 = *a2;
      }

      else
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
        v5 = *a2;
        *(a1 + 16) = 22;
      }

      result = 0;
      goto LABEL_51;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_53;
      }

      return 4294959246;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_53;
      }

      return 4294959246;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_53;
      }

      return 4294959246;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_53;
      }

      goto LABEL_47;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_53;
      }

      result = 0;
      *a1 = *a2;
      return result;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_53;
      }

      return 4294959246;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_53;
      }

      return 4294959246;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_53;
      }

      return 4294959246;
    case 9:
      return 4294959246;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_53;
      }

      return 4294959246;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_53;
      }

      return 4294959246;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_53;
      }

      return 4294959246;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_53;
      }

      return 4294959246;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_53;
      }

      return 4294959246;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_53;
      }

      return 4294959246;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_53;
      }

      return 4294959246;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_53;
      }

      return 4294959246;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_53;
      }

      return 4294959246;
    case 19:
      if (v2 == 19)
      {
        return 4294959246;
      }

      goto LABEL_53;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_53;
      }

      return 4294959246;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_53;
      }

      goto LABEL_47;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_53;
      }

      goto LABEL_47;
    case 23:
      if (v2 != 23)
      {
LABEL_53:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

LABEL_47:
      result = 0;
      v5 = *a2;
LABEL_51:
      *a1 = v5;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t TPropertyValue::SetAs<DSBladeRunnerFlags>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 16);
  switch(v2)
  {
    case 0:
      if (v2 == 23)
      {
        v5 = *a2;
      }

      else
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
        v5 = *a2;
        *(a1 + 16) = 23;
      }

      result = 0;
      goto LABEL_52;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_53;
      }

      result = 0;
      *a1 = *a2;
      break;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 9:
      goto LABEL_45;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 19:
      if (v2 == 19)
      {
        goto LABEL_45;
      }

      goto LABEL_53;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_53;
      }

      goto LABEL_48;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_53;
      }

LABEL_45:
      result = 4294959246;
      break;
    case 23:
      if (v2 != 23)
      {
LABEL_53:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

LABEL_48:
      result = 0;
      v5 = *a2;
LABEL_52:
      *a1 = v5;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t TPropertyValue::CopyBlob(TPropertyValue *this, const Blob *a2)
{
  v5[4] = *MEMORY[0x1E69E9840];
  if (this->fData.__impl_.__index == 9)
  {
    if (this->fData.__impl_.__index != 9)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v5[0] = &unk_1F5F3DA10;
    v5[3] = v5;
    v2 = CopyBlob(a2, this, v5);
    std::__function::__value_func<void ()(Blob &,unsigned int)>::~__value_func[abi:ne200100](v5);
  }

  else
  {
    v2 = 4294959224;
  }

  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

void sub_1E56E9664(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(Blob &,unsigned int)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t TPropertyValue::AsBlob(_DWORD *__src, uint64_t a2, uint64_t a3)
{
  v3 = __src[4];
  switch(v3)
  {
    case 1:
      if (v3 != 1)
      {
        goto LABEL_78;
      }

      v5 = a2;
      v6 = __src;

      return AsBlob<BOOL>(v5, v6, a3);
    case 2:
      if (v3 != 2)
      {
        goto LABEL_78;
      }

      v5 = a2;
      v6 = __src;

      return AsBlob<BOOL>(v5, v6, a3);
    case 3:
      if (v3 != 3)
      {
        goto LABEL_78;
      }

      return AsBlob<short>(a2, __src, a3);
    case 4:
      if (v3 != 4)
      {
        goto LABEL_78;
      }

      v10 = a2;
      v11 = __src;

      goto LABEL_29;
    case 5:
      if (v3 != 5)
      {
        goto LABEL_78;
      }

      v8 = a2;
      v9 = __src;

      return AsBlob<long long>(v8, v9, a3);
    case 6:
      if (v3 != 6)
      {
        goto LABEL_78;
      }

      v10 = a2;
      v11 = __src;

      goto LABEL_29;
    case 7:
      if (v3 != 7)
      {
        goto LABEL_78;
      }

      v8 = a2;
      v9 = __src;

      return AsBlob<long long>(v8, v9, a3);
    case 8:
      if (v3 != 8)
      {
        goto LABEL_78;
      }

      v10 = a2;
      v11 = __src;

      goto LABEL_29;
    case 9:
      if (v3 != 9)
      {
        goto LABEL_78;
      }

      return AsBlob<Blob>(a2, __src, a3);
    case 10:
      if (v3 != 10)
      {
        goto LABEL_78;
      }

      return 4294959246;
    case 11:
      if (v3 != 11)
      {
        goto LABEL_78;
      }

      return AsBlob<TString>(a2, __src, a3);
    case 12:
      if (v3 != 12)
      {
        goto LABEL_78;
      }

      return 4294959246;
    case 13:
      if (v3 != 13)
      {
        goto LABEL_78;
      }

      return 4294959246;
    case 14:
      if (v3 != 14)
      {
        goto LABEL_78;
      }

      return 4294959246;
    case 15:
      if (v3 != 15)
      {
        goto LABEL_78;
      }

      return 4294959246;
    case 16:
      if (v3 != 16)
      {
        goto LABEL_78;
      }

      return 4294959246;
    case 17:
      if (v3 != 17)
      {
        goto LABEL_78;
      }

      return 4294959246;
    case 18:
      if (v3 != 18)
      {
        goto LABEL_78;
      }

      return 4294959246;
    case 19:
      if (v3 != 19)
      {
        goto LABEL_78;
      }

      return 4294959246;
    case 20:
      if (v3 != 20)
      {
        goto LABEL_78;
      }

      v10 = a2;
      v11 = __src;

      goto LABEL_29;
    case 21:
      if (v3 != 21)
      {
        goto LABEL_78;
      }

      v10 = a2;
      v11 = __src;

      goto LABEL_29;
    case 22:
      if (v3 != 22)
      {
        goto LABEL_78;
      }

      v10 = a2;
      v11 = __src;

      goto LABEL_29;
    case 23:
      if (v3 != 23)
      {
LABEL_78:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v10 = a2;
      v11 = __src;

LABEL_29:
      result = AsBlob<int>(v10, v11, a3);
      break;
    default:
      result = 4294959224;
      break;
  }

  return result;
}

void *MapFromListRef@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    v2 = result[1];
    *a2 = *result;
    a2[1] = v2;
    if (v2)
    {
      atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void PropertyToString(int a1@<W0>, TString *a2@<X8>)
{
  if (a1 > 1819243361)
  {
    if (a1 > 1919251314)
    {
      if (a1 > 1952740194)
      {
        if (a1 <= 1970563427)
        {
          if (a1 > 1969646707)
          {
            if (a1 > 1970495842)
            {
              if (a1 == 1970495843)
              {
                OSTypeAsString(0x75736163u, &v3);
                Format<std::string>("prUserAccess (%s)", &v3, &__p);
                TString::TString(a2, &__p);
                if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_350;
                }
              }

              else
              {
                OSTypeAsString(0x75736772u, &v3);
                Format<std::string>("prUserGroups (%s)", &v3, &__p);
                TString::TString(a2, &__p);
                if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_350;
                }
              }

              goto LABEL_349;
            }

            if (a1 == 1969646708)
            {
              OSTypeAsString(0x75666C74u, &v3);
              Format<std::string>("prIsUbiquityFault (%s)", &v3, &__p);
            }

            else
            {
              OSTypeAsString(0x756E6C6Bu, &v3);
              Format<std::string>("prIsNoUnlink (%s)", &v3, &__p);
            }
          }

          else
          {
            if (a1 > 1969385843)
            {
              if (a1 == 1969385844)
              {
                OSTypeAsString(0x75627174u, &v3);
                Format<std::string>("prUbiquityStatus (%s)", &v3, &__p);
                TString::TString(a2, &__p);
                if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_350;
                }
              }

              else
              {
                OSTypeAsString(0x75627462u, &v3);
                Format<std::string>("prUbiquityTransferredBytes (%s)", &v3, &__p);
                TString::TString(a2, &__p);
                if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_350;
                }
              }

              goto LABEL_349;
            }

            if (a1 == 1952740195)
            {
              OSTypeAsString(0x74647363u, &v3);
              Format<std::string>("prTagIsDiscovered (%s)", &v3, &__p);
            }

            else
            {
              OSTypeAsString(0x74736272u, &v3);
              Format<std::string>("prTagShowsInSidebar (%s)", &v3, &__p);
            }
          }
        }

        else
        {
          if (a1 <= 1986622274)
          {
            if (a1 > 1986359922)
            {
              if (a1 == 1986359923)
              {
                OSTypeAsString(0x76657273u, &v3);
                Format<std::string>("prLongVersion (%s)", &v3, &__p);
                TString::TString(a2, &__p);
                if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_350;
                }
              }

              else
              {
                OSTypeAsString(0x76666D74u, &v3);
                Format<std::string>("prVolumeFormat (%s)", &v3, &__p);
                TString::TString(a2, &__p);
                if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_350;
                }
              }

              goto LABEL_349;
            }

            if (a1 == 1970563428)
            {
              OSTypeAsString(0x75746964u, &v3);
              Format<std::string>("prTypeIdentifier (%s)", &v3, &__p);
              TString::TString(a2, &__p);
              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_350;
              }

              goto LABEL_349;
            }

            OSTypeAsString(0x75747470u, &v3);
            Format<std::string>("prUTType (%s)", &v3, &__p);
            TString::TString(a2, &__p);
            goto LABEL_346;
          }

          if (a1 > 1987273323)
          {
            if (a1 == 1987273324)
            {
              OSTypeAsString(0x7673626Cu, &v3);
              Format<std::string>("prIsVisible (%s)", &v3, &__p);
              TString::TString(a2, &__p);
              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_350;
              }

              goto LABEL_349;
            }

            if (a1 == 1987277938)
            {
              OSTypeAsString(0x76737472u, &v3);
              Format<std::string>("prVolumeFormatString (%s)", &v3, &__p);
              TString::TString(a2, &__p);
              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_350;
              }

              goto LABEL_349;
            }

            OSTypeAsString(0x76756964u, &v3);
            Format<std::string>("prVolumeUUID (%s)", &v3, &__p);
            TString::TString(a2, &__p);
            goto LABEL_346;
          }

          if (a1 == 1986622275)
          {
            OSTypeAsString(0x76697343u, &v3);
            Format<std::string>("prIsVisibleContainer (%s)", &v3, &__p);
          }

          else
          {
            OSTypeAsString(0x766F6C6Du, &v3);
            Format<std::string>("prIsVolume (%s)", &v3, &__p);
          }
        }

        goto LABEL_235;
      }

      if (a1 <= 1936225905)
      {
        if (a1 > 1935829346)
        {
          if (a1 > 1936221803)
          {
            if (a1 == 1936221804)
            {
              OSTypeAsString(0x7368666Cu, &v3);
              Format<std::string>("prIsPublishedFolder (%s)", &v3, &__p);
              TString::TString(a2, &__p);
              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_350;
              }

              goto LABEL_349;
            }

            OSTypeAsString(0x73687470u, &v3);
            Format<std::string>("prIsTopLevelSharedItem (%s)", &v3, &__p);
            TString::TString(a2, &__p);
            goto LABEL_346;
          }

          if (a1 == 1935829347)
          {
            OSTypeAsString(0x73626963u, &v3);
            Format<std::string>("prSidebarIconRef (%s)", &v3, &__p);
          }

          else
          {
            OSTypeAsString(0x73626978u, &v3);
            Format<std::string>("prSidebarIndex (%s)", &v3, &__p);
          }
        }

        else
        {
          if (a1 <= 1920167266)
          {
            if (a1 == 1919251315)
            {
              OSTypeAsString(0x72657373u, &v3);
              Format<std::string>("prResourceForkLogicalSize (%s)", &v3, &__p);
              TString::TString(a2, &__p);
              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_350;
              }

              goto LABEL_349;
            }

            OSTypeAsString(0x72727374u, &v3);
            Format<std::string>("prRegionRestrictions (%s)", &v3, &__p);
            TString::TString(a2, &__p);
            goto LABEL_346;
          }

          if (a1 == 1920167267)
          {
            OSTypeAsString(0x72736D63u, &v3);
            Format<std::string>("prIsResumableCopyTarget (%s)", &v3, &__p);
          }

          else
          {
            OSTypeAsString(0x72736F70u, &v3);
            Format<std::string>("prResolveOptions (%s)", &v3, &__p);
          }
        }

        goto LABEL_235;
      }

      if (a1 <= 1937143149)
      {
        if (a1 > 1936484459)
        {
          if (a1 != 1936484460)
          {
            OSTypeAsString(0x73746772u, &v3);
            Format<std::string>("prSortingGroup (%s)", &v3, &__p);
            TString::TString(a2, &__p);
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_350;
            }

            goto LABEL_349;
          }

          OSTypeAsString(0x736C686Cu, &v3);
          Format<std::string>("prSLHighlight (%s)", &v3, &__p);
          TString::TString(a2, &__p);
        }

        else
        {
          if (a1 == 1936225906)
          {
            OSTypeAsString(0x73687672u, &v3);
            Format<std::string>("prShortVersion (%s)", &v3, &__p);
            TString::TString(a2, &__p);
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_350;
            }

            goto LABEL_349;
          }

          OSTypeAsString(0x736C6869u, &v3);
          Format<std::string>("prSLHighlightID (%s)", &v3, &__p);
          TString::TString(a2, &__p);
        }
      }

      else
      {
        if (a1 <= 1937339249)
        {
          if (a1 == 1937143150)
          {
            OSTypeAsString(0x7376756Eu, &v3);
            Format<std::string>("prServerUserName (%s)", &v3, &__p);
            TString::TString(a2, &__p);
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_350;
            }
          }

          else
          {
            OSTypeAsString(0x73796276u, &v3);
            Format<std::string>("prSystemBuildVersion (%s)", &v3, &__p);
            TString::TString(a2, &__p);
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_350;
            }
          }

          goto LABEL_349;
        }

        if (a1 == 1937339250)
        {
          OSTypeAsString(0x73797372u, &v3);
          Format<std::string>("prIsSystemRestricted (%s)", &v3, &__p);
          TString::TString(a2, &__p);
        }

        else
        {
          if (a1 == 1937340018)
          {
            OSTypeAsString(0x73797672u, &v3);
            Format<std::string>("prSystemVersion (%s)", &v3, &__p);
            TString::TString(a2, &__p);
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_350;
            }

            goto LABEL_349;
          }

          OSTypeAsString(0x74636E74u, &v3);
          Format<std::string>("prTagInstancesCount (%s)", &v3, &__p);
          TString::TString(a2, &__p);
        }
      }
    }

    else
    {
      if (a1 > 1870098033)
      {
        if (a1 > 1885895026)
        {
          if (a1 <= 1886613603)
          {
            if (a1 > 1886540642)
            {
              if (a1 == 1886540643)
              {
                OSTypeAsString(0x70725363u, &v3);
                Format<std::string>("prSecurityRef (%s)", &v3, &__p);
                TString::TString(a2, &__p);
                if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_350;
                }
              }

              else
              {
                OSTypeAsString(0x70727673u, &v3);
                Format<std::string>("prPermissions (%s)", &v3, &__p);
                TString::TString(a2, &__p);
                if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_350;
                }
              }
            }

            else if (a1 == 1885895027)
            {
              OSTypeAsString(0x70687973u, &v3);
              Format<std::string>("prPhysicalSize (%s)", &v3, &__p);
              TString::TString(a2, &__p);
              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_350;
              }
            }

            else
            {
              OSTypeAsString(0x706E616Du, &v3);
              Format<std::string>("prName (%s)", &v3, &__p);
              TString::TString(a2, &__p);
              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_350;
              }
            }

            goto LABEL_349;
          }

          if (a1 <= 1886675533)
          {
            if (a1 == 1886613604)
            {
              OSTypeAsString(0x70737064u, &v3);
              Format<std::string>("prIsStationery (%s)", &v3, &__p);
              TString::TString(a2, &__p);
              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_350;
              }

              goto LABEL_349;
            }

            OSTypeAsString(0x7074624Cu, &v3);
            Format<std::string>("prTrashItemOriginalLocation (%s)", &v3, &__p);
            TString::TString(a2, &__p);
          }

          else
          {
            if (a1 != 1886675534)
            {
              if (a1 == 1919250547)
              {
                OSTypeAsString(0x72657073u, &v3);
                Format<std::string>("prResourceForkPhysicalSize (%s)", &v3, &__p);
                TString::TString(a2, &__p);
                if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_350;
                }
              }

              else
              {
                OSTypeAsString(0x72657370u, &v3);
                Format<std::string>("prReclaimableSpace (%s)", &v3, &__p);
                TString::TString(a2, &__p);
                if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_350;
                }
              }

              goto LABEL_349;
            }

            OSTypeAsString(0x7074624Eu, &v3);
            Format<std::string>("prTrashItemOriginalName (%s)", &v3, &__p);
            TString::TString(a2, &__p);
          }

          goto LABEL_346;
        }

        if (a1 <= 1885626994)
        {
          if (a1 <= 1883665004)
          {
            if (a1 == 1870098034)
            {
              OSTypeAsString(0x6F776E72u, &v3);
              Format<std::string>("prOwner (%s)", &v3, &__p);
              TString::TString(a2, &__p);
              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_350;
              }
            }

            else
            {
              OSTypeAsString(0x70416464u, &v3);
              Format<std::string>("prDateAdded (%s)", &v3, &__p);
              TString::TString(a2, &__p);
              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_350;
              }
            }

            goto LABEL_349;
          }

          if (a1 != 1883665005)
          {
            OSTypeAsString(0x70617468u, &v3);
            Format<std::string>("prPath (%s)", &v3, &__p);
            TString::TString(a2, &__p);
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_350;
            }

            goto LABEL_349;
          }

          OSTypeAsString(0x7046726Du, &v3);
          Format<std::string>("prIsFullyFormed (%s)", &v3, &__p);
          TString::TString(a2, &__p);
          goto LABEL_346;
        }

        if (a1 > 1885876562)
        {
          if (a1 == 1885876563)
          {
            OSTypeAsString(0x70683153u, &v3);
            Format<std::string>("prCachedPhysicalSize (%s)", &v3, &__p);
          }

          else
          {
            OSTypeAsString(0x70687953u, &v3);
            Format<std::string>("prObsoleteCachedPhysicalSize (%s)", &v3, &__p);
          }
        }

        else if (a1 == 1885626995)
        {
          OSTypeAsString(0x70646273u, &v3);
          Format<std::string>("prIsDeviceBusy (%s)", &v3, &__p);
        }

        else
        {
          OSTypeAsString(0x7064636Cu, &v3);
          Format<std::string>("prIsDeviceOperationCancellable (%s)", &v3, &__p);
        }

        goto LABEL_235;
      }

      if (a1 <= 1836016739)
      {
        if (a1 <= 1835291496)
        {
          if (a1 > 1819503972)
          {
            if (a1 != 1819503973)
            {
              OSTypeAsString(0x6C756474u, &v3);
              Format<std::string>("prLastUsedDate (%s)", &v3, &__p);
              TString::TString(a2, &__p);
              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_350;
              }

              goto LABEL_349;
            }

            OSTypeAsString(0x6C736D65u, &v3);
            Format<std::string>("prICloudLastChangedByMe (%s)", &v3, &__p);
            TString::TString(a2, &__p);
          }

          else
          {
            if (a1 == 1819243362)
            {
              OSTypeAsString(0x6C6F7362u, &v3);
              Format<std::string>("prLockedInSidebar (%s)", &v3, &__p);
              TString::TString(a2, &__p);
              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_350;
              }

              goto LABEL_349;
            }

            OSTypeAsString(0x6C736564u, &v3);
            Format<std::string>("prICloudLastShareEditor (%s)", &v3, &__p);
            TString::TString(a2, &__p);
          }

          goto LABEL_346;
        }

        if (a1 <= 1836008515)
        {
          if (a1 == 1835291497)
          {
            OSTypeAsString(0x6D645369u, &v3);
            Format<std::string>("prMDSortIdentifier (%s)", &v3, &__p);
            TString::TString(a2, &__p);
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_350;
            }

            goto LABEL_349;
          }

          OSTypeAsString(0x6D646174u, &v3);
          Format<std::string>("prMDAttributes (%s)", &v3, &__p);
          TString::TString(a2, &__p);
          goto LABEL_346;
        }

        if (a1 == 1836008516)
        {
          OSTypeAsString(0x6D6F4444u, &v3);
          Format<std::string>("prCachedLogicalTimeStamp (%s)", &v3, &__p);
        }

        else
        {
          OSTypeAsString(0x6D6F6444u, &v3);
          Format<std::string>("prCachedPhysicalTimeStamp (%s)", &v3, &__p);
        }

        goto LABEL_235;
      }

      if (a1 <= 1868720739)
      {
        if (a1 > 1853121394)
        {
          if (a1 == 1853121395)
          {
            OSTypeAsString(0x6E746373u, &v3);
            Format<std::string>("prNetworkConnectionState (%s)", &v3, &__p);
            TString::TString(a2, &__p);
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_350;
            }
          }

          else
          {
            OSTypeAsString(0x6E776374u, &v3);
            Format<std::string>("prNetworkComment (%s)", &v3, &__p);
            TString::TString(a2, &__p);
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_350;
            }
          }
        }

        else if (a1 == 1836016740)
        {
          OSTypeAsString(0x6D6F6464u, &v3);
          Format<std::string>("prModificationDate (%s)", &v3, &__p);
          TString::TString(a2, &__p);
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_350;
          }
        }

        else
        {
          OSTypeAsString(0x6D737270u, &v3);
          Format<std::string>("prIsMountedSharepoint (%s)", &v3, &__p);
          TString::TString(a2, &__p);
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_350;
          }
        }

        goto LABEL_349;
      }

      if (a1 <= 1869377378)
      {
        if (a1 != 1868720740)
        {
          OSTypeAsString(0x6F6C696Fu, &v3);
          Format<std::string>("prOldIconOrigin (%s)", &v3, &__p);
          TString::TString(a2, &__p);
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_350;
          }

          goto LABEL_349;
        }

        OSTypeAsString(0x6F626A64u, &v3);
        Format<std::string>("prObjectIdentifier (%s)", &v3, &__p);
        TString::TString(a2, &__p);
      }

      else
      {
        if (a1 == 1869377379)
        {
          OSTypeAsString(0x6F6C6F63u, &v3);
          Format<std::string>("prOldLocation (%s)", &v3, &__p);
          TString::TString(a2, &__p);
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_350;
          }

          goto LABEL_349;
        }

        if (a1 == 1869379187)
        {
          OSTypeAsString(0x6F6C7673u, &v3);
          Format<std::string>("prOldViewStyle (%s)", &v3, &__p);
          TString::TString(a2, &__p);
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_350;
          }

          goto LABEL_349;
        }

        OSTypeAsString(0x6F726967u, &v3);
        Format<std::string>("prOriginatorInfo (%s)", &v3, &__p);
        TString::TString(a2, &__p);
      }
    }

LABEL_346:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_350;
    }

    goto LABEL_349;
  }

  if (a1 > 1717793395)
  {
    if (a1 > 1769169259)
    {
      if (a1 > 1769173098)
      {
        if (a1 <= 1802072171)
        {
          if (a1 > 1769370465)
          {
            if (a1 == 1769370466)
            {
              OSTypeAsString(0x69767362u, &v3);
              Format<std::string>("prHideInFinderSidebar (%s)", &v3, &__p);
              TString::TString(a2, &__p);
              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_350;
              }
            }

            else
            {
              OSTypeAsString(0x6B696E64u, &v3);
              Format<std::string>("prKind (%s)", &v3, &__p);
              TString::TString(a2, &__p);
              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_350;
              }
            }
          }

          else if (a1 == 1769173099)
          {
            OSTypeAsString(0x6973706Bu, &v3);
            Format<std::string>("prIsPackage (%s)", &v3, &__p);
            TString::TString(a2, &__p);
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_350;
            }
          }

          else
          {
            OSTypeAsString(0x69737373u, &v3);
            Format<std::string>("prIsScreenShare (%s)", &v3, &__p);
            TString::TString(a2, &__p);
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_350;
            }
          }

          goto LABEL_349;
        }

        if (a1 <= 1818702162)
        {
          if (a1 == 1802072172)
          {
            OSTypeAsString(0x6B69706Cu, &v3);
            Format<std::string>("prKindWithoutPlatform (%s)", &v3, &__p);
            TString::TString(a2, &__p);
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_350;
            }
          }

          else
          {
            OSTypeAsString(0x6C61626Cu, &v3);
            Format<std::string>("prLabel (%s)", &v3, &__p);
            TString::TString(a2, &__p);
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_350;
            }
          }

          goto LABEL_349;
        }

        if (a1 == 1818702163)
        {
          OSTypeAsString(0x6C673153u, &v3);
          Format<std::string>("prCachedLogicalSize (%s)", &v3, &__p);
          TString::TString(a2, &__p);
        }

        else
        {
          if (a1 != 1819240275)
          {
            OSTypeAsString(0x6C6F6773u, &v3);
            Format<std::string>("prLogicalSize (%s)", &v3, &__p);
            TString::TString(a2, &__p);
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_350;
            }

            goto LABEL_349;
          }

          OSTypeAsString(0x6C6F6753u, &v3);
          Format<std::string>("prObsoleteCachedLogicalSize (%s)", &v3, &__p);
          TString::TString(a2, &__p);
        }

        goto LABEL_346;
      }

      if (a1 <= 1769171055)
      {
        if (a1 > 1769170539)
        {
          if (a1 == 1769170540)
          {
            OSTypeAsString(0x6973666Cu, &v3);
            Format<std::string>("prIsFolder (%s)", &v3, &__p);
            TString::TString(a2, &__p);
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_350;
            }
          }

          else
          {
            OSTypeAsString(0x69736673u, &v3);
            Format<std::string>("prIsFileShare (%s)", &v3, &__p);
            TString::TString(a2, &__p);
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_350;
            }
          }
        }

        else if (a1 == 1769169260)
        {
          OSTypeAsString(0x6973616Cu, &v3);
          Format<std::string>("prIsAlias (%s)", &v3, &__p);
          TString::TString(a2, &__p);
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_350;
          }
        }

        else
        {
          OSTypeAsString(0x69736170u, &v3);
          Format<std::string>("prIsApplication (%s)", &v3, &__p);
          TString::TString(a2, &__p);
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_350;
          }
        }

        goto LABEL_349;
      }

      if (a1 > 1769171298)
      {
        if (a1 == 1769171299)
        {
          OSTypeAsString(0x69736963u, &v3);
          Format<std::string>("prISIcon (%s)", &v3, &__p);
          TString::TString(a2, &__p);
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_350;
          }

          goto LABEL_349;
        }

        OSTypeAsString(0x69737067u, &v3);
        Format<std::string>("prISIconPackage (%s)", &v3, &__p);
        TString::TString(a2, &__p);
        goto LABEL_346;
      }

      if (a1 == 1769171056)
      {
        OSTypeAsString(0x69736870u, &v3);
        Format<std::string>("prICloudSharePerson (%s)", &v3, &__p);
      }

      else
      {
        OSTypeAsString(0x69736873u, &v3);
        Format<std::string>("prICloudSharePersonString (%s)", &v3, &__p);
      }

      goto LABEL_235;
    }

    if (a1 <= 1752392561)
    {
      if (a1 <= 1718903155)
      {
        if (a1 > 1718645603)
        {
          if (a1 != 1718645604)
          {
            OSTypeAsString(0x66727370u, &v3);
            Format<std::string>("prFreeSpace (%s)", &v3, &__p);
            TString::TString(a2, &__p);
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_350;
            }

            goto LABEL_349;
          }

          OSTypeAsString(0x66707364u, &v3);
          Format<std::string>("prIsFileProviderInSidebar (%s)", &v3, &__p);
          TString::TString(a2, &__p);
        }

        else
        {
          if (a1 == 1717793396)
          {
            OSTypeAsString(0x66637274u, &v3);
            Format<std::string>("prCreator (%s)", &v3, &__p);
            TString::TString(a2, &__p);
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_350;
            }

            goto LABEL_349;
          }

          OSTypeAsString(0x66706175u, &v3);
          Format<std::string>("prFPAuthenticated (%s)", &v3, &__p);
          TString::TString(a2, &__p);
        }

        goto LABEL_346;
      }

      if (a1 > 1735287667)
      {
        if (a1 != 1735287668)
        {
          OSTypeAsString(0x68657874u, &v3);
          Format<std::string>("prIsExtensionHidden (%s)", &v3, &__p);
          TString::TString(a2, &__p);
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_350;
          }

          goto LABEL_349;
        }

        OSTypeAsString(0x676E6374u, &v3);
        Format<std::string>("prGenerationCount (%s)", &v3, &__p);
        TString::TString(a2, &__p);
        goto LABEL_346;
      }

      if (a1 == 1718903156)
      {
        OSTypeAsString(0x66746174u, &v3);
        Format<std::string>("prFinderTagAndAttrs (%s)", &v3, &__p);
      }

      else
      {
        OSTypeAsString(0x6674676Cu, &v3);
        Format<std::string>("prFinderTagAttrsLabel (%s)", &v3, &__p);
      }

      goto LABEL_235;
    }

    if (a1 <= 1768124269)
    {
      if (a1 <= 1768120687)
      {
        if (a1 == 1752392562)
        {
          OSTypeAsString(0x68736372u, &v3);
          Format<std::string>("prHasScriptingTerminology (%s)", &v3, &__p);
          TString::TString(a2, &__p);
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_350;
          }

          goto LABEL_349;
        }

        OSTypeAsString(0x68746368u, &v3);
        Format<std::string>("prAttributeChanged (%s)", &v3, &__p);
        TString::TString(a2, &__p);
        goto LABEL_346;
      }

      if (a1 == 1768120688)
      {
        OSTypeAsString(0x69636170u, &v3);
        Format<std::string>("prIsiCloudLibraryInSidebar (%s)", &v3, &__p);
      }

      else
      {
        OSTypeAsString(0x69636C64u, &v3);
        Format<std::string>("prIsiCloudInSidebar (%s)", &v3, &__p);
      }

      goto LABEL_235;
    }

    if (a1 <= 1768386422)
    {
      if (a1 == 1768124270)
      {
        OSTypeAsString(0x69636F6Eu, &v3);
        Format<std::string>("prIconRef (%s)", &v3, &__p);
        TString::TString(a2, &__p);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_350;
        }

        goto LABEL_349;
      }

      OSTypeAsString(0x6966796Du, &v3);
      Format<std::string>("prIFSymbol (%s)", &v3, &__p);
      TString::TString(a2, &__p);
    }

    else if (a1 == 1768386423)
    {
      OSTypeAsString(0x69676F77u, &v3);
      Format<std::string>("prIgnoreOwnership (%s)", &v3, &__p);
      TString::TString(a2, &__p);
    }

    else
    {
      if (a1 == 1768387184)
      {
        OSTypeAsString(0x69677270u, &v3);
        Format<std::string>("prItemGroupID (%s)", &v3, &__p);
        TString::TString(a2, &__p);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_350;
        }

        goto LABEL_349;
      }

      OSTypeAsString(0x696E7072u, &v3);
      Format<std::string>("prInlineProgress (%s)", &v3, &__p);
      TString::TString(a2, &__p);
    }

    goto LABEL_346;
  }

  if (a1 > 1668313714)
  {
    if (a1 <= 1684237939)
    {
      if (a1 > 1668638315)
      {
        if (a1 > 1684108402)
        {
          if (a1 == 1684108403)
          {
            OSTypeAsString(0x64617473u, &v3);
            Format<std::string>("prDataForkLogicalSize (%s)", &v3, &__p);
            TString::TString(a2, &__p);
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_350;
            }

            goto LABEL_349;
          }

          OSTypeAsString(0x64636C64u, &v3);
          Format<std::string>("prIsDataSeparatedICloudInSidebar (%s)", &v3, &__p);
          TString::TString(a2, &__p);
        }

        else
        {
          if (a1 != 1668638316)
          {
            OSTypeAsString(0x64617073u, &v3);
            Format<std::string>("prDataForkPhysicalSize (%s)", &v3, &__p);
            TString::TString(a2, &__p);
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_350;
            }

            goto LABEL_349;
          }

          OSTypeAsString(0x6375666Cu, &v3);
          Format<std::string>("prFolderAdornments (%s)", &v3, &__p);
          TString::TString(a2, &__p);
        }
      }

      else
      {
        if (a1 <= 1668506983)
        {
          if (a1 == 1668313715)
          {
            OSTypeAsString(0x63707273u, &v3);
            Format<std::string>("prCopyrightString (%s)", &v3, &__p);
            TString::TString(a2, &__p);
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_350;
            }
          }

          else
          {
            OSTypeAsString(0x6373616Eu, &v3);
            Format<std::string>("prCanSetAppNapState (%s)", &v3, &__p);
            TString::TString(a2, &__p);
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_350;
            }
          }

          goto LABEL_349;
        }

        if (a1 == 1668506984)
        {
          OSTypeAsString(0x63736568u, &v3);
          Format<std::string>("prCanSetExtensionHidden (%s)", &v3, &__p);
          TString::TString(a2, &__p);
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_350;
          }

          goto LABEL_349;
        }

        OSTypeAsString(0x63736770u, &v3);
        Format<std::string>("prCanSetPrefersExternalGPU (%s)", &v3, &__p);
        TString::TString(a2, &__p);
      }

      goto LABEL_346;
    }

    if (a1 > 1684955500)
    {
      if (a1 <= 1685480307)
      {
        if (a1 == 1684955501)
        {
          OSTypeAsString(0x646E616Du, &v3);
          Format<std::string>("prDisplayName (%s)", &v3, &__p);
          TString::TString(a2, &__p);
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_350;
          }

          goto LABEL_349;
        }

        OSTypeAsString(0x64737374u, &v3);
        Format<std::string>("prDSStoreStatus (%s)", &v3, &__p);
        TString::TString(a2, &__p);
      }

      else
      {
        if (a1 == 1685480308)
        {
          OSTypeAsString(0x64766374u, &v3);
          Format<std::string>("prDeepVisibleItemCount (%s)", &v3, &__p);
          TString::TString(a2, &__p);
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_350;
          }

          goto LABEL_349;
        }

        if (a1 == 1685548132)
        {
          OSTypeAsString(0x64776C64u, &v3);
          Format<std::string>("prProviderDownloadedState (%s)", &v3, &__p);
          TString::TString(a2, &__p);
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_350;
          }

          goto LABEL_349;
        }

        OSTypeAsString(0x65677075u, &v3);
        Format<std::string>("prPrefersExternalGPU (%s)", &v3, &__p);
        TString::TString(a2, &__p);
      }

      goto LABEL_346;
    }

    if (a1 <= 1684630626)
    {
      if (a1 == 1684237940)
      {
        OSTypeAsString(0x64636E74u, &v3);
        Format<std::string>("prDeepItemCount (%s)", &v3, &__p);
        TString::TString(a2, &__p);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_350;
        }

        goto LABEL_349;
      }

      OSTypeAsString(0x64656372u, &v3);
      Format<std::string>("prItemDecorations (%s)", &v3, &__p);
      TString::TString(a2, &__p);
      goto LABEL_346;
    }

    if (a1 == 1684630627)
    {
      OSTypeAsString(0x64696C63u, &v3);
      Format<std::string>("prDesktopIconSpatialLocation (%s)", &v3, &__p);
    }

    else
    {
      OSTypeAsString(0x646D7079u, &v3);
      Format<std::string>("prApplicationDeviceManagementPolicy (%s)", &v3, &__p);
    }

LABEL_235:
    TString::TString(a2, &__p);
    goto LABEL_346;
  }

  if (a1 <= 1634956408)
  {
    if (a1 > 1634758243)
    {
      if (a1 > 1634952035)
      {
        if (a1 == 1634952036)
        {
          OSTypeAsString(0x61736364u, &v3);
          Format<std::string>("prCreationDate (%s)", &v3, &__p);
          TString::TString(a2, &__p);
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_350;
          }
        }

        else
        {
          OSTypeAsString(0x61736C6Bu, &v3);
          Format<std::string>("prIsLocked (%s)", &v3, &__p);
          TString::TString(a2, &__p);
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_350;
          }
        }
      }

      else if (a1 == 1634758244)
      {
        OSTypeAsString(0x61706E64u, &v3);
        Format<std::string>("prAppNapIsDisabled (%s)", &v3, &__p);
        TString::TString(a2, &__p);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_350;
        }
      }

      else
      {
        OSTypeAsString(0x6170706Du, &v3);
        Format<std::string>("prIsApplicationManaged (%s)", &v3, &__p);
        TString::TString(a2, &__p);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_350;
        }
      }

      goto LABEL_349;
    }

    if (a1 > 1634497638)
    {
      if (a1 == 1634497639)
      {
        OSTypeAsString(0x616C7467u, &v3);
        Format<std::string>("prAliasTargetChanged (%s)", &v3, &__p);
        TString::TString(a2, &__p);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_350;
        }
      }

      else
      {
        OSTypeAsString(0x61706374u, &v3);
        Format<std::string>("prAppCategories (%s)", &v3, &__p);
        TString::TString(a2, &__p);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_350;
        }
      }

      goto LABEL_349;
    }

    if (!a1)
    {
      OSTypeAsString(0, &v3);
      Format<std::string>("prNullProperty (%s)", &v3, &__p);
      TString::TString(a2, &__p);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_350;
      }

      goto LABEL_349;
    }

    OSTypeAsString(0x496C6F63u, &v3);
    Format<std::string>("prIconSpatialLocation (%s)", &v3, &__p);
    TString::TString(a2, &__p);
    goto LABEL_346;
  }

  if (a1 <= 1667785587)
  {
    if (a1 <= 1635150194)
    {
      if (a1 == 1634956409)
      {
        OSTypeAsString(0x61737479u, &v3);
        Format<std::string>("prType (%s)", &v3, &__p);
        TString::TString(a2, &__p);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_350;
        }
      }

      else
      {
        OSTypeAsString(0x61756D74u, &v3);
        Format<std::string>("prIsAboutToUnmount (%s)", &v3, &__p);
        TString::TString(a2, &__p);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_350;
        }
      }

      goto LABEL_349;
    }

    if (a1 != 1635150195)
    {
      OSTypeAsString(0x63617061u, &v3);
      Format<std::string>("prCapacity (%s)", &v3, &__p);
      TString::TString(a2, &__p);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_350;
      }

      goto LABEL_349;
    }

    OSTypeAsString(0x61766973u, &v3);
    Format<std::string>("prAnyVisibleChildren (%s)", &v3, &__p);
    TString::TString(a2, &__p);
    goto LABEL_346;
  }

  if (a1 <= 1668115827)
  {
    if (a1 != 1667785588)
    {
      OSTypeAsString(0x6369636Eu, &v3);
      Format<std::string>("prHasCustomIcon (%s)", &v3, &__p);
      TString::TString(a2, &__p);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_350;
      }

      goto LABEL_349;
    }

    OSTypeAsString(0x63686374u, &v3);
    Format<std::string>("prChildCount (%s)", &v3, &__p);
    TString::TString(a2, &__p);
    goto LABEL_346;
  }

  if (a1 == 1668115828)
  {
    OSTypeAsString(0x636D6D74u, &v3);
    Format<std::string>("prFinderComment (%s)", &v3, &__p);
    TString::TString(a2, &__p);
    goto LABEL_346;
  }

  if (a1 == 1668244340)
  {
    OSTypeAsString(0x636F6374u, &v3);
    Format<std::string>("prContact (%s)", &v3, &__p);
    TString::TString(a2, &__p);
    goto LABEL_346;
  }

  OSTypeAsString(0x636F6D70u, &v3);
  Format<std::string>("prIsSystemCompressed (%s)", &v3, &__p);
  TString::TString(a2, &__p);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_350;
  }

LABEL_349:
  operator delete(__p.__r_.__value_.__l.__data_);
LABEL_350:
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void sub_1E56EBFF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void Format<std::string>(const char *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  *&v5 = a1;
  *(&v5 + 1) = strlen(a1);
  FormatDetails<std::string>(&v5, a2, a3);
}

TString *TString::TString(TString *a1, uint64_t a2)
{
  a1->fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  TString::SetFromUTF8(a1, v5, v6);
  return a1;
}

void std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>>::__assign_alt[abi:ne200100]<11ul,TString,TString const&>(uint64_t a1, TString *this, TString *a3)
{
  if (*(a1 + 16) == 11)
  {
    if (this != a3)
    {
      fRef = a3->fString.fRef;

      TString::SetStringRefAsImmutable(this, fRef);
    }
  }

  else
  {
    v7[2] = v3;
    v7[3] = v4;
    v7[0] = a1;
    v7[1] = a3;
    std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>>::__assign_alt[abi:ne200100]<11ul,TString,TString const&>(std::__variant_detail::__alt<11ul,TString> &,TString const&)::{unnamed type#1}::operator()(v7);
  }
}

const void **std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>>::__assign_alt[abi:ne200100]<11ul,TString,TString const&>(std::__variant_detail::__alt<11ul,TString> &,TString const&)::{unnamed type#1}::operator()(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&v4, *v2);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v1);
  std::__variant_detail::__alt<11ul,TString>::__alt[abi:ne200100]<TString>(v1, &v4.fString.fRef);
  *(v1 + 16) = 11;
  return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v4.fString.fRef);
}

void sub_1E56EC83C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

CFTypeRef *std::__variant_detail::__alt<11ul,TString>::__alt[abi:ne200100]<TString>(CFTypeRef *a1, CFTypeRef *a2)
{
  *a1 = *a2;
  *a2 = 0;
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(a2, &stru_1F5F42870);
  return a1;
}

void std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>>::__assign_alt[abi:ne200100]<10ul,NSObject * {__strong},decltype(nullptr)>(uint64_t a1, void **a2)
{
  if (*(a1 + 16) == 10)
  {
    v3 = *a2;
    *a2 = 0;
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    *a1 = 0;
    *(a1 + 16) = 10;
  }
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEbhsixjd5Point4BlobU8__strongP8NSObject7TString4TRefIPK10__CFString20TRetainReleasePolicyISI_EESF_IPK10__CFNumberSJ_ISO_EESF_IPK8__CFDataSJ_IST_EESF_IPK14__CFDictionarySJ_ISY_EESF_IPK7__CFURLSJ_IS13_EESF_IPK9__CFArraySJ_IS18_EESF_IP16__CFFileSecuritySJ_IS1C_EESF_IP17TReferenceCountedSJ_IS1G_EE8Property18NodeRequestOptions17NodeDSStoreStatus18DSBladeRunnerFlagsEEEE16__generic_assignB8ne200100INS0_17__move_assignmentIS1N_LNS0_6_TraitE1EEEEEvOT_EUlRS1T_OT0_E_JRNS0_6__baseILS1R_1EJS8_bhsixjdS9_SA_SD_SE_SL_SQ_SV_S10_S15_S1A_S1E_S1I_S1J_S1K_S1L_S1M_EEEOS21_EEEDcS1T_DpT0_(uint64_t *result, _BYTE *a2, _BYTE *a3)
{
  v4 = *result;
  if (*(*result + 16) == 1)
  {
    *a2 = *a3;
  }

  else
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*result);
    *v4 = *a3;
    *(v4 + 16) = 1;
  }

  return result;
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2ELm2EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEbhsixjd5Point4BlobU8__strongP8NSObject7TString4TRefIPK10__CFString20TRetainReleasePolicyISI_EESF_IPK10__CFNumberSJ_ISO_EESF_IPK8__CFDataSJ_IST_EESF_IPK14__CFDictionarySJ_ISY_EESF_IPK7__CFURLSJ_IS13_EESF_IPK9__CFArraySJ_IS18_EESF_IP16__CFFileSecuritySJ_IS1C_EESF_IP17TReferenceCountedSJ_IS1G_EE8Property18NodeRequestOptions17NodeDSStoreStatus18DSBladeRunnerFlagsEEEE16__generic_assignB8ne200100INS0_17__move_assignmentIS1N_LNS0_6_TraitE1EEEEEvOT_EUlRS1T_OT0_E_JRNS0_6__baseILS1R_1EJS8_bhsixjdS9_SA_SD_SE_SL_SQ_SV_S10_S15_S1A_S1E_S1I_S1J_S1K_S1L_S1M_EEEOS21_EEEDcS1T_DpT0_(uint64_t *result, _BYTE *a2, _BYTE *a3)
{
  v4 = *result;
  if (*(*result + 16) == 2)
  {
    *a2 = *a3;
  }

  else
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*result);
    *v4 = *a3;
    *(v4 + 16) = 2;
  }

  return result;
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3ELm3EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEbhsixjd5Point4BlobU8__strongP8NSObject7TString4TRefIPK10__CFString20TRetainReleasePolicyISI_EESF_IPK10__CFNumberSJ_ISO_EESF_IPK8__CFDataSJ_IST_EESF_IPK14__CFDictionarySJ_ISY_EESF_IPK7__CFURLSJ_IS13_EESF_IPK9__CFArraySJ_IS18_EESF_IP16__CFFileSecuritySJ_IS1C_EESF_IP17TReferenceCountedSJ_IS1G_EE8Property18NodeRequestOptions17NodeDSStoreStatus18DSBladeRunnerFlagsEEEE16__generic_assignB8ne200100INS0_17__move_assignmentIS1N_LNS0_6_TraitE1EEEEEvOT_EUlRS1T_OT0_E_JRNS0_6__baseILS1R_1EJS8_bhsixjdS9_SA_SD_SE_SL_SQ_SV_S10_S15_S1A_S1E_S1I_S1J_S1K_S1L_S1M_EEEOS21_EEEDcS1T_DpT0_(uint64_t *result, _WORD *a2, _WORD *a3)
{
  v4 = *result;
  if (*(*result + 16) == 3)
  {
    *a2 = *a3;
  }

  else
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*result);
    *v4 = *a3;
    *(v4 + 16) = 3;
  }

  return result;
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4ELm4EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEbhsixjd5Point4BlobU8__strongP8NSObject7TString4TRefIPK10__CFString20TRetainReleasePolicyISI_EESF_IPK10__CFNumberSJ_ISO_EESF_IPK8__CFDataSJ_IST_EESF_IPK14__CFDictionarySJ_ISY_EESF_IPK7__CFURLSJ_IS13_EESF_IPK9__CFArraySJ_IS18_EESF_IP16__CFFileSecuritySJ_IS1C_EESF_IP17TReferenceCountedSJ_IS1G_EE8Property18NodeRequestOptions17NodeDSStoreStatus18DSBladeRunnerFlagsEEEE16__generic_assignB8ne200100INS0_17__move_assignmentIS1N_LNS0_6_TraitE1EEEEEvOT_EUlRS1T_OT0_E_JRNS0_6__baseILS1R_1EJS8_bhsixjdS9_SA_SD_SE_SL_SQ_SV_S10_S15_S1A_S1E_S1I_S1J_S1K_S1L_S1M_EEEOS21_EEEDcS1T_DpT0_(uint64_t *result, _DWORD *a2, _DWORD *a3)
{
  v4 = *result;
  if (*(*result + 16) == 4)
  {
    *a2 = *a3;
  }

  else
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*result);
    *v4 = *a3;
    v4[4] = 4;
  }

  return result;
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm5ELm5EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEbhsixjd5Point4BlobU8__strongP8NSObject7TString4TRefIPK10__CFString20TRetainReleasePolicyISI_EESF_IPK10__CFNumberSJ_ISO_EESF_IPK8__CFDataSJ_IST_EESF_IPK14__CFDictionarySJ_ISY_EESF_IPK7__CFURLSJ_IS13_EESF_IPK9__CFArraySJ_IS18_EESF_IP16__CFFileSecuritySJ_IS1C_EESF_IP17TReferenceCountedSJ_IS1G_EE8Property18NodeRequestOptions17NodeDSStoreStatus18DSBladeRunnerFlagsEEEE16__generic_assignB8ne200100INS0_17__move_assignmentIS1N_LNS0_6_TraitE1EEEEEvOT_EUlRS1T_OT0_E_JRNS0_6__baseILS1R_1EJS8_bhsixjdS9_SA_SD_SE_SL_SQ_SV_S10_S15_S1A_S1E_S1I_S1J_S1K_S1L_S1M_EEEOS21_EEEDcS1T_DpT0_(uint64_t *result, void *a2, void *a3)
{
  v4 = *result;
  if (*(*result + 16) == 5)
  {
    *a2 = *a3;
  }

  else
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*result);
    *v4 = *a3;
    *(v4 + 16) = 5;
  }

  return result;
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm6ELm6EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEbhsixjd5Point4BlobU8__strongP8NSObject7TString4TRefIPK10__CFString20TRetainReleasePolicyISI_EESF_IPK10__CFNumberSJ_ISO_EESF_IPK8__CFDataSJ_IST_EESF_IPK14__CFDictionarySJ_ISY_EESF_IPK7__CFURLSJ_IS13_EESF_IPK9__CFArraySJ_IS18_EESF_IP16__CFFileSecuritySJ_IS1C_EESF_IP17TReferenceCountedSJ_IS1G_EE8Property18NodeRequestOptions17NodeDSStoreStatus18DSBladeRunnerFlagsEEEE16__generic_assignB8ne200100INS0_17__move_assignmentIS1N_LNS0_6_TraitE1EEEEEvOT_EUlRS1T_OT0_E_JRNS0_6__baseILS1R_1EJS8_bhsixjdS9_SA_SD_SE_SL_SQ_SV_S10_S15_S1A_S1E_S1I_S1J_S1K_S1L_S1M_EEEOS21_EEEDcS1T_DpT0_(uint64_t *result, _DWORD *a2, _DWORD *a3)
{
  v4 = *result;
  if (*(*result + 16) == 6)
  {
    *a2 = *a3;
  }

  else
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*result);
    *v4 = *a3;
    v4[4] = 6;
  }

  return result;
}

double _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm7ELm7EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEbhsixjd5Point4BlobU8__strongP8NSObject7TString4TRefIPK10__CFString20TRetainReleasePolicyISI_EESF_IPK10__CFNumberSJ_ISO_EESF_IPK8__CFDataSJ_IST_EESF_IPK14__CFDictionarySJ_ISY_EESF_IPK7__CFURLSJ_IS13_EESF_IPK9__CFArraySJ_IS18_EESF_IP16__CFFileSecuritySJ_IS1C_EESF_IP17TReferenceCountedSJ_IS1G_EE8Property18NodeRequestOptions17NodeDSStoreStatus18DSBladeRunnerFlagsEEEE16__generic_assignB8ne200100INS0_17__move_assignmentIS1N_LNS0_6_TraitE1EEEEEvOT_EUlRS1T_OT0_E_JRNS0_6__baseILS1R_1EJS8_bhsixjdS9_SA_SD_SE_SL_SQ_SV_S10_S15_S1A_S1E_S1I_S1J_S1K_S1L_S1M_EEEOS21_EEEDcS1T_DpT0_(uint64_t *a1, void *a2, double *a3)
{
  v4 = *a1;
  if (*(*a1 + 16) == 7)
  {
    result = *a3;
    *a2 = *a3;
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*a1);
    result = *a3;
    *v4 = *a3;
    *(v4 + 16) = 7;
  }

  return result;
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm8ELm8EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEbhsixjd5Point4BlobU8__strongP8NSObject7TString4TRefIPK10__CFString20TRetainReleasePolicyISI_EESF_IPK10__CFNumberSJ_ISO_EESF_IPK8__CFDataSJ_IST_EESF_IPK14__CFDictionarySJ_ISY_EESF_IPK7__CFURLSJ_IS13_EESF_IPK9__CFArraySJ_IS18_EESF_IP16__CFFileSecuritySJ_IS1C_EESF_IP17TReferenceCountedSJ_IS1G_EE8Property18NodeRequestOptions17NodeDSStoreStatus18DSBladeRunnerFlagsEEEE16__generic_assignB8ne200100INS0_17__move_assignmentIS1N_LNS0_6_TraitE1EEEEEvOT_EUlRS1T_OT0_E_JRNS0_6__baseILS1R_1EJS8_bhsixjdS9_SA_SD_SE_SL_SQ_SV_S10_S15_S1A_S1E_S1I_S1J_S1K_S1L_S1M_EEEOS21_EEEDcS1T_DpT0_(uint64_t *result, _DWORD *a2, _DWORD *a3)
{
  v4 = *result;
  if (*(*result + 16) == 8)
  {
    *a2 = *a3;
  }

  else
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*result);
    *v4 = *a3;
    v4[4] = 8;
  }

  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm9ELm9EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEbhsixjd5Point4BlobU8__strongP8NSObject7TString4TRefIPK10__CFString20TRetainReleasePolicyISI_EESF_IPK10__CFNumberSJ_ISO_EESF_IPK8__CFDataSJ_IST_EESF_IPK14__CFDictionarySJ_ISY_EESF_IPK7__CFURLSJ_IS13_EESF_IPK9__CFArraySJ_IS18_EESF_IP16__CFFileSecuritySJ_IS1C_EESF_IP17TReferenceCountedSJ_IS1G_EE8Property18NodeRequestOptions17NodeDSStoreStatus18DSBladeRunnerFlagsEEEE16__generic_assignB8ne200100INS0_17__move_assignmentIS1N_LNS0_6_TraitE1EEEEEvOT_EUlRS1T_OT0_E_JRNS0_6__baseILS1R_1EJS8_bhsixjdS9_SA_SD_SE_SL_SQ_SV_S10_S15_S1A_S1E_S1I_S1J_S1K_S1L_S1M_EEEOS21_EEEDcS1T_DpT0_(uint64_t *a1, __n128 *a2, __n128 *a3)
{
  v4 = *a1;
  if (*(*a1 + 16) == 9)
  {
    result = *a3;
    *a2 = *a3;
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*a1);
    result = *a3;
    *v4 = *a3;
    *(v4 + 16) = 9;
  }

  return result;
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm20ELm20EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEbhsixjd5Point4BlobU8__strongP8NSObject7TString4TRefIPK10__CFString20TRetainReleasePolicyISI_EESF_IPK10__CFNumberSJ_ISO_EESF_IPK8__CFDataSJ_IST_EESF_IPK14__CFDictionarySJ_ISY_EESF_IPK7__CFURLSJ_IS13_EESF_IPK9__CFArraySJ_IS18_EESF_IP16__CFFileSecuritySJ_IS1C_EESF_IP17TReferenceCountedSJ_IS1G_EE8Property18NodeRequestOptions17NodeDSStoreStatus18DSBladeRunnerFlagsEEEE16__generic_assignB8ne200100INS0_17__move_assignmentIS1N_LNS0_6_TraitE1EEEEEvOT_EUlRS1T_OT0_E_JRNS0_6__baseILS1R_1EJS8_bhsixjdS9_SA_SD_SE_SL_SQ_SV_S10_S15_S1A_S1E_S1I_S1J_S1K_S1L_S1M_EEEOS21_EEEDcS1T_DpT0_(uint64_t *result, _DWORD *a2, _DWORD *a3)
{
  v4 = *result;
  if (*(*result + 16) == 20)
  {
    *a2 = *a3;
  }

  else
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*result);
    *v4 = *a3;
    v4[4] = 20;
  }

  return result;
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm21ELm21EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEbhsixjd5Point4BlobU8__strongP8NSObject7TString4TRefIPK10__CFString20TRetainReleasePolicyISI_EESF_IPK10__CFNumberSJ_ISO_EESF_IPK8__CFDataSJ_IST_EESF_IPK14__CFDictionarySJ_ISY_EESF_IPK7__CFURLSJ_IS13_EESF_IPK9__CFArraySJ_IS18_EESF_IP16__CFFileSecuritySJ_IS1C_EESF_IP17TReferenceCountedSJ_IS1G_EE8Property18NodeRequestOptions17NodeDSStoreStatus18DSBladeRunnerFlagsEEEE16__generic_assignB8ne200100INS0_17__move_assignmentIS1N_LNS0_6_TraitE1EEEEEvOT_EUlRS1T_OT0_E_JRNS0_6__baseILS1R_1EJS8_bhsixjdS9_SA_SD_SE_SL_SQ_SV_S10_S15_S1A_S1E_S1I_S1J_S1K_S1L_S1M_EEEOS21_EEEDcS1T_DpT0_(uint64_t *result, _DWORD *a2, _DWORD *a3)
{
  v4 = *result;
  if (*(*result + 16) == 21)
  {
    *a2 = *a3;
  }

  else
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*result);
    *v4 = *a3;
    v4[4] = 21;
  }

  return result;
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm22ELm22EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEbhsixjd5Point4BlobU8__strongP8NSObject7TString4TRefIPK10__CFString20TRetainReleasePolicyISI_EESF_IPK10__CFNumberSJ_ISO_EESF_IPK8__CFDataSJ_IST_EESF_IPK14__CFDictionarySJ_ISY_EESF_IPK7__CFURLSJ_IS13_EESF_IPK9__CFArraySJ_IS18_EESF_IP16__CFFileSecuritySJ_IS1C_EESF_IP17TReferenceCountedSJ_IS1G_EE8Property18NodeRequestOptions17NodeDSStoreStatus18DSBladeRunnerFlagsEEEE16__generic_assignB8ne200100INS0_17__move_assignmentIS1N_LNS0_6_TraitE1EEEEEvOT_EUlRS1T_OT0_E_JRNS0_6__baseILS1R_1EJS8_bhsixjdS9_SA_SD_SE_SL_SQ_SV_S10_S15_S1A_S1E_S1I_S1J_S1K_S1L_S1M_EEEOS21_EEEDcS1T_DpT0_(uint64_t *result, _DWORD *a2, _DWORD *a3)
{
  v4 = *result;
  if (*(*result + 16) == 22)
  {
    *a2 = *a3;
  }

  else
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*result);
    *v4 = *a3;
    v4[4] = 22;
  }

  return result;
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm23ELm23EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEbhsixjd5Point4BlobU8__strongP8NSObject7TString4TRefIPK10__CFString20TRetainReleasePolicyISI_EESF_IPK10__CFNumberSJ_ISO_EESF_IPK8__CFDataSJ_IST_EESF_IPK14__CFDictionarySJ_ISY_EESF_IPK7__CFURLSJ_IS13_EESF_IPK9__CFArraySJ_IS18_EESF_IP16__CFFileSecuritySJ_IS1C_EESF_IP17TReferenceCountedSJ_IS1G_EE8Property18NodeRequestOptions17NodeDSStoreStatus18DSBladeRunnerFlagsEEEE16__generic_assignB8ne200100INS0_17__move_assignmentIS1N_LNS0_6_TraitE1EEEEEvOT_EUlRS1T_OT0_E_JRNS0_6__baseILS1R_1EJS8_bhsixjdS9_SA_SD_SE_SL_SQ_SV_S10_S15_S1A_S1E_S1I_S1J_S1K_S1L_S1M_EEEOS21_EEEDcS1T_DpT0_(uint64_t *result, _DWORD *a2, _DWORD *a3)
{
  v4 = *result;
  if (*(*result + 16) == 23)
  {
    *a2 = *a3;
  }

  else
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*result);
    *v4 = *a3;
    v4[4] = 23;
  }

  return result;
}

void std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>>::__assign_alt[abi:ne200100]<10ul,NSObject * {__strong},NSObject * {__strong}>(uint64_t a1, void **a2, void **a3)
{
  if (*(a1 + 16) == 10)
  {
    v4 = *a3;
    *a3 = 0;
    v5 = *a2;
    *a2 = v4;
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    v7 = *a3;
    *a3 = 0;
    *a1 = v7;
    *(a1 + 16) = 10;
  }
}

CFTypeRef *std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>>::__assign_alt[abi:ne200100]<11ul,TString,TString>(CFTypeRef *result, const void **a2, const void **a3)
{
  if (*(result + 4) == 11)
  {
    if (a2 != a3)
    {
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(a2, a3);
      return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(a3, &stru_1F5F42870);
    }
  }

  else
  {
    v4 = result;
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](result);
    result = std::__variant_detail::__alt<11ul,TString>::__alt[abi:ne200100]<TString>(v4, a3);
    *(v4 + 4) = 11;
  }

  return result;
}

const void **std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>>::__assign_alt[abi:ne200100]<12ul,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>>(uint64_t a1, const void **a2, const void **a3)
{
  if (*(a1 + 16) == 12)
  {

    return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(a2, a3);
  }

  else
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    *a1 = *a3;
    *a3 = 0;
    *(a1 + 16) = 12;
  }

  return result;
}

const void **std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>>::__assign_alt[abi:ne200100]<13ul,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>>(uint64_t a1, const void **a2, const void **a3)
{
  if (*(a1 + 16) == 13)
  {

    return TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>::operator=<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>(a2, a3);
  }

  else
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    *a1 = *a3;
    *a3 = 0;
    *(a1 + 16) = 13;
  }

  return result;
}

const void **TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>::operator=<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>(const void **a1, const void **a2)
{
  if (a1 != a2)
  {
    v4 = *a1;
    if (*a1)
    {
      CFRelease(v4);
    }

    *a1 = *a2;
    *a2 = 0;
  }

  return a1;
}

const void **std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>>::__assign_alt[abi:ne200100]<14ul,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>>(uint64_t a1, const void **a2, const void **a3)
{
  if (*(a1 + 16) == 14)
  {

    return TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::operator=<__CFData const*,TRetainReleasePolicy<__CFData const*>>(a2, a3);
  }

  else
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    *a1 = *a3;
    *a3 = 0;
    *(a1 + 16) = 14;
  }

  return result;
}

const void **std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>>::__assign_alt[abi:ne200100]<15ul,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>>(uint64_t a1, const void **a2, const void **a3)
{
  if (*(a1 + 16) == 15)
  {

    return TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>::operator=<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>(a2, a3);
  }

  else
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    *a1 = *a3;
    *a3 = 0;
    *(a1 + 16) = 15;
  }

  return result;
}

const void **TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>::operator=<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>(const void **a1, const void **a2)
{
  if (a1 != a2)
  {
    v4 = *a1;
    if (*a1)
    {
      CFRelease(v4);
    }

    *a1 = *a2;
    *a2 = 0;
  }

  return a1;
}

const void **std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>>::__assign_alt[abi:ne200100]<16ul,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>(uint64_t a1, const void **a2, const void **a3)
{
  if (*(a1 + 16) == 16)
  {

    return TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::operator=<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>(a2, a3);
  }

  else
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    *a1 = *a3;
    *a3 = 0;
    *(a1 + 16) = 16;
  }

  return result;
}