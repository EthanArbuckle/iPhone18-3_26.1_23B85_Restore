BOOL quasar::QsrText::encodeTokenQsrTextWithMetadata(uint64_t a1, std::string *this, std::string *a3)
{
  v6 = std::string::find(this, 92, 0);
  std::string::basic_string(&v16, this, 0, v6, &v15);
  v7 = quasar::QsrText::encodeTokenQsrText(a1, &v16, a3);
  v8 = v7;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
    if (!v8)
    {
      return v8;
    }

    while (1)
    {
LABEL_5:
      v8 = v6 == -1;
      if (v6 == -1)
      {
        return v8;
      }

      v9 = std::string::find(this, 92, v6 + 1);
      memset(&v16, 0, sizeof(v16));
      std::string::basic_string(&v15, this, v6 + 1, v9 + ~v6, &v17);
      v10 = quasar::QsrText::encodeTokenQsrText(a1, &v15, &v16);
      v11 = v10;
      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
        if (v11)
        {
LABEL_10:
          std::operator+<char>();
          if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v12 = &v15;
          }

          else
          {
            v12 = v15.__r_.__value_.__r.__words[0];
          }

          if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v15.__r_.__value_.__l.__size_;
          }

          std::string::append(a3, v12, size);
          if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v15.__r_.__value_.__l.__data_);
          }

          v6 = v9;
        }
      }

      else if (v10)
      {
        goto LABEL_10;
      }

      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
        if ((v11 & 1) == 0)
        {
          return v8;
        }
      }

      else if ((v11 & 1) == 0)
      {
        return v8;
      }
    }
  }

  if (v7)
  {
    goto LABEL_5;
  }

  return v8;
}

void sub_1B53FF870(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::QsrText::getMetadataStartIndex(uint64_t a1, uint64_t *a2)
{
  result = 0;
  v3 = *(a2 + 23);
  while ((v3 & 0x80) == 0)
  {
    v4 = a2;
    if (result >= v3)
    {
      return v3;
    }

LABEL_6:
    v5 = *(v4 + result);
    if (v5 == 126)
    {
      LODWORD(result) = result + 1;
    }

    else if (v5 == 92)
    {
      return result;
    }

    result = (result + 1);
  }

  v4 = *a2;
  if (a2[1] > result)
  {
    goto LABEL_6;
  }

  return a2[1];
}

BOOL quasar::QsrText::splitOnUserDefinedSymbol(int a1, uint64_t a2, std::string *__str, uint64_t a4, uint64_t a5)
{
  v15.__r_.__value_.__r.__words[0] = 0;
  v9 = std::string::basic_string(&v16, __str, 2uLL, 2uLL, &v17);
  Hex = quasar::QsrText::getHex(v9, &v16, &v15);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  UserDefinedSymbolLocation = quasar::QsrText::findUserDefinedSymbolLocation(Hex, a2, __str);
  v12 = UserDefinedSymbolLocation;
  if (*(a2 + 23) >= 0)
  {
    v13 = *(a2 + 23);
  }

  else
  {
    v13 = *(a2 + 8);
  }

  if (v13 == UserDefinedSymbolLocation)
  {
    std::string::operator=(a4, a2);
    MEMORY[0x1B8C84820](a5, "");
  }

  else
  {
    std::string::basic_string(&v15, a2, 0, UserDefinedSymbolLocation, &v17);
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = v15;
    std::string::basic_string(&v15, a2, v12 + 4, 0xFFFFFFFFFFFFFFFFLL, &v17);
    if (*(a5 + 23) < 0)
    {
      operator delete(*a5);
    }

    *a5 = v15;
  }

  return v13 != v12;
}

void sub_1B53FFA54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::QsrText::findUserDefinedSymbolLocation(int a1, uint64_t *a2, std::string *__str)
{
  v12 = 0;
  v5 = std::string::basic_string(&v11, __str, 2uLL, 2uLL, &v13);
  quasar::QsrText::getHex(v5, &v11, &v12);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  result = 0;
  v7 = *(a2 + 23);
  if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = __str;
  }

  else
  {
    v8 = __str->__r_.__value_.__r.__words[0];
  }

  if ((v7 & 0x80) != 0)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v9 = a2;
    if (result >= v7 - 3)
    {
      break;
    }

    while (1)
    {
      if (*(v9 + result) != 126 || (v10 = result + 1, *(v9 + result + 1) != 126))
      {
        if (*(v9 + result) == 126 && *(v9 + result + 1) == 119 && *(v9 + result + 2) == v8->__r_.__value_.__s.__data_[2])
        {
          v10 = result;
          if (*(v9 + result + 3) == v8->__r_.__value_.__s.__data_[3])
          {
            return result;
          }
        }

        else
        {
          v10 = result;
        }
      }

      result = (v10 + 1);
      if ((v7 & 0x80) == 0)
      {
        break;
      }

LABEL_9:
      v9 = *a2;
      if (result >= *(a2 + 2) - 3)
      {
        return *(a2 + 2);
      }
    }
  }

  return *(a2 + 23);
}

void sub_1B53FFBA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_set<char>::unordered_set(uint64_t a1, char *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v4 = a3;
    do
    {
      std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::__emplace_unique_key_args<char,char const&>(a1, a2++);
      --v4;
    }

    while (v4);
  }

  return a1;
}

uint64_t **std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::__emplace_unique_key_args<char,char const&>(void *a1, char *a2)
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
    if (*&v3 <= v2)
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

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 16) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t std::unordered_map<unsigned long,char>::unordered_map(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 16 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<unsigned long,char>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,char>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,char>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,char>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long const,char> const&>(a1, a2);
      a2 += 2;
      v5 -= 16;
    }

    while (v5);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long,char>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,char>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,char>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,char>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long const,char> const&>(void *a1, unint64_t *a2)
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

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t std::unordered_map<char32_t,char32_t>::unordered_map(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 8 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<char32_t,char32_t>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,char32_t>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,char32_t>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,char32_t>>>::__emplace_unique_key_args<char32_t,std::pair<char32_t const,char32_t> const&>(a1, a2);
      a2 += 2;
      v5 -= 8;
    }

    while (v5);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<char32_t,char32_t>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,char32_t>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,char32_t>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,char32_t>>>::__emplace_unique_key_args<char32_t,std::pair<char32_t const,char32_t> const&>(void *a1, unsigned int *a2)
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
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
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

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t **std::__hash_table<std::__hash_value_type<char,unsigned long>,std::__unordered_map_hasher<char,std::__hash_value_type<char,unsigned long>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,unsigned long>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,unsigned long>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(void *a1, char *a2)
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
    if (*&v3 <= v2)
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

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 16) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t **std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::find<char>(void *a1, char *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 16) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void quasar::getCharRange(uint64_t *a1@<X0>, int a2@<W1>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<std::pair<int,int>>::reserve(a3, 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 5));
  v6 = *a1;
  v7 = a1[1];
  if (*a1 != v7)
  {
    v8 = 0;
    do
    {
      if (a2)
      {
        v8 += *(v6 + 45);
      }

      v9 = *(v6 + 23);
      if (v9 < 0)
      {
        v9 = *(v6 + 8);
      }

      v10 = v8 + v9;
      v11 = v8 | ((v8 + v9 - 1) << 32);
      v13 = a3[1];
      v12 = a3[2];
      if (v13 >= v12)
      {
        v15 = (v13 - *a3) >> 3;
        if ((v15 + 1) >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v16 = v12 - *a3;
        v17 = v16 >> 2;
        if (v16 >> 2 <= (v15 + 1))
        {
          v17 = v15 + 1;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFF8)
        {
          v18 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v17;
        }

        if (v18)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a3, v18);
        }

        v19 = (8 * v15);
        *v19 = v11;
        v14 = 8 * v15 + 8;
        v20 = a3[1] - *a3;
        v21 = v19 - v20;
        memcpy(v19 - v20, *a3, v20);
        v22 = *a3;
        *a3 = v21;
        a3[1] = v14;
        a3[2] = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v13 = v11;
        v14 = (v13 + 1);
      }

      a3[1] = v14;
      v8 = v10 + *(v6 + 44);
      v6 += 224;
    }

    while (v6 != v7);
  }
}

void sub_1B54007FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void quasar::getPreItnTokenToPostItnCharAlignment(std::wstring *a1@<X0>, std::wstring *a2@<X1>, void **a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (*a3)
  {
    (*a3)[1] = **a3;
  }

  if (a1->__r_.__value_.__l.__size_ != a1->__r_.__value_.__r.__words[0] && a2->__r_.__value_.__l.__size_ != a2->__r_.__value_.__r.__words[0])
  {
    quasar::getCharRange(a2, 0, &v52);
    v8 = a1->__r_.__value_.__r.__words[0];
    v9 = 0x6DB6DB6DB6DB6DB7 * ((a1->__r_.__value_.__l.__size_ - a1->__r_.__value_.__r.__words[0]) >> 5);
    if (a1->__r_.__value_.__l.__size_ == a1->__r_.__value_.__r.__words[0])
    {
      LODWORD(v12) = 0;
      v11 = 0;
    }

    else
    {
      v10 = 0;
      v11 = 0;
      LODWORD(v12) = 0;
      v13 = 0;
      while (1)
      {
        v14 = v12;
        v15 = 0x6DB6DB6DB6DB6DB7 * ((a2->__r_.__value_.__l.__size_ - a2->__r_.__value_.__r.__words[0]) >> 5);
        v12 = v13;
        LODWORD(v16) = v11;
LABEL_8:
        v17 = v16;
        v18 = v15 > v16;
        v16 = v15 <= v16 ? v16 : 0x6DB6DB6DB6DB6DB7 * ((a2->__r_.__value_.__l.__size_ - a2->__r_.__value_.__r.__words[0]) >> 5);
        if (!v18)
        {
          break;
        }

        v19 = 0;
        v20 = *(v8 + 224 * v10 + 28);
        v21 = v17 - v16;
        v22 = (a2->__r_.__value_.__r.__words[0] + 172 + 224 * v17);
        while (1)
        {
          v23 = *(v22 - 36);
          if (v20 == v23)
          {
            break;
          }

          if (v20 < v23)
          {
            LODWORD(v16) = v17 - v19;
            v10 = ++v12;
            if (v9 > v12)
            {
              goto LABEL_8;
            }

            goto LABEL_27;
          }

          --v19;
          v22 += 224;
          if (v21 == v19)
          {
            goto LABEL_27;
          }
        }

        v24 = *v22;
        v25 = v24 + v17 - v19;
        if (v12 >= 1 && v25 > 0)
        {
          v26 = *&v52[8 * v11];
          v27 = *&v52[8 * (v24 + v17 - 1 - v19) + 4];
          if (v26 <= v27)
          {
            v45 = v24 + v17 - 1 - v19;
            v46 = *v22;
            v28 = v14;
            LODWORD(v51[0]) = v14;
            DWORD1(v51[0]) = v12 - 1;
            *(&v51[0] + 1) = __PAIR64__(v27, v26);
            std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100](a4, v51);
            v29 = *a3;
            v24 = v46;
            if (*a3)
            {
              LODWORD(v51[0]) = v28;
              DWORD1(v51[0]) = v12 - 1;
              *(&v51[0] + 1) = __PAIR64__(v45, v11);
              std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100](v29, v51);
              v24 = v46;
            }
          }
        }

        v13 = v12 + 1;
        v8 = a1->__r_.__value_.__r.__words[0];
        v9 = 0x6DB6DB6DB6DB6DB7 * ((a1->__r_.__value_.__l.__size_ - a1->__r_.__value_.__r.__words[0]) >> 5);
        v10 = v12 + 1;
        v11 = v25;
        if (v9 <= v10)
        {
          v11 = v17 + v24 - v19;
          goto LABEL_29;
        }
      }

LABEL_27:
      LODWORD(v12) = v14;
    }

LABEL_29:
    if (v11 < ((v53 - v52) >> 3))
    {
      v30 = *&v52[8 * v11];
      v31 = *&v52[0x6DB6DB6DB6DB6DB7 * ((a2->__r_.__value_.__l.__size_ - a2->__r_.__value_.__r.__words[0]) >> 2) - 4];
      if (v30 <= v31)
      {
        LODWORD(v51[0]) = v12;
        DWORD1(v51[0]) = v9 - 1;
        *(&v51[0] + 1) = __PAIR64__(v31, v30);
        std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100](a4, v51);
        v32 = *a3;
        if (*a3)
        {
          v33 = (a2->__r_.__value_.__l.__size_ - a2->__r_.__value_.__r.__words[0]) >> 5;
          *&v51[0] = __PAIR64__(-1227133513 * ((a1->__r_.__value_.__l.__size_ - a1->__r_.__value_.__r.__words[0]) >> 5) - 1, v12);
          DWORD2(v51[0]) = v11;
          HIDWORD(v51[0]) = -1227133513 * v33 - 1;
          std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100](v32, v51);
        }
      }
    }

    if (quasar::gLogLevel >= 6)
    {
      memset(v51, 0, sizeof(v51));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v51);
      v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "pre = ", 7);
      quasar::formatResultTokensSimple(a1, 0);
      if ((v50 & 0x80u) == 0)
      {
        v35 = v49;
      }

      else
      {
        v35 = v49[0];
      }

      if ((v50 & 0x80u) == 0)
      {
        v36 = v50;
      }

      else
      {
        v36 = v49[1];
      }

      v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, v35, v36);
      v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, " ", 2);
      v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "post = ", 8);
      quasar::formatResultTokensSimple(a2, 0);
      if ((v48 & 0x80u) == 0)
      {
        v40 = __p;
      }

      else
      {
        v40 = __p[0];
      }

      if ((v48 & 0x80u) == 0)
      {
        v41 = v48;
      }

      else
      {
        v41 = __p[1];
      }

      v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, v40, v41);
      v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, " ", 2);
      v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, "map = ", 6);
      quasar::operator<<(v44, a4);
      if (v48 < 0)
      {
        operator delete(__p[0]);
      }

      if (v50 < 0)
      {
        operator delete(v49[0]);
      }

      quasar::QuasarTraceMessage::~QuasarTraceMessage(v51);
    }

    if (v52)
    {
      v53 = v52;
      operator delete(v52);
    }
  }
}

void sub_1B5400C40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  v28 = *(v26 - 112);
  if (v28)
  {
    *(v26 - 104) = v28;
    operator delete(v28);
  }

  v29 = *v25;
  if (*v25)
  {
    *(v25 + 8) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(exception_object);
}

void *quasar::operator<<(void *a1, unsigned int **a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[", 1);
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    v6 = 1;
    do
    {
      if ((v6 & 1) == 0)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ",", 1);
      }

      quasar::operator<<(a1, v4);
      v6 = 0;
      v4 += 4;
    }

    while (v4 != v5);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "]", 1);
  return a1;
}

{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "{start: ", 10);
  v5 = MEMORY[0x1B8C84C00](v4, *a2);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " end: ", 8);
  v7 = MEMORY[0x1B8C84C00](v6, *(a2 + 1));
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " isStable: ", 13);
  v9 = MEMORY[0x1B8C84BD0](v8, *(a2 + 8));
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " sourceSideSegmentationBoundary: ", 35);
  v11 = MEMORY[0x1B8C84BD0](v10, *(a2 + 10));
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " haveSourceSideInfo: ", 23);
  v13 = MEMORY[0x1B8C84BD0](v12, *(a2 + 9));
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " sourceTokenIDs: [", 20);
  v28[0] = ",";
  v28[1] = 1;
  quasar::join<std::vector<int>>(a2 + 2, v28);
  if ((v30 & 0x80u) == 0)
  {
    v15 = v29;
  }

  else
  {
    v15 = v29[0];
  }

  if ((v30 & 0x80u) == 0)
  {
    v16 = v30;
  }

  else
  {
    v16 = v29[1];
  }

  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v16);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "]", 1);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " targetTokenIDs: [", 20);
  v25[0] = ",";
  v25[1] = 1;
  quasar::join<std::vector<int>>(a2 + 5, v25);
  if ((v27 & 0x80u) == 0)
  {
    v20 = __p;
  }

  else
  {
    v20 = __p[0];
  }

  if ((v27 & 0x80u) == 0)
  {
    v21 = v27;
  }

  else
  {
    v21 = __p[1];
  }

  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v20, v21);
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "]", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "}", 1);
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  return a1;
}

void *quasar::operator<<(void *a1, unsigned int *a2)
{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[", 1);
  v5 = MEMORY[0x1B8C84C00](v4, *a2);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ",", 1);
  v7 = MEMORY[0x1B8C84C00](v6, a2[1]);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ",", 1);
  v9 = MEMORY[0x1B8C84C00](v8, a2[2]);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ",", 1);
  v11 = MEMORY[0x1B8C84C00](v10, a2[3]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "]", 1);
  return a1;
}

{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "{start: ", 8);
  v5 = MEMORY[0x1B8C84C00](v4, *a2);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ", end: ", 7);
  v7 = MEMORY[0x1B8C84C00](v6, a2[1]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "}", 1);
  return a1;
}

{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "{frame=", 7);
  v5 = MEMORY[0x1B8C84C00](v4, *a2);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " finalActive=", 13);
  v7 = MEMORY[0x1B8C84BD0](v6, *(a2 + 4));
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " words=[", 8);
  v29[0] = ",";
  v29[1] = 1;
  quasar::join<std::vector<std::string>>(a2 + 1, v29);
  if ((v31 & 0x80u) == 0)
  {
    v9 = v30;
  }

  else
  {
    v9 = v30[0];
  }

  if ((v31 & 0x80u) == 0)
  {
    v10 = v31;
  }

  else
  {
    v10 = v30[1];
  }

  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v9, v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "]", 1);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " ids=[", 6);
  v26[0] = ",";
  v26[1] = 1;
  quasar::join<std::vector<int>>(a2 + 4, v26);
  if ((v28 & 0x80u) == 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  if ((v28 & 0x80u) == 0)
  {
    v15 = v28;
  }

  else
  {
    v15 = __p[1];
  }

  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v14, v15);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "]", 1);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " trailingSilence=", 17);
  v19 = MEMORY[0x1B8C84C00](v18, a2[14]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " silencePosterior=", 18);
  v20 = std::ostream::operator<<();
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " allowTrigger=", 14);
  v22 = MEMORY[0x1B8C84BD0](v21, *(a2 + 64));
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " chunkEnd=", 10);
  v24 = MEMORY[0x1B8C84BD0](v23, *(a2 + 66));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "}", 1);
  if (v28 < 0)
  {
    operator delete(__p[0]);
  }

  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  return a1;
}

{
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[", 1);
  v4 = MEMORY[0x1B8C84C00](v3, *a2);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ", ", 2);
  v6 = MEMORY[0x1B8C84C00](v5, a2[1]);

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "]", 1);
}

{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "{start: ", 10);
  v5 = MEMORY[0x1B8C84C00](v4, *a2);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ", length: ", 12);
  v7 = MEMORY[0x1B8C84C00](v6, a2[1]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "}", 1);
  return a1;
}

double kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::ConvolutionalMaxPoolingComponent(uint64_t a1, int a2, int a3)
{
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = &unk_1F2D279F8;
  *(a1 + 56) = xmmword_1B5AE0070;
  *(a1 + 72) = -1082130432;
  *(a1 + 76) = 0x100000003;
  *(a1 + 84) = 0;
  *(a1 + 86) = 0;
  *a1 = &unk_1F2D11758;
  *(a1 + 88) = &unk_1F2D11890;
  *(a1 + 96) = &unk_1F2D118B8;
  result = 0.0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  __asm { FMOV            V1.2S, #1.0 }

  *(a1 + 264) = _D1;
  *(a1 + 272) = 0;
  *(a1 + 276) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0;
  return result;
}

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::ConvolutionalMaxPoolingComponent(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D15BB8;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(a1 + 24, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 3);
  *a1 = &unk_1F2D172B0;
  *(a1 + 48) = &unk_1F2D279F8;
  v5 = *(a2 + 56);
  *(a1 + 71) = *(a2 + 71);
  *(a1 + 56) = v5;
  *a1 = &unk_1F2D11758;
  *(a1 + 88) = &unk_1F2D11890;
  *(a1 + 96) = &unk_1F2D118B8;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 168), (*(a2 + 176) - *(a2 + 168)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::vector[abi:ne200100]((a1 + 192), (*(a2 + 200) - *(a2 + 192)) >> 3);
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 216, *(a2 + 216), *(a2 + 224), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 224) - *(a2 + 216)) >> 4));
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(a1 + 240, *(a2 + 240), *(a2 + 248), (*(a2 + 248) - *(a2 + 240)) >> 5);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 276) = *(a2 + 276);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 288) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 288, *(a2 + 288), *(a2 + 296), (*(a2 + 296) - *(a2 + 288)) >> 2);
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 312, *(a2 + 312), *(a2 + 320), (*(a2 + 320) - *(a2 + 312)) >> 2);
  *(a1 + 552) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0;
  if (*(a1 + 16) == 1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "deep copy constructor not implemented in the case of vectorized_weights.", 72);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v15);
  }

  v6 = *(a2 + 152);
  if (v6)
  {
    kaldi::NewCuSubOrMat<float>(v6, 0);
  }

  if (*(a2 + 160))
  {
    kaldi::NewCuSubOrVec<float>();
  }

  v8 = *(a1 + 168);
  v7 = *(a1 + 176);
  if (v7 != v8)
  {
    v9 = 0;
    do
    {
      v10 = *(*(a2 + 168) + 8 * v9);
      if (v10)
      {
        kaldi::NewCuSubOrMat<float>(v10, *(a1 + 16));
      }

      ++v9;
    }

    while (v9 < (v7 - v8) >> 3);
  }

  v12 = *(a1 + 192);
  v11 = *(a1 + 200);
  if (v11 != v12)
  {
    v13 = 0;
    do
    {
      if (*(*(a2 + 192) + 8 * v13))
      {
        kaldi::NewCuSubOrVec<float>();
      }

      ++v13;
    }

    while (v13 < (v11 - v12) >> 3);
  }

  if (*(a2 + 496) != *(a2 + 488))
  {
    kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::InitResidualAggregator(a1, (a1 + 488));
  }

  return a1;
}

void sub_1B54018FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _Unwind_Exception *exception_object, quasar::Bitmap *a13, void *a14)
{
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(v16);
  v18 = *(v14 + 57);
  if (v18)
  {
    operator delete(v18);
  }

  a14 = (v14 + 432);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = (v14 + 408);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = (v14 + 384);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = (v14 + 360);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = (v14 + 336);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  v19 = *(v14 + 39);
  if (v19)
  {
    *(v14 + 40) = v19;
    operator delete(v19);
  }

  v20 = *(v14 + 36);
  if (v20)
  {
    *(v14 + 37) = v20;
    operator delete(v20);
  }

  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a14);
  v21 = *(v14 + 20);
  *(v14 + 20) = 0;
  if (v21)
  {
    (*(*v21 + 16))(v21);
  }

  v22 = *v17;
  *v17 = 0;
  if (v22)
  {
    (*(*v22 + 24))(v22);
  }

  quasar::Bitmap::~Bitmap(v15);
  quasar::Bitmap::~Bitmap(a13);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v14);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::InitResidualAggregator(void *a1, uint64_t *a2)
{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::EnsureCorrs(a1);
  kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, *(a1[21] + 8 * ((((a1[22] - a1[21]) << 29) - 0x100000000) >> 32)));
  v4 = *(a1[24] + 8 * ((((a1[25] - a1[24]) << 29) - 0x100000000) >> 32));

  kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v4);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::~ConvolutionalMaxPoolingComponent(uint64_t a1)
{
  *a1 = &unk_1F2D11758;
  v2 = (a1 + 88);
  *(a1 + 88) = &unk_1F2D11890;
  v3 = (a1 + 96);
  *(a1 + 96) = &unk_1F2D118B8;
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator((a1 + 488));
  v4 = *(a1 + 456);
  if (v4)
  {
    operator delete(v4);
  }

  v9 = (a1 + 432);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 408);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 384);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 360);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 336);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v5 = *(a1 + 312);
  if (v5)
  {
    *(a1 + 320) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 288);
  if (v6)
  {
    *(a1 + 296) = v6;
    operator delete(v6);
  }

  v9 = (a1 + 240);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 216);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 192);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 168);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v7 = *(a1 + 160);
  *(a1 + 160) = 0;
  if (v7)
  {
    (*(*v7 + 16))(v7);
  }

  v8 = *(a1 + 152);
  *(a1 + 152) = 0;
  if (v8)
  {
    (*(*v8 + 24))(v8);
  }

  quasar::Bitmap::~Bitmap(v3);
  quasar::Bitmap::~Bitmap(v2);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(a1);
}

{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::~ConvolutionalMaxPoolingComponent(a1);

  JUMPOUT(0x1B8C85350);
}

void non-virtual thunk tokaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::~ConvolutionalMaxPoolingComponent(uint64_t a1)
{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::~ConvolutionalMaxPoolingComponent(a1 - 88);
}

{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::~ConvolutionalMaxPoolingComponent(a1 - 96);
}

{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::~ConvolutionalMaxPoolingComponent(a1 - 88);

  JUMPOUT(0x1B8C85350);
}

{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::~ConvolutionalMaxPoolingComponent(a1 - 96);

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::InitData(uint64_t a1, uint64_t *a2, kaldi::UniformRandomNumber *a3)
{
  v84 = 0x40000000;
  v85 = -1073741824;
  v83 = 1036831949;
  *(a1 + 116) = *(a1 + 8);
  v6 = (a1 + 116);
  *(a1 + 132) = 0x100000001;
  v7 = (a1 + 132);
  v82 = -1;
  memset(v81, 0, sizeof(v81));
  v8 = a2 + 4;
  v9 = (a1 + 280);
  v72 = (a1 + 136);
  v73 = (a1 + 264);
  v10 = (a1 + 124);
  v70 = (a1 + 120);
  v71 = (a1 + 128);
  v74 = (a1 + 268);
  v75 = (a1 + 112);
  v76 = (a1 + 108);
  v11 = (a1 + 104);
  while (1)
  {
    if ((*(v8 + *(*a2 - 24)) & 2) != 0)
    {
      v50 = *(a1 + 8);
      v51 = *(a1 + 12);
      v52 = *(a1 + 104);
      v53 = *(a1 + 108);
      v54 = *(a1 + 132);
      v55 = v50 / v52 - *(a1 + 128);
      v56 = *(a1 + 120);
      v57 = *(a1 + 136);
      v58 = (v56 - v54) / v57 + 1;
      *(a1 + 148) = v58;
      v59 = v53 * v58;
      v60 = v51 / v59;
      *(a1 + 140) = v55;
      *(a1 + 144) = v51 / v59;
      if (v54 >= 1 && v56 >= v54)
      {
        if (v57 > 0)
        {
          if (v51 == v59 * v60)
          {
            if (v50 == v50 / v52 * v52)
            {
              if (*v10 + *v75 * (v56 - 1) + *v6 * (v60 - 1) <= v55)
              {
                if (v82 >= 1)
                {
                  kaldi::UniformRandomNumber::SetRandomSeeds(a3, v82);
                }

                kaldi::GaussRandomNumber::GaussRandomNumber(v79, a3);
                kaldi::Matrix<float>::Matrix(v77, ((*(a1 + 128) + *(a1 + 124)) * *(a1 + 104)), (*(a1 + 144) * *(a1 + 108)), 0, 0);
                for (i = 0; i < kaldi::MatrixBase<float>::NumRows(v77); ++i)
                {
                  for (j = 0; j < kaldi::MatrixBase<float>::NumCols(v77); ++j)
                  {
                    v63 = *&v83;
                    kaldi::GaussRandomNumber::Rand(v79, 0);
                    *(v77[0] + 4 * i * v78 + 4 * j) = v63 * v64;
                  }
                }

                if (!*(a1 + 152))
                {
                  operator new();
                }

                kaldi::KaldiWarnMessage::KaldiWarnMessage(v80);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, "pointer is thought to be un-initialized here", 44);
                kaldi::KaldiErrorMessage::~KaldiErrorMessage(v80);
              }

              kaldi::KaldiWarnMessage::KaldiWarnMessage(v80);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, "ConvolutionalMaxPoolingComponent: too few input bands to compute the output", 75);
              kaldi::KaldiErrorMessage::~KaldiErrorMessage(v80);
            }

            kaldi::KaldiWarnMessage::KaldiWarnMessage(v80);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, "ConvolutionalMaxPoolingComponent: input dim mismatch", 52);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(v80);
          }

          kaldi::KaldiWarnMessage::KaldiWarnMessage(v80);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, "ConvolutionalMaxPoolingComponent: output dim mismatch", 53);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(v80);
        }

        kaldi::KaldiWarnMessage::KaldiWarnMessage(v80);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, "ConvolutionalMaxPoolingComponent: Max pooling step must be >= 1", 63);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v80);
      }

      kaldi::KaldiWarnMessage::KaldiWarnMessage(v80);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, "ConvolutionalMaxPoolingComponent: Invalid max pooling size", 58);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v80);
    }

    kaldi::ReadToken(a2, 0, v81);
    if (SHIBYTE(v81[2]) < 0)
    {
      break;
    }

    if (HIBYTE(v81[2]) <= 0xCu)
    {
      if (HIBYTE(v81[2]) > 0xAu)
      {
        if (HIBYTE(v81[2]) != 11)
        {
          v23 = v81[0] == 0x537265746C69463CLL && LODWORD(v81[1]) == 1046837865;
          v14 = v10;
          if (v23)
          {
            goto LABEL_186;
          }

LABEL_163:
          v44 = v81;
          goto LABEL_180;
        }

        if (v81[0] != 0x6E6152736169423CLL || *(v81 + 3) != 0x3E65676E61527361)
        {
          v30 = v81[0] == 0x745368637461503CLL && *(v81 + 3) == 0x3E70657453686374;
          v14 = v75;
          if (!v30)
          {
            goto LABEL_205;
          }

          goto LABEL_186;
        }

LABEL_171:
        v21 = &v84;
        goto LABEL_187;
      }

      if (HIBYTE(v81[2]) == 9)
      {
        goto LABEL_164;
      }

      if (HIBYTE(v81[2]) != 10)
      {
        goto LABEL_205;
      }

      if (v81[0] != 0x61654D736169423CLL || LOWORD(v81[1]) != 15982)
      {
        v13 = v81[0] == 0x7A69536C6F6F503CLL && LOWORD(v81[1]) == 15973;
        v14 = v7;
        if (v13)
        {
          goto LABEL_186;
        }

        v15 = v81[0] == 0x6574536C6F6F503CLL && LOWORD(v81[1]) == 15984;
        v14 = v72;
        if (v15)
        {
          goto LABEL_186;
        }

LABEL_161:
        if (HIBYTE(v81[2]) != 9)
        {
          if (HIBYTE(v81[2]) != 12)
          {
            goto LABEL_205;
          }

          goto LABEL_163;
        }

LABEL_164:
        v45 = v81[0] == 0x6D726F4E78614D3CLL && LOBYTE(v81[1]) == 62;
        v21 = v9;
        if (!v45)
        {
          goto LABEL_205;
        }

        goto LABEL_187;
      }

LABEL_170:
      v21 = &v85;
      goto LABEL_187;
    }

    if (HIBYTE(v81[2]) > 0xFu)
    {
      if (HIBYTE(v81[2]) == 16)
      {
        v22 = v81[0] == 0x7461654674754F3CLL && v81[1] == 0x3E7370614D657275;
        goto LABEL_95;
      }

      if (HIBYTE(v81[2]) != 19 || (v81[0] == 0x61654C736169423CLL ? (v24 = v81[1] == 0x6F43657461526E72) : (v24 = 0), v24 ? (v25 = *(&v81[1] + 3) == 0x3E66656F43657461) : (v25 = 0), v21 = v74, !v25))
      {
LABEL_205:
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v80);
        v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, "Unknown token ", 14);
        if (v81[2] >= 0)
        {
          v66 = v81;
        }

        else
        {
          v66 = v81[0];
        }

        if (v81[2] >= 0)
        {
          v67 = HIBYTE(v81[2]);
        }

        else
        {
          v67 = v81[1];
        }

        v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, v66, v67);
        v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, ", a typo in config?", 19);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, " (ParamStddev|BiasMean|BiasRange|InFeatureMaps|OutFeatureMaps|PatchStep|SectionStep|SectionSize|FilterSize|LearnRateCoef|BiasLearnRateCoef|MaxNorm|RandomSeed)", 158);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v80);
      }
    }

    else
    {
      if (HIBYTE(v81[2]) == 13)
      {
        if (v81[0] != 0x74536D617261503CLL || *(v81 + 5) != 0x3E7665646474536DLL)
        {
          v27 = v81[0] == 0x6E6F69746365533CLL && *(v81 + 5) == 0x3E706574536E6F69;
          v14 = v6;
          if (!v27)
          {
            v28 = v81[0] == 0x6E6F69746365533CLL && *(v81 + 5) == 0x3E657A69536E6F69;
            v14 = v70;
            if (!v28)
            {
              goto LABEL_205;
            }
          }

          goto LABEL_186;
        }

LABEL_169:
        v21 = &v83;
        goto LABEL_187;
      }

      if (HIBYTE(v81[2]) != 15)
      {
        goto LABEL_205;
      }

      v18 = v81[0] == 0x75746165466E493CLL && *(v81 + 7) == 0x3E7370614D657275;
      v14 = v11;
      if (v18)
      {
        goto LABEL_186;
      }

      v19 = v81[0] == 0x65726168536E493CLL && *(v81 + 7) == 0x3E73646E61426465;
      v14 = v71;
      if (v19)
      {
        goto LABEL_186;
      }

      v20 = v81[0] == 0x61526E7261654C3CLL && *(v81 + 7) == 0x3E66656F43657461;
      v21 = v73;
      if (!v20)
      {
        goto LABEL_205;
      }
    }

LABEL_187:
    kaldi::ReadBasicType<float>(a2, 0, v21);
LABEL_188:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  v16 = v81[1];
  if (v81[1] > 12)
  {
    switch(v81[1])
    {
      case 0xDLL:
        if (*v81[0] == 0x74536D617261503CLL && *(v81[0] + 5) == 0x3E7665646474536DLL)
        {
          goto LABEL_169;
        }

        v34 = *v81[0] == 0x6E6F69746365533CLL && *(v81[0] + 5) == 0x3E706574536E6F69;
        v14 = v6;
        if (v34)
        {
          goto LABEL_186;
        }

        v35 = *v81[0] == 0x6E6F69746365533CLL && *(v81[0] + 5) == 0x3E657A69536E6F69;
        v14 = v70;
        if (v35)
        {
          goto LABEL_186;
        }

        break;
      case 0xFLL:
        v38 = *v81[0] == 0x75746165466E493CLL && *(v81[0] + 7) == 0x3E7370614D657275;
        v14 = v11;
        if (v38)
        {
          goto LABEL_186;
        }

        v39 = *v81[0] == 0x65726168536E493CLL && *(v81[0] + 7) == 0x3E73646E61426465;
        v14 = v71;
        if (v39)
        {
          goto LABEL_186;
        }

        break;
      case 0x10:
        v22 = *v81[0] == 0x7461654674754F3CLL && *(v81[0] + 8) == 0x3E7370614D657275;
LABEL_95:
        v14 = v76;
        if (!v22)
        {
          goto LABEL_205;
        }

        goto LABEL_186;
      default:
        goto LABEL_145;
    }
  }

  else
  {
    switch(v81[1])
    {
      case 0xALL:
        if (*v81[0] == 0x61654D736169423CLL && *(v81[0] + 8) == 15982)
        {
          goto LABEL_170;
        }

        v32 = *v81[0] == 0x7A69536C6F6F503CLL && *(v81[0] + 8) == 15973;
        v14 = v7;
        if (v32)
        {
          goto LABEL_186;
        }

        break;
      case 0xBLL:
        if (*v81[0] == 0x6E6152736169423CLL && *(v81[0] + 3) == 0x3E65676E61527361)
        {
          goto LABEL_171;
        }

        v37 = *v81[0] == 0x745368637461503CLL && *(v81[0] + 3) == 0x3E70657453686374;
        v14 = v75;
        if (v37)
        {
          goto LABEL_186;
        }

        break;
      case 0xCLL:
        v17 = *v81[0] == 0x537265746C69463CLL && *(v81[0] + 8) == 1046837865;
        v14 = v10;
        if (v17)
        {
          goto LABEL_186;
        }

        break;
      default:
LABEL_145:
        if (v16 == 15)
        {
          v41 = *v81[0] == 0x61526E7261654C3CLL && *(v81[0] + 7) == 0x3E66656F43657461;
          v21 = v73;
          if (v41)
          {
            goto LABEL_187;
          }

          if ((v81[2] & 0x8000000000000000) == 0)
          {
            goto LABEL_161;
          }
        }

        if (v81[1] == 9)
        {
          v46 = *v81[0] == 0x6D726F4E78614D3CLL && *(v81[0] + 8) == 62;
          v21 = v9;
          if (!v46)
          {
            if ((v81[2] & 0x8000000000000000) == 0)
            {
              goto LABEL_205;
            }

LABEL_178:
            if (v81[1] != 12)
            {
              goto LABEL_205;
            }

            v44 = v81[0];
LABEL_180:
            v47 = *v44;
            v48 = *(v44 + 2);
            if (v47 != 0x536D6F646E61523CLL || v48 != 1046766949)
            {
              goto LABEL_205;
            }

            v14 = &v82;
LABEL_186:
            kaldi::ReadBasicType<int>(a2, 0, v14);
            goto LABEL_188;
          }
        }

        else
        {
          if (v81[1] != 19)
          {
            goto LABEL_178;
          }

          v43 = *v81[0] == 0x61654C736169423CLL && *(v81[0] + 8) == 0x6F43657461526E72 && *(v81[0] + 11) == 0x3E66656F43657461;
          v21 = v74;
          if (!v43)
          {
            if ((v81[2] & 0x8000000000000000) != 0)
            {
              goto LABEL_178;
            }

            goto LABEL_161;
          }
        }

        goto LABEL_187;
    }
  }

  v16 = v81[1];
  if (v81[1] == 10)
  {
    v40 = *v81[0] == 0x6574536C6F6F503CLL && *(v81[0] + 8) == 15984;
    v14 = v72;
    if (v40)
    {
      goto LABEL_186;
    }

    v16 = v81[1];
  }

  goto LABEL_145;
}

void sub_1B5402C14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (*(v24 - 121) < 0)
  {
    operator delete(*(v24 - 144));
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::ReadData(uint64_t a1, uint64_t *a2, int a3)
{
  *(a1 + 116) = *(a1 + 8);
  v6 = a1 + 116;
  *(a1 + 132) = 0x100000001;
  v7 = a1 + 132;
  if (kaldi::Peek(a2, a3) != 60)
  {
LABEL_151:
    v40 = *(a1 + 12);
    v41 = *(a1 + 108);
    v42 = *(a1 + 8) / *(a1 + 104) - *(a1 + 128);
    v43 = (*(a1 + 120) - *(a1 + 132)) / *(a1 + 136) + 1;
    *(a1 + 148) = v43;
    *(a1 + 16) = 0;
    *(a1 + 140) = v42;
    *(a1 + 144) = v40 / (v41 * v43);
    LOBYTE(v49) = 0;
    kaldi::ReadBasicType<char>(a2, a3, &v49);
    if (!*(a1 + 152))
    {
      kaldi::ExpectToken(a2, a3, "<Filters>");
      operator new();
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "pointer is thought to be un-initialized here");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
  }

  while (1)
  {
    v49 = 0uLL;
    v50 = 0;
    kaldi::ReadToken(a2, a3, &v49);
    if (SHIBYTE(v50) < 0)
    {
      if (*(&v49 + 1) == 15)
      {
        v11 = *v49 == 0x75746165466E493CLL && *(v49 + 7) == 0x3E7370614D657275;
        v9 = a1 + 104;
        if (v11)
        {
          goto LABEL_141;
        }
      }

      if (*(&v49 + 1) == 16)
      {
        v12 = *v49 == 0x7461654674754F3CLL && *(v49 + 8) == 0x3E7370614D657275;
        v9 = a1 + 108;
        if (v12)
        {
          goto LABEL_141;
        }
      }

      if (*(&v49 + 1) == 13)
      {
        v14 = *v49 == 0x6E6F69746365533CLL && *(v49 + 5) == 0x3E706574536E6F69;
        v9 = v6;
        if (v14)
        {
          goto LABEL_141;
        }
      }

      else if (*(&v49 + 1) == 11)
      {
        v13 = *v49 == 0x745368637461503CLL && *(v49 + 3) == 0x3E70657453686374;
        v9 = a1 + 112;
        if (v13)
        {
          goto LABEL_141;
        }
      }

      v15 = *(&v49 + 1);
      if (*(&v49 + 1) == 13)
      {
        v16 = *v49 == 0x6E6F69746365533CLL && *(v49 + 5) == 0x3E657A69536E6F69;
        v9 = a1 + 120;
        if (v16)
        {
          goto LABEL_141;
        }

        v15 = *(&v49 + 1);
      }

      if (v15 == 12)
      {
        v17 = *v49 == 0x537265746C69463CLL && *(v49 + 8) == 1046837865;
        v9 = a1 + 124;
        if (v17)
        {
          goto LABEL_141;
        }

        if ((v50 & 0x8000000000000000) == 0)
        {
          goto LABEL_57;
        }
      }

      if (*(&v49 + 1) == 10)
      {
        v33 = *v49 == 0x7A69536C6F6F503CLL && *(v49 + 8) == 15973;
        v9 = v7;
        if (v33)
        {
          goto LABEL_141;
        }

        if ((v50 & 0x8000000000000000) == 0)
        {
          if (HIBYTE(v50) == 19)
          {
            goto LABEL_71;
          }

          if (HIBYTE(v50) == 15)
          {
            goto LABEL_121;
          }

          if (HIBYTE(v50) != 10)
          {
            goto LABEL_142;
          }

          goto LABEL_94;
        }
      }

      else if (*(&v49 + 1) == 15)
      {
        v18 = *v49 == 0x65726168536E493CLL && *(v49 + 7) == 0x3E73646E61426465;
        v9 = a1 + 128;
        if (v18)
        {
          goto LABEL_141;
        }

        if ((v50 & 0x8000000000000000) == 0)
        {
LABEL_57:
          if (HIBYTE(v50) != 10)
          {
            if (HIBYTE(v50) == 15)
            {
LABEL_121:
              v34 = v49 == 0x61526E7261654C3CLL && *(&v49 + 7) == 0x3E66656F43657461;
              v26 = (a1 + 264);
              if (!v34)
              {
                goto LABEL_142;
              }

              goto LABEL_147;
            }

LABEL_70:
            if (HIBYTE(v50) != 19)
            {
              goto LABEL_142;
            }

LABEL_71:
            v20 = &v49;
            goto LABEL_72;
          }

LABEL_90:
          v29 = v49 == 0x7A69536C6F6F503CLL && WORD4(v49) == 15973;
          v9 = v7;
          if (v29)
          {
            goto LABEL_141;
          }

LABEL_94:
          v30 = v49 == 0x6574536C6F6F503CLL && WORD4(v49) == 15984;
          v9 = v6 + 20;
          if (!v30)
          {
            goto LABEL_142;
          }

          goto LABEL_141;
        }
      }

      v35 = *(&v49 + 1);
      if (*(&v49 + 1) != 10)
      {
        goto LABEL_133;
      }

      v36 = *v49 == 0x6574536C6F6F503CLL && *(v49 + 8) == 15984;
      v9 = v6 + 20;
      if (!v36)
      {
        v35 = *(&v49 + 1);
LABEL_133:
        if (v35 == 15)
        {
          v37 = *v49 == 0x61526E7261654C3CLL && *(v49 + 7) == 0x3E66656F43657461;
          v26 = (a1 + 264);
          if (!v37)
          {
            if (v50 < 0)
            {
              goto LABEL_139;
            }

LABEL_142:
            v38 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v49, "<MaxNorm>");
            v26 = (a1 + 280);
            if (!v38)
            {
              if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v49, "<GradientNormType>"))
              {
                __p[0] = 0;
                __p[1] = 0;
                v48 = 0;
                kaldi::ReadToken(a2, a3, __p);
                *(a1 + 272) = kaldi::nnet1::Component::MarkerToGradientNormType(__p);
                if (SHIBYTE(v48) < 0)
                {
                  operator delete(__p[0]);
                }

                goto LABEL_148;
              }

              v39 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v49, "<MaxGrad>");
              v26 = (a1 + 276);
              if (!v39)
              {
                kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
                v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "unrecognized config token ", 26);
                if (v50 >= 0)
                {
                  v45 = &v49;
                }

                else
                {
                  v45 = v49;
                }

                if (v50 >= 0)
                {
                  v46 = HIBYTE(v50);
                }

                else
                {
                  v46 = *(&v49 + 1);
                }

                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, v45, v46);
                kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
              }
            }
          }

LABEL_147:
          kaldi::ReadBasicType<float>(a2, a3, v26);
          goto LABEL_148;
        }

LABEL_139:
        if (*(&v49 + 1) != 19)
        {
          goto LABEL_142;
        }

        v20 = v49;
LABEL_72:
        v21 = *v20;
        v22 = v20[1];
        v23 = *(v20 + 11);
        v25 = v21 == 0x61654C736169423CLL && v22 == 0x6F43657461526E72 && v23 == 0x3E66656F43657461;
        v26 = (a1 + 268);
        if (!v25)
        {
          goto LABEL_142;
        }

        goto LABEL_147;
      }
    }

    else if (HIBYTE(v50) <= 0xCu)
    {
      if (HIBYTE(v50) == 10)
      {
        goto LABEL_90;
      }

      if (HIBYTE(v50) != 11)
      {
        goto LABEL_62;
      }

      v32 = v49 == 0x745368637461503CLL && *(&v49 + 3) == 0x3E70657453686374;
      v9 = a1 + 112;
      if (!v32)
      {
        goto LABEL_142;
      }
    }

    else if (HIBYTE(v50) > 0xFu)
    {
      if (HIBYTE(v50) != 16)
      {
        goto LABEL_70;
      }

      v31 = v49 == 0x7461654674754F3CLL && *(&v49 + 1) == 0x3E7370614D657275;
      v9 = a1 + 108;
      if (!v31)
      {
        goto LABEL_142;
      }
    }

    else
    {
      if (HIBYTE(v50) == 13)
      {
        v27 = v49 == 0x6E6F69746365533CLL && *(&v49 + 5) == 0x3E706574536E6F69;
        v9 = v6;
        if (v27)
        {
          goto LABEL_141;
        }

        v28 = v49 == 0x6E6F69746365533CLL && *(&v49 + 5) == 0x3E657A69536E6F69;
        v9 = a1 + 120;
        if (v28)
        {
          goto LABEL_141;
        }

LABEL_62:
        if (HIBYTE(v50) != 12)
        {
          goto LABEL_142;
        }

        v19 = v49 == 0x537265746C69463CLL && DWORD2(v49) == 1046837865;
        v9 = a1 + 124;
        if (!v19)
        {
          goto LABEL_142;
        }

        goto LABEL_141;
      }

      if (HIBYTE(v50) != 15)
      {
        goto LABEL_142;
      }

      v8 = v49 == 0x75746165466E493CLL && *(&v49 + 7) == 0x3E7370614D657275;
      v9 = a1 + 104;
      if (!v8)
      {
        v10 = v49 == 0x65726168536E493CLL && *(&v49 + 7) == 0x3E73646E61426465;
        v9 = a1 + 128;
        if (!v10)
        {
          goto LABEL_121;
        }
      }
    }

LABEL_141:
    kaldi::ReadBasicType<int>(a2, a3, v9);
LABEL_148:
    if (SHIBYTE(v50) < 0)
    {
      operator delete(v49);
    }

    if (kaldi::Peek(a2, a3) != 60)
    {
      goto LABEL_151;
    }
  }
}

void sub_1B5403634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v24 - 89) < 0)
  {
    operator delete(*(v24 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::ReadBasicType<char>(void *a1, int a2, _BYTE *a3)
{
  v17[51] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = std::istream::get();
    if (v5 == -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v17);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v17, "ReadBasicType: encountered end of stream.");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
    }

    v6 = v5;
    if (v5 << 24 != 0x1000000)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v17);
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "ReadBasicType: did not get expected integer type, ", 50);
      v13 = MEMORY[0x1B8C84C00](v12, v6);
      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " vs. ", 5);
      v15 = MEMORY[0x1B8C84C00](v14, 1);
      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ".  You can change this code to successfully", 43);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v16, " read it later, if needed.");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
    }

    result = std::istream::read();
  }

  else
  {
    LOWORD(v17[0]) = 0;
    result = MEMORY[0x1B8C84B00](a1, v17);
    *a3 = v17[0];
  }

  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v17);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Read failure in ReadBasicType, file position is ", 48);
    std::istream::tellg();
    v9 = MEMORY[0x1B8C84C60](v8, v17[50]);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ", next char is ", 15);
    v11 = std::istream::peek();
    MEMORY[0x1B8C84C00](v10, v11);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
  }

  return result;
}

void sub_1B5403874(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::WriteConfig(unsigned int *a1, void *a2, uint64_t a3)
{
  kaldi::WriteToken(a2, a3, "<InFeatureMaps>");
  kaldi::WriteBasicType<int>(a2, a3, a1[26]);
  kaldi::WriteToken(a2, a3, "<OutFeatureMaps>");
  kaldi::WriteBasicType<int>(a2, a3, a1[27]);
  kaldi::WriteToken(a2, a3, "<PatchStep>");
  kaldi::WriteBasicType<int>(a2, a3, a1[28]);
  kaldi::WriteToken(a2, a3, "<SectionStep>");
  kaldi::WriteBasicType<int>(a2, a3, a1[29]);
  kaldi::WriteToken(a2, a3, "<SectionSize>");
  kaldi::WriteBasicType<int>(a2, a3, a1[30]);
  kaldi::WriteToken(a2, a3, "<FilterSize>");
  kaldi::WriteBasicType<int>(a2, a3, a1[31]);
  kaldi::WriteToken(a2, a3, "<InSharedBands>");
  kaldi::WriteBasicType<int>(a2, a3, a1[32]);
  kaldi::WriteToken(a2, a3, "<PoolSize>");
  kaldi::WriteBasicType<int>(a2, a3, a1[33]);
  kaldi::WriteToken(a2, a3, "<PoolStep>");
  kaldi::WriteBasicType<int>(a2, a3, a1[34]);
  kaldi::WriteToken(a2, a3, "<LearnRateCoef>");
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<BiasLearnRateCoef>");
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<MaxNorm>");
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<GradientNormType>");
  kaldi::nnet1::Component::TypeToMarker(a1[68], &__p);
  kaldi::WriteToken(a2, a3, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteToken(a2, a3, "<MaxGrad>");
  return kaldi::WriteBasicType<float>(a2, a3);
}

void sub_1B5403ACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::WriteData(uint64_t *a1, void *a2, int a3, int a4)
{
  (*(*a1 + 168))(a1);
  kaldi::WriteBasicType<char>(a2, a3, 0);
  kaldi::WriteToken(a2, a3, "<Filters>");
  kaldi::CuMatrixBase<float>::Write(a1[19], a2, a3, a4);
  kaldi::WriteToken(a2, a3, "<Bias>");
  v8 = a1[20];

  kaldi::CuVectorBase<float>::Write(v8, a2, a3);
}

uint64_t kaldi::WriteBasicType<char>(void *a1, int a2, uint64_t a3)
{
  if (a2)
  {
    std::ostream::put();
    result = std::ostream::write();
  }

  else
  {
    v5 = MEMORY[0x1B8C84C40](a1, a3);
    result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " ", 1);
  }

  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Write failure in WriteBasicType.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

const void **kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::GetParams(void *a1, void **a2)
{
  v4 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a2, v4, 0);
  v5 = a1[19];
  v6 = *(v5 + 16) * *(v5 + 20);
  v11 = 0;
  v12 = 0;
  v10 = *a2;
  LODWORD(v11) = v6;
  kaldi::VectorBase<float>::CopyRowsFromMat(&v10, v5);
  v7 = a1[20];
  v8 = *(v7 + 16);
  v11 = 0;
  v12 = 0;
  v10 = *a2 + 4 * v6;
  LODWORD(v11) = v8;
  return kaldi::CuVectorBase<float>::CopyToVec<float>(v7, &v10);
}

void *kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::SetParams(void *a1, char **a2)
{
  (*(*a1 + 176))(a1);
  v4 = a1[19];
  v5 = *(v4 + 16) * *(v4 + 20);
  v10 = 0;
  v11 = 0;
  v9 = *a2;
  LODWORD(v10) = v5;
  kaldi::CuMatrixBase<float>::CopyRowsFromVec(v4, &v9);
  v6 = a1[20];
  v7 = v6[4];
  v10 = 0;
  v11 = 0;
  v9 = &(*a2)[4 * v5];
  LODWORD(v10) = v7;
  return kaldi::CuVectorBase<float>::CopyFromVec<float>(v6, &v9);
}

float kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::GetNormalizedLearningRate(uint64_t a1, int a2)
{
  if ((*(a1 + 84) & 1) == 0)
  {
    return *(a1 + 56);
  }

  v2 = *(a1 + 312);
  v3 = *(a1 + 320) - v2;
  if (!v3)
  {
    return NAN;
  }

  v4 = v3 >> 2;
  if (v4 <= a2)
  {
    return NAN;
  }

  v5 = v4 - 1;
  if (a2 >= 0)
  {
    v5 = a2;
  }

  return *(v2 + 4 * v5);
}

float kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::SumParams(uint64_t a1)
{
  v2 = kaldi::CuMatrixBase<float>::Sum(*(a1 + 152));
  v3 = kaldi::CuVectorBase<float>::Sum(*(a1 + 160));
  return v2 + *&v3;
}

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::PerturbParams(uint64_t a1, float a2)
{
  kaldi::CuMatrix<float>::CuMatrix(v7, *(*(a1 + 152) + 20), *(*(a1 + 152) + 16), 1, 0, 0);
  kaldi::CuMatrixBase<float>::SetRandn(v7);
  kaldi::CuMatrixBase<float>::AddMat(*(a1 + 152), v7, 111, a2, 1.0);
  kaldi::CuVector<float>::CuVector(v6, *(a1 + 160));
  kaldi::CuVectorBase<float>::SetRandn(v6);
  *&v4 = a2;
  kaldi::CuVectorBase<float>::AddVec(v4, 1.0);
  kaldi::CuVector<float>::~CuVector(v6);
  return kaldi::CuMatrix<float>::~CuMatrix(v7);
}

void sub_1B5403F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::Info(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v25, " ");
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::ParamsString(a1);
  if ((v24 & 0x80u) == 0)
  {
    v4 = v23;
  }

  else
  {
    v4 = v23[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v5 = v24;
  }

  else
  {
    v5 = v23[1];
  }

  v6 = std::string::append(&v25, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = std::string::append(&v26, "\n  filters");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::MomentStatistics<float>(*(a1 + 152));
  if ((v22 & 0x80u) == 0)
  {
    v10 = v21;
  }

  else
  {
    v10 = v21[0];
  }

  if ((v22 & 0x80u) == 0)
  {
    v11 = v22;
  }

  else
  {
    v11 = v21[1];
  }

  v12 = std::string::append(&v27, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v28, "\n  bias");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::MomentStatistics<float>(*(a1 + 160));
  if ((v20 & 0x80u) == 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  if ((v20 & 0x80u) == 0)
  {
    v17 = v20;
  }

  else
  {
    v17 = __p[1];
  }

  v18 = std::string::append(&v29, v16, v17);
  *a2 = *v18;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }
}

void sub_1B5404128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v45 - 41) < 0)
  {
    operator delete(*(v45 - 64));
  }

  if (*(v45 - 73) < 0)
  {
    operator delete(*(v45 - 96));
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::ParamsString(unsigned int *a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  (*(*a1 + 168))(a1, &v6, 0);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " , # of sections: ", 18);
  v3 = MEMORY[0x1B8C84C00](v2, a1[36]);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, ", section size after pooling: ", 30);
  MEMORY[0x1B8C84C00](v4, a1[37]);
  std::stringbuf::str();
  v6 = *MEMORY[0x1E69E54E8];
  *(&v6 + *(v6 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v7 = MEMORY[0x1E69E5548] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v8);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v10);
}

void sub_1B5404394(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::InfoGradient(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v49, " ");
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::ParamsString(a1);
  if ((v48 & 0x80u) == 0)
  {
    v4 = v47;
  }

  else
  {
    v4 = v47[0];
  }

  if ((v48 & 0x80u) == 0)
  {
    v5 = v48;
  }

  else
  {
    v5 = v47[1];
  }

  v6 = std::string::append(&v49, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v50.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v50.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = std::string::append(&v50, "\n  filters_grad");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v51.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v51.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::MomentStatistics<float>((a1 + 168));
  if ((v46 & 0x80u) == 0)
  {
    v10 = v45;
  }

  else
  {
    v10 = v45[0];
  }

  if ((v46 & 0x80u) == 0)
  {
    v11 = v46;
  }

  else
  {
    v11 = v45[1];
  }

  v12 = std::string::append(&v51, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v52.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v52.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v52, ", lr-coef ");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v53.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v53.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::ToString<float>();
  if ((v44 & 0x80u) == 0)
  {
    v16 = v43;
  }

  else
  {
    v16 = v43[0];
  }

  if ((v44 & 0x80u) == 0)
  {
    v17 = v44;
  }

  else
  {
    v17 = v43[1];
  }

  v18 = std::string::append(&v53, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v54.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v54.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v54, ", max-norm ");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v55.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v55.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::ToString<float>();
  if ((v42 & 0x80u) == 0)
  {
    v22 = v41;
  }

  else
  {
    v22 = v41[0];
  }

  if ((v42 & 0x80u) == 0)
  {
    v23 = v42;
  }

  else
  {
    v23 = v41[1];
  }

  v24 = std::string::append(&v55, v22, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v56.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v56.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v56, "\n  bias_grad");
  v27 = *&v26->__r_.__value_.__l.__data_;
  v57.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&v57.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::MomentStatistics<float>((a1 + 192));
  if ((v40 & 0x80u) == 0)
  {
    v28 = v39;
  }

  else
  {
    v28 = v39[0];
  }

  if ((v40 & 0x80u) == 0)
  {
    v29 = v40;
  }

  else
  {
    v29 = v39[1];
  }

  v30 = std::string::append(&v57, v28, v29);
  v31 = *&v30->__r_.__value_.__l.__data_;
  v58.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&v58.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v32 = std::string::append(&v58, ", lr-coef ");
  v33 = *&v32->__r_.__value_.__l.__data_;
  v59.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
  *&v59.__r_.__value_.__l.__data_ = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::ToString<float>();
  if ((v38 & 0x80u) == 0)
  {
    v34 = __p;
  }

  else
  {
    v34 = __p[0];
  }

  if ((v38 & 0x80u) == 0)
  {
    v35 = v38;
  }

  else
  {
    v35 = __p[1];
  }

  v36 = std::string::append(&v59, v34, v35);
  *a2 = *v36;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  if (v38 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if (v40 < 0)
  {
    operator delete(v39[0]);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (v42 < 0)
  {
    operator delete(v41[0]);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (v44 < 0)
  {
    operator delete(v43[0]);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (v46 < 0)
  {
    operator delete(v45[0]);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (v48 < 0)
  {
    operator delete(v47[0]);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }
}

void sub_1B5404780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v73 - 57) < 0)
  {
    operator delete(*(v73 - 80));
  }

  if (*(v73 - 89) < 0)
  {
    operator delete(*(v73 - 112));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v73 - 121) < 0)
  {
    operator delete(*(v73 - 144));
  }

  if (*(v73 - 153) < 0)
  {
    operator delete(*(v73 - 176));
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v73 - 185) < 0)
  {
    operator delete(*(v73 - 208));
  }

  if (*(v73 - 217) < 0)
  {
    operator delete(*(v73 - 240));
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a73 < 0)
  {
    operator delete(a72);
  }

  if (a71 < 0)
  {
    operator delete(a66);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a64 < 0)
  {
    operator delete(a59);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  _Unwind_Resume(a1);
}

void *kaldi::nnet1::MomentStatistics<float>(void *a1)
{
  v2 = *(**a1 + 16);
  v7[1] = 0;
  v8 = 0;
  v7[0] = &unk_1F2D3AC18;
  v9 = 0;
  kaldi::CuVector<float>::Resize(v7, v2, 0);
  if (a1[1] != *a1)
  {
    v4 = 0;
    do
    {
      LODWORD(v3) = 1.0;
      kaldi::CuVectorBase<float>::AddVec(v3, 1.0);
      ++v4;
    }

    while (v4 < (a1[1] - *a1) >> 3);
  }

  memset(v6, 0, sizeof(v6));
  kaldi::Vector<float>::Init(v6, v8);
  kaldi::CuVectorBase<float>::CopyToVec<float>(v7, v6);
  kaldi::nnet1::MomentStatistics<float>(v6);
  kaldi::Vector<float>::Destroy(v6);
  return kaldi::CuVector<float>::~CuVector(v7);
}

{
  v2 = *(*a1 + 16);
  v8[1] = 0;
  v9 = 0;
  v8[0] = &unk_1F2D3AC18;
  v10 = 0;
  kaldi::CuVector<float>::Resize(v8, v2, 0);
  if (a1[1] != *a1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      LODWORD(v3) = 1.0;
      kaldi::CuVectorBase<float>::AddVec(v3, 1.0);
      ++v5;
      v4 += 32;
    }

    while (v5 < (a1[1] - *a1) >> 5);
  }

  memset(v7, 0, sizeof(v7));
  kaldi::Vector<float>::Init(v7, v9);
  kaldi::CuVectorBase<float>::CopyToVec<float>(v8, v7);
  kaldi::nnet1::MomentStatistics<float>(v7);
  kaldi::Vector<float>::Destroy(v7);
  return kaldi::CuVector<float>::~CuVector(v8);
}

void sub_1B5404A08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  kaldi::Vector<float>::Destroy(va);
  kaldi::CuVector<float>::~CuVector(va1);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::GetGradient(void *a1, uint64_t a2, uint64_t a3, void **a4)
{
  v8 = (*(*a1 + 16))(a1);
  kaldi::CuMatrix<float>::CuMatrix(v17, *(a3 + 20), *(a3 + 16), 0, 0, 0);
  kaldi::CuMatrix<float>::CuMatrix(v16, *(a2 + 20), *(a2 + 16), 0, 0, 0);
  (*(*v8 + 112))(v8, a2, v17, 0);
  (*(*v8 + 128))(v8, a2, v17, a3, v16, 0);
  (*(*v8 + 232))(v8, a2, a3, 0, 0);
  v9 = a1[19];
  LODWORD(a2) = *(v9 + 16);
  LODWORD(a3) = *(v9 + 20);
  v10 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a4, v10, 1);
  LODWORD(a3) = a2 * a3;
  v14 = 0;
  v15 = 0;
  v13 = *a4;
  LODWORD(v14) = a3;
  kaldi::VectorBase<float>::CopyRowsFromMat(&v13, **(v8 + 168));
  v11 = *(a1[20] + 16);
  v14 = 0;
  v15 = 0;
  v13 = *a4 + 4 * a3;
  LODWORD(v14) = v11;
  kaldi::CuVectorBase<float>::CopyToVec<float>(**(v8 + 192), &v13);
  (*(*v8 + 8))(v8);
  kaldi::CuMatrix<float>::~CuMatrix(v16);
  return kaldi::CuMatrix<float>::~CuMatrix(v17);
}

void sub_1B5404C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  kaldi::CuMatrix<float>::~CuMatrix(va1);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::SetGradientNormalization(uint64_t result, int a2, float a3)
{
  *(result + 276) = a3;
  *(result + 272) = a2;
  *(result + 480) = 0;
  return result;
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::NormalizeGradients(uint64_t a1, int a2, float a3)
{
  v4 = a3;
  v6 = *(a1 + 272);
  if (v6 == 3)
  {
    if (a3 >= 0.0 && a3 <= 1.0)
    {
      kaldi::nnet1::UpdatableComponent::RmspropGradient(*(*(a1 + 168) + 8 * a2), *(a1 + 216) + 48 * a2, a3);
      v10 = *(*(a1 + 192) + 8 * a2);
      v11 = *(a1 + 240) + 32 * a2;

      kaldi::nnet1::UpdatableComponent::RmspropGradient(v10, v11, v4);
    }
  }

  else if (v6 == 2)
  {
    if (a3 > 0.0)
    {
      v8 = a2;
      if (*(a1 + 84))
      {
        v4 = *(*(a1 + 288) + 4 * a2) * a3;
      }

      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(*(*(a1 + 168) + 8 * a2), (*(a1 + 216) + 48 * a2), v4);
      v12 = *(*(a1 + 192) + 8 * v8);
      v13 = (*(a1 + 240) + 32 * v8);

      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v12, v13, v4);
    }
  }

  else if (v6 == 1 && a3 > 0.0)
  {
    v7 = a2;
    if (*(a1 + 84))
    {
      v4 = *(*(a1 + 288) + 4 * a2) * a3;
    }

    kaldi::nnet1::UpdatableComponent::ClipGradient(*(*(a1 + 168) + 8 * a2), v4);
    v14 = *(*(a1 + 192) + 8 * v7);

    kaldi::nnet1::UpdatableComponent::ClipGradient(v14, v4);
  }
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::CountZeroCorr(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::EnsureCorrs(a1);
  *a3 = *(*(a1 + 160) + 16) + *(*(a1 + 152) + 16) * *(*(a1 + 152) + 20);
  v6 = *(a1 + 168);
  v7 = *(a1 + 176) - v6;
  if (v7 && (v8 = *(a1 + 200) - *(a1 + 192)) != 0)
  {
    v9 = v7 >> 3;
    v10 = v8 >> 3;
    v11 = *(a1 + 80);
    if (v11 == 1)
    {
      v11 = 0;
    }

    v12 = v11;
    v13 = v10 - 1;
    if (v9 - 1 != v11 || v13 != v11)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v22);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Unexpected mismatch in indexes: ", 32);
      v18 = MEMORY[0x1B8C84C00](v17, v12);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "  ", 2);
      v20 = MEMORY[0x1B8C84C30](v19, ((*(a1 + 176) - *(a1 + 168)) >> 3) - 1);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "  ", 2);
      MEMORY[0x1B8C84C30](v21, ((*(a1 + 200) - *(a1 + 192)) >> 3) - 1);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v22);
    }

    v15 = kaldi::CuMatrixBase<float>::CountZeros(*(v6 + 8 * v11));
    v16 = kaldi::CuVectorBase<float>::CountZeros(*(*(a1 + 192) + 8 * v12)) + v15;
  }

  else
  {
    v16 = 0;
  }

  *a2 = v16;
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::EnsureCorrs(uint64_t a1)
{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::InitOutBuffers(a1);
  if ((*(a1 + 480) & 1) == 0)
  {
    v2 = *(a1 + 80);
    if (v2 > 1)
    {
      v3 = (v2 + 1);
    }

    else
    {
      v3 = 1;
    }

    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 408), v3);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 360), v3);
    std::vector<BOOL>::resize(a1 + 456, v3, 0);
    std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize((a1 + 168), v3);
    std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::resize((a1 + 192), v3);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 216), v3);
    std::vector<kaldi::CuVector<float>>::resize((a1 + 240), v3);
    if (v3 >= 1)
    {
      operator new();
    }

    std::vector<int>::resize((a1 + 288), v3);
    *(a1 + 480) = 1;
  }
}

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::ApplyCorr(uint64_t a1, int a2, float a3)
{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::EnsureCorrs(a1);
  kaldi::CuMatrixBase<float>::AddMat(*(a1 + 152), *(*(a1 + 168) + 8 * a2), 111, -(a3 * *(a1 + 264)), 1.0);
  *&v6 = -(a3 * *(a1 + 268));

  return kaldi::CuVectorBase<float>::AddVec(v6, 1.0);
}

double kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::ConvolutionalMaxPoolingComponent(uint64_t a1, int a2, int a3)
{
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = &unk_1F2D279F8;
  *(a1 + 56) = xmmword_1B5AE0070;
  *(a1 + 72) = -1082130432;
  *(a1 + 76) = 0x100000003;
  *(a1 + 84) = 0;
  *(a1 + 86) = 0;
  *a1 = &unk_1F2D118E0;
  *(a1 + 88) = &unk_1F2D11A18;
  *(a1 + 96) = &unk_1F2D11A40;
  result = 0.0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  __asm { FMOV            V1.2S, #1.0 }

  *(a1 + 264) = _D1;
  *(a1 + 272) = 0;
  *(a1 + 276) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0;
  return result;
}

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::ConvolutionalMaxPoolingComponent(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D15BB8;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(a1 + 24, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 3);
  *a1 = &unk_1F2D172B0;
  *(a1 + 48) = &unk_1F2D279F8;
  v5 = *(a2 + 56);
  *(a1 + 71) = *(a2 + 71);
  *(a1 + 56) = v5;
  *a1 = &unk_1F2D118E0;
  *(a1 + 88) = &unk_1F2D11A18;
  *(a1 + 96) = &unk_1F2D11A40;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 168), (*(a2 + 176) - *(a2 + 168)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::vector[abi:ne200100]((a1 + 192), (*(a2 + 200) - *(a2 + 192)) >> 3);
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 216, *(a2 + 216), *(a2 + 224), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 224) - *(a2 + 216)) >> 4));
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(a1 + 240, *(a2 + 240), *(a2 + 248), (*(a2 + 248) - *(a2 + 240)) >> 5);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 276) = *(a2 + 276);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 288) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 288, *(a2 + 288), *(a2 + 296), (*(a2 + 296) - *(a2 + 288)) >> 2);
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 312, *(a2 + 312), *(a2 + 320), (*(a2 + 320) - *(a2 + 312)) >> 2);
  *(a1 + 552) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0;
  if (*(a1 + 16) == 1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "deep copy constructor not implemented in the case of vectorized_weights.", 72);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v14);
  }

  if (*(a2 + 152))
  {
    operator new();
  }

  if (*(a2 + 160))
  {
    kaldi::NewCuSubOrVec<float>();
  }

  v7 = *(a1 + 168);
  v6 = *(a1 + 176);
  if (v6 != v7)
  {
    v8 = 0;
    do
    {
      v9 = *(*(a2 + 168) + 8 * v8);
      if (v9)
      {
        kaldi::NewCuSubOrMat<float>(v9, *(a1 + 16));
      }

      ++v8;
    }

    while (v8 < (v6 - v7) >> 3);
  }

  v11 = *(a1 + 192);
  v10 = *(a1 + 200);
  if (v10 != v11)
  {
    v12 = 0;
    do
    {
      if (*(*(a2 + 192) + 8 * v12))
      {
        kaldi::NewCuSubOrVec<float>();
      }

      ++v12;
    }

    while (v12 < (v10 - v11) >> 3);
  }

  if (*(a2 + 496) != *(a2 + 488))
  {
    kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::InitResidualAggregator(a1, (a1 + 488));
  }

  return a1;
}

void sub_1B5405940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, _Unwind_Exception *exception_object, quasar::Bitmap *a12, quasar::Bitmap *a13, void *a14)
{
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(v16);
  v17 = *(v14 + 57);
  if (v17)
  {
    operator delete(v17);
  }

  a14 = (v14 + 432);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = (v14 + 408);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = (v14 + 384);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = (v14 + 360);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = (v14 + 336);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  v18 = *(v14 + 39);
  if (v18)
  {
    *(v14 + 40) = v18;
    operator delete(v18);
  }

  v19 = *(v14 + 36);
  if (v19)
  {
    *(v14 + 37) = v19;
    operator delete(v19);
  }

  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a14);
  v20 = *(v14 + 20);
  *(v14 + 20) = 0;
  if (v20)
  {
    (*(*v20 + 16))(v20);
  }

  std::unique_ptr<kaldi::QuantizedMatrix<signed char>>::reset[abi:ne200100](v15, 0);
  quasar::Bitmap::~Bitmap(a12);
  quasar::Bitmap::~Bitmap(a13);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v14);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::InitResidualAggregator(void *a1, uint64_t *a2)
{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::EnsureCorrs(a1);
  kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, *(a1[21] + 8 * ((((a1[22] - a1[21]) << 29) - 0x100000000) >> 32)));
  v4 = *(a1[24] + 8 * ((((a1[25] - a1[24]) << 29) - 0x100000000) >> 32));

  kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v4);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::~ConvolutionalMaxPoolingComponent(uint64_t a1)
{
  *a1 = &unk_1F2D118E0;
  v2 = (a1 + 88);
  *(a1 + 88) = &unk_1F2D11A18;
  v3 = (a1 + 96);
  *(a1 + 96) = &unk_1F2D11A40;
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator((a1 + 488));
  v4 = *(a1 + 456);
  if (v4)
  {
    operator delete(v4);
  }

  v8 = (a1 + 432);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (a1 + 408);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (a1 + 384);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (a1 + 360);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (a1 + 336);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v5 = *(a1 + 312);
  if (v5)
  {
    *(a1 + 320) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 288);
  if (v6)
  {
    *(a1 + 296) = v6;
    operator delete(v6);
  }

  v8 = (a1 + 240);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (a1 + 216);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (a1 + 192);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (a1 + 168);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v7 = *(a1 + 160);
  *(a1 + 160) = 0;
  if (v7)
  {
    (*(*v7 + 16))(v7);
  }

  std::unique_ptr<kaldi::QuantizedMatrix<signed char>>::reset[abi:ne200100]((a1 + 152), 0);
  quasar::Bitmap::~Bitmap(v3);
  quasar::Bitmap::~Bitmap(v2);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(a1);
}

{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::~ConvolutionalMaxPoolingComponent(a1);

  JUMPOUT(0x1B8C85350);
}

void non-virtual thunk tokaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::~ConvolutionalMaxPoolingComponent(uint64_t a1)
{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::~ConvolutionalMaxPoolingComponent(a1 - 88);
}

{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::~ConvolutionalMaxPoolingComponent(a1 - 96);
}

{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::~ConvolutionalMaxPoolingComponent(a1 - 88);

  JUMPOUT(0x1B8C85350);
}

{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::~ConvolutionalMaxPoolingComponent(a1 - 96);

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::InitData(uint64_t a1, uint64_t *a2, kaldi::UniformRandomNumber *a3)
{
  v84 = 0x40000000;
  v85 = -1073741824;
  v83 = 1036831949;
  *(a1 + 116) = *(a1 + 8);
  v6 = (a1 + 116);
  *(a1 + 132) = 0x100000001;
  v7 = (a1 + 132);
  v82 = -1;
  memset(v81, 0, sizeof(v81));
  v8 = a2 + 4;
  v9 = (a1 + 280);
  v72 = (a1 + 136);
  v73 = (a1 + 264);
  v10 = (a1 + 124);
  v70 = (a1 + 120);
  v71 = (a1 + 128);
  v74 = (a1 + 268);
  v75 = (a1 + 112);
  v76 = (a1 + 108);
  v11 = (a1 + 104);
  while (1)
  {
    if ((*(v8 + *(*a2 - 24)) & 2) != 0)
    {
      v50 = *(a1 + 8);
      v51 = *(a1 + 12);
      v52 = *(a1 + 104);
      v53 = *(a1 + 108);
      v54 = *(a1 + 132);
      v55 = v50 / v52 - *(a1 + 128);
      v56 = *(a1 + 120);
      v57 = *(a1 + 136);
      v58 = (v56 - v54) / v57 + 1;
      *(a1 + 148) = v58;
      v59 = v53 * v58;
      v60 = v51 / v59;
      *(a1 + 140) = v55;
      *(a1 + 144) = v51 / v59;
      if (v54 >= 1 && v56 >= v54)
      {
        if (v57 > 0)
        {
          if (v51 == v59 * v60)
          {
            if (v50 == v50 / v52 * v52)
            {
              if (*v10 + *v75 * (v56 - 1) + *v6 * (v60 - 1) <= v55)
              {
                if (v82 >= 1)
                {
                  kaldi::UniformRandomNumber::SetRandomSeeds(a3, v82);
                }

                kaldi::GaussRandomNumber::GaussRandomNumber(v79, a3);
                kaldi::Matrix<float>::Matrix(v77, ((*(a1 + 128) + *(a1 + 124)) * *(a1 + 104)), (*(a1 + 144) * *(a1 + 108)), 0, 0);
                for (i = 0; i < kaldi::MatrixBase<float>::NumRows(v77); ++i)
                {
                  for (j = 0; j < kaldi::MatrixBase<float>::NumCols(v77); ++j)
                  {
                    v63 = *&v83;
                    kaldi::GaussRandomNumber::Rand(v79, 0);
                    *(v77[0] + 4 * i * v78 + 4 * j) = v63 * v64;
                  }
                }

                if (!*(a1 + 152))
                {
                  operator new();
                }

                kaldi::KaldiWarnMessage::KaldiWarnMessage(v80);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, "pointer is thought to be un-initialized here", 44);
                kaldi::KaldiErrorMessage::~KaldiErrorMessage(v80);
              }

              kaldi::KaldiWarnMessage::KaldiWarnMessage(v80);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, "ConvolutionalMaxPoolingComponent: too few input bands to compute the output", 75);
              kaldi::KaldiErrorMessage::~KaldiErrorMessage(v80);
            }

            kaldi::KaldiWarnMessage::KaldiWarnMessage(v80);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, "ConvolutionalMaxPoolingComponent: input dim mismatch", 52);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(v80);
          }

          kaldi::KaldiWarnMessage::KaldiWarnMessage(v80);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, "ConvolutionalMaxPoolingComponent: output dim mismatch", 53);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(v80);
        }

        kaldi::KaldiWarnMessage::KaldiWarnMessage(v80);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, "ConvolutionalMaxPoolingComponent: Max pooling step must be >= 1", 63);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v80);
      }

      kaldi::KaldiWarnMessage::KaldiWarnMessage(v80);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, "ConvolutionalMaxPoolingComponent: Invalid max pooling size", 58);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v80);
    }

    kaldi::ReadToken(a2, 0, v81);
    if (SHIBYTE(v81[2]) < 0)
    {
      break;
    }

    if (HIBYTE(v81[2]) <= 0xCu)
    {
      if (HIBYTE(v81[2]) > 0xAu)
      {
        if (HIBYTE(v81[2]) != 11)
        {
          v23 = v81[0] == 0x537265746C69463CLL && LODWORD(v81[1]) == 1046837865;
          v14 = v10;
          if (v23)
          {
            goto LABEL_186;
          }

LABEL_163:
          v44 = v81;
          goto LABEL_180;
        }

        if (v81[0] != 0x6E6152736169423CLL || *(v81 + 3) != 0x3E65676E61527361)
        {
          v30 = v81[0] == 0x745368637461503CLL && *(v81 + 3) == 0x3E70657453686374;
          v14 = v75;
          if (!v30)
          {
            goto LABEL_205;
          }

          goto LABEL_186;
        }

LABEL_171:
        v21 = &v84;
        goto LABEL_187;
      }

      if (HIBYTE(v81[2]) == 9)
      {
        goto LABEL_164;
      }

      if (HIBYTE(v81[2]) != 10)
      {
        goto LABEL_205;
      }

      if (v81[0] != 0x61654D736169423CLL || LOWORD(v81[1]) != 15982)
      {
        v13 = v81[0] == 0x7A69536C6F6F503CLL && LOWORD(v81[1]) == 15973;
        v14 = v7;
        if (v13)
        {
          goto LABEL_186;
        }

        v15 = v81[0] == 0x6574536C6F6F503CLL && LOWORD(v81[1]) == 15984;
        v14 = v72;
        if (v15)
        {
          goto LABEL_186;
        }

LABEL_161:
        if (HIBYTE(v81[2]) != 9)
        {
          if (HIBYTE(v81[2]) != 12)
          {
            goto LABEL_205;
          }

          goto LABEL_163;
        }

LABEL_164:
        v45 = v81[0] == 0x6D726F4E78614D3CLL && LOBYTE(v81[1]) == 62;
        v21 = v9;
        if (!v45)
        {
          goto LABEL_205;
        }

        goto LABEL_187;
      }

LABEL_170:
      v21 = &v85;
      goto LABEL_187;
    }

    if (HIBYTE(v81[2]) > 0xFu)
    {
      if (HIBYTE(v81[2]) == 16)
      {
        v22 = v81[0] == 0x7461654674754F3CLL && v81[1] == 0x3E7370614D657275;
        goto LABEL_95;
      }

      if (HIBYTE(v81[2]) != 19 || (v81[0] == 0x61654C736169423CLL ? (v24 = v81[1] == 0x6F43657461526E72) : (v24 = 0), v24 ? (v25 = *(&v81[1] + 3) == 0x3E66656F43657461) : (v25 = 0), v21 = v74, !v25))
      {
LABEL_205:
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v80);
        v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, "Unknown token ", 14);
        if (v81[2] >= 0)
        {
          v66 = v81;
        }

        else
        {
          v66 = v81[0];
        }

        if (v81[2] >= 0)
        {
          v67 = HIBYTE(v81[2]);
        }

        else
        {
          v67 = v81[1];
        }

        v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, v66, v67);
        v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, ", a typo in config?", 19);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, " (ParamStddev|BiasMean|BiasRange|InFeatureMaps|OutFeatureMaps|PatchStep|SectionStep|SectionSize|FilterSize|LearnRateCoef|BiasLearnRateCoef|MaxNorm|RandomSeed)", 158);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v80);
      }
    }

    else
    {
      if (HIBYTE(v81[2]) == 13)
      {
        if (v81[0] != 0x74536D617261503CLL || *(v81 + 5) != 0x3E7665646474536DLL)
        {
          v27 = v81[0] == 0x6E6F69746365533CLL && *(v81 + 5) == 0x3E706574536E6F69;
          v14 = v6;
          if (!v27)
          {
            v28 = v81[0] == 0x6E6F69746365533CLL && *(v81 + 5) == 0x3E657A69536E6F69;
            v14 = v70;
            if (!v28)
            {
              goto LABEL_205;
            }
          }

          goto LABEL_186;
        }

LABEL_169:
        v21 = &v83;
        goto LABEL_187;
      }

      if (HIBYTE(v81[2]) != 15)
      {
        goto LABEL_205;
      }

      v18 = v81[0] == 0x75746165466E493CLL && *(v81 + 7) == 0x3E7370614D657275;
      v14 = v11;
      if (v18)
      {
        goto LABEL_186;
      }

      v19 = v81[0] == 0x65726168536E493CLL && *(v81 + 7) == 0x3E73646E61426465;
      v14 = v71;
      if (v19)
      {
        goto LABEL_186;
      }

      v20 = v81[0] == 0x61526E7261654C3CLL && *(v81 + 7) == 0x3E66656F43657461;
      v21 = v73;
      if (!v20)
      {
        goto LABEL_205;
      }
    }

LABEL_187:
    kaldi::ReadBasicType<float>(a2, 0, v21);
LABEL_188:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  v16 = v81[1];
  if (v81[1] > 12)
  {
    switch(v81[1])
    {
      case 0xDLL:
        if (*v81[0] == 0x74536D617261503CLL && *(v81[0] + 5) == 0x3E7665646474536DLL)
        {
          goto LABEL_169;
        }

        v34 = *v81[0] == 0x6E6F69746365533CLL && *(v81[0] + 5) == 0x3E706574536E6F69;
        v14 = v6;
        if (v34)
        {
          goto LABEL_186;
        }

        v35 = *v81[0] == 0x6E6F69746365533CLL && *(v81[0] + 5) == 0x3E657A69536E6F69;
        v14 = v70;
        if (v35)
        {
          goto LABEL_186;
        }

        break;
      case 0xFLL:
        v38 = *v81[0] == 0x75746165466E493CLL && *(v81[0] + 7) == 0x3E7370614D657275;
        v14 = v11;
        if (v38)
        {
          goto LABEL_186;
        }

        v39 = *v81[0] == 0x65726168536E493CLL && *(v81[0] + 7) == 0x3E73646E61426465;
        v14 = v71;
        if (v39)
        {
          goto LABEL_186;
        }

        break;
      case 0x10:
        v22 = *v81[0] == 0x7461654674754F3CLL && *(v81[0] + 8) == 0x3E7370614D657275;
LABEL_95:
        v14 = v76;
        if (!v22)
        {
          goto LABEL_205;
        }

        goto LABEL_186;
      default:
        goto LABEL_145;
    }
  }

  else
  {
    switch(v81[1])
    {
      case 0xALL:
        if (*v81[0] == 0x61654D736169423CLL && *(v81[0] + 8) == 15982)
        {
          goto LABEL_170;
        }

        v32 = *v81[0] == 0x7A69536C6F6F503CLL && *(v81[0] + 8) == 15973;
        v14 = v7;
        if (v32)
        {
          goto LABEL_186;
        }

        break;
      case 0xBLL:
        if (*v81[0] == 0x6E6152736169423CLL && *(v81[0] + 3) == 0x3E65676E61527361)
        {
          goto LABEL_171;
        }

        v37 = *v81[0] == 0x745368637461503CLL && *(v81[0] + 3) == 0x3E70657453686374;
        v14 = v75;
        if (v37)
        {
          goto LABEL_186;
        }

        break;
      case 0xCLL:
        v17 = *v81[0] == 0x537265746C69463CLL && *(v81[0] + 8) == 1046837865;
        v14 = v10;
        if (v17)
        {
          goto LABEL_186;
        }

        break;
      default:
LABEL_145:
        if (v16 == 15)
        {
          v41 = *v81[0] == 0x61526E7261654C3CLL && *(v81[0] + 7) == 0x3E66656F43657461;
          v21 = v73;
          if (v41)
          {
            goto LABEL_187;
          }

          if ((v81[2] & 0x8000000000000000) == 0)
          {
            goto LABEL_161;
          }
        }

        if (v81[1] == 9)
        {
          v46 = *v81[0] == 0x6D726F4E78614D3CLL && *(v81[0] + 8) == 62;
          v21 = v9;
          if (!v46)
          {
            if ((v81[2] & 0x8000000000000000) == 0)
            {
              goto LABEL_205;
            }

LABEL_178:
            if (v81[1] != 12)
            {
              goto LABEL_205;
            }

            v44 = v81[0];
LABEL_180:
            v47 = *v44;
            v48 = *(v44 + 2);
            if (v47 != 0x536D6F646E61523CLL || v48 != 1046766949)
            {
              goto LABEL_205;
            }

            v14 = &v82;
LABEL_186:
            kaldi::ReadBasicType<int>(a2, 0, v14);
            goto LABEL_188;
          }
        }

        else
        {
          if (v81[1] != 19)
          {
            goto LABEL_178;
          }

          v43 = *v81[0] == 0x61654C736169423CLL && *(v81[0] + 8) == 0x6F43657461526E72 && *(v81[0] + 11) == 0x3E66656F43657461;
          v21 = v74;
          if (!v43)
          {
            if ((v81[2] & 0x8000000000000000) != 0)
            {
              goto LABEL_178;
            }

            goto LABEL_161;
          }
        }

        goto LABEL_187;
    }
  }

  v16 = v81[1];
  if (v81[1] == 10)
  {
    v40 = *v81[0] == 0x6574536C6F6F503CLL && *(v81[0] + 8) == 15984;
    v14 = v72;
    if (v40)
    {
      goto LABEL_186;
    }

    v16 = v81[1];
  }

  goto LABEL_145;
}

void sub_1B5406C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (*(v24 - 121) < 0)
  {
    operator delete(*(v24 - 144));
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::ReadData(uint64_t a1, uint64_t *a2, int a3)
{
  *(a1 + 116) = *(a1 + 8);
  v6 = a1 + 116;
  *(a1 + 132) = 0x100000001;
  v7 = a1 + 132;
  if (kaldi::Peek(a2, a3) != 60)
  {
LABEL_151:
    v40 = *(a1 + 12);
    v41 = *(a1 + 108);
    v42 = *(a1 + 8) / *(a1 + 104) - *(a1 + 128);
    v43 = (*(a1 + 120) - *(a1 + 132)) / *(a1 + 136) + 1;
    *(a1 + 148) = v43;
    *(a1 + 16) = 0;
    *(a1 + 140) = v42;
    *(a1 + 144) = v40 / (v41 * v43);
    LOBYTE(v49) = 0;
    kaldi::ReadBasicType<char>(a2, a3, &v49);
    if (!*(a1 + 152))
    {
      kaldi::ExpectToken(a2, a3, "<Filters>");
      operator new();
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "pointer is thought to be un-initialized here");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
  }

  while (1)
  {
    v49 = 0uLL;
    v50 = 0;
    kaldi::ReadToken(a2, a3, &v49);
    if (SHIBYTE(v50) < 0)
    {
      if (*(&v49 + 1) == 15)
      {
        v11 = *v49 == 0x75746165466E493CLL && *(v49 + 7) == 0x3E7370614D657275;
        v9 = a1 + 104;
        if (v11)
        {
          goto LABEL_141;
        }
      }

      if (*(&v49 + 1) == 16)
      {
        v12 = *v49 == 0x7461654674754F3CLL && *(v49 + 8) == 0x3E7370614D657275;
        v9 = a1 + 108;
        if (v12)
        {
          goto LABEL_141;
        }
      }

      if (*(&v49 + 1) == 13)
      {
        v14 = *v49 == 0x6E6F69746365533CLL && *(v49 + 5) == 0x3E706574536E6F69;
        v9 = v6;
        if (v14)
        {
          goto LABEL_141;
        }
      }

      else if (*(&v49 + 1) == 11)
      {
        v13 = *v49 == 0x745368637461503CLL && *(v49 + 3) == 0x3E70657453686374;
        v9 = a1 + 112;
        if (v13)
        {
          goto LABEL_141;
        }
      }

      v15 = *(&v49 + 1);
      if (*(&v49 + 1) == 13)
      {
        v16 = *v49 == 0x6E6F69746365533CLL && *(v49 + 5) == 0x3E657A69536E6F69;
        v9 = a1 + 120;
        if (v16)
        {
          goto LABEL_141;
        }

        v15 = *(&v49 + 1);
      }

      if (v15 == 12)
      {
        v17 = *v49 == 0x537265746C69463CLL && *(v49 + 8) == 1046837865;
        v9 = a1 + 124;
        if (v17)
        {
          goto LABEL_141;
        }

        if ((v50 & 0x8000000000000000) == 0)
        {
          goto LABEL_57;
        }
      }

      if (*(&v49 + 1) == 10)
      {
        v33 = *v49 == 0x7A69536C6F6F503CLL && *(v49 + 8) == 15973;
        v9 = v7;
        if (v33)
        {
          goto LABEL_141;
        }

        if ((v50 & 0x8000000000000000) == 0)
        {
          if (HIBYTE(v50) == 19)
          {
            goto LABEL_71;
          }

          if (HIBYTE(v50) == 15)
          {
            goto LABEL_121;
          }

          if (HIBYTE(v50) != 10)
          {
            goto LABEL_142;
          }

          goto LABEL_94;
        }
      }

      else if (*(&v49 + 1) == 15)
      {
        v18 = *v49 == 0x65726168536E493CLL && *(v49 + 7) == 0x3E73646E61426465;
        v9 = a1 + 128;
        if (v18)
        {
          goto LABEL_141;
        }

        if ((v50 & 0x8000000000000000) == 0)
        {
LABEL_57:
          if (HIBYTE(v50) != 10)
          {
            if (HIBYTE(v50) == 15)
            {
LABEL_121:
              v34 = v49 == 0x61526E7261654C3CLL && *(&v49 + 7) == 0x3E66656F43657461;
              v26 = (a1 + 264);
              if (!v34)
              {
                goto LABEL_142;
              }

              goto LABEL_147;
            }

LABEL_70:
            if (HIBYTE(v50) != 19)
            {
              goto LABEL_142;
            }

LABEL_71:
            v20 = &v49;
            goto LABEL_72;
          }

LABEL_90:
          v29 = v49 == 0x7A69536C6F6F503CLL && WORD4(v49) == 15973;
          v9 = v7;
          if (v29)
          {
            goto LABEL_141;
          }

LABEL_94:
          v30 = v49 == 0x6574536C6F6F503CLL && WORD4(v49) == 15984;
          v9 = v6 + 20;
          if (!v30)
          {
            goto LABEL_142;
          }

          goto LABEL_141;
        }
      }

      v35 = *(&v49 + 1);
      if (*(&v49 + 1) != 10)
      {
        goto LABEL_133;
      }

      v36 = *v49 == 0x6574536C6F6F503CLL && *(v49 + 8) == 15984;
      v9 = v6 + 20;
      if (!v36)
      {
        v35 = *(&v49 + 1);
LABEL_133:
        if (v35 == 15)
        {
          v37 = *v49 == 0x61526E7261654C3CLL && *(v49 + 7) == 0x3E66656F43657461;
          v26 = (a1 + 264);
          if (!v37)
          {
            if (v50 < 0)
            {
              goto LABEL_139;
            }

LABEL_142:
            v38 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v49, "<MaxNorm>");
            v26 = (a1 + 280);
            if (!v38)
            {
              if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v49, "<GradientNormType>"))
              {
                __p[0] = 0;
                __p[1] = 0;
                v48 = 0;
                kaldi::ReadToken(a2, a3, __p);
                *(a1 + 272) = kaldi::nnet1::Component::MarkerToGradientNormType(__p);
                if (SHIBYTE(v48) < 0)
                {
                  operator delete(__p[0]);
                }

                goto LABEL_148;
              }

              v39 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v49, "<MaxGrad>");
              v26 = (a1 + 276);
              if (!v39)
              {
                kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
                v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "unrecognized config token ", 26);
                if (v50 >= 0)
                {
                  v45 = &v49;
                }

                else
                {
                  v45 = v49;
                }

                if (v50 >= 0)
                {
                  v46 = HIBYTE(v50);
                }

                else
                {
                  v46 = *(&v49 + 1);
                }

                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, v45, v46);
                kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
              }
            }
          }

LABEL_147:
          kaldi::ReadBasicType<float>(a2, a3, v26);
          goto LABEL_148;
        }

LABEL_139:
        if (*(&v49 + 1) != 19)
        {
          goto LABEL_142;
        }

        v20 = v49;
LABEL_72:
        v21 = *v20;
        v22 = v20[1];
        v23 = *(v20 + 11);
        v25 = v21 == 0x61654C736169423CLL && v22 == 0x6F43657461526E72 && v23 == 0x3E66656F43657461;
        v26 = (a1 + 268);
        if (!v25)
        {
          goto LABEL_142;
        }

        goto LABEL_147;
      }
    }

    else if (HIBYTE(v50) <= 0xCu)
    {
      if (HIBYTE(v50) == 10)
      {
        goto LABEL_90;
      }

      if (HIBYTE(v50) != 11)
      {
        goto LABEL_62;
      }

      v32 = v49 == 0x745368637461503CLL && *(&v49 + 3) == 0x3E70657453686374;
      v9 = a1 + 112;
      if (!v32)
      {
        goto LABEL_142;
      }
    }

    else if (HIBYTE(v50) > 0xFu)
    {
      if (HIBYTE(v50) != 16)
      {
        goto LABEL_70;
      }

      v31 = v49 == 0x7461654674754F3CLL && *(&v49 + 1) == 0x3E7370614D657275;
      v9 = a1 + 108;
      if (!v31)
      {
        goto LABEL_142;
      }
    }

    else
    {
      if (HIBYTE(v50) == 13)
      {
        v27 = v49 == 0x6E6F69746365533CLL && *(&v49 + 5) == 0x3E706574536E6F69;
        v9 = v6;
        if (v27)
        {
          goto LABEL_141;
        }

        v28 = v49 == 0x6E6F69746365533CLL && *(&v49 + 5) == 0x3E657A69536E6F69;
        v9 = a1 + 120;
        if (v28)
        {
          goto LABEL_141;
        }

LABEL_62:
        if (HIBYTE(v50) != 12)
        {
          goto LABEL_142;
        }

        v19 = v49 == 0x537265746C69463CLL && DWORD2(v49) == 1046837865;
        v9 = a1 + 124;
        if (!v19)
        {
          goto LABEL_142;
        }

        goto LABEL_141;
      }

      if (HIBYTE(v50) != 15)
      {
        goto LABEL_142;
      }

      v8 = v49 == 0x75746165466E493CLL && *(&v49 + 7) == 0x3E7370614D657275;
      v9 = a1 + 104;
      if (!v8)
      {
        v10 = v49 == 0x65726168536E493CLL && *(&v49 + 7) == 0x3E73646E61426465;
        v9 = a1 + 128;
        if (!v10)
        {
          goto LABEL_121;
        }
      }
    }

LABEL_141:
    kaldi::ReadBasicType<int>(a2, a3, v9);
LABEL_148:
    if (SHIBYTE(v50) < 0)
    {
      operator delete(v49);
    }

    if (kaldi::Peek(a2, a3) != 60)
    {
      goto LABEL_151;
    }
  }
}

void sub_1B54075E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v24 - 89) < 0)
  {
    operator delete(*(v24 - 112));
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::WriteConfig(unsigned int *a1, void *a2, uint64_t a3)
{
  kaldi::WriteToken(a2, a3, "<InFeatureMaps>");
  kaldi::WriteBasicType<int>(a2, a3, a1[26]);
  kaldi::WriteToken(a2, a3, "<OutFeatureMaps>");
  kaldi::WriteBasicType<int>(a2, a3, a1[27]);
  kaldi::WriteToken(a2, a3, "<PatchStep>");
  kaldi::WriteBasicType<int>(a2, a3, a1[28]);
  kaldi::WriteToken(a2, a3, "<SectionStep>");
  kaldi::WriteBasicType<int>(a2, a3, a1[29]);
  kaldi::WriteToken(a2, a3, "<SectionSize>");
  kaldi::WriteBasicType<int>(a2, a3, a1[30]);
  kaldi::WriteToken(a2, a3, "<FilterSize>");
  kaldi::WriteBasicType<int>(a2, a3, a1[31]);
  kaldi::WriteToken(a2, a3, "<InSharedBands>");
  kaldi::WriteBasicType<int>(a2, a3, a1[32]);
  kaldi::WriteToken(a2, a3, "<PoolSize>");
  kaldi::WriteBasicType<int>(a2, a3, a1[33]);
  kaldi::WriteToken(a2, a3, "<PoolStep>");
  kaldi::WriteBasicType<int>(a2, a3, a1[34]);
  kaldi::WriteToken(a2, a3, "<LearnRateCoef>");
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<BiasLearnRateCoef>");
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<MaxNorm>");
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<GradientNormType>");
  kaldi::nnet1::Component::TypeToMarker(a1[68], &__p);
  kaldi::WriteToken(a2, a3, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteToken(a2, a3, "<MaxGrad>");
  return kaldi::WriteBasicType<float>(a2, a3);
}

void sub_1B540788C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::WriteData(uint64_t a1, void *a2, int a3, int a4)
{
  (*(*a1 + 168))(a1);
  kaldi::WriteBasicType<char>(a2, a3, 0);
  kaldi::WriteToken(a2, a3, "<Filters>");
  kaldi::QuantizedMatrix<signed char>::Write(*(a1 + 152), a2, a3, a4);
  kaldi::WriteToken(a2, a3, "<Bias>");
  v8 = *(a1 + 160);

  kaldi::CuVectorBase<float>::Write(v8, a2, a3);
}

const void **kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::GetParams(uint64_t a1, void **a2)
{
  v4 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a2, v4, 0);
  v5 = kaldi::quasar::Vocab::VocabSize(*(a1 + 152));
  v6 = kaldi::QuantizedMatrixBase<short>::NumCols(*(a1 + 152)) * v5;
  v11 = 0;
  v12 = 0;
  v10 = *a2;
  LODWORD(v11) = v6;
  kaldi::VectorBase<float>::CopyRowsFromMat<signed char>(&v10, *(a1 + 152));
  v7 = *(a1 + 160);
  v8 = *(v7 + 16);
  v11 = 0;
  v12 = 0;
  v10 = *a2 + 4 * v6;
  LODWORD(v11) = v8;
  return kaldi::CuVectorBase<float>::CopyToVec<float>(v7, &v10);
}

void *kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::SetParams(uint64_t a1, char **a2)
{
  (*(*a1 + 176))(a1);
  v4 = kaldi::quasar::Vocab::VocabSize(*(a1 + 152));
  v5 = kaldi::QuantizedMatrixBase<short>::NumCols(*(a1 + 152)) * v4;
  v6 = *(a1 + 152);
  v11 = 0;
  v12 = 0;
  v10 = *a2;
  LODWORD(v11) = v5;
  kaldi::QuantizedMatrixBase<signed char>::CopyRowsFromVec(v6, &v10);
  v7 = *(a1 + 160);
  v8 = v7[4];
  v11 = 0;
  v12 = 0;
  v10 = &(*a2)[4 * v5];
  LODWORD(v11) = v8;
  return kaldi::CuVectorBase<float>::CopyFromVec<float>(v7, &v10);
}

float kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::GetNormalizedLearningRate(uint64_t a1, int a2)
{
  if ((*(a1 + 84) & 1) == 0)
  {
    return *(a1 + 56);
  }

  v2 = *(a1 + 312);
  v3 = *(a1 + 320) - v2;
  if (!v3)
  {
    return NAN;
  }

  v4 = v3 >> 2;
  if (v4 <= a2)
  {
    return NAN;
  }

  v5 = v4 - 1;
  if (a2 >= 0)
  {
    v5 = a2;
  }

  return *(v2 + 4 * v5);
}

float kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::SumParams(uint64_t a1)
{
  v2 = kaldi::QuantizedMatrixBase<signed char>::Sum(*(a1 + 152));
  v3 = *&v2;
  v4 = kaldi::CuVectorBase<float>::Sum(*(a1 + 160));
  return v3 + *&v4;
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::PerturbParams(uint64_t a1)
{
  v2 = kaldi::quasar::Vocab::VocabSize(*(a1 + 152));
  v3 = kaldi::QuantizedMatrixBase<short>::NumCols(*(a1 + 152));
  kaldi::CuMatrix<float>::CuMatrix(v4, v2, v3, 1, 0, 0);
  kaldi::CuMatrixBase<float>::SetRandn(v4);
  kaldi::QuantizedMatrixBase<signed char>::AddMat();
}

uint64_t sub_1B5407C10()
{
  kaldi::CuVector<float>::CuVector(v4, *(v0 + 160));
  kaldi::CuVectorBase<float>::SetRandn(v4);
  LODWORD(v2) = v1;
  kaldi::CuVectorBase<float>::AddVec(v2, 1.0);
  kaldi::CuVector<float>::~CuVector(v4);
  return kaldi::CuMatrix<float>::~CuMatrix(&v5);
}

void sub_1B5407C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::Info(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v25, " ");
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::ParamsString(a1);
  if ((v24 & 0x80u) == 0)
  {
    v4 = v23;
  }

  else
  {
    v4 = v23[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v5 = v24;
  }

  else
  {
    v5 = v23[1];
  }

  v6 = std::string::append(&v25, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = std::string::append(&v26, "\n  filters");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::MomentStatistics<signed char>(*(a1 + 152));
  if ((v22 & 0x80u) == 0)
  {
    v10 = v21;
  }

  else
  {
    v10 = v21[0];
  }

  if ((v22 & 0x80u) == 0)
  {
    v11 = v22;
  }

  else
  {
    v11 = v21[1];
  }

  v12 = std::string::append(&v27, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v28, "\n  bias");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::MomentStatistics<float>(*(a1 + 160));
  if ((v20 & 0x80u) == 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  if ((v20 & 0x80u) == 0)
  {
    v17 = v20;
  }

  else
  {
    v17 = __p[1];
  }

  v18 = std::string::append(&v29, v16, v17);
  *a2 = *v18;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }
}

void sub_1B5407E70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v45 - 41) < 0)
  {
    operator delete(*(v45 - 64));
  }

  if (*(v45 - 73) < 0)
  {
    operator delete(*(v45 - 96));
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::ParamsString(unsigned int *a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  (*(*a1 + 168))(a1, &v6, 0);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " , # of sections: ", 18);
  v3 = MEMORY[0x1B8C84C00](v2, a1[36]);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, ", section size after pooling: ", 30);
  MEMORY[0x1B8C84C00](v4, a1[37]);
  std::stringbuf::str();
  v6 = *MEMORY[0x1E69E54E8];
  *(&v6 + *(v6 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v7 = MEMORY[0x1E69E5548] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v8);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v10);
}

void sub_1B54080DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::InfoGradient(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v49, " ");
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::ParamsString(a1);
  if ((v48 & 0x80u) == 0)
  {
    v4 = v47;
  }

  else
  {
    v4 = v47[0];
  }

  if ((v48 & 0x80u) == 0)
  {
    v5 = v48;
  }

  else
  {
    v5 = v47[1];
  }

  v6 = std::string::append(&v49, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v50.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v50.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = std::string::append(&v50, "\n  filters_grad");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v51.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v51.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::MomentStatistics<float>((a1 + 168));
  if ((v46 & 0x80u) == 0)
  {
    v10 = v45;
  }

  else
  {
    v10 = v45[0];
  }

  if ((v46 & 0x80u) == 0)
  {
    v11 = v46;
  }

  else
  {
    v11 = v45[1];
  }

  v12 = std::string::append(&v51, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v52.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v52.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v52, ", lr-coef ");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v53.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v53.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::ToString<float>();
  if ((v44 & 0x80u) == 0)
  {
    v16 = v43;
  }

  else
  {
    v16 = v43[0];
  }

  if ((v44 & 0x80u) == 0)
  {
    v17 = v44;
  }

  else
  {
    v17 = v43[1];
  }

  v18 = std::string::append(&v53, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v54.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v54.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v54, ", max-norm ");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v55.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v55.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::ToString<float>();
  if ((v42 & 0x80u) == 0)
  {
    v22 = v41;
  }

  else
  {
    v22 = v41[0];
  }

  if ((v42 & 0x80u) == 0)
  {
    v23 = v42;
  }

  else
  {
    v23 = v41[1];
  }

  v24 = std::string::append(&v55, v22, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v56.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v56.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v56, "\n  bias_grad");
  v27 = *&v26->__r_.__value_.__l.__data_;
  v57.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&v57.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::MomentStatistics<float>((a1 + 192));
  if ((v40 & 0x80u) == 0)
  {
    v28 = v39;
  }

  else
  {
    v28 = v39[0];
  }

  if ((v40 & 0x80u) == 0)
  {
    v29 = v40;
  }

  else
  {
    v29 = v39[1];
  }

  v30 = std::string::append(&v57, v28, v29);
  v31 = *&v30->__r_.__value_.__l.__data_;
  v58.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&v58.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v32 = std::string::append(&v58, ", lr-coef ");
  v33 = *&v32->__r_.__value_.__l.__data_;
  v59.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
  *&v59.__r_.__value_.__l.__data_ = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::ToString<float>();
  if ((v38 & 0x80u) == 0)
  {
    v34 = __p;
  }

  else
  {
    v34 = __p[0];
  }

  if ((v38 & 0x80u) == 0)
  {
    v35 = v38;
  }

  else
  {
    v35 = __p[1];
  }

  v36 = std::string::append(&v59, v34, v35);
  *a2 = *v36;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  if (v38 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if (v40 < 0)
  {
    operator delete(v39[0]);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (v42 < 0)
  {
    operator delete(v41[0]);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (v44 < 0)
  {
    operator delete(v43[0]);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (v46 < 0)
  {
    operator delete(v45[0]);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (v48 < 0)
  {
    operator delete(v47[0]);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }
}

void sub_1B54084C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v73 - 57) < 0)
  {
    operator delete(*(v73 - 80));
  }

  if (*(v73 - 89) < 0)
  {
    operator delete(*(v73 - 112));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v73 - 121) < 0)
  {
    operator delete(*(v73 - 144));
  }

  if (*(v73 - 153) < 0)
  {
    operator delete(*(v73 - 176));
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v73 - 185) < 0)
  {
    operator delete(*(v73 - 208));
  }

  if (*(v73 - 217) < 0)
  {
    operator delete(*(v73 - 240));
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a73 < 0)
  {
    operator delete(a72);
  }

  if (a71 < 0)
  {
    operator delete(a66);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a64 < 0)
  {
    operator delete(a59);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  _Unwind_Resume(a1);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::PropagateFncDirect(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::InitOutBuffers(a1);
  if (*(a1 + 128) <= 0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = 1.0;
  }

  v60 = a2;
  kaldi::CuMatrix<float>::Resize((*(a1 + 384) + 48 * a4), *(a2 + 20), (*(a1 + 108) * *(a1 + 120)), 3, 0);
  if (*(a1 + 144) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = *(a1 + 128);
      v11 = *(a1 + 120);
      v61 = v9;
      if (v10 >= 1)
      {
        v12 = *(a1 + 108);
        v13 = v12 * v9 * v11;
        v14 = *(a3 + 8) + 4 * v13;
        v15 = *(a3 + 28) - v13;
        v16 = *(a3 + 32);
        *(&v67[1] + 4) = *(a3 + 20);
        LODWORD(v67[1]) = v12;
        HIDWORD(v67[2]) = v15;
        v67[3] = v16;
        v66 = &unk_1F2CFA908;
        v67[0] = v14;
        LODWORD(v14) = *(a1 + 104);
        v17 = v14 * *(a1 + 140);
        v18 = v14 * v10;
        v19 = *(v60 + 8) + 4 * v17;
        v20 = *(v60 + 28) - v17;
        v21 = *(v60 + 32);
        LODWORD(v65[1]) = v18;
        *(&v65[1] + 4) = *(v60 + 20);
        HIDWORD(v65[2]) = v20;
        v65[3] = v21;
        v64 = &unk_1F2CFA908;
        v65[0] = v19;
        kaldi::QuantizedMatrixBase<signed char>::Range(*(a1 + 152), *(a1 + 124) * v14, v18, v12 * v9, v12, v63);
        LODWORD(v22) = 1.0;
        kaldi::CuMatrixBase<float>::AddMatMat<signed char>(&v66, &v64, 111, v63, 111, v22, 0.0);
        v23 = *(a1 + 120);
        if (v23 >= 2)
        {
          for (i = 1; i < v23; ++i)
          {
            v25 = *(a1 + 108) * (i + v9 * v23);
            v26 = *(a3 + 8) + 4 * v25;
            v27 = *(a3 + 28) - v25;
            v28 = *(a3 + 32);
            LODWORD(v62[2]) = *(a1 + 108);
            *(&v62[2] + 4) = *(a3 + 20);
            HIDWORD(v62[3]) = v27;
            v62[4] = v28;
            v62[0] = &unk_1F2CFA908;
            v62[1] = v26;
            kaldi::CuMatrixBase<float>::CopyFromMat<float>(v62, &v66, 111);
            v62[0] = &unk_1F2CFA908;
            memset(&v62[1], 0, 32);
            quasar::Bitmap::~Bitmap(v62);
            v23 = *(a1 + 120);
          }
        }

        kaldi::QuantizedMatrixBase<signed char>::~QuantizedMatrixBase(v63);
        v64 = &unk_1F2CFA908;
        memset(v65, 0, sizeof(v65));
        quasar::Bitmap::~Bitmap(&v64);
        v66 = &unk_1F2CFA908;
        memset(v67, 0, sizeof(v67));
        quasar::Bitmap::~Bitmap(&v66);
        v11 = *(a1 + 120);
      }

      if (v11 >= 1)
      {
        v29 = 0;
        do
        {
          v30 = *(a1 + 384) + 48 * a4;
          v31 = *(a1 + 108);
          v32 = *(v30 + 28) - v31 * v29;
          v33 = *(v30 + 32);
          v67[0] = *(v30 + 8) + 4 * v31 * v29;
          LODWORD(v67[1]) = v31;
          *(&v67[1] + 4) = *(v30 + 20);
          HIDWORD(v67[2]) = v32;
          v67[3] = v33;
          v66 = &unk_1F2CFA908;
          v34 = *(a1 + 160);
          v63[2] = 0;
          v35 = *(v34 + 8) + 4 * v31 * v9;
          v63[0] = &unk_1F2CFCA48;
          v63[1] = v35;
          LODWORD(v63[2]) = v31;
          v63[3] = *(v34 + 24);
          kaldi::CuMatrixBase<float>::AddVecToRows(&v66, v63, 1.0, v8);
          v36 = *(a1 + 104);
          v37 = (*(a1 + 116) * v9 + *(a1 + 112) * v29) * v36;
          v38 = *(a1 + 124) * v36;
          v39 = *(v60 + 8) + 4 * v37;
          v40 = *(v60 + 28) - v37;
          v41 = *(v60 + 32);
          LODWORD(v65[1]) = v38;
          *(&v65[1] + 4) = *(v60 + 20);
          HIDWORD(v65[2]) = v40;
          v65[3] = v41;
          v64 = &unk_1F2CFA908;
          v65[0] = v39;
          kaldi::QuantizedMatrixBase<signed char>::Range(*(a1 + 152), 0, v38, *(a1 + 108) * v9, *(a1 + 108), v63);
          LODWORD(v42) = 1.0;
          kaldi::CuMatrixBase<float>::AddMatMat<signed char>(&v66, &v64, 111, v63, 111, v42, 1.0);
          kaldi::QuantizedMatrixBase<signed char>::~QuantizedMatrixBase(v63);
          v64 = &unk_1F2CFA908;
          memset(v65, 0, sizeof(v65));
          quasar::Bitmap::~Bitmap(&v64);
          v66 = &unk_1F2CFA908;
          memset(v67, 0, sizeof(v67));
          quasar::Bitmap::~Bitmap(&v66);
          ++v29;
          v9 = v61;
        }

        while (v29 < *(a1 + 120));
      }

      v43 = *(a1 + 148);
      if (v43 >= 1)
      {
        for (j = 0; j < v43; ++j)
        {
          v45 = *(a1 + 108);
          v46 = v45 * (j + v43 * v9);
          v47 = *(a3 + 8) + 4 * v46;
          v48 = *(a3 + 28) - v46;
          v49 = *(a3 + 32);
          LODWORD(v63[2]) = v45;
          *(&v63[2] + 4) = *(a3 + 20);
          HIDWORD(v63[3]) = v48;
          v63[4] = v49;
          v63[0] = &unk_1F2CFA908;
          v63[1] = v47;
          v50 = *(a1 + 384) + 48 * a4;
          LODWORD(v47) = v45 * j * *(a1 + 136);
          v51 = *(v50 + 8) + 4 * v47;
          LODWORD(v47) = *(v50 + 28) - v47;
          v52 = *(v50 + 32);
          v67[0] = v51;
          LODWORD(v67[1]) = v45;
          *(&v67[1] + 4) = *(v50 + 20);
          HIDWORD(v67[2]) = v47;
          v67[3] = v52;
          v66 = &unk_1F2CFA908;
          kaldi::CuMatrixBase<float>::CopyFromMat<float>(v63, &v66, 111);
          v66 = &unk_1F2CFA908;
          memset(v67, 0, sizeof(v67));
          quasar::Bitmap::~Bitmap(&v66);
          if (*(a1 + 132) >= 2)
          {
            v53 = 1;
            do
            {
              v54 = *(a1 + 384) + 48 * a4;
              v55 = *(a1 + 108);
              v56 = (v53 + j * *(a1 + 136)) * v55;
              v57 = *(v54 + 8) + 4 * v56;
              v58 = *(v54 + 28) - v56;
              v59 = *(v54 + 32);
              v67[0] = v57;
              LODWORD(v67[1]) = v55;
              *(&v67[1] + 4) = *(v54 + 20);
              HIDWORD(v67[2]) = v58;
              v67[3] = v59;
              v66 = &unk_1F2CFA908;
              kaldi::CuMatrixBase<float>::Max(v63, &v66);
              v66 = &unk_1F2CFA908;
              memset(v67, 0, sizeof(v67));
              quasar::Bitmap::~Bitmap(&v66);
              ++v53;
            }

            while (v53 < *(a1 + 132));
          }

          v63[0] = &unk_1F2CFA908;
          memset(&v63[1], 0, 32);
          quasar::Bitmap::~Bitmap(v63);
          v43 = *(a1 + 148);
          v9 = v61;
        }
      }

      ++v9;
    }

    while (v9 < *(a1 + 144));
  }
}

void sub_1B5408C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  *(v28 + 8) = 0u;
  *(v28 + 24) = 0u;
  quasar::Bitmap::~Bitmap(&a22);
  *(v27 + 8) = 0u;
  *(v27 + 24) = 0u;
  quasar::Bitmap::~Bitmap(&a27);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::BackpropagateFnc()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Backpropagation of CNN ConvolutionalMaxPoolingComponent is not supported for quantized weights");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::AccumGradients()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Not supported for quantized weights");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::UpdateWeights()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::GetGradient(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v8 = (*(*a1 + 16))(a1);
  kaldi::CuMatrix<float>::CuMatrix(v16, *(a3 + 20), *(a3 + 16), 0, 0, 0);
  kaldi::CuMatrix<float>::CuMatrix(v15, *(a2 + 20), *(a2 + 16), 0, 0, 0);
  (*(*v8 + 112))(v8, a2, v16, 0);
  (*(*v8 + 128))(v8, a2, v16, a3, v15, 0);
  (*(*v8 + 232))(v8, a2, a3, 0, 0);
  LODWORD(a3) = kaldi::quasar::Vocab::VocabSize(*(a1 + 152));
  LODWORD(a2) = kaldi::QuantizedMatrixBase<short>::NumCols(*(a1 + 152));
  v9 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a4, v9, 1);
  LODWORD(a3) = a2 * a3;
  v13 = 0;
  v14 = 0;
  v12 = *a4;
  LODWORD(v13) = a3;
  kaldi::VectorBase<float>::CopyRowsFromMat(&v12, **(v8 + 168));
  v10 = *(*(a1 + 160) + 16);
  v13 = 0;
  v14 = 0;
  v12 = *a4 + 4 * a3;
  LODWORD(v13) = v10;
  kaldi::CuVectorBase<float>::CopyToVec<float>(**(v8 + 192), &v12);
  (*(*v8 + 8))(v8);
  kaldi::CuMatrix<float>::~CuMatrix(v15);
  return kaldi::CuMatrix<float>::~CuMatrix(v16);
}

void sub_1B5409054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  kaldi::CuMatrix<float>::~CuMatrix(va1);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::SetGradientNormalization(uint64_t result, int a2, float a3)
{
  *(result + 276) = a3;
  *(result + 272) = a2;
  *(result + 480) = 0;
  return result;
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::NormalizeGradients(uint64_t a1, int a2, float a3)
{
  v4 = a3;
  v6 = *(a1 + 272);
  if (v6 == 3)
  {
    if (a3 >= 0.0 && a3 <= 1.0)
    {
      kaldi::nnet1::UpdatableComponent::RmspropGradient(*(*(a1 + 168) + 8 * a2), *(a1 + 216) + 48 * a2, a3);
      v10 = *(*(a1 + 192) + 8 * a2);
      v11 = *(a1 + 240) + 32 * a2;

      kaldi::nnet1::UpdatableComponent::RmspropGradient(v10, v11, v4);
    }
  }

  else if (v6 == 2)
  {
    if (a3 > 0.0)
    {
      v8 = a2;
      if (*(a1 + 84))
      {
        v4 = *(*(a1 + 288) + 4 * a2) * a3;
      }

      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(*(*(a1 + 168) + 8 * a2), (*(a1 + 216) + 48 * a2), v4);
      v12 = *(*(a1 + 192) + 8 * v8);
      v13 = (*(a1 + 240) + 32 * v8);

      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v12, v13, v4);
    }
  }

  else if (v6 == 1 && a3 > 0.0)
  {
    v7 = a2;
    if (*(a1 + 84))
    {
      v4 = *(*(a1 + 288) + 4 * a2) * a3;
    }

    kaldi::nnet1::UpdatableComponent::ClipGradient(*(*(a1 + 168) + 8 * a2), v4);
    v14 = *(*(a1 + 192) + 8 * v7);

    kaldi::nnet1::UpdatableComponent::ClipGradient(v14, v4);
  }
}

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::CountZeroCorr(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::EnsureCorrs(a1);
  v6 = *(*(a1 + 160) + 16);
  v7 = kaldi::quasar::Vocab::VocabSize(*(a1 + 152));
  result = kaldi::QuantizedMatrixBase<short>::NumCols(*(a1 + 152));
  *a3 = v6 + result * v7;
  v9 = *(a1 + 168);
  v10 = *(a1 + 176) - v9;
  if (v10 && (v11 = *(a1 + 200) - *(a1 + 192)) != 0)
  {
    v12 = v10 >> 3;
    v13 = v11 >> 3;
    v14 = *(a1 + 80);
    if (v14 == 1)
    {
      v14 = 0;
    }

    v15 = v14;
    v16 = v13 - 1;
    if (v12 - 1 != v14 || v16 != v14)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v25);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Unexpected mismatch in indexes: ", 32);
      v21 = MEMORY[0x1B8C84C00](v20, v15);
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "  ", 2);
      v23 = MEMORY[0x1B8C84C30](v22, ((*(a1 + 176) - *(a1 + 168)) >> 3) - 1);
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "  ", 2);
      MEMORY[0x1B8C84C30](v24, ((*(a1 + 200) - *(a1 + 192)) >> 3) - 1);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v25);
    }

    v18 = kaldi::CuMatrixBase<float>::CountZeros(*(v9 + 8 * v14));
    result = kaldi::CuVectorBase<float>::CountZeros(*(*(a1 + 192) + 8 * v15));
    v19 = result + v18;
  }

  else
  {
    v19 = 0;
  }

  *a2 = v19;
  return result;
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::EnsureCorrs(uint64_t a1)
{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::InitOutBuffers(a1);
  if ((*(a1 + 480) & 1) == 0)
  {
    v2 = *(a1 + 80);
    if (v2 > 1)
    {
      v3 = (v2 + 1);
    }

    else
    {
      v3 = 1;
    }

    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 408), v3);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 360), v3);
    std::vector<BOOL>::resize(a1 + 456, v3, 0);
    std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize((a1 + 168), v3);
    std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::resize((a1 + 192), v3);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 216), v3);
    std::vector<kaldi::CuVector<float>>::resize((a1 + 240), v3);
    if (v3 >= 1)
    {
      operator new();
    }

    std::vector<int>::resize((a1 + 288), v3);
    *(a1 + 480) = 1;
  }
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::VectorizeWeightsCorrs()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

double kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::ConvolutionalMaxPoolingComponent(uint64_t a1, int a2, int a3)
{
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = &unk_1F2D279F8;
  *(a1 + 56) = xmmword_1B5AE0070;
  *(a1 + 72) = -1082130432;
  *(a1 + 76) = 0x100000003;
  *(a1 + 84) = 0;
  *(a1 + 86) = 0;
  *a1 = &unk_1F2D11A68;
  *(a1 + 88) = &unk_1F2D11BA0;
  *(a1 + 96) = &unk_1F2D11BC8;
  result = 0.0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  __asm { FMOV            V1.2S, #1.0 }

  *(a1 + 264) = _D1;
  *(a1 + 272) = 0;
  *(a1 + 276) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0;
  return result;
}

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::ConvolutionalMaxPoolingComponent(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D15BB8;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(a1 + 24, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 3);
  *a1 = &unk_1F2D172B0;
  *(a1 + 48) = &unk_1F2D279F8;
  v5 = *(a2 + 56);
  *(a1 + 71) = *(a2 + 71);
  *(a1 + 56) = v5;
  *a1 = &unk_1F2D11A68;
  *(a1 + 88) = &unk_1F2D11BA0;
  *(a1 + 96) = &unk_1F2D11BC8;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 168), (*(a2 + 176) - *(a2 + 168)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::vector[abi:ne200100]((a1 + 192), (*(a2 + 200) - *(a2 + 192)) >> 3);
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 216, *(a2 + 216), *(a2 + 224), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 224) - *(a2 + 216)) >> 4));
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(a1 + 240, *(a2 + 240), *(a2 + 248), (*(a2 + 248) - *(a2 + 240)) >> 5);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 276) = *(a2 + 276);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 288) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 288, *(a2 + 288), *(a2 + 296), (*(a2 + 296) - *(a2 + 288)) >> 2);
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 312, *(a2 + 312), *(a2 + 320), (*(a2 + 320) - *(a2 + 312)) >> 2);
  *(a1 + 552) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0;
  if (*(a1 + 16) == 1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "deep copy constructor not implemented in the case of vectorized_weights.", 72);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v14);
  }

  if (*(a2 + 152))
  {
    operator new();
  }

  if (*(a2 + 160))
  {
    kaldi::NewCuSubOrVec<float>();
  }

  v7 = *(a1 + 168);
  v6 = *(a1 + 176);
  if (v6 != v7)
  {
    v8 = 0;
    do
    {
      v9 = *(*(a2 + 168) + 8 * v8);
      if (v9)
      {
        kaldi::NewCuSubOrMat<float>(v9, *(a1 + 16));
      }

      ++v8;
    }

    while (v8 < (v6 - v7) >> 3);
  }

  v11 = *(a1 + 192);
  v10 = *(a1 + 200);
  if (v10 != v11)
  {
    v12 = 0;
    do
    {
      if (*(*(a2 + 192) + 8 * v12))
      {
        kaldi::NewCuSubOrVec<float>();
      }

      ++v12;
    }

    while (v12 < (v10 - v11) >> 3);
  }

  if (*(a2 + 496) != *(a2 + 488))
  {
    kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::InitResidualAggregator(a1, (a1 + 488));
  }

  return a1;
}

void sub_1B5409D60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, _Unwind_Exception *exception_object, quasar::Bitmap *a12, quasar::Bitmap *a13, void *a14)
{
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(v16);
  v17 = *(v14 + 57);
  if (v17)
  {
    operator delete(v17);
  }

  a14 = (v14 + 432);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = (v14 + 408);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = (v14 + 384);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = (v14 + 360);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = (v14 + 336);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  v18 = *(v14 + 39);
  if (v18)
  {
    *(v14 + 40) = v18;
    operator delete(v18);
  }

  v19 = *(v14 + 36);
  if (v19)
  {
    *(v14 + 37) = v19;
    operator delete(v19);
  }

  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a14);
  v20 = *(v14 + 20);
  *(v14 + 20) = 0;
  if (v20)
  {
    (*(*v20 + 16))(v20);
  }

  std::unique_ptr<kaldi::QuantizedMatrix<short>>::reset[abi:ne200100](v15, 0);
  quasar::Bitmap::~Bitmap(a12);
  quasar::Bitmap::~Bitmap(a13);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v14);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::InitResidualAggregator(void *a1, uint64_t *a2)
{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::EnsureCorrs(a1);
  kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, *(a1[21] + 8 * ((((a1[22] - a1[21]) << 29) - 0x100000000) >> 32)));
  v4 = *(a1[24] + 8 * ((((a1[25] - a1[24]) << 29) - 0x100000000) >> 32));

  kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v4);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::~ConvolutionalMaxPoolingComponent(uint64_t a1)
{
  *a1 = &unk_1F2D11A68;
  v2 = (a1 + 88);
  *(a1 + 88) = &unk_1F2D11BA0;
  v3 = (a1 + 96);
  *(a1 + 96) = &unk_1F2D11BC8;
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator((a1 + 488));
  v4 = *(a1 + 456);
  if (v4)
  {
    operator delete(v4);
  }

  v8 = (a1 + 432);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (a1 + 408);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (a1 + 384);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (a1 + 360);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (a1 + 336);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v5 = *(a1 + 312);
  if (v5)
  {
    *(a1 + 320) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 288);
  if (v6)
  {
    *(a1 + 296) = v6;
    operator delete(v6);
  }

  v8 = (a1 + 240);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (a1 + 216);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (a1 + 192);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (a1 + 168);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v7 = *(a1 + 160);
  *(a1 + 160) = 0;
  if (v7)
  {
    (*(*v7 + 16))(v7);
  }

  std::unique_ptr<kaldi::QuantizedMatrix<short>>::reset[abi:ne200100]((a1 + 152), 0);
  quasar::Bitmap::~Bitmap(v3);
  quasar::Bitmap::~Bitmap(v2);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(a1);
}

{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::~ConvolutionalMaxPoolingComponent(a1);

  JUMPOUT(0x1B8C85350);
}

void non-virtual thunk tokaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::~ConvolutionalMaxPoolingComponent(uint64_t a1)
{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::~ConvolutionalMaxPoolingComponent(a1 - 88);
}

{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::~ConvolutionalMaxPoolingComponent(a1 - 96);
}

{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::~ConvolutionalMaxPoolingComponent(a1 - 88);

  JUMPOUT(0x1B8C85350);
}

{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::~ConvolutionalMaxPoolingComponent(a1 - 96);

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::InitData(uint64_t a1, uint64_t *a2, kaldi::UniformRandomNumber *a3)
{
  v84 = 0x40000000;
  v85 = -1073741824;
  v83 = 1036831949;
  *(a1 + 116) = *(a1 + 8);
  v6 = (a1 + 116);
  *(a1 + 132) = 0x100000001;
  v7 = (a1 + 132);
  v82 = -1;
  memset(v81, 0, sizeof(v81));
  v8 = a2 + 4;
  v9 = (a1 + 280);
  v72 = (a1 + 136);
  v73 = (a1 + 264);
  v10 = (a1 + 124);
  v70 = (a1 + 120);
  v71 = (a1 + 128);
  v74 = (a1 + 268);
  v75 = (a1 + 112);
  v76 = (a1 + 108);
  v11 = (a1 + 104);
  while (1)
  {
    if ((*(v8 + *(*a2 - 24)) & 2) != 0)
    {
      v50 = *(a1 + 8);
      v51 = *(a1 + 12);
      v52 = *(a1 + 104);
      v53 = *(a1 + 108);
      v54 = *(a1 + 132);
      v55 = v50 / v52 - *(a1 + 128);
      v56 = *(a1 + 120);
      v57 = *(a1 + 136);
      v58 = (v56 - v54) / v57 + 1;
      *(a1 + 148) = v58;
      v59 = v53 * v58;
      v60 = v51 / v59;
      *(a1 + 140) = v55;
      *(a1 + 144) = v51 / v59;
      if (v54 >= 1 && v56 >= v54)
      {
        if (v57 > 0)
        {
          if (v51 == v59 * v60)
          {
            if (v50 == v50 / v52 * v52)
            {
              if (*v10 + *v75 * (v56 - 1) + *v6 * (v60 - 1) <= v55)
              {
                if (v82 >= 1)
                {
                  kaldi::UniformRandomNumber::SetRandomSeeds(a3, v82);
                }

                kaldi::GaussRandomNumber::GaussRandomNumber(v79, a3);
                kaldi::Matrix<float>::Matrix(v77, ((*(a1 + 128) + *(a1 + 124)) * *(a1 + 104)), (*(a1 + 144) * *(a1 + 108)), 0, 0);
                for (i = 0; i < kaldi::MatrixBase<float>::NumRows(v77); ++i)
                {
                  for (j = 0; j < kaldi::MatrixBase<float>::NumCols(v77); ++j)
                  {
                    v63 = *&v83;
                    kaldi::GaussRandomNumber::Rand(v79, 0);
                    *(v77[0] + 4 * i * v78 + 4 * j) = v63 * v64;
                  }
                }

                if (!*(a1 + 152))
                {
                  operator new();
                }

                kaldi::KaldiWarnMessage::KaldiWarnMessage(v80);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, "pointer is thought to be un-initialized here", 44);
                kaldi::KaldiErrorMessage::~KaldiErrorMessage(v80);
              }

              kaldi::KaldiWarnMessage::KaldiWarnMessage(v80);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, "ConvolutionalMaxPoolingComponent: too few input bands to compute the output", 75);
              kaldi::KaldiErrorMessage::~KaldiErrorMessage(v80);
            }

            kaldi::KaldiWarnMessage::KaldiWarnMessage(v80);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, "ConvolutionalMaxPoolingComponent: input dim mismatch", 52);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(v80);
          }

          kaldi::KaldiWarnMessage::KaldiWarnMessage(v80);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, "ConvolutionalMaxPoolingComponent: output dim mismatch", 53);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(v80);
        }

        kaldi::KaldiWarnMessage::KaldiWarnMessage(v80);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, "ConvolutionalMaxPoolingComponent: Max pooling step must be >= 1", 63);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v80);
      }

      kaldi::KaldiWarnMessage::KaldiWarnMessage(v80);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, "ConvolutionalMaxPoolingComponent: Invalid max pooling size", 58);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v80);
    }

    kaldi::ReadToken(a2, 0, v81);
    if (SHIBYTE(v81[2]) < 0)
    {
      break;
    }

    if (HIBYTE(v81[2]) <= 0xCu)
    {
      if (HIBYTE(v81[2]) > 0xAu)
      {
        if (HIBYTE(v81[2]) != 11)
        {
          v23 = v81[0] == 0x537265746C69463CLL && LODWORD(v81[1]) == 1046837865;
          v14 = v10;
          if (v23)
          {
            goto LABEL_186;
          }

LABEL_163:
          v44 = v81;
          goto LABEL_180;
        }

        if (v81[0] != 0x6E6152736169423CLL || *(v81 + 3) != 0x3E65676E61527361)
        {
          v30 = v81[0] == 0x745368637461503CLL && *(v81 + 3) == 0x3E70657453686374;
          v14 = v75;
          if (!v30)
          {
            goto LABEL_205;
          }

          goto LABEL_186;
        }

LABEL_171:
        v21 = &v84;
        goto LABEL_187;
      }

      if (HIBYTE(v81[2]) == 9)
      {
        goto LABEL_164;
      }

      if (HIBYTE(v81[2]) != 10)
      {
        goto LABEL_205;
      }

      if (v81[0] != 0x61654D736169423CLL || LOWORD(v81[1]) != 15982)
      {
        v13 = v81[0] == 0x7A69536C6F6F503CLL && LOWORD(v81[1]) == 15973;
        v14 = v7;
        if (v13)
        {
          goto LABEL_186;
        }

        v15 = v81[0] == 0x6574536C6F6F503CLL && LOWORD(v81[1]) == 15984;
        v14 = v72;
        if (v15)
        {
          goto LABEL_186;
        }

LABEL_161:
        if (HIBYTE(v81[2]) != 9)
        {
          if (HIBYTE(v81[2]) != 12)
          {
            goto LABEL_205;
          }

          goto LABEL_163;
        }

LABEL_164:
        v45 = v81[0] == 0x6D726F4E78614D3CLL && LOBYTE(v81[1]) == 62;
        v21 = v9;
        if (!v45)
        {
          goto LABEL_205;
        }

        goto LABEL_187;
      }

LABEL_170:
      v21 = &v85;
      goto LABEL_187;
    }

    if (HIBYTE(v81[2]) > 0xFu)
    {
      if (HIBYTE(v81[2]) == 16)
      {
        v22 = v81[0] == 0x7461654674754F3CLL && v81[1] == 0x3E7370614D657275;
        goto LABEL_95;
      }

      if (HIBYTE(v81[2]) != 19 || (v81[0] == 0x61654C736169423CLL ? (v24 = v81[1] == 0x6F43657461526E72) : (v24 = 0), v24 ? (v25 = *(&v81[1] + 3) == 0x3E66656F43657461) : (v25 = 0), v21 = v74, !v25))
      {
LABEL_205:
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v80);
        v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, "Unknown token ", 14);
        if (v81[2] >= 0)
        {
          v66 = v81;
        }

        else
        {
          v66 = v81[0];
        }

        if (v81[2] >= 0)
        {
          v67 = HIBYTE(v81[2]);
        }

        else
        {
          v67 = v81[1];
        }

        v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, v66, v67);
        v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, ", a typo in config?", 19);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, " (ParamStddev|BiasMean|BiasRange|InFeatureMaps|OutFeatureMaps|PatchStep|SectionStep|SectionSize|FilterSize|LearnRateCoef|BiasLearnRateCoef|MaxNorm|RandomSeed)", 158);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v80);
      }
    }

    else
    {
      if (HIBYTE(v81[2]) == 13)
      {
        if (v81[0] != 0x74536D617261503CLL || *(v81 + 5) != 0x3E7665646474536DLL)
        {
          v27 = v81[0] == 0x6E6F69746365533CLL && *(v81 + 5) == 0x3E706574536E6F69;
          v14 = v6;
          if (!v27)
          {
            v28 = v81[0] == 0x6E6F69746365533CLL && *(v81 + 5) == 0x3E657A69536E6F69;
            v14 = v70;
            if (!v28)
            {
              goto LABEL_205;
            }
          }

          goto LABEL_186;
        }

LABEL_169:
        v21 = &v83;
        goto LABEL_187;
      }

      if (HIBYTE(v81[2]) != 15)
      {
        goto LABEL_205;
      }

      v18 = v81[0] == 0x75746165466E493CLL && *(v81 + 7) == 0x3E7370614D657275;
      v14 = v11;
      if (v18)
      {
        goto LABEL_186;
      }

      v19 = v81[0] == 0x65726168536E493CLL && *(v81 + 7) == 0x3E73646E61426465;
      v14 = v71;
      if (v19)
      {
        goto LABEL_186;
      }

      v20 = v81[0] == 0x61526E7261654C3CLL && *(v81 + 7) == 0x3E66656F43657461;
      v21 = v73;
      if (!v20)
      {
        goto LABEL_205;
      }
    }

LABEL_187:
    kaldi::ReadBasicType<float>(a2, 0, v21);
LABEL_188:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  v16 = v81[1];
  if (v81[1] > 12)
  {
    switch(v81[1])
    {
      case 0xDLL:
        if (*v81[0] == 0x74536D617261503CLL && *(v81[0] + 5) == 0x3E7665646474536DLL)
        {
          goto LABEL_169;
        }

        v34 = *v81[0] == 0x6E6F69746365533CLL && *(v81[0] + 5) == 0x3E706574536E6F69;
        v14 = v6;
        if (v34)
        {
          goto LABEL_186;
        }

        v35 = *v81[0] == 0x6E6F69746365533CLL && *(v81[0] + 5) == 0x3E657A69536E6F69;
        v14 = v70;
        if (v35)
        {
          goto LABEL_186;
        }

        break;
      case 0xFLL:
        v38 = *v81[0] == 0x75746165466E493CLL && *(v81[0] + 7) == 0x3E7370614D657275;
        v14 = v11;
        if (v38)
        {
          goto LABEL_186;
        }

        v39 = *v81[0] == 0x65726168536E493CLL && *(v81[0] + 7) == 0x3E73646E61426465;
        v14 = v71;
        if (v39)
        {
          goto LABEL_186;
        }

        break;
      case 0x10:
        v22 = *v81[0] == 0x7461654674754F3CLL && *(v81[0] + 8) == 0x3E7370614D657275;
LABEL_95:
        v14 = v76;
        if (!v22)
        {
          goto LABEL_205;
        }

        goto LABEL_186;
      default:
        goto LABEL_145;
    }
  }

  else
  {
    switch(v81[1])
    {
      case 0xALL:
        if (*v81[0] == 0x61654D736169423CLL && *(v81[0] + 8) == 15982)
        {
          goto LABEL_170;
        }

        v32 = *v81[0] == 0x7A69536C6F6F503CLL && *(v81[0] + 8) == 15973;
        v14 = v7;
        if (v32)
        {
          goto LABEL_186;
        }

        break;
      case 0xBLL:
        if (*v81[0] == 0x6E6152736169423CLL && *(v81[0] + 3) == 0x3E65676E61527361)
        {
          goto LABEL_171;
        }

        v37 = *v81[0] == 0x745368637461503CLL && *(v81[0] + 3) == 0x3E70657453686374;
        v14 = v75;
        if (v37)
        {
          goto LABEL_186;
        }

        break;
      case 0xCLL:
        v17 = *v81[0] == 0x537265746C69463CLL && *(v81[0] + 8) == 1046837865;
        v14 = v10;
        if (v17)
        {
          goto LABEL_186;
        }

        break;
      default:
LABEL_145:
        if (v16 == 15)
        {
          v41 = *v81[0] == 0x61526E7261654C3CLL && *(v81[0] + 7) == 0x3E66656F43657461;
          v21 = v73;
          if (v41)
          {
            goto LABEL_187;
          }

          if ((v81[2] & 0x8000000000000000) == 0)
          {
            goto LABEL_161;
          }
        }

        if (v81[1] == 9)
        {
          v46 = *v81[0] == 0x6D726F4E78614D3CLL && *(v81[0] + 8) == 62;
          v21 = v9;
          if (!v46)
          {
            if ((v81[2] & 0x8000000000000000) == 0)
            {
              goto LABEL_205;
            }

LABEL_178:
            if (v81[1] != 12)
            {
              goto LABEL_205;
            }

            v44 = v81[0];
LABEL_180:
            v47 = *v44;
            v48 = *(v44 + 2);
            if (v47 != 0x536D6F646E61523CLL || v48 != 1046766949)
            {
              goto LABEL_205;
            }

            v14 = &v82;
LABEL_186:
            kaldi::ReadBasicType<int>(a2, 0, v14);
            goto LABEL_188;
          }
        }

        else
        {
          if (v81[1] != 19)
          {
            goto LABEL_178;
          }

          v43 = *v81[0] == 0x61654C736169423CLL && *(v81[0] + 8) == 0x6F43657461526E72 && *(v81[0] + 11) == 0x3E66656F43657461;
          v21 = v74;
          if (!v43)
          {
            if ((v81[2] & 0x8000000000000000) != 0)
            {
              goto LABEL_178;
            }

            goto LABEL_161;
          }
        }

        goto LABEL_187;
    }
  }

  v16 = v81[1];
  if (v81[1] == 10)
  {
    v40 = *v81[0] == 0x6574536C6F6F503CLL && *(v81[0] + 8) == 15984;
    v14 = v72;
    if (v40)
    {
      goto LABEL_186;
    }

    v16 = v81[1];
  }

  goto LABEL_145;
}

void sub_1B540B024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (*(v24 - 121) < 0)
  {
    operator delete(*(v24 - 144));
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::ReadData(uint64_t a1, uint64_t *a2, int a3)
{
  *(a1 + 116) = *(a1 + 8);
  v6 = a1 + 116;
  *(a1 + 132) = 0x100000001;
  v7 = a1 + 132;
  if (kaldi::Peek(a2, a3) != 60)
  {
LABEL_151:
    v40 = *(a1 + 12);
    v41 = *(a1 + 108);
    v42 = *(a1 + 8) / *(a1 + 104) - *(a1 + 128);
    v43 = (*(a1 + 120) - *(a1 + 132)) / *(a1 + 136) + 1;
    *(a1 + 148) = v43;
    *(a1 + 16) = 0;
    *(a1 + 140) = v42;
    *(a1 + 144) = v40 / (v41 * v43);
    LOBYTE(v49) = 0;
    kaldi::ReadBasicType<char>(a2, a3, &v49);
    if (!*(a1 + 152))
    {
      kaldi::ExpectToken(a2, a3, "<Filters>");
      operator new();
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "pointer is thought to be un-initialized here");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
  }

  while (1)
  {
    v49 = 0uLL;
    v50 = 0;
    kaldi::ReadToken(a2, a3, &v49);
    if (SHIBYTE(v50) < 0)
    {
      if (*(&v49 + 1) == 15)
      {
        v11 = *v49 == 0x75746165466E493CLL && *(v49 + 7) == 0x3E7370614D657275;
        v9 = a1 + 104;
        if (v11)
        {
          goto LABEL_141;
        }
      }

      if (*(&v49 + 1) == 16)
      {
        v12 = *v49 == 0x7461654674754F3CLL && *(v49 + 8) == 0x3E7370614D657275;
        v9 = a1 + 108;
        if (v12)
        {
          goto LABEL_141;
        }
      }

      if (*(&v49 + 1) == 13)
      {
        v14 = *v49 == 0x6E6F69746365533CLL && *(v49 + 5) == 0x3E706574536E6F69;
        v9 = v6;
        if (v14)
        {
          goto LABEL_141;
        }
      }

      else if (*(&v49 + 1) == 11)
      {
        v13 = *v49 == 0x745368637461503CLL && *(v49 + 3) == 0x3E70657453686374;
        v9 = a1 + 112;
        if (v13)
        {
          goto LABEL_141;
        }
      }

      v15 = *(&v49 + 1);
      if (*(&v49 + 1) == 13)
      {
        v16 = *v49 == 0x6E6F69746365533CLL && *(v49 + 5) == 0x3E657A69536E6F69;
        v9 = a1 + 120;
        if (v16)
        {
          goto LABEL_141;
        }

        v15 = *(&v49 + 1);
      }

      if (v15 == 12)
      {
        v17 = *v49 == 0x537265746C69463CLL && *(v49 + 8) == 1046837865;
        v9 = a1 + 124;
        if (v17)
        {
          goto LABEL_141;
        }

        if ((v50 & 0x8000000000000000) == 0)
        {
          goto LABEL_57;
        }
      }

      if (*(&v49 + 1) == 10)
      {
        v33 = *v49 == 0x7A69536C6F6F503CLL && *(v49 + 8) == 15973;
        v9 = v7;
        if (v33)
        {
          goto LABEL_141;
        }

        if ((v50 & 0x8000000000000000) == 0)
        {
          if (HIBYTE(v50) == 19)
          {
            goto LABEL_71;
          }

          if (HIBYTE(v50) == 15)
          {
            goto LABEL_121;
          }

          if (HIBYTE(v50) != 10)
          {
            goto LABEL_142;
          }

          goto LABEL_94;
        }
      }

      else if (*(&v49 + 1) == 15)
      {
        v18 = *v49 == 0x65726168536E493CLL && *(v49 + 7) == 0x3E73646E61426465;
        v9 = a1 + 128;
        if (v18)
        {
          goto LABEL_141;
        }

        if ((v50 & 0x8000000000000000) == 0)
        {
LABEL_57:
          if (HIBYTE(v50) != 10)
          {
            if (HIBYTE(v50) == 15)
            {
LABEL_121:
              v34 = v49 == 0x61526E7261654C3CLL && *(&v49 + 7) == 0x3E66656F43657461;
              v26 = (a1 + 264);
              if (!v34)
              {
                goto LABEL_142;
              }

              goto LABEL_147;
            }

LABEL_70:
            if (HIBYTE(v50) != 19)
            {
              goto LABEL_142;
            }

LABEL_71:
            v20 = &v49;
            goto LABEL_72;
          }

LABEL_90:
          v29 = v49 == 0x7A69536C6F6F503CLL && WORD4(v49) == 15973;
          v9 = v7;
          if (v29)
          {
            goto LABEL_141;
          }

LABEL_94:
          v30 = v49 == 0x6574536C6F6F503CLL && WORD4(v49) == 15984;
          v9 = v6 + 20;
          if (!v30)
          {
            goto LABEL_142;
          }

          goto LABEL_141;
        }
      }

      v35 = *(&v49 + 1);
      if (*(&v49 + 1) != 10)
      {
        goto LABEL_133;
      }

      v36 = *v49 == 0x6574536C6F6F503CLL && *(v49 + 8) == 15984;
      v9 = v6 + 20;
      if (!v36)
      {
        v35 = *(&v49 + 1);
LABEL_133:
        if (v35 == 15)
        {
          v37 = *v49 == 0x61526E7261654C3CLL && *(v49 + 7) == 0x3E66656F43657461;
          v26 = (a1 + 264);
          if (!v37)
          {
            if (v50 < 0)
            {
              goto LABEL_139;
            }

LABEL_142:
            v38 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v49, "<MaxNorm>");
            v26 = (a1 + 280);
            if (!v38)
            {
              if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v49, "<GradientNormType>"))
              {
                __p[0] = 0;
                __p[1] = 0;
                v48 = 0;
                kaldi::ReadToken(a2, a3, __p);
                *(a1 + 272) = kaldi::nnet1::Component::MarkerToGradientNormType(__p);
                if (SHIBYTE(v48) < 0)
                {
                  operator delete(__p[0]);
                }

                goto LABEL_148;
              }

              v39 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v49, "<MaxGrad>");
              v26 = (a1 + 276);
              if (!v39)
              {
                kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
                v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "unrecognized config token ", 26);
                if (v50 >= 0)
                {
                  v45 = &v49;
                }

                else
                {
                  v45 = v49;
                }

                if (v50 >= 0)
                {
                  v46 = HIBYTE(v50);
                }

                else
                {
                  v46 = *(&v49 + 1);
                }

                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, v45, v46);
                kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
              }
            }
          }

LABEL_147:
          kaldi::ReadBasicType<float>(a2, a3, v26);
          goto LABEL_148;
        }

LABEL_139:
        if (*(&v49 + 1) != 19)
        {
          goto LABEL_142;
        }

        v20 = v49;
LABEL_72:
        v21 = *v20;
        v22 = v20[1];
        v23 = *(v20 + 11);
        v25 = v21 == 0x61654C736169423CLL && v22 == 0x6F43657461526E72 && v23 == 0x3E66656F43657461;
        v26 = (a1 + 268);
        if (!v25)
        {
          goto LABEL_142;
        }

        goto LABEL_147;
      }
    }

    else if (HIBYTE(v50) <= 0xCu)
    {
      if (HIBYTE(v50) == 10)
      {
        goto LABEL_90;
      }

      if (HIBYTE(v50) != 11)
      {
        goto LABEL_62;
      }

      v32 = v49 == 0x745368637461503CLL && *(&v49 + 3) == 0x3E70657453686374;
      v9 = a1 + 112;
      if (!v32)
      {
        goto LABEL_142;
      }
    }

    else if (HIBYTE(v50) > 0xFu)
    {
      if (HIBYTE(v50) != 16)
      {
        goto LABEL_70;
      }

      v31 = v49 == 0x7461654674754F3CLL && *(&v49 + 1) == 0x3E7370614D657275;
      v9 = a1 + 108;
      if (!v31)
      {
        goto LABEL_142;
      }
    }

    else
    {
      if (HIBYTE(v50) == 13)
      {
        v27 = v49 == 0x6E6F69746365533CLL && *(&v49 + 5) == 0x3E706574536E6F69;
        v9 = v6;
        if (v27)
        {
          goto LABEL_141;
        }

        v28 = v49 == 0x6E6F69746365533CLL && *(&v49 + 5) == 0x3E657A69536E6F69;
        v9 = a1 + 120;
        if (v28)
        {
          goto LABEL_141;
        }

LABEL_62:
        if (HIBYTE(v50) != 12)
        {
          goto LABEL_142;
        }

        v19 = v49 == 0x537265746C69463CLL && DWORD2(v49) == 1046837865;
        v9 = a1 + 124;
        if (!v19)
        {
          goto LABEL_142;
        }

        goto LABEL_141;
      }

      if (HIBYTE(v50) != 15)
      {
        goto LABEL_142;
      }

      v8 = v49 == 0x75746165466E493CLL && *(&v49 + 7) == 0x3E7370614D657275;
      v9 = a1 + 104;
      if (!v8)
      {
        v10 = v49 == 0x65726168536E493CLL && *(&v49 + 7) == 0x3E73646E61426465;
        v9 = a1 + 128;
        if (!v10)
        {
          goto LABEL_121;
        }
      }
    }

LABEL_141:
    kaldi::ReadBasicType<int>(a2, a3, v9);
LABEL_148:
    if (SHIBYTE(v50) < 0)
    {
      operator delete(v49);
    }

    if (kaldi::Peek(a2, a3) != 60)
    {
      goto LABEL_151;
    }
  }
}

void sub_1B540BA04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v24 - 89) < 0)
  {
    operator delete(*(v24 - 112));
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::WriteConfig(unsigned int *a1, void *a2, uint64_t a3)
{
  kaldi::WriteToken(a2, a3, "<InFeatureMaps>");
  kaldi::WriteBasicType<int>(a2, a3, a1[26]);
  kaldi::WriteToken(a2, a3, "<OutFeatureMaps>");
  kaldi::WriteBasicType<int>(a2, a3, a1[27]);
  kaldi::WriteToken(a2, a3, "<PatchStep>");
  kaldi::WriteBasicType<int>(a2, a3, a1[28]);
  kaldi::WriteToken(a2, a3, "<SectionStep>");
  kaldi::WriteBasicType<int>(a2, a3, a1[29]);
  kaldi::WriteToken(a2, a3, "<SectionSize>");
  kaldi::WriteBasicType<int>(a2, a3, a1[30]);
  kaldi::WriteToken(a2, a3, "<FilterSize>");
  kaldi::WriteBasicType<int>(a2, a3, a1[31]);
  kaldi::WriteToken(a2, a3, "<InSharedBands>");
  kaldi::WriteBasicType<int>(a2, a3, a1[32]);
  kaldi::WriteToken(a2, a3, "<PoolSize>");
  kaldi::WriteBasicType<int>(a2, a3, a1[33]);
  kaldi::WriteToken(a2, a3, "<PoolStep>");
  kaldi::WriteBasicType<int>(a2, a3, a1[34]);
  kaldi::WriteToken(a2, a3, "<LearnRateCoef>");
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<BiasLearnRateCoef>");
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<MaxNorm>");
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<GradientNormType>");
  kaldi::nnet1::Component::TypeToMarker(a1[68], &__p);
  kaldi::WriteToken(a2, a3, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteToken(a2, a3, "<MaxGrad>");
  return kaldi::WriteBasicType<float>(a2, a3);
}

void sub_1B540BCAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::WriteData(uint64_t a1, void *a2, int a3, int a4)
{
  (*(*a1 + 168))(a1);
  kaldi::WriteBasicType<char>(a2, a3, 0);
  kaldi::WriteToken(a2, a3, "<Filters>");
  kaldi::QuantizedMatrix<short>::Write(*(a1 + 152), a2, a3, a4);
  kaldi::WriteToken(a2, a3, "<Bias>");
  v8 = *(a1 + 160);

  kaldi::CuVectorBase<float>::Write(v8, a2, a3);
}

const void **kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::GetParams(uint64_t a1, void **a2)
{
  v4 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a2, v4, 0);
  v5 = kaldi::quasar::Vocab::VocabSize(*(a1 + 152));
  v6 = kaldi::QuantizedMatrixBase<short>::NumCols(*(a1 + 152)) * v5;
  v11 = 0;
  v12 = 0;
  v10 = *a2;
  LODWORD(v11) = v6;
  kaldi::VectorBase<float>::CopyRowsFromMat<short>(&v10, *(a1 + 152));
  v7 = *(a1 + 160);
  v8 = *(v7 + 16);
  v11 = 0;
  v12 = 0;
  v10 = *a2 + 4 * v6;
  LODWORD(v11) = v8;
  return kaldi::CuVectorBase<float>::CopyToVec<float>(v7, &v10);
}

void *kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::SetParams(uint64_t a1, char **a2)
{
  (*(*a1 + 176))(a1);
  v4 = kaldi::quasar::Vocab::VocabSize(*(a1 + 152));
  v5 = kaldi::QuantizedMatrixBase<short>::NumCols(*(a1 + 152)) * v4;
  v6 = *(a1 + 152);
  v11 = 0;
  v12 = 0;
  v10 = *a2;
  LODWORD(v11) = v5;
  kaldi::QuantizedMatrixBase<short>::CopyRowsFromVec(v6, &v10);
  v7 = *(a1 + 160);
  v8 = v7[4];
  v11 = 0;
  v12 = 0;
  v10 = &(*a2)[4 * v5];
  LODWORD(v11) = v8;
  return kaldi::CuVectorBase<float>::CopyFromVec<float>(v7, &v10);
}

float kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::GetNormalizedLearningRate(uint64_t a1, int a2)
{
  if ((*(a1 + 84) & 1) == 0)
  {
    return *(a1 + 56);
  }

  v2 = *(a1 + 312);
  v3 = *(a1 + 320) - v2;
  if (!v3)
  {
    return NAN;
  }

  v4 = v3 >> 2;
  if (v4 <= a2)
  {
    return NAN;
  }

  v5 = v4 - 1;
  if (a2 >= 0)
  {
    v5 = a2;
  }

  return *(v2 + 4 * v5);
}

float kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::SumParams(uint64_t a1)
{
  v2 = kaldi::QuantizedMatrixBase<short>::Sum(*(a1 + 152));
  v3 = *&v2;
  v4 = kaldi::CuVectorBase<float>::Sum(*(a1 + 160));
  return v3 + *&v4;
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::PerturbParams(uint64_t a1)
{
  v2 = kaldi::quasar::Vocab::VocabSize(*(a1 + 152));
  v3 = kaldi::QuantizedMatrixBase<short>::NumCols(*(a1 + 152));
  kaldi::CuMatrix<float>::CuMatrix(v4, v2, v3, 1, 0, 0);
  kaldi::CuMatrixBase<float>::SetRandn(v4);
  kaldi::QuantizedMatrixBase<short>::AddMat();
}

uint64_t sub_1B540C030()
{
  kaldi::CuVector<float>::CuVector(v4, *(v0 + 160));
  kaldi::CuVectorBase<float>::SetRandn(v4);
  LODWORD(v2) = v1;
  kaldi::CuVectorBase<float>::AddVec(v2, 1.0);
  kaldi::CuVector<float>::~CuVector(v4);
  return kaldi::CuMatrix<float>::~CuMatrix(&v5);
}

void sub_1B540C07C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::Info(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v25, " ");
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::ParamsString(a1);
  if ((v24 & 0x80u) == 0)
  {
    v4 = v23;
  }

  else
  {
    v4 = v23[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v5 = v24;
  }

  else
  {
    v5 = v23[1];
  }

  v6 = std::string::append(&v25, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = std::string::append(&v26, "\n  filters");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::MomentStatistics<short>(*(a1 + 152));
  if ((v22 & 0x80u) == 0)
  {
    v10 = v21;
  }

  else
  {
    v10 = v21[0];
  }

  if ((v22 & 0x80u) == 0)
  {
    v11 = v22;
  }

  else
  {
    v11 = v21[1];
  }

  v12 = std::string::append(&v27, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v28, "\n  bias");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::MomentStatistics<float>(*(a1 + 160));
  if ((v20 & 0x80u) == 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  if ((v20 & 0x80u) == 0)
  {
    v17 = v20;
  }

  else
  {
    v17 = __p[1];
  }

  v18 = std::string::append(&v29, v16, v17);
  *a2 = *v18;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }
}

void sub_1B540C290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v45 - 41) < 0)
  {
    operator delete(*(v45 - 64));
  }

  if (*(v45 - 73) < 0)
  {
    operator delete(*(v45 - 96));
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::ParamsString(unsigned int *a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  (*(*a1 + 168))(a1, &v6, 0);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " , # of sections: ", 18);
  v3 = MEMORY[0x1B8C84C00](v2, a1[36]);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, ", section size after pooling: ", 30);
  MEMORY[0x1B8C84C00](v4, a1[37]);
  std::stringbuf::str();
  v6 = *MEMORY[0x1E69E54E8];
  *(&v6 + *(v6 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v7 = MEMORY[0x1E69E5548] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v8);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v10);
}

void sub_1B540C4FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::InfoGradient(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v49, " ");
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::ParamsString(a1);
  if ((v48 & 0x80u) == 0)
  {
    v4 = v47;
  }

  else
  {
    v4 = v47[0];
  }

  if ((v48 & 0x80u) == 0)
  {
    v5 = v48;
  }

  else
  {
    v5 = v47[1];
  }

  v6 = std::string::append(&v49, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v50.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v50.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = std::string::append(&v50, "\n  filters_grad");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v51.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v51.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::MomentStatistics<float>((a1 + 168));
  if ((v46 & 0x80u) == 0)
  {
    v10 = v45;
  }

  else
  {
    v10 = v45[0];
  }

  if ((v46 & 0x80u) == 0)
  {
    v11 = v46;
  }

  else
  {
    v11 = v45[1];
  }

  v12 = std::string::append(&v51, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v52.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v52.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v52, ", lr-coef ");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v53.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v53.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::ToString<float>();
  if ((v44 & 0x80u) == 0)
  {
    v16 = v43;
  }

  else
  {
    v16 = v43[0];
  }

  if ((v44 & 0x80u) == 0)
  {
    v17 = v44;
  }

  else
  {
    v17 = v43[1];
  }

  v18 = std::string::append(&v53, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v54.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v54.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v54, ", max-norm ");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v55.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v55.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::ToString<float>();
  if ((v42 & 0x80u) == 0)
  {
    v22 = v41;
  }

  else
  {
    v22 = v41[0];
  }

  if ((v42 & 0x80u) == 0)
  {
    v23 = v42;
  }

  else
  {
    v23 = v41[1];
  }

  v24 = std::string::append(&v55, v22, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v56.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v56.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v56, "\n  bias_grad");
  v27 = *&v26->__r_.__value_.__l.__data_;
  v57.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&v57.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::MomentStatistics<float>((a1 + 192));
  if ((v40 & 0x80u) == 0)
  {
    v28 = v39;
  }

  else
  {
    v28 = v39[0];
  }

  if ((v40 & 0x80u) == 0)
  {
    v29 = v40;
  }

  else
  {
    v29 = v39[1];
  }

  v30 = std::string::append(&v57, v28, v29);
  v31 = *&v30->__r_.__value_.__l.__data_;
  v58.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&v58.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v32 = std::string::append(&v58, ", lr-coef ");
  v33 = *&v32->__r_.__value_.__l.__data_;
  v59.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
  *&v59.__r_.__value_.__l.__data_ = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::ToString<float>();
  if ((v38 & 0x80u) == 0)
  {
    v34 = __p;
  }

  else
  {
    v34 = __p[0];
  }

  if ((v38 & 0x80u) == 0)
  {
    v35 = v38;
  }

  else
  {
    v35 = __p[1];
  }

  v36 = std::string::append(&v59, v34, v35);
  *a2 = *v36;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  if (v38 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if (v40 < 0)
  {
    operator delete(v39[0]);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (v42 < 0)
  {
    operator delete(v41[0]);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (v44 < 0)
  {
    operator delete(v43[0]);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (v46 < 0)
  {
    operator delete(v45[0]);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (v48 < 0)
  {
    operator delete(v47[0]);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }
}

void sub_1B540C8E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v73 - 57) < 0)
  {
    operator delete(*(v73 - 80));
  }

  if (*(v73 - 89) < 0)
  {
    operator delete(*(v73 - 112));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v73 - 121) < 0)
  {
    operator delete(*(v73 - 144));
  }

  if (*(v73 - 153) < 0)
  {
    operator delete(*(v73 - 176));
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v73 - 185) < 0)
  {
    operator delete(*(v73 - 208));
  }

  if (*(v73 - 217) < 0)
  {
    operator delete(*(v73 - 240));
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a73 < 0)
  {
    operator delete(a72);
  }

  if (a71 < 0)
  {
    operator delete(a66);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a64 < 0)
  {
    operator delete(a59);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  _Unwind_Resume(a1);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::PropagateFncDirect(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::InitOutBuffers(a1);
  if (*(a1 + 128) <= 0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = 1.0;
  }

  v60 = a2;
  kaldi::CuMatrix<float>::Resize((*(a1 + 384) + 48 * a4), *(a2 + 20), (*(a1 + 108) * *(a1 + 120)), 3, 0);
  if (*(a1 + 144) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = *(a1 + 128);
      v11 = *(a1 + 120);
      v61 = v9;
      if (v10 >= 1)
      {
        v12 = *(a1 + 108);
        v13 = v12 * v9 * v11;
        v14 = *(a3 + 8) + 4 * v13;
        v15 = *(a3 + 28) - v13;
        v16 = *(a3 + 32);
        *(&v67[1] + 4) = *(a3 + 20);
        LODWORD(v67[1]) = v12;
        HIDWORD(v67[2]) = v15;
        v67[3] = v16;
        v66 = &unk_1F2CFA908;
        v67[0] = v14;
        LODWORD(v14) = *(a1 + 104);
        v17 = v14 * *(a1 + 140);
        v18 = v14 * v10;
        v19 = *(v60 + 8) + 4 * v17;
        v20 = *(v60 + 28) - v17;
        v21 = *(v60 + 32);
        LODWORD(v65[1]) = v18;
        *(&v65[1] + 4) = *(v60 + 20);
        HIDWORD(v65[2]) = v20;
        v65[3] = v21;
        v64 = &unk_1F2CFA908;
        v65[0] = v19;
        kaldi::QuantizedMatrixBase<short>::Range(*(a1 + 152), *(a1 + 124) * v14, v18, v12 * v9, v12, v63);
        LODWORD(v22) = 1.0;
        kaldi::CuMatrixBase<float>::AddMatMat<short>(&v66, &v64, 111, v63, 111, v22, 0.0);
        v23 = *(a1 + 120);
        if (v23 >= 2)
        {
          for (i = 1; i < v23; ++i)
          {
            v25 = *(a1 + 108) * (i + v9 * v23);
            v26 = *(a3 + 8) + 4 * v25;
            v27 = *(a3 + 28) - v25;
            v28 = *(a3 + 32);
            LODWORD(v62[2]) = *(a1 + 108);
            *(&v62[2] + 4) = *(a3 + 20);
            HIDWORD(v62[3]) = v27;
            v62[4] = v28;
            v62[0] = &unk_1F2CFA908;
            v62[1] = v26;
            kaldi::CuMatrixBase<float>::CopyFromMat<float>(v62, &v66, 111);
            v62[0] = &unk_1F2CFA908;
            memset(&v62[1], 0, 32);
            quasar::Bitmap::~Bitmap(v62);
            v23 = *(a1 + 120);
          }
        }

        kaldi::QuantizedMatrixBase<short>::~QuantizedMatrixBase(v63);
        v64 = &unk_1F2CFA908;
        memset(v65, 0, sizeof(v65));
        quasar::Bitmap::~Bitmap(&v64);
        v66 = &unk_1F2CFA908;
        memset(v67, 0, sizeof(v67));
        quasar::Bitmap::~Bitmap(&v66);
        v11 = *(a1 + 120);
      }

      if (v11 >= 1)
      {
        v29 = 0;
        do
        {
          v30 = *(a1 + 384) + 48 * a4;
          v31 = *(a1 + 108);
          v32 = *(v30 + 28) - v31 * v29;
          v33 = *(v30 + 32);
          v67[0] = *(v30 + 8) + 4 * v31 * v29;
          LODWORD(v67[1]) = v31;
          *(&v67[1] + 4) = *(v30 + 20);
          HIDWORD(v67[2]) = v32;
          v67[3] = v33;
          v66 = &unk_1F2CFA908;
          v34 = *(a1 + 160);
          v63[2] = 0;
          v35 = *(v34 + 8) + 4 * v31 * v9;
          v63[0] = &unk_1F2CFCA48;
          v63[1] = v35;
          LODWORD(v63[2]) = v31;
          v63[3] = *(v34 + 24);
          kaldi::CuMatrixBase<float>::AddVecToRows(&v66, v63, 1.0, v8);
          v36 = *(a1 + 104);
          v37 = (*(a1 + 116) * v9 + *(a1 + 112) * v29) * v36;
          v38 = *(a1 + 124) * v36;
          v39 = *(v60 + 8) + 4 * v37;
          v40 = *(v60 + 28) - v37;
          v41 = *(v60 + 32);
          LODWORD(v65[1]) = v38;
          *(&v65[1] + 4) = *(v60 + 20);
          HIDWORD(v65[2]) = v40;
          v65[3] = v41;
          v64 = &unk_1F2CFA908;
          v65[0] = v39;
          kaldi::QuantizedMatrixBase<short>::Range(*(a1 + 152), 0, v38, *(a1 + 108) * v9, *(a1 + 108), v63);
          LODWORD(v42) = 1.0;
          kaldi::CuMatrixBase<float>::AddMatMat<short>(&v66, &v64, 111, v63, 111, v42, 1.0);
          kaldi::QuantizedMatrixBase<short>::~QuantizedMatrixBase(v63);
          v64 = &unk_1F2CFA908;
          memset(v65, 0, sizeof(v65));
          quasar::Bitmap::~Bitmap(&v64);
          v66 = &unk_1F2CFA908;
          memset(v67, 0, sizeof(v67));
          quasar::Bitmap::~Bitmap(&v66);
          ++v29;
          v9 = v61;
        }

        while (v29 < *(a1 + 120));
      }

      v43 = *(a1 + 148);
      if (v43 >= 1)
      {
        for (j = 0; j < v43; ++j)
        {
          v45 = *(a1 + 108);
          v46 = v45 * (j + v43 * v9);
          v47 = *(a3 + 8) + 4 * v46;
          v48 = *(a3 + 28) - v46;
          v49 = *(a3 + 32);
          LODWORD(v63[2]) = v45;
          *(&v63[2] + 4) = *(a3 + 20);
          HIDWORD(v63[3]) = v48;
          v63[4] = v49;
          v63[0] = &unk_1F2CFA908;
          v63[1] = v47;
          v50 = *(a1 + 384) + 48 * a4;
          LODWORD(v47) = v45 * j * *(a1 + 136);
          v51 = *(v50 + 8) + 4 * v47;
          LODWORD(v47) = *(v50 + 28) - v47;
          v52 = *(v50 + 32);
          v67[0] = v51;
          LODWORD(v67[1]) = v45;
          *(&v67[1] + 4) = *(v50 + 20);
          HIDWORD(v67[2]) = v47;
          v67[3] = v52;
          v66 = &unk_1F2CFA908;
          kaldi::CuMatrixBase<float>::CopyFromMat<float>(v63, &v66, 111);
          v66 = &unk_1F2CFA908;
          memset(v67, 0, sizeof(v67));
          quasar::Bitmap::~Bitmap(&v66);
          if (*(a1 + 132) >= 2)
          {
            v53 = 1;
            do
            {
              v54 = *(a1 + 384) + 48 * a4;
              v55 = *(a1 + 108);
              v56 = (v53 + j * *(a1 + 136)) * v55;
              v57 = *(v54 + 8) + 4 * v56;
              v58 = *(v54 + 28) - v56;
              v59 = *(v54 + 32);
              v67[0] = v57;
              LODWORD(v67[1]) = v55;
              *(&v67[1] + 4) = *(v54 + 20);
              HIDWORD(v67[2]) = v58;
              v67[3] = v59;
              v66 = &unk_1F2CFA908;
              kaldi::CuMatrixBase<float>::Max(v63, &v66);
              v66 = &unk_1F2CFA908;
              memset(v67, 0, sizeof(v67));
              quasar::Bitmap::~Bitmap(&v66);
              ++v53;
            }

            while (v53 < *(a1 + 132));
          }

          v63[0] = &unk_1F2CFA908;
          memset(&v63[1], 0, 32);
          quasar::Bitmap::~Bitmap(v63);
          v43 = *(a1 + 148);
          v9 = v61;
        }
      }

      ++v9;
    }

    while (v9 < *(a1 + 144));
  }
}

void sub_1B540D0B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  *(v28 + 8) = 0u;
  *(v28 + 24) = 0u;
  quasar::Bitmap::~Bitmap(&a22);
  *(v27 + 8) = 0u;
  *(v27 + 24) = 0u;
  quasar::Bitmap::~Bitmap(&a27);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::BackpropagateFnc()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Backpropagation of CNN ConvolutionalMaxPoolingComponent is not supported for quantized weights");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::AccumGradients()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Not supported for quantized weights");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::UpdateWeights()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::GetGradient(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v8 = (*(*a1 + 16))(a1);
  kaldi::CuMatrix<float>::CuMatrix(v16, *(a3 + 20), *(a3 + 16), 0, 0, 0);
  kaldi::CuMatrix<float>::CuMatrix(v15, *(a2 + 20), *(a2 + 16), 0, 0, 0);
  (*(*v8 + 112))(v8, a2, v16, 0);
  (*(*v8 + 128))(v8, a2, v16, a3, v15, 0);
  (*(*v8 + 232))(v8, a2, a3, 0, 0);
  LODWORD(a3) = kaldi::quasar::Vocab::VocabSize(*(a1 + 152));
  LODWORD(a2) = kaldi::QuantizedMatrixBase<short>::NumCols(*(a1 + 152));
  v9 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a4, v9, 1);
  LODWORD(a3) = a2 * a3;
  v13 = 0;
  v14 = 0;
  v12 = *a4;
  LODWORD(v13) = a3;
  kaldi::VectorBase<float>::CopyRowsFromMat(&v12, **(v8 + 168));
  v10 = *(*(a1 + 160) + 16);
  v13 = 0;
  v14 = 0;
  v12 = *a4 + 4 * a3;
  LODWORD(v13) = v10;
  kaldi::CuVectorBase<float>::CopyToVec<float>(**(v8 + 192), &v12);
  (*(*v8 + 8))(v8);
  kaldi::CuMatrix<float>::~CuMatrix(v15);
  return kaldi::CuMatrix<float>::~CuMatrix(v16);
}

void sub_1B540D474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  kaldi::CuMatrix<float>::~CuMatrix(va1);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::SetGradientNormalization(uint64_t result, int a2, float a3)
{
  *(result + 276) = a3;
  *(result + 272) = a2;
  *(result + 480) = 0;
  return result;
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::NormalizeGradients(uint64_t a1, int a2, float a3)
{
  v4 = a3;
  v6 = *(a1 + 272);
  if (v6 == 3)
  {
    if (a3 >= 0.0 && a3 <= 1.0)
    {
      kaldi::nnet1::UpdatableComponent::RmspropGradient(*(*(a1 + 168) + 8 * a2), *(a1 + 216) + 48 * a2, a3);
      v10 = *(*(a1 + 192) + 8 * a2);
      v11 = *(a1 + 240) + 32 * a2;

      kaldi::nnet1::UpdatableComponent::RmspropGradient(v10, v11, v4);
    }
  }

  else if (v6 == 2)
  {
    if (a3 > 0.0)
    {
      v8 = a2;
      if (*(a1 + 84))
      {
        v4 = *(*(a1 + 288) + 4 * a2) * a3;
      }

      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(*(*(a1 + 168) + 8 * a2), (*(a1 + 216) + 48 * a2), v4);
      v12 = *(*(a1 + 192) + 8 * v8);
      v13 = (*(a1 + 240) + 32 * v8);

      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v12, v13, v4);
    }
  }

  else if (v6 == 1 && a3 > 0.0)
  {
    v7 = a2;
    if (*(a1 + 84))
    {
      v4 = *(*(a1 + 288) + 4 * a2) * a3;
    }

    kaldi::nnet1::UpdatableComponent::ClipGradient(*(*(a1 + 168) + 8 * a2), v4);
    v14 = *(*(a1 + 192) + 8 * v7);

    kaldi::nnet1::UpdatableComponent::ClipGradient(v14, v4);
  }
}

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::CountZeroCorr(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::EnsureCorrs(a1);
  v6 = *(*(a1 + 160) + 16);
  v7 = kaldi::quasar::Vocab::VocabSize(*(a1 + 152));
  result = kaldi::QuantizedMatrixBase<short>::NumCols(*(a1 + 152));
  *a3 = v6 + result * v7;
  v9 = *(a1 + 168);
  v10 = *(a1 + 176) - v9;
  if (v10 && (v11 = *(a1 + 200) - *(a1 + 192)) != 0)
  {
    v12 = v10 >> 3;
    v13 = v11 >> 3;
    v14 = *(a1 + 80);
    if (v14 == 1)
    {
      v14 = 0;
    }

    v15 = v14;
    v16 = v13 - 1;
    if (v12 - 1 != v14 || v16 != v14)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v25);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Unexpected mismatch in indexes: ", 32);
      v21 = MEMORY[0x1B8C84C00](v20, v15);
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "  ", 2);
      v23 = MEMORY[0x1B8C84C30](v22, ((*(a1 + 176) - *(a1 + 168)) >> 3) - 1);
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "  ", 2);
      MEMORY[0x1B8C84C30](v24, ((*(a1 + 200) - *(a1 + 192)) >> 3) - 1);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v25);
    }

    v18 = kaldi::CuMatrixBase<float>::CountZeros(*(v9 + 8 * v14));
    result = kaldi::CuVectorBase<float>::CountZeros(*(*(a1 + 192) + 8 * v15));
    v19 = result + v18;
  }

  else
  {
    v19 = 0;
  }

  *a2 = v19;
  return result;
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::EnsureCorrs(uint64_t a1)
{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::InitOutBuffers(a1);
  if ((*(a1 + 480) & 1) == 0)
  {
    v2 = *(a1 + 80);
    if (v2 > 1)
    {
      v3 = (v2 + 1);
    }

    else
    {
      v3 = 1;
    }

    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 408), v3);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 360), v3);
    std::vector<BOOL>::resize(a1 + 456, v3, 0);
    std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize((a1 + 168), v3);
    std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::resize((a1 + 192), v3);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 216), v3);
    std::vector<kaldi::CuVector<float>>::resize((a1 + 240), v3);
    if (v3 >= 1)
    {
      operator new();
    }

    std::vector<int>::resize((a1 + 288), v3);
    *(a1 + 480) = 1;
  }
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::VectorizeWeightsCorrs()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::BackpropagateFnc(uint64_t a1)
{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::EnsureCorrs(a1);
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v1);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v1, "Backpropagation of CNN ConvolutionalMaxPoolingComponent is not supported on CPU");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v1);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::AccumGradients(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::EnsureCorrs(a1);
  *(*(a1 + 288) + 4 * a5) = *(a2 + 20);
  if (((*(*(a1 + 456) + ((a5 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v43);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v43, "ConvolutionalMaxPoolingComponent::AccumGradients can't be called before ConvolutionalMaxPoolingComponent::Backpropagate");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v43);
  }

  v9 = *(*(a1 + 168) + 8 * a5);
  *(v9 + 32) = a4;
  *(*(*(a1 + 192) + 8 * a5) + 24) = a4;
  kaldi::CuMatrixBase<float>::SetZero(v9);
  kaldi::CuVectorBase<float>::SetZero(*(*(a1 + 192) + 8 * a5));
  if (*(a1 + 144) >= 1)
  {
    v10 = 0;
    do
    {
      v11 = *(*(a1 + 168) + 8 * a5);
      v13 = *(a1 + 104);
      v12 = *(a1 + 108);
      v14 = *(v11 + 8) + 4 * v12 * v10;
      v15 = *(v11 + 28) - v12 * v10;
      v16 = *(v11 + 32);
      LODWORD(v43[2]) = v12;
      *(&v43[2] + 4) = *(v11 + 20);
      HIDWORD(v43[3]) = v15;
      v43[4] = v16;
      v43[0] = &unk_1F2CFA908;
      v43[1] = v14;
      v17 = *(a1 + 408) + 48 * a5;
      LODWORD(v14) = *(a1 + 124);
      v18 = *(a2 + 20) * *(a1 + 120);
      v19 = *(v17 + 24);
      v20 = v19 * v18 * v10;
      v21 = *(v17 + 8) + 4 * v20;
      v22 = *(v17 + 28) - v20;
      v23 = *(v17 + 16);
      v24 = *(v17 + 32);
      *(&v41 + 1) = __PAIR64__(v18, v23);
      *&v42 = __PAIR64__(v22, v19);
      *(&v42 + 1) = v24;
      v40 = &unk_1F2CFA908;
      *&v41 = v21;
      v25 = *(a1 + 336) + 48 * a5;
      v26 = v13 * v14;
      LODWORD(v21) = *(v25 + 24);
      v27 = v21 * v18 * v10;
      v28 = *(v25 + 8) + 4 * v27;
      v29 = *(v25 + 28) - v27;
      v30 = *(v25 + 32);
      *(&v38 + 1) = __PAIR64__(v18, v26);
      *&v39 = __PAIR64__(v29, v21);
      *(&v39 + 1) = v30;
      v37 = &unk_1F2CFA908;
      *&v38 = v28;
      kaldi::CuMatrixBase<float>::AddMatMat(v43, &v37, 112, &v40, 111);
      v31 = *(*(a1 + 192) + 8 * a5);
      v32 = *(a1 + 108);
      v35 = 0;
      v33 = *(v31 + 8) + 4 * v32 * v10;
      v34[0] = &unk_1F2CFCA48;
      v34[1] = v33;
      LODWORD(v35) = v32;
      v36 = *(v31 + 24);
      kaldi::CuVectorBase<float>::AddRowSumMat(v34, &v40);
      v37 = &unk_1F2CFA908;
      v38 = 0u;
      v39 = 0u;
      quasar::Bitmap::~Bitmap(&v37);
      v40 = &unk_1F2CFA908;
      v41 = 0u;
      v42 = 0u;
      quasar::Bitmap::~Bitmap(&v40);
      v43[0] = &unk_1F2CFA908;
      memset(&v43[1], 0, 32);
      quasar::Bitmap::~Bitmap(v43);
      ++v10;
    }

    while (v10 < *(a1 + 144));
  }
}

void sub_1B540DEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int128 a25, __int128 a26)
{
  *(v27 + 8) = 0u;
  *(v27 + 24) = 0u;
  quasar::Bitmap::~Bitmap(&a14);
  *(v26 + 8) = 0u;
  *(v26 + 24) = 0u;
  quasar::Bitmap::~Bitmap(&a19);
  a25 = 0u;
  a26 = 0u;
  quasar::Bitmap::~Bitmap(&a24);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::UpdateWeights(uint64_t a1, uint64_t a2, int a3)
{
  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::EnsureCorrs(a1);
  v8 = *(a1 + 64);
  v7 = *(a1 + 68);
  v9 = *(a1 + 72);
  v10 = *(a1 + 76);
  *(*(a1 + 152) + 32) = a2;
  *(*(a1 + 160) + 24) = a2;
  v11 = *(a1 + 80);
  if (a3 >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *(a1 + 80);
  }

  if (v11 == 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(a1 + 168);
  v15 = v13;
  v16 = v14[v13];
  *(v16 + 32) = a2;
  *(*(*(a1 + 192) + 8 * v13) + 24) = a2;
  *(*(a1 + 216) + 48 * v13 + 32) = a2;
  *(*(a1 + 240) + 32 * v13 + 24) = a2;
  if (v13 == v11)
  {
    kaldi::CuMatrixBase<float>::AddMat(v16, *v14, 111, 1.0, 0.0);
    LODWORD(v17) = 1.0;
    kaldi::CuVectorBase<float>::AddVec(v17, 0.0);
    if (*(a1 + 80) > 1)
    {
      v18 = 1;
      do
      {
        kaldi::CuMatrixBase<float>::AddMat(*(*(a1 + 168) + 8 * v15), *(*(a1 + 168) + 8 * v18), 111, 1.0, 1.0);
        LODWORD(v19) = 1.0;
        kaldi::CuVectorBase<float>::AddVec(v19, 1.0);
        ++v18;
      }

      while (v18 < *(a1 + 80));
    }

    v20 = *(a1 + 288);
    v20[v15] = 0;
    if (v11 >= 1)
    {
      v21 = 0;
      v22 = v20;
      do
      {
        v23 = *v22++;
        v21 += v23;
        v20[v15] = v21;
        --v11;
      }

      while (v11);
    }
  }

  v24 = *(a1 + 56);
  if (*(a1 + 84) == 1)
  {
    *v6.i32 = *(*(a1 + 288) + 4 * v15);
    v24 = v24 / *v6.i32;
  }

  v25 = *(a1 + 312);
  if (v15 >= (*(a1 + 320) - v25) >> 2)
  {
    LODWORD(v32[0]) = 2143289344;
    std::vector<float>::resize((a1 + 312), v15 + 1, v32, v6);
    v25 = *(a1 + 312);
  }

  *(v25 + 4 * v15) = v24;
  if (*(a1 + 276) >= 0.0)
  {
    (*(*a1 + 248))(a1, v15);
  }

  if (v8 != 0.0)
  {
    kaldi::CuMatrixBase<float>::AddMat(*(a1 + 152), *(a1 + 152), 111, -(v24 * v8) * *(*(a1 + 288) + 4 * v15), 1.0);
  }

  if (v7 != 0.0)
  {
    kaldi::cu::RegularizeL1<float>(*(a1 + 152), *(*(a1 + 168) + 8 * v15), (v7 * v24) * *(*(a1 + 288) + 4 * v15), v24);
  }

  if (v9 > 0.0)
  {
    if (*(a1 + 80) >= 2)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v32);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v32, "the multi batch gradient quantization does not work yet");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v32);
    }

    if (*(a1 + 496) == *(a1 + 488))
    {
      kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::InitResidualAggregator(a1, (a1 + 488));
    }

    kaldi::nnet1::QuantizerResidualAggregator::Quantize((a1 + 488), v10, v9);
  }

  kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::ApplyCorr(a1, v15, v24);
  if (*(a1 + 280) > 0.0)
  {
    kaldi::CuMatrix<float>::CuMatrix(v32, *(a1 + 152), 111);
    kaldi::CuMatrixBase<float>::MulElements(v32, *(a1 + 152));
    v26 = *(*(a1 + 152) + 20);
    v30[2] = 0;
    v31 = 0;
    v30[0] = &unk_1F2D3AC18;
    v30[1] = 0;
    kaldi::CuVector<float>::Resize(v30, v26, 0);
    v31 = a2;
    kaldi::CuVectorBase<float>::AddColSumMat(v30, v32);
    kaldi::CuVectorBase<float>::ApplyPow(v30, 0.5);
    kaldi::CuVector<float>::CuVector(v29, v30);
    kaldi::CuVectorBase<float>::Scale();
    kaldi::CuVectorBase<float>::ApplyFloor(v29, 1.0);
    kaldi::CuVectorBase<float>::InvertElements(v29);
    kaldi::CuMatrixBase<float>::MulRowsVec(*(a1 + 152), v29);
    kaldi::CuVectorBase<float>::ApplyMaxNorm(*(a1 + 160), *(a1 + 280));
    kaldi::CuVector<float>::~CuVector(v29);
    kaldi::CuVector<float>::~CuVector(v30);
    kaldi::CuMatrix<float>::~CuMatrix(v32);
  }

  v27 = *(a1 + 288);
  if (v15 == *(a1 + 80))
  {
    v28 = *(a1 + 296);
    if (v27 != v28)
    {
      bzero(v27, v28 - v27);
    }
  }

  else
  {
    *&v27[4 * v15] = 0;
  }
}

void sub_1B540E30C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  kaldi::CuVector<float>::~CuVector(va);
  kaldi::CuMatrix<float>::~CuMatrix(va1);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>::VectorizeWeightsCorrs(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v3);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v3, "Weights are already vectorized");
  }

  else
  {
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v3, "Performing vectorization of convolutional maxpooling component", 62);
      kaldi::KaldiLogMessage::~KaldiLogMessage(&v3);
    }

    v2 = *(*(a1 + 160) + 16) + *(*(a1 + 152) + 16) * *(*(a1 + 152) + 20);
    if (v2 == (*(*a1 + 176))(a1))
    {
      kaldi::CuSubMatrix<float>::CopyDataAndReplaceWithCuSub();
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v3);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v3, "(nlinparams + Bias().Dim()) == NumParams()");
  }

  kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v3);
}

void kaldi::nnet1::CnnRearrangeComponent::InitData(uint64_t a1, uint64_t *a2)
{
  v40 = 0;
  v41 = 0;
  v42 = 0;
  memset(&v39, 0, sizeof(v39));
  v38 = -1;
  v35 = 0;
  v36 = 0;
  v4 = a2 + 4;
  v37 = 0;
  while ((*(v4 + *(*a2 - 24)) & 2) == 0)
  {
    kaldi::ReadToken(a2, 0, &v35);
    if (SHIBYTE(v37) < 0)
    {
      if (v36 != 10)
      {
        goto LABEL_45;
      }

      v5 = v35;
    }

    else
    {
      if (SHIBYTE(v37) != 10)
      {
        goto LABEL_45;
      }

      v5 = &v35;
    }

    v6 = *v5;
    v7 = *(v5 + 4);
    if (v6 != 0x646E61426D754E3CLL || v7 != 15987)
    {
LABEL_45:
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v34);
      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "Unknown token ", 14);
      if (v37 >= 0)
      {
        v30 = &v35;
      }

      else
      {
        v30 = v35;
      }

      if (v37 >= 0)
      {
        v31 = HIBYTE(v37);
      }

      else
      {
        v31 = v36;
      }

      v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, v30, v31);
      v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ", a typo in config?", 19);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, " (NumBands)", 11);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v34);
    }

    kaldi::ReadBasicType<int>(a2, 0, &v38);
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  v9 = v38;
  if (v38 <= 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v34);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "NumBands should be > 0", 22);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v34);
  }

  v10 = *(a1 + 8);
  v11 = v10 / v38;
  if (v10 % v38)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v34);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "Invalid NumBands value", 22);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v34);
  }

  v12 = 0;
  do
  {
    if (v11 >= 1)
    {
      v13 = 0;
      v14 = v41;
      do
      {
        v15 = v12 + v38 * v13;
        if (v14 >= v42)
        {
          v16 = v40;
          v17 = v14 - v40;
          v18 = (v14 - v40) >> 2;
          v19 = v18 + 1;
          if ((v18 + 1) >> 62)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v20 = v42 - v40;
          if ((v42 - v40) >> 1 > v19)
          {
            v19 = v20 >> 1;
          }

          if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v21 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v19;
          }

          if (v21)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&v40, v21);
          }

          v22 = (v14 - v40) >> 2;
          v23 = (4 * v18);
          v24 = (4 * v18 - 4 * v22);
          *v23 = v15;
          v14 = (v23 + 1);
          memcpy(v24, v16, v17);
          v25 = v40;
          v40 = v24;
          v41 = v14;
          v42 = 0;
          if (v25)
          {
            operator delete(v25);
          }
        }

        else
        {
          *v14 = v15;
          v14 += 4;
        }

        v41 = v14;
        ++v13;
      }

      while (v11 != v13);
      v9 = v38;
    }

    ++v12;
  }

  while (v12 < v9);
  std::vector<int>::resize(&v39, *(a1 + 8));
  v26 = v40;
  if (*(a1 + 8) >= 1)
  {
    v27 = 0;
    begin = v39.__begin_;
    do
    {
      begin[*&v26[4 * v27]] = v27;
      ++v27;
    }

    while (v27 < *(a1 + 8));
  }

  kaldi::CuArray<int>::Resize(a1 + 48, (v41 - v26) >> 2, 1);
  memcpy(*(a1 + 56), v40, v41 - v40);
  kaldi::CuArray<int>::Resize(a1 + 72, (v39.__end_ - v39.__begin_) >> 2, 1);
  memcpy(*(a1 + 80), v39.__begin_, v39.__end_ - v39.__begin_);
  if (SHIBYTE(v37) < 0)
  {
    operator delete(v35);
  }

  if (v39.__begin_)
  {
    v39.__end_ = v39.__begin_;
    operator delete(v39.__begin_);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }
}

void sub_1B540EC34(_Unwind_Exception *exception_object)
{
  if (*(v1 - 145) < 0)
  {
    operator delete(*(v1 - 168));
  }

  v3 = *(v1 - 136);
  if (v3)
  {
    *(v1 - 128) = v3;
    operator delete(v3);
  }

  v4 = *(v1 - 112);
  if (v4)
  {
    *(v1 - 104) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::CnnRearrangeComponent::ReadData(uint64_t a1, void *a2, int a3)
{
  v8 = 0;
  kaldi::ReadBasicType<char>(a2, a3, &v8);
  memset(&v7, 0, sizeof(v7));
  kaldi::ReadIntegerVector<int>(a2, a3, &v7, 0, 0, 0, 0);
  kaldi::CuArray<int>::Resize(a1 + 48, (v7.__end_ - v7.__begin_) >> 2, 1);
  memcpy(*(a1 + 56), v7.__begin_, v7.__end_ - v7.__begin_);
  memset(&__p, 0, sizeof(__p));
  kaldi::ReadIntegerVector<int>(a2, a3, &__p, 0, 0, 0, 0);
  kaldi::CuArray<int>::Resize(a1 + 72, (__p.__end_ - __p.__begin_) >> 2, 1);
  memcpy(*(a1 + 80), __p.__begin_, __p.__end_ - __p.__begin_);
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  if (v7.__begin_)
  {
    v7.__end_ = v7.__begin_;
    operator delete(v7.__begin_);
  }
}

void sub_1B540ED7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::CnnRearrangeComponent::WriteData(uint64_t a1, void *a2, int a3)
{
  kaldi::WriteBasicType<char>(a2, a3, 0);
  std::vector<int>::vector[abi:ne200100](&v7, *(a1 + 48));
  kaldi::CuArray<int>::CopyToVec((a1 + 48), &v7);
  kaldi::WriteIntegerByteArray<int>(a2, a3, 0, v7.__end_ - v7.__begin_, v7.__begin_);
  std::vector<int>::vector[abi:ne200100](&__p, *(a1 + 72));
  kaldi::CuArray<int>::CopyToVec((a1 + 72), &__p);
  kaldi::WriteIntegerByteArray<int>(a2, a3, 0, __p.__end_ - __p.__begin_, __p.__begin_);
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  if (v7.__begin_)
  {
    v7.__end_ = v7.__begin_;
    operator delete(v7.__begin_);
  }
}

void sub_1B540EE84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::PaddingComponent::InitData(uint64_t a1, uint64_t *a2)
{
  *(a1 + 56) = 0;
  v4 = a1 + 56;
  v5 = a1 + 52;
  v6 = (a1 + 60);
  *(a1 + 48) = 0;
  v7 = (a1 + 48);
  v27 = 0uLL;
  v28 = 0;
  v8 = a2 + 4;
  while ((*(v8 + *(*a2 - 24)) & 2) == 0)
  {
    kaldi::ReadToken(a2, 0, &v27);
    if (SHIBYTE(v28) < 0)
    {
      if (*(&v27 + 1) == 12)
      {
        v11 = *v27 == 0x646461506572503CLL && *(v27 + 8) == 1046965865;
        v10 = v5;
        if (v11)
        {
          goto LABEL_49;
        }
      }

      if (*(&v27 + 1) == 13)
      {
        v12 = *v27 == 0x64615074736F503CLL && *(v27 + 5) == 0x3E676E6964646150;
        v10 = v4;
        if (v12)
        {
          goto LABEL_49;
        }
      }

      if (*(&v27 + 1) != 10)
      {
        if (*(&v27 + 1) != 11 || (*v27 == 0x626D6174736F503CLL ? (v13 = *(v27 + 3) == 0x3E656C626D617473) : (v13 = 0), v10 = v6, !v13))
        {
LABEL_57:
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v26);
          v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "Unknown token ", 14);
          if (v28 >= 0)
          {
            v22 = &v27;
          }

          else
          {
            v22 = v27;
          }

          if (v28 >= 0)
          {
            v23 = HIBYTE(v28);
          }

          else
          {
            v23 = *(&v27 + 1);
          }

          v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v22, v23);
          v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, ", a typo in config?", 19);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " (NumBands)", 11);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(v26);
        }

        goto LABEL_49;
      }

      v14 = v27;
    }

    else
    {
      if (HIBYTE(v28) > 0xBu)
      {
        if (HIBYTE(v28) == 12)
        {
          v19 = v27 == 0x646461506572503CLL && DWORD2(v27) == 1046965865;
          v10 = v5;
          if (!v19)
          {
            goto LABEL_57;
          }
        }

        else
        {
          if (HIBYTE(v28) != 13)
          {
            goto LABEL_57;
          }

          v15 = v27 == 0x64615074736F503CLL && *(&v27 + 5) == 0x3E676E6964646150;
          v10 = v4;
          if (!v15)
          {
            goto LABEL_57;
          }
        }

        goto LABEL_49;
      }

      if (HIBYTE(v28) != 10)
      {
        if (HIBYTE(v28) != 11)
        {
          goto LABEL_57;
        }

        v9 = v27 == 0x626D6174736F503CLL && *(&v27 + 3) == 0x3E656C626D617473;
        v10 = v6;
        if (!v9)
        {
          goto LABEL_57;
        }

LABEL_49:
        kaldi::ReadBasicType<int>(a2, 0, v10);
        goto LABEL_50;
      }

      v14 = &v27;
    }

    v16 = *v14;
    v17 = *(v14 + 4);
    if (v16 != 0x756C61566461503CLL || v17 != 15973)
    {
      goto LABEL_57;
    }

    kaldi::ReadBasicType<float>(a2, 0, v7);
LABEL_50:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  v20 = *(a1 + 8);
  if (*(a1 + 52) + v20 + *(a1 + 56) != *(a1 + 12))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "Invalid pre and post padding sizes", 34);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v26);
  }

  if (v20 < *v6 || (*v6 & 0x80000000) != 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "Invalid postamble size", 22);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v26);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27);
  }
}

void sub_1B540F298(_Unwind_Exception *a1)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::PaddingComponent::ReadData(uint64_t a1, uint64_t *a2, int a3)
{
  *(a1 + 56) = 0;
  v5 = a1 + 56;
  *(a1 + 48) = 0;
  v6 = (a1 + 48);
  while (kaldi::Peek(a2, a3) == 60)
  {
    v23 = 0uLL;
    v24 = 0;
    kaldi::ReadToken(a2, a3, &v23);
    if (SHIBYTE(v24) < 0)
    {
      if (*(&v23 + 1) != 11 || (*v23 == 0x626D6174736F503CLL ? (v9 = *(v23 + 3) == 0x3E656C626D617473) : (v9 = 0), v8 = v5 + 4, !v9))
      {
        if (*(&v23 + 1) != 12 || (*v23 == 0x646461506572503CLL ? (v10 = *(v23 + 8) == 1046965865) : (v10 = 0), v8 = v5 - 4, !v10))
        {
          if (*(&v23 + 1) == 10)
          {
            v12 = v23;
LABEL_37:
            v14 = *v12;
            v15 = *(v12 + 4);
            if (v14 != 0x756C61566461503CLL || v15 != 15973)
            {
              goto LABEL_53;
            }

            kaldi::ReadBasicType<float>(a2, a3, v6);
            goto LABEL_49;
          }

          if (*(&v23 + 1) != 13 || (*v23 == 0x64615074736F503CLL ? (v11 = *(v23 + 5) == 0x3E676E6964646150) : (v11 = 0), v8 = v5, !v11))
          {
LABEL_53:
            kaldi::KaldiWarnMessage::KaldiWarnMessage(v22);
            v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "unrecognized config token ", 26);
            if (v24 >= 0)
            {
              v20 = &v23;
            }

            else
            {
              v20 = v23;
            }

            if (v24 >= 0)
            {
              v21 = HIBYTE(v24);
            }

            else
            {
              v21 = *(&v23 + 1);
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v20, v21);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(v22);
          }
        }
      }
    }

    else if (HIBYTE(v24) > 0xBu)
    {
      if (HIBYTE(v24) == 12)
      {
        v17 = v23 == 0x646461506572503CLL && DWORD2(v23) == 1046965865;
        v8 = v5 - 4;
        if (!v17)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (HIBYTE(v24) != 13)
        {
          goto LABEL_53;
        }

        v13 = v23 == 0x64615074736F503CLL && *(&v23 + 5) == 0x3E676E6964646150;
        v8 = v5;
        if (!v13)
        {
          goto LABEL_53;
        }
      }
    }

    else
    {
      if (HIBYTE(v24) == 10)
      {
        v12 = &v23;
        goto LABEL_37;
      }

      if (HIBYTE(v24) != 11)
      {
        goto LABEL_53;
      }

      v7 = v23 == 0x626D6174736F503CLL && *(&v23 + 3) == 0x3E656C626D617473;
      v8 = v5 + 4;
      if (!v7)
      {
        goto LABEL_53;
      }
    }

    kaldi::ReadBasicType<int>(a2, a3, v8);
LABEL_49:
    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23);
    }
  }

  LOBYTE(v22[0]) = 0;
  return kaldi::ReadBasicType<char>(a2, a3, v22);
}

void sub_1B540F5D4(_Unwind_Exception *exception_object)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::nnet1::PaddingComponent::WriteData(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 48) != 0.0)
  {
    kaldi::WriteToken(a2, a3, "<PadValue>");
    kaldi::WriteBasicType<float>(a2, a3);
  }

  kaldi::WriteToken(a2, a3, "<Postamble>");
  kaldi::WriteBasicType<int>(a2, a3, *(a1 + 60));
  kaldi::WriteToken(a2, a3, "<PrePadding>");
  kaldi::WriteBasicType<int>(a2, a3, *(a1 + 52));
  kaldi::WriteToken(a2, a3, "<PostPadding>");
  kaldi::WriteBasicType<int>(a2, a3, *(a1 + 56));

  return kaldi::WriteBasicType<char>(a2, a3, 0);
}

void kaldi::nnet1::PaddingComponent::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 + 8);
  v9 = *(a5 + 28);
  v10 = *(a5 + 32);
  LODWORD(v26[1]) = *(a5 + 16) - *(a1 + 60);
  *(&v26[1] + 4) = *(a5 + 20);
  HIDWORD(v26[2]) = v9;
  v26[3] = v10;
  v25 = &unk_1F2CFA908;
  v26[0] = v8;
  v11 = *(a1 + 52);
  v12 = *(a4 + 8) + 4 * v11;
  LODWORD(v11) = *(a4 + 28) - v11;
  v13 = *(a4 + 32);
  DWORD2(v24[0]) = v26[1];
  *(v24 + 12) = *(a4 + 20);
  DWORD1(v24[1]) = v11;
  *(&v24[1] + 1) = v13;
  v23 = &unk_1F2CFA908;
  *&v24[0] = v12;
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v25, &v23, 111);
  v23 = &unk_1F2CFA908;
  memset(v24, 0, sizeof(v24));
  quasar::Bitmap::~Bitmap(&v23);
  v25 = &unk_1F2CFA908;
  memset(v26, 0, sizeof(v26));
  quasar::Bitmap::~Bitmap(&v25);
  v14 = *(a1 + 60);
  if (v14 >= 1)
  {
    v15 = *(a5 + 16) - v14;
    v16 = *(a5 + 8) + 4 * v15;
    v17 = *(a5 + 28) - v15;
    v18 = *(a5 + 32);
    LODWORD(v26[1]) = *(a1 + 60);
    *(&v26[1] + 4) = *(a5 + 20);
    HIDWORD(v26[2]) = v17;
    v26[3] = v18;
    v25 = &unk_1F2CFA908;
    v26[0] = v16;
    v19 = *(a4 + 16) - v14;
    v20 = *(a4 + 8) + 4 * v19;
    v21 = *(a4 + 28) - v19;
    v22 = *(a4 + 32);
    DWORD2(v24[0]) = v14;
    *(v24 + 12) = *(a4 + 20);
    DWORD1(v24[1]) = v21;
    *(&v24[1] + 1) = v22;
    v23 = &unk_1F2CFA908;
    *&v24[0] = v20;
    kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v25, &v23, 111);
    v23 = &unk_1F2CFA908;
    memset(v24, 0, sizeof(v24));
    quasar::Bitmap::~Bitmap(&v23);
    v25 = &unk_1F2CFA908;
    memset(v26, 0, sizeof(v26));
    quasar::Bitmap::~Bitmap(&v25);
  }
}

void sub_1B540F908(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v15 + 8) = 0u;
  *(v15 + 24) = 0u;
  quasar::Bitmap::~Bitmap(&a9);
  *(v14 + 8) = 0u;
  *(v14 + 24) = 0u;
  quasar::Bitmap::~Bitmap(&a14);
  _Unwind_Resume(a1);
}

void *kaldi::nnet1::Padding2DComponent::Init(void *this)
{
  this[6] = 0;
  this[7] = 0;
  this[8] = 0;
  return this;
}

void kaldi::nnet1::Padding2DComponent::Read(uint64_t a1, uint64_t *a2, int a3)
{
  __p = 0uLL;
  v20 = 0;
  kaldi::ReadToken(a2, a3, &__p);
  if ((SHIBYTE(v20) & 0x80000000) == 0)
  {
    if (HIBYTE(v20) <= 9u)
    {
      if (HIBYTE(v20) != 8)
      {
        if (HIBYTE(v20) != 9)
        {
          goto LABEL_65;
        }

        if (__p != 0x7466654C6461503CLL || BYTE8(__p) != 62)
        {
          goto LABEL_65;
        }

        goto LABEL_35;
      }

      if (__p != 0x3E706F546461503CLL)
      {
        goto LABEL_65;
      }

LABEL_45:
      v11 = 56;
      goto LABEL_64;
    }

    if (HIBYTE(v20) != 10)
    {
      if (HIBYTE(v20) != 11)
      {
        goto LABEL_65;
      }

      if (__p != 0x74746F426461503CLL || *(&__p + 3) != 0x3E6D6F74746F4264)
      {
        goto LABEL_65;
      }

LABEL_43:
      v11 = 60;
      goto LABEL_64;
    }

    if (__p != 0x654C5870616D463CLL || WORD4(__p) != 15982)
    {
      if (__p != 0x654C5970616D463CLL || WORD4(__p) != 15982)
      {
        p_p = &__p;
        goto LABEL_58;
      }

LABEL_56:
      v11 = 52;
      goto LABEL_64;
    }

LABEL_55:
    v11 = 48;
    goto LABEL_64;
  }

  if (*(&__p + 1) == 10 && *__p == 0x654C5870616D463CLL && *(__p + 8) == 15982)
  {
    goto LABEL_55;
  }

  if (*(&__p + 1) == 10 && *__p == 0x654C5970616D463CLL && *(__p + 8) == 15982)
  {
    goto LABEL_56;
  }

  if (*(&__p + 1) == 8 && *__p == 0x3E706F546461503CLL)
  {
    goto LABEL_45;
  }

  if (*(&__p + 1) == 11 && *__p == 0x74746F426461503CLL && *(__p + 3) == 0x3E6D6F74746F4264)
  {
    goto LABEL_43;
  }

  if (*(&__p + 1) == 10)
  {
    p_p = __p;
LABEL_58:
    v16 = *p_p;
    v17 = *(p_p + 4);
    if (v16 == 0x686769526461503CLL && v17 == 15988)
    {
      v11 = 68;
      goto LABEL_64;
    }

    goto LABEL_65;
  }

  if (*(&__p + 1) == 9 && *__p == 0x7466654C6461503CLL && *(__p + 8) == 62)
  {
LABEL_35:
    v11 = 64;
LABEL_64:
    kaldi::ReadBasicType<int>(a2, a3, a1 + v11);
  }

LABEL_65:
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p);
  }
}

void sub_1B540FC7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int32x2_t *kaldi::nnet1::Padding2DComponent::Check(int32x2_t *this)
{
  v2 = this[6].u32[0];
  v1 = this[6].i32[1];
  if (v1 < 1 || v2 <= 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "h > 0 && w > 0");
    goto LABEL_17;
  }

  v4 = this[7];
  v5 = vmax_s32(vneg_s32(v4), 0);
  if (vadd_s32(vdup_lane_s32(v5, 1), v5).u32[0] >= v1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "num_to_trim_h < h");
    goto LABEL_17;
  }

  v6 = this[8];
  v7 = vmax_s32(vneg_s32(v6), 0);
  if (vadd_s32(vdup_lane_s32(v7, 1), v7).u32[0] >= v2)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "num_to_trim_w < w");
    goto LABEL_17;
  }

  v8 = this[1].i32[0];
  v9 = v8 / (v2 * v1);
  if (v8 % (v2 * v1))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "input_dim_ % (h * w) == 0");
    goto LABEL_17;
  }

  v10 = this[1].i32[1];
  v11 = (v6.i32[0] + v2 + v6.i32[1]) * (v4.i32[0] + v1 + v4.i32[1]);
  if (v10 % v11)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "output_dim_ % (out_h * out_w) == 0");
    goto LABEL_17;
  }

  if (v9 != v10 / v11)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "c == out_c");
LABEL_17:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
  }

  return this;
}

int32x2_t *kaldi::nnet1::Padding2DComponent::InitData(int32x2_t *this, uint64_t *a2)
{
  this[6] = 0;
  this[7] = 0;
  this[8] = 0;
  v3 = a2 + 4;
  while ((*(v3 + *(*a2 - 24)) & 2) == 0)
  {
    kaldi::nnet1::Padding2DComponent::Read(this, a2, 0);
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  return kaldi::nnet1::Padding2DComponent::Check(this);
}

int32x2_t *kaldi::nnet1::Padding2DComponent::ReadData(int32x2_t *a1, uint64_t *a2, int a3)
{
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  v6 = a2;
  for (i = a3; kaldi::Peek(v6, i) == 60; i = a3)
  {
    kaldi::nnet1::Padding2DComponent::Read(a1, a2, a3);
    v6 = a2;
  }

  v9 = 0;
  kaldi::ReadBasicType<char>(a2, a3, &v9);
  return kaldi::nnet1::Padding2DComponent::Check(a1);
}

uint64_t kaldi::nnet1::Padding2DComponent::WriteData(unsigned int *a1, void *a2, int a3)
{
  kaldi::WriteToken(a2, a3, "<FmapXLen>");
  kaldi::WriteBasicType<int>(a2, a3, a1[12]);
  kaldi::WriteToken(a2, a3, "<FmapYLen>");
  kaldi::WriteBasicType<int>(a2, a3, a1[13]);
  kaldi::WriteToken(a2, a3, "<PadTop>");
  kaldi::WriteBasicType<int>(a2, a3, a1[14]);
  kaldi::WriteToken(a2, a3, "<PadBottom>");
  kaldi::WriteBasicType<int>(a2, a3, a1[15]);
  kaldi::WriteToken(a2, a3, "<PadLeft>");
  kaldi::WriteBasicType<int>(a2, a3, a1[16]);
  kaldi::WriteToken(a2, a3, "<PadRight>");
  kaldi::WriteBasicType<int>(a2, a3, a1[17]);

  return kaldi::WriteBasicType<char>(a2, a3, 0);
}

uint64_t kaldi::nnet1::Padding2DComponent::Info(kaldi::nnet1::Padding2DComponent *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v3);
  (*(*this + 104))(this, &v3, 0, 0);
  std::stringbuf::str();
  v3 = *MEMORY[0x1E69E54E8];
  *(&v3 + *(v3 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v4 = MEMORY[0x1E69E5548] + 16;
  if (v6 < 0)
  {
    operator delete(v5[7].__locale_);
  }

  v4 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v5);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v7);
}

void sub_1B54101F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::Pad2D(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v37 = a8;
  if (a5 > 0 || a3 > 0 || a4 > 0 || a6 >= 1)
  {
    kaldi::CuMatrixBase<float>::SetZero(a2);
    a8 = v37;
  }

  v28 = a8 * a7;
  v27 = (*(a1 + 16) / (a8 * a7));
  if (v27 >= 1)
  {
    v12 = 0;
    v13 = a6 + a5 + a8;
    v14 = a5 & (a5 >> 31);
    v36 = (a6 & (a6 >> 31)) + a8 + v14;
    v40 = a7 + a4;
    v15 = a7;
    v33 = v14;
    v34 = 0;
    v35 = -v14;
    v26 = v13 * (a7 + a4 + a3);
    v32 = (a5 & ~(a5 >> 31)) + a3 * v13;
    v31 = -v32;
    do
    {
      v30 = v12;
      if (a7 >= 1)
      {
        v16 = 0;
        v17 = v31;
        v18 = v32;
        v20 = v33;
        v19 = v34;
        do
        {
          if (v16 >= -a3 && v16 < v40)
          {
            v21 = *(a2 + 8) + 4 * v18;
            v22 = v17 + *(a2 + 28);
            v23 = *(a2 + 32);
            LODWORD(v42[2]) = v36;
            *(&v42[2] + 4) = *(a2 + 20);
            HIDWORD(v42[3]) = v22;
            v42[4] = v23;
            v42[0] = &unk_1F2CFA908;
            v42[1] = v21;
            v24 = *(a1 + 8) + 4 * (v35 + v19);
            LODWORD(v21) = v20 + *(a1 + 28);
            v25 = *(a1 + 32);
            LODWORD(v41[2]) = v36;
            *(&v41[2] + 4) = *(a1 + 20);
            HIDWORD(v41[3]) = v21;
            v41[4] = v25;
            v41[0] = &unk_1F2CFA908;
            v41[1] = v24;
            kaldi::CuMatrixBase<float>::CopyFromMat<float>(v42, v41, 111);
            v41[0] = &unk_1F2CFA908;
            memset(&v41[1], 0, 32);
            quasar::Bitmap::~Bitmap(v41);
            v42[0] = &unk_1F2CFA908;
            memset(&v42[1], 0, 32);
            quasar::Bitmap::~Bitmap(v42);
            a8 = v37;
            v15 = a7;
          }

          ++v16;
          v19 += a8;
          v20 -= a8;
          v18 += v13;
          v17 -= v13;
        }

        while (v15 != v16);
      }

      v12 = v30 + 1;
      v34 += v28;
      v33 -= v28;
      v32 += v26;
      v31 -= v26;
    }

    while (v30 + 1 != v27);
  }
}

void sub_1B54104DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  *(v14 + 8) = 0u;
  *(v14 + 24) = 0u;
  quasar::Bitmap::~Bitmap(va);
  *(v16 - 128) = v15;
  v18 = v16 - 128;
  *(v18 + 8) = 0u;
  *(v18 + 24) = 0u;
  quasar::Bitmap::~Bitmap((v16 - 128));
  _Unwind_Resume(a1);
}

void kaldi::nnet1::CnnRearrangeComponent::~CnnRearrangeComponent(kaldi::nnet1::CnnRearrangeComponent *this)
{
  kaldi::nnet1::CnnRearrangeComponent::~CnnRearrangeComponent(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D11BF0;
  v2 = *(this + 10);
  if (v2)
  {
    free(v2);
  }

  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  v3 = *(this + 7);
  if (v3)
  {
    free(v3);
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;

  kaldi::nnet1::Component::~Component(this);
}

void sub_1B5410658(_Unwind_Exception *a1)
{
  v5 = *(v2 + 7);
  if (v5)
  {
    free(v5);
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  kaldi::nnet1::Component::~Component(v2);
  MEMORY[0x1B8C85350](v2, v1);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::PaddingComponent::~PaddingComponent(kaldi::nnet1::PaddingComponent *this)
{
  kaldi::nnet1::Component::~Component(this);

  JUMPOUT(0x1B8C85350);
}