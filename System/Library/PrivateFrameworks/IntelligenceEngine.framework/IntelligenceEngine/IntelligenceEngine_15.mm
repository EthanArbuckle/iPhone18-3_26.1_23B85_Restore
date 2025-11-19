void sub_254D5CD14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v70 = &a69;
  v71 = -168;
  v72 = &a69;
  while (1)
  {
    v73 = *v72;
    v72 -= 24;
    if (v73 < 0)
    {
      operator delete(*(v70 - 23));
    }

    v70 = v72;
    v71 += 24;
    if (!v71)
    {
      __cxa_guard_abort(&_MergedGlobals_14);
      a32 = &a39;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a32);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t siri::intelligence::Expression::Impl::ExpandFunctions(uint64_t a1, std::string *__str)
{
  size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  v5 = MEMORY[0x277D85DE0];
  v6 = size;
  do
  {
    v7 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
    if (v7 < 0)
    {
      v8 = __str->__r_.__value_.__r.__words[0];
      v9 = __str->__r_.__value_.__l.__size_;
    }

    else
    {
      v8 = __str;
      v9 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
    }

    v10 = v6 - 1;
    if (v9 < v6 - 1)
    {
      v10 = v9;
    }

    if (v9 - v10 > 1)
    {
      v9 = v10 + 1;
    }

    if (!v9)
    {
      return 0;
    }

    v11 = v8 + v9;
    v12 = v8;
    v13 = v11;
    do
    {
      v14 = v12;
      v15 = v12;
      while (1)
      {
        v16 = *v15++;
        if (v16 == 40)
        {
          break;
        }

        v14 = v15;
        if (v15 == v11)
        {
          v14 = v13;
          goto LABEL_18;
        }
      }

      v12 = (&v14->__r_.__value_.__l.__data_ + 1);
      v13 = v14;
    }

    while (v15 != v11);
LABEL_18:
    v6 = v14 - v8;
    v17 = v14 == v11 ? -1 : v14 - v8;
    if ((v17 - 1) > 0xFFFFFFFFFFFFFFFDLL)
    {
      return 0;
    }

    v18 = __str;
    if ((v7 & 0x80000000) != 0)
    {
      v18 = __str->__r_.__value_.__r.__words[0];
    }

    v19 = v18->__r_.__value_.__s.__data_[v17 - 1];
    if ((v19 & 0x80000000) != 0)
    {
      v20 = __maskrune(v18->__r_.__value_.__s.__data_[v17 - 1], 0x500uLL);
    }

    else
    {
      v20 = *(v5 + 4 * v19 + 60) & 0x500;
    }
  }

  while (v19 != 95 && v20 == 0);
  do
  {
    v22 = v6;
    if (v6-- < 1)
    {
      break;
    }

    v24 = __str;
    if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
    {
      v24 = __str->__r_.__value_.__r.__words[0];
    }

    v25 = v24 + v22;
    v26 = *(v25 - 1);
    v27 = (v26 & 0x80000000) != 0 ? __maskrune(*(v25 - 1), 0x500uLL) : *(v5 + 4 * v26 + 60) & 0x500;
  }

  while (v26 == 95 || v27 != 0);
  std::string::basic_string(&v49, __str, v22, v17 - v22, &v48);
  siri::intelligence::StringTrim(" \t\n\r", &v49, &v52);
  siri::intelligence::StringToLower(&v52, &v50);
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  memset(&v49, 0, sizeof(v49));
  v29 = v17 + 1;
  if (v29 >= size)
  {
    v33 = v29;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = v29;
    while (1)
    {
      v34 = __str;
      if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
      {
        v34 = __str->__r_.__value_.__r.__words[0];
      }

      v35 = v34->__r_.__value_.__s.__data_[v29];
      if (v35 > 40)
      {
        switch(v35)
        {
          case ')':
            v32 = (__PAIR64__(v32, v31 & 1) - 1) >> 32;
            break;
          case ',':
            if (!v32)
            {
              if (v31)
              {
                v32 = 0;
                v31 = 1;
              }

              else
              {
                std::string::basic_string(&v48, __str, v33, v29 - v33, v47);
                siri::intelligence::StringTrim(" \t\n\r", &v48, &v52);
                std::vector<std::string>::push_back[abi:ne200100](&v49, &v52);
                if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v52.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v48.__r_.__value_.__l.__data_);
                }

                v32 = 0;
                v31 = 0;
                v33 = v29 + 1;
              }
            }

            break;
          case '\\':
            if (v31)
            {
              v31 = 1;
              v30 = !v30;
            }

            else
            {
              v31 = 0;
            }

            break;
        }
      }

      else if (v35 == 34 || v35 == 39)
      {
        v31 ^= !v30;
      }

      else if (v35 == 40)
      {
        v32 += (v31 & 1) == 0;
      }

      v36 = __str;
      if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
      {
        v36 = __str->__r_.__value_.__r.__words[0];
      }

      if ((v32 & 0x80000000) != 0)
      {
        break;
      }

      if (v36->__r_.__value_.__s.__data_[v29] != 92)
      {
        v30 = 0;
      }

      if (size == ++v29)
      {
        v29 = size;
        break;
      }
    }
  }

  v38 = std::string::basic_string(&v52, __str, v33, v29 - v33, v47);
  siri::intelligence::StringTrim(" \t\n\r", v38, &v48);
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  v39 = HIBYTE(v48.__r_.__value_.__r.__words[2]);
  if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v39 = v48.__r_.__value_.__l.__size_;
  }

  if (v39)
  {
    siri::intelligence::StringTrim(" \t\n\r", &v48, &v52);
    std::vector<std::string>::push_back[abi:ne200100](&v49, &v52);
    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v52.__r_.__value_.__l.__data_);
    }
  }

  memset(v47, 0, sizeof(v47));
  if (v49.__r_.__value_.__l.__size_ != v49.__r_.__value_.__r.__words[0])
  {
    v40 = 0xAAAAAAAAAAAAAAABLL * ((v49.__r_.__value_.__l.__size_ - v49.__r_.__value_.__r.__words[0]) >> 3);
    if (v40 < 0xAAAAAAAAAAAAAABLL)
    {
      v53 = v47;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v47, v40);
    }

    std::vector<siri::intelligence::FunctionArgument>::__throw_length_error[abi:ne200100]();
  }

  siri::intelligence::Expression::Impl::EvaluateFunction(a1, &v50, v47, &v52);
  memset(&__p, 0, sizeof(__p));
  if (v22 >= 1)
  {
    std::string::basic_string(&v45, __str, 0, v22, &v51);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v45;
  }

  if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v41 = &v52;
  }

  else
  {
    v41 = v52.__r_.__value_.__r.__words[0];
  }

  if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v42 = HIBYTE(v52.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v42 = v52.__r_.__value_.__l.__size_;
  }

  std::string::append(&__p, v41, v42);
  if (v29 < ((size << 32) - 0x100000000) >> 32)
  {
    std::string::basic_string(&v45, __str, v29 + 1, size + ~v29, &v51);
    v43 = (v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v45 : v45.__r_.__value_.__r.__words[0];
    v44 = (v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v45.__r_.__value_.__r.__words[2]) : v45.__r_.__value_.__l.__size_;
    std::string::append(&__p, v43, v44);
    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }
  }

  std::string::operator=(__str, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  v52.__r_.__value_.__r.__words[0] = v47;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v52);
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  v52.__r_.__value_.__r.__words[0] = &v49;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v52);
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  return 1;
}

void sub_254D5D7E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (*(v43 - 97) < 0)
  {
    operator delete(*(v43 - 120));
  }

  if (a31 < 0)
  {
    operator delete(__p);
  }

  __p = &a32;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a43 < 0)
  {
    operator delete(a38);
  }

  _Unwind_Resume(a1);
}

uint64_t siri::intelligence::Expression::Evaluate(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v122, *a2, *(a2 + 8));
  }

  else
  {
    v122 = *a2;
  }

    ;
  }

  v119 = 0;
  v120 = 0;
  v121 = 0;
  v130 = 0u;
  v131 = 0u;
  v129 = 0u;
  memset(&__p, 0, sizeof(__p));
  std::string::basic_string[abi:ne200100]<0>(&v124, &str_10);
  v4 = 0;
  if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v122.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v122.__r_.__value_.__l.__size_;
  }

  v6 = &str_10;
  v7 = MEMORY[0x277D85DE0];
  while (1)
  {
    if (v4 >= size)
    {
LABEL_181:
      v55 = *(&v131 + 1);
      if (!*(&v131 + 1))
      {
LABEL_189:
        v24 = 1;
        goto LABEL_191;
      }

      while (1)
      {
        v56 = v55 + v131 - 1;
        v57 = *(*(&v129 + 1) + 8 * (v56 / 0xAA));
        v58 = v56 % 0xAA;
        v59 = v57 + 24 * v58;
        v60 = *(v59 + 23);
        if (v60 < 0)
        {
          if (*(v59 + 8) == 1)
          {
            v61 = *v59;
LABEL_187:
            if (*v61 == 40)
            {
              goto LABEL_190;
            }
          }
        }

        else
        {
          v61 = (v57 + 24 * v58);
          if (v60 == 1)
          {
            goto LABEL_187;
          }
        }

        std::vector<std::string>::push_back[abi:ne200100](&v119, v59);
        std::deque<std::string>::pop_back(&v129);
        v55 = *(&v131 + 1);
        if (!*(&v131 + 1))
        {
          goto LABEL_189;
        }
      }
    }

    while (1)
    {
      v8 = (v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v122 : v122.__r_.__value_.__r.__words[0];
      v9 = v8->__r_.__value_.__s.__data_[v4];
      if (!((v9 & 0x80000000) != 0 ? __maskrune(v9, 0x4000uLL) : *(v7 + 4 * v9 + 60) & 0x4000))
      {
        break;
      }

      if (size == ++v4)
      {
        goto LABEL_20;
      }
    }

    if (size == v4)
    {
LABEL_20:
      std::string::basic_string[abi:ne200100]<0>(&v123, v6);
      v4 = size;
      goto LABEL_21;
    }

    if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v122;
    }

    else
    {
      v13 = v122.__r_.__value_.__r.__words[0];
    }

    std::string::basic_string[abi:ne200100]<0>(&v127, v13 + v4);
    siri::intelligence::GetOperator(&__str, &v127);
    if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v127.__r_.__value_.__l.__data_);
    }

    v14 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v14 = __str.__r_.__value_.__l.__size_;
      if (__str.__r_.__value_.__l.__size_)
      {
LABEL_36:
        v4 += v14;
        v123 = __str;
        memset(&__str, 0, sizeof(__str));
        goto LABEL_161;
      }
    }

    else if (*(&__str.__r_.__value_.__s + 23))
    {
      goto LABEL_36;
    }

    std::string::basic_string[abi:ne200100]<0>(&v123, v6);
    if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v122;
    }

    else
    {
      v16 = v122.__r_.__value_.__r.__words[0];
    }

    std::string::push_back(&v123, v16->__r_.__value_.__s.__data_[v4++]);
    if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v123;
    }

    else
    {
      v17 = v123.__r_.__value_.__r.__words[0];
    }

    if ((v17->__r_.__value_.__s.__data_[0] & 0xFE) != 0x28)
    {
      if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
      {
        if (v123.__r_.__value_.__l.__size_ != 1)
        {
          goto LABEL_108;
        }

        v18 = *v123.__r_.__value_.__l.__data_;
      }

      else
      {
        if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) != 1)
        {
          goto LABEL_108;
        }

        v18 = v123.__r_.__value_.__s.__data_[0];
      }

      if (v18 != 39 && v18 != 34)
      {
LABEL_108:
        if (v4 < size)
        {
          v36 = 0;
          v37 = 0;
          while (1)
          {
            v38 = v6;
            v39 = (v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v122 : v122.__r_.__value_.__r.__words[0];
            v40 = v39->__r_.__value_.__s.__data_[v4];
            if (!v36 && !v37)
            {
              if ((v40 & 0x80000000) != 0 ? __maskrune(v39->__r_.__value_.__s.__data_[v4], 0x4000uLL) : *(v7 + 4 * v40 + 60) & 0x4000)
              {
                break;
              }

              v42 = (v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v122 : v122.__r_.__value_.__r.__words[0];
              std::string::basic_string[abi:ne200100]<0>(&v127, v42 + v4);
              if (siri::intelligence::IsOperator(&v127))
              {
                if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v43 = &v122;
                }

                else
                {
                  v43 = v122.__r_.__value_.__r.__words[0];
                }

                std::string::basic_string[abi:ne200100]<0>(&v126, v43 + v4);
                if (siri::intelligence::IsOperator(&v126))
                {
                  if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v44 = &v122;
                  }

                  else
                  {
                    v44 = v122.__r_.__value_.__r.__words[0];
                  }

                  v46 = v44->__r_.__value_.__s.__data_[v4 - 1] != 101 || v40 == 41;
                }

                else
                {
                  v46 = 1;
                }

                if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v126.__r_.__value_.__l.__data_);
                }
              }

              else
              {
                v46 = v40 == 41;
              }

              if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v127.__r_.__value_.__l.__data_);
              }

              if (v46)
              {
                break;
              }
            }

            std::string::push_back(&v123, v40);
            if (v40 == 40)
            {
              v47 = v36 + 1;
            }

            else
            {
              v47 = v36;
            }

            if (v40 == 39 || v40 == 34)
            {
              if (v37)
              {
                v48 = v37;
              }

              else
              {
                v48 = v40;
              }

              if (v40 != v37 || v37 == 0)
              {
                v37 = v48;
              }

              else
              {
                v37 = 0;
              }
            }

            v6 = v38;
            v36 = v47 - (v40 == 41);
            if (size == ++v4)
            {
              v4 = size;
              goto LABEL_161;
            }
          }

          v6 = v38;
        }

        goto LABEL_161;
      }

      do
      {
        if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v32 = &v122;
        }

        else
        {
          v32 = v122.__r_.__value_.__r.__words[0];
        }

        v33 = v32->__r_.__value_.__s.__data_[v4];
        if (v4 < size - 1 && v33 == 92)
        {
          v34 = 0;
          ++v4;
        }

        else
        {
          if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v35 = &v123;
          }

          else
          {
            v35 = v123.__r_.__value_.__r.__words[0];
          }

          v34 = v33 == v35->__r_.__value_.__s.__data_[0];
        }

        std::string::push_back(&v123, v32->__r_.__value_.__s.__data_[v4++]);
      }

      while (v4 < size && !v34);
    }

LABEL_161:
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

LABEL_21:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v123;
    v11 = HIBYTE(v123.__r_.__value_.__r.__words[2]);
    if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v11 = v123.__r_.__value_.__l.__size_;
    }

    if (!v11)
    {
      goto LABEL_181;
    }

    if (siri::intelligence::StringIsANumber(&__p))
    {
      goto LABEL_49;
    }

    std::string::basic_string[abi:ne200100]<0>(&__str, "'");
    if (siri::intelligence::StringStartsWith(&__p, &__str.__r_.__value_.__l.__data_))
    {
      v12 = 1;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v127, "");
      v12 = siri::intelligence::StringStartsWith(&__p, &v127.__r_.__value_.__l.__data_);
      if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v127.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
      if (v12)
      {
        goto LABEL_49;
      }
    }

    else if (v12)
    {
      goto LABEL_49;
    }

    std::string::basic_string[abi:ne200100]<0>(&__str, "true");
    if (siri::intelligence::StringStartsWith(&__p, &__str.__r_.__value_.__l.__data_))
    {
      v15 = 1;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v127, "false");
      v15 = siri::intelligence::StringStartsWith(&__p, &v127.__r_.__value_.__l.__data_);
      if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v127.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
      if (v15)
      {
LABEL_49:
        std::vector<std::string>::push_back[abi:ne200100](&v119, &__p);
        goto LABEL_50;
      }
    }

    else if (v15)
    {
      goto LABEL_49;
    }

    IsOperator = siri::intelligence::IsOperator(&__p);
    v20 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if (IsOperator)
    {
      if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        if (HIBYTE(__p.__r_.__value_.__r.__words[2]) == 1)
        {
          p_p = &__p;
          goto LABEL_72;
        }

LABEL_170:
        if (v20 == 1)
        {
          v50 = &__p;
LABEL_174:
          if (v50->__r_.__value_.__s.__data_[0] == 33)
          {
            std::vector<std::string>::push_back[abi:ne200100](&v119, siri::intelligence::Memory::NUMBER_ZERO);
          }
        }

        goto LABEL_176;
      }

      if (__p.__r_.__value_.__l.__size_ != 1)
      {
        goto LABEL_176;
      }

      p_p = __p.__r_.__value_.__r.__words[0];
LABEL_72:
      if (p_p->__r_.__value_.__s.__data_[0] != 45)
      {
        goto LABEL_168;
      }

      if (siri::intelligence::IsOperator(&v124))
      {
        goto LABEL_167;
      }

      v23 = SHIBYTE(v124.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(v124.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        v23 = v124.__r_.__value_.__l.__size_;
        if (v124.__r_.__value_.__l.__size_ != 1)
        {
          goto LABEL_166;
        }

        if (*v124.__r_.__value_.__l.__data_ != 40)
        {
          goto LABEL_168;
        }
      }

      else if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) != 1 || v124.__r_.__value_.__s.__data_[0] != 40)
      {
LABEL_166:
        if (!v23)
        {
          goto LABEL_167;
        }

LABEL_168:
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          v20 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          goto LABEL_170;
        }

        if (__p.__r_.__value_.__l.__size_ == 1)
        {
          v50 = __p.__r_.__value_.__r.__words[0];
          goto LABEL_174;
        }

LABEL_176:
        Precedence = siri::intelligence::GetPrecedence(&__p);
        v52 = *(&v131 + 1);
        if (*(&v131 + 1))
        {
          v53 = Precedence;
          do
          {
            v54 = (*(*(&v129 + 1) + 8 * ((v52 + v131 - 1) / 0xAAuLL)) + 24 * ((v52 + v131 - 1) % 0xAAuLL));
            if (v53 > siri::intelligence::GetPrecedence(v54))
            {
              break;
            }

            std::vector<std::string>::push_back[abi:ne200100](&v119, v54);
            std::deque<std::string>::pop_back(&v129);
            v52 = *(&v131 + 1);
          }

          while (*(&v131 + 1));
        }

LABEL_81:
        std::deque<std::string>::push_back(&v129, &__p);
        goto LABEL_50;
      }

LABEL_167:
      std::vector<std::string>::push_back[abi:ne200100](&v119, siri::intelligence::Memory::NUMBER_ZERO);
      MEMORY[0x259C299D0](&__p, "~");
      goto LABEL_168;
    }

    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      break;
    }

    if (HIBYTE(__p.__r_.__value_.__r.__words[2]) != 1)
    {
      goto LABEL_190;
    }

    v22 = __p.__r_.__value_.__s.__data_[0];
LABEL_80:
    if (v22 == 40)
    {
      goto LABEL_81;
    }

    v24 = 0;
    if (v22 != 41)
    {
      goto LABEL_191;
    }

    v25 = *(&v131 + 1);
    if (!*(&v131 + 1))
    {
      goto LABEL_191;
    }

    while (1)
    {
      v26 = v25 + v131 - 1;
      v27 = *(*(&v129 + 1) + 8 * (v26 / 0xAA));
      v28 = v26 % 0xAA;
      v29 = v27 + 24 * v28;
      v30 = *(v29 + 23);
      if ((v30 & 0x80000000) == 0)
      {
        break;
      }

      if (*(v29 + 8) == 1)
      {
        v31 = *v29;
        goto LABEL_89;
      }

LABEL_90:
      std::vector<std::string>::push_back[abi:ne200100](&v119, v29);
      std::deque<std::string>::pop_back(&v129);
      v25 = *(&v131 + 1);
      if (!*(&v131 + 1))
      {
        goto LABEL_190;
      }
    }

    v31 = (v27 + 24 * v28);
    if (v30 != 1)
    {
      goto LABEL_90;
    }

LABEL_89:
    if (*v31 != 40)
    {
      goto LABEL_90;
    }

    std::deque<std::string>::pop_back(&v129);
LABEL_50:
    std::string::operator=(&v124, &__p);
  }

  if (__p.__r_.__value_.__l.__size_ == 1)
  {
    v22 = *__p.__r_.__value_.__l.__data_;
    goto LABEL_80;
  }

LABEL_190:
  v24 = 0;
LABEL_191:
  if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v124.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v62 = std::deque<std::string>::~deque[abi:ne200100](&v129);
  if (!v24)
  {
    v116 = 0;
    if (*(a3 + 23) < 0)
    {
      **a3 = 0;
      *(a3 + 8) = 0;
    }

    else
    {
      *a3 = 0;
      *(a3 + 23) = 0;
    }

    goto LABEL_442;
  }

  v130 = 0u;
  v131 = 0u;
  v129 = 0u;
  v63 = v119;
  v64 = v120;
  if (v119 == v120)
  {
LABEL_440:
    v116 = 0;
    goto LABEL_441;
  }

  while (2)
  {
    if (!siri::intelligence::IsOperator(v63))
    {
      std::deque<std::string>::push_back(&v129, v63);
      goto LABEL_426;
    }

    if (*(&v131 + 1) < 2uLL)
    {
      goto LABEL_440;
    }

    siri::intelligence::StringToLower(*(*(&v129 + 1) + 8 * ((*(&v131 + 1) + v131 - 1) / 0xAAuLL)) + 24 * ((*(&v131 + 1) + v131 - 1) % 0xAAuLL), &v127);
    siri::intelligence::RemoveStringQuotes(&__str, &v127);
    if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v127.__r_.__value_.__l.__data_);
    }

    std::deque<std::string>::pop_back(&v129);
    siri::intelligence::StringToLower(*(*(&v129 + 1) + 8 * ((*(&v131 + 1) + v131 - 1) / 0xAAuLL)) + 24 * ((*(&v131 + 1) + v131 - 1) % 0xAAuLL), &v126);
    siri::intelligence::RemoveStringQuotes(&v127, &v126);
    if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v126.__r_.__value_.__l.__data_);
    }

    std::deque<std::string>::pop_back(&v129);
    siri::intelligence::StringOrBoolToDouble(&v127);
    v66 = v65;
    siri::intelligence::StringOrBoolToDouble(&__str);
    v69 = v68;
    if (*(v63 + 23) < 0)
    {
      v72 = *(v63 + 1);
      if (v72 == 1)
      {
        v76 = **v63;
        if (v76 <= 0x2E)
        {
          if (**v63 > 0x2Au)
          {
            if (v76 == 43)
            {
              goto LABEL_366;
            }

            if (v76 == 45)
            {
              goto LABEL_249;
            }
          }

          else
          {
            if (v76 == 33)
            {
              goto LABEL_310;
            }

            if (v76 == 42)
            {
              goto LABEL_273;
            }
          }
        }

        else if (**v63 <= 0x3Cu)
        {
          if (v76 == 47)
          {
            goto LABEL_381;
          }

          if (v76 == 60)
          {
LABEL_369:
            if (siri::intelligence::StringIsANumber(&v127) && siri::intelligence::StringIsANumber(&__str))
            {
              if (v66 >= v69)
              {
                v71 = "false";
              }

              else
              {
                v71 = "true";
              }

              goto LABEL_419;
            }

            if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v105 = HIBYTE(v127.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v105 = v127.__r_.__value_.__l.__size_;
            }

            if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v106 = &v127;
            }

            else
            {
              v106 = v127.__r_.__value_.__r.__words[0];
            }

            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v107 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v107 = __str.__r_.__value_.__l.__size_;
            }

            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_str = &__str;
            }

            else
            {
              p_str = __str.__r_.__value_.__r.__words[0];
            }

            if (v107 >= v105)
            {
              v109 = v105;
            }

            else
            {
              v109 = v107;
            }

            v110 = memcmp(v106, p_str, v109);
            v111 = v105 < v107;
            if (v110)
            {
              v111 = v110 < 0;
            }

            if (v111)
            {
              v88 = "true";
            }

            else
            {
              v88 = "false";
            }

LABEL_403:
            std::string::basic_string[abi:ne200100]<0>(&v126, v88);
            std::deque<std::string>::push_back(&v129, &v126);
            if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_421;
            }

            goto LABEL_422;
          }
        }

        else
        {
          switch(v76)
          {
            case '=':
              goto LABEL_253;
            case '>':
LABEL_313:
              if (siri::intelligence::StringIsANumber(&v127) && siri::intelligence::StringIsANumber(&__str))
              {
                if (v66 <= v69)
                {
                  v71 = "false";
                }

                else
                {
                  v71 = "true";
                }

                goto LABEL_419;
              }

              if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v89 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v89 = __str.__r_.__value_.__l.__size_;
              }

              if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v90 = &__str;
              }

              else
              {
                v90 = __str.__r_.__value_.__r.__words[0];
              }

              if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v91 = HIBYTE(v127.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v91 = v127.__r_.__value_.__l.__size_;
              }

              if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v92 = &v127;
              }

              else
              {
                v92 = v127.__r_.__value_.__r.__words[0];
              }

              if (v91 >= v89)
              {
                v93 = v89;
              }

              else
              {
                v93 = v91;
              }

              v94 = memcmp(v90, v92, v93);
              v95 = v89 < v91;
              if (v94)
              {
                v95 = v94 < 0;
              }

              if (v95)
              {
                v88 = "true";
              }

              else
              {
                v88 = "false";
              }

              goto LABEL_403;
            case '~':
              goto LABEL_249;
          }
        }
      }

      else if (v72 == 2)
      {
        v73 = *v63;
        if (**v63 == 9766)
        {
LABEL_233:
          if (v68)
          {
            v75 = v66 == 0;
          }

          else
          {
            v75 = 1;
          }

          if (v75)
          {
            v71 = "false";
          }

          else
          {
            v71 = "true";
          }

          goto LABEL_419;
        }

        switch(*v73)
        {
          case 0x7C7C:
LABEL_250:
            if (v66 | v68)
            {
              v71 = "true";
            }

            else
            {
              v71 = "false";
            }

            goto LABEL_419;
          case 0x3D3C:
LABEL_258:
            if (siri::intelligence::StringIsANumber(&v127) && siri::intelligence::StringIsANumber(&__str))
            {
              if (v66 > v69)
              {
                v71 = "false";
              }

              else
              {
                v71 = "true";
              }

              goto LABEL_419;
            }

            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v81 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v81 = __str.__r_.__value_.__l.__size_;
            }

            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v82 = &__str;
            }

            else
            {
              v82 = __str.__r_.__value_.__r.__words[0];
            }

            if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v83 = HIBYTE(v127.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v83 = v127.__r_.__value_.__l.__size_;
            }

            if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v84 = &v127;
            }

            else
            {
              v84 = v127.__r_.__value_.__r.__words[0];
            }

            if (v83 >= v81)
            {
              v85 = v81;
            }

            else
            {
              v85 = v83;
            }

            v86 = memcmp(v82, v84, v85);
            v87 = v81 >= v83;
            if (v86)
            {
              v87 = v86 >= 0;
            }

            if (v87)
            {
              v88 = "true";
            }

            else
            {
              v88 = "false";
            }

            goto LABEL_403;
          case 0x3D3E:
LABEL_318:
            if (siri::intelligence::StringIsANumber(&v127) && siri::intelligence::StringIsANumber(&__str))
            {
              if (v66 < v69)
              {
                v71 = "false";
              }

              else
              {
                v71 = "true";
              }

              goto LABEL_419;
            }

            if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v96 = HIBYTE(v127.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v96 = v127.__r_.__value_.__l.__size_;
            }

            if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v97 = &v127;
            }

            else
            {
              v97 = v127.__r_.__value_.__r.__words[0];
            }

            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v98 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v98 = __str.__r_.__value_.__l.__size_;
            }

            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v99 = &__str;
            }

            else
            {
              v99 = __str.__r_.__value_.__r.__words[0];
            }

            if (v98 >= v96)
            {
              v100 = v96;
            }

            else
            {
              v100 = v98;
            }

            v101 = memcmp(v97, v99, v100);
            v102 = v96 >= v98;
            if (v101)
            {
              v102 = v101 >= 0;
            }

            if (v102)
            {
              v88 = "true";
            }

            else
            {
              v88 = "false";
            }

            goto LABEL_403;
          case 0x3D3D:
            goto LABEL_253;
          case 0x3D21:
            goto LABEL_212;
        }
      }

      if (*(v63 + 1) != 1 || **v63 != 37)
      {
        v103 = *v63;
        if (*(v63 + 1) != 1 || *v103 != 94)
        {
          goto LABEL_435;
        }

LABEL_380:
        v104 = pow(v66, v68);
        siri::intelligence::StringFromDouble(0xFFFFFFFFLL, v104, &v126);
        std::deque<std::string>::push_back(&v129, &v126);
        goto LABEL_420;
      }

      goto LABEL_376;
    }

    v70 = *(v63 + 23);
    if (v70 == 1)
    {
      v74 = *v63;
      if (v74 <= 0x2E)
      {
        if (*v63 > 0x29u)
        {
          if (v74 != 42)
          {
            if (v74 != 43)
            {
              if (v74 != 45)
              {
                goto LABEL_268;
              }

LABEL_249:
              siri::intelligence::StringFromDouble(0xFFFFFFFFLL, v66 - v68, &v126);
              std::deque<std::string>::push_back(&v129, &v126);
              goto LABEL_420;
            }

LABEL_366:
            siri::intelligence::StringFromDouble(0xFFFFFFFFLL, v66 + v68, &v126);
            std::deque<std::string>::push_back(&v129, &v126);
            goto LABEL_420;
          }

LABEL_273:
          siri::intelligence::StringFromDouble(0xFFFFFFFFLL, v66 * v68, &v126);
          std::deque<std::string>::push_back(&v129, &v126);
          goto LABEL_420;
        }

        if (v74 != 33)
        {
          if (v74 != 37)
          {
            goto LABEL_268;
          }

LABEL_376:
          if (v68 == 0.0)
          {
            goto LABEL_436;
          }

          siri::intelligence::StringFromDouble(0xFFFFFFFFLL, (v66 % v68), &v126);
          std::deque<std::string>::push_back(&v129, &v126);
          goto LABEL_420;
        }

LABEL_310:
        if (v68)
        {
          v71 = "false";
        }

        else
        {
          v71 = "true";
        }

        goto LABEL_419;
      }

      if (*v63 > 0x3Cu)
      {
        if (v74 == 61)
        {
          goto LABEL_253;
        }

        if (v74 != 62)
        {
          if (v74 == 126)
          {
            goto LABEL_249;
          }

LABEL_268:
          if (v74 != 94)
          {
LABEL_434:
            v103 = v63;
LABEL_435:
            siri::intelligence::Log::Error("Unsupported operator: %s", v67, v103);
LABEL_436:
            if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v127.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            goto LABEL_440;
          }

          goto LABEL_380;
        }

        goto LABEL_313;
      }

      if (v74 != 47)
      {
        if (v74 != 60)
        {
          goto LABEL_268;
        }

        goto LABEL_369;
      }

LABEL_381:
      if (v68 == 0.0)
      {
        goto LABEL_436;
      }

      siri::intelligence::StringFromDouble(0xFFFFFFFFLL, v66 / v68, &v126);
      std::deque<std::string>::push_back(&v129, &v126);
      goto LABEL_420;
    }

    if (v70 != 2)
    {
      goto LABEL_434;
    }

    switch(*v63)
    {
      case 0x2626:
        goto LABEL_233;
      case 0x7C7C:
        goto LABEL_250;
      case 0x3D3C:
        goto LABEL_258;
      case 0x3D3E:
        goto LABEL_318;
      case 0x3D3D:
LABEL_253:
        if (siri::intelligence::StringIsANumber(&v127) && siri::intelligence::StringIsANumber(&__str))
        {
          if (v66 == v69)
          {
            v71 = "true";
          }

          else
          {
            v71 = "false";
          }
        }

        else
        {
          if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v77 = HIBYTE(v127.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v77 = v127.__r_.__value_.__l.__size_;
          }

          v78 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v78 = __str.__r_.__value_.__l.__size_;
          }

          v71 = "false";
          if (v77 == v78)
          {
            if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v79 = &v127;
            }

            else
            {
              v79 = v127.__r_.__value_.__r.__words[0];
            }

            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v80 = &__str;
            }

            else
            {
              v80 = __str.__r_.__value_.__r.__words[0];
            }

            if (!memcmp(v79, v80, v77))
            {
              v71 = "true";
            }

            else
            {
              v71 = "false";
            }
          }
        }

        goto LABEL_419;
    }

    if (*v63 != 15649)
    {
      goto LABEL_434;
    }

LABEL_212:
    if (siri::intelligence::StringIsANumber(&v127) && siri::intelligence::StringIsANumber(&__str))
    {
      if (v66 == v69)
      {
        v71 = "false";
      }

      else
      {
        v71 = "true";
      }
    }

    else
    {
      if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v112 = HIBYTE(v127.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v112 = v127.__r_.__value_.__l.__size_;
      }

      v113 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v113 = __str.__r_.__value_.__l.__size_;
      }

      if (v112 == v113 && ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v114 = &v127) : (v114 = v127.__r_.__value_.__r.__words[0]), (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v115 = &__str) : (v115 = __str.__r_.__value_.__r.__words[0]), !memcmp(v114, v115, v112)))
      {
        v71 = "false";
      }

      else
      {
        v71 = "true";
      }
    }

LABEL_419:
    std::string::basic_string[abi:ne200100]<0>(&v126, v71);
    std::deque<std::string>::push_back(&v129, &v126);
LABEL_420:
    if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_421:
      operator delete(v126.__r_.__value_.__l.__data_);
    }

LABEL_422:
    if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v127.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

LABEL_426:
    v63 = (v63 + 24);
    if (v63 != v64)
    {
      continue;
    }

    break;
  }

  if (*(&v131 + 1) != 1)
  {
    goto LABEL_440;
  }

  std::string::operator=(a3, (*(*(&v129 + 1) + 8 * (v131 / 0xAA)) + 24 * (v131 % 0xAA)));
  v116 = 1;
LABEL_441:
  v62 = std::deque<std::string>::~deque[abi:ne200100](&v129);
LABEL_442:
  *&v129 = &v119;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v62);
  if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v122.__r_.__value_.__l.__data_);
  }

  return v116;
}

void sub_254D5EBAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a45 < 0)
  {
    operator delete(__p);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  if (*(v51 - 161) < 0)
  {
    operator delete(*(v51 - 184));
  }

  v53 = std::deque<std::string>::~deque[abi:ne200100](v51 - 160);
  *(v51 - 160) = &a12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v53);
  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

double siri::intelligence::RemoveStringQuotes(std::string *__str, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(__str, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *__str = *a2;
  }

  size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
    if (size <= 1)
    {
      return *&v3;
    }

    v6 = __str->__r_.__value_.__r.__words[0];
    v5 = *__str->__r_.__value_.__l.__data_;
  }

  else
  {
    if (size < 2)
    {
      return *&v3;
    }

    v5 = __str->__r_.__value_.__s.__data_[0];
    v6 = __str;
  }

  if (v5 == 34)
  {
    if (v6->__r_.__value_.__s.__data_[size - 1] != 34)
    {
      return *&v3;
    }
  }

  else if (v5 != 39 || v6->__r_.__value_.__s.__data_[size - 1] != 39)
  {
    return *&v3;
  }

  std::string::basic_string(&v8, __str, 1uLL, size - 2, &v9);
  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str->__r_.__value_.__l.__data_);
  }

  *&v3 = v8.__r_.__value_.__r.__words[0];
  *__str = v8;
  return *&v3;
}

void sub_254D5EEF4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL siri::intelligence::IsOperator(std::string *__str)
{
  siri::intelligence::GetOperator(v3, __str);
  if ((v4 & 0x80000000) == 0)
  {
    return v4 != 0;
  }

  v1 = v3[1] != 0;
  operator delete(v3[0]);
  return v1;
}

uint64_t siri::intelligence::GetPrecedence(unsigned __int8 *a1)
{
  if ((a1[23] & 0x80u) == 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = *a1;
  }

  v2 = *v1;
  if (v2 > 46)
  {
    if (v2 <= 93)
    {
      if ((v2 - 60) < 3)
      {
        return 2;
      }

      if (v2 == 47)
      {
        return 4;
      }

      return 9;
    }

    if (v2 == 94)
    {
      return 5;
    }

    if (v2 != 124)
    {
      if (v2 == 126)
      {
        return 6;
      }

      return 9;
    }

    return 1;
  }

  if (v2 <= 39)
  {
    if (v2 == 33)
    {
      return 7;
    }

    if (v2 == 37)
    {
      return 4;
    }

    if (v2 != 38)
    {
      return 9;
    }

    return 1;
  }

  if (v2 <= 42)
  {
    if (v2 == 40)
    {
      return 0;
    }

    if (v2 != 42)
    {
      return 9;
    }

    return 4;
  }

  if (v2 == 43 || v2 == 45)
  {
    return 3;
  }

  return 9;
}

std::string *siri::intelligence::GetOperator(uint64_t a1, std::string *__str)
{
  size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  if (size < 2)
  {
    if (!size)
    {
      return std::string::basic_string[abi:ne200100]<0>(a1, &str_10);
    }
  }

  else
  {
    result = std::string::basic_string(a1, __str, 0, 2uLL, &v13);
    v6 = *(a1 + 23);
    if (v6 < 0)
    {
      if (*(a1 + 8) == 2)
      {
        v7 = *a1;
        if (**a1 == 15676 || *v7 == 15678 || *v7 == 9766 || *v7 == 31868 || *v7 == 15677)
        {
          return result;
        }
      }

      result = *a1;
      if (*(a1 + 8) == 2 && LOWORD(result->__r_.__value_.__l.__data_) == 15649)
      {
        return result;
      }

      operator delete(result);
    }

    else if (v6 == 2 && (*a1 == 15676 || *a1 == 15678 || *a1 == 9766 || *a1 == 31868 || *a1 == 15677 || *a1 == 15649))
    {
      return result;
    }
  }

  if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = __str;
  }

  else
  {
    v8 = __str->__r_.__value_.__r.__words[0];
  }

  v9 = v8->__r_.__value_.__s.__data_[0];
  v10 = v9 - 33;
  v11 = (v9 - 33) > 0x3D || ((1 << (v9 - 33)) & 0x2000000038005611) == 0;
  if (v11 && v9 != 126)
  {
    return std::string::basic_string[abi:ne200100]<0>(a1, &str_10);
  }

  result = std::string::basic_string(a1, __str, 0, 1uLL, &v14);
  v12 = v10 > 0x3D || ((1 << v10) & 0x2000000038005611) == 0;
  if (v12 && v9 != 126)
  {
    return std::string::basic_string[abi:ne200100]<0>(a1, &str_10);
  }

  return result;
}

void std::deque<std::string>::pop_back(void *a1)
{
  v2 = a1[5] - 1;
  v3 = v2 + a1[4];
  v4 = a1[1];
  v5 = *(v4 + 8 * (v3 / 0xAA)) + 24 * (v3 % 0xAA);
  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
    v2 = a1[5] - 1;
    v4 = a1[1];
    v3 = a1[4] + v2;
  }

  v6 = a1[2];
  a1[5] = v2;
  if (v6 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = 170 * ((v6 - v4) >> 3) - 1;
  }

  if (v7 - v3 >= 0x154)
  {
    operator delete(*(v6 - 8));
    a1[2] -= 8;
  }
}

void std::deque<std::string>::push_back(void *a1, __int128 *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 170 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::string>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = (*(v4 + 8 * (v7 / 0xAA)) + 24 * (v7 % 0xAA));
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v8, *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    v8->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v8->__r_.__value_.__l.__data_ = v9;
  }

  ++a1[5];
}

void *std::deque<std::string>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
  if (!v2)
  {
    v6 = a1[3];
    v7 = v6 - *a1;
    if (a1[2] - a1[1] < v7)
    {
      operator new();
    }

    v8 = v7 >> 2;
    if (v6 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<YAML::Scanner::SimpleKey *>>(v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<YAML::Scanner::SimpleKey *>::emplace_back<YAML::Scanner::SimpleKey *&>(a1, &v10);
}

void sub_254D5F850(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::deque<std::string>::~deque[abi:ne200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v11 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 / 0xAA];
    v7 = *v6;
    v8 = *v6 + 24 * (v5 % 0xAA);
    v9 = v3[(*(a1 + 40) + v5) / 0xAA] + 24 * ((*(a1 + 40) + v5) % 0xAA);
    if (v8 != v9)
    {
      do
      {
        if (*(v8 + 23) < 0)
        {
          operator delete(*v8);
          v7 = *v6;
        }

        v8 += 24;
        if (v8 - v7 == 4080)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
          v8 = v10;
        }
      }

      while (v8 != v9);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v11 = v2;
  }

  *v4 = 0;
  v12 = v11 - v3;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v12 = v2 - v3;
    }

    while (v12 > 2);
    v11 = v2;
  }

  if (v12 == 1)
  {
    v13 = 85;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_19;
    }

    v13 = 170;
  }

  *(a1 + 32) = v13;
LABEL_19:
  if (v3 != v11)
  {
    do
    {
      v14 = *v3++;
      operator delete(v14);
    }

    while (v3 != v11);
    v11 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v11)
  {
    *(a1 + 16) = v2 + ((v11 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void siri::intelligence::StringOrBoolToDouble(const std::string *a1)
{
  if (siri::intelligence::StringIsBool(a1))
  {
    siri::intelligence::StringToBool(a1, 0);
  }

  else
  {

    siri::intelligence::StringToDouble(a1, 0);
  }
}

__n128 std::deque<std::string>::push_back(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 170 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    std::deque<std::string>::__add_back_capacity(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = (*(v6 + 8 * (v8 / 0xAA)) + 24 * (v8 % 0xAA));
  result = *a2;
  v9[1].n128_u64[0] = a2[1].n128_u64[0];
  *v9 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  ++*(a1 + 40);
  return result;
}

void std::__shared_ptr_emplace<siri::intelligence::Expression::Impl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28671C0A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C29D90);
}

void std::__shared_ptr_emplace<siri::intelligence::Expression::Impl>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    v2 = *(a1 + 72);

    operator delete(v2);
  }
}

uint64_t std::vector<std::shared_ptr<siri::intelligence::IntentReference>>::__init_with_size[abi:ne200100]<std::shared_ptr<siri::intelligence::IntentReference>*,std::shared_ptr<siri::intelligence::IntentReference>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<siri::intelligence::ResponseBase>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_254D5FC44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<siri::intelligence::IntentReference>>,std::shared_ptr<siri::intelligence::IntentReference>*,std::shared_ptr<siri::intelligence::IntentReference>*,std::shared_ptr<siri::intelligence::IntentReference>*>(uint64_t a1, void *a2, void *a3, void *a4)
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
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<siri::intelligence::IntentReference>>,std::shared_ptr<siri::intelligence::IntentReference>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<siri::intelligence::IntentReference>>,std::shared_ptr<siri::intelligence::IntentReference>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<siri::intelligence::ResponseBase>>,std::shared_ptr<siri::intelligence::ResponseBase>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void *std::set<std::string>::set[abi:ne200100]<std::__wrap_iter<std::string*>>(void *a1, const void **a2, const void **a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::__tree<std::string>::__emplace_hint_unique_key_args<std::string,std::string const&>(a1, v4, v6);
      v6 += 3;
    }

    while (v6 != a3);
  }

  return a1;
}

double YAML::Directives::Directives(YAML::Directives *this)
{
  *this = 1;
  *&result = 0x200000001;
  *(this + 4) = 0x200000001;
  *(this + 4) = 0;
  *(this + 3) = 0;
  *(this + 2) = this + 24;
  return result;
}

{
  *this = 1;
  *&result = 0x200000001;
  *(this + 4) = 0x200000001;
  *(this + 4) = 0;
  *(this + 3) = 0;
  *(this + 2) = this + 24;
  return result;
}

void YAML::Directives::TranslateTagHandle(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = std::__tree<std::string>::find<std::string>(a1 + 16, a2);
  if (a1 + 24 != v6)
  {
    if ((*(v6 + 79) & 0x80000000) == 0)
    {
      v7 = *(v6 + 56);
      *(a3 + 16) = *(v6 + 72);
      *a3 = v7;
      return;
    }

    v9 = *(v6 + 56);
    v10 = *(v6 + 64);
    goto LABEL_11;
  }

  v8 = *(a2 + 23);
  if ((v8 & 0x80000000) == 0)
  {
    if (v8 != 2 || *a2 != 8481)
    {
      *a3 = *a2;
      *(a3 + 16) = *(a2 + 16);
      return;
    }

    goto LABEL_14;
  }

  v9 = *a2;
  v10 = *(a2 + 8);
  if (v10 == 2 && *v9 == 8481)
  {
LABEL_14:
    *(a3 + 23) = 18;
    strcpy(a3, "tag:yaml.org,2002:");
    return;
  }

LABEL_11:

  std::string::__init_copy_ctor_external(a3, v9, v10);
}

siri::intelligence::VariableArray *siri::intelligence::VariableArray::VariableArray(siri::intelligence::VariableArray *this)
{
  std::string::basic_string[abi:ne200100]<0>(&v4, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, siri::intelligence::TYPE_ARRAY[0]);
  siri::intelligence::Variable::Variable(this, &v4, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  *this = &unk_28671C0F0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 9) = 0;
  return this;
}

void sub_254D5FF9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void *siri::intelligence::VariableArray::VariableArray(void *a1, const std::string *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, siri::intelligence::TYPE_ARRAY[0]);
  siri::intelligence::Variable::Variable(a1, a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_28671C0F0;
  a1[10] = 0;
  a1[11] = 0;
  a1[9] = 0;
  return a1;
}

void sub_254D6005C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t siri::intelligence::VariableArray::VariableArray(uint64_t a1, const std::string *a2, uint64_t *a3)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, siri::intelligence::TYPE_ARRAY[0]);
  siri::intelligence::Variable::Variable(a1, a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(a1 + 72) = 0;
  *a1 = &unk_28671C0F0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v6 = *a3;
  if (a3[1] != *a3)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "");
      siri::intelligence::Variable::FromProtobuf(v6 + v7, &v10);
      if (v10)
      {
        std::vector<std::shared_ptr<siri::intelligence::Variable>>::push_back[abi:ne200100]((a1 + 72), &v10);
        *(a1 + 64) = 1;
      }

      if (*(&v10 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v10 + 1));
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v8;
      v6 = *a3;
      v7 += 192;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 6) > v8);
  }

  return a1;
}

void sub_254D601C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void **siri::intelligence::VariableArray::AddItem(void **result, __int128 *a2)
{
  if (*a2)
  {
    v2 = result;
    result = std::vector<std::shared_ptr<siri::intelligence::Variable>>::push_back[abi:ne200100](result + 9, a2);
    *(v2 + 64) = 1;
  }

  return result;
}

uint64_t siri::intelligence::VariableArray::SetValueFromString(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (!v3)
  {
    (*(*a1 + 24))(a1);
    return 1;
  }

  siri::intelligence::ParseJsonToVariable(a2, lpsrc);
  if (lpsrc[0])
  {
    v5 = **lpsrc[0];
    if (v6)
    {
      v7 = lpsrc[1];
      if (lpsrc[1])
      {
        atomic_fetch_add_explicit(lpsrc[1] + 1, 1uLL, memory_order_relaxed);
      }

      goto LABEL_11;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = 0;
LABEL_11:
  if (lpsrc[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](lpsrc[1]);
  }

  v8 = v6 != 0;
  if (v6)
  {
    lpsrc[0] = 0;
    lpsrc[1] = 0;
    v13 = 0;
    std::vector<std::shared_ptr<siri::intelligence::Variable>>::__init_with_size[abi:ne200100]<std::shared_ptr<siri::intelligence::Variable>*,std::shared_ptr<siri::intelligence::Variable>*>(lpsrc, v6[9], v6[10], (v6[10] - v6[9]) >> 4);
    std::vector<std::shared_ptr<siri::intelligence::ResponseBase>>::__vdeallocate((a1 + 72));
    *(a1 + 72) = *lpsrc;
    *(a1 + 88) = v13;
    lpsrc[1] = 0;
    v13 = 0;
    lpsrc[0] = 0;
    v14 = lpsrc;
    std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](&v14);
    *(a1 + 64) = 1;
  }

  else
  {
    (*(*a1 + 24))(a1);
    if (*(a2 + 23) >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    siri::intelligence::Log::Error("Illegal array variable string: %s", v9, v10);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v8;
}

void sub_254D60430(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t siri::intelligence::VariableArray::GetItems@<X0>(siri::intelligence::VariableArray *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<std::shared_ptr<siri::intelligence::Variable>>::__init_with_size[abi:ne200100]<std::shared_ptr<siri::intelligence::Variable>*,std::shared_ptr<siri::intelligence::Variable>*>(a2, *(this + 9), *(this + 10), (*(this + 10) - *(this + 9)) >> 4);
}

void **std::vector<std::shared_ptr<siri::intelligence::Variable>>::push_back[abi:ne200100](void **result, __int128 *a2)
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
      std::vector<std::shared_ptr<siri::intelligence::Variable>>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<siri::intelligence::ResponseBase>>>(result, v11);
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
    result = std::__split_buffer<std::shared_ptr<siri::intelligence::Variable>>::~__split_buffer(v18);
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

uint64_t siri::intelligence::VariableArray::GetItem@<X0>(uint64_t this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  if (a2 < 0)
  {
    v3 = *(this + 72);
    v4 = (*(this + 80) - v3) >> 4;
    a2 += v4;
    if (a2 < 0)
    {
LABEL_8:
      *a3 = 0;
      a3[1] = 0;
      return this;
    }
  }

  else
  {
    v3 = *(this + 72);
    v4 = (*(this + 80) - v3) >> 4;
  }

  if (a2 >= v4)
  {
    goto LABEL_8;
  }

  v5 = *(v3 + 16 * a2);
  *a3 = v5;
  if (*(&v5 + 1))
  {
    atomic_fetch_add_explicit((*(&v5 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void siri::intelligence::VariableArray::SetItems(uint64_t a1, uint64_t **a2)
{
  v3 = (a1 + 72);
  if (v3 != a2)
  {
    std::vector<std::shared_ptr<siri::intelligence::Variable>>::__assign_with_size[abi:ne200100]<std::shared_ptr<siri::intelligence::Variable>*,std::shared_ptr<siri::intelligence::Variable>*>(v3, *a2, a2[1], (a2[1] - *a2) >> 4);
  }

  *(a1 + 64) = 1;
}

void siri::intelligence::VariableArray::PopBack(siri::intelligence::VariableArray *this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 10);
  if (*(this + 9) == v2)
  {
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v4 = *(v2 - 8);
    *a2 = *(v2 - 16);
    a2[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
      v2 = *(this + 10);
      v5 = *(v2 - 8);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
    }

    *(this + 10) = v2 - 16;
  }
}

uint64_t siri::intelligence::VariableArray::RemoveItem(siri::intelligence::VariableArray *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = *(this + 9);
  v3 = *(this + 10);
  if (a2 >= ((v3 - v4) >> 4))
  {
    return 0;
  }

  std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<siri::intelligence::Variable> *,std::shared_ptr<siri::intelligence::Variable> *,std::shared_ptr<siri::intelligence::Variable> *>(&v10, (v4 + 16 * a2 + 16), v3, v4 + 16 * a2);
  v6 = v5;
  v7 = *(this + 10);
  if (v7 != v5)
  {
    do
    {
      v8 = *(v7 - 8);
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      v7 -= 16;
    }

    while (v7 != v6);
  }

  *(this + 10) = v6;
  return 1;
}

uint64_t siri::intelligence::VariableArray::IsEmpty(siri::intelligence::VariableArray *this)
{
  if (*(this + 9) == *(this + 10))
  {
    v1 = 1;
  }

  else
  {
    v1 = *(this + 64) ^ 1;
  }

  return v1 & 1;
}

void siri::intelligence::VariableArray::AsString(siri::intelligence::VariableArray *this@<X0>, uint64_t a2@<X8>)
{
  memset(v9, 0, sizeof(v9));
  v3 = *(this + 9);
  v4 = *(this + 10);
  if (v3 != v4)
  {
    while (1)
    {
      v5 = *v3;
      v6 = v3[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v5 + 56))(__p);
      std::vector<std::string>::push_back[abi:ne200100](v9, __p);
      if (v8 < 0)
      {
        break;
      }

      if (v6)
      {
        goto LABEL_6;
      }

LABEL_7:
      v3 += 2;
      if (v3 == v4)
      {
        goto LABEL_11;
      }
    }

    operator delete(__p[0]);
    if (!v6)
    {
      goto LABEL_7;
    }

LABEL_6:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    goto LABEL_7;
  }

LABEL_11:
  std::string::basic_string[abi:ne200100]<0>(__p, ", ");
  siri::intelligence::StringJoin(v9, __p, a2);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = v9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_254D608B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __p = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void siri::intelligence::VariableArray::AsQuotedString(siri::intelligence::VariableArray *this@<X0>, std::string *a2@<X8>)
{
  memset(v14, 0, sizeof(v14));
  v3 = *(this + 9);
  v4 = *(this + 10);
  if (v3 != v4)
  {
    while (1)
    {
      v5 = *v3;
      v6 = v3[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v5 + 64))(&__p);
      std::vector<std::string>::push_back[abi:ne200100](v14, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        break;
      }

      if (v6)
      {
        goto LABEL_6;
      }

LABEL_7:
      v3 += 2;
      if (v3 == v4)
      {
        goto LABEL_11;
      }
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v6)
    {
      goto LABEL_7;
    }

LABEL_6:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    goto LABEL_7;
  }

LABEL_11:
  std::string::basic_string[abi:ne200100]<0>(v10, ", ");
  siri::intelligence::StringJoin(v14, v10, &v12);
  v7 = std::string::insert(&v12, 0, "[");
  v8 = *&v7->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = std::string::append(&__p, "]");
  *a2 = *v9;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  __p.__r_.__value_.__r.__words[0] = v14;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_254D60A90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  __p = &a27;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void sub_254D60C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::VariableArray::~VariableArray(void **this)
{
  *this = &unk_28671C0F0;
  v2 = this + 9;
  std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](&v2);
  siri::intelligence::Variable::~Variable(this);
}

{
  *this = &unk_28671C0F0;
  v2 = this + 9;
  std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](&v2);
  siri::intelligence::Variable::~Variable(this);
  MEMORY[0x259C29D90]();
}

void **std::__split_buffer<std::shared_ptr<siri::intelligence::Variable>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::shared_ptr<siri::intelligence::Variable>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::shared_ptr<siri::intelligence::Variable>>::clear[abi:ne200100](uint64_t a1)
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

uint64_t std::vector<std::shared_ptr<siri::intelligence::Variable>>::__init_with_size[abi:ne200100]<std::shared_ptr<siri::intelligence::Variable>*,std::shared_ptr<siri::intelligence::Variable>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<siri::intelligence::Variable>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_254D60EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<siri::intelligence::Variable>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<siri::intelligence::ResponseBase>>>(a1, a2);
  }

  std::vector<std::shared_ptr<siri::intelligence::Variable>>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<siri::intelligence::Variable>>,std::shared_ptr<siri::intelligence::Variable>*,std::shared_ptr<siri::intelligence::Variable>*,std::shared_ptr<siri::intelligence::Variable>*>(uint64_t a1, void *a2, void *a3, void *a4)
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
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<siri::intelligence::Variable>>,std::shared_ptr<siri::intelligence::Variable>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<siri::intelligence::Variable>>,std::shared_ptr<siri::intelligence::Variable>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<siri::intelligence::ResponseBase>>,std::shared_ptr<siri::intelligence::ResponseBase>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::vector<std::shared_ptr<siri::intelligence::Variable>>::__assign_with_size[abi:ne200100]<std::shared_ptr<siri::intelligence::Variable>*,std::shared_ptr<siri::intelligence::Variable>*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    std::vector<std::shared_ptr<siri::intelligence::ResponseBase>>::__vdeallocate(a1);
    if (!(a4 >> 60))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 3;
      if (v9 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<std::shared_ptr<siri::intelligence::Variable>>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<std::shared_ptr<siri::intelligence::Variable>>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 4)
  {
    v13 = std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<siri::intelligence::Variable> *,std::shared_ptr<siri::intelligence::Variable> *,std::shared_ptr<siri::intelligence::Variable> *>(a2, a3, v8);
    for (i = a1[1]; i != v13; i -= 2)
    {
      v15 = *(i - 1);
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }
    }

    a1[1] = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<siri::intelligence::Variable> *,std::shared_ptr<siri::intelligence::Variable> *,std::shared_ptr<siri::intelligence::Variable> *>(a2, (a2 + v12), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<siri::intelligence::Variable>>,std::shared_ptr<siri::intelligence::Variable>*,std::shared_ptr<siri::intelligence::Variable>*,std::shared_ptr<siri::intelligence::Variable>*>(a1, (a2 + v12), a3, a1[1]);
  }
}

void *std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<siri::intelligence::Variable> *,std::shared_ptr<siri::intelligence::Variable> *,std::shared_ptr<siri::intelligence::Variable> *>(uint64_t *a1, uint64_t *a2, void *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v7 = *v5;
      v6 = v5[1];
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      v8 = a3[1];
      *a3 = v7;
      a3[1] = v6;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      v5 += 2;
      a3 += 2;
    }

    while (v5 != a2);
  }

  return a3;
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<siri::intelligence::Variable> *,std::shared_ptr<siri::intelligence::Variable> *,std::shared_ptr<siri::intelligence::Variable> *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
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

uint64_t YAML::convert<BOOL>::decode(YAML::Node *a1, char *a2)
{
  if (YAML::Node::Type(a1) != 2)
  {
    return 0;
  }

  if ((atomic_load_explicit(&_MergedGlobals_15, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_15))
  {
    std::string::basic_string[abi:ne200100]<0>(&qword_280AF4658, "y");
    std::string::basic_string[abi:ne200100]<0>(byte_280AF4670, "n");
    std::string::basic_string[abi:ne200100]<0>(byte_280AF4688, "yes");
    std::string::basic_string[abi:ne200100]<0>(byte_280AF46A0, "no");
    std::string::basic_string[abi:ne200100]<0>(byte_280AF46B8, "true");
    std::string::basic_string[abi:ne200100]<0>(byte_280AF46D0, "false");
    std::string::basic_string[abi:ne200100]<0>(byte_280AF46E8, "on");
    std::string::basic_string[abi:ne200100]<0>(byte_280AF4700, "off");
    __cxa_atexit(__cxx_global_array_dtor_3, 0, &dword_254C81000);
    __cxa_guard_release(&_MergedGlobals_15);
  }

  v4 = YAML::Node::Scalar(a1);
  v5 = *(v4 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = v4[1];
  }

  if (v5)
  {
    v6 = v4;
    {
      if (*(v6 + 23) >= 0)
      {
        v7 = v6;
      }

      else
      {
        v7 = *v6;
      }

      v8 = *v7 - 65;
      std::string::basic_string(&__p, v6, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &v35);
      if (v8 > 0x19)
      {
        v9 = 0;
      }

      {
        v9 = 1;
      }

      else
      {
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((v9 & 1) == 0)
        {
          return 0;
        }
      }

      else if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = 0;
  while (1)
  {
    v11 = &_MergedGlobals_15 + v10;
    v12 = YAML::Node::Scalar(a1);
    v13 = *(&_MergedGlobals_15 + v10 + 31);
    if (v13 >= 0)
    {
      v14 = v11[31];
    }

    else
    {
      v14 = *(v11 + 2);
    }

    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v16 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (v14 != size)
    {
      v19 = 0;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_36;
      }

LABEL_35:
      operator delete(__p.__r_.__value_.__l.__data_);
      goto LABEL_36;
    }

    if (v13 >= 0)
    {
      v17 = v11 + 8;
    }

    else
    {
      v17 = *(v11 + 1);
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v19 = memcmp(v17, p_p, v14) == 0;
    if (v16 < 0)
    {
      goto LABEL_35;
    }

LABEL_36:
    if (v19)
    {
      v33 = 1;
      goto LABEL_58;
    }

    v20 = YAML::Node::Scalar(a1);
    v21 = &_MergedGlobals_15 + v10;
    v22 = *(&_MergedGlobals_15 + v10 + 55);
    if (v22 >= 0)
    {
      v23 = *(&_MergedGlobals_15 + v10 + 55);
    }

    else
    {
      v23 = *(&_MergedGlobals_15 + v10 + 40);
    }

    v24 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v25 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v24 = __p.__r_.__value_.__l.__size_;
    }

    if (v23 != v24)
    {
      v31 = 0;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_53;
      }

LABEL_52:
      operator delete(__p.__r_.__value_.__l.__data_);
      goto LABEL_53;
    }

    v28 = *(v21 + 4);
    v26 = v21 + 32;
    v27 = v28;
    if (v22 >= 0)
    {
      v29 = v26;
    }

    else
    {
      v29 = v27;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = &__p;
    }

    else
    {
      v30 = __p.__r_.__value_.__r.__words[0];
    }

    v31 = memcmp(v29, v30, v23) == 0;
    if (v25 < 0)
    {
      goto LABEL_52;
    }

LABEL_53:
    if (v31)
    {
      break;
    }

    v10 += 48;
    if (v10 == 192)
    {
      return 0;
    }
  }

  v33 = 0;
LABEL_58:
  *a2 = v33;
  return 1;
}

void sub_254D61550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  do
  {
    v15 -= 48;
    siri::intelligence::TestParseError::~TestParseError(v15);
  }

  while (v15 != v14);
  __cxa_guard_abort(&_MergedGlobals_15);
  _Unwind_Resume(a1);
}

void anonymous namespace::tolower(std::string *this, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 8));
  }

  else
  {
    *this = *a2;
  }

  v3 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  v4 = v3;
  v5 = (this + v3);
  if (v4 >= 0)
  {
    v6 = this;
  }

  else
  {
    v5 = (this->__r_.__value_.__r.__words[0] + this->__r_.__value_.__l.__size_);
    v6 = this->__r_.__value_.__r.__words[0];
  }

  while (v6 != v5)
  {
    v7 = v6->__r_.__value_.__s.__data_[0];
    if ((v7 - 65) < 0x1A)
    {
      LOBYTE(v7) = v7 + 32;
    }

    v6->__r_.__value_.__s.__data_[0] = v7;
    v6 = (v6 + 1);
  }
}

uint64_t anonymous namespace::IsEntirely<BOOL (*)(char)>(uint64_t *a1, uint64_t (*a2)(void))
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80000000) == 0)
  {
    v3 = *(a1 + 23);
  }

  if (!v3)
  {
    return 1;
  }

  v6 = 0;
  v7 = v2 >> 63;
  do
  {
    if (v7)
    {
      v8 = *a1;
    }

    else
    {
      v8 = a1;
    }

    result = a2(*(v8 + v6));
    if ((result & 1) == 0)
    {
      break;
    }

    ++v6;
    v10 = *(a1 + 23);
    v7 = v10 >> 63;
    if ((v10 & 0x80000000) != 0)
    {
      v10 = a1[1];
    }
  }

  while (v6 < v10);
  return result;
}

void __cxx_global_array_dtor_3()
{
  v0 = &byte_280AF4717;
  v1 = -192;
  do
  {
    if (*v0 < 0)
    {
      operator delete(*(v0 - 23));
    }

    if (*(v0 - 24) < 0)
    {
      operator delete(*(v0 - 47));
    }

    v0 -= 48;
    v1 += 48;
  }

  while (v1);
}

siri::intelligence::Callbacks *siri::intelligence::Callbacks::Callbacks(siri::intelligence::Callbacks *this)
{
  *(this + 3) = 0;
  std::__function::__value_func<std::string ()(std::string const&,std::shared_ptr<siri::intelligence::VariableDictionary>)>::operator=[abi:ne200100](this);
  return this;
}

{
  *(this + 3) = 0;
  std::__function::__value_func<std::string ()(std::string const&,std::shared_ptr<siri::intelligence::VariableDictionary>)>::operator=[abi:ne200100](this);
  return this;
}

void *std::function<std::string ()(std::string const&,std::shared_ptr<siri::intelligence::VariableDictionary>)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::string ()(std::string const&,std::shared_ptr<siri::intelligence::VariableDictionary>)>::__value_func[abi:ne200100](v5, a2);
  std::__function::__value_func<std::string ()(std::string const&,std::shared_ptr<siri::intelligence::VariableDictionary>)>::swap[abi:ne200100](v5, a1);
  std::__function::__value_func<std::string ()(std::string const&,std::shared_ptr<siri::intelligence::VariableDictionary>)>::~__value_func[abi:ne200100](v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

void siri::intelligence::Callbacks::InvokeDirectInvocationBuilder(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = a3[1];
    v8 = *a3;
    v9 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = *(a1 + 24);
      if (!v6)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }
    }

    (*(*v6 + 48))(v6, a2, &v8);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  else
  {
    siri::intelligence::Log::Error("No callback registered for directInvocationBuilder function. Returning empty string.", a2);
    a4[23] = 0;
    *a4 = 0;
  }
}

void sub_254D61900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<std::string ()(std::string const&,std::shared_ptr<siri::intelligence::VariableDictionary>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__value_func<std::string ()(std::string const&,std::shared_ptr<siri::intelligence::VariableDictionary>)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
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

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_254D61C08(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

uint64_t std::__function::__value_func<std::string ()(std::string const&,std::shared_ptr<siri::intelligence::VariableDictionary>)>::operator=[abi:ne200100](uint64_t a1)
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

void sub_254D64248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  if (v76)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v76);
  }

  if (a39 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&a57, a58);
  if (a65 < 0)
  {
    operator delete(a60);
  }

  if (a72 < 0)
  {
    operator delete(a67);
  }

  *(v77 - 160) = &a73;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v77 - 160));
  if (a75 < 0)
  {
    operator delete(a74);
  }

  if (a76)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a76);
  }

  _Unwind_Resume(a1);
}

void siri::intelligence::Patternizer::UpdateCATMetadata(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  siri::intelligence::GetFormatForFilename(a1);
  siri::intelligence::Loader::LoadFile();
}

void sub_254D65470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, std::__shared_weak_count *a55)
{
  if (a55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a55);
  }

  _Unwind_Resume(a1);
}

uint64_t siri::intelligence::IsValidId(uint64_t a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 8);
  }

  if (!v1)
  {
    return 0;
  }

  if ((atomic_load_explicit(&_MergedGlobals_16, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_16))
  {
    std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&unk_280AF4728, "[a-zA-Z0-9_\\.-]*", 0);
  }

  v3 = *(a1 + 23);
  if ((v3 & 0x80u) == 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a1 + 8);
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  *__p = 0u;
  memset(v8, 0, sizeof(v8));
  v5 = std::regex_match[abi:ne200100]<std::__wrap_iter<char const*>,std::allocator<std::sub_match<std::__wrap_iter<char const*>>>,char,std::regex_traits<char>>(v4, &v4[v3], __p, &unk_280AF4728, 0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v5;
}

BOOL siri::intelligence::IsValidVariableName(uint64_t a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 8);
  }

  if (!v1)
  {
    return 0;
  }

  if ((atomic_load_explicit(&qword_280AF4720, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF4720))
  {
    std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&unk_280AF4768, "[a-zA-Z_][a-zA-Z0-9_-]*", 0);
  }

  v3 = *(a1 + 23);
  if ((v3 & 0x80u) == 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a1 + 8);
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  *__p = 0u;
  memset(v11, 0, 25);
  v5 = std::regex_match[abi:ne200100]<std::__wrap_iter<char const*>,std::allocator<std::sub_match<std::__wrap_iter<char const*>>>,char,std::regex_traits<char>>(v4, &v4[v3], __p, &unk_280AF4768, 0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  siri::intelligence::GetLiteralType(a1, __p);
  v6 = strlen(siri::intelligence::TYPE_UNKNOWN);
  if ((v11[7] & 0x8000000000000000) == 0)
  {
    if (v6 == v11[7])
    {
      return memcmp(__p, siri::intelligence::TYPE_UNKNOWN, v6) == 0;
    }

    return 0;
  }

  if (v6 == __p[1])
  {
    if (v6 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v9 = __p[0];
    v7 = memcmp(__p[0], siri::intelligence::TYPE_UNKNOWN, v6) == 0;
  }

  else
  {
    v7 = 0;
    v9 = __p[0];
  }

  operator delete(v9);
  return v7;
}

void siri::intelligence::GetLiteralType(std::string *a1@<X0>, _BYTE *a2@<X8>)
{
  siri::intelligence::StringTrim(" \t\n\r", a1, &v16);
  std::string::basic_string[abi:ne200100]<0>(&v15, "'");
  if (siri::intelligence::StringStartsWith(a1, &v15.__r_.__value_.__l.__data_))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "'");
    v4 = siri::intelligence::StringEndsWith(a1, __p);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = 0;
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
    if (v4)
    {
LABEL_15:
      v6 = siri::intelligence::TYPE_STRING;
      goto LABEL_16;
    }
  }

  else if (v4)
  {
    goto LABEL_15;
  }

  std::string::basic_string[abi:ne200100]<0>(&v15, "");
  if (siri::intelligence::StringStartsWith(a1, &v15.__r_.__value_.__l.__data_))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    v5 = siri::intelligence::StringEndsWith(a1, __p);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v5 = 0;
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
    if (v5)
    {
      goto LABEL_15;
    }
  }

  else if (v5)
  {
    goto LABEL_15;
  }

  siri::intelligence::StringToLower(&v16, &v15);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  v16 = v15;
  if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (HIBYTE(v15.__r_.__value_.__r.__words[2]) != 4)
    {
      if (HIBYTE(v15.__r_.__value_.__r.__words[2]) != 5)
      {
        goto LABEL_33;
      }

      v7 = &v16;
      goto LABEL_29;
    }

    data = v16.__r_.__value_.__l.__data_;
LABEL_44:
    if (data != 1702195828)
    {
      goto LABEL_33;
    }

LABEL_45:
    v6 = siri::intelligence::TYPE_BOOLEAN;
    goto LABEL_16;
  }

  if (v16.__r_.__value_.__l.__size_ == 4)
  {
    data = *v16.__r_.__value_.__l.__data_;
    goto LABEL_44;
  }

  if (v16.__r_.__value_.__l.__size_ != 5)
  {
    goto LABEL_33;
  }

  v7 = v16.__r_.__value_.__r.__words[0];
LABEL_29:
  v8 = v7->__r_.__value_.__l.__data_;
  v9 = v7->__r_.__value_.__s.__data_[4];
  if (v8 == 1936482662 && v9 == 101)
  {
    goto LABEL_45;
  }

LABEL_33:
  if (siri::intelligence::StringIsANumber(&v16))
  {
    v6 = siri::intelligence::TYPE_NUMBER;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v15, "[");
    v6 = &siri::intelligence::TYPE_UNKNOWN;
    if (siri::intelligence::StringStartsWith(a1, &v15.__r_.__value_.__l.__data_))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "]");
      v11 = siri::intelligence::StringEndsWith(a1, __p);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }

      if (v11)
      {
        v6 = siri::intelligence::TYPE_ARRAY;
      }
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

LABEL_16:
  std::string::basic_string[abi:ne200100]<0>(a2, *v6);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }
}

void sub_254D65DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t siri::intelligence::IsValidCompoundVariableName(uint64_t a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 8);
  }

  if (!v1)
  {
    return 0;
  }

  siri::intelligence::ParseVariableComponents(a1, &v8);
  v2 = v8;
  v3 = v9;
  if (v8 == v9)
  {
    v5 = 1;
  }

  else
  {
    do
    {
      IsValidVariableName = siri::intelligence::IsValidVariableName(v2);
      v5 = IsValidVariableName;
      v2 += 56;
    }

    while (v2 != v3 && IsValidVariableName);
  }

  v10 = &v8;
  std::vector<siri::intelligence::BehaviorArgument>::__destroy_vector::operator()[abi:ne200100](&v10);
  return v5;
}

void sub_254D65EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<siri::intelligence::BehaviorArgument>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void siri::intelligence::ParseVariableComponents(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  memset(&__str, 0, sizeof(__str));
  v3 = *(a1 + 23);
  v4 = *(a1 + 23) < 0;
  v5 = *(a1 + 8);
  if (*(a1 + 23) >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = *(a1 + 8);
  }

  if (v6)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      if (v4)
      {
        v10 = *(*a1 + v9);
        v11 = v10 == 46;
        if (v10 == 46 && v8 == 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v10 = *(a1 + v9);
        v11 = v10 == 46;
        if (v10 == 46 && v8 == 0)
        {
          goto LABEL_21;
        }

        v5 = v3;
      }

      if (v9 == v5 - 1)
      {
        if (!v11)
        {
          std::string::push_back(&__str, v10);
        }

LABEL_21:
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v20, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
        }

        else
        {
          v20 = __str;
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, "");
        v22 = 0;
        v14 = std::string::find(&__str, 91, 0);
        if (v14 != -1)
        {
          v15 = v14;
          std::string::basic_string(&v19, &__str, 0, v14, &v18);
          if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v20.__r_.__value_.__l.__data_);
          }

          v20 = v19;
          std::string::basic_string(&v18, &__str, v15 + 1, 0xFFFFFFFFFFFFFFFFLL, &v24);
          siri::intelligence::StringTrim("[] ", &v18, &v19);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p = v19;
          *(&v19.__r_.__value_.__s + 23) = 0;
          v19.__r_.__value_.__s.__data_[0] = 0;
          if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v18.__r_.__value_.__l.__data_);
          }

          v22 = 1;
        }

        std::vector<siri::intelligence::VariableComponent>::push_back[abi:ne200100](a2, &v20);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          *__str.__r_.__value_.__l.__data_ = 0;
          __str.__r_.__value_.__l.__size_ = 0;
        }

        else
        {
          __str.__r_.__value_.__s.__data_[0] = 0;
          *(&__str.__r_.__value_.__s + 23) = 0;
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v20.__r_.__value_.__l.__data_);
        }

        goto LABEL_46;
      }

      if (v10 == 91)
      {
        v16 = v8 + 1;
      }

      else
      {
        v16 = v8;
      }

      if (v10 == 93)
      {
        --v8;
      }

      else
      {
        v8 = v16;
      }

      std::string::push_back(&__str, v10);
LABEL_46:
      ++v9;
      v3 = *(a1 + 23);
      v4 = *(a1 + 23) < 0;
      v5 = *(a1 + 8);
      if (*(a1 + 23) >= 0)
      {
        v17 = *(a1 + 23);
      }

      else
      {
        v17 = *(a1 + 8);
      }

      if (v9 >= v17)
      {
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        return;
      }
    }
  }
}

void sub_254D6614C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  std::vector<siri::intelligence::BehaviorArgument>::__destroy_vector::operator()[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

void sub_254D661A8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x254D66184);
}

BOOL siri::intelligence::IsValidTypeName(uint64_t a1)
{
  if (siri::intelligence::IsPrimitiveType(a1))
  {
    return 1;
  }

  v3 = strlen(siri::intelligence::TYPE_ARRAY[0]);
  v4 = v3;
  v5 = *(a1 + 23);
  if (v5 < 0)
  {
    if (v3 != *(a1 + 8))
    {
      goto LABEL_10;
    }

    if (v3 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v6 = *a1;
  }

  else
  {
    v6 = a1;
    if (v4 != v5)
    {
      goto LABEL_10;
    }
  }

  if (!memcmp(v6, siri::intelligence::TYPE_ARRAY[0], v4))
  {
    return 1;
  }

LABEL_10:
  v7 = strlen(siri::intelligence::TYPE_DICTIONARY[0]);
  v8 = v7;
  if ((v5 & 0x80000000) == 0)
  {
    v9 = a1;
    if (v8 != v5)
    {
      goto LABEL_17;
    }

LABEL_16:
    if (memcmp(v9, siri::intelligence::TYPE_DICTIONARY[0], v8))
    {
      goto LABEL_17;
    }

    return 1;
  }

  if (v7 == *(a1 + 8))
  {
    if (v7 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v9 = *a1;
    goto LABEL_16;
  }

LABEL_17:

  return siri::intelligence::DialogTypes::IsDialogType(a1);
}

BOOL siri::intelligence::IsPrimitiveType(char *a1)
{
  std::string::basic_string[abi:ne200100]<0>(v8, siri::intelligence::TYPE_STRING[0]);
  if (siri::intelligence::IsEquivalentType(a1, v8))
  {
    IsEquivalentType = 1;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v6, siri::intelligence::TYPE_NUMBER[0]);
    if (siri::intelligence::IsEquivalentType(a1, v6))
    {
      IsEquivalentType = 1;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, siri::intelligence::TYPE_BOOLEAN[0]);
      IsEquivalentType = siri::intelligence::IsEquivalentType(a1, __p);
      if (v5 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (v7 < 0)
    {
      operator delete(v6[0]);
    }
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  return IsEquivalentType;
}

void sub_254D66398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

BOOL siri::intelligence::IsEquivalentType(char *a1, const void **a2)
{
  v4 = siri::intelligence::TYPE_STRING[0];
  v5 = strlen(siri::intelligence::TYPE_STRING[0]);
  v6 = v5;
  v7 = *(a2 + 23);
  if ((v7 & 0x8000000000000000) != 0)
  {
    if (v5 != a2[1])
    {
      goto LABEL_8;
    }

    if (v5 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v8 = *a2;
  }

  else
  {
    v8 = a2;
    if (v6 != v7)
    {
      goto LABEL_8;
    }
  }

  if (!memcmp(v8, siri::intelligence::TYPE_STRING[0], v6))
  {
    v24 = a1[23];
    if (v24 < 0)
    {
      v37 = *(a1 + 1);
      if (v6 == v37 && !memcmp(*a1, v4, v6))
      {
        goto LABEL_101;
      }

      if (v37 != 13)
      {
        goto LABEL_90;
      }

      a1 = *a1;
    }

    else
    {
      if (v6 == v24 && !memcmp(a1, v4, v6))
      {
        goto LABEL_101;
      }

      if (v24 != 13)
      {
        goto LABEL_90;
      }
    }

    v38 = *(a1 + 5);
    v39 = *a1 == 0x532E676F6C616964;
    v40 = 0x676E697274532E67;
    goto LABEL_84;
  }

LABEL_8:
  v9 = siri::intelligence::TYPE_NUMBER[0];
  v10 = strlen(siri::intelligence::TYPE_NUMBER[0]);
  v11 = v10;
  if ((v7 & 0x80000000) != 0)
  {
    if (v10 != a2[1])
    {
      goto LABEL_15;
    }

    if (v10 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v12 = *a2;
  }

  else
  {
    v12 = a2;
    if (v11 != v7)
    {
      goto LABEL_15;
    }
  }

  if (!memcmp(v12, siri::intelligence::TYPE_NUMBER[0], v11))
  {
    v32 = a1[23];
    if (v32 < 0)
    {
      v41 = *(a1 + 1);
      if (v11 == v41 && !memcmp(*a1, v9, v11))
      {
        goto LABEL_101;
      }

      if (v41 != 13)
      {
        goto LABEL_90;
      }

      a1 = *a1;
    }

    else
    {
      if (v11 == v32 && !memcmp(a1, v9, v11))
      {
        goto LABEL_101;
      }

      if (v32 != 13)
      {
        goto LABEL_90;
      }
    }

    v38 = *(a1 + 5);
    v39 = *a1 == 0x4E2E676F6C616964;
    v40 = 0x7265626D754E2E67;
    goto LABEL_84;
  }

LABEL_15:
  v13 = siri::intelligence::TYPE_BOOLEAN[0];
  v14 = strlen(siri::intelligence::TYPE_BOOLEAN[0]);
  v15 = v14;
  if ((v7 & 0x80000000) != 0)
  {
    if (v14 != a2[1])
    {
      goto LABEL_22;
    }

    if (v14 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v16 = *a2;
    goto LABEL_21;
  }

  v16 = a2;
  if (v15 == v7)
  {
LABEL_21:
    if (memcmp(v16, siri::intelligence::TYPE_BOOLEAN[0], v15))
    {
      goto LABEL_22;
    }

    v33 = a1[23];
    if (v33 < 0)
    {
      v42 = *(a1 + 1);
      if (v15 == v42 && !memcmp(*a1, v13, v15))
      {
        goto LABEL_101;
      }

      if (v42 != 14)
      {
        goto LABEL_90;
      }

      a1 = *a1;
    }

    else
    {
      if (v15 == v33 && !memcmp(a1, v13, v15))
      {
        goto LABEL_101;
      }

      if (v33 != 14)
      {
LABEL_90:
        LOBYTE(v36) = 0;
        return v36 & 1;
      }
    }

    v38 = *(a1 + 6);
    v39 = *a1 == 0x422E676F6C616964;
    v40 = 0x6E61656C6F6F422ELL;
LABEL_84:
    v31 = v39 && v38 == v40;
LABEL_87:
    LOBYTE(v36) = v31;
    return v36 & 1;
  }

LABEL_22:
  v17 = siri::intelligence::TYPE_ARRAY[0];
  v18 = strlen(siri::intelligence::TYPE_ARRAY[0]);
  v19 = v18;
  if ((v7 & 0x80000000) != 0)
  {
    if (v18 != a2[1])
    {
      goto LABEL_29;
    }

    if (v18 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v20 = *a2;
  }

  else
  {
    v20 = a2;
    if (v19 != v7)
    {
LABEL_29:
      v21 = strlen(siri::intelligence::TYPE_DICTIONARY[0]);
      v22 = v21;
      if ((v7 & 0x80000000) != 0)
      {
        if (v21 != a2[1])
        {
          goto LABEL_41;
        }

        if (v21 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        v23 = *a2;
      }

      else
      {
        v23 = a2;
        if (v22 != v7)
        {
LABEL_41:
          v25 = a1[23];
          if (v25 >= 0)
          {
            v26 = a1[23];
          }

          else
          {
            v26 = *(a1 + 1);
          }

          v27 = a2[1];
          if ((v7 & 0x80000000) == 0)
          {
            v27 = v7;
          }

          if (v26 == v27)
          {
            if (v25 >= 0)
            {
              v28 = a1;
            }

            else
            {
              v28 = *a1;
            }

            v29 = *a2;
            if ((v7 & 0x80000000) == 0)
            {
              v30 = a2;
            }

            else
            {
              v30 = *a2;
            }

            v31 = memcmp(v28, v30, v26) == 0;
            goto LABEL_87;
          }

          goto LABEL_90;
        }
      }

      if (!memcmp(v23, siri::intelligence::TYPE_DICTIONARY[0], v22))
      {
        if (siri::intelligence::DialogTypes::IsDialogType(a1))
        {
          v36 = !siri::intelligence::DialogTypes::IsPrimitiveDialogType(a1);
        }

        else
        {
          LOBYTE(v36) = 0;
        }

        v43 = strlen(siri::intelligence::TYPE_DICTIONARY[0]);
        v44 = a1[23];
        if (v44 < 0)
        {
          if (v43 != *(a1 + 1))
          {
            return v36 & 1;
          }

          if (v43 == -1)
          {
            std::string::__throw_out_of_range[abi:ne200100]();
          }

          a1 = *a1;
        }

        else if (v43 != v44)
        {
          return v36 & 1;
        }

        LOBYTE(v36) = (memcmp(a1, siri::intelligence::TYPE_DICTIONARY[0], v43) == 0) | v36;
        return v36 & 1;
      }

      goto LABEL_41;
    }
  }

  if (memcmp(v20, siri::intelligence::TYPE_ARRAY[0], v19))
  {
    goto LABEL_29;
  }

  v34 = a1[23];
  if ((v34 & 0x8000000000000000) == 0)
  {
    v35 = a1;
    if (v19 != v34)
    {
      goto LABEL_98;
    }

LABEL_97:
    if (memcmp(v35, v17, v19))
    {
      goto LABEL_98;
    }

LABEL_101:
    LOBYTE(v36) = 1;
    return v36 & 1;
  }

  if (v19 == *(a1 + 1))
  {
    v35 = *a1;
    goto LABEL_97;
  }

LABEL_98:

  return siri::intelligence::StringEndsWith(a1, siri::intelligence::ARRAY_SUFFIX);
}

void siri::intelligence::GetVariableNames(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  siri::intelligence::ParseVariableComponents(a1, v11);
  if (v11[0] == v11[1])
  {
    goto LABEL_15;
  }

  siri::intelligence::GetLiteralType(v11[0], &__s1);
  v3 = strlen(siri::intelligence::TYPE_UNKNOWN);
  if ((v10 & 0x8000000000000000) == 0)
  {
    if (v3 != v10 || memcmp(&__s1, siri::intelligence::TYPE_UNKNOWN, v3))
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  if (v3 != v9)
  {
    operator delete(__s1);
    goto LABEL_15;
  }

  if (v3 == -1)
  {
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  v4 = __s1;
  v5 = memcmp(__s1, siri::intelligence::TYPE_UNKNOWN, v3);
  operator delete(v4);
  if (!v5)
  {
LABEL_9:
    std::vector<std::string>::push_back[abi:ne200100](a2, v11[0]);
    if (*(v11[0] + 48) == 1)
    {
      siri::intelligence::GetVariableNames(&__s1, v11[0] + 24);
      v6 = __s1;
      v7 = v9;
      while (v6 != v7)
      {
        std::vector<std::string>::push_back[abi:ne200100](a2, v6);
        v6 = (v6 + 24);
      }

      p_s1 = &__s1;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_s1);
    }
  }

LABEL_15:
  __s1 = v11;
  std::vector<siri::intelligence::BehaviorArgument>::__destroy_vector::operator()[abi:ne200100](&__s1);
}

void sub_254D66A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *(v5 - 40) = va;
  std::vector<siri::intelligence::BehaviorArgument>::__destroy_vector::operator()[abi:ne200100]((v5 - 40));
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t YAML::ScanVerbatimTag@<X0>(YAML *this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  YAML::Stream::get(this);
  v5 = YAML::Stream::operator BOOL(this);
  if (!v5)
  {
LABEL_16:
    exception = __cxa_allocate_exception(0x38uLL);
    v11 = *(this + 4);
    v13 = *(this + 1);
    v14 = v11;
    std::string::basic_string[abi:ne200100]<0>(&__p, "end of verbatim tag not found");
    YAML::Exception::Exception(exception, &v13, &__p);
    *exception = &unk_28671C278;
  }

  while (!*(this + 8) || *(*(*(this + 4) + ((*(this + 7) >> 9) & 0x7FFFFFFFFFFFF8)) + (*(this + 7) & 0xFFFLL)) != 62)
  {
    v6 = YAML::Exp::URI(v5);
    __p.__r_.__value_.__r.__words[0] = 0;
    __p.__r_.__value_.__l.__size_ = this;
    if (*(this + 8) || YAML::Stream::_ReadAheadTo(this, 0))
    {
      v7 = YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(v6, &__p);
      if (v7 >= 1)
      {
        YAML::Stream::get(this, v7, &__p);
        v8 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        v9 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
        std::string::append(a2, v8, v9);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v5 = YAML::Stream::operator BOOL(this);
        if (v5)
        {
          continue;
        }
      }
    }

    goto LABEL_16;
  }

  return YAML::Stream::get(this);
}

void sub_254D66BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  _Unwind_Resume(exception_object);
}

void *YAML::Exp::URI(YAML::Exp *this)
{
  {
    if (v2)
    {
      v3 = YAML::Exp::Word(v2);
      std::string::basic_string[abi:ne200100]<0>(__p, "#;/?:@&=+$,_.!~*'()[]");
      YAML::RegEx::RegEx(&v17, __p, 3);
      v4 = YAML::operator|(v3, &v17, &v19);
      v8 = 1;
      v9 = 37;
      memset(v10, 0, sizeof(v10));
      v5 = YAML::Exp::Hex(v4);
      v6 = YAML::operator+(&v8, v5, &v11);
      v7 = YAML::Exp::Hex(v6);
      YAML::operator+(&v11, v7, &v13);
      YAML::operator|(&v19, &v13, &YAML::Exp::URI(void)::e);
      v21 = &v14;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v21);
      v21 = &v12;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v21);
      v21 = v10;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v21);
      v13 = &v20;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v13);
      v13 = &v18;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v13);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }

      __cxa_atexit(YAML::RegEx::~RegEx, &YAML::Exp::URI(void)::e, &dword_254C81000);
    }
  }

  return &YAML::Exp::URI(void)::e;
}

void sub_254D66DF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  *(v28 - 40) = v27 + 8;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v28 - 40));
  *(v28 - 40) = &a14;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v28 - 40));
  *(v28 - 40) = v26;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v28 - 40));
  a17 = v28 - 64;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&a17);
  a17 = v28 - 96;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&a17);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t YAML::ScanTagHandle@<X0>(YAML *this@<X0>, YAML::Stream *a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  *a2 = 1;
  v16 = 0;
  v17 = 0;
  result = YAML::Stream::operator BOOL(this);
  if (!result)
  {
    return result;
  }

  while (!*(this + 8))
  {
    if ((*a2 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_7:
    v8 = YAML::Exp::Word(result);
    __p.__r_.__value_.__r.__words[0] = 0;
    __p.__r_.__value_.__l.__size_ = this;
    if (*(this + 8) || (result = YAML::Stream::_ReadAheadTo(this, 0), (result)) && (result = YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(v8, &__p), v9 = result, result >= 1))
    {
      if (*a2)
      {
        goto LABEL_16;
      }
    }

    else
    {
      *a2 = 0;
      v10 = *(this + 4);
      v16 = *(this + 1);
      v17 = v10;
    }

LABEL_13:
    v11 = YAML::Exp::Tag(result);
    __p.__r_.__value_.__r.__words[0] = 0;
    __p.__r_.__value_.__l.__size_ = this;
    if (!*(this + 8))
    {
      result = YAML::Stream::_ReadAheadTo(this, 0);
      if ((result & 1) == 0)
      {
        return result;
      }
    }

    result = YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(v11, &__p);
    v9 = result;
    if (result < 1)
    {
      return result;
    }

LABEL_16:
    YAML::Stream::get(this, v9, &__p);
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

    std::string::append(a3, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    result = YAML::Stream::operator BOOL(this);
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  if (*(*(*(this + 4) + ((*(this + 7) >> 9) & 0x7FFFFFFFFFFFF8)) + (*(this + 7) & 0xFFFLL)) != 33)
  {
    if (!*a2)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if ((*a2 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    std::string::basic_string[abi:ne200100]<0>(&__p, "illegal character found while scanning tag handle");
    YAML::Exception::Exception(exception, &v16, &__p);
    *exception = &unk_28671C278;
  }

  return result;
}

void sub_254D670A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      if (*(v15 + 23) < 0)
      {
        operator delete(*v15);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void *YAML::Exp::Word(YAML::Exp *this)
{
  {
    if (v2)
    {
      v3 = YAML::Exp::AlphaNumeric(v2);
      v4 = 1;
      v5 = 45;
      memset(v6, 0, sizeof(v6));
      YAML::operator|(v3, &v4, &YAML::Exp::Word(void)::e);
      v7 = v6;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v7);
      __cxa_atexit(YAML::RegEx::~RegEx, &YAML::Exp::Word(void)::e, &dword_254C81000);
    }
  }

  return &YAML::Exp::Word(void)::e;
}

void sub_254D671CC(_Unwind_Exception *a1)
{
  *(v2 - 24) = v1;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v2 - 24));
  _Unwind_Resume(a1);
}

void *YAML::Exp::Tag(YAML::Exp *this)
{
  {
    if (v2)
    {
      v3 = YAML::Exp::Word(v2);
      std::string::basic_string[abi:ne200100]<0>(__p, "#;/?:@&=+$_.~*'()");
      YAML::RegEx::RegEx(&v17, __p, 3);
      v4 = YAML::operator|(v3, &v17, &v19);
      v8 = 1;
      v9 = 37;
      memset(v10, 0, sizeof(v10));
      v5 = YAML::Exp::Hex(v4);
      v6 = YAML::operator+(&v8, v5, &v11);
      v7 = YAML::Exp::Hex(v6);
      YAML::operator+(&v11, v7, &v13);
      YAML::operator|(&v19, &v13, &YAML::Exp::Tag(void)::e);
      v21 = &v14;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v21);
      v21 = &v12;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v21);
      v21 = v10;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v21);
      v13 = &v20;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v13);
      v13 = &v18;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v13);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }

      __cxa_atexit(YAML::RegEx::~RegEx, &YAML::Exp::Tag(void)::e, &dword_254C81000);
    }
  }

  return &YAML::Exp::Tag(void)::e;
}

void sub_254D67380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  *(v28 - 40) = v27 + 8;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v28 - 40));
  *(v28 - 40) = &a14;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v28 - 40));
  *(v28 - 40) = v26;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v28 - 40));
  a17 = v28 - 64;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&a17);
  a17 = v28 - 96;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&a17);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t YAML::ScanTagSuffix@<X0>(YAML *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = YAML::Stream::operator BOOL(this);
  if (result)
  {
    do
    {
      v6 = YAML::Exp::Tag(result);
      __p.__r_.__value_.__r.__words[0] = 0;
      __p.__r_.__value_.__l.__size_ = this;
      if (!*(this + 8))
      {
        result = YAML::Stream::_ReadAheadTo(this, 0);
        if ((result & 1) == 0)
        {
          break;
        }
      }

      result = YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(v6, &__p);
      if (result < 1)
      {
        break;
      }

      YAML::Stream::get(this, result, &__p);
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

      std::string::append(a2, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      result = YAML::Stream::operator BOOL(this);
    }

    while ((result & 1) != 0);
  }

  v9 = *(a2 + 23);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a2 + 8);
  }

  if (!v9)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v11 = *(this + 4);
    v12 = *(this + 1);
    v13 = v11;
    std::string::basic_string[abi:ne200100]<0>(&__p, "tag handle with no suffix");
    YAML::Exception::Exception(exception, &v12, &__p);
    *exception = &unk_28671C278;
  }

  return result;
}

void sub_254D67594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      if (*(v17 + 23) < 0)
      {
        operator delete(*v17);
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

void *YAML::Exp::Hex(YAML::Exp *this)
{
  {
    if (v2)
    {
      v3 = YAML::Exp::Digit(v2);
      v6 = 2;
      v7 = 17985;
      memset(v8, 0, sizeof(v8));
      YAML::operator|(v3, &v6, &v9);
      LODWORD(v4) = 2;
      WORD2(v4) = 26209;
      memset(v5, 0, sizeof(v5));
      YAML::operator|(&v9, &v4, &YAML::Exp::Hex(void)::e);
      v11 = v5;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v11);
      v4 = &v10;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v4);
      v4 = v8;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v4);
      __cxa_atexit(YAML::RegEx::~RegEx, &YAML::Exp::Hex(void)::e, &dword_254C81000);
    }
  }

  return &YAML::Exp::Hex(void)::e;
}

void sub_254D67714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  *(v12 - 40) = v11;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v12 - 40));
  a10 = (v10 + 8);
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void *YAML::Exp::AlphaNumeric(YAML::Exp *this)
{
  {
    if (v2)
    {
      v3 = YAML::Exp::Alpha(v2);
      v4 = YAML::Exp::Digit(v3);
      YAML::operator|(v3, v4, &YAML::Exp::AlphaNumeric(void)::e);
      __cxa_atexit(YAML::RegEx::~RegEx, &YAML::Exp::AlphaNumeric(void)::e, &dword_254C81000);
    }
  }

  return &YAML::Exp::AlphaNumeric(void)::e;
}

void *YAML::Exp::Alpha(YAML::Exp *this)
{
  {
    v4 = 2;
    v5 = 31329;
    memset(v6, 0, sizeof(v6));
    LODWORD(v2) = 2;
    WORD2(v2) = 23105;
    memset(v3, 0, sizeof(v3));
    YAML::operator|(&v4, &v2, &YAML::Exp::Alpha(void)::e);
    v7 = v3;
    std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v7);
    v2 = v6;
    std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v2);
    __cxa_atexit(YAML::RegEx::~RegEx, &YAML::Exp::Alpha(void)::e, &dword_254C81000);
  }

  return &YAML::Exp::Alpha(void)::e;
}

void sub_254D67904(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v3 - 40) = v2;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v3 - 40));
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

double YAML::ostream_wrapper::ostream_wrapper(YAML::ostream_wrapper *this)
{
  v1 = std::vector<char>::vector[abi:ne200100](this, 1);
  *(v1 + 56) = 0;
  result = 0.0;
  *(v1 + 5) = 0u;
  *(v1 + 3) = 0u;
  return result;
}

{
  v1 = std::vector<char>::vector[abi:ne200100](this, 1);
  *(v1 + 56) = 0;
  result = 0.0;
  *(v1 + 5) = 0u;
  *(v1 + 3) = 0u;
  return result;
}

uint64_t YAML::ostream_wrapper::ostream_wrapper(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = a2;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 32) = 0;
  *(result + 56) = 0;
  return result;
}

{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = a2;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 32) = 0;
  *(result + 56) = 0;
  return result;
}

void YAML::ostream_wrapper::~ostream_wrapper(YAML::ostream_wrapper *this)
{
  v2 = *this;
  if (v2)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

{
  v2 = *this;
  if (v2)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

void YAML::ostream_wrapper::write(std::vector<char> *this, unsigned __int8 *a2)
{
  if (this[1].__begin_)
  {
    if ((a2[23] & 0x80u) == 0)
    {
      v5 = a2[23];
    }

    else
    {
      v4 = *a2;
      v5 = *(a2 + 1);
    }

    std::ostream::write();
  }

  else
  {
    begin = this->__begin_;
    v7 = this->__end_ - this->__begin_;
    v8 = a2[23];
    v9 = v8;
    v10 = *(a2 + 1);
    if ((v8 & 0x80u) == 0)
    {
      v11 = a2[23];
    }

    else
    {
      v11 = *(a2 + 1);
    }

    v12 = &this[1].__end_[v11 + 1];
    if (v12 > v7)
    {
      std::vector<char>::__append(this, &v12[-v7]);
      v8 = a2[23];
      v10 = *(a2 + 1);
      begin = this->__begin_;
      v9 = a2[23];
    }

    if ((v9 & 0x80u) == 0)
    {
      v13 = v8;
    }

    else
    {
      v13 = v10;
    }

    if (v13)
    {
      if ((v9 & 0x80u) == 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      memmove(&this[1].__end_[begin], v14, v13);
    }
  }

  v15 = a2[23];
  v16 = *(a2 + 1);
  if ((v15 & 0x80000000) == 0)
  {
    v16 = a2[23];
  }

  if (v16)
  {
    v17 = 0;
    v18 = v15 >> 63;
    v19 = this[2].__begin_;
    v20 = this[1].__end_ + 1;
    do
    {
      if (v18)
      {
        v21 = *a2;
      }

      else
      {
        v21 = a2;
      }

      v22 = v21[v17];
      this[1].__end_ = v20;
      this[2].__begin_ = ++v19;
      if (v22 == 10)
      {
        v19 = 0;
        ++this[1].__end_cap_.__value_;
        this[2].__begin_ = 0;
        LOBYTE(this[2].__end_) = 0;
      }

      ++v17;
      v23 = a2[23];
      v18 = v23 >> 63;
      if ((v23 & 0x80000000) != 0)
      {
        v23 = *(a2 + 1);
      }

      ++v20;
    }

    while (v17 < v23);
  }
}

uint64_t YAML::ostream_wrapper::update_pos(uint64_t this, int a2)
{
  ++*(this + 32);
  ++*(this + 48);
  if (a2 == 10)
  {
    ++*(this + 40);
    *(this + 48) = 0;
    *(this + 56) = 0;
  }

  return this;
}

void YAML::ostream_wrapper::write(std::vector<char> *this, const char *__src, size_t __len)
{
  v3 = __len;
  if (this[1].__begin_)
  {
    std::ostream::write();
    if (!v3)
    {
      return;
    }

    goto LABEL_8;
  }

  begin = this->__begin_;
  v7 = this->__end_ - this->__begin_;
  v8 = &this[1].__end_[__len + 1];
  if (v8 > v7)
  {
    std::vector<char>::__append(this, &v8[-v7]);
    begin = this->__begin_;
  }

  if (v3)
  {
    memmove(&this[1].__end_[begin], __src, v3);
LABEL_8:
    v9 = this[2].__begin_;
    v10 = this[1].__end_ + 1;
    do
    {
      v11 = *__src++;
      this[1].__end_ = v10;
      this[2].__begin_ = ++v9;
      if (v11 == 10)
      {
        v9 = 0;
        ++this[1].__end_cap_.__value_;
        this[2].__begin_ = 0;
        LOBYTE(this[2].__end_) = 0;
      }

      ++v10;
      --v3;
    }

    while (v3);
  }
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

void sub_254D67CE8(_Unwind_Exception *exception_object)
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

  std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
}

void std::vector<char>::__append(std::vector<char> *this, std::vector<char>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (value - end >= __n)
  {
    if (__n)
    {
      bzero(this->__end_, __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = (end - this->__begin_);
    v8 = &v7[__n];
    if (&v7[__n] < 0)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
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

    v11 = end - this->__begin_;
    bzero(v7, __n);
    memcpy(&v7[begin - end], begin, v11);
    this->__begin_ = &v7[begin - end];
    this->__end_ = &v7[__n];
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

std::string *siri::intelligence::TestResult::TestResult(std::string *this, const siri::intelligence::TestCase *a2)
{
  result = siri::intelligence::TestCase::TestCase(this, a2);
  LODWORD(result[6].__r_.__value_.__r.__words[1]) = 0;
  result[7].__r_.__value_.__r.__words[0] = 0;
  result[7].__r_.__value_.__l.__size_ = 0;
  result[6].__r_.__value_.__r.__words[2] = 0;
  return result;
}

{
  result = siri::intelligence::TestCase::TestCase(this, a2);
  LODWORD(result[6].__r_.__value_.__r.__words[1]) = 0;
  result[7].__r_.__value_.__r.__words[0] = 0;
  result[7].__r_.__value_.__l.__size_ = 0;
  result[6].__r_.__value_.__r.__words[2] = 0;
  return result;
}

_BYTE *siri::intelligence::TestResult::GetStatusAsString@<X0>(siri::intelligence::TestResult *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(this + 38);
  if (v4 > 3)
  {
    v5 = "???";
  }

  else
  {
    v5 = off_2797B2FB0[v4];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v5);
}

std::__split_buffer<std::string>::pointer siri::intelligence::TestResult::AddNote(std::__split_buffer<std::string>::pointer result, uint64_t a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (v2)
  {
    return std::vector<std::string>::push_back[abi:ne200100](&result[6].__r_.__value_.__r.__words[2], a2);
  }

  return result;
}

uint64_t siri::intelligence::TestResult::GetNotes@<X0>(siri::intelligence::TestResult *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a2, *(this + 20), *(this + 21), 0xAAAAAAAAAAAAAAABLL * ((*(this + 21) - *(this + 20)) >> 3));
}

void siri::intelligence::TestResult::GetDescriptions(siri::intelligence::TestResult *this@<X0>, void *a2@<X8>)
{
  siri::intelligence::TestCase::TestCase(&v46, this);
  siri::intelligence::TestResult::GetStatusAsString(this, v44);
  if (v53 == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v42, "");
  }

  else
  {
    std::to_string(&v40, v53);
    v4 = std::string::insert(&v40, 0, " (");
    v5 = *&v4->__r_.__value_.__l.__data_;
    v41.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v41.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    v6 = std::string::append(&v41, "x)");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v43 = v6->__r_.__value_.__r.__words[2];
    *v42 = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  memset(&v41, 0, sizeof(v41));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v41, *(this + 20), *(this + 21), 0xAAAAAAAAAAAAAAABLL * ((*(this + 21) - *(this + 20)) >> 3));
  v8 = *&v41.__r_.__value_.__l.__data_;
  v40.__r_.__value_.__r.__words[0] = &v41;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v40);
  if (v8 == *(&v8 + 1))
  {
    std::operator+<char>();
    v24 = std::string::append(&v38, ": ");
    v25 = *&v24->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    siri::intelligence::TestCase::ToString(&v46, &v37);
    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &v37;
    }

    else
    {
      v26 = v37.__r_.__value_.__r.__words[0];
    }

    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v37.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v37.__r_.__value_.__l.__size_;
    }

    v28 = std::string::append(&__p, v26, size);
    v29 = *&v28->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    if (v43 >= 0)
    {
      v30 = v42;
    }

    else
    {
      v30 = v42[0];
    }

    if (v43 >= 0)
    {
      v31 = HIBYTE(v43);
    }

    else
    {
      v31 = v42[1];
    }

    v32 = std::string::append(&v40, v30, v31);
    v33 = *&v32->__r_.__value_.__l.__data_;
    v41.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
    *&v41.__r_.__value_.__l.__data_ = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](a2, &v41);
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    memset(&v41, 0, sizeof(v41));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v41, *(this + 20), *(this + 21), 0xAAAAAAAAAAAAAAABLL * ((*(this + 21) - *(this + 20)) >> 3));
    v10 = v41.__r_.__value_.__l.__size_;
    for (i = v41.__r_.__value_.__r.__words[0]; i != v10; i += 24)
    {
      if (*(i + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v40, *i, *(i + 8));
      }

      else
      {
        v11 = *i;
        v40.__r_.__value_.__r.__words[2] = *(i + 16);
        *&v40.__r_.__value_.__l.__data_ = v11;
      }

      std::operator+<char>();
      v12 = std::string::append(&v35, ": ");
      v13 = *&v12->__r_.__value_.__l.__data_;
      v36.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
      *&v36.__r_.__value_.__l.__data_ = v13;
      v12->__r_.__value_.__l.__size_ = 0;
      v12->__r_.__value_.__r.__words[2] = 0;
      v12->__r_.__value_.__r.__words[0] = 0;
      siri::intelligence::TestCase::ToString(&v46, &v34);
      if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v34;
      }

      else
      {
        v14 = v34.__r_.__value_.__r.__words[0];
      }

      if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v15 = v34.__r_.__value_.__l.__size_;
      }

      v16 = std::string::append(&v36, v14, v15);
      v17 = *&v16->__r_.__value_.__l.__data_;
      v37.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
      *&v37.__r_.__value_.__l.__data_ = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      v18 = std::string::append(&v37, ": ");
      v19 = *&v18->__r_.__value_.__l.__data_;
      v38.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
      *&v38.__r_.__value_.__l.__data_ = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = &v40;
      }

      else
      {
        v20 = v40.__r_.__value_.__r.__words[0];
      }

      if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v21 = v40.__r_.__value_.__l.__size_;
      }

      v22 = std::string::append(&v38, v20, v21);
      v23 = *&v22->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v23;
      v22->__r_.__value_.__l.__size_ = 0;
      v22->__r_.__value_.__r.__words[2] = 0;
      v22->__r_.__value_.__r.__words[0] = 0;
      std::vector<std::string>::push_back[abi:ne200100](a2, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v36.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }
    }

    v40.__r_.__value_.__r.__words[0] = &v41;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v40);
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42[0]);
  }

  if (v45 < 0)
  {
    operator delete(v44[0]);
  }

  v44[0] = &v55;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v44);
  v44[0] = &v54;
  std::vector<protobuf::FlowTest_Step>::__destroy_vector::operator()[abi:ne200100](v44);
  if (v52 < 0)
  {
    operator delete(v51);
  }

  if (v50 < 0)
  {
    operator delete(v49);
  }

  if (v48 < 0)
  {
    operator delete(v47);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }
}

void sub_254D68434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  if (a52 < 0)
  {
    operator delete(__p);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a40);
  if (a59 < 0)
  {
    operator delete(a54);
  }

  if (*(v59 - 217) < 0)
  {
    operator delete(*(v59 - 240));
  }

  siri::intelligence::TestCase::~TestCase((v59 - 216));
  _Unwind_Resume(a1);
}

void *siri::intelligence::TestResults::TestResults(void *this, const siri::intelligence::TestSuite *a2)
{
  *this = a2;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = a2;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

std::string::size_type *siri::intelligence::TestResults::AddResult(siri::intelligence::TestResults *this, const siri::intelligence::TestResult *a2)
{
  v3 = *(this + 2);
  if (v3 >= *(this + 3))
  {
    result = std::vector<siri::intelligence::TestResult>::__emplace_back_slow_path<siri::intelligence::TestResult const&>(this + 1, a2);
  }

  else
  {
    std::allocator_traits<std::allocator<siri::intelligence::TestResult>>::construct[abi:ne200100]<siri::intelligence::TestResult,siri::intelligence::TestResult const&,0>(this + 8, v3, a2);
    result = &v3[7].__r_.__value_.__r.__words[2];
    *(this + 2) = v3 + 184;
  }

  *(this + 2) = result;
  return result;
}

uint64_t siri::intelligence::TestResults::GetResults@<X0>(siri::intelligence::TestResults *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<siri::intelligence::TestResult>::__init_with_size[abi:ne200100]<siri::intelligence::TestResult*,siri::intelligence::TestResult*>(a2, *(this + 1), *(this + 2), 0xD37A6F4DE9BD37A7 * ((*(this + 2) - *(this + 1)) >> 3));
}

uint64_t siri::intelligence::TestResults::GetCountByStatus(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 == v3)
  {
    return 0;
  }

  LODWORD(result) = 0;
  do
  {
    if (*(v2 + 152) == a2)
    {
      result = (result + 1);
    }

    else
    {
      result = result;
    }

    v2 += 184;
  }

  while (v2 != v3);
  return result;
}

uint64_t siri::intelligence::TestResults::SummarizeToStdout(siri::intelligence::TestResults *this)
{
  v2 = *this;
  if (*this)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    std::vector<siri::intelligence::TestParseError>::__init_with_size[abi:ne200100]<siri::intelligence::TestParseError*,siri::intelligence::TestParseError*>(&v18, *(v2 + 24), *(v2 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(v2 + 32) - *(v2 + 24)) >> 4));
    v3 = v18;
    for (i = v19; v3 != i; v3 += 48)
    {
      if (*(v3 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v17, *(v3 + 24), *(v3 + 32));
      }

      else
      {
        v17 = *(v3 + 24);
      }

      if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v5 = &v17;
      }

      else
      {
        v5 = v17.__r_.__value_.__r.__words[0];
      }

      printf("Flow Test Load: %s\n", v5);
      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }
    }

    v17.__r_.__value_.__r.__words[0] = &v18;
    std::vector<siri::intelligence::TestParseError>::__destroy_vector::operator()[abi:ne200100](&v17);
  }

  v6 = *(this + 1);
  v7 = *(this + 2);
  if (v6 != v7)
  {
    do
    {
      siri::intelligence::TestResult::GetDescriptions(v6, &v18);
      v8 = v18;
      v9 = v19;
      while (v8 != v9)
      {
        v10 = v8;
        if (*(v8 + 23) < 0)
        {
          v10 = *v8;
        }

        puts(v10);
        v8 += 24;
      }

      v17.__r_.__value_.__r.__words[0] = &v18;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v17);
      v6 = (v6 + 184);
    }

    while (v6 != v7);
    v6 = *(this + 1);
    v7 = *(this + 2);
  }

  if (v6 == v7)
  {
    v13 = 0;
    v11 = 0;
    v15 = 0;
  }

  else
  {
    v11 = 0;
    v12 = v6;
    do
    {
      if (*(v12 + 38) == 1)
      {
        ++v11;
      }

      v12 = (v12 + 184);
    }

    while (v12 != v7);
    v13 = 0;
    v14 = v6;
    do
    {
      if (*(v14 + 38) == 2)
      {
        ++v13;
      }

      v14 = (v14 + 184);
    }

    while (v14 != v7);
    v15 = 0;
    do
    {
      if (*(v6 + 38) == 3)
      {
        ++v15;
      }

      v6 = (v6 + 184);
    }

    while (v6 != v7);
  }

  return printf("%d passed, %d failed, %d skipped\n", v11, v13, v15);
}

void sub_254D688A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, char a16)
{
  a13 = &a16;
  std::vector<siri::intelligence::TestParseError>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t std::vector<siri::intelligence::TestResult>::__emplace_back_slow_path<siri::intelligence::TestResult const&>(uint64_t *a1, siri::intelligence::TestCase *a2)
{
  v2 = 0xD37A6F4DE9BD37A7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1642C8590B21642)
  {
    std::vector<siri::intelligence::TestResult>::__throw_length_error[abi:ne200100]();
  }

  if (0xA6F4DE9BD37A6F4ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xA6F4DE9BD37A6F4ELL * ((a1[2] - *a1) >> 3);
  }

  if (0xD37A6F4DE9BD37A7 * ((a1[2] - *a1) >> 3) >= 0xB21642C8590B21)
  {
    v6 = 0x1642C8590B21642;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<siri::intelligence::TestResult>>(a1, v6);
  }

  v17 = 0;
  v18 = 184 * v2;
  v20 = 0;
  std::allocator_traits<std::allocator<siri::intelligence::TestResult>>::construct[abi:ne200100]<siri::intelligence::TestResult,siri::intelligence::TestResult const&,0>(a1, (184 * v2), a2);
  v7 = 184 * v2 + 184;
  v19 = v7;
  v8 = *a1;
  v9 = a1[1];
  v10 = *a1 - v9;
  v11 = v18 + v10;
  if (*a1 != v9)
  {
    v12 = 0;
    v13 = (v18 + v10);
    v14 = *a1;
    do
    {
      std::allocator_traits<std::allocator<siri::intelligence::TestResult>>::construct[abi:ne200100]<siri::intelligence::TestResult,siri::intelligence::TestResult const&,0>(a1, v13, v14);
      v14 = (v14 + 184);
      v13 = (v13 + 184);
      v12 -= 184;
    }

    while (v14 != v9);
    do
    {
      std::allocator_traits<std::allocator<siri::intelligence::TestResult>>::destroy[abi:ne200100]<siri::intelligence::TestResult,0>(v8);
      v8 += 184;
    }

    while (v8 != v9);
    v8 = *a1;
    v7 = v19;
  }

  *a1 = v11;
  a1[1] = v7;
  v15 = a1[2];
  a1[2] = v20;
  v19 = v8;
  v20 = v15;
  v17 = v8;
  v18 = v8;
  std::__split_buffer<siri::intelligence::TestResult>::~__split_buffer(&v17);
  return v7;
}

void sub_254D68A44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<siri::intelligence::TestResult>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::allocator_traits<std::allocator<siri::intelligence::TestResult>>::construct[abi:ne200100]<siri::intelligence::TestResult,siri::intelligence::TestResult const&,0>(int a1, std::string *this, siri::intelligence::TestCase *a3)
{
  siri::intelligence::TestCase::TestCase(this, a3);
  v5 = *(a3 + 38);
  this[6].__r_.__value_.__r.__words[2] = 0;
  LODWORD(this[6].__r_.__value_.__r.__words[1]) = v5;
  this[7].__r_.__value_.__r.__words[0] = 0;
  this[7].__r_.__value_.__l.__size_ = 0;
  return std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&this[6].__r_.__value_.__r.__words[2], *(a3 + 20), *(a3 + 21), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 21) - *(a3 + 20)) >> 3));
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<siri::intelligence::TestResult>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1642C8590B21643)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::allocator_traits<std::allocator<siri::intelligence::TestResult>>::destroy[abi:ne200100]<siri::intelligence::TestResult,0>(uint64_t a1)
{
  v2 = (a1 + 160);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (a1 + 128);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (a1 + 104);
  std::vector<protobuf::FlowTest_Step>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t std::__split_buffer<siri::intelligence::TestResult>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 184;
    std::allocator_traits<std::allocator<siri::intelligence::TestResult>>::destroy[abi:ne200100]<siri::intelligence::TestResult,0>(i - 184);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<siri::intelligence::TestResult>::__init_with_size[abi:ne200100]<siri::intelligence::TestResult*,siri::intelligence::TestResult*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<siri::intelligence::TestResult>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_254D68CB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<siri::intelligence::TestResult>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<siri::intelligence::TestResult>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1642C8590B21643)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<siri::intelligence::TestResult>>(a1, a2);
  }

  std::vector<siri::intelligence::TestResult>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<siri::intelligence::TestResult>,siri::intelligence::TestResult*,siri::intelligence::TestResult*,siri::intelligence::TestResult*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = siri::intelligence::TestCase::TestCase((a4 + v7), (a2 + v7));
      v9 = *(a2 + v7 + 152);
      v8[6].__r_.__value_.__r.__words[2] = 0;
      v8 = (v8 + 160);
      LODWORD(v8[-1].__r_.__value_.__r.__words[2]) = v9;
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v8, *(a2 + v7 + 160), *(a2 + v7 + 168), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + v7 + 168) - *(a2 + v7 + 160)) >> 3));
      v7 += 184;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_254D68DBC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 184;
    v5 = -v2;
    do
    {
      std::allocator_traits<std::allocator<siri::intelligence::TestResult>>::destroy[abi:ne200100]<siri::intelligence::TestResult,0>(v4);
      v4 -= 184;
      v5 += 184;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

BOOL siri::intelligence::Exporter::IsValidExportFormat(uint64_t a1)
{
  siri::intelligence::StringToLower(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    if (__p.__r_.__value_.__l.__size_ == 3)
    {
      v2 = __p.__r_.__value_.__r.__words[0];
      if ((*__p.__r_.__value_.__l.__data_ != 28516 || *(__p.__r_.__value_.__r.__words[0] + 2) != 116) && (*__p.__r_.__value_.__l.__data_ != 28272 || *(__p.__r_.__value_.__r.__words[0] + 2) != 103))
      {
        goto LABEL_29;
      }

      v5 = 1;
    }

    else
    {
      v2 = __p.__r_.__value_.__r.__words[0];
      if (__p.__r_.__value_.__l.__size_ != 4)
      {
LABEL_29:
        v5 = 0;
        goto LABEL_30;
      }

      v5 = *__p.__r_.__value_.__l.__data_ == 1953457272;
    }

LABEL_30:
    operator delete(v2);
    return v5;
  }

  if (HIBYTE(__p.__r_.__value_.__r.__words[2]) == 3)
  {
    if (LOWORD(__p.__r_.__value_.__l.__data_) == 28516 && __p.__r_.__value_.__s.__data_[2] == 116)
    {
      return 1;
    }

    return LOWORD(__p.__r_.__value_.__l.__data_) == 28272 && __p.__r_.__value_.__s.__data_[2] == 103;
  }

  else
  {
    if (HIBYTE(__p.__r_.__value_.__r.__words[2]) != 4)
    {
      return 0;
    }

    return LODWORD(__p.__r_.__value_.__l.__data_) == 1953457272;
  }
}

uint64_t siri::intelligence::Exporter::CanExport(uint64_t a1)
{
  if (!siri::intelligence::Exporter::IsValidExportFormat(a1))
  {
    return 0;
  }

  siri::intelligence::StringToLower(a1, &v7);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v7.__r_.__value_.__l.__size_ != 3)
    {
      operator delete(v7.__r_.__value_.__l.__data_);
      goto LABEL_21;
    }

    v5 = *v7.__r_.__value_.__l.__data_ != 28516 || *(v7.__r_.__value_.__r.__words[0] + 2) != 116;
    operator delete(v7.__r_.__value_.__l.__data_);
    if (v5)
    {
LABEL_21:
      siri::intelligence::LocateDotExecutable(&v7);
    }
  }

  else
  {
    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) != 3)
    {
      goto LABEL_21;
    }

    if (LOWORD(v7.__r_.__value_.__l.__data_) != 28516 || v7.__r_.__value_.__s.__data_[2] != 116)
    {
      goto LABEL_21;
    }
  }

  return 1;
}

void siri::intelligence::LocateDotExecutable(siri::intelligence *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v1 = getenv("PATH");
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = "";
  }

  v3 = std::string::basic_string[abi:ne200100]<0>(v5, v2);
  std::string::append(v3, ":/opt/brew/bin:/opt/homebrew/bin:/usr/local/bin");
  memset(&v4, 0, sizeof(v4));
  siri::intelligence::StringSplit(v5, ":");
}

void sub_254D6918C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28)
{
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a15);
  if (*(v29 - 33) < 0)
  {
    operator delete(*(v29 - 56));
  }

  if (*(v28 + 23) < 0)
  {
    operator delete(*v28);
  }

  _Unwind_Resume(a1);
}

void siri::intelligence::Exporter::ExportFile(uint64_t *a1)
{
  v1 = *a1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "2.0.8");
  siri::intelligence::Updater::UpdateToVersion(v1);
}

void sub_254D694A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

BOOL siri::intelligence::ExportFile_dot(void *a1, uint64_t a2, uint64_t a3)
{
  v445 = *MEMORY[0x277D85DE8];
  siri::intelligence::BaseName(a2, __p);
  siri::intelligence::RemoveExtension(__p, &v439);
  if (SBYTE7(v418) < 0)
  {
    operator delete(__p[0]);
  }

  v436 = 0;
  v437 = 0;
  v438 = 0;
  v435[1] = 0;
  v435[0] = 0;
  v434 = v435;
  v433[1] = 0;
  v433[0] = 0;
  v432 = v433;
  v430 = 0u;
  v431 = 0u;
  v428 = 0u;
  v429 = 0u;
  v426 = 0u;
  v427 = 0u;
  v424 = 0u;
  v425 = 0u;
  v422 = 0u;
  v423 = 0u;
  v420 = 0u;
  v421 = 0u;
  v418 = 0u;
  v419 = 0u;
  *__p = 0u;
  if (*(a3 + 2) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&__str, "bgcolor=black");
    std::string::basic_string[abi:ne200100]<0>(&v407, "color=#A0CED9 fillcolor=#469AAF fontcolor=white");
    std::string::basic_string[abi:ne200100]<0>(&v408, "fillcolor=#306a78");
    std::string::basic_string[abi:ne200100]<0>(&v409, "color=#ADF7B6 fillcolor=#51b85d fontcolor=white");
    std::string::basic_string[abi:ne200100]<0>(&v410 + 8, "fillcolor=#3e9848");
    std::string::basic_string[abi:ne200100]<0>(v412, "color=#d1ae54 pencolor=#FCF5C7 fontcolor=white");
    std::string::basic_string[abi:ne200100]<0>(v413, "fontcolor=#777777 color=#cccccc");
    std::string::basic_string[abi:ne200100]<0>(v414, "fillcolor=#FF7733 color=#FFAD85 fontcolor=white");
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__str, "bgcolor=white");
    std::string::basic_string[abi:ne200100]<0>(&v407, "color=#469AAF fillcolor=#aeced6 fontcolor=#111111");
    std::string::basic_string[abi:ne200100]<0>(&v408, "fillcolor=#d0e2e7");
    std::string::basic_string[abi:ne200100]<0>(&v409, "color=#12BA26 fillcolor=#7ff28d fontcolor=#111111");
    std::string::basic_string[abi:ne200100]<0>(&v410 + 8, "fillcolor=#ADF7B6");
    std::string::basic_string[abi:ne200100]<0>(v412, "color=#FCF5C7 pencolor=#D5BA0B fontcolor=#555555");
    std::string::basic_string[abi:ne200100]<0>(v413, "fontcolor=#aaaaaa color=#888888");
    std::string::basic_string[abi:ne200100]<0>(v414, "fillcolor=#FFAD85 color=#FF7733 fontcolor=#111111");
  }

  std::string::basic_string[abi:ne200100]<0>(v415, "color=#ff2222 penwidth=3");
  std::string::basic_string[abi:ne200100]<0>(v416, "penwidth=3 pencolor=#ff2222");
  siri::intelligence::GraphColors::operator=(__p, &__str);
  siri::intelligence::GraphColors::~GraphColors(&__str.__r_.__value_.__l.__data_);
  std::operator+<char>();
  v6 = std::string::append(&v441, " {");
  v7 = *&v6->__r_.__value_.__l.__data_;
  __str.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&__str.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v436, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v441.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v441.__r_.__value_.__l.__data_);
  }

  std::operator+<char>();
  v8 = std::string::append(&v441, "];");
  v9 = *&v8->__r_.__value_.__l.__data_;
  __str.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&__str.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v436, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v441.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v441.__r_.__value_.__l.__data_);
  }

  std::operator+<char>();
  v10 = std::string::append(&v441, "];");
  v11 = *&v10->__r_.__value_.__l.__data_;
  __str.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&__str.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v436, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v441.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v441.__r_.__value_.__l.__data_);
  }

  std::operator+<char>();
  v12 = std::string::append(&v441, "];");
  v13 = *&v12->__r_.__value_.__l.__data_;
  __str.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&__str.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v436, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v441.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v441.__r_.__value_.__l.__data_);
  }

  if (*a3 == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&__str, "bgcolor=transparent;");
    std::vector<std::string>::push_back[abi:ne200100](&v436, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  v403 = 0;
  v404 = 0;
  v405 = 0;
  v14 = *a1;
  if (*(*a1 + 56) >= 1)
  {
    v15 = 0;
    do
    {
      v16 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_DialogResponse>::TypeHandler>(v14 + 48, v15);
      v17 = *(v16 + 120);
      if (*(v17 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__str, *v17, *(v17 + 1));
      }

      else
      {
        v18 = *v17;
        __str.__r_.__value_.__r.__words[2] = *(v17 + 2);
        *&__str.__r_.__value_.__l.__data_ = v18;
      }

      v19 = *(v16 + 208);
      if (*(v19 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v407, *v19, *(v19 + 1));
      }

      else
      {
        v20 = *v19;
        v407.__r_.__value_.__r.__words[2] = *(v19 + 2);
        *&v407.__r_.__value_.__l.__data_ = v20;
      }

      v21 = *(v16 + 216);
      if (*(v21 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v408, *v21, *(v21 + 1));
      }

      else
      {
        v22 = *v21;
        v408.__r_.__value_.__r.__words[2] = *(v21 + 2);
        *&v408.__r_.__value_.__l.__data_ = v22;
      }

      v23 = *(v16 + 88);
      if (v23)
      {
        v24 = v23 + 8;
      }

      else
      {
        v24 = 0;
      }

      v25 = *(v16 + 80);
      *&v410 = 0;
      v409 = 0uLL;
      std::vector<std::string>::__init_with_size[abi:ne200100]<google::protobuf::internal::RepeatedPtrIterator<std::string const>,google::protobuf::internal::RepeatedPtrIterator<std::string const>>(&v409, v24, v24 + 8 * v25, v25);
      *(&v410 + 1) = 0;
      v411 = 0uLL;
      v412[0] = 0;
      std::vector<siri::intelligence::ResponseData>::push_back[abi:ne200100](&v403, &__str);
      if (SHIBYTE(v411) < 0)
      {
        operator delete(*(&v410 + 1));
      }

      v441.__r_.__value_.__r.__words[0] = &v409;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v441);
      if (SHIBYTE(v408.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v408.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v407.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v407.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      ++v15;
      v14 = *a1;
    }

    while (v15 < *(*a1 + 56));
  }

  v395 = a3;
  v393 = a1;
  v389 = a2;
  if (*(v14 + 80) >= 1)
  {
    for (i = 0; i < *(*a1 + 80); ++i)
    {
      v27 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_BehaviorResponse>::TypeHandler>(v14 + 72, i);
      v28 = *(v27 + 72);
      if (*(v28 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__str, *v28, *(v28 + 1));
      }

      else
      {
        v29 = *v28;
        __str.__r_.__value_.__r.__words[2] = *(v28 + 2);
        *&__str.__r_.__value_.__l.__data_ = v29;
      }

      v30 = *(v27 + 136);
      if (*(v30 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v407, *v30, *(v30 + 1));
      }

      else
      {
        v31 = *v30;
        v407.__r_.__value_.__r.__words[2] = *(v30 + 2);
        *&v407.__r_.__value_.__l.__data_ = v31;
      }

      v32 = *(v27 + 144);
      if (*(v32 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v408, *v32, *(v32 + 1));
      }

      else
      {
        v33 = *v32;
        v408.__r_.__value_.__r.__words[2] = *(v32 + 2);
        *&v408.__r_.__value_.__l.__data_ = v33;
      }

      v34 = *(v27 + 64);
      if (v34)
      {
        v35 = v34 + 8;
      }

      else
      {
        v35 = 0;
      }

      v36 = *(v27 + 56);
      *&v410 = 0;
      v409 = 0uLL;
      std::vector<std::string>::__init_with_size[abi:ne200100]<google::protobuf::internal::RepeatedPtrIterator<std::string const>,google::protobuf::internal::RepeatedPtrIterator<std::string const>>(&v409, v35, v35 + 8 * v36, v36);
      *(&v410 + 1) = 0;
      v411 = 0uLL;
      v412[0] = 1;
      v37 = *(v27 + 128);
      v38 = *(v37 + 23);
      if (v38 < 0)
      {
        if (v37[1] == 14)
        {
          v37 = *v37;
LABEL_67:
          v39 = *v37;
          v40 = *(v37 + 6);
          v41 = v39 == 0x6341686374697773 && v40 == 0x7974697669746341;
          if (v41 && *(v27 + 32) >= 1)
          {
            v42 = *(*(v27 + 40) + 8);
            memset(&v444, 0, sizeof(v444));
            google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(&v444, v42 + 48);
            if (LODWORD(v444.__r_.__value_.__r.__words[1]))
            {
              if (SLODWORD(v444.__r_.__value_.__r.__words[1]) <= 0)
              {
                v43 = google::protobuf::internal::LogMessage::LogMessage(&v441, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1561);
                v44 = google::protobuf::internal::LogMessage::operator<<(v43, "CHECK failed: (index) < (current_size_): ");
                google::protobuf::internal::LogFinisher::operator=(&v440, &v44->__r_.__value_.__l.__data_);
                google::protobuf::internal::LogMessage::~LogMessage(&v441.__r_.__value_.__l.__data_);
              }

              std::string::operator=((&v410 + 8), *(*(v444.__r_.__value_.__r.__words[2] + 8) + 128));
            }

            google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField(&v444);
          }
        }
      }

      else if (v38 == 14)
      {
        goto LABEL_67;
      }

      v45 = v404;
      if (v404 >= v405)
      {
        v47 = (v404 - v403) >> 7;
        if ((v47 + 1) >> 57)
        {
          std::vector<siri::intelligence::FunctionArgument>::__throw_length_error[abi:ne200100]();
        }

        v48 = (v405 - v403) >> 6;
        if (v48 <= v47 + 1)
        {
          v48 = v47 + 1;
        }

        if (v405 - v403 >= 0x7FFFFFFFFFFFFF80)
        {
          v49 = 0x1FFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v48;
        }

        v443 = &v403;
        if (v49)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<siri::intelligence::ResponseData>>(v49);
        }

        v441.__r_.__value_.__r.__words[0] = 0;
        v441.__r_.__value_.__l.__size_ = v47 << 7;
        v441.__r_.__value_.__r.__words[2] = v47 << 7;
        v442 = 0;
        siri::intelligence::ResponseData::ResponseData((v47 << 7), &__str);
        v46 = (v441.__r_.__value_.__r.__words[2] + 128);
        v50 = (v441.__r_.__value_.__l.__size_ + v403 - v404);
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<siri::intelligence::ResponseData>,siri::intelligence::ResponseData*>(v403, v404, v50);
        v51 = v403;
        v52 = v405;
        v403 = v50;
        v404 = v46;
        v405 = v442;
        v441.__r_.__value_.__r.__words[2] = v51;
        v442 = v52;
        v441.__r_.__value_.__r.__words[0] = v51;
        v441.__r_.__value_.__l.__size_ = v51;
        std::__split_buffer<siri::intelligence::ResponseData>::~__split_buffer(&v441);
      }

      else
      {
        siri::intelligence::ResponseData::ResponseData(v404, &__str);
        v46 = (v45 + 128);
      }

      v404 = v46;
      if (SHIBYTE(v411) < 0)
      {
        operator delete(*(&v410 + 1));
      }

      v441.__r_.__value_.__r.__words[0] = &v409;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v441);
      if (SHIBYTE(v408.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v408.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v407.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v407.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v14 = *a1;
    }
  }

  if (*(v14 + 104) < 1)
  {
    v54 = a1;
  }

  else
  {
    v53 = 0;
    v54 = a1;
    do
    {
      v55 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_ReferenceResponse>::TypeHandler>(v14 + 96, v53);
      v56 = *(v55 + 48);
      if (*(v56 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__str, *v56, *(v56 + 1));
      }

      else
      {
        v57 = *v56;
        __str.__r_.__value_.__r.__words[2] = *(v56 + 2);
        *&__str.__r_.__value_.__l.__data_ = v57;
      }

      v58 = *(v55 + 120);
      if (*(v58 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v407, *v58, *(v58 + 1));
      }

      else
      {
        v59 = *v58;
        v407.__r_.__value_.__r.__words[2] = *(v58 + 2);
        *&v407.__r_.__value_.__l.__data_ = v59;
      }

      v60 = *(v55 + 128);
      if (*(v60 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v408, *v60, *(v60 + 1));
      }

      else
      {
        v61 = *v60;
        v408.__r_.__value_.__r.__words[2] = *(v60 + 2);
        *&v408.__r_.__value_.__l.__data_ = v61;
      }

      v62 = *(v55 + 40);
      if (v62)
      {
        v63 = v62 + 8;
      }

      else
      {
        v63 = 0;
      }

      v64 = *(v55 + 32);
      *&v410 = 0;
      v409 = 0uLL;
      std::vector<std::string>::__init_with_size[abi:ne200100]<google::protobuf::internal::RepeatedPtrIterator<std::string const>,google::protobuf::internal::RepeatedPtrIterator<std::string const>>(&v409, v63, v63 + 8 * v64, v64);
      *(&v410 + 1) = 0;
      v411 = 0uLL;
      v412[0] = 1;
      std::vector<siri::intelligence::ResponseData>::push_back[abi:ne200100](&v403, &__str);
      if (SHIBYTE(v411) < 0)
      {
        operator delete(*(&v410 + 1));
      }

      v441.__r_.__value_.__r.__words[0] = &v409;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v441);
      if (SHIBYTE(v408.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v408.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v407.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v407.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      ++v53;
      v14 = *a1;
    }

    while (v53 < *(*a1 + 104));
  }

  if (*(v14 + 416) >= 1)
  {
    v65 = 0;
    do
    {
      v66 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_ResponseGroup>::TypeHandler>(v14 + 408, v65);
      v67 = *(v66 + 48);
      if (*(v67 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__str, *v67, *(v67 + 1));
      }

      else
      {
        v68 = *v67;
        __str.__r_.__value_.__r.__words[2] = *(v67 + 2);
        *&__str.__r_.__value_.__l.__data_ = v68;
      }

      v69 = *(v66 + 104);
      if (*(v69 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v407, *v69, *(v69 + 1));
      }

      else
      {
        v70 = *v69;
        v407.__r_.__value_.__r.__words[2] = *(v69 + 2);
        *&v407.__r_.__value_.__l.__data_ = v70;
      }

      v71 = *(v66 + 112);
      if (*(v71 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v408, *v71, *(v71 + 1));
      }

      else
      {
        v72 = *v71;
        v408.__r_.__value_.__r.__words[2] = *(v71 + 2);
        *&v408.__r_.__value_.__l.__data_ = v72;
      }

      v73 = *(v66 + 40);
      if (v73)
      {
        v74 = v73 + 8;
      }

      else
      {
        v74 = 0;
      }

      v75 = *(v66 + 32);
      *&v410 = 0;
      v409 = 0uLL;
      std::vector<std::string>::__init_with_size[abi:ne200100]<google::protobuf::internal::RepeatedPtrIterator<std::string const>,google::protobuf::internal::RepeatedPtrIterator<std::string const>>(&v409, v74, v74 + 8 * v75, v75);
      *(&v410 + 1) = 0;
      v411 = 0uLL;
      v412[0] = 1;
      std::vector<siri::intelligence::ResponseData>::push_back[abi:ne200100](&v403, &__str);
      if (SHIBYTE(v411) < 0)
      {
        operator delete(*(&v410 + 1));
      }

      v441.__r_.__value_.__r.__words[0] = &v409;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v441);
      if (SHIBYTE(v408.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v408.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v407.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v407.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      ++v65;
      v14 = *v54;
    }

    while (v65 < *(*v54 + 416));
  }

  if (*(v14 + 440) >= 1)
  {
    v76 = 0;
    do
    {
      v77 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup>::TypeHandler>(v14 + 432, v76);
      std::string::basic_string[abi:ne200100]<0>(&__str, "");
      std::string::basic_string[abi:ne200100]<0>(&v407, "");
      v78 = *(v77 + 144);
      if (*(v78 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v408, *v78, *(v78 + 1));
      }

      else
      {
        v79 = *v78;
        v408.__r_.__value_.__r.__words[2] = *(v78 + 2);
        *&v408.__r_.__value_.__l.__data_ = v79;
      }

      v412[0] = 0;
      v410 = 0u;
      v411 = 0u;
      v409 = 0u;
      std::vector<siri::intelligence::ResponseData>::push_back[abi:ne200100](&v403, &__str);
      if (SHIBYTE(v411) < 0)
      {
        operator delete(*(&v410 + 1));
      }

      v441.__r_.__value_.__r.__words[0] = &v409;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v441);
      if (SHIBYTE(v408.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v408.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v407.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v407.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      ++v76;
      v14 = *v54;
    }

    while (v76 < *(*v54 + 440));
  }

  v80 = v403;
  v391 = v404;
  if (v403 != v404)
  {
    v390 = (a3 + 8);
    while (1)
    {
      v81 = *(a3 + 31);
      if (v81 >= 0)
      {
        v82 = *(a3 + 31);
      }

      else
      {
        v82 = *(a3 + 16);
      }

      if (v82)
      {
        v83 = *(v80 + 23);
        v84 = v83;
        if ((v83 & 0x80u) != 0)
        {
          v83 = *(v80 + 1);
        }

        if (v83 == v82)
        {
          v85 = v84 >= 0 ? v80 : *v80;
          v86 = v81 >= 0 ? v390 : *v390;
          if (!memcmp(v85, v86, v82))
          {
            siri::intelligence::FormatName(&v440, v80);
            v87 = std::string::append(&v440, " [");
            v88 = *&v87->__r_.__value_.__l.__data_;
            v444.__r_.__value_.__r.__words[2] = v87->__r_.__value_.__r.__words[2];
            *&v444.__r_.__value_.__l.__data_ = v88;
            v87->__r_.__value_.__l.__size_ = 0;
            v87->__r_.__value_.__r.__words[2] = 0;
            v87->__r_.__value_.__r.__words[0] = 0;
            if ((SBYTE7(v430) & 0x80u) == 0)
            {
              v89 = &v429;
            }

            else
            {
              v89 = v429;
            }

            if ((SBYTE7(v430) & 0x80u) == 0)
            {
              v90 = BYTE7(v430);
            }

            else
            {
              v90 = *(&v429 + 1);
            }

            v91 = std::string::append(&v444, v89, v90);
            v92 = *&v91->__r_.__value_.__l.__data_;
            v441.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
            *&v441.__r_.__value_.__l.__data_ = v92;
            v91->__r_.__value_.__l.__size_ = 0;
            v91->__r_.__value_.__r.__words[2] = 0;
            v91->__r_.__value_.__r.__words[0] = 0;
            v93 = std::string::append(&v441, " comment = active:response];");
            v94 = *&v93->__r_.__value_.__l.__data_;
            __str.__r_.__value_.__r.__words[2] = v93->__r_.__value_.__r.__words[2];
            *&__str.__r_.__value_.__l.__data_ = v94;
            v93->__r_.__value_.__l.__size_ = 0;
            v93->__r_.__value_.__r.__words[2] = 0;
            v93->__r_.__value_.__r.__words[0] = 0;
            siri::intelligence::AppendLineIfNotWritten(&v436, &v434, &__str.__r_.__value_.__l.__data_);
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v441.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v441.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v444.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v444.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v440.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v440.__r_.__value_.__l.__data_);
            }
          }
        }
      }

      if ((*(v80 + 119) & 0x8000000000000000) != 0)
      {
        if (!*(v80 + 13))
        {
          goto LABEL_212;
        }
      }

      else if (!*(v80 + 119))
      {
        goto LABEL_212;
      }

      siri::intelligence::FormatName(&v440, v80);
      v95 = std::string::append(&v440, " -> ");
      v96 = *&v95->__r_.__value_.__l.__data_;
      v444.__r_.__value_.__r.__words[2] = v95->__r_.__value_.__r.__words[2];
      *&v444.__r_.__value_.__l.__data_ = v96;
      v95->__r_.__value_.__l.__size_ = 0;
      v95->__r_.__value_.__r.__words[2] = 0;
      v95->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:ne200100]<0>(&v401, "Activity");
      siri::intelligence::FormatName(&v402, &v401, v80 + 96);
      if ((v402.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v97 = &v402;
      }

      else
      {
        v97 = v402.__r_.__value_.__r.__words[0];
      }

      if ((v402.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v402.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v402.__r_.__value_.__l.__size_;
      }

      v99 = std::string::append(&v444, v97, size);
      v100 = *&v99->__r_.__value_.__l.__data_;
      v441.__r_.__value_.__r.__words[2] = v99->__r_.__value_.__r.__words[2];
      *&v441.__r_.__value_.__l.__data_ = v100;
      v99->__r_.__value_.__l.__size_ = 0;
      v99->__r_.__value_.__r.__words[2] = 0;
      v99->__r_.__value_.__r.__words[0] = 0;
      v101 = std::string::append(&v441, ";");
      v102 = *&v101->__r_.__value_.__l.__data_;
      __str.__r_.__value_.__r.__words[2] = v101->__r_.__value_.__r.__words[2];
      *&__str.__r_.__value_.__l.__data_ = v102;
      v101->__r_.__value_.__l.__size_ = 0;
      v101->__r_.__value_.__r.__words[2] = 0;
      v101->__r_.__value_.__r.__words[0] = 0;
      siri::intelligence::AppendLineIfNotWritten(&v436, &v434, &__str.__r_.__value_.__l.__data_);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v441.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v441.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v402.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v402.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v401.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v401.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v444.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v444.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v440.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v440.__r_.__value_.__l.__data_);
      }

LABEL_212:
      v104 = *v54;
      v103 = v54[1];
      if (v103)
      {
        atomic_fetch_add_explicit(&v103->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v105 = *(v80 + 71);
      if ((v105 & 0x80u) != 0)
      {
        v105 = *(v80 + 7);
      }

      if (v105 && *(v104 + 440) >= 1)
      {
        v106 = 0;
        v107 = (v80 + 48);
        while (1)
        {
          v108 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup>::TypeHandler>(v104 + 432, v106);
          v109 = v108;
          v110 = *(v108 + 144);
          v111 = *(v110 + 23);
          if (v111 >= 0)
          {
            v112 = *(v110 + 23);
          }

          else
          {
            v112 = *(v110 + 8);
          }

          v113 = *(v80 + 71);
          v114 = v113;
          if ((v113 & 0x80u) != 0)
          {
            v113 = *(v80 + 7);
          }

          if (v112 == v113)
          {
            v115 = v111 >= 0 ? *(v108 + 144) : *v110;
            v116 = *v107;
            v117 = v114 >= 0 ? v80 + 48 : *v107;
            if (!memcmp(v115, v117, v112))
            {
              break;
            }
          }

          if (++v106 >= *(v104 + 440))
          {
            goto LABEL_233;
          }
        }
      }

      else
      {
LABEL_233:
        v109 = 0;
      }

      if (v103)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v103);
      }

      if (!v109)
      {
        goto LABEL_521;
      }

      v392 = v80;
      if (v433 == std::__tree<std::string>::find<std::string>(&v432, *(v109 + 144)))
      {
        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v432, *(v109 + 144));
        v118 = *(v109 + 144);
        std::operator+<char>();
        v119 = std::string::append(&v441, " {");
        v120 = *&v119->__r_.__value_.__l.__data_;
        __str.__r_.__value_.__r.__words[2] = v119->__r_.__value_.__r.__words[2];
        *&__str.__r_.__value_.__l.__data_ = v120;
        v119->__r_.__value_.__l.__size_ = 0;
        v119->__r_.__value_.__r.__words[2] = 0;
        v119->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](&v436, &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v441.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v441.__r_.__value_.__l.__data_);
        }

        std::operator+<char>();
        v121 = std::string::append(&v441, "]");
        v122 = *&v121->__r_.__value_.__l.__data_;
        __str.__r_.__value_.__r.__words[2] = v121->__r_.__value_.__r.__words[2];
        *&__str.__r_.__value_.__l.__data_ = v122;
        v121->__r_.__value_.__l.__size_ = 0;
        v121->__r_.__value_.__r.__words[2] = 0;
        v121->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](&v436, &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v441.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v441.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:ne200100]<0>(&__str, "style = filled;");
        std::vector<std::string>::push_back[abi:ne200100](&v436, &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (v425 >= 0)
        {
          v123 = HIBYTE(v425);
        }

        else
        {
          v123 = v425;
        }

        std::string::basic_string[abi:ne200100](&__str, v123 + 1);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_str = &__str;
        }

        else
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        if (v123)
        {
          if (v425 >= 0)
          {
            v125 = &v424 + 8;
          }

          else
          {
            v125 = *(&v424 + 1);
          }

          memmove(p_str, v125, v123);
        }

        *(&p_str->__r_.__value_.__l.__data_ + v123) = 59;
        std::vector<std::string>::push_back[abi:ne200100](&v436, &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v126 = *(a3 + 31);
        if (v126 >= 0)
        {
          v127 = *(a3 + 31);
        }

        else
        {
          v127 = *(a3 + 16);
        }

        if (v127)
        {
          v128 = *(v80 + 23);
          v129 = v128;
          if ((v128 & 0x80u) != 0)
          {
            v128 = *(v80 + 1);
          }

          if (v128 == v127)
          {
            v130 = v129 >= 0 ? v80 : *v80;
            v131 = v126 >= 0 ? v390 : *v390;
            if (!memcmp(v130, v131, v127))
            {
              if (v431 >= 0)
              {
                v132 = HIBYTE(v431);
              }

              else
              {
                v132 = v431;
              }

              std::string::basic_string[abi:ne200100](&__str, v132 + 1);
              if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v133 = &__str;
              }

              else
              {
                v133 = __str.__r_.__value_.__r.__words[0];
              }

              if (v132)
              {
                if (v431 >= 0)
                {
                  v134 = &v430 + 8;
                }

                else
                {
                  v134 = *(&v430 + 1);
                }

                memmove(v133, v134, v132);
              }

              *(&v133->__r_.__value_.__l.__data_ + v132) = 59;
              std::vector<std::string>::push_back[abi:ne200100](&v436, &__str);
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__str.__r_.__value_.__l.__data_);
              }

              std::string::basic_string[abi:ne200100]<0>(&__str, "comment = active:group;");
              std::vector<std::string>::push_back[abi:ne200100](&v436, &__str);
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__str.__r_.__value_.__l.__data_);
              }
            }
          }
        }

        siri::intelligence::FormatName(&v444, *(v109 + 144));
        v135 = std::string::insert(&v444, 0, "label = ");
        v136 = *&v135->__r_.__value_.__l.__data_;
        v441.__r_.__value_.__r.__words[2] = v135->__r_.__value_.__r.__words[2];
        *&v441.__r_.__value_.__l.__data_ = v136;
        v135->__r_.__value_.__l.__size_ = 0;
        v135->__r_.__value_.__r.__words[2] = 0;
        v135->__r_.__value_.__r.__words[0] = 0;
        v137 = std::string::append(&v441, ";");
        v138 = *&v137->__r_.__value_.__l.__data_;
        __str.__r_.__value_.__r.__words[2] = v137->__r_.__value_.__r.__words[2];
        *&__str.__r_.__value_.__l.__data_ = v138;
        v137->__r_.__value_.__l.__size_ = 0;
        v137->__r_.__value_.__r.__words[2] = 0;
        v137->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](&v436, &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v441.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v441.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v444.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v444.__r_.__value_.__l.__data_);
        }

        v139 = *(v109 + 136);
        if (v139)
        {
          v140 = (v139 + 8);
        }

        else
        {
          v140 = 0;
        }

        v141 = *(v109 + 128);
        if (v141)
        {
          v142 = 8 * v141;
          do
          {
            v143 = *v140;
            v144 = *(*v140 + 64);
            if (*(v144 + 23) >= 0)
            {
              v145 = *(v144 + 23);
            }

            else
            {
              v145 = v144[1];
            }

            std::string::basic_string[abi:ne200100](&v441, v145 + 1);
            if ((v441.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v146 = &v441;
            }

            else
            {
              v146 = v441.__r_.__value_.__r.__words[0];
            }

            if (v145)
            {
              if (*(v144 + 23) >= 0)
              {
                v147 = v144;
              }

              else
              {
                v147 = *v144;
              }

              memmove(v146, v147, v145);
            }

            *(&v146->__r_.__value_.__l.__data_ + v145) = 95;
            v148 = *(v109 + 144);
            v149 = *(v148 + 23);
            if (v149 >= 0)
            {
              v150 = *(v109 + 144);
            }

            else
            {
              v150 = *v148;
            }

            if (v149 >= 0)
            {
              v151 = *(v148 + 23);
            }

            else
            {
              v151 = *(v148 + 8);
            }

            v152 = std::string::append(&v441, v150, v151);
            v153 = *&v152->__r_.__value_.__l.__data_;
            __str.__r_.__value_.__r.__words[2] = v152->__r_.__value_.__r.__words[2];
            *&__str.__r_.__value_.__l.__data_ = v153;
            v152->__r_.__value_.__l.__size_ = 0;
            v152->__r_.__value_.__r.__words[2] = 0;
            v152->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(v441.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v441.__r_.__value_.__l.__data_);
            }

            siri::intelligence::FormatName(&v402, &__str);
            v154 = std::string::append(&v402, " [label=");
            v155 = *&v154->__r_.__value_.__l.__data_;
            v440.__r_.__value_.__r.__words[2] = v154->__r_.__value_.__r.__words[2];
            *&v440.__r_.__value_.__l.__data_ = v155;
            v154->__r_.__value_.__l.__size_ = 0;
            v154->__r_.__value_.__r.__words[2] = 0;
            v154->__r_.__value_.__r.__words[0] = 0;
            siri::intelligence::FormatName(&v401, *(v143 + 64));
            if ((v401.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v156 = &v401;
            }

            else
            {
              v156 = v401.__r_.__value_.__r.__words[0];
            }

            if ((v401.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v157 = HIBYTE(v401.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v157 = v401.__r_.__value_.__l.__size_;
            }

            v158 = std::string::append(&v440, v156, v157);
            v159 = *&v158->__r_.__value_.__l.__data_;
            v444.__r_.__value_.__r.__words[2] = v158->__r_.__value_.__r.__words[2];
            *&v444.__r_.__value_.__l.__data_ = v159;
            v158->__r_.__value_.__l.__size_ = 0;
            v158->__r_.__value_.__r.__words[2] = 0;
            v158->__r_.__value_.__r.__words[0] = 0;
            v160 = std::string::append(&v444, "];");
            v161 = *&v160->__r_.__value_.__l.__data_;
            v441.__r_.__value_.__r.__words[2] = v160->__r_.__value_.__r.__words[2];
            *&v441.__r_.__value_.__l.__data_ = v161;
            v160->__r_.__value_.__l.__size_ = 0;
            v160->__r_.__value_.__r.__words[2] = 0;
            v160->__r_.__value_.__r.__words[0] = 0;
            std::vector<std::string>::push_back[abi:ne200100](&v436, &v441);
            if (SHIBYTE(v441.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v441.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v444.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v444.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v401.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v401.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v440.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v440.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v402.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v402.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            ++v140;
            v142 -= 8;
          }

          while (v142);
        }

        if (*(v109 + 56) >= 1)
        {
          v162 = *(v109 + 144);
          std::operator+<char>();
          siri::intelligence::FormatName(&v440, &v402);
          v163 = std::string::append(&v440, " [label=Fallback ");
          v164 = *&v163->__r_.__value_.__l.__data_;
          v444.__r_.__value_.__r.__words[2] = v163->__r_.__value_.__r.__words[2];
          *&v444.__r_.__value_.__l.__data_ = v164;
          v163->__r_.__value_.__l.__size_ = 0;
          v163->__r_.__value_.__r.__words[2] = 0;
          v163->__r_.__value_.__r.__words[0] = 0;
          if ((SBYTE7(v424) & 0x80u) == 0)
          {
            v165 = &v423;
          }

          else
          {
            v165 = v423;
          }

          if ((SBYTE7(v424) & 0x80u) == 0)
          {
            v166 = BYTE7(v424);
          }

          else
          {
            v166 = *(&v423 + 1);
          }

          v167 = std::string::append(&v444, v165, v166);
          v168 = *&v167->__r_.__value_.__l.__data_;
          v441.__r_.__value_.__r.__words[2] = v167->__r_.__value_.__r.__words[2];
          *&v441.__r_.__value_.__l.__data_ = v168;
          v167->__r_.__value_.__l.__size_ = 0;
          v167->__r_.__value_.__r.__words[2] = 0;
          v167->__r_.__value_.__r.__words[0] = 0;
          v169 = std::string::append(&v441, "];");
          v170 = *&v169->__r_.__value_.__l.__data_;
          __str.__r_.__value_.__r.__words[2] = v169->__r_.__value_.__r.__words[2];
          *&__str.__r_.__value_.__l.__data_ = v170;
          v169->__r_.__value_.__l.__size_ = 0;
          v169->__r_.__value_.__r.__words[2] = 0;
          v169->__r_.__value_.__r.__words[0] = 0;
          std::vector<std::string>::push_back[abi:ne200100](&v436, &__str);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v441.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v441.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v444.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v444.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v440.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v440.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v402.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v402.__r_.__value_.__l.__data_);
          }
        }

        std::string::basic_string[abi:ne200100]<0>(&__str, "}");
        std::vector<std::string>::push_back[abi:ne200100](&v436, &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }
      }

      v171 = *(v109 + 136);
      if (v171)
      {
        v172 = (v171 + 8);
      }

      else
      {
        v172 = 0;
      }

      v173 = *(v109 + 128);
      if (v173)
      {
        v394 = &v172[v173];
        do
        {
          v174 = *v172;
          v175 = *(*v172 + 40);
          if (v175)
          {
            v176 = (v175 + 8);
          }

          else
          {
            v176 = 0;
          }

          v177 = *(v174 + 32);
          if (v177)
          {
            v178 = 8 * v177;
            do
            {
              v179 = *v176;
              siri::intelligence::FindResponseCondition(&__str, v403, v404, *v176);
              v180 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
              if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v180 = __str.__r_.__value_.__l.__size_;
              }

              if (v180 && (*(v395 + 3) & 1) != 0)
              {
                siri::intelligence::FormatName(&v444, &__str);
                v181 = std::string::insert(&v444, 0, "label=");
                v182 = *&v181->__r_.__value_.__l.__data_;
                v441.__r_.__value_.__r.__words[2] = v181->__r_.__value_.__r.__words[2];
                *&v441.__r_.__value_.__l.__data_ = v182;
                v181->__r_.__value_.__l.__size_ = 0;
                v181->__r_.__value_.__r.__words[2] = 0;
                v181->__r_.__value_.__r.__words[0] = 0;
                if (SHIBYTE(v444.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v444.__r_.__value_.__l.__data_);
                }
              }

              else
              {
                std::string::basic_string[abi:ne200100]<0>(&v441, "");
              }

              v183 = *(v174 + 64);
              if (*(v183 + 23) >= 0)
              {
                v184 = *(v183 + 23);
              }

              else
              {
                v184 = v183[1];
              }

              std::string::basic_string[abi:ne200100](&v397, v184 + 1);
              if ((v397.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v185 = &v397;
              }

              else
              {
                v185 = v397.__r_.__value_.__r.__words[0];
              }

              if (v184)
              {
                if (*(v183 + 23) >= 0)
                {
                  v186 = v183;
                }

                else
                {
                  v186 = *v183;
                }

                memmove(v185, v186, v184);
              }

              *(&v185->__r_.__value_.__l.__data_ + v184) = 95;
              v187 = *(v109 + 144);
              v188 = *(v187 + 23);
              if (v188 >= 0)
              {
                v189 = *(v109 + 144);
              }

              else
              {
                v189 = *v187;
              }

              if (v188 >= 0)
              {
                v190 = *(v187 + 23);
              }

              else
              {
                v190 = *(v187 + 8);
              }

              v191 = std::string::append(&v397, v189, v190);
              v192 = *&v191->__r_.__value_.__l.__data_;
              v398.__r_.__value_.__r.__words[2] = v191->__r_.__value_.__r.__words[2];
              *&v398.__r_.__value_.__l.__data_ = v192;
              v191->__r_.__value_.__l.__size_ = 0;
              v191->__r_.__value_.__r.__words[2] = 0;
              v191->__r_.__value_.__r.__words[0] = 0;
              siri::intelligence::FormatName(&v399, &v398);
              v193 = std::string::append(&v399, " -> ");
              v194 = *&v193->__r_.__value_.__l.__data_;
              v400.__r_.__value_.__r.__words[2] = v193->__r_.__value_.__r.__words[2];
              *&v400.__r_.__value_.__l.__data_ = v194;
              v193->__r_.__value_.__l.__size_ = 0;
              v193->__r_.__value_.__r.__words[2] = 0;
              v193->__r_.__value_.__r.__words[0] = 0;
              siri::intelligence::FormatName(&v396, v179);
              if ((v396.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v195 = &v396;
              }

              else
              {
                v195 = v396.__r_.__value_.__r.__words[0];
              }

              if ((v396.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v196 = HIBYTE(v396.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v196 = v396.__r_.__value_.__l.__size_;
              }

              v197 = std::string::append(&v400, v195, v196);
              v198 = *&v197->__r_.__value_.__l.__data_;
              v401.__r_.__value_.__r.__words[2] = v197->__r_.__value_.__r.__words[2];
              *&v401.__r_.__value_.__l.__data_ = v198;
              v197->__r_.__value_.__l.__size_ = 0;
              v197->__r_.__value_.__r.__words[2] = 0;
              v197->__r_.__value_.__r.__words[0] = 0;
              v199 = std::string::append(&v401, "[");
              v200 = *&v199->__r_.__value_.__l.__data_;
              v402.__r_.__value_.__r.__words[2] = v199->__r_.__value_.__r.__words[2];
              *&v402.__r_.__value_.__l.__data_ = v200;
              v199->__r_.__value_.__l.__size_ = 0;
              v199->__r_.__value_.__r.__words[2] = 0;
              v199->__r_.__value_.__r.__words[0] = 0;
              if ((v441.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v201 = &v441;
              }

              else
              {
                v201 = v441.__r_.__value_.__r.__words[0];
              }

              if ((v441.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v202 = HIBYTE(v441.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v202 = v441.__r_.__value_.__l.__size_;
              }

              v203 = std::string::append(&v402, v201, v202);
              v204 = *&v203->__r_.__value_.__l.__data_;
              v440.__r_.__value_.__r.__words[2] = v203->__r_.__value_.__r.__words[2];
              *&v440.__r_.__value_.__l.__data_ = v204;
              v203->__r_.__value_.__l.__size_ = 0;
              v203->__r_.__value_.__r.__words[2] = 0;
              v203->__r_.__value_.__r.__words[0] = 0;
              v205 = std::string::append(&v440, "];");
              v206 = *&v205->__r_.__value_.__l.__data_;
              v444.__r_.__value_.__r.__words[2] = v205->__r_.__value_.__r.__words[2];
              *&v444.__r_.__value_.__l.__data_ = v206;
              v205->__r_.__value_.__l.__size_ = 0;
              v205->__r_.__value_.__r.__words[2] = 0;
              v205->__r_.__value_.__r.__words[0] = 0;
              siri::intelligence::AppendLineIfNotWritten(&v436, &v434, &v444.__r_.__value_.__l.__data_);
              if (SHIBYTE(v444.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v444.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v440.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v440.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v402.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v402.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v401.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v401.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v396.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v396.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v400.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v400.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v399.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v399.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v398.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v398.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v397.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v397.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v441.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v441.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__str.__r_.__value_.__l.__data_);
              }

              ++v176;
              v178 -= 8;
            }

            while (v178);
          }

          ++v172;
        }

        while (v172 != v394);
      }

      v207 = *(v109 + 64);
      if (v207)
      {
        v208 = v207 + 8;
      }

      else
      {
        v208 = 0;
      }

      v209 = *(v109 + 56);
      v54 = a1;
      a3 = v395;
      if (v209)
      {
        v210 = v208 + 8 * v209;
        do
        {
          v211 = *(*v208 + 64);
          if (v211)
          {
            v212 = (v211 + 8);
          }

          else
          {
            v212 = 0;
          }

          v213 = *(*v208 + 56);
          if (v213)
          {
            v214 = 8 * v213;
            do
            {
              v215 = *v212;
              siri::intelligence::FindResponseCondition(&__str, v403, v404, *v212);
              v216 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
              if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v216 = __str.__r_.__value_.__l.__size_;
              }

              if (v216 && (*(v395 + 3) & 1) != 0)
              {
                siri::intelligence::FormatName(&v444, &__str);
                v217 = std::string::insert(&v444, 0, "label=");
                v218 = *&v217->__r_.__value_.__l.__data_;
                v441.__r_.__value_.__r.__words[2] = v217->__r_.__value_.__r.__words[2];
                *&v441.__r_.__value_.__l.__data_ = v218;
                v217->__r_.__value_.__l.__size_ = 0;
                v217->__r_.__value_.__r.__words[2] = 0;
                v217->__r_.__value_.__r.__words[0] = 0;
                if (SHIBYTE(v444.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v444.__r_.__value_.__l.__data_);
                }
              }

              else
              {
                std::string::basic_string[abi:ne200100]<0>(&v441, "");
              }

              v219 = *(v109 + 144);
              std::operator+<char>();
              siri::intelligence::FormatName(&v399, &v398);
              v220 = std::string::append(&v399, " -> ");
              v221 = *&v220->__r_.__value_.__l.__data_;
              v400.__r_.__value_.__r.__words[2] = v220->__r_.__value_.__r.__words[2];
              *&v400.__r_.__value_.__l.__data_ = v221;
              v220->__r_.__value_.__l.__size_ = 0;
              v220->__r_.__value_.__r.__words[2] = 0;
              v220->__r_.__value_.__r.__words[0] = 0;
              siri::intelligence::FormatName(&v397, v215);
              if ((v397.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v222 = &v397;
              }

              else
              {
                v222 = v397.__r_.__value_.__r.__words[0];
              }

              if ((v397.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v223 = HIBYTE(v397.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v223 = v397.__r_.__value_.__l.__size_;
              }

              v224 = std::string::append(&v400, v222, v223);
              v225 = *&v224->__r_.__value_.__l.__data_;
              v401.__r_.__value_.__r.__words[2] = v224->__r_.__value_.__r.__words[2];
              *&v401.__r_.__value_.__l.__data_ = v225;
              v224->__r_.__value_.__l.__size_ = 0;
              v224->__r_.__value_.__r.__words[2] = 0;
              v224->__r_.__value_.__r.__words[0] = 0;
              v226 = std::string::append(&v401, "[");
              v227 = *&v226->__r_.__value_.__l.__data_;
              v402.__r_.__value_.__r.__words[2] = v226->__r_.__value_.__r.__words[2];
              *&v402.__r_.__value_.__l.__data_ = v227;
              v226->__r_.__value_.__l.__size_ = 0;
              v226->__r_.__value_.__r.__words[2] = 0;
              v226->__r_.__value_.__r.__words[0] = 0;
              if ((v441.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v228 = &v441;
              }

              else
              {
                v228 = v441.__r_.__value_.__r.__words[0];
              }

              if ((v441.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v229 = HIBYTE(v441.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v229 = v441.__r_.__value_.__l.__size_;
              }

              v230 = std::string::append(&v402, v228, v229);
              v231 = *&v230->__r_.__value_.__l.__data_;
              v440.__r_.__value_.__r.__words[2] = v230->__r_.__value_.__r.__words[2];
              *&v440.__r_.__value_.__l.__data_ = v231;
              v230->__r_.__value_.__l.__size_ = 0;
              v230->__r_.__value_.__r.__words[2] = 0;
              v230->__r_.__value_.__r.__words[0] = 0;
              v232 = std::string::append(&v440, "];");
              v233 = *&v232->__r_.__value_.__l.__data_;
              v444.__r_.__value_.__r.__words[2] = v232->__r_.__value_.__r.__words[2];
              *&v444.__r_.__value_.__l.__data_ = v233;
              v232->__r_.__value_.__l.__size_ = 0;
              v232->__r_.__value_.__r.__words[2] = 0;
              v232->__r_.__value_.__r.__words[0] = 0;
              siri::intelligence::AppendLineIfNotWritten(&v436, &v434, &v444.__r_.__value_.__l.__data_);
              if (SHIBYTE(v444.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v444.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v440.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v440.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v402.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v402.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v401.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v401.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v397.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v397.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v400.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v400.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v399.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v399.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v398.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v398.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v441.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v441.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__str.__r_.__value_.__l.__data_);
              }

              ++v212;
              v214 -= 8;
            }

            while (v214);
          }

          v208 += 8;
        }

        while (v208 != v210);
      }

      memset(&__str, 0, sizeof(__str));
      if (*(v109 + 128) < 1)
      {
        v247 = 0;
        v246 = 0;
        v248 = 0;
        v80 = v392;
LABEL_507:
        if (*(v109 + 56) >= 1)
        {
          v250 = *(v109 + 144);
          std::operator+<char>();
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          __str = v441;
          v248 = HIBYTE(v441.__r_.__value_.__r.__words[2]);
          v247 = v441.__r_.__value_.__l.__size_;
          v246 = HIBYTE(v441.__r_.__value_.__r.__words[2]);
        }

        goto LABEL_511;
      }

      v234 = *(*(*(v109 + 136) + 8) + 64);
      v235 = v234[1];
      if (*(v234 + 23) >= 0)
      {
        v236 = *(v234 + 23);
      }

      else
      {
        v236 = v234[1];
      }

      std::string::basic_string[abi:ne200100](&v441, v236 + 1);
      v80 = v392;
      if ((v441.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v237 = &v441;
      }

      else
      {
        v237 = v441.__r_.__value_.__r.__words[0];
      }

      if (v236)
      {
        if (*(v234 + 23) >= 0)
        {
          v238 = v234;
        }

        else
        {
          v238 = *v234;
        }

        memmove(v237, v238, v236);
      }

      *(&v237->__r_.__value_.__l.__data_ + v236) = 95;
      v239 = *(v109 + 144);
      v240 = *(v239 + 23);
      if (v240 >= 0)
      {
        v241 = *(v109 + 144);
      }

      else
      {
        v241 = *v239;
      }

      if (v240 >= 0)
      {
        v242 = *(v239 + 23);
      }

      else
      {
        v242 = *(v239 + 8);
      }

      v243 = std::string::append(&v441, v241, v242);
      v244 = v243->__r_.__value_.__r.__words[0];
      v444.__r_.__value_.__r.__words[0] = v243->__r_.__value_.__l.__size_;
      *(v444.__r_.__value_.__r.__words + 7) = *(&v243->__r_.__value_.__r.__words[1] + 7);
      v245 = HIBYTE(v243->__r_.__value_.__r.__words[2]);
      v243->__r_.__value_.__l.__size_ = 0;
      v243->__r_.__value_.__r.__words[2] = 0;
      v243->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      __str.__r_.__value_.__r.__words[0] = v244;
      __str.__r_.__value_.__l.__size_ = v444.__r_.__value_.__r.__words[0];
      *(&__str.__r_.__value_.__r.__words[1] + 7) = *(v444.__r_.__value_.__r.__words + 7);
      *(&__str.__r_.__value_.__s + 23) = v245;
      if (SHIBYTE(v441.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v441.__r_.__value_.__l.__data_);
        v245 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      v246 = v245;
      v247 = __str.__r_.__value_.__l.__size_;
      v248 = v245;
      if ((v245 & 0x80u) == 0)
      {
        v249 = v245;
      }

      else
      {
        v249 = __str.__r_.__value_.__l.__size_;
      }

      if (!v249)
      {
        goto LABEL_507;
      }

LABEL_511:
      if ((v246 & 0x80u) == 0)
      {
        v247 = v248;
      }

      if (v247)
      {
        if ((*(v80 + 23) & 0x8000000000000000) != 0)
        {
          if (*(v80 + 1))
          {
LABEL_516:
            if ((*(v80 + 47) & 0x8000000000000000) != 0)
            {
              if (!*(v80 + 4))
              {
                goto LABEL_586;
              }
            }

            else if (!*(v80 + 47))
            {
LABEL_586:
              std::string::basic_string[abi:ne200100]<0>(&v441, "");
              goto LABEL_587;
            }

            if ((*(v395 + 3) & 1) == 0)
            {
              goto LABEL_586;
            }

            siri::intelligence::FormatName(&v444, v80 + 24);
            v278 = std::string::insert(&v444, 0, " label=");
            v279 = *&v278->__r_.__value_.__l.__data_;
            v441.__r_.__value_.__r.__words[2] = v278->__r_.__value_.__r.__words[2];
            *&v441.__r_.__value_.__l.__data_ = v279;
            v278->__r_.__value_.__l.__size_ = 0;
            v278->__r_.__value_.__r.__words[2] = 0;
            v278->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(v444.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v444.__r_.__value_.__l.__data_);
            }

LABEL_587:
            siri::intelligence::FormatName(&v397, v80);
            v280 = std::string::append(&v397, " -> ");
            v281 = *&v280->__r_.__value_.__l.__data_;
            v398.__r_.__value_.__r.__words[2] = v280->__r_.__value_.__r.__words[2];
            *&v398.__r_.__value_.__l.__data_ = v281;
            v280->__r_.__value_.__l.__size_ = 0;
            v280->__r_.__value_.__r.__words[2] = 0;
            v280->__r_.__value_.__r.__words[0] = 0;
            siri::intelligence::FormatName(&v396, &__str);
            if ((v396.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v282 = &v396;
            }

            else
            {
              v282 = v396.__r_.__value_.__r.__words[0];
            }

            if ((v396.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v283 = HIBYTE(v396.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v283 = v396.__r_.__value_.__l.__size_;
            }

            v284 = std::string::append(&v398, v282, v283);
            v285 = *&v284->__r_.__value_.__l.__data_;
            v399.__r_.__value_.__r.__words[2] = v284->__r_.__value_.__r.__words[2];
            *&v399.__r_.__value_.__l.__data_ = v285;
            v284->__r_.__value_.__l.__size_ = 0;
            v284->__r_.__value_.__r.__words[2] = 0;
            v284->__r_.__value_.__r.__words[0] = 0;
            v286 = std::string::append(&v399, " [lhead=cluster_");
            v287 = *&v286->__r_.__value_.__l.__data_;
            v400.__r_.__value_.__r.__words[2] = v286->__r_.__value_.__r.__words[2];
            *&v400.__r_.__value_.__l.__data_ = v287;
            v286->__r_.__value_.__l.__size_ = 0;
            v286->__r_.__value_.__r.__words[2] = 0;
            v286->__r_.__value_.__r.__words[0] = 0;
            v288 = *(v109 + 144);
            v289 = *(v288 + 23);
            if (v289 >= 0)
            {
              v290 = *(v109 + 144);
            }

            else
            {
              v290 = *v288;
            }

            if (v289 >= 0)
            {
              v291 = *(v288 + 23);
            }

            else
            {
              v291 = *(v288 + 8);
            }

            v292 = std::string::append(&v400, v290, v291);
            v293 = *&v292->__r_.__value_.__l.__data_;
            v401.__r_.__value_.__r.__words[2] = v292->__r_.__value_.__r.__words[2];
            *&v401.__r_.__value_.__l.__data_ = v293;
            v292->__r_.__value_.__l.__size_ = 0;
            v292->__r_.__value_.__r.__words[2] = 0;
            v292->__r_.__value_.__r.__words[0] = 0;
            v294 = std::string::append(&v401, " minlen=2 ");
            v295 = *&v294->__r_.__value_.__l.__data_;
            v402.__r_.__value_.__r.__words[2] = v294->__r_.__value_.__r.__words[2];
            *&v402.__r_.__value_.__l.__data_ = v295;
            v294->__r_.__value_.__l.__size_ = 0;
            v294->__r_.__value_.__r.__words[2] = 0;
            v294->__r_.__value_.__r.__words[0] = 0;
            if ((v441.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v296 = &v441;
            }

            else
            {
              v296 = v441.__r_.__value_.__r.__words[0];
            }

            if ((v441.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v297 = HIBYTE(v441.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v297 = v441.__r_.__value_.__l.__size_;
            }

            v298 = std::string::append(&v402, v296, v297);
            v299 = *&v298->__r_.__value_.__l.__data_;
            v440.__r_.__value_.__r.__words[2] = v298->__r_.__value_.__r.__words[2];
            *&v440.__r_.__value_.__l.__data_ = v299;
            v298->__r_.__value_.__l.__size_ = 0;
            v298->__r_.__value_.__r.__words[2] = 0;
            v298->__r_.__value_.__r.__words[0] = 0;
            v300 = std::string::append(&v440, "];");
            v301 = *&v300->__r_.__value_.__l.__data_;
            v444.__r_.__value_.__r.__words[2] = v300->__r_.__value_.__r.__words[2];
            *&v444.__r_.__value_.__l.__data_ = v301;
            v300->__r_.__value_.__l.__size_ = 0;
            v300->__r_.__value_.__r.__words[2] = 0;
            v300->__r_.__value_.__r.__words[0] = 0;
            siri::intelligence::AppendLineIfNotWritten(&v436, &v434, &v444.__r_.__value_.__l.__data_);
            if (SHIBYTE(v444.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v444.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v440.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v440.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v402.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v402.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v401.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v401.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v400.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v400.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v399.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v399.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v396.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v396.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v398.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v398.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v397.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v397.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v441.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v441.__r_.__value_.__l.__data_);
            }

            if ((*(&__str.__r_.__value_.__s + 23) & 0x80) == 0)
            {
              goto LABEL_521;
            }

LABEL_626:
            operator delete(__str.__r_.__value_.__l.__data_);
            goto LABEL_521;
          }
        }

        else if (*(v80 + 23))
        {
          goto LABEL_516;
        }
      }

      if ((v246 & 0x80) != 0)
      {
        goto LABEL_626;
      }

LABEL_521:
      if (*(v80 + 120) == 1)
      {
        siri::intelligence::FormatName(&v440, v80);
        v251 = std::string::append(&v440, " [");
        v252 = *&v251->__r_.__value_.__l.__data_;
        v444.__r_.__value_.__r.__words[2] = v251->__r_.__value_.__r.__words[2];
        *&v444.__r_.__value_.__l.__data_ = v252;
        v251->__r_.__value_.__l.__size_ = 0;
        v251->__r_.__value_.__r.__words[2] = 0;
        v251->__r_.__value_.__r.__words[0] = 0;
        if ((SBYTE7(v421) & 0x80u) == 0)
        {
          v253 = &v420;
        }

        else
        {
          v253 = v420;
        }

        if ((SBYTE7(v421) & 0x80u) == 0)
        {
          v254 = BYTE7(v421);
        }

        else
        {
          v254 = *(&v420 + 1);
        }

        v255 = std::string::append(&v444, v253, v254);
        v256 = *&v255->__r_.__value_.__l.__data_;
        v441.__r_.__value_.__r.__words[2] = v255->__r_.__value_.__r.__words[2];
        *&v441.__r_.__value_.__l.__data_ = v256;
        v255->__r_.__value_.__l.__size_ = 0;
        v255->__r_.__value_.__r.__words[2] = 0;
        v255->__r_.__value_.__r.__words[0] = 0;
        v257 = std::string::append(&v441, "];");
        v258 = *&v257->__r_.__value_.__l.__data_;
        __str.__r_.__value_.__r.__words[2] = v257->__r_.__value_.__r.__words[2];
        *&__str.__r_.__value_.__l.__data_ = v258;
        v257->__r_.__value_.__l.__size_ = 0;
        v257->__r_.__value_.__r.__words[2] = 0;
        v257->__r_.__value_.__r.__words[0] = 0;
        siri::intelligence::AppendLineIfNotWritten(&v436, &v434, &__str.__r_.__value_.__l.__data_);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v441.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v441.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v444.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v444.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v440.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v440.__r_.__value_.__l.__data_);
        }
      }

      v259 = *(v80 + 9);
      v260 = *(v80 + 10);
      while (v259 != v260)
      {
        if (*(v259 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__str, *v259, *(v259 + 1));
        }

        else
        {
          v261 = *v259;
          __str.__r_.__value_.__r.__words[2] = *(v259 + 2);
          *&__str.__r_.__value_.__l.__data_ = v261;
        }

        if ((*(v80 + 47) & 0x8000000000000000) != 0)
        {
          if (!*(v80 + 4))
          {
            goto LABEL_548;
          }
        }

        else if (!*(v80 + 47))
        {
          goto LABEL_548;
        }

        if ((*(a3 + 3) & 1) == 0)
        {
LABEL_548:
          std::string::basic_string[abi:ne200100]<0>(&v441, "");
          goto LABEL_549;
        }

        siri::intelligence::FormatName(&v444, v80 + 24);
        v262 = std::string::insert(&v444, 0, " label=");
        v263 = *&v262->__r_.__value_.__l.__data_;
        v441.__r_.__value_.__r.__words[2] = v262->__r_.__value_.__r.__words[2];
        *&v441.__r_.__value_.__l.__data_ = v263;
        v262->__r_.__value_.__l.__size_ = 0;
        v262->__r_.__value_.__r.__words[2] = 0;
        v262->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v444.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v444.__r_.__value_.__l.__data_);
        }

LABEL_549:
        siri::intelligence::FormatName(&v399, v80);
        v264 = std::string::append(&v399, " -> ");
        v265 = *&v264->__r_.__value_.__l.__data_;
        v400.__r_.__value_.__r.__words[2] = v264->__r_.__value_.__r.__words[2];
        *&v400.__r_.__value_.__l.__data_ = v265;
        v264->__r_.__value_.__l.__size_ = 0;
        v264->__r_.__value_.__r.__words[2] = 0;
        v264->__r_.__value_.__r.__words[0] = 0;
        siri::intelligence::FormatName(&v398, &__str);
        if ((v398.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v266 = &v398;
        }

        else
        {
          v266 = v398.__r_.__value_.__r.__words[0];
        }

        if ((v398.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v267 = HIBYTE(v398.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v267 = v398.__r_.__value_.__l.__size_;
        }

        v268 = std::string::append(&v400, v266, v267);
        v269 = *&v268->__r_.__value_.__l.__data_;
        v401.__r_.__value_.__r.__words[2] = v268->__r_.__value_.__r.__words[2];
        *&v401.__r_.__value_.__l.__data_ = v269;
        v268->__r_.__value_.__l.__size_ = 0;
        v268->__r_.__value_.__r.__words[2] = 0;
        v268->__r_.__value_.__r.__words[0] = 0;
        v270 = std::string::append(&v401, "[");
        v271 = *&v270->__r_.__value_.__l.__data_;
        v402.__r_.__value_.__r.__words[2] = v270->__r_.__value_.__r.__words[2];
        *&v402.__r_.__value_.__l.__data_ = v271;
        v270->__r_.__value_.__l.__size_ = 0;
        v270->__r_.__value_.__r.__words[2] = 0;
        v270->__r_.__value_.__r.__words[0] = 0;
        if ((v441.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v272 = &v441;
        }

        else
        {
          v272 = v441.__r_.__value_.__r.__words[0];
        }

        if ((v441.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v273 = HIBYTE(v441.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v273 = v441.__r_.__value_.__l.__size_;
        }

        v274 = std::string::append(&v402, v272, v273);
        v275 = *&v274->__r_.__value_.__l.__data_;
        v440.__r_.__value_.__r.__words[2] = v274->__r_.__value_.__r.__words[2];
        *&v440.__r_.__value_.__l.__data_ = v275;
        v274->__r_.__value_.__l.__size_ = 0;
        v274->__r_.__value_.__r.__words[2] = 0;
        v274->__r_.__value_.__r.__words[0] = 0;
        v276 = std::string::append(&v440, "];");
        v277 = *&v276->__r_.__value_.__l.__data_;
        v444.__r_.__value_.__r.__words[2] = v276->__r_.__value_.__r.__words[2];
        *&v444.__r_.__value_.__l.__data_ = v277;
        v276->__r_.__value_.__l.__size_ = 0;
        v276->__r_.__value_.__r.__words[2] = 0;
        v276->__r_.__value_.__r.__words[0] = 0;
        siri::intelligence::AppendLineIfNotWritten(&v436, &v434, &v444.__r_.__value_.__l.__data_);
        if (SHIBYTE(v444.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v444.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v440.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v440.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v402.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v402.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v401.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v401.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v398.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v398.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v400.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v400.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v399.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v399.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v441.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v441.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v259 = (v259 + 24);
      }

      v80 = (v80 + 128);
      if (v80 == v391)
      {
        v14 = *v54;
        break;
      }
    }
  }

  v302 = *(v14 + 184);
  if (v302)
  {
    v303 = (v302 + 8);
  }

  else
  {
    v303 = 0;
  }

  v304 = *(v14 + 176);
  if (v304)
  {
    v305 = &v303[v304];
    do
    {
      v306 = *v303;
      if (*(*v303 + 32) >= 1)
      {
        v307 = *(v306 + 56);
        siri::intelligence::FormatName(&v444, v307);
        v308 = std::string::insert(&v444, 0, "label=");
        v309 = *&v308->__r_.__value_.__l.__data_;
        v441.__r_.__value_.__r.__words[2] = v308->__r_.__value_.__r.__words[2];
        *&v441.__r_.__value_.__l.__data_ = v309;
        v308->__r_.__value_.__l.__size_ = 0;
        v308->__r_.__value_.__r.__words[2] = 0;
        v308->__r_.__value_.__r.__words[0] = 0;
        v310 = std::string::append(&v441, " shape=rectangle style=diagonals");
        v311 = *&v310->__r_.__value_.__l.__data_;
        __str.__r_.__value_.__r.__words[2] = v310->__r_.__value_.__r.__words[2];
        *&__str.__r_.__value_.__l.__data_ = v311;
        v310->__r_.__value_.__l.__size_ = 0;
        v310->__r_.__value_.__r.__words[2] = 0;
        v310->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v441.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v441.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v444.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v444.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:ne200100]<0>(&v401, "Activity");
        siri::intelligence::FormatName(&v402, &v401, v307);
        v312 = std::string::append(&v402, " [");
        v313 = *&v312->__r_.__value_.__l.__data_;
        v440.__r_.__value_.__r.__words[2] = v312->__r_.__value_.__r.__words[2];
        *&v440.__r_.__value_.__l.__data_ = v313;
        v312->__r_.__value_.__l.__size_ = 0;
        v312->__r_.__value_.__r.__words[2] = 0;
        v312->__r_.__value_.__r.__words[0] = 0;
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v314 = &__str;
        }

        else
        {
          v314 = __str.__r_.__value_.__r.__words[0];
        }

        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v315 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v315 = __str.__r_.__value_.__l.__size_;
        }

        v316 = std::string::append(&v440, v314, v315);
        v317 = *&v316->__r_.__value_.__l.__data_;
        v444.__r_.__value_.__r.__words[2] = v316->__r_.__value_.__r.__words[2];
        *&v444.__r_.__value_.__l.__data_ = v317;
        v316->__r_.__value_.__l.__size_ = 0;
        v316->__r_.__value_.__r.__words[2] = 0;
        v316->__r_.__value_.__r.__words[0] = 0;
        v318 = std::string::append(&v444, "];");
        v319 = *&v318->__r_.__value_.__l.__data_;
        v441.__r_.__value_.__r.__words[2] = v318->__r_.__value_.__r.__words[2];
        *&v441.__r_.__value_.__l.__data_ = v319;
        v318->__r_.__value_.__l.__size_ = 0;
        v318->__r_.__value_.__r.__words[2] = 0;
        v318->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](&v436, &v441);
        if (SHIBYTE(v441.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v441.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v444.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v444.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v440.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v440.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v402.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v402.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v401.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v401.__r_.__value_.__l.__data_);
        }

        v320 = *(v306 + 40);
        if (v320)
        {
          v321 = (v320 + 8);
        }

        else
        {
          v321 = 0;
        }

        v322 = *(v306 + 32);
        if (v322)
        {
          v323 = 8 * v322;
          do
          {
            v324 = *v321;
            std::string::basic_string[abi:ne200100]<0>(&v401, "Activity");
            siri::intelligence::FormatName(&v402, &v401, v307);
            v325 = std::string::append(&v402, " -> ");
            v326 = *&v325->__r_.__value_.__l.__data_;
            v440.__r_.__value_.__r.__words[2] = v325->__r_.__value_.__r.__words[2];
            *&v440.__r_.__value_.__l.__data_ = v326;
            v325->__r_.__value_.__l.__size_ = 0;
            v325->__r_.__value_.__r.__words[2] = 0;
            v325->__r_.__value_.__r.__words[0] = 0;
            siri::intelligence::FormatName(&v400, v324);
            if ((v400.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v327 = &v400;
            }

            else
            {
              v327 = v400.__r_.__value_.__r.__words[0];
            }

            if ((v400.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v328 = HIBYTE(v400.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v328 = v400.__r_.__value_.__l.__size_;
            }

            v329 = std::string::append(&v440, v327, v328);
            v330 = *&v329->__r_.__value_.__l.__data_;
            v444.__r_.__value_.__r.__words[2] = v329->__r_.__value_.__r.__words[2];
            *&v444.__r_.__value_.__l.__data_ = v330;
            v329->__r_.__value_.__l.__size_ = 0;
            v329->__r_.__value_.__r.__words[2] = 0;
            v329->__r_.__value_.__r.__words[0] = 0;
            v331 = std::string::append(&v444, ";");
            v332 = *&v331->__r_.__value_.__l.__data_;
            v441.__r_.__value_.__r.__words[2] = v331->__r_.__value_.__r.__words[2];
            *&v441.__r_.__value_.__l.__data_ = v332;
            v331->__r_.__value_.__l.__size_ = 0;
            v331->__r_.__value_.__r.__words[2] = 0;
            v331->__r_.__value_.__r.__words[0] = 0;
            std::vector<std::string>::push_back[abi:ne200100](&v436, &v441);
            if (SHIBYTE(v441.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v441.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v444.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v444.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v400.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v400.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v440.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v440.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v402.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v402.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v401.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v401.__r_.__value_.__l.__data_);
            }

            ++v321;
            v323 -= 8;
          }

          while (v323);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v54 = v393;
      }

      ++v303;
    }

    while (v303 != v305);
    v14 = *v54;
  }

  if ((*(v14 + 16) & 2) != 0)
  {
    v333 = *(v14 + 536);
    if (!v333)
    {
      google::protobuf::internal::LogMessage::LogMessage(&__str, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 22110);
      v334 = google::protobuf::internal::LogMessage::operator<<(&__str, "CHECK failed: !value || start_ != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v441, &v334->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&__str.__r_.__value_.__l.__data_);
      v333 = *(*v54 + 536);
    }

    if (v333)
    {
      v335 = v333;
    }

    else
    {
      v335 = &protobuf::_Intelligence_Start_default_instance_;
    }

    std::operator+<char>();
    v336 = v335[5];
    if (v336)
    {
      v337 = (v336 + 8);
    }

    else
    {
      v337 = 0;
    }

    v338 = *(v335 + 8);
    if (v338)
    {
      v339 = 8 * v338;
      do
      {
        v340 = *v337;
        std::string::basic_string[abi:ne200100]<0>(&v401, "Start");
        siri::intelligence::FormatName(&v402, &v401, v340);
        v341 = std::string::append(&v402, " [");
        v342 = *&v341->__r_.__value_.__l.__data_;
        v440.__r_.__value_.__r.__words[2] = v341->__r_.__value_.__r.__words[2];
        *&v440.__r_.__value_.__l.__data_ = v342;
        v341->__r_.__value_.__l.__size_ = 0;
        v341->__r_.__value_.__r.__words[2] = 0;
        v341->__r_.__value_.__r.__words[0] = 0;
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v343 = &__str;
        }

        else
        {
          v343 = __str.__r_.__value_.__r.__words[0];
        }

        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v344 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v344 = __str.__r_.__value_.__l.__size_;
        }

        v345 = std::string::append(&v440, v343, v344);
        v346 = *&v345->__r_.__value_.__l.__data_;
        v444.__r_.__value_.__r.__words[2] = v345->__r_.__value_.__r.__words[2];
        *&v444.__r_.__value_.__l.__data_ = v346;
        v345->__r_.__value_.__l.__size_ = 0;
        v345->__r_.__value_.__r.__words[2] = 0;
        v345->__r_.__value_.__r.__words[0] = 0;
        v347 = std::string::append(&v444, "];");
        v348 = *&v347->__r_.__value_.__l.__data_;
        v441.__r_.__value_.__r.__words[2] = v347->__r_.__value_.__r.__words[2];
        *&v441.__r_.__value_.__l.__data_ = v348;
        v347->__r_.__value_.__l.__size_ = 0;
        v347->__r_.__value_.__r.__words[2] = 0;
        v347->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](&v436, &v441);
        if (SHIBYTE(v441.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v441.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v444.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v444.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v440.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v440.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v402.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v402.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v401.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v401.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:ne200100]<0>(&v401, "Start");
        siri::intelligence::FormatName(&v402, &v401, v340);
        v349 = std::string::append(&v402, " -> ");
        v350 = *&v349->__r_.__value_.__l.__data_;
        v440.__r_.__value_.__r.__words[2] = v349->__r_.__value_.__r.__words[2];
        *&v440.__r_.__value_.__l.__data_ = v350;
        v349->__r_.__value_.__l.__size_ = 0;
        v349->__r_.__value_.__r.__words[2] = 0;
        v349->__r_.__value_.__r.__words[0] = 0;
        siri::intelligence::FormatName(&v400, v340);
        if ((v400.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v351 = &v400;
        }

        else
        {
          v351 = v400.__r_.__value_.__r.__words[0];
        }

        if ((v400.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v352 = HIBYTE(v400.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v352 = v400.__r_.__value_.__l.__size_;
        }

        v353 = std::string::append(&v440, v351, v352);
        v354 = *&v353->__r_.__value_.__l.__data_;
        v444.__r_.__value_.__r.__words[2] = v353->__r_.__value_.__r.__words[2];
        *&v444.__r_.__value_.__l.__data_ = v354;
        v353->__r_.__value_.__l.__size_ = 0;
        v353->__r_.__value_.__r.__words[2] = 0;
        v353->__r_.__value_.__r.__words[0] = 0;
        v355 = std::string::append(&v444, ";");
        v356 = *&v355->__r_.__value_.__l.__data_;
        v441.__r_.__value_.__r.__words[2] = v355->__r_.__value_.__r.__words[2];
        *&v441.__r_.__value_.__l.__data_ = v356;
        v355->__r_.__value_.__l.__size_ = 0;
        v355->__r_.__value_.__r.__words[2] = 0;
        v355->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](&v436, &v441);
        if (SHIBYTE(v441.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v441.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v444.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v444.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v400.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v400.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v440.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v440.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v402.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v402.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v401.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v401.__r_.__value_.__l.__data_);
        }

        ++v337;
        v339 -= 8;
      }

      while (v339);
    }

    if (v335[2])
    {
      v357 = v335[6];
      std::string::basic_string[abi:ne200100]<0>(&v401, "Start");
      siri::intelligence::FormatName(&v402, &v401, v357);
      v358 = std::string::append(&v402, " [");
      v359 = *&v358->__r_.__value_.__l.__data_;
      v440.__r_.__value_.__r.__words[2] = v358->__r_.__value_.__r.__words[2];
      *&v440.__r_.__value_.__l.__data_ = v359;
      v358->__r_.__value_.__l.__size_ = 0;
      v358->__r_.__value_.__r.__words[2] = 0;
      v358->__r_.__value_.__r.__words[0] = 0;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v360 = &__str;
      }

      else
      {
        v360 = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v361 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v361 = __str.__r_.__value_.__l.__size_;
      }

      v362 = std::string::append(&v440, v360, v361);
      v363 = *&v362->__r_.__value_.__l.__data_;
      v444.__r_.__value_.__r.__words[2] = v362->__r_.__value_.__r.__words[2];
      *&v444.__r_.__value_.__l.__data_ = v363;
      v362->__r_.__value_.__l.__size_ = 0;
      v362->__r_.__value_.__r.__words[2] = 0;
      v362->__r_.__value_.__r.__words[0] = 0;
      v364 = std::string::append(&v444, "];");
      v365 = *&v364->__r_.__value_.__l.__data_;
      v441.__r_.__value_.__r.__words[2] = v364->__r_.__value_.__r.__words[2];
      *&v441.__r_.__value_.__l.__data_ = v365;
      v364->__r_.__value_.__l.__size_ = 0;
      v364->__r_.__value_.__r.__words[2] = 0;
      v364->__r_.__value_.__r.__words[0] = 0;
      std::vector<std::string>::push_back[abi:ne200100](&v436, &v441);
      if (SHIBYTE(v441.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v441.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v444.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v444.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v440.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v440.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v402.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v402.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v401.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v401.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&v401, "Start");
      siri::intelligence::FormatName(&v402, &v401, v357);
      v366 = std::string::append(&v402, " -> ");
      v367 = *&v366->__r_.__value_.__l.__data_;
      v440.__r_.__value_.__r.__words[2] = v366->__r_.__value_.__r.__words[2];
      *&v440.__r_.__value_.__l.__data_ = v367;
      v366->__r_.__value_.__l.__size_ = 0;
      v366->__r_.__value_.__r.__words[2] = 0;
      v366->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:ne200100]<0>(&v399, "Activity");
      siri::intelligence::FormatName(&v400, &v399, v357);
      if ((v400.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v368 = &v400;
      }

      else
      {
        v368 = v400.__r_.__value_.__r.__words[0];
      }

      if ((v400.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v369 = HIBYTE(v400.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v369 = v400.__r_.__value_.__l.__size_;
      }

      v370 = std::string::append(&v440, v368, v369);
      v371 = *&v370->__r_.__value_.__l.__data_;
      v444.__r_.__value_.__r.__words[2] = v370->__r_.__value_.__r.__words[2];
      *&v444.__r_.__value_.__l.__data_ = v371;
      v370->__r_.__value_.__l.__size_ = 0;
      v370->__r_.__value_.__r.__words[2] = 0;
      v370->__r_.__value_.__r.__words[0] = 0;
      v372 = std::string::append(&v444, ";");
      v373 = *&v372->__r_.__value_.__l.__data_;
      v441.__r_.__value_.__r.__words[2] = v372->__r_.__value_.__r.__words[2];
      *&v441.__r_.__value_.__l.__data_ = v373;
      v372->__r_.__value_.__l.__size_ = 0;
      v372->__r_.__value_.__r.__words[2] = 0;
      v372->__r_.__value_.__r.__words[0] = 0;
      std::vector<std::string>::push_back[abi:ne200100](&v436, &v441);
      if (SHIBYTE(v441.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v441.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v444.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v444.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v400.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v400.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v399.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v399.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v440.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v440.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v402.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v402.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v401.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v401.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&__str, "}");
  std::vector<std::string>::push_back[abi:ne200100](&v436, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  memset(&v402, 0, sizeof(v402));
  v374 = v436;
  v375 = v437;
  if (v436 != v437)
  {
    v376 = 0;
    do
    {
      if (*(v374 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__str, *v374, *(v374 + 1));
      }

      else
      {
        v377 = *v374;
        __str.__r_.__value_.__r.__words[2] = *(v374 + 2);
        *&__str.__r_.__value_.__l.__data_ = v377;
      }

      std::string::basic_string[abi:ne200100]<0>(&v441, "}");
      v378 = siri::intelligence::StringEndsWith(&__str, &v441.__r_.__value_.__l.__data_);
      if (SHIBYTE(v441.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v441.__r_.__value_.__l.__data_);
      }

      v379 = v376 - v378;
      memset(&v441, 0, sizeof(v441));
      v380 = v379;
      if (v379 >= 1)
      {
        do
        {
          std::string::append(&v441, "  ");
          --v380;
        }

        while (v380);
      }

      siri::intelligence::StringTrim(" \t\n\r", &__str, &v440);
      if ((v441.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v381 = &v441;
      }

      else
      {
        v381 = v441.__r_.__value_.__r.__words[0];
      }

      if ((v441.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v382 = HIBYTE(v441.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v382 = v441.__r_.__value_.__l.__size_;
      }

      v383 = std::string::insert(&v440, 0, v381, v382);
      v384 = *&v383->__r_.__value_.__l.__data_;
      v444.__r_.__value_.__r.__words[2] = v383->__r_.__value_.__r.__words[2];
      *&v444.__r_.__value_.__l.__data_ = v384;
      v383->__r_.__value_.__l.__size_ = 0;
      v383->__r_.__value_.__r.__words[2] = 0;
      v383->__r_.__value_.__r.__words[0] = 0;
      std::vector<std::string>::push_back[abi:ne200100](&v402, &v444);
      if (SHIBYTE(v444.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v444.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v440.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v440.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&v444, "{");
      v385 = siri::intelligence::StringEndsWith(&__str, &v444.__r_.__value_.__l.__data_);
      if (SHIBYTE(v444.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v444.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v441.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v441.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v376 = v379 + v385;
      v374 = (v374 + 24);
    }

    while (v374 != v375);
  }

  v386 = siri::intelligence::WriteFileFromLines(&v402, v389);
  __str.__r_.__value_.__r.__words[0] = &v402;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__str);
  __str.__r_.__value_.__r.__words[0] = &v403;
  std::vector<siri::intelligence::ResponseData>::__destroy_vector::operator()[abi:ne200100](&__str);
  siri::intelligence::GraphColors::~GraphColors(__p);
  std::__tree<std::string>::destroy(&v432, v433[0]);
  std::__tree<std::string>::destroy(&v434, v435[0]);
  __p[0] = &v436;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  if (SHIBYTE(v439.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v439.__r_.__value_.__l.__data_);
  }

  v387 = *MEMORY[0x277D85DE8];
  return v386;
}