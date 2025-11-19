void *std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,float,char>(void *a1, uint64_t a2, char **a3, std::locale *this, uint64_t a5, unint64_t a6)
{
  v11 = std::locale::use_facet(this, MEMORY[0x277D826C0]);
  (v11->__vftable[1].__on_zero_shared)(&__p);
  v12 = a3[2];
  v13 = *a3;
  if (v12 >= a3[1])
  {
    v12 = a3[1];
  }

  v50 = v12 - v13;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
    if (!__p.__r_.__value_.__l.__size_)
    {
      goto LABEL_29;
    }

    p_p = __p.__r_.__value_.__r.__words[0];
    if (v50 <= *__p.__r_.__value_.__l.__data_)
    {
      *__p.__r_.__value_.__l.__data_ = 0;
      __p.__r_.__value_.__l.__size_ = 0;
      goto LABEL_29;
    }

    v16 = __p.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_29;
    }

    if (v50 <= __p.__r_.__value_.__s.__data_[0])
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_29;
    }

    p_p = &__p;
    size = __p.__r_.__value_.__l.__size_;
    v16 = __p.__r_.__value_.__r.__words[0];
  }

  memset(&v51, 0, sizeof(v51));
  v17 = (v16 + size);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &__p + SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  v18 = p_p->__r_.__value_.__s.__data_[0];
  v19 = v50 - p_p->__r_.__value_.__s.__data_[0];
  if (v19 >= 1)
  {
    v20 = (v17 - 1);
    do
    {
      std::string::push_back(&v51, v18);
      if (p_p == v20)
      {
        v18 = p_p->__r_.__value_.__s.__data_[0];
      }

      else
      {
        v21 = (&p_p->__r_.__value_.__l.__data_ + 1);
        v22 = &p_p->__r_.__value_.__s.__data_[1];
        do
        {
          v23 = *v22++;
          v18 = v23;
          if (v23)
          {
            v24 = 1;
          }

          else
          {
            v24 = v21 == v20;
          }

          v21 = v22;
        }

        while (!v24);
        p_p = (v22 - 1);
      }

      v19 -= v18;
    }

    while (v19 > 0);
  }

  std::string::push_back(&v51, v18 + v19);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v51;
LABEL_29:
  v25 = HIDWORD(a6);
  v26 = *(a2 + 16);
  v27 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v27 = __p.__r_.__value_.__l.__size_;
  }

  v28 = a3[3] - v26 + *(a2 + 4) + v27 - (v27 != 0);
  v29 = a5 & 7;
  v30 = (a5 >> 32) - v28;
  if (a5 >> 32 <= v28)
  {
    *v49 = 0;
    v30 = 0;
    v31 = v25;
    goto LABEL_45;
  }

  if (v29 == 4)
  {
    v31 = 48;
  }

  else
  {
    v31 = v25;
  }

  if (v29 == 4)
  {
    v32 = 3;
  }

  else
  {
    v32 = a5 & 7;
  }

  if (v32 > 1)
  {
    if (v32 != 3)
    {
      *v49 = v30 - (v30 >> 1);
      v30 >>= 1;
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (!v32)
  {
LABEL_43:
    *v49 = 0;
    goto LABEL_45;
  }

  *v49 = (a5 >> 32) - v28;
  v30 = 0;
LABEL_45:
  if (v29 == 4 && v13 != v26)
  {
    std::__format::__output_buffer<char>::push_back[abi:ne200100](a1, *v26);
  }

  v33 = v25 & 0xFFFFFF00 | v31;
  v34 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v30, v33);
  v35 = v34;
  if (v29 != 4)
  {
    v36 = *(a2 + 16);
    if (v13 != v36)
    {
      std::__format::__output_buffer<char>::push_back[abi:ne200100](v34, *v36);
    }
  }

  v37 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (*(&__p.__r_.__value_.__s + 23))
    {
      v38 = &__p;
      goto LABEL_56;
    }

LABEL_59:
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v35, v13, v50);
    goto LABEL_60;
  }

  v37 = __p.__r_.__value_.__l.__size_;
  if (!__p.__r_.__value_.__l.__size_)
  {
    goto LABEL_59;
  }

  v38 = __p.__r_.__value_.__r.__words[0];
LABEL_56:
  v39 = v38 + v37;
  v40 = (v11->__vftable[1].~facet_0)(v11);
  v41 = &v38->__r_.__value_.__s.__data_[1];
  for (i = v39; ; v39 = i)
  {
    v43 = *--i;
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v35, v13, v43);
    if (v39 == v41)
    {
      break;
    }

    v13 += *i;
    std::__format::__output_buffer<char>::push_back[abi:ne200100](v35, v40);
  }

LABEL_60:
  v44 = a3[1];
  if (v44 != a3[3])
  {
    v45 = (v11->__vftable[1].~facet)(v11);
    std::__format::__output_buffer<char>::push_back[abi:ne200100](v35, v45);
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v35, a3[1] + 1, a3[2] - (a3[1] + 1));
    std::__format::__output_buffer<char>::__fill[abi:ne200100](v35, *(a2 + 4), 48);
    v44 = a3[3];
  }

  v46 = a3[2];
  if (v46 != v44)
  {
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v35, v46, v44 - v46);
  }

  v47 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v35, *v49, v33);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v47;
}

void sub_2578B92A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void *std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, char *a7, size_t a8)
{
  v12 = (a4 >> 32) - (a6 + a8);
  if ((a4 & 7u) <= 1)
  {
    if ((a4 & 7) != 0)
    {
      v13 = 0;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if ((a4 & 7) == 3)
  {
LABEL_5:
    v13 = (a4 >> 32) - (a6 + a8);
    v12 = 0;
    goto LABEL_7;
  }

  v13 = v12 >> 1;
  v12 -= v12 >> 1;
LABEL_7:
  v14 = HIDWORD(a5);
  v15 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v13, SHIDWORD(a5));
  std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v15, a1, a7 - a1);
  std::__format::__output_buffer<char>::__fill[abi:ne200100](v15, a8, 48);
  std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v15, a7, a2 - a7);

  return std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v15, v12, v14);
}

_BYTE *std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<float,float>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *(a1 + 4) = 0;
  *a4 = a3;
  v6 = MEMORY[0x259C68320](a3, *(a1 + 16) + *(a1 + 8), 3, a2);
  a4[3] = v6;
  result = (a3 + 1);
  if (a3 + 1 == v6)
  {
    a4[1] = v6;
    v11 = 2;
    goto LABEL_13;
  }

  v8 = v6 - result;
  if (v6 - result < 4)
  {
LABEL_8:
    a4[2] = v6;
  }

  else
  {
    v9 = 6;
    if (v8 < 6)
    {
      v9 = v6 - result;
    }

    v10 = -v9;
    while (*(v6 + v10) != 101)
    {
      if (++v10 == -3)
      {
        goto LABEL_8;
      }
    }

    a4[2] = v6 + v10;
    if (v10)
    {
      if (*result == 46)
      {
        v6 = a3 + 1;
      }

      goto LABEL_11;
    }
  }

  result = memchr(result, 46, v8);
  if (result)
  {
    v6 = result;
  }

LABEL_11:
  v11 = 1;
LABEL_13:
  a4[v11] = v6;
  return result;
}

_BYTE *std::__formatter::__format_buffer_default[abi:ne200100]<float,float>@<X0>(std::__1 *this@<X1>, uint64_t a2@<X0>, char *a3@<X2>, void *a4@<X8>, float a5@<S0>)
{
  *a4 = this;
  v7 = std::to_chars(this, (*(a2 + 16) + *(a2 + 8)), a3, a5);
  v8 = v7;
  a4[3] = v7;
  v9 = v7 - this;
  if (v7 - this < 4)
  {
LABEL_7:
    v11 = v7;
  }

  else
  {
    if (v9 >= 6)
    {
      v9 = 6;
    }

    v10 = -v9;
    while (*(v7 + v10) != 101)
    {
      if (++v10 == -3)
      {
        goto LABEL_7;
      }
    }

    v11 = (v7 + v10);
  }

  a4[2] = v11;
  result = memchr(this + 1, 46, v11 - (this + 1));
  if (result)
  {
    v13 = result;
  }

  else
  {
    v13 = v11;
  }

  if (v13 == v11)
  {
    v13 = v8;
  }

  a4[1] = v13;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<float,float>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  if (a2 == -1)
  {
    result = std::to_chars();
  }

  else
  {
    result = MEMORY[0x259C68320](a3, *(a1 + 16) + *(a1 + 8), 4, a2);
  }

  a4[3] = result;
  v8 = *(a3 + 1);
  v7 = a3 + 1;
  if (v8 == 46)
  {
    v9 = result - 2;
    v10 = memchr((result - 5), 112, 3uLL);
    result = v7;
    if (v10)
    {
      v7 = v10;
    }

    else
    {
      v7 = v9;
    }
  }

  a4[1] = result;
  a4[2] = v7;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_upper_case[abi:ne200100]<float,float>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<float,float>(a1, a2, a3, a4);
  v6 = *a4;
  v7 = a4[2];
  if (*a4 != v7)
  {
    do
    {
      result = std::__formatter::__hex_to_upper[abi:ne200100](*v6);
      *v6++ = result;
    }

    while (v6 != v7);
    v7 = a4[2];
  }

  *v7 = 80;
  return result;
}

uint64_t std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<float,float>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  result = MEMORY[0x259C68320](a3, *(a1 + 16) + *(a1 + 8), 1, a2);
  a4[3] = result;
  v7 = a3 + 1;
  if (*(a3 + 1) == 46)
  {
    a4[1] = v7;
    v8 = result - a3 - 2;
    if (v8 < 4)
    {
LABEL_8:
      v7 = result;
    }

    else
    {
      if (v8 >= 6)
      {
        v8 = 6;
      }

      v9 = -v8;
      while (*(result + v9) != 101)
      {
        if (++v9 == -3)
        {
          goto LABEL_8;
        }
      }

      v7 = result + v9;
    }
  }

  else
  {
    a4[1] = result;
  }

  a4[2] = v7;
  return result;
}

uint64_t std::__format::__output_buffer<char>::push_back[abi:ne200100](uint64_t result, char a2)
{
  v2 = *(result + 32);
  if (!v2 || (v4 = *v2, v3 = v2[1], v2[1] = v3 + 1, v3 < v4))
  {
    v5 = *result;
    v6 = *(result + 16);
    *(result + 16) = v6 + 1;
    *(v5 + v6) = a2;
    if (*(result + 16) == *(result + 8))
    {
      return (*(result + 24))(result, 2);
    }
  }

  return result;
}

void *std::__formatter::__format_floating_point[abi:ne200100]<double,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(void **a1, uint64_t a2, unint64_t a3, double a4)
{
  v43[128] = *MEMORY[0x277D85DE8];
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v33 = *a1;

    return std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(v33, a2, a3, a4 < 0.0, 0);
  }

  else
  {
    v7 = fabs(a4);
    if (a3 == -1)
    {
      v8 = 1074;
    }

    else
    {
      v8 = a3;
    }

    v39 = v8;
    v40 = 0;
    if (v8 >= 1075)
    {
      v39 = 1074;
      v40 = v8 - 1074;
      v41 = 1390;
      goto LABEL_8;
    }

    v41 = v8 + 316;
    if ((v8 + 316) >= 0x401)
    {
LABEL_8:
      operator new();
    }

    __p = v43;
    std::__formatter::__format_buffer[abi:ne200100]<double,double>(&v39, a4 < 0.0, (a3 & 0x80000000) == 0, (a2 >> 3) & 3, BYTE1(a2), &v35, v7);
    if ((a2 & 0x20) != 0)
    {
      v9 = v36;
      v10 = *v38;
      if (v36 == *v38)
      {
        ++*v38;
        *v10 = 46;
        v11 = v37;
        v12 = (*v38 - 1);
        if (v37 != (*v38 - 1))
        {
          if (v37 + 1 == v12)
          {
            v14 = *v37;
            *v37 = v37[1];
            v11[1] = v14;
          }

          else
          {
            v13 = *(*v38 - 1);
            memmove(v37 + 1, v37, v12 - v37);
            *v11 = v13;
          }
        }

        v9 = v37;
        v36 = v37++;
      }

      if ((BYTE1(a2) - 17) <= 1u)
      {
        if (a3 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = a3;
        }

        if ((a3 & 0x80000000) != 0)
        {
          v15 = 6;
        }

        if (v37 == *v38)
        {
          v16 = v35 - v9;
        }

        else
        {
          v16 = -1;
        }

        v17 = v16 + v15;
        v18 = &v37[~v9];
        if (v18 < v17)
        {
          v40 += v17 - v18;
        }
      }
    }

    if ((a2 & 0x40) != 0)
    {
      v26 = *a1;
      std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](a1, &v34);
      v27 = std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,double,char>(v26, &v39, &v35, &v34, a2, a3);
      std::locale::~locale(&v34);
    }

    else
    {
      v19 = *v38;
      v20 = __p;
      v21 = *v38 - __p;
      v22 = v40;
      if (*v38 - __p + v40 >= a2 >> 32)
      {
        if (!v40 || (v28 = v37, v37 == *v38))
        {
          v27 = *a1;
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a1, __p, *v38 - __p);
          std::__format::__output_buffer<char>::__fill[abi:ne200100](v27, v22, 48);
        }

        else
        {
          v27 = *a1;
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a1, __p, v37 - __p);
          std::__format::__output_buffer<char>::__fill[abi:ne200100](v27, v22, 48);
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v27, v28, v19 - v28);
        }
      }

      else
      {
        v23 = *a1;
        if ((a2 & 7) == 4)
        {
          if (__p != v35)
          {
            std::__format::__output_buffer<char>::push_back[abi:ne200100](v23, *__p);
            ++v20;
          }

          v24 = a2 & 0xB8 | 3;
          v25 = 48;
        }

        else
        {
          v25 = BYTE4(a3);
          v24 = a2;
        }

        v29 = a2 & 0xFFFFFFFFFFFFFF00 | v24;
        v30 = a3 & 0xFFFFFF00FFFFFFFFLL | (v25 << 32);
        if (v22)
        {
          v31 = std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v20, *v38, v23, v29, v30, v21, v37, v22);
        }

        else
        {
          v31 = std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v20, *v38 - v20, v23, v29, v30, v21);
        }

        v27 = v31;
      }
    }

    if (v41 >= 0x401)
    {
      operator delete(__p);
    }

    return v27;
  }
}

void sub_2578B9B40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, void *__p)
{
  if (a16 >= 0x401)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *std::__formatter::__format_buffer[abi:ne200100]<double,double>@<X0>(unsigned int *a1@<X0>, char a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, char **a6@<X8>, double a7@<D0>)
{
  v9 = *(a1 + 2);
  if (a2)
  {
    v10 = 45;
  }

  else if (a4 == 2)
  {
    v10 = 43;
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_8;
    }

    v10 = 32;
  }

  *v9 = v10;
  v9 = (v9 + 1);
LABEL_8:
  if (a5 > 14)
  {
    if ((a5 - 15) < 2)
    {
      v13 = *a1;
      *a6 = v9;
      result = MEMORY[0x259C682C0](v9, *(a1 + 2) + *(a1 + 1), 2, v13);
      a6[2] = result;
      a6[3] = result;
      if (v13)
      {
        v14 = v13 + 1;
      }

      else
      {
        v14 = 0;
      }

      a6[1] = &result[-v14];
      return result;
    }

    if (a5 != 17)
    {
      result = std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,double>(a1, *a1, v9, a6);
      v15 = a6[2];
      if (v15 == a6[3])
      {
        return result;
      }

      goto LABEL_35;
    }

    goto LABEL_25;
  }

  if (a5 <= 11)
  {
    if (a5)
    {
      if (a3)
      {
        v18 = *a1;
      }

      else
      {
        v18 = 0xFFFFFFFFLL;
      }

      return std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,double>(a1, v18, v9, a6);
    }

    if (!a3)
    {

      return std::__formatter::__format_buffer_default[abi:ne200100]<double,double>(v9, a1, v9, a6, a7);
    }

LABEL_25:
    v16 = *a1;

    return std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,double>(a1, v16, v9, a6);
  }

  if (a5 != 12)
  {
    if (a5 == 13)
    {
      v11 = *a1;

      return std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,double>(a1, v11, v9, a6);
    }

    result = std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,double>(a1, *a1, v9, a6);
    v15 = a6[2];
LABEL_35:
    *v15 = 69;
    return result;
  }

  if (a3)
  {
    v17 = *a1;
  }

  else
  {
    v17 = 0xFFFFFFFFLL;
  }

  return std::__formatter::__format_buffer_hexadecimal_upper_case[abi:ne200100]<double,double>(a1, v17, v9, a6);
}

void *std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,double,char>(void *a1, uint64_t a2, char **a3, std::locale *this, uint64_t a5, unint64_t a6)
{
  v11 = std::locale::use_facet(this, MEMORY[0x277D826C0]);
  (v11->__vftable[1].__on_zero_shared)(&__p);
  v12 = a3[2];
  v13 = *a3;
  if (v12 >= a3[1])
  {
    v12 = a3[1];
  }

  v50 = v12 - v13;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
    if (!__p.__r_.__value_.__l.__size_)
    {
      goto LABEL_29;
    }

    p_p = __p.__r_.__value_.__r.__words[0];
    if (v50 <= *__p.__r_.__value_.__l.__data_)
    {
      *__p.__r_.__value_.__l.__data_ = 0;
      __p.__r_.__value_.__l.__size_ = 0;
      goto LABEL_29;
    }

    v16 = __p.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_29;
    }

    if (v50 <= __p.__r_.__value_.__s.__data_[0])
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_29;
    }

    p_p = &__p;
    size = __p.__r_.__value_.__l.__size_;
    v16 = __p.__r_.__value_.__r.__words[0];
  }

  memset(&v51, 0, sizeof(v51));
  v17 = (v16 + size);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &__p + SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  v18 = p_p->__r_.__value_.__s.__data_[0];
  v19 = v50 - p_p->__r_.__value_.__s.__data_[0];
  if (v19 >= 1)
  {
    v20 = (v17 - 1);
    do
    {
      std::string::push_back(&v51, v18);
      if (p_p == v20)
      {
        v18 = p_p->__r_.__value_.__s.__data_[0];
      }

      else
      {
        v21 = (&p_p->__r_.__value_.__l.__data_ + 1);
        v22 = &p_p->__r_.__value_.__s.__data_[1];
        do
        {
          v23 = *v22++;
          v18 = v23;
          if (v23)
          {
            v24 = 1;
          }

          else
          {
            v24 = v21 == v20;
          }

          v21 = v22;
        }

        while (!v24);
        p_p = (v22 - 1);
      }

      v19 -= v18;
    }

    while (v19 > 0);
  }

  std::string::push_back(&v51, v18 + v19);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v51;
LABEL_29:
  v25 = HIDWORD(a6);
  v26 = *(a2 + 16);
  v27 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v27 = __p.__r_.__value_.__l.__size_;
  }

  v28 = a3[3] - v26 + *(a2 + 4) + v27 - (v27 != 0);
  v29 = a5 & 7;
  v30 = (a5 >> 32) - v28;
  if (a5 >> 32 <= v28)
  {
    *v49 = 0;
    v30 = 0;
    v31 = v25;
    goto LABEL_45;
  }

  if (v29 == 4)
  {
    v31 = 48;
  }

  else
  {
    v31 = v25;
  }

  if (v29 == 4)
  {
    v32 = 3;
  }

  else
  {
    v32 = a5 & 7;
  }

  if (v32 > 1)
  {
    if (v32 != 3)
    {
      *v49 = v30 - (v30 >> 1);
      v30 >>= 1;
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (!v32)
  {
LABEL_43:
    *v49 = 0;
    goto LABEL_45;
  }

  *v49 = (a5 >> 32) - v28;
  v30 = 0;
LABEL_45:
  if (v29 == 4 && v13 != v26)
  {
    std::__format::__output_buffer<char>::push_back[abi:ne200100](a1, *v26);
  }

  v33 = v25 & 0xFFFFFF00 | v31;
  v34 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v30, v33);
  v35 = v34;
  if (v29 != 4)
  {
    v36 = *(a2 + 16);
    if (v13 != v36)
    {
      std::__format::__output_buffer<char>::push_back[abi:ne200100](v34, *v36);
    }
  }

  v37 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (*(&__p.__r_.__value_.__s + 23))
    {
      v38 = &__p;
      goto LABEL_56;
    }

LABEL_59:
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v35, v13, v50);
    goto LABEL_60;
  }

  v37 = __p.__r_.__value_.__l.__size_;
  if (!__p.__r_.__value_.__l.__size_)
  {
    goto LABEL_59;
  }

  v38 = __p.__r_.__value_.__r.__words[0];
LABEL_56:
  v39 = v38 + v37;
  v40 = (v11->__vftable[1].~facet_0)(v11);
  v41 = &v38->__r_.__value_.__s.__data_[1];
  for (i = v39; ; v39 = i)
  {
    v43 = *--i;
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v35, v13, v43);
    if (v39 == v41)
    {
      break;
    }

    v13 += *i;
    std::__format::__output_buffer<char>::push_back[abi:ne200100](v35, v40);
  }

LABEL_60:
  v44 = a3[1];
  if (v44 != a3[3])
  {
    v45 = (v11->__vftable[1].~facet)(v11);
    std::__format::__output_buffer<char>::push_back[abi:ne200100](v35, v45);
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v35, a3[1] + 1, a3[2] - (a3[1] + 1));
    std::__format::__output_buffer<char>::__fill[abi:ne200100](v35, *(a2 + 4), 48);
    v44 = a3[3];
  }

  v46 = a3[2];
  if (v46 != v44)
  {
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v35, v46, v44 - v46);
  }

  v47 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v35, *v49, v33);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v47;
}

void sub_2578BA140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *(a1 + 4) = 0;
  *a4 = a3;
  v6 = MEMORY[0x259C682C0](a3, *(a1 + 16) + *(a1 + 8), 3, a2);
  a4[3] = v6;
  result = (a3 + 1);
  if (a3 + 1 == v6)
  {
    a4[1] = v6;
    v11 = 2;
    goto LABEL_13;
  }

  v8 = v6 - result;
  if (v6 - result < 4)
  {
LABEL_8:
    a4[2] = v6;
  }

  else
  {
    v9 = 6;
    if (v8 < 6)
    {
      v9 = v6 - result;
    }

    v10 = -v9;
    while (*(v6 + v10) != 101)
    {
      if (++v10 == -3)
      {
        goto LABEL_8;
      }
    }

    a4[2] = v6 + v10;
    if (v10)
    {
      if (*result == 46)
      {
        v6 = a3 + 1;
      }

      goto LABEL_11;
    }
  }

  result = memchr(result, 46, v8);
  if (result)
  {
    v6 = result;
  }

LABEL_11:
  v11 = 1;
LABEL_13:
  a4[v11] = v6;
  return result;
}

_BYTE *std::__formatter::__format_buffer_default[abi:ne200100]<double,double>@<X0>(std::__1 *this@<X1>, uint64_t a2@<X0>, char *a3@<X2>, void *a4@<X8>, double a5@<D0>)
{
  *a4 = this;
  v7 = std::to_chars(this, (*(a2 + 16) + *(a2 + 8)), a3, a5);
  v8 = v7;
  a4[3] = v7;
  v9 = v7 - this;
  if (v7 - this < 4)
  {
LABEL_7:
    v11 = v7;
  }

  else
  {
    if (v9 >= 6)
    {
      v9 = 6;
    }

    v10 = -v9;
    while (*(v7 + v10) != 101)
    {
      if (++v10 == -3)
      {
        goto LABEL_7;
      }
    }

    v11 = (v7 + v10);
  }

  a4[2] = v11;
  result = memchr(this + 1, 46, v11 - (this + 1));
  if (result)
  {
    v13 = result;
  }

  else
  {
    v13 = v11;
  }

  if (v13 == v11)
  {
    v13 = v8;
  }

  a4[1] = v13;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  if (a2 == -1)
  {
    result = std::to_chars();
  }

  else
  {
    result = MEMORY[0x259C682C0](a3, *(a1 + 16) + *(a1 + 8), 4, a2);
  }

  a4[3] = result;
  v8 = *(a3 + 1);
  v7 = a3 + 1;
  if (v8 == 46)
  {
    v9 = result - 2;
    v10 = memchr((result - 6), 112, 4uLL);
    result = v7;
    if (v10)
    {
      v7 = v10;
    }

    else
    {
      v7 = v9;
    }
  }

  a4[1] = result;
  a4[2] = v7;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_upper_case[abi:ne200100]<double,double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,double>(a1, a2, a3, a4);
  v6 = *a4;
  v7 = a4[2];
  if (*a4 != v7)
  {
    do
    {
      result = std::__formatter::__hex_to_upper[abi:ne200100](*v6);
      *v6++ = result;
    }

    while (v6 != v7);
    v7 = a4[2];
  }

  *v7 = 80;
  return result;
}

uint64_t std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  result = MEMORY[0x259C682C0](a3, *(a1 + 16) + *(a1 + 8), 1, a2);
  a4[3] = result;
  v7 = a3 + 1;
  if (*(a3 + 1) == 46)
  {
    a4[1] = v7;
    v8 = result - a3 - 2;
    if (v8 < 4)
    {
LABEL_8:
      v7 = result;
    }

    else
    {
      if (v8 >= 6)
      {
        v8 = 6;
      }

      v9 = -v8;
      while (*(result + v9) != 101)
      {
        if (++v9 == -3)
        {
          goto LABEL_8;
        }
      }

      v7 = result + v9;
    }
  }

  else
  {
    a4[1] = result;
  }

  a4[2] = v7;
  return result;
}

void *std::__formatter::__format_floating_point[abi:ne200100]<long double,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(void **a1, uint64_t a2, unint64_t a3, double a4)
{
  v43[128] = *MEMORY[0x277D85DE8];
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v33 = *a1;

    return std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(v33, a2, a3, a4 < 0.0, 0);
  }

  else
  {
    v7 = fabs(a4);
    if (a3 == -1)
    {
      v8 = 1074;
    }

    else
    {
      v8 = a3;
    }

    v39 = v8;
    v40 = 0;
    if (v8 >= 1075)
    {
      v39 = 1074;
      v40 = v8 - 1074;
      v41 = 1390;
      goto LABEL_8;
    }

    v41 = v8 + 316;
    if ((v8 + 316) >= 0x401)
    {
LABEL_8:
      operator new();
    }

    __p = v43;
    std::__formatter::__format_buffer[abi:ne200100]<double,long double>(&v39, a4 < 0.0, (a3 & 0x80000000) == 0, (a2 >> 3) & 3, BYTE1(a2), &v35, v7);
    if ((a2 & 0x20) != 0)
    {
      v9 = v36;
      v10 = *v38;
      if (v36 == *v38)
      {
        ++*v38;
        *v10 = 46;
        v11 = v37;
        v12 = (*v38 - 1);
        if (v37 != (*v38 - 1))
        {
          if (v37 + 1 == v12)
          {
            v14 = *v37;
            *v37 = v37[1];
            v11[1] = v14;
          }

          else
          {
            v13 = *(*v38 - 1);
            memmove(v37 + 1, v37, v12 - v37);
            *v11 = v13;
          }
        }

        v9 = v37;
        v36 = v37++;
      }

      if ((BYTE1(a2) - 17) <= 1u)
      {
        if (a3 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = a3;
        }

        if ((a3 & 0x80000000) != 0)
        {
          v15 = 6;
        }

        if (v37 == *v38)
        {
          v16 = v35 - v9;
        }

        else
        {
          v16 = -1;
        }

        v17 = v16 + v15;
        v18 = &v37[~v9];
        if (v18 < v17)
        {
          v40 += v17 - v18;
        }
      }
    }

    if ((a2 & 0x40) != 0)
    {
      v26 = *a1;
      std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](a1, &v34);
      v27 = std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,double,char>(v26, &v39, &v35, &v34, a2, a3);
      std::locale::~locale(&v34);
    }

    else
    {
      v19 = *v38;
      v20 = __p;
      v21 = *v38 - __p;
      v22 = v40;
      if (*v38 - __p + v40 >= a2 >> 32)
      {
        if (!v40 || (v28 = v37, v37 == *v38))
        {
          v27 = *a1;
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a1, __p, *v38 - __p);
          std::__format::__output_buffer<char>::__fill[abi:ne200100](v27, v22, 48);
        }

        else
        {
          v27 = *a1;
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a1, __p, v37 - __p);
          std::__format::__output_buffer<char>::__fill[abi:ne200100](v27, v22, 48);
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v27, v28, v19 - v28);
        }
      }

      else
      {
        v23 = *a1;
        if ((a2 & 7) == 4)
        {
          if (__p != v35)
          {
            std::__format::__output_buffer<char>::push_back[abi:ne200100](v23, *__p);
            ++v20;
          }

          v24 = a2 & 0xB8 | 3;
          v25 = 48;
        }

        else
        {
          v25 = BYTE4(a3);
          v24 = a2;
        }

        v29 = a2 & 0xFFFFFFFFFFFFFF00 | v24;
        v30 = a3 & 0xFFFFFF00FFFFFFFFLL | (v25 << 32);
        if (v22)
        {
          v31 = std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v20, *v38, v23, v29, v30, v21, v37, v22);
        }

        else
        {
          v31 = std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v20, *v38 - v20, v23, v29, v30, v21);
        }

        v27 = v31;
      }
    }

    if (v41 >= 0x401)
    {
      operator delete(__p);
    }

    return v27;
  }
}

void sub_2578BA8B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, void *__p)
{
  if (a16 >= 0x401)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *std::__formatter::__format_buffer[abi:ne200100]<double,long double>@<X0>(unsigned int *a1@<X0>, char a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, char **a6@<X8>, double a7@<D0>)
{
  v9 = *(a1 + 2);
  if (a2)
  {
    v10 = 45;
  }

  else if (a4 == 2)
  {
    v10 = 43;
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_8;
    }

    v10 = 32;
  }

  *v9 = v10;
  v9 = (v9 + 1);
LABEL_8:
  if (a5 > 14)
  {
    if ((a5 - 15) < 2)
    {
      v13 = *a1;
      *a6 = v9;
      result = MEMORY[0x259C682F0](v9, *(a1 + 2) + *(a1 + 1), 2, v13);
      a6[2] = result;
      a6[3] = result;
      if (v13)
      {
        v14 = v13 + 1;
      }

      else
      {
        v14 = 0;
      }

      a6[1] = &result[-v14];
      return result;
    }

    if (a5 != 17)
    {
      result = std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,long double>(a1, *a1, v9, a6);
      v15 = a6[2];
      if (v15 == a6[3])
      {
        return result;
      }

      goto LABEL_35;
    }

    goto LABEL_25;
  }

  if (a5 <= 11)
  {
    if (a5)
    {
      if (a3)
      {
        v18 = *a1;
      }

      else
      {
        v18 = 0xFFFFFFFFLL;
      }

      return std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,long double>(a1, v18, v9, a6);
    }

    if (!a3)
    {

      return std::__formatter::__format_buffer_default[abi:ne200100]<double,long double>(v9, a1, v9, a6, a7);
    }

LABEL_25:
    v16 = *a1;

    return std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,long double>(a1, v16, v9, a6);
  }

  if (a5 != 12)
  {
    if (a5 == 13)
    {
      v11 = *a1;

      return std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,long double>(a1, v11, v9, a6);
    }

    result = std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,long double>(a1, *a1, v9, a6);
    v15 = a6[2];
LABEL_35:
    *v15 = 69;
    return result;
  }

  if (a3)
  {
    v17 = *a1;
  }

  else
  {
    v17 = 0xFFFFFFFFLL;
  }

  return std::__formatter::__format_buffer_hexadecimal_upper_case[abi:ne200100]<double,long double>(a1, v17, v9, a6);
}

_BYTE *std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,long double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *(a1 + 4) = 0;
  *a4 = a3;
  v6 = MEMORY[0x259C682F0](a3, *(a1 + 16) + *(a1 + 8), 3, a2);
  a4[3] = v6;
  result = (a3 + 1);
  if (a3 + 1 == v6)
  {
    a4[1] = v6;
    v11 = 2;
    goto LABEL_13;
  }

  v8 = v6 - result;
  if (v6 - result < 4)
  {
LABEL_8:
    a4[2] = v6;
  }

  else
  {
    v9 = 6;
    if (v8 < 6)
    {
      v9 = v6 - result;
    }

    v10 = -v9;
    while (*(v6 + v10) != 101)
    {
      if (++v10 == -3)
      {
        goto LABEL_8;
      }
    }

    a4[2] = v6 + v10;
    if (v10)
    {
      if (*result == 46)
      {
        v6 = a3 + 1;
      }

      goto LABEL_11;
    }
  }

  result = memchr(result, 46, v8);
  if (result)
  {
    v6 = result;
  }

LABEL_11:
  v11 = 1;
LABEL_13:
  a4[v11] = v6;
  return result;
}

_BYTE *std::__formatter::__format_buffer_default[abi:ne200100]<double,long double>@<X0>(std::__1 *this@<X1>, uint64_t a2@<X0>, char *a3@<X2>, void *a4@<X8>, double a5@<D0>)
{
  *a4 = this;
  v7 = std::to_chars(this, (*(a2 + 16) + *(a2 + 8)), a3, a5);
  v8 = v7;
  a4[3] = v7;
  v9 = v7 - this;
  if (v7 - this < 4)
  {
LABEL_7:
    v11 = v7;
  }

  else
  {
    if (v9 >= 6)
    {
      v9 = 6;
    }

    v10 = -v9;
    while (*(v7 + v10) != 101)
    {
      if (++v10 == -3)
      {
        goto LABEL_7;
      }
    }

    v11 = (v7 + v10);
  }

  a4[2] = v11;
  result = memchr(this + 1, 46, v11 - (this + 1));
  if (result)
  {
    v13 = result;
  }

  else
  {
    v13 = v11;
  }

  if (v13 == v11)
  {
    v13 = v8;
  }

  a4[1] = v13;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,long double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  if (a2 == -1)
  {
    result = std::to_chars();
  }

  else
  {
    result = MEMORY[0x259C682F0](a3, *(a1 + 16) + *(a1 + 8), 4, a2);
  }

  a4[3] = result;
  v8 = *(a3 + 1);
  v7 = a3 + 1;
  if (v8 == 46)
  {
    v9 = result - 2;
    v10 = memchr((result - 6), 112, 4uLL);
    result = v7;
    if (v10)
    {
      v7 = v10;
    }

    else
    {
      v7 = v9;
    }
  }

  a4[1] = result;
  a4[2] = v7;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_upper_case[abi:ne200100]<double,long double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,long double>(a1, a2, a3, a4);
  v6 = *a4;
  v7 = a4[2];
  if (*a4 != v7)
  {
    do
    {
      result = std::__formatter::__hex_to_upper[abi:ne200100](*v6);
      *v6++ = result;
    }

    while (v6 != v7);
    v7 = a4[2];
  }

  *v7 = 80;
  return result;
}

uint64_t std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,long double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  result = MEMORY[0x259C682F0](a3, *(a1 + 16) + *(a1 + 8), 1, a2);
  a4[3] = result;
  v7 = a3 + 1;
  if (*(a3 + 1) == 46)
  {
    a4[1] = v7;
    v8 = result - a3 - 2;
    if (v8 < 4)
    {
LABEL_8:
      v7 = result;
    }

    else
    {
      if (v8 >= 6)
      {
        v8 = 6;
      }

      v9 = -v8;
      while (*(result + v9) != 101)
      {
        if (++v9 == -3)
        {
          goto LABEL_8;
        }
      }

      v7 = result + v9;
    }
  }

  else
  {
    a4[1] = result;
  }

  a4[2] = v7;
  return result;
}

unsigned __int8 *std::__formatter_string<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(_BYTE *a1, unsigned __int8 **a2)
{
  result = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(a1, a2, 296);
  v4 = a1[1];
  if (v4 >= 2 && v4 != 19)
  {
    std::__throw_format_error[abi:ne200100]("The type option contains an invalid value for a string formatting argument");
  }

  return result;
}

void *std::__formatter_string<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unsigned __int8 *a2, size_t a3, void *a4)
{
  v6 = *(a1 + 1);
  v7 = *a4;
  v9 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a4);
  if (v6 == 19)
  {

    return std::__formatter::__format_escaped_string[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, a3, v7, v9, v8);
  }

  else
  {

    return std::__formatter::__write_string[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, a3, v7, v9, v8);
  }
}

void *std::__formatter::__format_escaped_string[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(unsigned __int8 *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  memset(&v14, 0, sizeof(v14));
  std::string::push_back(&v14, 34);
  std::__formatter::__escape[abi:ne200100]<char>(&v14, a1, a2, 1);
  std::string::push_back(&v14, 34);
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v14;
  }

  else
  {
    v10 = v14.__r_.__value_.__r.__words[0];
  }

  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v14.__r_.__value_.__l.__size_;
  }

  v12 = std::__formatter::__write_string[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v10, size, a3, a4, a5);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  return v12;
}

void sub_2578BAF60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__formatter::__write_string[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *__src, size_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if ((a5 & 0x80000000) != 0)
  {

    return std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__src, a2, a3, a4, a5);
  }

  else
  {
    v9 = std::__format_spec::__estimate_column_width[abi:ne200100]<char,char const*>(__src, a2, a5 & 0x7FFFFFFF, 0);
    v11 = v10 - __src;

    return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__src, v11, a3, a4, a5, v9);
  }
}

unsigned __int8 *std::__formatter_pointer<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(_BYTE *a1, unsigned __int8 **a2)
{
  result = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(a1, a2, 292);
  v4 = a1[1];
  if ((v4 - 8) >= 2 && v4 != 0)
  {
    std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a pointer");
  }

  return result;
}

void *std::__formatter_pointer<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char *a1, unint64_t a2, void *a3)
{
  v5 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);
  v7 = 1536;
  if ((v5 & 0xFF00) == 0x900)
  {
    v7 = 1792;
  }

  return std::__formatter::__format_integer[abi:ne200100]<unsigned long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, a3, v5 & 0xFFFFFFFFFFFF00FFLL | v7 | 0x20, v6, 0);
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, void **a2, unint64_t a3, unint64_t a4, char a5)
{
  v13 = *MEMORY[0x277D85DE8];
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      return std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, v11, &v12 + 2, 0, 10);
    }

    v10 = 2;
    if (BYTE1(a3) == 2)
    {
      v7 = "0b";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v7 = "0B";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = &v13;
    return std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v8, a4, a5, v11, v9, v7, v10);
  }

  if (BYTE1(a3) > 5u)
  {
    v10 = 16;
    if (BYTE1(a3) == 6)
    {
      v7 = "0x";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v7 = "0X";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = &v12;
    return std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v8, a4, a5, v11, v9, v7, v10);
  }

  if (BYTE1(a3) != 4)
  {
    return std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, v11, &v12 + 2, 0, 10);
  }

  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  return std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, v11, &v12 + 5, v5, 8);
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, void **a2, unint64_t a3, unint64_t a4, char a5, char *a6, uint64_t a7, _BYTE *a8, signed int a9)
{
  v9 = a6;
  v13 = a3;
  if (a5)
  {
    v14 = 45;
LABEL_7:
    *a6 = v14;
    v16 = a6 + 1;
    goto LABEL_8;
  }

  v15 = (a3 >> 3) & 3;
  if (v15 == 2)
  {
    v14 = 43;
    goto LABEL_7;
  }

  v16 = a6;
  if (v15 == 3)
  {
    v14 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v17 = *a8;
      if (*a8)
      {
        v18 = a8 + 1;
        do
        {
          *v16++ = v17;
          v19 = *v18++;
          v17 = v19;
        }

        while (v19);
      }
    }
  }

  v20 = std::__to_chars_integral[abi:ne200100]<unsigned long long>(v16, a7, a1, a9);
  if ((v13 & 0x40) == 0)
  {
    goto LABEL_41;
  }

  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](a2, &v43);
  v21 = std::locale::use_facet(&v43, MEMORY[0x277D826C0]);
  std::locale::~locale(&v43);
  (v21->__vftable[1].__on_zero_shared)(&v43, v21);
  if ((v45 & 0x8000000000000000) != 0)
  {
    locale = v43.__locale_;
    if (!v44)
    {
LABEL_40:
      operator delete(locale);
      goto LABEL_41;
    }
  }

  else
  {
    if (!v45)
    {
      goto LABEL_41;
    }

    locale = &v43;
  }

  if (v20 - v16 <= *locale)
  {
    if (v45 < 0)
    {
      locale = v43.__locale_;
      goto LABEL_40;
    }

LABEL_41:
    v35 = HIDWORD(a3);
    if ((v13 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a2, v9, v16 - v9);
      v36 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v16 - v9)
      {
        LODWORD(v37) = v16 - v9;
      }

      else
      {
        LODWORD(v37) = HIDWORD(a3);
      }

      v35 = (HIDWORD(a3) - v37);
      LOBYTE(v37) = 48;
      v9 = v16;
    }

    else
    {
      v37 = HIDWORD(a4);
      v36 = a3;
    }

    v38 = *a2;
    v39 = v35 << 32;
    if ((a3 & 0xFF00) == 0x700)
    {
      return std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20, v38, v39 | a3 & 0xFFFF0000 | v36 | 0x700, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), std::__formatter::__hex_to_upper[abi:ne200100]);
    }

    else
    {
      return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20 - v9, v38, v39 | a3 & 0xFFFFFF00 | v36, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), v20 - v9);
    }
  }

  v23 = *a2;
  memset(&__p, 0, sizeof(__p));
  v24 = v43.__locale_ + v44;
  if (v45 < 0)
  {
    v25 = v43.__locale_;
  }

  else
  {
    v24 = &v43 + v45;
    v25 = &v43;
  }

  v26 = *v25;
  v27 = v20 - v16 - *v25;
  if (v27 >= 1)
  {
    v28 = v24 - 1;
    do
    {
      std::string::push_back(&__p, v26);
      if (v25 == v28)
      {
        v26 = *v25;
      }

      else
      {
        v29 = v25 + 1;
        v30 = v25 + 1;
        do
        {
          v31 = *v30++;
          v26 = v31;
          if (v31)
          {
            v32 = 1;
          }

          else
          {
            v32 = v29 == v28;
          }

          v29 = v30;
        }

        while (!v32);
        v25 = v30 - 1;
      }

      v27 -= v26;
    }

    while (v27 > 0);
  }

  std::string::push_back(&__p, v26 + v27);
  v33 = (v21->__vftable[1].~facet_0)(v21);
  v34 = std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v23, v9, v16, v20, &__p, v33, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v45 < 0)
  {
    operator delete(v43.__locale_);
  }

  return v34;
}

void sub_2578BB558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15.__locale_);
  }

  _Unwind_Resume(exception_object);
}

double math_color::YCC_coder::YCbCr_to_YPbPr(math_color::YCC_coder *this, int a2)
{
  v2 = a2;
  if (*this == 1)
  {
    return v2 / *(this + 1);
  }

  else
  {
    return (v2 / *(this + 2) + -16.0) / 219.0;
  }
}

double math_color::RGB_coder::decode(math_color::RGB_coder *this, int a2)
{
  v2 = a2;
  if (*this == 1)
  {
    return v2 / *(this + 1);
  }

  else
  {
    return (v2 / *(this + 2) + -16.0) / 219.0;
  }
}

void sub_2578BBCAC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

uint64_t matrix_coefficients_from_string(const __CFString *a1, double *a2, double *a3)
{
  if (!a1)
  {
    *a2 = 0.0;
    *a3 = 0.0;
    return 1;
  }

  if (CFStringCompare(a1, *MEMORY[0x277CC4D28], 0) == kCFCompareEqualTo)
  {
    *a2 = 0.2126;
    v9 = 0x3FB27BB2FEC56D5DLL;
LABEL_14:
    *a3 = v9;
    return 1;
  }

  if (CFStringCompare(a1, *MEMORY[0x277CC4D18], 0) == kCFCompareEqualTo)
  {
    *a2 = 0.2627;
    v9 = 0x3FAE5C91D14E3BCDLL;
    goto LABEL_14;
  }

  if (CFStringCompare(a1, *MEMORY[0x277CC4D30], 0) == kCFCompareEqualTo)
  {
    *a2 = 0.212;
    v9 = 0x3FB645A1CAC08312;
    goto LABEL_14;
  }

  if (CFStringCompare(a1, *MEMORY[0x277CC4D20], 0) == kCFCompareEqualTo)
  {
    *a2 = 0.299;
    v9 = 0x3FBD2F1A9FBE76C9;
    goto LABEL_14;
  }

  v7 = *MEMORY[0x277D85DF8];
  if (std::__is_posix_terminal(*MEMORY[0x277D85DF8], v6))
  {
    fflush(v7);
  }

  *&v10 = 0;
  std::__print::__vprint_nonunicode[abi:ne200100]<void>(v7, "**** WARNING ****: unknown YCbCrMatrix\n", 39, &v10, 0);
  return 0;
}

uint64_t MultiRenderer::MultiRenderer(uint64_t a1, uint64_t a2, unint64_t a3, Renderer::Parms *a4)
{
  v7 = 56 * a3;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::vector<Area_renderer>::__init_with_size[abi:ne200100]<std::__wrap_iter<Area_renderer const*>,std::__wrap_iter<Area_renderer const*>>(a1, a2, a2 + 56 * a3, 0x6DB6DB6DB6DB6DB7 * ((56 * a3) >> 3));
  *(a1 + 24) = 0u;
  v8 = (a1 + 24);
  *(a1 + 40) = 0u;
  if (a3)
  {
    v9 = a2;
    do
    {
      Renderer::Parms::makeRenderer(a4, v9, &v50);
      v11 = *(a1 + 32);
      v10 = *(a1 + 40);
      if (v11 >= v10)
      {
        v14 = *v8;
        v15 = v11 - *v8;
        v16 = v15 >> 3;
        v17 = (v15 >> 3) + 1;
        if (v17 >> 61)
        {
          std::vector<Area_renderer>::__throw_length_error[abi:ne200100]();
        }

        v18 = v10 - v14;
        if (v18 >> 2 > v17)
        {
          v17 = v18 >> 2;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFF8)
        {
          v19 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        v54 = v8;
        if (v19)
        {
          std::allocator<std::unique_ptr<PixelBuffer_renderer>>::allocate_at_least[abi:ne200100](v8, v19);
        }

        v20 = v50;
        v50 = 0;
        *(8 * v16) = v20;
        v13 = 8 * v16 + 8;
        memcpy(0, v14, v15);
        v21 = *(a1 + 24);
        *(a1 + 24) = 0;
        *(a1 + 32) = v13;
        v22 = *(a1 + 40);
        *(a1 + 40) = 0;
        v52 = v21;
        v53 = v22;
        __p[0] = v21;
        __p[1] = v21;
        std::__split_buffer<std::unique_ptr<PixelBuffer_renderer>>::~__split_buffer(__p);
        v8 = (a1 + 24);
      }

      else
      {
        v12 = v50;
        v50 = 0;
        *v11 = v12;
        v13 = (v11 + 8);
      }

      *(a1 + 32) = v13;
      v23 = v50;
      v50 = 0;
      if (v23)
      {
        (*(*v23 + 8))(v23);
      }

      v9 += 7;
      v7 -= 56;
    }

    while (v7);
  }

  v49 = objc_opt_new();
  v24 = *(a1 + 24);
  if ((*(a1 + 32) - v24) >> 3 >= a3)
  {
    v25 = a3;
  }

  else
  {
    v25 = (*(a1 + 32) - v24) >> 3;
  }

  if (v25)
  {
    v26 = 0;
    v27 = 8 * v25 - 8;
    v28 = 56 * v25 - 56;
    while (1)
    {
      v29 = v27;
      v30 = (a2 + v26);
      v31 = *(a2 + v26 + 24);
      v32 = *(a2 + v26 + 32);
      v33 = *(a2 + v26 + 40);
      v34 = *(a2 + v26 + 48);
      v35 = objc_opt_new();
      v36 = a2 + v26;
      if (*(a2 + v26 + 23) < 0)
      {
        v36 = *v30;
      }

      v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:v36];
      [v35 setObject:v37 forKeyedSubscript:@"pattern"];

      v55.origin.x = v31;
      v55.origin.y = v32;
      v55.size.width = v33;
      v55.size.height = v34;
      DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v55);
      [v35 setObject:DictionaryRepresentation forKeyedSubscript:@"rect"];

      v39 = MEMORY[0x277CCACA8];
      (*(**v24 + 16))(__p);
      if (SHIBYTE(v52) >= 0)
      {
        v40 = __p;
      }

      else
      {
        v40 = __p[0];
      }

      v41 = [v39 stringWithUTF8String:v40];
      [v35 setObject:v41 forKeyedSubscript:@"rendererName"];

      if (SHIBYTE(v52) < 0)
      {
        operator delete(__p[0]);
      }

      v42 = [MEMORY[0x277CCABB0] numberWithInt:(*(**v24 + 24))()];
      [v35 setObject:v42 forKeyedSubscript:@"rendererVersion"];

      v43 = Renderer::Parms::rendererParms(a4, v30);
      [v35 addEntriesFromDictionary:v43];

      [v49 addObject:v35];
      v24 += 8;
      v27 = v29 - 8;
      v44 = v26 + 56;
      v45 = v28 == v26;
      v26 += 56;
      if (v45)
      {
        v26 = v44;
        if (!v29)
        {
          break;
        }
      }
    }
  }

  v46 = *(a1 + 48);
  *(a1 + 48) = v49;

  return a1;
}

void sub_2578BC3A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  a13 = a10;
  std::vector<std::unique_ptr<PixelBuffer_renderer>>::__destroy_vector::operator()[abi:ne200100](&a13);
  a13 = v19;
  std::vector<Area_renderer>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t **MultiRenderer::render(uint64_t **this, int a2, __CVBuffer *a3)
{
  v4 = this;
  v5 = this[3];
  v6 = this[4];
  if (v5 == v6)
  {
    v9 = this[3];
  }

  else
  {
    v7 = a2;
    do
    {
      v8 = *v5++;
      (*(*v8 + 32))(v8, v7);
    }

    while (v5 != v6);
    v9 = v4[3];
    v5 = v4[4];
  }

  if (0x6DB6DB6DB6DB6DB7 * (v4[1] - *v4) >= ((v5 - v9) >> 3))
  {
    v10 = (v5 - v9) >> 3;
  }

  else
  {
    v10 = 0x6DB6DB6DB6DB6DB7 * (v4[1] - *v4);
  }

  if (v10)
  {
    v11 = 56 * v10 - 56;
    v12 = 8 * v10 - 8;
    v13 = (*v4 + 6);
    LODWORD(v4) = 1;
    while (1)
    {
      v14 = *v9;
      v16 = *(v13 - 3);
      v15 = *(v13 - 2);
      v18 = *(v13 - 1);
      v17 = *v13;
      v35 = a3;
      v36 = 0;
      if (!a3)
      {
        MultiRenderer::render();
      }

      CVPixelBufferLockBaseAddress(a3, 0);
      if (CVPixelBufferIsPlanar(a3))
      {
        PlaneCount = CVPixelBufferGetPlaneCount(a3);
      }

      else
      {
        PlaneCount = 1;
      }

      v37 = PlaneCount;
      PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
      if (PixelFormatType > 1937125937)
      {
        if (PixelFormatType > 2016687155)
        {
          if (PixelFormatType > 2019963441)
          {
            if (PixelFormatType == 2019963442)
            {
              v40 = *cf;
              v41 = v30;
              v38 = v31;
              v39 = v32;
              v22 = (*v14 + 112);
            }

            else
            {
              if (PixelFormatType != 2019963956)
              {
LABEL_62:
                v27 = *MEMORY[0x277D85DF8];
                if (std::__is_posix_terminal(*MEMORY[0x277D85DF8], v21))
                {
                  fflush(v27);
                }

                cf[0] = 0;
                std::__print::__vprint_nonunicode[abi:ne200100]<void>(v27, "Error: unexpected pixel format type\n", 36, cf, 0);
                v25 = 0;
                goto LABEL_57;
              }

              v40 = *cf;
              v41 = v30;
              v38 = v31;
              v39 = v32;
              v22 = (*v14 + 152);
            }
          }

          else if (PixelFormatType == 2016687156)
          {
            v40 = *cf;
            v41 = v30;
            v38 = v31;
            v39 = v32;
            v22 = (*v14 + 144);
          }

          else
          {
            if (PixelFormatType != 2019963440)
            {
              goto LABEL_62;
            }

            v40 = *cf;
            v41 = v30;
            v38 = v31;
            v39 = v32;
            v22 = (*v14 + 80);
          }
        }

        else if (PixelFormatType > 2016686639)
        {
          if (PixelFormatType == 2016686640)
          {
            v40 = *cf;
            v41 = v30;
            v38 = v31;
            v39 = v32;
            v22 = (*v14 + 72);
          }

          else
          {
            if (PixelFormatType != 2016686642)
            {
              goto LABEL_62;
            }

            v40 = *cf;
            v41 = v30;
            v38 = v31;
            v39 = v32;
            v22 = (*v14 + 104);
          }
        }

        else if (PixelFormatType == 1937125938)
        {
          v40 = *cf;
          v41 = v30;
          v38 = v31;
          v39 = v32;
          v22 = (*v14 + 120);
        }

        else
        {
          if (PixelFormatType != 1937126452)
          {
            goto LABEL_62;
          }

          v40 = *cf;
          v41 = v30;
          v38 = v31;
          v39 = v32;
          v22 = (*v14 + 160);
        }

        goto LABEL_55;
      }

      if (PixelFormatType <= 875836517)
      {
        break;
      }

      if (PixelFormatType <= 1278226487)
      {
        if (PixelFormatType == 875836518)
        {
          v40 = *cf;
          v41 = v30;
          v38 = v31;
          v39 = v32;
          v22 = (*v14 + 136);
        }

        else
        {
          if (PixelFormatType != 875836534)
          {
            goto LABEL_62;
          }

          v40 = *cf;
          v41 = v30;
          v38 = v31;
          v39 = v32;
          v22 = (*v14 + 128);
        }

LABEL_55:
        v24 = (*v22)(v14, &v40, &v38);
        goto LABEL_56;
      }

      if (PixelFormatType == 1278226488)
      {
        *cf = 0u;
        v30 = 0u;
        makeCroppedImageBufferView<unsigned char>(cf, 1, 1, &v33, v16, v15, v18, v17);
        v40 = v33;
        v41 = v34;
        v23 = (*v14 + 40);
      }

      else
      {
        if (PixelFormatType != 1278226736)
        {
          goto LABEL_62;
        }

        *cf = 0u;
        v30 = 0u;
        makeCroppedImageBufferView<unsigned short>(cf, 1, 1, &v33, v16, v15, v18, v17);
        v40 = v33;
        v41 = v34;
        v23 = (*v14 + 48);
      }

      v24 = (*v23)(v14, &v40);
LABEL_56:
      v25 = v24;
LABEL_57:
      CVPixelBufferUnlockBaseAddress(v35, v36);
      if (v25)
      {
        cf[0] = 0;
        VTCreateCGImageFromCVPixelBuffer(a3, 0, cf);
        if (cf[0])
        {
          CFRelease(cf[0]);
        }
      }

      v4 = (v4 & v25);
      v9 += 8;
      v13 += 7;
      v26 = v12 | v11;
      v11 -= 56;
      v12 -= 8;
      if (!v26)
      {
        return v4;
      }
    }

    if (PixelFormatType > 875704933)
    {
      if (PixelFormatType == 875704934)
      {
        v40 = *cf;
        v41 = v30;
        v38 = v31;
        v39 = v32;
        v22 = (*v14 + 96);
      }

      else
      {
        if (PixelFormatType != 875704950)
        {
          goto LABEL_62;
        }

        v40 = *cf;
        v41 = v30;
        v38 = v31;
        v39 = v32;
        v22 = (*v14 + 88);
      }
    }

    else if (PixelFormatType == 875704422)
    {
      v40 = *cf;
      v41 = v30;
      v38 = v31;
      v39 = v32;
      v22 = (*v14 + 64);
    }

    else
    {
      if (PixelFormatType != 875704438)
      {
        goto LABEL_62;
      }

      v40 = *cf;
      v41 = v30;
      v38 = v31;
      v39 = v32;
      v22 = (*v14 + 56);
    }

    goto LABEL_55;
  }

  return 1;
}

void sub_2578BCEA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Unwind_Resume(a1);
}

uint64_t std::vector<Area_renderer>::__init_with_size[abi:ne200100]<std::__wrap_iter<Area_renderer const*>,std::__wrap_iter<Area_renderer const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<Area_renderer>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2578BCF6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<Area_renderer>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<Area_renderer>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    std::allocator<Area_renderer>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<Area_renderer>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<Area_renderer>,Area_renderer const*,Area_renderer const*,Area_renderer*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
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

      v9 = *(v6 + 24);
      *&v4[1].__r_.__value_.__r.__words[2] = *(v6 + 40);
      *&v4[1].__r_.__value_.__l.__data_ = v9;
      v6 = (v6 + 56);
      v4 = (v8 + 56);
      v14 = (v8 + 56);
    }

    while (v6 != a3);
  }

  v12 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Area_renderer>,Area_renderer*>>::~__exception_guard_exceptions[abi:ne200100](v11);
  return v4;
}

void std::allocator<std::unique_ptr<PixelBuffer_renderer>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::unique_ptr<PixelBuffer_renderer>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<PixelBuffer_renderer>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<PixelBuffer_renderer>>::__destruct_at_end[abi:ne200100](void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

double anonymous namespace::ImageBufferProvider::getCroppedImageBuffers<unsigned char>@<D0>(_anonymous_namespace_::ImageBufferProvider *a1@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v16 = *(&v35 + 1);
  if (*(&v35 + 1) < (2 * v35))
  {
  }

  v17 = a5 * v37;
  v18 = (a2 - 1);
  v19 = (v17 + v18) / a2 * a2;
  v20 = (v17 + v37 * a7 + v18) - v19 - (v17 + v37 * a7 + v18) % a2;
  v21 = v19 / a2;
  v22 = v20 / a2;
  if (v22 + v21 > v35)
  {
  }

  v23 = a6 * *(&v36 + 1);
  v24 = (a3 - 1);
  v25 = (v23 + v24) / a3 * a3;
  v26 = (v23 + *(&v36 + 1) * a8 + v24) - v25 - (v23 + *(&v36 + 1) * a8 + v24) % a3;
  v27 = v25 / a3;
  v28 = v26 / a3;
  if (v28 + v27 > *(&v34 + 1))
  {
  }

  v29 = v34 + *(&v35 + 1) * v27 + 2 * v21;
  v32 = 0u;
  v33 = 0u;
  makeCroppedImageBufferView<unsigned char>(&v36, v19, v25, v20, v26, &v32);
  result = *&v32;
  v31 = v33;
  *a4 = v32;
  *(a4 + 16) = v31;
  *(a4 + 32) = v29;
  *(a4 + 40) = v28;
  *(a4 + 48) = v22;
  *(a4 + 56) = v16;
  return result;
}

double anonymous namespace::ImageBufferProvider::getCroppedImageBuffers<unsigned short>@<D0>(_anonymous_namespace_::ImageBufferProvider *a1@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v16 = *(&v35 + 1);
  if (*(&v35 + 1) < (4 * v35))
  {
  }

  v17 = a5 * v37;
  v18 = (a2 - 1);
  v19 = (v17 + v18) / a2 * a2;
  v20 = (v17 + v37 * a7 + v18) - v19 - (v17 + v37 * a7 + v18) % a2;
  v21 = v19 / a2;
  v22 = v20 / a2;
  if (v22 + v21 > v35)
  {
  }

  v23 = a6 * *(&v36 + 1);
  v24 = (a3 - 1);
  v25 = (v23 + v24) / a3 * a3;
  v26 = (v23 + *(&v36 + 1) * a8 + v24) - v25 - (v23 + *(&v36 + 1) * a8 + v24) % a3;
  v27 = v25 / a3;
  v28 = v26 / a3;
  if (v28 + v27 > *(&v34 + 1))
  {
  }

  v29 = v34 + *(&v35 + 1) * v27 + 4 * v21;
  v32 = 0u;
  v33 = 0u;
  makeCroppedImageBufferView<unsigned short>(&v36, v19, v25, v20, v26, &v32);
  result = *&v32;
  v31 = v33;
  *a4 = v32;
  *(a4 + 16) = v31;
  *(a4 + 32) = v29;
  *(a4 + 40) = v28;
  *(a4 + 48) = v22;
  *(a4 + 56) = v16;
  return result;
}

size_t anonymous namespace::ImageBufferProvider::getImageBuffer@<X0>(_anonymous_namespace_::ImageBufferProvider *this@<X0>, size_t planeIndex@<X1>, void **a3@<X8>)
{
  v4 = *(this + 2);
  if (v4 <= planeIndex)
  {
  }

  v6 = *this;
  if (v4 == 1)
  {
    *a3 = CVPixelBufferGetBaseAddress(v6);
    a3[2] = CVPixelBufferGetWidth(*this);
    a3[1] = CVPixelBufferGetHeight(*this);
    result = CVPixelBufferGetBytesPerRow(*this);
  }

  else
  {
    v8 = planeIndex;
    *a3 = CVPixelBufferGetBaseAddressOfPlane(v6, planeIndex);
    a3[2] = CVPixelBufferGetWidthOfPlane(*this, v8);
    a3[1] = CVPixelBufferGetHeightOfPlane(*this, v8);
    result = CVPixelBufferGetBytesPerRowOfPlane(*this, v8);
  }

  a3[3] = result;
  return result;
}

void *makeCroppedImageBufferView<unsigned char>@<X0>(void *a1@<X0>, int a2@<W1>, int a3@<W2>, void *a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v8 = a1[2];
  v9 = v8 * a5;
  v10 = a1[1];
  v11 = v10 * a6;
  v12 = v9 + v8 * a7;
  v13 = (a2 - 1);
  v14 = a2;
  v15 = (v9 + v13) / a2 * a2;
  v16 = (a3 - 1);
  v17 = a3;
  v18 = (v11 + v16) / a3 * a3;
  return makeCroppedImageBufferView<unsigned char>(a1, v15, v18, (v12 + v13) - v15 - (v12 + v13) % v14, (v11 + v10 * a8 + v16) - v18 - (v11 + v10 * a8 + v16) % v17, a4);
}

void *makeCroppedImageBufferView<unsigned char>@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v7 = result[2];
  v6 = result[3];
  if (v7 > v6)
  {
  }

  if (a4 + a2 > v7)
  {
  }

  if ((a5 + a3) > result[1])
  {
  }

  *a6 = *result + v6 * a3 + a2;
  a6[1] = a5;
  a6[2] = a4;
  a6[3] = v6;
  return result;
}

void *makeCroppedImageBufferView<unsigned short>@<X0>(void *a1@<X0>, int a2@<W1>, int a3@<W2>, void *a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v8 = a1[2];
  v9 = v8 * a5;
  v10 = a1[1];
  v11 = v10 * a6;
  v12 = v9 + v8 * a7;
  v13 = (a2 - 1);
  v14 = a2;
  v15 = (v9 + v13) / a2 * a2;
  v16 = (a3 - 1);
  v17 = a3;
  v18 = (v11 + v16) / a3 * a3;
  return makeCroppedImageBufferView<unsigned short>(a1, v15, v18, (v12 + v13) - v15 - (v12 + v13) % v14, (v11 + v10 * a8 + v16) - v18 - (v11 + v10 * a8 + v16) % v17, a4);
}

void *makeCroppedImageBufferView<unsigned short>@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v7 = result[2];
  v6 = result[3];
  if (v6 < 2 * v7)
  {
  }

  if (a4 + a2 > v7)
  {
  }

  if ((a5 + a3) > result[1])
  {
  }

  *a6 = *result + v6 * a3 + 2 * a2;
  a6[1] = a5;
  a6[2] = a4;
  a6[3] = v6;
  return result;
}

void Renderer::Parms::makeRenderer(Renderer::Parms *this@<X0>, void *a2@<X1>, void **a3@<X8>)
{
  v5 = *(a2 + 23);
  if (*(a2 + 23) < 0)
  {
    if (a2[1] == 16 && **a2 == 0x7A69726574736152 && *(*a2 + 8) == 0x736B636F6C426465)
    {
      goto LABEL_55;
    }

    if (a2[1] == 9 && **a2 == 0x726142726F6C6F43 && *(*a2 + 8) == 115)
    {
      goto LABEL_67;
    }

    if (a2[1] == 4 && **a2 == 1886216530)
    {
      goto LABEL_57;
    }

    if (a2[1] != 14 || (**a2 == 0x7065745373726142 ? (v10 = *(*a2 + 6) == 0x73706D6152737065) : (v10 = 0), !v10))
    {
      if (a2[1] != 9)
      {
LABEL_34:
        if ((v5 & 0x80) != 0 && a2[1] == 27)
        {
          v14 = **a2 == 0x74616C50656E6F5ALL && *(*a2 + 8) == 0x7268436874695765;
          v15 = v14 && *(*a2 + 16) == 0x6964617247616D6FLL;
          if (v15 && *(*a2 + 19) == 0x746E656964617247)
          {
            std::make_unique[abi:ne200100]<ZonePlate,int const&,int const&,double const&,double const&,double const&,int const&,double const&,0>();
          }
        }

LABEL_62:
        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "SMPTE_RP219"))
        {
          std::make_unique[abi:ne200100]<SMPTE_RP219,double const&,double const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "RecursiveQuads") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "RecursiveQuadsWithChroma") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "RecursiveQuadsWithChromaGradient"))
        {
          std::make_unique[abi:ne200100]<RecursiveQuads,int const&,int const&,RecursiveQuads::ChromaMode_t,int const(&)[4],int const(&)[4],0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "BT2111_HLG") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "BT2111_PQ"))
        {
          std::make_unique[abi:ne200100]<ITU_R_BT2111,BT_2111::SignalFormat,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "ColorSequence"))
        {
          frameSequenceValues(0x1EuLL, &__p);
          std::make_unique[abi:ne200100]<ColorSequence,std::vector<math_color::rgb> &,double const&,double const&,double &,double &,double &,double &,0>();
        }

        Renderer::Parms::makeRenderer();
      }

      v7 = *a2;
LABEL_30:
      v11 = *v7;
      v12 = *(v7 + 8);
      if (v11 == 0x74616C50656E6F5ALL && v12 == 101)
      {
        operator new();
      }

      goto LABEL_34;
    }

    goto LABEL_68;
  }

  if (*(a2 + 23) > 0xDu)
  {
    if (v5 != 14)
    {
      if (v5 != 16)
      {
        goto LABEL_62;
      }

      if (*a2 != 0x7A69726574736152 || a2[1] != 0x736B636F6C426465)
      {
        goto LABEL_62;
      }

LABEL_55:
      operator new();
    }

    if (*a2 != 0x7065745373726142 || *(a2 + 6) != 0x73706D6152737065)
    {
      goto LABEL_62;
    }

LABEL_68:
    operator new();
  }

  if (v5 != 4)
  {
    if (v5 != 9)
    {
      goto LABEL_62;
    }

    v6 = *a2 == 0x726142726F6C6F43 && *(a2 + 8) == 115;
    v7 = a2;
    if (!v6)
    {
      goto LABEL_30;
    }

LABEL_67:
    operator new();
  }

  if (*a2 != 1886216530)
  {
    goto LABEL_62;
  }

LABEL_57:
  Renderer::Parms::makeRampRenderer(this, &__p);
  *a3 = __p;
}

void sub_2578BDC84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

void Renderer::Parms::makeRampRenderer(Renderer::Parms *this@<X0>, void *a2@<X8>)
{
  v5 = *(this + 18);
  if (v5)
  {
    if (v5 < 1)
    {
      goto LABEL_39;
    }

    v6 = *(this + 19);
    if (v6)
    {
      if (v6 > 0)
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = 4;
        goto LABEL_11;
      }

LABEL_39:
      Renderer::Parms::makeRampRenderer();
    }

    v8 = 0;
    v9 = 0;
    v10 = 3;
    v7 = 1;
  }

  else
  {
    v11 = *(this + 19);
    if (v11)
    {
      if (v11 <= 0)
      {
        goto LABEL_39;
      }

      v7 = 0;
      v8 = 0;
      v10 = 2;
      v9 = 1;
    }

    else
    {
      v9 = 0;
      v8 = *(this + 20) == 2;
      v7 = 1;
      v10 = v8;
    }
  }

LABEL_11:
  v12 = *(this + 4) - *(this + 3);
  if (0xAAAAAAAAAAAAAAABLL * (v12 >> 3) <= 1)
  {
    v14 = *MEMORY[0x277D85DF8];
    v15 = "colorList requires two or more colors\n";
    v16 = 38;
    goto LABEL_35;
  }

  if (v5 && v12 != *(this + 7) - *(this + 6))
  {
    v14 = *MEMORY[0x277D85DF8];
    v15 = "--colorSteps requires valid colorList with two or more colors and colorListEnd of the same size.\n";
    v16 = 97;
    goto LABEL_35;
  }

  if (v8)
  {
    v13 = *(this + 11);
    if (v13 < 0.0 || v13 > 1.0)
    {
      v14 = *MEMORY[0x277D85DF8];
      v15 = "--raisedCosineInterpolation requires 0.0 <= alpha <= 1.0\n";
      v16 = 57;
      goto LABEL_35;
    }
  }

  else if (v9)
  {
    v17 = *(this + 11);
    if (v17 < 0.0 || v17 > 1.0 || (v18 = *(this + 12), v18 < 0.0) || v18 > 1.0)
    {
      v14 = *MEMORY[0x277D85DF8];
      v15 = "--kColorRangeWithRaisedCosineRangeTemporal requires 0.0 <= alpha <= 1.0, and 0.0 <= alphaEnd <= 1.0\n";
      v16 = 100;
      goto LABEL_35;
    }
  }

  if ((v7 & 1) != 0 || *(this + 20) == 2)
  {
    if (v10 > 1)
    {
      if (v10 != 2)
      {
        if (v10 == 3)
        {
          std::make_unique[abi:ne200100]<Ramp,double &,double &,std::vector<math_color::rgb> const&,std::vector<math_color::rgb> const&,int const&,Ramp::EInterpolation const&,0>();
        }

        std::make_unique[abi:ne200100]<Ramp,double &,double &,std::vector<math_color::rgb> const&,std::vector<math_color::rgb> const&,int const&,double const&,double const&,int const&,0>();
      }

      std::make_unique[abi:ne200100]<Ramp,double &,double &,std::vector<math_color::rgb> const&,double const&,double const&,int const&,0>();
    }

    if (!v10)
    {
      std::make_unique[abi:ne200100]<Ramp,double &,double &,std::vector<math_color::rgb> const&,Ramp::EInterpolation const&,0>();
    }

    std::make_unique[abi:ne200100]<Ramp,double &,double &,std::vector<math_color::rgb> const&,double const&,0>();
  }

  v14 = *MEMORY[0x277D85DF8];
  v15 = "--alphaSteps requires --raisedCosineInterpolation\n";
  v16 = 50;
LABEL_35:
  std::print[abi:ne200100]<>(v14, v15, v16);
  *a2 = 0;
}

void std::print[abi:ne200100]<>(FILE *a1, __sFILE *a2, uint64_t a3)
{
  if (std::__is_posix_terminal(a1, a2))
  {
    fflush(a1);
  }

  *&v6 = 0;
  std::__print::__vprint_nonunicode[abi:ne200100]<void>(a1, a2, a3, &v6, 0);
}

void sub_2578BE3E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x259C68350](v12, v11);
  _Unwind_Resume(a1);
}

void sub_2578BE4EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x259C68350](v12, v11);
  _Unwind_Resume(a1);
}

void sub_2578BE608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x259C68350](v12, v11);
  _Unwind_Resume(a1);
}

void sub_2578BE754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  MEMORY[0x259C68350](v14, v13);
  _Unwind_Resume(a1);
}

void sub_2578BE8C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  MEMORY[0x259C68350](v13, 0x10A1C40BB8EA64DLL);
  _Unwind_Resume(a1);
}

NSMutableDictionary *Renderer::Parms::rendererParms(double *a1, void *a2)
{
  v97[4] = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  v5 = *(a2 + 23);
  if ((v5 & 0x80) != 0)
  {
    if (a2[1] == 9 && **a2 == 0x726142726F6C6F43 && *(*a2 + 8) == 115)
    {
      goto LABEL_54;
    }

    if (a2[1] == 4 && **a2 == 1886216530)
    {
      goto LABEL_53;
    }

    if (a2[1] != 14 || (**a2 == 0x7065745373726142 ? (v9 = *(*a2 + 6) == 0x73706D6152737065) : (v9 = 0), !v9))
    {
      v10 = a2[1];
      if (v10 == 27)
      {
LABEL_32:
        if (**a2 != 0x74616C50656E6F5ALL || *(*a2 + 8) != 0x7268436874695765 || *(*a2 + 16) != 0x6964617247616D6FLL || *(*a2 + 19) != 0x746E656964617247)
        {
          goto LABEL_64;
        }

        v17 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 26)];
        [(NSMutableDictionary *)v4 setObject:v17 forKeyedSubscript:@"lumaSteps"];

        v18 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 36)];
        [(NSMutableDictionary *)v4 setObject:v18 forKeyedSubscript:@"chromaSteps"];

        v19 = [MEMORY[0x277CCABB0] numberWithDouble:a1[19]];
        [(NSMutableDictionary *)v4 setObject:v19 forKeyedSubscript:@"chromaAmplitude"];

        v20 = [MEMORY[0x277CCABB0] numberWithDouble:a1[14]];
        [(NSMutableDictionary *)v4 setObject:v20 forKeyedSubscript:@"fMax0"];

        v21 = [MEMORY[0x277CCABB0] numberWithDouble:a1[15]];
        [(NSMutableDictionary *)v4 setObject:v21 forKeyedSubscript:@"fMax1"];

        v22 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 32)];
        [(NSMutableDictionary *)v4 setObject:v22 forKeyedSubscript:@"fMaxPeriod"];

        v23 = [MEMORY[0x277CCABB0] numberWithDouble:a1[17]];
        [(NSMutableDictionary *)v4 setObject:v23 forKeyedSubscript:@"fMaxPhase"];
LABEL_56:

        goto LABEL_75;
      }

      if (v10 != 9)
      {
        goto LABEL_58;
      }

      v7 = *a2;
LABEL_26:
      v11 = *v7;
      v12 = *(v7 + 8);
      if (v11 == 0x74616C50656E6F5ALL && v12 == 101)
      {
        v29 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 26)];
        [(NSMutableDictionary *)v4 setObject:v29 forKeyedSubscript:@"lumaSteps"];

        v30 = [MEMORY[0x277CCABB0] numberWithDouble:a1[14]];
        [(NSMutableDictionary *)v4 setObject:v30 forKeyedSubscript:@"fMax0"];

        v31 = [MEMORY[0x277CCABB0] numberWithDouble:a1[15]];
        [(NSMutableDictionary *)v4 setObject:v31 forKeyedSubscript:@"fMax1"];

        v32 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 32)];
        [(NSMutableDictionary *)v4 setObject:v32 forKeyedSubscript:@"fMaxPeriod"];

        v23 = [MEMORY[0x277CCABB0] numberWithDouble:a1[17]];
        [(NSMutableDictionary *)v4 setObject:v23 forKeyedSubscript:@"fMaxPhase"];
        goto LABEL_56;
      }

      v10 = a2[1];
      if ((v5 & 0x80) != 0 && v10 == 27)
      {
        goto LABEL_32;
      }

      if ((v5 & 0x80) == 0)
      {
        goto LABEL_64;
      }

LABEL_58:
      if (v10 != 11)
      {
        goto LABEL_64;
      }

      v24 = *a2;
      goto LABEL_60;
    }

LABEL_51:
    v26 = [MEMORY[0x277CCABB0] numberWithDouble:*a1];
    [(NSMutableDictionary *)v4 setObject:v26 forKeyedSubscript:@"kR"];

    v23 = [MEMORY[0x277CCABB0] numberWithDouble:a1[1]];
    [(NSMutableDictionary *)v4 setObject:v23 forKeyedSubscript:@"kB"];
    goto LABEL_56;
  }

  if (*(a2 + 23) <= 0xAu)
  {
    if (v5 != 4)
    {
      if (v5 != 9)
      {
        goto LABEL_64;
      }

      v6 = *a2 == 0x726142726F6C6F43 && *(a2 + 8) == 115;
      v7 = a2;
      if (!v6)
      {
        goto LABEL_26;
      }

LABEL_54:
      v27 = [MEMORY[0x277CCABB0] numberWithDouble:*a1];
      [(NSMutableDictionary *)v4 setObject:v27 forKeyedSubscript:@"kR"];

      v28 = [MEMORY[0x277CCABB0] numberWithDouble:a1[1]];
      [(NSMutableDictionary *)v4 setObject:v28 forKeyedSubscript:@"kB"];

      v23 = [MEMORY[0x277CCABB0] numberWithDouble:a1[2]];
      [(NSMutableDictionary *)v4 setObject:v23 forKeyedSubscript:@"amplitude"];
      goto LABEL_56;
    }

    if (*a2 != 1886216530)
    {
      goto LABEL_64;
    }

LABEL_53:
    Renderer::Parms::rampRendererParms(a1, *a1, a1[1], v4);
    goto LABEL_75;
  }

  v24 = a2;
  if (v5 != 11)
  {
    if (v5 != 14)
    {
      goto LABEL_64;
    }

    if (*a2 != 0x7065745373726142 || *(a2 + 6) != 0x73706D6152737065)
    {
      goto LABEL_64;
    }

    goto LABEL_51;
  }

LABEL_60:
  v33 = *v24;
  v34 = *(v24 + 3);
  if (v33 == 0x50525F4554504D53 && v34 == 0x39313250525F4554)
  {
    goto LABEL_75;
  }

LABEL_64:
  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "RecursiveQuads"))
  {
    v36 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40)];
    [(NSMutableDictionary *)v4 setObject:v36 forKeyedSubscript:@"levelIncrement"];

    v37 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 41)];
    [(NSMutableDictionary *)v4 setObject:v37 forKeyedSubscript:@"levelIncrementChroma"];

    [(NSMutableDictionary *)v4 setObject:@"neutral" forKeyedSubscript:@"chromaMode"];
    v38 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 42)];
    v97[0] = v38;
    v39 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 43)];
    v97[1] = v39;
    v40 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 44)];
    v97[2] = v40;
    v41 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 45)];
    v97[3] = v41;
    v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v97 count:4];
    [(NSMutableDictionary *)v4 setObject:v42 forKeyedSubscript:@"quadMap"];

    v43 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 46)];
    v96[0] = v43;
    v44 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 47)];
    v96[1] = v44;
    v45 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
    v96[2] = v45;
    v46 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 49)];
    v96[3] = v46;
    v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v96 count:4];
    [(NSMutableDictionary *)v4 setObject:v47 forKeyedSubscript:@"quadMapChroma"];

    goto LABEL_75;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "RecursiveQuadsWithChroma"))
  {
    v48 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40)];
    [(NSMutableDictionary *)v4 setObject:v48 forKeyedSubscript:@"levelIncrement"];

    v49 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 41)];
    [(NSMutableDictionary *)v4 setObject:v49 forKeyedSubscript:@"levelIncrementChroma"];

    [(NSMutableDictionary *)v4 setObject:@"recursive" forKeyedSubscript:@"chromaMode"];
    v50 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 42)];
    v95[0] = v50;
    v51 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 43)];
    v95[1] = v51;
    v52 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 44)];
    v95[2] = v52;
    v53 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 45)];
    v95[3] = v53;
    v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v95 count:4];
    [(NSMutableDictionary *)v4 setObject:v54 forKeyedSubscript:@"quadMap"];

    v55 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 46)];
    v94[0] = v55;
    v56 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 47)];
    v94[1] = v56;
    v57 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
    v94[2] = v57;
    v58 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 49)];
    v94[3] = v58;
    v59 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:4];
    [(NSMutableDictionary *)v4 setObject:v59 forKeyedSubscript:@"quadMapChroma"];

    goto LABEL_75;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "RecursiveQuadsWithChromaGradient"))
  {
    v60 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40)];
    [(NSMutableDictionary *)v4 setObject:v60 forKeyedSubscript:@"levelIncrement"];

    v61 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 41)];
    [(NSMutableDictionary *)v4 setObject:v61 forKeyedSubscript:@"levelIncrementChroma"];

    [(NSMutableDictionary *)v4 setObject:@"gradient" forKeyedSubscript:@"chromaMode"];
    v62 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 42)];
    v93[0] = v62;
    v63 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 43)];
    v93[1] = v63;
    v64 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 44)];
    v93[2] = v64;
    v65 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 45)];
    v93[3] = v65;
    v66 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:4];
    [(NSMutableDictionary *)v4 setObject:v66 forKeyedSubscript:@"quadMap"];

    v67 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 46)];
    v92[0] = v67;
    v68 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 47)];
    v92[1] = v68;
    v69 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
    v92[2] = v69;
    v70 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 49)];
    v92[3] = v70;
    v71 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:4];
    [(NSMutableDictionary *)v4 setObject:v71 forKeyedSubscript:@"quadMapChroma"];

    goto LABEL_75;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "BT2111_HLG"))
  {
    v72 = @"HLG_narrow_range";
LABEL_74:
    [(NSMutableDictionary *)v4 setObject:v72 forKeyedSubscript:@"signal_format"];
    goto LABEL_75;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "BT2111_PQ"))
  {
    v72 = @"PQ_narrow_range";
    goto LABEL_74;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "ColorSequence"))
  {
    frameSequenceValues(0x1EuLL, &__p);
    v88 = objc_opt_new();
    v74 = __p;
    v75 = v90;
    if (__p != v90)
    {
      do
      {
        v76 = v74[1];
        v77 = v74[2];
        v78 = [MEMORY[0x277CCABB0] numberWithDouble:*v74];
        v91[0] = v78;
        v79 = [MEMORY[0x277CCABB0] numberWithDouble:v76];
        v91[1] = v79;
        v80 = [MEMORY[0x277CCABB0] numberWithDouble:v77];
        v91[2] = v80;
        v81 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:3];
        [v88 addObject:v81];

        v74 += 3;
      }

      while (v74 != v75);
    }

    v82 = [MEMORY[0x277CCABB0] numberWithDouble:*a1];
    [(NSMutableDictionary *)v4 setObject:v82 forKeyedSubscript:@"kR"];

    v83 = [MEMORY[0x277CCABB0] numberWithDouble:a1[1]];
    [(NSMutableDictionary *)v4 setObject:v83 forKeyedSubscript:@"kB"];

    [(NSMutableDictionary *)v4 setObject:v88 forKeyedSubscript:@"colors"];
    v84 = [MEMORY[0x277CCABB0] numberWithDouble:0.5];
    [(NSMutableDictionary *)v4 setObject:v84 forKeyedSubscript:@"sizeX"];

    v85 = [MEMORY[0x277CCABB0] numberWithDouble:0.5];
    [(NSMutableDictionary *)v4 setObject:v85 forKeyedSubscript:@"sizeY"];

    v86 = [MEMORY[0x277CCABB0] numberWithDouble:0.5];
    [(NSMutableDictionary *)v4 setObject:v86 forKeyedSubscript:@"centerX"];

    v87 = [MEMORY[0x277CCABB0] numberWithDouble:0.5];
    [(NSMutableDictionary *)v4 setObject:v87 forKeyedSubscript:@"centerY"];

    if (__p)
    {
      v90 = __p;
      operator delete(__p);
    }
  }

  else
  {
    printf("unsupported renderer");
  }

LABEL_75:

  return v4;
}

void sub_2578BF6EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void Renderer::Parms::rampRendererParms(Renderer::Parms *this, double a2, double a3, NSMutableDictionary *a4)
{
  v47[3] = *MEMORY[0x277D85DE8];
  v44 = a4;
  v7 = *(this + 18);
  if (v7)
  {
    if (v7 < 1)
    {
      goto LABEL_44;
    }

    v8 = *(this + 19);
    if (v8)
    {
      if (v8 > 0)
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 4;
        goto LABEL_11;
      }

LABEL_44:
      __assert_rtn("rampRendererParms", "RendererFactory.mm", 246, "0");
    }

    v10 = 0;
    v11 = 0;
    v12 = 3;
    v9 = 1;
  }

  else
  {
    v13 = *(this + 19);
    if (v13)
    {
      if (v13 <= 0)
      {
        goto LABEL_44;
      }

      v9 = 0;
      v10 = 0;
      v12 = 2;
      v11 = 1;
    }

    else
    {
      v11 = 0;
      v10 = *(this + 20) == 2;
      v9 = 1;
      v12 = v10;
    }
  }

LABEL_11:
  v14 = *(this + 4) - *(this + 3);
  if (0xAAAAAAAAAAAAAAABLL * (v14 >> 3) <= 1)
  {
    printf("colorList requires two or more colors");
    goto LABEL_39;
  }

  if (v7 && v14 != *(this + 7) - *(this + 6))
  {
    printf("--colorSteps requires valid colorList with two or more colors and colorListEnd of the same size.");
    goto LABEL_39;
  }

  if (!v10)
  {
    if (v11)
    {
      v16 = *(this + 11);
      if (v16 < 0.0 || v16 > 1.0 || (v17 = *(this + 12), v17 < 0.0) || v17 > 1.0)
      {
        printf("--kColorRangeWithRaisedCosineRangeTemporal requires 0.0 <= alpha <= 1.0, and 0.0 <= alphaEnd <= 1.0");
        goto LABEL_39;
      }
    }

LABEL_24:
    if ((v9 & 1) == 0 && *(this + 20) != 2)
    {
      printf("--alphaSteps requires --raisedCosineInterpolation");
      goto LABEL_39;
    }

    v43 = v12;
    v45 = objc_opt_new();
    v19 = *(this + 3);
    for (i = *(this + 4); v19 != i; v19 += 3)
    {
      v20 = v19[1];
      v21 = v19[2];
      v22 = [MEMORY[0x277CCABB0] numberWithDouble:*v19];
      v47[0] = v22;
      v23 = [MEMORY[0x277CCABB0] numberWithDouble:v20];
      v47[1] = v23;
      v24 = [MEMORY[0x277CCABB0] numberWithDouble:v21];
      v47[2] = v24;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:3];
      [v45 addObject:v25];
    }

    v26 = objc_opt_new();
    v28 = *(this + 6);
    for (j = *(this + 7); v28 != j; v28 += 3)
    {
      v29 = v28[1];
      v30 = v28[2];
      v31 = [MEMORY[0x277CCABB0] numberWithDouble:*v28];
      v46[0] = v31;
      v32 = [MEMORY[0x277CCABB0] numberWithDouble:v29];
      v46[1] = v32;
      v33 = [MEMORY[0x277CCABB0] numberWithDouble:v30];
      v46[2] = v33;
      v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:3];
      [v26 addObject:v34];
    }

    v35 = [MEMORY[0x277CCABB0] numberWithDouble:a2];
    [(NSMutableDictionary *)v44 setObject:v35 forKeyedSubscript:@"kR"];

    v36 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
    [(NSMutableDictionary *)v44 setObject:v36 forKeyedSubscript:@"kB"];

    if (v43 <= 1)
    {
      [(NSMutableDictionary *)v44 setObject:v45 forKeyedSubscript:@"rgbColors"];
      if (v43)
      {
        v38 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 11)];
        [(NSMutableDictionary *)v44 setObject:v38 forKeyedSubscript:@"raised_cosine_alpha"];
        goto LABEL_43;
      }
    }

    else
    {
      if (v43 == 2)
      {
        [(NSMutableDictionary *)v44 setObject:v45 forKeyedSubscript:@"rgbColors"];
        v39 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 11)];
        [(NSMutableDictionary *)v44 setObject:v39 forKeyedSubscript:@"raised_cosine_alpha0"];

        v40 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 12)];
        [(NSMutableDictionary *)v44 setObject:v40 forKeyedSubscript:@"raised_cosine_alpha1"];

        v38 = [MEMORY[0x277CCABB0] numberWithInt:*(this + 19)];
        [(NSMutableDictionary *)v44 setObject:v38 forKeyedSubscript:@"alphaSteps"];
        goto LABEL_43;
      }

      [(NSMutableDictionary *)v44 setObject:v45 forKeyedSubscript:@"rgbColors0"];
      [(NSMutableDictionary *)v44 setObject:v26 forKeyedSubscript:@"rgbColors1"];
      v37 = [MEMORY[0x277CCABB0] numberWithInt:*(this + 18)];
      [(NSMutableDictionary *)v44 setObject:v37 forKeyedSubscript:@"colorSteps"];

      if (v43 != 3)
      {
        v41 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 11)];
        [(NSMutableDictionary *)v44 setObject:v41 forKeyedSubscript:@"raised_cosine_alpha0"];

        v42 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 12)];
        [(NSMutableDictionary *)v44 setObject:v42 forKeyedSubscript:@"raised_cosine_alpha1"];

        v38 = [MEMORY[0x277CCABB0] numberWithInt:*(this + 19)];
        [(NSMutableDictionary *)v44 setObject:v38 forKeyedSubscript:@"alphaSteps"];
        goto LABEL_43;
      }
    }

    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(this + 20)];
    [(NSMutableDictionary *)v44 setObject:v38 forKeyedSubscript:@"interpolation"];
LABEL_43:

    goto LABEL_39;
  }

  v15 = *(this + 11);
  if (v15 >= 0.0 && v15 <= 1.0)
  {
    goto LABEL_24;
  }

  printf("--raisedCosineInterpolation requires 0.0 <= alpha <= 1.0");
LABEL_39:
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279847AE8, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

uint64_t std::vector<math_color::rgb>::__init_with_size[abi:ne200100]<math_color::rgb*,math_color::rgb*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<math_color::rgb>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2578C0218(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<math_color::rgb>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::allocator<CMTime>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<Area_renderer>::__throw_length_error[abi:ne200100]();
}

uint64_t videoFullRangeFlag(int a1)
{
  result = 1;
  if (a1 > 1937125937)
  {
    if (a1 <= 2016687155)
    {
      if (a1 > 2016686639)
      {
        if (a1 != 2016686640)
        {
          v4 = 2016686642;
LABEL_21:
          if (a1 == v4)
          {
            return 0;
          }

          goto LABEL_30;
        }
      }

      else if (a1 != 1937125938)
      {
        v4 = 1937126452;
        goto LABEL_21;
      }

      return 0;
    }

    if (a1 > 2019963441)
    {
      if (a1 == 2019963442)
      {
        return result;
      }

      v5 = 13364;
    }

    else
    {
      if (a1 == 2016687156)
      {
        return 0;
      }

      v5 = 12848;
    }

    v6 = v5 | 0x78660000;
    goto LABEL_28;
  }

  if (a1 > 875836517)
  {
    if (a1 <= 1278226487)
    {
      if (a1 != 875836518)
      {
        v4 = 875836534;
        goto LABEL_21;
      }

      return result;
    }

    if (a1 == 1278226488)
    {
      return result;
    }

    v6 = 1278226736;
LABEL_28:
    if (a1 != v6)
    {
LABEL_30:
      std::print[abi:ne200100]<>(*MEMORY[0x277D85DF8], "Error: unexpected pixel format type\n", 36);
      return 0;
    }

    return result;
  }

  if (a1 > 875704933)
  {
    if (a1 != 875704934)
    {
      v3 = 12918;
      goto LABEL_18;
    }
  }

  else if (a1 != 875704422)
  {
    v3 = 12406;
LABEL_18:
    v4 = v3 | 0x34320000;
    goto LABEL_21;
  }

  return result;
}

uint64_t pixelFormat_bit_depth(int a1)
{
  v1 = 10;
  if (a1 > 1937126451)
  {
    if (a1 <= 2019963439)
    {
      if (a1 > 2016686641)
      {
        if (a1 == 2016686642)
        {
          return v1;
        }

        v4 = 13364;
      }

      else
      {
        if (a1 == 1937126452)
        {
          return 16;
        }

        v4 = 12848;
      }

      v5 = v4 | 0x78340000;
    }

    else
    {
      if (a1 > 2019963955)
      {
        if (a1 == 2019963956)
        {
          return v1;
        }

        if (a1 == 2037741171)
        {
          return 8;
        }

        v2 = 2037741158;
        goto LABEL_27;
      }

      if (a1 == 2019963440)
      {
        return v1;
      }

      v5 = 2019963442;
    }

    if (a1 == v5)
    {
      return v1;
    }

    goto LABEL_32;
  }

  if (a1 <= 875836517)
  {
    if (a1 > 875704933)
    {
      if (a1 == 875704934)
      {
        return 8;
      }

      v3 = 12918;
    }

    else
    {
      if (a1 == 875704422)
      {
        return 8;
      }

      v3 = 12406;
    }

    v2 = v3 | 0x34320000;
    goto LABEL_27;
  }

  if (a1 <= 1278226487)
  {
    if (a1 == 875836518)
    {
      return 8;
    }

    v2 = 875836534;
LABEL_27:
    if (a1 == v2)
    {
      return 8;
    }

LABEL_32:
    std::print[abi:ne200100]<>(*MEMORY[0x277D85DF8], "Error: unexpected pixel format type\n", 36);
    return 0;
  }

  if (a1 == 1278226488)
  {
    return 8;
  }

  if (a1 != 1278226736)
  {
    if (a1 != 1937125938)
    {
      goto LABEL_32;
    }

    return 16;
  }

  return v1;
}

uint64_t pixelFormat_is_420(int a1)
{
  result = 1;
  if (a1 > 2016686639)
  {
    if (a1 == 2016686640)
    {
      return result;
    }

    v3 = 2019963440;
  }

  else
  {
    if (a1 == 875704422)
    {
      return result;
    }

    v3 = 875704438;
  }

  if (a1 != v3)
  {
    return 0;
  }

  return result;
}

uint64_t pixelFormat_is_422(int a1)
{
  result = 1;
  if (a1 > 2016686641)
  {
    if (a1 > 2037741157)
    {
      if (a1 == 2037741158)
      {
        return result;
      }

      v3 = 2037741171;
    }

    else
    {
      if (a1 == 2016686642)
      {
        return result;
      }

      v3 = 2019963442;
    }

    goto LABEL_10;
  }

  if (a1 != 875704934 && a1 != 875704950)
  {
    v3 = 1937125938;
LABEL_10:
    if (a1 != v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t pixelFormat_is_444(int a1)
{
  result = 1;
  if (a1 <= 1937126451)
  {
    if (a1 == 875836518)
    {
      return result;
    }

    v3 = 875836534;
    goto LABEL_7;
  }

  if (a1 != 1937126452 && a1 != 2016687156)
  {
    v3 = 2019963956;
LABEL_7:
    if (a1 != v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t pixelFormat_is_monochrome(int a1)
{
  result = 1;
  if ((a1 - 1278226488) > 0x30 || ((1 << (a1 - 56)) & 0x1400000000001) == 0)
  {
    v3 = a1 - 1278226736;
    if (v3 > 6 || ((1 << v3) & 0x45) == 0)
    {
      return 0;
    }
  }

  return result;
}

void sub_2578C2AF4(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v4 = objc_begin_catch(exception_object);
    v5 = [v2 + 2336 defaultLog];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *(v3 - 128) = 0;
      _os_log_impl(&dword_257883000, v5, OS_LOG_TYPE_ERROR, "AVAssetWriter.requiresInProcessOperation not supported.", (v3 - 128), 2u);
    }

    objc_end_catch();
    JUMPOUT(0x2578C25ACLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_2578C40E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2578C4D98(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2578C58BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MIONonPlanarToL008FrameProcessor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void RasterizedBlocks::RasterizedBlocks(RasterizedBlocks *this, int a2, int a3, int a4, int a5, int a6)
{
  *this = &unk_2868CE228;
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 4) = a4;
  *(this + 5) = a5;
  *(this + 6) = a4;
  *(this + 7) = a6;
  *(this + 32) = 0;
}

uint64_t RasterizedBlocks::RasterizedBlocks(uint64_t result, int a2, int a3, int a4, int a5, uint64_t a6, int a7)
{
  *result = &unk_2868CE228;
  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 16) = a4;
  *(result + 20) = a5;
  *(result + 24) = a4;
  *(result + 28) = a7;
  *(result + 32) = 1;
  return result;
}

uint64_t RasterizedBlocks::render_L008(_DWORD *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[2];
  v6 = a1[5];
  v5 = a1[6];
  v7 = a2[2];
  v16 = a2[1];
  v8 = v3 * v4;
  std::vector<int>::vector[abi:ne200100](&__p, v3 * v4);
  if (v3 >= 1)
  {
    v19 = 0;
    v9 = 0;
    v17 = v3;
    do
    {
      v18 = v9 + 1;
      if (v4 >= 1)
      {
        v10 = 0;
        v11 = v4;
        v12 = v9 * v16 / v17;
        v13 = v19;
        do
        {
          v14 = math_color::calculate_gray_step(*(__p + v13), v8, 8u, 1);
          fill_rect<unsigned char>(a2, v10 / v4, v12, (v7 + v10) / v4 - v10 / v4, v18 * v16 / v17 - v12, v14);
          v13 += 4;
          v10 += v7;
          --v11;
        }

        while (v11);
      }

      v19 += 4 * v4;
      v9 = v18;
    }

    while (v18 != v17);
  }

  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  return 1;
}

void sub_2578C6050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RasterizedBlocks::render_L010(_DWORD *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[2];
  v6 = a1[5];
  v5 = a1[6];
  v7 = a2[2];
  v16 = a2[1];
  v8 = v3 * v4;
  std::vector<int>::vector[abi:ne200100](&__p, v3 * v4);
  if (v3 >= 1)
  {
    v19 = 0;
    v9 = 0;
    v17 = v3;
    do
    {
      v18 = v9 + 1;
      if (v4 >= 1)
      {
        v10 = 0;
        v11 = v4;
        v12 = v9 * v16 / v17;
        v13 = v19;
        do
        {
          v14 = math_color::calculate_gray_step(*(__p + v13), v8, 0xAu, 1);
          fill_rect<unsigned short>(a2, v10 / v4, v12, (v7 + v10) / v4 - v10 / v4, v18 * v16 / v17 - v12, (v14 & 0x3FF) << 6);
          v13 += 4;
          v10 += v7;
          --v11;
        }

        while (v11);
      }

      v19 += 4 * v4;
      v9 = v18;
    }

    while (v18 != v17);
  }

  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  return 1;
}

void sub_2578C61D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *RasterizedBlocks::render_420<PixelFormatTraits<875704438u>>(uint64_t a1, void *a2, void *a3)
{
  if (a2[2] != 2 * a3[2])
  {
    RasterizedBlocks::render_420<PixelFormatTraits<875704438u>>();
  }

  if (a2[1] != 2 * a3[1])
  {
    RasterizedBlocks::render_420<PixelFormatTraits<875704438u>>();
  }

  return RasterizedBlocks::render_4xx<PixelFormatTraits<875704438u>>(a1, a2, a3);
}

void *RasterizedBlocks::render_420<PixelFormatTraits<875704422u>>(_DWORD *a1, void *a2, void *a3)
{
  if (a2[2] != 2 * a3[2])
  {
    RasterizedBlocks::render_420<PixelFormatTraits<875704438u>>();
  }

  if (a2[1] != 2 * a3[1])
  {
    RasterizedBlocks::render_420<PixelFormatTraits<875704438u>>();
  }

  return RasterizedBlocks::render_4xx<PixelFormatTraits<875704422u>>(a1, a2, a3);
}

void *RasterizedBlocks::render_420<PixelFormatTraits<2016686640u>>(uint64_t a1, void *a2, void *a3)
{
  if (a2[2] != 2 * a3[2])
  {
    RasterizedBlocks::render_420<PixelFormatTraits<875704438u>>();
  }

  if (a2[1] != 2 * a3[1])
  {
    RasterizedBlocks::render_420<PixelFormatTraits<875704438u>>();
  }

  return RasterizedBlocks::render_4xx<PixelFormatTraits<2016686640u>>(a1, a2, a3);
}

void *RasterizedBlocks::render_420<PixelFormatTraits<2019963440u>>(_DWORD *a1, void *a2, void *a3)
{
  if (a2[2] != 2 * a3[2])
  {
    RasterizedBlocks::render_420<PixelFormatTraits<875704438u>>();
  }

  if (a2[1] != 2 * a3[1])
  {
    RasterizedBlocks::render_420<PixelFormatTraits<875704438u>>();
  }

  return RasterizedBlocks::render_4xx<PixelFormatTraits<2019963440u>>(a1, a2, a3);
}

void *RasterizedBlocks::render_422<PixelFormatTraits<875704950u>>(uint64_t a1, void *a2, void *a3)
{
  if (a2[2] != 2 * a3[2])
  {
    RasterizedBlocks::render_422<PixelFormatTraits<875704950u>>();
  }

  if (a2[1] != a3[1])
  {
    RasterizedBlocks::render_422<PixelFormatTraits<875704950u>>();
  }

  return RasterizedBlocks::render_4xx<PixelFormatTraits<875704950u>>(a1, a2, a3);
}

void *RasterizedBlocks::render_422<PixelFormatTraits<875704934u>>(_DWORD *a1, void *a2, void *a3)
{
  if (a2[2] != 2 * a3[2])
  {
    RasterizedBlocks::render_422<PixelFormatTraits<875704950u>>();
  }

  if (a2[1] != a3[1])
  {
    RasterizedBlocks::render_422<PixelFormatTraits<875704950u>>();
  }

  return RasterizedBlocks::render_4xx<PixelFormatTraits<875704934u>>(a1, a2, a3);
}

void *RasterizedBlocks::render_422<PixelFormatTraits<2016686642u>>(uint64_t a1, void *a2, void *a3)
{
  if (a2[2] != 2 * a3[2])
  {
    RasterizedBlocks::render_422<PixelFormatTraits<875704950u>>();
  }

  if (a2[1] != a3[1])
  {
    RasterizedBlocks::render_422<PixelFormatTraits<875704950u>>();
  }

  return RasterizedBlocks::render_4xx<PixelFormatTraits<2016686642u>>(a1, a2, a3);
}

void *RasterizedBlocks::render_422<PixelFormatTraits<2019963442u>>(_DWORD *a1, void *a2, void *a3)
{
  if (a2[2] != 2 * a3[2])
  {
    RasterizedBlocks::render_422<PixelFormatTraits<875704950u>>();
  }

  if (a2[1] != a3[1])
  {
    RasterizedBlocks::render_422<PixelFormatTraits<875704950u>>();
  }

  return RasterizedBlocks::render_4xx<PixelFormatTraits<2019963442u>>(a1, a2, a3);
}

void *RasterizedBlocks::render_422<PixelFormatTraits<1937125938u>>(uint64_t a1, void *a2, void *a3)
{
  if (a2[2] != 2 * a3[2])
  {
    RasterizedBlocks::render_422<PixelFormatTraits<875704950u>>();
  }

  if (a2[1] != a3[1])
  {
    RasterizedBlocks::render_422<PixelFormatTraits<875704950u>>();
  }

  return RasterizedBlocks::render_4xx<PixelFormatTraits<1937125938u>>(a1, a2, a3);
}

void *RasterizedBlocks::render_444<PixelFormatTraits<875836534u>>(uint64_t a1, void *a2, void *a3)
{
  if (a2[2] != a3[2])
  {
    RasterizedBlocks::render_444<PixelFormatTraits<875836534u>>();
  }

  if (a2[1] != a3[1])
  {
    RasterizedBlocks::render_444<PixelFormatTraits<875836534u>>();
  }

  return RasterizedBlocks::render_4xx<PixelFormatTraits<875836534u>>(a1, a2, a3);
}

void *RasterizedBlocks::render_444<PixelFormatTraits<875836518u>>(_DWORD *a1, void *a2, void *a3)
{
  if (a2[2] != a3[2])
  {
    RasterizedBlocks::render_444<PixelFormatTraits<875836534u>>();
  }

  if (a2[1] != a3[1])
  {
    RasterizedBlocks::render_444<PixelFormatTraits<875836534u>>();
  }

  return RasterizedBlocks::render_4xx<PixelFormatTraits<875836518u>>(a1, a2, a3);
}

void *RasterizedBlocks::render_444<PixelFormatTraits<2016687156u>>(uint64_t a1, void *a2, void *a3)
{
  if (a2[2] != a3[2])
  {
    RasterizedBlocks::render_444<PixelFormatTraits<875836534u>>();
  }

  if (a2[1] != a3[1])
  {
    RasterizedBlocks::render_444<PixelFormatTraits<875836534u>>();
  }

  return RasterizedBlocks::render_4xx<PixelFormatTraits<2016687156u>>(a1, a2, a3);
}

void *RasterizedBlocks::render_444<PixelFormatTraits<2019963956u>>(_DWORD *a1, void *a2, void *a3)
{
  if (a2[2] != a3[2])
  {
    RasterizedBlocks::render_444<PixelFormatTraits<875836534u>>();
  }

  if (a2[1] != a3[1])
  {
    RasterizedBlocks::render_444<PixelFormatTraits<875836534u>>();
  }

  return RasterizedBlocks::render_4xx<PixelFormatTraits<2019963956u>>(a1, a2, a3);
}

void *RasterizedBlocks::render_444<PixelFormatTraits<1937126452u>>(uint64_t a1, void *a2, void *a3)
{
  if (a2[2] != a3[2])
  {
    RasterizedBlocks::render_444<PixelFormatTraits<875836534u>>();
  }

  if (a2[1] != a3[1])
  {
    RasterizedBlocks::render_444<PixelFormatTraits<875836534u>>();
  }

  return RasterizedBlocks::render_4xx<PixelFormatTraits<1937126452u>>(a1, a2, a3);
}

void anonymous namespace::modulo_multiply_permute(int a1, int a2, uint64_t a3, int a4)
{
  std::vector<int>::vector[abi:ne200100](__p, a4);
  v8 = __p[0];
  if (a4 < 1)
  {
    if (!__p[0])
    {
      return;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
    do
    {
      do
      {
        v11 = (((a1 % a4 + v9 * a2) % a4 + a4) % a4 + v10++) % a4;
      }

      while (v8[v11] == 1);
      v8[v11] = 1;
      *(a3 + 4 * v9++) = v11;
      --v10;
    }

    while (v9 != (a4 & 0x7FFFFFFF));
  }

  __p[1] = v8;
  operator delete(v8);
}

void *fill_rect<unsigned char>(void *result, size_t a2, unint64_t a3, size_t a4, unint64_t a5, int __c)
{
  v6 = result[2];
  if (v6 > a2)
  {
    v7 = result[1];
    if (v7 > a3)
    {
      v8 = a5 + a3 <= v7 ? a5 : v7 - a3;
      if (v8 + a3 > a3)
      {
        v11 = result[3];
        if (a4 + a2 <= v6)
        {
          v12 = a4;
        }

        else
        {
          v12 = v6 - a2;
        }

        v13 = v12 + a2;
        v14 = (*result + v11 * a3 + a2);
        do
        {
          if (v13 > a2)
          {
            result = memset(v14, __c, v12);
          }

          v14 += v11;
          --v8;
        }

        while (v8);
      }
    }
  }

  return result;
}

void *std::vector<int>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_2578C6A5C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<int>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::allocator<int>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<Area_renderer>::__throw_length_error[abi:ne200100]();
}

void std::allocator<int>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *fill_rect<unsigned short>(void *result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, __int16 a6)
{
  v6 = result[2];
  v7 = v6 - a2;
  if (v6 > a2)
  {
    v8 = result[1];
    if (v8 > a3)
    {
      v9 = a5 + a3 <= v8 ? a5 : v8 - a3;
      v10 = v9 + a3;
      if (v10 > a3)
      {
        v11 = result[3];
        if (a4 + a2 <= v6)
        {
          v7 = a4;
        }

        v12 = v7 + a2;
        v13 = vdupq_n_s64(v7 - 1);
        v14 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
        v15 = v11 * a3 + 2 * a2 + *result + 8;
        do
        {
          if (v12 > a2)
          {
            v16 = 0;
            v17 = v15;
            do
            {
              v18 = vdupq_n_s64(v16);
              v19 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(v18, xmmword_25792BAF0)));
              if (vuzp1_s8(vuzp1_s16(v19, *v13.i8), *v13.i8).u8[0])
              {
                *(v17 - 4) = a6;
              }

              if (vuzp1_s8(vuzp1_s16(v19, *&v13), *&v13).i8[1])
              {
                *(v17 - 3) = a6;
              }

              if (vuzp1_s8(vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, vorrq_s8(v18, xmmword_25792BAE0)))), *&v13).i8[2])
              {
                *(v17 - 2) = a6;
                *(v17 - 1) = a6;
              }

              v20 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(v18, xmmword_25792BB10)));
              if (vuzp1_s8(*&v13, vuzp1_s16(v20, *&v13)).i32[1])
              {
                *v17 = a6;
              }

              if (vuzp1_s8(*&v13, vuzp1_s16(v20, *&v13)).i8[5])
              {
                v17[1] = a6;
              }

              if (vuzp1_s8(*&v13, vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, vorrq_s8(v18, xmmword_25792BB00))))).i8[6])
              {
                v17[2] = a6;
                v17[3] = a6;
              }

              v16 += 8;
              v17 += 8;
            }

            while (v14 != v16);
          }

          ++a3;
          v15 += v11;
        }

        while (a3 != v10);
      }
    }
  }

  return result;
}

void *RasterizedBlocks::render_4xx<PixelFormatTraits<875704438u>>(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 12);
  v4 = *(a1 + 8);
  v6 = *(a1 + 20);
  v5 = *(a1 + 24);
  v22 = *(a1 + 32);
  v7 = a2[2];
  v18 = a2[1];
  v9 = v3 * v4;
  std::vector<int>::vector[abi:ne200100](&__p, v3 * v4);
  if (v3 >= 1)
  {
    v21 = 0;
    v10 = 0;
    v19 = v3;
    do
    {
      v20 = v10 + 1;
      if (v4 >= 1)
      {
        v11 = 0;
        v12 = v4;
        v13 = v10 * v18 / v19;
        v14 = v21;
        do
        {
          v15 = math_color::calculate_gray_step(*(__p + v14), v9, 8u, v22);
          fill_rect<unsigned char>(a2, v11 / v4, v13, (v7 + v11) / v4 - v11 / v4, v20 * v18 / v19 - v13, v15);
          v14 += 4;
          v11 += v7;
          --v12;
        }

        while (v12);
      }

      v21 += 4 * v4;
      v10 = v20;
    }

    while (v20 != v19);
  }

  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  return fill_rect<unsigned short>(a3, 0, 0, a3[2], a3[1], 32896);
}

void sub_2578C6E08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *fill_rect<unsigned int>(void *result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, int a6)
{
  v6 = result[2];
  if (v6 > a2)
  {
    v7 = result[1];
    if (v7 > a3)
    {
      v8 = a5 + a3 <= v7 ? a5 : v7 - a3;
      v9 = v8 + a3;
      if (v9 > a3)
      {
        v10 = result[3];
        if (a4 + a2 <= v6)
        {
          v11 = a4;
        }

        else
        {
          v11 = v6 - a2;
        }

        v12 = v11 + a2;
        v13 = (v11 + 3) & 0xFFFFFFFFFFFFFFFCLL;
        v14 = vdupq_n_s64(v11 - 1);
        v15 = v10 * a3 + 4 * a2 + *result + 8;
        do
        {
          if (v12 > a2)
          {
            v16 = 0;
            v17 = v15;
            do
            {
              v18 = vdupq_n_s64(v16);
              v19 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v18, xmmword_25792BAF0)));
              if (vuzp1_s16(v19, *v14.i8).u8[0])
              {
                *(v17 - 2) = a6;
              }

              if (vuzp1_s16(v19, *&v14).i8[2])
              {
                *(v17 - 1) = a6;
              }

              if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v18, xmmword_25792BAE0)))).i32[1])
              {
                *v17 = a6;
                v17[1] = a6;
              }

              v16 += 4;
              v17 += 4;
            }

            while (v13 != v16);
          }

          ++a3;
          v15 += v10;
        }

        while (a3 != v9);
      }
    }
  }

  return result;
}

void *RasterizedBlocks::render_4xx<PixelFormatTraits<875704422u>>(_DWORD *a1, void *a2, void *a3)
{
  v4 = a1[3];
  v5 = a1[2];
  v7 = a1[5];
  v6 = a1[6];
  v8 = a2[2];
  v17 = a2[1];
  std::vector<int>::vector[abi:ne200100](&__p, v4 * v5);
  if (v4 >= 1)
  {
    v19 = 0;
    v9 = 0;
    do
    {
      v18 = v9 + 1;
      if (v5 >= 1)
      {
        v10 = 0;
        v11 = v5;
        v12 = v9 * v17 / v4;
        v13 = v19;
        do
        {
          v14 = math_color::calculate_gray_step(*(__p + v13), v4 * v5, 8u, 1);
          fill_rect<unsigned char>(a2, v10 / v5, v12, (v8 + v10) / v5 - v10 / v5, v18 * v17 / v4 - v12, v14);
          v13 += 4;
          v10 += v8;
          --v11;
        }

        while (v11);
      }

      v19 += 4 * v5;
      v9 = v18;
    }

    while (v18 != v4);
  }

  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  return fill_rect<unsigned short>(a3, 0, 0, a3[2], a3[1], 32896);
}

void sub_2578C70A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *RasterizedBlocks::render_4xx<PixelFormatTraits<2016686640u>>(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 12);
  v4 = *(a1 + 8);
  v6 = *(a1 + 20);
  v5 = *(a1 + 24);
  v22 = *(a1 + 32);
  v7 = a2[2];
  v18 = a2[1];
  v9 = v3 * v4;
  std::vector<int>::vector[abi:ne200100](&__p, v3 * v4);
  if (v3 >= 1)
  {
    v21 = 0;
    v10 = 0;
    v19 = v3;
    do
    {
      v20 = v10 + 1;
      if (v4 >= 1)
      {
        v11 = 0;
        v12 = v4;
        v13 = v10 * v18 / v19;
        v14 = v21;
        do
        {
          v15 = math_color::calculate_gray_step(*(__p + v14), v9, 0xAu, v22);
          fill_rect<unsigned short>(a2, v11 / v4, v13, (v7 + v11) / v4 - v11 / v4, v20 * v18 / v19 - v13, (v15 & 0x3FF) << 6);
          v14 += 4;
          v11 += v7;
          --v12;
        }

        while (v12);
      }

      v21 += 4 * v4;
      v10 = v20;
    }

    while (v20 != v19);
  }

  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  return fill_rect<unsigned int>(a3, 0, 0, a3[2], a3[1], -2147450880);
}

void sub_2578C7244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *RasterizedBlocks::render_4xx<PixelFormatTraits<2019963440u>>(_DWORD *a1, void *a2, void *a3)
{
  v4 = a1[3];
  v5 = a1[2];
  v7 = a1[5];
  v6 = a1[6];
  v8 = a2[2];
  v17 = a2[1];
  std::vector<int>::vector[abi:ne200100](&__p, v4 * v5);
  if (v4 >= 1)
  {
    v19 = 0;
    v9 = 0;
    do
    {
      v18 = v9 + 1;
      if (v5 >= 1)
      {
        v10 = 0;
        v11 = v5;
        v12 = v9 * v17 / v4;
        v13 = v19;
        do
        {
          v14 = math_color::calculate_gray_step(*(__p + v13), v4 * v5, 0xAu, 1);
          fill_rect<unsigned short>(a2, v10 / v5, v12, (v8 + v10) / v5 - v10 / v5, v18 * v17 / v4 - v12, (v14 & 0x3FF) << 6);
          v13 += 4;
          v10 += v8;
          --v11;
        }

        while (v11);
      }

      v19 += 4 * v5;
      v9 = v18;
    }

    while (v18 != v4);
  }

  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  return fill_rect<unsigned int>(a3, 0, 0, a3[2], a3[1], -2147450880);
}

void sub_2578C73DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *RasterizedBlocks::render_4xx<PixelFormatTraits<875704950u>>(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 12);
  v4 = *(a1 + 8);
  v6 = *(a1 + 20);
  v5 = *(a1 + 24);
  v22 = *(a1 + 32);
  v7 = a2[2];
  v18 = a2[1];
  v9 = v3 * v4;
  std::vector<int>::vector[abi:ne200100](&__p, v3 * v4);
  if (v3 >= 1)
  {
    v21 = 0;
    v10 = 0;
    v19 = v3;
    do
    {
      v20 = v10 + 1;
      if (v4 >= 1)
      {
        v11 = 0;
        v12 = v4;
        v13 = v10 * v18 / v19;
        v14 = v21;
        do
        {
          v15 = math_color::calculate_gray_step(*(__p + v14), v9, 8u, v22);
          fill_rect<unsigned char>(a2, v11 / v4, v13, (v7 + v11) / v4 - v11 / v4, v20 * v18 / v19 - v13, v15);
          v14 += 4;
          v11 += v7;
          --v12;
        }

        while (v12);
      }

      v21 += 4 * v4;
      v10 = v20;
    }

    while (v20 != v19);
  }

  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  return fill_rect<unsigned short>(a3, 0, 0, a3[2], a3[1], 32896);
}

void sub_2578C7578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *RasterizedBlocks::render_4xx<PixelFormatTraits<875704934u>>(_DWORD *a1, void *a2, void *a3)
{
  v4 = a1[3];
  v5 = a1[2];
  v7 = a1[5];
  v6 = a1[6];
  v8 = a2[2];
  v17 = a2[1];
  std::vector<int>::vector[abi:ne200100](&__p, v4 * v5);
  if (v4 >= 1)
  {
    v19 = 0;
    v9 = 0;
    do
    {
      v18 = v9 + 1;
      if (v5 >= 1)
      {
        v10 = 0;
        v11 = v5;
        v12 = v9 * v17 / v4;
        v13 = v19;
        do
        {
          v14 = math_color::calculate_gray_step(*(__p + v13), v4 * v5, 8u, 1);
          fill_rect<unsigned char>(a2, v10 / v5, v12, (v8 + v10) / v5 - v10 / v5, v18 * v17 / v4 - v12, v14);
          v13 += 4;
          v10 += v8;
          --v11;
        }

        while (v11);
      }

      v19 += 4 * v5;
      v9 = v18;
    }

    while (v18 != v4);
  }

  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  return fill_rect<unsigned short>(a3, 0, 0, a3[2], a3[1], 32896);
}

void sub_2578C7710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *RasterizedBlocks::render_4xx<PixelFormatTraits<2016686642u>>(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 12);
  v4 = *(a1 + 8);
  v6 = *(a1 + 20);
  v5 = *(a1 + 24);
  v22 = *(a1 + 32);
  v7 = a2[2];
  v18 = a2[1];
  v9 = v3 * v4;
  std::vector<int>::vector[abi:ne200100](&__p, v3 * v4);
  if (v3 >= 1)
  {
    v21 = 0;
    v10 = 0;
    v19 = v3;
    do
    {
      v20 = v10 + 1;
      if (v4 >= 1)
      {
        v11 = 0;
        v12 = v4;
        v13 = v10 * v18 / v19;
        v14 = v21;
        do
        {
          v15 = math_color::calculate_gray_step(*(__p + v14), v9, 0xAu, v22);
          fill_rect<unsigned short>(a2, v11 / v4, v13, (v7 + v11) / v4 - v11 / v4, v20 * v18 / v19 - v13, (v15 & 0x3FF) << 6);
          v14 += 4;
          v11 += v7;
          --v12;
        }

        while (v12);
      }

      v21 += 4 * v4;
      v10 = v20;
    }

    while (v20 != v19);
  }

  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  return fill_rect<unsigned int>(a3, 0, 0, a3[2], a3[1], -2147450880);
}

void sub_2578C78AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *RasterizedBlocks::render_4xx<PixelFormatTraits<2019963442u>>(_DWORD *a1, void *a2, void *a3)
{
  v4 = a1[3];
  v5 = a1[2];
  v7 = a1[5];
  v6 = a1[6];
  v8 = a2[2];
  v17 = a2[1];
  std::vector<int>::vector[abi:ne200100](&__p, v4 * v5);
  if (v4 >= 1)
  {
    v19 = 0;
    v9 = 0;
    do
    {
      v18 = v9 + 1;
      if (v5 >= 1)
      {
        v10 = 0;
        v11 = v5;
        v12 = v9 * v17 / v4;
        v13 = v19;
        do
        {
          v14 = math_color::calculate_gray_step(*(__p + v13), v4 * v5, 0xAu, 1);
          fill_rect<unsigned short>(a2, v10 / v5, v12, (v8 + v10) / v5 - v10 / v5, v18 * v17 / v4 - v12, (v14 & 0x3FF) << 6);
          v13 += 4;
          v10 += v8;
          --v11;
        }

        while (v11);
      }

      v19 += 4 * v5;
      v9 = v18;
    }

    while (v18 != v4);
  }

  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  return fill_rect<unsigned int>(a3, 0, 0, a3[2], a3[1], -2147450880);
}

void sub_2578C7A44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *RasterizedBlocks::render_4xx<PixelFormatTraits<1937125938u>>(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 12);
  v4 = *(a1 + 8);
  v6 = *(a1 + 20);
  v5 = *(a1 + 24);
  v22 = *(a1 + 32);
  v7 = a2[2];
  v18 = a2[1];
  v9 = v3 * v4;
  std::vector<int>::vector[abi:ne200100](&__p, v3 * v4);
  if (v3 >= 1)
  {
    v21 = 0;
    v10 = 0;
    v19 = v3;
    do
    {
      v20 = v10 + 1;
      if (v4 >= 1)
      {
        v11 = 0;
        v12 = v4;
        v13 = v10 * v18 / v19;
        v14 = v21;
        do
        {
          v15 = math_color::calculate_gray_step(*(__p + v14), v9, 0x10u, v22);
          fill_rect<unsigned short>(a2, v11 / v4, v13, (v7 + v11) / v4 - v11 / v4, v20 * v18 / v19 - v13, v15);
          v14 += 4;
          v11 += v7;
          --v12;
        }

        while (v12);
      }

      v21 += 4 * v4;
      v10 = v20;
    }

    while (v20 != v19);
  }

  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  return fill_rect<unsigned int>(a3, 0, 0, a3[2], a3[1], -2147450880);
}

void sub_2578C7BE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *RasterizedBlocks::render_4xx<PixelFormatTraits<875836534u>>(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 12);
  v4 = *(a1 + 8);
  v6 = *(a1 + 20);
  v5 = *(a1 + 24);
  v22 = *(a1 + 32);
  v7 = a2[2];
  v18 = a2[1];
  v9 = v3 * v4;
  std::vector<int>::vector[abi:ne200100](&__p, v3 * v4);
  if (v3 >= 1)
  {
    v21 = 0;
    v10 = 0;
    v19 = v3;
    do
    {
      v20 = v10 + 1;
      if (v4 >= 1)
      {
        v11 = 0;
        v12 = v4;
        v13 = v10 * v18 / v19;
        v14 = v21;
        do
        {
          v15 = math_color::calculate_gray_step(*(__p + v14), v9, 8u, v22);
          fill_rect<unsigned char>(a2, v11 / v4, v13, (v7 + v11) / v4 - v11 / v4, v20 * v18 / v19 - v13, v15);
          v14 += 4;
          v11 += v7;
          --v12;
        }

        while (v12);
      }

      v21 += 4 * v4;
      v10 = v20;
    }

    while (v20 != v19);
  }

  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  return fill_rect<unsigned short>(a3, 0, 0, a3[2], a3[1], 32896);
}

void sub_2578C7D7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *RasterizedBlocks::render_4xx<PixelFormatTraits<875836518u>>(_DWORD *a1, void *a2, void *a3)
{
  v4 = a1[3];
  v5 = a1[2];
  v7 = a1[5];
  v6 = a1[6];
  v8 = a2[2];
  v17 = a2[1];
  std::vector<int>::vector[abi:ne200100](&__p, v4 * v5);
  if (v4 >= 1)
  {
    v19 = 0;
    v9 = 0;
    do
    {
      v18 = v9 + 1;
      if (v5 >= 1)
      {
        v10 = 0;
        v11 = v5;
        v12 = v9 * v17 / v4;
        v13 = v19;
        do
        {
          v14 = math_color::calculate_gray_step(*(__p + v13), v4 * v5, 8u, 1);
          fill_rect<unsigned char>(a2, v10 / v5, v12, (v8 + v10) / v5 - v10 / v5, v18 * v17 / v4 - v12, v14);
          v13 += 4;
          v10 += v8;
          --v11;
        }

        while (v11);
      }

      v19 += 4 * v5;
      v9 = v18;
    }

    while (v18 != v4);
  }

  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  return fill_rect<unsigned short>(a3, 0, 0, a3[2], a3[1], 32896);
}

void sub_2578C7F14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *RasterizedBlocks::render_4xx<PixelFormatTraits<2016687156u>>(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 12);
  v4 = *(a1 + 8);
  v6 = *(a1 + 20);
  v5 = *(a1 + 24);
  v22 = *(a1 + 32);
  v7 = a2[2];
  v18 = a2[1];
  v9 = v3 * v4;
  std::vector<int>::vector[abi:ne200100](&__p, v3 * v4);
  if (v3 >= 1)
  {
    v21 = 0;
    v10 = 0;
    v19 = v3;
    do
    {
      v20 = v10 + 1;
      if (v4 >= 1)
      {
        v11 = 0;
        v12 = v4;
        v13 = v10 * v18 / v19;
        v14 = v21;
        do
        {
          v15 = math_color::calculate_gray_step(*(__p + v14), v9, 0xAu, v22);
          fill_rect<unsigned short>(a2, v11 / v4, v13, (v7 + v11) / v4 - v11 / v4, v20 * v18 / v19 - v13, (v15 & 0x3FF) << 6);
          v14 += 4;
          v11 += v7;
          --v12;
        }

        while (v12);
      }

      v21 += 4 * v4;
      v10 = v20;
    }

    while (v20 != v19);
  }

  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  return fill_rect<unsigned int>(a3, 0, 0, a3[2], a3[1], -2147450880);
}

void sub_2578C80B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *RasterizedBlocks::render_4xx<PixelFormatTraits<2019963956u>>(_DWORD *a1, void *a2, void *a3)
{
  v4 = a1[3];
  v5 = a1[2];
  v7 = a1[5];
  v6 = a1[6];
  v8 = a2[2];
  v17 = a2[1];
  std::vector<int>::vector[abi:ne200100](&__p, v4 * v5);
  if (v4 >= 1)
  {
    v19 = 0;
    v9 = 0;
    do
    {
      v18 = v9 + 1;
      if (v5 >= 1)
      {
        v10 = 0;
        v11 = v5;
        v12 = v9 * v17 / v4;
        v13 = v19;
        do
        {
          v14 = math_color::calculate_gray_step(*(__p + v13), v4 * v5, 0xAu, 1);
          fill_rect<unsigned short>(a2, v10 / v5, v12, (v8 + v10) / v5 - v10 / v5, v18 * v17 / v4 - v12, (v14 & 0x3FF) << 6);
          v13 += 4;
          v10 += v8;
          --v11;
        }

        while (v11);
      }

      v19 += 4 * v5;
      v9 = v18;
    }

    while (v18 != v4);
  }

  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  return fill_rect<unsigned int>(a3, 0, 0, a3[2], a3[1], -2147450880);
}

void sub_2578C8248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *RasterizedBlocks::render_4xx<PixelFormatTraits<1937126452u>>(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 12);
  v4 = *(a1 + 8);
  v6 = *(a1 + 20);
  v5 = *(a1 + 24);
  v22 = *(a1 + 32);
  v7 = a2[2];
  v18 = a2[1];
  v9 = v3 * v4;
  std::vector<int>::vector[abi:ne200100](&__p, v3 * v4);
  if (v3 >= 1)
  {
    v21 = 0;
    v10 = 0;
    v19 = v3;
    do
    {
      v20 = v10 + 1;
      if (v4 >= 1)
      {
        v11 = 0;
        v12 = v4;
        v13 = v10 * v18 / v19;
        v14 = v21;
        do
        {
          v15 = math_color::calculate_gray_step(*(__p + v14), v9, 0x10u, v22);
          fill_rect<unsigned short>(a2, v11 / v4, v13, (v7 + v11) / v4 - v11 / v4, v20 * v18 / v19 - v13, v15);
          v14 += 4;
          v11 += v7;
          --v12;
        }

        while (v12);
      }

      v21 += 4 * v4;
      v10 = v20;
    }

    while (v20 != v19);
  }

  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  return fill_rect<unsigned int>(a3, 0, 0, a3[2], a3[1], -2147450880);
}

void sub_2578C83E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void BarsStepsRamps::BarsStepsRamps(BarsStepsRamps *this, double a2, double a3)
{
  v21[1] = *MEMORY[0x277D85DE8];
  *this = &unk_2868CE308;
  ColorBars::ColorBars((this + 8), a2, a3, 1.0);
  ColorBars::ColorBars((this + 40), a2, a3, 0.75);
  RasterizedBlocks::RasterizedBlocks((this + 72), 32, 1, 0, 1, 0);
  *(this + 9) = &unk_2868CE3D8;
  v18 = xmmword_25792BB38;
  v19 = unk_25792BB48;
  v20 = xmmword_25792BB58;
  v16 = 0;
  v17 = 0;
  __p = 0;
  std::vector<math_color::rgb>::__init_with_size[abi:ne200100]<math_color::rgb const*,math_color::rgb const*>(&__p, &v18, v21, 2uLL);
  Ramp::Ramp(this + 112, &__p, 0, a2, a3);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  v18 = xmmword_25792BB68;
  v19 = unk_25792BB78;
  v20 = xmmword_25792BB88;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  std::vector<math_color::rgb>::__init_with_size[abi:ne200100]<math_color::rgb const*,math_color::rgb const*>(&v12, &v18, v21, 2uLL);
  Ramp::Ramp(this + 232, &v12, 0, a2, a3);
  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  v18 = xmmword_25792BB98;
  v19 = unk_25792BBA8;
  v20 = xmmword_25792BBB8;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  std::vector<math_color::rgb>::__init_with_size[abi:ne200100]<math_color::rgb const*,math_color::rgb const*>(&v9, &v18, v21, 2uLL);
  Ramp::Ramp(this + 352, &v9, 0, a2, a3);
  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  v18 = xmmword_25792BBC8;
  v19 = unk_25792BBD8;
  v20 = xmmword_25792BBE8;
  v7 = 0;
  v8 = 0;
  v6 = 0;
  std::vector<math_color::rgb>::__init_with_size[abi:ne200100]<math_color::rgb const*,math_color::rgb const*>(&v6, &v18, v21, 2uLL);
  Ramp::Ramp(this + 472, &v6, 0, a2, a3);
  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }
}

void sub_2578C865C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  Ramp::~Ramp((v16 + 352));
  Ramp::~Ramp((v16 + 232));
  Ramp::~Ramp((v16 + 112));
  _Unwind_Resume(a1);
}

void sub_2578C86D8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x2578C86D0);
}

void Ramp::~Ramp(Ramp *this)
{
  *this = &unk_2868CE8B8;
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    *(this + 2) = v4;
    operator delete(v4);
  }
}

{
  *this = &unk_2868CE8B8;
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    *(this + 2) = v4;
    operator delete(v4);
  }

  JUMPOUT(0x259C68350);
}

void BarsStepsRamps::~BarsStepsRamps(BarsStepsRamps *this)
{
  BarsStepsRamps::~BarsStepsRamps(this);

  JUMPOUT(0x259C68350);
}

{
  *this = &unk_2868CE308;
  *(this + 59) = &unk_2868CE8B8;
  v2 = *(this + 66);
  if (v2)
  {
    *(this + 67) = v2;
    operator delete(v2);
  }

  v3 = *(this + 63);
  if (v3)
  {
    *(this + 64) = v3;
    operator delete(v3);
  }

  v4 = *(this + 60);
  if (v4)
  {
    *(this + 61) = v4;
    operator delete(v4);
  }

  *(this + 44) = &unk_2868CE8B8;
  v5 = *(this + 51);
  if (v5)
  {
    *(this + 52) = v5;
    operator delete(v5);
  }

  v6 = *(this + 48);
  if (v6)
  {
    *(this + 49) = v6;
    operator delete(v6);
  }

  v7 = *(this + 45);
  if (v7)
  {
    *(this + 46) = v7;
    operator delete(v7);
  }

  *(this + 29) = &unk_2868CE8B8;
  v8 = *(this + 36);
  if (v8)
  {
    *(this + 37) = v8;
    operator delete(v8);
  }

  v9 = *(this + 33);
  if (v9)
  {
    *(this + 34) = v9;
    operator delete(v9);
  }

  v10 = *(this + 30);
  if (v10)
  {
    *(this + 31) = v10;
    operator delete(v10);
  }

  *(this + 14) = &unk_2868CE8B8;
  v11 = *(this + 21);
  if (v11)
  {
    *(this + 22) = v11;
    operator delete(v11);
  }

  v12 = *(this + 18);
  if (v12)
  {
    *(this + 19) = v12;
    operator delete(v12);
  }

  v13 = *(this + 15);
  if (v13)
  {
    *(this + 16) = v13;
    operator delete(v13);
  }
}

uint64_t std::vector<math_color::rgb>::__init_with_size[abi:ne200100]<math_color::rgb const*,math_color::rgb const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<math_color::rgb>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2578C8D90(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BarsStepsRamps::render_4xx<PixelFormatTraits<875704438u>>(uint64_t a1, void *a2, void *a3, void (*a4)(uint64_t, _OWORD *, uint64_t *), uint64_t a5, int a6, int a7)
{
  if (a2[2] != a3[2] * a6)
  {
    BarsStepsRamps::render_4xx<PixelFormatTraits<875704438u>>();
  }

  if (a2[1] != a3[1] * a7)
  {
    BarsStepsRamps::render_4xx<PixelFormatTraits<875704438u>>();
  }

  v15 = a5 >> 1;
  v16 = a1 + (a5 >> 1);
  if (a5)
  {
    (*(*(v16 + 8) + a4))(v16 + 8, v34, v35, v14);
    v19 = (a1 + v15);
    (*(v19[5] + a4))();
    (*(v19[9] + a4))();
    (*(v19[14] + a4))();
    v20 = v19[29];
    v19 += 29;
    (*(v20 + a4))(v19, v26, v27);
    (*(v19[15] + a4))(v19 + 15, v24, v25);
    v18 = v19 + 30;
    a4 = *(v19[30] + a4);
  }

  else
  {
    (a4)(v16 + 8, v34, v35, v14.n128_f64[0]);
    v17 = a1 + v15;
    a4(v17 + 40, v32, &v33);
    a4(v17 + 72, v30, &v31);
    a4(v17 + 112, v28, &v29);
    a4(v17 + 232, v26, v27);
    a4(v17 + 352, v24, v25);
    v18 = (v17 + 472);
  }

  return (a4)(v18, v22, &v23);
}

double anonymous namespace::subPatternBuffers<PixelFormatTraits<875704438u>>@<D0>(void *a1@<X0>, void *a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, _OWORD *a6@<X8>)
{
  v11 = a2[2];
  v14 = v13;
  v20 = 0u;
  v21 = 0u;
  makeCroppedImageBufferView<unsigned char>(a2, 0, v12, v11, v13, &v20);
  v18 = 0u;
  v19 = 0u;
  makeCroppedImageBufferView<unsigned char>(a1, 0, v12 * a5, v11 * a4, v14 * a5, &v18);
  v15 = v19;
  *a6 = v18;
  a6[1] = v15;
  result = *&v20;
  v17 = v21;
  a6[2] = v20;
  a6[3] = v17;
  return result;
}

unint64_t anonymous namespace::subPatternTopHeight(uint64_t a1, int a2)
{
  v2 = (*(a1 + 8) * 5.0 / 24.0 + 0.5);
  v3 = (v2 / 5) + 0.5;
  v4 = v3 >> 1;
  v5 = 2 * v3;
  v6 = v2 - 4 * v4;
  v7 = v6 + v4 + v4;
  if (a2 != 5)
  {
    v7 += v4;
  }

  if (a2 != 3)
  {
    v6 += v3 >> 1;
  }

  if (a2 > 4)
  {
    v6 = v7;
  }

  if (a2 == 1)
  {
    v5 = v3;
  }

  if (a2)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  if (a2 <= 2)
  {
    return v8;
  }

  else
  {
    return v6;
  }
}

void sub_2578C9820(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_2578C9A88(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_2578CA638(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2578CC858(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

double math_color::calculate_color_bar(math_color *this, double a2)
{
  if (((7 - this) & 2) != 0)
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  return v2 * a2;
}

uint64_t math_color::calculate_color_bar(math_color *this, unsigned int a2, double a3, double a4, double a5, char a6)
{
  if (((7 - this) & 4) != 0)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.0;
  }

  if (((7 - this) & 2) != 0)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  if ((7 - this))
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = v6 * a3;
  v10 = v7 * a3;
  v11 = v8 * a3;
  v19 = 0.5 / (1.0 - a4);
  v12 = (1.0 - a4 - a5) * v9 + a4 * (v7 * a3) + a5 * (v8 * a3);
  __asm { FMOV            V1.2D, #-2.0 }

  v20[0] = a6;
  v21 = ~(-1 << a2);
  v22 = vshl_u32(0x100000001, vadd_s32(vdup_n_s32(a2), -8));
  return math_color::YCC_coder::YPbPr_to_YCbCr(v20, v12, 0.5 / (1.0 - a5) * (v11 - v12), v19 * (v10 - v12));
}

uint64_t math_color::calculate_gray_step(math_color *this, int a2, unsigned int a3, char a4)
{
  if ((this & 0x80000000) != 0 || this >= a2)
  {
    math_color::calculate_gray_step();
  }

  v5[0] = a4;
  v6 = ~(-1 << a3);
  v7 = vshl_u32(0x100000001, vadd_s32(vdup_n_s32(a3), -8));
  return math_color::YCC_coder::YPbPr_to_YCbCr(v5, this / (a2 - 1), 0.0, 0.0);
}

uint64_t math_color::YCC_coder::YPbPr_to_YCbCr(math_color::YCC_coder *this, double a2, double a3, double a4)
{
  v6 = *(this + 1);
  if (*this == 1)
  {
    v7 = a2 * v6 + 1.0e-12;
  }

  else
  {
    v7 = (a2 * 219.0 + 16.0) * *(this + 2);
  }

  v8 = round(v7);
  if (v6 >= v8)
  {
    v6 = v8;
  }

  if (v8 >= 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  v10 = ITU_T_H273::Video_coder::encode_chroma(this, a3);
  ITU_T_H273::Video_coder::encode_chroma(this, a4);
  return v9 | (v10 << 32);
}

uint64_t ITU_T_H273::Video_coder::encode_chroma(ITU_T_H273::Video_coder *this, double a2)
{
  v2 = *(this + 1);
  if (*this == 1)
  {
    v3 = *(this + 3) + a2 * v2 + 1.0e-12;
  }

  else
  {
    v3 = (a2 * 224.0 + 128.0) * *(this + 2);
  }

  v4 = round(v3);
  if (v2 >= v4)
  {
    v2 = v4;
  }

  if (v4 >= 0)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t BT2111::calculate_Rec709_to_linear_2020(BT2111 *this, double a2, double a3, double a4)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a2 >= 0.0812428583)
  {
    v6 = pow((a2 + 0.0992968268) / 1.09929683, 2.22222222);
  }

  else
  {
    v6 = a2 / 4.5;
  }

  if (a3 >= 0.0812428583)
  {
    v7 = pow((a3 + 0.0992968268) / 1.09929683, 2.22222222);
  }

  else
  {
    v7 = a3 / 4.5;
  }

  if (a4 >= 0.0812428583)
  {
    v8 = pow((a4 + 0.0992968268) / 1.09929683, 2.22222222);
  }

  else
  {
    v8 = a4 / 4.5;
  }

  math_color::calculate_srcRGB_to_dstRGB_matrix(math_color::primaries_709, math_color::primaries_2020, v11[2]);
  v11[1][0] = v6;
  v11[1][1] = v7;
  v11[1][2] = v8;
  return math_color::apply_srcRGB_to_dstRGB_matrix(v11[2], v11[1], v11, v9);
}

double BT2111::calculate_rec2111_HLG_rec709_bar(BT2111 *this, double a2, double a3, double a4)
{
  BT2111::calculate_Rec709_to_linear_2020(this, a2, a3, a4);
  v5 = v4;
  v7 = v6 / 3.77411815;
  v9 = v8 / 3.77411815;
  if (v7 <= 0.0833333333)
  {
    v10 = sqrt(v7 * 3.0);
  }

  else
  {
    v10 = log(v7 * 12.0 + -0.284668909) * 0.178832773 + 0.559910728;
  }

  v11 = v5 / 3.77411815;
  if (v9 > 0.0833333333)
  {
    log(v9 * 12.0 + -0.284668909);
  }

  if (v11 > 0.0833333333)
  {
    log(v11 * 12.0 + -0.284668909);
  }

  return v10;
}

double BT2111::calculate_rec2111_PQ_rec709_bar(BT2111 *this, double a2, double a3, double a4)
{
  BT2111::calculate_Rec709_to_linear_2020(this, a2, a3, a4);
  v6 = v5 / 0.00492241913;
  v13 = v7 / 0.00492241913;
  v8 = pow(v4 / 0.00492241913 / 10000.0, 0.159301758);
  v9 = pow((v8 * 18.8515625 + 0.8359375) / (v8 * 18.6875 + 1.0), 78.84375);
  v10 = pow(v6 / 10000.0, 0.159301758);
  pow((v10 * 18.8515625 + 0.8359375) / (v10 * 18.6875 + 1.0), 78.84375);
  v11 = pow(v13 / 10000.0, 0.159301758);
  pow((v11 * 18.8515625 + 0.8359375) / (v11 * 18.6875 + 1.0), 78.84375);
  return v9;
}

void BT_2111::calculated_values(int a1@<W0>, char a2@<W1>, void *a3@<X8>)
{
  v86 = *MEMORY[0x277D85DE8];
  *v80 = xmmword_25792BDB0;
  *&v80[12] = *(&xmmword_25792BDB0 + 12);
  v77 = 0;
  v78 = 0;
  if (a1)
  {
    v6 = BT2111::calculate_rec2111_PQ_rec709_bar;
  }

  else
  {
    v6 = BT2111::calculate_rec2111_HLG_rec709_bar;
  }

  v76 = 0;
  std::vector<BT_2111::SignalLevel>::__init_with_size[abi:ne200100]<BT_2111::SignalLevel const*,BT_2111::SignalLevel const*>(&v76, v80, &v80[28], 7uLL);
  *v80 = xmmword_25792BDCC;
  *&v80[12] = *(&xmmword_25792BDCC + 12);
  v75[0] = 0;
  v75[1] = 0;
  v74 = 0;
  std::vector<BT_2111::SignalLevel>::__init_with_size[abi:ne200100]<BT_2111::SignalLevel const*,BT_2111::SignalLevel const*>(&v74, v80, &v80[28], 7uLL);
  *v80 = xmmword_25792BDE8;
  *&v80[12] = *(&xmmword_25792BDE8 + 12);
  v73[0] = 0;
  v73[1] = 0;
  v72 = 0;
  std::vector<BT_2111::SignalLevel>::__init_with_size[abi:ne200100]<BT_2111::SignalLevel const*,BT_2111::SignalLevel const*>(&v72, v80, &v80[28], 7uLL);
  *v80 = xmmword_25792BE04;
  *&v80[16] = 0x1A00000019;
  v71[0] = 0;
  v71[1] = 0;
  v70 = 0;
  std::vector<BT_2111::SignalLevel>::__init_with_size[abi:ne200100]<BT_2111::SignalLevel const*,BT_2111::SignalLevel const*>(&v70, v80, &v80[24], 6uLL);
  *v80 = xmmword_25792BE1C;
  *&v80[16] = 0x200000001FLL;
  v69[0] = 0;
  v69[1] = 0;
  v68 = 0;
  std::vector<BT_2111::SignalLevel>::__init_with_size[abi:ne200100]<BT_2111::SignalLevel const*,BT_2111::SignalLevel const*>(&v68, v80, &v80[24], 6uLL);
  *v80 = xmmword_25792BE34;
  *&v80[16] = unk_25792BE44;
  v81 = xmmword_25792BE54;
  v67[0] = 0;
  v67[1] = 0;
  v66 = 0;
  std::vector<BT_2111::SignalLevel>::__init_with_size[abi:ne200100]<BT_2111::SignalLevel const*,BT_2111::SignalLevel const*>(&v66, v80, v82, 0xCuLL);
  *v80 = xmmword_25792BE64;
  *&v80[16] = unk_25792BE74;
  v81 = xmmword_25792BE84;
  *v82 = 0x2E0000002DLL;
  v65[0] = 0;
  v65[1] = 0;
  v64 = 0;
  std::vector<BT_2111::SignalLevel>::__init_with_size[abi:ne200100]<BT_2111::SignalLevel const*,BT_2111::SignalLevel const*>(&v64, v80, &v82[8], 0xEuLL);
  *v80 = 0x310000002FLL;
  *&v80[8] = 50;
  v63[0] = 0;
  v63[1] = 0;
  v62 = 0;
  std::vector<BT_2111::SignalLevel>::__init_with_size[abi:ne200100]<BT_2111::SignalLevel const*,BT_2111::SignalLevel const*>(&v62, v80, &v80[12], 3uLL);
  *v80 = xmmword_25792BCC0;
  v61[0] = 0;
  v61[1] = 0;
  v60 = 0;
  std::vector<BT_2111::SignalLevel>::__init_with_size[abi:ne200100]<BT_2111::SignalLevel const*,BT_2111::SignalLevel const*>(&v60, v80, &v80[16], 4uLL);
  *&v82[48] = xmmword_25792BF00;
  *&v82[64] = unk_25792BF10;
  v83 = xmmword_25792BF20;
  v84 = unk_25792BF30;
  v81 = xmmword_25792BEC0;
  *v82 = unk_25792BED0;
  *&v82[16] = xmmword_25792BEE0;
  *&v82[32] = unk_25792BEF0;
  *v80 = xmmword_25792BEA0;
  *&v80[16] = unk_25792BEB0;
  v85 = 0x3FF0000000000000;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  std::vector<BT_2111::rgb>::__init_with_size[abi:ne200100]<BT_2111::rgb const*,BT_2111::rgb const*>(&v57, v80, &v86, 7uLL);
  v83 = xmmword_25792BFC8;
  v84 = unk_25792BFD8;
  v85 = 0x3FE8000000000000;
  *&v82[16] = xmmword_25792BF88;
  *&v82[32] = unk_25792BF98;
  *&v82[48] = xmmword_25792BFA8;
  *&v82[64] = unk_25792BFB8;
  *v80 = xmmword_25792BF48;
  *&v80[16] = unk_25792BF58;
  v81 = xmmword_25792BF68;
  *v82 = unk_25792BF78;
  v55 = 0;
  v56[0] = 0;
  v56[1] = 0;
  std::vector<BT_2111::rgb>::__init_with_size[abi:ne200100]<BT_2111::rgb const*,BT_2111::rgb const*>(&v55, v80, &v86, 7uLL);
  *v80 = vdupq_n_s64(0x3FE295A512D4C772uLL);
  *&v80[16] = *v80;
  v81 = 0x3FE295A512D4C772uLL;
  *&v82[8] = *v80;
  *&v82[24] = xmmword_25792BCD0;
  *&v82[40] = xmmword_25792BCD0;
  *&v82[56] = xmmword_25792BCD0;
  *v82 = 0;
  *&v82[72] = 0x3FE295A512D4C772;
  v83 = 0u;
  v84 = 0u;
  v85 = 0x3FE295A512D4C772;
  v54[0] = 0;
  v54[1] = 0;
  v53 = 0;
  std::vector<BT_2111::rgb>::__init_with_size[abi:ne200100]<BT_2111::rgb const*,BT_2111::rgb const*>(&v53, v80, &v86, 7uLL);
  BT2111::calculate_bt2111_bt709_bars<BT_2111::rgb (*)(double,double,double)>(v6, &v51);
  v81 = xmmword_25792C010;
  *v82 = unk_25792C020;
  *&v82[16] = xmmword_25792C030;
  *&v82[32] = unk_25792C040;
  *v80 = xmmword_25792BFF0;
  *&v80[16] = unk_25792C000;
  v50[0] = 0;
  v50[1] = 0;
  v49 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v49, v80, &v82[48], 0xCuLL);
  v7 = (1 << (a2 - 8));
  *v80 = 0x3FD999999999999ALL;
  *&v80[8] = (v7 / v7 + -16.0) / 219.0;
  *&v80[16] = xmmword_25792BCE0;
  v81 = xmmword_25792BCF0;
  *v82 = xmmword_25792BD00;
  *&v82[16] = xmmword_25792BD10;
  *&v82[32] = xmmword_25792BD20;
  *&v82[48] = 0x3FF0000000000000;
  *&v82[56] = (((255 << (a2 - 8)) - 1) / v7 + -16.0) / 219.0;
  v48[0] = 0;
  v48[1] = 0;
  v47 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v47, v80, &v82[64], 0xEuLL);
  *v80 = xmmword_25792C050;
  *&v80[16] = 0x3FA47AE147AE147BLL;
  v46[0] = 0;
  v46[1] = 0;
  v45 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v45, v80, &v80[24], 3uLL);
  *v80 = xmmword_25792C068;
  *&v80[16] = unk_25792C078;
  v44[0] = 0;
  v44[1] = 0;
  v43 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v43, v80, &v81, 4uLL);
  memset(v80, 0, 24);
  v40 = 0;
  v41 = 0;
  v42 = 0;
  if (a1 == 2)
  {
    v8 = &v49;
  }

  else
  {
    v8 = &v47;
  }

  v9 = *v8;
  v10 = v48;
  if (a1 == 2)
  {
    v10 = v50;
  }

  v11 = *v10;
  while (v9 != v11)
  {
    *&__p = *v9;
    *(&__p + 1) = __p;
    v39 = __p;
    std::vector<BT_2111::rgb>::push_back[abi:ne200100](v80, &__p);
    ++v9;
  }

  if (a1 == 2)
  {
    v12 = &v45;
  }

  else
  {
    v12 = &v43;
  }

  v13 = *v12;
  v14 = v44;
  if (a1 == 2)
  {
    v14 = v46;
  }

  v15 = *v14;
  while (v13 != v15)
  {
    *&__p = *v13;
    *(&__p + 1) = __p;
    v39 = __p;
    std::vector<BT_2111::rgb>::push_back[abi:ne200100](&v40, &__p);
    ++v13;
  }

  __p = 0uLL;
  v39 = 0;
  std::vector<BT_2111::SignalLevel>::__insert_with_size[abi:ne200100]<std::__wrap_iter<BT_2111::SignalLevel const*>,std::__wrap_iter<BT_2111::SignalLevel const*>>(&__p, 0, v76, v77, (v77 - v76) >> 2);
  v16 = &v74;
  v17 = v75;
  if (a1)
  {
    v17 = v73;
    v16 = &v72;
  }

  std::vector<BT_2111::SignalLevel>::__insert_with_size[abi:ne200100]<std::__wrap_iter<BT_2111::SignalLevel const*>,std::__wrap_iter<BT_2111::SignalLevel const*>>(&__p, *(&__p + 1), *v16, *v17, (*v17 - *v16) >> 2);
  v18 = &v66;
  v19 = v67;
  if (a1 != 2)
  {
    v19 = v65;
    v18 = &v64;
  }

  std::vector<BT_2111::SignalLevel>::__insert_with_size[abi:ne200100]<std::__wrap_iter<BT_2111::SignalLevel const*>,std::__wrap_iter<BT_2111::SignalLevel const*>>(&__p, *(&__p + 1), *v18, *v19, (*v19 - *v18) >> 2);
  v20 = &v70;
  v21 = v71;
  if (a1)
  {
    v21 = v69;
    v20 = &v68;
  }

  std::vector<BT_2111::SignalLevel>::__insert_with_size[abi:ne200100]<std::__wrap_iter<BT_2111::SignalLevel const*>,std::__wrap_iter<BT_2111::SignalLevel const*>>(&__p, *(&__p + 1), *v20, *v21, (*v21 - *v20) >> 2);
  v22 = &v62;
  v23 = v63;
  if (a1 != 2)
  {
    v23 = v61;
    v22 = &v60;
  }

  std::vector<BT_2111::SignalLevel>::__insert_with_size[abi:ne200100]<std::__wrap_iter<BT_2111::SignalLevel const*>,std::__wrap_iter<BT_2111::SignalLevel const*>>(&__p, *(&__p + 1), *v22, *v23, (*v23 - *v22) >> 2);
  v35 = 0;
  v36 = 0;
  v37 = 0;
  std::vector<BT_2111::rgb>::__insert_with_size[abi:ne200100]<std::__wrap_iter<BT_2111::rgb const*>,std::__wrap_iter<BT_2111::rgb const*>>(&v35, 0, v57, v58, 0xAAAAAAAAAAAAAAABLL * ((v58 - v57) >> 3));
  v24 = &v55;
  v25 = v56;
  if (a1)
  {
    v25 = v54;
    v24 = &v53;
  }

  std::vector<BT_2111::rgb>::__insert_with_size[abi:ne200100]<std::__wrap_iter<BT_2111::rgb const*>,std::__wrap_iter<BT_2111::rgb const*>>(&v35, v36, *v24, *v25, 0xAAAAAAAAAAAAAAABLL * ((*v25 - *v24) >> 3));
  std::vector<BT_2111::rgb>::__insert_with_size[abi:ne200100]<std::__wrap_iter<BT_2111::rgb*>,std::__wrap_iter<BT_2111::rgb*>>(&v35, v36, *v80, *&v80[8], 0xAAAAAAAAAAAAAAABLL * ((*&v80[8] - *v80) >> 3));
  std::vector<BT_2111::rgb>::__insert_with_size[abi:ne200100]<std::__wrap_iter<BT_2111::rgb const*>,std::__wrap_iter<BT_2111::rgb const*>>(&v35, v36, v51, v52, 0xAAAAAAAAAAAAAAABLL * ((v52 - v51) >> 3));
  std::vector<BT_2111::rgb>::__insert_with_size[abi:ne200100]<std::__wrap_iter<BT_2111::rgb*>,std::__wrap_iter<BT_2111::rgb*>>(&v35, v36, v40, v41, 0xAAAAAAAAAAAAAAABLL * ((v41 - v40) >> 3));
  v27 = *(&__p + 1);
  v26 = __p;
  v28 = v35;
  if (0xAAAAAAAAAAAAAAABLL * ((v36 - v35) >> 3) != (*(&__p + 1) - __p) >> 2)
  {
    __assert_rtn("calculated_values", "ITU_R_BT2111_calculator.cpp", 279, "bt2111_levels.size() == bt2111_values.size()");
  }

  a3[2] = 0;
  a3[1] = 0;
  *a3 = a3 + 1;
  if (v27 != v26)
  {
    v29 = 0;
    v30 = 0;
    v31 = 0;
    do
    {
      v32 = v35;
      v79 = &v26[v30];
      v33 = std::__tree<std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>,std::__map_value_compare<BT_2111::SignalLevel,std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>,std::less<BT_2111::SignalLevel>,true>,std::allocator<std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>>>::__emplace_unique_key_args<BT_2111::SignalLevel,std::piecewise_construct_t const&,std::tuple<BT_2111::SignalLevel const&>,std::tuple<>>(a3, &v26[v30]);
      v34 = *&v32[v29];
      v33[7] = *&v32[v29 + 16];
      *(v33 + 5) = v34;
      ++v31;
      v26 = __p;
      v30 += 4;
      v29 += 24;
    }

    while (v31 < (*(&__p + 1) - __p) >> 2);
    v28 = v35;
  }

  if (v28)
  {
    v36 = v28;
    operator delete(v28);
    v26 = __p;
  }

  if (v26)
  {
    *(&__p + 1) = v26;
    operator delete(v26);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  if (*v80)
  {
    *&v80[8] = *v80;
    operator delete(*v80);
  }

  if (v43)
  {
    v44[0] = v43;
    operator delete(v43);
  }

  if (v45)
  {
    v46[0] = v45;
    operator delete(v45);
  }

  if (v47)
  {
    v48[0] = v47;
    operator delete(v47);
  }

  if (v49)
  {
    v50[0] = v49;
    operator delete(v49);
  }

  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  if (v53)
  {
    v54[0] = v53;
    operator delete(v53);
  }

  if (v55)
  {
    v56[0] = v55;
    operator delete(v55);
  }

  if (v57)
  {
    v58 = v57;
    operator delete(v57);
  }

  if (v60)
  {
    v61[0] = v60;
    operator delete(v60);
  }

  if (v62)
  {
    v63[0] = v62;
    operator delete(v62);
  }

  if (v64)
  {
    v65[0] = v64;
    operator delete(v64);
  }

  if (v66)
  {
    v67[0] = v66;
    operator delete(v66);
  }

  if (v68)
  {
    v69[0] = v68;
    operator delete(v68);
  }

  if (v70)
  {
    v71[0] = v70;
    operator delete(v70);
  }

  if (v72)
  {
    v73[0] = v72;
    operator delete(v72);
  }

  if (v74)
  {
    v75[0] = v74;
    operator delete(v74);
  }

  if (v76)
  {
    v77 = v76;
    operator delete(v76);
  }
}

void sub_2578CD834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  if (a27)
  {
    operator delete(a27);
  }

  if (a30)
  {
    operator delete(a30);
  }

  if (a33)
  {
    operator delete(a33);
  }

  if (a36)
  {
    operator delete(a36);
  }

  if (a39)
  {
    operator delete(a39);
  }

  if (a42)
  {
    operator delete(a42);
  }

  if (a45)
  {
    operator delete(a45);
  }

  if (a48)
  {
    operator delete(a48);
  }

  if (a51)
  {
    operator delete(a51);
  }

  if (a54)
  {
    operator delete(a54);
  }

  if (a57)
  {
    operator delete(a57);
  }

  if (a60)
  {
    operator delete(a60);
  }

  if (a63)
  {
    operator delete(a63);
  }

  if (a66)
  {
    operator delete(a66);
  }

  _Unwind_Resume(a1);
}

void BT2111::calculate_bt2111_bt709_bars<BT_2111::rgb (*)(double,double,double)>(double (*a1)(double, double, double)@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = &qword_25792C098;
  v5 = 144;
  do
  {
    *&v8 = a1(*(v4 - 2), *(v4 - 1), *v4);
    *(&v8 + 1) = v6;
    v9 = v7;
    std::vector<BT_2111::rgb>::push_back[abi:ne200100](a2, &v8);
    v4 += 3;
    v5 -= 24;
  }

  while (v5);
}

void sub_2578CDAB4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<BT_2111::rgb>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<Area_renderer>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
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

    if (v11)
    {
      std::allocator<CMTime>::allocate_at_least[abi:ne200100](a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

uint64_t std::vector<BT_2111::SignalLevel>::__init_with_size[abi:ne200100]<BT_2111::SignalLevel const*,BT_2111::SignalLevel const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2578CDC30(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<BT_2111::rgb>::__init_with_size[abi:ne200100]<BT_2111::rgb const*,BT_2111::rgb const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<math_color::rgb>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2578CDCB0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2578CDD24(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<double>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::allocator<double>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<Area_renderer>::__throw_length_error[abi:ne200100]();
}

void std::allocator<double>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

char *std::vector<BT_2111::SignalLevel>::__insert_with_size[abi:ne200100]<std::__wrap_iter<BT_2111::SignalLevel const*>,std::__wrap_iter<BT_2111::SignalLevel const*>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 2);
    if (v12 >> 62)
    {
      std::vector<Area_renderer>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      std::allocator<int>::allocate_at_least[abi:ne200100](a1, v15);
    }

    v33 = 4 * v16;
    v34 = 4 * a5;
    v35 = (4 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 4;
    }

    while (v34);
    memcpy((v33 + 4 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 4 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (4 * v16);
  }

  v17 = (v10 - __dst) >> 2;
  if (v17 >= a5)
  {
    v22 = &__dst[4 * a5];
    v23 = &v10[-4 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 4;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v22);
    }

    v30 = 4 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 4;
    *v20 = v21;
    v20 += 4;
    v19 += 4;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[4 * a5];
    v27 = &v19[-4 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 4;
      *v28 = v29;
      v28 += 4;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[4 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_34:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

char *std::vector<BT_2111::rgb>::__insert_with_size[abi:ne200100]<std::__wrap_iter<BT_2111::rgb const*>,std::__wrap_iter<BT_2111::rgb const*>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 >= 1)
  {
    v6 = __src;
    v8 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3)) >= a5)
    {
      v15 = v8 - __dst;
      if ((0xAAAAAAAAAAAAAAABLL * ((v8 - __dst) >> 3)) >= a5)
      {
        v20 = 3 * a5;
        v21 = &__dst[24 * a5];
        v22 = &v8[-24 * a5];
        v23 = a1[1];
        while (v22 < v8)
        {
          v24 = *v22;
          *(v23 + 16) = *(v22 + 2);
          *v23 = v24;
          v23 += 24;
          v22 += 24;
        }

        a1[1] = v23;
        if (v8 != v21)
        {
          memmove(&__dst[24 * a5], __dst, v8 - v21);
        }

        v29 = 8 * v20;
        v30 = v5;
        v31 = v6;
      }

      else
      {
        v16 = &__src[v15];
        v17 = a1[1];
        v18 = v17;
        while (v16 != a4)
        {
          v19 = *v16;
          *(v18 + 16) = *(v16 + 2);
          *v18 = v19;
          v18 += 24;
          v16 += 24;
          v17 += 24;
        }

        a1[1] = v17;
        if (v15 < 1)
        {
          return v5;
        }

        v25 = &__dst[24 * a5];
        v26 = v17 - 24 * a5;
        v27 = v17;
        while (v26 < v8)
        {
          v28 = *v26;
          *(v27 + 16) = *(v26 + 16);
          *v27 = v28;
          v27 += 24;
          v26 += 24;
        }

        a1[1] = v27;
        if (v18 != v25)
        {
          memmove(&__dst[24 * a5], __dst, v17 - v25);
        }

        v30 = v5;
        v31 = v6;
        v29 = v15;
      }

      memmove(v30, v31, v29);
      return v5;
    }

    v10 = *a1;
    v11 = a5 - 0x5555555555555555 * (&v8[-*a1] >> 3);
    if (v11 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<Area_renderer>::__throw_length_error[abi:ne200100]();
    }

    v12 = __dst - v10;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3);
    if (2 * v13 > v11)
    {
      v11 = 2 * v13;
    }

    if (v13 >= 0x555555555555555)
    {
      v14 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v14 = v11;
    }

    if (v14)
    {
      std::allocator<CMTime>::allocate_at_least[abi:ne200100](a1, v14);
    }

    v32 = 8 * (v12 >> 3);
    v33 = (v32 + 24 * a5);
    v34 = 24 * a5;
    v35 = v32;
    do
    {
      v36 = *v6;
      *(v35 + 16) = *(v6 + 2);
      *v35 = v36;
      v35 += 24;
      v6 += 24;
      v34 -= 24;
    }

    while (v34);
    memcpy(v33, v5, a1[1] - v5);
    v37 = *a1;
    v38 = &v33[a1[1] - v5];
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v32 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return v32;
  }

  return v5;
}

char *std::vector<BT_2111::rgb>::__insert_with_size[abi:ne200100]<std::__wrap_iter<BT_2111::rgb*>,std::__wrap_iter<BT_2111::rgb*>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3)) < a5)
  {
    v11 = *a1;
    v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 3);
    if (v12 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<Area_renderer>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x555555555555555)
    {
      v15 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      std::allocator<CMTime>::allocate_at_least[abi:ne200100](a1, v15);
    }

    v34 = 8 * (v13 >> 3);
    v35 = 24 * a5;
    v36 = v34;
    do
    {
      v37 = *v7;
      *(v36 + 16) = *(v7 + 2);
      *v36 = v37;
      v36 += 24;
      v7 += 24;
      v35 -= 24;
    }

    while (v35);
    memcpy((v34 + 24 * a5), v5, *(a1 + 8) - v5);
    v38 = *a1;
    v39 = v34 + 24 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v40 = v5 - v38;
    v41 = (v34 - (v5 - v38));
    memcpy(v41, v38, v40);
    v42 = *a1;
    *a1 = v41;
    *(a1 + 8) = v39;
    *(a1 + 16) = 0;
    if (v42)
    {
      operator delete(v42);
    }

    return v34;
  }

  v16 = v10 - __dst;
  if ((0xAAAAAAAAAAAAAAABLL * ((v10 - __dst) >> 3)) >= a5)
  {
    v29 = 3 * a5;
    v30 = &__dst[24 * a5];
    v31 = v10 - 24 * a5;
    v32 = *(a1 + 8);
    while (v31 < v10)
    {
      v33 = *v31;
      *(v32 + 16) = *(v31 + 16);
      *v32 = v33;
      v32 += 24;
      v31 += 24;
    }

    *(a1 + 8) = v32;
    if (v10 != v30)
    {
      memmove(&__dst[24 * a5], __dst, v10 - v30);
    }

    v28 = 8 * v29;
    v26 = v5;
    v27 = v7;
    goto LABEL_28;
  }

  v18 = a4 - &__src[v16];
  if (a4 != &__src[v16])
  {
    memmove(*(a1 + 8), &__src[v16], a4 - &__src[v16]);
  }

  v19 = (v10 + v18);
  *(a1 + 8) = v10 + v18;
  if (v16 >= 1)
  {
    v20 = &v5[24 * a5];
    v21 = v10 + v18;
    if (&v19[-24 * a5] < v10)
    {
      v22 = &v5[a4];
      v23 = &v5[a4 + -24 * a5];
      do
      {
        v24 = v22 - v7;
        v25 = *(v23 - v7);
        *(v24 + 16) = *(v23 - v7 + 16);
        *v24 = v25;
        v23 += 24;
        v22 += 24;
      }

      while (v23 - v7 < v10);
      v21 = v22 - v7;
    }

    *(a1 + 8) = v21;
    if (v19 != v20)
    {
      memmove(&v5[24 * a5], v5, v19 - v20);
    }

    v26 = v5;
    v27 = v7;
    v28 = v10 - v5;
LABEL_28:
    memmove(v26, v27, v28);
  }

  return v5;
}

void std::__tree<std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>,std::__map_value_compare<BT_2111::SignalLevel,std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>,std::less<BT_2111::SignalLevel>,true>,std::allocator<std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>,std::__map_value_compare<BT_2111::SignalLevel,std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>,std::less<BT_2111::SignalLevel>,true>,std::allocator<std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>,std::__map_value_compare<BT_2111::SignalLevel,std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>,std::less<BT_2111::SignalLevel>,true>,std::allocator<std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t *std::__tree<std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>,std::__map_value_compare<BT_2111::SignalLevel,std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>,std::less<BT_2111::SignalLevel>,true>,std::allocator<std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>>>::__emplace_unique_key_args<BT_2111::SignalLevel,std::piecewise_construct_t const&,std::tuple<BT_2111::SignalLevel const&>,std::tuple<>>(uint64_t a1, int *a2)
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

double math_color::color_primaries_to_kR_kB(double *a1, double *a2, double *a3)
{
  v3 = a1[1];
  v4 = 1.0 - (*a1 + v3);
  v5 = a1[2];
  v6 = a1[3];
  v7 = 1.0 - (v5 + v6);
  v8 = a1[4];
  v9 = a1[5];
  v10 = 1.0 - (v8 + v9);
  v11 = a1[6];
  v12 = a1[7];
  v13 = 1.0 - (v11 + v12);
  *a2 = v3 * (v12 * (v8 * v7 - v5 * v10) + v11 * (v6 * v10 - v9 * v7) + v13 * (v5 * v9 - v8 * v6)) / (v12 * (v5 * (v9 * v4 - v3 * v10) + *a1 * (v6 * v10 - v9 * v7) + v8 * (v3 * v7 - v6 * v4)));
  v15 = a1[2];
  v14 = a1[3];
  v16 = a1[1];
  result = a1[5] * (a1[7] * (v15 * v4 - *a1 * v7) + a1[6] * (v16 * v7 - v14 * v4) + v13 * (*a1 * v14 - v15 * v16)) / (a1[7] * ((a1[5] * v4 - v16 * v10) * v15 + *a1 * (v14 * v10 - a1[5] * v7) + a1[4] * (v16 * v7 - v14 * v4)));
  *a3 = result;
  return result;
}

double math_color::calculate_RGB_to_XYZ_matrix(double *a1, double *a2)
{
  v15 = 0.0;
  v16 = 0.0;
  math_color::color_primaries_to_kR_kB(a1, &v16, &v15);
  v5 = v15;
  v4 = v16;
  v6 = 1.0 - v16 - v15;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  v11 = a1[5];
  v12 = *a1 / v7;
  v13 = (1.0 - (*a1 + v7)) / v7;
  *a2 = v16 * v12;
  a2[1] = v6 * (v8 / v9);
  a2[2] = v5 * (v10 / v11);
  a2[3] = v4;
  a2[4] = v6;
  a2[5] = v5;
  a2[6] = v4 * v13;
  a2[7] = v6 * ((1.0 - (v8 + v9)) / v9);
  result = v5 * ((1.0 - (v10 + v11)) / v11);
  a2[8] = result;
  return result;
}

double math_color::calculate_XYZ_to_RGB_matrix(double *a1, double *a2)
{
  v4[9] = *MEMORY[0x277D85DE8];
  math_color::calculate_RGB_to_XYZ_matrix(a1, v4);
  return math_color::inverse<double>(v4, a2);
}

double math_color::inverse<double>(double *a1, double *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  v10 = a1[8];
  v11 = v6 * v10 - v7 * v9;
  v12 = v5 * v9 - v6 * v8;
  v13 = 1.0 / (*a1 * v11 - v3 * (v5 * v10 - v7 * v8) + v4 * v12);
  *a2 = v11 * v13;
  a2[1] = (v4 * v9 - v3 * v10) * v13;
  a2[2] = (v3 * v7 - v4 * v6) * v13;
  a2[3] = (v7 * v8 - v5 * v10) * v13;
  a2[4] = (v2 * v10 - v4 * v8) * v13;
  a2[5] = (v4 * v5 - v2 * v7) * v13;
  a2[6] = v12 * v13;
  a2[7] = (v3 * v8 - v2 * v9) * v13;
  result = (v2 * v6 - v3 * v5) * v13;
  a2[8] = result;
  return result;
}

double math_color::calculate_srcRGB_to_dstRGB_matrix(double *a1, double *a2, double *a3)
{
  v8[9] = *MEMORY[0x277D85DE8];
  math_color::calculate_RGB_to_XYZ_matrix(a1, v7);
  math_color::calculate_RGB_to_XYZ_matrix(a2, v8);
  math_color::inverse<double>(v8, v6);
  return math_color::mult_3x3<double>(v6, v7, a3);
}

double math_color::mult_3x3<double>(double *a1, double *a2, double *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v11 = a1[8];
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[2];
  v15 = a2[3];
  v16 = a2[4];
  v17 = a2[5];
  v18 = a2[6];
  v19 = a2[7];
  v20 = a2[8];
  v21 = v4 * v16 + *a1 * v13 + v5 * v19;
  *a3 = v4 * v15 + *a1 * *a2 + v5 * v18;
  a3[1] = v21;
  a3[2] = v4 * v17 + v3 * v14 + v5 * v20;
  a3[3] = v15 * v7 + v6 * v12 + v8 * v18;
  a3[4] = v16 * v7 + v6 * v13 + v8 * v19;
  a3[5] = v17 * v7 + v6 * v14 + v8 * v20;
  a3[6] = v15 * v10 + v9 * v12 + v11 * v18;
  a3[7] = v16 * v10 + v9 * v13 + v11 * v19;
  result = v17 * v10 + v9 * v14 + v11 * v20;
  a3[8] = result;
  return result;
}

{
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  *a3 = a1[1] * a2[1] + *a1 * *a2 + a1[2] * a2[2];
  a3[1] = v4 * a2[1] + v3 * *a2 + v5 * a2[2];
  result = v7 * a2[1] + v6 * *a2 + v8 * a2[2];
  a3[2] = result;
  return result;
}

void sub_2578CEB3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MIORawBayerFrameProcessor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

double MIOCVPixelBufferGetBytesPerPixelOfPlaneFromLookup(__CVBuffer *a1, uint64_t a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);

  return MIOCVPixelBufferGetBytesPerPixelOfPlaneFromLookupForFormat(PixelFormatType, a2);
}

double MIOCVPixelBufferGetBytesPerPixelOfPlaneFromLookupForFormat(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d_%zu", a1, a2];
  v3 = objc_opt_class();
  objc_sync_enter(v3);
  v4 = +[MIOPixelBufferUtility sharedBytesPerPixelLookUp];
  v5 = [v4 objectForKey:v2];
  [v5 doubleValue];
  v7 = v6;

  objc_sync_exit(v3);
  return v7;
}

void sub_2578CF068(_Unwind_Exception *a1)
{
  v5 = v4;

  objc_sync_exit(v2);
  _Unwind_Resume(a1);
}

void MIOCVPixelBufferSetBytesPerPixelOfPlaneToLookup(__CVBuffer *a1, uint64_t a2, double a3)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);

  MIOCVPixelBufferSetBytesPerPixelOfPlaneToLookupForFormat(PixelFormatType, a2, a3);
}

void MIOCVPixelBufferSetBytesPerPixelOfPlaneToLookupForFormat(uint64_t a1, uint64_t a2, double a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d_%zu", a1, a2];
  v5 = objc_opt_class();
  objc_sync_enter(v5);
  v6 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    v10 = a3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_257883000, v6, OS_LOG_TYPE_INFO, "BytesPerPixelLookUp: Register %f for %@", buf, 0x16u);
  }

  v7 = +[MIOPixelBufferUtility sharedBytesPerPixelLookUp];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [v7 setObject:v8 forKey:v4];

  objc_sync_exit(v5);
}

void sub_2578CF244(_Unwind_Exception *a1)
{
  v5 = v3;

  objc_sync_exit(v2);
  _Unwind_Resume(a1);
}

CVPixelBufferRef MIOCVCreatePixelBuffer(OSType a1, size_t a2, size_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = *MEMORY[0x277CC4DE8];
  v11[0] = MEMORY[0x277CBEC10];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], a2, a3, a1, v6, &v9);
  v7 = v9;

  return v7;
}

double MIOCVPixelBufferGetBytesPerPixel(__CVBuffer *a1)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);

  return MIOCVPixelBufferGetBytesPerPixelOfPlaneForFormat(PixelFormatType, 0);
}

double MIOCVPixelBufferGetBytesPerPixelOfPlane(__CVBuffer *a1, size_t a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);

  return MIOCVPixelBufferGetBytesPerPixelOfPlaneForFormat(PixelFormatType, a2);
}

double MIOCVPixelBufferGetBytesPerPixelOfPlaneForFormat(uint64_t a1, size_t a2)
{
  v19[1] = *MEMORY[0x277D85DE8];
  BytesPerPixelOfPlaneFromLookupForFormat = MIOCVPixelBufferGetBytesPerPixelOfPlaneFromLookupForFormat(a1, a2);
  if (BytesPerPixelOfPlaneFromLookupForFormat == 0.0)
  {
    pixelBufferOut = 0;
    v18 = *MEMORY[0x277CC4DE8];
    v19[0] = MEMORY[0x277CBEC10];
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    CVPixelBufferCreate(*MEMORY[0x277CBECE8], 0x280uLL, 0x1E0uLL, a1, v5, &pixelBufferOut);
    if (!pixelBufferOut)
    {
      v10 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        LODWORD(extraColumnsOnLeft) = 67109120;
        HIDWORD(extraColumnsOnLeft) = a1;
        _os_log_impl(&dword_257883000, v10, OS_LOG_TYPE_ERROR, "Cannot allocate reference buffer (Format: %d).", &extraColumnsOnLeft, 8u);
      }

      [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot allocate reference buffer (Format: %d).", a1];
      v11 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
      objc_exception_throw(v11);
    }

    if (CVPixelBufferGetPlaneCount(pixelBufferOut))
    {
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBufferOut, a2);
      WidthOfPlane = CVPixelBufferGetWidthOfPlane(pixelBufferOut, a2);
    }

    else
    {
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(pixelBufferOut);
      WidthOfPlane = 640;
    }

    extraColumnsOnLeft = 0;
    extraColumnsOnRight = 0;
    CVPixelBufferGetExtendedPixels(pixelBufferOut, &extraColumnsOnLeft, &extraColumnsOnRight, 0, 0);
    CVPixelBufferRelease(pixelBufferOut);
    if (WidthOfPlane - 641 <= 0xFFFFFFFFFFFFFD7FLL)
    {
      v12 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_257883000, v12, OS_LOG_TYPE_ERROR, "Invalid pixel buffer configuration.", buf, 2u);
      }

      v13 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Invalid pixel buffer configuration." userInfo:0];
      objc_exception_throw(v13);
    }

    v8 = 0x280u / WidthOfPlane;
    extraColumnsOnLeft /= v8;
    extraColumnsOnRight /= v8;
    BytesPerPixelOfPlaneFromLookupForFormat = BytesPerRowOfPlane / (extraColumnsOnLeft + WidthOfPlane + extraColumnsOnRight);
    MIOCVPixelBufferSetBytesPerPixelOfPlaneToLookupForFormat(a1, a2, BytesPerPixelOfPlaneFromLookupForFormat);
  }

  return BytesPerPixelOfPlaneFromLookupForFormat;
}

size_t MIOCVPixelBufferUsablePlaneCount(__CVBuffer *a1)
{
  result = CVPixelBufferGetPlaneCount(a1);
  if (result <= 1)
  {
    return 1;
  }

  return result;
}

MOVStreamFrame *MIOMakeFrame(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  v6 = [[MOVStreamFrame alloc] initWithPixelBuffer:a1 timeStamp:v5 context:a3];

  return v6;
}

void sub_2578D71E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{

  _Unwind_Resume(a1);
}

void sub_2578D8E94(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_2578D9110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<CMTimeRange>::__assign_with_size[abi:ne200100]<CMTimeRange*,CMTimeRange*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v8 - *result) >> 4) < a4)
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

    if (a4 <= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 4);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0x2AAAAAAAAAAAAAALL)
      {
        v12 = 0x555555555555555;
      }

      else
      {
        v12 = v11;
      }

      std::vector<CMTimeRange>::__vallocate[abi:ne200100](v7, v12);
    }

    std::vector<Area_renderer>::__throw_length_error[abi:ne200100]();
  }

  v13 = result[1];
  v14 = v13 - v9;
  if (0xAAAAAAAAAAAAAAABLL * ((v13 - v9) >> 4) >= a4)
  {
    v18 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v9[v18];
  }

  else
  {
    if (v13 != v9)
    {
      result = memmove(*result, __src, v13 - v9);
      v13 = v7[1];
    }

    v15 = &__src[v14];
    v16 = a3 - &__src[v14];
    if (v16)
    {
      result = memmove(v13, v15, v16);
    }

    v17 = &v13[v16];
  }

  v7[1] = v17;
  return result;
}

void std::vector<CMTimeRange>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::allocator<CMTimeRange>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<Area_renderer>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<CMTimeRange>::__init_with_size[abi:ne200100]<CMTimeRange const*,CMTimeRange const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CMTimeRange>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2578D9938(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2578DA530(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_2578DB3E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 buf)
{
  if (a2 == 1)
  {
    v13 = objc_begin_catch(exception_object);
    v14 = v12;
    v15 = [v11 avfAppendSignPostID];
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      buf = 0;
      _os_signpost_emit_with_name_impl(&dword_257883000, v14, OS_SIGNPOST_INTERVAL_END, v15, "mio.append.timed.metadata.group", "", &buf, 2u);
    }

    v16 = MEMORY[0x277CCACA8];
    v20 = [v11 streamId];
    v17 = [v16 stringWithFormat:@"Exception occurred during appendTimedMetadataGroup %@ for stream '%@'."];

    v18 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v17 code:21];
    v19 = [v11 writer];
    [v19 reportError:v18];

    objc_end_catch();
    JUMPOUT(0x2578DB3B0);
  }

  _Unwind_Resume(exception_object);
}

void sub_2578DBE24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MIOPixelBufferPool;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2578DC0A4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_2578DC244(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_2578DC428(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_2578DC608(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_2578DC800(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void *GetPixelBufferBaseAddress(__CVBuffer *a1)
{
  if (CVPixelBufferIsPlanar(a1))
  {

    return CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  }

  else
  {

    return CVPixelBufferGetBaseAddress(a1);
  }
}

size_t GetPixelBufferRowBytes(__CVBuffer *a1)
{
  if (CVPixelBufferIsPlanar(a1))
  {
    return CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  }

  else
  {
    return CVPixelBufferGetBytesPerRow(a1);
  }
}

void ColorBars::ColorBars(ColorBars *this, double a2, double a3, double a4)
{
  *this = &unk_2868CE4A8;
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = a4;
}

uint64_t ColorBars::render_L008(double *a1, void *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v2 == 0.0 && v3 == 0.0)
  {
    v2 = 0.2126;
    v3 = 0.0722;
  }

  render_bars<PixelFormatTraits<1278226488u>,void render_ColorBars_luma<PixelFormatTraits<1278226488u>>(double,double,double,ImageBuffer const&)::{lambda(ImageBuffer const&,unsigned long,unsigned long,unsigned long,unsigned long,math_color::YCbCr,int)#1}>(a2, v2, v3, a1[3]);
  return 1;
}

uint64_t ColorBars::render_L010(double *a1, void *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v2 == 0.0 && v3 == 0.0)
  {
    v2 = 0.2126;
    v3 = 0.0722;
  }

  render_bars<PixelFormatTraits<1278226736u>,void render_ColorBars_luma<PixelFormatTraits<1278226736u>>(double,double,double,ImageBuffer const&)::{lambda(ImageBuffer const&,unsigned long,unsigned long,unsigned long,unsigned long,math_color::YCbCr,int)#1}>(a2, v2, v3, a1[3]);
  return 1;
}

void *render_ColorBars_420<PixelFormatTraits<875704438u>>(void *a1, void *a2, double a3, double a4, double a5)
{
  if (a1[2] != 2 * a2[2])
  {
    render_ColorBars_420<PixelFormatTraits<875704438u>>();
  }

  if (a1[1] != 2 * a2[1])
  {
    render_ColorBars_420<PixelFormatTraits<875704438u>>();
  }

  render_bars<PixelFormatTraits<875704438u>,void render_ColorBars_luma<PixelFormatTraits<875704438u>>(double,double,double,ImageBuffer const&)::{lambda(ImageBuffer const&,unsigned long,unsigned long,unsigned long,unsigned long,math_color::YCbCr,int)#1}>(a1, a3, a4, a5);

  return render_bars<PixelFormatTraits<875704438u>,void render_ColorBars_chroma<PixelFormatTraits<875704438u>>(double,double,double,ImageBuffer const&)::{lambda(ImageBuffer const&,unsigned long,unsigned long,unsigned long,unsigned long,math_color::YCbCr,int)#1}>(a2, a3, a4, a5);
}

void *render_ColorBars_420<PixelFormatTraits<875704422u>>(void *a1, void *a2, double a3, double a4, double a5)
{
  if (a1[2] != 2 * a2[2])
  {
    render_ColorBars_420<PixelFormatTraits<875704438u>>();
  }

  if (a1[1] != 2 * a2[1])
  {
    render_ColorBars_420<PixelFormatTraits<875704438u>>();
  }

  render_bars<PixelFormatTraits<1278226488u>,void render_ColorBars_luma<PixelFormatTraits<1278226488u>>(double,double,double,ImageBuffer const&)::{lambda(ImageBuffer const&,unsigned long,unsigned long,unsigned long,unsigned long,math_color::YCbCr,int)#1}>(a1, a3, a4, a5);

  return render_bars<PixelFormatTraits<875704422u>,void render_ColorBars_chroma<PixelFormatTraits<875704422u>>(double,double,double,ImageBuffer const&)::{lambda(ImageBuffer const&,unsigned long,unsigned long,unsigned long,unsigned long,math_color::YCbCr,int)#1}>(a2, a3, a4, a5);
}

void *render_ColorBars_420<PixelFormatTraits<2016686640u>>(void *a1, void *a2, double a3, double a4, double a5)
{
  if (a1[2] != 2 * a2[2])
  {
    render_ColorBars_420<PixelFormatTraits<875704438u>>();
  }

  if (a1[1] != 2 * a2[1])
  {
    render_ColorBars_420<PixelFormatTraits<875704438u>>();
  }

  render_bars<PixelFormatTraits<2016686640u>,void render_ColorBars_luma<PixelFormatTraits<2016686640u>>(double,double,double,ImageBuffer const&)::{lambda(ImageBuffer const&,unsigned long,unsigned long,unsigned long,unsigned long,math_color::YCbCr,int)#1}>(a1, a3, a4, a5);

  return render_bars<PixelFormatTraits<2016686640u>,void render_ColorBars_chroma<PixelFormatTraits<2016686640u>>(double,double,double,ImageBuffer const&)::{lambda(ImageBuffer const&,unsigned long,unsigned long,unsigned long,unsigned long,math_color::YCbCr,int)#1}>(a2, a3, a4, a5);
}

void *render_ColorBars_420<PixelFormatTraits<2019963440u>>(void *a1, void *a2, double a3, double a4, double a5)
{
  if (a1[2] != 2 * a2[2])
  {
    render_ColorBars_420<PixelFormatTraits<875704438u>>();
  }

  if (a1[1] != 2 * a2[1])
  {
    render_ColorBars_420<PixelFormatTraits<875704438u>>();
  }

  render_bars<PixelFormatTraits<1278226736u>,void render_ColorBars_luma<PixelFormatTraits<1278226736u>>(double,double,double,ImageBuffer const&)::{lambda(ImageBuffer const&,unsigned long,unsigned long,unsigned long,unsigned long,math_color::YCbCr,int)#1}>(a1, a3, a4, a5);

  return render_bars<PixelFormatTraits<2019963440u>,void render_ColorBars_chroma<PixelFormatTraits<2019963440u>>(double,double,double,ImageBuffer const&)::{lambda(ImageBuffer const&,unsigned long,unsigned long,unsigned long,unsigned long,math_color::YCbCr,int)#1}>(a2, a3, a4, a5);
}

void *render_ColorBars_422<PixelFormatTraits<875704950u>>(void *a1, void *a2, double a3, double a4, double a5)
{
  if (a1[2] != 2 * a2[2])
  {
    render_ColorBars_422<PixelFormatTraits<875704950u>>();
  }

  if (a1[1] != a2[1])
  {
    render_ColorBars_422<PixelFormatTraits<875704950u>>();
  }

  render_bars<PixelFormatTraits<875704438u>,void render_ColorBars_luma<PixelFormatTraits<875704438u>>(double,double,double,ImageBuffer const&)::{lambda(ImageBuffer const&,unsigned long,unsigned long,unsigned long,unsigned long,math_color::YCbCr,int)#1}>(a1, a3, a4, a5);

  return render_bars<PixelFormatTraits<875704438u>,void render_ColorBars_chroma<PixelFormatTraits<875704438u>>(double,double,double,ImageBuffer const&)::{lambda(ImageBuffer const&,unsigned long,unsigned long,unsigned long,unsigned long,math_color::YCbCr,int)#1}>(a2, a3, a4, a5);
}

void *render_ColorBars_422<PixelFormatTraits<875704934u>>(void *a1, void *a2, double a3, double a4, double a5)
{
  if (a1[2] != 2 * a2[2])
  {
    render_ColorBars_422<PixelFormatTraits<875704950u>>();
  }

  if (a1[1] != a2[1])
  {
    render_ColorBars_422<PixelFormatTraits<875704950u>>();
  }

  render_bars<PixelFormatTraits<1278226488u>,void render_ColorBars_luma<PixelFormatTraits<1278226488u>>(double,double,double,ImageBuffer const&)::{lambda(ImageBuffer const&,unsigned long,unsigned long,unsigned long,unsigned long,math_color::YCbCr,int)#1}>(a1, a3, a4, a5);

  return render_bars<PixelFormatTraits<875704422u>,void render_ColorBars_chroma<PixelFormatTraits<875704422u>>(double,double,double,ImageBuffer const&)::{lambda(ImageBuffer const&,unsigned long,unsigned long,unsigned long,unsigned long,math_color::YCbCr,int)#1}>(a2, a3, a4, a5);
}

void *render_ColorBars_422<PixelFormatTraits<2016686642u>>(void *a1, void *a2, double a3, double a4, double a5)
{
  if (a1[2] != 2 * a2[2])
  {
    render_ColorBars_422<PixelFormatTraits<875704950u>>();
  }

  if (a1[1] != a2[1])
  {
    render_ColorBars_422<PixelFormatTraits<875704950u>>();
  }

  render_bars<PixelFormatTraits<2016686640u>,void render_ColorBars_luma<PixelFormatTraits<2016686640u>>(double,double,double,ImageBuffer const&)::{lambda(ImageBuffer const&,unsigned long,unsigned long,unsigned long,unsigned long,math_color::YCbCr,int)#1}>(a1, a3, a4, a5);

  return render_bars<PixelFormatTraits<2016686640u>,void render_ColorBars_chroma<PixelFormatTraits<2016686640u>>(double,double,double,ImageBuffer const&)::{lambda(ImageBuffer const&,unsigned long,unsigned long,unsigned long,unsigned long,math_color::YCbCr,int)#1}>(a2, a3, a4, a5);
}

void *render_ColorBars_422<PixelFormatTraits<2019963442u>>(void *a1, void *a2, double a3, double a4, double a5)
{
  if (a1[2] != 2 * a2[2])
  {
    render_ColorBars_422<PixelFormatTraits<875704950u>>();
  }

  if (a1[1] != a2[1])
  {
    render_ColorBars_422<PixelFormatTraits<875704950u>>();
  }

  render_bars<PixelFormatTraits<1278226736u>,void render_ColorBars_luma<PixelFormatTraits<1278226736u>>(double,double,double,ImageBuffer const&)::{lambda(ImageBuffer const&,unsigned long,unsigned long,unsigned long,unsigned long,math_color::YCbCr,int)#1}>(a1, a3, a4, a5);

  return render_bars<PixelFormatTraits<2019963440u>,void render_ColorBars_chroma<PixelFormatTraits<2019963440u>>(double,double,double,ImageBuffer const&)::{lambda(ImageBuffer const&,unsigned long,unsigned long,unsigned long,unsigned long,math_color::YCbCr,int)#1}>(a2, a3, a4, a5);
}

void *render_ColorBars_422<PixelFormatTraits<1937125938u>>(void *a1, void *a2, double a3, double a4, double a5)
{
  if (a1[2] != 2 * a2[2])
  {
    render_ColorBars_422<PixelFormatTraits<875704950u>>();
  }

  if (a1[1] != a2[1])
  {
    render_ColorBars_422<PixelFormatTraits<875704950u>>();
  }

  render_bars<PixelFormatTraits<1937125938u>,void render_ColorBars_luma<PixelFormatTraits<1937125938u>>(double,double,double,ImageBuffer const&)::{lambda(ImageBuffer const&,unsigned long,unsigned long,unsigned long,unsigned long,math_color::YCbCr,int)#1}>(a1, a3, a4, a5);

  return render_bars<PixelFormatTraits<1937125938u>,void render_ColorBars_chroma<PixelFormatTraits<1937125938u>>(double,double,double,ImageBuffer const&)::{lambda(ImageBuffer const&,unsigned long,unsigned long,unsigned long,unsigned long,math_color::YCbCr,int)#1}>(a2, a3, a4, a5);
}

void *render_ColorBars_444<PixelFormatTraits<875836534u>>(void *a1, void *a2, double a3, double a4, double a5)
{
  if (a1[2] != a2[2])
  {
    render_ColorBars_444<PixelFormatTraits<875836534u>>();
  }

  if (a1[1] != a2[1])
  {
    render_ColorBars_444<PixelFormatTraits<875836534u>>();
  }

  render_bars<PixelFormatTraits<875704438u>,void render_ColorBars_luma<PixelFormatTraits<875704438u>>(double,double,double,ImageBuffer const&)::{lambda(ImageBuffer const&,unsigned long,unsigned long,unsigned long,unsigned long,math_color::YCbCr,int)#1}>(a1, a3, a4, a5);

  return render_bars<PixelFormatTraits<875704438u>,void render_ColorBars_chroma<PixelFormatTraits<875704438u>>(double,double,double,ImageBuffer const&)::{lambda(ImageBuffer const&,unsigned long,unsigned long,unsigned long,unsigned long,math_color::YCbCr,int)#1}>(a2, a3, a4, a5);
}

void *render_ColorBars_444<PixelFormatTraits<875836518u>>(void *a1, void *a2, double a3, double a4, double a5)
{
  if (a1[2] != a2[2])
  {
    render_ColorBars_444<PixelFormatTraits<875836534u>>();
  }

  if (a1[1] != a2[1])
  {
    render_ColorBars_444<PixelFormatTraits<875836534u>>();
  }

  render_bars<PixelFormatTraits<1278226488u>,void render_ColorBars_luma<PixelFormatTraits<1278226488u>>(double,double,double,ImageBuffer const&)::{lambda(ImageBuffer const&,unsigned long,unsigned long,unsigned long,unsigned long,math_color::YCbCr,int)#1}>(a1, a3, a4, a5);

  return render_bars<PixelFormatTraits<875704422u>,void render_ColorBars_chroma<PixelFormatTraits<875704422u>>(double,double,double,ImageBuffer const&)::{lambda(ImageBuffer const&,unsigned long,unsigned long,unsigned long,unsigned long,math_color::YCbCr,int)#1}>(a2, a3, a4, a5);
}

void *render_ColorBars_444<PixelFormatTraits<2016687156u>>(void *a1, void *a2, double a3, double a4, double a5)
{
  if (a1[2] != a2[2])
  {
    render_ColorBars_444<PixelFormatTraits<875836534u>>();
  }

  if (a1[1] != a2[1])
  {
    render_ColorBars_444<PixelFormatTraits<875836534u>>();
  }

  render_bars<PixelFormatTraits<2016686640u>,void render_ColorBars_luma<PixelFormatTraits<2016686640u>>(double,double,double,ImageBuffer const&)::{lambda(ImageBuffer const&,unsigned long,unsigned long,unsigned long,unsigned long,math_color::YCbCr,int)#1}>(a1, a3, a4, a5);

  return render_bars<PixelFormatTraits<2016686640u>,void render_ColorBars_chroma<PixelFormatTraits<2016686640u>>(double,double,double,ImageBuffer const&)::{lambda(ImageBuffer const&,unsigned long,unsigned long,unsigned long,unsigned long,math_color::YCbCr,int)#1}>(a2, a3, a4, a5);
}

void *render_ColorBars_444<PixelFormatTraits<2019963956u>>(void *a1, void *a2, double a3, double a4, double a5)
{
  if (a1[2] != a2[2])
  {
    render_ColorBars_444<PixelFormatTraits<875836534u>>();
  }

  if (a1[1] != a2[1])
  {
    render_ColorBars_444<PixelFormatTraits<875836534u>>();
  }

  render_bars<PixelFormatTraits<1278226736u>,void render_ColorBars_luma<PixelFormatTraits<1278226736u>>(double,double,double,ImageBuffer const&)::{lambda(ImageBuffer const&,unsigned long,unsigned long,unsigned long,unsigned long,math_color::YCbCr,int)#1}>(a1, a3, a4, a5);

  return render_bars<PixelFormatTraits<2019963440u>,void render_ColorBars_chroma<PixelFormatTraits<2019963440u>>(double,double,double,ImageBuffer const&)::{lambda(ImageBuffer const&,unsigned long,unsigned long,unsigned long,unsigned long,math_color::YCbCr,int)#1}>(a2, a3, a4, a5);
}

void *render_ColorBars_444<PixelFormatTraits<1937126452u>>(void *a1, void *a2, double a3, double a4, double a5)
{
  if (a1[2] != a2[2])
  {
    render_ColorBars_444<PixelFormatTraits<875836534u>>();
  }

  if (a1[1] != a2[1])
  {
    render_ColorBars_444<PixelFormatTraits<875836534u>>();
  }

  render_bars<PixelFormatTraits<1937125938u>,void render_ColorBars_luma<PixelFormatTraits<1937125938u>>(double,double,double,ImageBuffer const&)::{lambda(ImageBuffer const&,unsigned long,unsigned long,unsigned long,unsigned long,math_color::YCbCr,int)#1}>(a1, a3, a4, a5);

  return render_bars<PixelFormatTraits<1937125938u>,void render_ColorBars_chroma<PixelFormatTraits<1937125938u>>(double,double,double,ImageBuffer const&)::{lambda(ImageBuffer const&,unsigned long,unsigned long,unsigned long,unsigned long,math_color::YCbCr,int)#1}>(a2, a3, a4, a5);
}

void *render_bars<PixelFormatTraits<1278226488u>,void render_ColorBars_luma<PixelFormatTraits<1278226488u>>(double,double,double,ImageBuffer const&)::{lambda(ImageBuffer const&,unsigned long,unsigned long,unsigned long,unsigned long,math_color::YCbCr,int)#1}>(void *a1, double a2, double a3, double a4)
{
  v8 = 0;
  v9 = 0;
  v10 = a1[1];
  v11 = a1[2];
  v12 = v11;
  do
  {
    v13 = math_color::calculate_color_bar(v8, 8u, a4, a2, a3, 1);
    v8 = (v8 + 1);
    v14 = (llround(vcvtd_n_f64_u64(v12, 3uLL)) + 1) & 0xFFFFFFFE;
    result = fill_rect<unsigned char>(a1, v9, 0, (v14 - v9), v10, v13);
    v12 += v11;
    v9 = v14;
  }

  while (v8 != 8);
  return result;
}

void *render_bars<PixelFormatTraits<1278226736u>,void render_ColorBars_luma<PixelFormatTraits<1278226736u>>(double,double,double,ImageBuffer const&)::{lambda(ImageBuffer const&,unsigned long,unsigned long,unsigned long,unsigned long,math_color::YCbCr,int)#1}>(void *a1, double a2, double a3, double a4)
{
  v8 = 0;
  v9 = 0;
  v10 = a1[1];
  v11 = a1[2];
  v12 = v11;
  do
  {
    v13 = math_color::calculate_color_bar(v8, 0xAu, a4, a2, a3, 1);
    v8 = (v8 + 1);
    v14 = (llround(vcvtd_n_f64_u64(v12, 3uLL)) + 1) & 0xFFFFFFFE;
    result = fill_rect<unsigned short>(a1, v9, 0, (v14 - v9), v10, (v13 & 0x3FFu) << 6);
    v12 += v11;
    v9 = v14;
  }

  while (v8 != 8);
  return result;
}

void *render_bars<PixelFormatTraits<875704438u>,void render_ColorBars_luma<PixelFormatTraits<875704438u>>(double,double,double,ImageBuffer const&)::{lambda(ImageBuffer const&,unsigned long,unsigned long,unsigned long,unsigned long,math_color::YCbCr,int)#1}>(void *a1, double a2, double a3, double a4)
{
  v8 = 0;
  v9 = 0;
  v10 = a1[1];
  v11 = a1[2];
  v12 = v11;
  do
  {
    v13 = math_color::calculate_color_bar(v8, 8u, a4, a2, a3, 0);
    v8 = (v8 + 1);
    v14 = (llround(vcvtd_n_f64_u64(v12, 3uLL)) + 1) & 0xFFFFFFFE;
    result = fill_rect<unsigned char>(a1, v9, 0, (v14 - v9), v10, v13);
    v12 += v11;
    v9 = v14;
  }

  while (v8 != 8);
  return result;
}

void *render_bars<PixelFormatTraits<875704438u>,void render_ColorBars_chroma<PixelFormatTraits<875704438u>>(double,double,double,ImageBuffer const&)::{lambda(ImageBuffer const&,unsigned long,unsigned long,unsigned long,unsigned long,math_color::YCbCr,int)#1}>(void *a1, double a2, double a3, double a4)
{
  v8 = 0;
  v9 = 0;
  v10 = a1[1];
  v11 = a1[2];
  v12 = v11;
  do
  {
    v13 = math_color::calculate_color_bar(v8, 8u, a4, a2, a3, 0);
    v8 = (v8 + 1);
    v14 = (llround(vcvtd_n_f64_u64(v12, 3uLL)) + 1) & 0xFFFFFFFE;
    result = fill_rect<unsigned short>(a1, v9, 0, (v14 - v9), v10, BYTE4(v13) | (v15 << 8));
    v12 += v11;
    v9 = v14;
  }

  while (v8 != 8);
  return result;
}

void *render_bars<PixelFormatTraits<875704422u>,void render_ColorBars_chroma<PixelFormatTraits<875704422u>>(double,double,double,ImageBuffer const&)::{lambda(ImageBuffer const&,unsigned long,unsigned long,unsigned long,unsigned long,math_color::YCbCr,int)#1}>(void *a1, double a2, double a3, double a4)
{
  v8 = 0;
  v9 = 0;
  v10 = a1[1];
  v11 = a1[2];
  v12 = v11;
  do
  {
    v13 = math_color::calculate_color_bar(v8, 8u, a4, a2, a3, 1);
    v8 = (v8 + 1);
    v14 = (llround(vcvtd_n_f64_u64(v12, 3uLL)) + 1) & 0xFFFFFFFE;
    result = fill_rect<unsigned short>(a1, v9, 0, (v14 - v9), v10, BYTE4(v13) | (v15 << 8));
    v12 += v11;
    v9 = v14;
  }

  while (v8 != 8);
  return result;
}

void *render_bars<PixelFormatTraits<2016686640u>,void render_ColorBars_luma<PixelFormatTraits<2016686640u>>(double,double,double,ImageBuffer const&)::{lambda(ImageBuffer const&,unsigned long,unsigned long,unsigned long,unsigned long,math_color::YCbCr,int)#1}>(void *a1, double a2, double a3, double a4)
{
  v8 = 0;
  v9 = 0;
  v10 = a1[1];
  v11 = a1[2];
  v12 = v11;
  do
  {
    v13 = math_color::calculate_color_bar(v8, 0xAu, a4, a2, a3, 0);
    v8 = (v8 + 1);
    v14 = (llround(vcvtd_n_f64_u64(v12, 3uLL)) + 1) & 0xFFFFFFFE;
    result = fill_rect<unsigned short>(a1, v9, 0, (v14 - v9), v10, (v13 & 0x3FFu) << 6);
    v12 += v11;
    v9 = v14;
  }

  while (v8 != 8);
  return result;
}

void *render_bars<PixelFormatTraits<2016686640u>,void render_ColorBars_chroma<PixelFormatTraits<2016686640u>>(double,double,double,ImageBuffer const&)::{lambda(ImageBuffer const&,unsigned long,unsigned long,unsigned long,unsigned long,math_color::YCbCr,int)#1}>(void *a1, double a2, double a3, double a4)
{
  v8 = 0;
  v9 = 0;
  v10 = a1[1];
  v11 = a1[2];
  v12 = v11;
  do
  {
    v13 = math_color::calculate_color_bar(v8, 0xAu, a4, a2, a3, 0);
    v8 = (v8 + 1);
    v14 = (llround(vcvtd_n_f64_u64(v12, 3uLL)) + 1) & 0xFFFFFFFE;
    result = fill_rect<unsigned int>(a1, v9, 0, (v14 - v9), v10, (v13 >> 26) & 0xFFC0 | (v15 << 22));
    v12 += v11;
    v9 = v14;
  }

  while (v8 != 8);
  return result;
}

void *render_bars<PixelFormatTraits<2019963440u>,void render_ColorBars_chroma<PixelFormatTraits<2019963440u>>(double,double,double,ImageBuffer const&)::{lambda(ImageBuffer const&,unsigned long,unsigned long,unsigned long,unsigned long,math_color::YCbCr,int)#1}>(void *a1, double a2, double a3, double a4)
{
  v8 = 0;
  v9 = 0;
  v10 = a1[1];
  v11 = a1[2];
  v12 = v11;
  do
  {
    v13 = math_color::calculate_color_bar(v8, 0xAu, a4, a2, a3, 1);
    v8 = (v8 + 1);
    v14 = (llround(vcvtd_n_f64_u64(v12, 3uLL)) + 1) & 0xFFFFFFFE;
    result = fill_rect<unsigned int>(a1, v9, 0, (v14 - v9), v10, (v13 >> 26) & 0xFFC0 | (v15 << 22));
    v12 += v11;
    v9 = v14;
  }

  while (v8 != 8);
  return result;
}

void *render_bars<PixelFormatTraits<1937125938u>,void render_ColorBars_luma<PixelFormatTraits<1937125938u>>(double,double,double,ImageBuffer const&)::{lambda(ImageBuffer const&,unsigned long,unsigned long,unsigned long,unsigned long,math_color::YCbCr,int)#1}>(void *a1, double a2, double a3, double a4)
{
  v8 = 0;
  v9 = 0;
  v10 = a1[1];
  v11 = a1[2];
  v12 = v11;
  do
  {
    v13 = math_color::calculate_color_bar(v8, 0x10u, a4, a2, a3, 0);
    v8 = (v8 + 1);
    v14 = (llround(vcvtd_n_f64_u64(v12, 3uLL)) + 1) & 0xFFFFFFFE;
    result = fill_rect<unsigned short>(a1, v9, 0, (v14 - v9), v10, v13);
    v12 += v11;
    v9 = v14;
  }

  while (v8 != 8);
  return result;
}

void *render_bars<PixelFormatTraits<1937125938u>,void render_ColorBars_chroma<PixelFormatTraits<1937125938u>>(double,double,double,ImageBuffer const&)::{lambda(ImageBuffer const&,unsigned long,unsigned long,unsigned long,unsigned long,math_color::YCbCr,int)#1}>(void *a1, double a2, double a3, double a4)
{
  v8 = 0;
  v9 = 0;
  v10 = a1[1];
  v11 = a1[2];
  v12 = v11;
  do
  {
    v13 = math_color::calculate_color_bar(v8, 0x10u, a4, a2, a3, 0);
    v8 = (v8 + 1);
    v14 = (llround(vcvtd_n_f64_u64(v12, 3uLL)) + 1) & 0xFFFFFFFE;
    result = fill_rect<unsigned int>(a1, v9, 0, (v14 - v9), v10, WORD2(v13) | (v15 << 16));
    v12 += v11;
    v9 = v14;
  }

  while (v8 != 8);
  return result;
}

void sub_2578E11D0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2578E1388(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t SMPTE_RP219::Dimensions::Dimensions(uint64_t this, unint64_t a2, unint64_t a3, int a4)
{
  v4 = (a3 / 0xC + a4 / 2) / a4 * a4;
  *(this + 144) = v4;
  *(this + 152) = a3 - 5 * v4;
  *(this + 160) = v4;
  *(this + 168) = v4;
  *(this + 176) = 3 * v4;
  *this = a2;
  *(this + 8) = a3;
  *(this + 184) = xmmword_25792C150;
  if (a2 <= 0xEFF)
  {
    LODWORD(v5) = 2;
  }

  else
  {
    LODWORD(v5) = 4;
  }

  if (a2 >> 9 <= 0xE)
  {
    v5 = v5;
  }

  else
  {
    v5 = 8;
  }

  v6 = v5 >> 1;
  v7 = (v6 + 4 * a3 / 3) & -v5;
  v8 = (v6 + (((v7 * 0x4924924924924925uLL) >> 64) >> 1)) & -v5;
  v9 = v7 - 6 * v8;
  v10 = v8 + (2 * v5);
  v11 = 2 * v10 + 4 * v8 + v9;
  v12 = (v6 + ((a2 - v11) >> 1)) & -v5;
  *(this + 16) = v8;
  *(this + 24) = v12;
  v13 = v9 - a2 + v11 + 2 * v12;
  *(this + 32) = v13;
  *(this + 40) = v10;
  v14 = v13 + 4 * v8;
  v15 = (v6 + (v14 >> 1)) & -v5;
  *(this + 64) = v15;
  *(this + 72) = v14 - v15;
  *(this + 48) = v14 + v10;
  *(this + 56) = v14;
  v16 = (v6 + 5 * v8 / 3) & -v5;
  v17 = (v6 + (((v16 * 0x6666666666666667uLL) >> 64) >> 1)) & -v5;
  if (5 * v17 == v16)
  {
    v18 = 0;
  }

  else
  {
    v18 = v5;
  }

  v19 = v17 + v18;
  *(this + 128) = v17;
  *(this + 136) = v19;
  v20 = v19 + 2 * v17;
  v21 = v19 + v17;
  *(this + 96) = v20;
  *(this + 104) = v21;
  v22 = ((v8 + v6 + (v8 >> 1)) & -v5) + v5;
  *(this + 112) = v22;
  *(this + 120) = v10;
  *(this + 80) = 2 * v8;
  *(this + 88) = v11 - (v10 + 2 * v8 + v22 + v21 + v20);
  return this;
}

uint64_t SMPTE_RP219::SMPTE_RP219(uint64_t result, int a2, double a3, double a4)
{
  *result = &unk_2868CE578;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 24) = a2;
  return result;
}

uint64_t SMPTE_RP219::render_4xx<PixelFormatTraits<875704438u>>(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  v99 = *MEMORY[0x277D85DE8];
  v6 = a2[2];
  v60 = a4;
  if (v6 != a3[2] * a4)
  {
    SMPTE_RP219::render_4xx<PixelFormatTraits<875704438u>>();
  }

  v10 = a2[1];
  v56 = a5;
  if (v10 != a3[1] * a5)
  {
    SMPTE_RP219::render_4xx<PixelFormatTraits<875704438u>>();
  }

  v88 = xmmword_25792C160;
  v68 = 0;
  v69 = 0;
  __p = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&__p, &v88, &v89, 2uLL);
  v11 = __p;
  v12 = v6 / v10;
  if (v68 != __p)
  {
    if (v68 - __p != 8)
    {
      v13 = (__p + 8);
      v14 = *__p;
      v15 = (__p + 8);
      do
      {
        v16 = *v15++;
        v17 = v16;
        if (vabdd_f64(v16, v12) < vabdd_f64(v14, v12))
        {
          v14 = v17;
          v11 = v13;
        }

        v13 = v15;
      }

      while (v15 != v68);
    }

    v12 = *v11;
  }

  cinematic_bars::render_cinematic_bars<PixelFormatTraits<875704438u>>(a2, a3, a4, a5, &v64, v12);
  v19 = *(&v64 + 1);
  v18 = v65;
  SMPTE_RP219::Dimensions::Dimensions(&v88, v65, *(&v64 + 1), a5);
  _CF = v18 >= v97 && v19 >= v98;
  v21 = _CF;
  if (_CF)
  {
    v55 = v21;
    v22 = 0;
    v63 = 0;
    _ZF = *(a1 + 24) == 0;
    if (!_ZF)
    {
    }

    v82 = *v24;
    v25 = v24[2];
    v81 = 152;
    v83 = v25;
    v85 = 168;
    v87 = 176;
    __asm { FMOV            V0.2D, #-2.0 }

    v57 = _Q0;
    _D11 = 0;
    do
    {
      v59 = v22;
      v30 = (&v80 + v22);
      v62 = *(&v88 + *(&v80 + v22 + 16));
      _Q1 = *(a1 + 8);
      _Q0 = vextq_s8(_Q1, _Q1, 8uLL);
      v70 = _Q1;
      v71 = 1.0 - *_Q1.i64 - *&_Q1.i64[1];
      v72 = 0.5 / (1.0 - *&_Q1.i64[1]);
      v73 = 0.5 / (1.0 - *_Q1.i64);
      v74 = 1.0 - *_Q1.i64 + 1.0 - *_Q1.i64;
      v75 = vdivq_f64(vmulq_f64(vmlsq_f64(_Q0, _Q0, _Q0), v57), vdupq_lane_s64(*&v71, 0));
      v76 = 1.0 - *&_Q1.i64[1] + 1.0 - *&_Q1.i64[1];
      v77[0] = 0;
      v78 = 0x1000000FFLL;
      v79 = 128;
      __asm { FMLA            D0, D11, V1.D[1]; double }

      v33 = math_color::YCC_coder::YPbPr_to_YCbCr(v77, _Q0.f64[0], v72 * (0.0 - _Q0.f64[0]), v73 * (0.0 - _Q0.f64[0]));
      v35 = v30[1];
      if (v35)
      {
        v36 = v33;
        v37 = v34;
        v38 = 0;
        v39 = *v30;
        v61 = *v30 + 32 * v35;
        v40 = BYTE4(v33);
        do
        {
          v41 = *(v39 + 16);
          v42 = *(v39 + 24);
          v43 = *(v39 + 8) * v71 + *v70.i64 * *v39 + *&v70.i64[1] * v41;
          v44 = math_color::YCC_coder::YPbPr_to_YCbCr(v77, v43, v72 * (v41 - v43), v73 * (*v39 - v43));
          v46 = v45;
          v47 = *(&v88 + v42);
          v38 += v47;
          v39 += 32;
          v36 = v44;
          v37 = v46;
          v40 = BYTE4(v44);
        }

        while (v39 != v61);
      }

      v63 += v62;
      v22 = v59 + 24;
    }

    while (v59 != 72);
    fill_h_ramp<unsigned char>(&v64, v91 + v90, v96.i64[0] + v95.i64[1], v92, v96.i64[1], 0x10u, 235);
    v48 = vaddvq_s64(vaddq_s64(v95, v96));
    v49 = v94 - 4;
    v50 = v90 + 2;
    v51 = v95.i64[0];
    fill_h_ramp<unsigned char>(&v64, v90 + 2, v48, (v94 - 4) >> 1, v95.i64[0], 0x10u, 1);
    fill_h_ramp<unsigned char>(&v64, v50 + (v49 >> 1), v48, v49 - (v49 >> 1), v51, 1u, 16);
    v52 = v93 - 4;
    v53 = v90 + v94 + 2;
    fill_h_ramp<unsigned char>(&v64, v53, v48, (v93 - 4) >> 1, v51, 0xEBu, 254);
    fill_h_ramp<unsigned char>(&v64, v53 + (v52 >> 1), v48, v52 - (v52 >> 1), v51, 0xFEu, 235);
    v21 = v55;
  }

  if (__p)
  {
    v68 = __p;
    operator delete(__p);
  }

  return v21;
}

void sub_2578E1D94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double cinematic_bars::render_cinematic_bars<PixelFormatTraits<875704438u>>@<D0>(void *a1@<X0>, void *a2@<X1>, int a3@<W2>, int a4@<W3>, _OWORD *a5@<X8>, double a6@<D0>)
{
  v9 = *(a1 + 1);
  v39 = *a1;
  v40 = v9;
  v10 = *(a2 + 1);
  v37 = *a2;
  v38 = v10;
  v11 = a1[1];
  v12 = a1[2];
  v13 = v12 - llround(v11 * a6);
  if (v13 >= 1)
  {
    v14 = v13 - (v13 >> 1);
    v15 = (v13 >> 1) / a3;
    v35 = 0u;
    v36 = 0u;
    v16 = v14 / a3;
    makeCroppedImageBufferView<unsigned char>(a1, 0, 0, v13 >> 1, v11, &v35);
    v33 = 0u;
    v34 = 0u;
    makeCroppedImageBufferView<unsigned char>(a1, a1[2] - v14, 0, v14, a1[1], &v33);
    makeCroppedImageBufferView<unsigned char>(a1, v13 >> 1, 0, a1[2] - v13, a1[1], &v39);
    v31 = 0u;
    v32 = 0u;
    makeCroppedImageBufferView<unsigned short>(a2, 0, 0, v15, a2[1], &v31);
    v29 = 0u;
    v30 = 0u;
    makeCroppedImageBufferView<unsigned short>(a2, a2[2] - v16, 0, v16, a2[1], &v29);
    v17 = a2[1];
    v18 = a2[2] - v15 - v16;
    v19 = a2;
    v20 = v15;
    v21 = 0;
LABEL_5:
    makeCroppedImageBufferView<unsigned short>(v19, v20, v21, v18, v17, &v37);
    cinematic_bars::fill_buffer_black<PixelFormatTraits<875704438u>>(&v35, &v31);
    cinematic_bars::fill_buffer_black<PixelFormatTraits<875704438u>>(&v33, &v29);
    goto LABEL_6;
  }

  v22 = v11 - llround(v12 / a6);
  if (v22 >= 1)
  {
    v23 = v22 - (v22 >> 1);
    v24 = (v22 >> 1) / a4;
    v35 = 0u;
    v36 = 0u;
    v25 = v23 / a4;
    makeCroppedImageBufferView<unsigned char>(a1, 0, 0, v12, v22 >> 1, &v35);
    v33 = 0u;
    v34 = 0u;
    makeCroppedImageBufferView<unsigned char>(a1, 0, a1[1] - v23, a1[2], v23, &v33);
    makeCroppedImageBufferView<unsigned char>(a1, 0, v22 >> 1, a1[2], a1[1] - v22, &v39);
    v31 = 0u;
    v32 = 0u;
    makeCroppedImageBufferView<unsigned short>(a2, 0, 0, a2[2], v24, &v31);
    v29 = 0u;
    v30 = 0u;
    makeCroppedImageBufferView<unsigned short>(a2, 0, a2[1] - v25, a2[2], v25, &v29);
    v18 = a2[2];
    v17 = a2[1] - v24 - v25;
    v19 = a2;
    v20 = 0;
    v21 = v24;
    goto LABEL_5;
  }

LABEL_6:
  v26 = v40;
  *a5 = v39;
  a5[1] = v26;
  result = *&v37;
  v28 = v38;
  a5[2] = v37;
  a5[3] = v28;
  return result;
}

void *fill_h_ramp<unsigned char>(void *result, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, int a7)
{
  v7 = a5 + a3;
  if (a5 + a3 > a3)
  {
    v8 = result[3];
    v9 = *result + v8 * a3;
    v10 = (a7 - a6);
    v11 = vdupq_n_s64(a4 - 1);
    v12 = vdupq_lane_s64(COERCE__INT64((a4 - 1)), 0);
    v13 = vdupq_lane_s64(COERCE__INT64(a6), 0);
    v14 = vdupq_n_s64(a2);
    result = &off_25792B000;
    do
    {
      if (a4 + a2 > a2)
      {
        v15 = 0;
        v16 = v9 + a2;
        do
        {
          v17 = vdupq_n_s64(v15);
          v18 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v17, xmmword_25792BAF0)));
          v19 = v15 + 1;
          v20.i64[0] = v15;
          v20.i64[1] = v15 + 1;
          v21 = vrndaq_f64(vaddq_f64(vdivq_f64(vmulq_n_f64(vcvtq_f64_u64(v20), v10), v12), v13));
          if (vuzp1_s8(vuzp1_s16(v18, *&v10), *&v10).u8[0])
          {
            *(v16 + v15) = v21.f64[0];
          }

          if (vuzp1_s8(vuzp1_s16(v18, *&v10), *&v10).i8[1])
          {
            *(v16 + v15 + 1) = v21.f64[1];
          }

          v22 = vdupq_n_s64(a2 + v15);
          v23 = vaddq_s64(v22, xmmword_25792BAE0);
          v24 = vrndaq_f64(vaddq_f64(vdivq_f64(vmulq_n_f64(vcvtq_f64_u64(vsubq_s64(v23, v14)), v10), v12), v13));
          if (vuzp1_s8(vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v17, xmmword_25792BAE0)))), *&v10).i8[2])
          {
            *(v9 + v23.i64[0]) = v24.f64[0];
            *(v9 + v23.i64[1]) = v24.f64[1];
          }

          v25 = vaddq_s64(v22, xmmword_25792BB10);
          v26 = vrndaq_f64(vaddq_f64(vdivq_f64(vmulq_n_f64(vcvtq_f64_u64(vsubq_s64(v25, v14)), v10), v12), v13));
          v27 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v17, xmmword_25792BB10)));
          if (vuzp1_s8(*&v10, vuzp1_s16(v27, *&v10)).i32[1])
          {
            *(v9 + v25.i64[0]) = v26.f64[0];
          }

          if (vuzp1_s8(*&v10, vuzp1_s16(v27, *&v10)).i8[5])
          {
            *(v9 + v25.i64[1]) = v26.f64[1];
          }

          v28 = vaddq_s64(v22, xmmword_25792BB00);
          v29 = vrndaq_f64(vaddq_f64(vdivq_f64(vmulq_n_f64(vcvtq_f64_u64(vsubq_s64(v28, v14)), v10), v12), v13));
          if (vuzp1_s8(*&v10, vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v17, xmmword_25792BB00))))).i8[6])
          {
            *(v9 + v28.i64[0]) = v29.f64[0];
            *(v9 + v28.i64[1]) = v29.f64[1];
          }

          v30 = vaddq_s64(v22, xmmword_25792C1A0);
          v31 = vrndaq_f64(vaddq_f64(vdivq_f64(vmulq_n_f64(vcvtq_f64_u64(vsubq_s64(v30, v14)), v10), v12), v13));
          v32 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v17, xmmword_25792C1A0)));
          if (vuzp1_s8(vuzp1_s16(v32, *&v10), *&v10).u8[0])
          {
            *(v9 + v30.i64[0]) = v31.f64[0];
          }

          if (vuzp1_s8(vuzp1_s16(v32, *&v10), *&v10).i8[1])
          {
            *(v9 + v30.i64[1]) = v31.f64[1];
          }

          v33 = vaddq_s64(v22, xmmword_25792C190);
          v34 = vrndaq_f64(vaddq_f64(vdivq_f64(vmulq_n_f64(vcvtq_f64_u64(vsubq_s64(v33, v14)), v10), v12), v13));
          if (vuzp1_s8(vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v17, xmmword_25792C190)))), *&v10).i8[2])
          {
            *(v9 + v33.i64[0]) = v34.f64[0];
            *(v9 + v33.i64[1]) = v34.f64[1];
          }

          v35 = vaddq_s64(v22, xmmword_25792C180);
          v36 = vrndaq_f64(vaddq_f64(vdivq_f64(vmulq_n_f64(vcvtq_f64_u64(vsubq_s64(v35, v14)), v10), v12), v13));
          v37 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v17, xmmword_25792C180)));
          if (vuzp1_s8(*&v10, vuzp1_s16(v37, *&v10)).i32[1])
          {
            *(v9 + v35.i64[0]) = v36.f64[0];
          }

          if (vuzp1_s8(*&v10, vuzp1_s16(v37, *&v10)).i8[5])
          {
            *(v9 + v35.i64[1]) = v36.f64[1];
          }

          v38 = vorrq_s8(v17, xmmword_25792C170);
          v39 = vaddq_s64(v22, xmmword_25792C170);
          v40 = vrndaq_f64(vaddq_f64(vdivq_f64(vmulq_n_f64(vcvtq_f64_u64(vsubq_s64(v39, v14)), v10), v12), v13));
          if (vuzp1_s8(*&v10, vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v11, v38)))).i8[6])
          {
            *(v9 + v39.i64[0]) = v40.f64[0];
            *(v9 + v39.i64[1]) = v40.f64[1];
          }

          v15 += 16;
        }

        while (v19 + 15 != ((a4 + 15) & 0xFFFFFFFFFFFFFFF0));
      }

      v9 += v8;
      ++a3;
    }

    while (a3 != v7);
  }

  return result;
}

void *cinematic_bars::fill_buffer_black<PixelFormatTraits<875704438u>>(char **a1, void *a2)
{
  v13[0] = 0;
  v14 = 0x1000000FFLL;
  v15 = 128;
  v4 = math_color::YCC_coder::YPbPr_to_YCbCr(v13, 0.0, 0.0, 0.0);
  v6 = v5;
  v8 = a1[1];
  v7 = a1[2];
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = a1[3];
    v11 = *a1;
    do
    {
      memset(v11, v4, v7);
      v11 = &v10[v11];
      --v8;
    }

    while (v8);
  }

  return fill_rect<unsigned short>(a2, 0, 0, a2[2], a2[1], BYTE4(v4) | (v6 << 8));
}

void *anonymous namespace::fill_rect<unsigned char>(void *result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unsigned int a6, int __c)
{
  v8 = result[2];
  if (v8 > a2)
  {
    v9 = result[1];
    v10 = v9 - a3;
    if (v9 > a3)
    {
      if (a5 + a3 <= v9)
      {
        v10 = a5;
      }

      if (a4 + a2 <= v8)
      {
        v12 = a4;
      }

      else
      {
        v12 = v8 - a2;
      }

      v24 = v12;
      v25 = v10;
      v13 = 4;
      if (a2)
      {
        v13 = 2;
      }

      v14 = -2;
      if (!a2)
      {
        v14 = 0;
      }

      v26 = v13;
      v27 = result;
      v15 = v13 + a2;
      v16 = v10 + a3;
      if (v10 + a3 > a3)
      {
        v18 = v14 + a2;
        v19 = a3;
        v20 = result[3];
        v21 = *result + v14 + a2 + v20 * a3;
        v22 = v13 - v14;
        do
        {
          if (v18 < v15)
          {
            v23 = 0;
            do
            {
              ++v23;
            }

            while (v22 != v23);
          }

          ++v19;
          v21 += v20;
        }

        while (v19 != v16);
      }

      return fill_rect<unsigned char>(v27, v15, a3, v24 - v26, v25, __c);
    }
  }

  return result;
}

void *anonymous namespace::fill_rect<math_color::CbCr<unsigned char>>(void *result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v8 = result[2];
  if (v8 > a2)
  {
    v9 = result[1];
    v10 = v9 - a3;
    if (v9 > a3)
    {
      v11 = a7;
      if (a5 + a3 <= v9)
      {
        v10 = a5;
      }

      if (a4 + a2 <= v8)
      {
        v12 = a4;
      }

      else
      {
        v12 = v8 - a2;
      }

      v24 = v12;
      v25 = v10;
      if (a2)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (a2)
      {
        v14 = -1;
      }

      else
      {
        v14 = 0;
      }

      v26 = v13;
      v27 = result;
      v31 = v13 + a2;
      v30 = v10 + a3;
      if (v10 + a3 > a3)
      {
        v15 = a6;
        v29 = a2 - (a2 != 0);
        v16 = a3;
        v17 = result[3];
        v18 = a6 >> 8;
        v19 = a7 >> 8;
        v20 = *result + v17 * a3 + 2 * a2 + 2 * v14;
        v21 = v13 - v14;
        do
        {
          if (v29 < v31)
          {
            v22 = 0;
            do
            {
              ++v22;
            }

            while (v21 != v22);
          }

          ++v16;
          v20 += v17;
        }

        while (v16 != v30);
      }

      return fill_rect<unsigned short>(v27, v31, a3, v24 - v26, v25, v11);
    }
  }

  return result;
}

unsigned int anonymous namespace::bar_shape_10_90_value<unsigned char>(int a1, int a2, unsigned int a3, int a4)
{
  v8 = asin(0.316227766);
  v9 = (v8 + v8) / 3.14159265;
  v10 = asin(0.948683298);
  v11 = sin((v9 + a1 / (a2 - 1) * ((v10 + v10) / 3.14159265 - v9)) * 1.57079633);
  return llround(a3 + (a4 - a3) * (v11 * v11));
}

uint64_t SMPTE_RP219::render_4xx<PixelFormatTraits<2016686640u>>(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  v104 = *MEMORY[0x277D85DE8];
  v6 = a2[2];
  v62 = a4;
  if (v6 != a3[2] * a4)
  {
    SMPTE_RP219::render_4xx<PixelFormatTraits<875704438u>>();
  }

  v10 = a2[1];
  v58 = a5;
  if (v10 != a3[1] * a5)
  {
    SMPTE_RP219::render_4xx<PixelFormatTraits<875704438u>>();
  }

  v93 = xmmword_25792C160;
  v73 = 0;
  v74 = 0;
  __p = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&__p, &v93, &v94, 2uLL);
  v11 = __p;
  v12 = v6 / v10;
  if (v73 != __p)
  {
    if (v73 - __p != 8)
    {
      v13 = (__p + 8);
      v14 = *__p;
      v15 = (__p + 8);
      do
      {
        v16 = *v15++;
        v17 = v16;
        if (vabdd_f64(v16, v12) < vabdd_f64(v14, v12))
        {
          v14 = v17;
          v11 = v13;
        }

        v13 = v15;
      }

      while (v15 != v73);
    }

    v12 = *v11;
  }

  cinematic_bars::render_cinematic_bars<PixelFormatTraits<2016686640u>>(a2, a3, a4, a5, &v69, v12);
  v19 = *(&v69 + 1);
  v18 = v70;
  SMPTE_RP219::Dimensions::Dimensions(&v93, v70, *(&v69 + 1), a5);
  _CF = v18 >= v102 && v19 >= v103;
  v21 = _CF;
  if (_CF)
  {
    v57 = v21;
    v22 = 0;
    v65 = 0;
    _ZF = *(a1 + 24) == 0;
    if (!_ZF)
    {
    }

    v87 = *v24;
    v25 = v24[2];
    v86 = 152;
    v88 = v25;
    v90 = 168;
    v92 = 176;
    __asm { FMOV            V0.2D, #-2.0 }

    v59 = _Q0;
    _D11 = 0;
    do
    {
      v61 = v22;
      v30 = (&v85 + v22);
      v64 = *(&v93 + *(&v85 + v22 + 16));
      _Q1 = *(a1 + 8);
      _Q0 = vextq_s8(_Q1, _Q1, 8uLL);
      v75 = _Q1;
      v76 = 1.0 - *_Q1.i64 - *&_Q1.i64[1];
      v77 = 0.5 / (1.0 - *&_Q1.i64[1]);
      v78 = 0.5 / (1.0 - *_Q1.i64);
      v79 = 1.0 - *_Q1.i64 + 1.0 - *_Q1.i64;
      v80 = vdivq_f64(vmulq_f64(vmlsq_f64(_Q0, _Q0, _Q0), v59), vdupq_lane_s64(*&v76, 0));
      v81 = 1.0 - *&_Q1.i64[1] + 1.0 - *&_Q1.i64[1];
      v82[0] = 0;
      v83 = 0x4000003FFLL;
      v84 = 512;
      __asm { FMLA            D0, D11, V1.D[1]; double }

      v33 = math_color::YCC_coder::YPbPr_to_YCbCr(v82, _Q0.f64[0], v77 * (0.0 - _Q0.f64[0]), v78 * (0.0 - _Q0.f64[0]));
      v35 = v30[1];
      if (v35)
      {
        v36 = 0;
        v37 = *v30;
        v63 = *v30 + 32 * v35;
        v38 = v34 << 22;
        v39 = (v33 >> 26) & 0xFFC0;
        v40 = v33 << 6;
        do
        {
          v41 = *(v37 + 16);
          v42 = *(v37 + 24);
          v43 = *(v37 + 8) * v76 + *v75.i64 * *v37 + *&v75.i64[1] * v41;
          v44 = math_color::YCC_coder::YPbPr_to_YCbCr(v82, v43, v77 * (v41 - v43), v78 * (*v37 - v43));
          v46 = v45;
          v47 = *(&v93 + v42);
          v48 = v44 << 6;
          v49 = (v44 >> 26) & 0xFFC0;
          v66 = v45 << 22;
          v67 = v67 & 0xFFFFFFFF00000000 | v39 | v38;
          v68 = v68 & 0xFFFFFFFF00000000 | v49 & 0x3FFFFF | (v46 << 22);
          v36 += v47;
          v37 += 32;
          v40 = v48;
          v38 = v66;
          LODWORD(v39) = v49;
        }

        while (v37 != v63);
      }

      v65 += v64;
      v22 = v61 + 24;
    }

    while (v61 != 72);
    fill_h_ramp<unsigned short>(&v69, v96 + v95, v101.i64[0] + v100.i64[1], v97, v101.i64[1], 0x1000u, 60160);
    v50 = vaddvq_s64(vaddq_s64(v100, v101));
    v51 = v99 - 4;
    v52 = v95 + 2;
    v53 = v100.i64[0];
    fill_h_ramp<unsigned short>(&v69, v95 + 2, v50, (v99 - 4) >> 1, v100.i64[0], 0x1000u, 256);
    fill_h_ramp<unsigned short>(&v69, v52 + (v51 >> 1), v50, v51 - (v51 >> 1), v53, 0x100u, 4096);
    v54 = v98 - 4;
    v55 = v95 + v99 + 2;
    fill_h_ramp<unsigned short>(&v69, v55, v50, (v98 - 4) >> 1, v53, 0xEB00u, 65216);
    fill_h_ramp<unsigned short>(&v69, v55 + (v54 >> 1), v50, v54 - (v54 >> 1), v53, 0xFEC0u, 60160);
    v21 = v57;
  }

  if (__p)
  {
    v73 = __p;
    operator delete(__p);
  }

  return v21;
}

void sub_2578E2D94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double cinematic_bars::render_cinematic_bars<PixelFormatTraits<2016686640u>>@<D0>(void *a1@<X0>, void *a2@<X1>, int a3@<W2>, int a4@<W3>, _OWORD *a5@<X8>, double a6@<D0>)
{
  v9 = *(a1 + 1);
  v39 = *a1;
  v40 = v9;
  v10 = *(a2 + 1);
  v37 = *a2;
  v38 = v10;
  v11 = a1[1];
  v12 = a1[2];
  v13 = v12 - llround(v11 * a6);
  if (v13 >= 1)
  {
    v14 = v13 - (v13 >> 1);
    v15 = (v13 >> 1) / a3;
    v35 = 0u;
    v36 = 0u;
    v16 = v14 / a3;
    makeCroppedImageBufferView<unsigned short>(a1, 0, 0, v13 >> 1, v11, &v35);
    v33 = 0u;
    v34 = 0u;
    makeCroppedImageBufferView<unsigned short>(a1, a1[2] - v14, 0, v14, a1[1], &v33);
    makeCroppedImageBufferView<unsigned short>(a1, v13 >> 1, 0, a1[2] - v13, a1[1], &v39);
    v31 = 0u;
    v32 = 0u;
    makeCroppedImageBufferView<math_color::CbCr<unsigned short>>(a2, 0, 0, v15, a2[1], &v31);
    v29 = 0u;
    v30 = 0u;
    makeCroppedImageBufferView<math_color::CbCr<unsigned short>>(a2, a2[2] - v16, 0, v16, a2[1], &v29);
    v17 = a2[1];
    v18 = a2[2] - v15 - v16;
    v19 = a2;
    v20 = v15;
    v21 = 0;
LABEL_5:
    makeCroppedImageBufferView<math_color::CbCr<unsigned short>>(v19, v20, v21, v18, v17, &v37);
    cinematic_bars::fill_buffer_black<PixelFormatTraits<2016686640u>>(&v35, &v31);
    cinematic_bars::fill_buffer_black<PixelFormatTraits<2016686640u>>(&v33, &v29);
    goto LABEL_6;
  }

  v22 = v11 - llround(v12 / a6);
  if (v22 >= 1)
  {
    v23 = v22 - (v22 >> 1);
    v24 = (v22 >> 1) / a4;
    v35 = 0u;
    v36 = 0u;
    v25 = v23 / a4;
    makeCroppedImageBufferView<unsigned short>(a1, 0, 0, v12, v22 >> 1, &v35);
    v33 = 0u;
    v34 = 0u;
    makeCroppedImageBufferView<unsigned short>(a1, 0, a1[1] - v23, a1[2], v23, &v33);
    makeCroppedImageBufferView<unsigned short>(a1, 0, v22 >> 1, a1[2], a1[1] - v22, &v39);
    v31 = 0u;
    v32 = 0u;
    makeCroppedImageBufferView<math_color::CbCr<unsigned short>>(a2, 0, 0, a2[2], v24, &v31);
    v29 = 0u;
    v30 = 0u;
    makeCroppedImageBufferView<math_color::CbCr<unsigned short>>(a2, 0, a2[1] - v25, a2[2], v25, &v29);
    v18 = a2[2];
    v17 = a2[1] - v24 - v25;
    v19 = a2;
    v20 = 0;
    v21 = v24;
    goto LABEL_5;
  }

LABEL_6:
  v26 = v40;
  *a5 = v39;
  a5[1] = v26;
  result = *&v37;
  v28 = v38;
  a5[2] = v37;
  a5[3] = v28;
  return result;
}